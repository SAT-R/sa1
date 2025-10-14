#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "data/ui_graphics.h"
#include "game/gTask_03006240.h"
#include "game/save.h"
#include "game/sa1_sa2_shared/globals.h"
#include "game/special_stage/main.h"

#include "constants/ui_graphics.h"
#include "constants/vram_hardcoded.h"
#include "constants/zones.h"

typedef struct Game_2_1_2C {
    u8 filler0[0xC];
    struct Task *taskC;
    struct Task *task10;
    struct Task *task14;
    struct Task *task18;
    struct Task *task1C;
    struct Task *task20;
    struct Task *task24;
    s16 unk28;
    s16 unk2A;
} Game_2_1_2C;

typedef struct Game_2_1_34 {
    union {
        // TODO: This union might actually be their shared global type?
        GameOverB overB;
        Strc_8052C84 strc0;
    } u;
    s32 unk18;
    s32 unk1C;
    u16 unk20;
    s16 unk22;
    s16 unk24;
    u16 unk26;
    u8 unk28;
    u8 unk29;
    u8 unk2A;
    u8 unk2B[7];
} Game_2_1_34;

void sub_805C994(u8 arg0);
void Task_805D684(void);
void Task_805D720(void);
void sub_805D8EC(void);
void sub_805DB04(void);
void sub_805DD10(void);
void sub_805DF2C(void);
void sub_805E018(void);
void sub_805D4F0(void);
void TaskDestructor_805E1E4(struct Task *t);

extern u8 gUnknown_08487134[NUM_TIME_ATTACK_ZONES * ACTS_PER_ZONE];

void sub_805C900(u8 arg0)
{
    s16 var_r4;
    s32 temp_r0_2;
    s32 strc34_2;
    u8 *temp_r5;
    s32 var_r6;
    s32 temp_r0_3;
    Game_2_1_34 *strc34;

    strc34 = TASK_DATA(gCurTask);
    if (0) {
    } else if (arg0 == 0) {
        var_r6 = strc34->unk26 * 100;
    } else if (arg0 == 1) {
        var_r6 = strc34->unk18;
    } else if (arg0 == 2) {
        var_r6 = strc34->unk1C;
    } else if (arg0 == 3) {
        var_r6 = strc34->unk2A;
    }

    for (var_r4 = 6; var_r4 >= 0; var_r4--) {
        u8 *ptrUnk2B = strc34->unk2B;
        temp_r0_2 = Div(var_r6, 10);
        temp_r5 = &ptrUnk2B[var_r4];
        strc34_2 = ((temp_r0_2 << 3) + (temp_r0_2 << 1));
        temp_r0_3 = ((var_r6 - strc34_2) + 32);
        *temp_r5 = temp_r0_3;
        if ((var_r6 != strc34_2) && (arg0 == 3)) {
            *temp_r5 = (temp_r0_3 + 0xB);
        }
        var_r6 = temp_r0_2;
    }
}

