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

typedef struct Game2_0 {
} Game2_0;

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
