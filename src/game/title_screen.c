#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "malloc_vram.h"
#include "bg_triangles.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/multiplayer/mode_select.h"
#include "game/options_screen.h"
#include "game/sa1_sa2_shared/collision.h"
#include "game/save.h"
#include "game/stage/terrain_collision.h"
#include "game/stage/player.h"
#include "game/time_attack/menu.h"
#include "game/title_screen.h"
#include "game/water_effects.h"

#include "constants/animations.h"
#include "constants/char_states.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

void TaskDestructor_TitleScreen();
void Task_800D268();
void Task_800D450();
void Task_800DCFC();
void Task_LoadGameLogo();
void Task_MainMenuInit();
void Task_SegaLogoInit();
void Task_SetSegaLogoTask();
void Task_SonicTeamLogoInit();
void Task_SwitchTo_Task_800DCFC();
void Task_800D11C();
void sub_800D364();
void sub_800D3E0();
void SwitchToSonicTeamLogo();
void sub_800D498();
void Task_800D4B0();
void sub_800D7EC();
void sub_800D878();
void sub_800DEE4();
void sub_800DF88();
void sub_800E008();

extern void sub_8063918(void);

const ALIGNED(4) AnimId gUnknown_080BB310[] = { SA1_ANIM_PRESS_START_MSG_JP, SA1_ANIM_PRESS_START_MSG_EN };
const u8 gUnknown_080BB314[] = { 1, 1, 2, 2, 3, 3, 4, 4, 5, 5 };
const u8 sTitlescreenFrameTileSizes[] = { 28, 16, 28, 20, 40 };
const u8 gUnknown_080BB323[] = { 0, 2, 4, 6 };
const u8 gUnknown_080BB327[] = { 0, 1, 3, 2, 0 };
const VoidFn gUnknown_080BB32C[] = { CreateMultiplayerModeSelectScreen, CreateTimeAttackMenu, CreateOptionsMenu, LoadTinyChaoGarden };
const ALIGNED(4) AnimId gUnknown_080BB33C[] = { SA1_ANIM_PRESS_START_MSG_JP, SA1_ANIM_PRESS_START_MSG_EN };

typedef struct SegaLogo {
    u16 unk0;
    Background bg;
} SegaLogo; /* 0x44 */

typedef struct SonicTeamLogo {
    u16 unk0;
    Background bg;
    s16 qFade;
} SonicTeamLogo; /* 0x48 */

void CreateSegaLogo(void)
{
    struct Task *t;
    SegaLogo *logo;
    Background *bg;

    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;
    gFlags |= 0x8000;
    gDispCnt = DISPCNT_OBJ_1D_MAP;
    gBgCntRegs[2] = 0x5E01;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;

    DmaFill32(3, 0, VRAM, 64);

    SA2_LABEL(gUnknown_03004D80)[2] = 0;
    SA2_LABEL(gUnknown_03002280)[2][0] = 0;
    SA2_LABEL(gUnknown_03002280)[2][1] = 0;
    SA2_LABEL(gUnknown_03002280)[2][2] = 0xFF;
    SA2_LABEL(gUnknown_03002280)[2][3] = 0x40;

    t = TaskCreate(Task_SetSegaLogoTask, sizeof(SegaLogo), 0x2000, 0, NULL);

    logo = TASK_DATA(t);
    logo->unk0 = 0;

    bg = &logo->bg;
    bg->graphics.dest = (void *)BG_CHAR_ADDR(0);
    bg->graphics.anim = 0;
    bg->layoutVram = (void *)BG_SCREEN_ADDR(30);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = 86;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 5;
    bg->unk24 = 5;
    bg->targetTilesX = 20;
    bg->targetTilesY = 10;
    bg->paletteOffset = 0;
    bg->flags = BACKGROUND_FLAGS_BG_ID(2);

    DrawBackground(bg);
}

void Task_SegaLogoInit(void)
{
    SegaLogo *logo;

    logo = TASK_DATA(gCurTask);
    gDispCnt |= DISPCNT_BG2_ON;
    logo->unk0++;
    SA2_LABEL(sub_8007858)(2U, 0U, (160 - logo->unk0), gBgScrollRegs[2][0], (gBgScrollRegs[2][1] + 160) - logo->unk0);
    SA2_LABEL(sub_80078D4)(2U, (160 - logo->unk0), 160, (u16)gBgScrollRegs[2][0], gBgScrollRegs[2][1]);

    if (logo->unk0 == 160) {
        gCurTask->main = sub_800D3E0;
        logo->unk0 = 0U;
    }
}

