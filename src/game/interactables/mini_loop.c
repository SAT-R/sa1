#include "global.h"
#include "core.h"
#include "game/entity.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ s32 worldX;
    /* 0x08 */ s32 worldY;
    /* 0x08 */ s32 left;
    /* 0x08 */ s32 right;
    /* 0x08 */ s32 top;
    /* 0x08 */ s32 bottom;
    /* 0x1C */ u8 unk1C;
    /* 0x1D */ u8 meX;
} MiniLoop;

void Task_MiniLoop_Entrance(void);

void CreateEntity_MiniLoop_Entrance(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_MiniLoop_Entrance, sizeof(MiniLoop), 0x2000, 0, NULL);
    MiniLoop *loop = TASK_DATA(t);
    s32 worldX, worldY;

    loop->me = me;
    loop->meX = me->x;
    loop->unk1C = 0;

    worldX = TO_WORLD_POS_INV(me->x, regionX);
    worldY = TO_WORLD_POS_INV(me->y, regionY);
    loop->worldX = worldX;
    loop->worldY = worldY;

    loop->left = worldX + (me->d.sData[0] * TILE_WIDTH);
    loop->top = worldY + (me->d.sData[1] * TILE_WIDTH);
    loop->right = loop->left + (me->d.uData[2] * TILE_WIDTH);
    loop->bottom = loop->top + (me->d.uData[3] * TILE_WIDTH);

    SET_MAP_ENTITY_INITIALIZED_SIMPLE(me);
}