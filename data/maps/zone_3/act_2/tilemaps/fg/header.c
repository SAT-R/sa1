#include "global.h"
#include "core.h"

const u16 Palette_zone_3_act_2_fg[] = INCBIN_U16("data/maps/zone_3/act_2/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_3_act_2_fg[] = INCBIN_U8("data/maps/zone_3/act_2/tilemaps/fg/tileset.4bpp");
const u8 CollHeightMap_zone_3_act_2_fg[] = INCBIN_U8("data/maps/zone_3/act_2/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_3_act_2_fg[] = INCBIN_U8("data/maps/zone_3/act_2/tilemaps/fg/tile_rot.coll");
const u16 Metatiles_zone_3_act_2_fg[] = INCBIN_U16("data/maps/zone_3/act_2/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_3_act_2_fg0[] = INCBIN_U16("data/maps/zone_3/act_2/tilemaps/fg/map_front.bin");

const u16 Map_zone_3_act_2_fg1[] = INCBIN_U16("data/maps/zone_3/act_2/tilemaps/fg/map_back.bin");

const u8 CollFlags_zone_3_act_2_fg[] = INCBIN_U8("data/maps/zone_3/act_2/tilemaps/fg/flags.coll");
ALIGNED(4) const struct MapHeader zone_3_act_2_fg0 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x100,
        .animFrameCount = 4,
        .animDelay = 4,
        .tiles = Tileset_zone_3_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_3_act_2_fg) - (4 * 0x100),
        .palette = Palette_zone_3_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_3_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_3_act_2_fg,
    },
    .metatileMap = Map_zone_3_act_2_fg0,
    .mapWidth = 80,
    .mapHeight = 29,
};

ALIGNED(4) const struct MapHeader zone_3_act_2_fg1 = 
{
    .tileset = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_3_act_2_fg,
        .tilesSize = sizeof(Tileset_zone_3_act_2_fg) - (4 * 0x100),
        .palette = Palette_zone_3_act_2_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_3_act_2_fg) / sizeof(u16),
        .map = Metatiles_zone_3_act_2_fg,
    },
    .metatileMap = Map_zone_3_act_2_fg1,
    .mapWidth = 80,
    .mapHeight = 29,
};

const Collision CollHeader_zone_3_act_2_fg = { CollHeightMap_zone_3_act_2_fg,
                                               CollTileRot_zone_3_act_2_fg,
                                               Metatiles_zone_3_act_2_fg,
                                               Map_zone_3_act_2_fg0,
                                               Map_zone_3_act_2_fg1,
                                               CollFlags_zone_3_act_2_fg,
                                               80,
                                               29,
                                               0x1E00,
                                               0x0AE0 };
