#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/entities_manager.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    EntityShared shared;
    s32 unk3C;
    s16 qUnk40;
    s16 unk42;
    s16 unk44;
    u8 unk46;
    u8 unk47;
    u16 unk48;
    u16 unk4A;
} KeroKero;

void Task_KeroKeroInit(void);

void CreateEntity_KeroKero(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_KeroKeroInit, sizeof(KeroKero), 0x2000, 0, TaskDestructor_EntityShared);
    KeroKero *kerokero = TASK_DATA(t);
    Sprite *s = &kerokero->shared.s;

    kerokero->shared.base.regionX = regionX;
    kerokero->shared.base.regionY = regionY;
    kerokero->shared.base.me = me;
    kerokero->shared.base.meX = me->x;
    kerokero->shared.base.id = id;

    kerokero->qUnk40 = -Q(1);
    kerokero->unk3C = 0;
    kerokero->unk42 = 0;
    kerokero->unk44 = 0;
    kerokero->unk46 = 0;
    kerokero->unk47 = 0;
    kerokero->unk48 = 0;
    kerokero->unk4A = me->d.uData[3];

    // NOTE: x|y set to world- not screen-pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_KEROKERO);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_KEROKERO;
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