void Task_800D11C(void)
{
    SegaLogo *logo;

    logo = TASK_DATA(gCurTask);
    logo->unk0++;
    SA2_LABEL(sub_80078D4)(2U, 0U, (160 - logo->unk0), gBgScrollRegs[2][0], gBgScrollRegs[2][1]);
    SA2_LABEL(sub_8007858)
    (2U, (160 - logo->unk0), 160, gBgScrollRegs[2][0], (gBgScrollRegs[2][1] + 160) - logo->unk0);

    if (logo->unk0 == 160) {
        gFlags &= ~0x8000;
        SwitchToSonicTeamLogo();
    }
}

void CreateSonicTeamLogo(void)
{
    struct Task *t;
    SonicTeamLogo *logo;
    Background *bg;

    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;
    gDispCnt = DISPCNT_OBJ_1D_MAP;
    gBgCntRegs[2] = 0x5E01;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;

    DmaFill32(3, 0, VRAM, 64);

    SA2_LABEL(gUnknown_03004D80)[2] = 0;
    SA2_LABEL(gUnknown_03002280)[2][0] = 0;
    SA2_LABEL(gUnknown_03002280)[2][1] = 0;
    SA2_LABEL(gUnknown_03002280)[2][2] = 0xFF;
    SA2_LABEL(gUnknown_03002280)[2][3] = 0x40;

    t = TaskCreate(Task_SonicTeamLogoInit, sizeof(SonicTeamLogo), 0x2000, 0, NULL);

    logo = TASK_DATA(t);
    logo->unk0 = 0;

    bg = &logo->bg;
    bg->graphics.dest = (void *)BG_CHAR_ADDR(0);
    bg->graphics.anim = 0;
    bg->layoutVram = (void *)BG_SCREEN_ADDR(30);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = 87;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 5;
    bg->unk24 = 5;
    bg->targetTilesX = 20;
    bg->targetTilesY = 10;
    bg->paletteOffset = 0;
    bg->flags = BACKGROUND_FLAGS_BG_ID(2);

    DrawBackground(bg);
}

void Task_800D268(void)
{
    s32 temp_r0;
    s32 temp_r6;
    u16 temp_r0_2;
    SonicTeamLogo *logo;

    logo = TASK_DATA(gCurTask);
    gDispCnt |= 0x400;

    logo->unk0 += 2;
    if (logo->unk0 < 280) {
        SA2_LABEL(sub_80078D4)(2, 0, 40, gBgScrollRegs[2][0], gBgScrollRegs[2][1]);
        SA2_LABEL(sub_80078D4)(2, 120, 160, gBgScrollRegs[2][0], gBgScrollRegs[2][1]);

        if (logo->unk0 < 200) {
            SA2_LABEL(sub_8007958)(2U, 40, 120, (s16)(280 - logo->unk0), -1, gBgScrollRegs[2][0], gBgScrollRegs[2][1]);
            return;
        }

        SA2_LABEL(sub_8007958)(2U, 40, (64 - logo->unk0), (280 - logo->unk0), -1, gBgScrollRegs[2][0], gBgScrollRegs[2][1]);
        SA2_LABEL(sub_80078D4)(2U, (64 - logo->unk0), 120, gBgScrollRegs[2][0], gBgScrollRegs[2][1]);
        return;
    }

    m4aSongNumStart(SE_RING);
    gFlags &= ~FLAGS_4;
    gCurTask->main = Task_800D450;
    logo->unk0 = 0U;
}

void sub_800D364(void)
{
    SonicTeamLogo *logo = TASK_DATA(gCurTask);

    if (gPressedKeys & (A_BUTTON | START_BUTTON)) {
        gCurTask->main = Task_800D4B0;
        return;
    }

    logo->qFade += Q(0.5);

    if (logo->qFade > Q(16)) {
        gBldRegs.bldY = Q(16);
        sub_800D498();
        return;
    }
    gBldRegs.bldY = I(logo->qFade);
}

void Task_SetSegaLogoTask(void)
{
    gCurTask->main = Task_SegaLogoInit;
    gCurTask->main();
}

