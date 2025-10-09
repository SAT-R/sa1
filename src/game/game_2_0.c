#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/entity.h"
#include "game/game_over.h"
#include "game/title_screen.h"
#include "game/save.h"
#include "game/stage/stage.h"
#include "game/stage/ui.h"
#include "data/ui_graphics.h"

#include "constants/animations.h"

typedef struct Game_2_0_Sub {
    union {
        // TODO: This union might actually be their shared global type?
        GameOverB overB;
        Strc_8052C84 strc0;
    } u;
    s16 unk18;
    s16 unk1A;
} Game_2_0_Sub;

typedef struct Game_2_0_Sub2 {
    s16 unk18;
    s16 unk1A;
} Game_2_0_Sub2;

typedef struct Game_2_0 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    u8 unkA;
    struct Task *taskC;
    struct Task *task10;
    struct Task *task14;
    s16 unk18;
    u8 unk1A;
} Game_2_0;

void sub_805C448(u8 arg0);
void Task_805C594(void);
void Task_805C6B0(void);
void Task_805C740(void);
void Task_805C83C(void);
void TaskDestructor_nullsub_805C8FC(struct Task *t);

// (89.77%) https://decomp.me/scratch/ZhMAK
NONMATCH("asm/non_matching/game/game2_0__sub_805BC94.inc", void sub_805BC94(u16 arg0))
{
    Strc_80528AC sp00;
    s32 sp34;
    s32 sp38;
    u8 temp_r0_2;
    u8 temp_r5;

    if ((Div(arg0, 100) << 0x18) != 0) {
        sp38 = 3;
    } else {
        temp_r0_2 = Div(arg0, 10);

        if (temp_r0_2 != 0) {
            sp38 = 2;
        } else {
            sp38 = 1;
        }
    }

    sp00.uiGfxID = 50;
    sp00.unk2B = 4;
    sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles;
    sp00.palette = gUiGraphics[sp00.uiGfxID].palette;
    sp00.tilesSize = 80 * TILE_SIZE_4BPP;
    sp00.paletteSize = 0x20;
    sp00.unk28 = 6;
    sp00.vramC = OBJ_VRAM0 + 0x5DA0;
    sp00.unk2A = 13;
    sp00.unk0.unk4 = gUiGraphics[sp00.uiGfxID].unk8;
    sp00.unk0.unk8 = gUiGraphics[sp00.uiGfxID].unkC;
    sp00.unk0.unk9 = gUiGraphics[sp00.uiGfxID].unk10;
    sp00.unk0.unkA = gUiGraphics[sp00.uiGfxID].unk14;
    sp00.unk0.unkB = gUiGraphics[sp00.uiGfxID].unk18;
    sub_80528AC(&sp00);

    sp00.uiGfxID = UIGFX_STGRESULT_HEADLINE_BACK;
    sp00.unk2B = 8;
    sp00.tiles = gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].tiles;
    sp00.palette = gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].palette;
    sp00.tilesSize = 16 * TILE_SIZE_4BPP;
    sp00.paletteSize = 0x20;
    sp00.unk28 = 6;
    sp00.vramC = OBJ_VRAM0 + 0x77A0;
    sp00.unk2A = 13;
    sp00.unk0.unk4 = *(&gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].unk8);
    sp00.unk0.unk8 = *(&gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].unkC);
    sp00.unk0.unk9 = *(&gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].unk10);
    sp00.unk0.unkA = *(&gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].unk14);
    sp00.unk0.unkB = *(&gUiGraphics[UIGFX_STGRESULT_HEADLINE_BACK].unk18);
    sub_80528AC(&sp00);

    if (sp38 == 1) {
        sp00.uiGfxID = 47;
    } else if (sp38 == 2) {
        sp00.uiGfxID = 48;
    } else {
        sp00.uiGfxID = 49;
    }

    sp00.unk2B = 2;
    sp00.tiles = gUiGraphics[sp00.uiGfxID].tiles;
    sp00.palette = gUiGraphics[sp00.uiGfxID].palette;
    sp00.tilesSize = 0xE00;
    sp00.paletteSize = 0x20;
    sp00.unk28 = 6;
    sp00.vramC = OBJ_VRAM0 + 0x67A0;
    sp00.unk2A = 13;
    sp00.unk0.unk4 = gUiGraphics[sp00.uiGfxID].unk8;
    sp00.unk0.unk8 = gUiGraphics[sp00.uiGfxID].unkC;
    sp00.unk0.unk9 = gUiGraphics[sp00.uiGfxID].unk10;
    sp00.unk0.unkA = gUiGraphics[sp00.uiGfxID].unk14;
    sp00.unk0.unkB = gUiGraphics[sp00.uiGfxID].unk18;
    sub_80528AC(&sp00);

    switch (sp38) {
        case 3: {
            sp34 = 1;
            temp_r5 = (u8)Div(arg0, 100);
            arg0 = (s32)(u16)Mod(arg0, 100);
            if (temp_r5 != 0) {
                sp34 = 0;
                sp00.uiGfxID = UIGFX_TIMER_DIGITS;
                sp00.unk2B = sp38;
                sp00.tiles = *(&gUiGraphics[UIGFX_TIMER_DIGITS].tiles) + (temp_r5 << 7);
                sp00.palette = *(&gUiGraphics[UIGFX_TIMER_DIGITS].palette);
                sp00.vramC = OBJ_VRAM0 + 0x69E0;
                sp00.tilesSize = 0x40;
                sp00.paletteSize = 0x20;
                sp00.unk28 = 6;
                sp00.unk2A = 13;
                sp00.unk0.unk4 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk8);
                sp00.unk0.unk8 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unkC);
                sp00.unk0.unk9 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk10);
                sp00.unk0.unkA = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk14);
                sp00.unk0.unkB = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk18);
                sub_80528AC(&sp00);

                sp00.uiGfxID = UIGFX_TIMER_DIGITS;
                sp00.unk2B = sp38;
                sp00.tiles = *(&gUiGraphics[UIGFX_TIMER_DIGITS].tiles) + (temp_r5 << 7) + 0x40;
                sp00.palette = *(&gUiGraphics[UIGFX_TIMER_DIGITS].palette);
                sp00.vramC = OBJ_VRAM0 + 0x6A60;
                sp00.tilesSize = 2 * TILE_SIZE_4BPP;
                sp00.paletteSize = 0x20;
                sp00.unk28 = 6;
                sp00.unk2A = 13;
                sp00.unk0.unk4 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk8);
                sp00.unk0.unk8 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unkC);
                sp00.unk0.unk9 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk10);
                sp00.unk0.unkA = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk14);
                sp00.unk0.unkB = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk18);
                sub_80528AC(&sp00);
            }

            temp_r5 = (u8)Div(arg0, 10);
            arg0 = (s32)(u16)Mod(arg0, 10);
            if ((temp_r5 != 0) || (sp34 == 0)) {
                sp34 = 0;
                sp00.uiGfxID = UIGFX_TIMER_DIGITS;
                sp00.unk2B = sp38;
                sp00.tiles = *(&gUiGraphics[UIGFX_TIMER_DIGITS].tiles) + (temp_r5 << 7);
                sp00.palette = *(&gUiGraphics[UIGFX_TIMER_DIGITS].palette);
                sp00.vramC = OBJ_VRAM0 + 0x6BA0;
                sp00.tilesSize = 2 * TILE_SIZE_4BPP;
                sp00.paletteSize = 0x20;
                sp00.unk28 = 6;
                sp00.unk2A = 13;
                sp00.unk0.unk4 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk8);
                sp00.unk0.unk8 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unkC);
                sp00.unk0.unk9 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk10);
                sp00.unk0.unkA = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk14);
                sp00.unk0.unkB = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk18);
                sub_80528AC(&sp00);

                sp00.uiGfxID = UIGFX_TIMER_DIGITS;
                sp00.unk2B = sp38;
                sp00.tiles = *(&gUiGraphics[UIGFX_TIMER_DIGITS].tiles) + (temp_r5 << 7) + 0x40;
                sp00.palette = *(&gUiGraphics[UIGFX_TIMER_DIGITS].palette);
                sp00.vramC = OBJ_VRAM0 + 0x6C20;
                sp00.tilesSize = 2 * TILE_SIZE_4BPP;
                sp00.paletteSize = 0x20;
                sp00.unk28 = 6;
                sp00.unk2A = 13;
                sp00.unk0.unk4 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk8);
                sp00.unk0.unk8 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unkC);
                sp00.unk0.unk9 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk10);
                sp00.unk0.unkA = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk14);
                sp00.unk0.unkB = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk18);
                sub_80528AC(&sp00);
            }

            temp_r5 = (u8)arg0;
            if ((temp_r5 != 0) || (sp34 == 0)) {
                sp00.uiGfxID = UIGFX_TIMER_DIGITS;
                sp00.unk2B = 3;
                sp00.tiles = *(&gUiGraphics[UIGFX_TIMER_DIGITS].tiles) + (temp_r5 << 7);
                sp00.palette = *(&gUiGraphics[UIGFX_TIMER_DIGITS].palette);
                sp00.vramC = OBJ_VRAM0 + 0x6BE0;
                sp00.tilesSize = 2 * TILE_SIZE_4BPP;
                sp00.paletteSize = 0x20;
                sp00.unk28 = 6;
                sp00.unk2A = 13;
                sp00.unk0.unk4 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk8);
                sp00.unk0.unk8 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unkC);
                sp00.unk0.unk9 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk10);
                sp00.unk0.unkA = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk14);
                sp00.unk0.unkB = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk18);
                sub_80528AC(&sp00);

                sp00.uiGfxID = UIGFX_TIMER_DIGITS;
                sp00.unk2B = 3;
                sp00.tiles = gUiGraphics[UIGFX_TIMER_DIGITS].tiles + (temp_r5 << 7) + 0x40;
                sp00.palette = gUiGraphics[UIGFX_TIMER_DIGITS].palette;
                sp00.vramC = OBJ_VRAM0 + 0x6C60;
                sp00.tilesSize = 2 * TILE_SIZE_4BPP;
                sp00.paletteSize = 0x20;
                sp00.unk28 = 6;
                sp00.unk2A = 13;
                sp00.unk0.unk4 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk8);
                sp00.unk0.unk8 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unkC);
                sp00.unk0.unk9 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk10);
                sp00.unk0.unkA = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk14);
                sp00.unk0.unkB = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk18);
                sub_80528AC(&sp00);
            }
        } break;

        case 2: {
            temp_r5 = Div(arg0, 0xA);
            arg0 = Mod(arg0, 0xA);

            sp00.uiGfxID = UIGFX_TIMER_DIGITS;
            sp00.unk2B = 3;
            sp00.tiles = *(&gUiGraphics[UIGFX_TIMER_DIGITS].tiles) + (temp_r5 << 7);
            sp00.palette = *(&gUiGraphics[UIGFX_TIMER_DIGITS].palette);
            sp00.vramC = OBJ_VRAM0 + 0x69E0;
            sp00.tilesSize = 0xE00;
            sp00.paletteSize = 0x20;
            sp00.unk28 = 6;
            sp00.unk2A = 13;
            sp00.unk0.unk4 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk8);
            sp00.unk0.unk8 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unkC);
            sp00.unk0.unk9 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk10);
            sp00.unk0.unkA = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk14);
            sp00.unk0.unkB = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk18);
            sub_80528AC(&sp00);

            sp00.uiGfxID = UIGFX_TIMER_DIGITS;
            sp00.unk2B = 3;
            sp00.tiles = *(&gUiGraphics[UIGFX_TIMER_DIGITS].tiles) + (temp_r5 << 7) + 0x40;
            sp00.palette = *(&gUiGraphics[UIGFX_TIMER_DIGITS].palette);
            sp00.vramC = OBJ_VRAM0 + 0x6A60;
            sp00.tilesSize = 0x40;
            sp00.paletteSize = 0x20;
            sp00.unk28 = 6;
            sp00.unk2A = 13;
            sp00.unk0.unk4 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk8);
            sp00.unk0.unk8 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unkC);
            sp00.unk0.unk9 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk10);
            sp00.unk0.unkA = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk14);
            sp00.unk0.unkB = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk18);
            sub_80528AC(&sp00);

            sp00.uiGfxID = UIGFX_TIMER_DIGITS;
            sp00.unk2B = 3;
            sp00.tiles = *(&gUiGraphics[UIGFX_TIMER_DIGITS].tiles) + (arg0 << 7);
            sp00.palette = *(&gUiGraphics[UIGFX_TIMER_DIGITS].palette);
            sp00.vramC = OBJ_VRAM0 + 0x6BA0;
            sp00.tilesSize = 0x40;
            sp00.paletteSize = 0x20;
            sp00.unk28 = 6;
            sp00.unk2A = 13;
            sp00.unk0.unk4 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk8);
            sp00.unk0.unk8 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unkC);
            sp00.unk0.unk9 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk10);
            sp00.unk0.unkA = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk14);
            sp00.unk0.unkB = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk18);
            sub_80528AC(&sp00);

            sp00.uiGfxID = UIGFX_TIMER_DIGITS;
            sp00.unk2B = 3;
            sp00.tiles = *(&gUiGraphics[UIGFX_TIMER_DIGITS].tiles) + (arg0 << 7) + 0x40;
            sp00.palette = *(&gUiGraphics[UIGFX_TIMER_DIGITS].palette);
            sp00.vramC = OBJ_VRAM0 + 0x6c20;
            sp00.tilesSize = 0x40;
            sp00.paletteSize = 0x20;
            sp00.unk28 = 6;
            sp00.unk2A = 13;
            sp00.unk0.unk4 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk8);
            sp00.unk0.unk8 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unkC);
            sp00.unk0.unk9 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk10);
            sp00.unk0.unkA = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk14);
            sp00.unk0.unkB = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk18);
            sub_80528AC(&sp00);

        } break;

        default: {
            u8 v = arg0;

            sp00.uiGfxID = UIGFX_TIMER_DIGITS;
            sp00.unk2B = 3;
            sp00.tiles = *(&gUiGraphics[UIGFX_TIMER_DIGITS].tiles) + (v << 7);
            sp00.palette = *(&gUiGraphics[UIGFX_TIMER_DIGITS].palette);
            sp00.vramC = OBJ_VRAM0 + 0x69E0;
            sp00.tilesSize = 0x40;
            sp00.paletteSize = 0x20;
            sp00.unk28 = 6;
            sp00.unk2A = 13;
            sp00.unk0.unk4 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk8);
            sp00.unk0.unk8 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unkC);
            sp00.unk0.unk9 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk10);
            sp00.unk0.unkA = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk14);
            sp00.unk0.unkB = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk18);
            sub_80528AC(&sp00);

            sp00.uiGfxID = UIGFX_TIMER_DIGITS;
            sp00.unk2B = 3;
            sp00.tiles = *(&gUiGraphics[UIGFX_TIMER_DIGITS].tiles) + (v << 7) + 0x40;
            sp00.palette = *(&gUiGraphics[UIGFX_TIMER_DIGITS].palette);
            sp00.vramC = OBJ_VRAM0 + 0x6A60;
            sp00.tilesSize = 0x40;
            sp00.paletteSize = 0x20;
            sp00.unk28 = 6;
            sp00.unk2A = 13;
            sp00.unk0.unk4 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk8);
            sp00.unk0.unk8 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unkC);
            sp00.unk0.unk9 = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk10);
            sp00.unk0.unkA = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk14);
            sp00.unk0.unkB = *(&gUiGraphics[UIGFX_TIMER_DIGITS].unk18);
            sub_80528AC(&sp00);
        } break;
    }
}
END_NONMATCH

