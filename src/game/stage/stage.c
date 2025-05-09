#include "global.h"
#include "core.h"
#include "flags.h"
#include "lib/m4a/m4a.h"
#include "game/game_over.h"
#include "game/multiplayer/chao.h"
#include "game/multiplayer/finish.h"
#include "game/multiplayer/indicators.h"
#include "game/multiplayer/mp_player.h"
#include "game/multiplayer/multiplayer_event_mgr.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/sa1_sa2_shared/music_manager.h"
#include "game/sa1_sa2_shared/palette_loader.h"
#include "game/sa1_sa2_shared/pause_menu.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/sa1_sa2_shared/rings_manager.h"
#include "game/sa1_sa2_shared/spot_light_beam_task.h"
#include "game/parameters/stage.h"
#include "game/save.h"
#include "game/stage/camera.h"
#include "game/stage/player.h"
#include "game/stage/screen_shake.h"
#include "game/stage/stage.h"
#include "game/time_attack/lobby.h"

#include "constants/characters.h"
#include "constants/songs.h"
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
extern bool32 CreateSpotlightsManager(void); // Spotlight-beam related
extern void CreateMultiplayerMultiPakUI();
extern void CreateStageWaterTask(s32 waterLevel, u32 p1, u32 mask);
extern struct Task *CreateMultiplayerChao(u8, u8);
extern void SetFaceButtonConfig(bool32);

void SA2_LABEL(sub_801F044)(void);
#if (GAME == GAME_SA1)
void SA2_LABEL(sub_80213C0)(u32 UNUSED characterId, u32 UNUSED levelId, Player *player);

void StageInit_Zone3Act1(void);
void StageInit_Zone3Act2(void);
void StageInit_Zone6Act1(void);
void StageInit_PinballChaoGarden(void);
void StageInit_Zone1Act1(void);
void StageInit_Zone1Act2(void);
void StageInit_Zone2Act1(void);
void StageInit_Zone2Act2(void);
void StageInit_Zone4Act1(void);
void StageInit_Zone4Act2(void);
void StageInit_Zone5Act1(void);
void StageInit_Zone5Act2(void);
void StageInit_Zone6Act2(void);
void StageInit_Zone7Act1(void);
void StageInit_Zone7Act2(void);
void StageInit_ForestChaoGarden(void);
void StageInit_FactoryChaoGarden(void);
void StageInit_SpaceChaoGarden(void);

void sub_805B9E8(void);

const VoidFn sStageInitProcs[NUM_LEVEL_IDS] = {
    StageInit_Zone1Act1,         StageInit_Zone1Act2, //
    StageInit_Zone2Act1,         StageInit_Zone2Act2, //
    StageInit_Zone3Act1,         StageInit_Zone3Act2, //
    StageInit_Zone4Act1,         StageInit_Zone4Act2, //
    StageInit_Zone5Act1,         StageInit_Zone5Act2, //
    StageInit_Zone6Act1,         StageInit_Zone6Act2, //
    StageInit_Zone7Act1,         StageInit_Zone7Act2, //
    StageInit_ForestChaoGarden,  StageInit_FactoryChaoGarden, //
    StageInit_PinballChaoGarden, StageInit_SpaceChaoGarden,
};
#elif (GAME == GAME_SA2)
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

    SA2_LABEL(sub_801F044)();

#if (GAME == GAME_SA1)
    CreateStageMusicManager();

    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        someTask = sub_80550F8();
    }

    SA2_LABEL(gUnknown_030053E0) = 0;

    if (gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        CreateMultiplayerMultiPakUI();
    }

    if (IS_MULTI_PLAYER) {
        SA2_LABEL(sub_80213C0)(gSelectedCharacter, gCurrentLevel, &gPlayer);
    } else if (IS_EXTRA_STAGE(gCurrentLevel)) {
        SA2_LABEL(sub_80213C0)(gSelectedCharacter, gCurrentLevel, &gPlayer);
    } else {
        SA2_LABEL(sub_80213C0)(gSelectedCharacter, gCurrentLevel, &gPlayer);

        if (gNumSingleplayerCharacters == 2) {
            SA2_LABEL(sub_80213C0)(PARTNER_CHARACTER, gCurrentLevel, &gPartner);
        }
    }

    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        InitCamera(gCurrentLevel);
    } else {
        InitCamera(LEVEL_INDEX(ZONE_1, ACT_1));
    }

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
        sStageInitProcs[gCurrentLevel]();

        if (gCurrentLevel == LEVEL_INDEX(ZONE_2, ACT_1)) {
            if (CreateSpotlightsManager()) {
#ifdef BUG_FIX
                if (someTask != NULL)
#endif
                {
                    Struct_sub_80550F8 *strc = TASK_DATA(someTask);
                    strc->screenBlank = 1;
                }
            }
        }
    } else {
        StageInit_MPCollectRings();
    }
