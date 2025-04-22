#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"
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
    /* 0x3C */ s32 qUnk3C;
    /* 0x40 */ s16 qUnk40;
    /* 0x44 */ s16 frames;
    /* 0x44 */ u16 unk44;
    /* 0x46 */ s16 unk46;
} Mirror; /* 0x48 */

void Task_Mirror(void);
void Task_806FE2C(void);

void CreateMirrorProjectile(CamCoord worldX, CamCoord worldY, u8);

#define FIREBALL_SPAWN_RATE ZONE_TIME_TO_INT(0, 4)

void CreateEntity_Mirror(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    if ((LEVEL_TO_ZONE(gCurrentLevel) != ZONE_6) || (LOADED_SAVE->difficultyLevel == DIFFICULTY_NORMAL)) {
        struct Task *t = TaskCreate(Task_Mirror, sizeof(Mirror), 0x2000, 0, TaskDestructor_EntityShared);
        Mirror *mirror = TASK_DATA(t);
        Sprite *s = &mirror->shared.s;

        mirror->shared.base.regionX = regionX;
        mirror->shared.base.regionY = regionY;

        mirror->shared.base.me = me;
        mirror->shared.base.meX = me->x;
        mirror->shared.base.id = id;

        mirror->qUnk40 = -Q(0.625);
        mirror->qUnk3C = Q(0);
        mirror->unk44 = 0;
        mirror->frames = 0;
        mirror->unk46 = 0;

        s->x = TO_WORLD_POS(me->x, regionX);
        s->y = TO_WORLD_POS(me->y, regionY);

        SET_MAP_ENTITY_INITIALIZED(me);

        s->graphics.dest = ALLOC_TILES(SA1_ANIM_MIRROR);
        s->oamFlags = SPRITE_OAM_ORDER(18);
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_MIRROR;
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

void Task_Mirror(void)
{
    Mirror *mirror = TASK_DATA(gCurTask);
    Sprite *s = &mirror->shared.s;
    MapEntity *me = mirror->shared.base.me;
    s32 prevWorldX, prevWorldY;
    CamCoord worldX, worldY;

    worldX = TO_WORLD_POS(mirror->shared.base.meX, mirror->shared.base.regionX);
    worldY = TO_WORLD_POS(me->y, mirror->shared.base.regionY);

    prevWorldX = worldX;
    prevWorldY = worldY;

    mirror->qUnk3C += mirror->qUnk40;

    worldX += I(mirror->qUnk3C);
    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_OUT_OF_DISPLAY_RANGE(prevWorldX, prevWorldY) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, mirror->shared.base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (s->hitboxes[0].index != HITBOX_STATE_INACTIVE) {
        if (HB_COLLISION(worldX, worldY, s->hitboxes[0].b, I(gPlayer.qWorldX), I(gPlayer.qWorldY), gPlayerBodyPSI.s.hitboxes[0].b)) {
            Coll_DamagePlayer(&gPlayer);
        }
    }

    if (I(mirror->qUnk3C) <= me->d.sData[0] * TILE_WIDTH) {
        mirror->qUnk40 = +Q(0.625);
    } else if (I(mirror->qUnk3C) >= (me->d.sData[0] + me->d.uData[2]) * TILE_WIDTH) {
        mirror->qUnk40 = -Q(0.625);
    } else if (mirror->unk46 != 0) {
        mirror->unk46--;
    } else {
        if (I(gPlayer.qWorldX) > worldX) {
            SPRITE_FLAG_SET(s, X_FLIP);
        } else {
            SPRITE_FLAG_CLEAR(s, X_FLIP);
        }

        mirror->unk46 = 90;
        mirror->frames = 0;
        s->variant = 1;
        gCurTask->main = Task_806FE2C;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_806FE2C(void)
{
    Mirror *mirror = TASK_DATA(gCurTask);
    Sprite *s = &mirror->shared.s;
    MapEntity *me = mirror->shared.base.me;
    s32 prevWorldX, prevWorldY;
    s16 screenX, screenY;
    CamCoord worldX, worldY;

    worldX = TO_WORLD_POS(mirror->shared.base.meX, mirror->shared.base.regionX);
    worldY = TO_WORLD_POS(me->y, mirror->shared.base.regionY);

    prevWorldX = worldX;
    prevWorldY = worldY;

    screenX = s->x;
    screenY = s->y;

    worldX += I(mirror->qUnk3C);
    s->x = (worldX)-gCamera.x;
    s->y = (prevWorldY)-gCamera.y;

    if (IS_OUT_OF_DISPLAY_RANGE(prevWorldX, prevWorldY) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, mirror->shared.base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (SA2_LABEL(sub_800C4FC)(s, worldX, worldY) != 0) {
        TaskDestroy(gCurTask);
        return;
    }

    if (++mirror->frames == 20) {
        if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            CreateMirrorProjectile(worldX + 8, worldY - 16, 1);
        } else {
            CreateMirrorProjectile(worldX - 8, worldY - 16, 0);
        }
    }

    if (mirror->frames == ZONE_TIME_TO_INT(0, 1)) {
        s->variant = 0;
        gCurTask->main = Task_Mirror;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}