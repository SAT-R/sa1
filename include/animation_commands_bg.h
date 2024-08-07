#ifndef GUARD_ANIMATION_COMMANDS_EXTRA_H
#define GUARD_ANIMATION_COMMANDS_EXTRA_H

#include "gba/types.h"
#include "sprite.h"

/* Copy-pasted from SA2 on January 15th, 2024 */

void UpdateBgAnimationTiles(Background *);

s32 sub_8004274(void *dest, const void *tilesSrc, u16 param2, u16 param3, u8 bgCtrlIndex, const u8 *tileOffsets, u8 param6);

void numToTileIndices(u8 *digits, u16 number);

#endif // GUARD_ANIMATION_COMMANDS_EXTRA_H
