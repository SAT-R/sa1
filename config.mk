### Build Configuration ###

# Default variables
GAME_REVISION ?= 0
GAME_REGION   ?= EUROPE
DEBUG         ?= 0
COMPARE       ?= 1

# For gbafix
MAKER_CODE := 6W

# Version
BUILD_NAME := sa1
TITLE      := SONIC ADVANC
GAME_CODE  := ASO


# Revision
ifeq ($(GAME_REVISION), 0)
  BUILD_NAME := $(BUILD_NAME)
else
  $(error unknown revision $(GAME_REVISION))
endif

# Region
ifeq ($(GAME_REGION), USA)
  BUILD_NAME := $(BUILD_NAME)_usa
  GAME_CODE  := $(GAME_CODE)E

else
ifeq ($(GAME_REGION), EUROPE)
  BUILD_NAME := $(BUILD_NAME)
  GAME_CODE  := $(GAME_CODE)P
else
  $(error unknown region $(GAME_REGION))
endif
endif

# Debug
ifeq ($(DEBUG), 1)
  COMPARE := 0
  BUILD_NAME := $(BUILD_NAME)_debug
endif