void sub_800D3E0(void)
{
    SegaLogo *logo = TASK_DATA(gCurTask);

    if (++logo->unk0 == 120) {
        gCurTask->main = Task_800D11C;
        logo->unk0 = 0U;
    }
}

void SwitchToSonicTeamLogo(void)
{
    gFlags &= ~FLAGS_4;
    TaskDestroy(gCurTask);
    CreateSonicTeamLogo();
}

void Task_SonicTeamLogoInit(void)
{
    gCurTask->main = Task_800D268;
    gCurTask->main();
}

void Task_800D450(void)
{
    SonicTeamLogo *logo = TASK_DATA(gCurTask);

    if (logo->unk0++ > 120) {
        logo->qFade = 0;
        gCurTask->main = sub_800D364;
        gBldRegs.bldCnt = 0xFF;
        gBldRegs.bldY = 0;
    }
}

void sub_800D498(void)
{
    TaskDestroy(gCurTask);
    sub_8063918();
}

void Task_800D4B0(void)
{
    gFlags &= ~FLAGS_8000;
    gFlags &= ~FLAGS_4;
    TaskDestroy(gCurTask);
    CreateTitleScreen(1);
}

#if 0
void CreateTitleScreen(u32 playMusic) {
    ? sp4;
    s32 sp8;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r2;
    s32 temp_r4;
    s32 temp_r4_2;
    u16 temp_r5;

    memcpy(&sp4, gUnknown_080BB33C, 4);
    gDispCnt = 0x41;
    gBgCntRegs[2] = 0x568D;
    gBgCntRegs->unk0 = 0x1482;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    sa2__gUnknown_03004D80->unk0 = 0;
    sa2__gUnknown_03002280[0][0] = 0;
    sa2__gUnknown_03002280[0][1] = 0;
    sa2__gUnknown_03002280[0][2] = 0xFF;
    sa2__gUnknown_03002280[0][3] = 0x20;
    sa2__gUnknown_03004D80[2] = -1U;
    sa2__gUnknown_03002280[2][0] = 0;
    sa2__gUnknown_03002280[2][1] = 0;
    sa2__gUnknown_03002280[2][2] = -1U;
    sa2__gUnknown_03002280[2][3] = 0x20;
    sp8 = 0;
    (void *)0x040000D4->unk0 = &sp8;
    (void *)0x040000D4->unk4 = 0x06000000;
    (void *)0x040000D4->unk8 = 0x85000010;
    sp8 = 0;
    (void *)0x040000D4->unk0 = &sp8;
    (void *)0x040000D4->unk4 = 0x0600FFC0;
    (void *)0x040000D4->unk8 = 0x85000020;
    temp_r5 = TaskCreate(Task_LoadGameLogo, 0xECU, 0x2000U, 0U, M2C_ERROR(/* Unable to find stack arg 0x10 in block */), /* extra? */ TaskDestructor_TitleScreen)->data;
    temp_r4 = temp_r5 + 0x03000000;
    *(temp_r5 + 0x030000E2) = 0;
    temp_r2 = temp_r5 + 0x030000E0;
    *temp_r2 = 0x1000U;
    temp_r0 = temp_r5 + 0x030000E8;
    *temp_r0 = (u8) playMusic;
    gBldRegs.bldCnt = 0x20A5;
    gBldRegs.bldY = (u16) ((s32) (*temp_r2 << 0x10) >> 0x18);
    temp_r4->unk16 = 0x78;
    temp_r4->unk18 = 0x71;
    temp_r4->unk4 = VramMalloc(0x2EU);
    temp_r4->unk8 = 0;
    temp_r4->unkA = (u16) *((gLoadedSaveGame.uiLanguage * 2) + sp + 4);
    *(temp_r5 + 0x03000020) = 0;
    temp_r4->unk14 = 0;
    *(temp_r5 + 0x03000021) = -1;
    temp_r4->unk1C = 0;
    *(temp_r5 + 0x03000022) = 0x10;
    *(temp_r5 + 0x03000025) = 0;
    temp_r4->unk1A = 0x400;
    temp_r4->unk10 = 0x1000;
    UpdateSpriteAnimation((Sprite *) temp_r4);
    temp_r4_2 = temp_r5 + 0x03000030;
    temp_r4_2->unk16 = 0;
    temp_r4_2->unk18 = 0x86;
    temp_r4_2->unk4 = VramMalloc(0x5AU);
    temp_r4_2->unk8 = 0;
    temp_r4_2->unkA = 0x30C;
    *(temp_r5 + 0x03000050) = 1;
    temp_r4_2->unk14 = 0;
    *(temp_r5 + 0x03000051) = -1;
    temp_r4_2->unk1C = 0;
    *(temp_r5 + 0x03000052) = 0x10;
    *(temp_r5 + 0x03000055) = 0;
    temp_r4_2->unk1A = 0x400;
    temp_r4_2->unk10 = 0x1000;
    UpdateSpriteAnimation((Sprite *) temp_r4_2);
    temp_r0_2 = temp_r5 + 0x03000060;
    temp_r0_2->unk4 = 0x06000000;
    temp_r0_2->unkA = 0;
    temp_r0_2->unkC = 0x0600A000;
    temp_r0_2->unk18 = 0;
    temp_r0_2->unk1A = 0;
    temp_r0_2->unk1C = 0x4B;
    temp_r0_2->unk1E = 0;
    temp_r0_2->unk20 = 0;
    temp_r0_2->unk22 = 0;
    temp_r0_2->unk24 = 0;
    temp_r0_2->unk26 = 0x1E;
    temp_r0_2->unk28 = 0x14;
    *(temp_r5 + 0x0300008A) = 0;
    temp_r0_2->unk2E = 4;
    DrawBackground((Background *) temp_r0_2);
    if (*temp_r0 != 0) {
        m4aSongNumStart(2U);
    }
}

