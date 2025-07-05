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
    /* 0x3C */ Hitbox reserved;
    /* 0x44 */ Sprite s2;
    /* 0x74 */ u8 unk74;
    /* 0x78 */ s32 qUnk78;
    /* 0x7C */ s32 qUnk7C;
    /* 0x80 */ s32 qUnk80;
    /* 0x84 */ s32 qUnk84;
} UnderwaterLavaPlatform; /* 0x88 */

void Task_UnderwaterLavaPlatform(void);
void TaskDestructor_UnderwaterLavaPlatform(struct Task *t);

void CreateEntity_UnderwaterLavaPlatform(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t
        = TaskCreate(Task_UnderwaterLavaPlatform, sizeof(UnderwaterLavaPlatform), 0x2000, 0, TaskDestructor_UnderwaterLavaPlatform);
    UnderwaterLavaPlatform *platform = TASK_DATA(t);
    Sprite *s = &platform->s;
    Sprite *s2 = &platform->s2;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.meX = me->x;
    platform->base.id = id;

    platform->qUnk78 = 0;
    platform->qUnk7C = 0;
    platform->unk74 = 0;
    platform->qUnk80 = 0;
    platform->qUnk84 = 0;

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_HORZ_4_PURPLE_LAVA);
    s->graphics.anim = SA1_ANIM_PLATFORM_HORZ_4_PURPLE_LAVA;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    s2->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_HORZ_4_PURPLE);
    s2->graphics.anim = SA1_ANIM_PLATFORM_HORZ_4_PURPLE;
    s2->variant = 0;
    s2->oamFlags = SPRITE_OAM_ORDER(17);
    s2->graphics.size = 0;
    s2->animCursor = 0;
    s2->qAnimDelay = Q(0);
    s2->prevVariant = -1;
    s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s2->palId = 0;
    s2->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s2->frameFlags = SPRITE_FLAG(PRIORITY, 2);
}