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
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s16 qUnk44;
    /* 0x46 */ u16 unk46;
    /* 0x48 */ u16 unk48;
} Hanabii;

void Task_HanabiiInit(void);

void CreateEntity_Hanabii(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_HanabiiInit, sizeof(Hanabii), 0x2000, 0, TaskDestructor_EntityShared);
    Hanabii *hanabii = TASK_DATA(t);
    Sprite *s = &hanabii->shared.s;

    hanabii->shared.base.regionX = regionX;
    hanabii->shared.base.regionY = regionY;
    hanabii->shared.base.me = me;
    hanabii->shared.base.meX = me->x;
    hanabii->shared.base.id = id;

    hanabii->qUnk44 = -Q(0.625);
    hanabii->unk3C = Q(0);
    hanabii->unk40 = 0;
    hanabii->unk46 = 0;
    hanabii->unk48 = 0;

    // NOTE: x|y set to world- not screen-pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_HANABII);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_HANABII;
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
