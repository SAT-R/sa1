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
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s16 qUnk44;
    /* 0x46 */ u16 unk46;
    /* 0x48 */ u16 unk48;
} Hanabii;

void Task_HanabiiInit(void);

void CreateEntity_Hanabii(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_HanabiiInit, sizeof(Hanabii), 0x2000, 0, TaskDestructor_EntityShared);
    Hanabii *hanabii = TASK_DATA(t);
    Sprite *s = &hanabii->shared.s;

    hanabii->shared.base.regionX = regionX;
    hanabii->shared.base.regionY = regionY;
    hanabii->shared.base.me = me;
    hanabii->shared.base.meX = me->x;
    hanabii->shared.base.id = id;

    hanabii->qUnk44 = -Q(0.625);
    hanabii->qUnk3C = Q(0);
    hanabii->unk40 = 0;
    hanabii->unk46 = 0;
    hanabii->unk48 = 0;

    // NOTE: x|y set to world- not screen-pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_HANABII);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_HANABII;
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

#if 0
void Task_HanabiiInit(void)
{
    Hanabii *hanabii = TASK_DATA(gCurTask);
    Sprite *s = &hanabii->shared.s;
    MapEntity *me = hanabii->shared.base.me;
    CamCoord worldX, worldY;
    CamCoord deltaX, deltaY;
    CamCoord r2, r6;

    s16 screenX, screenY;

    worldX = TO_WORLD_POS(hanabii->shared.base.meX, hanabii->shared.base.regionX);
    worldY = TO_WORLD_POS(me->y, hanabii->shared.base.regionY);

    hanabii->qUnk3C += hanabii->qUnk44;

    deltaX = worldX - I(hanabii->qUnk3C);
    deltaY = worldY - hanabii->unk40;

    s->x = deltaX - gCamera.x;
    s->y = deltaX - gCamera.y;
    
    if (IS_OUT_OF_DISPLAY_RANGE(worldX, worldY)
    &&  IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, kuraa->shared.base.meX);
        TaskDestroy(gCurTask);
        return;
    }
    // _0806D6C8

    if(SA2_LABEL(sub_800C4FC)(s, deltaX, deltaY)) {
        TaskDestroy(gCurTask);
        return;
    }
    // _0806D6F0

    hanabii->unk40 += SA2_LABEL(sub_801F07C)(
        deltaY, deltaX, 1, +8, SA2_LABEL(sub_801EE64));

    r2 = I(gPlayer.qWorldX) - deltaX;
    r2 = r2*r2;
    r6 = I(gPlayer.qWorldY) - deltay;
    r6 = r6*r6;

    if(I(hanabii->qUnk3C) <= (me->d.sData[0] + 1) * TILE_WIDTH) {
        if(~s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            SPRITE_FLAG_SET(s, X_FLIP);
            hanabii->qUnk44 = Q(0.625);
        }
    } else {
        // _0806D768

    }
    // _0806D7DC

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}
#endif