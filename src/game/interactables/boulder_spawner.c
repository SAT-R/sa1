#include "global.h"
#include "core.h"
#include "trig.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/multiplayer/multiplayer_event_mgr.h"
#include "game/stage/terrain_collision.h"
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
    /* 0x3C */ u8 unk3C[0x74];
    /* 0xB0 */ u8 unkB0;
    /* 0xB1 */ u8 unkB1;
    /* 0xB2 */ u8 unkB2[0x2];
    /* 0xB4 */ u8 unkB4[0x8];
} BoulderSpawner; /* 0xBC */

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 unk3C[0x80];
} Boulder; /* 0xBC */

typedef struct {
    /* 0x00 */ Sprite sprites[4];
    /* 0xC0 */ SpriteTransform transforms[4];
    /* 0xF0 */ u16 unkF0;
    /* 0xF2 */ s16 qUnkF2;
} BoulderDebris; /* 0xF4 */

void Task_BoulderDebris(void);
void Task_BoulderSpawnerMain(void);
void TaskDestructor_Boulder(struct Task *t);
void TaskDestructor_BoulderDebris(struct Task *t);

void CreateBoulderDebris(s32 x, s32 y)
{
    struct Task *t = TaskCreate(Task_BoulderDebris, sizeof(BoulderDebris), 0x2000, 0, TaskDestructor_BoulderDebris);
    BoulderDebris *debris = TASK_DATA(t);

    Sprite *s;
    SpriteTransform *tf;

    {
        s = &debris->sprites[0];
        tf = &debris->transforms[0];

        debris->unkF0 = 0;
        debris->qUnkF2 = -Q(2);
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_ROCK_DEBRIS_L);
        s->oamFlags = SPRITE_OAM_ORDER(8);
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_ROCK_DEBRIS_S;
        s->variant = 0;
        s->animCursor = 0;
        s->qAnimDelay = Q(0);
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->frameFlags = SPRITE_FLAG_MASK_ROT_SCALE_DOUBLE_SIZE | SPRITE_FLAG_MASK_ROT_SCALE_ENABLE | SPRITE_FLAG(ROT_SCALE, 16);

        tf->rotation = 0;
        tf->qScaleX = Q(1);
        tf->qScaleY = Q(1);
        tf->x = x;
        tf->y = y;

        UpdateSpriteAnimation(s);

#ifdef BUG_FIX
        DmaCopy16(3, s, &debris->sprites[1], sizeof(debris->sprites[1]));
        s = &debris->sprites[1];
        DmaCopy16(3, tf, &debris->transforms[1], sizeof(debris->transforms[1]));
        tf = &debris->transforms[1];
#else
        DmaCopy16(3, s, (s = &debris->sprites[1]), sizeof(*s));
        DmaCopy16(3, tf, (tf = &debris->transforms[1]), sizeof(*tf));
#endif

        s->frameFlags = SPRITE_FLAG_MASK_ROT_SCALE_DOUBLE_SIZE | SPRITE_FLAG_MASK_ROT_SCALE_ENABLE | SPRITE_FLAG(ROT_SCALE, 17);
        ;
        tf->y = y - 16;
    }

    s = &debris->sprites[2];

#ifdef BUG_FIX
    DmaCopy16(3, tf, &debris->transforms[2], sizeof(debris->transforms[1]));
    tf = &debris->transforms[2];
#else
    DmaCopy16(3, tf, (tf = &debris->transforms[2]), sizeof(*tf));
#endif
    {
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_ROCK_DEBRIS_S);
        s->oamFlags = SPRITE_OAM_ORDER(8);
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_ROCK_DEBRIS_L;
        s->variant = 0;
        s->animCursor = 0;
        s->qAnimDelay = Q(0);
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->frameFlags = SPRITE_FLAG_MASK_ROT_SCALE_DOUBLE_SIZE | SPRITE_FLAG_MASK_ROT_SCALE_ENABLE | SPRITE_FLAG(ROT_SCALE, 18);

        tf->y = y;

        UpdateSpriteAnimation(s);

#ifdef BUG_FIX
        DmaCopy16(3, s, &debris->sprites[3], sizeof(debris->s2));
        s = &debris->sprites[3];
        DmaCopy16(3, tf, &debris->transforms[3], sizeof(debris->transform2));
        tf = &debris->transforms[3];
#else
        DmaCopy16(3, s, (s = &debris->sprites[3]), sizeof(*s));
        DmaCopy16(3, tf, (tf = &debris->transforms[3]), sizeof(*tf));
#endif

        s->frameFlags = SPRITE_FLAG_MASK_ROT_SCALE_DOUBLE_SIZE | SPRITE_FLAG_MASK_ROT_SCALE_ENABLE | SPRITE_FLAG(ROT_SCALE, 19);
        ;
        tf->y = y - 16;
    }
}

