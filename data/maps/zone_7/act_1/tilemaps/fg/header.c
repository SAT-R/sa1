#include "global.h"
#include "core.h"

const u16 Palette_zone_7_act_1_fg[] = INCBIN_U16("data/maps/zone_7/act_1/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_7_act_1_fg[] = INCBIN_U8("data/maps/zone_7/act_1/tilemaps/fg/tileset.4bpp");
const s8 CollHeightMap_zone_7_act_1_fg[] = INCBIN_S8("data/maps/zone_7/act_1/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_7_act_1_fg[] = INCBIN_U8("data/maps/zone_7/act_1/tilemaps/fg/tile_rot.coll");
const u16 Metatiles_zone_7_act_1_fg[] = INCBIN_U16("data/maps/zone_7/act_1/tilemaps/fg/metatiles.tilemap2");

const MetatileIndexType Map_zone_7_act_1_fg0[] = INCBIN_MAP("data/maps/zone_7/act_1/tilemaps/fg/map_front.bin");

const MetatileIndexType Map_zone_7_act_1_fg1[] = INCBIN_MAP("data/maps/zone_7/act_1/tilemaps/fg/map_back.bin");

const u16 CollFlags_zone_7_act_1_fg[] = INCBIN_U16("data/maps/zone_7/act_1/tilemaps/fg/flags.coll");
ALIGNED(4) const struct MapHeader zone_7_act_1_fg0 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_7_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_7_act_1_fg) - (0 * 0x00),
        .palette = Palette_zone_7_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_7_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_7_act_1_fg,
    },
    .metatileMap = Map_zone_7_act_1_fg0,
    .mapWidth = 40,
    .mapHeight = 10,
};

ALIGNED(4) const struct MapHeader zone_7_act_1_fg1 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_7_act_1_fg,
        .tilesSize = sizeof(Tileset_zone_7_act_1_fg) - (0 * 0x00),
        .palette = Palette_zone_7_act_1_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_7_act_1_fg) / sizeof(u16),
        .map = Metatiles_zone_7_act_1_fg,
    },
    .metatileMap = Map_zone_7_act_1_fg1,
    .mapWidth = 40,
    .mapHeight = 10,
};

const Collision CollHeader_zone_7_act_1_fg = { CollHeightMap_zone_7_act_1_fg,
                                               CollTileRot_zone_7_act_1_fg,
                                               Metatiles_zone_7_act_1_fg,
                                               { Map_zone_7_act_1_fg0, Map_zone_7_act_1_fg1 },
                                               CollFlags_zone_7_act_1_fg,
                                               40,
                                               10,
                                               0x0F00,
                                               0x03C0 };
