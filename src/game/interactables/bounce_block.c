#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ u8 unk40;
} BounceBlock;

void Task_BounceBlock(void);
void TaskDestructor_BounceBlock(struct Task *t);

extern const AnimId sBounceBlockAnims[NUM_LEVEL_IDS];

void CreateEntity_BounceBlock(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BounceBlock, sizeof(BounceBlock), 0x2000, 0, TaskDestructor_BounceBlock);
    BounceBlock *block = TASK_DATA(t);
    Sprite *s = &block->s;

    block->base.regionX = regionX;
    block->base.regionY = regionY;
    block->base.me = me;
    block->base.meX = me->x;
    block->base.id = id;

    block->unk3C = 0;
    block->unk40 = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOUNCE_BLOCK_1);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = sBounceBlockAnims[gCurrentLevel];
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