#ifndef GUARD_ENEMY_BOSS_SUPER_EGG_ROBO_H
#define GUARD_ENEMY_BOSS_SUPER_EGG_ROBO_H

#include "sprite.h"
#include "game/entity.h"
#include "game/some_task_manager.h"

/* Used in SuperEggRobo.unk58 */
#define SER_FLAG__2      0x2
#define SER_FLAG__80     0x80
#define SER_FLAG__400000 0x400000

#define SER_NUM_PARTS 18

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ u8 fillerC[0x38];
    /* 0x44 */ s32 qUnk44;
    /* 0x48 */ s32 qUnk48;
    /* 0x4C */ s16 qUnk4C;
    /* 0x4E */ s16 qUnk4E;
    /* 0x50 */ s16 qUnk50;
    /* 0x52 */ s16 qUnk52;
    /* 0x54 */ s16 qUnk54;
    /* 0x54 */ s16 qUnk56;
    /* 0x58 */ u32 flags58;
    /* 0x58 */ s32 unk5C;
    /* 0x58 */ s32 unk60;
    /* 0x58 */ s32 qUnk64;
    /* 0x6F */ s8 unk68;
    /* 0x6F */ s8 unk69;
    /* 0x6F */ s8 unk6A;
    /* 0x6F */ s8 unk6B;
    /* 0x5C */ s16 unk6C;
    /* 0x6F */ s8 unk6E;
    /* 0x6F */ s8 unk6F;
} SuperEggRobo; /* 0x70 */

typedef struct ExtraBossTaskData {
    SuperEggRobo *boss;
    SomeTaskManager_7C *parts[SER_NUM_PARTS];
} ExtraBossTaskData;

extern ExtraBossTaskData gExtraBossTaskData;

#endif // GUARD_ENEMY_BOSS_SUPER_EGG_ROBO_H