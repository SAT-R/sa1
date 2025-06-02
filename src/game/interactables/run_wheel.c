#include "global.h"
#include "core.h"
#include "malloc_vram.h"

#include "game/entity.h"
#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ s32 unk48;
    /* 0x4C */ s16 unk4C;
    /* 0x4E */ u8 unk4E;
} RunWheel;

void Task_RunWheel(void);
void TaskDestructor_RunWheel(struct Task *t);

void CreateEntity_RunWheel(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_RunWheel, sizeof(RunWheel), 0x2000, 0, TaskDestructor_RunWheel);
    RunWheel *wheel = TASK_DATA(t);
    Sprite *s = &wheel->s;

    wheel->base.regionX = regionX;
    wheel->base.regionY = regionY;
    wheel->base.me = me;
    wheel->base.meX = me->x;
    wheel->base.id = id;

    wheel->unk3C = me->d.uData[2] * 0x10E0;
    wheel->unk40 = 0;
    wheel->unk4E = me->d.sData[0];
    wheel->unk44 = 0;
    wheel->unk4C = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_RUN_WHEEL);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_RUN_WHEEL;
    s->variant = 1;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    UpdateSpriteAnimation(s);
}
