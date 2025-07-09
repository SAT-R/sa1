#include "global.h"
#include "core.h"
#include "trig.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/terrain_collision.h"
#include "game/stage/player.h"
#include "game/stage/player_controls.h" // gPlayerControls
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
    /* 0x0C */ Sprite s1;
    /* 0x3C */ Sprite s2;
    /* 0x6C */ u16 unk6C;
    /* 0x6E */ u16 unk6E;
    /* 0x70 */ s32 unk70;
    /* 0x74 */ u16 unk74;
    /* 0x74 */ u16 unk76;
    /* 0x78 */ u8 unk78;
    /* 0x79 */ u8 unk79;
} Carousel;

void Task_Carousel(void) {};
void TaskDestructor_Carousel(struct Task *t) {};

void CreateEntity_Carousel(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Carousel, sizeof(Carousel), 0x2000, 0, TaskDestructor_Carousel);
    Carousel *carousel = TASK_DATA(t);
    Sprite *s1 = &carousel->s1;
    Sprite *s2 = &carousel->s2;
    CamCoord worldX, worldY;

    carousel->base.regionX = regionX;
    carousel->base.regionY = regionY;
    carousel->base.me = me;
    carousel->base.meX = me->x;
    carousel->base.id = id;

    carousel->unk70 = 0;
    carousel->unk76 = 0;
    carousel->unk74 = 0;
    carousel->unk6E = 0;
    carousel->unk6C = 0;
    carousel->unk78 = 0;
    carousel->unk79 = 0;

    {
        // // NOTE: Initializing sprite pos to world pos
        s1->x = TO_WORLD_POS(me->x, regionX);
        s1->y = TO_WORLD_POS(me->y, regionY);

        SET_MAP_ENTITY_INITIALIZED(me);

        s1->graphics.dest = ALLOC_TILES(SA1_ANIM_CAROUSEL);
        s1->oamFlags = SPRITE_OAM_ORDER(18);
        s1->graphics.size = 0;
        s1->graphics.anim = SA1_ANIM_CAROUSEL;
        s1->variant = 0;
        s1->animCursor = 0;
        s1->qAnimDelay = Q(0);
        s1->prevVariant = -1;
        s1->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s1->palId = 0;
        s1->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s1->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    }

    {
        s2->graphics.dest = ALLOC_TILES(SA1_ANIM_CAROUSEL_POLE);
        s2->graphics.anim = SA1_ANIM_CAROUSEL_POLE;
        s2->variant = 0;
        s2->oamFlags = SPRITE_OAM_ORDER(18);
        s2->graphics.size = 0;
        s2->animCursor = 0;
        s2->qAnimDelay = Q(0);
        s2->prevVariant = -1;
        s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s2->palId = 0;
        s2->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s2->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    }

    UpdateSpriteAnimation(s1);
    UpdateSpriteAnimation(s2);
}
