#include "global.h"
#include "core.h"
#include "data/ui_graphics.h"
#include "game/gTask_03006240.h"
#include "game/save.h"

typedef struct VsRecord_10 {
    s32 unk0;
    u8 unk4[8];
    s8 unkC;
    u8 unkD;
    u8 unkE;
    u8 unkF;
} VsRecord_10;

void SwapRecords(VsRecord_10 *a, VsRecord_10 *b);

extern u16 gUnknown_0868B8D4[16];
extern u8 gUnknown_0868B8F4[0x7C0];
extern u8 gUnknown_0868C0B4[0x500];
extern u16 gUnknown_0868C5B4[16];
extern u8 gUnknown_0868C5D4[0x940];
extern u8 gUnknown_0868CF14[0x500];
extern u16 gUnknown_0868D414[16];
extern u8 gUnknown_0868D434[0x620];
extern u8 gUnknown_0868DA54[0x580];
extern u16 gUnknown_0868DFD4[16];
extern u8 gUnknown_0868DFF4[0x600];
extern u8 gUnknown_0868E5F4[0x580];

void sub_805FF38(VsRecord_10 *records, u8 arg1, s16 arg2, s16 arg3)
{
    s16 sp0;
    s16 sp4;
    s16 temp_r1_2;
    u8 var_r4;
    u8 var_r5;

    var_r4 = arg2;
    var_r5 = arg3;
    temp_r1_2 = (records[var_r4].unkC + records[var_r5].unkC) >> 1;
    while (var_r4 < var_r5) {
        if (arg1 == 0) {
            while (records[var_r4].unkC < temp_r1_2) {
                var_r4++;
            }

            while (records[var_r5].unkC > temp_r1_2) {
                var_r5--;
            }
        } else {
            while (records[var_r4].unkC > temp_r1_2) {
                var_r4++;
            }

            while (records[var_r5].unkC < temp_r1_2) {
                var_r5--;
            }
        }

        if (var_r4 < var_r5) {
            SwapRecords(&records[var_r4], &records[var_r5]);
            var_r4++;
            var_r5--;
        }
    }

    if (arg2 < --var_r4) {
        sub_805FF38(records, arg1, arg2, var_r4);
    }

    if (arg3 > ++var_r5) {
        sub_805FF38(records, arg1, var_r5, arg3);
    }
}

void SwapRecords(VsRecord_10 *a, VsRecord_10 *b)
{
    VsRecord_10 temp;
    u8 i;

    // Copy a -> temp
    temp.unk0 = a->unk0;
    temp.unkC = a->unkC;
    temp.unkD = a->unkD;
    temp.unkE = a->unkE;
    for (i = 0; i < ARRAY_COUNT(temp.unk4); i++) {
        temp.unk4[i] = a->unk4[i];
    }

    // Copy b -> a
    a->unk0 = b->unk0;
    a->unkC = b->unkC;
    a->unkD = b->unkD;
    a->unkE = b->unkE;
    for (i = 0; i < ARRAY_COUNT(a->unk4); i++) {
        a->unk4[i] = b->unk4[i];
    }

    // Copy temp -> b
    b->unk0 = temp.unk0;
    b->unkC = temp.unkC;
    b->unkD = temp.unkD;
    b->unkE = temp.unkE;
    for (i = 0; i < ARRAY_COUNT(b->unk4); i++) {
        b->unk4[i] = temp.unk4[i];
    }
}