#elif (GAME == GAME_SA2)
    SA2_LABEL(gUnknown_030053E0) = 0;

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

    SA2_LABEL(gUnknown_03001944) = 0;
    SA2_LABEL(gUnknown_030017F0) = 0x100;
    SA2_LABEL(gUnknown_03005394) = 0x100;
    SA2_LABEL(gUnknown_03002A8C) = 0x78;
    SA2_LABEL(gUnknown_03004D58) = 0x50;
    SA2_LABEL(gUnknown_0300194C) = 0x78;
    SA2_LABEL(gUnknown_03002820) = 0x50;
    SA2_LABEL(gUnknown_03005398) = 0x80;

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

            SA2_LABEL(gUnknown_030054B4)[i] = -1;

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
            SA2_LABEL(gUnknown_030054B4)[i] = -1;
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

void Task_GameStage(void)
{
    u16 sioId = SIO_MULTI_CNT->id;
    u32 timeStep;

    if (IS_SINGLE_PLAYER) {
#if DEBUG
        if (gInput & SELECT_BUTTON) {
            void CreateUnusedLevelSelect(void);
            TasksDestroyAll();
            CreateUnusedLevelSelect();
        }
#endif
        if (!(gStageFlags & STAGE_FLAG__DISABLE_PAUSE_MENU) && (gPressedKeys & START_BUTTON) && !(gStageFlags & STAGE_FLAG__DEMO_RUNNING)) {
            CreatePauseMenu();
        }
        gStageTime++;
        timeStep = 1;
    } else {
        u32 framesSinceStageStart = (gFrameCount - gMPStageStartFrameCount);
        timeStep = framesSinceStageStart - gStageTime;
        gStageTime = framesSinceStageStart;

        if (GAME_MODE_REQUIRES_ITEM_RNG) {
            if ((framesSinceStageStart & ~(0x1FF)) != ((framesSinceStageStart - timeStep) & ~(0x1FF))) {
                u32 mask, rand;
                u32 temp = MultiplayerPseudoRandom32();

                if ((framesSinceStageStart & ~(0xFFF)) != ((framesSinceStageStart - timeStep) & ~(0xFFF))) {
                    u32 value = (gRandomItemBox >> 4) + 1;
                    gRandomItemBox = ((gRandomItemBox & 0xF) | (value * 16));
                }
                rand = gMultiplayerPseudoRandom;
                mask = 7;
                gRandomItemBox = (gRandomItemBox & 0xF8) | (rand & mask);
            }

        } else if ((framesSinceStageStart & ~(0x3F)) != ((framesSinceStageStart - timeStep) & ~(0x3F))) {
            u32 temp = MultiplayerPseudoRandom32();
        }

        if (gCamera.SA2_LABEL(unk50) & CAM_MODE_SPECTATOR) {

            if ((gInput & (L_BUTTON | R_BUTTON)) == (L_BUTTON | R_BUTTON)) {
                if (sioId != 3) {
                    gCamera.spectatorTarget = 3;
                } else {
                    gCamera.spectatorTarget = 2;
                }
            } else if (gInput & L_BUTTON) {
                if (sioId == 0) {
                    gCamera.spectatorTarget = 1;
                } else {
                    gCamera.spectatorTarget = 0;
                }
            } else if (gInput & R_BUTTON) {
                if (sioId < 2) {
                    gCamera.spectatorTarget = 2;
                } else {
                    gCamera.spectatorTarget = 1;
                }
            } else {
                gCamera.spectatorTarget = sioId;
            }
        } else {
            gCamera.spectatorTarget = sioId;
        }

        // If player is not connected, switch back to our player
        if (!GetBit(gMultiplayerConnections, gCamera.spectatorTarget)) {
            gCamera.spectatorTarget = sioId;
        }

#if (GAME == GAME_SA1)
        if (SA2_LABEL(gUnknown_030053E0) > 0) {
            SA2_LABEL(gUnknown_030053E0)--;
        }
#elif (GAME == GAME_SA2)
        if (gUnknown_030053E0 > 0) {
            gUnknown_030053E0--;
        }
#endif
    }

    SA2_LABEL(gUnknown_0300544C) = gStageFlags;

    if (gStageFlags & STAGE_FLAG__ACT_START) {
        return;
    }

    gCheckpointTime += timeStep;

    if (gStageFlags & STAGE_FLAG__TIMER_REVERSED) {
        gCourseTime -= timeStep;
        if ((s32)gCourseTime > 0) {
            return;
        }

        if (IS_SINGLE_PLAYER) {
            gStageFlags |= STAGE_FLAG__ACT_START;

#if (GAME == GAME_SA1)
            if (gLoadedSaveGame.timeLimitDisabled) {
                return;
            }
#elif (GAME == GAME_SA2)
            if (gLoadedSaveGame->timeLimitDisabled) {
                return;
            }
#endif

            gPlayer.itemEffect = 0;

            if (gPlayer.moveState & MOVESTATE_IN_WATER) {
                gPlayer.qSpeedAirY = -Q(2.625);
            } else {
                gPlayer.qSpeedAirY = -Q(4.875);
            }

#if (GAME == GAME_SA1)
            if (gCurrentLevel == LEVEL_INDEX(ZONE_6, ACT_1))
#elif (GAME == GAME_SA2)
            if (gCurrentLevel == LEVEL_INDEX(ZONE_3, ACT_BOSS))
#endif
            {
                CreateScreenShake(0x800, 8, 16, -1, (SCREENSHAKE_VERTICAL | SCREENSHAKE_HORIZONTAL | SCREENSHAKE_RANDOM_VALUE));
            }
            gPlayer.moveState |= MOVESTATE_DEAD;
            m4aSongNumStart(SE_TIME_UP);
        } else {
            gStageFlags |= STAGE_FLAG__ACT_START;
            SA2_LABEL(sub_8019F08)();
        }
    } else {
        gCourseTime += timeStep;
        if (gCourseTime <= MAX_COURSE_TIME) {
            return;
        }

        if (IS_SINGLE_PLAYER) {
            gStageFlags |= STAGE_FLAG__ACT_START;

#if (GAME == GAME_SA1)
            if (gLoadedSaveGame.timeLimitDisabled && (gGameMode == GAME_MODE_SINGLE_PLAYER || IS_MULTI_PLAYER)) {
                return;
            }
#elif (GAME == GAME_SA2)
            if (gLoadedSaveGame->timeLimitDisabled && (gGameMode == GAME_MODE_SINGLE_PLAYER || IS_MULTI_PLAYER)) {
                return;
            }
#endif

            gPlayer.itemEffect = 0;

            if (gPlayer.moveState & MOVESTATE_IN_WATER) {
                gPlayer.qSpeedAirY = -Q(2.625);
            } else {
                gPlayer.qSpeedAirY = -Q(4.875);
            }
            gPlayer.moveState |= MOVESTATE_DEAD;
            m4aSongNumStart(SE_TIME_UP);
        } else {
            gStageFlags |= STAGE_FLAG__ACT_START;
            SA2_LABEL(sub_8019F08)();
        }
    }
}

