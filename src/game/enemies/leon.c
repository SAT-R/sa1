#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"
#include "game/save.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/zones.h"

typedef struct {
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ EntityShared shared;
    /* 0x3C */ Hitbox reserved;
    /* 0x44 */ s32 qUnk44;
    /* 0x48 */ s16 qUnk48;
    /* 0x4A */ s16 unk4A;
    /* 0x4C */ s16 unk4C;
    /* 0x4E */ s16 unk4E;
} Leon;

void Task_LeonInit(void);
void Task_806ED3C(void);
void Task_806EEA4(void);

void CreateEntity_Leon(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    if ((LEVEL_TO_ZONE(gCurrentLevel) != ZONE_5) || (LOADED_SAVE->difficultyLevel == DIFFICULTY_NORMAL)) {
        // _0806E9C4

        struct Task *t = TaskCreate(Task_LeonInit, sizeof(Leon), 0x2000, 0, TaskDestructor_EntityShared);
        Leon *leon = TASK_DATA(t);
        Sprite *s = &leon->shared.s;

        leon->shared.base.regionX = regionX;
        leon->shared.base.regionY = regionY;
        leon->shared.base.me = me;
        leon->shared.base.meX = me->x;
        leon->shared.base.id = id;

        leon->qUnk48 = -Q(0.625);
        leon->qUnk44 = Q(0);
        leon->unk4C = 0;
        leon->unk4A = 0;

        // NOTE: x|y set to world- not screen-pos!
        s->x = TO_WORLD_POS(me->x, regionX);
        s->y = TO_WORLD_POS(me->y, regionY);

        SET_MAP_ENTITY_INITIALIZED(me);

        s->graphics.dest = ALLOC_TILES(SA1_ANIM_LEON);
        s->oamFlags = SPRITE_OAM_ORDER(18);
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_LEON;
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

// (93.69%) https://decomp.me/scratch/u2nil
NONMATCH("asm/non_matching/game/enemies/Leon__Task_LeonInit.inc", void Task_LeonInit(void))
{
    Leon *leon = TASK_DATA(gCurTask);
    Sprite *s = &leon->shared.s;
    MapEntity *me = leon->shared.base.me;
    CamCoord worldX, worldY;
    s32 worldX2, worldY2;
    CamCoord deltaX, deltaY;
    CamCoord aSquared, bSquared;
    u8 sp08;

    worldX = TO_WORLD_POS(leon->shared.base.meX, leon->shared.base.regionX);
    worldY = TO_WORLD_POS(me->y, leon->shared.base.regionY);

    worldX2 = worldX;
    worldY2 = worldY;

    leon->qUnk44 += leon->qUnk48;

    deltaX = worldX2 + I(leon->qUnk44);
    deltaY = worldY2 + leon->unk4C;

    s->x = deltaX - gCamera.x;
    s->y = deltaY - gCamera.y;

    if (IS_OUT_OF_DISPLAY_RANGE(worldX2, worldY2) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, leon->shared.base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (Coll_Player_Enemy_Attack(s, deltaX, deltaY)) {
        TaskDestroy(gCurTask);
        return;
    }

    leon->unk4C += SA2_LABEL(sub_801F07C)(deltaY + 3, deltaX, 1, +8, &sp08, SA2_LABEL(sub_801EE64));

    if (I(leon->qUnk44) <= me->d.sData[0] * TILE_WIDTH) {
        if (~s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            leon->qUnk48 = +Q(0.625);
            leon->unk4A = 0;
            s->variant = 2;
            gCurTask->main = Task_806ED3C;
            SPRITE_FLAG_SET(s, X_FLIP);
        }
    } else if (I(leon->qUnk44) >= (me->d.sData[0] + me->d.uData[2]) * TILE_WIDTH) {
        if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            leon->qUnk48 = -Q(0.625);
            leon->unk4A = 0;
            s->variant = 2;
            SPRITE_FLAG_CLEAR(s, X_FLIP);
            gCurTask->main = Task_806ED3C;
        }
    } else {
        if (leon->unk4E == 0) {
            if ((I(gPlayer.qWorldY) <= deltaY + 8) && (deltaY - 32 <= I(gPlayer.qWorldY))) {
                if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
                    if (I(gPlayer.qWorldX) >= deltaX && (deltaX + 80 >= I(gPlayer.qWorldX))) {
                        leon->unk4E = 60;
                        leon->unk4A = 0;
                        s->variant = 1;
                        gCurTask->main = Task_806EEA4;
                    }
                } else {
                    if ((I(gPlayer.qWorldX) <= deltaX) && (deltaX - 80 <= I(gPlayer.qWorldX))) {
                        leon->unk4E = 60;
                        leon->unk4A = 0;
                        s->variant = 1;
                        gCurTask->main = Task_806EEA4;
                    }
                }
            }
        } else {
            leon->unk4C--;
        }
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}
END_NONMATCH