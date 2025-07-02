#include "global.h"
#include "core.h"
#include "trig.h"
#include "game/entity.h"
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
    /* 0x3C */ s16 unk3C[2];
    /* 0x40 */ s16 unk40[2];
    /* 0x44 */ u16 unk44;
    /* 0x48 */ u32 unk48[2];
    /* 0x50 */ u8 unk50;
    /* 0x51 */ u8 unk51;
} Bowl;

void Task_Bowl(void);
void Task_BowlRotating(void);
void Task_Bowl3(void);
void TaskDestructor_Bowl(struct Task *t);

ALIGNED(4)
const AnimId sBowlAnimations[NUM_LEVEL_IDS] = {
    SA1_ANIM_BOWL_3, SA1_ANIM_BOWL_3, // Zone 1
    SA1_ANIM_BOWL_3, SA1_ANIM_BOWL_3, // Zone 2
    SA1_ANIM_BOWL_3, SA1_ANIM_BOWL_3, // Zone 3
    SA1_ANIM_BOWL_3, SA1_ANIM_BOWL_3, // Zone 4
    SA1_ANIM_BOWL_5, SA1_ANIM_BOWL_5, // Zone 5
    SA1_ANIM_BOWL_3, SA1_ANIM_BOWL_3, // Zone 6
    SA1_ANIM_BOWL_3, SA1_ANIM_BOWL_3, // Zone 7
    SA1_ANIM_BOWL_3, SA1_ANIM_BOWL_3, // MP 1, 2
    SA1_ANIM_BOWL_3, SA1_ANIM_BOWL_3, // MP 3, 4
};

void CreateEntity_Bowl(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Bowl, sizeof(Bowl), 0x2000, 0, TaskDestructor_Bowl);
    Bowl *bowl = TASK_DATA(t);
    Sprite *s = &bowl->s;

    bowl->base.regionX = regionX;
    bowl->base.regionY = regionY;
    bowl->base.me = me;
    bowl->base.meX = me->x;
    bowl->base.id = id;

    bowl->unk50 = 0;
    bowl->unk40[0] = 0;
    bowl->unk40[1] = 0;
    bowl->unk48[0] = 0;
    bowl->unk48[1] = 0;
    bowl->unk3C[0] = 0;
    bowl->unk3C[1] = 0;
    bowl->unk51 = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->graphics.dest = ALLOC_TILES(SA1_ANIM_BOWL_3);
    s->oamFlags = SPRITE_OAM_ORDER(5);
    s->graphics.size = 0;
    s->graphics.anim = sBowlAnimations[gCurrentLevel];
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = FALSE;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    UpdateSpriteAnimation(s);
}

