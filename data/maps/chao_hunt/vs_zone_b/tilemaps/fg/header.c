#include "global.h"
#include "core.h"

const u16 Palette_zone_chao_hunt_act_vs_zone_b_fg[]
    = INCBIN_U16("data/maps/chao_hunt/vs_zone_b/tilemaps/fg/palette.gbapal");
const u8 Tileset_zone_chao_hunt_act_vs_zone_b_fg[]
    = INCBIN_U8("data/maps/chao_hunt/vs_zone_b/tilemaps/fg/tileset.4bpp");
const u8 CollHeightMap_zone_chao_hunt_act_vs_zone_b_fg[]
    = INCBIN_U8("data/maps/chao_hunt/vs_zone_b/tilemaps/fg/height_map.coll");
const u8 CollTileRot_zone_chao_hunt_act_vs_zone_b_fg[]
    = INCBIN_U8("data/maps/chao_hunt/vs_zone_b/tilemaps/fg/tile_rot.coll");
const u16 Metatiles_zone_chao_hunt_act_vs_zone_b_fg[]
    = INCBIN_U16("data/maps/chao_hunt/vs_zone_b/tilemaps/fg/metatiles.tilemap2");

const u16 Map_zone_chao_hunt_act_vs_zone_b_fg0[]
    = INCBIN_U16("data/maps/chao_hunt/vs_zone_b/tilemaps/fg/map_front.bin");

const u16 Map_zone_chao_hunt_act_vs_zone_b_fg1[]
    = INCBIN_U16("data/maps/chao_hunt/vs_zone_b/tilemaps/fg/map_back.bin");

const u8 CollFlags_zone_chao_hunt_act_vs_zone_b_fg[]
    = INCBIN_U8("data/maps/chao_hunt/vs_zone_b/tilemaps/fg/flags.coll");
ALIGNED(4) const struct MapHeader zone_chao_hunt_act_vs_zone_b_fg0 = 
{
    .h = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x340,
        .animFrameCount = 8,
        .animDelay = 8,
        .tiles = Tileset_zone_chao_hunt_act_vs_zone_b_fg,
        .tilesSize = sizeof(Tileset_zone_chao_hunt_act_vs_zone_b_fg) - (8 * 0x340),
        .palette = Palette_zone_chao_hunt_act_vs_zone_b_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_chao_hunt_act_vs_zone_b_fg) / sizeof(u16),
        .map = Metatiles_zone_chao_hunt_act_vs_zone_b_fg,
    },
    .metatileMap = Map_zone_chao_hunt_act_vs_zone_b_fg0,
    .mapWidth = 20,
    .mapHeight = 12,
};

ALIGNED(4) const struct MapHeader zone_chao_hunt_act_vs_zone_b_fg1 = 
{
    .h = {
        .xTiles = 12,
        .yTiles = 12,
        .animTileSize = 0x00,
        .animFrameCount = 0,
        .animDelay = 0,
        .tiles = Tileset_zone_chao_hunt_act_vs_zone_b_fg,
        .tilesSize = sizeof(Tileset_zone_chao_hunt_act_vs_zone_b_fg) - (8 * 0x340),
        .palette = Palette_zone_chao_hunt_act_vs_zone_b_fg,
        .palOffset = 0,
        .palLength = sizeof(Palette_zone_chao_hunt_act_vs_zone_b_fg) / sizeof(u16),
        .map = Metatiles_zone_chao_hunt_act_vs_zone_b_fg,
    },
    .metatileMap = Map_zone_chao_hunt_act_vs_zone_b_fg1,
    .mapWidth = 20,
    .mapHeight = 12,
};

const Collision CollHeader_zone_chao_hunt_act_vs_zone_b_fg
    = { CollHeightMap_zone_chao_hunt_act_vs_zone_b_fg,
        CollTileRot_zone_chao_hunt_act_vs_zone_b_fg,
        Metatiles_zone_chao_hunt_act_vs_zone_b_fg,
        Map_zone_chao_hunt_act_vs_zone_b_fg0,
        Map_zone_chao_hunt_act_vs_zone_b_fg1,
        CollFlags_zone_chao_hunt_act_vs_zone_b_fg,
        20,
        12,
        0x80,
        0x07,
        0x80,
        0x04 };
