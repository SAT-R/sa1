#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ s32 worldX;
    /* 0x08 */ s32 worldY;
    /* 0x0C */ s32 left;
    /* 0x10 */ s32 right;
    /* 0x14 */ s32 top;
    /* 0x18 */ s32 bottom;
    /* 0x18 */ s32 width;
    /* 0x18 */ s32 height;
    /* 0x24 */ Sprite s;
    /* 0x54 */ u8 unk54;
    /* 0x55 */ u8 meX;
} WaterBridge;

void Task_WaterBridge(void);
void TaskDestructor_WaterBridge(struct Task *t);

void CreateEntity_WaterBridge(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_WaterBridge, sizeof(WaterBridge), 0x2000, 0, TaskDestructor_WaterBridge);
    WaterBridge *bridge = TASK_DATA(t);
    Sprite *s;
    s32 worldX, worldY;
    s32 width, height;

    bridge->me = me;
    bridge->meX = me->x;
    bridge->unk54 = 0;

    worldX = TO_WORLD_POS_INV(me->x, regionX);
    worldY = TO_WORLD_POS_INV(me->y, regionY);

    width = me->d.uData[2] * TILE_WIDTH;
    height = me->d.uData[3] * TILE_WIDTH;

    bridge->worldX = worldX;
    bridge->worldY = worldY;
    bridge->left = worldX + me->d.sData[0] * TILE_WIDTH;
    bridge->top = worldY + me->d.sData[1] * TILE_WIDTH;
    bridge->right = bridge->left + width;
    bridge->bottom = bridge->top + height;
    bridge->width = width;
    bridge->height = height;

    s = &bridge->s;
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_SPLASH_ON_PLAYER);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_SPLASH_ON_PLAYER;
    s->variant = 0;
    s->prevVariant = -1;
    s->oamFlags = SPRITE_OAM_ORDER(15);
    s->qAnimDelay = Q(0);
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    SET_MAP_ENTITY_INITIALIZED_SIMPLE(me);
}