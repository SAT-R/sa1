#ifndef GUARD_gTask_03006240
#define GUARD_gTask_03006240

#include "task.h"
#include "game/game_over.h"

// TODO: Seems like this task is Game Over-related?

typedef struct {
    /* 0x00 */ u8 filler0[0x4];
    /* 0x04 */ s32 unk4;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x0A */ u8 unkA;
    /* 0x0B */ u8 unkB;
    /* 0x0C */ const u8 *vramC;
    /* 0x10 */ u8 filler10[0x4];
    /* 0x14 */ const u8 *tiles;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ u8 filler1C[0x4];
    /* 0x20 */ const u16 *palette;
    /* 0x24 */ s32 unk24;
    /* 0x28 */ u8 unk28;
    /* 0x29 */ u8 unk29;
    /* 0x2A */ u8 unk2A;
    /* 0x2B */ u8 unk2B;
    /* 0x2C */ u8 uiGfxID;
} Strc_80528AC; /* size: 0x30 */

typedef struct {
    /* 0x00 */ void *vram0;
    /* 0x04 */ void *vram4;
    /* 0x08 */ void *vram8;
} Strc_8055C50;

typedef struct {
    /* 0x00 */ u16 unk0;
    /* 0x02 */ s16 unk2;
    /* 0x04 */ s16 unk4;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 unkA;
    /* 0x0C */ u16 unkC;
    /* 0x0E */ s16 byteCount;
    /* 0x10 */ u16 unk10;
    /* 0x12 */ u16 unk12;
    /* 0x14 */ u8 filler14[2];
    /* 0x16 */ u8 unk16;
} Strc_8052C84; /* size: 0x18 */

extern struct Task *gTask_03006240;

IwramData sub_8053674(void);
void sub_80528AC(Strc_80528AC *strc);
void sub_80530CC(const u8 *param0, struct GameOverB *param1);
void sub_8055C50(Strc_8055C50 *param0);

#endif // GUARD_gTask_03006240