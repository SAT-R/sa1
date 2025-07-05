#include "global.h"
#include "core.h"
#include "trig.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/multiplayer/multiplayer_event_mgr.h"
#include "game/stage/terrain_collision.h"
#include "game/stage/player.h"
#include "game/water_effects.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"

#include "constants/animations.h"
#include "constants/char_states.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 unk3C[0x74];
    /* 0xB0 */ u8 unkB0;
    /* 0xB1 */ u8 unkB1;
    /* 0xB2 */ u8 unkB2[0x2];
    /* 0xB4 */ u8 unkB4[0x8];
} BoulderSpawner; /* 0xBC */

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 unk3C[0x80];
} Boulder; /* 0xBC */

typedef struct {
    /* 0x00 */ Sprite sprites[4];
    /* 0xC0 */ SpriteTransform transforms[4];
    /* 0xF0 */ s16 unkF0;
    /* 0xF2 */ s16 unkF2;
} BoulderDebris; /* 0xF4 */

void Task_BoulderSpawnerMain(void);
void TaskDestructor_Boulder(struct Task *t);
void TaskDestructor_BoulderDebris(struct Task *t);

void CreateEntity_BoulderSpawner(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BoulderSpawnerMain, sizeof(BoulderSpawner), 0x2000, 0, NULL);
    BoulderSpawner *spawner = TASK_DATA(t);

    spawner->base.regionX = regionX;
    spawner->base.regionY = regionY;
    spawner->base.me = me;
    spawner->base.meX = me->x;
    spawner->base.id = id;

    spawner->unkB1 = me->d.sData[0];

    SET_MAP_ENTITY_INITIALIZED(me);
}

void TaskDestructor_Boulder(struct Task *t)
{
    Boulder *boulder = TASK_DATA(t);
    VramFree(boulder->s.graphics.dest);
}

void TaskDestructor_BoulderDebris(struct Task *t)
{
    BoulderDebris *debris = TASK_DATA(t);
    VramFree(debris->sprites[0].graphics.dest);
    VramFree(debris->sprites[2].graphics.dest);
}
