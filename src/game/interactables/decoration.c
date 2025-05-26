#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/dust_cloud.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/multiplayer/mp_player.h"
#include "game/multiplayer/multiplayer_event_mgr.h"
#include "game/stage/player.h"
#include "game/stage/player_controls.h"
#include "game/stage/terrain_collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/interactables.h"
#include "constants/songs.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct {
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ EntityShared shared;
} Decoration;

typedef struct {
    /* 0x00 */ Sprite s1;
    /* 0x30 */ Sprite s2;
    /* 0x60 */ Sprite s3;
    /* 0x90 */ Sprite s4;
    /* 0xC0 */ Sprite s5;
    /* 0xF0 */ s16 unkF0;
    /* 0xF2 */ s16 unkF2;
} DecorationDebris; /* 0xF4 */

void Task_DecorationMain(void);
void CreateDecorationDebris(s16 vecX, s16 vecY);

void CreateEntity_Decoration(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_DecorationMain, sizeof(Decoration), 0x2000, 0, TaskDestructor_EntityShared);
    Decoration *deco = TASK_DATA(t);
    Sprite *s = &deco->shared.s;

    deco->shared.base.regionX = regionX;
    deco->shared.base.regionY = regionY;
    deco->shared.base.me = me;
    deco->shared.base.meX = me->x;
    deco->shared.base.id = id;

    // NOTE: Initializing sprite pos to world pos
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_ROCK);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_ROCK;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;

    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    UpdateSpriteAnimation(s);
}

void Task_DecorationMain(void)
{
    Decoration *deco = TASK_DATA(gCurTask);
    Sprite *s = &deco->shared.s;
    MapEntity *me = deco->shared.base.me;
    CamCoord worldX, worldY;

    worldX = TO_WORLD_POS(deco->shared.base.meX, deco->shared.base.regionX);
    worldY = TO_WORLD_POS(me->y, deco->shared.base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_MULTI_PLAYER && ((s8)me->x == MAP_ENTITY_STATE_MINUS_THREE)) {
        CreateDustCloud(worldX, worldY);
        m4aSongNumStart(SE_ITEM_BOX);

        SA2_LABEL(gUnknown_0300194C) = s->x;
        SA2_LABEL(gUnknown_03002820) = s->y;

        CreateDecorationDebris(worldX - s->x, worldY - s->y - 16);

        if ((gPlayer.moveState & MOVESTATE_STOOD_ON_OBJ) && (gPlayer.stoodObj == s)) {
            gPlayer.moveState &= ~MOVESTATE_STOOD_ON_OBJ;
            gPlayer.moveState |= MOVESTATE_IN_AIR;
        }

        TaskDestroy(gCurTask);
        return;
    } else {
        if (sub_800C394(s, worldX, worldY, &gPlayer) || (gPlayer.character == CHARACTER_AMY && sub_800A768(s, worldX, worldY, &gPlayer))
            || ((gNumSingleplayerCharacters == NUM_SINGLEPLAYER_CHARS_MAX) && sub_800C394(s, worldX, worldY, &gPartner))) {
            CreateDustCloud(worldX, worldY);

            if ((gPlayer.moveState & MOVESTATE_STOOD_ON_OBJ) && (gPlayer.stoodObj == s)) {
                gPlayer.moveState &= ~MOVESTATE_STOOD_ON_OBJ;
                gPlayer.moveState |= MOVESTATE_IN_AIR;
            }

            if (gNumSingleplayerCharacters == NUM_SINGLEPLAYER_CHARS_MAX) {
                if ((gPartner.moveState & MOVESTATE_STOOD_ON_OBJ) && (gPartner.stoodObj == s)) {
                    gPartner.moveState &= ~MOVESTATE_STOOD_ON_OBJ;
                    gPartner.moveState |= MOVESTATE_IN_AIR;
                }
            }

            m4aSongNumStart(SE_ITEM_BOX);

            SA2_LABEL(gUnknown_0300194C) = s->x;
            SA2_LABEL(gUnknown_03002820) = s->y;

            CreateDecorationDebris(worldX - s->x, worldY - s->y - 16);

            if (IS_MULTI_PLAYER) {
                RoomEvent_PlatformChange *roomEvent = CreateRoomEvent();
                roomEvent->type = ROOMEVENT_TYPE_PLATFORM_CHANGE;
                roomEvent->x = deco->shared.base.regionX;
                roomEvent->y = deco->shared.base.regionY;
                roomEvent->id = deco->shared.base.id;
                roomEvent->action = 0;
            }

            TaskDestroy(gCurTask);
            return;
        } else {
            sub_80096B0(s, worldX, worldY, &gPlayer);

            if (gNumSingleplayerCharacters == NUM_SINGLEPLAYER_CHARS_MAX) {
                sub_80096B0(s, worldX, worldY, &gPartner);
            }

            if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
                SET_MAP_ENTITY_NOT_INITIALIZED(me, deco->shared.base.meX);
                TaskDestroy(gCurTask);
                return;
            } else {
                DisplaySprite(s);
            }
        }
    }
}