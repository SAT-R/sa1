#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "malloc_vram.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/player.h"
#include "game/stage/player_controls.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ u8 unk40;
    /* 0x41 */ u8 unk41;
} Flipper;

void Task_Flipper_Horizontal(void);
void Task_Flipper_Horizontal_2(void);
void Task_Flipper_Vertical(void);
void Task_Flipper_Vertical_2(void);
void TaskDestructor_Flipper(struct Task *t);

void CreateEntity_Flipper(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Flipper_Horizontal, sizeof(Flipper), 0x2000, 0, TaskDestructor_Flipper);
    Flipper *flipper = TASK_DATA(t);
    Sprite *s = &flipper->s;

    flipper->base.regionX = regionX;
    flipper->base.regionY = regionY;
    flipper->base.me = me;
    flipper->base.meX = me->x;
    flipper->base.id = id;

    flipper->unk3C = 0;
    flipper->unk40 = 0;
    flipper->unk41 = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES_VARIANT(SA1_ANIM_FLIPPER, 1);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_FLIPPER;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    if (me->d.sData[0] == 0) {
        s->frameFlags = SPRITE_FLAG(PRIORITY, 2) | SPRITE_FLAG(X_FLIP, 1);
    } else {
        s->frameFlags = SPRITE_FLAG(PRIORITY, 2) | SPRITE_FLAG(X_FLIP, 0);
    }

    UpdateSpriteAnimation(s);
}

