#include "global.h"
#include "core.h"
#include "sprite.h"
#include "animation_commands_bg.h"

#include "game/sa1_sa2_shared/globals.h"

#include "game/stage/camera.h"
#include "game/stage/stage.h"
#include "game/stage/player.h"
#include "game/stage/collision.h"

#if (GAME == GAME_SA1)
#include "game/multiplayer/mp_player.h"
#elif (GAME == GAME_SA2)
#include "game/stage/player_super_sonic.h"
#include "game/stage/background/dummy.h"
#include "game/stage/background/zone_1.h"
#include "game/stage/background/zone_2.h"
#include "game/stage/background/zone_3.h"
#include "game/stage/background/zone_4.h"
#include "game/stage/background/zone_5.h"
#include "game/stage/background/zone_6.h"
#include "game/stage/background/zone_7.h"
#include "game/stage/background/zone_final.h"
#endif

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/characters.h"
#include "constants/tilemaps.h"
#include "constants/zones.h"

// Probably a array (as it's aligned 16)
struct Backgrounds ALIGNED(16) gStageBackgroundsRam = {};

UNUSED u32 unused_3005950[3] = {};

struct Camera ALIGNED(8) gCamera = {};
const Collision *gRefCollision = NULL;

static void RenderMetatileLayers(s32, s32);

// camera_destroy.h
void Task_CallUpdateCamera(void);
void TaskDestructor_Camera(struct Task *);

#define BOSS_CAM_FRAME_DELTA_PIXELS 5

// NOTE:
// unk8 is a regular integer in SA1, but Q_24_8 in SA2
#if (GAME == GAME_SA1)
#define CAM_UNK8_INT(_val) (_val)
#else
#define CAM_UNK8_INT(_val) (I(_val))
#endif

#define STGBG_SCRN_DIM(w, h, charBase, screenBase)                                                                                         \
    {                                                                                                                                      \
        ((w) / TILE_WIDTH), ((h) / TILE_WIDTH), charBase, screenBase                                                                       \
    }
#define STGBG_WIDTH(arr)      ((arr)[0])
#define STGBG_HEIGHT(arr)     ((arr)[1])
#define STGBG_CHARBASE(arr)   ((arr)[2])
#define STGBG_SCREENBASE(arr) ((arr)[3])

const Background gStageCameraBgTemplates[4] = {
    [CAMBG_MAP_FRONT_LAYER] = {
        .graphics = {  
            .src = NULL,  
            .dest = (void*)BG_VRAM,  
            .size = 0,  
            .anim = 0,
        },
        .layoutVram = (void*)BG_SCREEN_ADDR(CAM_SCREENBASE_MAP_FRONT),
        .layout = NULL,
        .xTiles = 0,
        .yTiles = 0,
        .unk18 = 0,
        .unk1A = 0,
        .tilemapId = 0,
        .unk1E = 0,
        .unk20 = 0,
        .unk22 = 0,
        .unk24 = 0,
        .targetTilesX = (DISPLAY_WIDTH / TILE_WIDTH) + 1,
        .targetTilesY = (DISPLAY_HEIGHT / TILE_WIDTH) + 1,
        .paletteOffset = 0,
        .animFrameCounter = 0,
        .animDelayCounter = 0,
        .flags = BACKGROUND_FLAG_IS_LEVEL_MAP | BACKGROUND_FLAG_20 | BACKGROUND_DISABLE_PALETTE_UPDATE | BACKGROUND_DISABLE_TILESET_UPDATE | BACKGROUND_FLAGS_BG_ID(1),
        .scrollX = 0,
        .scrollY = 0,
        .prevScrollX = 32767,
        .prevScrollY = 32767,
        .metatileMap = NULL,
        .mapWidth = 0,
        .mapHeight = 0,
    },
    [CAMBG_MAP_BACK_LAYER] = {
        .graphics = {  
            .src = NULL,  
            .dest = (void*)BG_VRAM,  
            .size = 0,  
            .anim = 0,
        },
        .layoutVram = (void*)BG_SCREEN_ADDR(CAM_SCREENBASE_MAP_BACK),
        .layout = NULL,
        .xTiles = 0,
        .yTiles = 0,
        .unk18 = 0,
        .unk1A = 0,
        .tilemapId = 0,
        .unk1E = 0,
        .unk20 = 0,
        .unk22 = 0,
        .unk24 = 0,
        .targetTilesX = (DISPLAY_WIDTH / TILE_WIDTH) + 1,
        .targetTilesY = (DISPLAY_HEIGHT / TILE_WIDTH) + 1,
        .paletteOffset = 0,
        .animFrameCounter = 0,
        .animDelayCounter = 0,
        .flags = BACKGROUND_FLAG_IS_LEVEL_MAP | BACKGROUND_FLAG_20 | BACKGROUND_FLAGS_BG_ID(2),
        .scrollX = 0,
        .scrollY = 0,
        .prevScrollX = 32767,
        .prevScrollY = 32767,
        .metatileMap = NULL,
        .mapWidth = 0,
        .mapHeight = 0,
    },
    [CAMBG_BACK_A_LAYER] = {
        .graphics = {  
            .src = NULL,  
            .dest = (void*)BG_SCREEN_ADDR(16),  
            .size = 0,  
            .anim = 0,
        },
        .layoutVram = (void*)BG_SCREEN_ADDR(CAM_SCREENBASE_BACK_B),
        .layout = NULL,
        .xTiles = 0,
        .yTiles = 0,
        .unk18 = 0,
        .unk1A = 0,
        .tilemapId = 0,
        .unk1E = 0,
        .unk20 = 0,
        .unk22 = 0,
        .unk24 = 0,
        .targetTilesX = 32,
        .targetTilesY = 32,
        .paletteOffset = 0,
        .animFrameCounter = 0,
        .animDelayCounter = 0,
        .flags = BACKGROUND_DISABLE_PALETTE_UPDATE | BACKGROUND_FLAGS_BG_ID(3),
        .scrollX = 0,
        .scrollY = 0,
        .prevScrollX = 32767,
        .prevScrollY = 32767,
        .metatileMap = NULL,
        .mapWidth = 0,
        .mapHeight = 0,
    },
    [CAMBG_BACK_B_LAYER] = {
        .graphics = {  
            .src = NULL,  
            .dest = (void*)BG_CHAR_ADDR(3),  
            .size = 0,  
            .anim = 0,
        },
        .layoutVram = (void*)BG_SCREEN_ADDR(CAM_SCREENBASE_BACK_A),
        .layout = NULL,
        .xTiles = 0,
        .yTiles = 0,
        .unk18 = 0,
        .unk1A = 0,
        .tilemapId = 0,
        .unk1E = 0,
        .unk20 = 0,
        .unk22 = 0,
        .unk24 = 0,
        .targetTilesX = 32,
        .targetTilesY = 32,
        .paletteOffset = 0,
        .animFrameCounter = 0,
        .animDelayCounter = 0,
        .flags = BACKGROUND_DISABLE_PALETTE_UPDATE | BACKGROUND_FLAGS_BG_ID(0),
        .scrollX = 0,
        .scrollY = 0,
        .prevScrollX = 32767,
        .prevScrollY = 32767,
        .metatileMap = NULL,
        .mapWidth = 0,
        .mapHeight = 0,
    },
};

