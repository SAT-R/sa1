#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/multiplayer/communication_outcome.h"
#include "game/multiplayer/mode_select.h"
#include "game/multiplayer/multipak_connection.h"
#include "game/save.h"
#include "game/title_screen.h"

#include "constants/animations.h"
#include "constants/songs.h"
#include "constants/tilemaps.h"
#include "constants/text.h"

typedef enum PakModes {
    PM_MULTI_PAK,
    PM_SINGLE_PAK,

    PM_COUNT
} PakModes;

typedef struct ModeSelect {
    /* 0x00 */ Background bg;
    /* 0x40 */ Sprite s[3];
    /* 0xD0 */ Sprite s4;
    /* 0x100 */ u8 filler100[0xFC];
    /* 0x1FC */ s32 qUnk1FC;
    /* 0x200 */ s16 unk200;
    /* 0x202 */ u8 unk202;
    /* 0x203 */ u8 mode;
    /* 0x204 */ u8 filler204[0x2];
    /* 0x200 */ u8 unk206;
    /* 0x200 */ s16 qUnk208;
    /* 0x200 */ u8 unk20A;
    /* 0x204 */ u8 unk20B[2][4];
    /* 0x214 */ s32 frameCount;
    /* 0x218 */ u8 unk218;
    /* 0x219 */ u8 unk219;
} ModeSelect; /* 0x21C */

void Task_MultiplayerModeSelectScreenInit(void);
void sub_800E798(void);
void Task_800E868(void);
void ModeSelect_InitMultiPak(void);
void Task_MultiPak(void);
void ModeSelect_InitSinglePak(void);

extern void CreatePlayerNameInputMenu();
const AnimId gUnknown_080BB348[UILANG_COUNT] = { SA1_ANIM_MP_GAME_PAK_MODE_JP, SA1_ANIM_MP_GAME_PAK_MODE_EN };
const AnimId gUnknown_080BB34C[UILANG_COUNT] = { SA1_ANIM_MP_OUTCOME_MESSAGES_JP, SA1_ANIM_MP_OUTCOME_MESSAGES_EN };
const AnimId gUnknown_080BB350[UILANG_COUNT] = { SA1_ANIM_MP_PRESS_START_JP, SA1_ANIM_MP_PRESS_START_EN };
const VoidFn sModeInitProcs[PM_COUNT] = { ModeSelect_InitMultiPak, ModeSelect_InitSinglePak };

extern u8 gUnknown_03005008[MULTI_SIO_PLAYERS_MAX];
void sub_800FD9C(u8 *param);
void Task_800F058(void);

void CreateMultiplayerModeSelectScreen(void)
{
    Sprite *s;
    ModeSelect *modeSelect;
    Background *bg;

    if (gLoadedSaveGame.unk4 == 0) {
        m4aSongNumStartOrChange(MUS_CHARACTER_SELECTION);
        gGameMode = 2;
        CreatePlayerNameInputMenu();
        return;
    }
    gDispCnt = 0x1141;
    gBgCntRegs[0] = 0x1E03;
    modeSelect = TASK_DATA(TaskCreate(Task_MultiplayerModeSelectScreenInit, sizeof(ModeSelect), 0x2000U, 0U, NULL));
    modeSelect->unk200 = 0;
    modeSelect->mode = PM_MULTI_PAK;
    modeSelect->qUnk1FC = Q(0);
    modeSelect->qUnk208 = Q(16);

    gBldRegs.bldCnt = 0xFF;
    gBldRegs.bldY = 0x10;

    s = &modeSelect->s[0];
    s->x = 232;
    s->y = 64;
    s->graphics.dest = (void *)OBJ_VRAM0;
    s->oamFlags = SPRITE_OAM_ORDER(15);
    s->graphics.size = 0;
    s->graphics.anim = gUnknown_080BB348[LOADED_SAVE->uiLanguage];
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    s = &modeSelect->s[1];
    s->x = 0;
    s->y = 64;
    s->graphics.dest = (void *)(OBJ_VRAM0 + 0x840);
    s->oamFlags = 0x400;
    s->graphics.size = 0;
    s->graphics.anim = 860;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    bg = &modeSelect->bg;
    bg->graphics.dest = (void *)BG_VRAM;
    bg->graphics.anim = 0;
    bg->layoutVram = (void *)(BG_VRAM + 0xF000);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = (s16)(LOADED_SAVE->uiLanguage + 0x4C);
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 30;
    bg->targetTilesY = 20;
    bg->paletteOffset = 0;
    bg->flags = 0;
    DrawBackground(bg);

    m4aSongNumStartOrChange(MUS_CHARACTER_SELECTION);
}

