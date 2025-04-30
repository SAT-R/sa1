#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ EntityShared shared;
    /* 0x3C */ s16 unk3C;
    /* 0x40 */ s32 qUnk40;
    /* 0x44 */ s16 unk44;
    /* 0x46 */ s16 qUnk46;
    /* 0x48 */ u8 unk48;
    /* 0x49 */ u8 unk49;
} Rhinotank;

void Task_RhinotankInit(void);
void Task_806CBD0(void);
void sub_806C9A0(void);

void CreateEntity_Rhinotank(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_RhinotankInit, sizeof(Rhinotank), 0x2000, 0, TaskDestructor_EntityShared);
    Rhinotank *rhinotank = TASK_DATA(t);
    Sprite *s = &rhinotank->shared.s;

    rhinotank->shared.base.regionX = regionX;
    rhinotank->shared.base.regionY = regionY;
    rhinotank->shared.base.me = me;
    rhinotank->shared.base.meX = me->x;
    rhinotank->shared.base.id = id;

    rhinotank->qUnk46 = -Q(0.625);
    rhinotank->qUnk40 = 0;
    rhinotank->unk3C = Q(0);
    rhinotank->unk44 = 0;
    rhinotank->unk48 = 0;
    rhinotank->unk49 = 0;

    // NOTE: x|y set to world- not screen-pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_RHINOTANK);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_RHINOTANK;
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

// (95.96%) https://decomp.me/scratch/luokt
NONMATCH("asm/non_matching/game/enemies/Rhinotank__Task_RhinotankInit.inc", void Task_RhinotankInit(void))
{
    Rhinotank *rhinotank = TASK_DATA(gCurTask);
    Sprite *s = &rhinotank->shared.s;
    MapEntity *me = rhinotank->shared.base.me;
    s32 worldX, worldY;
    CamCoord worldX2, worldY2;
    u8 sp08;

    worldX = TO_WORLD_POS(rhinotank->shared.base.meX, rhinotank->shared.base.regionX);
    worldY = TO_WORLD_POS(me->y, rhinotank->shared.base.regionY);

    worldX2 = worldX;
    worldY2 = worldY;

    rhinotank->qUnk40 += rhinotank->qUnk46;

    if (rhinotank->unk49 > 0) {
        rhinotank->unk49--;

        if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            rhinotank->qUnk40 += rhinotank->unk49 * 13;
        } else {
            rhinotank->qUnk40 -= rhinotank->unk49 * 13;
        }
    }

    worldX2 += Div(rhinotank->qUnk40, 0x100);
    worldY2 += rhinotank->unk3C;

    s->x = worldX2 - gCamera.x;
    s->y = worldY2 - gCamera.y;

    if (IS_OUT_OF_DISPLAY_RANGE(worldX2, worldY2) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, rhinotank->shared.base.meX);
        TaskDestroy(gCurTask);
        return;
    } else if (Coll_Player_Enemy_Attack(s, worldX2, worldY2)) {
        TaskDestroy(gCurTask);
        return;
    } else {
        rhinotank->unk3C += sa2__sub_801F07C(worldY2, worldX2, 1, +8, &sp08, SA2_LABEL(sub_801EE64));

        if (I(rhinotank->qUnk40) <= (me->d.sData[0] + 1) * TILE_WIDTH) {
            if (~s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
                if (rhinotank->unk48) {
                    rhinotank->qUnk40 += Q(3);
                }

                rhinotank->unk44 = 0;
                rhinotank->qUnk46 = +Q(0.625);
                s->variant = 2;
                gCurTask->main = sub_806C9A0;
            }
        } else if (I(rhinotank->qUnk40) >= ((me->d.sData[0] + me->d.uData[2]) - 1) * TILE_WIDTH) {
            if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
                if (rhinotank->unk48) {
                    rhinotank->qUnk40 -= Q(3);
                }

                rhinotank->unk44 = 0;
                rhinotank->qUnk46 = -Q(0.625);

                s->variant = 2;
                gCurTask->main = sub_806C9A0;
            }
        } else if ((rhinotank->unk48 == 0) && I(gPlayer.qWorldY) <= (worldY2 + 8) && (worldY2 - 32 <= I(gPlayer.qWorldY))) {
            if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
                if ((I(gPlayer.qWorldX) >= worldX2) && (worldX2 + 80 >= I(gPlayer.qWorldX))) {
                    rhinotank->unk48 = 1;
                    rhinotank->unk44 = 0;
                    rhinotank->qUnk46 = +Q(3);
                    s->variant = 1;
                    gCurTask->main = Task_806CBD0;
                }
            } else {
                if ((I(gPlayer.qWorldX) <= worldX2) && (worldX2 - 80 <= I(gPlayer.qWorldX))) {
                    rhinotank->unk48 = 1;
                    rhinotank->unk44 = 0;
                    rhinotank->qUnk46 = -Q(3);
                    s->variant = 1;
                    gCurTask->main = Task_806CBD0;
                }
            }
        }
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}
END_NONMATCH