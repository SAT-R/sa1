#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u16 unk3C;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ s16 unk48;
    /* 0x4C */ s16 unk4A;
    /* 0x4C */ s16 unk4C;
} IronBall;

void Task_IronBallMain(void);
void TaskDestructor_IronBall(struct Task *);

void CreateEntity_IronBall(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_IronBallMain, sizeof(IronBall), 0x2000, 0, TaskDestructor_IronBall);
    IronBall *ball = TASK_DATA(t);
    Sprite *s = &ball->s;

    ball->base.regionX = regionX;
    ball->base.regionY = regionY;
    ball->base.me = me;
    ball->base.meX = me->x;
    ball->base.id = id;
    ball->unk40 = 0;
    ball->unk44 = 0;
    ball->unk4C = 0;

    if (me->d.uData[2] > me->d.uData[3]) {
        if (me->d.sData[0] >= 0) {
            ball->unk48 = 4;
            ball->unk3C = 0;
            ball->unk4A = 0;
        } else {
            ball->unk48 = 4;
            ball->unk3C = 0x80;
            ball->unk4A = 0;
        }
    } else {
        if (me->d.sData[1] >= 0) {
            ball->unk48 = 0;
            ball->unk4A = 4;
            ball->unk3C = 0;
        } else {
            ball->unk48 = 0;
            ball->unk4A = 4;
            ball->unk3C = 0x80;
        }
    }

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    if (LEVEL_TO_ZONE(gCurrentLevel) == ZONE_5) {
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_IRON_BALL_5);
        s->graphics.anim = SA1_ANIM_IRON_BALL_5;
        s->variant = 0;
    } else {
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_IRON_BALL);
        s->graphics.anim = SA1_ANIM_IRON_BALL;
        s->variant = 0;
    }

    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    UpdateSpriteAnimation(s);
}