#if (GAME == GAME_SA2)
const u16 gBossCameraYClamps[][2] = {
    [ZONE_1] = { 32, DISPLAY_HEIGHT + 56 },  [ZONE_2] = { 32, DISPLAY_HEIGHT + 44 },      [ZONE_3] = { 32, DISPLAY_HEIGHT + 56 },
    [ZONE_4] = { 32, DISPLAY_HEIGHT + 48 },  [ZONE_5] = { 32, DISPLAY_HEIGHT + 48 },      [ZONE_6] = { 32, DISPLAY_HEIGHT + 72 },
    [ZONE_7] = { 32, DISPLAY_HEIGHT + 104 }, [ZONE_FINAL] = { 32, DISPLAY_HEIGHT + 104 }, [ZONE_FINAL + 1] = { 32, DISPLAY_HEIGHT + 104 },
};
#endif

#if (GAME == GAME_SA1)
extern void CreateStageBg_Zone4(void);
extern void CreateStageBg_Zone5(void);
extern void CreateStageBg_Zone7_Act2(void);

static const VoidFn sStageBgInitProcedures[NUM_LEVEL_IDS] = {
    [LEVEL_INDEX(ZONE_1, ACT_1)] = NULL,
    [LEVEL_INDEX(ZONE_1, ACT_2)] = NULL,
    [LEVEL_INDEX(ZONE_2, ACT_1)] = NULL,
    [LEVEL_INDEX(ZONE_2, ACT_2)] = NULL,
    [LEVEL_INDEX(ZONE_3, ACT_1)] = NULL,
    [LEVEL_INDEX(ZONE_3, ACT_2)] = NULL,
    [LEVEL_INDEX(ZONE_4, ACT_1)] = CreateStageBg_Zone4,
    [LEVEL_INDEX(ZONE_4, ACT_2)] = CreateStageBg_Zone4,
    [LEVEL_INDEX(ZONE_5, ACT_1)] = CreateStageBg_Zone5,
    [LEVEL_INDEX(ZONE_5, ACT_2)] = CreateStageBg_Zone5,
    [LEVEL_INDEX(ZONE_6, ACT_1)] = NULL,
    [LEVEL_INDEX(ZONE_6, ACT_2)] = NULL,
    [LEVEL_INDEX(ZONE_7, ACT_1)] = NULL,
    [LEVEL_INDEX(ZONE_7, ACT_2)] = CreateStageBg_Zone7_Act2,
    [ACT_CHAO_HUNT_A] = NULL,
    [ACT_CHAO_HUNT_B] = NULL,
    [ACT_CHAO_HUNT_C] = NULL,
    [ACT_CHAO_HUNT_D] = NULL,

};

void StageBgUpdate_Zone1Acts12(s32, s32);
void StageBgUpdate_Zone2Act1(s32, s32);
void StageBgUpdate_Zone2Act2(s32, s32);
void StageBgUpdate_Zone3Acts12(s32, s32);
void StageBgUpdate_Zone4Acts12(s32, s32);
void StageBgUpdate_Zone5Acts12(s32, s32);
void StageBgUpdate_Zone6Act1(s32, s32);
void StageBgUpdate_Zone6Act2(s32, s32);
void StageBgUpdate_Zone7Act1(s32, s32);
void StageBgUpdate_Zone7Act2(s32, s32);
static const BgUpdate sStageBgUpdateFuncs[NUM_LEVEL_IDS] = {
    [LEVEL_INDEX(ZONE_1, ACT_1)] = StageBgUpdate_Zone1Acts12,
    [LEVEL_INDEX(ZONE_1, ACT_2)] = StageBgUpdate_Zone1Acts12,
    [LEVEL_INDEX(ZONE_2, ACT_1)] = StageBgUpdate_Zone2Act1,
    [LEVEL_INDEX(ZONE_2, ACT_2)] = StageBgUpdate_Zone2Act2,
    [LEVEL_INDEX(ZONE_3, ACT_1)] = StageBgUpdate_Zone3Acts12,
    [LEVEL_INDEX(ZONE_3, ACT_2)] = StageBgUpdate_Zone3Acts12,
    [LEVEL_INDEX(ZONE_4, ACT_1)] = StageBgUpdate_Zone4Acts12,
    [LEVEL_INDEX(ZONE_4, ACT_2)] = StageBgUpdate_Zone4Acts12,
    [LEVEL_INDEX(ZONE_5, ACT_1)] = StageBgUpdate_Zone5Acts12,
    [LEVEL_INDEX(ZONE_5, ACT_2)] = StageBgUpdate_Zone5Acts12,
    [LEVEL_INDEX(ZONE_6, ACT_1)] = StageBgUpdate_Zone6Act1,
    [LEVEL_INDEX(ZONE_6, ACT_2)] = StageBgUpdate_Zone6Act2,
    [LEVEL_INDEX(ZONE_7, ACT_1)] = StageBgUpdate_Zone7Act1,
    [LEVEL_INDEX(ZONE_7, ACT_2)] = StageBgUpdate_Zone7Act2,
    [ACT_CHAO_HUNT_A] = StageBgUpdate_Zone1Acts12,
    [ACT_CHAO_HUNT_B] = StageBgUpdate_Zone2Act2,
    [ACT_CHAO_HUNT_C] = StageBgUpdate_Zone3Acts12,
    [ACT_CHAO_HUNT_D] = StageBgUpdate_Zone6Act2,
};