void HandleLifeLost(void)
{
    gStageFlags |= STAGE_FLAG__DISABLE_PAUSE_MENU;

    if (GAME_MODE_IS_TIME_ATTACK) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();

        SA2_LABEL(gUnknown_03005390) = 0;

        PAUSE_GRAPHICS_QUEUE();
        CreateTimeAttackLobbyScreen();
#if (GAME == GAME_SA2)
        gNumLives = 2;
#endif
        return;
    } else {
#if (GAME == GAME_SA1)
        if (IS_SINGLE_PLAYER && (--gNumLives == 0))
#elif (GAME == GAME_SA2)
        if (--gNumLives == 0)
#endif
        {
            gStageFlags |= STAGE_FLAG__ACT_START;

#if (GAME == GAME_SA1)
            if (SA2_LABEL(gUnknown_0300543C) > 0) {
                SA2_LABEL(gUnknown_0300543C)--;
                CreateGameOverScreen(OVER_CAUSE_ZERO_LIVES);
            } else {
                CreateGameOverScreen(OVER_CAUSE_TIME_UP);
            }
#else
            CreateGameOverScreen(OVER_CAUSE_ZERO_LIVES);
#endif
        } else {
            TasksDestroyAll();
            PAUSE_BACKGROUNDS_QUEUE();

            SA2_LABEL(gUnknown_03005390) = 0;

            PAUSE_GRAPHICS_QUEUE();
            CreateGameStage();
        }
    }
}

