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

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ SpriteBase base2;
    /* 0x48 */ Sprite s2;
    /* 0x78 */ s16 qUnk78;
    /* 0x7A */ s16 qUnk7A;
    /* 0x7C */ s16 qUnk7C;
    /* 0x7E */ s16 qUnk7E;
    /* 0x80 */ s16 unk80;
} Yukimaru;

void Task_YukimaruGroundInit(void);
void Task_8071BFC(void);
void TaskDestructor_YukimaruGround(struct Task *t);

void CreateEntity_Yukimaru(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_YukimaruGroundInit, sizeof(Yukimaru), 0x2000, 0, TaskDestructor_YukimaruGround);
    Yukimaru *yukimaru = TASK_DATA(t);
    Sprite *s = &yukimaru->s;

    yukimaru->base.regionX = regionX;
    yukimaru->base.regionY = regionY;
    yukimaru->base.me = me;
    yukimaru->base.meX = me->x;
    yukimaru->base.id = id;

    yukimaru->qUnk78 = -Q(0.625);
    yukimaru->qUnk7A = +Q(0);
    yukimaru->qUnk7C = +Q(0);
    yukimaru->qUnk7E = +Q(0);
    yukimaru->unk80 = +Q(0);

    // NOTE: x|y set to world- not screen-pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_YUKIMARU);
    s->oamFlags = SPRITE_OAM_ORDER(0);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_YUKIMARU;
    s->variant = 1;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    UpdateSpriteAnimation(s);

    s = &yukimaru->s2;
    yukimaru->base2.regionX = regionX;
    yukimaru->base2.regionY = regionY;
    yukimaru->base2.me = me;
    yukimaru->base2.meX = me->x;
    yukimaru->base2.id = id;

    yukimaru->qUnk78 = -Q(0.625);
    yukimaru->qUnk7A = +Q(0);
    yukimaru->qUnk7C = +Q(0);
    yukimaru->qUnk7E = +Q(0);

    // NOTE: x|y set to world- not screen-pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_YUKIMARU);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_YUKIMARU;
    s->variant = 1;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    UpdateSpriteAnimation(s);
}

NONMATCH("asm/non_matching/game/enemies/Yukimaru__YukimaruGroundInit.inc", void Task_YukimaruGroundInit(void))
{
    Yukimaru *yukimaru = TASK_DATA(gCurTask);
    Sprite *s = &yukimaru->s;
    Sprite *s2 = &yukimaru->s2;
    MapEntity *me = yukimaru->base.me;
    CamCoord worldX, worldY;
    s32 worldX2, worldY2;
    CamCoord deltaX, deltaY;

    worldX = TO_WORLD_POS(yukimaru->base.meX, yukimaru->base.regionX);
    worldY = TO_WORLD_POS(me->y, yukimaru->base.regionY);

    yukimaru->qUnk7A += yukimaru->qUnk78;

    deltaX = worldX + I(yukimaru->qUnk7A);
    deltaY = worldY - 6;

    worldX2 = worldX;
    worldY2 = worldY;

    s->x = deltaX - gCamera.x;
    s->y = deltaY - gCamera.y;

    s2->x = deltaX - gCamera.x;
    s2->y = deltaY - gCamera.y;

    if (IS_OUT_OF_DISPLAY_RANGE(worldX2, worldY2) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, yukimaru->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (Coll_Player_Enemy_Attack(s, deltaX, deltaY)) {
        TaskDestroy(gCurTask);
        return;
    }

    yukimaru->qUnk7C += SA2_LABEL(sub_801F07C)(deltaY, deltaX, 1, +8, NULL, SA2_LABEL(sub_801EE64));

    if (I(yukimaru->qUnk7A) <= (me->d.sData[0]) * TILE_WIDTH) {
        yukimaru->qUnk78 = +Q(0.625);
    } else if (I(yukimaru->qUnk7A) >= (me->d.sData[0] + me->d.uData[2]) * TILE_WIDTH) {
        yukimaru->qUnk78 = -Q(0.625);
    } else if (yukimaru->unk80 != 0) {
        yukimaru->unk80--;
    } else {
        if ((I(gPlayer.qWorldY) <= deltaY) && (I(gPlayer.qWorldX) <= deltaX + 8) && (deltaX - 8 <= I(gPlayer.qWorldX))) {
            yukimaru->unk80 = 60;
            yukimaru->qUnk7E = Q(0);
            s->variant = 0;
            s2->variant = 0;
            gCurTask->main = Task_8071BFC;
        }
    }

    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);
    DisplaySprite(s);
    SPRITE_FLAG_SET(s2, X_FLIP);
    DisplaySprite(s2);
    SPRITE_FLAG_CLEAR(s2, X_FLIP);
}
END_NONMATCH