static const s8 sStageBgDimensions[NUM_LEVEL_IDS][4] = {
    [LEVEL_INDEX(ZONE_1, ACT_1)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_1, ACT_2)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_2, ACT_1)] = STGBG_SCRN_DIM(256, 512, 2, CAM_SCREENBASE_BACK_A),
    [LEVEL_INDEX(ZONE_2, ACT_2)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_A),
    [LEVEL_INDEX(ZONE_3, ACT_1)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_3, ACT_2)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_4, ACT_1)] = STGBG_SCRN_DIM(256, 512, 2, CAM_SCREENBASE_BACK_A),
    [LEVEL_INDEX(ZONE_4, ACT_2)] = STGBG_SCRN_DIM(256, 512, 2, CAM_SCREENBASE_BACK_A),
    [LEVEL_INDEX(ZONE_5, ACT_1)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_5, ACT_2)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_6, ACT_1)] = STGBG_SCRN_DIM(256, 512, 2, CAM_SCREENBASE_BACK_C),
    [LEVEL_INDEX(ZONE_6, ACT_2)] = STGBG_SCRN_DIM(512, 256, 2, CAM_SCREENBASE_BACK_A),
    [LEVEL_INDEX(ZONE_7, ACT_1)] = STGBG_SCRN_DIM(296, 184, 2, CAM_SCREENBASE_BACK_A),
    [LEVEL_INDEX(ZONE_7, ACT_2)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [ACT_CHAO_HUNT_A] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [ACT_CHAO_HUNT_B] = STGBG_SCRN_DIM(256, 512, 2, CAM_SCREENBASE_BACK_A),
    [ACT_CHAO_HUNT_C] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [ACT_CHAO_HUNT_D] = STGBG_SCRN_DIM(512, 256, 2, CAM_SCREENBASE_BACK_A),
};

const TileInfoFirework gUnknown_084ADD38[2] = {
    [0] = { SA1_ANIM_FIREWORKS, 0, MAX_TILES(SA1_ANIM_FIREWORKS) },
    [1] = { SA1_ANIM_FIREWORKS_SMALL, 0, MAX_TILES(SA1_ANIM_FIREWORKS_SMALL) },
};
#elif (GAME == GAME_SA2)

static const VoidFn sStageBgInitProcedures[] = {
    [LEVEL_INDEX(ZONE_1, ACT_1)] = CreateStageBg_Zone1,
    [LEVEL_INDEX(ZONE_1, ACT_2)] = CreateStageBg_Zone1,
    [LEVEL_INDEX(ZONE_1, ACT_BOSS)] = CreateStageBg_Zone1,
    [LEVEL_INDEX(ZONE_1, ACT_UNUSED)] = NULL, // Anti-Formatting
    [LEVEL_INDEX(ZONE_2, ACT_1)] = CreateStageBg_Zone2,
    [LEVEL_INDEX(ZONE_2, ACT_2)] = CreateStageBg_Zone2,
    [LEVEL_INDEX(ZONE_2, ACT_BOSS)] = CreateStageBg_Zone2,
    [LEVEL_INDEX(ZONE_2, ACT_UNUSED)] = NULL, //
    [LEVEL_INDEX(ZONE_3, ACT_1)] = CreateStageBg_Zone3,
    [LEVEL_INDEX(ZONE_3, ACT_2)] = CreateStageBg_Zone3,
    [LEVEL_INDEX(ZONE_3, ACT_BOSS)] = CreateStageBg_Zone3,
    [LEVEL_INDEX(ZONE_3, ACT_UNUSED)] = NULL, //
    [LEVEL_INDEX(ZONE_4, ACT_1)] = CreateStageBg_Zone4,
    [LEVEL_INDEX(ZONE_4, ACT_2)] = CreateStageBg_Zone4,
    [LEVEL_INDEX(ZONE_4, ACT_BOSS)] = CreateStageBg_Dummy,
    [LEVEL_INDEX(ZONE_4, ACT_UNUSED)] = NULL, //
    [LEVEL_INDEX(ZONE_5, ACT_1)] = CreateStageBg_Zone5,
    [LEVEL_INDEX(ZONE_5, ACT_2)] = CreateStageBg_Zone5,
    [LEVEL_INDEX(ZONE_5, ACT_BOSS)] = NULL,
    [LEVEL_INDEX(ZONE_5, ACT_UNUSED)] = NULL, //
    [LEVEL_INDEX(ZONE_6, ACT_1)] = CreateStageBg_Zone6_Acts,
    [LEVEL_INDEX(ZONE_6, ACT_2)] = CreateStageBg_Zone6_Acts,
    [LEVEL_INDEX(ZONE_6, ACT_BOSS)] = CreateStageBg_Zone6_Boss,
    [LEVEL_INDEX(ZONE_6, ACT_UNUSED)] = NULL, //
    [LEVEL_INDEX(ZONE_7, ACT_1)] = CreateStageBg_Zone7,
    [LEVEL_INDEX(ZONE_7, ACT_2)] = CreateStageBg_Zone7,
    [LEVEL_INDEX(ZONE_7, ACT_BOSS)] = CreateStageBg_Zone7,
    [LEVEL_INDEX(ZONE_7, ACT_UNUSED)] = NULL, //
    [LEVEL_INDEX(ZONE_FINAL, ACT_XX_FINAL_ZONE)] = NULL, // This doesn't make sense...
    [LEVEL_INDEX(ZONE_FINAL, ACT_TRUE_AREA_53)] = CreateStageBg_ZoneFinal_0,
    [LEVEL_INDEX(ZONE_FINAL, ACT_BOSS)] = CreateStageBg_Zone1,
    [LEVEL_INDEX(ZONE_FINAL, ACT_UNUSED)] = NULL, //
    [LEVEL_INDEX(ZONE_UNUSED, ACT_1)] = NULL,
    [LEVEL_INDEX(ZONE_UNUSED, ACT_2)] = NULL,
};

