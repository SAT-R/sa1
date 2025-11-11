#include "global.h"
#include "core.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/save.h"
#include "game/special_stage/main.h"
#include "game/stage/terrain_collision.h"

#include "constants/zones.h"

// Number of rings needed this round, to continue to the next / (in the last one) collect the emerald.
u16 gSpecialStageTargetRings = 0;

void sub_802D158(void);
void sub_802D190(void);
void sub_802D1D8(void);
void sub_8029B74(void);
void sub_802C934(void);

extern void sub_805C448(u8 arg0);

extern void SetFaceButtonConfig(bool32 flipFaceButtons);

extern u16 gUnknown_03005028;
extern u16 gUnknown_03005070;

extern u16 gUnknown_08487140[][2];
extern u8 gUnknown_08487134[NUM_TIME_ATTACK_ZONES * ACTS_PER_ZONE];

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
