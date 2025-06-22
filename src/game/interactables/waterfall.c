#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ Sprite s;
    /* 0x34 */ u16 regionX;
    /* 0x36 */ u16 regionY;
    /* 0x38 */ u16 unk38;
    /* 0x38 */ u16 unk3A;
    /* 0x3C */ u8 meX;
    /* 0x3D */ u8 unk3D;
    /* 0x3E */ u8 unk3E;
} Waterfall;

#if !defined(NON_MATCHING) || defined(BUG_FIX)
#define WATERFALL_SIZE 0x3F
#else
#define WATERFALL_SIZE sizeof(Waterfall)
#endif

void Task_Waterfall(void);
void Task_WaterfallZone5(void);
void TaskDestructor_Waterfall(struct Task *t);

extern AnimId gUnknown_086CED28[NUM_LEVEL_IDS];

void CreateEntity_Waterfall(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    Sprite *s;
    Waterfall *waterfall;
    s32 zero;

    if (LEVEL_TO_ZONE(gCurrentLevel) == ZONE_5) {
        t = TaskCreate(Task_WaterfallZone5, WATERFALL_SIZE, 0x2000, 0, TaskDestructor_Waterfall);
    } else {
        t = TaskCreate(Task_Waterfall, WATERFALL_SIZE, 0x2000, 0, TaskDestructor_Waterfall);
    }

    TASK_SET_MEMBER(Waterfall, t, u16, regionX, regionX);
    TASK_SET_MEMBER(Waterfall, t, u16, regionY, regionY);
    TASK_SET_MEMBER(Waterfall, t, u16, unk38, 0);
    TASK_SET_MEMBER(Waterfall, t, u16, unk3A, 0);
    TASK_SET_MEMBER(Waterfall, t, u16, unk3A, 0);
    TASK_SET_MEMBER(Waterfall, t, u16, unk3A, 0);
    TASK_SET_MEMBER(Waterfall, t, MapEntity *, me, me);

    s = &TASK_GET_MEMBER(Waterfall, t, Sprite, s);
    TASK_SET_MEMBER(Waterfall, t, u8, unk3D, 0);
    TASK_SET_MEMBER(Waterfall, t, u8, unk3E, 0);
    TASK_SET_MEMBER(Waterfall, t, u8, meX, me->x);

    SET_MAP_ENTITY_INITIALIZED(me);

    // TODO: ALLOC_TILES() max from SA1_ANIM_WATER_SPLASH_1 | 5
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_WATER_SPLASH);
#ifndef NON_MATCHING
    asm("mov %0, #0" : "=r"(zero));
#else
    zero = 0;
#endif
    s->oamFlags = SPRITE_OAM_ORDER(5);
    s->graphics.size = zero;
    s->graphics.anim = gUnknown_086CED28[gCurrentLevel];
    s->variant = 0;
    s->animCursor = zero;
    s->qAnimDelay = zero;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
}