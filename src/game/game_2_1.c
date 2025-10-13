#include "global.h"
#include "core.h"
#include "game/gTask_03006240.h"
#include "game/sa1_sa2_shared/globals.h"
#include "data/ui_graphics.h"

#include "constants/ui_graphics.h"
#include "constants/vram_hardcoded.h"

typedef struct Game_2_1_34 {
    u8 filler0[0x18];
    s32 unk18;
    s32 unk1C;
    u8 filler20[0x6];
    u16 unk26;
    u8 filler28[0x2];
    u8 unk2A;
    u8 unk2B[7];
} Game_2_1_34;

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
