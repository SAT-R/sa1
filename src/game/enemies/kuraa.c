#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/entities_manager.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/zones.h"

typedef struct {
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ EntityShared shared;
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ s16 unk40;
    /* 0x42 */ s16 unk42;
    /* 0x44 */ s16 unk44;
    /* 0x46 */ s16 unk46;
} Kuraa;

void Task_KuraaInit(void);

void CreateEntity_Kuraa(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_KuraaInit, sizeof(Kuraa), 0x2000, 0, TaskDestructor_EntityShared);
    Kuraa *kuraa = TASK_DATA(t);
    Sprite *s = &kuraa->shared.s;

    kuraa->shared.base.regionX = regionX;
    kuraa->shared.base.regionY = regionY;
    kuraa->shared.base.me = me;
    kuraa->shared.base.meX = me->x;
    kuraa->shared.base.id = id;

    kuraa->unk40 = -64;
    kuraa->unk3C = 0;
    kuraa->unk44 = 0;
    kuraa->unk42 = 0;
    kuraa->unk46 = 0;

    // NOTE: x|y set to world- not screen-pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_KURAA);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_KURAA;
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