void sub_806012C(void)
{
    SaveGame *save = LOADED_SAVE;
    Strc_80528AC sp00;

    UiGfxStackInit();

    if (save->uiLanguage == 0) {
        sp00.uiGfxID = UIGFX_OPTIONS;
        sp00.unk2B = 0;
        sp00.tiles = gUnknown_0868B8F4;
        sp00.tilesSize = sizeof(gUnknown_0868B8F4);
        sp00.palette = gUnknown_0868B8D4;
        sp00.paletteSize = sizeof(gUnknown_0868B8D4);
        sp00.layout = gUnknown_0868C0B4;
        sp00.layoutSize = sizeof(gUnknown_0868C0B4);
        sp00.unk28 = 0;
        sp00.unk29 = 0;
        sp00.unk2A = 21;
        sp00.unk0.unk4 = gUiGraphics[sp00.uiGfxID].unk8;
        sp00.unk0.unk8 = gUiGraphics[sp00.uiGfxID].unkC;
        sp00.unk0.unk9 = gUiGraphics[sp00.uiGfxID].unk10;
        sp00.unk0.unkA = gUiGraphics[sp00.uiGfxID].unk14;
        sp00.unk0.unkB = gUiGraphics[sp00.uiGfxID].unk18;
        sub_80528AC(&sp00);

        sp00.uiGfxID = UIGFX_OPTIONS;
        sp00.unk2B = 01;
        sp00.tiles = gUnknown_0868D434;
        sp00.tilesSize = sizeof(gUnknown_0868D434);
        sp00.palette = gUnknown_0868D414;
        sp00.paletteSize = sizeof(gUnknown_0868D414);
        sp00.layout = gUnknown_0868DA54;
        sp00.layoutSize = sizeof(gUnknown_0868DA54);
        sp00.unk28 = 1;
        sp00.unk29 = 1;
        sp00.unk2A = 21;
        sp00.unk0.unk4 = gUiGraphics[sp00.uiGfxID].unk8;
        sp00.unk0.unk8 = gUiGraphics[sp00.uiGfxID].unkC;
        sp00.unk0.unk9 = gUiGraphics[sp00.uiGfxID].unk10;
        sp00.unk0.unkA = gUiGraphics[sp00.uiGfxID].unk14;
        sp00.unk0.unkB = gUiGraphics[sp00.uiGfxID].unk18;
        sub_80528AC(&sp00);
    } else {
        sp00.uiGfxID = UIGFX_OPTIONS;
        sp00.unk2B = 0;
        sp00.tiles = gUnknown_0868C5D4;
        sp00.tilesSize = sizeof(gUnknown_0868C5D4);
        sp00.palette = gUnknown_0868C5B4;
        sp00.paletteSize = sizeof(gUnknown_0868C5B4);
        sp00.layout = gUnknown_0868CF14;
        sp00.layoutSize = sizeof(gUnknown_0868CF14);
        sp00.unk28 = 0;
        sp00.unk29 = 0;
        sp00.unk2A = 21;
        sp00.unk0.unk4 = gUiGraphics[sp00.uiGfxID].unk8;
        sp00.unk0.unk8 = gUiGraphics[sp00.uiGfxID].unkC;
        sp00.unk0.unk9 = gUiGraphics[sp00.uiGfxID].unk10;
        sp00.unk0.unkA = gUiGraphics[sp00.uiGfxID].unk14;
        sp00.unk0.unkB = gUiGraphics[sp00.uiGfxID].unk18;
        sub_80528AC(&sp00);

        sp00.uiGfxID = UIGFX_OPTIONS;
        sp00.unk2B = 1;
        sp00.tiles = gUnknown_0868DFF4;
        sp00.tilesSize = sizeof(gUnknown_0868DFF4);
        sp00.palette = gUnknown_0868DFD4;
        sp00.paletteSize = sizeof(gUnknown_0868DFD4);
        sp00.layout = gUnknown_0868E5F4;
        sp00.layoutSize = sizeof(gUnknown_0868E5F4);
        sp00.unk28 = 1;
        sp00.unk29 = 1;
        sp00.unk2A = 21;
        sp00.unk0.unk4 = gUiGraphics[sp00.uiGfxID].unk8;
        sp00.unk0.unk8 = gUiGraphics[sp00.uiGfxID].unkC;
        sp00.unk0.unk9 = gUiGraphics[sp00.uiGfxID].unk10;
        sp00.unk0.unkA = gUiGraphics[sp00.uiGfxID].unk14;
        sp00.unk0.unkB = gUiGraphics[sp00.uiGfxID].unk18;
        sub_80528AC(&sp00);
    }

    sp00.uiGfxID = UIGFX_ASCII_CHARS;
    sp00.unk2B = 2;
    sp00.tiles = gUiGraphics[0].tiles;
    sp00.palette = gUiGraphics[0].palette;
    sp00.vramC = OBJ_VRAM0;
    sp00.tilesSize = 0x1B80;
    sp00.paletteSize = 0x20;
    sp00.unk28 = 2;
    sp00.unk2A = 13;
    sp00.unk0.unk4 = gUiGraphics[0].unk8;
    sp00.unk0.unk8 = gUiGraphics[0].unkC;
    sp00.unk0.unk9 = gUiGraphics[0].unk10;
    sp00.unk0.unkA = gUiGraphics[0].unk14;
    sp00.unk0.unkB = gUiGraphics[0].unk18;
    sub_80528AC(&sp00);

    sp00.uiGfxID = 60;
    sp00.unk2B = 3;
    sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles;
    sp00.palette = gUiGraphics[sp00.uiGfxID].palette;
    sp00.vramC = OBJ_VRAM0;
    sp00.tilesSize = 0x20;
    sp00.paletteSize = 0x20;
    sp00.unk28 = 2;
    sp00.unk2A = 12;
    sp00.unk0.unk4 = gUiGraphics[sp00.uiGfxID].unk8;
    sp00.unk0.unk8 = gUiGraphics[sp00.uiGfxID].unkC;
    sp00.unk0.unk9 = gUiGraphics[sp00.uiGfxID].unk10;
    sp00.unk0.unkA = gUiGraphics[sp00.uiGfxID].unk14;
    sp00.unk0.unkB = gUiGraphics[sp00.uiGfxID].unk18;
    sub_80528AC(&sp00);
}