void Task_LoadGameLogo(void) {
    s16 temp_r0_2;
    s32 temp_r0;
    s32 temp_r5;
    u16 temp_r4;

    gDispCnt |= 0x1100;
    temp_r4 = gCurTask->data;
    temp_r5 = temp_r4 + 0x030000E0;
    if (*temp_r5 == 0x1000) {
        temp_r0 = temp_r4 + 0x030000A0;
        temp_r0->unk4 = 0x0600C000;
        temp_r0->unkA = 0;
        temp_r0->unkC = 0x0600B000;
        temp_r0->unk18 = 0;
        temp_r0->unk1A = 0;
        temp_r0->unk1C = (s16) (gLoadedSaveGame.uiLanguage + 0x49);
        temp_r0->unk1E = 0;
        temp_r0->unk20 = 0;
        temp_r0->unk22 = 0;
        temp_r0->unk24 = 0;
        temp_r0->unk26 = 0x18;
        temp_r0->unk28 = 0xA;
        *(temp_r4 + 0x030000CA) = 0;
        temp_r0->unk2E = 6;
        DrawBackground((Background *) temp_r0);
    }
    temp_r0_2 = (u16) *temp_r5 - 0x55;
    *temp_r5 = temp_r0_2;
    gBldRegs.bldY = (u16) ((s32) (temp_r0_2 << 0x10) >> 0x18);
    if ((s32) *temp_r5 <= 0) {
        *(temp_r4 + 0x030000E4) = 0x400;
        *(temp_r4 + 0x030000E6) = 0xFFF0;
        gBldRegs.bldY = 0;
        gCurTask->main = sub_800D7EC;
    }
}

void sub_800D7EC(void) {
    s16 temp_r2_2;
    s32 temp_r1;
    s32 temp_r2;
    u16 temp_r3;

    temp_r3 = gCurTask->data;
    gDispCnt |= 0x400;
    temp_r2 = temp_r3 + 0x030000E4;
    temp_r1 = temp_r3 + 0x030000E6;
    *temp_r2 = (u16) (*temp_r1 + *temp_r2);
    *temp_r1 = (u16) (*temp_r1 - 8);
    if ((s32) (s16) *temp_r2 <= 0xFF) {
        *temp_r2 = 0x100U;
        *(temp_r3 + 0x030000E2) = 0;
        gCurTask->main = sub_800D878;
    }
    temp_r2_2 = (s16) *temp_r2;
    sa2__sub_8003EE4(0U, temp_r2_2, temp_r2_2, 0x8D, M2C_ERROR(/* Unable to find stack arg 0x10 in block */), M2C_ERROR(/* Unable to find stack arg 0x14 in block */), M2C_ERROR(/* Unable to find stack arg 0x18 in block */), M2C_ERROR(/* Unable to find stack arg 0x1c in block */), /* extra? */ 0x1A, /* extra? */ 0xC0, /* extra? */ 0x1E, /* extra? */ gBgAffineRegs);
}