#if (GAME == GAME_SA1)
void HandleDeath(void)
{
    gStageFlags |= STAGE_FLAG__DISABLE_PAUSE_MENU;

    if (GAME_MODE_IS_TIME_ATTACK) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();

        SA2_LABEL(gUnknown_03005390) = 0;

        PAUSE_GRAPHICS_QUEUE();
        CreateTimeAttackLobbyScreen();
    } else if (--gNumLives == 0) {
        if (SA2_LABEL(gUnknown_0300543C) > 0) {
            SA2_LABEL(gUnknown_0300543C)--;
            CreateGameOverScreen(OVER_CAUSE_ZERO_LIVES);
        } else {
            s32 score = (gLevelScore < gLoadedSaveGame.unk420) ? gLoadedSaveGame.unk420 : gLevelScore;

            gLoadedSaveGame.unk420 = score;

            CreateGameOverScreen(OVER_CAUSE_TIME_UP);
        }
    } else {
        sub_805B9E8();
    }
}
#endif

void GoToNextLevel(void)
{
    u16 irqEnable, irqMasterEnable, dispStat;

    TasksDestroyAll();
    PAUSE_BACKGROUNDS_QUEUE();
    SA2_LABEL(gUnknown_03005390) = 0;
    PAUSE_GRAPHICS_QUEUE();

#if (GAME == GAME_SA1)
    m4aMPlayAllStop();
    m4aSoundVSyncOff();

    gFlags |= FLAGS_8000;
    irqEnable = REG_IE;
    irqMasterEnable = REG_IME;
    dispStat = REG_DISPSTAT;

    REG_IE = 0;
    REG_IE;
    REG_IME = 0;
    REG_IME;
    REG_DISPSTAT = 0;
    REG_DISPSTAT;

    gFlags &= ~FLAGS_4;

    SlowDmaStop(0);
    SlowDmaStop(1);
    SlowDmaStop(2);
    SlowDmaStop(3);
#endif

    WriteSaveGame();

#if (GAME == GAME_SA1)
    REG_IE = irqEnable;
    REG_IE;
    REG_IME = irqMasterEnable;
    REG_IME;
    REG_DISPSTAT = dispStat;
    REG_DISPSTAT;

    m4aSoundVSyncOn();

    gFlags &= ~FLAGS_8000;
#endif

#if (GAME == GAME_SA1)
    if (gGameMode != GAME_MODE_TIME_ATTACK)
#elif (GAME == GAME_SA2)
    if (gGameMode == GAME_MODE_SINGLE_PLAYER)
#endif
    {
        if (++gCurrentLevel < NUM_LEVEL_IDS) {
            GameStageStart();
        }
    }
#if (GAME == GAME_SA1)
    else {
        CreateTimeAttackLobbyScreen();
    }
#endif
}

