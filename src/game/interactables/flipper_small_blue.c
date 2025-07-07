#include "global.h"
#include "core.h"
#include "trig.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/terrain_collision.h"
#include "game/stage/player.h"
#include "game/water_effects.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"

#include "constants/animations.h"
#include "constants/char_states.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 unk3C;
    /* 0x3D */ u8 unk3D;
    /* 0x3E */ u8 unk3E;
    /* 0x3F */ u8 unk3F;
    /* 0x40 */ s32 qUnk40[NUM_SINGLEPLAYER_CHARS_MAX];
    /* 0x48 */ s32 qUnk48[NUM_SINGLEPLAYER_CHARS_MAX];
    /* 0x50 */ s32 qUnk50[NUM_SINGLEPLAYER_CHARS_MAX];
    /* 0x58 */ u8 unk58[NUM_SINGLEPLAYER_CHARS_MAX];
    /* 0x5A */ u8 unk5A[NUM_SINGLEPLAYER_CHARS_MAX];
} BlueFlipper;

void Task_Flipper_SmallBlue(void);
void TaskDestructor_Flipper_SmallBlue(struct Task *t);

void CreateEntity_Flipper_SmallBlue(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Flipper_SmallBlue, sizeof(BlueFlipper), 0x2000 + me->d.sData[1], 0, TaskDestructor_Flipper_SmallBlue);
    BlueFlipper *flipper = TASK_DATA(t);
    Sprite *s = &flipper->s;
    s32 i;

    flipper->base.regionX = regionX;
    flipper->base.regionY = regionY;
    flipper->base.me = me;
    flipper->base.meX = me->x;
    flipper->base.id = id;

    flipper->unk3D = me->d.sData[0];
    flipper->unk3C = 0;

    i = 0;
    do {
        flipper->unk58[i] = 0;
        flipper->qUnk40[i] = 0;
        flipper->qUnk50[i] = 0;
        flipper->qUnk48[i] = 0;
        flipper->unk5A[i] = 0;
    } while (++i < gNumSingleplayerCharacters);

    flipper->unk3E = me->d.sData[1];

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_MINI_FLIPPER);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_MINI_FLIPPER;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    if (me->d.uData[2]) {
        s->frameFlags = SPRITE_FLAG(PRIORITY, 2) | SPRITE_FLAG(X_FLIP, 1);
    } else {
        s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    }
    UpdateSpriteAnimation(s);
}