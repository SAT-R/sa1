#include "global.h"
#include "core.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/palette_loader.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/save.h"
#include "game/special_stage/main.h"
#include "game/stage/terrain_collision.h"

#include "constants/zones.h"

typedef struct Strc_30055E0 {
    u8 unk0;
    s16 unk2;
    u16 qBlend;
    s32 qUnk8;
    u8 fillerC[0x10];
} Strc_30055E0; /* 0x1C */

typedef struct Strc_03005690 {
    s32 unk0;
    s32 unk4;
    u8 filler8[0x20];
    u8 unk28;
    u8 unk29;
    u8 unk2A;
    u8 unk2B;
    u8 filler2C[0x34];

} Strc_03005690; /* 0x60 */

typedef struct Strc_3005780 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    u8 unkA;
    s16 unkC;
    s16 unkE;
    s16 unk10;
    s8 unk12;
} Strc_3005780;

// Number of rings needed this round, to continue to the next / (in the last one) collect the emerald.
u16 gSpecialStageTargetRings = 0;

void sub_8029A50(void);
void sub_8029B74(void);
void sub_802C56C(u8 param0);
void sub_802C934(void);
void sub_802D158(void);
void sub_802D190(void);
void sub_802D1D8(void);
void sub_802D274(void);
void sub_802D560(void);
void Task_80299B0(void);
void Task_8029AC4(void);
void Task_802D2BC(void);

extern void sub_805C448(u8 arg0);
extern void sub_805D048(u8 arg0);
extern void sub_8068D0C();

extern void SetFaceButtonConfig(bool32 flipFaceButtons);

extern u16 gUnknown_03005028;
extern u16 gUnknown_03005070;
extern Background gUnknown_030055A0;
extern Strc_30055E0 gUnknown_030055E0;
extern Background gUnknown_03005630;
extern Background gUnknown_03005740;
extern Strc_3005780 gUnknown_03005780;
extern Background gUnknown_030057A0;
extern Background gUnknown_03005800;


extern u16 gUnknown_08487140[][2];
extern u8 gUnknown_08487134[NUM_TIME_ATTACK_ZONES * ACTS_PER_ZONE];
extern Strc_03005690 gUnknown_03005690;

extern const Background gUnknown_08486FF4;
extern const Background gUnknown_08487034;
extern const Background gUnknown_08487074;
extern const Background gUnknown_084870B4;
extern const Background gUnknown_084870F4;

void CreateSpecialStage()
{
    SA2_LABEL(sub_801F044)();
    gUnknown_03005730 = 0;
    gUnknown_0300507C = 0;
    gSpecialStageCollectedRings = 0;

    gUnknown_03005028 = gUnknown_08487140[gUnknown_08487134[gCurrentLevel]][0];
    gUnknown_03005070 = gUnknown_08487140[gUnknown_08487134[gCurrentLevel]][1];
    gSpecialStageTargetRings = gUnknown_03005028;

    gPlayer.itemEffect &= ~0x4;

    SetFaceButtonConfig(LOADED_SAVE->btnConfig);

    sub_802D158();
    sub_802D190();
    sub_802D1D8();
    sub_8029B74();
    sub_802C934();

    sub_805C448(1);
}

void Task_80299B0(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;
    Strc_30055E0 *strc55E0 = &gUnknown_030055E0;

    if (strc55E0->unk0 == 2) {
        strc55E0->unk2 = 0x1A4;
        strc5690->unk29 |= 1;
        strc5690->unk2A = 0x40;

        gCurTask->main = sub_8029A50;

        if (gUnknown_03005028 > gSpecialStageCollectedRings) {
            sub_802C56C(2);
        }
    }
    if (strc55E0->unk0 == 1) {
        strc55E0->unk2 = 0x1A4;
        strc5690->unk29 |= 1;
        strc5690->unk2A = 0x80;
        gCurTask->main = sub_802D274;

        if (gUnknown_03005070 > gSpecialStageCollectedRings) {
            sub_802C56C(2);
        }
    }
}

void sub_8029A50(void)
{
    Strc_03005690 *strc5690 = &gUnknown_03005690;

    if (--gUnknown_030055E0.unk2 <= 0) {
        if (gUnknown_03005028 <= gSpecialStageCollectedRings) {
            gUnknown_030055E0.unk0 = 0;
            strc5690->unk29 &= ~0x1;
            sub_802D560();
            gCurTask->main = Task_80299B0;
        } else {
            gStageFlags |= 0x20;
            gCurTask->main = Task_8029AC4;
        }
    }
}

void Task_8029AC4(void)
{
    gUnknown_030055E0.qBlend += Q(0.25);
    gBldRegs.bldCnt = 0x3F9F;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = I(gUnknown_030055E0.qBlend);

    if (gUnknown_030055E0.qBlend >= Q(16)) {
        gBldRegs.bldAlpha = 0x10;

        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        SA2_LABEL(gUnknown_03005390) = 0;
        PAUSE_GRAPHICS_QUEUE();

        gBldRegs.bldCnt |= 0x3F1F;
        if (gUnknown_030055E0.unk0 == 2) {
            sub_805D048(0);
        } else if (gSpecialStageTargetRings <= gSpecialStageCollectedRings) {
            sub_8068D0C();
        } else {
            sub_805D048(0);
        }
    }
}

void sub_8029B74(void)
{
    Strc_3005780 *strc5780 = &gUnknown_03005780;
    s32 var_r0;
    s32 var_r0_2;

    gDispCnt = 0x1C40;
    gBgCntRegs[1] = 0x201;
    gBgCntRegs[2] = 0x5806;
    gBgCntRegs[3] = 0x1C0B;
    strc5780->unk0 = 0x88;
    strc5780->unk2 = 0x20;
    strc5780->unkE = 0;
    strc5780->unk4 = 0;
    strc5780->unk10 = 0;
    strc5780->unk6 = 0;
    strc5780->unk8 = 0;
    strc5780->unkC = 0;

#ifndef NON_MATCHING
    asm("" ::"r"(gBgScrollRegs));
#endif

    var_r0 = 0x88 - strc5780->unk4;
    if (var_r0 < 0) {
        var_r0 += 7;
    }
    gBgScrollRegs[3][0] = (var_r0 >> 3);

    var_r0_2 = strc5780->unk6 + 0x20;
    if (var_r0_2 < 0) {
        var_r0_2 += 7;
    }
    gBgScrollRegs[3][1] = (s16)(var_r0_2 >> 3);
    gBgScrollRegs[2][0] = 0x88;
    gBgScrollRegs[2][1] = 0x20;

    gUnknown_03005630 = gUnknown_08487034;
    gUnknown_030055A0 = gUnknown_08487074;
    gUnknown_03005740 = gUnknown_084870B4;
    gUnknown_03005800 = gUnknown_084870F4;
    gUnknown_030057A0 = gUnknown_08486FF4;

    DrawBackground(&gUnknown_03005630);
    DrawBackground(&gUnknown_030055A0);
    DrawBackground(&gUnknown_03005740);
    DrawBackground(&gUnknown_03005800);
    DrawBackground(&gUnknown_030057A0);

    TaskCreate(Task_802D2BC, 0U, 0x1200U, 0U, NULL);
    CreatePaletteLoaderTask(0x2000U, gUnknown_08487134[gCurrentLevel] + 0x340, 0U, NULL);
    CreatePaletteLoaderTask(0x2000U, gUnknown_08487134[gCurrentLevel] + 0x340, 1U, NULL);
}
