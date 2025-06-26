#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/stage/player.h"
#include "game/stage/terrain_collision.h"
#include "game/sa1_sa2_shared/collision.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/char_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x3C */ u8 filler3C[4];
    /* 0x40 */ s32 qUnk40;
    /* 0x44 */ s32 qUnk44;
    /* 0x48 */ s16 unk48;
    /* 0x4A */ s16 unk4A;
    /* 0x4C */ s16 unk4C;
    /* 0x4E */ u8 unk4E;
    /* 0x4F */ u8 unk4F;
    /* 0x50 */ u8 unk50;
} PlatformSq;

void Task_Platform_Square(void);
void TaskDestructor_Platform_Square(struct Task *t);
void sub_807E914(Sprite *s, s32 worldX, s32 worldY, Rect8 *unk08, Player *p);

void CreateEntity_Platform_Square(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    u8 zone = LEVEL_TO_ZONE(gCurrentLevel);
    struct Task *t = TaskCreate(Task_Platform_Square, sizeof(PlatformSq), 0x2000, 0, TaskDestructor_Platform_Square);
    PlatformSq *platform = TASK_DATA(t);
    Sprite *s = &platform->s;
    CamCoord worldX, worldY;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.meX = me->x;
    platform->base.id = id;

    platform->qUnk40 = 0;
    platform->qUnk44 = 0;
    platform->unk4F = 0;
    platform->unk4E = 0;

    if (me->d.uData[2] > me->d.uData[3]) {
        if (me->d.sData[0] >= 0) {
            platform->unk4A = 4;
            platform->unk48 = 0;
            platform->unk4C = 0;
        } else {
            platform->unk4A = 4;
            platform->unk48 = 0x80;
            platform->unk4C = 0;
        }
        platform->unk50 = me->d.sData[1];
    } else {
        if (me->d.sData[1] >= 0) {
            platform->unk4A = 0;
            platform->unk4C = 4;
            platform->unk48 = 0;
        } else {
            platform->unk4A = 0;
            platform->unk4C = 4;
            platform->unk48 = 0x80;
        }
        platform->unk50 = me->d.sData[0];
    }

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    if ((zone == ZONE_3) || (gCurrentLevel == ACT_CHAO_HUNT_C)) {
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_SQU_3);
        s->graphics.anim = SA1_ANIM_PLATFORM_SQU_3;
        s->variant = 0;
    } else if ((zone == ZONE_6) || (gCurrentLevel == ACT_CHAO_HUNT_D)) {
        if (((gCurrentLevel & 0x1) != ACT_1) || (gCurrentLevel == ACT_CHAO_HUNT_D)) {
            // Act 2
            if (platform->unk50) {
                s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_LONG_6_2);
                s->graphics.anim = SA1_ANIM_PLATFORM_LONG_6_2;
                s->variant = 0;
            } else {
                s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_SQU_6_2);
                s->graphics.anim = SA1_ANIM_PLATFORM_SQU_6_2;
                s->variant = 0;
            }
        } else {
            // Act 1
            if (platform->unk50) {
                s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_LONG_6_1);
                s->graphics.anim = SA1_ANIM_PLATFORM_LONG_6_1;
                s->variant = 0;
            } else {
                s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_SQU_6_1);
                s->graphics.anim = SA1_ANIM_PLATFORM_SQU_6_1;
                s->variant = 0;
            }
        }
    } else if (zone == ZONE_5) {
        if (platform->unk50) {
            s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_LONG_H_5);
            s->graphics.anim = SA1_ANIM_PLATFORM_LONG_H_5;
            s->variant = 0;
        } else {
            s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_LONG_V_5);
            s->graphics.anim = SA1_ANIM_PLATFORM_LONG_V_5;
            s->variant = 0;
        }
    } else if (zone == ZONE_4) {
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_SQU_4);
        s->graphics.anim = SA1_ANIM_PLATFORM_SQU_4;
        s->variant = 0;
    } else {
        s->graphics.dest = ALLOC_TILES(SA1_ANIM_PLATFORM_SQU_3);
        s->graphics.anim = SA1_ANIM_PLATFORM_SQU_3;
        s->variant = 0;
    }

    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->graphics.size = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = FALSE;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);
}

