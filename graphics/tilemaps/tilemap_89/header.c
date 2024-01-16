#include "global.h"
#include "core.h"

const u16 Palette_tilemap_89[]
    = INCBIN_U16("graphics/tilemaps/tilemap_89/palette.gbapal");
const u8 Tiles_tilemap_89[] = INCBIN_U8("graphics/tilemaps/tilemap_89/tiles.4bpp");
const u8 Tilemap_tilemap_89[]
    = INCBIN_U8("graphics/tilemaps/tilemap_89/tilemap.tilemap2");

const Tilemap tilemap_89 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_tilemap_89,
    .tilesSize = sizeof(Tiles_tilemap_89),
    .palette = Palette_tilemap_89,
    .palOffset = 0,
    .palLength = sizeof(Palette_tilemap_89) / sizeof(u16),
    .map = (const u16 *)Tilemap_tilemap_89,
};
