#include "global.h"
#include "core.h"
#include "flags.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/multiplayer/mp_player.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    // NOTE: EntityShared HAS to be the first element,
    //       as long as TaskDestructor_EntityShared is used.
    /* 0x00 */ EntityShared shared;
    /* 0x3C */ u16 unk3C;
    /* 0x3E */ u8 unk3E;
} StageGoal;

void Task_StageGoal(void);
void Task_StageGoal2(void);
void Task_StageGoal3(void);
void TaskDestructor_EntityShared(struct Task *t);

void CreateEntity_StageGoal(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    if (me->d.sData[1] == 0) {
        if (IS_SINGLE_PLAYER) {
            return;
        }
    } else if (gCurrentLevel == LEVEL_INDEX(ZONE_6, ACT_1)) {
        if (IS_MULTI_PLAYER) {
            return;
        }
    }

    {
        struct Task *t = TaskCreate(Task_StageGoal, sizeof(StageGoal), 0x2000, 0, TaskDestructor_EntityShared);
        StageGoal *goal = TASK_DATA(t);
        Sprite *s = &goal->shared.s;

        goal->shared.base.regionX = regionX;
        goal->shared.base.regionY = regionY;
        goal->shared.base.me = me;
        goal->shared.base.meX = me->x;
        goal->shared.base.id = id;

        s->x = TO_WORLD_POS(me->x, regionX);
        s->y = TO_WORLD_POS(me->y, regionY);

        SET_MAP_ENTITY_INITIALIZED(me);

        s->graphics.dest = ALLOC_TILES(SA1_ANIM_GOAL);
        s->oamFlags = SPRITE_OAM_ORDER(18);
        s->graphics.size = 0;
        s->graphics.anim = SA1_ANIM_GOAL;
        s->variant = 0;
        s->animCursor = 0;
        s->qAnimDelay = Q(0);
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 2);

        UpdateSpriteAnimation(s);
    }
}

