#include "global.h"
#include "core.h"

extern const u16 Palette_zone_4_act_1_fg[];
const u8 Tiles_zone_4_act_1_bg[] = INCBIN_U8("data/maps/zone_4/act_1/tilemaps/bg/tiles.4bpp");
const u8 Tilemap_zone_4_act_1_bg[] = INCBIN_U8("data/maps/zone_4/act_1/tilemaps/bg/tilemap.tilemap2");

const Tilemap zone_4_act_1_bg = {
    .xTiles = 32,
    .yTiles = 64,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_zone_4_act_1_bg,
    .tilesSize = sizeof(Tiles_zone_4_act_1_bg) - (0 * 0x00),
    .palette = NULL,
    .palOffset = 0,
    .palLength = sizeof(Palette_zone_4_act_1_fg) / sizeof(u16),
    .map = (const u16 *)Tilemap_zone_4_act_1_bg,
};
