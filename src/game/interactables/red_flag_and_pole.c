#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 data1;
    /* 0x3D */ u8 unk3D;
    /* 0x3E */ u8 unk3E;
    /* 0x3F */ u8 unk3F;
} RedFlagPole;

void Task_RedFlag(void);
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
    pole->unk3F = 0;

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