void sub_800D878(void) {
    s32 temp_r0;
    s32 temp_r2;
    u16 temp_r1;
    void (*var_r0)();

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1 + 0x030000E2;
    temp_r0 = *temp_r2 + 1;
    *temp_r2 = (u16) temp_r0;
    if ((u32) (u16) temp_r0 > 0x3CU) {
        if (8 & gPressedKeys) {
            m4aSongNumStart(0x6AU);
            var_r0 = sub_800E008;
            goto block_7;
        }
        if (!((*temp_r2 - 0x3C) & 0x20)) {
            DisplaySprite((Sprite *) (temp_r1 + 0x03000000));
        }
        goto block_5;
    }
block_5:
    DisplaySprite((Sprite *) (temp_r1 + 0x03000030));
    if ((u32) *(temp_r1 + 0x030000E2) > 0x384U) {
        var_r0 = sub_800DF88;
block_7:
        gCurTask->main = var_r0;
    }
}

void CreateMainMenu(s8 arg0) {
    s32 sp10;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    u16 temp_r6;

    gGameMode = 0;
    sa2__gUnknown_0300543C = 0;
    gDispCnt = 0x1541;
    gBgCntRegs[2] = 0x568D;
    gBgCntRegs->unk0 = 0x1482;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    temp_r6 = TaskCreate(Task_MainMenuInit, 0x1B4U, 0x2000U, 0U, M2C_ERROR(/* Unable to find stack arg 0x10 in block */), /* extra? */ 0)->data;
    temp_r1 = temp_r6 + 0x03000000;
    *(temp_r6 + 0x030001AC) = 0;
    temp_r0 = temp_r6 + 0x030001AF;
    *temp_r0 = arg0;
    temp_r1->unk16 = 0x78;
    temp_r1->unk18 = 0x50;
    temp_r1->unk4 = 0x06000040;
    temp_r1->unk8 = 0;
    temp_r1->unkA = 1;
    *(temp_r6 + 0x03000020) = 0;
    temp_r1->unk14 = 0;
    *(temp_r6 + 0x03000021) = 0xFF;
    temp_r1->unk1C = 0;
    *(temp_r6 + 0x03000022) = 0x10;
    *(temp_r6 + 0x03000025) = 0;
    temp_r1->unk10 = 0x10000;
    if ((u8) *temp_r0 != 0) {
        sa2__gUnknown_03004D80->unk0 = 0;
        sa2__gUnknown_03002280[0][0] = 0;
        sa2__gUnknown_03002280[0][1] = 0;
        sa2__gUnknown_03002280[0][2] |= ~0;
        sa2__gUnknown_03002280[0][3] = 0x20;
        sa2__gUnknown_03004D80[2] |= ~0;
        sa2__gUnknown_03002280[2][0] = 0;
        sa2__gUnknown_03002280[2][1] = 0;
        sa2__gUnknown_03002280[2][2] |= ~0;
        sa2__gUnknown_03002280[2][3] = 0x20;
        sp10 = 0;
        (void *)0x040000D4->unk0 = &sp10;
        (void *)0x040000D4->unk4 = (s32) (((0xC & gBgCntRegs->unk0) << 0xC) + 0x06000000);
        (void *)0x040000D4->unk8 = 0x85000010;
        sp10 = 0;
        (void *)0x040000D4->unk0 = &sp10;
        (void *)0x040000D4->unk4 = (s32) (((0xC & gBgCntRegs[2]) << 0xC) + 0x06003FC0);
        (void *)0x040000D4->unk8 = 0x85000020;
    }
    *(temp_r6 + 0x030001AE) = 0;
    temp_r1_2 = temp_r6 + 0x03000120;
    temp_r1_2->unk4 = 0x06000000;
    temp_r1_2->unkA = 0;
    temp_r1_2->unkC = 0x0600A000;
    temp_r1_2->unk18 = 0;
    temp_r1_2->unk1A = 0;
    temp_r1_2->unk1C = 0x4B;
    temp_r1_2->unk1E = 0;
    temp_r1_2->unk20 = 0;
    temp_r1_2->unk22 = 0;
    temp_r1_2->unk24 = 0;
    temp_r1_2->unk26 = 0x1E;
    temp_r1_2->unk28 = 0x14;
    *(temp_r6 + 0x0300014A) = 0;
    temp_r1_2->unk2E = 4;
    if ((u8) *temp_r0 != 0) {
        DrawBackground((Background *) temp_r1_2);
    }
    temp_r1_3 = temp_r6 + 0x03000160;
    temp_r1_3->unk4 = 0x0600C000;
    temp_r1_3->unkA = 0;
    temp_r1_3->unkC = 0x0600B000;
    temp_r1_3->unk18 = 0;
    temp_r1_3->unk1A = 0;
    temp_r1_3->unk1C = (s16) (gLoadedSaveGame.uiLanguage + 0x49);
    temp_r1_3->unk1E = 0;
    temp_r1_3->unk20 = 0;
    temp_r1_3->unk22 = 0;
    temp_r1_3->unk24 = 0;
    temp_r1_3->unk26 = 0x18;
    temp_r1_3->unk28 = 0xA;
    *(temp_r6 + 0x0300018A) = 0;
    temp_r1_3->unk2E = 6;
    if ((u8) *temp_r0 != 0) {
        DrawBackground((Background *) temp_r1_3);
    }
    sa2__sub_8003EE4(0U, 0x100, 0x100, 0x8D, M2C_ERROR(/* Unable to find stack arg 0x10 in block */), M2C_ERROR(/* Unable to find stack arg 0x14 in block */), M2C_ERROR(/* Unable to find stack arg 0x18 in block */), M2C_ERROR(/* Unable to find stack arg 0x1c in block */), /* extra? */ 0x1A, /* extra? */ 0xC0, /* extra? */ 0x1E, /* extra? */ gBgAffineRegs);
    temp_r1_4 = temp_r6 + 0x030001A0;
    temp_r1_4->unk0 = 0;
    temp_r1_4->unk2 = 1;
    temp_r1_4->unk4 = 2;
    temp_r1_4->unk6 = 0;
    temp_r1_4->unk8 = 0x200;
    temp_r1_4->unkA = 1;
    if ((u8) *temp_r0 != 0) {
        sub_805423C((StrcUi_805423C *) temp_r1_4);
    }
}