void sub_805C448(u8 arg0)
{
    struct Task *t2 = NULL;
    struct Task *t1 = NULL;
    struct Task *t3 = NULL;
    Game_2_0_Sub *sub = NULL;
    Game_2_0 *strc = NULL;

    sub_80535FC();
    UiGfxStackInit();
    t1 = TaskCreate(Task_805C6B0, sizeof(Game_2_0_Sub), 0x2120U, 0U, NULL);
    sub = TASK_DATA(t1);
    sub->unk18 = 0;
    sub->unk1A = 0;
    sub->u.overB.qUnkA = 0xF0;
    sub->u.overB.unkC = 0x7E;
    sub->u.overB.unkE = 8;
    sub->u.overB.unk10 = 8;
    sub->u.overB.unk12 = 6;
    sub->u.overB.unk16 = 1;
    sub->u.overB.unk8 = 0xA;
    t2 = TaskCreate(Task_805C740, sizeof(Game_2_0_Sub), 0x2120U, 0U, NULL);
    sub = TASK_DATA(t2);
    sub->unk18 = 0;
    sub->unk1A = 0;
    sub->u.overB.qUnkA = 0x100;
    sub->u.overB.unkC = 0x80;
    sub->u.overB.unkE = 9;
    sub->u.overB.unk10 = 2;
    sub->u.overB.unk12 = 6;
    sub->u.overB.unk16 = 1;
    sub->u.overB.unk8 = 0;
    if (arg0 != 0) {
        Strc_8052C84 *strc0;
        t3 = TaskCreate(Task_805C83C, sizeof(Game_2_0_Sub), 0x2120U, 0U, NULL);
        sub = TASK_DATA(t3);
        strc0 = &sub->u.strc0;
        sub->unk18 = 0;
        sub->unk1A = 0;
        strc0->unk0 = 0x100;
        strc0->unk2 = 0;
        strc0->unk4 = 0;
        strc0->unk6 = 0;
        strc0->unkA = 0x39;
        strc0->unkC = 0x49;
        strc0->byteCount = 5;
        strc0->unk10 = 4;
        strc0->unk12 = 6;
        strc0->unk16 = 1;
        strc0->unk8 = 0;
    }
    strc = TASK_DATA(TaskCreate(Task_805C594, sizeof(Game_2_0_Sub), 0x2100U, 0U, TaskDestructor_nullsub_805C8FC));
    strc->unk18 = 0;
    strc->unk1A = arg0;
    strc->task10 = t1;
    strc->task14 = t2;
    strc->taskC = t3;
    strc->unk0 = 0;
    strc->unk2 = 1;
    strc->unk4 = 2;
    strc->unk6 = 0;
    strc->unk8 = 0x60;
    strc->unkA = 1;
    if (arg0 != 0) {
        sub_80543A4((StrcUi_805423C *)strc);
    }
}
