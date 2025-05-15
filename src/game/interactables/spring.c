#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/stage/player.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/player_controls.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
} SpringA;

void Task_Spring_Normal_Up(void);
void TaskDestructor_Spring(struct Task *t);

void CreateEntity_Spring_Normal_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Spring_Normal_Up, sizeof(SpringA), 0x2000, 0, TaskDestructor_Spring);
    SpringA *spring = TASK_DATA(t);
    Sprite *s = &spring->s;

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;
    spring->base.me = me;
    spring->base.meX = me->x;
    spring->base.id = id;

    // NOTE: Initializing sprite pos to world pos
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_SPRING);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_SPRING;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    if (!(me->d.sData[0] & 0x2)) {
        DmaCopy32(3, &gRefSpriteTables->palettes[288 * sizeof(u16)], &gObjPalette[8 * 16], 16 * sizeof(u16));
        gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
        s->frameFlags = (SPRITE_FLAG(PRIORITY, 2) | SPRITE_FLAG(18, 1));
        s->palId = 1;
    } else {
        s->frameFlags = (SPRITE_FLAG(PRIORITY, 2) | SPRITE_FLAG(18, 0));
    }

    UpdateSpriteAnimation(s);
}