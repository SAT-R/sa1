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
    /* 0x3C */ u16 unk3C;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ s16 unk48;
    /* 0x4A */ s16 unk4A;
    /* 0x4C */ s16 unk4C;
    /* 0x4E */ u8 unk4E;
} BumperA;

void Task_BumperHexagon(void);
void Task_BumperHexagon2(void);
void TaskDestructor_BumperHexagon(struct Task *t);

bool32 sub_8078DA4(BumperA *bumper, Sprite *s, CamCoord worldX, CamCoord worldY);

void CreateEntity_BumperHexagon(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BumperHexagon, sizeof(BumperA), 0x2000, 0, TaskDestructor_BumperHexagon);
    BumperA *bumper = TASK_DATA(t);
    Sprite *s = &bumper->s;

    bumper->base.regionX = regionX;
    bumper->base.regionY = regionY;
    bumper->base.me = me;
    bumper->base.meX = me->x;
    bumper->base.id = id;

    bumper->unk40 = 0;
    bumper->unk44 = 0;
    bumper->unk4C = 0;
    bumper->unk4E = 0;

    if (me->d.sData[0] >= 0) {
        bumper->unk48 = 4;
        bumper->unk3C = 0;
        bumper->unk4A = 0;
    } else {
        bumper->unk48 = 4;
        bumper->unk3C = 0x80;
        bumper->unk4A = 0;
    }

#ifndef NON_MATCHING
    // TODO:
    if (!(*((u32 *)&me->d.uData[1]) & 0x00FFFF00))
#else
    if (!me->d.uData[2] && !me->d.uData[3])
#endif
    {
        bumper->unk48 = 0;
    }

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BUMPER_BIG);
    s->graphics.anim = SA1_ANIM_BUMPER_BIG;
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
}

void Task_BumperHexagon(void)
{
    BumperA *bumper = TASK_DATA(gCurTask);
    Sprite *s = &bumper->s;
    MapEntity *me = bumper->base.me;
    CamCoord worldX, worldY;

    if (bumper->unk48 != 0) {
        s32 r2 = Q(me->d.uData[2] * TILE_WIDTH);

        bumper->unk40 = (r2 * SIN(((bumper->unk48 * ((gStageTime + bumper->unk3C) & 0xFF)) & ONE_CYCLE))) >> 14;
    }

    worldX = TO_WORLD_POS(bumper->base.meX, bumper->base.regionX);
    worldY = TO_WORLD_POS(me->y, bumper->base.regionY);

    s->x = worldX - gCamera.x + I(bumper->unk40);
    s->y = worldY - gCamera.y + I(bumper->unk44);

    if (sub_8078DA4(bumper, s, worldX, worldY)) {
        gCurTask->main = Task_BumperHexagon2;
    }

    if (IS_OUT_OF_DISPLAY_RANGE(worldX, worldY) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, bumper->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    DisplaySprite(s);
}

void Task_BumperHexagon2(void)
{
    BumperA *bumper = TASK_DATA(gCurTask);
    Sprite *s = &bumper->s;
    MapEntity *me = bumper->base.me;
    CamCoord worldX, worldY;

    if (++bumper->unk4E > 8) {
        gCurTask->main = Task_BumperHexagon;
    }

    if (bumper->unk48 != 0) {
        s32 r2 = Q(me->d.uData[2] * TILE_WIDTH);

        bumper->unk40 = (r2 * SIN(((bumper->unk48 * ((gStageTime + bumper->unk3C) & 0xFF)) & ONE_CYCLE))) >> 14;
    }

    worldX = TO_WORLD_POS(bumper->base.meX, bumper->base.regionX);
    worldY = TO_WORLD_POS(me->y, bumper->base.regionY);

    sub_8078DA4(bumper, s, worldX, worldY);

    s->x = worldX - gCamera.x + I(bumper->unk40) - (COS(bumper->unk4E * 128) >> 12);
    s->y = worldY - gCamera.y + I(bumper->unk44) + (SIN(bumper->unk4E * 128) >> 12);

    if (IS_OUT_OF_DISPLAY_RANGE(worldX, worldY) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, bumper->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    DisplaySprite(s);
}