// INCOMPLETE
// Code does NOT work as intended!
// (89.47%) https://decomp.me/scratch/vRy5t
NONMATCH("asm/non_matching/game/interactables/flippers__Task_Flipper_Horizontal.inc", void Task_Flipper_Horizontal(void))
{
    Sprite *s;
    CamCoord worldX, worldY;
    MapEntity *me;
    Flipper *flipper;
    s16 px, py;
    s32 i;

    flipper = TASK_DATA(gCurTask);
    s = &flipper->s;
    me = flipper->base.me;

    worldX = TO_WORLD_POS(flipper->base.meX, flipper->base.regionX);
    worldY = TO_WORLD_POS(me->y, flipper->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    i = 0;
    do {
        if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            px = worldX - I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX));
        } else {
            px = I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)) - worldX;
        }

        px = (px >> 1);

        if (Coll_Player_Entity_Intersection(s, worldX, worldY, GET_SP_PLAYER_V1(i))) {
            if ((GET_SP_PLAYER_MEMBER_V1(i, character) == CHARACTER_KNUCKLES)
                && ((GET_SP_PLAYER_MEMBER_V1(i, charState) == CHARSTATE_70) || (GET_SP_PLAYER_MEMBER_V1(i, charState) == CHARSTATE_71)
                    || (GET_SP_PLAYER_MEMBER_V1(i, charState) == CHARSTATE_72) || (GET_SP_PLAYER_MEMBER_V1(i, charState) == CHARSTATE_73)
                    || (GET_SP_PLAYER_MEMBER_V1(i, charState) == CHARSTATE_74)
                    || (GET_SP_PLAYER_MEMBER_V1(i, charState) == CHARSTATE_75))) {
                if (GET_SP_PLAYER_MEMBER_V1(i, charState) != CHARSTATE_73) {
                    sub_80096B0(s, worldX, worldY, GET_SP_PLAYER_V1(i));

                    if ((GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_STOOD_ON_OBJ) && GET_SP_PLAYER_MEMBER_V1(i, stoodObj) == s) {

                        Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                        GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_SPINATTACK;
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_STOOD_ON_OBJ;
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_4;
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IN_AIR;

                        if (s->frameFlags & 0x400) {
                            GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_FACING_LEFT;
                        } else {
                            GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FACING_LEFT;
                        }
                    }
                }
            } else {
                // 330
                if ((GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) >= Q(0)
                     || ((GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_STOOD_ON_OBJ) && GET_SP_PLAYER_MEMBER_V1(i, stoodObj) == s))
                    && ((GET_SP_PLAYER_MEMBER_V1(i, qWorldY) < Q(worldY) + Q(19))
                        && (GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_IN_AIR))) {
                    if ((gPressedKeys & gPlayerControls.jump) && GetBit(flipper->unk41, i)) {
                        ClearBit(flipper->unk41, i);
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_STOOD_ON_OBJ;
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IN_AIR;
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_100;
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_4;
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;

                        if (gInput & DPAD_LEFT) {
                            GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_FACING_LEFT;
                        } else if (gInput & DPAD_RIGHT) {
                            GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FACING_LEFT;
                        }

                        GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = -Q(7.75) - (worldY << 4);

                        if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
                            GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = -(px >> 11);
                            GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) = -(px >> 11);
                        } else {
                            GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = +(px >> 11);
                            GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) = +(px >> 11);
                        }

                        Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                        GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_SPINATTACK;
                        flipper->unk40 = 8;
                        flipper->unk3C = 0;

                        PLAYERFN_CHANGE_SHIFT_OFFSETS(GET_SP_PLAYER_V1(i), 6, 9);
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_IGNORE_INPUT;
                        GET_SP_PLAYER_MEMBER_V1(i, heldInput) |= (gPlayerControls.jump | gPlayerControls.attack);

                        s->graphics.anim = SA1_ANIM_FLIPPER;
                        s->variant = 1;
                        s->prevVariant = -1;

                        m4aSongNumStart(SE_BUMPER_A);

                        gCurTask->main = Task_Flipper_Horizontal_2;
                    } else {
                        s32 qVal;
                        // 60c
                        if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
                            if (GET_SP_PLAYER_MEMBER_V1(i, qWorldY) > Q(worldY - 17)) {
                                GET_SP_PLAYER_MEMBER_V1(i, qWorldY) = Q(worldY - 17) + 1;

                                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = Q(0);
                                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = -Q(0.3125);
                                SetBit(flipper->unk41, i);
                                GET_SP_PLAYER_MEMBER_V1(i, heldInput) = 0;
                                GET_SP_PLAYER_MEMBER_V1(i, frameInput) = 0;
                                GET_SP_PLAYER_MEMBER_V1(i, rotation) = 0;
                                Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                                GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IGNORE_INPUT;
                                GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_4;

                                PLAYERFN_CHANGE_SHIFT_OFFSETS(GET_SP_PLAYER_V1(i), 6, 9);

                                GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_SPINATTACK;
                                continue;
                            } else {
                                if (GetBit(flipper->unk41, i)) {
                                    Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                                    GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IN_AIR;
                                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_100;
                                    GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_4;
                                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
                                    GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_SPINATTACK;
                                    PLAYERFN_CHANGE_SHIFT_OFFSETS(GET_SP_PLAYER_V1(i), 6, 9);

                                    GET_SP_PLAYER_MEMBER_V1(i, qWorldY) = Q(worldY - 17) + 1;
                                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = Q(0);
                                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = -Q(0.3125);
                                    GET_SP_PLAYER_MEMBER_V1(i, heldInput) = 0;
                                    GET_SP_PLAYER_MEMBER_V1(i, frameInput) = 0;
                                    GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IGNORE_INPUT;
                                } else {
                                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_IGNORE_INPUT;

                                    GET_SP_PLAYER_MEMBER_V1(i, heldInput) |= (gPlayerControls.jump | gPlayerControls.attack);
                                    continue;
                                }
                            }
                        } else {
                            // 8d4
                            if (GET_SP_PLAYER_MEMBER_V1(i, qWorldY) > Q(worldY - 17)) {
                                GET_SP_PLAYER_MEMBER_V1(i, qWorldY) = -(Q(worldY - 17) + 1);

                                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = Q(0);
                                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = Q(0.3125);
                                SetBit(flipper->unk41, i);
                                GET_SP_PLAYER_MEMBER_V1(i, heldInput) = 0;
                                GET_SP_PLAYER_MEMBER_V1(i, frameInput) = 0;
                                GET_SP_PLAYER_MEMBER_V1(i, rotation) = 0;
                                Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                                GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IGNORE_INPUT;
                                GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_4;

                                GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_SPINATTACK;

                                PLAYERFN_CHANGE_SHIFT_OFFSETS(GET_SP_PLAYER_V1(i), 6, 9);
                            } else {
                                if (GetBit(flipper->unk41, i)) {
                                    s32 qValue;
                                    GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IN_AIR;
                                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_100;
                                    GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_4;
                                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
                                    Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                                    GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_SPINATTACK;
                                    PLAYERFN_CHANGE_SHIFT_OFFSETS(GET_SP_PLAYER_V1(i), 6, 9);

                                    GET_SP_PLAYER_MEMBER_V1(i, qWorldY) = Q(worldY - 17);
                                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = Q(0);
                                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = +Q(0.3125);
                                    GET_SP_PLAYER_MEMBER_V1(i, heldInput) = 0;
                                    GET_SP_PLAYER_MEMBER_V1(i, frameInput) = 0;
                                    GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IGNORE_INPUT;
                                    continue;
                                } else {
                                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_IGNORE_INPUT;

                                    GET_SP_PLAYER_MEMBER_V1(i, heldInput) |= (gPlayerControls.jump | gPlayerControls.attack);
                                    continue;
                                }
                            }
                        }
                    }
                } else {
                    if (GET_SP_PLAYER_MEMBER_V1(i, qWorldY) <= Q(worldY)) {
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IN_AIR;
                        continue;
                    } else {
                        if (GET_SP_PLAYER_MEMBER_V1(i, qWorldY) < Q(worldY) + Q(24)) {
                            GET_SP_PLAYER_MEMBER_V1(i, qWorldY) = Q(worldY) + Q(24);

                            GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = Q(10. / 256.);
                            GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = Q(0);
                            GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) = Q(0);
                        }
                    }
                }
            }
        } else {
            if (GetBit(flipper->unk41, i)) {
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_IGNORE_INPUT;

                GET_SP_PLAYER_MEMBER_V1(i, heldInput) |= (gPlayerControls.jump | gPlayerControls.attack);

                if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = -Q(1);
                } else {
                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = +Q(1);
                }
            }
            ClearBit(flipper->unk41, i);
        }
    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        s32 i = 0;
        do {
            if (GetBit(flipper->unk41, i)) {
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_IGNORE_INPUT;
                GET_SP_PLAYER_MEMBER_V1(i, heldInput) |= (gPlayerControls.jump | gPlayerControls.attack);
            }
        } while (++i < gNumSingleplayerCharacters);

        SET_MAP_ENTITY_NOT_INITIALIZED(me, flipper->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    DisplaySprite(s);
}
END_NONMATCH

