#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/dust_cloud.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/multiplayer/mp_player.h"
#include "game/multiplayer/multiplayer_event_mgr.h"
#include "game/stage/player.h"
#include "game/stage/player_controls.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/interactables.h"
#include "constants/songs.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 unk3C;
    /* 0x3D */ u8 unk3D;
    /* 0x3E */ u8 unk3E;
    /* 0x3F */ u8 unk3F;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ s32 unk48;
    /* 0x4C */ s32 unk4C;
    /* 0x50 */ s32 unk50;
    /* 0x54 */ s32 unk54;
    /* 0x58 */ u8 unk58;
    /* 0x59 */ u8 unk59;
} PipeEntrance;

void Task_PipeEntrance(void);
void Task_8095D28(void);
void TaskDestructor_PipeEntrance(struct Task *t);

void CreateEntity_PipeEntrance(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    s32 i;

    i = 0;
    do {
        struct Task *t = TaskCreate(Task_PipeEntrance, sizeof(PipeEntrance), me->d.uData[3] | 0x2000, 0, TaskDestructor_PipeEntrance);
        PipeEntrance *pipe = TASK_DATA(t);
        Sprite *s = &pipe->s;

        pipe->base.regionX = regionX;
        pipe->base.regionY = regionY;
        pipe->base.me = me;
        pipe->base.meX = me->x;
        pipe->base.id = id;

        pipe->unk3C = i;
        pipe->unk3E = 20;
        pipe->unk3F = 0;

        pipe->unk40 = 0;
        pipe->unk44 = 0;
        pipe->unk50 = 0;
        pipe->unk54 = 0;

        pipe->unk48 = me->d.sData[0] * TILE_WIDTH;
        pipe->unk4C = me->d.sData[1] * TILE_WIDTH;

        pipe->unk58 = 0;
        pipe->unk3D = me->d.uData[3];
        pipe->unk59 = me->d.uData[2];

        // NOTE: Initializing sprite pos to world pos
        s->x = TO_WORLD_POS(me->x, regionX);
        s->y = TO_WORLD_POS(me->y, regionY);

        if (pipe->unk59 == 0 || pipe->unk59 == 1) {
            s->frameFlags = 0;

            if ((LEVEL_TO_ZONE(gCurrentLevel) == ZONE_6) || (gCurrentLevel == ACT_CHAO_HUNT_D)) {
                if ((gCurrentLevel & 0x1) != ACT_1) {
                    s->graphics.dest = (i == 0) ? ALLOC_TILES(SA1_ANIM_PIPE_ENTER_6_2_V) : NULL;
                    s->graphics.anim = SA1_ANIM_PIPE_ENTER_6_2_V;

                    s->variant = 0;

                    if (pipe->unk59 == 0) {
                        SPRITE_FLAG_SET(s, Y_FLIP);
                    }
                } else {
                    s->graphics.dest = (i == 0) ? ALLOC_TILES(SA1_ANIM_PIPE_ENTER_6_1_V) : NULL;
                    s->graphics.anim = SA1_ANIM_PIPE_ENTER_6_1_V;

                    s->variant = 0;

                    if (pipe->unk59 != 0) {
                        SPRITE_FLAG_SET(s, Y_FLIP);
                    }
                }
            } else {
                s->graphics.dest = (i == 0) ? ALLOC_TILES(SA1_ANIM_PIPE_GATE_2_V) : NULL;
                s->graphics.anim = SA1_ANIM_PIPE_GATE_2_V;

                s->variant = 0;

                if (pipe->unk59 != 0) {
                    SPRITE_FLAG_SET(s, Y_FLIP);
                }
            }

            s->oamFlags = SPRITE_OAM_ORDER(5);
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = SPRITE_ANIM_SPEED(1.0);
            s->palId = 0;
            s->hitboxes[0].index = -1;
        } else {
            if ((LEVEL_TO_ZONE(gCurrentLevel) == ZONE_6) || (gCurrentLevel == ACT_CHAO_HUNT_D)) {
                if ((gCurrentLevel & 0x1) != ACT_1) {
                    s->graphics.dest = (i == 0) ? ALLOC_TILES(SA1_ANIM_PIPE_ENTER_6_2_H) : NULL;
                    s->graphics.anim = SA1_ANIM_PIPE_ENTER_6_2_H;

                    s->variant = 0;
                } else {
                    s->graphics.dest = (i == 0) ? ALLOC_TILES(SA1_ANIM_PIPE_ENTER_6_1_H) : NULL;
                    s->graphics.anim = SA1_ANIM_PIPE_ENTER_6_1_H;

                    s->variant = 0;
                }
            } else {
                s->graphics.dest = (i == 0) ? ALLOC_TILES(SA1_ANIM_PIPE_GATE_2_H) : NULL;
                s->graphics.anim = SA1_ANIM_PIPE_GATE_2_H;

                s->variant = 0;
            }

            s->oamFlags = SPRITE_OAM_ORDER(5);
            s->graphics.size = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = SPRITE_ANIM_SPEED(1.0);
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = 0;

            if ((pipe->unk59 & 0x1) != 0) {
                s->frameFlags = SPRITE_FLAG(X_FLIP, 1);
            }
        }

        if (i != 0) {
            s->frameFlags |= (SPRITE_FLAG_MASK_18 | SPRITE_FLAG_MASK_19);
        }

        UpdateSpriteAnimation(s);
    } while (++i < gNumSingleplayerCharacters);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void Task_PipeEntrance(void)
{
    s32 qPlayerX, qPlayerY;
    s16 screenX, screenY;
    s32 collided;
    MapEntity *me;
    Sprite *s;
    CamCoord worldX;
    CamCoord worldY;
    Player *p;
    PipeEntrance *pipe;
    u32 mask;
    u32 res;
    pipe = TASK_DATA(gCurTask);
    me = pipe->base.me;
    s = &pipe->s;
    p = GET_SP_PLAYER_V1(pipe->unk3C);

    worldX = TO_WORLD_POS(pipe->base.meX, pipe->base.regionX);
    worldY = TO_WORLD_POS(me->y, pipe->base.regionY);
    screenX = worldX - gCamera.x;
    screenY = worldY - gCamera.y;
    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    collided = 0;

    if (IS_ALIVE(p)) {
        if (pipe->unk59 == 0 || pipe->unk59 == 1) {
            qPlayerX = p->qWorldX;
            qPlayerY = p->qWorldY;

            if (pipe->unk59 != 0) {
                if (gCurrentLevel == LEVEL_INDEX(ZONE_6, ACT_2)) {
                    if (GRAVITY_IS_INVERTED) {
                        mask = 0x100008;
                    } else {
                        mask = 0x10000;
                    }

                    if (sub_80096B0(s, worldX, worldY, p) & mask) {
                        collided = 1;
                    }
                } else {
                    if (GRAVITY_IS_INVERTED) {
                        mask = 0x10000;
                    } else {
                        mask = 0x100008;
                    }

                    if (sub_80096B0(s, worldX, worldY, p) & mask) {
                        collided = 1;
                    }
                }
            } else {
                if (gCurrentLevel == LEVEL_INDEX(ZONE_6, ACT_2)) {
                    if (GRAVITY_IS_INVERTED) {
                        mask = 0x10000;
                    } else {
                        mask = 0x100008;
                    }

                    if (sub_80096B0(s, worldX, worldY, p) & mask) {
                        collided = 1;
                    }
                } else {
                    if (GRAVITY_IS_INVERTED) {
                        mask = 0x100008;
                    } else {
                        mask = 0x10000;
                    }

                    if (sub_80096B0(s, worldX, worldY, p) & mask) {
                        collided = 1;
                    }
                }
            }

            if (collided) {
                Player_TransitionCancelFlyingAndBoost(p);
                pipe->unk3F = 90;
                p->moveState &= ~MOVESTATE_STOOD_ON_OBJ;
                p->moveState &= ~MOVESTATE_IN_AIR;
                p->moveState &= ~MOVESTATE_100;
                p->moveState &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
                p->moveState &= ~MOVESTATE_20;
                p->moveState |= MOVESTATE_4;
                p->moveState |= MOVESTATE_IA_OVERRIDE;

                p->qWorldX = qPlayerX;
                p->qWorldY = qPlayerY;
                p->charState = CHARSTATE_SPINATTACK;
                p->qSpeedAirY = Q(0);
                p->qSpeedAirX = Q(0);
                p->qSpeedGround = Q(0);
                // goto _08095C54;
                p->SA2_LABEL(unk99)[0] = 0;
                PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 14);

                gCurTask->main = Task_8095D28;
                p->itemEffect |= PLAYER_ITEM_EFFECT__TELEPORT;
            }
        } else {
            qPlayerX = p->qWorldX;
            qPlayerY = p->qWorldY;

            res = sub_80096B0(s, worldX, worldY, p);

            if (res & 0x60000) {
                if ((res & 0x40000) && pipe->unk59 == 2) {
                    Player_TransitionCancelFlyingAndBoost(p);
                    pipe->unk3F = 90;
                    p->moveState &= ~MOVESTATE_STOOD_ON_OBJ;
                    p->moveState |= MOVESTATE_IN_AIR;
                    p->moveState &= ~MOVESTATE_100;
                    p->moveState &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
                    p->moveState &= ~MOVESTATE_20;
                    p->moveState |= MOVESTATE_4;
                    p->moveState |= MOVESTATE_IA_OVERRIDE;

                    p->qWorldX = qPlayerX;
                    p->qWorldY = qPlayerY;
                    p->charState = CHARSTATE_SPINATTACK;
                    p->qSpeedAirY = Q(0);
                    p->qSpeedAirX = Q(0);
                    p->qSpeedGround = Q(0);

                    p->SA2_LABEL(unk99)[0] = 0;
                    PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 14);

                    gCurTask->main = Task_8095D28;
                    p->itemEffect |= PLAYER_ITEM_EFFECT__TELEPORT;
                } else if ((res & 0x20000) && pipe->unk59 == 3) {
                    pipe->unk3F = 90;
                    Player_TransitionCancelFlyingAndBoost(p);
                    p->moveState &= ~MOVESTATE_STOOD_ON_OBJ;
                    p->moveState |= MOVESTATE_IN_AIR;
                    p->moveState &= ~MOVESTATE_100;
                    p->moveState &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
                    p->moveState &= ~MOVESTATE_20;
                    p->moveState |= MOVESTATE_4;
                    p->moveState |= MOVESTATE_IA_OVERRIDE;

                    p->qWorldX = qPlayerX;
                    p->qWorldY = qPlayerY;
                    p->charState = CHARSTATE_SPINATTACK;
                    p->qSpeedAirY = Q(0);
                    p->qSpeedAirX = Q(0);
                    p->qSpeedGround = Q(0);

                    p->SA2_LABEL(unk99)[0] = 0;
                    PLAYERFN_CHANGE_SHIFT_OFFSETS(p, 6, 14);

                    gCurTask->main = Task_8095D28;
                    p->itemEffect |= PLAYER_ITEM_EFFECT__TELEPORT;
                }
            }
        }
    } else {
        Player_TransitionCancelFlyingAndBoost(p);
        p->moveState |= MOVESTATE_DEAD; // NOTE: This OR is redundant...
        p->charState = CHARSTATE_DEAD;
    }

    if (IS_OUT_OF_CAM_RANGE(screenX, screenY)) {
        if (pipe->unk58) {
            p->moveState &= ~MOVESTATE_IA_OVERRIDE;
        }

        if (pipe->unk3C == 0) {
            SET_MAP_ENTITY_NOT_INITIALIZED(me, pipe->base.meX);
        }
        TaskDestroy(gCurTask);
        return;
    }

    UpdateSpriteAnimation(s);

    if (pipe->unk3C == 0) {
        DisplaySprite(s);
    }
}
