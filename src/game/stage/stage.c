#include "global.h"
#include "core.h"
#include "game/multiplayer/chao.h"
#include "game/multiplayer/indicators.h"
#include "game/multiplayer/mp_player.h"
#include "game/multiplayer/multiplayer_event_mgr.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/sa1_sa2_shared/music_manager.h"
#include "game/sa1_sa2_shared/rings_manager.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/stage/camera.h"
#include "game/stage/player.h"
#include "game/stage/stage.h"

#include "constants/characters.h"
#include "constants/zones.h"

typedef struct Struct_sub_80550F8 {
    u8 filler0[0x27];
    bool8 screenBlank;
} Struct_sub_80550F8; /* size: 0x28 */

struct Task *gGameStageTask = NULL;

void Task_GameStage(void);
void TaskDestructor_GameStage(struct Task *t);
void StageInit_MPCollectRings(void);

// TODO: Declare in headers!
extern struct Task *sub_80550F8(void);
extern bool32 sub_8017800(); // Spotlight-beam related
extern void CreateMultiplayerMultiPakUI();
extern void CreateStageWaterTask(s32 waterLevel, u32 p1, u32 mask);
extern struct Task *CreateMultiplayerChao(u8, u8);

#if (GAME == GAME_SA1)
void sa2__sub_801F044(void);
void sa2__sub_80213C0(u32 UNUSED characterId, u32 UNUSED levelId, Player *player);

void sub_803D888(void);
void sub_803D940(void);
void sub_803D9F8(void);
void sub_803DB2C(void);
void sub_803DCCC(void);
void sub_803DD00(void);
void sub_803DD78(void);
void sub_803DDBC(void);
void sub_803DE00(void);
void sub_803DE44(void);
void sub_803DE88(void);
void sub_803DEA8(void);
void sub_803DEC8(void);
void sub_803DF58(void);
void sub_803DF64(void);
void sub_803DF70(void);
void sub_803DFC0(void);
void sub_803E004(void);
const VoidFn gUnknown_084ADB18[NUM_LEVEL_IDS] = {
    sub_803DCCC, sub_803DD00, sub_803DD78, sub_803DDBC, sub_803D888, sub_803D940, sub_803DE00, sub_803DE44, sub_803DE88,
    sub_803DEA8, sub_803D9F8, sub_803DEC8, sub_803DF58, sub_803DF64, sub_803DF70, sub_803DFC0, sub_803DB2C, sub_803E004,
};
#elif (GAME == GAME_SA2)
void sub_801F044(void);
void sub_80213C0(u32 UNUSED characterId, u32 UNUSED levelId, Player *player);
#endif

void GameStageStart(void)
{
    gTrappedAnimalVariant = 0;
    gBossIndex = 0;
    gRingCount = 0;
    gNumSingleplayerCharacters = 1;

#if (GAME == GAME_SA1)
    if (IS_MULTI_PLAYER) {
        CallSetStageSpawnPos(gSelectedCharacter, gCurrentLevel, 0, &gPlayer);
    } else if (IS_EXTRA_STAGE(gCurrentLevel)) {
        CallSetStageSpawnPos(gSelectedCharacter, gCurrentLevel, 0, &gPlayer);
    } else {
        CallSetStageSpawnPos(gSelectedCharacter, gCurrentLevel, 0, &gPlayer);

        if (gTailsEnabled && (gSelectedCharacter == CHARACTER_SONIC)) {
            gNumSingleplayerCharacters = 2;
            CallSetStageSpawnPos(CHARACTER_TAILS, gCurrentLevel, 1, &gPartner);
        }
    }
#elif (GAME == GAME_SA2)
    if (!IS_EXTRA_STAGE(gCurrentLevel)) {
        CallSetStageSpawnPos(gSelectedCharacter, gCurrentLevel, 0, &gPlayer);
        gCheese = NULL;
    }
#endif

    gStageTime = 0;
    gStageFlags &= ~STAGE_FLAG__GRAVITY_INVERTED;

    if (IS_MULTI_PLAYER) {
        gMPStageStartFrameCount = gFrameCount;
    }

    gCheckpointTime = ZONE_TIME_TO_INT(0, 0);

#if (GAME == GAME_SA1)
    if ((gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) || (gGameMode == GAME_MODE_CHAO_HUNT)) {
        gCourseTime = ZONE_TIME_TO_INT(3, 0);
    } else if (gGameMode == GAME_MODE_TEAM_PLAY) {
        gCourseTime = ZONE_TIME_TO_INT(5, 0);
    } else {
        gCourseTime = ZONE_TIME_TO_INT(0, 0);
    }
#elif (GAME == GAME_SA2)
    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        gCourseTime = ZONE_TIME_TO_INT(0, 0);
    } else {
        gCourseTime = ZONE_TIME_TO_INT(3, 0);
    }
