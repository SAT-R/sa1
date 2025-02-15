#include "global.h"
#include "core.h"
#include "sprite.h"
#include "game/stage/camera.h"
#include "game/entity.h"

#include "constants/interactables.h"

typedef struct {
    /* 0x00 */ u8 x;
    /* 0x01 */ u8 y;
    /* 0x02 */ u8 index;

    /* 0x03 */ s8 unused3;
    /* 0x04 */ s8 unused4;
    /* 0x05 */ u8 width;
    /* 0x06 */ u8 height;
} MapEntity_Toggle_PlayerLayer;

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u16 regionX;
    /* 0x06 */ u16 regionY;
    /* 0x08 */ u8 meX;
} TogglePlayerLayer;

#ifndef NON_MATCHING
#define TOGGLE_PLAYER_LAYER_SIZE 9
#else
#define TOGGLE_PLAYER_LAYER_SIZE sizeof(TogglePlayerLayer)
#endif

void Task_Toggle_PlayerLayer(void);

void Task_Toggle_PlayerLayer(void)
{
    TogglePlayerLayer *toggle = TASK_DATA(gCurTask);
    MapEntity_Toggle_PlayerLayer *me = (MapEntity_Toggle_PlayerLayer *)toggle->me;
    u8 meX = TASK_GET_MEMBER(TogglePlayerLayer, gCurTask, u16, meX);
    u16 regionX = TASK_GET_MEMBER(TogglePlayerLayer, gCurTask, u16, regionX);
    u16 regionY = TASK_GET_MEMBER(TogglePlayerLayer, gCurTask, u16, regionY);
    s32 i;

    s16 screenX = TO_WORLD_POS(meX, regionX);
    s16 screenY = TO_WORLD_POS(me->y, regionY);

    i = 0;
    do {
        if ((screenX <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)))
            && (screenX + (me->width * TILE_WIDTH) >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)))
            && (screenY <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)))
            && (screenY + (me->height * TILE_WIDTH) >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)))) {
            s32 frontIAIndex = IA__TOGGLE_PLAYER_LAYER__FRONT;

            if (gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
                frontIAIndex = IA__MP_TOGGLE_PLAYER_LAYER__FRONT;
            }

            // The interactable-index determines, whether the layer we switch to
            // should be the foreground- or the background layer.
            if (frontIAIndex == me->index) {
                if (i != 0) {
                    ClearBit(gPartner.layer, 0);
                } else {
                    ClearBit(gPlayer.layer, 0);
                }
            } else {
                if (i != 0) {
                    SetBit(gPartner.layer, 0);
                } else {
                    SetBit(gPlayer.layer, 0);
                }
            }
        }
    } while (++i < gNumSingleplayerCharacters);

    screenX -= gCamera.x;
    screenY -= gCamera.y;

    if (IS_OUT_OF_CAM_RANGE(screenX, screenY)) {
        me->x = meX;
        TaskDestroy(gCurTask);
    }
}

void CreateEntity_Toggle_PlayerLayer(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Toggle_PlayerLayer, TOGGLE_PLAYER_LAYER_SIZE, 0x2000, 0, NULL);
#ifndef NON_MATCHING
    TASK_SET_MEMBER(TogglePlayerLayer, t, u16, regionX, regionX);
    TASK_SET_MEMBER(TogglePlayerLayer, t, u16, regionY, regionY);
    TASK_SET_MEMBER(TogglePlayerLayer, t, MapEntity *, me, me);
    TASK_SET_MEMBER(TogglePlayerLayer, t, u8, meX, me->x);
#else
    TogglePlayerLayer *toggle = TASK_DATA(t);

    toggle->regionX = regionX;
    toggle->regionY = regionY;
    toggle->me = me;
    toggle->meX = me->x;
#endif
    SET_MAP_ENTITY_INITIALIZED(me);
}