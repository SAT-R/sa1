#include "global.h"
#include "core.h"
#include "task.h"
#include "trig.h"
#include "flags.h"
#include "malloc_vram.h"
#include "bg_triangles.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/camera.h"
#include "game/stage/player.h"
#include "game/stage/screen_shake.h"
#include "lib/m4a/m4a.h"

#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ struct Task *t;
    /* 0x04 */ CamCoord worldY;
    /* 0x04 */ u16 qUnk6;
    /* 0x04 */ u16 qUnk8;
    /* 0x04 */ u16 unkA;
    /* 0x0C */ u16 unkC;
} EggRocketScreenShake; /* 0x10 */

void Task_8028CE4(void);
void Task_8028F20(void);
void Task_8029070(void);

// Maybe spawns bolts and stuff?
typedef struct {
    /* 0x00 */ u8 filler0[0x10];
    /* 0x10 */ u32 unk10;
    /* 0x12 */ u8 filler14[0x6];
    /* 0x1A */ u16 unk1A;
    /* 0x1C */ u8 filler1C[0x14];
    /* 0x30 */ s32 qUnk30;
    /* 0x34 */ s32 qUnk34;
    /* 0x38 */ s16 qUnk38;
    /* 0x3A */ s16 qUnk3A;
    /* 0x3C */ u8 filler3C[0x2];
    /* 0x3E */ s16 unk3E;
    /* 0x40 */ s16 qUnk40;
} Strc_801769C;
extern struct Task *sub_801769C(u16 flags, void *vramTiles, u16 anim, u8 variant, TaskDestructor dtor);
extern void TaskDestructor_80177EC(struct Task *);

extern const u16 gUnknown_080BB41C[8];
extern const u8 gUnknown_080BB42C[8];
extern const u8 gUnknown_080BB434[8];

void CreateEggRocketStageSeparation(CamCoord worldY)
{
    struct Task *t = TaskCreate(Task_8028CE4, sizeof(EggRocketScreenShake), 0x4000, 0, NULL);
    EggRocketScreenShake *shake = TASK_DATA(t);

    shake->unkA = 0x100;
    shake->worldY = worldY;
    shake->qUnk6 = 0;
    shake->qUnk8 = 0;

    gPlayer.moveState |= MOVESTATE_IGNORE_INPUT;
    gPlayer.heldInput = 0;
    gPlayer.qSpeedAirX = Q(0);
    gPlayer.qSpeedGround = Q(0);

    gCamera.maxY = worldY + DISPLAY_HEIGHT;
}

// (91.87%) https://decomp.me/scratch/pMtZY
NONMATCH("asm/non_matching/game/egg_rocket_trans__Task_8028CE4.inc", void Task_8028CE4(void))
{
    EggRocketScreenShake *shake = TASK_DATA(gCurTask);
    u32 i;

    if (++gCamera.shiftY >= shake->worldY - gCamera.y + (DISPLAY_HEIGHT / 2)) {
        // _08028D1C
        void *tiles;
        struct Task *t;
        Strc_801769C *strc;
        CamCoord prevCamX = gCamera.x, prevCamY = gCamera.y - 32;

        for (i = 0; i < 3; i++) {
            s32 index = PseudoRandom32() % 8u;
            s32 index2;

            t = sub_801769C(0x2000, VramMalloc(gUnknown_080BB434[index]), gUnknown_080BB41C[index], gUnknown_080BB42C[index],
                            TaskDestructor_80177EC);
            strc = TASK_DATA(t);

            strc->qUnk30 = Q(prevCamX + (PseudoRandom32() & 0xFF));
            strc->qUnk34 = Q(prevCamY);

            strc->unk10 = 0x3000;
            strc->unk1A = 0x7C0;
            strc->unk3E = 0x28;
            strc->qUnk40 = Q(1);

            index2 = PseudoRandom32() & 0x1FF;
            strc->qUnk3A = (SIN(index2) >> 6);

            strc->qUnk3A = ABS(strc->qUnk3A);

            strc->qUnk38 = -(COS(index2) << 8) >> 14;
        }

        for (i = 0; i < 3; i++) {
            s32 index = PseudoRandom32() % 8u;
            s32 index2;

            t = sub_801769C(0x2000, VramMalloc(gUnknown_080BB434[index]), gUnknown_080BB41C[index], gUnknown_080BB42C[index],
                            TaskDestructor_80177EC);
            strc = TASK_DATA(t);

            strc->qUnk30 = Q(prevCamX + (PseudoRandom32() % 256u));
            strc->qUnk34 = Q(prevCamY);

            strc->unk10 = 0x0000;
            strc->unk1A = 0x400;
            strc->unk3E = 0x28;
            strc->qUnk40 = Q(1);

            index2 = (PseudoRandom32() % 512u);
            strc->qUnk3A = (SIN(index2) >> 5);
            strc->qUnk3A = ABS(strc->qUnk3A);

            strc->qUnk38 = -(COS(index2) << 9) >> 14;
        }

        shake->t = CreateScreenShake(0x800, 0x8, 0x10, 0xA, 0x80);

        m4aSongNumStart(SE_173);

        gCurTask->main = Task_8028F20;
    }
}
END_NONMATCH

void Task_8028F20(void)
{
    EggRocketScreenShake *shake = TASK_DATA(gCurTask);
    s16 ip;
    s16 r7;

    shake->qUnk6 += Q(8. / 256.);
    shake->qUnk8 += Q(16. / 256.);

    ip = shake->worldY + I(shake->qUnk6) - gCamera.y;
    r7 = shake->worldY + I(shake->qUnk8) - gCamera.y;

    if ((shake->qUnk6 >= Q(4)) && ((gBossIndex == 2) || ((-(gStageTime * 2) & 0x1FF) == 0x102))) {
        gCurTask->main = Task_8029070;
        shake->unkC = 0;

        if (gBossIndex == 3) {
            gCamera.SA2_LABEL(unk50) |= 0x4000;
        }

        Task_8029070();
    } else if ((ip > 0) && (r7 < DISPLAY_HEIGHT)) {
        if (shake->worldY - gCamera.y > 0) {
            SA2_LABEL(sub_80078D4)(2, 0, shake->worldY - gCamera.y, gBgScrollRegs[2][0], gBgScrollRegs[2][1]);

            SA2_LABEL(sub_8007858)(2, shake->worldY - gCamera.y, r7, gBgScrollRegs[2][0], 240);
        } else {
            SA2_LABEL(sub_8007858)(2, 0, r7, gBgScrollRegs[2][0], 240);
        }
        SA2_LABEL(sub_80078D4)(2, r7, DISPLAY_HEIGHT, gBgScrollRegs[2][0], gBgScrollRegs[2][1] - I(shake->qUnk8));
    } else {
        gFlags &= ~FLAGS_4;
    }
}

// Next: void Task_80297E8(void)
