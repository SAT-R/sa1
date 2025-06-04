#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/ui.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 unk3C;
} PanelGate;

void Task_PanelGate_Vertical(void);
void Task_PanelGate_Vertical2(void);
void Task_PanelGate_Horizontal(void);
void Task_PanelGate_Horizontal2(void);
void TaskDestructor_PanelGate(struct Task *t);
bool32 sub_8081C04(PanelGate *gate, Sprite *s, CamCoord worldX, CamCoord worldY);
bool32 sub_8081F50(PanelGate *gate, Sprite *s, CamCoord worldX, CamCoord worldY);

void CreateEntity_PanelGate_Vertical(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PanelGate_Vertical, sizeof(PanelGate), 0x2000, 0, TaskDestructor_PanelGate);
    PanelGate *gate = TASK_DATA(t);
    Sprite *s = &gate->s;

    gate->base.regionX = regionX;
    gate->base.regionY = regionY;
    gate->base.me = me;
    gate->base.meX = me->x;
    gate->base.id = id;

    gate->unk3C = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_PANEL_GATE_SIDEWAYS);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_PANEL_GATE_SIDEWAYS;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    if (me->d.sData[0] != 0) {
        SPRITE_FLAG_SET(s, X_FLIP);
#ifndef BUG_FIX
        // NOTE: Already set above.
        s->frameFlags |= SPRITE_FLAG(PRIORITY, 2);
#endif
    }

    UpdateSpriteAnimation(s);
}

void Task_PanelGate_Vertical(void)
{
    PanelGate *gate = TASK_DATA(gCurTask);
    Sprite *s = &gate->s;
    MapEntity *me = gate->base.me;
    CamCoord worldX, worldY;
    s32 i;

    worldX = TO_WORLD_POS(gate->base.meX, gate->base.regionX);
    worldY = TO_WORLD_POS(me->y, gate->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    i = 0;
    do {
        if (!(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD)) {
            if (sub_8081C04(gate, s, worldX, worldY)) {
                gCurTask->main = Task_PanelGate_Vertical2;
            }
        }
    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, gate->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    DisplaySprite(s);
}

void Task_PanelGate_Vertical2(void)
{
    PanelGate *gate = TASK_DATA(gCurTask);
    Sprite *s = &gate->s;
    MapEntity *me = gate->base.me;
    CamCoord worldX, worldY;
    s32 i;

    worldX = TO_WORLD_POS(gate->base.meX, gate->base.regionX);
    worldY = TO_WORLD_POS(me->y, gate->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, gate->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    i = 0;
    do {
        if (!(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD)) {
            if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
                u32 res = Coll_Player_Entity_Intersection(s, worldX - 6, worldY, GET_SP_PLAYER_V1(i));
                if (res) {
                    if (GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) > Q(0)) {
                        sub_800AFDC(s, worldX, worldY, GET_SP_PLAYER_V1(i), 0);
                    }
                }
            } else {
                u32 res = Coll_Player_Entity_Intersection(s, worldX + 6, worldY, GET_SP_PLAYER_V1(i));
                if (res) {
                    if (GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) < Q(0)) {
                        sub_800AFDC(s, worldX, worldY, GET_SP_PLAYER_V1(i), 0);
                    }
                }
            }
        }
    } while (++i < gNumSingleplayerCharacters);

    if (--gate->unk3C == 0) {
        s->variant = 0;
        gCurTask->main = Task_PanelGate_Vertical;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void CreateEntity_PanelGate_Horizontal(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PanelGate_Horizontal, sizeof(PanelGate), 0x2000, 0, TaskDestructor_PanelGate);
    PanelGate *gate = TASK_DATA(t);
    Sprite *s = &gate->s;

    gate->base.regionX = regionX;
    gate->base.regionY = regionY;
    gate->base.me = me;
    gate->base.meX = me->x;
    gate->base.id = id;

    gate->unk3C = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_PANEL_GATE_UPDOWN);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_PANEL_GATE_UPDOWN;
    s->variant = 1;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    if (me->d.sData[0] != 0) {
        SPRITE_FLAG_SET(s, Y_FLIP);
#ifndef BUG_FIX
        // NOTE: Already set above.
        s->frameFlags |= SPRITE_FLAG(PRIORITY, 2);
#endif
    }

    UpdateSpriteAnimation(s);
}

void Task_PanelGate_Horizontal(void)
{
    PanelGate *gate = TASK_DATA(gCurTask);
    Sprite *s = &gate->s;
    MapEntity *me = gate->base.me;
    CamCoord worldX, worldY;
    s32 i;

    worldX = TO_WORLD_POS(gate->base.meX, gate->base.regionX);
    worldY = TO_WORLD_POS(me->y, gate->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    i = 0;
    do {
        if (!(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD)) {
            if (sub_8081F50(gate, s, worldX, worldY)) {
                gCurTask->main = Task_PanelGate_Horizontal2;
            }
        }
    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, gate->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    DisplaySprite(s);
}

void Task_PanelGate_Horizontal2(void)
{
    PanelGate *gate = TASK_DATA(gCurTask);
    Sprite *s = &gate->s;
    MapEntity *me = gate->base.me;
    CamCoord worldX, worldY;
    s32 i;

    worldX = TO_WORLD_POS(gate->base.meX, gate->base.regionX);
    worldY = TO_WORLD_POS(me->y, gate->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, gate->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    i = 0;
    do {
        if (!(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD)) {
            if (s->frameFlags & SPRITE_FLAG_MASK_Y_FLIP) {
                u32 res = Coll_Player_Entity_Intersection(s, worldX, worldY + 5, GET_SP_PLAYER_V1(i));
                if (res) {
                    if (GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) > Q(0)) {
                        sub_80096B0(s, worldX, worldY, GET_SP_PLAYER_V1(i));
                    }
                }
            } else {
                u32 res = Coll_Player_Entity_Intersection(s, worldX, worldY - 5, GET_SP_PLAYER_V1(i));
                if (res) {
                    if (GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) < Q(0)) {
                        sub_80096B0(s, worldX, worldY, GET_SP_PLAYER_V1(i));
                    }
                }
            }
        }
    } while (++i < gNumSingleplayerCharacters);

    if (--gate->unk3C == 0) {
        s->variant = 1;
        gCurTask->main = Task_PanelGate_Horizontal;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}
