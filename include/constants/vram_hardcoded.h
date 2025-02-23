#ifndef GUARD_VRAM_HARDCODED_H
#define GUARD_VRAM_HARDCODED_H

#if (GAME == GAME_SA1)
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
