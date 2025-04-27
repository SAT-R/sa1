#include "global.h"
#include "core.h"
#include "game/entity.h"
#include "game/stage/player.h"
#include "game/stage/player_controls.h"
#include "game/stage/terrain_collision.h"

#include "constants/char_states.h"
#include "constants/move_states.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ u8 fillerC[0x30];
    /* 0x3C */ u8 unk3C;
    /* 0x3D */ u8 unk3D[NUM_SINGLEPLAYER_CHARS_MAX];
    /* 0x40 */ s32 unk40[NUM_SINGLEPLAYER_CHARS_MAX];
    /* 0x48 */ s32 unk48[NUM_SINGLEPLAYER_CHARS_MAX];
    /* 0x50 */ s32 unk50[NUM_SINGLEPLAYER_CHARS_MAX];
} SwingRope;

void Task_SwingRope(void);

// (99.13%) https://decomp.me/scratch/zWpSE
NONMATCH("asm/non_matching/game/interactables/swing_rope__Task_SwingRope.inc", void Task_SwingRope(void))
{
    SwingRope *rope = TASK_DATA(gCurTask);
    CamCoord x, y;
    MapEntity *me = rope->base.me;
    s32 i;

// world-pos
    x = TO_WORLD_POS(rope->base.meX, rope->base.regionX);
    y = TO_WORLD_POS(me->y, rope->base.regionY);

    i = 0;
    do {
        if(!(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD)) {
            // _08088890
            if(GetBit(rope->unk3C, i)) {
                // _080888A4
                if(rope->unk40[i] < Q(0.90625)) {
                    rope->unk40[i] += Q(0.0625);
                }

                if(rope->unk40[i] > Q(9)) {
                    rope->unk40[i] = Q(9);
                }
                // _080888C6

                rope->unk48[i] += rope->unk40[i];

                GET_SP_PLAYER_MEMBER_V1(i, qWorldY) = Q(y) + Q(1);
                // _080888EC
                if((x + me->d.sData[0] * TILE_WIDTH) <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX))
                && (x + me->d.sData[0] * TILE_WIDTH + me->d.uData[2] * TILE_WIDTH) >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX))) {
                    s8 res;

                    GET_SP_PLAYER_MEMBER_V1(i, qWorldX) += rope->unk40[i];

                    if(GET_SP_PLAYER_MEMBER_V1(i, heldInput) & DPAD_RIGHT) {
                            rope->unk40[i] += 0x10;
                    } else if(GET_SP_PLAYER_MEMBER_V1(i, heldInput) & DPAD_LEFT) {                        
                        if(rope->unk40[i] > Q(0.90625)) {
                            rope->unk40[i] -= 0x10;
                        }
                    }
                    
                    res= SA2_LABEL(sub_801F100)(
                        I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)) - 8,
                        I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)),
                        GET_SP_PLAYER_MEMBER_V1(i, layer),
                        -8,
                        SA2_LABEL(sub_801EB44));

                    if(res < 0) {
                        GET_SP_PLAYER_MEMBER_V1(i, qWorldX) -= Q(res);
                    }
                }
                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = 0;
                    // _08088A0A

                    if(GET_SP_PLAYER_MEMBER_V1(i, frameInput) & gPlayerControls.jump) {
                        if(rope->unk40[i] < 0) {
                            GET_SP_PLAYER_MEMBER_V1(i, qWorldX) = Q(x + (me->d.sData[0] * TILE_WIDTH) + 2);                            
                            rope->unk40[i] = 0;
                            return;
                        }
                        
                        Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));

                        GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_IGNORE_INPUT;
                        GET_SP_PLAYER_MEMBER_V1(i, heldInput) |= gPlayerControls.jump | gPlayerControls.attack;
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_IA_OVERRIDE;
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_4;
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IN_AIR;
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_100;
                        GET_SP_PLAYER_MEMBER_V1(i, itemEffect) &= ~PLAYER_ITEM_EFFECT__TELEPORT;
                        if(GET_SP_PLAYER_MEMBER_V1(i, heldInput) & DPAD_VERTICAL) {
                            if(GET_SP_PLAYER_MEMBER_V1(i, heldInput) & DPAD_UP) {
                                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = -Q(6.75);                                
                            } else {
                                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = +Q(6.75);                                
                            }
    
                        } else {
                            if(Div(rope->unk50[i], 15) != 0) {
                                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = +Q(6.75);
                            } else {
                                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = -Q(6.75);
                            }
                        }

                        GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_SPINATTACK;

                        PLAYERFN_CHANGE_SHIFT_OFFSETS(GET_SP_PLAYER_V1(i), 6, 9);
                    
                        GET_SP_PLAYER_MEMBER_V1(i, qWorldY) = Q(y) + Q(9);
                        GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) = Q(0);
                        GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = Q(0);

                        ClearBit(rope->unk3C, i);

                        rope->unk50[i] = 0;
                        rope->unk3D[i] = 20;

                        GET_SP_PLAYER_V1(i)->spriteInfoBody->s.frameFlags &= ~0x3000;
                        GET_SP_PLAYER_V1(i)->spriteInfoBody->s.frameFlags |= 0x2000;
                    }
                    // _08088CD6