#if 0
void Task_Platform_Square(void)
{
    CamCoord worldX, worldY;
    PlatformSq *platform;
    Sprite *s;
    MapEntity *me;
    s16 screenX, screenY;
    s32 qPrevWorldX;
    s32 i;
    s32 sp20 = 0;
    s32 sp24 = 0;
    s32 sp28 = 0;
    s32 sp2C;
    platform = TASK_DATA(gCurTask);
    s = &platform->s;
    me = platform->base.me;

    if(platform->unk4A != 0)
    {
        s32 prevUnk40 = platform->qUnk40;
        s32 r3 = (me->d.uData[2] << 11);

        platform->qUnk40 = (r3 * SIN((((gStageTime + platform->unk48) & 0xFF) * platform->unk4A) & (SIN_PERIOD-1))) >> 14;
        sp20 = platform->qUnk40 - prevUnk40;
    }
    // _0807D45A
    if(platform->unk4C != 0)
    {
        s32 prevUnk44 = platform->qUnk44;
        s32 r3 = (me->d.uData[2] << 11);

        platform->qUnk44 = (r3 * SIN((((gStageTime + platform->unk48) & 0xFF) * platform->unk4A) & (SIN_PERIOD-1))) >> 14;
        sp24 = platform->qUnk44 - prevUnk44;
    }
    // _0807D49E
    
    worldX = TO_WORLD_POS(platform->base.meX, platform->base.regionX);
    worldY = TO_WORLD_POS(me->y, platform->base.regionY);

    s->x = screenX = worldX - gCamera.x + I(platform->qUnk40);
    s->y = screenY = worldY - gCamera.y + I(platform->qUnk44);
    
    i = 0;
    do {
        // _807D4EC_loop
        if(PLAYER(i).moveState & MOVESTATE_DEAD)
        {
            continue;
        }
        // _0807D540

        if(PLAYER(i).moveState & MOVESTATE_IA_OVERRIDE)
        {
            continue;
        }
        // _0807D56A

        qPrevWorldX = PLAYER(i).qWorldX;

        if(GetBit(platform->unk4E, i))
        {
            s32 res2;
            s32 r4;

            // _0807D58C
            PLAYER(i).qWorldX += sp20;
            PLAYER(i).qWorldY += sp24 + Q(1);

            if(sp20 > Q(0)) {
                r4 = SA2_LABEL(sub_801E4E4)((I(PLAYER(i).qWorldX) + 2) + PLAYER(i).spriteOffsetX,
                 I(PLAYER(i).qWorldY),
                    PLAYER(i).layer,
                     +8,
                     NULL,
                     SA2_LABEL(sub_801ED24));

                res2 = SA2_LABEL(sub_801E4E4)((I(PLAYER(i).qWorldX) + 2) + PLAYER(i).spriteOffsetX,
                 I(PLAYER(i).qWorldY) - PLAYER(i).spriteOffsetY,
                    PLAYER(i).layer,
                     +8,
                     NULL,
                     SA2_LABEL(sub_801ED24));

                if(res2 > r4) {
                    res2 = r4;
                }
                // _0807D67E

                if(res2 < 0) {
                    // _0807D684
                    PLAYER(i).qWorldX += Q(res2);
                }                
            } else {
                // _0807D6A2 - (sp20 <= 0)
                r4 = SA2_LABEL(sub_801E4E4)((I(PLAYER(i).qWorldX) - 2) - PLAYER(i).spriteOffsetX,
                 I(PLAYER(i).qWorldY),
                    PLAYER(i).layer,
                     -8,
                     NULL,
                     SA2_LABEL(sub_801ED24));

                res2 = SA2_LABEL(sub_801E4E4)((I(PLAYER(i).qWorldX) - 2) - PLAYER(i).spriteOffsetX,
                 I(PLAYER(i).qWorldY) - PLAYER(i).spriteOffsetY,
                    PLAYER(i).layer,
                     -8,
                     NULL,
                     SA2_LABEL(sub_801ED24));

                if(res2 > r4) {
                    res2 = r4;
                }
                // _0807D760

                if(res2 < 0) {
                    // _0807D77C
                    PLAYER(i).qWorldX -= Q(res2);
                }         
            }
            // _0807D782

            r4 = SA2_LABEL(sub_801E4E4)(I(PLAYER(i).qWorldY) - PLAYER(i).spriteOffsetY,
                I(PLAYER(i).qWorldX) - PLAYER(i).spriteOffsetX,
                PLAYER(i).layer,
                -8,
                NULL,
                SA2_LABEL(sub_801EE64));

            res2 = SA2_LABEL(sub_801E4E4)(I(PLAYER(i).qWorldY) - PLAYER(i).spriteOffsetY,
                I(PLAYER(i).qWorldX) + PLAYER(i).spriteOffsetX,
                PLAYER(i).layer,
                -8,
                NULL,
                SA2_LABEL(sub_801EE64));

            if(res2 > r4) {
                res2 = r4;
            }

            if(res2 < 0) {
                // _0807D848 + 0x4
                if(platform->unk4C != 0) {
                    // _0807D862
                    PLAYER(i).qWorldX = qPrevWorldX;
                    PLAYER(i).moveState &= ~MOVESTATE_20;
                    PLAYER(i).moveState |= MOVESTATE_DEAD;
                    PLAYER(i).moveState |= MOVESTATE_IA_OVERRIDE;
                }
                // goto _0807E16A
            } else {
                // _0807D8D4
                if(!Coll_Player_Entity_Intersection(
                    s,
                    worldX + I(platform->qUnk40),
                    worldY + I(platform->qUnk44),
                    &PLAYER(i)))
                {
                    // _0807D914

                    ClearBit(platform->unk4E, i);
                }
                // goto _0807E16A
            }
        } else {
            // !GetBit(platform->unk4E, i)
            // _0807D92C
            s8 arr[4] = { -(PLAYER(i).spriteOffsetX + 5), (1 - PLAYER(i).spriteOffsetY), +(PLAYER(i).spriteOffsetX + 5),
                          (PLAYER(i).spriteOffsetY - 1) };
            
            qPrevWorldX = PLAYER(i).qWorldX;
            sp2C = PLAYER(i).qWorldY;

            // TODO/MATCHING: Maybe this isn't the right place for this check?
            if (HB_COLLISION(worldX, worldY, s->hitboxes[0].b, I(PLAYER(i).qWorldX), I(PLAYER(i).qWorldY), (*((Rect8 *)&arr)))) {
                
                
                // _0807DAE8
                sp28 = sub_80096B0(s,
                    worldX + I(platform->qUnk40),
                    worldY + I(platform->qUnk44),
                    &PLAYER(i));

                if(sp28 & 0x170000)
                {
                    // _0807DB04
                    
                    // _0807DFF6
                    PLAYER(i).qWorldY = sp2C;
                    PLAYER(i).moveState &= ~MOVESTATE_20;
                    PLAYER(i).moveState |= MOVESTATE_DEAD;
                    PLAYER(i).moveState |= MOVESTATE_IA_OVERRIDE;
                } else {
                    // _0807E042
                    if(GetBit(platform->unk4F, i))
                    {
                        // _0807E054
                        if(PLAYER(i).charState == CHARSTATE_14)
                        {
                            ClearBit(platform->unk4F, i);
                            PLAYER(i).qSpeedGround = Q(0);

                            Player_TransitionCancelFlyingAndBoost(&PLAYER(i));
                            PLAYER(i).moveState &= ~MOVESTATE_20;
                            
                            if(PLAYER(i).charState == CHARSTATE_14)
                            {
                                if(PLAYER(i).character != CHARACTER_AMY)
                                {
                                    if(PLAYER(i).moveState & MOVESTATE_IN_AIR)
                                    {
                                        // _0807E13C / _0807E148
                                        PLAYER(i).charState = CHARSTATE_WALK;
                                    } else {
                                        // _0807E158 / _0807E164
                                        PLAYER(i).charState = CHARSTATE_SPINATTACK;
                                    }
                                }
                            }
                        }
                    }
                }
                // _0807E16A

                if(!(PLAYER(i).moveState & MOVESTATE_DEAD))
                {
                    // _0807E188
                    if(PLAYER(i).qSpeedAirY >= Q(0))
                    {
                        // _0807E1A0
                        if(worldY + I(platform->qUnk44) > I(PLAYER(i).qWorldY))
                        {
                            // _0807E1C8
                            s8 arr[4] = { -(PLAYER(i).spriteOffsetX + 5), (1 - PLAYER(i).spriteOffsetY), +(PLAYER(i).spriteOffsetX + 5),
                                           (PLAYER(i).spriteOffsetY - 1) };

                            // void sub_807E914(Sprite *s, s32 worldX, s32 worldY, Rect8 *unk08, Player *p);
                            sub_807E914(s,
                                worldX + I(platform->qUnk40),
                                worldY + I(platform->qUnk44),
                                (Rect8*)&arr[0],
                                &PLAYER(i));

                            qPrevWorldX = PLAYER(i).qWorldX;
                            // _0807E258

                            sp28 = sub_80096B0(s, worldX + I(platform->qUnk40), worldY + I(platform->qUnk44), &PLAYER(i));

                            if(sp28 & 0x8)
                            {
                                SetBit(platform->unk4E, i);
                                PLAYER(i).qWorldY += Q(1);
                            } 
                            // else
                            if(sp28 & 0x10000)
                            {
                                PLAYER(i).qWorldX = qPrevWorldX;
                            }
                        }
                    }
                }
            }
        }

    } while(++i < gNumSingleplayerCharacters);
    // _0807E2F0


    if (IS_OUT_OF_DISPLAY_RANGE(worldX, worldY) && IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, platform->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

#endif

#if 0
void TaskDestructor_Platform_Square(struct Task *t) { 
    PlatformSq *platform = TASK_DATA(t);
    VramFree(platform->s.graphics.dest);
}
#endif