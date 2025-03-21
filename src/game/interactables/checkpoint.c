#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/entities_manager.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    SpriteBase base;
    Sprite s;
} Checkpoint; /* 0x3C */

void Task_CheckpointMain(void);
void Task_Checkpoint2(void);

void CreateEntity_Checkpoint(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    Checkpoint *checkpoint;
    Sprite *s;

    if (me->d.sData[0] <= gBossIndex) {
        t = TaskCreate(Task_Checkpoint2, sizeof(Checkpoint), 0x2000, 0, TaskDestructor_EntityShared);
    } else {
        t = TaskCreate(Task_CheckpointMain, sizeof(Checkpoint), 0x2000, 0, TaskDestructor_EntityShared);
    }

    checkpoint = TASK_DATA(t);

    checkpoint->base.regionX = regionX;
    checkpoint->base.regionY = regionY;
    checkpoint->base.me = me;
    checkpoint->base.meX = me->x;
    checkpoint->base.id = id;

    s = &checkpoint->s;
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_CHECKPOINT);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_CHECKPOINT;

    if (me->d.sData[0] <= gBossIndex) {
        s->variant = 2;
    } else {
        s->variant = 0;
    }

    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    UpdateSpriteAnimation(s);
}