#if 0

void CreateVsRecord(void) {
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r5_2;
    s32 temp_r7;
    struct Task *temp_r0;
    u16 temp_r2;
    u16 temp_r5;
    u8 var_r2;
    u8 var_r4;

    sub_80535FC();
    gDispCnt = 0x1340;
    m4aSongNumStop(0x30U);
    m4aSongNumStart(0xAU);
    gBgCntRegs->unk0 = 0x1F00;
    gBgCntRegs[1] = 0x1E07;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    sub_806012C();
    temp_r5 = TaskCreate(Task_VsRecordInit, 0x48U, 0x2000U, 0U, TaskDestructor_VsRecord)->data;
    temp_r7 = temp_r5 + 0x03000000;
    temp_r7->unk40 = 0;
    temp_r7->unk44 = 0;
    temp_r7->unk0 = 0;
    temp_r7->unk2 = 1;
    temp_r7->unk4 = 2;
    temp_r7->unk6 = 0;
    temp_r7->unk8 = 0x100;
    temp_r7->unkA = 8;
    temp_r0 = TaskCreate(Task_8060874, 0xF0U, 0x2030U, 0U, NULL);
    temp_r2 = temp_r0->data;
    temp_r1 = temp_r2 + 0x03000000;
    *(temp_r2 + 0xEC) = 0;
    *(temp_r2 + 0xAA) = 0;
    *(temp_r2 + 0xAC) = 0;
    *(temp_r2 + 0xAE) = 0;
    *(temp_r2 + 0xB0) = 2;
    *(temp_r2 + 0xB2) = 2;
    *(temp_r2 + 0xB6) = 1;
    *(temp_r2 + 0xA8) = 0;
    *(temp_r2 + 0xE8) = 0;
    temp_r7->unk3C = temp_r0;
    temp_r3 = temp_r2 + 0xB8;
    temp_r3->unk4 = 0x06017080;
    temp_r3->unkA = 0x368;
    *(temp_r2 + 0xD8) = 0;
    temp_r3->unk1A = 0;
    temp_r3->unk8 = 0;
    temp_r3->unk14 = 0;
    temp_r3->unk1C = 0;
    *(temp_r2 + 0xD9) = 0xFF;
    *(temp_r2 + 0xDA) = 0x10;
    *(temp_r2 + 0xDD) = 0;
    temp_r3->unk28 = -1;
    temp_r3->unk10 = 0;
    UpdateSpriteAnimation((Sprite *) temp_r3);
    temp_r3_2 = temp_r5 + 0xC;
    temp_r3_2->unk4 = 0x06016400;
    temp_r3_2->unkA = 0x2E9;
    *(temp_r5 + 0x2C) = 0;
    temp_r3_2->unk1A = 0;
    temp_r3_2->unk8 = 0;
    temp_r3_2->unk14 = 0;
    temp_r3_2->unk1C = 0;
    *(temp_r5 + 0x2D) = -1;
    *(temp_r5 + 0x2E) = 0x10;
    *(temp_r5 + 0x31) = 0;
    temp_r3_2->unk28 = -1;
    temp_r3_2->unk10 = 0;
    UpdateSpriteAnimation((Sprite *) temp_r3_2);
    (void *)0x040000D4->unk0 = gLoadedSaveGame.multiplayerScores;
    (void *)0x040000D4->unk4 = temp_r1;
    (void *)0x040000D4->unk8 = 0x80000050;
    var_r2 = 0;
    do {
        temp_r1_2 = var_r2 + 1;
        var_r4 = (u8) temp_r1_2;
        if ((u32) var_r4 <= 9U) {
            temp_r5_2 = temp_r1 + (var_r2 * 0x10);
            do {
                temp_r2_2 = temp_r1 + (var_r4 * 0x10);
                if ((s32) *(temp_r5_2 + 0xC) < (s32) *(temp_r2_2 + 0xC)) {
                    SwapRecords(temp_r5_2, temp_r2_2);
                }
                var_r4 = (u8) (var_r4 + 1);
            } while ((u32) var_r4 <= 9U);
        }
        var_r2 = (u8) temp_r1_2;
    } while ((u32) var_r2 <= 8U);
    sub_805423C((StrcUi_805423C *) temp_r7);
    m4aSongNumStart(0xAU);
}

