#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/save.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct {
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ EntityShared shared;
    /* 0x3C */ s16 unk3C;
    /* 0x3E */ s16 qUnk3E;
    /* 0x40 */ u16 unk40;
    /* 0x42 */ u16 unk42;
    /* 0x44 */ u16 unk44;
    /* 0x46 */ u16 unk46;
} Slot;

void Task_SlotInit(void);

void CreateEntity_Slot(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    if ((LEVEL_TO_ZONE(gCurrentLevel) != ZONE_3) || (LOADED_SAVE->difficultyLevel == DIFFICULTY_NORMAL)) {
        struct Task *t = TaskCreate(Task_SlotInit, sizeof(Slot), 0x2000, 0, TaskDestructor_EntityShared);
        Slot *slot = TASK_DATA(t);
        Sprite *s = &slot->shared.s;

        slot->shared.base.regionX = regionX;
        slot->shared.base.regionY = regionY;
        slot->shared.base.me = me;
        slot->shared.base.meX = me->x;
        slot->shared.base.id = id;

        slot->qUnk3E = -Q(0.625);
        slot->unk3C = 0;
        slot->unk44 = 0;
        slot->unk40 = 0;
        slot->unk42 = 0;
        slot->unk46 = 0;

        // NOTE: x|y set to world- not screen-pos!
        s->x = TO_WORLD_POS(me->x, regionX);
        s->y = TO_WORLD_POS(me->y, regionY);

        SET_MAP_ENTITY_INITIALIZED(me);

        s->graphics.dest = ALLOC_TILES(SA1_ANIM_SLOT);
        s->oamFlags = SPRITE_OAM_ORDER(18);
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_SLOT;
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