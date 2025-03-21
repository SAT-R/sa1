#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/save.h"
#include "game/sa1_sa2_shared/entities_manager.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ EntityShared shared;
    /* 0x3C */ s16 unk3C;
    /* 0x3E */ s16 unk3E;
    /* 0x40 */ s32 qUnk40;
    /* 0x44 */ s16 unk44;
    /* 0x46 */ s16 unk46;
    /* 0x48 */ s16 qUnk48;
} Senbon; /* 0x4C */

void Task_SenbonInit(void);
void Task_8070CB4(void);

void CreateEntity_Senbon(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    Senbon *senbon;
    Sprite *s;

    if ((LEVEL_TO_ZONE(gCurrentLevel) == ZONE_2) //
        && (LOADED_SAVE->difficultyLevel != DIFFICULTY_NORMAL)) {
        return;
    }

    t = TaskCreate(Task_SenbonInit, sizeof(Senbon), 0x2000, 0, TaskDestructor_EntityShared);
    senbon = TASK_DATA(t);
    s = &senbon->shared.s;

    senbon->shared.base.regionX = regionX;
    senbon->shared.base.regionY = regionY;
    senbon->shared.base.me = me;
    senbon->shared.base.meX = me->x;
    senbon->shared.base.id = id;

    senbon->qUnk48 = -Q(0.625);
    senbon->qUnk40 = 0;
    senbon->unk3C = 0;
    senbon->unk44 = 0;
    senbon->unk46 = 0;

    // NOTE: x|y set to world- not screen-pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_SENBON);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_SENBON;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    UpdateSpriteAnimation(s);
}