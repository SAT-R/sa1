#ifndef GUARD_SA1_CONFIG_H
#define GUARD_SA1_CONFIG_H

/* TODO: Move config.h into a different location? */

#define GAME_SA1   1
#define GAME_SA2   2
#define GAME_SA3   3
#define GAME_KATAM 4

#define ENGINE_1 1
#define ENGINE_2 2
#define ENGINE_3 3
#define ENGINE_4 4

// TODO: Define this in Makefile through a compiler macro?
#define GAME GAME_SA1

// TODO: Do SA1 and SA2 use the same engine ver?
// TODO: Do SA3 and KATAM use the same engine ver?
#define ENGINE GAME

// TODO: Put somewhere else?
#if PLATFORM_GBA
#define USE_NEW_DMA 0
#else
#define USE_NEW_DMA 1
#endif

#endif // GUARD_SA1_CONFIG_H