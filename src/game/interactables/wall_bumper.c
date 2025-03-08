#include "global.h"
#include "core.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 unk3C;
} WallBumper;

void Task_WallBumper(void);

void CreateEntity_WallBumper(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_WallBumper, sizeof(WallBumper), 0x2000, 0, NULL);
    WallBumper *bumper = TASK_DATA(t);

    bumper->base.regionX = regionX;
    bumper->base.regionY = regionY;
    bumper->base.me = me;
    bumper->base.meX = me->x;
    bumper->base.id = id;

    bumper->unk3C = me->d.sData[0];

    SET_MAP_ENTITY_INITIALIZED(me);
}