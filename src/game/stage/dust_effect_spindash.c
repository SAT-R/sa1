#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "task.h"

#include "game/sa1_sa2_shared/globals.h"

#include "game/stage/player.h"
#include "game/stage/camera.h"
#include "game/multiplayer/mp_player.h"

#include "constants/animations.h"

typedef struct {
    Sprite s;
} DustEffect;

void Task_SpindashDustEffect(void);
void Task_SpindashDustEffectBig(void);
void TaskDestructor_SpindashDustEffect(struct Task *);

struct Task *CreateSpindashDustEffect()
{
    struct Task *t = TaskCreate(Task_SpindashDustEffect, sizeof(DustEffect), 0x4001, 0, TaskDestructor_SpindashDustEffect);

    DustEffect *sde = TASK_DATA(t);
    Sprite *s = &sde->s;
    s->graphics.dest = VramMalloc(20);
    s->graphics.size = 0;
#if (GAME == GAME_SA1)
    GET_SPRITE_ANIM(s) = SA1_ANIM_SPINDASH_DUST_EFFECT;
#elif (GAME == GAME_SA2)
    GET_SPRITE_ANIM(s) = SA2_ANIM_SPINDASH_DUST_EFFECT;
#endif
    s->variant = 0;
    s->prevVariant = -1;
    s->oamFlags = SPRITE_OAM_ORDER(8);
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    return t;
}

void Task_SpindashDustEffect(void)
{
    struct Camera *cam;
    Player *p = &gPlayer;
    s32 offY;

    if (p->spriteTask == NULL || (p->moveState & (MOVESTATE_SPINDASH | MOVESTATE_DEAD)) != MOVESTATE_SPINDASH) {
        TaskDestroy(gCurTask);
        return;
    } else {
        DustEffect *sde = TASK_DATA(gCurTask);
        Sprite *s = &sde->s;

        if (p->qSpindashAccel > Q(2.0)) {
#if (GAME == GAME_SA1)
            GET_SPRITE_ANIM(s) = SA1_ANIM_SPINDASH_DUST_EFFECT_BIG;
#elif (GAME == GAME_SA2)
            GET_SPRITE_ANIM(s) = SA2_ANIM_SPINDASH_DUST_EFFECT_BIG;
#endif
            s->variant = 0;
            s->prevVariant = -1;
            gCurTask->main = Task_SpindashDustEffectBig;
        }

        cam = &gCamera;
        offY = p->spriteOffsetY;

        if (GRAVITY_IS_INVERTED) {
            offY = -offY;
        }

#if (GAME == GAME_SA2)
        if (IS_MULTI_PLAYER) {
            struct Task *t = gMultiplayerPlayerTasks[SIO_MULTI_CNT->id];
            MultiplayerPlayer *mpp = TASK_DATA(t);
            s->x = (mpp->pos.x - cam->x);
            s->y = ((mpp->pos.y + offY) - cam->y);
        } else
#endif
        {
            s->x = I(p->qWorldX) - cam->x;
            s->y = (I(p->qWorldY) + offY) - cam->y;
        }

        if (!(p->moveState & MOVESTATE_FACING_LEFT)) {
            s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
        } else {
            s->frameFlags &= ~SPRITE_FLAG_MASK_X_FLIP;
        }

        if (GRAVITY_IS_INVERTED) {
            s->frameFlags |= SPRITE_FLAG_MASK_Y_FLIP;
        } else {
            s->frameFlags &= ~SPRITE_FLAG_MASK_Y_FLIP;
        }

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_SpindashDustEffectBig(void)
{
    struct Camera *cam;
    Player *p = &gPlayer;
    s32 offY;

    if (p->spriteTask == NULL || (p->moveState & (MOVESTATE_SPINDASH | MOVESTATE_DEAD)) != MOVESTATE_SPINDASH) {
        TaskDestroy(gCurTask);
        return;
    } else {
        DustEffect *sde = TASK_DATA(gCurTask);
        Sprite *s = &sde->s;

        if (p->qSpindashAccel <= Q(2.0)) {
#if (GAME == GAME_SA1)
            GET_SPRITE_ANIM(s) = SA1_ANIM_SPINDASH_DUST_EFFECT;
#elif (GAME == GAME_SA2)
            GET_SPRITE_ANIM(s) = SA2_ANIM_SPINDASH_DUST_EFFECT;
#endif
            s->variant = 0;
            s->prevVariant = -1;
            gCurTask->main = Task_SpindashDustEffect;
        }

        cam = &gCamera;
        offY = p->spriteOffsetY;

        if (GRAVITY_IS_INVERTED) {
            offY = -offY;
        }

#if (GAME == GAME_SA2)
        if (IS_MULTI_PLAYER) {
            struct Task *t = gMultiplayerPlayerTasks[SIO_MULTI_CNT->id];
            MultiplayerPlayer *mpp = TASK_DATA(t);
            s->x = (mpp->pos.x - cam->x);
            s->y = ((mpp->pos.y + offY) - cam->y);
        } else
#endif
        {
            s->x = I(p->qWorldX) - cam->x;
            s->y = (I(p->qWorldY) + offY) - cam->y;
        }

        if (!(p->moveState & MOVESTATE_FACING_LEFT)) {
            s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
        } else {
            s->frameFlags &= ~SPRITE_FLAG_MASK_X_FLIP;
        }

        if (GRAVITY_IS_INVERTED) {
            s->frameFlags |= SPRITE_FLAG_MASK_Y_FLIP;
        } else {
            s->frameFlags &= ~SPRITE_FLAG_MASK_Y_FLIP;
        }

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void TaskDestructor_SpindashDustEffect(struct Task *t)
{
    DustEffect *sde = TASK_DATA(t);
    VramFree(sde->s.graphics.dest);
}
