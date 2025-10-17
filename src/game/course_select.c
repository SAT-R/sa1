#include "global.h"
#include "core.h"
#include "data/ui_graphics.h"
#include "game/gTask_03006240.h"

#include "constants/ui_graphics.h"

extern u16 gUnknown_086956F4[];
extern u8 gUnknown_086958F4[];
extern u8 gUnknown_086972F4[];
extern u8 gUnknown_08698BF4[];
extern u8 gUnknown_086962B4[];

void sub_8060C88(void)
{
    Strc_80528AC gfx;
    s8 *temp_r5;
    s8 *temp_r7;

    UiGfxStackInit();

    gfx.uiGfxID = UIGFX_OPTIONS;
    gfx.unk2B = 1;
    gfx.tiles = gUnknown_086972F4;
    gfx.tilesSize = 0x1900;
    gfx.layout = gUnknown_08698BF4;
    gfx.layoutSize = 0x500;
    gfx.unk29 = 0x1;
    gfx.unk2A = 0x11;
    gfx.unk0.unk4 = 0;
    gfx.unk0.unk8 = 0;
    gfx.unk0.unk9 = 0;
    gfx.unk0.unkA = 0;
    gfx.unk0.unkB = 0;
    sub_80528AC(&gfx);

    gfx.uiGfxID = UIGFX_OPTIONS;
    gfx.unk2B = 0;
    gfx.tiles = gUnknown_086958F4;
    gfx.tilesSize = 0x9C0;
    gfx.palette = gUnknown_086956F4;
    gfx.paletteSize = 0x200;
    gfx.layout = gUnknown_086962B4;
    gfx.layoutSize = 0x500;
    gfx.unk28 = 0;
    gfx.unk29 = 0;
    gfx.unk2A = 0x15;
    sub_80528AC(&gfx);

    gfx.uiGfxID = UIGFX_TIMER_DIGITS;
    gfx.unk2B = 2;
    gfx.tiles = gUiGraphics[UIGFX_TIMER_DIGITS].tiles;
    gfx.palette = gUiGraphics[UIGFX_TIMER_DIGITS].palette;
    gfx.tilesSize = 0x580;
    gfx.paletteSize = 0x20;
    gfx.unk28 = 2;
    gfx.vramC = (u8 *)OBJ_VRAM0 + 0x20;
    gfx.unk2A = 0xD;
    gfx.unk0.unk4 = gUiGraphics[UIGFX_TIMER_DIGITS].unk8;
    gfx.unk0.unk8 = gUiGraphics[UIGFX_TIMER_DIGITS].unkC;
    gfx.unk0.unk9 = gUiGraphics[UIGFX_TIMER_DIGITS].unk10;
    gfx.unk0.unkA = gUiGraphics[UIGFX_TIMER_DIGITS].unk14;
    gfx.unk0.unkB = gUiGraphics[UIGFX_TIMER_DIGITS].unk18;
    sub_80528AC(&gfx);
}
