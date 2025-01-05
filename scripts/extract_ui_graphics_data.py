import os, sys

rom_start = 0x08000000
rom_end   = 0x08800000 # SA1 is only 8MB!

#graphic_table_start = ??? # US ROM
graphic_table_start = 0x08687B3C # EU ROM
graphic_table_end   = 0
table_entry_count = 0
table_entry_size    = 0x1C

graphic_offsets = []
palette_offsets = []

autogen_disclaimer = f"""This file was created using './{sys.argv[0]}'.
   If you want to change a name or some other property,
   please change it in there and run the script again,
   so that they are adjusted in all auto-generated files!"""

def graphic_entry_address(index):
    return (graphic_table_start + (index * table_entry_size))
    
def tiledata_label(named):
    return f"gUiGraphics{named.infix}{named.name}"
      
def palette_label(named):
    return f"gUiPalette{named.infix}{named.name}"
    
class Graphic:
    def __init__(self, index, folder, infix, name, width):
        self.index = index # in-game index
        self.infix = infix # infix for C labels
        self.name  = name  # name for files and C labels
        self.width = width # image width in pixels (keep it multiple of 8!)

        if (len(folder) == 0):
            address = graphic_entry_address(index)
            self.folder = f"_{address:X}"
        else:
            self.folder = folder

#        index, folder,             label infix,    name,                width
graphic_names = [
    Graphic( 0, "stage_ui",         "",             "AsciiChars",           8),
    Graphic( 1, "icon_lives",       "1UpIcon",      "Sonic",                16),
    Graphic( 2, "icon_lives",       "1UpIcon",      "Tails",                16),
    Graphic( 3, "icon_lives",       "1UpIcon",      "Knuckles",             16),
    Graphic( 4, "icon_lives",       "1UpIcon",      "Amy",                  16),
    Graphic( 5, "icon_ring",        "",             "HudRing",              32),
    Graphic( 6, "stage_intro",      "StageIntro",   "Sonic",                32),
    Graphic( 7, "stage_intro",      "StageIntro",   "Tails",                32),
    Graphic( 8, "stage_intro",      "StageIntro",   "Knuckles",             32),
    Graphic( 9, "stage_intro",      "StageIntro",   "Amy",                  32),
    Graphic(10, "stage_intro",      "StageIntro",   "char_names",           32),
    Graphic(11, "stage_result",     "StageResult",  "Sonic",                32),
    Graphic(12, "stage_result",     "StageResult",  "Tails",                32),
    Graphic(13, "stage_result",     "StageResult",  "Knuckles",             32),
    Graphic(14, "stage_result",     "StageResult",  "Amy",                  32),
    Graphic(15, "stage_result",     "StageResult",  "Act12",                8),
    Graphic(16, "stage_result",     "StageResult",  "HeadlineBack",         32),
    Graphic(17, "stage_intro",      "StageNames",   "Japanese0",            8),
    Graphic(18, "stage_intro",      "StageNames",   "Japanese1",            8),
    Graphic(19, "stage_intro",      "StageName",    "NeoGreenHillZone",     32),
    Graphic(20, "stage_intro",      "StageName",    "SecretBaseZone",       32),
    Graphic(21, "stage_intro",      "StageName",    "CasinoParadiseZone",   32),
    Graphic(22, "stage_intro",      "StageName",    "IceMountainZone",      32),
    Graphic(23, "stage_intro",      "StageName",    "AngelIslandZone",      32),
    Graphic(24, "stage_intro",      "StageName",    "EggRocketZone",        32),
    Graphic(25, "stage_intro",      "StageName",    "CosmicAngelZone",      32),
    Graphic(26, "stage_intro",      "StageName",    "XZone",                32),
    Graphic(27, "stage_intro",      "StageName",    "TheMoonZone",          32),
    Graphic(28, "stage_intro",      "StageName",    "ForestChaoGarden",     32),
    Graphic(29, "stage_intro",      "StageName",    "FactoryChaoGarden",    32),
    Graphic(30, "stage_intro",      "StageName",    "PinballChaoGarden",    32),
    Graphic(31, "stage_intro",      "StageName",    "SpaceChaoGarden",      32),
    Graphic(32, "stage_ui",         "",             "TimerDigits",          16),
    Graphic(33, "stage_ui",         "",             "OK",                   32),
    Graphic(34, "stage_result",     "",             "GotThroughTexts",      32),
    Graphic(35, "options_overlays", "Overlay",      "EnterName",            256),
    Graphic(36, "options_overlays", "Overlay",      "Characters",           160),
    Graphic(37, "options_overlays", "Overlay",      "RedCorner",            8),
    Graphic(38, "options_overlays", "Overlay",      "Cursors",              16),
    Graphic(39, "character_select", "CharSelect",   "ZigZag",               32),
    Graphic(40, "character_select", "CharSelect",   "Arrow",                32),
    Graphic(41, "character_select", "CharSelect",   "Names",                32),
    Graphic(42, "character_select", "CharSelect",   "SelectACharacter",     32),
    Graphic(43, "character_select", "CharSelect",   "BlackBox",             32),
    Graphic(44, "character_select", "CharSelect",   "OK",                   32),
    Graphic(45, "character_select", "CharSelect",   "BlackBox2",            32),
    Graphic(46, "special_stage",    "SpecialStage", "46",                   64),
    Graphic(47, "special_stage",    "SpecialStage", "TextGotRings0",        32),
    Graphic(48, "special_stage",    "SpecialStage", "TextGotRings1",        32),
    Graphic(49, "special_stage",    "SpecialStage", "TextGotRings2",        32),
    Graphic(50, "special_stage",    "SpecialStage", "TextStart",            32),
    Graphic(51, "special_stage",    "SpecialStage", "TextGotAChaosEmerald", 32),
    Graphic(52, "special_stage",    "SpecialStage", "TextSpecialStage",     32),
    Graphic(53, "special_stage",    "SpecialStage", "53",                   32),
    Graphic(54, "special_stage",    "SpecialStage", "ChaosEmerald",         32),
    Graphic(55, "unknown",          "",             "Transparent0",         8),
    Graphic(56, "unknown",          "",             "Transparent1",         8),
    Graphic(57, "unknown",          "",             "Transparent2",         8),
    Graphic(58, "unknown",          "",             "Transparent3",         8),
    Graphic(59, "unknown",          "",             "Transparent4",         8),
    Graphic(60, "unknown",          "",             "Transparent5",         8),
    Graphic(61, "sound_test",       "SoundTest",    "Background",           64),
    Graphic(62, "sound_test",       "SoundTest",    "Box2",                 8),
    Graphic(63, "sound_test",       "SoundTest",    "Box3",                 8),
    Graphic(64, "sound_test",       "SoundTest",    "Box4",                 8),
]