void Task_800E648()
{
    ModeSelect *modeSelect = TASK_DATA(gCurTask);

    if (DPAD_UP & gRepeatedKeys) {
        m4aSongNumStart(SE_MENU_CURSOR_MOVE);

        if (--modeSelect->mode >= PM_COUNT) {
            modeSelect->mode = PM_SINGLE_PAK;
        }

        modeSelect->qUnk1FC = 0;
    } else if (DPAD_DOWN & gRepeatedKeys) {
        m4aSongNumStart(SE_MENU_CURSOR_MOVE);

        if (++modeSelect->mode >= PM_COUNT) {
            modeSelect->mode = PM_MULTI_PAK;
        }
        modeSelect->qUnk1FC = 0;
    }

    if (A_BUTTON & gPressedKeys) {
        modeSelect->unk20A = 0;
        m4aSongNumStart(SE_SELECT);

        DmaFill32(3, 0, &gMultiSioSend, sizeof(gMultiSioSend));
        DmaFill32(3, 0, &gMultiSioRecv, sizeof(gMultiSioRecv));

        gBldRegs.bldCnt = 0xFF;
        gCurTask->main = Task_800E868;
    } else if (B_BUTTON & gPressedKeys) {
        s32 v = 1;
        modeSelect->unk20A = v;
        gMultiSioEnabled = FALSE;
        MultiSioStop();
        MultiSioInit(0);
        gCurTask->main = Task_800E868;
        m4aSongNumStart(SE_RETURN);
        gBldRegs.bldCnt = 0xFF;
    }
    sub_800E798();
}

void sub_800E798()
{
    Sprite *s;
    s32 temp_r1;
    s32 temp_r2;
    s32 var_r4;
    u32 var_r4_2;

    ModeSelect *modeSelect = TASK_DATA(gCurTask);

    modeSelect->qUnk1FC += Q(0.5);
    if (modeSelect->qUnk1FC > Q(200)) {
        modeSelect->qUnk1FC -= Q(200);
    }

    s = &modeSelect->s[0];
    s->y = (modeSelect->mode * 24) + 64;
    modeSelect->s[0].variant = modeSelect->mode;
    UpdateSpriteAnimation(s);
    var_r4 = I(modeSelect->qUnk1FC) - 200;

    while ((232 - var_r4) > 0) {
        s->x = 232 - var_r4;
        DisplaySprite(s);
        var_r4 += 200;
    }

    s = &modeSelect->s[1];
    s->y = (modeSelect->mode * 24) + 54;
    for (var_r4_2 = 0; var_r4_2 < 8; var_r4_2++) {
        s->x = var_r4_2 * 32;
        DisplaySprite(s);
    }
}

void Task_800E868()
{
    ModeSelect *modeSelect = TASK_DATA(gCurTask);

    modeSelect->qUnk208 += Q(0.5);
    if (modeSelect->qUnk208 >= Q(16)) {
        modeSelect->qUnk208 = Q(16);

        if (modeSelect->unk20A != 0) {
            gBldRegs.bldCnt = 0;
            gBldRegs.bldY = 0;
            m4aSongNumStop(3U);
            SA2_LABEL(gUnknown_03004D80)[0] = 0;
            SA2_LABEL(gUnknown_03002280)[0][0] = 0;
            SA2_LABEL(gUnknown_03002280)[0][1] = 0;
            SA2_LABEL(gUnknown_03002280)[0][2] = -1;
            SA2_LABEL(gUnknown_03002280)[0][3] = 0x20;
            TaskDestroy(gCurTask);
            CreateMainMenu(1);
        } else {
            gCurTask->main = sModeInitProcs[modeSelect->mode];
            SA2_LABEL(gUnknown_03004D80)[0] = 0;
            SA2_LABEL(gUnknown_03002280)[0][0] = 0;
            SA2_LABEL(gUnknown_03002280)[0][1] = 0;
            SA2_LABEL(gUnknown_03002280)[0][2] = -1;
            SA2_LABEL(gUnknown_03002280)[0][3] = 0x20;
            gMultiSioEnabled = 1;
        }
    } else {
        gBldRegs.bldY = I(modeSelect->qUnk208);
        sub_800E798();
    }
}

