#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/stage/player.h"
#include "game/sa1_sa2_shared/collision.h"

#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ s8 unk3C;
} WallBumper;

void Task_WallBumper(void)
{
    WallBumper *bumper = TASK_DATA(gCurTask);
    MapEntity *me = bumper->base.me;
    s16 worldX, worldY;
    s32 i;

    worldX = TO_WORLD_POS(bumper->base.meX, bumper->base.regionX);
    worldY = TO_WORLD_POS(me->y, bumper->base.regionY);

    i = 0;
    do {
        if (!(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD) && worldX <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX))
            && worldX + me->d.uData[2] * TILE_WIDTH >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX))
            && worldY <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY))
            && worldY + me->d.uData[3] * TILE_WIDTH >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY))) {
            m4aSongNumStart(SE_BUMPER);
            GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_100;
            GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IN_AIR;
            GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;

            if (bumper->unk3C & 0x1) {
                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = +Q(5);
            } else {
                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = -Q(5);
            }

            // NOTE/BUG(?): Positive and negative are not the same!
            if (bumper->unk3C < 3) {
                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = -Q(7);
            } else {
                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = +Q(6);
            }

            if ((GET_SP_PLAYER_MEMBER_V1(i, character) == CHARACTER_TAILS)
                || (GET_SP_PLAYER_MEMBER_V1(i, character) == CHARACTER_KNUCKLES)) {

                if (GET_SP_PLAYER_MEMBER_V1(i, SA2_LABEL(unk61))) {
                    Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                    GET_SP_PLAYER_MEMBER_V1(i, charState) = 5;
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_4;

                    GET_SP_PLAYER_V1(i)->spriteOffsetX = 6;
                    GET_SP_PLAYER_V1(i)->spriteOffsetY = 9;
                }
            }
        }
    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_DISPLAY_RANGE(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, bumper->base.meX);
        TaskDestroy(gCurTask);
        return;
    }
}

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