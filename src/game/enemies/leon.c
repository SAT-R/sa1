#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"
#include "game/save.h"
#include "game/sa1_sa2_shared/entities_manager.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/zones.h"

typedef struct {
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ EntityShared shared;
    /* 0x3C */ u8 filler3c[0x8];
    /* 0x44 */ s32 qUnk44;
    /* 0x48 */ s16 qUnk48;
    /* 0x4A */ s16 unk4A;
    /* 0x4C */ s16 unk4C;
} Leon;

void Task_LeonInit(void);

void CreateEntity_Leon(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    if ((LEVEL_TO_ZONE(gCurrentLevel) != ZONE_5) || (LOADED_SAVE->difficultyLevel == DIFFICULTY_NORMAL)) {
        // _0806E9C4

        struct Task *t = TaskCreate(Task_LeonInit, sizeof(Leon), 0x2000, 0, TaskDestructor_EntityShared);
        Leon *leon = TASK_DATA(t);
        Sprite *s = &leon->shared.s;

        leon->shared.base.regionX = regionX;
        leon->shared.base.regionY = regionY;
        leon->shared.base.me = me;
        leon->shared.base.meX = me->x;
        leon->shared.base.id = id;

        leon->qUnk48 = -Q(0.625);
        leon->qUnk44 = Q(0);
        leon->unk4C = 0;
        leon->unk4A = 0;

        // NOTE: x|y set to world- not screen-pos!
        s->x = TO_WORLD_POS(me->x, regionX);
        s->y = TO_WORLD_POS(me->y, regionY);

        SET_MAP_ENTITY_INITIALIZED(me);

        s->graphics.dest = ALLOC_TILES(SA1_ANIM_LEON);
        s->oamFlags = SPRITE_OAM_ORDER(18);
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_LEON;
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
}