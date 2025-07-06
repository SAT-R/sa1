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
    /* 0x3C */ u16 unk3C;
    /* 0x40 */ s32 qUnk40;
    /* 0x44 */ s32 qUnk44;
    /* 0x48 */ s16 unk48;
    /* 0x4A */ s16 unk4A;
    /* 0x4C */ u16 unk4C;
} MovingSpring;

void Task_MovingSpringMain(void);
void Task_808B5AC(void);
void TaskDestructor_MovingSpring(struct Task *t);
bool32 sub_808B7A0(MovingSpring *spring, Sprite *s, s32 worldX, s32 worldY);

// TODO: Fake-match
void CreateEntity_MovingSpring(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
#ifndef NON_MATCHING
    register u32 zone asm("r9") = (u8)LEVEL_TO_ZONE(gCurrentLevel);
#else
    u8 zone = LEVEL_TO_ZONE(gCurrentLevel);
#endif

    struct Task *t = TaskCreate(Task_MovingSpringMain, sizeof(MovingSpring), 0x2000, 0, TaskDestructor_MovingSpring);
    MovingSpring *spring = TASK_DATA(t);
    Sprite *s = &spring->s;

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;
    spring->base.me = me;
    spring->base.meX = me->x;
    spring->base.id = id;

    spring->qUnk40 = 0;
    spring->qUnk44 = 0;
    spring->unk4C = 0;

    if (me->d.uData[2] > me->d.uData[3]) {
        if (me->d.sData[0] >= 0) {
            spring->unk48 = 4;
            spring->unk3C = 0;
            spring->unk4A = 0;
        } else {
            spring->unk48 = 4;
            spring->unk3C = 0x80;
            spring->unk4A = 0;
        }
    } else {
        if (me->d.sData[1] >= 0) {
            spring->unk48 = 0;
            spring->unk4A = 4;
            spring->unk3C = 0;
        } else {
            spring->unk48 = 0;
            spring->unk4A = 4;
            spring->unk3C = 0x80;
        }
    }

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);

    if (zone == ZONE_4) {
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_SPRING_PLATFORM_4);
        s->graphics.anim = SA1_ANIM_SPRING_PLATFORM_4;
        s->variant = 1;
    } else if ((zone == ZONE_6) || (gCurrentLevel == ACT_CHAO_HUNT_D)) {
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_SPRING_PLATFORM_6);
        s->graphics.anim = SA1_ANIM_SPRING_PLATFORM_6;
        s->variant = 1;
    } else {
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_SPRING_PLATFORM_5);
        s->graphics.anim = SA1_ANIM_SPRING_PLATFORM_5;
        s->variant = 0;
    }

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
}

void Task_MovingSpringMain(void)
{
    CamCoord worldX, worldY;
    MovingSpring *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;

    if (spring->unk48 != 0) {
        spring->qUnk40 = ((me->d.uData[2] << 11) * SIN((spring->unk48 * ((gStageTime + spring->unk3C) & 0xFF)) & (SIN_PERIOD - 1))) >> 14;
    }

    if (spring->unk4A != 0) {
        spring->qUnk44 = ((me->d.uData[3] << 11) * SIN((spring->unk4A * ((gStageTime + spring->unk3C) & 0xFF)) & (SIN_PERIOD - 1))) >> 14;
    }

    worldX = TO_WORLD_POS(spring->base.meX, spring->base.regionX);
    worldY = TO_WORLD_POS(me->y, spring->base.regionY);

    s->x = worldX - gCamera.x + I(spring->qUnk40);
    s->y = worldY - gCamera.y + I(spring->qUnk44);

    if (sub_808B7A0(spring, s, worldX, worldY)) {
        gCurTask->main = Task_808B5AC;
    }

    if (IS_OUT_OF_DISPLAY_RANGE(worldX, worldY) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_808B5AC(void)
{
    CamCoord worldX, worldY;
    MovingSpring *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;

    if (spring->unk48 != 0) {
        spring->qUnk40 = ((me->d.uData[2] << 11) * SIN((spring->unk48 * ((gStageTime + spring->unk3C) & 0xFF)) & (SIN_PERIOD - 1))) >> 14;
    }

    if (spring->unk4A != 0) {
        spring->qUnk44 = ((me->d.uData[3] << 11) * SIN((spring->unk4A * ((gStageTime + spring->unk3C) & 0xFF)) & (SIN_PERIOD - 1))) >> 14;
    }

    worldX = TO_WORLD_POS(spring->base.meX, spring->base.regionX);
    worldY = TO_WORLD_POS(me->y, spring->base.regionY);

    sub_808B7A0(spring, s, worldX, worldY);

    s->x = worldX - gCamera.x + I(spring->qUnk40);
    s->y = worldY - gCamera.y + I(spring->qUnk44);

    if (++spring->unk4C > 12) {
        u8 zone = LEVEL_TO_ZONE(gCurrentLevel);
        if (zone == ZONE_4) {
            s->variant = 1;
        } else if ((zone == ZONE_6) || (gCurrentLevel == ACT_CHAO_HUNT_D)) {
            s->variant = 1;
        } else {
            s->variant = 0;
        }

        gCurTask->main = Task_MovingSpringMain;
    }

    if (IS_OUT_OF_DISPLAY_RANGE(worldX, worldY) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}