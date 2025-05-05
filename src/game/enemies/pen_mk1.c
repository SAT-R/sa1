#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/stage/terrain_collision.h"
#include "game/save.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

// NOTE: Not the same jet-powered Pen enemy as in SA2.
//       This one shoots ice balls that slide on the ground.

typedef struct {
    Sprite s;
    s16 qUnk30;
    s16 qUnk32;
    s32 qUnk34;
    s32 unk38;
    s32 qUnk3C;
    u8 filler40[0x4];
    s32 qUnk44;
    s16 unk48;
    u8 unk4A;
    u8 unk4B;
} PenMk1Snowball;

typedef struct {
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ EntityShared shared;
    /* 0x3C */ s32 qUnk3C;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s16 qUnk44;
    /* 0x46 */ s16 unk46;
    /* 0x48 */ s16 unk48;
} PenMk1;

void Task_PenMk1Main(void);
void Task_8073CC4(void);
void CreatePenMk1Snowball(CamCoord worldX, CamCoord worldY, u8 dir);
void Task_PenMk1Snowball(void);
void sub_80741E8(CamCoord worldX, CamCoord worldY);

void CreateEntity_PenMk1(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    if (LEVEL_TO_ZONE(gCurrentLevel) != ZONE_4 || (LOADED_SAVE->difficultyLevel == DIFFICULTY_NORMAL)) {
        struct Task *t = TaskCreate(Task_PenMk1Main, sizeof(PenMk1), 0x2000, 0, TaskDestructor_EntityShared);
        PenMk1 *pen = TASK_DATA(t);
        Sprite *s = &pen->shared.s;

        pen->shared.base.regionX = regionX;
        pen->shared.base.regionY = regionY;
        pen->shared.base.me = me;
        pen->shared.base.meX = me->x;
        pen->shared.base.id = id;

        pen->qUnk44 = -Q(0.625);
        pen->qUnk3C = 0;
        pen->unk40 = 0;
        pen->unk46 = 0;
        pen->unk48 = 0;

        // NOTE: x|y set to world- not screen-pos!
        s->x = TO_WORLD_POS(me->x, regionX);
        s->y = TO_WORLD_POS(me->y, regionY);

        SET_MAP_ENTITY_INITIALIZED(me);

        s->graphics.dest = ALLOC_TILES(SA1_ANIM_PEN);
        s->oamFlags = SPRITE_OAM_ORDER(18);
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_PEN;
        s->variant = 0;
        s->animCursor = 0;
        s->qAnimDelay = Q(0);
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

        UpdateSpriteAnimation(s);
    }
}

