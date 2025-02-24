#include "global.h"
#include "core.h"
#include "game/entity.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ u8 fillerC[0x30];
    /* 0x3C */ s32 qWorld;
    /* 0x40 */ u8 unk40;
    /* 0x41 */ u8 kind;
} ToggleGravity;

void Task_ToggleGravity(void);

// (61.51%) https://decomp.me/scratch/fywuq
NONMATCH("asm/non_matching/game/interactables/toggle_gravity__Task_ToggleGravity.inc", void Task_ToggleGravity(void))
{
    ToggleGravity *ia = TASK_DATA(gCurTask);
    MapEntity *me = ia->base.me;
    Player *p;
    s16 worldX, worldY;
    s16 screenX, screenY;
    s32 left;

    worldX = TO_WORLD_POS(ia->base.meX, ia->base.regionX);
    worldY = TO_WORLD_POS(me->y, ia->base.regionY);

    p = &gPlayer;
    if (PLAYER_IS_ALIVE) {
        u8 kind = ia->kind;
        if (kind > 2) {
            left = worldX + me->d.sData[0] * TILE_WIDTH;

            if ((left <= I(p->qWorldX)) && ((left + me->d.uData[2] * TILE_WIDTH) >= I(p->qWorldX))
                && (((ia->qWorld > Q(worldY)) && (p->qWorldY < Q(worldY))) || ((ia->qWorld < Q(worldY)) && (p->qWorldY > Q(worldY))))) {
                switch (kind) {
                    case 3: {
                        if (!(gStageFlags & STAGE_FLAG__GRAVITY_INVERTED)) {
                            gStageFlags |= STAGE_FLAG__GRAVITY_INVERTED;
                        } else {
                            gStageFlags &= ~STAGE_FLAG__GRAVITY_INVERTED;
                        }
                    } break;

                    case 4: {
                        gStageFlags &= ~STAGE_FLAG__GRAVITY_INVERTED;
                    } break;

                    default: {
                        gStageFlags |= STAGE_FLAG__GRAVITY_INVERTED;
                    } break;
                }
            }

            ia->qWorld = p->qWorldY;
        } else {
            // _0809558C
            s32 top = worldY + me->d.sData[1] * TILE_WIDTH;

            if ((top <= I(p->qWorldY)) && ((top + me->d.uData[3]) >= I(p->qWorldY))) {
                if (((ia->qWorld > Q(worldX)) && (p->qWorldX < Q(worldX))) || ((ia->qWorld < Q(worldX)) && (p->qWorldX > Q(worldX)))) {
                    switch (kind) {
                        case 0: {
                            if (!(gStageFlags & STAGE_FLAG__GRAVITY_INVERTED)) {
                                gStageFlags |= STAGE_FLAG__GRAVITY_INVERTED;
                            } else {
                                gStageFlags &= ~STAGE_FLAG__GRAVITY_INVERTED;
                            }
                        } break;

                        case 1: {
                            gStageFlags &= ~STAGE_FLAG__GRAVITY_INVERTED;
                        } break;

                        default: {
                            gStageFlags |= STAGE_FLAG__GRAVITY_INVERTED;
                        } break;
                    }
                }
            }

            ia->qWorld = p->qWorldX;
        }
    }
    // _08095616

    screenX = worldX - gCamera.x;
    screenY = worldY - gCamera.y;

    if (IS_OUT_OF_CAM_RANGE(screenX, screenY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, me->x);
        TaskDestroy(gCurTask);
        return;
    }
}
END_NONMATCH

void CreateEntity_ToggleGravity(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = NULL;
    ToggleGravity *ia;
    t = TaskCreate(Task_ToggleGravity, sizeof(ToggleGravity), 0x2000, 0, NULL);
    ia = TASK_DATA(t);

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.meX = me->x;
    ia->base.id = id;
    ia->unk40 = 0;

    if (me->d.uData[2] > me->d.uData[3]) {
        ia->kind = me->d.uData[1];
        ia->qWorld = gPlayer.qWorldY;
    } else {
        ia->kind = me->d.uData[0];
        ia->qWorld = gPlayer.qWorldX;
    }

    SET_MAP_ENTITY_INITIALIZED(me);
}
