#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/entities_manager.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/zones.h"

typedef struct {
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ EntityShared shared;
    /* 0x3C */ s32 qUnk3C;
    /* 0x40 */ s16 qUnk40;
    /* 0x42 */ s16 unk42;
    /* 0x44 */ s16 unk44;
    /* 0x46 */ u16 unk46;
} Kuraa;

void Task_KuraaInit(void);
void Task_80737A8(void);

void CreateEntity_Kuraa(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_KuraaInit, sizeof(Kuraa), 0x2000, 0, TaskDestructor_EntityShared);
    Kuraa *kuraa = TASK_DATA(t);
    Sprite *s = &kuraa->shared.s;

    kuraa->shared.base.regionX = regionX;
    kuraa->shared.base.regionY = regionY;
    kuraa->shared.base.me = me;
    kuraa->shared.base.meX = me->x;
    kuraa->shared.base.id = id;

    kuraa->qUnk40 = -Q(0.25);
    kuraa->qUnk3C = Q(0);
    kuraa->unk44 = 0;
    kuraa->unk42 = 0;
    kuraa->unk46 = 0;

    // NOTE: x|y set to world- not screen-pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_KURAA);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_KURAA;
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

// (98.55%) https://decomp.me/scratch/0jMnq
NONMATCH("asm/non_matching/game/enemies/Task_KuraaInit.inc", void Task_KuraaInit(void))
{
    Kuraa *kuraa = TASK_DATA(gCurTask);
    Sprite *s = &kuraa->shared.s;
    MapEntity *me = kuraa->shared.base.me;
    s16 worldX, worldY;

#ifndef NON_MATCHING
    register s32 r9 asm("r9");
    register s32 sl asm("sl");
#else
    s32 r9;
    s32 sl;
#endif
    s16 offsetWorldX;

    worldX = TO_WORLD_POS(kuraa->shared.base.meX, kuraa->shared.base.regionX);
    worldY = TO_WORLD_POS(me->y, kuraa->shared.base.regionY);

    r9 = worldY;
    sl = worldY;

    kuraa->qUnk3C += kuraa->qUnk40;

    offsetWorldX = worldX + I(kuraa->qUnk3C);

    s->x = offsetWorldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_OUT_OF_DISPLAY_RANGE(worldX, worldY) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, kuraa->shared.base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (SA2_LABEL(sub_800C4FC)(s, offsetWorldX, worldY)) {
        // Enemy defeated
        TaskDestroy(gCurTask);
        return;
    }
    // _08073704

    if (I(kuraa->qUnk3C) <= me->d.sData[0] * TILE_WIDTH) {
        kuraa->qUnk40 = +Q(0.25);
    } else if (I(kuraa->qUnk3C) >= (me->d.sData[0] + me->d.uData[2]) * TILE_WIDTH) {
        kuraa->qUnk40 = -Q(0.25);
    } else if (kuraa->unk46 != 0) {
        kuraa->unk46--;
    } else {
        kuraa->unk42 = 0;
        kuraa->unk46 = 500;

        s->prevVariant = -1;
        s->variant = 1;

        gCurTask->main = Task_80737A8;
    }

    UpdateSpriteAnimation(s);

    DisplaySprite(s);
    SPRITE_FLAG_SET(s, X_FLIP);
    DisplaySprite(s);
    SPRITE_FLAG_CLEAR(s, X_FLIP);
}
END_NONMATCH

// (97.49%) https://decomp.me/scratch/DL0Fb
NONMATCH("asm/non_matching/game/enemies/Kuraa__Task_80737A8.inc", void Task_80737A8(void))
{
    Kuraa *kuraa = TASK_DATA(gCurTask);
    Sprite *s = &kuraa->shared.s;
    MapEntity *me = kuraa->shared.base.me;
    s16 worldX, worldY;

#ifndef NON_MATCHING
    register s32 r9 asm("r9");
    register s32 sl asm("sl");
#else
    s32 r9;
    s32 sl;
#endif
    s16 offsetWorldX;

    worldX = TO_WORLD_POS(kuraa->shared.base.meX, kuraa->shared.base.regionX);
    worldY = TO_WORLD_POS(me->y, kuraa->shared.base.regionY);

    r9 = worldY;
    sl = worldY;

    offsetWorldX = worldX + I(kuraa->qUnk3C);

    s->x = offsetWorldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_OUT_OF_DISPLAY_RANGE(worldX, worldY) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, kuraa->shared.base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (s->hitboxes[0].index != HITBOX_STATE_INACTIVE) {
        if (HB_COLLISION(worldX, worldY, s->hitboxes[0].b, I(gPlayer.qWorldX), I(gPlayer.qWorldY), gPlayerBodyPSI.s.hitboxes[0].b)) {
            SA2_LABEL(sub_800CBA4)(&gPlayer);
        }
    }

    if (++kuraa->unk42 >= 120) {
        s->prevVariant = -1;
        s->variant = 0;

        gCurTask->main = Task_KuraaInit;
    }

    UpdateSpriteAnimation(s);

    DisplaySprite(s);
    SPRITE_FLAG_SET(s, X_FLIP);
    DisplaySprite(s);
    SPRITE_FLAG_CLEAR(s, X_FLIP);
}
END_NONMATCH
