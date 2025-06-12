#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "malloc_vram.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/player.h"
#include "game/stage/player_controls.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ s16 unk3C;
    /* 0x3C */ s16 unk3E;
    /* 0x40 */ u8 filler40[4];
} Wall;

extern u16 gUnknown_080BB544[NUM_LEVEL_IDS];

void Task_BreakableWall(void);
void TaskDestructor_BreakableWall(struct Task *);

void CreateEntity_BreakableWall(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BreakableWall, sizeof(Wall), 0x2000, 0, TaskDestructor_BreakableWall);
    Wall *flipper = TASK_DATA(t);
    Sprite *s = &flipper->s;

    flipper->base.regionX = regionX;
    flipper->base.regionY = regionY;
    flipper->base.me = me;
    flipper->base.meX = me->x;
    flipper->base.id = id;

    SET_MAP_ENTITY_INITIALIZED(me);
    flipper->unk3C = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BREAKABLE_WALL_1);
    s->graphics.anim = gUnknown_080BB544[gCurrentLevel];
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(15);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    if (me->d.sData[0] != 0) {
        s->frameFlags |= SPRITE_FLAG(X_FLIP, 1);
    }

    UpdateSpriteAnimation(s);
}