static const BgUpdate sStageBgUpdateFuncs[NUM_LEVEL_IDS] = {
    // Zone 1
    [LEVEL_INDEX(ZONE_1, ACT_1)] = StageBgUpdate_Zone1Acts12,
    [LEVEL_INDEX(ZONE_1, ACT_2)] = StageBgUpdate_Zone1Acts12,
    [LEVEL_INDEX(ZONE_1, ACT_BOSS)] = StageBgUpdate_Zone1ActBoss,
    [LEVEL_INDEX(ZONE_1, ACT_UNUSED)] = StageBgUpdate_Dummy,

    // Zone 2
    [LEVEL_INDEX(ZONE_2, ACT_1)] = StageBgUpdate_Zone2Acts12,
    [LEVEL_INDEX(ZONE_2, ACT_2)] = StageBgUpdate_Zone2Acts12,
    [LEVEL_INDEX(ZONE_2, ACT_BOSS)] = StageBgUpdate_Zone2ActBoss,
    [LEVEL_INDEX(ZONE_2, ACT_UNUSED)] = StageBgUpdate_Dummy,

    // Zone 3
    [LEVEL_INDEX(ZONE_3, ACT_1)] = StageBgUpdate_Zone3Acts12,
    [LEVEL_INDEX(ZONE_3, ACT_2)] = StageBgUpdate_Zone3Acts12,
    [LEVEL_INDEX(ZONE_3, ACT_BOSS)] = StageBgUpdate_Zone3ActBoss,
    [LEVEL_INDEX(ZONE_3, ACT_UNUSED)] = StageBgUpdate_Dummy,

    // Zone 4
    [LEVEL_INDEX(ZONE_4, ACT_1)] = StageBgUpdate_Zone4Acts12,
    [LEVEL_INDEX(ZONE_4, ACT_2)] = StageBgUpdate_Zone4Acts12,
    [LEVEL_INDEX(ZONE_4, ACT_BOSS)] = StageBgUpdate_Dummy,
    [LEVEL_INDEX(ZONE_4, ACT_UNUSED)] = StageBgUpdate_Dummy,

    // Zone 5
    [LEVEL_INDEX(ZONE_5, ACT_1)] = StageBgUpdate_Zone5Acts12,
    [LEVEL_INDEX(ZONE_5, ACT_2)] = StageBgUpdate_Zone5Acts12,
    [LEVEL_INDEX(ZONE_5, ACT_BOSS)] = StageBgUpdate_Zone5ActBoss,
    [LEVEL_INDEX(ZONE_5, ACT_UNUSED)] = StageBgUpdate_Dummy,

    // Zone 6
    [LEVEL_INDEX(ZONE_6, ACT_1)] = StageBgUpdate_Zone6Acts12,
    [LEVEL_INDEX(ZONE_6, ACT_2)] = StageBgUpdate_Zone6Acts12,
    [LEVEL_INDEX(ZONE_6, ACT_BOSS)] = StageBgUpdate_Zone6ActBoss,
    [LEVEL_INDEX(ZONE_6, ACT_UNUSED)] = StageBgUpdate_Dummy,

    // Zone 7
    [LEVEL_INDEX(ZONE_7, ACT_1)] = StageBgUpdate_Zone7Acts12,
    [LEVEL_INDEX(ZONE_7, ACT_2)] = StageBgUpdate_Zone7Acts12,
    [LEVEL_INDEX(ZONE_7, ACT_BOSS)] = StageBgUpdate_Zone7ActBoss,
    [LEVEL_INDEX(ZONE_7, ACT_UNUSED)] = StageBgUpdate_Dummy,

    // Zone Final
    [LEVEL_INDEX(ZONE_FINAL, ACT_XX_FINAL_ZONE)] = StageBgUpdate_ZoneFinalActXX,
    [LEVEL_INDEX(ZONE_FINAL, ACT_TRUE_AREA_53)] = StageBgUpdate_ZoneFinalActTA53,
    [LEVEL_INDEX(ZONE_FINAL, ACT_BOSS)] = StageBgUpdate_Zone1Acts12,
    [LEVEL_INDEX(ZONE_FINAL, ACT_UNUSED)] = StageBgUpdate_Zone2Acts12,

    // Zone Unused
    [LEVEL_INDEX(ZONE_UNUSED, ACT_1)] = StageBgUpdate_Zone1Acts12,
    [LEVEL_INDEX(ZONE_UNUSED, ACT_2)] = StageBgUpdate_Zone6Acts12,
};