void StageInit_Zone3Act1(void)
{
    CreatePaletteLoaderTask(0x2000, 816, 0, 0);
    CreatePaletteLoaderTask(0x2000, 817, 0, 0);
    CreatePaletteLoaderTask(0x2000, 818, 0, 0);
    CreatePaletteLoaderTask(0x2000, 824, 0, 0);
    CreatePaletteLoaderTask(0x2000, 825, 0, 0);
    CreatePaletteLoaderTask(0x2000, 827, 0, 0); // TODO/BUG?: Should this be 826?
    CreatePaletteLoaderTask(0x2000, 827, 0, 0);
    CreatePaletteLoaderTask(0x2000, 828, 0, 0);
    CreatePaletteLoaderTask(0x2000, 843, 0, 0);
    CreatePaletteLoaderTask(0x2000, 844, 0, 0);
    CreatePaletteLoaderTask(0x2000, 826, 0, 0); // Chao Stage removes this loader

    m4aSongNumStart(MUS_CASINO_PARADISE__ACT_1);
}

void StageInit_Zone3Act2(void)
{
    CreatePaletteLoaderTask(0x2000, 816, 0, 0);
    CreatePaletteLoaderTask(0x2000, 817, 0, 0);
    CreatePaletteLoaderTask(0x2000, 818, 0, 0);
    CreatePaletteLoaderTask(0x2000, 824, 0, 0);
    CreatePaletteLoaderTask(0x2000, 825, 0, 0);
    CreatePaletteLoaderTask(0x2000, 827, 0, 0); // TODO/BUG?: Should this be 826?
    CreatePaletteLoaderTask(0x2000, 827, 0, 0);
    CreatePaletteLoaderTask(0x2000, 828, 0, 0);
    CreatePaletteLoaderTask(0x2000, 843, 0, 0);
    CreatePaletteLoaderTask(0x2000, 844, 0, 0);
    CreatePaletteLoaderTask(0x2000, 826, 0, 0);

    m4aSongNumStart(MUS_CASINO_PARADISE__ACT_2);
}

void StageInit_Zone6Act1(void)
{
    CreatePaletteLoaderTask(0x2000, 839, 0, 0);
    CreatePaletteLoaderTask(0x2000, 840, 0, 0);
    CreatePaletteLoaderTask(0x2000, 841, 0, 0);
    CreatePaletteLoaderTask(0x2000, 842, 0, 0);

    m4aSongNumStart(MUS_EGG_ROCKET);

    if (gBossIndex > 0) {
        // This section only gets called after hitting a checkpoint!
        //
        // Rocket "started", so don't allow player to leave.
        gCamera.minX = EGG_ROCKET_LAUNCH_MIN_X;
        gCamera.sa2__unk50 |= 0x8000;
        gBgCntRegs[3] &= ~(BGCNT_TXT512x512);

        if (gGameMode == GAME_MODE_SINGLE_PLAYER) {
            gStageFlags |= STAGE_FLAG__TIMER_REVERSED;
            gCourseTime = ZONE_TIME_TO_INT(5, 0);
        }
    }

    if (gBossIndex > 1) {
        // Rocket booster removed
        //
        // 'maxY' set because we are "climbing" the rocket and positive Y goes down.
        gCamera.maxY = EGG_ROCKET_BOOSTER_DEPART_MAX_Y;
        gCamera.sa2__unk50 |= 0x8000;
        gBgCntRegs[3] &= ~(BGCNT_TXT512x512);

        if (gGameMode == GAME_MODE_SINGLE_PLAYER) {
            gStageFlags |= STAGE_FLAG__TIMER_REVERSED;
            gCourseTime = ZONE_TIME_TO_INT(5, 0);
        }
    }

    if (gBossIndex > 2) {
        gBgCntRegs[3] &= ~(BGCNT_TXT512x512);
        gCamera.sa2__unk50 |= 0x4000;
        gCamera.sa2__unk50 &= ~0x8000;
        gCamera.maxY = EGG_ROCKET_MIDDLE_DEPART_MAX_Y;

        if (gGameMode == GAME_MODE_SINGLE_PLAYER) {
            gStageFlags |= STAGE_FLAG__TIMER_REVERSED;
            gCourseTime = ZONE_TIME_TO_INT(5, 0);
        }
    }
}

