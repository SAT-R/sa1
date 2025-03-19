#ifndef GUARD_VRAM_HARDCODED_H
#define GUARD_VRAM_HARDCODED_H

#if (GAME == GAME_SA1)
#define VRAM_RESERVED_TO_BE_CONTINUED     ((void *)OBJ_VRAM0 + 0x0000)
#define VRAM_RESERVED_UI_DIGITS_A         ((void *)OBJ_VRAM0 + 0x0800)
#define VRAM_RESERVED_STGINTRO_CHAR_NAME  ((void *)OBJ_VRAM0 + 0x0800)
#define VRAM_RESERVED_UI_DIGITS_B         ((void *)OBJ_VRAM0 + 0x0880)
#define VRAM_RESERVED_UI_DIGITS_C         ((void *)OBJ_VRAM0 + 0x0A80)
#define VRAM_RESERVED_UI_DIGITS_D         ((void *)OBJ_VRAM0 + 0x0D40)
#define VRAM_RESERVED_UI_DIGITS_E         ((void *)OBJ_VRAM0 + 0x75E0)
#define VRAM_RESERVED_UI_DIGITS_F         ((void *)OBJ_VRAM0 + 0x78A0)
#define VRAM_RESERVED_UI_DIGITS_G         ((void *)OBJ_VRAM0 + 0x7BE0)
#define VRAM_RESERVED_DUST_EFFECT_BRAKING ((void *)OBJ_VRAM0 + 0x2100)
#define VRAM_RESERVED_WATER_SURFACE       (void *)(OBJ_VRAM0 + 0x2660)
#define VRAM_RESERVED_TRACK_AIR_CORNER    (void *)(OBJ_VRAM0 + 0x2680)
#define VRAM_RESERVED_BUBBLES_SMALL       (void *)(OBJ_VRAM0 + 0x2A20)
#define VRAM_RESERVED_BUBBLES_GROUP       (void *)(OBJ_VRAM0 + 0x2AA0)
#elif (GAME == GAME_SA2)
#define VRAM_RESERVED_DUST_EFFECT_BRAKING ((void *)OBJ_VRAM0 + 0x2300)
#define VRAM_RESERVED_WATER_SURFACE       (void *)(OBJ_VRAM0 + 0x2980)
#define VRAM_RESERVED_BUBBLES_SMALL       (void *)(OBJ_VRAM0 + 0x2A40)
#define VRAM_RESERVED_BUBBLES_GROUP       (void *)(OBJ_VRAM0 + 0x2AC0)
#endif

#endif // GUARD_VRAM_HARDCODED_H