void Task_Bowl(void)
{
    Bowl *bowl = TASK_DATA(gCurTask);
    Sprite *s = &bowl->s;
    MapEntity *me = bowl->base.me;
    CamCoord worldX, worldY;
    s32 i;

    worldX = TO_WORLD_POS(bowl->base.meX, bowl->base.regionX);
    worldY = TO_WORLD_POS(me->y, bowl->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (IS_OUT_OF_DISPLAY_RANGE(worldX, worldY) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, bowl->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    i = 0;
    do {
        if (!(PLAYER(i).moveState & MOVESTATE_DEAD)) {
            s16 diff;

            if (I(PLAYER(i).qWorldX) > worldX) {
                diff = +10;
            } else {
                diff = -10;
            }

            if (Coll_Player_Entity_Intersection(s, worldX - diff, worldY + 5, &PLAYER(i))) {
                SetBit(bowl->unk51, i);
                bowl->unk40[i] = ABS2(PLAYER(i).qSpeedAirX) << 2;

                bowl->unk3C[i] = (Div((I(PLAYER(i).qWorldX) - worldX + (SA1_ANIM_BOWL_3_WIDTH / 2)) << 9, SA1_ANIM_BOWL_3_WIDTH) < 0)
                    ? (0x300 - Div((I(PLAYER(i).qWorldX) - worldX + (SA1_ANIM_BOWL_3_WIDTH / 2)) << 9, SA1_ANIM_BOWL_3_WIDTH))
                        & (SIN_PERIOD - 1)
                    : (0x300 + Div((I(PLAYER(i).qWorldX) - worldX + (SA1_ANIM_BOWL_3_WIDTH / 2)) << 9, SA1_ANIM_BOWL_3_WIDTH))
                        & (SIN_PERIOD - 1);

                bowl->unk48[i] = 0;
                bowl->unk50 = 0;
                bowl->unk44 = 0;

                PLAYER(i).heldInput = 0;
                PLAYER(i).frameInput = 0;

                Player_TransitionCancelFlyingAndBoost(&PLAYER(i));

                PLAYER(i).charState = CHARSTATE_SPINATTACK;
                PLAYER(i).moveState |= MOVESTATE_IA_OVERRIDE;

                m4aSongNumStart(SE_BOWL);
                gCurTask->main = Task_BowlRotating;

                PLAYER(i).itemEffect |= PLAYER_ITEM_EFFECT__TELEPORT;
            }
        }
    } while (++i < gNumSingleplayerCharacters);

    DisplaySprite(s);
}

#if 0
void Task_BowlRotating(void)
{
    Bowl *bowl = TASK_DATA(gCurTask);
    Sprite *s = &bowl->s;
    MapEntity *me = bowl->base.me;
    CamCoord worldX, worldY;
    s32 i;

    worldX = TO_WORLD_POS(bowl->base.meX, bowl->base.regionX);
    worldY = TO_WORLD_POS(me->y, bowl->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    i = 0;
    do {
    } while (++i < gNumSingleplayerCharacters);
    
    i = 0;
    do {
        if (!(PLAYER(i).moveState & MOVESTATE_DEAD)) {
            s16 diff;

            if (I(PLAYER(i).qWorldX) > worldX) {
                diff = +10;
            } else {
                diff = -10;
            }

            if (Coll_Player_Entity_Intersection(s, worldX - diff, worldY + 5, &PLAYER(i))) {
                SetBit(bowl->unk51, i);
                bowl->unk40[i] = ABS2(PLAYER(i).qSpeedAirX) << 2;

                bowl->unk3C[i] = (Div((I(PLAYER(i).qWorldX) - worldX + (SA1_ANIM_BOWL_3_WIDTH / 2)) << 9, SA1_ANIM_BOWL_3_WIDTH) < 0)
                    ? (0x300 - Div((I(PLAYER(i).qWorldX) - worldX + (SA1_ANIM_BOWL_3_WIDTH / 2)) << 9, SA1_ANIM_BOWL_3_WIDTH))
                        & (SIN_PERIOD - 1)
                    : (0x300 + Div((I(PLAYER(i).qWorldX) - worldX + (SA1_ANIM_BOWL_3_WIDTH / 2)) << 9, SA1_ANIM_BOWL_3_WIDTH))
                        & (SIN_PERIOD - 1);

                PLAYER(i).heldInput = 0;
                PLAYER(i).frameInput = 0;

                Player_TransitionCancelFlyingAndBoost(&PLAYER(i));

                PLAYER(i).charState = CHARSTATE_SPINATTACK;
                PLAYER(i).moveState |= MOVESTATE_IA_OVERRIDE;

                PLAYER(i).itemEffect |= PLAYER_ITEM_EFFECT__TELEPORT;
            }
        }
    } while (++i < gNumSingleplayerCharacters);
        
    i = 0;
    do {
        if((GetBit(bowl->unk51, i)))
        {
            s16 diff;
            s32 theta = ((I(bowl->unk48[i]) + bowl->unk3C[i] + ((bowl->unk50 & 0xF) << 6)) & (SIN_PERIOD - 1));

            if (!(PLAYER(i).moveState & MOVESTATE_DEAD)) {
                PLAYER(i).qWorldX += Div(SIN(theta) * 25, bowl->unk50 * 4 + 50);
    
                if (I(PLAYER(i).qWorldX) > worldX) {
                    diff = +10;
                } else {
                    diff = -10;
                }
    
                if (Coll_Player_Entity_Intersection(s, worldX - diff, worldY + 5, &PLAYER(i))) {
                    SetBit(bowl->unk51, i);
                    bowl->unk40[i] = ABS2(PLAYER(i).qSpeedAirX) << 2;
    
                    bowl->unk3C[i] = (Div((I(PLAYER(i).qWorldX) - worldX + (SA1_ANIM_BOWL_3_WIDTH / 2)) << 9, SA1_ANIM_BOWL_3_WIDTH) < 0)
                        ? (0x300 - Div((I(PLAYER(i).qWorldX) - worldX + (SA1_ANIM_BOWL_3_WIDTH / 2)) << 9, SA1_ANIM_BOWL_3_WIDTH))
                            & (SIN_PERIOD - 1)
                        : (0x300 + Div((I(PLAYER(i).qWorldX) - worldX + (SA1_ANIM_BOWL_3_WIDTH / 2)) << 9, SA1_ANIM_BOWL_3_WIDTH))
                            & (SIN_PERIOD - 1);
    
                    PLAYER(i).heldInput = 0;
                    PLAYER(i).frameInput = 0;
    
                    Player_TransitionCancelFlyingAndBoost(&PLAYER(i));
    
                    PLAYER(i).charState = CHARSTATE_SPINATTACK;
                    PLAYER(i).moveState |= MOVESTATE_IA_OVERRIDE;
    
                    PLAYER(i).itemEffect |= PLAYER_ITEM_EFFECT__TELEPORT;
                }
            }
        }
    } while (++i < gNumSingleplayerCharacters);
        
    if (IS_OUT_OF_DISPLAY_RANGE(worldX, worldY) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, bowl->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    i = 0;
    do {
        if((GetBit(bowl->unk51, i)) && (bowl->unk48[i] >= 885000))
        {
            bowl->unk48[i] = 885000;
            
            if(!(PLAYER(i).moveState & MOVESTATE_DEAD))
            {
                if(bowl->unk50 < 16) {
                    PLAYER(i).qWorldY += bowl->unk50 * (Q(11.25) / 16);
                } else {
                    PLAYER(i).qWorldY += Q(11.25);                    
                }
            }
            if(i == PLAYER_1) {
                bowl->unk50++;
            }
            
            if(bowl->unk50 > 64) {
                if (!(PLAYER(i).moveState & MOVESTATE_DEAD)) {
                    PLAYER(i).moveState &= ~MOVESTATE_IA_OVERRIDE;
                    PLAYER(i).moveState |= MOVESTATE_4;
                    PLAYER(i).moveState |= MOVESTATE_FLIP_WITH_MOVE_DIR;
                    PLAYER(i).moveState |= MOVESTATE_IN_AIR;
                    PLAYER(i).qSpeedAirX = 0;
                    PLAYER(i).qSpeedGround = 0;
                    PLAYER(i).qWorldX = Q(worldX);
                    ClearBit(bowl->unk51, i);
                }
                
                gCurTask->main = Task_Bowl3;

                PLAYER(i).itemEffect &= ~PLAYER_ITEM_EFFECT__TELEPORT;
            }
        }
    } while (++i < gNumSingleplayerCharacters);

    if(++bowl->unk44 > 240)
    {
        bowl->unk44 = 240;
    }
    
    if(bowl->unk44 == 56) {
        i = 0;
        do {
            if(!(PLAYER(i).moveState & MOVESTATE_DEAD)) {
                m4aSongNumStart(SE_BOWL_2);                
            }
        } while (++i < gNumSingleplayerCharacters);
    } else if(bowl->unk44 == 112) {
        i = 0;
        do {
            if(!(PLAYER(i).moveState & MOVESTATE_DEAD)) {            
                m4aSongNumStart(SE_BOWL_3);
            }
        } while (++i < gNumSingleplayerCharacters);
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_Bowl3(void)
{
    Bowl *bowl = TASK_DATA(gCurTask);
    Sprite *s = &bowl->s;
    MapEntity *me = bowl->base.me;
    CamCoord worldX, worldY;
    s32 i;

    worldX = TO_WORLD_POS(bowl->base.meX, bowl->base.regionX);
    worldY = TO_WORLD_POS(me->y, bowl->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y + 108;

    if (IS_OUT_OF_DISPLAY_RANGE(worldX, worldY) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, bowl->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if(++bowl->unk44 > 240)
    {
        bowl->unk44 = 240;
    }
    
    if(bowl->unk44 == 56) {
        i = 0;
        do {
            if(!(PLAYER(i).moveState & MOVESTATE_DEAD)) {
                m4aSongNumStart(SE_BOWL_2);                
            }
        } while (++i < gNumSingleplayerCharacters);
    } else if(bowl->unk44 == 112) {
        i = 0;
        do {
            if(!(PLAYER(i).moveState & MOVESTATE_DEAD)) {            
                m4aSongNumStart(SE_BOWL_3);
            }
        } while (++i < gNumSingleplayerCharacters);
    }

    DisplaySprite(s);
}

void TaskDestructor_Bowl(struct Task *t)
{
    Bowl *bowl = TASK_DATA(t);
    VramFree(bowl->s.graphics.dest);
}
#endif
