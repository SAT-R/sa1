#include "global.h"
#include "core.h"
#include "flags.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/gTask_03006240.h"
#include "game/multiplayer/multipak_connection.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/save.h"

#include "constants/animations.h"
#include "constants/songs.h"
#include "constants/text.h"

#define CM_BACKGROUND_COLOR RGB16(0, 27, 30)

typedef struct ChaoMessage {
    /* 0x00 */ Background bg;
    /* 0x40 */ u8 unk40[2][4];
    /* 0x48 */ s16 unk48;
    /* 0x48 */ s16 unk4A;
    /* 0x48 */ s16 unk4C;
    /* 0x48 */ s16 unk4E;
    /* 0x48 */ s16 unk50;
    /* 0x48 */ u16 unk52;
    /* 0x54 */ u8 unk54;
    /* 0x55 */ u8 mode;
    /* 0x56 */ u8 unk56;
} ChaoMessage; /* 0x58 */

typedef struct ChaoMsgSprite {
    Sprite s;
    s16 unk30;
    s16 unk32;
    u8 unk34;
} ChaoMsgSprite;

extern u8 gUnknown_03005008[MULTI_SIO_PLAYERS_MAX];
u8 gUnknown_030058B4;
u8 gUnknown_030058B8[4];

void Task_ChaoMessageInit(void);
void Task_803C130(void);
void Task_803B7AC(void);
void sub_803B944(void);
void sub_803BAD4(void);
void sub_803BC64(void);
void sub_803BE0C(void);
void sub_803BEB8(void);
void TaskDestructor_803C184(struct Task *t);
void sub_803AB60(ChaoMessage *message);

extern u8 gUnknown_030058A8[][2];

void CreateMultiplayerResultsScreen(u8 mode)
{
    s32 sp4;
    Background *bg;
    ChaoMessage *message;
    u8 *temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 var_r2;

    gUnknown_030058B8[0] = 0;
    gUnknown_030058B8[1] = 0;
    gUnknown_030058B8[2] = 0;
    gUnknown_030058B8[3] = 0;
    gMultiplayerMissingHeartbeats[3] = 0;
    gMultiplayerMissingHeartbeats[2] = 0;
    gMultiplayerMissingHeartbeats[1] = 0;
    gMultiplayerMissingHeartbeats[0] = 0;
    gUnknown_030058B4 = 0;

    for (var_r2 = 0; var_r2 < 4; var_r2++) {
        if (GetBit(gMultiplayerConnections, var_r2)) {
            gUnknown_030058B4 += 1;
        }
    };

    message = TASK_DATA(TaskCreate(Task_ChaoMessageInit, sizeof(ChaoMessage), 0x2000U, 0U, NULL));
    bg = &message->bg;
    message->mode = mode;
    message->unk54 = gUnknown_030058B4;
    sub_803AB60(message);
    message->unk48 = 0xFF10;
    message->unk4A = 0xF0;
    message->unk4C = 0xFF10;
    message->unk4E = 0xF0;
    gDispCnt = 0x3140;
    gBgCntRegs[0] = (DISPCNT_WIN1_ON) | DISPCNT_BG3_ON | DISPCNT_MODE_3;
    gBgScrollRegs[0][0] = 256;
    gBgScrollRegs[0][1] = 0;

    gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gWinRegs[WINREG_WININ] = 0x31;
    gWinRegs[WINREG_WINOUT] = 0x31;
    gBldRegs.bldCnt = 0xBF;
    gBldRegs.bldY = 0x10;

    DmaFill32(3, 0, BG_VRAM + 0x1FE0, 0x40);

    SA2_LABEL(gUnknown_03004D80)[0] = 0xFF;
    SA2_LABEL(gUnknown_03002280)[0][0] = 0;
    SA2_LABEL(gUnknown_03002280)[0][1] = 0;
    SA2_LABEL(gUnknown_03002280)[0][2] = -1;
    SA2_LABEL(gUnknown_03002280)[0][3] = 0x40;

    bg->graphics.dest = (void *)BG_VRAM;
    bg->graphics.anim = 0xFF;
    bg->layoutVram = (u16 *)(BG_VRAM + 0x4000);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = 0x58;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 30;
    bg->targetTilesY = 20;
    bg->paletteOffset = 0;
    bg->flags = 0;
    DrawBackground(bg);

    *gBgPalette = CM_BACKGROUND_COLOR;
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;

    switch (message->mode) {
        case 0:
            m4aSongNumStart(MUS_006);
            break;
        case 1:
            temp_r0_3 = message->unk56;
            if (temp_r0_3 == 0) {
                m4aSongNumStart(MUS_007);
            } else if (temp_r0_3 == 1) {
                m4aSongNumStart(MUS_008);
            } else {
                m4aSongNumStart(MUS_009);
            }
            break;
        case 2:
            m4aSongNumStart(SE_VS_MULTIPAK_CONN_CLOSE);
            break;
    }
}

