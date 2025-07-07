#include "global.h"
#include "core.h"
#include "trig.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/sa1_sa2_shared/dust_cloud.h"
#include "game/multiplayer/multiplayer_event_mgr.h"
#include "game/stage/terrain_collision.h"
#include "game/stage/player.h"
#include "game/water_effects.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"

#include "constants/animations.h"
#include "constants/char_states.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
} IceBlock;

void Task_IceBlock(void);
void TaskDestructor_EntityShared(struct Task *t);
void CreateIceBlockShards(CamCoord worldX, CamCoord worldY);
u32 sub_8091E88(Sprite *s, CamCoord screenX, CamCoord screenY, Player *p);

void CreateEntity_IceBlock(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_IceBlock, sizeof(IceBlock), 0x2000, 0, TaskDestructor_EntityShared);
    IceBlock *block = TASK_DATA(t);
    Sprite *s = &block->s;

    block->base.regionX = regionX;
    block->base.regionY = regionY;
    block->base.me = me;
    block->base.meX = me->x;
    block->base.id = id;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_ICE_BLOCK);
    s->oamFlags = SPRITE_OAM_ORDER(8);
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_ICE_BLOCK;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    UpdateSpriteAnimation(s);
}

// (98.28%) https://decomp.me/scratch/DNDs3
NONMATCH("asm/non_matching/game/interactables/ice_block__Task_IceBlock.inc", void Task_IceBlock(void))
{
    MapEntity *me;
    IceBlock *block;
    s32 i = 0;
    Sprite *s;
    CamCoord worldX, worldY;

    block = TASK_DATA(gCurTask);
    s = &block->s;
    me = block->base.me;

    worldX = TO_WORLD_POS(block->base.meX, block->base.regionX);
    worldY = TO_WORLD_POS(me->y, block->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_MULTI_PLAYER && ((s8)me->x == MAP_ENTITY_STATE_MINUS_THREE)) {
        CreateDustCloud(worldX, worldY);
        m4aSongNumStart(SE_ITEM_BOX);

        SA2_LABEL(gUnknown_0300194C) = s->x;
        SA2_LABEL(gUnknown_03002820) = s->y;

        CreateIceBlockShards(worldX - s->x, worldY - 16 - s->y);

        TaskDestroy(gCurTask);
        return;
    } else {
        // _080918AC
        // i = 0;
        do {
            // _080918C0_loop
            Player *p = &PLAYER(i);
            if (!(p->moveState & MOVESTATE_DEAD)) {
                bool32 r8 = 0;
                if (p->charState == CHARSTATE_SPINATTACK) {
                    u32 res = sub_80096B0(s, worldX, worldY, p);

                    if (p->character != CHARACTER_AMY) {
                        r8 = (-(res & COLL_FLAG_8)) >> 31;
                    } else {
                        r8 = 0;
                    }
                } else {
                    register s32 r3 asm("r3");
                    asm("mov %0, #0\n"
                        ""
                        : "=r"(r3), "=r"(r8));
                    r8 = r3;
                }
                // _08091920

                if (sub_800C394(s, worldX, worldY, p) || sub_8091E88(s, worldX, worldY, p) || r8) {
                    // _0809194E
                    s32 j = 0;
                    do {
                        Player *p = &PLAYER(j);
                        if ((p->moveState & MOVESTATE_STOOD_ON_OBJ) && p->stoodObj == s) {
                            p->moveState &= ~MOVESTATE_STOOD_ON_OBJ;
                            p->moveState |= MOVESTATE_IN_AIR;
                        }
                    } while (++j < gNumSingleplayerCharacters);

                    CreateDustCloud(worldX, worldY);
                    m4aSongNumStart(SE_ITEM_BOX);

                    SA2_LABEL(gUnknown_0300194C) = s->x;
                    SA2_LABEL(gUnknown_03002820) = s->y;

                    CreateIceBlockShards(worldX - s->x, worldY - 16 - s->y);

                    if (IS_MULTI_PLAYER) {
                        RoomEvent_PlatformChange *roomEvent;
                        roomEvent = CreateRoomEvent();
                        roomEvent->type = ROOMEVENT_TYPE_PLATFORM_CHANGE;
                        roomEvent->x = block->base.regionX;
                        roomEvent->y = block->base.regionY;
                        roomEvent->id = block->base.id;
                        roomEvent->action = 0;
                    }

                    m4aSongNumStart(SE_193);
                    TaskDestroy(gCurTask);
                    return;
                }
            }

            sub_80096B0(s, worldX, worldY, p);
        } while (++i < gNumSingleplayerCharacters);
        // _08091A22

        if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
            SET_MAP_ENTITY_NOT_INITIALIZED(me, block->base.meX);
            TaskDestroy(gCurTask);
            return;
        }

        DisplaySprite(s);
    }
}
END_NONMATCH
