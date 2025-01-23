#include "core.h"

#include "game/stage/player.h"
#include "game/stage/camera.h"
#include "game/stage/item_tasks.h"

#include "game/multiplayer/mp_attack_1_effect.h"

#include "game/multiplayer/multiplayer_event_mgr.h"
#include "game/multiplayer/finish.h"
#include "game/multiplayer/mp_player.h"

#include "lib/m4a/m4a.h"

#include "constants/sa2_char_states.h"
#include "constants/songs.h"

void Task_MultiplayerEventMgr_Send(void);
void Task_MultiplayerEventMgr_Receive(void);
void ReceiveRoomEvent_ReachedStageGoal(union MultiSioData *recv, u8 i);
void ReceiveRoomEvent_ItemEffect(union MultiSioData *recv, u8 i);
typedef void (*RoomEventHandler)(union MultiSioData *recv, u8 i);

#if 0

const RoomEventHandler gRoomEventHandlers[] = {
    [ROOMEVENT_TYPE_PLATFORM_CHANGE - 1] = ReceiveRoomEvent_PlatformChange,
    [ROOMEVENT_TYPE_ITEMBOX_BREAK - 1] = ReceiveRoomEvent_ItemBoxBreak,
    [ROOMEVENT_TYPE_ENEMY_DESTROYED - 1] = ReceiveRoomEvent_EnemyDestroyed,
    [ROOMEVENT_TYPE_PLAYER_RING_LOSS - 1] = ReceiveRoomEvent_PlayerRingLoss,
    [ROOMEVENT_TYPE_MYSTERY_ITEMBOX_BREAK - 1] = ReceiveRoomEvent_MysteryItemBoxBreak,
    [ROOMEVENT_TYPE_ITEMEFFECT_APPLIED - 1] = ReceiveRoomEvent_ItemEffect,
    [ROOMEVENT_TYPE_REACHED_STAGE_GOAL - 1] = ReceiveRoomEvent_ReachedStageGoal,
    [ROOMEVENT_TYPE_UNKNOWN - 1] = ReceiveRoomEvent_Unknown,
    [8] = NULL,
};

void Task_MultiplayerEventMgr_Send(void)
{
    u8 id = SIO_MULTI_CNT->id;
    struct MultiSioData_0_0 *send = &gMultiSioSend.pat0;
    u32 something = send->unk8[0] & (0x1000 << id);

    u8 i;

    for (i = 0; i < 4 && GetBit(gMultiplayerConnections, i); i++) {
        struct MultiSioData_0_0 *recv;
        if (!(gMultiSioStatusFlags & MULTI_SIO_RECV_ID(i))) {
            return;
        } else {
            recv = &gMultiSioRecv[i].pat0;
            if (0x5000 == recv->unk0 && (something == 0) != (!(recv->unk8[0] & (0x1000 << id)))) {
                return;
            }
        }
    }

    if (gRoomEventQueueWritePos == gRoomEventQueueSendPos) {
        DmaFill16(3, 0, &gMultiSioSend.pat0.unk8[3], sizeof(RoomEvent) - 1);
    } else {
        DmaCopy16(3, &gRoomEventQueue[gRoomEventQueueSendPos], &gMultiSioSend.pat0.unk8[3], sizeof(RoomEvent) - 1);
        gRoomEventQueueSendPos = (gRoomEventQueueSendPos + 1) & 0xF;
        send->unk8[0] ^= (0x1000 << id);
    }
}

void Task_MultiplayerEventMgr_Receive(void)
{
    u8 id = SIO_MULTI_CNT->id;
    struct MultiSioData_0_0 *send = &gMultiSioSend.pat0;

    u8 i;

    for (i = 0; i < 4; i++) {
        union MultiSioData *recv;
        if (i == id) {
            continue;
        }
        if (!GetBit(gMultiplayerConnections, i)) {
            break;
        }

        if (!(gMultiSioStatusFlags & MULTI_SIO_RECV_ID(i))) {
            continue;
        }

        recv = &gMultiSioRecv[i];
        if (recv->pat0.unk0 == 0x5000 && (recv->pat0.unk8[0] & (0x1000 << i)) != (send->unk8[0] & (0x1000 << i))) {
            if ((u8)(recv->pat0.unkE - 1) < 8) {

                gRoomEventHandlers[recv->pat0.unkE - 1](recv, i);
            }
            send->unk8[0] ^= (0x1000 << i);
        }
    }
}