// (99.02%) https://decomp.me/scratch/HVYh9
NONMATCH("asm/non_matching/game/multiplayer/chao_message__sub_803AB60.inc", void sub_803AB60(ChaoMessage *message))
{
    u8 sp0;
    u8 sp4;
    s16 var_r0;
    s32 var_r3;
    u8 var_r2_3;
    u8 i;
    u8 var_r6;

    switch (message->unk54) {
        case 2:
            message->unk50 = 0x28;
            break;
        case 3:
            message->unk50 = 0x14;
            break;
        default:
        case 0:
        case 1:
        case 4:
            message->unk50 = 0;
            break;
    }

    switch (message->mode) {
        case 0:
            sp0 = 0;
            sp4 = 0;
            for (i = 0; i < message->unk54; i++) {
                u32 unk5008 = gUnknown_03005008[i];
                if (i != (SIO_MULTI_CNT->id)) {
                    if (unk5008 < 10) {
                        gUnknown_030058A8[i][0] = LOADED_SAVE->multiplayerScores[unk5008].wins;
                        gUnknown_030058A8[i][1] = LOADED_SAVE->multiplayerScores[unk5008].losses;
                    } else {
                        gUnknown_030058A8[i][0] = 0;
                        gUnknown_030058A8[i][1] = 0;
                    }

                    if (gUnknown_030058A8[i][0] > gUnknown_030058A8[i][1]) {
                        message->unk40[1][i] = 6;
                        message->unk40[0][i] = 6;
                        sp0++;
                    } else if (gUnknown_030058A8[i][0] < gUnknown_030058A8[i][1]) {
                        message->unk40[1][i] = 1;
                        message->unk40[0][i] = 1;
                        sp4++;
                    } else {
                        message->unk40[1][i] = 0;
                        message->unk40[0][i] = 0;
                    }
                }
            }

            if (sp0 > sp4) {
                message->unk40[1][SIO_MULTI_CNT->id] = 1;
                message->unk40[0][SIO_MULTI_CNT->id] = 1;
            } else if (sp0 < sp4) {
                message->unk40[1][SIO_MULTI_CNT->id] = 6;
                message->unk40[0][SIO_MULTI_CNT->id] = 6;
            } else {
                message->unk40[1][SIO_MULTI_CNT->id] = 0;
                message->unk40[0][SIO_MULTI_CNT->id] = 0;
            }
            break;
        case 1:
            if ((gUnknown_030058B4 == 2) || (gGameMode == 3) || (gGameMode == 5)) {
                for (i = 0; i < message->unk54; i++) {
                    switch (SA2_LABEL(gUnknown_030054B4)[i]) {
                        case 0:
                            message->unk40[1][i] = 2;
                            message->unk40[0][i] = 2;
                            if (i == (SIO_MULTI_CNT->id)) {

                            } else if (SA2_LABEL(gUnknown_030054B4)[SIO_MULTI_CNT->id] == 0) {
                                if ((gGameMode != 3) && (gGameMode != 5)) {
                                    ++LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws;
                                    if (LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws > 99) {
                                        LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws = 99;
                                    }
                                }
                            } else {
                                ++LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].losses;
                                if (LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].losses > 99) {
                                    LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].losses = 99;
                                }
                            }
                            break;
                        default:
                        case 1:
                            message->unk40[1][i] = 3;
                            message->unk40[0][i] = 3;
                            if (i != (SIO_MULTI_CNT->id)) {
                                if (SA2_LABEL(gUnknown_030054B4)[SIO_MULTI_CNT->id] == 0) {
                                    ++LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].wins;
                                    if (LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].wins > 99) {
                                        LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].wins = 99;
                                    }
                                } else if ((gGameMode != 3) && (gGameMode != 5)) {
                                    ++LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws;
                                    if (LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws > 99) {
                                        LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws = 99;
                                    }
                                }
                            }
                            break;
                        case 4:
                            message->unk40[1][i] = 4;
                            message->unk40[0][i] = 4;
                            if ((i != (SIO_MULTI_CNT->id))
                                && (((gGameMode != 3) && (gGameMode != 5))
                                    || (((s32)(gMultiplayerConnections & (0x10 << i)) >> (i + 4))
                                        != ((s32)(gMultiplayerConnections & (0x10 << (SIO_MULTI_CNT->id)))
                                            >> ((SIO_MULTI_CNT->id) + 4))))) {
                                ++LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws;
                                if (LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws > 99) {
                                    LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws = 99;
                                }
                            }
                            break;
                    }
                }

                if (SA2_LABEL(gUnknown_030054B4)[SIO_MULTI_CNT->id] == 0) {
                    message->unk56 = 0;
                    if (++LOADED_SAVE->unk425 > 99) {
                        LOADED_SAVE->unk425 = 99;
                    }
                } else {
                    if ((SA2_LABEL(gUnknown_030054B4)[SIO_MULTI_CNT->id] == 4)) {
                        message->unk56 = 2;
                        if (++LOADED_SAVE->unk427 > 99) {
                            LOADED_SAVE->unk427 = 99;
                        }
                    } else {
                        message->unk56 = 1;
                        if (++LOADED_SAVE->unk426 > 99) {
                            LOADED_SAVE->unk426 = 99;
                        }
                    }
                }
            } else if (gGameMode == 4) {
                for (i = 0, var_r2_3 = 0; i < message->unk54; i++) {
                    if (SA2_LABEL(gUnknown_030054B4)[i] == 0) {
                        var_r2_3 += 1;
                    }
                }
                if (var_r2_3 == 1) {
                    for (i = 0; i < message->unk54; i++) {
                        if (SA2_LABEL(gUnknown_030054B4)[i] == 0) {
                            message->unk40[1][i] = 2;
                            message->unk40[0][i] = 2;

                            if (i != (SIO_MULTI_CNT->id)) {
                                ++LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].losses;
                                if (LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].losses > 99) {
                                    LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].losses = 99;
                                }
                            }
                        } else {
                            message->unk40[1][i] = 3;
                            message->unk40[0][i] = 3;

                            if ((i != (SIO_MULTI_CNT->id)) && (SA2_LABEL(gUnknown_030054B4)[SIO_MULTI_CNT->id] == 0)) {
                                ++LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].wins;
                                if (LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].wins > 99) {
                                    LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].wins = 99;
                                }
                            }
                        }
                    }

                    if (SA2_LABEL(gUnknown_030054B4)[SIO_MULTI_CNT->id] == 0) {
                        message->unk56 = 0;
                        if (++LOADED_SAVE->unk425 > 99) {
                            LOADED_SAVE->unk425 = 99;
                        }
                    } else {
                        message->unk56 = 1;
                        if (++LOADED_SAVE->unk426 > 99) {
                            LOADED_SAVE->unk426 = 99;
                        }
                    }
                } else if (var_r2_3 == 0) {
                    for (i = 0; i < message->unk54; i++) {
                        message->unk40[1][i] = 4;
                        message->unk40[0][i] = 4;

                        if (i != (SIO_MULTI_CNT->id)) {
                            ++LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws;
                            if (LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws > 99) {
                                LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws = 99;
                            }
                        }
                    }
                    message->unk56 = 2;
                    if (++LOADED_SAVE->unk427 > 99) {
                        LOADED_SAVE->unk427 = 99;
                    }
                } else {
                    for (i = 0; i < message->unk54; i++) {
                        if (SA2_LABEL(gUnknown_030054B4)[i] == 0) {
                            message->unk40[1][i] = 4;
                            message->unk40[0][i] = 4;
                            if (i != (SIO_MULTI_CNT->id)) {
                                if (SA2_LABEL(gUnknown_030054B4)[SIO_MULTI_CNT->id] != 0) {
                                    ++LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].losses;
                                    if (LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].losses > 99) {
                                        LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].losses = 99;
                                    }
                                } else {
                                    ++LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws;
                                    if (LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws > 99) {
                                        LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws = 99;
                                    }
                                }
                            }
                        } else {
                            message->unk40[1][i] = 3;
                            message->unk40[0][i] = 3;
                            if (i != (SIO_MULTI_CNT->id)) {
                                if (SA2_LABEL(gUnknown_030054B4)[SIO_MULTI_CNT->id] == 0) {
                                    ++LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].wins;
                                    if (LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].wins > 99) {
                                        LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].wins = 99;
                                    }
                                } else {
                                    ++LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws;
                                    if (LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws > 99) {
                                        LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws = 99;
                                    }
                                }
                            }
                        }
                    }

                    if (SA2_LABEL(gUnknown_030054B4)[SIO_MULTI_CNT->id] == 0) {
                        message->unk56 = 2;
                        if (++LOADED_SAVE->unk427 > 99) {
                            LOADED_SAVE->unk427 = 99;
                        }
                    } else {
                        message->unk56 = 1;
                        if (++LOADED_SAVE->unk426 > 99) {
                            LOADED_SAVE->unk426 = 99;
                        }
                    }
                }
            } else {
                for (var_r6 = 0, i = 0; i < message->unk54; i++) {
                    if (SA2_LABEL(gUnknown_030054B4)[i] == 4) {
                        var_r6++;
                    }
                }

                if (var_r6 == message->unk54) {
                    for (i = 0; i < message->unk54; i++) {
                        message->unk40[1][i] = 4;
                        message->unk40[0][i] = 4;
                    }
                } else {
                    for (i = 0; i < message->unk54; i++) {
                        switch (SA2_LABEL(gUnknown_030054B4)[i]) {
                            case 0:
                                message->unk40[1][i] = 7;
                                message->unk40[0][i] = 2;
                                break;
                            case 1:
                                message->unk40[1][i] = 8;
                                message->unk40[0][i] = 4;
                                break;
                            case 2:
                                message->unk40[1][i] = 9;
                                if (message->unk54 == 3) {
                                    message->unk40[0][i] = 3;
                                } else {
                                    message->unk40[0][i] = 4;
                                }
                                break;
                            case 3:
                                message->unk40[1][i] = 10;
                                message->unk40[0][i] = 3;
                                break;
                            case 4:
                                message->unk40[1][i] = 3;
                                message->unk40[0][i] = 3;
                                break;
                            case 5:
                                message->unk40[1][i] = 3;
                                message->unk40[0][i] = 3;
                                break;
                        }

                        if (i != SIO_MULTI_CNT->id) {
                            if (SA2_LABEL(gUnknown_030054B4)[SIO_MULTI_CNT->id] < SA2_LABEL(gUnknown_030054B4)[i]) {
                                ++LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].wins;
                                if (LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].wins > 99) {
                                    LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].wins = 99;
                                }
                            } else if (SA2_LABEL(gUnknown_030054B4)[SIO_MULTI_CNT->id] == SA2_LABEL(gUnknown_030054B4)[i]) {
                                ++LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws;
                                if (LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws > 99) {
                                    LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].draws = 99;
                                }

                            } else {
                                ++LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].losses;
                                if (LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].losses > 99) {
                                    LOADED_SAVE->multiplayerScores[gUnknown_03005008[i]].losses = 99;
                                }
                            }
                        }
                    }
                }
                if (SA2_LABEL(gUnknown_030054B4)[SIO_MULTI_CNT->id] == 0) {
                    message->unk56 = 0;
                    ++LOADED_SAVE->unk425;
                    if (LOADED_SAVE->unk425 > 99) {
                        LOADED_SAVE->unk425 = 99;
                    }
                } else if ((SA2_LABEL(gUnknown_030054B4)[SIO_MULTI_CNT->id] != 4) || (var_r6 != message->unk54)) {
                    message->unk56 = 1;
                    ++LOADED_SAVE->unk426;
                    if (LOADED_SAVE->unk426 > 99) {
                        LOADED_SAVE->unk426 = 99;
                    }
                } else {
                    message->unk56 = 2;
                    ++LOADED_SAVE->unk427;
                    if (LOADED_SAVE->unk427 > 99) {
                        LOADED_SAVE->unk427 = 99;
                    }
                }
            }
            break;
        case 2:
            for (i = 0; i < message->unk54; i++) {
                message->unk40[1][i] = 5;
                message->unk40[0][i] = 5;
            }
            break;
    }
}
END_NONMATCH

