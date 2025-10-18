#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/gTask_03006240.h"

#include "constants/ui_graphics.h"

extern u8 gUnknown_086A17F4[];
extern u8 gUnknown_086A2534[];
extern u16 gUnknown_086A2A34[];
extern u8 gUnknown_086A2C34[];
extern u8 gUnknown_086A3DB4[];

void sub_8061894(void)
{
    Strc_80528AC gfx;
    s8 *temp_r5;
    s8 *temp_r7;

    UiGfxStackInit();

    gfx.uiGfxID = UIGFX_OPTIONS;
    gfx.unk2B = 1;
    gfx.tiles = gUnknown_086A17F4;
    gfx.tilesSize = 0xE00;
    gfx.layout = gUnknown_086A2534;
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
    gfx.tiles = gUnknown_086A2C34;
    gfx.tilesSize = 0x1180;
    gfx.palette = gUnknown_086A2A34;
    gfx.paletteSize = 0x200;
    gfx.layout = gUnknown_086A3DB4;
    gfx.layoutSize = 0x1000;
    gfx.unk28 = 0;
    gfx.unk29 = 0;
    gfx.unk2A = 0x15;
    sub_80528AC(&gfx);
}