static const s8 sStageBgDimensions[NUM_LEVEL_IDS][4] = {
    [LEVEL_INDEX(ZONE_1, ACT_1)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_1, ACT_2)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_1, ACT_BOSS)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_1, ACT_UNUSED)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_2, ACT_1)] = STGBG_SCRN_DIM(256, 512, 2, CAM_SCREENBASE_BACK_A),
    [LEVEL_INDEX(ZONE_2, ACT_2)] = STGBG_SCRN_DIM(256, 512, 2, CAM_SCREENBASE_BACK_A),
    [LEVEL_INDEX(ZONE_2, ACT_BOSS)] = STGBG_SCRN_DIM(256, 512, 2, CAM_SCREENBASE_BACK_A),
    [LEVEL_INDEX(ZONE_2, ACT_UNUSED)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_3, ACT_1)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_3, ACT_2)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_3, ACT_BOSS)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_3, ACT_UNUSED)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_4, ACT_1)] = STGBG_SCRN_DIM(256, 512, 2, CAM_SCREENBASE_BACK_A),
    [LEVEL_INDEX(ZONE_4, ACT_2)] = STGBG_SCRN_DIM(256, 512, 2, CAM_SCREENBASE_BACK_A),
    [LEVEL_INDEX(ZONE_4, ACT_BOSS)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_4, ACT_UNUSED)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_5, ACT_1)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_5, ACT_2)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_5, ACT_BOSS)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_5, ACT_UNUSED)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_6, ACT_1)] = STGBG_SCRN_DIM(256, 512, 2, CAM_SCREENBASE_BACK_A),
    [LEVEL_INDEX(ZONE_6, ACT_2)] = STGBG_SCRN_DIM(512, 256, 2, CAM_SCREENBASE_BACK_A),
    [LEVEL_INDEX(ZONE_6, ACT_BOSS)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_6, ACT_UNUSED)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_7, ACT_1)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_7, ACT_2)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_A),
    [LEVEL_INDEX(ZONE_7, ACT_BOSS)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_7, ACT_UNUSED)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_FINAL, ACT_XX_FINAL_ZONE)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_A),
    [LEVEL_INDEX(ZONE_FINAL, ACT_TRUE_AREA_53)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_FINAL, ACT_BOSS)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_FINAL, ACT_UNUSED)] = STGBG_SCRN_DIM(256, 512, 2, CAM_SCREENBASE_BACK_A),
    [LEVEL_INDEX(ZONE_UNUSED, ACT_1)] = STGBG_SCRN_DIM(256, 256, 2, CAM_SCREENBASE_BACK_B),
    [LEVEL_INDEX(ZONE_UNUSED, ACT_2)] = STGBG_SCRN_DIM(512, 256, 2, CAM_SCREENBASE_BACK_A),
};
#endif

void InitCamera(u32 level)
{
    u32 txtSize;

    struct Backgrounds *bgs;
    Player *player = &gPlayer;
    struct Camera *camera = &gCamera;
    const s8 *bgDim = sStageBgDimensions[level];

    gDispCnt = (DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON | DISPCNT_OBJ_1D_MAP);
    if (IS_EXTRA_STAGE(level)) {
        gDispCnt
            = (DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_1);
    }

#if !WIDESCREEN_HACK
    gBgCntRegs[1] = BGCNT_TXT256x256 | (BGCNT_PRIORITY(1) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_FRONT) | BGCNT_16COLOR | BGCNT_CHARBASE(0));
    gBgCntRegs[2] = BGCNT_TXT256x256 | (BGCNT_PRIORITY(2) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_BACK) | BGCNT_16COLOR | BGCNT_CHARBASE(0));
#else
    gBgCntRegs[1] = BGCNT_TXT512x512 | (BGCNT_PRIORITY(1) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_FRONT) | BGCNT_16COLOR | BGCNT_CHARBASE(0));
    gBgCntRegs[2] = BGCNT_TXT512x512 | (BGCNT_PRIORITY(2) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_BACK) | BGCNT_16COLOR | BGCNT_CHARBASE(0));
#endif
    txtSize = ((STGBG_WIDTH(bgDim) + 0x1F) >> 6 | ((STGBG_HEIGHT(bgDim) + 0x1F) >> 6) << 1) << 0xE;
    gBgCntRegs[3] = txtSize | BGCNT_PRIORITY(3) | BGCNT_SCREENBASE(STGBG_SCREENBASE(bgDim)) | BGCNT_CHARBASE(STGBG_CHARBASE(bgDim));

    if (IS_EXTRA_STAGE(level)) {
#if (GAME == GAME_SA1)
        gBgCntRegs[0]
            = BGCNT_TXT256x256 | (BGCNT_PRIORITY(2) | BGCNT_SCREENBASE(CAM_SCREENBASE_MAP_BACK) | BGCNT_16COLOR | BGCNT_CHARBASE(0));
        txtSize = ((STGBG_WIDTH(bgDim) + 0x1F) >> 6 | ((STGBG_HEIGHT(bgDim) + 0x1F) >> 6) << 1) << 0xE;
        gBgCntRegs[1] = txtSize | BGCNT_PRIORITY(3) | BGCNT_SCREENBASE(STGBG_SCREENBASE(bgDim)) | BGCNT_CHARBASE(STGBG_CHARBASE(bgDim));
#elif (GAME == GAME_SA2)
        gDispCnt = (DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_1);
#endif
    }

    bgs = &gStageBackgroundsRam;
    memcpy(&gStageBackgroundsRam.unk40, &gStageCameraBgTemplates[0], sizeof(Background));
    bgs->unk40.tilemapId = TM_LEVEL_METATILES_0(level);

    memcpy(&gStageBackgroundsRam.unk80, &gStageCameraBgTemplates[1], sizeof(Background));
    bgs->unk80.tilemapId = TM_LEVEL_METATILES_1(level);

#if (GAME == GAME_SA1)
    if (IS_EXTRA_STAGE(level)) {
        gStageBackgroundsRam.unk80.flags &= ~BACKGROUND_FLAGS_MASK_BG_ID;
    }
#endif

    memcpy(&gStageBackgroundsRam.unkC0, &gStageCameraBgTemplates[2], sizeof(Background));
    bgs->unkC0.tilemapId = TM_LEVEL_BG(level);

    bgs->unkC0.graphics.dest = (void *)BG_CHAR_ADDR(STGBG_CHARBASE(bgDim));
    bgs->unkC0.layoutVram = (void *)BG_SCREEN_ADDR(STGBG_SCREENBASE(bgDim));
    bgs->unkC0.targetTilesX = STGBG_WIDTH(bgDim);
    bgs->unkC0.targetTilesY = STGBG_HEIGHT(bgDim);

#if (GAME == GAME_SA1)
    if (IS_EXTRA_STAGE(level)) {
        gStageBackgroundsRam.unkC0.flags &= ~BACKGROUND_FLAGS_MASK_BG_ID;
        gStageBackgroundsRam.unkC0.flags |= BACKGROUND_FLAGS_BG_ID(1);
    }

    sa2__gUnknown_03004D80[1] = 0;
    sa2__gUnknown_03002280[1][0] = 0;
    sa2__gUnknown_03002280[1][1] = 0;
    sa2__gUnknown_03002280[1][2] = 0xff;
    sa2__gUnknown_03002280[1][3] = 0x20;
    sa2__gUnknown_03004D80[2] = 0;
    sa2__gUnknown_03002280[2][0] = 0;
    sa2__gUnknown_03002280[2][1] = 0;
    sa2__gUnknown_03002280[2][2] = 0xff;
    sa2__gUnknown_03002280[2][3] = 0x20;
