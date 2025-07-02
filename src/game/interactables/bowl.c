#include "global.h"
#include "core.h"
#include "trig.h"
#include "game/entity.h"
#include "game/stage/player.h"
#include "game/water_effects.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"

#include "constants/animations.h"
#include "constants/char_states.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u16 unk3C;
    /* 0x3E */ u16 unk3E;
    /* 0x40 */ u16 unk40;
    /* 0x42 */ u16 unk42;
    /* 0x44 */ u8 filler44[0x4];
    /* 0x48 */ s32 unk48;
    /* 0x4C */ s32 unk4C;
    /* 0x50 */ u8 unk50;
    /* 0x51 */ u8 unk51;
} Bowl;

void Task_Bowl(void);
void TaskDestructor_Bowl(struct Task *t);

ALIGNED(4)
const AnimId sBowlAnimations[NUM_LEVEL_IDS] = {
    0x01E6, 0x01E6, // Zone 1
    0x01E6, 0x01E6, // Zone 2
    0x01E6, 0x01E6, // Zone 3
    0x01E6, 0x01E6, // Zone 4
    0x0222, 0x0222, // Zone 5
    0x01E6, 0x01E6, // Zone 6
    0x01E6, 0x01E6, // Zone 7
    0x01E6, 0x01E6, // MP 1, 2
    0x01E6, 0x01E6, // MP 3, 4
};

void CreateEntity_Bowl(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Bowl, sizeof(Bowl), 0x2000, 0, TaskDestructor_Bowl);
    Bowl *bowl = TASK_DATA(t);
    Sprite *s = &bowl->s;

    bowl->base.regionX = regionX;
    bowl->base.regionY = regionY;
    bowl->base.me = me;
    bowl->base.meX = me->x;
    bowl->base.id = id;

    bowl->unk50 = 0;
    bowl->unk40 = 0;
    bowl->unk42 = 0;
    bowl->unk48 = 0;
    bowl->unk4C = 0;
    bowl->unk3C = 0;
    bowl->unk3E = 0;
    bowl->unk51 = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOWL_3);
    s->oamFlags = SPRITE_OAM_ORDER(5);
    s->graphics.size = 0;
    s->graphics.anim = sBowlAnimations[gCurrentLevel];
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = FALSE;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    UpdateSpriteAnimation(s);
}