void Task_MainMenuInit(void) {
    s32 temp_r1_2;
    s32 temp_r5;
    s32 temp_r5_2;
    u16 temp_r1;
    u16 temp_r4;
    u32 var_r1;
    u8 temp_r0;
    u8 var_r6;
    u8 var_r6_2;

    temp_r4 = gCurTask->data;
    temp_r5 = temp_r4 + 0x03000000;
    var_r1 = 1;
    if (*(temp_r4 + 0x030001AF) != 0) {
        temp_r0 = sub_805423C((StrcUi_805423C *) (temp_r4 + 0x030001A0));
        var_r1 = (u32) ((0 - temp_r0) | temp_r0) >> 0x1F;
    }
    if (var_r1 != 0) {
        temp_r1 = temp_r5->unk8;
        if (temp_r1 == 0) {
            temp_r5->unk16 = temp_r1;
            temp_r5->unk18 = temp_r1;
            temp_r5->unk4 = 0x06010000;
            temp_r5->unk1A = 0x3C0;
            temp_r5->unk8 = temp_r1;
            temp_r5->unkA = 0x2BB;
            *(temp_r4 + 0x03000020) = 0;
            temp_r5->unk14 = temp_r1;
            temp_r5->unk1C = temp_r1;
            *(temp_r4 + 0x03000021) = 0xFF;
            *(temp_r4 + 0x03000022) = 0x10;
            *(temp_r4 + 0x03000025) = 0;
            temp_r5->unk10 = 0x400;
            gCurTask->main = Task_SwitchTo_Task_800DCFC;
        }
        var_r6 = 0;
        do {
            temp_r5_2 = temp_r5 + ((var_r6 * 0x30) + 0x30);
            temp_r5_2->unk16 = 0x78;
            temp_r5_2->unk18 = (s16) ((var_r6 * 0xE) + 0x5D);
            temp_r5_2->unk4 = VramMalloc((u32) sTitlescreenFrameTileSizes[var_r6]);
            temp_r5_2->unk8 = 0;
            temp_r5_2->unkA = (u16) gUnknown_080BB310[gLoadedSaveGame.uiLanguage];
            *(temp_r5_2 + 0x20) = (u8) gUnknown_080BB314[gLoadedSaveGame.uiLanguage + (var_r6 * 2)];
            temp_r5_2->unk1A = 0x3C0;
            temp_r5_2->unk8 = 0;
            temp_r5_2->unk14 = 0;
            temp_r5_2->unk1C = 0;
            temp_r1_2 = temp_r5_2 + 0x21;
            *temp_r1_2 = 0xFF;
            *(temp_r1_2 + 1) = 0x10;
            *(temp_r5_2 + 0x25) = 0;
            temp_r5_2->unk10 = 0;
            UpdateSpriteAnimation((Sprite *) temp_r5_2);
            var_r6 = (u8) (var_r6 + 1);
        } while ((u32) var_r6 <= 4U);
        var_r6_2 = 0;
        do {
            gKeysFirstRepeatIntervals[var_r6_2] = 0x14;
            gKeysContinuedRepeatIntervals[var_r6_2] = 8;
            var_r6_2 = (u8) (var_r6_2 + 1);
        } while ((u32) var_r6_2 <= 9U);
        gDispCnt &= 0x9FFF;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
    }
}