#elif (GAME == GAME_SA2)
    gUnknown_03004D80[1] = 0;
    gUnknown_03002280[1][0] = 0;
    gUnknown_03002280[1][1] = 0;
    gUnknown_03002280[1][2] = 0xff;
    gUnknown_03002280[1][3] = 0x20;
    gUnknown_03004D80[2] = 0;
    gUnknown_03002280[2][0] = 0;
    gUnknown_03002280[2][1] = 0;
    gUnknown_03002280[2][2] = 0xff;
    gUnknown_03002280[2][3] = 0x20;
#endif

#if (GAME == GAME_SA1)
    if (level == LEVEL_INDEX(ZONE_6, ACT_1)) {
        DrawBackground(&bgs->unkC0);
        DmaCopy16(3, gStageBackgroundsRam.unkC0.layout, gStageBackgroundsRam.unkC0.layoutVram, 4096);

        gBgCntRegs[3] &= ~BGCNT_SCREENBASE_MASK;
        gBgCntRegs[3] |= BGCNT_SCREENBASE(STGBG_SCREENBASE(bgDim) + 2);
        gStageBackgroundsRam.unkC0.layoutVram = (void *)((uintptr_t)BG_SCREEN_ADDR(STGBG_SCREENBASE(bgDim) + 2));
        gStageBackgroundsRam.unkC0.unk20 = 0x40;
    }
#endif
    if (gGameMode == GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        bgs->unk40.flags |= BACKGROUND_UPDATE_ANIMATIONS | BACKGROUND_DISABLE_TILESET_UPDATE;
        bgs->unk80.flags |= BACKGROUND_UPDATE_ANIMATIONS | BACKGROUND_DISABLE_TILESET_UPDATE;
    }

#if (GAME == GAME_SA1)
    if (IS_EXTRA_STAGE(level)) {
        DrawBackground(&bgs->unk80);
        DrawBackground(&bgs->unkC0);
    } else {
        DrawBackground(&bgs->unk40);
        DrawBackground(&bgs->unk80);
        DrawBackground(&bgs->unkC0);
    }
#elif (GAME == GAME_SA2)
    if (!IS_EXTRA_STAGE(level)) {
        DrawBackground(&bgs->unk40);
        DrawBackground(&bgs->unk80);
        DrawBackground(&bgs->unkC0);
    }
#endif

    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        gRefCollision = gCollisionTable[level];
    } else {
        gRefCollision = *(Collision **)(EWRAM_START + 0x33004);
    }

    camera->minY = 0;
    camera->maxY = gRefCollision->pxHeight;
    camera->minX = 0;
    camera->maxX = gRefCollision->pxWidth;

#if (GAME == GAME_SA1)
    camera->sa2__unk10 = I(gPlayer.qWorldX) - (DISPLAY_WIDTH / 2);
    camera->x = I(gPlayer.qWorldX) - (DISPLAY_WIDTH / 2);
    camera->sa2__unk14 = (I(gPlayer.qWorldY) + camera->sa2__unk4C) - ((DISPLAY_HEIGHT / 2) + 4);
    camera->y = (I(gPlayer.qWorldY) + camera->sa2__unk4C) - ((DISPLAY_HEIGHT / 2) + 4);

    camera->sa2__unk8 = 16;
    camera->sa2__unkC = 12;
    camera->shiftX = 0;
    camera->shiftY = 0;
    camera->sa2__unk20 = 0;
    camera->sa2__unk24 = 0;
    camera->sa2__unk40 = 0;
    camera->sa2__unk44 = 8;
    camera->sa2__unk48 = 0;
    camera->sa2__unk4C = 0;
    camera->sa2__unk50 = 0;
    camera->sa2__unk52 = 0;
    camera->sa2__unk54 = 0;
    camera->shakeOffsetX = 0;
    camera->shakeOffsetY = 0;
    camera->sa2__unk64 = gPlayer.spriteOffsetY - 4;
#elif (GAME == GAME_SA2)
    if (IS_BOSS_STAGE(gCurrentLevel)) {
        if (IS_EXTRA_STAGE(gCurrentLevel)) {
            SuperSonicGetPos(&player->qWorldX, &player->qWorldY);
            gBossCameraClampYLower = gBossCameraYClamps[ZONE_FINAL + 1][0];
            gBossCameraClampYUpper = gBossCameraYClamps[ZONE_FINAL + 1][1];
            camera->x = 600;
            camera->unk10 = (DISPLAY_WIDTH / 2);
            camera->unk14 = 0;
            camera->y = 0;
            camera->unk64 = -4;
        } else {
            camera->x = I(player->qWorldX);
            // TODO: Handle boss camera restrictions for large screen sizes
            // for now we use the original GBA values as otherwise the boss
            // goes off the screen (not sure why yet)
            camera->unk10 = I(player->qWorldX) - (2 * 240);
            camera->y = I(player->qWorldY) - ((DISPLAY_HEIGHT / 2) + 4);
            camera->unk14 = camera->y;
            camera->unk64 = player->spriteOffsetY - 4;
        }
    } else {
        camera->x = I(player->qWorldX) - (DISPLAY_WIDTH / 2);
        camera->y = I(player->qWorldY) - ((DISPLAY_HEIGHT / 2) + 4);

        if (camera->x < 0) {
            camera->x = 0;
        }

        if (camera->y < 0) {
            camera->y = 0;
        }

        camera->unk10 = camera->x;
        camera->unk14 = camera->y;
        camera->unk64 = player->spriteOffsetY - 4;
    }

    camera->unk8 = Q(16);
    camera->unkC = 12;
    camera->unk56 = 0;
    camera->shiftX = 0;
    camera->shiftY = 0;
    camera->unk20 = 0;
    camera->unk24 = 0;
    camera->unk40 = 0;
    camera->unk44 = 8;
    camera->unk48 = 0;
    camera->unk4C = 0;
    camera->unk50 = 0;
    camera->unk52 = 0;
    camera->unk54 = 0;
    camera->shakeOffsetX = 0;
    camera->shakeOffsetY = 0;
