#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "game/parameters/stage.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/sa1_sa2_shared/spot_light_beam_task.h"
#include "game/sa1_sa2_shared/spot_lights_manager.h"

typedef struct {
    /* 0x00 */ struct Task *spotlightTaskA;
    /* 0x04 */ struct Task *spotlightTaskB;
    /* 0x08 */ s16 qBlend;
} SpotlightsManager;

void Task_SpotlightsManagerMain(void);
void Task_801796C(void);
void TaskDestructor_SpotlightsManager(struct Task *t);

bool32 CreateSpotlightsManager(void)
{
    if (PORTABLE || gPlayer.checkPointX > SPOTLIGHT_DESPAWN_X0) {
        return FALSE;
    } else {
        struct Task *t = TaskCreate(Task_SpotlightsManagerMain, sizeof(SpotlightsManager), 0x2000, 0, TaskDestructor_SpotlightsManager);
        SpotlightsManager *manager = TASK_DATA(t);
        SpotlightBeam *beamA, *beamB;

        manager->qBlend = Q(16);
        manager->spotlightTaskA = CreateSpotlightBeamTask();
        beamA = TASK_DATA(manager->spotlightTaskA);
        beamA->unk6 = 60;
        beamA->unk8 = 200;
        beamA->unk0 = 0;
        beamA->unk2 = 0x40;
        beamA->unk4 = 0x40;
        beamA->unk4 = 0x800;
        beamA->unkA = 2;
        beamA->unkB = 0x20;

        manager->spotlightTaskB = CreateSpotlightBeamTask();
        beamA = TASK_DATA(manager->spotlightTaskB);
        beamA->unk6 = 200;
        beamA->unk8 = 240;
        beamA->unk0 = 0;
        beamA->unk2 = 8;
        beamA->unk4 = 0x400;
        beamA->unkA = 3;
        beamA->unkB = 0x10;

        gBldRegs.bldCnt = (BLDCNT_EFFECT_DARKEN | BLDCNT_TGT2_ALL | (BLDCNT_TGT1_ALL & ~BLDCNT_TGT1_BD));
        gBldRegs.bldY = I(manager->qBlend);
    }

    return TRUE;
}

void Task_SpotlightsManagerMain(void)
{
    SpotlightsManager *manager = TASK_DATA(gCurTask);
    SpotlightBeam *beam;
    s32 unkC;

    gDispCnt |= (DISPCNT_WIN0_ON | DISPCNT_WIN1_ON);

    gWinRegs[WINREG_WININ] = (WININ_WIN0_ALL & ~WININ_WIN0_CLR) | (WININ_WIN1_ALL & ~WININ_WIN1_CLR);
    gWinRegs[WINREG_WINOUT] = (WININ_WIN0_ALL);

    manager->qBlend -= Q(0.25);

    if (manager->qBlend < Q(8.0)) {
        manager->qBlend = Q(8.0);
    }

    gBldRegs.bldY = I(manager->qBlend);

    if (I(gPlayer.qWorldX) > SPOTLIGHT_DESPAWN_X0) {
        gCurTask->main = Task_801796C;
    } else if ((gPlayer.moveState & MOVESTATE_DEAD) || gDestroySpotlights) {
        TaskDestroy(manager->spotlightTaskA);
        TaskDestroy(manager->spotlightTaskB);
        TaskDestroy(gCurTask);
        return;
    }
}

void Task_801796C(void)
{
    SpotlightsManager *manager = TASK_DATA(gCurTask);

    manager->qBlend -= Q(0.25);

    if (manager->qBlend < Q(0)) {
        TaskDestroy(manager->spotlightTaskA);
        TaskDestroy(manager->spotlightTaskB);
        TaskDestroy(gCurTask);
        return;
    }

    if ((I(gPlayer.qWorldX) > SPOTLIGHT_DESPAWN_X1) || !PLAYER_IS_ALIVE || gDestroySpotlights) {
        TaskDestroy(manager->spotlightTaskA);
        TaskDestroy(manager->spotlightTaskB);
        TaskDestroy(gCurTask);
        return;
    }

    gBldRegs.bldY = I(manager->qBlend);
}

void TaskDestructor_SpotlightsManager(struct Task *t)
{
    gDispCnt &= ~(DISPCNT_WIN0_ON | DISPCNT_WIN1_ON);

    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;

    gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, 0);
    gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, 0);
    gWinRegs[WINREG_WIN1H] = WIN_RANGE(0, 0);
    gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, 0);

    gFlags &= ~FLAGS_4;
}