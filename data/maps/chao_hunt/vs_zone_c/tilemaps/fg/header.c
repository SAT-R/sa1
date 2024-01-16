#include "global.h"
#include "core.h"

const u16 Palette_zone_chao_hunt_act_vs_zone_c_fg[]
    = INCBIN_U16("data/maps/chao_hunt/vs_zone_c/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_chao_hunt_act_vs_zone_c_fg[]
    = INCBIN_U8("data/maps/chao_hunt/vs_zone_c/tilemaps/fg/tileset.4bpp");
const u8 CollHeightMap_zone_chao_hunt_act_vs_zone_c_fg[]
    = INCBIN_U8("data/maps/chao_hunt/vs_zone_c/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_chao_hunt_act_vs_zone_c_fg[]
    = INCBIN_U8("data/maps/chao_hunt/vs_zone_c/tilemaps/fg/tile_rot.coll");
const u16 Metatiles_zone_chao_hunt_act_vs_zone_c_fg[]
    = INCBIN_U16("data/maps/chao_hunt/vs_zone_c/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_chao_hunt_act_vs_zone_c_fg0[]
    = INCBIN_U16("data/maps/chao_hunt/vs_zone_c/tilemaps/fg/map_front.bin");

const u16 Map_zone_chao_hunt_act_vs_zone_c_fg1[]
    = INCBIN_U16("data/maps/chao_hunt/vs_zone_c/tilemaps/fg/map_back.bin");

const u8 CollFlags_zone_chao_hunt_act_vs_zone_c_fg[]
    = INCBIN_U8("data/maps/chao_hunt/vs_zone_c/tilemaps/fg/flags.coll");
ALIGNED(4) const struct MapHeader zone_chao_hunt_act_vs_zone_c_fg0 = 
{
    .h = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 60,
        .tiles = Tileset_zone_chao_hunt_act_vs_zone_c_fg,
        .tilesSize = sizeof(Tileset_zone_chao_hunt_act_vs_zone_c_fg) - (0 * 0x00),
        .palette = Palette_zone_chao_hunt_act_vs_zone_c_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_chao_hunt_act_vs_zone_c_fg) / sizeof(u16),
        .map = Metatiles_zone_chao_hunt_act_vs_zone_c_fg,
    },
    .metatileMap = Map_zone_chao_hunt_act_vs_zone_c_fg0,
    .mapWidth = 14,
    .mapHeight = 20,
};

ALIGNED(4) const struct MapHeader zone_chao_hunt_act_vs_zone_c_fg1 = 
{
    .h = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_chao_hunt_act_vs_zone_c_fg,
        .tilesSize = sizeof(Tileset_zone_chao_hunt_act_vs_zone_c_fg) - (0 * 0x00),
        .palette = Palette_zone_chao_hunt_act_vs_zone_c_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_chao_hunt_act_vs_zone_c_fg) / sizeof(u16),
        .map = Metatiles_zone_chao_hunt_act_vs_zone_c_fg,
    },
    .metatileMap = Map_zone_chao_hunt_act_vs_zone_c_fg1,
    .mapWidth = 14,
    .mapHeight = 20,
};

const Collision CollHeader_zone_chao_hunt_act_vs_zone_c_fg
    = { CollHeightMap_zone_chao_hunt_act_vs_zone_c_fg,
        CollTileRot_zone_chao_hunt_act_vs_zone_c_fg,
        Metatiles_zone_chao_hunt_act_vs_zone_c_fg,
        Map_zone_chao_hunt_act_vs_zone_c_fg0,
        Map_zone_chao_hunt_act_vs_zone_c_fg1,
        CollFlags_zone_chao_hunt_act_vs_zone_c_fg,
        14,
        20,
        0x40,
        0x05,
        0x80,
        0x07 };
