#include "global.h"
#include "core.h"

const u16 Palette_unknown_clouds[]
    = INCBIN_U16("graphics/tilemaps/unknown_clouds/palette.gbapal");
const u8 Tiles_unknown_clouds[]
    = INCBIN_U8("graphics/tilemaps/unknown_clouds/tiles.4bpp");
const u8 Tilemap_unknown_clouds[]
    = INCBIN_U8("graphics/tilemaps/unknown_clouds/tilemap.tilemap2");

const Tilemap unknown_clouds = {
    .xTiles = 32,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_clouds,
    .tilesSize = sizeof(Tiles_unknown_clouds),
    .palette = Palette_unknown_clouds,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_clouds) / sizeof(u16),
    .map = (const u16 *)Tilemap_unknown_clouds,
};
