#include "global.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/stage/player.h"
#include "game/stage/stage.h"

#include "constants/characters.h"
#include "constants/zones.h"

struct Task *gGameStageTask = NULL;

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
