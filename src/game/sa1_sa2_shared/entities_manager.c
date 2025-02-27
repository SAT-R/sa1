#include "core.h"
#include "task.h"

#include "malloc_ewram.h"
#include "malloc_vram.h"

#include "lib/m4a/m4a.h"

#include "game/sa1_sa2_shared/camera.h"
#include "game/entity.h"
#include "game/sa1_sa2_shared/entities_manager.h"
#include "game/sa1_sa2_shared/item_box.h"

#if (GAME == GAME_SA2)

#include "game/sa1_sa2_shared/interactables/platform_thin.h"
#include "game/sa1_sa2_shared/interactables/ceiling_slope.h"
#include "game/sa1_sa2_shared/interactables/grind_rail.h"
#include "game/sa1_sa2_shared/interactables/platform_square.h"
#include "game/sa1_sa2_shared/interactables/platform.h"
#include "game/sa1_sa2_shared/interactables/ramp.h"
#include "game/sa1_sa2_shared/interactables/slidy_ice.h"
#include "game/sa1_sa2_shared/interactables/spring.h"
#include "game/sa1_sa2_shared/interactables/pipe.h"

#include "game/interactables_1/windmill.h"
#include "game/interactables_1/checkpoint.h"
#include "game/interactables_1/gapped_loop.h"
#include "game/interactables_1/stage_goal.h"
#include "game/interactables_1/corkscrew.h"
#include "game/interactables_1/corkscrew_3d.h"
#include "game/interactables_1/incline_ramp.h"
#include "game/interactables_1/toggle_player_layer.h"
#include "game/interactables_1/bouncy_bar.h"
#include "game/interactables_1/spring_bouncy.h"
#include "game/interactables_1/rotating_handle.h"
#include "game/interactables_1/platform_crumbling.h"
#include "game/interactables_1/spikes.h"
#include "game/interactables_1/booster.h"
#include "game/interactables_1/decoration.h"

#include "game/interactables_2/hot_crater/crane.h"
#include "game/interactables_2/hot_crater/dash_ring.h"
#include "game/interactables_2/hot_crater/windup_stick.h"
#include "game/interactables_2/hot_crater/floating_spring.h"
#include "game/interactables_2/hot_crater/turnaround_bar.h"
#include "game/interactables_2/hot_crater/hook_rail.h"

#include "game/interactables_2/music_plant/note_sphere.h"
#include "game/interactables_2/music_plant/pipe_horn.h"
#include "game/interactables_2/music_plant/keyboard.h"
#include "game/interactables_2/music_plant/note_block.h"
#include "game/interactables_2/music_plant/guitar_string.h"
#include "game/interactables_2/music_plant/german_flute.h"

#include "game/interactables_2/ice_paradise/big_snowball.h"
#include "game/interactables_2/ice_paradise/funnel_sphere.h"
#include "game/interactables_2/ice_paradise/half_pipe.h"
#include "game/interactables_2/ice_paradise/slowing_snow.h"

#include "game/interactables_2/sky_canyon/propeller.h"
#include "game/interactables_2/sky_canyon/fan.h"
#include "game/interactables_2/sky_canyon/small_windmill.h"
#include "game/interactables_2/sky_canyon/whirlwind.h"
#include "game/interactables_2/sky_canyon/propeller_spring.h"

#include "game/interactables_2/techno_base/light_globe.h"
#include "game/interactables_2/techno_base/light_bridge.h"
#include "game/interactables_2/techno_base/arrow_platform.h"
#include "game/interactables_2/techno_base/spike_platform.h"
#include "game/interactables_2/techno_base/bounce_block.h"

#include "game/interactables_2/egg_utopia/pole.h"
#include "game/interactables_2/egg_utopia/flying_handle.h"
#include "game/interactables_2/egg_utopia/gravity_toggle.h"
#include "game/interactables_2/egg_utopia/cannon.h"
#include "game/interactables_2/egg_utopia/iron_ball.h"
#include "game/interactables_2/egg_utopia/speeding_platform.h"
#include "game/interactables_2/egg_utopia/launcher.h"

#include "game/interactables_2/note_particle.h"
#include "game/interactables_2/105.h"
#include "game/interactables_2/special_ring.h"
#include "game/interactables_2/notification_ring_bonus.h"
#include "game/interactables_2/sky_canyon_init.h"

#include "game/mystery_item_box.h"

#include "game/enemies/kiki.h"
#include "game/enemies/kura_kura.h"
#include "game/enemies/flickey.h"
#include "game/enemies/kubinaga.h"
#include "game/enemies/hammerhead.h"
#include "game/enemies/bullet_buzzer.h"
#include "game/enemies/circus.h"
#include "game/enemies/yado.h"
#include "game/enemies/pen.h"
#include "game/enemies/gohla.h"
#include "game/enemies/bell.h"
#include "game/enemies/straw.h"
#include "game/enemies/kyura.h"
#include "game/enemies/balloon.h"
#include "game/enemies/mouse.h"
#include "game/enemies/koura.h"
#include "game/enemies/madillo.h"
#include "game/enemies/piko_piko.h"
#include "game/enemies/geji_geji.h"
#include "game/enemies/star.h"
#include "game/enemies/mon.h"
#include "game/enemies/buzzer.h"
#include "game/enemies/spinner.h"

#include "game/assets/compressed/entities.h"
#endif

#include "constants/songs.h"
#include "constants/zones.h"

// Unknown task
extern void CreateEnemyDefeatScore(s16, s16);

typedef struct Task *(*StagePreInitFunc)(void);
typedef void (*MapEntityInit)(MapEntity *, u16, u16, u8);

struct Range {
    CamCoord xLow, yLow;
    CamCoord xHigh, yHigh;
};

struct Ranges {
    struct Range a;
    struct Range b;
};

void SA2_LABEL(Task_8008DCC)(void);
void SpawnMapEntities();

void SA2_LABEL(TaskDestructor_80095FC)(struct Task *);

#define READ_START_INDEX(p, hrc, rx, ry) (*((u32 *)((((u8 *)(p)) + (((hrc) * (ry)) * (sizeof(u32)))) + ((rx) * (sizeof(u32))))))

#if (GAME == GAME_SA1)
extern const RLCompressed *const gSpritePosData_interactables[NUM_LEVEL_IDS];
extern const RLCompressed *const gSpritePosData_itemboxes[NUM_LEVEL_IDS];
extern const RLCompressed *const gSpritePosData_enemies[NUM_LEVEL_IDS];