#ifndef NON_MATCHING
                    rope->unk50[i] = Mod(++rope->unk50[i], 30);
#else
                    rope->unk50[i] = (rope->unk50[i] + 1) % 30;
#endif
                
            } else {
                // _08088CF8 - not on rope
                if(rope->unk3D[i] > 0) {
                    rope->unk3D[i]--;
                    continue;
                } else {
                    // _08088D0A
                    if((x + me->d.sData[0] * TILE_WIDTH) <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX))
                    && (x + me->d.sData[0] * TILE_WIDTH + me->d.uData[2] * TILE_WIDTH) >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX))
                    && (y + me->d.sData[1] * TILE_WIDTH) <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY))
                    && (y + me->d.sData[1] * TILE_WIDTH + me->d.uData[3] * TILE_WIDTH) >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY))
                    ) {
                        // _08088DB2
                        rope->unk40[i] = GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) >> 1;

                        // TODO: Clamp macro?
                        if(rope->unk40[i] < 0)
                            rope->unk40[i] = 0;
                        // _08088DDE

                        if(GET_SP_PLAYER_MEMBER_V1(i, qWorldX) > Q(x)) {
                            // _08088DFA
                            rope->unk48[i] = (GET_SP_PLAYER_MEMBER_V1(i, qWorldX) - Q(x));
                        } else {
                            // _08088E16
                            rope->unk48[i] = (Q(x) - GET_SP_PLAYER_MEMBER_V1(i, qWorldX));
                        }
                        // _08088E2E+0x2

                        Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IA_OVERRIDE;
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_IN_AIR;
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_100;
                        // _08088E98

                        SetBit(rope->unk3C, i);
                        GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_34;

                        PLAYERFN_CHANGE_SHIFT_OFFSETS(GET_SP_PLAYER_V1(i), 6, 14);

                        rope->unk50[i] = 0;

                        GET_SP_PLAYER_MEMBER_V1(i, itemEffect) |= PLAYER_ITEM_EFFECT__TELEPORT;
                    }
                }
            }
        } else {
            // _08088F1C - Player dead
            if(GetBit(rope->unk3C, i)) {
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_IA_OVERRIDE;
                ClearBit(rope->unk3C, i);
            }
        }
    } while(++i < gNumSingleplayerCharacters);

    // _08088F68
    if((rope->unk3C & 0x3) == 0) {
        // screen-pos
        x -= gCamera.x;
        y -= gCamera.y;

        if(IS_OUT_OF_CAM_RANGE(x, y)) {
            SET_MAP_ENTITY_NOT_INITIALIZED(me, rope->base.meX);
            TaskDestroy(gCurTask);
            return;
        }
    }
}
END_NONMATCH

void CreateEntity_SwingRope(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_SwingRope, sizeof(SwingRope), 0x2000, 0, NULL);
    SwingRope *rope = TASK_DATA(t);
    s32 i;

    rope->base.regionX = regionX;
    rope->base.regionY = regionY;
    rope->base.me = me;
    rope->base.meX = me->x;
    rope->base.id = id;

    rope->unk3C = 0;

    for (i = 0; i < NUM_SINGLEPLAYER_CHARS_MAX; i++) {
        rope->unk40[i] = 0;
        rope->unk48[i] = 0;
        rope->unk3D[i] = 0;
    }

    SET_MAP_ENTITY_INITIALIZED(me);
}