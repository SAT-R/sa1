#ifndef GUARD_ENEMY_BOSS_SUPER_EGG_ROBO_H
#define GUARD_ENEMY_BOSS_SUPER_EGG_ROBO_H

#include "sprite.h"
#include "game/entity.h"

/* Used in SuperEggRobo.unk58 */
#define SER_FLAG__80     0x80
#define SER_FLAG__400000 0x400000

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ u8 fillerC[0xC];
    /* 0x18 */ Sprite s;
    /* 0x48 */ u8 filler48[0x10];
    /* 0x58 */ u32 flags58;
    /* 0x5C */ u8 filler5C[0x14];
} SuperEggRobo; /* size: 0x70 */

extern SuperEggRobo *gExtraBossTaskData;

#endif // GUARD_ENEMY_BOSS_SUPER_EGG_ROBO_H