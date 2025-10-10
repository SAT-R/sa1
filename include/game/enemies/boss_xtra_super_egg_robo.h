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
    /* 0x0C */ Sprite unusedSprite;
    /* 0x3C */ Hitbox reserved;
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

#define CAPSULE_STATE__CAPTURED  +1
#define CAPSULE_STATE__MOVING    0
#define CAPSULE_STATE__DESTROYED -1

typedef s32 CapsuleState;

typedef struct {
    /* 0x00 */ s8 pid;
    /* 0x04 */ u32 unk4; // TODO: Check the type!
} player_0_Task; /* size: 0x8 */

typedef struct {
    /* 0x00 */ player_0_Task unk0;
    /* 0x08 */ s32 unk8; // counter of some kind
    /* 0x0C */ s32 qXs[16];
    /* 0x0C */ s32 qYs[16];
} MaybeSuperSonic; /* size: 0x8C */

s32 ExtraBoss__CapsuleGetCaptureState(SomeTaskManager_7C *mgr, Sprite *s, SuperEggRobo *extraBoss, Player *p);

#define EXTRA_BOSS__INITIAL_RING_COUNT 50

#endif // GUARD_ENEMY_BOSS_SUPER_EGG_ROBO_H