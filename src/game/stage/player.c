#include "global.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/stage/dust_effect_braking.h"
#include "game/stage/player.h"
#include "game/stage/rings_scatter.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ u8 pid;
    /* 0x04 */ u32 unk4; // TODO: Check the type!
} player_0_Task; /* size: 0x8 */

typedef struct {
    /* 0x00 */ player_0_Task unk0;
    /* 0x08 */ u8 filler[0x84];
} MaybeSuperSonic; /* size: 0x8C */

Player ALIGNED(8) gPlayer = {};
#if (GAME == GAME_SA1)
Player ALIGNED(8) gPartner = {};
#endif

// Potentially some extra space on player for this to be aligned 16 (should be 8)
#if (GAME == GAME_SA2)
PlayerSpriteInfo ALIGNED(16) SA2_LABEL(gUnknown_03005AA0) = {};
#endif
PlayerSpriteInfo ALIGNED(16) SA2_LABEL(gUnknown_03005AF0) = {};

void Task_8045B38(void);
void Task_8049898(void);
void sub_804A1B8(Player *p);
void Task_PlayerMain(void);
void TaskDestructor_Player(struct Task *);
void AllocateCharacterStageGfx(Player *p, PlayerSpriteInfo *param2);
void AllocateCharacterMidAirGfx(Player *p, PlayerSpriteInfo *param2);

void SA2_LABEL(sub_80213C0)(u32 UNUSED characterId, u32 UNUSED levelId, Player *player)
{
    struct Task *t;
    player_0_Task *gt;

    Player *p = player;
    s32 playerID = p->playerID;

#if (GAME == GAME_SA1)
    if (playerID == 0)
#endif
    {
#if (GAME == GAME_SA1)
        if (IS_EXTRA_STAGE(levelId)) {
            p->spriteTask = TaskCreate(Task_8049898, sizeof(MaybeSuperSonic), 0x3000, 0, TaskDestructor_Player);
        } else {
            p->spriteTask = TaskCreate(Task_PlayerMain, sizeof(player_0_Task), 0x3000, 0, TaskDestructor_Player);
        }
#endif
        // NOTE: For this to work MaybeSuperSonic NEEDS to have a player_0_Task as first element!
        gt = (player_0_Task *)TASK_DATA(p->spriteTask);
        gt->pid = playerID;
        gt->unk4 = 0;

#if (GAME == GAME_SA2)
        if (IS_MULTI_PLAYER) {
            if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
                gRingCount = 1;
            } else {
                gRingCount = 0;
            }
        }
#endif

        InitializePlayer(p);

#if (GAME == GAME_SA2)
        PLAYERFN_SET(Player_TouchGround);
#endif

        CreateBrakingDustEffectRelatedTask();
        InitPlayerHitRingsScatter();

#if !TAS_TESTING
        if ((gInputRecorder.mode == RECORDER_RECORD)) {
            InputRecorderLoadTape();
            gInputRecorder.mode = RECORDER_RECORD;
        } else if (gInputRecorder.mode == RECORDER_PLAYBACK) {
            InputRecorderLoadTape();
            gInputRecorder.mode = RECORDER_PLAYBACK;
        }
#endif
    }
#if (GAME == GAME_SA1)
    else {
        // here: playerID != 0
        p->spriteTask = TaskCreate(Task_8045B38, sizeof(player_0_Task), 0x3001, 0, TaskDestructor_Player);
        gt = (player_0_Task *)TASK_DATA(p->spriteTask);
        gt->pid = playerID;
        gt->unk4 = 0;
        InitializePlayer(player);
    }
#endif

#if (GAME == GAME_SA2)
    gStageGoalX = 0;
    gUnknown_030054FC = 0;
    gUnknown_030054E0 = 0;

    InitNewInputCounters();
#endif
    AllocateCharacterStageGfx(p, p->spriteInfoBody);
    AllocateCharacterMidAirGfx(p, p->spriteInfoLimbs);

#if (GAME == GAME_SA1)
    if (IS_EXTRA_STAGE(levelId)) {
        sub_804A1B8(p);
    }
#endif
}
