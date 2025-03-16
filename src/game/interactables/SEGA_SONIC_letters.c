#include <string.h> // memcpy
#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    SpriteBase base;
    Sprite s;
    u8 meDat0;
    u8 unk3D;
    u8 meDat1;
    u8 unk3F;
    u8 unk40;
} Letter; /* 0x44 */

void Task_SEGA_SONIC_Letter(void);
void TaskDestructor_SEGA_SONIC_Letter(struct Task *t);

ALIGNED(8) const AnimId gUnknown_086CED90[] = { 0x1F4, 0x190, 0x12C };

// (100.0%) https://decomp.me/scratch/AVFO8
// It's just the memcpy...
NONMATCH("asm/non_matching/game/interactables/CreateEntity_SEGA_SONIC_Letter.inc",
         void CreateEntity_SEGA_SONIC_Letter(MapEntity *me, u16 regionX, u16 regionY, u8 id))
{
    struct Task *t;
    Letter *letter;
    Sprite *s;
#if 0
    // This matches... but can't be right, the data is used in Task_SEGA_SONIC_Letter
    AnimId arr[3] = { 0x1F4, 0x190, 0x12C };
#else
    // memcpy gets optimized away...
    AnimId arr[3];
    memcpy(arr, gUnknown_086CED90, sizeof(arr));
#endif
    t = TaskCreate(Task_SEGA_SONIC_Letter, sizeof(Letter), 0x2000, 0, TaskDestructor_SEGA_SONIC_Letter);
    letter = TASK_DATA(t);
    s = &letter->s;

    letter->base.regionX = regionX;
    letter->base.regionY = regionY;
    letter->base.me = me;
    letter->base.meX = me->x;
    letter->base.id = id;

    letter->meDat0 = me->d.sData[0];
    letter->unk3D = 0;
    letter->meDat1 = me->d.uData[1] & 0x3;
    letter->unk3F = ((arr[me->d.uData[1] & 0x3] - 161) >> 1);

    letter->unk40 = me->d.uData[2];

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED_SIMPLE(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_SEGA_SONIC_LETTERS);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_SEGA_SONIC_LETTERS;
    s->variant = letter->meDat0 * 4;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    UpdateSpriteAnimation(s);
}
END_NONMATCH
