#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/player.h"
#include "game/stage/player_controls.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/interactables.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Sprite s2;
    /* 0x6C */ Sprite s3;
    /* 0x9C */ u16 unk9C;
    /* 0x9E */ u16 unk9E;
    /* 0xA0 */ u8 unkA0;
} CraneClaw;

void Task_CraneClawMain(void);
void TaskDestructor_CraneClaw(struct Task *);

void CreateEntity_CraneClaw(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_CraneClawMain, sizeof(CraneClaw), 0x2000, 0, TaskDestructor_CraneClaw);
    CraneClaw *crane = TASK_DATA(t);
    Sprite *s = &crane->s;
    Sprite *s2 = &crane->s2;
    Sprite *s3 = &crane->s3;

    crane->base.regionX = regionX;
    crane->base.regionY = regionY;
    crane->base.me = me;
    crane->base.meX = me->x;
    crane->base.id = id;

    crane->unk9C = 0;
    crane->unk9E = 0;
    crane->unkA0 = 0;

    SET_MAP_ENTITY_INITIALIZED(me);

    // s->graphics.dest = ALLOC_TILES_MAX(SA1_ANIM_STEAM_EXHAUST, SA1_ANIM_STEAM_EXHAUST_LID);
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_CRANE_CLAW_2);
    s->graphics.anim = SA1_ANIM_CRANE_CLAW_2;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(15);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    s2->graphics.dest = ALLOC_TILES_VARIANT(SA1_ANIM_CRANE_CLAW_2, 3);
    s2->graphics.anim = SA1_ANIM_CRANE_CLAW_2;
    s2->variant = 3;
    s2->oamFlags = SPRITE_OAM_ORDER(17);
    s2->graphics.size = 0;
    s2->animCursor = 0;
    s2->qAnimDelay = Q(0);
    s2->prevVariant = -1;
    s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s2->palId = 0;
    s2->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s2->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    s3->graphics.dest = ALLOC_TILES(SA1_ANIM_ANCHOR_HANDLES);
    s3->graphics.anim = SA1_ANIM_ANCHOR_HANDLES;
    s3->variant = 0;
    s3->oamFlags = SPRITE_OAM_ORDER(17);
    s3->graphics.size = 0;
    s3->animCursor = 0;
    s3->qAnimDelay = Q(0);
    s3->prevVariant = -1;
    s3->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s3->palId = 0;
    s3->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s3->frameFlags = SPRITE_FLAG(PRIORITY, 2);
}