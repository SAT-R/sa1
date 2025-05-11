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
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ EntityShared shared;
    /* 0x3C */ s32 qUnk3C;
    /* 0x40 */ s32 qUnk40;
    /* 0x44 */ s16 unk44;
    /* 0x46 */ s16 unk46;
    /* 0x48 */ s32 unk48;
    /* 0x4C */ u8 unk4C;
    /* 0x44 */ u16 unk4E;
    /* 0x48 */ s32 unk50;
    /* 0x48 */ s32 unk54;
    /* 0x46 */ s16 unk58;
    /* 0x46 */ s16 unk5A;
} Tentou;

void Task_TentouMain(void);
void sub_8074928(void);

void CreateEntity_Tentou(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_TentouMain, sizeof(Tentou), 0x2000, 0, TaskDestructor_EntityShared);
    Tentou *tentou = TASK_DATA(t);
    Sprite *s = &tentou->shared.s;

    tentou->shared.base.regionX = regionX;
    tentou->shared.base.regionY = regionY;
    tentou->shared.base.me = me;
    tentou->shared.base.meX = me->x;
    tentou->shared.base.id = id;

    tentou->qUnk3C = -Q(0.625);
    tentou->qUnk40 = Q(0);
    tentou->unk44 = 0;
    tentou->unk46 = 0;
    tentou->unk48 = 0;
    tentou->unk4C = me->d.sData[1];
    tentou->unk50 = 0;
    tentou->unk54 = 0;

    // NOTE: x|y set to world- not screen-pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_TENTOU);
    s->graphics.anim = SA1_ANIM_TENTOU;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    if (I(gPlayer.qWorldX) >= TO_WORLD_POS(tentou->shared.base.meX, tentou->shared.base.regionX)) {
        tentou->qUnk3C = +Q(0.625);
        tentou->unk48 |= 0x400;
    }

    if (me->d.sData[0] >= 0) {
        tentou->unk58 = 8;
        tentou->unk4E = 0;
        tentou->unk5A = 0;
    } else {
        tentou->unk58 = 8;
        tentou->unk4E = 0x40;
        tentou->unk5A = 0;
    }

    // NOTE: *sigh* Why did they even set this in the if-else above?
    tentou->unk5A = 8;

    tentou->unk4E = 0;

    UpdateSpriteAnimation(s);
}

// (91.64%) https://decomp.me/scratch/CVrOt
NONMATCH("asm/non_matching/game/enemies/Tentou__Task_TantouMain.inc", void Task_TentouMain(void))
{
    Tentou *tentou;
    // register Sprite *s asm("r5");
    Sprite *s;
    MapEntity *me;
    s32 worldX;
    s32 worldY;
    s32 worldX2, worldY2;
    s16 offsetWorldX;
    s32 dtUnk50;
    s32 dtUnk54;
    s32 dtUnk50Shift;
    s32 dtUnk54Shift;
    s32 v;

    tentou = TASK_DATA(gCurTask);
    s = &tentou->shared.s;
    me = tentou->shared.base.me;

    worldX = TO_WORLD_POS(tentou->shared.base.meX, tentou->shared.base.regionX);
    worldY = TO_WORLD_POS(me->y, tentou->shared.base.regionY);

    worldX2 = worldX;
    worldY2 = worldY;

    dtUnk50 = tentou->unk50;
    tentou->unk50 = QS(me->d.uData[2] * TILE_WIDTH) * SIN((tentou->unk58 * (tentou->unk4E & 0x7F)) & ONE_CYCLE) >> 14;
    dtUnk50Shift = tentou->unk50 - dtUnk50;

    dtUnk54 = tentou->unk54;
    tentou->unk54 = QS(me->d.uData[3] * TILE_WIDTH) * COS((tentou->unk5A * (tentou->unk4E & 0x3F)) & ONE_CYCLE) >> 14;
    dtUnk54Shift = tentou->unk54 - dtUnk54;

    tentou->unk4E++;
    if (tentou->unk4E == 0x40 || tentou->unk4E == 0x80) {
        tentou->unk46 = 0;
        tentou->shared.s.variant = 0;
        gCurTask->main = sub_8074928;
    }
    tentou->unk4E = tentou->unk4E & 0x7F;

    s->x = worldX2 - gCamera.x + (dtUnk50 = (dtUnk50Shift >> 5));

    if ((s->y = Mod(dtUnk54Shift >> 4, 0x40)) != 0x3F) {
        s->y = worldY2 - gCamera.y - Mod(dtUnk54Shift >> 4, 0x40);

        if (Coll_Player_Enemy_Attack(s, worldX + dtUnk50, worldY - (dtUnk54Shift >> 4))) {
            // Enemy defeated
            TaskDestroy(gCurTask);
            return;
        }
    } else {
        if (Coll_Player_Enemy_Attack(s, worldX + dtUnk50, worldY)) {
            // Enemy defeated
            TaskDestroy(gCurTask);
            return;
        }
        s->y = worldY2 - gCamera.y;
    }

    if (IS_OUT_OF_DISPLAY_RANGE(worldX2, worldY2) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, tentou->shared.base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    UpdateSpriteAnimation(s);

    DisplaySprite(s);
    SPRITE_FLAG_SET(s, X_FLIP);
    DisplaySprite(s);
    SPRITE_FLAG_CLEAR(s, X_FLIP);
}
END_NONMATCH
