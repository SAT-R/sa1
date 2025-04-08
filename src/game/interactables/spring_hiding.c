#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    SpriteBase base;
    Sprite s;
} SpringHiding;

void Task_Spring_Hiding(void);
void Task_8095158(void);
bool32 sub_8095224(SpringHiding *spring, Sprite *s, CamCoord worldX, CamCoord worldY);
void TaskDestructor_Spring_Hiding(struct Task *t);

void CreateEntity_Spring_Hiding(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Spring_Hiding, sizeof(SpringHiding), 0x2000, 0, TaskDestructor_Spring_Hiding);
    SpringHiding *spring = TASK_DATA(t);
    Sprite *s = &spring->s;

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;
    spring->base.me = me;
    spring->base.meX = me->x;
    spring->base.id = id;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_SPRING);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_SPRING;
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

void Task_Spring_Hiding(void)
{
    SpringHiding *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;
    CamCoord worldX, worldY;

    worldX = TO_WORLD_POS(spring->base.meX, spring->base.regionX);
    worldY = TO_WORLD_POS(me->y, spring->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (sub_8095224(spring, s, worldX, worldY)) {
        gCurTask->main = Task_8095158;
    }

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.meX);
        TaskDestroy(gCurTask);
        return;
    }
}

void Task_8095158(void)
{
    SpringHiding *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;
    CamCoord worldX, worldY;

    worldX = TO_WORLD_POS(spring->base.meX, spring->base.regionX);
    worldY = TO_WORLD_POS(me->y, spring->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    sub_8095224(spring, s, worldX, worldY);

    if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
        s->variant = 0;
        UpdateSpriteAnimation(s);
        gCurTask->main = Task_Spring_Hiding;
    }

    DisplaySprite(s);
}