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

#if 01
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
    gTask_03006240 = 0;
#endif

    for (i = 0; i < 4; i++) {
        gMultiplayerCharacters[i] = 0;
        sa2__gUnknown_030054B4[i] = 0;
        gMultiplayerMissingHeartbeats[i] = 0;
    }

#if (GAME == GAME_SA2)
    SaveInit();
#endif

    if (SaveGameExists() != TRUE) {
        LoadSaveGame();
        hasProfile = TRUE;
    }

    // This flag is only set in EngineInit
    if (gFlags & FLAGS_200) {
        ShowSinglePakResults();
        return;
    }

    if (gFlags & FLAGS_NO_FLASH_MEMORY) {
        CreateSegaLogo();
#if (GAME == GAME_SA1)
        for (i = 0; i < 4; i++) {
            gLoadedSaveGame.unk8[i] = 0xF;
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
        CreateTitleScreen(1);
#elif (GAME == GAME_SA2)
        CreateTitleScreenAndSkipIntro();
#endif
        gFlags &= ~FLAGS_SKIP_INTRO;
        return;
    }

#if (GAME == GAME_SA1)
    CreateSegaLogo();
#elif (GAME == GAME_SA2)
    CreateTitleScreen();
#endif
}
#endif
