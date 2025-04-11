#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Hitbox reserved;

    /* 0x44 */ u16 unk44;
    /* 0x46 */ u16 unk46;
    /* 0x48 */ s32 unk48;
    /* 0x4C */ s32 unk4C;
    /* 0x50 */ u16 unk50;
    /* 0x52 */ u16 unk52;
    /* 0x54 */ u16 unk54;
    /* 0x56 */ u8 unk56;
    /* 0x57 */ u8 unk57;
} SpikedBarrel;

void Task_SpikedBarrel(void);
void TaskDestructor_SpikedBarrel(struct Task *t);

// TODO: Unused except for the 1st element...
const TileInfoBarrel gUnknown_086CEE50[4] = {
    { SA1_ANIM_SPIKED_BARREL, 0 },
    { SA1_ANIM_SPIKED_BARREL, 1 },
    { SA1_ANIM_SPIKED_BARREL, 2 },
    { SA1_ANIM_SPIKED_BARREL, 3 },
};

void CreateEntity_SpikedBarrel(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_SpikedBarrel, sizeof(SpikedBarrel), 0x2000, 0, TaskDestructor_SpikedBarrel);
    SpikedBarrel *barrel = TASK_DATA(t);
    Sprite *s = &barrel->s;

    barrel->base.regionX = regionX;
    barrel->base.regionY = regionY;
    barrel->base.me = me;
    barrel->base.meX = me->x;
    barrel->base.id = id;

    barrel->unk48 = 0;
    barrel->unk4C = 0;
    barrel->unk54 = 0;
    barrel->unk56 = 0;
    barrel->unk57 = 0x10;

    if (me->d.uData[2] > me->d.uData[3]) {
        if (me->d.sData[0] >= 0) {
            barrel->unk50 = 4;
            barrel->unk44 = 0;
            barrel->unk52 = 0;
        } else {
            barrel->unk50 = 4;
            barrel->unk44 = 0x80;
            barrel->unk52 = 0;
        }
    } else {
        if (me->d.sData[1] >= 0) {
            barrel->unk50 = 0;
            barrel->unk52 = 4;
            barrel->unk44 = 0;
        } else {
            barrel->unk50 = 0;
            barrel->unk52 = 4;
            barrel->unk44 = 0x80;
        }
    }

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_SPIKED_BARREL);
    s->graphics.anim = gUnknown_086CEE50[0].anim;
    s->variant = gUnknown_086CEE50[0].variant;
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