#ifndef GUARD_INTRO_H
#define GUARD_INTRO_H

#include "global.h"
#include "sprite.h"

// TODO: not sure why these were shared from here, may
// not be
#if (GAME == GAME_SA1)
extern const AnimId gPressStartTiles[2];
#elif (GAME == GAME_SA2)
extern const TileInfo gPressStartTiles[];
#endif

#if (GAME == GAME_SA1)
void CreateTitleScreen(bool32 playMusic);
void CreateSegaLogo(void);
#elif (GAME == GAME_SA2)
void CreateTitleScreen(void);
void CreateTitleScreenAndSkipIntro(void);
// CreateTitleScreenAtPlayModeMenu
void CreateTitleScreenAtPlayModeMenu(void);
// CreateTitleScreenSkipToPlayModeMenu
void CreateTitleScreenAtSinglePlayerMenu(void);
#endif

#endif
