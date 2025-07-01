#include "global.h"
#include "core.h"
#include "trig.h"
#include "game/entity.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"

#include "constants/animations.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u16 unk3C;
    /* 0x3E */ u16 unk3E;
    /* 0x40 */ u16 unk40;
    /* 0x40 */ s16 unk42;
} AirBubbles;

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ s16 unk3C;
    /* 0x3E */ s16 unk3E;
    /* 0x40 */ s16 unk40;
    /* 0x40 */ s16 unk42;
} AirBubbleBig;

const u16 gUnknown_086CEE60[] = {
    0x012D, 0x00F1, 0x0079, 0x0105, 0x012D, 0x0079, 0x00C9, 0x0079,
};

void Task_AirBubbles(void);
void CreateAirContainingBubble(CamCoord worldX, CamCoord worldY, u8 param2);
void Task_CreateAirContainingBubble(void);
void sub_80914F8(CamCoord worldX, CamCoord worldY, u8 param2);
void TaskDestructor_AirBubbles(struct Task *t);
void TaskDestructor_AirBubbleBig(struct Task *t);

void CreateEntity_AirBubbles(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_AirBubbles, sizeof(AirBubbles), 0x2000, 0, TaskDestructor_AirBubbles);
    AirBubbles *bubbles = TASK_DATA(t);
    Sprite *s = &bubbles->s;

    bubbles->base.regionX = regionX;
    bubbles->base.regionY = regionY;
    bubbles->base.me = me;
    bubbles->base.meX = me->x;
    bubbles->base.id = id;

    bubbles->unk3E = 120;
    bubbles->unk40 = 0;
    bubbles->unk3C = 60;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_MINIBUBBLES);
    s->graphics.anim = SA1_ANIM_MINIBUBBLES;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = FALSE;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = 0x2000;
}

void Task_AirBubbles(void)
{
    AirBubbles *bubbles = TASK_DATA(gCurTask);
    Sprite *s = &bubbles->s;
    MapEntity *me = bubbles->base.me;
    CamCoord worldX, worldY;

    worldX = TO_WORLD_POS(bubbles->base.meX, bubbles->base.regionX);
    worldY = TO_WORLD_POS(me->y, bubbles->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (--bubbles->unk3E == 0) {
        CreateAirContainingBubble(worldX, worldY - 4, 4);
        bubbles->unk3E = gUnknown_086CEE60[bubbles->unk40];
        bubbles->unk40 = ((bubbles->unk40 + 1) % ARRAY_COUNT(gUnknown_086CEE60));
    }

    if (--bubbles->unk3C == 0) {
        sub_80914F8(worldX, (worldY - 4), (bubbles->unk3E >> 3) + gStageTime);
        bubbles->unk3C = Div(gUnknown_086CEE60[gStageTime % ARRAY_COUNT(gUnknown_086CEE60)], 2);
    }

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, bubbles->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}