TOOLCHAIN := $(DEVKITARM)
COMPARE ?= 0

ifeq (compare,$(MAKECMDGOALS))
  COMPARE := 1
endif

# don't use dkP's base_tools anymore
# because the redefinition of $(CC) conflicts
# with when we want to use $(CC) to preprocess files
# thus, manually create the variables for the bin
# files, or use arm-none-eabi binaries on the system
# if dkP is not installed on this system

ifneq (,$(TOOLCHAIN))
ifneq ($(wildcard $(TOOLCHAIN)/bin),)
export PATH := $(TOOLCHAIN)/bin:$(PATH)
endif
endif

PREFIX := arm-none-eabi-

include config.mk

ROOT_DIR := $(realpath $(dir $(realpath $(lastword $(MAKEFILE_LIST)))))

ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif

#### Tools ####
SHELL     := /bin/bash -o pipefail
SHA1 	  := $(shell { command -v sha1sum || command -v shasum; } 2>/dev/null) -c

CC1       := tools/agbcc/bin/agbcc$(EXE)
CC1_OLD   := tools/agbcc/bin/old_agbcc$(EXE)

CPP       := $(PREFIX)cpp
LD        := $(PREFIX)ld
OBJCOPY   := $(PREFIX)objcopy
AS 		  := $(PREFIX)as

FORMAT    := clang-format-13

GFX 	  := tools/gbagfx/gbagfx$(EXE)
EPOS 	  := tools/entity_positions/epos$(EXE)
AIF		  := tools/aif2pcm/aif2pcm$(EXE)
MID2AGB   := tools/mid2agb/mid2agb$(EXE)
SCANINC   := tools/scaninc/scaninc$(EXE)
PREPROC	  := tools/preproc/preproc$(EXE)
RAMSCRGEN := tools/ramscrgen/ramscrgen$(EXE)
FIX 	  := tools/gbafix/gbafix$(EXE)