#endif

    camera->movementTask = TaskCreate(Task_CallUpdateCamera, 0, 0xF00, 0, TaskDestructor_Camera);

    camera->fnBgUpdate = sStageBgUpdateFuncs[level];

    if (sStageBgInitProcedures[level] != NULL) {
        sStageBgInitProcedures[level]();
    }
}

// Only need to use the original value for these zones
#define DISPLAY_WIDTH_FOR_BOSS_TAS                                                                                                         \
    ((LEVEL_TO_ZONE(gCurrentLevel) == ZONE_2 || LEVEL_TO_ZONE(gCurrentLevel) == ZONE_6) ? (240 / 2) : (DISPLAY_WIDTH / 2))

void UpdateCamera(void)
{
    Player *player = &gPlayer;
    struct Camera *camera = &gCamera;
    s32 newX, newY;
    newX = camera->x;
    newY = camera->y;

#if (GAME == GAME_SA2)
    camera->dx = camera->x;
    camera->dy = camera->y;
#endif

    newX = CLAMP(newX, camera->minX, camera->maxX - (DISPLAY_WIDTH + 1));
    newY = CLAMP(newY, camera->minY, camera->maxY - (DISPLAY_HEIGHT + 1));

#if (GAME == GAME_SA2)
    if (IS_BOSS_STAGE(gCurrentLevel)) {
        s32 delta, playerY;
        if (!IS_ALIVE(player)) {
            if (camera->fnBgUpdate != NULL) {
                camera->fnBgUpdate(gCamera.x, gCamera.y);
            }
            return;
        }

        if (IS_EXTRA_STAGE(gCurrentLevel)) {
            SuperSonicGetPos(&player->qWorldX, &player->qWorldY);
        }

        camera->sa2__unk20 += BOSS_CAM_FRAME_DELTA_PIXELS;
        newX += BOSS_CAM_FRAME_DELTA_PIXELS;

// Most TASes were written with the expection that
// the player gets pushed forwards when touching the boss
// and the camera is moving (due to a physics bug).
// So we need to emulate that behaviour on some specific
// levels
#if TAS_TESTING && TAS_TESTING_WIDESCREEN_HACK && DISPLAY_WIDTH > 240
        if (newX + (DISPLAY_WIDTH_FOR_BOSS_TAS + 1) < I(player->qWorldX))
#else
        if (newX + ((DISPLAY_WIDTH / 2) + 1) < I(player->qWorldX))
#endif
        {
            if ((camera->sa2__unk20 + (DISPLAY_HEIGHT / 2)) > newX) {
                s32 playerScreenX = I(player->qWorldX);
#if TAS_TESTING && TAS_TESTING_WIDESCREEN_HACK && DISPLAY_WIDTH > 240
                playerScreenX -= DISPLAY_WIDTH_FOR_BOSS_TAS;
#else
                playerScreenX -= DISPLAY_WIDTH / 2;
#endif
                camera->shiftX = playerScreenX - newX;
            } else {
                newX = (camera->sa2__unk20 + (DISPLAY_HEIGHT / 2));
                camera->shiftX = 0;
            }
        } else {
            camera->shiftX = 0;
            if ((newX + 96) > I(player->qWorldX)) {
                newX = I(player->qWorldX);
                newX -= 96;
                if (newX < camera->sa2__unk20) {
                    newX = camera->sa2__unk20;
                }
            }
        }

        playerY = I(player->qWorldY);
        delta = playerY - newY;
        if (IS_EXTRA_STAGE(gCurrentLevel)) {
            if (delta <= 48) {
                s32 temp = newY - 48;
                newY = delta + temp;
                camera->shiftY = 0;
            } else if (delta >= (gBossCameraClampYUpper - 208)) {
                s32 temp = newY - 112;
                newY = delta + temp;
                camera->shiftY = 0;
            }
        } else {
            if (delta <= 48) {
                s32 temp = newY - 48;
                newY = delta + temp;
                camera->shiftY = 0;
            } else {
                newY += 2;
            }
        }
        newY = CLAMP(newY, gBossCameraClampYLower, gBossCameraClampYUpper - DISPLAY_HEIGHT);

        newX = newX + camera->shiftX;
        newY = newY + camera->shiftY;
        newX += camera->shakeOffsetX;
        newY += camera->shakeOffsetY;

    } else // if !IS_BOSS_STAGE(gCurrentLevel) ->
#endif
    {
        if (camera->sa2__unk40 != 0) {
            camera->sa2__unk40--;
        } else {
            s32 unk64, temp8;
#if (GAME == GAME_SA1)
            if (IS_MULTI_PLAYER) {
                MultiplayerPlayer *mpp = TASK_DATA(gMultiplayerPlayerTasks[camera->spectatorTarget]);

                if (!(camera->sa2__unk50 & 0x1)) {
                    camera->sa2__unk10 = (mpp->pos.x + camera->shiftX) - (DISPLAY_WIDTH / 2);
                }

                if (!(camera->sa2__unk50 & 2)) {
                    unk64 = camera->sa2__unk64;
                    temp8 = mpp->unk58[0] - 4;
                    if (GRAVITY_IS_INVERTED) {
                        temp8 = -temp8;
                    }

                    if (unk64 != temp8) {
                        if (unk64 < temp8) {
                            unk64 += 5;
                            if (unk64 > temp8) {
                                unk64 = temp8;
                            }
                        } else {
                            unk64 -= 5;
                            if (unk64 < temp8) {
                                unk64 = temp8;
                            }
                        }
                        camera->sa2__unk64 = unk64;
                    }

                    camera->sa2__unk14 = ((mpp->pos.y) + camera->shiftY) - (DISPLAY_HEIGHT / 2) + camera->sa2__unk4C + unk64;
                }
            } else
#elif (GAME == GAME_SA2)
            camera->unk14 = I(player->qWorldY) + camera->shiftY - (DISPLAY_HEIGHT / 2) + camera->unk4C + unk64;
#endif
            {
                if (!(camera->sa2__unk50 & 1)) {
                    s16 airSpeedX = player->qSpeedAirX;
                    camera->sa2__unk10 = I(player->qWorldX) + camera->shiftX - (DISPLAY_WIDTH / 2);
#if (GAME == GAME_SA2)
                    camera->unk56 = (airSpeedX + (camera->unk56 * 15)) >> 4;
                    camera->unk10 += (camera->unk56 >> 5);
#endif
                }
                if (!(camera->sa2__unk50 & 2)) {
                    unk64 = camera->sa2__unk64;
                    temp8 = player->spriteOffsetY - 4;
                    if (GRAVITY_IS_INVERTED) {
                        temp8 = -temp8;
                    }

                    if (unk64 != temp8) {
                        if (unk64 < temp8) {
                            unk64 += 5;
                            if (unk64 > temp8) {
                                unk64 = temp8;
                            }
                        } else {
                            unk64 -= 5;
                            if (unk64 < temp8) {
                                unk64 = temp8;
                            }
                        }
                        camera->sa2__unk64 = unk64;
                    }

#if (GAME == GAME_SA1)
                    camera->sa2__unk14 = I(player->qWorldY) + camera->shiftY - (DISPLAY_HEIGHT / 2) + camera->sa2__unk4C + unk64;
#elif (GAME == GAME_SA2)
                    camera->unk14 = I(player->qWorldY) + camera->shiftY - (DISPLAY_HEIGHT / 2) + camera->unk4C + unk64;
#endif
                }
            }
        }

        if ((camera->sa2__unk10 - newX) > camera->sa2__unk44) {
            s32 temp = camera->sa2__unk10 - newX - camera->sa2__unk44;
            s32 temp2 = CAM_UNK8_INT(camera->sa2__unk8);
            if (temp2 > temp) {
                temp2 = temp;
            }
            newX += temp2;
        } else if ((camera->sa2__unk10 - newX) < -camera->sa2__unk44) {
            s32 temp = (camera->sa2__unk10 - newX) + camera->sa2__unk44;
            s32 temp2 = -CAM_UNK8_INT(camera->sa2__unk8);
            if (temp2 < temp) {
                temp2 = temp;
            }

            newX += temp2;
        }

        newX = CLAMP(newX, camera->minX, camera->maxX - DISPLAY_WIDTH);

#if (GAME == GAME_SA1)
        if ((player->moveState & MOVESTATE_IN_AIR) && (player->character != CHARACTER_KNUCKLES || player->sa2__unk61 != 9))
#elif (GAME == GAME_SA2)
        if (camera->unk8 < Q(16)) {
            camera->unk8 += Q(0.125);
        }

        if ((player->moveState & MOVESTATE_IN_AIR) && (player->character != CHARACTER_KNUCKLES || player->unk61 != 9))
#endif
        {
            camera->sa2__unk48 += 4;
            camera->sa2__unk48 = MIN(camera->sa2__unk48, 24);
        } else {
            camera->sa2__unk48 -= 4;
            camera->sa2__unk48 = MAX(camera->sa2__unk48, 0);
        }

        if ((camera->sa2__unk14 - newY) > camera->sa2__unk48) {
            newY += (camera->sa2__unkC > ((camera->sa2__unk14 - newY) - camera->sa2__unk48))
                ? ((camera->sa2__unk14 - newY) - camera->sa2__unk48)
                : camera->sa2__unkC;
        } else if ((camera->sa2__unk14 - newY) < -(camera->sa2__unk48)) {
            newY += (-camera->sa2__unkC < (camera->sa2__unk14 - newY) + camera->sa2__unk48)
                ? (camera->sa2__unk14 - newY) + camera->sa2__unk48
                : -camera->sa2__unkC;
        }

        newY = CLAMP(newY, camera->minY, camera->maxY - DISPLAY_HEIGHT);

        // maybe a macro, these values are already clamped
        newX = CLAMP(newX, camera->minX, camera->maxX - DISPLAY_WIDTH);
        newY = CLAMP(newY, camera->minY, camera->maxY - DISPLAY_HEIGHT);
        newX = newX + camera->shakeOffsetX;
        newY = newY + camera->shakeOffsetY;
    }

    camera->x = newX;
    camera->y = newY;

#if (GAME == GAME_SA2)
    camera->dx -= newX;
    camera->dy -= newY;
#endif

    RenderMetatileLayers(newX, newY);

    if (camera->fnBgUpdate != NULL) {
        camera->fnBgUpdate(newX, newY);
    }
}

