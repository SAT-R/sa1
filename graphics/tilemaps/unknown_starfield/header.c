#include "global.h"
#include "core.h"

const u16 Palette_unknown_starfield[]
    = INCBIN_U16("graphics/tilemaps/unknown_starfield/palette.gbapal");
const u8 Tiles_unknown_starfield[]
    = INCBIN_U8("graphics/tilemaps/unknown_starfield/tiles.4bpp");
const u8 Tilemap_unknown_starfield[]
    = INCBIN_U8("graphics/tilemaps/unknown_starfield/tilemap.tilemap2");

const Tilemap unknown_starfield = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x140,
    .animFrameCount = 8,
    .animDelay = 12,
    .tiles = Tiles_unknown_starfield,
    .tilesSize = sizeof(Tiles_unknown_starfield) - (9 * 0x140),
    .palette = Palette_unknown_starfield,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_starfield) / sizeof(u16),
    .map = (const u16 *)Tilemap_unknown_starfield,
};
