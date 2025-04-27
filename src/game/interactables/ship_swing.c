#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"
#include "game/stage/player.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite sprShip;
    /* 0x3C */ Sprite sprSegment;
    /* 0x6C */ Sprite sprHook;
    /* 0x9C */ s32 unk9C;
    /* 0xA0 */ s32 unkA0;
    /* 0xA4 */ u8 unkA4;
    /* 0xA5 */ u8 unkA5;
    /* 0xA6 */ u8 unkA6;
    /* 0xA7 */ u8 unkA7;
} ShipSwing;

void Task_ShipSwing(void);
void TaskDestructor_ShipSwing(struct Task *t);

void CreateEntity_ShipSwing(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ShipSwing, sizeof(ShipSwing), 0x7000, 0, TaskDestructor_ShipSwing);
    ShipSwing *swing = TASK_DATA(t);
    Sprite *sprShip = &swing->sprShip;
    Sprite *sprSegment = &swing->sprSegment;
    Sprite *sprHook = &swing->sprHook;
    CamCoord worldX, worldY;

    swing->base.regionX = regionX;
    swing->base.regionY = regionY;
    swing->base.me = me;
    swing->base.meX = me->x;
    swing->base.id = id;

    swing->unkA4 = 0;
    swing->unkA7 = 0;
    swing->unk9C = 0;
    swing->unkA0 = 0;
    swing->unkA6 = 0;
    swing->unkA5 = 0;

    sprShip->x = TO_WORLD_POS(me->x, regionX);
    sprShip->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED_SIMPLE(me);

    sprShip->graphics.dest = ALLOC_TILES(SA1_ANIM_SHIP_SWING);
    sprShip->oamFlags = SPRITE_OAM_ORDER(4);
    sprShip->graphics.size = 0;
    sprShip->graphics.anim = SA1_ANIM_SHIP_SWING;
    sprShip->variant = 0;
    sprShip->animCursor = 0;
    sprShip->qAnimDelay = Q(0);
    sprShip->prevVariant = -1;
    sprShip->animSpeed = SPRITE_ANIM_SPEED(1.0);
    sprShip->palId = 0;
    sprShip->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    sprShip->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    sprHook->graphics.dest = ALLOC_TILES(SA1_ANIM_SHIP_SWING_HOOK);
    sprHook->oamFlags = SPRITE_OAM_ORDER(18);
    sprHook->graphics.size = 0;
    sprHook->graphics.anim = SA1_ANIM_SHIP_SWING_HOOK;
    sprHook->variant = 0;
    sprHook->animCursor = 0;
    sprHook->qAnimDelay = Q(0);
    sprHook->prevVariant = -1;
    sprHook->animSpeed = SPRITE_ANIM_SPEED(1.0);
    sprHook->palId = 0;
    sprHook->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    sprHook->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    sprSegment->graphics.dest = ALLOC_TILES(SA1_ANIM_SHIP_SWING_SEGMENT);
    sprSegment->oamFlags = SPRITE_OAM_ORDER(18);
    sprSegment->graphics.size = 0;
    sprSegment->graphics.anim = SA1_ANIM_SHIP_SWING_SEGMENT;
    sprSegment->variant = 0;
    sprSegment->animCursor = 0;
    sprSegment->qAnimDelay = Q(0);
    sprSegment->prevVariant = -1;
    sprSegment->animSpeed = SPRITE_ANIM_SPEED(1.0);
    sprSegment->palId = 0;
    sprSegment->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    sprSegment->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    UpdateSpriteAnimation(sprShip);
    UpdateSpriteAnimation(sprHook);
    UpdateSpriteAnimation(sprSegment);
}
