#ifndef GUARD_WATER_EFFECT_H
#define GUARD_WATER_EFFECT_H

#include "core.h"

typedef struct {
#if (GAME == GAME_SA2)
    u16 pal[32][16];
#endif
} WaterData;

typedef struct {
#if (GAME == GAME_SA1)
#ifdef BUG_FIX
    /* 0x00 */ bool8 isActive;
#endif
    /* 0x00 */ u8 SA2_LABEL(unk1);
    /* 0x01 */ u8 SA2_LABEL(unk2);
#elif (GAME == GAME_SA2)
    /* 0x00 */ bool8 isActive;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 unk3;
#endif
    /* 0x04 */ s16 currentWaterLevel;
    /* 0x06 */ s16 targetWaterLevel;
    /* 0x08 */ u32 unk8;
    /* 0x0C */ u32 mask;

    // Additional "palette memory", statically alloced in SA1!
    /* 0x10 */ struct Task *t; /* size: SA1: 0x00, SA2: 0x400 */
    /* 0x14 */ Sprite s;
} Water;

extern Water gWater;

void InitWaterPalettes(void);
void CreateRunOnWaterEffect(void);
struct Task *CreateWaterfallSurfaceHitEffect(s32 x, s32 y);

#endif // GUARD_WATER_EFFECT_H
