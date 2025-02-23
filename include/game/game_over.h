#ifndef GUARD_GAME_OVER_H
#define GUARD_GAME_OVER_H

#include "global.h"

enum ELostLifeCause {
    OVER_CAUSE_ZERO_LIVES = 0x1,
    OVER_CAUSE_TIME_UP = 0x2,
};

#ifndef NON_MATCHING
typedef u8 LostLifeCause;
#else
typedef enum ELostLifeCause LostLifeCause;
#endif

typedef struct {
    /* 0x00 */ Sprite s;
    /* 0x30 */ u8 filler30[0xC];
    /* 0x3C */ Sprite s2;
    /* 0x6C */ u8 filler6C[0xC];
    /* 0x78 */ u32 frames;
    /* 0x7C */ u32 lostLifeCause;
    /* 0x80 */ u8 unk80;
} GameOverScreen;

typedef struct GameOverB {
    /* 0x00 */ u8 filler0[0x8];
    /* 0x08 */ u16 unk8;
    /* 0x0A */ s16 qUnkA;
    /* 0x0C */ u16 unkC;
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u16 unk10;
    /* 0x12 */ u16 unk12;
    /* 0x14 */ u8 filler14[0x2];
    /* 0x16 */ u8 unk16;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ void *vram1C;
} GameOverB; /* 0x20 */

typedef struct GameOverC {
    /* 0x00 */ u16 unk0;
    /* 0x02 */ u16 unk2;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u8 unkA;
    /* 0x0B */ u8 unkB;
    /* 0x0C */ void *unkC;
    /* 0x10 */ void *unk10;
    /* 0x14 */ void *unk14;
    /* 0x18 */ u32 unk18;
} GameOverC; /* 0x1C */

typedef struct GameOverD {
    /* 0x00 */ u8 filler0[0x18];
    /* 0x18 */ GameOverScreen *unk18;
    /* 0x1C */ GameOverB *unk1C;
    /* 0x20 */ GameOverC *unk20;
    /* 0x24 */ u32 unk24;
    /* 0x28 */ u16 unk28;
    /* 0x26 */ u8 filler2A[0x2];
    /* 0x2C */ void *vram2C;
    /* 0x30 */ void *vram30;
} GameOverD; /* 0x34 */

void CreateGameOverScreen(LostLifeCause lostLifeCause);

#endif
