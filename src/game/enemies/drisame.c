#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/entities_manager.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct {
    u8 filler[1];
} IceBlock;

typedef struct
{
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ EntityShared shared;
    /* 0x3c */ s32 unk3c;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ s32 unk48;
    /* 0x4C */ u8 filler4C[0x8];
    /* 0x54 */ IceBlock *iceBlock;
} Drisame; /* 0x58 */

void Task_DrisameInit(void);
IceBlock *CreateIceBlock(s16, s16);

void CreateEntity_Drisame(MapEntity *me, u16 regionX, u16 regionY, u8 id) {
    struct Task *t = TaskCreate(Task_DrisameInit, sizeof(Drisame), 0x2000, 0, TaskDestructor_EntityShared);
    Drisame  *drisame = TASK_DATA(t);
    Sprite *s = &drisame->shared.s;

    drisame->shared.base.regionX = regionX;
    drisame->shared.base.regionY = regionY;
    drisame->shared.base.me = me;
    drisame->shared.base.meX = me->x;
    drisame->shared.base.id = id;

	drisame->unk44 = 0;
    drisame->unk48 = 0;
    drisame->unk3c = 0;
    drisame->unk40 = 0;

    // NOTE: x|y set to world- not screen-pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_DRISAME);
    s->oamFlags = SPRITE_OAM_ORDER(11);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_DRISAME;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    UpdateSpriteAnimation(s);

	drisame->iceBlock = CreateIceBlock(s->x, s->y);
}