static void RenderMetatileLayers(s32 x, s32 y)
{
    Background *layer;

#if (GAME == GAME_SA1)
    if (IS_EXTRA_STAGE(gCurrentLevel)) {
        s32 scrollX;
        scrollX = (x + gStageTime * 8);

        if (scrollX - 72 >= Q(10.5)) {
            scrollX -= 72;
            scrollX = Mod(scrollX, Q(10.5)) + 72;
        }

        x = scrollX;
        if (IS_EXTRA_STAGE(gCurrentLevel)) {
            layer = &gStageBackgroundsRam.unk80;
            gBgScrollRegs[0][0] = x % 8u;
            gBgScrollRegs[0][1] = y % 8u;
            layer->scrollX = x;
            layer->scrollY = y;
            DrawBackground(layer);
            return;
        }
    }
#endif

    if (!IS_EXTRA_STAGE(gCurrentLevel)) {
        layer = &gStageBackgroundsRam.unk40;
        gBgScrollRegs[1][0] = x % 8u;
        gBgScrollRegs[1][1] = y % 8u;
        layer->scrollX = x;
        layer->scrollY = y;
        DrawBackground(layer);
        UpdateBgAnimationTiles(layer);

        layer = &gStageBackgroundsRam.unk80;
        gBgScrollRegs[2][0] = x % 8u;
        gBgScrollRegs[2][1] = y % 8u;
        layer->scrollX = x;
        layer->scrollY = y;
        DrawBackground(layer);
    }
}