# Create LUT named -> game-index
graphic_names_lut = []
for named in graphic_names:
    graphic_names_lut.append(named.index)


graphic_ctype = "UiGraphics"
graphic_cstruct = """
typedef struct """ + graphic_ctype + """ {
    const u8 *tiles;
    const u16 *palette;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
} """ + graphic_ctype + """;

""";


def is_gba_pointer(value):
    return ((value >= rom_start) and (value < rom_end))

def read32(rom):
    word_bytes = rom.read(4)
    word = ((word_bytes[3] << 24) | (word_bytes[2] << 16) | (word_bytes[1] << 8) | (word_bytes[0] << 0))
    return word

def find_table_end_ptr(rom):
    graphic_base_offset = (graphic_table_start - rom_start)
    entry_valid = True
    num_entries = 0

    while (entry_valid):
        rom.seek(graphic_base_offset + (num_entries * table_entry_size))
        graphic_ptr = read32(rom)
        palette_ptr = read32(rom)

        if (is_gba_pointer(graphic_ptr) and is_gba_pointer(palette_ptr)):
            # cache offsets to data and palettes
            graphic_offsets.append(graphic_ptr - rom_start)
            palette_offsets.append(palette_ptr - rom_start)
            num_entries += 1
        else:
            entry_valid = False

    # Add "one past last" offset, to streamline calculating the data size
    graphic_offsets.append(palette_ptr - rom_start + 0x20)

    return (graphic_table_start + num_entries * table_entry_size), num_entries
   
def get_named_graphic(index):
    named = {}

    for named_entry in graphic_names:
        if (named_entry.index == index):
            named = named_entry
            break

    return named

def fill_graphic_names_table_with_unnamed():
    i = 0
    while(i < table_entry_count):        
        if not (i in graphic_names_lut):
            address = graphic_entry_address(i)
            graphic_names.append(Graphic(i, "", f"_0{address:X}", "gfx", 8))
        i += 1
        
header_path = "data/ui_graphics.h";
def write_header(ui_graphics_h):
    header_guard = "SA1_UI_GRAPHICS_H";
    ui_graphics_h.write(f"#ifndef {header_guard}\n")
    ui_graphics_h.write(f"#define {header_guard}\n")
    ui_graphics_h.write("#include \"global.h\"\n")
    ui_graphics_h.write(f"\n/* {autogen_disclaimer} */\n\n")
    ui_graphics_h.write(graphic_cstruct)

    for named in graphic_names:
        ui_graphics_h.write(f"extern const u8 {tiledata_label(named)}[];\n")
        ui_graphics_h.write(f"extern const u16 {palette_label(named)}[];\n\n")

    ui_graphics_h.write(f"#endif // {header_guard}\n")

