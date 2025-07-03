#include "global.h"
#include "core.h"
#include "trig.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/player.h"
#include "game/water_effects.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"

#include "constants/animations.h"
#include "constants/char_states.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u16 unk3C;
    /* 0x40 */ s32 qUnk40;
    /* 0x44 */ s32 qUnk44;
    /* 0x48 */ s16 unk48;
    /* 0x4A */ s16 unk4A;
    /* 0x4C */ u16 unk4C;
} PlatformThin;

void Task_PlatformThin(void);
void Task_PlatformThin_Falling(void);
void TaskDestructor_PlatformThin(struct Task *t);

extern const AnimId sPlatformThinAnims[NUM_LEVEL_IDS];

void CreateEntity_PlatformThin(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PlatformThin, sizeof(PlatformThin), 0x2010, 0, TaskDestructor_PlatformThin);
    PlatformThin *platform = TASK_DATA(t);
    SpriteBase *base = &platform->base;
    Sprite *s = &platform->s;

    base->regionX = regionX;
    base->regionY = regionY;
    base->me = me;
    base->meX = me->x;
    base->id = id;

    platform->qUnk40 = 0;
    platform->qUnk44 = 0;
    platform->unk4C = 0;

    if (me->d.uData[2] > me->d.uData[3]) {
        if (me->d.sData[0] >= 0) {
            platform->unk48 = 4;
            platform->unk3C = 0;
            platform->unk4A = 0;
        } else {
            platform->unk48 = 4;
            platform->unk3C = 0x80;
            platform->unk4A = 0;
        }
    } else {
        if (me->d.sData[1] >= 0) {
            platform->unk48 = 0;
            platform->unk4A = 4;
            platform->unk3C = 0;
        } else {
            platform->unk48 = 0;
            platform->unk4A = 4;
            platform->unk3C = 0x80;
        }
    }

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_HORZ_1);

    s->variant = 0;

    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
#ifdef BUG_FIX
        // Prevent overflow
        s->graphics.anim = sPlatformThinAnims[gCurrentLevel % ARRAY_COUNT(sPlatformThinAnims)];
#else
        s->graphics.anim = sPlatformThinAnims[gCurrentLevel];
#endif
    } else {
        s->graphics.anim = SA1_ANIM_PLATFORM_HORZ_1;
    }
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = FALSE;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    UpdateSpriteAnimation(s);
}

// TODO: Fake-match
void Task_PlatformThin(void)
{
    s32 sp00 = 0;
    s32 sp04 = 0;
    s32 i = 0;
    PlatformThin *platform = TASK_DATA(gCurTask);
    Sprite *s = &platform->s;
    MapEntity *me = platform->base.me;
    CamCoord worldX, worldY;
    s32 diff;
    s32 unk4A;

    if (platform->unk48 != 0) {
#ifndef NON_MATCHING
        register s32 diff asm("r5") = platform->qUnk40;
#else
        s32 diff = platform->qUnk40;
#endif
        platform->qUnk40 = (((me->d.uData[2] << 11) * SIN(platform->unk48 * (((gStageTime + platform->unk3C) & 0xFF)) & 0x3FF)) >> 14);
        diff = platform->qUnk40 - diff;
        asm("" ::"r"(diff));
        sp00 = diff;
    }

    if (platform->unk4A != 0) {
#ifndef NON_MATCHING
        register s32 diff asm("r5") = platform->qUnk44;
#else
        s32 diff = platform->qUnk40;
#endif
        platform->qUnk44 = (((me->d.uData[3] << 11) * SIN(platform->unk4A * (((gStageTime + platform->unk3C) & 0xFF)) & 0x3FF)) >> 14);
        diff = platform->qUnk44 - diff;
        asm("" ::"r"(diff));
        sp04 = diff;
    }

    worldX = TO_WORLD_POS(platform->base.meX, platform->base.regionX);
    worldY = TO_WORLD_POS(me->y, platform->base.regionY);

    s->x = worldX - gCamera.x + I(platform->qUnk40);
    s->y = worldY - gCamera.y + I(platform->qUnk44);

    i = 0;
    do {
        Player *p = &PLAYER(i);

        if ((p->moveState & MOVESTATE_STOOD_ON_OBJ) && (p->stoodObj == s)) {
            p->qWorldX += sp00;

            if (!GRAVITY_IS_INVERTED) {
                p->qWorldY += +Q(1) + sp04;
            } else {
                p->qWorldY += -Q(2) + sp04;
            }
        }

        if (!(p->moveState & MOVESTATE_IA_OVERRIDE)) {
            Coll_Player_PlatformCrumbling(s, worldX + I(platform->qUnk40), worldY + I(platform->qUnk44), p);
        }
    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_DISPLAY_RANGE(worldX, worldY) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, platform->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (!(gPlayer.moveState & MOVESTATE_IA_OVERRIDE)) {
        if (((gPlayer.moveState & MOVESTATE_STOOD_ON_OBJ) && (gPlayer.stoodObj == s))
            || ((gNumSingleplayerCharacters == NUM_SINGLEPLAYER_CHARS_MAX) && (gPartner.moveState & MOVESTATE_STOOD_ON_OBJ)
                && (gPartner.stoodObj == s))) {
            if (platform->unk4C != 0x100) {
                platform->unk4C += 0x10;
            }
        } else {
            if (platform->unk4C != 0) {
                platform->unk4C -= 0x10;
            }
        }

        if (!GRAVITY_IS_INVERTED) {
            s->y += SIN(platform->unk4C) >> 12;
        } else {
            s->y -= SIN(platform->unk4C) >> 12;
        }
    }

    DisplaySprite(s);
}

void CreateEntity_PlatformThin_Falling(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PlatformThin_Falling, sizeof(PlatformThin), 0x2000, 0, TaskDestructor_PlatformThin);
    PlatformThin *platform = TASK_DATA(t);
    SpriteBase *base = &platform->base;
    Sprite *s = &platform->s;

    base->regionX = regionX;
    base->regionY = regionY;
    base->me = me;
    base->meX = me->x;
    base->id = id;

    platform->qUnk40 = 0;
    platform->qUnk44 = 0;
    platform->unk4C = 0;
    platform->unk48 = 0;
    platform->unk4A = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_HORZ_1);

    s->variant = 0;

    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
#ifdef BUG_FIX
        // Prevent overflow
        s->graphics.anim = sPlatformThinAnims[gCurrentLevel % ARRAY_COUNT(sPlatformThinAnims)];
#else
        s->graphics.anim = sPlatformThinAnims[gCurrentLevel];
#endif
    } else {
        s->graphics.anim = SA1_ANIM_PLATFORM_HORZ_1;
    }
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = FALSE;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    UpdateSpriteAnimation(s);
}

#if 0
void TaskDestructor_PlatformThin(struct Task *t)
{
    PlatformThin *platform = TASK_DATA(t);
    VramFree(platform->s.graphics.dest);
}
#endif