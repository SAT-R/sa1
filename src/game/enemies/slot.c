#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/save.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct {
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ EntityShared shared;
    /* 0x3C */ s16 qUnk3C;
    /* 0x3E */ s16 qUnk3E;
    /* 0x40 */ s16 unk40;
    /* 0x42 */ s16 unk42;
    /* 0x44 */ u16 unk44;
    /* 0x46 */ s16 unk46;
} Slot;

void Task_SlotInit(void);
void sub_806E374(void);
void CreateSlotProjectile(s16 worldX, s16 worldY);

void CreateEntity_Slot(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    if ((LEVEL_TO_ZONE(gCurrentLevel) != ZONE_3) || (LOADED_SAVE->difficultyLevel == DIFFICULTY_NORMAL)) {
        struct Task *t = TaskCreate(Task_SlotInit, sizeof(Slot), 0x2000, 0, TaskDestructor_EntityShared);
        Slot *slot = TASK_DATA(t);
        Sprite *s = &slot->shared.s;

        slot->shared.base.regionX = regionX;
        slot->shared.base.regionY = regionY;
        slot->shared.base.me = me;
        slot->shared.base.meX = me->x;
        slot->shared.base.id = id;

        slot->qUnk3E = -Q(0.625);
        slot->qUnk3C = Q(0);
        slot->unk44 = 0;
        slot->unk40 = 0;
        slot->unk42 = 0;
        slot->unk46 = 0;

        // NOTE: x|y set to world- not screen-pos!
        s->x = TO_WORLD_POS(me->x, regionX);
        s->y = TO_WORLD_POS(me->y, regionY);

        SET_MAP_ENTITY_INITIALIZED(me);

        s->graphics.dest = ALLOC_TILES(SA1_ANIM_SLOT);
        s->oamFlags = SPRITE_OAM_ORDER(18);
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_SLOT;
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

void Task_SlotInit(void)
{
    Slot *slot = TASK_DATA(gCurTask);
    Sprite *s = &slot->shared.s;
    MapEntity *me = slot->shared.base.me;
    CamCoord worldX, worldY;
    s32 worldX2, worldY2;
    s16 offsetWorldX;

    worldX = TO_WORLD_POS(slot->shared.base.meX, slot->shared.base.regionX);
    worldY = TO_WORLD_POS(me->y, slot->shared.base.regionY);

    worldX2 = worldX;
    worldY2 = worldY;

    slot->unk46 = ((slot->unk46 + 1) & 0x1F);
    slot->unk44 = Div(SIN(slot->unk46 * 16), 800);
    slot->qUnk3C += slot->qUnk3E;

    worldX = worldX2 + I(slot->qUnk3C);
    ;
    worldY = worldY2 - slot->unk44;

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_OUT_OF_DISPLAY_RANGE(worldX2, worldY2) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, slot->shared.base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (Coll_Player_Enemy_Attack(s, worldX, worldY)) {
        // Enemy defeated
        TaskDestroy(gCurTask);
        return;
    }

    if (I(slot->qUnk3C) <= (me->d.sData[0]) * TILE_WIDTH) {
        slot->qUnk3E = +Q(0.625);
    } else if (I(slot->qUnk3C) >= (me->d.sData[0] + me->d.uData[2]) * TILE_WIDTH) {
        slot->qUnk3E = -Q(0.625);
    } else if (slot->unk42 != 0) {
        slot->unk42--;
    } else {
        if ((I(gPlayer.qWorldX) <= worldX + 16) && (I(gPlayer.qWorldX) >= worldX - 16)) {
            slot->unk42 = 100;
            s->variant = 1;

            CreateSlotProjectile(worldX, worldY - 6);
            gCurTask->main = sub_806E374;
        }
    }

    UpdateSpriteAnimation(s);

    DisplaySprite(s);
    SPRITE_FLAG_SET(s, X_FLIP);
    DisplaySprite(s);
    SPRITE_FLAG_CLEAR(s, X_FLIP);
}

void sub_806E374(void)
{
    Slot *slot = TASK_DATA(gCurTask);
    Sprite *s = &slot->shared.s;
    MapEntity *me = slot->shared.base.me;
    CamCoord worldX, worldY;
    s32 worldX2, worldY2;
    s16 offsetWorldX;

    worldX = TO_WORLD_POS(slot->shared.base.meX, slot->shared.base.regionX);
    worldY = TO_WORLD_POS(me->y, slot->shared.base.regionY);

    worldX2 = worldX;
    worldY2 = worldY;

    worldX = worldX2 + I(slot->qUnk3C);
    worldY = worldY2 - slot->unk44;

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_OUT_OF_DISPLAY_RANGE(worldX2, worldY2) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, slot->shared.base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (Coll_Player_Enemy_Attack(s, worldX, worldY)) {
        // Enemy defeated
        TaskDestroy(gCurTask);
        return;
    }

    if (++slot->unk40 > 19) {
        slot->unk40 = 0;
        s->variant = 0;
        gCurTask->main = Task_SlotInit;
    }

    UpdateSpriteAnimation(s);

    DisplaySprite(s);
    SPRITE_FLAG_SET(s, X_FLIP);
    DisplaySprite(s);
    SPRITE_FLAG_CLEAR(s, X_FLIP);
}