void Task_Flipper_Horizontal_2(void)
{
    Flipper *flipper = TASK_DATA(gCurTask);
    Sprite *s = &flipper->s;
    MapEntity *me = flipper->base.me;
    CamCoord worldX, worldY;

    worldX = TO_WORLD_POS(flipper->base.meX, flipper->base.regionX);
    worldY = TO_WORLD_POS(me->y, flipper->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, flipper->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    flipper->unk40--;

    if (flipper->unk40 == 0) {
        s->graphics.anim = SA1_ANIM_FLIPPER;
        s->variant = 0;
        s->prevVariant = -1;

        gCurTask->main = Task_Flipper_Horizontal;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void CreateEntity_Flipper_Vertical(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Flipper_Vertical, sizeof(Flipper), 0x2000, 0, TaskDestructor_Flipper);
    Flipper *flipper = TASK_DATA(t);
    Sprite *s = &flipper->s;

    flipper->base.regionX = regionX;
    flipper->base.regionY = regionY;
    flipper->base.me = me;
    flipper->base.meX = me->x;
    flipper->base.id = id;

    flipper->unk3C = 0;
    flipper->unk40 = 0;
    flipper->unk41 = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES_VARIANT(SA1_ANIM_FLIPPER, 3);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_FLIPPER;
    s->variant = 2;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
}

void Task_Flipper_Vertical(void)
{
    Sprite *s;
    CamCoord worldX, worldY;
    MapEntity *me;
    Flipper *flipper;
    s32 i;

    flipper = TASK_DATA(gCurTask);
    s = &flipper->s;
    me = flipper->base.me;

    worldX = TO_WORLD_POS(flipper->base.meX, flipper->base.regionX);
    worldY = TO_WORLD_POS(me->y, flipper->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    i = 0;
    do {
        if (!(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD)) {
            if ((GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_IN_AIR) || GetBit(flipper->unk41, i)) {
                if (sub_80096B0(s, worldX, worldY, GET_SP_PLAYER_V1(i)) & COLL_FLAG_8) {
                    SetBit(flipper->unk41, i);

                    if (!Coll_Player_Entity_Intersection(s, worldX, worldY, GET_SP_PLAYER_V1(i))) {
                        if ((GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_STOOD_ON_OBJ) && GET_SP_PLAYER_MEMBER_V1(i, stoodObj) == s) {
                            GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_STOOD_ON_OBJ;
                            continue;
                        }
                    }
                } else {
                    if (GetBit(flipper->unk41, i)) {
                        ClearBit(flipper->unk41, i);
                        GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_STOOD_ON_OBJ;
                    }
                }
            } else {
                if (Q(worldY) < GET_SP_PLAYER_MEMBER_V1(i, qWorldY)) {
                    if (Q(worldX) > GET_SP_PLAYER_MEMBER_V1(i, qWorldX)) {
                        if (Coll_Player_Entity_Intersection(s, worldX - 6, worldY, GET_SP_PLAYER_V1(i))) {
                            GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_FACING_LEFT;
                            GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = -Q(10);
                            GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) = -Q(10);

                            SPRITE_FLAG_SET(s, X_FLIP);

                            flipper->unk40 = 8;

                            s->graphics.anim = SA1_ANIM_FLIPPER;
                            s->variant = 3;
                            s->prevVariant = -1;
                            m4aSongNumStart(SE_BUMPER_A);

                            gCurTask->main = Task_Flipper_Vertical_2;
                        }
                    } else {
                        if (Coll_Player_Entity_Intersection(s, worldX + 7, worldY, GET_SP_PLAYER_V1(i))) {
                            GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FACING_LEFT;
                            GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = +Q(10);
                            GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) = +Q(10);

                            SPRITE_FLAG_CLEAR(s, X_FLIP);

                            flipper->unk40 = 8;

                            s->graphics.anim = SA1_ANIM_FLIPPER;
                            s->variant = 3;
                            s->prevVariant = -1;
                            m4aSongNumStart(SE_BUMPER_A);

                            gCurTask->main = Task_Flipper_Vertical_2;
                        }
                    }
                }
            }
        } else {
            if (GetBit(flipper->unk41, i)) {
                ClearBit(flipper->unk41, i);
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_STOOD_ON_OBJ;
            }
        }
    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, flipper->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_Flipper_Vertical_2(void)
{
    Flipper *flipper = TASK_DATA(gCurTask);
    Sprite *s = &flipper->s;
    MapEntity *me = flipper->base.me;
    CamCoord worldX, worldY;

    worldX = TO_WORLD_POS(flipper->base.meX, flipper->base.regionX);
    worldY = TO_WORLD_POS(me->y, flipper->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, flipper->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    flipper->unk40--;

    if (flipper->unk40 == 0) {
        s->graphics.anim = SA1_ANIM_FLIPPER;
        s->variant = 2;
        s->prevVariant = -1;

        gCurTask->main = Task_Flipper_Vertical;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void TaskDestructor_Flipper(struct Task *t)
{
    Flipper *flipper = TASK_DATA(t);
    VramFree(flipper->s.graphics.dest);
}