void StageInit_PinballChaoGarden(void)
{
    CreatePaletteLoaderTask(0x2000, 816, 0, 0);
    CreatePaletteLoaderTask(0x2000, 817, 0, 0);
    CreatePaletteLoaderTask(0x2000, 818, 0, 0);
    CreatePaletteLoaderTask(0x2000, 824, 0, 0);
    CreatePaletteLoaderTask(0x2000, 825, 0, 0);
    CreatePaletteLoaderTask(0x2000, 827, 0, 0); // TODO/BUG?: Should this be 826?
    CreatePaletteLoaderTask(0x2000, 827, 0, 0);
    CreatePaletteLoaderTask(0x2000, 828, 0, 0);
    CreatePaletteLoaderTask(0x2000, 843, 0, 0);
    CreatePaletteLoaderTask(0x2000, 844, 0, 0);
    // Regular Casino Paradise loads palette anim 826 here.

    m4aSongNumStart(MUS_CASINO_PARADISE__ACT_1);
}

void ApplyGameStageSettings(void)
{
    gLevelScore = 0;
    gNumLives = 3;
    SA2_LABEL(gUnknown_030054B0) = gCurrentLevel;

    if (IS_MULTI_PLAYER) {
        gNumLives = 1;
    }

    if ((gGameMode == GAME_MODE_TIME_ATTACK || (gGameMode == GAME_MODE_RACE) || (gGameMode == GAME_MODE_MULTI_PLAYER))
        || (gStageFlags & STAGE_FLAG__DEMO_RUNNING)) {
        gDifficultyLevel = gLoadedSaveGame.difficultyLevel;
        gLoadedSaveGame.difficultyLevel = DIFFICULTY_NORMAL;
    }

    SetFaceButtonConfig(gLoadedSaveGame.unk1C);
    GameStageStart();
}

void DestroyStageTasks(void)
{
    TaskDestroy(gGameStageTask);
    gGameStageTask = NULL;

    DestroyPlayerTasks(&gPlayer);

#if (GAME == GAME_SA1)
    if (IS_SINGLE_PLAYER) {
        DestroyPlayerTasks(&gPartner);
    }
#endif

    DestroyCameraMovementTask();
}

void TaskDestructor_GameStage(struct Task *t)
{
#if (GAME == GAME_SA1)
    if ((gGameMode == GAME_MODE_TIME_ATTACK || (gGameMode == GAME_MODE_RACE) || (gGameMode == GAME_MODE_MULTI_PLAYER))
        || (gStageFlags & STAGE_FLAG__DEMO_RUNNING)) {
        gLoadedSaveGame.difficultyLevel = gDifficultyLevel;
    }
#endif
    gGameStageTask = NULL;
    m4aMPlayAllStop();
}

void StageInit_Zone1Act1(void)
{
    CreatePaletteLoaderTask(0x2000, 814, 0, 0);
    CreatePaletteLoaderTask(0x2000, 815, 0, 0);

    m4aSongNumStart(MUS_NEO_GREEN_HILL__ACT_1);
}

void StageInit_Zone1Act2(void)
{
    CreatePaletteLoaderTask(0x2000, 814, 0, 0);
    CreatePaletteLoaderTask(0x2000, 815, 0, 0);
    CreatePaletteLoaderTask(0x2000, 820, 1, 0);
    CreatePaletteLoaderTask(0x2000, 820, 0, 0);

    if (IS_SINGLE_PLAYER) {
        gCamera.maxX = gRefCollision->pxWidth - 768;
    }

    m4aSongNumStart(MUS_NEO_GREEN_HILL__ACT_2);
}

void StageInit_Zone2Act1(void)
{
    CreatePaletteLoaderTask(0x2000, 819, 0, 0);
    CreatePaletteLoaderTask(0x2000, 845, 0, 0);
    CreatePaletteLoaderTask(0x2000, 849, 0, 0);

    m4aSongNumStart(MUS_SECRET_BASE__ACT_1);
}

void StageInit_Zone2Act2(void)
{
    CreatePaletteLoaderTask(0x2000, 819, 0, 0);
    CreatePaletteLoaderTask(0x2000, 845, 0, 0);
    CreatePaletteLoaderTask(0x2000, 849, 0, 0);

    m4aSongNumStart(MUS_SECRET_BASE__ACT_2);
}

