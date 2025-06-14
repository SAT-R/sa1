#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/entity.h"

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

#if 0
void Task_SkatingStoneInit(void)
{
    bool32 sl = FALSE;
    SkatingStone *stone = TASK_DATA(gCurTask);
    Sprite *s = &stone->s;
    MapEntity *me = stone->base.me;
    CamCoord worldX, worldY;
    s32 i;

    worldX = TO_WORLD_POS(stone->base.meX, stone->base.regionX);
    worldY = TO_WORLD_POS(me->y, stone->base.regionY);
    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    i = 0;
    do {
        if(!(GET_SP_PLAYER_MEMBER(i, moveState) & MOVESTATE_DEAD))
        {
            // _0808C9AE

            if(sub_80549FC()) {
                if(GET_SP_PLAYER_MEMBER_V1(i, qWorldY) > Q(worldY))
                {
                    // _0808C9D2

                    if(GET_SP_PLAYER_MEMBER_V1(i, charState) != CHARSTATE_73)
                    {
                        if(sub_800B1D4(s, worldX, worldY, GET_SP_PLAYER_V1(i)))
                        {

                        }
                    }
                } else {
                    // _0808CA36
                }
            } else {
                // _0808CA7C
            }
        }
        // _0808CBD0
    } (++i < gNumSingleplayerCharacters);
}
#endif