void ReceiveRoomEvent_ItemEffect(union MultiSioData *recv, u8 i)
{
    MultiplayerPlayer *mpp = TASK_DATA(gMultiplayerPlayerTasks[i]);
    MultiplayerPlayer *us = TASK_DATA(gMultiplayerPlayerTasks[SIO_MULTI_CNT->id]);

    if (!(us->unk5C & 1) && PLAYER_IS_ALIVE && sa2__gUnknown_030054B4[SIO_MULTI_CNT->id] == -1) {
        switch (recv->pat0.unkF) {
            case 0: {
                if (gGameMode != GAME_MODE_TEAM_PLAY
                    || ((gMultiplayerConnections & (0x10 << (i))) >> ((i + 4))
                        != (gMultiplayerConnections & (0x10 << (SIO_MULTI_CNT->id))) >> (SIO_MULTI_CNT->id + 4))) {
                    gPlayer.itemEffect |= PLAYER_ITEM_EFFECT__CONFUSION;
                    gPlayer.confusionTimer = ZONE_TIME_TO_INT(0, 10);
                    CreateItemTask_Confusion(gPlayer.character);
                    //m4aSongNumStart(SE_ITEM_CONFUSION);
                }
                break;
            }
            case 1: {
                if ((u8)recv->pat0.unk10 == SIO_MULTI_CNT->id && !(gPlayer.itemEffect & PLAYER_ITEM_EFFECT__TELEPORT)) {
                    u32 prevMoveState = gPlayer.moveState & (MOVESTATE_IN_SCRIPTED | MOVESTATE_IGNORE_INPUT | MOVESTATE_IA_OVERRIDE);
                    if (!(prevMoveState)) {
                        InitializePlayer(&gPlayer);
                        gPlayer.qWorldX = QS(mpp->pos.x);
                        gPlayer.qWorldY = QS(mpp->pos.y - (s8)mpp->unk58[0]);
                        m4aMPlayTempoControl(&gMPlayInfo_BGM, 256);
                        gPlayer.moveState = prevMoveState;
                        SPRITE_FLAG_CLEAR(&gPlayer.spriteInfoBody->s, PRIORITY);
                        SPRITE_FLAG_SET_VALUE(&gPlayer.spriteInfoBody->s, PRIORITY, 2);

                        SPRITE_FLAG_CLEAR(&gPlayer.spriteInfoLimbs->s, PRIORITY);
                        SPRITE_FLAG_SET_VALUE(&gPlayer.spriteInfoLimbs->s, PRIORITY, 2);

                        gCamera.unk50 &= ~3;
                        gPlayer.layer = (mpp->unk54 >> 7) & 1;
                        gPlayer.moveState |= MOVESTATE_IN_AIR;
                        mpp->unk60 = 30;
                        gPlayer.timerInvulnerability = ZONE_TIME_TO_INT(0, 2);
                        gCamera.x = (I(gPlayer.qWorldX) + gCamera.shiftX) - (DISPLAY_WIDTH / 2);
                        gCamera.y = (I(gPlayer.qWorldY) + gCamera.shiftY) - (DISPLAY_HEIGHT / 2);
                        m4aSongNumStart(SE_218);
                    }
                }
                break;
            }
            case 2: {
                if (!(gPlayer.moveState & MOVESTATE_IN_SCRIPTED)
                    && (gGameMode != GAME_MODE_TEAM_PLAY
                        || ((gMultiplayerConnections & (0x10 << (i))) >> ((i + 4))
                            != (gMultiplayerConnections & (0x10 << (SIO_MULTI_CNT->id))) >> (SIO_MULTI_CNT->id + 4)))) {
                    gPlayer.itemEffect |= PLAYER_ITEM_EFFECT__MP_SLOW_DOWN;

                    gPlayer.timerSpeedup = ZONE_TIME_TO_INT(0, 10);
                    gPlayer.itemEffect &= ~PLAYER_ITEM_EFFECT__SPEED_UP;
                    CreateItemTask_Confusion(gPlayer.character);
                    //m4aSongNumStart(SE_ITEM_CONFUSION);
                    m4aMPlayTempoControl(&gMPlayInfo_BGM, 128);
                }
                break;
            }
            case 3: {
                if (gGameMode != GAME_MODE_TEAM_PLAY
                    || ((gMultiplayerConnections & (0x10 << (i))) >> ((i + 4))
                        != (gMultiplayerConnections & (0x10 << (SIO_MULTI_CNT->id))) >> (SIO_MULTI_CNT->id + 4))) {
                    gShouldSpawnMPAttackEffect = TRUE;
                    m4aSongNumStart(SE_219);
                }
                break;
            }
            case 4: {
                if (gGameMode != GAME_MODE_TEAM_PLAY
                    || ((gMultiplayerConnections & (0x10 << (i))) >> ((i + 4))
                        != (gMultiplayerConnections & (0x10 << (SIO_MULTI_CNT->id))) >> (SIO_MULTI_CNT->id + 4))) {
                    gShouldSpawnMPAttack2Effect = TRUE;
                    m4aSongNumStart(SE_216);
                }
                break;
            }
        }
    }
}

