#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/player.h"
#include "game/stage/ui.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Sprite s2;
    /* 0x6C */ Sprite s3;
    /* 0xA4 */ s16 unk9C;
    /* 0xA0 */ s32 unkA0;
    /* 0xA4 */ s32 unkA4;
    /* 0xA8 */ s32 unkA8;
    /* 0xAC */ s16 unkAC;
    /* 0xAE */ s16 unkAE;
    /* 0xB0 */ s16 unkB0;
    /* 0xB4 */ u8 unkB2;
    /* 0xB4 */ u8 unkB3;
    /* 0xB4 */ u8 unkB4;
    /* 0xB5 */ u8 unkB5;
    /* 0xB6 */ u8 unkB6;
} FerrisWheel; /* 0xB8 */

void Task_FerrisWheel(void);
void TaskDestructor_FerrisWheel(struct Task *t);

const u16 gUnknown_086CEE2C[NUM_LEVEL_IDS] = {
    SA1_ANIM_PLATFORM_HORZ_1,
    SA1_ANIM_PLATFORM_HORZ_1,
    SA1_ANIM_PLATFORM_HORZ_2,
    SA1_ANIM_PLATFORM_HORZ_2,
    SA1_ANIM_PLATFORM_HORZ_3,
    SA1_ANIM_PLATFORM_HORZ_3,
    SA1_ANIM_PLATFORM_HORZ_4,
    SA1_ANIM_PLATFORM_HORZ_4,
    SA1_ANIM_PLATFORM_HORZ_5,
    SA1_ANIM_PLATFORM_HORZ_5,
    SA1_ANIM_PLATFORM_HORZ_6_1,
    SA1_ANIM_PLATFORM_HORZ_6_2,
    SA1_ANIM_PLATFORM_HORZ_6_1,
    SA1_ANIM_PLATFORM_HORZ_6_1,
    SA1_ANIM_PLATFORM_HORZ_1,
    SA1_ANIM_PLATFORM_HORZ_2,
    SA1_ANIM_PLATFORM_HORZ_3,
    SA1_ANIM_PLATFORM_HORZ_6_2,
};

void CreateEntity_FerrisWheel(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_FerrisWheel, sizeof(FerrisWheel), 0x2000, 0, TaskDestructor_FerrisWheel);
    FerrisWheel *wheel = TASK_DATA(t);
    CamCoord worldX, worldY;
    Sprite *s, *s2, *s3;

    wheel->base.regionX = regionX;
    wheel->base.regionY = regionY;
    wheel->base.me = me;
    wheel->base.meX = me->x;
    wheel->base.id = id;

    wheel->unkA4 = 0;
    wheel->unkA8 = 0;
    wheel->unkAC = 0;
    wheel->unkAE = 0;

    wheel->unk9C = (me->d.sData[0] & 0xF) << 7;
    wheel->unkB4 = me->d.sData[1];
    wheel->unkB5 = 0;
    wheel->unkB0 = 0;
    wheel->unkA0 = 0;
    wheel->unkB6 = 0;

    if (me->d.uData[2] > me->d.uData[3]) {
        wheel->unkB3 = me->d.uData[2];
        wheel->unkB2 = 1;
    } else {
        wheel->unkB3 = me->d.uData[3];
        wheel->unkB2 = 0;
    }

    s = &wheel->s;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_HORZ_3);
    s->graphics.anim = gUnknown_086CEE2C[gCurrentLevel];
    s->variant = 0;
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

    s3 = &wheel->s3;
    s3->graphics.dest = VRAM_RESERVED_FERRIS_WHEEL_HOOK;
    s3->oamFlags = SPRITE_OAM_ORDER(18);
    s3->graphics.size = 0;
    s3->graphics.anim = SA1_ANIM_FERRIS_WHEEL_HOOK;
    s3->variant = 0;
    s3->animCursor = 0;
    s3->qAnimDelay = Q(0);
    s3->prevVariant = -1;
    s3->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s3->palId = 0;
    s3->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s3->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    UpdateSpriteAnimation(s3);

    s2 = &wheel->s2;
    s2->graphics.dest = VRAM_RESERVED_FERRIS_WHEEL_SEGMENT;
    s2->oamFlags = SPRITE_OAM_ORDER(18);
    s2->graphics.size = 0;
    s2->graphics.anim = SA1_ANIM_FERRIS_WHEEL_SEGMENT;
    s2->variant = 0;
    s2->animCursor = 0;
    s2->qAnimDelay = Q(0);
    s2->prevVariant = -1;
    s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s2->palId = 0;
    s2->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s2->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    UpdateSpriteAnimation(s2);
}