void StageInit_Zone4Act1(void)
{
    CreatePaletteLoaderTask(0x2000, 822, 0, 0);
    CreatePaletteLoaderTask(0x2000, 821, 0, 0);
    CreateStageWaterTask(INITIAL_WATERLEVEL_ZONE_4_ACT_1, 0x7F207F20, 0);

    m4aSongNumStart(MUS_ICE_MOUNTAIN__ACT_1);
}

void StageInit_Zone4Act2(void)
{
    CreatePaletteLoaderTask(0x2000, 822, 0, 0);
    CreatePaletteLoaderTask(0x2000, 821, 0, 0);
    CreateStageWaterTask(INITIAL_WATERLEVEL_ZONE_4_ACT_2, 0x7F207F20, 0);

    m4aSongNumStart(MUS_ICE_MOUNTAIN__ACT_2);
}

void StageInit_Zone5Act1(void)
{
    CreatePaletteLoaderTask(0x2000, 823, 0, 0);

    m4aSongNumStart(MUS_ANGEL_ISLAND__ACT_1);
}

void StageInit_Zone5Act2(void)
{
    CreatePaletteLoaderTask(0x2000, 823, 0, 0);

    m4aSongNumStart(MUS_ANGEL_ISLAND__ACT_2);
}

void StageInit_Zone6Act2(void)
{
    CreatePaletteLoaderTask(0x2000, 829, 0, 0);
    CreatePaletteLoaderTask(0x2000, 830, 0, 0);
    CreatePaletteLoaderTask(0x2000, 831, 0, 0);
    CreatePaletteLoaderTask(0x2000, 850, 0, 0);
    CreatePaletteLoaderTask(0x2000, 851, 0, 0);
    CreatePaletteLoaderTask(0x2000, 848, 0, 0);
    CreatePaletteLoaderTask(0x2000, 846, 0, 0);
    CreatePaletteLoaderTask(0x2000, 847, 0, 0);

    m4aSongNumStart(MUS_COSMIC_ANGEL);
}

void StageInit_Zone7Act1(void) { m4aSongNumStart(MUS_X_ZONE); }

void StageInit_Zone7Act2(void) { m4aSongNumStart(MUS_EXTRA_BOSS); }

void StageInit_ForestChaoGarden(void)
{
    CreatePaletteLoaderTask(0x2000, 814, 0, 0);
    CreatePaletteLoaderTask(0x2000, 815, 0, 0);
    CreatePaletteLoaderTask(0x2000, 820, 1, 0);
    CreatePaletteLoaderTask(0x2000, 820, 0, 0);

    m4aSongNumStart(MUS_NEO_GREEN_HILL__ACT_1);
}

void StageInit_FactoryChaoGarden(void)
{
    CreatePaletteLoaderTask(0x2000, 819, 0, 0);
    CreatePaletteLoaderTask(0x2000, 845, 0, 0);
    CreatePaletteLoaderTask(0x2000, 849, 0, 0);

    m4aSongNumStart(MUS_SECRET_BASE__ACT_1);
}

void StageInit_SpaceChaoGarden(void)
{
    CreatePaletteLoaderTask(0x2000, 829, 0, 0);
    CreatePaletteLoaderTask(0x2000, 830, 0, 0);
    CreatePaletteLoaderTask(0x2000, 831, 0, 0);
    CreatePaletteLoaderTask(0x2000, 850, 0, 0);
    CreatePaletteLoaderTask(0x2000, 851, 0, 0);
    CreatePaletteLoaderTask(0x2000, 848, 0, 0);
    CreatePaletteLoaderTask(0x2000, 846, 0, 0);
    CreatePaletteLoaderTask(0x2000, 847, 0, 0);

    m4aSongNumStart(MUS_COSMIC_ANGEL);
}

void StageInit_MPCollectRings(void)
{
    CreatePaletteLoaderTask(0x2000, 814, 0, 0);
    CreatePaletteLoaderTask(0x2000, 815, 0, 0);
    CreatePaletteLoaderTask(0x2000, 820, 1, 0);
    CreatePaletteLoaderTask(0x2000, 820, 0, 0);

    m4aSongNumStart(MUS_VS_RING_RUSH_MODE);
}