void Task_VsRecordInit(void) {
    s32 temp_r0_2;
    s32 temp_r2;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 var_r1;
    u16 temp_r0;
    u32 var_r5;

    temp_r0 = gCurTask->data;
    temp_r4 = temp_r0 + 0x03000000;
    var_r5 = temp_r4->unk44;
    temp_r2 = temp_r4->unk40 + 1;
    if ((var_r5 != 0) && (0x40 & gInput)) {
        var_r1 = var_r5 + 0xFFFFFF00;
        var_r5 = 0;
        if (((u32) var_r1 >> 8) != 0) {
            goto block_7;
        }
    } else if ((var_r5 <= 0x41FFU) && (0x80 & gInput)) {
        var_r1 = var_r5 + 0x100;
        var_r5 = 0x4200;
        if ((u32) ((u32) var_r1 >> 8) <= 0x41FFU) {
block_7:
            var_r5 = (u32) var_r1;
        }
    }
    temp_r4->unk40 = temp_r2;
    temp_r0_2 = temp_r4->unk3C->data + 0x030000E8;
    *temp_r0_2 = temp_r2;
    temp_r4->unk44 = var_r5;
    *(temp_r0_2 + 4) = var_r5;
    sub_805423C((StrcUi_805423C *) temp_r4);
    if ((s32) *(temp_r4 + 6) > 0x1800) {
        if ((2 & gPressedKeys) && (*(temp_r4 + 4) != 1)) {
            m4aSongNumStart(0x6BU);
            temp_r4->unk4 = 1;
            temp_r4->unk6 = (u16) (0x2000 - temp_r4->unk6);
            m4aSongNumStart(0x6BU);
        }
        if (((s32) *(temp_r4 + 6) > 0x1800) && (*(temp_r4 + 4) == 1)) {
            m4aSongNumStop(0xAU);
            TaskDestroy(temp_r4->unk3C);
            TaskDestroy(gCurTask);
            sa2__gUnknown_03004D80[1] = 0;
            sa2__gUnknown_03002280[1][0] = 0;
            sa2__gUnknown_03002280[1][1] = 0;
            sa2__gUnknown_03002280[1][2] = 0xFF;
            sa2__gUnknown_03002280[1][3] = 0x20;
            sa2__gUnknown_03004D80[2] = 0;
            sa2__gUnknown_03002280[2][0] = 0;
            sa2__gUnknown_03002280[2][1] = 0;
            sa2__gUnknown_03002280[2][2] = -1U;
            sa2__gUnknown_03002280[2][3] = 0x20;
            CreatePlayerDataMenu();
            return;
        }
        goto block_15;
    }
block_15:
    temp_r4_2 = temp_r0 + 0x0300000C;
    UpdateSpriteAnimation((Sprite *) temp_r4_2);
    temp_r4_2->unk16 = 0xE9;
    if (var_r5 != 0) {
        temp_r4_2->unk18 = 0x46;
        temp_r4_2->unk10 = (s32) (temp_r4_2->unk10 & 0xFFFFF7FF);
        DisplaySprite((Sprite *) temp_r4_2);
    }
    if (var_r5 != 0x4200) {
        temp_r4_2->unk18 = 0x8A;
        temp_r4_2->unk10 = (s32) (temp_r4_2->unk10 | 0x800);
        DisplaySprite((Sprite *) temp_r4_2);
    }
}

