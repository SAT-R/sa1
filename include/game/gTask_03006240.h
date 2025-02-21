#ifndef GUARD_gTask_03006240
#define GUARD_gTask_03006240

#include "task.h"

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

extern struct Task *gTask_03006240;

IwramData sub_8053674(void);
void sub_80528AC(Strc_80528AC *strc);

#endif // GUARD_gTask_03006240