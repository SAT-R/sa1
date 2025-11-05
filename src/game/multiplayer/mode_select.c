#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/multiplayer/mode_select.h"
#include "game/save.h"
#include "game/title_screen.h"

#include "constants/animations.h"
#include "constants/songs.h"
#include "constants/tilemaps.h"
#include "constants/text.h"

typedef struct ModeSelect {
    /* 0x00 */ Background bg;
    /* 0x40 */ Sprite s;
    /* 0x70 */ Sprite s2;
    /* 0xA0 */ Sprite s3;
    /* 0xD0 */ Sprite s4;
    /* 0x100 */ u8 filler100[0xFC];
    /* 0x1FC */ s32 qUnk1FC;
    /* 0x200 */ s16 unk200;
    /* 0x202 */ u8 unk202;
    /* 0x203 */ u8 unk203;
    /* 0x204 */ u8 filler204[0x2];
    /* 0x200 */ u8 unk206;
    /* 0x200 */ s16 qUnk208;
    /* 0x200 */ u8 unk20A;
    /* 0x204 */ u8 unk20B[2][4];
    /* 0x214 */ s32 frameCount;
    /* 0x218 */ u8 unk218;
} ModeSelect; /* 0x21C */

void Task_MultiplayerModeSelectScreenInit(void);
void sub_800E798(void);
void Task_800E868(void);
void ModeSelect_InitGraphicsEN(void);
void sub_800EB4C(void);
void ModeSelect_InitGraphicsJP(void);

extern void CreatePlayerNameInputMenu();
const AnimId gUnknown_080BB348[UILANG_COUNT] = { SA1_ANIM_MP_GAME_PAK_MODE_JP, SA1_ANIM_MP_GAME_PAK_MODE_EN };
const AnimId gUnknown_080BB34C[UILANG_COUNT] = { SA1_ANIM_MP_OUTCOME_MESSAGES_JP, SA1_ANIM_MP_OUTCOME_MESSAGES_EN };
const AnimId gUnknown_080BB350[UILANG_COUNT] = { SA1_ANIM_MP_PRESS_START_JP, SA1_ANIM_MP_PRESS_START_EN };
const VoidFn gUnknown_080BB354[UILANG_COUNT] = { ModeSelect_InitGraphicsEN, ModeSelect_InitGraphicsJP };

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
    modeSelect->unk203 = 0;
    modeSelect->qUnk1FC = Q(0);
    modeSelect->qUnk208 = Q(16);

    gBldRegs.bldCnt = 0xFF;
    gBldRegs.bldY = 0x10;

    s = &modeSelect->s;
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

    s = &modeSelect->s2;
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

        if (--modeSelect->unk203 > 1) {
            modeSelect->unk203 = 1;
        }

        modeSelect->qUnk1FC = 0;
    } else if (DPAD_DOWN & gRepeatedKeys) {
        m4aSongNumStart(SE_MENU_CURSOR_MOVE);

        if (++modeSelect->unk203 > 1U) {
            modeSelect->unk203 = 0;
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

    s = &modeSelect->s;
    s->y = (modeSelect->unk203 * 24) + 64;
    modeSelect->s.variant = modeSelect->unk203;
    UpdateSpriteAnimation(s);
    var_r4 = I(modeSelect->qUnk1FC) - 200;

    while ((232 - var_r4) > 0) {
        s->x = 232 - var_r4;
        DisplaySprite(s);
        var_r4 += 200;
    }

    s = &modeSelect->s2;
    s->y = (modeSelect->unk203 * 24) + 54;
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
            gCurTask->main = gUnknown_080BB354[modeSelect->unk203];
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

void ModeSelect_InitGraphicsEN()
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
    s = &modeSelect->s;
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

    s = &modeSelect->s2;
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

    s = &modeSelect->s3;
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
    gCurTask->main = sub_800EB4C;
}
