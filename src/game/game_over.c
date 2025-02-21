#include "global.h"
#include "game/gTask_03006240.h"
#include "data/ui_graphics.h"

// NOTE: Not sure whether this is part of game__stage__ui.s or game__game_over.s
//       It is only called in game_over, so it should be here?
//       But it also references gUiGraphics.

typedef struct {
    /* 0x00 */ void *vram0;
    /* 0x04 */ void *vram4;
    /* 0x08 */ void *vram8;
} Strc_8055C50;

void sub_8055C50(Strc_8055C50 *param0)
{
    Strc_80528AC sp00;
    sub_8053674();

    sp00.uiGfxID = UIGFX_TIMER_DIGITS;
    sp00.unk2B = 4;
    sp00.tiles = gUiGraphics[UIGFX_TIMER_DIGITS].tiles;
    sp00.palette = gUiGraphics[UIGFX_TIMER_DIGITS].palette;
    sp00.unk18 = 0x500;
    sp00.unk24 = 32;
    sp00.unk28 = 6;
    sp00.vramC = param0->vram4;
    sp00.unk2A = 13;
    sp00.unk4 = gUiGraphics[UIGFX_TIMER_DIGITS].unk8;
    sp00.unk8 = gUiGraphics[UIGFX_TIMER_DIGITS].unkC;
    sp00.unk9 = gUiGraphics[UIGFX_TIMER_DIGITS].unk10;
    sp00.unkA = gUiGraphics[UIGFX_TIMER_DIGITS].unk14;
    sp00.unkB = gUiGraphics[UIGFX_TIMER_DIGITS].unk18;
    sub_80528AC(&sp00);

    sp00.uiGfxID = UIGFX_OK;
    sp00.unk2B = 5;
    sp00.tiles = gUiGraphics[UIGFX_OK].tiles;
    sp00.palette = gUiGraphics[UIGFX_OK].palette;
    sp00.unk18 = 0x200;
    sp00.unk24 = 32;
    sp00.unk28 = 6;
    sp00.vramC = param0->vram0;
    sp00.unk2A = 13;
    sp00.unk4 = gUiGraphics[UIGFX_OK].unk8;
    sp00.unk8 = gUiGraphics[UIGFX_OK].unkC;
    sp00.unk9 = gUiGraphics[UIGFX_OK].unk10;
    sp00.unkA = gUiGraphics[UIGFX_OK].unk14;
    sp00.unkB = gUiGraphics[UIGFX_OK].unk18;
    sub_80528AC(&sp00);

    sp00.uiGfxID = UIGFX_CHAR_SELECT_BLACK_BOX_2;
    sp00.unk2B = 14;
    sp00.tiles = gUiGraphics[UIGFX_CHAR_SELECT_BLACK_BOX_2].tiles;
    sp00.palette = gUiGraphics[UIGFX_CHAR_SELECT_BLACK_BOX_2].palette;
    sp00.unk18 = 0x200;
    sp00.unk24 = 32;
    sp00.unk28 = 6;
    sp00.vramC = param0->vram8;
    sp00.unk2A = 13;
    sp00.unk4 = gUiGraphics[UIGFX_CHAR_SELECT_BLACK_BOX_2].unk8;
    sp00.unk8 = gUiGraphics[UIGFX_CHAR_SELECT_BLACK_BOX_2].unkC;
    sp00.unk9 = gUiGraphics[UIGFX_CHAR_SELECT_BLACK_BOX_2].unk10;
    sp00.unkA = gUiGraphics[UIGFX_CHAR_SELECT_BLACK_BOX_2].unk14;
    sp00.unkB = gUiGraphics[UIGFX_CHAR_SELECT_BLACK_BOX_2].unk18;
    sub_80528AC(&sp00);
}
