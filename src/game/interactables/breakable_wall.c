#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "malloc_vram.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/multiplayer/multiplayer_event_mgr.h"
#include "game/stage/player.h"
#include "game/stage/player_controls.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ s16 unk3C;
    /* 0x3C */ s16 unk3E;
    /* 0x40 */ u8 filler40[4];
} Wall;

extern u16 gUnknown_080BB544[NUM_LEVEL_IDS];

void Task_BreakableWall(void);
void Task_BreakableWall2(void);
void TaskDestructor_BreakableWall(struct Task *);

void CreateEntity_BreakableWall(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BreakableWall, sizeof(Wall), 0x2000, 0, TaskDestructor_BreakableWall);
    Wall *wall = TASK_DATA(t);
    Sprite *s = &wall->s;

    wall->base.regionX = regionX;
    wall->base.regionY = regionY;
    wall->base.me = me;
    wall->base.meX = me->x;
    wall->base.id = id;

    SET_MAP_ENTITY_INITIALIZED(me);
    wall->unk3C = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BREAKABLE_WALL_1);
    s->graphics.anim = gUnknown_080BB544[gCurrentLevel];
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(15);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

    if (me->d.sData[0] != 0) {
        s->frameFlags |= SPRITE_FLAG(X_FLIP, 1);
    }

    UpdateSpriteAnimation(s);
}

// TODO: Fake-match
// (100.0%) https://decomp.me/scratch/3KiDd
void Task_BreakableWall(void)
{
    CamCoord worldX, worldY;
    MapEntity *me;
    Sprite *s;
    s32 i;

#ifndef NON_MATCHING
    register Wall *wall asm("r6");
    register s32 offset asm("r1") = gCurTask->data;
    asm("add %0, %1, %2" : "=r"(wall) : "r"(offset), "r"(IWRAM_START));
    asm("add r0, #0xC");
    asm("add r0, r1");
    asm("mov %0, r0" : "=r"(s));
#else
    Wall *wall;
    wall = TASK_DATA(gCurTask);
    s = &wall->s;
#endif
    me = wall->base.me;

    worldX = TO_WORLD_POS(wall->base.meX, wall->base.regionX);
    worldY = TO_WORLD_POS(me->y, wall->base.regionY);

    i = 0;
    do {
        if (IS_MULTI_PLAYER && ((s8)me->x == MAP_ENTITY_STATE_MINUS_THREE)) {
            if ((GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_STOOD_ON_OBJ) && (GET_SP_PLAYER_MEMBER_V1(i, stoodObj) == s)) {
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_STOOD_ON_OBJ;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IN_AIR;
            }

            wall->unk3C = 0;
            wall->unk3E = 0;

            gCurTask->main = Task_BreakableWall2;

            m4aSongNumStart(0xAD);
        } else if (sub_800AFDC(s, worldX, worldY, GET_SP_PLAYER_V1(i), 1) & COLL_FLAG_8) {
            m4aSongNumStart(0xAD);
            gCurTask->main = Task_BreakableWall2;

            wall->unk3C = 0;

            if ((wall->unk3E = GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirX) >> 1) == 0) {
                s16 qVal;
                if (worldX < I(GET_SP_PLAYER_MEMBER_V1(i, qWorldX)))
                    qVal = -Q(1);
                else
                    qVal = +Q(1);

                wall->unk3E = qVal;
            }

            if ((GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_STOOD_ON_OBJ) && (GET_SP_PLAYER_MEMBER_V1(i, stoodObj) == s)) {
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_STOOD_ON_OBJ;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IN_AIR;
            }

#ifndef NON_MATCHING
            // NOTE: This is entirely unnecessary because it's handled in the codeblock above.
            if ((gNumSingleplayerCharacters == 2) && ((gPartner.moveState & MOVESTATE_STOOD_ON_OBJ) && (gPartner.stoodObj == s))) {
                gPartner.moveState &= ~MOVESTATE_STOOD_ON_OBJ;
                gPartner.moveState |= MOVESTATE_IN_AIR;
            }
#endif

            if (IS_MULTI_PLAYER) {
                RoomEvent_PlatformChange *event = CreateRoomEvent();
                event->type = ROOMEVENT_TYPE_PLATFORM_CHANGE;
                event->x = wall->base.regionX;
                event->y = wall->base.regionY;
                event->id = wall->base.id;
                event->action = 1;
            }

            break;
        }
    } while (++i < gNumSingleplayerCharacters);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_OUT_OF_DISPLAY_RANGE(worldX, worldY) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, wall->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    DisplaySprite(s);
}