// (95.93%) https://decomp.me/scratch/9Yxab
void ReceiveRoomEvent_ReachedStageGoal(union MultiSioData *recv, u8 i)
{
    u32 j;
    MultiplayerPlayer *mpp;

    s32 count2 = 0;
    s32 count = 0;
    s32 count3 = 0;
    bool8 somebool = FALSE;
    mpp = TASK_DATA(gMultiplayerPlayerTasks[i]);

    for (j = 0; j < 4; j++) {
        // u32 id = SIO_MULTI_CNT->id;
        MultiplayerPlayer *mpp2;
        if (gMultiplayerPlayerTasks[j] == NULL) {
            break;
        }
        count++;
        mpp2 = TASK_DATA(gMultiplayerPlayerTasks[j]);
        if (gGameMode != GAME_MODE_MULTI_PLAYER && gGameMode != GAME_MODE_TEAM_PLAY) {
#if (GAME == GAME_SA1)
            if (mpp2->unk5C & 1)
#else
            if (mpp2->unk5C & 1 && sa2__gUnknown_030054B4[j] != -1)
#endif
            {
                count2++;
                count3++;
            }
        } else {
            if ((gMultiplayerConnections & (0x10 << (j))) >> ((j + 4))
                    != (gMultiplayerConnections & (0x10 << (SIO_MULTI_CNT->id))) >> (SIO_MULTI_CNT->id + 4)
                && (s8)sa2__gUnknown_030054B4[j] == 0) {
                count2 = 1;
            }
        }
    }

    if (sa2__gUnknown_030054B4[i] == -1) {
        sa2__sub_8019CCC(i, count2);
    } else {
        somebool = 1;
    }

    if (gGameMode == GAME_MODE_MULTI_PLAYER || gGameMode == GAME_MODE_TEAM_PLAY) {
        for (j = 0; j < 4 && gMultiplayerPlayerTasks[j] != NULL; j++) {
            Player *p = &gPlayer;
            
            if (j != i && sa2__gUnknown_030054B4[j] == -1
                && (gMultiplayerConnections & (0x10 << (j))) >> ((j + 4)) == (gMultiplayerConnections & (0x10 << (i))) >> (i + 4)) {
                sa2__sub_8019CCC(j, count2);
                if (j == SIO_MULTI_CNT->id) {
                    s32 temp;
                    Player_TransitionCancelFlyingAndBoost(p);
                    p->moveState &= ~MOVESTATE_STOOD_ON_OBJ;
                    p->moveState &= ~MOVESTATE_20;
                    p->moveState &= ~MOVESTATE_4;
                    p->moveState &= ~MOVESTATE_FLIP_WITH_MOVE_DIR;
                    p->moveState |= MOVESTATE_IN_AIR;
                    p->moveState &= ~MOVESTATE_400;
                    p->moveState &= ~MOVESTATE_100;
                    p->charState = CHARSTATE_HIT_AIR;
                    sa2__sub_8023B5C(&gPlayer, 0xe);
                    p->spriteOffsetX = 6;
                    p->spriteOffsetY = 0xE;
                    p->sa2__unk61 = 0;
                    p->sa2__unk62 = 0;
                    p->qSpeedGround = 0;
                    p->qSpeedAirX = 0;
                    p->moveState |= MOVESTATE_IGNORE_INPUT;
                    p->heldInput = 0;
                    p->moveState |= MOVESTATE_FACING_LEFT;
#if (GAME == GAME_SA1)
                    p->charState = CHARSTATE_ACT_CLEAR_B;
#elif (GAME == GAME_SA2)
                    p->charState = CHARSTATE_ACT_CLEAR_A;
#endif
                    p->moveState |= MOVESTATE_800000;
                }
            }
        }
    }

    mpp->unk5C |= 1;

    if (count2 == 0 && !(gStageFlags & 1)) {
        gStageFlags |= 4;
        gCourseTime = 3600; // max?
    };

    if ((count3 + 1) >= (u32)(count - 1) || gGameMode == GAME_MODE_MULTI_PLAYER || gGameMode == GAME_MODE_TEAM_PLAY) {
        for (j = 0; j < 4; j++) {
            MultiplayerPlayer *mpp2;

            if (gMultiplayerPlayerTasks[j] == NULL) {
                break;
            }

            mpp2 = TASK_DATA(gMultiplayerPlayerTasks[j]);

            if(j != i)
            {
                if (sa2__gUnknown_030054B4[j] == -1) {
                    if (gGameMode == GAME_MODE_MULTI_PLAYER || gGameMode == GAME_MODE_TEAM_PLAY || gGameMode == GAME_MODE_TEAM_PLAY) {
                        sa2__sub_8019CCC(j, 1);
                    } else {
                        u32 temp;
                        RoomEvent *roomEvent;
                        sa2__sub_8019CCC(j, count - 1);
#if (GAME == GAME_SA2)
                        mpp2->unk5C |= 1;
#endif
                        gPlayer.moveState |= MOVESTATE_IGNORE_INPUT;
                        gPlayer.heldInput = 0;

#if (GAME == GAME_SA2)
                        temp = gRoomEventQueueWritePos;
                        roomEvent = &gRoomEventQueue[temp];
                        gRoomEventQueueWritePos++;
                        gRoomEventQueueWritePos &= 0xF;
        
                        roomEvent->type = ROOMEVENT_TYPE_REACHED_STAGE_GOAL;
#endif
                    }
                }
            }
        }

        if (!somebool) {
            sub_8019F08();
        }
    }
}
#endif

struct Task *CreateMultiplayerSendEventMgr(void)
{
    struct Task *t = TaskCreate(Task_MultiplayerEventMgr_Send, 0, -2, 0, NULL);
    DmaFill32(3, 0, &gMultiSioSend, sizeof(gMultiSioSend));
    DmaFill32(3, 0, &gMultiSioRecv, sizeof(gMultiSioRecv));
    DmaFill32(3, 0, &gRoomEventQueue, sizeof(gRoomEventQueue));
    gRoomEventQueueWritePos = gRoomEventQueueSendPos = 0;
    return t;
}

struct Task *CreateMultiplayerReceiveEventMgr(void)
{
    struct Task *t = TaskCreate(Task_MultiplayerEventMgr_Receive, 0, 1, 0, NULL);
    DmaFill32(3, 0, &gMultiSioSend, sizeof(gMultiSioSend));
    DmaFill32(3, 0, &gMultiSioRecv, sizeof(gMultiSioRecv));
    DmaFill32(3, 0, &gRoomEventQueue, sizeof(gRoomEventQueue));
    gRoomEventQueueSendPos = 0;
    gRoomEventQueueWritePos = 0;
    return t;
}