void Task_ChaoMessageInit(void)
{
    u8 i;
    Sprite *s;

    ChaoMessage *message;
    ChaoMsgSprite *msgSprite;

    MultiPakHeartbeat();

    message = TASK_DATA(gCurTask);
    for (i = 0; i < message->unk54; i++) {
        msgSprite = TASK_DATA(TaskCreate(Task_803C130, sizeof(ChaoMsgSprite), 0x2100U, 0U, TaskDestructor_803C184));
        msgSprite->unk30 = 0x2D;
        msgSprite->unk32 = (i * 0x28 + 2);
        msgSprite->unk34 = i;

        s = &msgSprite->s;
        s->graphics.dest = VramMalloc(40);
        s->graphics.anim = SA1_ANIM_MP_CHAO_AVATAR;
        s->variant = message->unk40[0][i];
        s->oamFlags = SPRITE_OAM_ORDER(16);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x3000;

        msgSprite = TASK_DATA(TaskCreate(Task_803C130, sizeof(ChaoMsgSprite), 0x2100U, 0U, TaskDestructor_803C184));
        msgSprite->unk30 = 0xA9;
        msgSprite->unk32 = (i * 0x28 + 0x14);
        msgSprite->unk34 = i;

        s = &msgSprite->s;
        s->graphics.dest = VramMalloc(26);
        if (gLoadedSaveGame.uiLanguage == UILANG_JAPANESE) {
            s->graphics.anim = SA1_ANIM_MP_PLAYER_MSG_JP;
        } else {
            s->graphics.anim = SA1_ANIM_MP_PLAYER_MSG_EN;
        }
        s->variant = message->unk40[1][i];
        s->oamFlags = SPRITE_OAM_ORDER(16);
        s->graphics.size = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x3000;
    }
    sub_80535FC();
    sub_803BEB8();
    message->unk52 = 0;
    gCurTask->main = Task_803B7AC;
    Task_803B7AC();
}

