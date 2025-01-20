#ifndef GUARD_CHARACTER_SELECT_H
#define GUARD_CHARACTER_SELECT_H

#include "global.h"

#if (GAME == GAME_SA1)
void CreateCharacterSelectionScreen(u8 selectedCharacter);
#elif (GAME == GAME_SA2)
void CreateCharacterSelectionScreen(u8 selectedCharacter, bool8 allUnlocked);
#endif

#endif // GUARD_CHARACTER_SELECT_H