TOOLDIRS := $(filter-out tools/Makefile tools/agbcc tools/binutils,$(wildcard tools/*))
TOOLBASE = $(TOOLDIRS:tools/%=%)
TOOLS = $(foreach tool,$(TOOLBASE),tools/$(tool)/$(tool)$(EXE))

CC1FLAGS := -mthumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm -Werror
CPPFLAGS := -I tools/agbcc/include -iquote include -nostdinc -D $(GAME_REGION) -D PLATFORM_GBA=1
ASFLAGS  := -mcpu=arm7tdmi -mthumb-interwork -I asminclude --defsym $(GAME_REGION)=1


# Clear the default suffixes
.SUFFIXES:
# Don't delete intermediate files
.SECONDARY:
# Delete files that weren't built properly
.DELETE_ON_ERROR:

# Secondary expansion is required for dependency variables in object rules.
.SECONDEXPANSION:

# these commands will run regardless of deps being completed
.PHONY: __rom clean tools clean-tools $(TOOLDIRS) libagbsyscall

# ensure that we don't scan deps if we are not running
# any of these commands
ifeq (,$(filter-out all rom __rom compare libagbsyscall,$(MAKECMDGOALS)))
$(call infoshell, $(MAKE) -f tools/Makefile)
else
NODEP ?= 1
endif

#### Files ####
OBJ_DIR:= build/$(BUILD_NAME)
ROM      := $(BUILD_NAME).gba
ELF      := $(ROM:.gba=.elf)
MAP      := $(ROM:.gba=.map)
LDSCRIPT := ldscript.txt

C_SUBDIR = src
ASM_SUBDIR = asm
DATA_SUBDIR = data

SONG_SUBDIR = sound/songs
SOUND_ASM_SUBDIR = sound
MID_SUBDIR = sound/songs/midi
SAMPLE_SUBDIR = sound/direct_sound_samples

OBJ_TILES_4BPP_SUBDIR = graphics/obj_tiles/4bpp
TILESETS_SUBDIR = graphics/tilesets/

C_BUILDDIR = $(OBJ_DIR)/$(C_SUBDIR)
ASM_BUILDDIR = $(OBJ_DIR)/$(ASM_SUBDIR)
DATA_ASM_BUILDDIR = $(OBJ_DIR)/$(DATA_SUBDIR)
SONG_BUILDDIR = $(OBJ_DIR)/$(SONG_SUBDIR)
SOUND_ASM_BUILDDIR = $(OBJ_DIR)/$(SOUND_ASM_SUBDIR)
MID_BUILDDIR = $(OBJ_DIR)/$(MID_SUBDIR)

$(shell mkdir -p $(C_BUILDDIR) $(ASM_BUILDDIR) $(DATA_ASM_BUILDDIR) $(SOUND_ASM_BUILDDIR) $(SONG_BUILDDIR) $(MID_BUILDDIR))

C_SRCS := $(shell find $(C_SUBDIR) -name "*.c")
C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(C_BUILDDIR)/%.o,$(C_SRCS))

C_ASM_SRCS := $(shell find $(C_SUBDIR) -name "*.s")
C_ASM_OBJS := $(patsubst $(C_SUBDIR)/%.s,$(C_BUILDDIR)/%.o,$(C_ASM_SRCS))
ASM_SRCS := $(wildcard $(ASM_SUBDIR)/*.s)
ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(ASM_BUILDDIR)/%.o,$(ASM_SRCS))

DATA_ASM_SRCS := $(wildcard $(DATA_SUBDIR)/*.s)
DATA_ASM_OBJS := $(patsubst $(DATA_SUBDIR)/%.s,$(DATA_ASM_BUILDDIR)/%.o,$(DATA_ASM_SRCS))

SONG_SRCS := $(wildcard $(SONG_SUBDIR)/*.s)
SONG_OBJS := $(patsubst $(SONG_SUBDIR)/%.s,$(SONG_BUILDDIR)/%.o,$(SONG_SRCS))

MID_SRCS := $(wildcard $(MID_SUBDIR)/*.mid)
MID_OBJS := $(patsubst $(MID_SUBDIR)/%.mid,$(MID_BUILDDIR)/%.o,$(MID_SRCS))

SOUND_ASM_SRCS := $(wildcard $(SOUND_ASM_SUBDIR)/*.s)
SOUND_ASM_OBJS := $(patsubst $(SOUND_ASM_SUBDIR)/%.s,$(SOUND_ASM_BUILDDIR)/%.o,$(SOUND_ASM_SRCS))

OBJS := $(C_OBJS) $(ASM_OBJS) $(C_ASM_OBJS) $(DATA_ASM_OBJS) $(SONG_OBJS) $(MID_OBJS)
OBJS_REL := $(patsubst $(OBJ_DIR)/%,%,$(OBJS))

# Fix "prologue issue" bugfix in select files
# TODO: Maybe we can enable this globally for SA1?
$(C_BUILDDIR)/game/multiplayer/multiplayer_event_recv_mgr.o: CC1FLAGS += -fprologue-bugfix
$(C_BUILDDIR)/game/gTask_03006240.o: CC1FLAGS += -fprologue-bugfix
$(C_BUILDDIR)/game/stage/screen_shake.o: CC1FLAGS += -fprologue-bugfix
$(C_BUILDDIR)/background.o: CC1FLAGS += -fprologue-bugfix
$(C_BUILDDIR)/sprite.o: CC1FLAGS += -fprologue-bugfix
$(C_BUILDDIR)/malloc_ewram.o: CC1FLAGS += -fprologue-bugfix
$(C_BUILDDIR)/malloc_vram.o: CC1FLAGS += -fprologue-bugfix
$(C_BUILDDIR)/multi_boot.o: CC1FLAGS += -fprologue-bugfix
$(C_BUILDDIR)/multi_sio.o: CC1FLAGS += -fprologue-bugfix
$(C_BUILDDIR)/task.o: CC1FLAGS += -fprologue-bugfix

# Use old gcc because of the "prologue issue" bugfix
$(C_BUILDDIR)/input_recorder.o: CC1 := $(CC1_OLD)

# Use the old compiler for m4a, as it was prebuilt and statically linked
# to the original codebase
$(C_BUILDDIR)/lib/m4a/m4a.o: CC1 := $(CC1_OLD)

# Use `-O1` for agb_flash libs, as these were also prebuilt
# -fprologue-bugfix requires newest build of (old_)agbcc .
$(C_BUILDDIR)/lib/agb_flash.o: CC1FLAGS := -O1 -mthumb-interwork -Werror -fprologue-bugfix
$(C_BUILDDIR)/lib/agb_flash%.o: CC1FLAGS := -O1 -mthumb-interwork -Werror -fprologue-bugfix

ifeq ($(DINFO),1)
override CC1FLAGS += -g
endif

#### Main Targets ####

MAKEFLAGS += --no-print-directory

all: compare

# Ensure that tools are built before building the rom
rom: tools
	@$(MAKE) __rom
__rom: $(ROM)
# Dummy command to make sure we don't print
# even when rom is already built
	@echo > /dev/null

tools: $(TOOLDIRS)

FORMAT_SRC_PATHS := $(shell find . -name "*.c" ! -path '*/src/data/*' ! -path '*/build/*' ! -path '*/ext/*')
FORMAT_H_PATHS   := $(shell find . -name "*.h" ! -path '*/build/*' ! -path '*/ext/*')

format:
	@echo $(FORMAT) -i -style=file "**/*.c" "**/*.h"
	@$(FORMAT) -i --verbose -style=file $(FORMAT_SRC_PATHS) $(FORMAT_H_PATHS)

check_format:
	@echo $(FORMAT) -i -style=file --dry-run --Werror "**/*.c" "**/*.h"
	@$(FORMAT) -i --verbose -style=file --dry-run --Werror $(FORMAT_SRC_PATHS) $(FORMAT_H_PATHS)

$(TOOLDIRS):
	@$(MAKE) -C $@

compare: rom
	$(SHA1) $(BUILD_NAME).sha1

clean: tidy clean-tools
	#@$(MAKE) clean -C chao_garden
	#@$(MAKE) clean -C multi_boot/subgame_bootstrap
	#@$(MAKE) clean -C multi_boot/programs/subgame_loader
	#@$(MAKE) clean -C multi_boot/collect_rings
	@$(MAKE) clean -C libagbsyscall

	$(RM) $(SAMPLE_SUBDIR)/*.bin $(MID_SUBDIR)/*.s
	find . \( -iwholename './data/maps/**/*.bin' -o -iname '*.1bpp' -o -iname '*.4bpp' -o -iname '*.8bpp' -o -iname '*.gbapal' -o -iname '*.lz' -o -iname '*.rl' -o -iname '*.latfont' -o -iname '*.hwjpnfont' -o -iname '*.fwjpnfont' \) -exec $(RM) {} +

clean-tools:
	@$(foreach tooldir,$(TOOLDIRS),$(MAKE) clean -C $(tooldir);)

tidy:
	$(RM) -f $(ROM) $(ELF) $(MAP)
	$(RM) -f $(BUILD_NAME)_usa.gba $(BUILD_NAME)_usa.elf $(BUILD_NAME)_usa.map
	$(RM) -r build/*

#### Recipes ####

# include songs.mk
include graphics.mk

%.s: ;
%.png: ;
%.pal: ;

%.1bpp: %.png  ; $(GFX) $< $@
%.4bpp: %.png  ; $(GFX) $< $@
%.8bpp: %.png  ; $(GFX) $< $@
%.gbapal: %.pal ; $(GFX) $< $@
%.gbapal: %.png ; $(GFX) $< $@

chao_garden/mb_chao_garden.gba.lz: chao_garden/mb_chao_garden.gba 
	$(GFX) $< $@ -search 1

%interactables.bin: %interactables.csv
	$(EPOS) $< $@ -entities INTERACTABLES -header "./include/constants/interactables.h"

%itemboxes.bin: %itemboxes.csv
	$(EPOS) $< $@ -entities ITEMS -header "./include/constants/items.h"

%enemies.bin: %enemies.csv
	$(EPOS) $< $@ -entities ENEMIES -header "./include/constants/enemies.h"

%rings.bin: %rings.csv
	$(EPOS) $< $@ -entities RINGS

%.gba.lz: %.gba 
	$(GFX) $< $@
%.bin.lz: %.bin 
	$(GFX) $< $@

%.lz: % ; $(GFX) $< $@
%.rl: % ; $(GFX) $< $@

%.bin: %.aif ; $(AIF) $< $@

$(ELF): $(OBJS) $(LDSCRIPT) libagbsyscall
	@echo "$(LD) -T $(LD_SCRIPT) -Map $(MAP) <objects> <lib>"
	@$(LD) -T $(LDSCRIPT) -Map $(MAP) $(OBJS) tools/agbcc/lib/libgcc.a tools/agbcc/lib/libc.a -L$(ROOT_DIR)/libagbsyscall -lagbsyscall -o $@

$(ROM): $(ELF)
	$(OBJCOPY) -O binary --pad-to 0x8400000 $< $@
	$(FIX) $@ -p -t"$(TITLE)" -c$(GAME_CODE) -m$(MAKER_CODE) -r$(GAME_REVISION) --silent

ifeq ($(NODEP),1)
$(OBJ_DIR)/src/%.o: c_dep :=
else
$(OBJ_DIR)/src/%.o: C_FILE = $(*D)/$(*F).c
$(OBJ_DIR)/src/%.o: c_dep = $(shell $(SCANINC) -I . -I include $(C_FILE:$(OBJ_DIR)/=) 2>/dev/null)
endif

# Build c sources, and ensure alignment
$(C_OBJS): $(OBJ_DIR)/%.o: %.c $$(c_dep)
	@echo "$(CC1) <flags> -o $@ $<"
	@$(shell mkdir -p $(shell dirname '$(OBJ_DIR)/$*.i'))
	@$(CPP) $(CPPFLAGS) $< -o $(OBJ_DIR)/$*.i
	@$(PREPROC) $(OBJ_DIR)/$*.i | $(CC1) $(CC1FLAGS) -o $(OBJ_DIR)/$*.s
	@printf ".text\n\t.align\t2, 0\n" >> $(OBJ_DIR)/$*.s
	@$(AS) $(ASFLAGS) -o $@ $(OBJ_DIR)/$*.s
    
# Build arm asm sources
ifeq ($(NODEP),1)
$(ASM_BUILDDIR)/%.o: asm_dep :=
else
$(ASM_BUILDDIR)/%.o: asm_dep = $(shell $(SCANINC) $(ASM_SUBDIR)/$*.s)
endif

# rule for sources from the src dir (parts of libraries)
$(C_BUILDDIR)/%.o: $(C_SUBDIR)/%.s
	@echo "$(AS) <flags> -o $@ $<"
	@$(AS) $(ASFLAGS) -o $@ $<

$(ASM_BUILDDIR)/%.o: $(ASM_SUBDIR)/%.s $$(asm_dep)
	@echo "$(AS) <flags> -o $@ $<"
	@$(AS) $(ASFLAGS) -o $@ $<


ifeq ($(NODEP),1)
$(DATA_ASM_BUILDDIR)/%.o: data_dep :=
else
$(DATA_ASM_BUILDDIR)/%.o: data_dep = $(shell $(SCANINC) $(DATA_SUBDIR)/$*.s)
endif

$(DATA_ASM_BUILDDIR)/%.o: $(DATA_SUBDIR)/%.s $$(data_dep)
	@echo "$(AS) <flags> -o $@ $<"
	@$(PREPROC) $< | $(CPP) $(CPPFLAGS) - | $(AS) $(ASFLAGS) -o $@

$(SONG_BUILDDIR)/%.o: $(SONG_SUBDIR)/%.s
	@echo "$(AS) <flags> -I sound -o $@ $<"
	@$(AS) $(ASFLAGS) -I sound -o $@ $<


# europe: ; @$(MAKE) GAME_REGION=EUROPE

# chao_garden/mb_chao_garden.gba: 
# 	$(MAKE) -C chao_garden

# chao_garden: tools
# 	$(MAKE) -C chao_garden

# # Dependency here is already explicit, but we sometimes get a race condition if this
# # is not specified
# multi_boot/subgame_bootstrap/subgame_bootstrap.gba: multi_boot/programs/subgame_loader/subgame_loader.bin
# 	$(MAKE) -C multi_boot/subgame_bootstrap

# multi_boot/programs/subgame_loader/subgame_loader.bin:
# 	$(MAKE) -C multi_boot/programs/subgame_loader

# multi_boot/collect_rings/mb_signed_collect_rings.gba:
# 	$(MAKE) -C multi_boot/collect_rings

# subgame_bootstrap: tools
# 	$(MAKE) -C multi_boot/subgame_bootstrap

# subgame_loader: tools
# 	$(MAKE) -C multi_boot/programs/subgame_loader

# collect_rings: tools
# 	$(MAKE) -C multi_boot/collect_rings

libagbsyscall:
	@$(MAKE) -C libagbsyscall MODERN=0 PLATFORM=$(PLATFORM) CPU_ARCH=$(CPU_ARCH)