void sub_805C994(u8 arg0)
{
    Strc_80528AC gfx;

    gfx.uiGfxID = UIGFX_STGRESULT_HEADLINE_BACK;
    gfx.unk2B = 8;
    gfx.tiles = gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].tiles;
    gfx.palette = gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].palette;
    gfx.tilesSize = 0x200;
    gfx.paletteSize = 0x20;
    gfx.unk28 = 14;
    gfx.vramC = OBJ_VRAM0 + 0x77A0;
    gfx.unk2A = 13;
    gfx.unk0.unk4 = gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].unk8;
    gfx.unk0.unk8 = gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].unkC;
    gfx.unk0.unk9 = gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].unk10;
    gfx.unk0.unkA = gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].unk14;
    gfx.unk0.unkB = gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].unk18;
    sub_80528AC(&gfx);

    if (arg0 != 0) {
        gfx.uiGfxID = 51;
        gfx.unk2B = 2;
        gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles;
        gfx.palette = gUiGraphics[gfx.uiGfxID].palette;
        gfx.tilesSize = 0xE00;
        gfx.paletteSize = 0x20;
        gfx.unk28 = 0xF;
        gfx.vramC = OBJ_VRAM0 + 0x69A0;
        gfx.unk2A = 13;
        gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
        gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
        gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
        gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
        gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
        sub_80528AC(&gfx);

        gfx.uiGfxID = 11 + gSelectedCharacter;
        gfx.unk2B = 2;
        gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles;
        gfx.palette = gUiGraphics[gfx.uiGfxID].palette;
        gfx.tilesSize = 0x600;
        gfx.paletteSize = 0xC;
        gfx.unk28 = 15;
        gfx.vramC = OBJ_VRAM0 + 0x63a0;
        gfx.unk2A = 13;
        gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
        gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
        gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
        gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
        gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
        sub_80528AC(&gfx);
    } else {
        gfx.uiGfxID = 53;
        gfx.unk2B = 2;
        gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles;
        gfx.palette = gUiGraphics[gfx.uiGfxID].palette;
        gfx.tilesSize = 0x1400;
        gfx.paletteSize = 0x20;
        gfx.unk28 = 0xF;
        gfx.vramC = OBJ_VRAM0 + 0x63A0;
        gfx.unk2A = 0xD;
        gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
        gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
        gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
        gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
        gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
        sub_80528AC(&gfx);
    }

    gfx.uiGfxID = 52;
    gfx.unk2B = 3;
    gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles;
    gfx.palette = gUiGraphics[gfx.uiGfxID].palette;
    gfx.tilesSize = 0x1100;
    gfx.paletteSize = 0x20;
    gfx.unk28 = 0xE;
    gfx.vramC = OBJ_VRAM0 + 0x52A0;
    gfx.unk2A = 0xD;
    gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
    gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
    gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
    gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
    gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 54;
    gfx.unk2B = 4;
    gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles;
    gfx.palette = gUiGraphics[gfx.uiGfxID].palette;
    gfx.tilesSize = 0x600;
    gfx.paletteSize = 0x20;
    gfx.unk28 = 0xD;
    gfx.vramC = OBJ_VRAM0 + 0x4CA0;
    gfx.unk2A = 0xD;
    gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
    gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
    gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
    gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
    gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 56;
    gfx.unk2B = 5;
    gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles;
    gfx.palette = gUiGraphics[gfx.uiGfxID].palette;
    gfx.tilesSize = 0x20;
    gfx.paletteSize = 0x20;
    gfx.unk28 = 0xC;
    gfx.vramC = OBJ_VRAM0 + 0x4CA0;
    gfx.unk2A = 0xC;
    gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
    gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
    gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
    gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
    gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 57;
    gfx.unk2B = 5;
    gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles;
    gfx.palette = gUiGraphics[gfx.uiGfxID].palette;
    gfx.tilesSize = 0x20;
    gfx.paletteSize = 0x20;
    gfx.unk28 = 0xB;
    gfx.vramC = OBJ_VRAM0 + 0x4CA0;
    gfx.unk2A = 0xC;
    gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
    gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
    gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
    gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
    gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 58;
    gfx.unk2B = 5;
    gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles;
    gfx.palette = gUiGraphics[gfx.uiGfxID].palette;
    gfx.tilesSize = 0x20;
    gfx.paletteSize = 0x20;
    gfx.unk28 = 10;
    gfx.vramC = OBJ_VRAM0 + 0x4CA0;
    gfx.unk2A = 0xC;
    gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
    gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
    gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
    gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
    gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 0;
    gfx.unk2B = 6;
    gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles + 0x400;
    gfx.palette = gUiGraphics[gfx.uiGfxID].palette;
    gfx.vramC = OBJ_VRAM0 + 0x4A20;
    gfx.tilesSize = 0x280;
    gfx.paletteSize = 0x20;
    gfx.unk28 = 0x9;
    gfx.unk2A = 0xD;
    gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
    gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
    gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
    gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
    gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
    sub_80528AC(&gfx);
}

