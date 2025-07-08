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
    /* 0x0C */ Sprite s1;
    /* 0x3C */ Sprite s2;
    /* 0x6C */ Sprite s3;
    /* 0x9C */ SpriteTransform transform;
    /* 0xA8 */ s32 qUnkA8;
    /* 0xAC */ s32 qUnkAC;
    /* 0xB0 */ u8 unkB0;
    /* 0xB0 */ u8 unkB1;
    /* 0xB2 */ s16 qUnkB2;
    /* 0xB4 */ u8 unkB4;
} SwingingHook;

void Task_SwingingHook(void);
void TaskDestructor_SwingingHook(struct Task *t);

void CreateEntity_SwingingHook(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_SwingingHook, sizeof(SwingingHook), 0x2000, 0, TaskDestructor_SwingingHook);
    SwingingHook *hook = TASK_DATA(t);
    Sprite *s1 = &hook->s1;
    Sprite *s2 = &hook->s2;
    Sprite *s3 = &hook->s3;
    SpriteTransform *tf = &hook->transform;
    CamCoord worldX, worldY;

    hook->base.regionX = regionX;
    hook->base.regionY = regionY;
    hook->base.me = me;
    hook->base.meX = me->x;
    hook->base.id = id;

    hook->unkB4 = 0;
    hook->qUnkA8 = 0;
    hook->qUnkAC = 0;
    hook->unkB0 = 0;
    hook->unkB1 = 0;

    if (me->d.sData[0] != 0) {
        hook->qUnkB2 = Q(1);
    } else {
        hook->qUnkB2 = Q(0);
    }

    {
        s1->x = TO_WORLD_POS(me->x, regionX) - gCamera.x;
        s1->y = TO_WORLD_POS(me->y, regionY) - gCamera.y;

        SET_MAP_ENTITY_INITIALIZED_SIMPLE(me);

        s1->graphics.dest = ALLOC_TILES_VARIANT(SA1_ANIM_HOOK_RAIL_2, 1);
        s1->oamFlags = SPRITE_OAM_ORDER(18);
        s1->graphics.size = 0;
        s1->graphics.anim = SA1_ANIM_HOOK_RAIL_2;
        s1->variant = 1;
        s1->animCursor = 0;
        s1->qAnimDelay = Q(0);
        s1->prevVariant = -1;
        s1->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s1->palId = 0;
        s1->hitboxes[0].index = HITBOX_STATE_INACTIVE;

        if (me->d.sData[0]) {
            s1->frameFlags = SPRITE_FLAG(PRIORITY, SA2_LABEL(gUnknown_030054B8)++) | 0x7E;
        } else {
            s1->frameFlags = SPRITE_FLAG(PRIORITY, SA2_LABEL(gUnknown_030054B8)++) | 0x7F;
        }
    }

    {
        s3->x = TO_WORLD_POS(me->x, regionX) - gCamera.x;
        s3->y = TO_WORLD_POS(me->y, regionY) - gCamera.y - 8;

        s3->graphics.dest = ALLOC_TILES_VARIANT(SA1_ANIM_ANCHOR_HANDLES, 2);
        s3->oamFlags = SPRITE_OAM_ORDER(18);
        s3->graphics.size = 0;
        s3->graphics.anim = SA1_ANIM_ANCHOR_HANDLES;
        s3->variant = 2;
        s3->animCursor = 0;
        s3->qAnimDelay = Q(0);
        s3->prevVariant = -1;
        s3->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s3->palId = 0;
        s3->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s3->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    }

    {
        s2->x = TO_WORLD_POS(me->x, regionX) - gCamera.x;
        s2->y = TO_WORLD_POS(me->y, regionY) - gCamera.y;

        s2->graphics.dest = ALLOC_TILES_VARIANT(SA1_ANIM_ANCHOR_HANDLES, 1);
        s2->oamFlags = SPRITE_OAM_ORDER(18);
        s2->graphics.size = 0;
        s2->graphics.anim = SA1_ANIM_ANCHOR_HANDLES;
        s2->variant = 1;
        s2->animCursor = 0;
        s2->qAnimDelay = Q(0);
        s2->prevVariant = -1;
        s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s2->palId = 0;
        s2->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s2->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    }

    worldX = TO_WORLD_POS(hook->base.meX, hook->base.regionX);
    worldY = TO_WORLD_POS(me->y, hook->base.regionY);

    tf->rotation = 0;
    tf->qScaleX = Q(1);
    tf->qScaleY = Q(1);
    tf->x = worldX - gCamera.x;
    tf->y = worldY - gCamera.y;

    UpdateSpriteAnimation(s3);
    UpdateSpriteAnimation(s2);
}