void ModeSelect_InitMultiPak()
{
    Background *bg;
    Sprite *s;
    s32 i;
    ModeSelect *modeSelect;
    u8 *vram = OBJ_VRAM0;

    m4aSongNumStart(MUS_VS_PLEASE_WAIT);
    modeSelect = TASK_DATA(gCurTask);
    modeSelect->frameCount = (s32)(LOADED_SAVE->unk4 + gFrameCount);

    for (i = 0; i < 4; i++) {
        modeSelect->unk20B[0][i] = 0;
        modeSelect->unk20B[1][i] = 0;
    }
    s = &modeSelect->s[0];
    s->x = 120;
    s->y = 33;
    s->graphics.dest = vram;
    s->oamFlags = 0x3C0;
    s->graphics.size = 0;
    s->graphics.anim = gUnknown_080BB34C[LOADED_SAVE->uiLanguage];
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);
    vram += 0x540;

    s = &modeSelect->s[1];
    s->x = 101;
    s->y = 41;
    s->graphics.dest = vram;
    s->oamFlags = 0x3C0;
    s->graphics.size = 0;
    s->graphics.anim = 0x378;
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);
    vram += 0x460;

    s = &modeSelect->s[2];
    s->x = 120;
    s->y = 109;
    s->graphics.dest = vram;
    s->oamFlags = 0x3C0;
    s->graphics.size = 0;
    s->graphics.anim = SA1_ANIM_MP_OUTCOME_MESSAGES_EN;
    s->variant = 4;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);
    vram += 0x80;

    s = &modeSelect->s4;
    s->x = 120;
    s->y = 125;
    s->graphics.dest = vram;
    s->oamFlags = SPRITE_OAM_ORDER(15);
    s->graphics.size = 0;
    s->graphics.anim = gUnknown_080BB350[LOADED_SAVE->uiLanguage];
    s->variant = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x2000;
    UpdateSpriteAnimation(s);

    bg = &modeSelect->bg;
    bg->graphics.dest = (void *)BG_VRAM;
    bg->graphics.anim = 0;
    bg->layoutVram = (u16 *)(BG_VRAM + 0xF000);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = TM_MP_CONTINUE_SCREEN;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 0x1E;
    bg->targetTilesY = 0x14;
    bg->paletteOffset = 0;
    bg->flags = 0;
    DrawBackground(bg);

    if ((gMultiSioStatusFlags & MULTI_SIO_TYPE) == MULTI_SIO_PARENT) {
        MultiSioStart();
    }

    modeSelect->unk206 = 0;
    modeSelect->unk218 = 0;
    gCurTask->main = Task_MultiPak;
}