// (91.53%) https://decomp.me/scratch/GJc3f
NONMATCH("asm/non_matching/game/game_2_1__sub_805D048.inc", void sub_805D048(u8 arg0))
{
    struct Task *task18;
    struct Task *task1C;
    struct Task *taskC;
    struct Task *task24;
    struct Task *task10;
    struct Task *task14;
    struct Task *t;
    u32 sp20;
    s32 sp24;
    struct Task *task20;
    Game_2_1_2C *temp_r0_10;
    Game_2_1_34 *temp_r2;
    s32 var_r8;
    u16 temp_sl;
    u16 var_r7;
    u8 temp_r0;
    u8 temp_sb;

    sub_80535FC();

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;

    if (gSpecialStageCollectedRings >= gUnknown_03005154) {
        m4aSongNumStart(0x2FU);
        sp24 = 1;
        sp20 = 0x2710;
        if (GetBit(LOADED_SAVE->chaosEmeralds, gUnknown_08487134[gCurrentLevel])) {
            var_r8 = 1;
        } else {
            SetBit(LOADED_SAVE->chaosEmeralds, gUnknown_08487134[gCurrentLevel]);
            var_r8 = 0;
        }
    } else {
        m4aSongNumStart(0x2EU);
        var_r8 = 0;
        sp24 = 0;
        sp20 = 0;
    }
    temp_sb = LOADED_SAVE->chaosEmeralds;
    temp_sl = gSpecialStageCollectedRings;
    temp_r0 = gUnknown_0300507C + var_r8;
    SA2_LABEL(gUnknown_0300543C) = SA2_LABEL(gUnknown_0300543C) + temp_r0;

    INCREMENT_SCORE_A(sp20 + temp_sl * 100);

    if (sp20 > (temp_sl * 100)) {
        var_r7 = Div(sp20, 100);
    } else {
        var_r7 = temp_sl;
    }

    UiGfxStackInit();

    task1C = TaskCreate(Task_805D684, sizeof(Game_2_1_34), 0x2120U, 0U, NULL);
    temp_r2 = TASK_DATA(task1C);
    temp_r2->unk20 = 0;
    temp_r2->unk22 = var_r7;
    temp_r2->unk24 = 0;
    temp_r2->u.strc0.unkA = 0xF0;
    temp_r2->u.strc0.unkC = 0x7E;
    temp_r2->u.strc0.byteCount = 8;
    temp_r2->u.strc0.unk10 = 8;
    temp_r2->u.strc0.unk12 = 0xE;
    temp_r2->u.strc0.unk16 = 1;
    temp_r2->u.strc0.unk8 = 0xA;
    temp_r2->unk28 = sp24;
    temp_r2->unk29 = temp_sb;
    temp_r2->unk2A = temp_r0;
    temp_r2->unk26 = temp_sl;
    temp_r2->unk18 = sp20;
    temp_r2->unk1C = 0;

    task18 = TaskCreate(Task_805D720, sizeof(Game_2_1_34), 0x2120U, 0U, NULL);
    temp_r2 = TASK_DATA(task18);
    temp_r2->unk20 = 0;
    temp_r2->unk22 = var_r7;
    temp_r2->unk24 = 0;
    temp_r2->u.strc0.unkA = 0x100;
    temp_r2->u.strc0.unkC = 0x80;
    temp_r2->u.strc0.byteCount = 9;
    temp_r2->u.strc0.unk10 = 2;
    temp_r2->u.strc0.unk12 = 0xF;
    temp_r2->u.strc0.unk16 = 1;
    temp_r2->u.strc0.unk8 = 0;
    temp_r2->unk28 = sp24;
    temp_r2->unk29 = temp_sb;
    temp_r2->unk2A = temp_r0;
    temp_r2->unk26 = temp_sl;
    temp_r2->unk18 = sp20;
    temp_r2->unk1C = 0;

    taskC = TaskCreate(sub_805D8EC, sizeof(Game_2_1_34), 0x2120U, 0U, NULL);
    temp_r2 = TASK_DATA(taskC);
    temp_r2->unk20 = 0;
    temp_r2->unk22 = var_r7;
    temp_r2->unk24 = 0;
    temp_r2->u.strc0.unk0 = 0x100;
    temp_r2->u.strc0.unk2 = 0;
    temp_r2->u.strc0.unk4 = 0;
    temp_r2->u.strc0.unk6 = 0;
    temp_r2->u.strc0.unkA = 0x39;
    temp_r2->u.strc0.unkC = 0x49;
    temp_r2->u.strc0.byteCount = 3;
    temp_r2->u.strc0.unk10 = 3;
    temp_r2->u.strc0.unk12 = 0xE;
    temp_r2->u.strc0.unk16 = 1;
    temp_r2->u.strc0.unk8 = 0x18;
    temp_r2->unk28 = sp24;
    temp_r2->unk29 = temp_sb;
    temp_r2->unk2A = temp_r0;
    temp_r2->unk26 = temp_sl;
    temp_r2->unk18 = sp20;
    temp_r2->unk1C = 0;

    task24 = TaskCreate(sub_805DB04, sizeof(Game_2_1_34), 0x2120U, 0U, NULL);
    temp_r2 = TASK_DATA(task24);
    temp_r2->unk20 = 0;
    temp_r2->unk22 = var_r7;
    temp_r2->unk24 = 0;
    temp_r2->u.strc0.unk0 = 0x100;
    temp_r2->u.strc0.unk2 = 0;
    temp_r2->u.strc0.unk4 = 0;
    temp_r2->u.strc0.unk6 = 1;
    temp_r2->u.strc0.unkA = 0x39;
    temp_r2->u.strc0.unkC = 0x39;
    temp_r2->u.strc0.byteCount = 3;
    temp_r2->u.strc0.unk10 = 3;
    temp_r2->u.strc0.unk12 = 0xE;
    temp_r2->u.strc0.unk16 = 1;
    temp_r2->u.strc0.unk8 = 0x10;
    temp_r2->unk28 = sp24;
    temp_r2->unk29 = temp_sb;
    temp_r2->unk2A = temp_r0;
    temp_r2->unk26 = temp_sl;
    temp_r2->unk18 = sp20;
    temp_r2->unk1C = 0;

    task10 = TaskCreate(sub_805DD10, sizeof(Game_2_1_34), 0x2120U, 0U, NULL);
    temp_r2 = TASK_DATA(task10);
    temp_r2->unk20 = 0;
    temp_r2->unk22 = var_r7;
    temp_r2->unk24 = 0;
    temp_r2->u.strc0.unk0 = 0x100;
    temp_r2->u.strc0.unk2 = 0;
    temp_r2->u.strc0.unk4 = 0;
    temp_r2->u.strc0.unk6 = 2;
    temp_r2->u.strc0.unkA = 0x39;
    temp_r2->u.strc0.unkC = 0x39;
    temp_r2->u.strc0.byteCount = 3;
    temp_r2->u.strc0.unk10 = 3;
    temp_r2->u.strc0.unk12 = 0xE;
    temp_r2->u.strc0.unk16 = 1;
    temp_r2->u.strc0.unk8 = 8;
    temp_r2->unk28 = sp24;
    temp_r2->unk29 = temp_sb;
    temp_r2->unk2A = temp_r0;
    temp_r2->unk26 = temp_sl;
    temp_r2->unk18 = sp20;
    temp_r2->unk1C = 0;

    temp_r2 = TASK_DATA(TaskCreate(sub_805DF2C, sizeof(Game_2_1_34), 0x2120U, 0U, NULL));
    temp_r2->unk20 = 0;
    temp_r2->unk22 = var_r7;
    temp_r2->unk24 = 0;
    temp_r2->u.strc0.unk0 = 0x100;
    temp_r2->u.strc0.unk2 = 0;
    temp_r2->u.strc0.unk4 = 0;
    temp_r2->u.strc0.unk6 = 3;
    temp_r2->u.strc0.unkA = 0x39;
    temp_r2->u.strc0.unkC = 0x39;
    temp_r2->u.strc0.byteCount = 3;
    temp_r2->u.strc0.unk10 = 3;
    temp_r2->u.strc0.unk12 = 0xE;
    temp_r2->u.strc0.unk16 = 1;
    temp_r2->u.strc0.unk8 = 0;
    temp_r2->unk28 = sp24;
    temp_r2->unk29 = temp_sb;
    temp_r2->unk2A = temp_r0;
    temp_r2->unk26 = temp_sl;
    temp_r2->unk18 = sp20;
    temp_r2->unk1C = 0;

    task20 = TaskCreate(sub_805E018, sizeof(Game_2_1_34), 0x2120U, 0U, NULL);
    temp_r2 = TASK_DATA(task20);
    temp_r2->unk20 = 0;
    temp_r2->unk22 = var_r7;
    temp_r2->unk24 = 0;
    temp_r2->u.strc0.unkA = 0;
    temp_r2->u.strc0.unkC = 0x29;
    temp_r2->u.strc0.byteCount = 1;
    temp_r2->u.strc0.unk10 = 4;
    temp_r2->u.strc0.unk12 = 0xD;
    temp_r2->u.strc0.unk16 = 1;
    temp_r2->u.strc0.unk8 = 0;
    temp_r2->unk28 = sp24;
    temp_r2->unk29 = temp_sb;
    temp_r2->unk2A = temp_r0;
    temp_r2->unk26 = temp_sl;
    temp_r2->unk18 = sp20;
    temp_r2->unk1C = 0;

    temp_r0_10 = TASK_DATA(TaskCreate(sub_805D4F0, sizeof(Game_2_1_2C), 0x2100U, 0U, TaskDestructor_805E1E4));
    temp_r0_10->unk28 = 0;
    temp_r0_10->unk2A = var_r7;
    temp_r0_10->task1C = task1C;
    temp_r0_10->task18 = task18;
    temp_r0_10->taskC = taskC;
    temp_r0_10->task24 = task24;
    temp_r0_10->task10 = task10;
    temp_r0_10->task14 = task14;
    temp_r0_10->task20 = task20;

    SA2_LABEL(gUnknown_03004D80)[0] = 0;
    SA2_LABEL(gUnknown_03002280)[0][0] = 0;
    SA2_LABEL(gUnknown_03002280)[0][1] = 0;
    SA2_LABEL(gUnknown_03002280)[0][2] = -1;
    SA2_LABEL(gUnknown_03002280)[0][3] = 0x20;
    SA2_LABEL(gUnknown_03004D80)[1] = 0;
    SA2_LABEL(gUnknown_03002280)[1][0] = 0;
    SA2_LABEL(gUnknown_03002280)[1][1] = 0;
    SA2_LABEL(gUnknown_03002280)[1][2] = -1;
    SA2_LABEL(gUnknown_03002280)[1][3] = 0x20;
    SA2_LABEL(gUnknown_03004D80)[2] = 0;
    SA2_LABEL(gUnknown_03002280)[2][0] = 0;
    SA2_LABEL(gUnknown_03002280)[2][1] = 0;
    SA2_LABEL(gUnknown_03002280)[2][2] = -1;
    SA2_LABEL(gUnknown_03002280)[2][3] = 0x20;
    SA2_LABEL(gUnknown_03004D80)[3] = 0;
    SA2_LABEL(gUnknown_03002280)[3][0] = 0;
    SA2_LABEL(gUnknown_03002280)[3][1] = 0;
    SA2_LABEL(gUnknown_03002280)[3][2] = -1;
    SA2_LABEL(gUnknown_03002280)[3][3] = 0x20;

    sub_805C994(arg0);
}
END_NONMATCH