#endif

    CreateGameStage();
}

void CreateGameStage(void)
{
    u8 i;
    u32 j;
#if (GAME == GAME_SA1)
    struct Task *someTask;
#ifdef BUG_FIX
    someTask = NULL;
#endif
#endif
    gGameStageTask = TaskCreate(Task_GameStage, 0, 0xff00, 0, TaskDestructor_GameStage);
    gActiveCollectRingEffectCount = 0;
#if (GAME == GAME_SA2)
    gSpecialRingCount = 0;
    gUnknown_030054B0 = 0;
#endif

    gStageFlags |= (STAGE_FLAG__DISABLE_PAUSE_MENU | STAGE_FLAG__ACT_START);
    gStageFlags &= ~STAGE_FLAG__GRAVITY_INVERTED;

#if (GAME == GAME_SA2)
    gBossRingsShallRespawn = FALSE;
    gBossRingsRespawnCount = BOSS_RINGS_DEFAULT_RESPAWN_COUNT;
    gUnknown_030055BC = 0;
#endif

#if (GAME == GAME_SA1)
    sa2__sub_801F044();
    CreateStageMusicManager();

    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        someTask = sub_80550F8();
    }

    sa2__gUnknown_030053E0 = 0;

    if (gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        CreateMultiplayerMultiPakUI();
    }
    // _0803CFEE

    if (IS_MULTI_PLAYER) {
        sa2__sub_80213C0(gSelectedCharacter, gCurrentLevel, &gPlayer);
    } else if (IS_EXTRA_STAGE(gCurrentLevel)) {
        sa2__sub_80213C0(gSelectedCharacter, gCurrentLevel, &gPlayer);
    } else {
        // _0803D05C
        sa2__sub_80213C0(gSelectedCharacter, gCurrentLevel, &gPlayer);

        if (gNumSingleplayerCharacters == 2) {
            sa2__sub_80213C0(PARTNER_CHARACTER, gCurrentLevel, &gPartner);
        }
    }
    // _0803D086

    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        InitCamera(gCurrentLevel);
    } else {
        InitCamera(LEVEL_INDEX(ZONE_1, ACT_1));
    }
    // _0803D0BA

    gStageFlags &= ~STAGE_FLAG__2;
    gStageFlags &= ~STAGE_FLAG__TIMER_REVERSED;

    if ((gGameMode != GAME_MODE_SINGLE_PLAYER) && (gGameMode != GAME_MODE_TIME_ATTACK) && (gGameMode != GAME_MODE_RACE)
        && (gGameMode != GAME_MODE_MULTI_PLAYER)) {
        gStageFlags |= STAGE_FLAG__TIMER_REVERSED;
    }

    CreateStageRingsManager();
    CreateStageEntitiesManager();

    if (LEVEL_TO_ZONE(gCurrentLevel) != ZONE_4) {
        CreateStageWaterTask(-1, 0, 0);
    }

    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        gUnknown_084ADB18[gCurrentLevel]();

        if (gCurrentLevel == LEVEL_INDEX(ZONE_2, ACT_1)) {
            if (sub_8017800()) {
                Struct_sub_80550F8 *strc = TASK_DATA(someTask);
                strc->screenBlank = 1;
            }
        }
    } else {
        StageInit_MPCollectRings();
    }
    // _0803D14C