// TODO: Fake-match
void Task_MultiPak()
{
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;
    Sprite *s;
    s32 i;
    s32 var_sb;
    u8 temp_r1_2;
    u8 var_r7;
    u8 var_sl;
    ModeSelect *modeSelect;
    union MultiSioData *send_recv;
    u8 unk20B;

#ifndef NON_MATCHING
    register s32 r0 asm("r0");
    register s32 r2 asm("r2");
#else
    s32 r0;
    s32 r2;
#endif

    sp0 = 0;
    sp4 = 0;
    var_sl = 0;
    sp8 = 0;
    var_sb = 0;
    spC = 1;
    if (0x81 & gMultiSioStatusFlags) {
        if (!(gMultiSioStatusFlags & MULTI_SIO_RECV_ID(SIO_MULTI_CNT->id))) {
            if (gMultiplayerMissingHeartbeats[SIO_MULTI_CNT->id]++ >= 0xB5) {
                TasksDestroyAll();
                PAUSE_BACKGROUNDS_QUEUE();
                SA2_LABEL(gUnknown_03005390) = 0;
                PAUSE_GRAPHICS_QUEUE();
                LinkCommunicationError();
                return;
            }
        } else {
            gMultiplayerMissingHeartbeats[SIO_MULTI_CNT->id] = 0;
        }
    }

    modeSelect = TASK_DATA(gCurTask);
    modeSelect->qUnk208 -= 0x80;
    if (modeSelect->qUnk208 < 0) {
        modeSelect->qUnk208 = 0;
    }
    gBldRegs.bldY = I(modeSelect->qUnk208);

    for (i = 0; i < 4; i++) {
        send_recv = &gMultiSioRecv[i];
        r0 = modeSelect->unk20B[0][i];
        r2 = r0 << 1;
        modeSelect->unk20B[0][i] = r2;
        modeSelect->unk20B[1][i] *= 2;
        if ((i == SIO_MULTI_CNT->id) || (CheckBit(gMultiSioStatusFlags, i) && (send_recv->pat0.unk0 >= 0x10))) {
            r2 |= 1;
            modeSelect->unk20B[0][i] = r2;
            sp0 += 1;
            var_sl |= 1 << i;
            if (sp8 != 0) {
                var_sb = 1;
            }
        } else {
            r0 = ((vu16 *)&REG_SIODATA32)[i];
            r2 = r0;
#ifndef NON_MATCHING
            asm("" ::"r"(r0));
#endif
            sp8 = 1;
            if (!CheckBit(gMultiSioStatusFlags, i) && (r2 == 0)) {
                var_sb = 1;
                modeSelect->unk20B[1][i] = (u8)(1 | modeSelect->unk20B[1][i]);
                if (modeSelect->unk20B[0][i] == 0) {
                    spC = 0;
                }
            } else if (modeSelect->unk20B[1][i] != 0) {
                var_sb = 1;
                spC = 0;
            } else if (CheckBit(gMultiSioStatusFlags, i) && (send_recv->pat0.unk0 < 0x10)) {
                var_sb = 1;
                spC = 0;
            }
        }

        if (modeSelect->unk20B[0][i] != 0) {
            sp4 += 1;
        }
    }

    if (sp4 == 0) {
        sp4 = 1;
    }

    send_recv = &gMultiSioRecv[0];
    if (modeSelect->unk218 == 0) {
        if (((gMultiSioStatusFlags & 0x81) == 1) && ((u32)send_recv->pat0.unk0 > 0x10U)) {
            TasksDestroyAll();
            PAUSE_BACKGROUNDS_QUEUE();
            SA2_LABEL(gUnknown_03005390) = 0;
            PAUSE_GRAPHICS_QUEUE();
            LinkCommunicationError();
            return;
        } else {
            modeSelect->unk218 = 1;
        }
    }

    if ((var_sb == 0) && (send_recv->pat0.unk0 == 0x11) && (modeSelect->unk218 != 0)) {
        var_r7 = 2;
        gMultiplayerPseudoRandom = send_recv->pat0.unk10;
        gMultiplayerConnections = send_recv->pat0.unk2;
        for (i = 3; i >= 0; i--) {
            send_recv = &gMultiSioRecv[i];
            if (i == SIO_MULTI_CNT->id) {
                gUnknown_03005008[i] |= 0xFF;
            } else if (CheckBit(gMultiSioStatusFlags, i)) {
                sub_800FD9C((void *)send_recv);
                gUnknown_03005008[i] = var_r7--;
            } else {
                gUnknown_03005008[i] |= 0xFF;
                var_r7 -= 1;
            }
        }
        modeSelect->unk200 = 0;
        modeSelect->unk206 = 0;
        gMultiplayerMissingHeartbeats[3] = 0;
        gMultiplayerMissingHeartbeats[2] = 0;
        gMultiplayerMissingHeartbeats[1] = 0;
        gMultiplayerMissingHeartbeats[0] = 0;
        modeSelect->unk219 = 0;
        gCurTask->main = Task_800F058;
        Task_800F058();
        return;
    } else if (send_recv->pat0.unk0 > 0x12u) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        SA2_LABEL(gUnknown_03005390) = 0;
        PAUSE_GRAPHICS_QUEUE();
        LinkCommunicationError();
        return;
    } else if (2 & gPressedKeys) {
        gMultiSioEnabled = 0;
        MultiSioStop();
        MultiSioInit(0U);
        send_recv = &gMultiSioSend;
        send_recv->pat0.unk0 = 0;
        m4aSongNumStop(3U);
        m4aSongNumStart(0x6BU);
        SA2_LABEL(gUnknown_03004D80)[0] = 0;
        SA2_LABEL(gUnknown_03002280)[0][0] = 0;
        SA2_LABEL(gUnknown_03002280)[0][1] = 0;
        SA2_LABEL(gUnknown_03002280)[0][2] = 0xFF;
        SA2_LABEL(gUnknown_03002280)[0][3] = 0x20;
        TaskDestroy(gCurTask);
        CreateMultiplayerModeSelectScreen();
        return;
    }

    modeSelect->s[2].variant = sp4 + 3;
    for (i = 0; i < 3; i++) {
        s = &modeSelect->s[i];
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    if (gMultiSioStatusFlags & 0x80) {
        if ((sp4 > 1) && (spC != 0)) {
            s = &modeSelect->s4;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }

        if (gMultiSioStatusFlags & 0x80) {
            if (((var_sb == 0) && (sp0 > 1) && (START_BUTTON & gPressedKeys))
                || ((modeSelect->unk206 != 0) && (var_sb == 0) && (sp0 > 1))) {
                send_recv = &gMultiSioSend;
                send_recv->pat0.unk0 = 0x11;
                send_recv->pat0.unk2 = var_sl;
                send_recv->pat0.unk4 = LOADED_SAVE->unk4;
                DmaCopy32(3, &LOADED_SAVE->playerName[0], send_recv->pat0.unk8, sizeof(LOADED_SAVE->playerName));
                send_recv->pat0.unk4 = LOADED_SAVE->unk4;
                send_recv->pat0.unk10 = modeSelect->frameCount;
                DmaCopy32(3, &LOADED_SAVE->playerName[0], send_recv->pat0.unk8, sizeof(LOADED_SAVE->playerName));
                modeSelect->unk206 = 1;
                return;
            }
        }
    }

    if (modeSelect->unk206 != 0) {
        modeSelect->unk206 = 0;
    }

    send_recv = &gMultiSioSend;
    send_recv->pat0.unk0 = 0x10;
    send_recv->pat0.unk4 = LOADED_SAVE->unk4;
    DmaCopy32(3, &LOADED_SAVE->playerName[0], send_recv->pat0.unk8, sizeof(LOADED_SAVE->playerName));
    send_recv->pat0.unk4 = LOADED_SAVE->unk4;
    DmaCopy32(3, &LOADED_SAVE->playerName[0], send_recv->pat0.unk8, sizeof(LOADED_SAVE->playerName));
}

