#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 data1;
    /* 0x3D */ u8 unk3D;
    /* 0x3E */ u8 unk3E;
    /* 0x3F */ u8 tuggingPlayerIndex;
} RedFlagPole;

void Task_RedFlag(void);
void Task_8077760(void);
void Task_8077918(void);
bool32 sub_8077FA4(RedFlagPole *pole, Sprite *s, s32 worldX, s32 worldY);
bool32 sub_80780B4(RedFlagPole *pole, Sprite *s, s32 worldX, s32 worldY);
void TaskDestructor_RedFlag(struct Task *t);

void CreateEntity_RedFlag(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_RedFlag, sizeof(RedFlagPole), 0x2000, 0, TaskDestructor_RedFlag);
    RedFlagPole *pole = TASK_DATA(t);
    Sprite *s = &pole->s;

    pole->base.regionX = regionX;
    pole->base.regionY = regionY;
    pole->base.me = me;
    pole->base.meX = me->x;
    pole->base.id = id;

    pole->data1 = me->d.sData[1];
    pole->unk3D = 0;
    pole->unk3E = 0;
    pole->tuggingPlayerIndex = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_RED_FLAG);
    s->graphics.anim = SA1_ANIM_RED_FLAG;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    if (me->d.sData[1]) {
        SPRITE_FLAG_SET(s, X_FLIP);
    }

    UpdateSpriteAnimation(s);
}

void Task_RedFlag(void)
{
#ifndef NON_MATCHING
    register struct Task **t asm("r8") = &gCurTask;
#else
    struct Task **t = &gCurTask;
#endif
    RedFlagPole *pole = TASK_DATA(*t);
    Sprite *s = &pole->s;
    MapEntity *me = pole->base.me;
    CamCoord worldX, worldY;

    worldX = TO_WORLD_POS(pole->base.meX, pole->base.regionX);
    worldY = TO_WORLD_POS(me->y, pole->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (PLAYER_IS_ALIVE) {
        bool32 res;
        if (pole->data1) {
            res = sub_8077FA4(pole, s, worldX, worldY);
        } else {
            res = sub_80780B4(pole, s, worldX, worldY);
        }

        if (res) {
            (*t)->main = Task_8077760;
        }
    }

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, pole->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8077760(void)
{
    RedFlagPole *pole = TASK_DATA(gCurTask);
    Sprite *s = &pole->s;
    MapEntity *me = pole->base.me;
    CamCoord worldX, worldY;

    worldX = TO_WORLD_POS(pole->base.meX, pole->base.regionX);
    worldY = TO_WORLD_POS(me->y, pole->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, pole->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    {
        Player *p = GET_SP_PLAYER_V1(pole->tuggingPlayerIndex);
        if (PLAYER_IS_ALIVE) {
            if (pole->unk3D > 6) {
                if (pole->unk3D == 7) {
                    if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
                        p->qWorldX -= Q(10);
                    } else {
                        p->qWorldX += Q(10);
                    }
                } else {
                    if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
                        p->qWorldX -= Q(7.5);
                    } else {
                        p->qWorldX += Q(7.5);
                    }
                }
            }

            if (++pole->unk3D > 13) {
                p->charState = pole->unk3E;
                p->moveState &= ~MOVESTATE_4;

                if (!(p->moveState & MOVESTATE_FACING_LEFT)) {
                    if (p->charState == CHARSTATE_BRAKE) {
                        p->charState = CHARSTATE_WALK;
                    }

                    if (p->qSpeedGround < +Q(10.5)) {
                        p->qSpeedGround = +Q(10.5);
                        p->qSpeedAirX = +Q(10.5);
                    }
                } else {
                    if (p->charState == CHARSTATE_BRAKE) {
                        p->charState = CHARSTATE_WALK;
                    }

                    if (p->qSpeedGround > -Q(10.5)) {
                        p->qSpeedGround = -Q(10.5);
                        p->qSpeedAirX = -Q(10.5);
                    }
                }

                p->moveState &= ~MOVESTATE_IA_OVERRIDE;
                gPlayer.itemEffect &= ~PLAYER_ITEM_EFFECT__TELEPORT;
                gCurTask->main = Task_8077918;
            }
        } else {
            p->moveState &= ~MOVESTATE_IA_OVERRIDE;
            gPlayer.itemEffect &= ~PLAYER_ITEM_EFFECT__TELEPORT;
        }
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}
