#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"
#include "game/multiplayer/multiplayer_event_mgr.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/stage/player.h"
#include "game/stage/ui.h" // for sub_80549FC

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/zones.h"

/* Platform that falls and slides once the player steps on it */

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 filler3C[0x60];
    /* 0x9C */ s32 unk9C;
    /* 0xA0 */ s32 unkA0;
    /* 0xA4 */ s32 unkA4;
    /* 0xA8 */ s32 unkA8;
    /* 0xAC */ s32 unkAC;
    /* 0xB0 */ u8 unkB0;
    /* 0xB1 */ s8 unkB1;
    /* 0xB2 */ u8 unkB2;
    /* 0xB3 */ u8 unkB3;
} SkatingStone;

void Task_SkatingStoneInit(void);
void Task_SkatingStone2(void);
void TaskDestructor_SkatingStone(struct Task *t);

void CreateEntity_SkatingStone(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_SkatingStoneInit, sizeof(SkatingStone), 0x2000, 0, TaskDestructor_SkatingStone);
    SkatingStone *stone = TASK_DATA(t);
    Sprite *s = &stone->s;

    stone->base.regionX = regionX;
    stone->base.regionY = regionY;
    stone->base.me = me;
    stone->base.meX = me->x;
    stone->base.id = id;

    stone->unk9C = 0;
    stone->unkA0 = 0;
    stone->unkA4 = 0;
    stone->unkA8 = 0;
    stone->unkAC = 0;
    stone->unkB0 = 0;
    stone->unkB1 = me->d.sData[0];
    stone->unkB2 = 0;
    stone->unkB3 = me->d.sData[1];

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    if (LEVEL_TO_ZONE(gCurrentLevel) == ZONE_4) {
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_SKATING_STONE_4);
        s->graphics.anim = SA1_ANIM_SKATING_STONE_4;
        s->variant = 0;
    } else {
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_SKATING_STONE);
        s->graphics.anim = SA1_ANIM_SKATING_STONE;
        s->variant = 0;
    }

    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    UpdateSpriteAnimation(s);
}

void Task_SkatingStoneInit(void)
{
    bool32 sl = FALSE;
    SkatingStone *stone = TASK_DATA(gCurTask);
    Sprite *s = &stone->s;
    CamCoord worldX, worldY;
    MapEntity *me = stone->base.me;
    s32 i;

    worldX = TO_WORLD_POS(stone->base.meX, stone->base.regionX);
    worldY = TO_WORLD_POS(me->y, stone->base.regionY);
    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    i = 0;
    do {
        if (!(PLAYER(i).moveState & MOVESTATE_DEAD)) {
            if (sub_80549FC()) {
                if (PLAYER(i).qWorldY > Q(worldY)) {
                    if (PLAYER(i).charState != CHARSTATE_73) {
                        if (sub_800B1D4(s, worldX, worldY, &PLAYER(i)) & COLL_FLAG_10000) {
                            PLAYER(i).qWorldY = Q(worldY + 6);
                        }
                    }
                } else {
                    if (PLAYER(i).charState != CHARSTATE_72) {
                        sub_800B1D4(s, worldX, worldY, &PLAYER(i));
                    }
                }
            } else {
                if (sub_800B1D4(s, worldX, worldY, &PLAYER(i)) & COLL_FLAG_8) {
                    PLAYER(i).moveState &= ~MOVESTATE_STOOD_ON_OBJ;
                    PLAYER(i).moveState |= MOVESTATE_IN_AIR;
                    PLAYER(i).moveState &= ~MOVESTATE_100;
                    PLAYER(i).moveState &= ~MOVESTATE_4;
                    PLAYER(i).moveState &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
                    PLAYERFN_CHANGE_SHIFT_OFFSETS(&PLAYER(i), 6, 14);

                    PLAYER(i).qWorldY = Q(worldY) - Q(44);

                    SetBit(stone->unkB2, i);
                    stone->unkA0 = 0;
                    stone->unkA4 = 0;
                    stone->unkA8 = 0;
                    stone->unkAC = 0;

                    sl = TRUE;

                    if (IS_MULTI_PLAYER) {
                        RoomEvent_PlatformChange *roomEvent = CreateRoomEvent();
                        roomEvent->type = sl;
                        roomEvent->x = stone->base.regionX;
                        roomEvent->y = stone->base.regionY;
                        roomEvent->id = stone->base.id;
                        roomEvent->action = 1;
                    } else {
                        continue;
                    }
                }
            }
        }

        if (IS_MULTI_PLAYER) {
            if ((s8)me->x == MAP_ENTITY_STATE_MINUS_THREE) {
                sl = TRUE;
            }
        }
    } while (++i < gNumSingleplayerCharacters);

    if (sl) {
        gCurTask->main = Task_SkatingStone2;
    }

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, stone->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    DisplaySprite(s);
}
