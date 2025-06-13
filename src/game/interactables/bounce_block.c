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
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ s32 bounceOffset;
    /* 0x40 */ u8 unk40;
} BounceBlock;

void Task_BounceBlock(void);
void Task_80752A4(void);
bool32 sub_80753D0(Sprite *s, s32 worldX, s32 worldY);
void TaskDestructor_BounceBlock(struct Task *t);

extern const AnimId sBounceBlockAnims[NUM_LEVEL_IDS];

void CreateEntity_BounceBlock(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BounceBlock, sizeof(BounceBlock), 0x2000, 0, TaskDestructor_BounceBlock);
    BounceBlock *block = TASK_DATA(t);
    Sprite *s = &block->s;

    block->base.regionX = regionX;
    block->base.regionY = regionY;
    block->base.me = me;
    block->base.meX = me->x;
    block->base.id = id;

    block->bounceOffset = 0;
    block->unk40 = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOUNCE_BLOCK_1);
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->graphics.anim = sBounceBlockAnims[gCurrentLevel];
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

void Task_BounceBlock(void)
{
    BounceBlock *block = TASK_DATA(gCurTask);
    Sprite *s = &block->s;
    MapEntity *me = block->base.me;
    CamCoord worldX, worldY;

    worldX = TO_WORLD_POS(block->base.meX, block->base.regionX);
    worldY = TO_WORLD_POS(me->y, block->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (sub_80753D0(s, worldX, worldY)) {
        block->unk40 = 30;
        block->bounceOffset = 0;
        s->variant = 0;

        gCurTask->main = Task_80752A4;
        m4aSongNumStart(SE_SPRING);
    }

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, block->base.meX);
        TaskDestroy(gCurTask);
        return;
    } else {
        DisplaySprite(s);
    }
}

void Task_80752A4(void)
{
    BounceBlock *block = TASK_DATA(gCurTask);
    Sprite *s = &block->s;
    MapEntity *me = block->base.me;
    CamCoord worldX, worldY;
    s32 newBounceOffset;

    worldX = TO_WORLD_POS(block->base.meX, block->base.regionX);
    worldY = TO_WORLD_POS(me->y, block->base.regionY);

    s->x = worldX - gCamera.x;
    newBounceOffset = Div(SIN(block->bounceOffset & (SIN_PERIOD - 1)), SIN_PERIOD);
    s->y = worldY - gCamera.y + newBounceOffset;

    if (sub_80753D0(s, worldX, worldY)) {
        block->unk40 = 30;
        block->bounceOffset = 0;
        s->variant = 0;

        m4aSongNumStart(SE_SPRING);
    }

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, block->base.meX);
        TaskDestroy(gCurTask);
        return;
    } else {
        block->bounceOffset += Q(360. / 1024.);

        if (--block->unk40 == 0) {
            gCurTask->main = Task_BounceBlock;
        }

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

bool32 sub_80753D0(Sprite *s, s32 worldX, s32 worldY)
{
    bool32 result = FALSE;
    s32 i;

    i = 0;
    do {
        if (!(GET_SP_PLAYER_MEMBER_V1(i, moveState) & MOVESTATE_DEAD)) {
            if ((sub_80096B0(s, worldX, worldY, GET_SP_PLAYER_V1(i)) & 0x8)) {
                if (gGameMode == 3 || gGameMode == 5) {
                    GET_SP_PLAYER_MEMBER_V1(i, timerInvulnerability) = 30;
                }

                Player_TransitionCancelFlyingAndBoost(GET_SP_PLAYER_V1(i));
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_STOOD_ON_OBJ;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_IN_AIR;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_100;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_4;
                GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;

                if (gSelectedCharacter == CHARACTER_AMY) {
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_2000000;
                }

                if (GET_SP_PLAYER_MEMBER_V1(i, heldInput) & DPAD_LEFT) {
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) |= MOVESTATE_FACING_LEFT;
                } else if (GET_SP_PLAYER_MEMBER_V1(i, heldInput) & DPAD_RIGHT) {
                    GET_SP_PLAYER_MEMBER_V1(i, moveState) &= ~MOVESTATE_FACING_LEFT;
                }

                GET_SP_PLAYER_MEMBER_V1(i, qSpeedAirY) = -Q(5);
                GET_SP_PLAYER_MEMBER_V1(i, charState) = CHARSTATE_BOUNCE;

                PLAYERFN_CHANGE_SHIFT_OFFSETS(GET_SP_PLAYER_V1(i), 6, 14);

                result = TRUE;
            }
        }

    } while (++i < gNumSingleplayerCharacters);

    return result;
}

void TaskDestructor_BounceBlock(struct Task *t)
{
    BounceBlock *block = TASK_DATA(t);
    VramFree(block->s.graphics.dest);
}