#elif (GAME == GAME_SA2)
    sub_801F044();
    gUnknown_030053E0 = 0;

    if (!IS_EXTRA_STAGE(gCurrentLevel)) {
        sub_80213C0(gSelectedCharacter, gCurrentLevel, &gPlayer);
    }

    if (IS_BOSS_STAGE(gCurrentLevel)) {
        gBossCameraClampYLower = gBossCameraYClamps[LEVEL_TO_ZONE(gCurrentLevel)][0];
        gBossCameraClampYUpper = gBossCameraYClamps[LEVEL_TO_ZONE(gCurrentLevel)][1];

        if (gCurrentLevel == LEVEL_INDEX(ZONE_FINAL, ACT_XX_FINAL_ZONE)) {
            CreateBossRunManager(gBossIndex);
        }

        if (gCurrentLevel == LEVEL_INDEX(ZONE_FINAL, ACT_TRUE_AREA_53)) {
            SuperSonicInit();
            gBossCameraClampYLower = gBossCameraYClamps[ZONE_FINAL + 1][0];
            gBossCameraClampYUpper = gBossCameraYClamps[ZONE_FINAL + 1][1];
        }
    }

    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        CreateStageMusicManager();
        SetupStageIntro();
        InitCamera(gCurrentLevel);
        sStageInitProcs[gCurrentLevel]();
    } else {
        InitCamera(0);
        StageInit_CollectRings();
        CreateCollectRingsTimeDisplay();
        gPlayer.moveState &= ~(MOVESTATE_IA_OVERRIDE | MOVESTATE_IGNORE_INPUT);
        gStageFlags &= ~STAGE_FLAG__ACT_START;
    }

    if (gCurrentLevel != LEVEL_INDEX(ZONE_1, ACT_1)) {
        CreateStageWaterTask(-1, 0, 0);
    }

    gStageFlags &= ~STAGE_FLAG__2;
    gStageFlags &= ~STAGE_FLAG__TIMER_REVERSED;

    if (gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        gStageFlags |= STAGE_FLAG__TIMER_REVERSED;
    }

    CreateStageRingsManager();
    CreateStageEntitiesManager();
#endif

#if (GAME == GAME_SA1)
    sa2__gUnknown_03001944 = 0;
    sa2__gUnknown_030017F0 = 0x100;
    sa2__gUnknown_03005394 = 0x100;
    sa2__gUnknown_03002A8C = 0x78;
    sa2__gUnknown_03004D58 = 0x50;
    sa2__gUnknown_0300194C = 0x78;
    sa2__gUnknown_03002820 = 0x50;
    sa2__gUnknown_03005398 = 0x80;
#elif (GAME == GAME_SA2)
    gUnknown_03001944 = 0;
    gUnknown_030017F0 = 0x100;
    gUnknown_03005394 = 0x100;
    gUnknown_03002A8C = 0x78;
    gUnknown_03004D58 = 0x50;
    gUnknown_0300194C = 0x78;
    gUnknown_03002820 = 0x50;
    gUnknown_03005398 = 0x80;
#endif

    if (IS_MULTI_PLAYER) {
        CreateMultiplayerReceiveEventMgr();
        CreateMultiplayerSendEventMgr();

        gRandomItemBox = 0;

        for (i = 0; i < MULTI_SIO_PLAYERS_MAX; i++) {
            gMultiplayerCharRings[i] = 0;

            if (GetBit(gMultiplayerConnections, i)) {
                CreateMultiplayerPlayer(i);
                if (i != SIO_MULTI_CNT->id) {
                    CreateOpponentPositionIndicator(i);
                }
#if (GAME == GAME_SA2)
                else {
                    CreateSelfPositionIndicator();
                }
#endif
            }

#if (GAME == GAME_SA1)
            sa2__gUnknown_030054B4[i] = -1;
#elif (GAME == GAME_SA2)
            gUnknown_030054B4[i] = -1;
#endif
            if (gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
                gMultiplayerCharacters[i] = i;
            }
        }

#if (GAME == GAME_SA1)
        if (gGameMode == GAME_MODE_CHAO_HUNT || gGameMode == GAME_MODE_TEAM_PLAY) {
            for (j = 0; j < NUM_MP_CHAO; j++) {
                gChaoTasks[j] = CreateMultiplayerChao((u8)(uintptr_t)gChaoTasks[j], j);

                if (gGameMode == GAME_MODE_CHAO_HUNT) {
                    // TODO: This check does not make sense!
                    break;
                }
            }
        }
#endif

        if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
            gPlayer.itemEffect |= PLAYER_ITEM_EFFECT__TELEPORT;
        }
    } else {
        for (i = 0; i < 4; i++) {
#if (GAME == GAME_SA1)
            sa2__gUnknown_030054B4[i] = -1;
#elif (GAME == GAME_SA2)
            gUnknown_030054B4[i] = -1;
#endif
        }
    }

#if (GAME == GAME_SA2)
    gCheese = NULL;

    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        CreateCheese(&gPlayer);
    }

    if (IS_MULTI_PLAYER && gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        CreateRaceProgressIndicator();
    }
#endif
}