void Task_8060874(void) {
    s32 sp8;
    u32 spC;
    u32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    s32 sp30;
    s16 temp_r5_2;
    s32 temp_r0_4;
    s32 temp_r1_3;
    s32 temp_r2_2;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r5;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r2;
    s32 var_r3;
    s8 var_r0_3;
    u16 temp_r2;
    u32 temp_r0;
    u32 temp_r6;
    u8 *temp_r1;
    u8 *var_r0;
    u8 *var_r0_2;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r0_5;
    u8 temp_r0_6;
    u8 temp_r0_7;
    u8 temp_r1_2;
    u8 var_r4;
    u8 var_r5;
    u8 var_r5_2;
    void *temp_r4_3;
    void *temp_r4_4;
    void *temp_r4_5;

    temp_r2 = gCurTask->data;
    sp8 = temp_r2 + 0x03000000;
    temp_r0 = *(temp_r2 + 0xEC);
    spC = temp_r0;
    gBgScrollRegs[1][1] = ((temp_r0 >> 8) - 0x30) & 0x1FF;
    *(temp_r2 + 0xAE) = 1;
    var_r5 = 0;
    temp_r4 = temp_r2 + 0xAC;
    sp18 = temp_r2 + 0xAA;
    sp1C = temp_r2 + 0xAC;
    sp14 = temp_r2 + 0xA0;
    do {
        *(sp8 + 0xAA) = (s16) ((var_r5 * 8) + 0x1B);
        *temp_r4 = 0x20;
        temp_r1 = &gLoadedSaveGame.playerName[var_r5];
        if ((u32) (u8) (*temp_r1 - 0x70) <= 0x19U) {
            *temp_r4 = 0x28;
        }
        sub_805321C(temp_r1, sp8 + 0xA0);
        var_r5 = (u8) (var_r5 + 1);
    } while ((u32) var_r5 <= 5U);
    *sp1C = 0x20;
    temp_r0_2 = gLoadedSaveGame.filler424[1];
    if ((u32) temp_r0_2 > 9U) {
        subroutine_arg0.unk0 = (s8) (Div((s32) temp_r0_2, 0xA) + 0x30);
        subroutine_arg0.unk1 = (s8) (Mod((s32) gLoadedSaveGame.filler424[1], 0xA) + 0x30);
        if (gLoadedSaveGame.uiLanguage != 0) {
            *sp18 = 0x5B;
        } else {
            *sp18 = 0x59;
        }
        temp_r4_2 = sp8 + 0xAE;
        *temp_r4_2 = 2;
        sub_805321C(&subroutine_arg0, sp14);
        sp20 = temp_r4_2;
    } else {
        temp_r2_2 = sp8 + 0xAE;
        *temp_r2_2 = 1;
        subroutine_arg0.unk0 = (s8) (gLoadedSaveGame.filler424[1] + 0x30);
        sp20 = temp_r2_2;
        if (gLoadedSaveGame.uiLanguage != 0) {
            *sp18 = 0x63;
        } else {
            *sp18 = 0x61;
        }
        temp_r0_3 = gLoadedSaveGame.filler424[1];
        if ((u32) temp_r0_3 <= 1U) {
            subroutine_arg0.unk1 = 0x8A;
            sub_805321C(&subroutine_arg0, sp14);
            *sp18 = 0x7E;
            sub_805321C(&subroutine_arg0 + 1, sp14);
        } else {
            subroutine_arg0.unk0 = (s8) (temp_r0_3 + 0x30);
            sub_805321C(&subroutine_arg0, sp14);
        }
    }
    if ((u32) gLoadedSaveGame.filler424[2] > 9U) {
        *sp20 = 2;
        subroutine_arg0.unk0 = (s8) (Div((s32) gLoadedSaveGame.filler424[2], 0xA) + 0x30);
        subroutine_arg0.unk1 = (s8) (Mod((s32) gLoadedSaveGame.filler424[2], 0xA) + 0x30);
        if (gLoadedSaveGame.uiLanguage != 0) {
            *sp18 = 0x88;
        } else {
            *sp18 = 0x89;
        }
        var_r0 = &subroutine_arg0;
        goto block_26;
    }
    *sp20 = 1;
    if (gLoadedSaveGame.uiLanguage != 0) {
        *sp18 = 0x90;
    } else {
        *sp18 = 0x91;
    }
    subroutine_arg0.unk0 = (s8) (gLoadedSaveGame.filler424[2] + 0x30);
    if (((u32) gLoadedSaveGame.filler424[2] <= 1U) && (gLoadedSaveGame.uiLanguage != 0)) {
        temp_r0_4 = sp8 + 0xB8;
        temp_r0_4->unk16 = 0x98;
        temp_r0_4->unk18 = 0x20;
        temp_r0_4->unk10 = (s32) (temp_r0_4->unk10 & 0xFFFFF7FF);
        DisplaySprite((Sprite *) temp_r0_4);
        subroutine_arg0.unk1 = 0x8A;
        sub_805321C(&subroutine_arg0, sp14);
        *sp18 = 0xB1;
        var_r0 = &subroutine_arg0 + 1;
block_26:
        sub_805321C(var_r0, sp14);
    } else {
        sub_805321C(&subroutine_arg0, sp14);
    }
    if ((u32) gLoadedSaveGame.filler424[3] > 9U) {
        *sp20 = 2;
        subroutine_arg0.unk0 = (s8) (Div((s32) gLoadedSaveGame.filler424[3], 0xA) + 0x30);
        subroutine_arg0.unk1 = (s8) (Mod((s32) gLoadedSaveGame.filler424[3], 0xA) + 0x30);
        *sp18 = 0xB9;
        var_r0_2 = &subroutine_arg0;
        goto block_32;
    }
    *sp20 = 1;
    *sp18 = 0xC1;
    subroutine_arg0.unk0 = (s8) (gLoadedSaveGame.filler424[3] + 0x30);
    if ((u32) gLoadedSaveGame.filler424[3] <= 1U) {
        subroutine_arg0.unk1 = 0x8A;
        sub_805321C(&subroutine_arg0, sp14);
        *sp18 = 0xE2;
        var_r0_2 = &subroutine_arg0 + 1;
block_32:
        sub_805321C(var_r0_2, sp14);
    } else {
        sub_805321C(&subroutine_arg0, sp14);
    }
    var_r5_2 = 0;
    sp10 = spC >> 0xC;
loop_35:
    temp_r1_2 = (u8) (var_r5_2 + sp10);
    sp28 = var_r5_2 + 1;
    if ((u32) temp_r1_2 > 9U) {

    } else {
        *sp20 = 1;
        var_r4 = 0;
        temp_r6 = spC >> 8;
        temp_r5 = var_r5_2 * 0x10;
        temp_r1_3 = temp_r1_2 * 0x10;
        sp24 = sp8 + 4;
        temp_r5_2 = temp_r5 - ((temp_r6 & 0xF) - 0x38);
        var_r3 = temp_r1_3;
        var_r2 = sp8 + temp_r1_3;
        do {
            *sp18 = (s16) ((var_r4 * 8) + 0x3C);
            *sp1C = temp_r5_2;
            if ((u32) (u8) (*(sp24 + (var_r4 + var_r3)) - 0x70) <= 0x19U) {
                *sp1C = (s16) (temp_r5_2 + 8);
            }
            sp2C = var_r2;
            sp30 = var_r3;
            sub_805345C(var_r2 + (var_r4 + 4), sp14);
            var_r4 = (u8) (var_r4 + 1);
        } while ((u32) var_r4 <= 5U);
        *sp1C = (s16) (temp_r5 - ((temp_r6 & 0xF) - 0x38));
        temp_r4_3 = sp8 + temp_r1_3;
        temp_r0_5 = temp_r4_3->unkC;
        if (temp_r0_5 == 0xFF) {
            subroutine_arg0.unk0 = 0x20;
            var_r0_3 = 0x30;
        } else {
            if ((u32) temp_r0_5 > 9U) {
                subroutine_arg0.unk0 = (s8) (Div((s32) temp_r4_3->unkC, 0xA) + 0x30);
                var_r0_4 = Mod((s32) temp_r4_3->unkC, 0xA);
            } else {
                subroutine_arg0.unk0 = 0x20;
                var_r0_4 = (s32) temp_r4_3->unkC;
            }
            var_r0_3 = var_r0_4 + 0x30;
        }
        subroutine_arg0.unk1 = var_r0_3;
        *sp18 = 0x80;
        *sp20 = 2;
        sub_805345C((s32) &subroutine_arg0, sp14);
        temp_r4_4 = sp8 + temp_r1_3;
        temp_r0_6 = temp_r4_4->unkD;
        if ((u32) temp_r0_6 > 9U) {
            subroutine_arg0.unk0 = (s8) (Div((s32) temp_r0_6, 0xA) + 0x30);
            var_r0_5 = Mod((s32) temp_r4_4->unkD, 0xA);
        } else {
            subroutine_arg0.unk0 = 0x20;
            var_r0_5 = (s32) temp_r4_4->unkD;
        }
        subroutine_arg0.unk1 = (s8) (var_r0_5 + 0x30);
        *sp18 = 0xA0;
        sub_805345C((s32) &subroutine_arg0, sp14);
        temp_r4_5 = sp8 + temp_r1_3;
        temp_r0_7 = temp_r4_5->unkE;
        if ((u32) temp_r0_7 > 9U) {
            subroutine_arg0.unk0 = (s8) (Div((s32) temp_r0_7, 0xA) + 0x30);
            var_r0_6 = Mod((s32) temp_r4_5->unkE, 0xA);
        } else {
            subroutine_arg0.unk0 = 0x20;
            var_r0_6 = (s32) temp_r4_5->unkE;
        }
        subroutine_arg0.unk1 = (s8) (var_r0_6 + 0x30);
        *sp18 = 0xC0;
        sub_805345C((s32) &subroutine_arg0, sp14);
    }
    var_r5_2 = (u8) sp28;
    if ((u32) var_r5_2 <= 8U) {
        goto loop_35;
    }
}

void TaskDestructor_VsRecord(struct Task *t) {

}
#endif
