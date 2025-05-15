#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/stage/player.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/player_controls.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ u8 fillerC[0x30];
    /* 0x3C */ u8 isPlayerOnBits;
    /* 0x40 */ s32 qPlayerWorldX[NUM_SINGLEPLAYER_CHARS_MAX];
} HangBar;

void Task_HangBar(void);

extern s8 gUnknown_086CEDBC[MULTI_SIO_PLAYERS_MAX];

void Task_HangBar(void)
{
    HangBar *bar;
    CamCoord barX, barY;
    MapEntity *me;
    s32 i;

    bar = TASK_DATA(gCurTask);
    me = bar->base.me;

    // World Pos
    barX = TO_WORLD_POS(bar->base.meX, bar->base.regionX);
    barY = TO_WORLD_POS(me->y, bar->base.regionY);

    i = 0;
    do {
        if (GetBit(bar->isPlayerOnBits, i)) {
            if ((GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD)) {
                ClearBit(bar->isPlayerOnBits, i);
                continue;
            }
            // _0808C0D8

            if (GET_SP_PLAYER_MEMBER_V1(i, heldInput) & DPAD_RIGHT) {
                GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_36;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FACING_LEFT;
                GET_SP_PLAYER_MEMBER_V1(i, qWorldX) = bar->qPlayerWorldX[i] + Q(2);
            } else if (GET_SP_PLAYER_MEMBER_V1(i, heldInput) & DPAD_LEFT) {
                // _0808C1AC
                GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_36;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_FACING_LEFT;
                GET_SP_PLAYER_MEMBER_V1(i, qWorldX) = bar->qPlayerWorldX[i] - Q(2);
            } else {
                GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_35;
            }
            // _0808C1C6

            GET_SP_PLAYER_MEMBER_V1(i, qWorldY) = Q(barY + gUnknown_086CEDBC[GET_SP_PLAYER_MEMBER_V1(i, character)]);
            // _0808C206

            bar->qPlayerWorldX[i] = GET_SP_PLAYER_MEMBER_V1(i, qWorldX);

            if ((GET_SP_PLAYER_MEMBER_V1(i, frameInput) & gPlayerControls.jump)
                || ((barX + (me->d.sData[0] * TILE_WIDTH) > I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)))
                    || (barX + (me->d.sData[0] * TILE_WIDTH) + (me->d.uData[2] * TILE_WIDTH) < I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX))))) {
                Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_IA_OVERRIDE;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_4;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = Q(0);
                GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_SPINATTACK;

                GET_SP_PLAYER_MEMBER_V1(i, qWorldY) = Q(barY) + Q(22);
                GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IN_AIR;
                GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_18;
                GET_SP_PLAYER_MEMBER_V1(i, itemEffect) &= ~PLAYER_ITEM_EFFECT__TELEPORT;

                if (GET_SP_PLAYER_MEMBER_V1(i, heldInput) & DPAD_RIGHT) {
                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) = +Q(2);
                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = +Q(2);
                } else if (GET_SP_PLAYER_MEMBER_V1(i, heldInput) & DPAD_LEFT) {
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_FACING_LEFT;
                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) = -Q(2);
                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = -Q(2);
                } else {
                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) = Q(0);
                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = Q(0);
                }

                ClearBit(bar->isPlayerOnBits, i);
            }

        } else {
            if (GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD) {
                continue;
            }

            if (GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) > Q(0)) {
                if ((barX + (me->d.sData[0] * TILE_WIDTH) <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)))
                    && (barX + (me->d.sData[0] * TILE_WIDTH) + (me->d.uData[2] * TILE_WIDTH) >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)))
                    && (barY + (me->d.sData[1] * TILE_WIDTH) <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)))
                    && (barY + (me->d.sData[1] * TILE_WIDTH) + (me->d.uData[3] * TILE_WIDTH) >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)))) {
                    GET_SP_PLAYER_MEMBER_V1(i, rotation) = 0;
                    Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IA_OVERRIDE;
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_IN_AIR;
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
                    GET_SP_PLAYER_MEMBER_V1(i, itemEffect) |= PLAYER_ITEM_EFFECT__TELEPORT;

                    if (GET_SP_PLAYER_MEMBER_V1(i, heldInput) & DPAD_RIGHT) {
                        GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_36;
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FACING_LEFT;
                    } else if (GET_SP_PLAYER_MEMBER_V1(i, heldInput) & DPAD_LEFT) {
                        GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_36;
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_FACING_LEFT;
                    } else {
                        GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_35;
                    }

                    GET_SP_PLAYER_MEMBER_V1(i, qWorldY) = Q(barY) + Q(18);
                    SetBit(bar->isPlayerOnBits, i);
                    bar->qPlayerWorldX[i] = GET_SP_PLAYER_MEMBER_V1(i, qWorldX);

                    PLAYERFN_CHANGE_SHIFT_OFFSETS(GET_SP_PLAYER_V1(i), 6, 14);
                }
            }
        }
    } while (++i < gNumSingleplayerCharacters);

    if ((bar->isPlayerOnBits & ((1 << NUM_SINGLEPLAYER_CHARS_MAX) - 1)) == 0) {
        // Screen Pos
        barX -= gCamera.x;
        barY -= gCamera.y;

        if (IS_OUT_OF_CAM_RANGE(barX, barY)) {
            SET_MAP_ENTITY_NOT_INITIALIZED(me, bar->base.meX);
            TaskDestroy(gCurTask);
            return;
        }
    }
}

void CreateEntity_HangBar(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_HangBar, sizeof(HangBar), 0x8000, 0, NULL);
    HangBar *bar = TASK_DATA(t);

    bar->base.regionX = regionX;
    bar->base.regionY = regionY;
    bar->base.me = me;
    bar->base.meX = me->x;
    bar->base.id = id;

    bar->isPlayerOnBits = 0;

    SET_MAP_ENTITY_INITIALIZED(me);
}
