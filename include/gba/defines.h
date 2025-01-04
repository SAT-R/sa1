#ifndef GUARD_GBA_DEFINES
#define GUARD_GBA_DEFINES

#include <stddef.h>
#include <stdint.h> // for uint16_t

#define TRUE  1
#define FALSE 0

#define IWRAM_DATA __attribute__((section("iwram_data")))
#define EWRAM_DATA __attribute__((section("ewram_data")))

#define NAKED __attribute__((naked))
#define UNUSED __attribute__((unused))

#define ALIGNED(n) __attribute__((aligned(n)))

#define SOUND_INFO_PTR (*(struct SoundInfo **)0x3007FF0)
#define INTR_CHECK     (*(u16 *)0x3007FF8)
#define INTR_VECTOR    (*(void **)0x3007FFC)

#define EWRAM_START 0x02000000
#define EWRAM_SIZE  0x40000
#define IWRAM_START 0x03000000
#define IWRAM_SIZE  0x7E00

#define PLTT      0x5000000
#define PLTT_SIZE 0x400

#define BG_PLTT      PLTT
#define BG_PLTT_SIZE 0x200

#define OBJ_PLTT      (PLTT + 0x200)
#define OBJ_PLTT_SIZE 0x200

#define VRAM      0x6000000
#define VRAM_SIZE 0x18000

#define BG_VRAM           VRAM
#define BG_VRAM_SIZE      0x10000
#define BG_CHAR_ADDR(n)   (BG_VRAM + (0x4000 * (n)))
#define BG_CHAR_ADDR_FROM_BGCNT(bg)   (BG_VRAM + ((gBgCntRegs[bg] & BGCNT_CHARBASE(0x3)) << 12))
#define BG_SCREEN_ADDR(n) (BG_VRAM + (0x800 * (n)))
#define BG_TILE_ADDR(n)   (BG_VRAM + (0x80 * (n)))

// text-mode BG
#define OBJ_VRAM0      (u8*)(VRAM + 0x10000)
#define OBJ_VRAM0_SIZE 0x8000

// bitmap-mode BG
#define OBJ_VRAM1      (u8*)(VRAM + 0x14000)
#define OBJ_VRAM1_SIZE 0x4000

#define OAM      0x7000000
#define OAM_ENTRY_COUNT 128
#define OAM_SIZE (OAM_ENTRY_COUNT*sizeof(OamData))

#define DISPLAY_WIDTH  240
#define DISPLAY_HEIGHT 160

#if 0 // WIDESCREEN_HACK
#define WIN_REG_SIZE 4
#define WIN_RANGE(a, b) (((a) << 16) | (b))
#define WIN_GET_LOWER(win_reg)  (((win_reg) & 0xFFFF0000) >> 16)
#define WIN_GET_HIGHER(win_reg) (((win_reg) & 0x0000FFFF) >> 0)
typedef uint32_t winreg_t;
#else
#define WIN_REG_SIZE 2
#define WIN_RANGE(a, b) (((a) << 8) | (b))
#define WIN_GET_LOWER(win_reg)  (((win_reg) & 0xFF00) >> 8)
#define WIN_GET_HIGHER(win_reg) (((win_reg) & 0x00FF) >> 0)
typedef uint16_t winreg_t;
#endif

#define TILE_SIZE_4BPP 32
#define TILE_SIZE_8BPP 64

// NOTE/TODO: Maybe this should somewhere else?
// NOTE: This appears to not match when using pointers, but with integers it's fine.
//       uintptr_t should always be defined to be as big as a pointer, so there should be no issues.
#define GET_TILE_NUM_COMMON(vramPtr, tileSize) (((uintptr_t)(vramPtr) - (uintptr_t)OBJ_VRAM0) / (tileSize))
#define GET_TILE_NUM(vramPtr) GET_TILE_NUM_COMMON((vramPtr), TILE_SIZE_4BPP) 

#define TOTAL_OBJ_TILE_COUNT 1024

#define RGB(r, g, b) ((r) | ((g) << 5) | ((b) << 10))

#define RGB_BLACK RGB(0, 0, 0)
#define RGB_WHITE RGB(31, 31, 31)
#define RGB_RED RGB(31, 0, 0)
#define RGB_GREEN RGB(0, 31, 0)
#define RGB_BLUE RGB(0, 0, 31)
#define RGB_YELLOW RGB(31, 31, 0)
#define RGB_MAGENTA RGB(31, 0, 31)
#define RGB_CYAN RGB(0, 31, 31)
#define RGB_WHITEALPHA (RGB_WHITE | 0x8000)

#define WIN_RANGE(a, b) (((a) << 8) | (b))

#define SYSTEM_CLOCK           (16 * 1024 * 1024)   // System Clock

#endif // GUARD_GBA_DEFINES