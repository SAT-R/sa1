#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/player.h"
#include "game/stage/player_controls.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/interactables.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ Hitbox reserved;
    /* 0x44 */ Sprite s2;
    /* 0x78 */ u8 unk74;
    /* 0x78 */ s32 qLidAcceleration;
    /* 0x7C */ s32 qLidOffsetY;
    /* 0x80 */ s32 unk80;
    /* 0x80 */ s32 unk84;
} SteamExhaust; /* 0x88 */

void Task_SteamExhaust(void);
void Task_SteamExhaust2(void);
void TaskDestructor_SteamExhaust(struct Task *);

void CreateEntity_SteamExhaust(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_SteamExhaust, sizeof(SteamExhaust), 0x2000, 0, TaskDestructor_SteamExhaust);
    SteamExhaust *exhaust = TASK_DATA(t);
    Sprite *s = &exhaust->s;
    Sprite *s2 = &exhaust->s2;

    exhaust->base.regionX = regionX;
    exhaust->base.regionY = regionY;
    exhaust->base.me = me;
    exhaust->base.meX = me->x;
    exhaust->base.id = id;

    exhaust->qLidAcceleration = 0;
    exhaust->qLidOffsetY = 0;
    exhaust->unk74 = 0;
    exhaust->unk80 = 0;
    exhaust->unk84 = 0;

    SET_MAP_ENTITY_INITIALIZED(me);

    // s->graphics.dest = ALLOC_TILES_MAX(SA1_ANIM_STEAM_EXHAUST, SA1_ANIM_STEAM_EXHAUST_LID);
    s->graphics.dest = ALLOC_TILES(SA1_ANIM_STEAM_EXHAUST);
    s->graphics.anim = SA1_ANIM_STEAM_EXHAUST_LID;
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

    s2->graphics.dest = ALLOC_TILES_VARIANT(SA1_ANIM_STEAM_EXHAUST_LID, 2);
    s2->graphics.anim = SA1_ANIM_STEAM_EXHAUST_LID;
    s2->variant = 2;
    s2->oamFlags = SPRITE_OAM_ORDER(17);
    s2->graphics.size = 0;
    s2->animCursor = 0;
    s2->qAnimDelay = Q(0);
    s2->prevVariant = -1;
    s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s2->palId = 0;
    s2->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s2->frameFlags = SPRITE_FLAG(PRIORITY, 2);
}

