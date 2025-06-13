#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/stage/player.h"
#include "game/sa1_sa2_shared/collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ u8 fillerC[0x30];
    /* 0x3C */ s16 v1x;
    /* 0x3E */ s16 v1y;
    /* 0x40 */ s16 unk40;
    /* 0x42 */ s16 unk42;
    /* 0x44 */ s16 unk44;
    /* 0x46 */ u16 v2x;
    /* 0x48 */ u16 v2y;
} TeleportOrb;

void Task_TeleportOrb(void);

void CreateEntity_TeleportOrb(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_TeleportOrb, sizeof(TeleportOrb), 0x2000, 0, NULL);
    TeleportOrb *orb = TASK_DATA(t);

    orb->base.regionX = regionX;
    orb->base.regionY = regionY;
    orb->base.me = me;
    orb->base.meX = me->x;
    orb->base.id = id;

    orb->v1x = Q(me->d.sData[0]);
    orb->v1y = Q(me->d.sData[1]);
    orb->v2x = Q(me->d.uData[2]);
    orb->v2y = Q(me->d.uData[3]);

    orb->unk40 = 0;
    orb->unk42 = 0;
    orb->unk44 = 0;

    SET_MAP_ENTITY_INITIALIZED(me);
}

// (90.06%) https://decomp.me/scratch/ORJxz
NONMATCH("asm/non_matching/game/interactables/TeleportOrb__Task_TeleportOrb.inc", void Task_TeleportOrb(void))
{
    TeleportOrb *orb = TASK_DATA(gCurTask);
    CamCoord worldX, worldY;
    s16 screenX, screenY;
    MapEntity *me;
    s32 i;

    me = orb->base.me;

    worldX = TO_WORLD_POS(orb->base.meX, orb->base.regionX);
    worldY = TO_WORLD_POS(me->y, orb->base.regionY);

    screenX = worldX - gCamera.x;
    screenY = worldY - gCamera.y;

    i = 0;
    do {
        if (GetBit(orb->unk44, i)) {
            // _08084A64
            if ((gCamera.x == orb->unk40 && gCamera.y == orb->unk42) && (gCamera.x <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)))
                && (gCamera.x + DISPLAY_WIDTH >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)))
                && (gCamera.y <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)))
                && (gCamera.y + DISPLAY_HEIGHT >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)))) {
                // _08084AF0
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_IA_OVERRIDE;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IN_AIR;
                ClearBit(orb->unk44, i);
                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = Q(0);
                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = Q(0);
                GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) = Q(0);
                GET_SP_PLAYER_MEMBER_V1(i, itemEffect) &= ~PLAYER_ITEM_EFFECT__TELEPORT;
            } else {
                // _08084B72
                Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IA_OVERRIDE;
                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = Q(0);
                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = Q(0);
                GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) = Q(0);
                GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_SPINATTACK;

                PLAYERFN_CHANGE_SHIFT_OFFSETS(GET_SP_PLAYER_V1(i), 6, 14);
                SetBit(orb->unk44, i);
            }
            // _08084C1A

            if ((GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD)) {
                ClearBit(orb->unk44, i);
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_IA_OVERRIDE;

                if (GET_SP_PLAYER_MEMBER_V1(i, playerID) == PLAYER_1) {
                    GET_SP_PLAYER_MEMBER_V1(i, qWorldY) = Q(gCamera.y + (DISPLAY_HEIGHT / 2));
                    GET_SP_PLAYER_MEMBER_V1(i, qWorldX) = Q(gCamera.x + (DISPLAY_WIDTH / 2));
                    gCamera.SA2_LABEL(unkC) = 0;
                    gCamera.SA2_LABEL(unk8) = 0;
                }
            }
            // _08084CB8

            orb->unk40 = gCamera.x;
            orb->unk42 = gCamera.y;
        } else /* !GetBit(orb->unk44, i) */ {
            // _08084CCC
            if (!(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD)) {
                if ((worldX - 12 <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX))) && (worldX + 12 >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)))
                    && (worldY - 12 <= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY))) && (worldY + 12 >= I(GET_SP_PLAYER_MEMBER_V1(i, qWorldY)))) {
                    Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_4;
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IA_OVERRIDE;

                    GET_SP_PLAYER_MEMBER_V1(i, qWorldX) = Q(orb->v1x) + orb->v2x;
                    GET_SP_PLAYER_MEMBER_V1(i, qWorldY) = Q(orb->v1y) + orb->v2y;
                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = Q(0);
                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) = Q(0);
                    GET_SP_PLAYER_MEMBER_V1(i, qSpeedGround) = Q(0);
                    GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_SPINATTACK;

                    PLAYERFN_CHANGE_SHIFT_OFFSETS(GET_SP_PLAYER_V1(i), 6, 14);

                    m4aSongNumStart(SE_SPRING);
                    SetBit(orb->unk44, i);
                    GET_SP_PLAYER_MEMBER_V1(i, itemEffect) |= PLAYER_ITEM_EFFECT__TELEPORT;

                    orb->unk40 = gCamera.x;
                    orb->unk42 = gCamera.y;
                }
            }
        }
    } while (++i < gNumSingleplayerCharacters);

    if (!(orb->unk44 & 0x3)) {
        if (IS_OUT_OF_CAM_RANGE(screenX, screenY)) {
            SET_MAP_ENTITY_NOT_INITIALIZED(me, orb->base.meX);
            TaskDestroy(gCurTask);
            return;
        }
    }
}
END_NONMATCH