void Task_PenMk1Main(void)
{
    PenMk1 *pen = TASK_DATA(gCurTask);
    Sprite *s = &pen->shared.s;
    MapEntity *me = pen->shared.base.me;
    CamCoord worldX, worldY;
    s32 worldX2, worldY2;
    s32 xSquared, ySquared;

    worldX = TO_WORLD_POS(pen->shared.base.meX, pen->shared.base.regionX);
    worldY = TO_WORLD_POS(me->y, pen->shared.base.regionY);

    worldX2 = worldX;
    worldY2 = worldY;

    pen->qUnk3C += pen->qUnk44;

    worldX += I(pen->qUnk3C);
    worldY += pen->unk40;

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_OUT_OF_DISPLAY_RANGE(worldX2, worldY2) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, pen->shared.base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (Coll_Player_Enemy_Attack(s, worldX, worldY)) {
        // Enemy defeated
        TaskDestroy(gCurTask);
        return;
    }

    pen->unk40 += SA2_LABEL(sub_801F07C)(worldY, worldX, 1, +8, NULL, SA2_LABEL(sub_801EE64));

    xSquared = I(gPlayer.qWorldX) - worldX;
    xSquared = xSquared * xSquared;
    ySquared = I(gPlayer.qWorldY) - worldY;
    ySquared = ySquared * ySquared;

    if (I(pen->qUnk3C) <= (me->d.sData[0] + 1) * TILE_WIDTH) {
        if (~s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            SPRITE_FLAG_SET(s, X_FLIP);
            pen->qUnk44 = +Q(0.625);
        }
    } else if (I(pen->qUnk3C) >= (me->d.sData[0] + me->d.uData[2]) * TILE_WIDTH) {
        if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            SPRITE_FLAG_CLEAR(s, X_FLIP);
            pen->qUnk44 = -Q(0.625);
        }
    } else if (pen->unk48 != 0) {
        pen->unk48--;
    } else {
        if (xSquared + ySquared < SQUARE(80)) {
            pen->unk46 = 0;
            pen->unk48 = 60;
            s->variant = 1;
            s->prevVariant = -1;
            gCurTask->main = Task_8073CC4;
        }
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_8073CC4(void)
{
    PenMk1 *pen = TASK_DATA(gCurTask);
    Sprite *s = &pen->shared.s;
    MapEntity *me = pen->shared.base.me;
    CamCoord worldY, worldX;
    s32 worldX2, worldY2;
    u8 sp08;

    worldX = TO_WORLD_POS(pen->shared.base.meX, pen->shared.base.regionX);
    worldY = TO_WORLD_POS(me->y, pen->shared.base.regionY);

    worldX2 = worldX;
    worldY2 = worldY;

    worldX += I(pen->qUnk3C);
    worldY += pen->unk40;

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    pen->unk40 += SA2_LABEL(sub_801F07C)(worldY, worldX, 1, +8, &sp08, SA2_LABEL(sub_801EE64));
    pen->unk46++;

    if (IS_OUT_OF_DISPLAY_RANGE(worldX2, worldY2) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, pen->shared.base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (Coll_Player_Enemy_Attack(s, worldX, worldY)) {
        // Enemy defeated
        TaskDestroy(gCurTask);
        return;
    }

    if (pen->unk46 == 13) {
        if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            CreatePenMk1Snowball(worldX + 4, worldY, 1);
        } else {
            CreatePenMk1Snowball(worldX - 6, worldY, 0);
        }
    }

    pen->unk40 += SA2_LABEL(sub_801F07C)(worldY, worldX, 1, +8, &sp08, SA2_LABEL(sub_801EE64));

    if (pen->unk46 > 16) {
        pen->unk46 = 0;
        s->prevVariant = -1;
        s->variant = 0;
        gCurTask->main = Task_PenMk1Main;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void CreatePenMk1Snowball(CamCoord worldX, CamCoord worldY, u8 dir)
{
    struct Task *t = TaskCreate(Task_PenMk1Snowball, sizeof(PenMk1Snowball), 0x3000, 0, NULL);
    PenMk1Snowball *proj = TASK_DATA(t);
    Sprite *s = &proj->s;
    u8 sp08;

    proj->unk4A = 0;

    if (dir != 0) {
        proj->qUnk30 = +Q(2);
    } else {
        proj->qUnk30 = -Q(2);
    }

    proj->qUnk32 = 0;
    proj->qUnk34 = 0;
    proj->unk38 = 0;
    proj->qUnk3C = worldX;
    proj->qUnk44 = worldY;

    proj->unk4B = 0;
    proj->unk48 = 800;

    proj->unk38 += SA2_LABEL(sub_801F07C)(worldY, worldX, 1, +8, &sp08, SA2_LABEL(sub_801EE64));

    // NOTE: x|y set to world- not screen-pos!
    s->x = worldX;
    s->y = worldY;

    s->graphics.dest = VRAM_RESERVED_EN_PEN_MK1_PROJ;
    s->oamFlags = SPRITE_OAM_ORDER(9);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_PEN_PROJ_2; // main image
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    UpdateSpriteAnimation(s);
}

// void Task_PenMk1Snowball(void) { }