void Task_SteamExhaust(void)
{
    SteamExhaust *exhaust = TASK_DATA(gCurTask);
    MapEntity *me = exhaust->base.me;
    Sprite *s = &exhaust->s;
    Sprite *s2 = &exhaust->s2;
    CamCoord worldX, worldY;
    s32 i;

    worldX = TO_WORLD_POS(exhaust->base.meX, exhaust->base.regionX);
    worldY = TO_WORLD_POS(me->y, exhaust->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    s2->x = worldX - gCamera.x;
    s2->y = worldY - gCamera.y;

    i = 0;
    do {
        if (sub_80096B0(s2, worldX, worldY, GET_SP_PLAYER_V1(i)) & COLL_FLAG_8) {
            GET_SP_PLAYER_MEMBER_V1(i, qWorldY) += Q(1);
            continue;
        } else {
            if (((GET_SP_PLAYER_MEMBER_V1(i, stoodObj) == s)
#ifdef BUG_FIX
                 // TODO: Either we check for s2, or this 2nd check can go away entirely!
                 || (GET_SP_PLAYER_MEMBER_V1(i, stoodObj) == s2)
#else
                 || (GET_SP_PLAYER_MEMBER_V1(i, stoodObj) == s)
#endif
                     )
                && (GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_STOOD_ON_OBJ)) {
                if (GET_SP_PLAYER_MEMBER_V1(i, frameInput) & gPlayerControls.jump) {
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_STOOD_ON_OBJ;
                    GET_SP_PLAYER_MEMBER_V1(i, stoodObj) = NULL;
                }

                {
                    s32 res = SA2_LABEL(sub_801E4E4)(I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)) - 19, I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)),
                                                     GET_SP_PLAYER_MEMBER_V1(i, layer), -8, NULL, SA2_LABEL(sub_801EE64));

                    if (res < 0) {
                        GET_SP_PLAYER_MEMBER_V1(i, qWorldY) += Q(res);
                    }
                }
            } else {
                if (sub_80096B0(s, worldX, worldY, GET_SP_PLAYER_V1(i))) {
                    s32 res = SA2_LABEL(sub_801E4E4)(I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)) - 19, I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)),
                                                     GET_SP_PLAYER_MEMBER_V1(i, layer), -8, NULL, SA2_LABEL(sub_801EE64));

                    if (res < 0) {
                        GET_SP_PLAYER_MEMBER_V1(i, qWorldY) += Q(res);
                    }
                }
            }
        }
    } while (++i < gNumSingleplayerCharacters);

    if (IS_OUT_OF_DISPLAY_RANGE(worldX, worldY) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, exhaust->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (Mod(gStageTime, 160) == 0) {
        exhaust->unk84 = 0x66;
        exhaust->unk74 = 0;
        exhaust->qLidAcceleration = -Q(5);
        exhaust->qLidOffsetY = +Q(0);
        exhaust->unk80 = 3;

        s->graphics.anim = SA1_ANIM_STEAM_EXHAUST;
        s->variant = 0;
        s->prevVariant = -1;

        m4aSongNumStart(SE_182);

        gCurTask->main = Task_SteamExhaust2;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    UpdateSpriteAnimation(s2);
    DisplaySprite(s2);
}

void Task_SteamExhaust2(void)
{
    SteamExhaust *exhaust = TASK_DATA(gCurTask);
    MapEntity *me = exhaust->base.me;
    CamCoord worldX, worldY;
    Sprite *s = &exhaust->s;
    Sprite *s2 = &exhaust->s2;
    s32 i;

    worldX = TO_WORLD_POS(exhaust->base.meX, exhaust->base.regionX);
    worldY = TO_WORLD_POS(me->y, exhaust->base.regionY);

    exhaust->qLidAcceleration += Q(37. / 256.);
    exhaust->qLidOffsetY += exhaust->qLidAcceleration;

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    s2->x = worldX - gCamera.x;
    s2->y = worldY - gCamera.y + I(exhaust->qLidOffsetY);

    i = 0;
    do {
        if (GetBit(exhaust->unk74, i)) {
            GET_SP_PLAYER_MEMBER_V1(i, qWorldY) += exhaust->qLidAcceleration;

            if (GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_IN_AIR) {
                ClearBit(exhaust->unk74, i);
            }

            if (!Coll_Player_Entity_Intersection(s2, worldX, worldY + I(exhaust->qLidOffsetY), GET_SP_PLAYER_V1(i))) {
                ClearBit(exhaust->unk74, i);
            }
        }

        if (Coll_Player_PlatformCrumbling(s2, worldX, worldY + I(exhaust->qLidOffsetY), GET_SP_PLAYER_V1(i))) {
            SetBit(exhaust->unk74, i);

            GET_SP_PLAYER_MEMBER_V1(i, qWorldY) += Q(1);
        }

        sub_80096B0(s, worldX, worldY, GET_SP_PLAYER_V1(i));
    } while (++i < gNumSingleplayerCharacters);

    if (exhaust->qLidOffsetY >= 0) {
        if (--exhaust->unk80 != 0) {
            exhaust->qLidAcceleration = -Div(exhaust->qLidAcceleration * 2, 5);
            exhaust->unk74 = 0;
            exhaust->qLidOffsetY = 0;
        } else {
            s->prevVariant = -1;
            s->graphics.anim = SA1_ANIM_STEAM_EXHAUST_LID;
            s->variant = 0;
            gCurTask->main = Task_SteamExhaust;
        }
    }

    if (--exhaust->unk84 == 48) {
        s->prevVariant = -1;
        s->graphics.anim = SA1_ANIM_STEAM_EXHAUST;
        s->variant = 1;

        UpdateSpriteAnimation(s);
    } else if (((exhaust->unk84 + 1) >= 50) && ((exhaust->unk84 + 1) < 97)) {
        s32 i = 0;
        do {
            Hitbox *hb = &GET_SP_PLAYER_SPR_INFO_V1(i)->s.hitboxes[0];
            if (hb->index != HITBOX_STATE_INACTIVE
                && HB_COLLISION(worldX, worldY, s->hitboxes[1].b, I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)),
                                I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)), (&GET_SP_PLAYER_SPR_INFO_V1(i)->s.hitboxes[0])->b)) {
                if (!(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD)) {
                    Coll_DamagePlayer(GET_SP_PLAYER_V1(i));
                }
            }
        } while (++i < gNumSingleplayerCharacters);

        UpdateSpriteAnimation(s);
    } else if (exhaust->unk84 < 48) {
        if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
            s->prevVariant = -1;
            s->graphics.anim = SA1_ANIM_STEAM_EXHAUST_LID;
            s->variant = 0;
        }

        UpdateSpriteAnimation(s);
    }

    DisplaySprite(s);
    UpdateSpriteAnimation(s2);
    DisplaySprite(s2);
}

void TaskDestructor_SteamExhaust(struct Task *t)
{
    SteamExhaust *exhaust = TASK_DATA(t);
    VramFree(exhaust->s.graphics.dest);
    VramFree(exhaust->s2.graphics.dest);
}