#include "global.h"
#include "core.h"
#include "game/entity.h"

#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ u8 fillerC[0x30];
    /* 0x3C */ u8 type;
} ConveyorBeltMvt;

void Task_ConveyorBeltMvt(void);
void Task_SlowingSnow(void);

void Task_SlowingSnow(void)
{
    ConveyorBeltMvt *mvt = TASK_DATA(gCurTask);
    MapEntity *me = mvt->base.me;
    CamCoord x, y;
    s32 i;

    // x/y: World-Pos
    x = TO_WORLD_POS(mvt->base.meX, mvt->base.regionX);
    y = TO_WORLD_POS(me->y, mvt->base.regionY);

    i = 0;
    do {
        if (!(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD)) {
            if ((x <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX))) && (x + me->d.uData[2] * TILE_WIDTH >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)))
                && (y <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)))
                && (y + me->d.uData[3] * TILE_WIDTH >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)))
                && !(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_IN_AIR)) {
                s32 qSpeed = Div(GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) * 95, 100);
                GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) = qSpeed;
            }
        }
    } while (++i < gNumSingleplayerCharacters);

    // x/y: Screen-Pos
    x -= gCamera.x;
    y -= gCamera.y;

    if (IS_OUT_OF_CAM_RANGE(x, y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, mvt->base.meX);

        TaskDestroy(gCurTask);
        return;
    }
}

void CreateEntity_ConveyorBelt(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    ConveyorBeltMvt *mvt;
    u8 zone;

    zone = LEVEL_TO_ZONE(gCurrentLevel);
    if (zone == ZONE_4) {
        t = TaskCreate(Task_SlowingSnow, sizeof(ConveyorBeltMvt), 0x2000, 0, NULL);
    } else {
        t = TaskCreate(Task_ConveyorBeltMvt, sizeof(ConveyorBeltMvt), 0x2000, 0, NULL);
    }

    mvt = TASK_DATA(t);

    mvt->base.regionX = regionX;
    mvt->base.regionY = regionY;
    mvt->base.me = me;
    mvt->base.meX = me->x;
    mvt->base.id = id;
    mvt->type = me->d.sData[0];

    SET_MAP_ENTITY_INITIALIZED(me);
}