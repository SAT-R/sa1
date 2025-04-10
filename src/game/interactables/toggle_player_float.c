#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/parameters/characters.h"
#include "game/stage/player.h"
#include "game/stage/terrain_collision.h"

#include "constants/char_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 filler4[0x30];
    /* 0x34 */ u16 regionX;
    /* 0x36 */ u16 regionY;
    /* 0x3A */ u8 unk38[NUM_SINGLEPLAYER_CHARS_MAX];
    /* 0x3A */ u8 unk3A[NUM_SINGLEPLAYER_CHARS_MAX];
    /* 0x3C */ u8 meX;
    /* 0x3D */ u8 unk3D;
    /* 0x3E */ u8 unk3E;
} TogglePlayerFloat;

#ifndef NON_MATCHING
#define PLAYERFLOAT_DATA_SIZE 0x3F
#else
#define PLAYERFLOAT_DATA_SIZE sizeof(PlayerFloat)
#endif

void Task_PlayerFloatMain(void);

void Task_PlayerFloatMain(void)
{
    TogglePlayerFloat *toggle;
    MapEntity *me;
    u8 meX;
    u16 regionX;
    u16 regionY;
    u8 unk3D;
    CamCoord x, y;
    u8 unk3E;
    u8 ptrCharstatePlayer;
    u8 ptrCharstatePartner;
    s32 res;
    s32 i;

    toggle = TASK_DATA(gCurTask);
    me = toggle->me;
    meX = toggle->meX;
    regionX = TASK_GET_MEMBER(TogglePlayerFloat, gCurTask, u16, regionX);
    regionY = TASK_GET_MEMBER(TogglePlayerFloat, gCurTask, u16, regionY);
    unk3D = TASK_GET_MEMBER(TogglePlayerFloat, gCurTask, u8, unk3D);
    unk3E = TASK_GET_MEMBER(TogglePlayerFloat, gCurTask, u8, unk3E);

    // World x|y
    x = TO_WORLD_POS(meX, regionX);
    y = TO_WORLD_POS(me->y, regionY);

    // Sprite x|y
    x -= gCamera.x;
    y -= gCamera.y;

    if (IS_OUT_OF_CAM_RANGE(x, y)) {
        s32 i;

        i = 0;
        do {
            if (TASK_GET_MEMBER(TogglePlayerFloat, gCurTask, u8, unk3A[i]) == 1) {
#ifndef NON_MATCHING
                // A Div() call for halving the speed, really? D:
                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = Div(GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY), 2);
#else
                Player *p = GET_SP_PLAYER_V1(i);
                s32 qSpeed = p->qSpeedAirY;
                p->qSpeedAirY = qSpeed >> 1;
#endif
            }
        } while (++i < gNumSingleplayerCharacters);

        if (unk3D == 1) {
            m4aSongNumStop(SE_200);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, meX);
        TaskDestroy(gCurTask);
        return;
    }

    // World x|y
    x += gCamera.x;
    y += gCamera.y;

    i = 0;
    do {
        if (GET_SP_PLAYER_MEMBER_V1(i, charState) != CHARSTATE_37) {
            if (unk3D != 0) {
                m4aMPlayFadeOut(&gMPlayInfo_SE2, 4);
                unk3D = 0;
            }
        }

        if (GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD) {
            continue;
        }

        if ((x <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX))) && (x + me->d.uData[2] * TILE_WIDTH >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)))
            && (y <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)))
            && (y + me->d.uData[3] * TILE_WIDTH >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)))) {
            if (unk3D == 0) {
                if (GET_SP_PLAYER_MEMBER_V1(i, charState) != CHARSTATE_37) {
                    if (me->d.sData[0] == 0) {
                        unk3D = 1;
                        m4aSongNumStart(SE_200);
                    }
                }
            }

            if (!(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD)) {
                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) -= Q(PLAYER_FLOATING_UPDRAFT);
            }

            if (GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) < -Q(PLAYER_MAX_FLOATING_SPEED)) {
                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = -Q(PLAYER_MAX_FLOATING_SPEED);
            }
            GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IN_AIR;

            if (me->d.sData[0] == 0) {
                Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_37;
            } else {
                Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_17;
            }

            if (GET_SP_PLAYER_MEMBER_V1(i, character) == CHARACTER_AMY) {
                GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_2000000;
            }

            res = SA2_LABEL(sub_801F100)(I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)), I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)),
                                         GET_SP_PLAYER_MEMBER_V1(i, layer), 8, SA2_LABEL(sub_801EC3C));

            if (res > 4) {
                GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IN_AIR;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_100;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_4;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
            }
            TASK_SET_MEMBER(TogglePlayerFloat, gCurTask, u8, unk3A[i], TASK_GET_MEMBER(TogglePlayerFloat, gCurTask, u8, unk38[i]));
        } else {
            TASK_SET_MEMBER(TogglePlayerFloat, gCurTask, u8, unk38[i], 0);
            TASK_SET_MEMBER(TogglePlayerFloat, gCurTask, u8, unk3A[i], TASK_GET_MEMBER(TogglePlayerFloat, gCurTask, u8, unk38[i]));
        }

    } while (++i < gNumSingleplayerCharacters);

    TASK_SET_MEMBER(TogglePlayerFloat, gCurTask, u8, unk3D, unk3D);
    TASK_SET_MEMBER(TogglePlayerFloat, gCurTask, u8, unk3E, unk3E);
}

void CreateEntity_Toggle_PlayerFloat(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PlayerFloatMain, PLAYERFLOAT_DATA_SIZE, 0x2000, 0, NULL);

    TASK_SET_MEMBER(TogglePlayerFloat, t, u16, regionX, regionX);
    TASK_SET_MEMBER(TogglePlayerFloat, t, u16, regionY, regionY);
#ifndef NON_MATCHING
    TASK_SET_MEMBER(TogglePlayerFloat, t, u16, unk38, 0);
    TASK_SET_MEMBER(TogglePlayerFloat, t, u16, unk3A, 0);
#else
    TASK_SET_MEMBER(TogglePlayerFloat, t, u8, unk38[0], 0);
    TASK_SET_MEMBER(TogglePlayerFloat, t, u8, unk38[1], 0);
    TASK_SET_MEMBER(TogglePlayerFloat, t, u8, unk3A[0], 0);
    TASK_SET_MEMBER(TogglePlayerFloat, t, u8, unk3A[1], 0);
#endif
    TASK_SET_MEMBER(TogglePlayerFloat, t, MapEntity *, me, me);
    TASK_SET_MEMBER(TogglePlayerFloat, t, u8, unk3D, 0);
    TASK_SET_MEMBER(TogglePlayerFloat, t, u8, unk3E, 0);
    TASK_SET_MEMBER(TogglePlayerFloat, t, u8, meX, me->x);

    SET_MAP_ENTITY_INITIALIZED(me);
}