void Task_803B7AC()
{
    ChaoMessage *message;
    u8 var_r6 = 0;

    MultiPakHeartbeat();

    message = TASK_DATA(gCurTask);
    message->unk52++;

    switch (message->unk54) {
        case 0:
            break;
        case 4:
            if (message->unk52 >= 0x10) {
                if (message->unk4E != 0) {
                    message->unk4E -= 0x10;
                } else {
                    var_r6++;
                }
            }
            /* fallthrough */
        case 3:
            if (message->unk52 > 0xAU) {
                if (message->unk4C != 0) {
                    message->unk4C += 0x10;
                } else {
                    var_r6++;
                }
            }
            /* fallthrough */
        case 2:
            if (message->unk52 > 5U) {
                if (message->unk4A != 0) {
                    message->unk4A = (u16)message->unk4A - 0x10;
                } else {
                    var_r6++;
                }
            }
            if (message->unk52 != 0) {
                if (message->unk48 != 0) {
                    message->unk48 += 0x10;
                } else {
                    var_r6++;
                }
            }
            break;
    }
    if (var_r6 == message->unk54) {
        gCurTask->main = sub_803B944;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY -= 1;
    }
    sub_803BE0C();
}

void sub_803B944()
{
    ChaoMessage *message;
    u8 var_r6 = 0;
    u32 i;

    MultiPakHeartbeat();

    message = TASK_DATA(gCurTask);

    if (message->mode != 1) {
        if (++message->unk52 >= 240) {
            gCurTask->main = sub_803BAD4;
            message->unk52 = 0;
        }

        if (message->unk52 == 0x2D) {
            if (message->mode == 0) {
                m4aSongNumStart(SE_156);
            } else {
                m4aSongNumStart(SE_160);
            }
        }
    } else {
        ++message->unk52;

        for (i = 0; i < 4; i++) {
            if (gMultiSioRecv[i].pat0.unk0 == 0xB0) {
                var_r6 = 1;
            }
        }

        if ((A_BUTTON & gPressedKeys) || (message->unk52 > 0x707U) || (var_r6 != 0)) {
            gCurTask->main = sub_803BAD4;
            message->unk52 = 0;
            if (var_r6 == 0) {
                gMultiSioSend.pat0.unk0 = 0xB0;
            }
        }

        if (message->unk52 == 0x2D) {
            if (message->unk56 == 0) {
                m4aSongNumStart(SE_157);
            } else if (message->unk56 == 1) {
                m4aSongNumStart(SE_158);
            } else {
                m4aSongNumStart(SE_159);
            }
        }
    }
    sub_803BE0C();
}

void sub_803BAD4()
{
    ChaoMessage *message;
    u8 var_r6 = 0;

    MultiPakHeartbeat();

    message = TASK_DATA(gCurTask);
    message->unk52++;

    switch (message->unk54) {
        case 0:
            break;
        case 4:
            if (message->unk52 != 0) {
                if (message->unk4E != 240) {
                    message->unk4E += 0x10;
                } else {
                    var_r6++;
                }
            }
            /* fallthrough */
        case 3:
            if (message->unk52 > 5) {
                if (message->unk4C != -240) {
                    message->unk4C -= 0x10;
                } else {
                    var_r6++;
                }
            }
            /* fallthrough */
        case 2:
            if (message->unk52 > 10) {
                if (message->unk4A != 240) {
                    message->unk4A = (u16)message->unk4A + 0x10;
                } else {
                    var_r6++;
                }
            }
            if (message->unk52 >= 0x10) {
                if (message->unk48 != -240) {
                    message->unk48 -= 0x10;
                } else {
                    var_r6++;
                }
            }
            break;
    }
    if (var_r6 == message->unk54) {
        gCurTask->main = sub_803BC64;
    }
    sub_803BE0C();
}