// (91.05%) https://decomp.me/scratch/VAW5A
NONMATCH("asm/non_matching/game/interactables/stage_goal__Task_StageGoal.inc", void Task_StageGoal(void))
{
    StageGoal *goal;
    Sprite *s;
#ifndef BUG_FIX
    MultiplayerPlayer *mpp;
#else
    // NOTE: This is moreso to increase debugability, rather than a "fix".
    MultiplayerPlayer *mpp = NULL;
#endif
    CamCoord worldX, worldY;
    MapEntity *me;
    u8 i;

    if (IS_MULTI_PLAYER) {
        mpp = TASK_DATA(gMultiplayerPlayerTasks[SIO_MULTI_CNT->id]);
    }

    goal = TASK_DATA(gCurTask);
    s = &goal->shared.s;
    me = goal->shared.base.me;

    worldX = TO_WORLD_POS(goal->shared.base.meX, goal->shared.base.regionX);
    worldY = TO_WORLD_POS(me->y, goal->shared.base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (gGameMode == GAME_MODE_MULTI_PLAYER || gGameMode == GAME_MODE_TEAM_PLAY) {
        bool32 sp08 = TRUE;
        s32 playerWorldX = I(gPlayer.qWorldX);

        if (playerWorldX > worldX) {
            // _0801F336

            if ((gCurrentLevel != LEVEL_INDEX(ZONE_4, ACT_2)) || I(gPlayer.qWorldY) <= worldY - (DISPLAY_HEIGHT / 2)) {
                // _0801F34C
                if (!IS_SINGLE_PLAYER) {
                    if ((gCurrentLevel == LEVEL_INDEX(ZONE_6, ACT_1)) && (I(gPlayer.qWorldY) < worldY)) {
                        goto _0801F3D2;
                    } else {
                        goto _0801F3C4;
                    }
                } else {
                    // _0801F380
                    // TODO: Use RECT_COLLISION macro?
                    if ((gCurrentLevel != LEVEL_INDEX(ZONE_6, ACT_1))
                        || ((I(gPlayer.qWorldX) + gPlayer.spriteInfoBody->s.hitboxes[0].b.left) > worldX)
                        || ((I(gPlayer.qWorldX) + gPlayer.spriteInfoBody->s.hitboxes[0].b.left
                             + (gPlayer.spriteInfoBody->s.hitboxes[0].b.right - gPlayer.spriteInfoBody->s.hitboxes[0].b.left))
                            < worldX)
                        || ((I(gPlayer.qWorldY) + gPlayer.spriteInfoBody->s.hitboxes[0].b.top) > worldY)
                        || ((I(gPlayer.qWorldY) + gPlayer.spriteInfoBody->s.hitboxes[0].b.top
                             + (gPlayer.spriteInfoBody->s.hitboxes[0].b.bottom - gPlayer.spriteInfoBody->s.hitboxes[0].b.top))
                            < worldY)) {
                    _0801F3C4:
                        if ((gCurrentLevel == LEVEL_INDEX(ZONE_4, ACT_2)) || (gCurrentLevel == LEVEL_INDEX(ZONE_6, ACT_1))) {
#if 1
                            goto _0801F4B8;
#else
                            gCamera.maxX = gRefCollision->pxWidth;
                            mpp->unk5C &= ~0x1;
#endif
                        }
                    }
                }
            }
        _0801F3D2:
            mpp->unk5C |= 0x1;
            gCamera.maxX = worldX + (DISPLAY_WIDTH / 2);

            i = 0;
            if (gMultiplayerPlayerTasks[i] != NULL) {
                for (i = 0; i < MULTI_SIO_PLAYERS_MAX && gMultiplayerPlayerTasks[i] != NULL; i++) {
                    MultiplayerPlayer *mpp; // TODO: Extra decl. might not be necessary?
                    if (i != SIO_MULTI_CNT->id) {
                        s32 r2, r3;
                        mpp = TASK_DATA(gMultiplayerPlayerTasks[i]);

                        r2 = (gMultiplayerConnections & (0x10 << i)) >> (i + 4);
                        r3 = (gMultiplayerConnections & (0x10 << SIO_MULTI_CNT->id)) >> (SIO_MULTI_CNT->id + 4);

                        if (r2 == r3) {
                            if (!(mpp->unk54 & 0x100)) {
                                sp08 = FALSE;
                            }
                        }
                    }
                    // _0801F44C: continue
                }
            }
            // _0801F460

            if (sp08) {
                if (SA2_LABEL(gUnknown_030054B4)[SIO_MULTI_CNT->id] != -1) {
                    // _0801F482
                    s->variant = 1;
                    gCurTask->main = Task_StageGoal3;
                    // goto _0801F606;
                    gCurTask->main();
                    return;
                } else {
                    goto _0801F5DA;
                }
                // _0801F5DA
            } else {
                goto _0801F620;
            }
        } else {
        _0801F4B8:
            gCamera.maxX = gRefCollision->pxWidth;
            mpp->unk5C &= ~0x1;
            goto _0801F620;
        }
    } else if (I(gPlayer.qWorldX) > worldX) {
        // _0801F4D8 + 0x10
        // _0801F4E6
        if (gCurrentLevel != LEVEL_INDEX(ZONE_4, ACT_2) || (I(gPlayer.qWorldY) <= worldY - (DISPLAY_HEIGHT / 2))) {
            if (((IS_MULTI_PLAYER && (gCurrentLevel != LEVEL_INDEX(ZONE_6, ACT_1) || I(gPlayer.qWorldY) >= worldY))
                 || (IS_SINGLE_PLAYER
                     && ((gCurrentLevel != LEVEL_INDEX(ZONE_6, ACT_1))
                         || (I(gPlayer.qWorldX) + gPlayer.spriteInfoBody->s.hitboxes[0].b.left > worldX)
                         || (I(gPlayer.qWorldX) + gPlayer.spriteInfoBody->s.hitboxes[0].b.left
                                 + (gPlayer.spriteInfoBody->s.hitboxes[0].b.right - gPlayer.spriteInfoBody->s.hitboxes[0].b.left)
                             < worldX)
                         || (I(gPlayer.qWorldY) + gPlayer.spriteInfoBody->s.hitboxes[0].b.top > worldY)
                         || (I(gPlayer.qWorldY) + gPlayer.spriteInfoBody->s.hitboxes[0].b.top
                                 + (gPlayer.spriteInfoBody->s.hitboxes[0].b.bottom - gPlayer.spriteInfoBody->s.hitboxes[0].b.top)
                             < worldY))))) {
                // _0801F564
                if ((gCurrentLevel == LEVEL_INDEX(ZONE_4, ACT_2)) || (gCurrentLevel == LEVEL_INDEX(ZONE_6, ACT_1))) {
                    goto _0801F620;
                }
            }
        }
        // _0801F572

        if (IS_MULTI_PLAYER) {
            if (SA2_LABEL(gUnknown_030054B4)[SIO_MULTI_CNT->id] != -1) {
                goto _30C;
            }
        } else {
            // _0801F5A4
            if (SA2_LABEL(gUnknown_030054B4)[0] != -1) {
            _30C:
                s->variant = 1;
                gCurTask->main = Task_StageGoal3;
                gCurTask->main();
                return;
            } else {
                gStageFlags |= (FLAGS_UPDATE_BACKGROUND_PALETTES | FLAGS_UPDATE_SPRITE_PALETTES);
            }
        }

    _0801F5DA:
        if (gCurrentLevel != LEVEL_INDEX(ZONE_6, ACT_1)) {
            // Don't play the goal SFX in Egg Rocket, because it's not the Goal Post.
            m4aSongNumStart(SE_GOAL);
        }
        // _0801F5EA

        goal->unk3C = 0;
        goal->unk3E = 0;

        s->variant = 1;
        gCurTask->main = Task_StageGoal2;
        gCurTask->main();
        return;
    } else {
    _0801F620:
        if (IS_OUT_OF_CAM_RANGE(s->x, s->y)) {
            SET_MAP_ENTITY_NOT_INITIALIZED(me, goal->shared.base.meX);
            TaskDestroy(gCurTask);
            return;
        } else if (me->d.sData[0] != 0) {
            DisplaySprite(s);
        }
    }
}
END_NONMATCH