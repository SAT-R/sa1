#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/entities_manager.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/zones.h"

typedef struct {
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ EntityShared shared;
    /* 0x3C */ u16 unk3C;
} StageGoal;

void Task_StageGoal(void);
void TaskDestructor_EntityShared(struct Task *t);

void CreateEntity_StageGoal(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    if (me->d.sData[1] == 0) {
        if (IS_SINGLE_PLAYER) {
            return;
        }
    } else if (gCurrentLevel == LEVEL_INDEX(ZONE_6, ACT_1)) {
        if (IS_MULTI_PLAYER) {
            return;
        }
    }

    {
        struct Task *t = TaskCreate(Task_StageGoal, sizeof(StageGoal), 0x2000, 0, TaskDestructor_EntityShared);
        StageGoal *goal = TASK_DATA(t);
        Sprite *s = &goal->shared.s;

        goal->shared.base.regionX = regionX;
        goal->shared.base.regionY = regionY;
        goal->shared.base.me = me;
        goal->shared.base.meX = me->x;
        goal->shared.base.id = id;

        s->x = TO_WORLD_POS(me->x, regionX);
        s->y = TO_WORLD_POS(me->y, regionY);

        SET_MAP_ENTITY_INITIALIZED(me);

        s->graphics.dest = ALLOC_TILES(SA1_ANIM_GOAL);
        s->oamFlags = SPRITE_OAM_ORDER(18);
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_GOAL;
        s->variant = 0;
        s->animCursor = 0;
        s->qAnimDelay = Q(0);
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

        UpdateSpriteAnimation(s);
    }
}