#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 filler3C[4];
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ s16 unk48;
    /* 0x4A */ s16 unk4A;
    /* 0x4C */ s16 unk4C;
    /* 0x4E */ u8 unk4E;
    /* 0x4F */ u8 unk4F;
    /* 0x50 */ u8 unk50;
} PlatformSq;

void Task_Platform_Square(void);
void TaskDestructor_Platform_Square(struct Task *t);

void CreateEntity_Platform_Square(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    u8 zone = LEVEL_TO_ZONE(gCurrentLevel);
    struct Task *t = TaskCreate(Task_Platform_Square, sizeof(PlatformSq), 0x2000, 0, TaskDestructor_Platform_Square);
    PlatformSq *platform = TASK_DATA(t);
    Sprite *s = &platform->s;
    CamCoord worldX, worldY;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.meX = me->x;
    platform->base.id = id;

    platform->unk40 = 0;
    platform->unk44 = 0;
    platform->unk4F = 0;
    platform->unk4E = 0;

    if (me->d.uData[2] > me->d.uData[3]) {
        if (me->d.sData[0] >= 0) {
            platform->unk4A = 4;
            platform->unk48 = 0;
            platform->unk4C = 0;
        } else {
            platform->unk4A = 4;
            platform->unk48 = 0x80;
            platform->unk4C = 0;
        }
        platform->unk50 = me->d.sData[1];
    } else {
        if (me->d.sData[1] >= 0) {
            platform->unk4A = 0;
            platform->unk4C = 4;
            platform->unk48 = 0;
        } else {
            platform->unk4A = 0;
            platform->unk4C = 4;
            platform->unk48 = 0x80;
        }
        platform->unk50 = me->d.sData[0];
    }

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    if ((zone == ZONE_3) || (gCurrentLevel == ACT_CHAO_HUNT_C)) {
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_SQU_3);
        s->graphics.anim = SA1_ANIM_PLATFORM_SQU_3;
        s->variant = 0;
    } else if ((zone == ZONE_6) || (gCurrentLevel == ACT_CHAO_HUNT_D)) {
        if (((gCurrentLevel & 0x1) != ACT_1) || (gCurrentLevel == ACT_CHAO_HUNT_D)) {
            // Act 2
            if (platform->unk50) {
                s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_LONG_6_2);
                s->graphics.anim = SA1_ANIM_PLATFORM_LONG_6_2;
                s->variant = 0;
            } else {
                s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_SQU_6_2);
                s->graphics.anim = SA1_ANIM_PLATFORM_SQU_6_2;
                s->variant = 0;
            }
        } else {
            // Act 1
            if (platform->unk50) {
                s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_LONG_6_1);
                s->graphics.anim = SA1_ANIM_PLATFORM_LONG_6_1;
                s->variant = 0;
            } else {
                s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_SQU_6_1);
                s->graphics.anim = SA1_ANIM_PLATFORM_SQU_6_1;
                s->variant = 0;
            }
        }
    } else if (zone == ZONE_5) {
        if (platform->unk50) {
            s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_LONG_H_5);
            s->graphics.anim = SA1_ANIM_PLATFORM_LONG_H_5;
            s->variant = 0;
        } else {
            s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_LONG_V_5);
            s->graphics.anim = SA1_ANIM_PLATFORM_LONG_V_5;
            s->variant = 0;
        }
    } else if (zone == ZONE_4) {
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_SQU_4);
        s->graphics.anim = SA1_ANIM_PLATFORM_SQU_4;
        s->variant = 0;
    } else {
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_SQU_3);
        s->graphics.anim = SA1_ANIM_PLATFORM_SQU_3;
        s->variant = 0;
    }

    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = FALSE;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);
}

#if 0
void Task_Platform_Square(void)
{
    s32 sp20 = 0;
    s32 sp24 = 0;
    s32 sp28 = 0;
    PlatformSq *platform = TASK_DATA(gCurTask);
    Sprite *s = &platform->s;
    MapEntity *me = platform->base.me;

    if(platform->unk4A != 0)
    {
        s32 prevUnk40 = platform->unk40;
        s32 r3 = (me->d.uData[2] << 11);

        platform->unk40 = (r3 * SIN((((gStageTime + platform->unk48) & 0xFF) * platform->unk4A) & (SIN_PERIOD-1))) >> 14;
        sp20 = platform->unk40 - prevUnk40;
    }
    // _0807D45A
    if(platform->unk4C != 0)
    {
        s32 prevUnk44 = platform->unk44;
        s32 r3 = (me->d.uData[2] << 11);

        platform->unk44 = (r3 * SIN((((gStageTime + platform->unk48) & 0xFF) * platform->unk4A) & (SIN_PERIOD-1))) >> 14;
        sp20 = platform->unk44 - prevUnk44;
    }
    // _0807D49E
    
    *(u32*)0 = sp20;
    *(u32*)4 = sp24;
}
#endif