void Task_BoulderDebris(void)
{
    BoulderDebris *debris = TASK_DATA(gCurTask);
    Sprite *s = &debris->sprites[0];
    SpriteTransform *tf;
    s16 prevTransformX, prevTransformY;
    s16 scale;

    if (debris->unkF0++ > 60) {
        TaskDestroy(gCurTask);
        return;
    }

    debris->qUnkF2 += Q(40. / 256.);

    { // 0
        tf = &debris->transforms[0];
        tf->y += I(debris->qUnkF2);

        prevTransformX = tf->x;
        prevTransformY = tf->y;
        tf->x -= gCamera.x;
        tf->y -= gCamera.y;
        tf->x -= debris->unkF0 * 2;

        scale = tf->qScaleX + Q(8. / 256.);
        if (scale > Q(2)) {
            scale = Q(2);
        }

        tf->qScaleX = scale;
        tf->qScaleY = scale;
        tf->rotation -= Q(42. / 256.);
        SPRITE_FLAG_CLEAR(s, ROT_SCALE);
        s->frameFlags |= SA2_LABEL(gUnknown_030054B8)++;
        SA2_LABEL(sub_8004E14)(s, tf);
        DisplaySprite(s);
        tf->x = prevTransformX;
        tf->y = prevTransformY;
    }

    { // 1
        s = &debris->sprites[1];
        tf = &debris->transforms[1];
        tf->y += I(debris->qUnkF2);

        prevTransformX = tf->x;
        prevTransformY = tf->y;
        tf->x -= gCamera.x;
        tf->y -= gCamera.y;
        tf->x += debris->unkF0;

        tf->qScaleX = scale;
        tf->qScaleY = scale;
        tf->rotation += Q(42. / 256.);
        SPRITE_FLAG_CLEAR(s, ROT_SCALE);
        s->frameFlags |= SA2_LABEL(gUnknown_030054B8)++;
        SA2_LABEL(sub_8004E14)(s, tf);
        DisplaySprite(s);
        tf->x = prevTransformX;
        tf->y = prevTransformY;
    }

    { // 2
        s = &debris->sprites[2];
        tf = &debris->transforms[2];
        tf->y += I(debris->qUnkF2);

        prevTransformX = tf->x;
        prevTransformY = tf->y;
        tf->x -= gCamera.x;
        tf->y -= gCamera.y;
        tf->x += debris->unkF0 * 2;

        tf->qScaleX = scale;
        tf->qScaleY = scale;
        tf->rotation += Q(14. / 256.);
        SPRITE_FLAG_CLEAR(s, ROT_SCALE);
        s->frameFlags |= SA2_LABEL(gUnknown_030054B8)++;
        SA2_LABEL(sub_8004E14)(s, tf);
        DisplaySprite(s);
        tf->x = prevTransformX;
        tf->y = prevTransformY;
    }

    { // 3
        s = &debris->sprites[3];
        tf = &debris->transforms[3];
        tf->y += I(debris->qUnkF2);

        prevTransformX = tf->x;
        prevTransformY = tf->y;
        tf->x -= gCamera.x;
        tf->y -= gCamera.y;
        tf->x -= debris->unkF0;

        tf->qScaleX = scale;
        tf->qScaleY = scale;
        tf->rotation -= Q(14. / 256.);
        SPRITE_FLAG_CLEAR(s, ROT_SCALE);
        s->frameFlags |= SA2_LABEL(gUnknown_030054B8)++;
        SA2_LABEL(sub_8004E14)(s, tf);
        DisplaySprite(s);
        tf->x = prevTransformX;
        tf->y = prevTransformY;
    }
}

void CreateEntity_BoulderSpawner(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BoulderSpawnerMain, sizeof(BoulderSpawner), 0x2000, 0, NULL);
    BoulderSpawner *spawner = TASK_DATA(t);

    spawner->base.regionX = regionX;
    spawner->base.regionY = regionY;
    spawner->base.me = me;
    spawner->base.meX = me->x;
    spawner->base.id = id;

    spawner->unkB1 = me->d.sData[0];

    SET_MAP_ENTITY_INITIALIZED(me);
}

void TaskDestructor_Boulder(struct Task *t)
{
    Boulder *boulder = TASK_DATA(t);
    VramFree(boulder->s.graphics.dest);
}

void TaskDestructor_BoulderDebris(struct Task *t)
{
    BoulderDebris *debris = TASK_DATA(t);
    VramFree(debris->sprites[0].graphics.dest);
    VramFree(debris->sprites[2].graphics.dest);
}
