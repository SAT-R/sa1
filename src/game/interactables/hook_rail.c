#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "malloc_vram.h"
#include "game/entity.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ s32 unk48;
    /* 0x4C */ s32 unk4C;
    /* 0x50 */ u8 unk50;
} HookRail;

void Task_HookRail_Type0(void);
void Task_HookRail_Type1(void);
void Task_HookRail_Type2(void);
void TaskDestructor_HookRail(struct Task *t);

void CreateEntity_HookRail(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    TaskMain taskFunc;
    struct Task *t;
    Sprite *s;
    HookRail *hookRail;

    if (me->d.sData[0] == 1) {
        t = TaskCreate(Task_HookRail_Type1, sizeof(HookRail), 0x2000, 0, TaskDestructor_HookRail);
    } else if (me->d.sData[0] == 2) {
        t = TaskCreate(Task_HookRail_Type2, sizeof(HookRail), 0x2000, 0, TaskDestructor_HookRail);
    } else {
        t = TaskCreate(Task_HookRail_Type0, sizeof(HookRail), 0x2000, 0, TaskDestructor_HookRail);
    }

    hookRail = TASK_DATA(t);
    s = &hookRail->s;

    hookRail->base.regionX = regionX;
    hookRail->base.regionY = regionY;
    hookRail->base.me = me;
    hookRail->base.meX = me->x;
    hookRail->base.id = id;

    hookRail->unk3C = 0;
    hookRail->unk40 = 0;
    hookRail->unk44 = 0;
#ifdef BUG_FIX
    hookRail->unk48 = 0;
#endif
    hookRail->unk4C = 0;
    hookRail->unk50 = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);

    if (LEVEL_TO_ZONE(gCurrentLevel) == ZONE_4) {
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_HOOK_RAIL_3);
        s->graphics.anim = SA1_ANIM_HOOK_RAIL_3;
        s->variant = 0;
    } else {
        s->graphics.dest = ALLOC_TILES_VARIANT(SA1_ANIM_HOOK_RAIL_2, 0);
        s->graphics.anim = SA1_ANIM_HOOK_RAIL_2;
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