def write_graphic_data(rom, graphic_data_c):
    graphic_data_c.write("#include \"global.h\"\n")
    graphic_data_c.write(f"#include \"{header_path}\"\n")
    graphic_data_c.write(f"\n/* {autogen_disclaimer} */\n\n")

    i = 0
    base_export_path = "graphics/ui/"
    try:
        os.mkdir(base_export_path)
    except FileExistsError:
        # silently ignore "file exists" error
        pass

    while(i < table_entry_count):
        named = get_named_graphic(i)

        if (named.folder[0] == '_'):
            graphic_folder_path = f"{base_export_path}{named.index}{named.folder}/"
        else:
            graphic_folder_path = f"{base_export_path}{named.folder}/"
        
        try:
            os.mkdir(graphic_folder_path)
        except FileExistsError:
            # silently ignore "file exists" error
            pass

        file_base = f"{graphic_folder_path}{named.name}"
        with open(file_base + ".4bpp", "wb")   as graphic_bin, \
             open(file_base + ".gbapal", "wb") as palette_bin:
            graphic_bin_size = palette_offsets[i] - graphic_offsets[i]
            palette_bin_size = 32 # graphic_offsets[i + 1] - palette_offsets[i]

            # Export binary data
            print(file_base)
            rom.seek(graphic_offsets[i])
            graphic_bin.write(rom.read(graphic_bin_size))
            rom.seek(palette_offsets[i])
            palette_bin.write(rom.read(palette_bin_size))

        # Convert exported binary data to .PNG / .PAL
        flags = f"-object -palette {file_base}.gbapal -width {named.width / 8}"
        os.system(f"tools/gbagfx/gbagfx {file_base}.4bpp {file_base}.png {flags}")
        os.system(f"tools/gbagfx/gbagfx {file_base}.gbapal {file_base}.pal")
        os.system(f"rm {file_base}.4bpp {file_base}.gbapal")

        graphic_data_c.write(f"// {i} - 0x08{graphic_offsets[i]:X} | 0x08{palette_offsets[i]:X}\n")
        graphic_data_c.write(f"const u8 {tiledata_label(named)}[] = INCBIN_U8(\"{file_base}.4bpp\");\n")
        graphic_data_c.write(f"const u16 {palette_label(named)}[] = INCBIN_U16(\"{file_base}.gbapal\");\n\n")

        i += 1

def write_graphic_table(rom, graphic_table_c):
    #print("LUT:", graphic_names_lut)
    
    graphic_table_c.write(f"\n/* {autogen_disclaimer} */\n\n")
    graphic_table_c.write(f"// 0x{graphic_table_start:X} -> 0x{graphic_table_end:X}\n")
    graphic_table_c.write(f"const {graphic_ctype} gUiGraphics[] = {{\n")
    i = 0

    table_base = (graphic_table_start - rom_start)
    while(i < table_entry_count):
        named = get_named_graphic(i)

        # Set ROM offset, skip pointers (2 * 4 bytes)
        entry_offset = table_base + (i * table_entry_size)
        rom.seek(entry_offset + (2 * 4))

        graphic_table_c.write("    {\n")
        graphic_table_c.write(f"        // {i} - 0x08{entry_offset:X}\n")
        graphic_table_c.write(f"        .tiles = {tiledata_label(named)},\n")
        graphic_table_c.write(f"        .palette = {palette_label(named)},\n")
        graphic_table_c.write(f"        .unk8 = {read32(rom)},\n")
        graphic_table_c.write(f"        .unkC = {read32(rom)},\n")
        graphic_table_c.write(f"        .unk10 = {read32(rom)},\n")
        graphic_table_c.write(f"        .unk14 = {read32(rom)},\n")
        graphic_table_c.write(f"        .unk18 = {read32(rom)},\n")
        graphic_table_c.write("    },\n")
        i += 1
    graphic_table_c.write("};\n")
    
with open("baserom.gba", "rb") as rom,                       \
     open("include/" + header_path, "w") as ui_graphics_h,     \
     open("src/data/ui_graphics_data.c", "w") as graphic_data_c, \
     open("src/data/ui_graphics_table.c", "w") as graphic_table_c:
    graphic_table_end, table_entry_count = find_table_end_ptr(rom)

    graphic_table_c.write("#include \"global.h\"\n")
    graphic_table_c.write(f"#include \"{header_path}\"\n")

    fill_graphic_names_table_with_unnamed()

    # Print data file
    write_graphic_data(rom, graphic_data_c)
    write_graphic_table(rom, graphic_table_c)

    write_header(ui_graphics_h)
