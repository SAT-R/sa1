#include "global.h"
#include "core.h"
#include "data/ui_graphics.h"
#include "game/gTask_03006240.h"
#include "game/sa1_sa2_shared/globals.h"

#include "constants/characters.h"

extern u16 gUnknown_086CC774[16];
extern u8 gUnknown_086CC794[0xA0];
extern u8 gUnknown_086CC834[0x500];

typedef struct CharacterCard {
    const u8 *tiles;
    s32 tilesSize;
    const u16 *palette;
    const u8 *layout;
} CharacterCard;
extern CharacterCard gCharacterCards[NUM_CHARACTERS][2];

void TimeAttackRecordsInitUI(u8 *vram)
{
    Strc_80528AC gfx;

    gfx.uiGfxID = 32;
    gfx.unk2B = 1;
    gfx.tiles = gUiGraphics[gfx.uiGfxID].tiles;
    gfx.palette = gUiGraphics[gfx.uiGfxID].palette;
    gfx.tilesSize = 0x580;
    gfx.paletteSize = (16 * sizeof(u16));
    gfx.unk28 = 6;
    gfx.vramC = vram;
    gfx.unk2A = 0xD;
    gfx.unk0.unk4 = gUiGraphics[gfx.uiGfxID].unk8;
    gfx.unk0.unk8 = gUiGraphics[gfx.uiGfxID].unkC;
    gfx.unk0.unk9 = gUiGraphics[gfx.uiGfxID].unk10;
    gfx.unk0.unkA = gUiGraphics[gfx.uiGfxID].unk14;
    gfx.unk0.unkB = gUiGraphics[gfx.uiGfxID].unk18;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 128;
    gfx.unk2B = 0;
    gfx.tiles = gCharacterCards[gSelectedCharacter][1].tiles;
    gfx.tilesSize = gCharacterCards[gSelectedCharacter][1].tilesSize;
    gfx.palette = gCharacterCards[gSelectedCharacter][1].palette;
    gfx.paletteSize = (256 * sizeof(u16));
    gfx.layout = gCharacterCards[gSelectedCharacter][1].layout;
    gfx.layoutSize = 0x600;
    gfx.unk28 = 0;
    gfx.unk29 = 1;
    gfx.unk2A = 0x11;
    sub_80528AC(&gfx);

    gfx.uiGfxID = 128;
    gfx.unk2B = 2;
    gfx.tiles = gCharacterCards[gSelectedCharacter][0].tiles;
    gfx.tilesSize = gCharacterCards[gSelectedCharacter][0].tilesSize;
    gfx.palette = gCharacterCards[gSelectedCharacter][0].palette;
    gfx.paletteSize = (256 * sizeof(u16));
    gfx.layout = gCharacterCards[gSelectedCharacter][0].layout;
    gfx.layoutSize = 0x600;
    gfx.unk28 = 0;
    gfx.unk29 = 0;
    gfx.unk2A = 0x15;
    sub_80528AC(&gfx);
}
