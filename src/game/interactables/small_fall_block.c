#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

/* Blocks that fall down after stepping on them, in X-Zone */

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u16 unk3C;
    /* 0x40 */ s32 unk40;
    /* 0x40 */ s32 unk44;
    /* 0x40 */ u16 unk48;
    /* 0x40 */ u16 unk4A;
    /* 0x44 */ s16 unk4C;
} SmallFallBlock;

void Task_SmallFallBlockMain(void);
void Task_SmallFallBlock1(void);
void Task_SmallFallBlock2(void);
void TaskDestructor_SmallFallBlock(struct Task *t);

void CreateEntity_SmallFallBlock(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    SmallFallBlock *block;
    Sprite *s;

    t = TaskCreate(Task_SmallFallBlockMain, sizeof(SmallFallBlock), 0x2000, 0, TaskDestructor_SmallFallBlock);

    block = TASK_DATA(t);
    s = &block->s;

    block->base.regionX = regionX;
    block->base.regionY = regionY;
    block->base.me = me;
    block->base.meX = me->x;

    block->unk40 = 0;
    block->unk44 = 0;
    block->unk4C = 0;
    block->unk48 = 0;
    block->unk4A = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_FALLING_BRICK_XZONE);
    s->variant = 0;
    s->graphics.anim = SA1_ANIM_FALLING_BRICK_XZONE;

    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;

    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    UpdateSpriteAnimation(s);
}

#if 0
void Task_SmallFallBlockMain(void)
{
    SmallFallBlock *block = TASK_DATA(gCurTask);
    Sprite *s = &block->s;
    MapEntity *me = block->base.me;
    CamCoord worldX, worldY;
    u32 res;

    worldX = TO_WORLD_POS(block->base.meX, block->base.regionX);
    worldY = TO_WORLD_POS(me->y, block->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    res = sub_800B2BC(s, worldX, worldY, &gPlayer);

    if(gNumSingleplayerCharacters == NUM_SINGLEPLAYER_CHARS_MAX)
    {
        res |= sub_800B2BC(s, worldX, worldY, &gPartner);
    }
    // _08093A30

    if((res & COLL_FLAG_8) && (gPlayer.stoodObj == s))
    {
        gCurTask->main = Task_SmallFallBlock1;
        block->unk3C = 30;
    }

    if(IS_MULTI_PLAYER) {
        block->unk3C = 0;
        gCurTask->main = Task_SmallFallBlock2;
    }
}
#endif