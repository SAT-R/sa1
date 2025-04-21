#include "global.h"
#include "core.h"
#include "game/entity.h"

typedef struct {
    MapEntity *me;
    s32 unk4;
    s32 unk8;
    s32 left;
    s32 right;
    s32 top;
    s32 bottom;
    u8 unk1C[0x4];
    u8 unk20;
    u8 unk21;
} HalfPipe;

void Task_HalfPipeStart(void);
void Task_HalfPipeEnd(void);

void CreateEntity_HalfPipeStart(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_HalfPipeStart, sizeof(HalfPipe), 0x2000, 0, NULL);
    HalfPipe *halfpipe = TASK_DATA(t);
    s32 worldX, worldY;

    halfpipe->me = me;
    halfpipe->unk21 = me->x;
    halfpipe->unk20 = 0;

    worldX = TO_WORLD_POS_INV(me->x, regionX);
    worldY = TO_WORLD_POS_INV(me->y, regionY);

    halfpipe->unk4 = worldX;
    halfpipe->unk8 = worldY;

    halfpipe->left = worldX + me->d.sData[0] * TILE_WIDTH;
    halfpipe->top = worldY + me->d.sData[1] * TILE_WIDTH;
    halfpipe->right = halfpipe->left + me->d.uData[2] * TILE_WIDTH;
    halfpipe->bottom = halfpipe->top + me->d.uData[3] * TILE_WIDTH;

    SET_MAP_ENTITY_INITIALIZED_SIMPLE(me);
}

void CreateEntity_HalfPipeEnd(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_HalfPipeEnd, sizeof(HalfPipe), 0x2000, 0, NULL);
    HalfPipe *halfpipe = TASK_DATA(t);
    s32 worldX, worldY;

    halfpipe->me = me;
    halfpipe->unk21 = me->x;
    halfpipe->unk20 = 0;

    worldX = TO_WORLD_POS_INV(me->x, regionX);
    worldY = TO_WORLD_POS_INV(me->y, regionY);

    halfpipe->unk4 = worldX;
    halfpipe->unk8 = worldY;

    halfpipe->left = worldX + me->d.sData[0] * TILE_WIDTH;
    halfpipe->top = worldY + me->d.sData[1] * TILE_WIDTH;
    halfpipe->right = halfpipe->left + me->d.uData[2] * TILE_WIDTH;
    halfpipe->bottom = halfpipe->top + me->d.uData[3] * TILE_WIDTH;

    SET_MAP_ENTITY_INITIALIZED_SIMPLE(me);
}
