#include "global.h"
#include "core.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/multiplayer/chao.h"
#include "game/multiplayer/multiplayer_event_mgr.h"

#if (GAME == GAME_SA1)
u8 sa2__gUnknown_030053E0 = 0;
#elif (GAME == GAME_SA2)
u8 gUnknown_030053E0 = 0;
#endif
u32 gCheckpointTime = 0;
u8 gMultiplayerCharRings[MULTI_SIO_PLAYERS_MAX] = {};
#if (GAME == GAME_SA2)
u8 gMultiplayerLanguage = 0;
#endif

u16 ALIGNED(4) gRingCount = 0;

#if (GAME == GAME_SA1)
struct Task *gChaoTasks[NUM_MP_CHAO] = { 0 };
#elif (GAME == GAME_SA2)
#ifndef NON_MATCHING
u8 ALIGNED(4) unused53F4[24] = {};
#endif
#endif

u8 ALIGNED(4) gActiveCollectRingEffectCount = 0;

#if (GAME == GAME_SA2)
u32 gMultiplayerIds[MULTI_SIO_PLAYERS_MAX] = {};
#endif
u8 ALIGNED(4) gRoomEventQueueSendPos = 0;
u16 ALIGNED(4) gStageFlags = 0;
#if (GAME == GAME_SA1)
// TODO: Check type!
u8 ALIGNED(4) gUnknown_03005008[MULTI_SIO_PLAYERS_MAX] = {};
#endif
u8 ALIGNED(4) gMPRingCollectWins[MULTI_SIO_PLAYERS_MAX] = {};

#if (GAME == GAME_SA2)
u8 gBossRingsRespawnCount = 0;
bool8 ALIGNED(4) gBossRingsShallRespawn = FALSE;
#endif

u32 gMultiplayerPseudoRandom = 0;
u8 ALIGNED(4) gRoomEventQueueWritePos = 0;
u8 ALIGNED(4) sa2__gUnknown_0300543C = 0;
#if (GAME == GAME_SA2)
u16 ALIGNED(4) gBossCameraClampYLower = 0;
#endif
s8 ALIGNED(4) gTrappedAnimalVariant = 0;
#if (GAME == GAME_SA1)
u8 ALIGNED(4) gUnknown_03005020 = 0;
#endif

u8 ALIGNED(4) gNumLives = 0;
u16 ALIGNED(4) gUnknown_03005028 = 0; // Special Stage-related
u16 ALIGNED(4) sa2__gUnknown_0300544C = 0;
s32 gLevelScore = 0;

#if (GAME == GAME_SA2)
u16 ALIGNED(16) gMultiplayerNames[MULTI_SIO_PLAYERS_MAX][MAX_PLAYER_NAME_LENGTH] = {};
#endif
u32 gCourseTime = 0;

#if (GAME == GAME_SA2)
CheeseTarget ALIGNED(8) gCheeseTarget = {};
#endif

u32 gMPStageStartFrameCount = 0;
MusicManagerState ALIGNED(8) gMusicManagerState = {};
#if (GAME == GAME_SA2)
u8 gUnknown_030054B0 = 0;
#endif
s8 ALIGNED(4) sa2__gUnknown_030054B4[MULTI_SIO_PLAYERS_MAX] = {};
u8 ALIGNED(4) sa2__gUnknown_030054B8 = 0;

#if (GAME == GAME_SA1)
u8 ALIGNED(4) gTailsEnabled = 0;
#endif

#if (GAME == GAME_SA2)
u16 ALIGNED(4) gBossCameraClampYUpper = 0;
HomingTarget gHomingTarget = {};
#endif

u8 ALIGNED(4) gDemoPlayCounter = 0;

#if (GAME == GAME_SA1)
u16 ALIGNED(8) gUnknown_03005058 = 0;
#endif

u8 ALIGNED(4) gGameMode = 0;

#if (GAME == GAME_SA2)
s32 ALIGNED(4) gStageGoalX = 0;
#endif

u8 ALIGNED(4) gMultiplayerMissingHeartbeats[MULTI_SIO_PLAYERS_MAX] = {};
u8 ALIGNED(4) gMultiplayerUnlockedLevels = 0;
struct Task *ALIGNED(4) gEntitiesManagerTask = NULL;

#if (GAME == GAME_SA2)
s32 ALIGNED(4) gLoadedSaveGame + 0x380 = 0;
#endif

u8 ALIGNED(4) gDestroySpotlights = 0;

#if (GAME == GAME_SA1)
u16 ALIGNED(4) gUnknown_03005070 = 0; // Used in Sp Stage
#endif

u8 ALIGNED(4) gRandomItemBox = 0;

#if (GAME == GAME_SA1)
u16 ALIGNED(4) gSpecialStageCollectedRings = 0;
u16 ALIGNED(4) gUnknown_0300507C = 0;
#endif

u8 ALIGNED(4) gDifficultyLevel = 0;
s8 ALIGNED(4) gSelectedCharacter = 0;

#if (GAME == GAME_SA1)
s8 ALIGNED(4) gNumSingleplayerCharacters = 0;
#endif

#if (GAME == GAME_SA2)
u8 ALIGNED(4) gSpecialRingCount = 0;
#endif

s8 ALIGNED(4) gUnknown_0300508C = 0;
#if (GAME == GAME_SA2)
u8 ALIGNED(4) gUnknown_030054F8 = 0;
s32 ALIGNED(4) gUnknown_030054FC = 0;
#endif

s8 ALIGNED(4) gMultiplayerCharacters[4] = {};
RoomEvent ALIGNED(16) gRoomEventQueue[16] = {};
u32 gStageTime = 0;

s8 ALIGNED(4) gMultiplayerCurrentLevel = 0;

#if (GAME == GAME_SA2)
u8 ALIGNED(4) gMultiplayerUnlockedCharacters = 0;
#endif

#ifndef NON_MATCHING
struct Task *ALIGNED(16) gMultiplayerPlayerTasks[MULTI_SIO_PLAYERS_MAX] = {};
#else
struct Task *ALIGNED(4) gMultiplayerPlayerTasks[MULTI_SIO_PLAYERS_MAX] = {};
#endif

#if (GAME == GAME_SA1)
u8 ALIGNED(4) gUnknown_03005140 = 0;
#endif

u8 ALIGNED(8) gBossIndex = 0;

s8 ALIGNED(4) gCurrentLevel = 0;
u8 ALIGNED(4) gMultiplayerConnections = 0;

#if (GAME == GAME_SA2)
bool8 ALIGNED(4) gUnknown_030055BC = 0;

#ifndef NON_MATCHING
u32 unused_030055C0[4] = {};
#endif

// Maybe?
u8 gUnknown_030055D0[MULTI_SIO_PLAYERS_MAX] = {};
u8 gNewInputCountersIndex = 0;
u8 ALIGNED(4) gUnknown_030055D8 = 0;

// Fills available space, but size not yet confirmed
struct InputCounters ALIGNED(8) gNewInputCounters[32] = {};

#endif