#include "global.h"
#include "core.h"
#include "game/entity.h"

typedef struct {
    SpriteBase base;
    u8 fillerC[0x30];
    s8 visibility; // 0 = Visible, 1 = Invisible
} TogglePlayerVisibility;

void Task_Toggle_PlayerVisibility(void);

void Task_Toggle_PlayerVisibility(void)
{
    TogglePlayerVisibility *toggle = TASK_DATA(gCurTask);
    MapEntity *me = toggle->base.me;
    Player *player, *partner;
    s16 worldX, worldY;
    s16 screenX, screenY;
    s32 i;

    worldX = TO_WORLD_POS(toggle->base.meX, toggle->base.regionX);
    worldY = TO_WORLD_POS(me->y, toggle->base.regionY);

    screenX = worldX - gCamera.x;
    screenY = worldY - gCamera.y;

    i = 0;
    player = &gPlayer;
    partner = &gPartner;
    do {
        if (!(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD)) {
            if ((worldX <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)))
                && ((worldX + (me->d.uData[2] * TILE_WIDTH)) >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)))
                && (worldY <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)))
                && ((worldY + (me->d.uData[3] * TILE_WIDTH)) >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)))) {
                if (toggle->visibility) {
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_100000;
                } else {
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_100000;
                }
            }
        } else {
            GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_100000;
        }
    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_CAM_RANGE(screenX, screenY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, toggle->base.meX);
        TaskDestroy(gCurTask);
        return;
    }
}

void CreateEntity_Toggle_PlayerVisibility(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Toggle_PlayerVisibility, sizeof(TogglePlayerVisibility), 0x2000 | me->d.uData[3], 0, NULL);
    TogglePlayerVisibility *toggle = TASK_DATA(t);

    toggle->base.regionX = regionX;
    toggle->base.regionY = regionY;
    toggle->base.me = me;
    toggle->base.meX = me->x;
    toggle->base.id = id;

    toggle->visibility = me->d.uData[0];

    SET_MAP_ENTITY_INITIALIZED(me);
}
