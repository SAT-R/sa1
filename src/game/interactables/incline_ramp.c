#include "global.h"
#include "core.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/player.h"
#include "game/stage/player.h"
#include "lib/m4a/m4a.h"

#include "constants/char_states.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    // SpriteBase-ish
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u16 regionX;
    /* 0x06 */ u16 regionY;
    /* 0x08 */ u8 meX;
    /* 0x09 */ u8 incline; // TODO: might just be the ID after all?
} InclineRamp;

#ifndef NON_MATCHING
#define INCLINE_RAMP_DATA_SIZE 0xA
#else
#define INCLINE_RAMP_DATA_SIZE sizeof(InclineRamp)
#endif

// (97.59%) https://decomp.me/scratch/SNEeF
NONMATCH("asm/non_matching/game/interactables/Task_InclineRamp.inc", void Task_InclineRamp(void))
{
    InclineRamp *ramp = TASK_DATA(gCurTask);
    MapEntity *me = TASK_GET_MEMBER(InclineRamp, gCurTask, MapEntity *, me);
    u8 meX = TASK_GET_MEMBER(InclineRamp, gCurTask, u8, meX);

    u16 regionX = TASK_GET_MEMBER(InclineRamp, gCurTask, u16, regionX);
    u16 regionY = TASK_GET_MEMBER(InclineRamp, gCurTask, u16, regionY);
    u8 incline = TASK_GET_MEMBER(InclineRamp, gCurTask, u8, incline);
    s16 worldX, worldY;
    s16 screenX, screenY;
    s32 i;

    worldX = TO_WORLD_POS(meX, regionX);
    worldY = TO_WORLD_POS(me->y, regionY);

    i = 0;
    do {
        // _08075678_loop
        if (!(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD)) {
            if (worldX > I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX))) {
                continue;
            }
            // _080756E6

            if (worldX + me->d.uData[2] * TILE_WIDTH < I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX))) {
                continue;
            }

            if (worldY > I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY))) {
                continue;
            }

            if (worldY + me->d.uData[3] * TILE_WIDTH < I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY))) {
                continue;
            }

            if (incline != 0) {
                if (GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) > Q(4)) {
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_STOOD_ON_OBJ;
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IN_AIR;
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_100;
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_4;

                    PLAYERFN_CHANGE_SHIFT_OFFSETS(GET_SP_PLAYER_V1(i), 6, 14);

                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = -Q(8);
                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) += +Q(4);

                    if (GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) > Q(17)) {
                        GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = Q(17);
                    }
                    // _08075880

                    Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                    GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_17;

                    m4aSongNumStart(SE_SPRING);
                    continue;
                }
            } else if (GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) < -Q(4)) {
                // _080758AC
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_STOOD_ON_OBJ;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IN_AIR;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_100;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_4;

                PLAYERFN_CHANGE_SHIFT_OFFSETS(GET_SP_PLAYER_V1(i), 6, 14);

                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = -Q(8);
                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) += -Q(4);

                if (GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) < -Q(17)) {
                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = -Q(17);
                }

                Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_17;

                m4aSongNumStart(SE_SPRING);
            }
        }
    } while (++i < gNumSingleplayerCharacters);

    screenX = worldX - gCamera.x;
    screenY = worldY - gCamera.y;
    if (IS_OUT_OF_CAM_RANGE(screenX, screenY)) {
        // _08075A54
        SET_MAP_ENTITY_NOT_INITIALIZED(me, meX);
        TaskDestroy(gCurTask);
        return;
    }
}
END_NONMATCH

void CreateEntity_InclineRamp(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_InclineRamp, INCLINE_RAMP_DATA_SIZE, 0x2000, 0, NULL);

    // *sigh*
    // Don't do this!
    TASK_SET_MEMBER(InclineRamp, t, u16, regionX, regionX);
    TASK_SET_MEMBER(InclineRamp, t, u16, regionY, regionY);
    TASK_SET_MEMBER(InclineRamp, t, MapEntity *, me, me);
    TASK_SET_MEMBER(InclineRamp, t, u8, incline, me->d.sData[0]);
    TASK_SET_MEMBER(InclineRamp, t, u8, meX, me->x);

    SET_MAP_ENTITY_INITIALIZED(me);
}