NONMATCH("asm/non_matching/game/multiplayer/mode_select__Task_800F058.inc", void Task_800F058())
{
    Sprite *s;
    s32 var_r3_2;
    s32 var_r3_3;
    s32 var_r5;
    s32 var_r6;
    u16 var_r4;
    u32 var_r3;
    u8 *temp_r0_2;
    u8 *var_r1;
    u8 *var_r2;
    u8 temp_r0;
    u8 temp_r1;
    u8 var_r7;
    union MultiSioData *send_recv_r2;
    union MultiSioData *send_recv_r6;

    ModeSelect *modeSelect;

    var_r6 = 0;
    var_r7 = 0;
    modeSelect = TASK_DATA(gCurTask);

    if (IS_MULTI_PLAYER) {
        for (var_r3 = 0; var_r3 < 4; var_r3++) {
            if (!GetBit(gMultiplayerConnections, var_r3)) {
                break;
            }

            if (!CheckBit(gMultiSioStatusFlags, var_r3)) {
                if (gMultiplayerMissingHeartbeats[var_r3]++ >= 0xB5) {
                    TasksDestroyAll();
                    PAUSE_BACKGROUNDS_QUEUE();
                    SA2_LABEL(gUnknown_03005390) = 0;
                    PAUSE_GRAPHICS_QUEUE();
                    LinkCommunicationError();
                    return;
                }
            } else {
                gMultiplayerMissingHeartbeats[var_r3] = 0;
            }
        }
    }

    send_recv_r2 = &gMultiSioRecv[0];
    if (send_recv_r2->pat0.unk0 == 0x12) {
        gGameMode = GAME_MODE_RACE;
        TaskDestroy(gCurTask);
        CreateMultipackOutcomeScreen(0U);
        return;
    }

    if (send_recv_r2->pat0.unk0 == 0x10) {
        gMultiSioEnabled = 0;
        MultiSioStop();
        MultiSioInit(0U);
        send_recv_r2 = &gMultiSioSend;
        send_recv_r2->pat0.unk0 = 0;
        m4aSongNumStop(3U);
        m4aSongNumStart(0x6BU);
        *sa2__gUnknown_03004D80 = 0;
        sa2__gUnknown_03002280[0][0] = 0;
        sa2__gUnknown_03002280[0][1] = 0;
        sa2__gUnknown_03002280[0][2] = 0xFF;
        sa2__gUnknown_03002280[0][3] = 0x20;
        TaskDestroy(gCurTask);
        CreateMultiplayerModeSelectScreen();
        return;
    } else {
        if (gMultiSioStatusFlags & 0x80) {
            if (B_BUTTON & gPressedKeys) {
                gMultiSioEnabled = 0;
                MultiSioStop();
                MultiSioInit(0U);
                send_recv_r2 = &gMultiSioSend;
                send_recv_r2->pat0.unk0 = 0;
                m4aSongNumStop(3U);
                m4aSongNumStart(0x6BU);
                *sa2__gUnknown_03004D80 = 0;
                sa2__gUnknown_03002280[0][0] = 0;
                sa2__gUnknown_03002280[0][1] = 0;
                sa2__gUnknown_03002280[0][2] = 0xFF;
                sa2__gUnknown_03002280[0][3] = 0x20;
                TaskDestroy(gCurTask);
                CreateMultiplayerModeSelectScreen();
                return;
            }

            if (modeSelect->unk219++ > 60) {
                TasksDestroyAll();
                PAUSE_BACKGROUNDS_QUEUE();
                SA2_LABEL(gUnknown_03005390) = 0;
                PAUSE_GRAPHICS_QUEUE();
                LinkCommunicationError();
                return;
            }
        }

        for (var_r5 = 0; var_r5 < 4; var_r5++) {
            send_recv_r2 = &gMultiSioRecv[var_r5];
            modeSelect->unk20B[0][var_r5] *= 2;
            if ((SIO_MULTI_CNT->id == var_r5) || (send_recv_r2->pat0.unk0 > 0x10U)) {
                var_r7 |= 1 << var_r5;
            }
            if (modeSelect->unk20B[0][var_r5] != 0) {
                var_r6 += 1;
            }
        }

        if (var_r6 == 0) {
            var_r6 = 1;
        }

        modeSelect->s[2].variant = var_r6 + 3;
        for (var_r5 = 0; var_r5 < 3; var_r5++) {
            s = &modeSelect->s[var_r5];
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }

        if (gMultiSioStatusFlags & 0x80) {
            send_recv_r6 = &gMultiSioSend;
            send_recv_r6->pat0.unk0 = 0x12;
            send_recv_r6->pat0.unk2 = var_r7;
            send_recv_r6->pat0.unk4 = gLoadedSaveGame.unk4;
            DmaCopy32(3, &LOADED_SAVE->playerName[0], send_recv_r6->pat0.unk8, sizeof(LOADED_SAVE->playerName));

            for (var_r5 = 0, var_r7 = gMultiplayerConnections; var_r5 < 4; var_r5++) {
                // union MultiSioData *recv = gMultiSioRecv;
                if (!GetBit(var_r7, var_r5) || var_r5 == 0) {
                    continue;
                }

                if (!CheckBit(gMultiSioStatusFlags, var_r5) || (send_recv_r2 = &gMultiSioRecv[var_r5])->pat0.unk0 != 0x11) {
                    goto lbl;
                }
            }
            return;

        lbl:
            send_recv_r6->pat0.unk0 = 0x11;
        } else {
            send_recv_r6 = &gMultiSioSend;
            gMultiSioSend.pat0.unk0 = 0x11;
            gMultiSioSend.pat0.unk2 = var_r7;
            gMultiSioSend.pat0.unk4 = gLoadedSaveGame.unk4;
            DmaCopy32(3, &LOADED_SAVE->playerName[0], send_recv_r6->pat0.unk8, sizeof(LOADED_SAVE->playerName));
        }
    }
}
END_NONMATCH
