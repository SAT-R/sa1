#include "global.h"
#include "core.h"
#include "flags.h"
#include "task.h"

#include "game/game.h"
#include "game/save.h"

#include "game/title_screen.h"
#include "game/options_screen.h"
#include "game/multiboot/connection.h"

#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/player.h"
//#include "game/sa1_sa2_shared/entities_manager.h"

#include "game/character_select.h"
#include "game/stage/tilemap_table.h"
#include "game/stage/stage.h"
//#include "game/stage/player.h"
#include "game/stage/camera.h"
#include "game/stage/underwater_effects.h"
#include "game/stage/dust_effect_braking.h"
#include "game/stage/rings_scatter.h"

#include "game/dummy_task.h"
#include "game/water_effects.h"

#if (GAME == GAME_SA1)
#include "game/gTask_03006240.h"
#endif

#if TAS_TESTING
#include "data/recordings.h"
#endif

#include "data/sprite_tables.h"

void CreateEmptySaveGame(void);

void GameInit(void)
{
    u32 i;
    bool32 hasProfile = FALSE;

    // NOTE: cast because of const
    gTilemapsRef = (Tilemap **)gTilemaps;
    gRefSpriteTables = &gSpriteTables;

#if (GAME != GAME_SA1)
    gUnknown_03004D54 = gBgOffsetsBuffer[0];
    gUnknown_030022C0 = gBgOffsetsBuffer[1];
#endif

    gStageFlags = sa2__gUnknown_0300544C = STAGE_FLAG__CLEAR;

#if (GAME == GAME_SA1)
    // "Cheat Code" Tails
    gTailsEnabled = FALSE;
#endif

    gRingsScatterTask = NULL;
    gDummyTask = NULL;
    gGameStageTask = NULL;
    gPlayer.spriteTask = NULL;
#if (GAME == GAME_SA1)
    // "Cheat Code" Tails
    gPartner.spriteTask = NULL;
#endif
    gCamera.movementTask = NULL;

    gDustEffectBrakingTask.t = NULL;
    gWater.t = NULL;

    sa2__gUnknown_0300543C = 0;
    gGameMode = GAME_MODE_SINGLE_PLAYER;
    gEntitiesManagerTask = NULL;
    gSmallAirBubbleCount = 0;
    gDemoPlayCounter = 0;
    gDestroySpotlights = FALSE;

    for (i = 0; i < 4; i++) {
        gMultiplayerPlayerTasks[i] = NULL;
    }

#if (GAME == GAME_SA1)
    gTask_03006240 = NULL;
#endif

    for (i = 0; i < 4; i++) {
        gMultiplayerCharacters[i] = 0;
        gMultiplayerRanks[i] = 0;
        gMultiplayerMissingHeartbeats[i] = 0;
    }

#if (GAME == GAME_SA2)
    SaveInit();
#endif

    if (SaveGameExists() != TRUE) {
        CreateEmptySaveGame();
        hasProfile = TRUE;
    }

    // This flag is only set in EngineInit
    if (gFlags & FLAGS_200) {
        ShowSinglePakResults();
        return;
    }

    if (gFlags & FLAGS_NO_FLASH_MEMORY) {
#if DEBUG
        CreateCharacterSelectionScreen(CHARACTER_TAILS);
#else
        CreateSegaLogo();
#endif
#if (GAME == GAME_SA1)
        for (i = 0; i < NUM_CHARACTERS; i++) {
            LOADED_SAVE->unlockedLevels[i] = 0xF;
        }
#elif (GAME == GAME_SA2)
        LoadCompletedSaveGame();
#endif
        return;
    }

#if (GAME == GAME_SA1)
    if (hasProfile) {
        CreateEditLanguageScreen(1);
        return;
    }
#elif (GAME == GAME_SA2)
    if (!hasProfile) {
        CreateNewProfileScreen();
    }
#endif

    // When a special button combination is pressed
    // skip the intro and go straight to the
    // title screen
    if (gFlags & FLAGS_SKIP_INTRO) {
#if (GAME == GAME_SA1)
#if DEBUG
        CreateCharacterSelectionScreen(CHARACTER_TAILS);
#else
        CreateTitleScreen(1);
#endif
#elif (GAME == GAME_SA2)
        CreateTitleScreenAndSkipIntro();
#endif
        gFlags &= ~FLAGS_SKIP_INTRO;
        return;
    }

#if (GAME == GAME_SA1)
#if DEBUG
    CreateCharacterSelectionScreen(CHARACTER_TAILS);
#else
    CreateSegaLogo();
#endif
#elif (GAME == GAME_SA2)
    CreateTitleScreen();
#endif
}

void CreateEmptySaveGame(void)
{
    u32 i;

    DmaFill32(3, 0, &gLoadedSaveGame, sizeof(gLoadedSaveGame));
    LOADED_SAVE->unk4 = 0;
    LOADED_SAVE->unk420 = 50000;
    LOADED_SAVE->difficultyLevel = DIFFICULTY_NORMAL;

    for (i = 0; i < ARRAY_COUNT(LOADED_SAVE->unlockedLevels); i++) {
        LOADED_SAVE->unlockedLevels[i] = 0;
    }

    for (i = 0; i < 10; i++) {
        u32 charIndex;

        LOADED_SAVE->multiplayerScores[i].data.split.wins |= 0xFF;
        for (charIndex = 0; charIndex < (s32)ARRAY_COUNT(LOADED_SAVE->multiplayerScores[i].data.split.playerName); charIndex++) {
            LOADED_SAVE->multiplayerScores[i].data.split.playerName[charIndex] = ' ';
        }
    }

    DmaFill32(3, MAX_COURSE_TIME, &LOADED_SAVE->timeRecords, sizeof(LOADED_SAVE->timeRecords));

    LOADED_SAVE->uiLanguage = UILANG_DEFAULT;
    LOADED_SAVE->language = LANG_JAPANESE;
    LOADED_SAVE->timeLimitDisabled = 0;
    LOADED_SAVE->btnConfig = BTNCONFIG_NORMAL;
    LOADED_SAVE->score = 0;
}
