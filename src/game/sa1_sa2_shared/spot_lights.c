#include "global.h"
#include "core.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/sa1_sa2_shared/spot_light_beam_task.h"

typedef struct {
    /* 0x00 */ struct Task *spotlightTaskA;
    /* 0x04 */ struct Task *spotlightTaskB;
    /* 0x08 */ s16 qBlend;
} SpotlightsManager;

void Task_SpotlightsManager(void);
void TaskDestructor_SpotlightsManager(struct Task *t);

bool32 CreateSpotlightsManager(void)
{
    if (gPlayer.checkPointX > 1368) {
        return FALSE;
    } else {
        struct Task *t = TaskCreate(Task_SpotlightsManager, sizeof(SpotlightsManager), 0x2000, 0, TaskDestructor_SpotlightsManager);
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