extern void CreateEntity_StageGoal(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spikes_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spikes_Down(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spikes_Horizontal(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spikes_Horizontal(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spikes_HidingUp(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spikes_HidingDown(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Checkpoint(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spring_Normal_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spring_Normal_Down(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spring_Horizontal(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spring_Horizontal(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spring_Big_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spring_Big_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spring_Small_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spring_Small_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Decoration(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Toggle_PlayerLayer(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Toggle_PlayerLayer(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_GrindRail_Start(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_GrindRail_End(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_PlatformThin(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_PlatformThin_Falling(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Trampoline(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_PlatformCrumbling(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_BounceBlock(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_InclineRamp(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Waterfall(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_HalfPipeStart(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_HalfPipeEnd(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Shrubbery(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Booster(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Booster_SlightLeft(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Booster_SlightRight(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Interactable034(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_MiniLoop_Base(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_MiniLoop_StartBoost(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_MiniLoop_Exit(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_MiniLoop_Entrance(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Interactable039(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_WaterBridge(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_ToBeContinuedText(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_RedFlag(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_WaterBridgeSplash(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_WallPole_Left(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_WallPole_Right(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_ForcedIceSlide(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Booster_Wall(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_BumperHexagon(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_BumperRound_LinearMov(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_BumperRound_CircularMov(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_BumperTriHorizontal(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_BumperTriVertical(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_BumperTriBig(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Flipper(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Platform_Square(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Flipper_Vertical(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_BarrelOfDoomMini(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_SEGA_SONIC_Letter(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_PartyBalloon(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_ShipSwing(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Platform_Spiked(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Bowl(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_PanelGate_Vertical(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_PanelGate_Horizontal(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_MarbleTrack_Dir(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_MarbleTrack_Unk(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_MarbleTrack_Entrance(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_MarbleTrack_Exit(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_ConveyorBelt(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Toggle_PlayerVisibility(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_WallBumper(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_TeleportOrb(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Flipper_SmallBlue(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Carousel(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_HookRail(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_SwingingHook(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_SecurityGate(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_SwingRope(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_SteamExhaust(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_CraneClaw(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_MovingSpring(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_IronBall(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_HangBar(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_SkatingStone(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Interactable085(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_RunWheel(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Torch(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Lift(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Interactable089(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_PlayerFloat(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_FerrisWheel(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_BoulderSpawner(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_SpikedBarrel(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_AirBubbles(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_IceBlock(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Interactable096(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Interactable097(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_UnderwaterLavaPlatform(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_ConveyorBeltObject(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Booster_Steep(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Booster_Steep2(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_SpecialSpring(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Propeller(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_SmallFallBlock(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Lava(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Track(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Interactable107(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spring_Hiding(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_ToggleGravity(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_PipeEntrance(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_PipeExit(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_TrackAirCorner(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Interactable113(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_BreakableWall(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_ItemBox_ChaoHunt(MapEntity *me, u16 regionX, u16 regionY, u8 id);

const MapEntityInit gSpriteInits_Interactables[116] = {
    /* 000 */ CreateEntity_StageGoal,
    /* 001 */ CreateEntity_Spikes_Up,
    /* 002 */ CreateEntity_Spikes_Down,
    /* 003 */ CreateEntity_Spikes_Horizontal, // Left
    /* 004 */ CreateEntity_Spikes_Horizontal, // Right
    /* 005 */ CreateEntity_Spikes_HidingUp,
    /* 006 */ CreateEntity_Spikes_HidingDown,
    /* 007 */ CreateEntity_Checkpoint,
    /* 008 */ CreateEntity_Spring_Normal_Up,
    /* 009 */ CreateEntity_Spring_Normal_Down,
    /* 010 */ CreateEntity_Spring_Horizontal, // Left
    /* 011 */ CreateEntity_Spring_Horizontal, // Right
    /* 012 */ CreateEntity_Spring_Big_Up, // Up-Left
    /* 013 */ CreateEntity_Spring_Big_Up, // Up-Right
    /* 014 */ CreateEntity_Spring_Small_Up, // Up-Left
    /* 015 */ CreateEntity_Spring_Small_Up, // Up-Right
    /* 016 */ CreateEntity_Decoration,
    /* 017 */ CreateEntity_Toggle_PlayerLayer,
    /* 018 */ CreateEntity_Toggle_PlayerLayer,
    /* 019 */ CreateEntity_GrindRail_Start,
    /* 020 */ CreateEntity_GrindRail_End,
    /* 021 */ CreateEntity_PlatformThin,
    /* 022 */ CreateEntity_PlatformThin_Falling,
    /* 023 */ CreateEntity_Trampoline,
    /* 024 */ CreateEntity_PlatformCrumbling,
    /* 025 */ CreateEntity_BounceBlock,
    /* 026 */ CreateEntity_InclineRamp,
    /* 027 */ CreateEntity_Waterfall, // Only particles, used for "Sand Falls", too.
    /* 028 */ CreateEntity_HalfPipeStart,
    /* 029 */ CreateEntity_HalfPipeEnd,
    /* 030 */ CreateEntity_Shrubbery,
    /* 031 */ CreateEntity_Booster,
    /* 032 */ CreateEntity_Booster_SlightLeft,
    /* 033 */ CreateEntity_Booster_SlightRight,
    /* 034 */ CreateEntity_Interactable034,
    /* 035 */ CreateEntity_MiniLoop_Base,
    /* 036 */ CreateEntity_MiniLoop_StartBoost,
    /* 037 */ CreateEntity_MiniLoop_Exit,
    /* 038 */ CreateEntity_MiniLoop_Entrance,
    /* 039 */ CreateEntity_Interactable039,
    /* 040 */ CreateEntity_WaterBridge,
    /* 041 */ CreateEntity_ToBeContinuedText,
    /* 042 */ CreateEntity_RedFlag,
    /* 043 */ CreateEntity_WaterBridgeSplash,
    /* 044 */ CreateEntity_WallPole_Left,
    /* 045 */ CreateEntity_WallPole_Right,
    /* 046 */ CreateEntity_ForcedIceSlide,
    /* 047 */ CreateEntity_Booster_Wall,
    /* 048 */ CreateEntity_BumperHexagon,
    /* 049 */ CreateEntity_BumperRound_LinearMov,
    /* 050 */ CreateEntity_BumperRound_CircularMov,
    /* 051 */ CreateEntity_BumperTriHorizontal,
    /* 052 */ CreateEntity_BumperTriVertical,
    /* 053 */ CreateEntity_BumperTriBig,
    /* 054 */ CreateEntity_Flipper,
    /* 055 */ CreateEntity_Platform_Square,
    /* 056 */ CreateEntity_Flipper_Vertical,
    /* 057 */ CreateEntity_BarrelOfDoomMini,
    /* 058 */ CreateEntity_SEGA_SONIC_Letter,
    /* 059 */ CreateEntity_PartyBalloon,
    /* 060 */ CreateEntity_ShipSwing,
    /* 061 */ CreateEntity_Platform_Spiked,
    /* 062 */ CreateEntity_Bowl,
    /* 063 */ CreateEntity_PanelGate_Vertical,
    /* 064 */ CreateEntity_PanelGate_Horizontal,
    /* 065 */ CreateEntity_MarbleTrack_Dir,
    /* 066 */ CreateEntity_MarbleTrack_Unk,
    /* 067 */ CreateEntity_MarbleTrack_Entrance,
    /* 068 */ CreateEntity_MarbleTrack_Exit,
    /* 069 */ CreateEntity_ConveyorBelt, // 069 Also used for snow in Ice Paradise
    /* 070 */ CreateEntity_Toggle_PlayerVisibility, // data[0]: 0 = Visible, 1 = Invisible
    /* 071 */ CreateEntity_WallBumper,
    /* 072 */ CreateEntity_TeleportOrb, // Casino Paradise
    /* 073 */ CreateEntity_Flipper_SmallBlue,
    /* 074 */ CreateEntity_Carousel,
    /* 075 */ CreateEntity_HookRail,
    /* 076 */ CreateEntity_SwingingHook,
    /* 077 */ CreateEntity_SecurityGate,
    /* 078 */ CreateEntity_SwingRope,
    /* 079 */ CreateEntity_SteamExhaust,
    /* 080 */ CreateEntity_CraneClaw,
    /* 081 */ CreateEntity_MovingSpring, // 081 Moving Spring
    /* 082 */ CreateEntity_IronBall,
    /* 083 */ CreateEntity_HangBar,
    /* 084 */ CreateEntity_SkatingStone,
    /* 085 */ CreateEntity_Interactable085,
    /* 086 */ CreateEntity_RunWheel,
    /* 087 */ CreateEntity_Torch, // Cosmic Angel: Antigravity field elements
    /* 088 */ CreateEntity_Lift,
    /* 089 */ CreateEntity_Interactable089,
    /* 090 */ CreateEntity_PlayerFloat, // data[0]: 0 = Whirlwind, 1 = Antigravity
    /* 091 */ CreateEntity_FerrisWheel,
    /* 092 */ CreateEntity_BoulderSpawner,
    /* 093 */ CreateEntity_SpikedBarrel,
    /* 094 */ CreateEntity_AirBubbles,
    /* 095 */ CreateEntity_IceBlock,
    /* 096 */ CreateEntity_Interactable096,
    /* 097 */ CreateEntity_Interactable097,
    /* 098 */ CreateEntity_UnderwaterLavaPlatform,
    /* 099 */ CreateEntity_ConveyorBeltObject,
    /* 100 */ CreateEntity_Booster_Steep,
    /* 101 */ CreateEntity_Booster_Steep2,
    /* 102 */ CreateEntity_SpecialSpring,
    /* 103 */ CreateEntity_Propeller,
    /* 104 */ CreateEntity_SmallFallBlock, // 104 (X-Zone)
    /* 105 */ CreateEntity_Lava,
    /* 106 */ CreateEntity_Track,
    /* 107 */ CreateEntity_Interactable107,
    /* 108 */ CreateEntity_Spring_Hiding,
    /* 109 */ CreateEntity_ToggleGravity,
    /* 110 */ CreateEntity_PipeEntrance,
    /* 111 */ CreateEntity_PipeExit,
    /* 112 */ CreateEntity_TrackAirCorner,
    /* 113 */ CreateEntity_Interactable113,
    /* 114 */ CreateEntity_BreakableWall,
    /* 115 */ CreateEntity_ItemBox_ChaoHunt,
};

extern void CreateEntity_Kiki(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Buzzer(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_GamiGami(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Rhinotank(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_KeroKero(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Senbon(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Tentou(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Fireball(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Hanabii(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Slot(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Pierrot(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Leon(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Mirror(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Wamu(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Oct(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Mole(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Yukimaru(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Yukimaru_Wall(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Drisame(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Kuraa(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_PenMk1(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_EggHammerTank_Intro(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_EggHammerTank(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_EggPress(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_EggBall(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_EggSpider(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_MechaKnuckles(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_EggSnake(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_EggWrecker(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_EggDrillster(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_EggX(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_SuperEggRobot(MapEntity *me, u16 regionX, u16 regionY, u8 id);

const MapEntityInit gSpriteInits_Enemies[32] = {
    /* 000 */ CreateEntity_Kiki,
    /* 001 */ CreateEntity_Buzzer,
    /* 002 */ CreateEntity_GamiGami,
    /* 003 */ CreateEntity_Rhinotank,
    /* 004 */ CreateEntity_KeroKero,
    /* 005 */ CreateEntity_Senbon,
    /* 006 */ CreateEntity_Tentou,
    /* 007 */ CreateEntity_Fireball,
    /* 008 */ CreateEntity_Hanabii,
    /* 009 */ CreateEntity_Slot,
    /* 010 */ CreateEntity_Pierrot,
    /* 011 */ CreateEntity_Leon,
    /* 012 */ CreateEntity_Mirror,
    /* 013 */ CreateEntity_Wamu,
    /* 014 */ CreateEntity_Oct,
    /* 015 */ CreateEntity_Mole,
    /* 016 */ CreateEntity_Yukimaru,
    /* 017 */ CreateEntity_Yukimaru_Wall,
    /* 018 */ CreateEntity_Drisame,
    /* 019 */ CreateEntity_Kuraa,
    /* 020 */ CreateEntity_PenMk1,

    // Bosses
    /* 021 */ CreateEntity_EggHammerTank_Intro,
    /* 022 */ CreateEntity_EggHammerTank,
    /* 023 */ CreateEntity_EggPress,
    /* 024 */ CreateEntity_EggBall,
    /* 025 */ CreateEntity_EggSpider,
    /* 026 */ CreateEntity_MechaKnuckles,
    /* 027 */ CreateEntity_EggSnake,
    /* 028 */ CreateEntity_EggWrecker,
    /* 029 */ CreateEntity_EggDrillster,
    /* 030 */ CreateEntity_EggX,
    /* 031 */ CreateEntity_SuperEggRobot,
};

#define NUM_ENEMY_DEFEAT_SCORES 5
const u16 enemyDefeatScores[NUM_ENEMY_DEFEAT_SCORES] = {
    100, 200, 400, 800, 1000,
};

extern void CreateEntity_Spikes_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spikes_Down(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spikes_Horizontal(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spikes_Horizontal(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spikes_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spikes_Down(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spring_Normal_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spring_Normal_Down(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spring_Horizontal(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spring_Horizontal(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spring_Big_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Spring_Big_Up(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Toggle_PlayerLayer(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_Toggle_PlayerLayer(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_PlatformThin(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_PlatformThin_Falling(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_WaterBridge(MapEntity *me, u16 regionX, u16 regionY, u8 id);
extern void CreateEntity_ItemBox_ChaoHunt(MapEntity *me, u16 regionX, u16 regionY, u8 id);

// Used for the Single Pak, "Collect Rings" stage
const MapEntityInit gSpriteInits_InteractablesMultiplayer[] = {
    /* 000 */ CreateEntity_Spikes_Up,
    /* 001 */ CreateEntity_Spikes_Down,
    /* 002 */ CreateEntity_Spikes_Horizontal,
    /* 003 */ CreateEntity_Spikes_Horizontal,
    /* 004 */ CreateEntity_Spikes_Up,
    /* 005 */ CreateEntity_Spikes_Down,
    /* 006 */ CreateEntity_Spring_Normal_Up,
    /* 007 */ CreateEntity_Spring_Normal_Down,
    /* 008 */ CreateEntity_Spring_Horizontal,
    /* 009 */ CreateEntity_Spring_Horizontal,
    /* 010 */ CreateEntity_Spring_Big_Up,
    /* 011 */ CreateEntity_Spring_Big_Up,
    /* 012 */ CreateEntity_Toggle_PlayerLayer,
    /* 013 */ CreateEntity_Toggle_PlayerLayer,
    /* 014 */ CreateEntity_PlatformThin,
    /* 015 */ CreateEntity_PlatformThin_Falling,
    /* 016 */ CreateEntity_WaterBridge,
    /* 017 */ CreateEntity_ItemBox_ChaoHunt,
};

// TODO: Is this not in SA1?
// extern const StagePreInitFunc gSpriteTileInits_PreStageEntry[NUM_LEVEL_IDS];
#elif (GAME == GAME_SA2)
const RLCompressed *const gSpritePosData_interactables[NUM_LEVEL_IDS] = {
    (void *)&zone1_act1_interactables,
    (void *)&zone1_act2_interactables,
    (void *)&zone1_boss_interactables,
    (void *)&zone1_act2_interactables,

    (void *)&zone2_act1_interactables,
    (void *)&zone2_act2_interactables,
    (void *)&zone2_boss_interactables,
    (void *)&zone2_act2_interactables,

    (void *)&zone3_act1_interactables,
    (void *)&zone3_act2_interactables,
    (void *)&zone3_boss_interactables,
    (void *)&zone3_act2_interactables,

    (void *)&zone4_act1_interactables,
    (void *)&zone4_act2_interactables,
    (void *)&zone4_boss_interactables,
    (void *)&zone4_act2_interactables,

    (void *)&zone5_act1_interactables,
    (void *)&zone5_act2_interactables,
    (void *)&zone5_boss_interactables,
    (void *)&zone5_act2_interactables,

    (void *)&zone6_act1_interactables,
    (void *)&zone6_act2_interactables,
    (void *)&zone6_boss_interactables,
    (void *)&zone6_act2_interactables,

    (void *)&zone7_act1_interactables,
    (void *)&zone7_act2_interactables,
    (void *)&zone7_boss_interactables,
    (void *)&zone7_act2_interactables,

    (void *)&zone8_act1_interactables,
    (void *)&zone8_act2_interactables,
    (void *)&zone8_boss_interactables,
    NULL,
    NULL,
    NULL,
};

const RLCompressed *const gSpritePosData_itemboxes[] = {
    (void *)&zone1_act1_itemboxes,
    (void *)&zone1_act2_itemboxes,
    (void *)&zone1_boss_itemboxes,
    (void *)&zone1_act2_itemboxes,

    (void *)&zone2_act1_itemboxes,
    (void *)&zone2_act2_itemboxes,
    (void *)&zone2_boss_itemboxes,
    (void *)&zone2_act2_itemboxes,

    (void *)&zone3_act1_itemboxes,
    (void *)&zone3_act2_itemboxes,
    (void *)&zone3_boss_itemboxes,
    (void *)&zone3_act2_itemboxes,

    (void *)&zone4_act1_itemboxes,
    (void *)&zone4_act2_itemboxes,
    (void *)&zone4_boss_itemboxes,
    (void *)&zone4_act2_itemboxes,

    (void *)&zone5_act1_itemboxes,
    (void *)&zone5_act2_itemboxes,
    (void *)&zone5_boss_itemboxes,
    (void *)&zone5_act2_itemboxes,

    (void *)&zone6_act1_itemboxes,
    (void *)&zone6_act2_itemboxes,
    (void *)&zone6_boss_itemboxes,
    (void *)&zone6_act2_itemboxes,

    (void *)&zone7_act1_itemboxes,
    (void *)&zone7_act2_itemboxes,
    (void *)&zone7_boss_itemboxes,
    (void *)&zone7_act2_itemboxes,

    (void *)&zone8_act1_itemboxes,
    (void *)&zone8_act2_itemboxes,
    (void *)&zone8_boss_itemboxes,
    NULL,
    NULL,
    NULL,
};
const RLCompressed *const gSpritePosData_enemies[] = {
    (void *)&zone1_act1_enemies,
    (void *)&zone1_act2_enemies,
    (void *)&zone1_boss_enemies,
    (void *)&zone1_act2_enemies,

    (void *)&zone2_act1_enemies,
    (void *)&zone2_act2_enemies,
    (void *)&zone2_boss_enemies,
    (void *)&zone2_act2_enemies,

    (void *)&zone3_act1_enemies,
    (void *)&zone3_act2_enemies,
    (void *)&zone3_boss_enemies,
    (void *)&zone3_act2_enemies,

    (void *)&zone4_act1_enemies,
    (void *)&zone4_act2_enemies,
    (void *)&zone4_boss_enemies,
    (void *)&zone4_act2_enemies,

    (void *)&zone5_act1_enemies,
    (void *)&zone5_act2_enemies,
    (void *)&zone5_boss_enemies,
    (void *)&zone5_act2_enemies,

    (void *)&zone6_act1_enemies,
    (void *)&zone6_act2_enemies,
    (void *)&zone6_boss_enemies,
    (void *)&zone6_act2_enemies,

    (void *)&zone7_act1_enemies,
    (void *)&zone7_act2_enemies,
    (void *)&zone7_boss_enemies,
    (void *)&zone7_act2_enemies,

    (void *)&zone8_act1_enemies,
    (void *)&zone8_act2_enemies,
    (void *)&zone8_boss_enemies,
    NULL,
    NULL,
    NULL,
};

const MapEntityInit gSpriteInits_Interactables[] = {
    CreateEntity_Toggle_PlayerLayer,
    CreateEntity_Toggle_PlayerLayer,
    CreateEntity_Platform,
    CreateEntity_Spring_Normal_Up,
    CreateEntity_Spring_Normal_Down,
    CreateEntity_Spring_Normal_Right,
    CreateEntity_Spring_Normal_Left,
    CreateEntity_Spring_Big_UpLeft,
    CreateEntity_Spring_Big_UpRight,
    CreateEntity_Spring_Big_DownRight,
    CreateEntity_Spring_Big_DownLeft,
    CreateEntity_Spring_Small_UpRight,
    CreateEntity_Spring_Small_UpLeft,
    CreateEntity_PlatformThin,
    CreateEntity_Decoration,
    CreateEntity_Ramp,
    CreateEntity_Booster,
    CreateEntity_InclineRamp,
    CreateEntity_BouncySpring,
    CreateEntity_PlatformCrumbling,
    CreateEntity_RotatingHandle,
    CreateEntity_GappedLoop_Start,
    CreateEntity_GappedLoop_End,
    CreateEntity_Spikes_Up,
    CreateEntity_Spikes_Down,
    CreateEntity_Spikes_LeftRight,
    CreateEntity_Spikes_LeftRight,
    CreateEntity_Spikes_HidingUp,
    CreateEntity_Spikes_HidingDown,
    CreateEntity_Corkscrew_Start,
    CreateEntity_Corkscrew_End,
    CreateEntity_BouncyBar,
    CreateEntity_GrindRail_Start,
    CreateEntity_GrindRail_StartAir,
    CreateEntity_GrindRail_EndGround,
    CreateEntity_GrindRail_End_ForcedJump,
    CreateEntity_GrindRail_EndAlternate,
    CreateEntity_GrindRail_EndAir,
    CreateEntity_GrindRail_EndGround_Left,
    CreateEntity_GrindRail_EndAir_Left,
    CreateEntity_Corkscrew3D_Start,
    CreateEntity_Corkscrew3D_End,
    CreateEntity_StageGoal,
    CreateEntity_Checkpoint,
    CreateEntity_CeilingSlope,
    CreateEntity_Toggle_Checkpoint,
    CreateEntity_Toggle_StageGoal,
    CreateEntity_WindUpStick,
    CreateEntity_HookRail_Unused,
    CreateEntity_HookRail_Start,
    CreateEntity_HookRail_End,
    CreateEntity_Windmill,
    CreateEntity_TurnAroundBar,
    CreateEntity_Crane,
    CreateEntity_DashRing,
    CreateEntity_FloatingSpring_Up,
    CreateEntity_Note_Sphere,
    CreateEntity_Note_Block,
    CreateEntity_GuitarString,
    CreateEntity_Keyboard_Vertical,
    CreateEntity_Keyboard_Horizontal_PushLeft,
    CreateEntity_Keyboard_Horizontal_PushRight,
    CreateEntity_GermanFlute,
    CreateEntity_FrenchHorn_Entry,
    CreateEntity_PipeInstrument_Entry,
    CreateEntity_SlowingSnow,
    CreateEntity_FunnelSphere,
    CreateEntity_HalfPipe_End,
    CreateEntity_HalfPipe_Start,
    CreateEntity_BigSnowball,
    CreateEntity_NoteBlock,
    CreateEntity_CeilingSlope,
    CreateEntity_Pipe_Start,
    CreateEntity_Pipe_End,
    CreateEntity_LightBridge,
    CreateEntity_ArrowPlatform_Left,
    CreateEntity_ArrowPlatform_Right,
    CreateEntity_ArrowPlatform_Up,
    CreateEntity_SpikePlatform,
    CreateEntity_FallingPlatform,
    CreateEntity_LightGlobe,
    CreateEntity_Platform_Square,
    CreateEntity_Propeller,
    CreateEntity_SlidyIce,
    CreateEntity_SmallWindmill,
    CreateEntity_PropellerSpring,
    CreateEntity_Whirlwind_A,
    CreateEntity_Fan_Left,
    CreateEntity_Fan_Right,
    CreateEntity_Fan_Left_Periodic,
    CreateEntity_Fan_Right_Periodic,
    CreateEntity_Launcher_Left_GDown,
    CreateEntity_Launcher_Right_GDown,
    CreateEntity_Cannon,
    CreateEntity_Pole,
    CreateEntity_IronBall,
    CreateEntity_FlyingHandle,
    CreateEntity_SpeedingPlatform,
    CreateEntity_Toggle_Gravity__Down,
    CreateEntity_Toggle_Gravity__Up,
    CreateEntity_Toggle_Gravity__Toggle,
    CreateEntity_Launcher_Left_GUp,
    CreateEntity_Launcher_Right_GUp,
    CreateEntity_SpecialRing,
    CreateEntity_Whirlwind_B,
    CreateEntity_Interactable105,
};

const MapEntityInit gSpriteInits_Enemies[] = {
    CreateEntity_Mon,      CreateEntity_Kiki,     CreateEntity_Buzzer,       CreateEntity_Gohla,      CreateEntity_KuraKura,
    CreateEntity_Kubinaga, CreateEntity_PikoPiko, CreateEntity_Bell,         CreateEntity_Yado,       CreateEntity_Circus,
    CreateEntity_Koura,    CreateEntity_Madillo,  CreateEntity_Straw,        CreateEntity_Hammerhead, CreateEntity_Spinner,
    CreateEntity_Mouse,    CreateEntity_Pen,      CreateEntity_GejiGeji,     CreateEntity_Balloon,    CreateEntity_Flickey,
    CreateEntity_Kyura,    CreateEntity_Star,     CreateEntity_BulletBuzzer,
};

#define NUM_ENEMY_DEFEAT_SCORES 5
const u16 enemyDefeatScores[NUM_ENEMY_DEFEAT_SCORES] = {
    100, 200, 400, 800, 1000,
};

const MapEntityInit gSpriteInits_InteractablesMultiplayer[] = {
    CreateEntity_Toggle_PlayerLayer,
    CreateEntity_Toggle_PlayerLayer,
    CreateEntity_Spring_Normal_Up,
    CreateEntity_Spring_Normal_Down,
    CreateEntity_Spring_Normal_Right,
    CreateEntity_Spring_Normal_Left,
    CreateEntity_Spring_Big_UpLeft,
    CreateEntity_Spring_Big_UpRight,
    CreateEntity_Spring_Big_DownLeft,
    CreateEntity_Spring_Big_DownRight,
    CreateEntity_Spring_Small_UpLeft,
    CreateEntity_Spring_Small_UpRight,
    CreateEntity_Ramp,
    CreateEntity_Spikes_Up,
    CreateEntity_Spikes_Up,
    CreateEntity_Spikes_Up,
    CreateEntity_Spikes_Up,
    CreateEntity_Spikes_Up,
    CreateEntity_Spikes_Up,
    CreateEntity_GrindRail_Start,
    CreateEntity_GrindRail_StartAir,
    CreateEntity_GrindRail_EndGround,
    CreateEntity_GrindRail_End_ForcedJump,
    CreateEntity_GrindRail_EndAlternate,
    CreateEntity_GrindRail_EndAir,
    CreateEntity_GrindRail_EndGround_Left,
    CreateEntity_GrindRail_EndAir_Left,
    CreateEntity_MysteryItemBox,
    CreateEntity_MultiplayerTeleport,
};

const StagePreInitFunc gSpriteTileInits_PreStageEntry[] = {
    NULL,        NULL,        NULL, NULL, // Leaf Forest
    NULL,        NULL,        NULL, NULL, // Hot Crater
    NULL,        NULL,        NULL, NULL, // Music Plant
    NULL,        NULL,        NULL, NULL, // Ice Paradise
    sub_80807CC, sub_80807CC, NULL, NULL, // Sky Canyon
    NULL,        NULL,        NULL, NULL, // Techno Base
    NULL,        NULL,        NULL, NULL, // Egg Utopia
    NULL,        NULL,        NULL, NULL, // Final Zone
    NULL,        NULL,
};
#endif

void CreateStageEntitiesManager(void)
{
    void *decompBuf;
    struct Task *t;
    EntitiesManager *em;
    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        t = TaskCreate(SA2_LABEL(Task_8008DCC), sizeof(EntitiesManager), 0x2000, 0, SA2_LABEL(TaskDestructor_80095FC));
    } else {
        t = TaskCreate(SA2_LABEL(Task_8008DCC), sizeof(EntitiesManager), 0x2000, 0, NULL);
    }

    em = TASK_DATA(t);

    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
        decompBuf = EwramMalloc(gSpritePosData_interactables[gCurrentLevel]->size);
        RLUnCompWram(gSpritePosData_interactables[gCurrentLevel], decompBuf);
        em->interactables = decompBuf;

        decompBuf = EwramMalloc(gSpritePosData_itemboxes[gCurrentLevel]->size);
        RLUnCompWram(gSpritePosData_itemboxes[gCurrentLevel], decompBuf);
        em->items = decompBuf;

        decompBuf = EwramMalloc(gSpritePosData_enemies[gCurrentLevel]->size);
        RLUnCompWram(gSpritePosData_enemies[gCurrentLevel], decompBuf);
        em->enemies = decompBuf;

#if (GAME == GAME_SA2)
        em->preInit = NULL;

        if (gSpriteTileInits_PreStageEntry[gCurrentLevel]) {
            em->preInit = gSpriteTileInits_PreStageEntry[gCurrentLevel]();
        }
#endif
    } else {
        decompBuf = (void *)EWRAM_START + 0x3F000;
        RLUnCompWram(*(void **)((void *)EWRAM_START + 0x3300C), decompBuf);
        em->interactables = decompBuf;
    }

    em->prevCamX = gCamera.x;
    em->prevCamY = gCamera.y;
    em->SA2_LABEL(unk14) = 1;
    gEntitiesManagerTask = t;
}

// NOTE: Not aligned with SA2, matches there.
// (94.91%) https://decomp.me/scratch/88ibj
NONMATCH("asm/non_matching/game/sa1_sa2_shared/ent_manager__SpawnMapEntities.inc", void SpawnMapEntities())
{
// Required to be here to help the stack match
#ifndef NON_MATCHING
    u32 temp, space;
#endif

    if ((gStageFlags & 2) == 0) {
        u32 i;
        u16 regionX, regionY;
        struct Range rangeData;
        struct Range *range;
        u32 h_regionCount, v_regionCount;

        EntitiesManager *em = TASK_DATA(gCurTask);
        u32 *interactables;
        u32 *itemBoxPositions;
        u32 *enemyPositions;

        interactables = (u32 *)em->interactables;
        if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
            enemyPositions = em->enemies->offsets;
            itemBoxPositions = em->items->offsets;
        }

        interactables++;
#ifndef NON_MATCHING
        h_regionCount = (u16)(temp = *interactables++);
#else
        h_regionCount = (u16)*interactables++;
#endif
        v_regionCount = (u16)*interactables++;

        range = &rangeData;
        range->xLow = gCamera.x - 128;
        range->xHigh = gCamera.x + (DISPLAY_WIDTH + 128);

        range->yLow = gCamera.y - 128;
        range->yHigh = gCamera.y + (DISPLAY_HEIGHT + 128);

        if (range->xLow < 0) {
            range->xLow = 0;
        }
        if (range->yLow < 0) {
            range->yLow = 0;
        }
        if (range->xHigh < 0) {
            range->xHigh = 0;
        }
        if (range->yHigh < 0) {
            range->yHigh = 0;
        }

        if ((u32)range->xLow >= Q(h_regionCount)) {
            range->xLow = Q(h_regionCount) - 1;
        }
        if ((u32)range->yLow >= Q(v_regionCount)) {
            range->yLow = Q(v_regionCount) - 1;
        }

        if ((u32)range->xHigh >= Q(h_regionCount)) {
            range->xHigh = Q(h_regionCount) - 1;
        }

        if ((u32)range->yHigh >= Q(v_regionCount)) {
            range->yHigh = Q(v_regionCount) - 1;
        }

        regionY = I(range->yLow);
        while (Q(regionY) < range->yHigh && regionY < v_regionCount) {
            regionX = I(range->xLow);
            while (Q(regionX) < range->xHigh && regionX < h_regionCount) {
                if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
                    i = READ_START_INDEX(interactables, h_regionCount, regionX, regionY);
                    if (i != 0) {
                        MapEntity *me = ((void *)interactables + (i - 8));
                        for (i = 0; (s8)me->x != -1; me++, i++) {
                            if ((s8)me->x >= -2) {
                                CamCoord x = TO_WORLD_POS(me->x, regionX);
                                CamCoord y = TO_WORLD_POS(me->y, regionY);
                                if (x >= range->xLow && x <= range->xHigh && y >= range->yLow && y <= range->yHigh) {
                                    gSpriteInits_Interactables[me->index](me, regionX, regionY, i);
                                }
                            }
                        }
                    }

                    i = READ_START_INDEX(itemBoxPositions, h_regionCount, regionX, regionY);
                    if (i != 0) {
                        MapEntity_Itembox *me = ((void *)itemBoxPositions + (i - 8));
                        for (i = 0; (s8)me->x != -1; me++, i++) {
                            if ((s8)me->x >= -2) {
                                CamCoord x = TO_WORLD_POS(me->x, regionX);
                                CamCoord y = TO_WORLD_POS(me->y, regionY);
                                if (x >= range->xLow && x <= range->xHigh && y >= range->yLow && y <= range->yHigh) {
                                    CreateEntity_ItemBox((void *)me, regionX, regionY, i);
                                }
                            }
                        }
                    }

                    i = READ_START_INDEX(enemyPositions, h_regionCount, regionX, regionY);
                    if (i != 0) {
                        MapEntity *me = ((void *)enemyPositions + (i - 8));
                        for (i = 0; (s8)me->x != -1; me++, i++) {

                            if ((s8)me->x >= -2) {
                                CamCoord x = TO_WORLD_POS(me->x, regionX);
                                CamCoord y = TO_WORLD_POS(me->y, regionY);
                                if (x >= range->xLow && x <= range->xHigh && y >= range->yLow && y <= range->yHigh) {
                                    gSpriteInits_Enemies[me->index](me, regionX, regionY, i);
                                }
                            }
                        }
                    }
                } else {
                    i = READ_START_INDEX(interactables, h_regionCount, regionX, regionY);
                    if (i != 0) {
                        MapEntity *me = ((void *)interactables + (i - 8));
                        for (i = 0; (s8)me->x != -1; me++, i++) {
                            if ((s8)me->x >= -2) {
                                CamCoord x = TO_WORLD_POS(me->x, regionX);
                                CamCoord y = TO_WORLD_POS(me->y, regionY);
                                if (x >= range->xLow && x <= range->xHigh && y >= range->yLow && y <= range->yHigh) {
                                    gSpriteInits_InteractablesMultiplayer[me->index](me, regionX, regionY, i);
                                }
                            }
                        }
                    }
                }
                regionX++;
            }
            regionY++;
        }
        em->prevCamX = gCamera.x;
        em->prevCamY = gCamera.y;
        em->SA2_LABEL(unk14) = 0;
        gCurTask->main = SA2_LABEL(Task_8008DCC);
    }
}
END_NONMATCH

#if (GAME == GAME_SA1)
// (89.13%) https://decomp.me/scratch/pvPFD
NONMATCH("asm/non_matching/game/sa1_sa2_shared/ent_manager__Task_8008DCC.inc", void SA2_LABEL(Task_8008DCC)(void))
#else
void SA2_LABEL(Task_8008DCC)(void)
#endif
{
#ifndef NON_MATCHING
    struct Range *newRange2Ptr;
#endif
    if (!(gStageFlags & 2)) {
        u32 i;

        u16 regionX, regionY;

#if (GAME == GAME_SA1)
        // This matches more in SA1, but not at all in SA2, and vice versa.
        struct Ranges ranges;

#define RANGE1 ranges.a
#define RANGE2 ranges.b
#elif (GAME == GAME_SA2)
        struct Range range1;
        struct Range range2;

#define RANGE1 range1
#define RANGE2 range2
#endif

        u32 h_regionCount, v_regionCount;

        EntitiesManager *em = TASK_DATA(gCurTask);
        u32 temp, temp2, temp3, temp4;
        u32 *interactables;
        u32 *itemBoxPositions;
        u32 *enemyPositions;

        if (em->SA2_LABEL(unk14) != 0) {
            SpawnMapEntities();
            return;
        }
        if (ABS(gCamera.x - em->prevCamX) > 248) {
            SpawnMapEntities();
            return;
        }
        if (ABS(gCamera.y - em->prevCamY) > 208) {
            SpawnMapEntities();
            return;
        }

        interactables = (u32 *)em->interactables;
        if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
            enemyPositions = em->enemies->offsets;
            itemBoxPositions = em->items->offsets;
        }

        interactables++;
        h_regionCount = (u16)*interactables++;
        v_regionCount = (u16)*interactables++;

        if (gCamera.x > em->prevCamX) {
            RANGE1.xLow = em->prevCamX + (DISPLAY_WIDTH + 128);
            RANGE1.xHigh = gCamera.x + (DISPLAY_WIDTH + 128);

#if TAS_TESTING && TAS_TESTING_WIDESCREEN_HACK && DISPLAY_WIDTH > 240
            if (LEVEL_TO_ZONE(gCurrentLevel) == ZONE_3) {
                // HACK: in zone 3 the TAS we are using depends on going so far off the screen
                // that some IAs do not spawn and so it gets to skip them. We have to emulate
                // that behaviour so that we can test the TAS in widescreen
                RANGE1.xLow = em->prevCamX + (426 + 45);
                RANGE1.xHigh = gCamera.x + (426 + 45);
            } else if (gCurrentLevel == LEVEL_INDEX(ZONE_4, ACT_2)) {
                // In this stage there is a pen which initialises earlier
                // than the TAS expects, so this limits that
                RANGE1.xLow = em->prevCamX + (426 + 80);
                RANGE1.xHigh = gCamera.x + (426 + 80);
            } else if (gCurrentLevel == LEVEL_INDEX(ZONE_5, ACT_1)) {
                // In this stage there are some birds which initialise early
                RANGE1.xLow = em->prevCamX + (240 + 128);
                RANGE1.xHigh = gCamera.x + (240 + 128);
            } else if (gCurrentLevel == LEVEL_INDEX(ZONE_6, ACT_1)) {
                // In this stage some robot bird thing jumps too early
                RANGE1.xLow = em->prevCamX + (426 + 35);
                RANGE1.xHigh = gCamera.x + (426 + 35);
            } else if (gCurrentLevel == LEVEL_INDEX(ZONE_7, ACT_1)) {
                // Some spike thing generates too early
                RANGE1.xLow = em->prevCamX + (426 + 35);
                RANGE1.xHigh = gCamera.x + (426 + 35);
            } else if (gCurrentLevel == LEVEL_INDEX(ZONE_7, ACT_2)) {
                // A grind rail generates too early
                RANGE1.xLow = em->prevCamX + (426 + 40);
                RANGE1.xHigh = gCamera.x + (426 + 40);
            }
#endif
        } else {
            RANGE1.xLow = gCamera.x - 128;
            RANGE1.xHigh = em->prevCamX - 128;
        }

        if (em->SA2_LABEL(unk14) != 0) {
            SpawnMapEntities();
            return;
        }

        RANGE1.yLow = gCamera.y - 128;
        RANGE1.yHigh = gCamera.y + (DISPLAY_HEIGHT + 128);

        if (gCamera.y > em->prevCamY) {
            RANGE2.yLow = em->prevCamY + (DISPLAY_HEIGHT + 128);
            RANGE2.yHigh = gCamera.y + (DISPLAY_HEIGHT + 128);
        } else {
            RANGE2.yLow = gCamera.y - 128;
            RANGE2.yHigh = em->prevCamY - 128;
        }

        RANGE2.xLow = gCamera.x - 128;
        RANGE2.xHigh = gCamera.x + (DISPLAY_WIDTH + 128);
#if TAS_TESTING && TAS_TESTING_WIDESCREEN_HACK && DISPLAY_WIDTH > 240
        if (LEVEL_TO_ZONE(gCurrentLevel) == ZONE_3) {
            RANGE2.xHigh = gCamera.x + (426 + 45);
        } else if (gCurrentLevel == LEVEL_INDEX(ZONE_4, ACT_2)) {
            RANGE2.xHigh = gCamera.x + (426 + 80);
        } else if (gCurrentLevel == LEVEL_INDEX(ZONE_5, ACT_1)) {
            RANGE2.xHigh = gCamera.x + (240 + 128);
        } else if (gCurrentLevel == LEVEL_INDEX(ZONE_6, ACT_1)) {
            RANGE2.xHigh = gCamera.x + (426 + 35);
        } else if (gCurrentLevel == LEVEL_INDEX(ZONE_7, ACT_1)) {
            RANGE2.xHigh = gCamera.x + (426 + 35);
        } else if (gCurrentLevel == LEVEL_INDEX(ZONE_7, ACT_2)) {
            RANGE2.xHigh = gCamera.x + (426 + 40);
        }
#endif

        if (RANGE1.xLow < 0) {
            RANGE1.xLow = 0;
        }
        if (RANGE1.yLow < 0) {
            RANGE1.yLow = 0;
        }
        if (RANGE1.xHigh < 0) {
            RANGE1.xHigh = 0;
        }

        if (RANGE1.yHigh < 0) {
            RANGE1.yHigh = 0;
        }

        temp2 = RANGE1.xLow;
        temp = Q(h_regionCount);
        if (temp2 >= temp) {
            RANGE1.xLow = temp - 1;
        }

        temp3 = RANGE1.yLow;
        temp4 = Q(v_regionCount);

        if (temp3 >= temp4) {
            RANGE1.yLow = temp4 - 1;
        }

        if (RANGE1.xHigh >= temp) {
            RANGE1.xHigh = temp - 1;
        }

        if (RANGE1.yHigh >= temp4) {
            RANGE1.yHigh = temp4 - 1;
        }

        if (RANGE2.xLow < 0) {
            RANGE2.xLow = 0;
        }

        if (RANGE2.yLow < 0) {
            RANGE2.yLow = 0;
        }

        if (RANGE2.xHigh < 0) {
            RANGE2.xHigh = 0;
        }

        if (RANGE2.yHigh < 0) {
            RANGE2.yHigh = 0;
        }

        if (RANGE2.xLow >= temp) {
            RANGE2.xLow = temp - 1;
        }

        if (RANGE2.yLow >= temp4) {
            RANGE2.yLow = temp4 - 1;
        }

        if (RANGE2.xHigh >= temp) {
            RANGE2.xHigh = temp - 1;
        }

        if (RANGE2.yHigh >= temp4) {
            RANGE2.yHigh = temp4 - 1;
        }

        // Hack to fix a stack mismatch, must be placed here
#ifndef NON_MATCHING
        newRange2Ptr = &RANGE2;
#endif

        if (gCamera.x != em->prevCamX && RANGE1.xLow != RANGE1.xHigh && RANGE1.yLow != RANGE1.yHigh) {
            regionY = I(RANGE1.yLow);

            while (Q(regionY) < RANGE1.yHigh && regionY < v_regionCount) {
                regionX = I(RANGE1.xLow);
                while (Q(regionX) < RANGE1.xHigh && regionX < h_regionCount) {
                    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
                        i = READ_START_INDEX(interactables, h_regionCount, regionX, regionY);
                        if (i != 0) {
                            MapEntity *me = ((void *)interactables + (i - 8));
                            for (i = 0; (s8)me->x != -1; me++, i++) {
                                if ((s8)me->x >= -2) {
                                    CamCoord x = TO_WORLD_POS(me->x, regionX);
                                    CamCoord y = TO_WORLD_POS(me->y, regionY);
                                    if (x >= RANGE1.xLow && x <= RANGE1.xHigh && y >= RANGE1.yLow && y <= RANGE1.yHigh) {
                                        gSpriteInits_Interactables[me->index](me, regionX, regionY, i);
                                    }
                                }
                            }
                        }

                        i = READ_START_INDEX(itemBoxPositions, h_regionCount, regionX, regionY);
                        if (i != 0) {
                            MapEntity_Itembox *me = ((void *)itemBoxPositions + (i - 8));
                            for (i = 0; (s8)me->x != -1; me++, i++) {
                                if ((s8)me->x >= -2) {
                                    CamCoord x = TO_WORLD_POS(me->x, regionX);
                                    CamCoord y = TO_WORLD_POS(me->y, regionY);
                                    if (x >= RANGE1.xLow && x <= RANGE1.xHigh && y >= RANGE1.yLow && y <= RANGE1.yHigh) {
                                        CreateEntity_ItemBox((MapEntity *)me, regionX, regionY, i);
                                    }
                                }
                            }
                        }

                        i = READ_START_INDEX(enemyPositions, h_regionCount, regionX, regionY);
                        if (i != 0) {
                            MapEntity *me = ((void *)enemyPositions + (i - 8));
                            for (i = 0; (s8)me->x != -1; me++, i++) {
                                if ((s8)me->x >= -2) {
                                    CamCoord x = TO_WORLD_POS(me->x, regionX);
                                    CamCoord y = TO_WORLD_POS(me->y, regionY);
                                    if (x >= RANGE1.xLow && x <= RANGE1.xHigh && y >= RANGE1.yLow && y <= RANGE1.yHigh) {
                                        gSpriteInits_Enemies[me->index](me, regionX, regionY, i);
                                    }
                                }
                            }
                        }
                    } else {
                        i = READ_START_INDEX(interactables, h_regionCount, regionX, regionY);
                        if (i != 0) {
                            MapEntity *me = ((void *)interactables + (i - 8));
                            for (i = 0; (s8)me->x != -1; me++, i++) {
                                if ((s8)me->x >= -2) {
                                    CamCoord x = TO_WORLD_POS(me->x, regionX);
                                    CamCoord y = TO_WORLD_POS(me->y, regionY);
                                    if (x >= RANGE1.xLow && x <= RANGE1.xHigh && y >= RANGE1.yLow && y <= RANGE1.yHigh) {
                                        gSpriteInits_InteractablesMultiplayer[me->index](me, regionX, regionY, i);
                                    }
                                }
                            }
                        }
                    }
                    regionX++;
                }
                regionY++;
            }
        }

#ifndef NON_MATCHING
        if (((gCamera.y != em->prevCamY) && ((*newRange2Ptr).yLow != (*newRange2Ptr).yHigh)) && (RANGE2.xLow != (*newRange2Ptr).xHigh)) {
            regionY = I((*newRange2Ptr).yLow);
            while (Q(regionY) < (*newRange2Ptr).yHigh && regionY < v_regionCount) {
#else
        if (((gCamera.y != em->prevCamY) && (RANGE2.yLow != RANGE2.yHigh)) && (RANGE2.xLow != RANGE2.xHigh)) {
            regionY = I(RANGE2.yLow);
            while (Q(regionY) < RANGE2.yHigh && regionY < v_regionCount) {
#endif
                regionX = I(RANGE2.xLow);
                while (Q(regionX) < RANGE2.xHigh && regionX < h_regionCount) {
                    if (gGameMode != GAME_MODE_MULTI_PLAYER_COLLECT_RINGS) {
                        i = READ_START_INDEX(interactables, h_regionCount, regionX, regionY);
                        if (i != 0) {
                            MapEntity *me = ((void *)interactables + (i - 8));
                            for (i = 0; (s8)me->x != -1; me++, i++) {
                                if ((s8)me->x >= -2) {
                                    CamCoord x = TO_WORLD_POS(me->x, regionX);
                                    CamCoord y = TO_WORLD_POS(me->y, regionY);
                                    if (x >= RANGE2.xLow && x <= RANGE2.xHigh && y >= RANGE2.yLow && y <= RANGE2.yHigh) {
                                        gSpriteInits_Interactables[me->index](me, regionX, regionY, i);
                                    }
                                }
                            }
                        }

                        i = READ_START_INDEX(itemBoxPositions, h_regionCount, regionX, regionY);
                        if (i != 0) {
                            MapEntity_Itembox *me = ((void *)itemBoxPositions + (i - 8));
                            for (i = 0; (s8)me->x != -1; me++, i++) {
                                if ((s8)me->x >= -2) {
                                    CamCoord x = TO_WORLD_POS(me->x, regionX);
                                    CamCoord y = TO_WORLD_POS(me->y, regionY);
                                    if (x >= RANGE2.xLow && x <= RANGE2.xHigh && y >= RANGE2.yLow && y <= RANGE2.yHigh) {
                                        CreateEntity_ItemBox((MapEntity *)me, regionX, regionY, i);
                                    }
                                }
                            }
                        }

                        i = READ_START_INDEX(enemyPositions, h_regionCount, regionX, regionY);
                        if (i != 0) {
                            MapEntity *me = ((void *)enemyPositions + (i - 8));
                            for (i = 0; (s8)me->x != -1; me++, i++) {
                                if ((s8)me->x >= -2) {
                                    CamCoord x = TO_WORLD_POS(me->x, regionX);
                                    CamCoord y = TO_WORLD_POS(me->y, regionY);
                                    if (x >= RANGE2.xLow && x <= RANGE2.xHigh && y >= RANGE2.yLow && y <= RANGE2.yHigh) {
                                        gSpriteInits_Enemies[me->index](me, regionX, regionY, i);
                                    }
                                }
                            }
                        }
                    } else {
                        i = READ_START_INDEX(interactables, h_regionCount, regionX, regionY);
                        if (i != 0) {
                            MapEntity *me = ((void *)interactables + (i - 8));
                            for (i = 0; (s8)me->x != -1; me++, i++) {
                                if ((s8)me->x >= -2) {
                                    CamCoord x = TO_WORLD_POS(me->x, regionX);
                                    CamCoord y = TO_WORLD_POS(me->y, regionY);
                                    if (x >= RANGE2.xLow && x <= RANGE2.xHigh && y >= RANGE2.yLow && y <= RANGE2.yHigh) {
                                        gSpriteInits_InteractablesMultiplayer[me->index](me, regionX, regionY, i);
                                    }
                                }
                            }
                        }
                    }
                    regionX++;
                }
                regionY++;
            }
        }
        em->prevCamX = gCamera.x;
        em->prevCamY = gCamera.y;
    }
}
#if (GAME == GAME_SA1)
END_NONMATCH
#endif

void CreateEnemyDefeatScoreAndManageLives(s16 x, s16 y)
{
    u32 old;
    u32 temp1;
    u32 temp2;
    m4aSongNumStart(SE_ITEM_BOX);

    INCREMENT_SCORE(enemyDefeatScores[gPlayer.defeatScoreIndex]);

    CreateEnemyDefeatScore(x, y);

    // NOTE: This should be (ARRAY_COUNT(enemyDefeatScores) - 1)
    //       But padding makes it (6-1) instead of (5-1),
    //       hence the macro.
    if (gPlayer.defeatScoreIndex < (NUM_ENEMY_DEFEAT_SCORES - 1)) {
        gPlayer.defeatScoreIndex++;
    }
}

// SA2: TaskDestructor_80095E8
void TaskDestructor_EntityShared(struct Task *t)
{
    EntityShared *entity = TASK_DATA(t);
    VramFree(entity->s.graphics.dest);
}

void SA2_LABEL(TaskDestructor_80095FC)(struct Task *t)
{
    EntitiesManager *em = TASK_DATA(t);
    EwramFree(em->interactables);
    EwramFree(em->items);
    EwramFree(em->enemies);
    gEntitiesManagerTask = NULL;
}