void Task_800DCFC(void) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r5;
    s32 temp_r6;
    s32 var_r1;
    s8 var_r0;
    u16 temp_r4;
    u16 temp_r7;
    u16 var_r0_2;
    u8 var_r4;

    temp_r4 = gCurTask->data;
    temp_r6 = temp_r4 + 0x03000000;
    temp_r7 = 0x40 & gRepeatedKeys;
    if (temp_r7 != 0) {
        m4aSongNumStart(0x6CU);
        temp_r1 = temp_r4 + 0x030001AE;
        temp_r0 = *temp_r1 - 1;
        *temp_r1 = (u8) temp_r0;
        if ((u32) (u8) temp_r0 > 4U) {
            *temp_r1 = 4U;
        }
    } else if (0x80 & gRepeatedKeys) {
        m4aSongNumStart(0x6CU);
        temp_r1_2 = temp_r4 + 0x030001AE;
        temp_r0_2 = *temp_r1_2 + 1;
        *temp_r1_2 = (u8) temp_r0_2;
        if ((u32) (u8) temp_r0_2 > 4U) {
            *temp_r1_2 = (u8) temp_r7;
        }
    }
    temp_r6->unk16 = 0x48;
    temp_r6->unk18 = (s16) ((*(temp_r6 + 0x1AE) * 0xE) + 0x6B);
loop_7:
    temp_r0_3 = UpdateSpriteAnimation((Sprite *) temp_r6);
    if (temp_r0_3 != ACMD_RESULT__RUNNING) {
        if (temp_r0_3 != ACMD_RESULT__ENDED) {
            goto loop_7;
        }
    }
    var_r4 = 0;
    do {
        temp_r5 = temp_r6 + ((var_r4 * 0x30) + 0x30);
        if (var_r4 == *(temp_r6 + 0x1AE)) {
            if (var_r4 != 0) {
                var_r1 = temp_r5 + 0x25;
                var_r0 = 1;
                goto block_17;
            }
            *(temp_r5 + 0x25) = var_r4;
        } else {
            if (var_r4 != 0) {
                var_r1 = temp_r5 + 0x25;
                var_r0 = 0;
            } else {
                var_r1 = temp_r5 + 0x25;
                var_r0 = 0xFF;
            }
block_17:
            *var_r1 = var_r0;
        }
        UpdateSpriteAnimation((Sprite *) temp_r5);
        DisplaySprite((Sprite *) temp_r5);
        var_r4 = (u8) (var_r4 + 1);
    } while ((u32) var_r4 <= 4U);
    if (1 & gPressedKeys) {
        m4aSongNumStart(0x6AU);
        gCurTask->main = (void (*)()) sub_800DE44;
        *(temp_r6 + 0x1B0) = 0;
        if (*(temp_r6 + 0x1AE) == 4) {
            var_r0_2 = 0xBF;
        } else {
            var_r0_2 = 0xFF;
        }
        gBldRegs.bldCnt = var_r0_2;
        gBldRegs.bldY = 0;
    }
}

