#include "global.h"
#include "core.h"

const u16 Palette_mp_connection_success[] = INCBIN_U16("graphics/tilemaps/mp_connection_success/palette.gbapal");
const u8 Tiles_mp_connection_success[] = INCBIN_U8("graphics/tilemaps/mp_connection_success/tiles.4bpp");
const u8 Tilemap_mp_connection_success[] = INCBIN_U8("graphics/tilemaps/mp_connection_success/tilemap.tilemap2");

const Tilemap mp_connection_success = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_mp_connection_success,
    .tilesSize = sizeof(Tiles_mp_connection_success),
    .palette = Palette_mp_connection_success,
    .palOffset = 0,
    .palLength = sizeof(Palette_mp_connection_success) / sizeof(u16),
    .map = (const u16 *)Tilemap_mp_connection_success,
};
