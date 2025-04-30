#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/entities_manager.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ EntityShared shared;
    /* 0x3C */ s16 qUnk3C;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s16 unk44;
    /* 0x46 */ s16 qUnk46;
    /* 0x48 */ u8 unk48;
    /* 0x49 */ u8 unk49;
} Rhinotank;

void Task_RhinotankInit(void);

void CreateEntity_Rhinotank(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_RhinotankInit, sizeof(Rhinotank), 0x2000, 0, TaskDestructor_EntityShared);
    Rhinotank *rhinotank = TASK_DATA(t);
    Sprite *s = &rhinotank->shared.s;

    rhinotank->shared.base.regionX = regionX;
    rhinotank->shared.base.regionY = regionY;
    rhinotank->shared.base.me = me;
    rhinotank->shared.base.meX = me->x;
    rhinotank->shared.base.id = id;

    rhinotank->qUnk46 = -Q(0.625);
    rhinotank->unk40 = 0;
    rhinotank->qUnk3C = Q(0);
    rhinotank->unk44 = 0;
    rhinotank->unk48 = 0;
    rhinotank->unk49 = 0;

    // NOTE: x|y set to world- not screen-pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_RHINOTANK);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_RHINOTANK;
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