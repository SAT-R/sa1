#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/save.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct {
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ EntityShared shared;
    /* 0x3C */ s32 qUnk3C;
    /* 0x40 */ s16 unk40;
    /* 0x44 */ u16 unk42;
    /* 0x44 */ u16 unk44;
    /* 0x46 */ s16 unk46;
} Mirror; /* 0x48 */

void Task_Mirror(void);

#define FIREBALL_SPAWN_RATE ZONE_TIME_TO_INT(0, 4)

void CreateEntity_Mirror(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    if ((LEVEL_TO_ZONE(gCurrentLevel) != ZONE_6) || (LOADED_SAVE->difficultyLevel == DIFFICULTY_NORMAL)) {
        struct Task *t = TaskCreate(Task_Mirror, sizeof(Mirror), 0x2000, 0, TaskDestructor_EntityShared);
        Mirror *mirror = TASK_DATA(t);
        Sprite *s = &mirror->shared.s;

        mirror->shared.base.regionX = regionX;
        mirror->shared.base.regionY = regionY;

        mirror->shared.base.me = me;
        mirror->shared.base.meX = me->x;
        mirror->shared.base.id = id;

        mirror->unk40 = -160;
        mirror->qUnk3C = Q(0);
        mirror->unk44 = 0;
        mirror->unk42 = 0;
        mirror->unk46 = 0;

        s->x = TO_WORLD_POS(me->x, regionX);
        s->y = TO_WORLD_POS(me->y, regionY);

        SET_MAP_ENTITY_INITIALIZED(me);

        s->graphics.dest = ALLOC_TILES(SA1_ANIM_MIRROR);
        s->oamFlags = SPRITE_OAM_ORDER(18);
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_MIRROR;
        s->variant = 0;
        s->animCursor = 0;
        s->qAnimDelay = Q(0);
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

        UpdateSpriteAnimation(s);
    }
}