u32 sub_800DE44(Player *p) {
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r5;
    u16 temp_r1;
    u32 temp_r0;
    u8 var_r4;

    temp_r1 = gCurTask->data;
    temp_r5 = temp_r1 + 0x030001B0;
    temp_r0_2 = *temp_r5 + 0x55;
    *temp_r5 = (u16) temp_r0_2;
    if ((s32) (temp_r0_2 << 0x10) > 0x0FFF0000) {
        *temp_r5 = 0x1000U;
        gCurTask->main = sub_800DEE4;
        sa2__gUnknown_03004D80->unk0 = 0;
        sa2__gUnknown_03002280[0][0] = 0;
        sa2__gUnknown_03002280[0][1] = 0;
        sa2__gUnknown_03002280[0][2] = 0xFF;
        sa2__gUnknown_03002280[0][3] = 0x20;
        sa2__gUnknown_03004D80[2] = 0;
        sa2__gUnknown_03002280[2][0] = 0;
        sa2__gUnknown_03002280[2][1] = 0;
        sa2__gUnknown_03002280[2][2] = -1U;
        sa2__gUnknown_03002280[2][3] = 0x20;
        gFlags &= ~4;
    }
    gBldRegs.bldY = (u16) ((s32) (*temp_r5 << 0x10) >> 0x18);
    var_r4 = 0;
    do {
        DisplaySprite((Sprite *) (temp_r1 + 0x03000000 + ((var_r4 * 0x30) + 0x30)));
        temp_r0_3 = var_r4 + 1;
        temp_r0 = temp_r0_3 << 0x18;
        var_r4 = (u8) temp_r0_3;
    } while ((u32) var_r4 <= 4U);
    return temp_r0;
}

void sub_800DEE4(void) {
    s32 temp_r5;
    u16 temp_r1;
    u8 temp_r6;
    u8 var_r4;

    temp_r1 = gCurTask->data;
    temp_r6 = *(temp_r1 + 0x030001AE);
    var_r4 = 0;
    temp_r5 = temp_r1 + 0x03000034;
    do {
        VramFree(*(temp_r5 + (var_r4 * 0x30)));
        var_r4 = (u8) (var_r4 + 1);
    } while ((u32) var_r4 <= 4U);
    TaskDestroy(gCurTask);
    m4aSongNumStart(0x1DU);
    m4aMPlayImmInit(&gMPlayInfo_BGM);
    m4aSongNumStop(0x1DU);
    if (temp_r6 == 0) {
        gGameMode = temp_r6;
        CreateCharacterSelectionScreen(0U);
        return;
    }
    gDispCnt &= 0x9FFF;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;
    gUnknown_080BB32C[temp_r6 - 1]();
}

void sub_800DF88(void) {
    TaskDestroy(gCurTask);
    gInputRecorder.mode = 2;
    gInputPlaybackData = *((gDemoPlayCounter * 4) + &gUnknown_087BF8CC);
    gSelectedCharacter = (s8) gUnknown_080BB327[gDemoPlayCounter];
    gCurrentLevel = (s8) gUnknown_080BB323[gDemoPlayCounter];
    gDemoPlayCounter = (gDemoPlayCounter + 1) & 3;
    gGameMode = 0;
    CreateDemoManager();
    ApplyGameStageSettings();
}

void sub_800E008(void) {
    TaskDestroy(gCurTask);
    CreateMainMenu(0);
}

void TaskDestructor_TitleScreen(void) {
    s32 temp_r4;

    temp_r4 = gCurTask->data + 0x03000000;
    VramFree(temp_r4->unk4);
    VramFree(temp_r4->unk34);
}

void Task_SwitchTo_Task_800DCFC(void) {
    gCurTask->main = Task_800DCFC;
    Task_800DCFC();
}

void LoadTinyChaoGarden(void) {
    s32 *temp_r2_2;
    u32 *temp_r2;

    gFlags |= 0x8000;
    m4aSongNumStop(3U);
    m4aSoundVSyncOff();
    LZ77UnCompWram(gMultiBootProgram_TinyChaoGarden, (void *)0x02000000);
    temp_r2 = &EWRAM_START + 8;
    *temp_r2 = gLoadedSaveGame.score;
    temp_r2_2 = temp_r2 + 4;
    *temp_r2_2 = (s32) gLoadedSaveGame.language;
    *(temp_r2_2 + 4) = gFrameCount + gLoadedSaveGame.checksum;
    SoftResetExram(0U);
}
#endif
