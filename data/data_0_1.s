    .include "asm/macros/portable.inc"

	.section .rodata

    .global gSpriteInits_Interactables
gSpriteInits_Interactables:     @ 0x080BB064
    mPtr CreateEntity_StageGoal               @ 000
    mPtr CreateEntity_Spikes_Up               @ 001
    mPtr CreateEntity_Spikes_Down             @ 002
    mPtr CreateEntity_Spikes_Horizontal       @ 003 - Left
    mPtr CreateEntity_Spikes_Horizontal       @ 004 - Right
    mPtr CreateEntity_Spikes_HidingUp         @ 005
    mPtr CreateEntity_Spikes_HidingDown       @ 006
    mPtr CreateEntity_Checkpoint              @ 007
    mPtr CreateEntity_Spring_Normal_Up        @ 008
    mPtr CreateEntity_Spring_Normal_Down      @ 009
    mPtr CreateEntity_Spring_Horizontal       @ 010 - Left
    mPtr CreateEntity_Spring_Horizontal       @ 011 - Right
    mPtr CreateEntity_Spring_Big_Up           @ 012 - Up-Left
    mPtr CreateEntity_Spring_Big_Up           @ 013 - Up-Right
    mPtr CreateEntity_Spring_Small_Up         @ 014 - Up-Left
    mPtr CreateEntity_Spring_Small_Up         @ 015 - Up-Right
    mPtr CreateEntity_Decoration              @ 016
    mPtr CreateEntity_Toggle_PlayerLayer      @ 017
    mPtr CreateEntity_Toggle_PlayerLayer      @ 018
    mPtr CreateEntity_GrindRail_Start         @ 019
    mPtr CreateEntity_GrindRail_End           @ 020
    mPtr CreateEntity_PlatformThin            @ 021
    mPtr CreateEntity_PlatformThin_Falling    @ 022
    mPtr CreateEntity_Trampoline              @ 023
    mPtr CreateEntity_PlatformCrumbling       @ 024
    mPtr CreateEntity_BounceBlock             @ 025
    mPtr CreateEntity_InclineRamp             @ 026
    mPtr CreateEntity_Waterfall               @ 027 (Only particles, used for "Sand Falls" as well)
    mPtr CreateEntity_HalfPipeStart           @ 028
    mPtr CreateEntity_HalfPipeEnd             @ 029
    mPtr CreateEntity_Shrubbery               @ 030
    mPtr CreateEntity_Booster                 @ 031
    mPtr CreateEntity_Booster_SlightLeft      @ 032
    mPtr CreateEntity_Booster_SlightRight     @ 033
    mPtr CreateEntity_Interactable034         @ 034
    mPtr CreateEntity_MiniLoop_Base           @ 035
    mPtr CreateEntity_MiniLoop_StartBoost     @ 036
    mPtr CreateEntity_MiniLoop_Exit           @ 037
    mPtr CreateEntity_MiniLoop_Entrance       @ 038
    mPtr CreateEntity_Interactable039         @ 039
    mPtr CreateEntity_WaterBridge             @ 040
    mPtr CreateEntity_ToBeContinuedText       @ 041
    mPtr CreateEntity_RedFlag                 @ 042
    mPtr CreateEntity_WaterBridgeSplash         @ 043
    mPtr CreateEntity_WallPole_Left           @ 044
    mPtr CreateEntity_WallPole_Right          @ 045
    mPtr CreateEntity_ForcedIceSlide          @ 046
    mPtr CreateEntity_Booster_Wall            @ 047
    mPtr CreateEntity_BumperHexagon           @ 048
    mPtr CreateEntity_BumperRound_LinearMov   @ 049
    mPtr CreateEntity_BumperRound_CircularMov @ 050
    mPtr CreateEntity_BumperTriHorizontal     @ 051
    mPtr CreateEntity_BumperTriVertical       @ 052
    mPtr CreateEntity_BumperTriBig            @ 053
    mPtr CreateEntity_Flipper                 @ 054
    mPtr CreateEntity_Platform_Square         @ 055
    mPtr CreateEntity_Flipper_Vertical        @ 056
    mPtr CreateEntity_BarrelOfDoomMini        @ 057
    mPtr CreateEntity_SEGA_SONIC_Letter       @ 058
    mPtr CreateEntity_PartyBalloon            @ 059
    mPtr CreateEntity_ShipSwing               @ 060
    mPtr CreateEntity_Platform_Spiked         @ 061
    mPtr CreateEntity_Bowl                    @ 062
    mPtr CreateEntity_PanelGate_Vertical      @ 063
    mPtr CreateEntity_PanelGate_Horizontal    @ 064
    mPtr CreateEntity_MarbleTrack_Dir         @ 065
    mPtr CreateEntity_MarbleTrack_Unk         @ 066
    mPtr CreateEntity_MarbleTrack_Entrance    @ 067
    mPtr CreateEntity_MarbleTrack_Exit        @ 068
    mPtr CreateEntity_ConveyorBelt            @ 069 Also used for snow in Ice Paradise
    mPtr CreateEntity_Toggle_PlayerVisibility @ 070 (data[0]: 0 = Visible, 1 = Invisible)
    mPtr CreateEntity_WallBumper              @ 071
    mPtr CreateEntity_TeleportOrb             @ 072 (Casino Paradise)
    mPtr CreateEntity_Flipper_SmallBlue       @ 073
    mPtr CreateEntity_Carousel                @ 074
    mPtr CreateEntity_HookRail                @ 075 Hook-Rail
    mPtr CreateEntity_SwingingHook            @ 076
    mPtr CreateEntity_SecurityGate            @ 077
    mPtr CreateEntity_SwingRope               @ 078
    mPtr CreateEntity_SteamExhaust            @ 079
    mPtr CreateEntity_CraneClaw               @ 080
    mPtr CreateEntity_MovingSpring            @ 081 Moving Spring
    mPtr CreateEntity_IronBall                @ 082
    mPtr CreateEntity_HangBar                 @ 083
    mPtr CreateEntity_SkatingStone            @ 084
    mPtr CreateEntity_Interactable085         @ 085
    mPtr CreateEntity_RunWheel                @ 086
    mPtr CreateEntity_Torch                   @ 087 (Cosmic Angel: Antigravity field elements)
    mPtr CreateEntity_Lift                    @ 088
    mPtr CreateEntity_Interactable089         @ 089
    mPtr CreateEntity_PlayerFloat             @ 090 (data[0]: 0 = Whirlwind, 1 = Antigravity)
    mPtr CreateEntity_FerrisWheel             @ 091
    mPtr CreateEntity_BoulderSpawner          @ 092
    mPtr CreateEntity_SpikedBarrel            @ 093
    mPtr CreateEntity_AirBubbles              @ 094
    mPtr CreateEntity_IceBlock                @ 095
    mPtr CreateEntity_Interactable096         @ 096
    mPtr CreateEntity_Interactable097         @ 097
    mPtr CreateEntity_UnderwaterLavaPlatform  @ 098
    mPtr CreateEntity_Interactable099         @ 099
    mPtr CreateEntity_Booster_Steep           @ 100
    mPtr CreateEntity_Booster_Steep2          @ 101
    mPtr CreateEntity_SpecialSpring           @ 102
    mPtr CreateEntity_Propeller   @ 103
    mPtr CreateEntity_SmallFallBlock          @ 104 (X-Zone)
    mPtr CreateEntity_Lava                    @ 105
    mPtr CreateEntity_Track                   @ 106
    mPtr CreateEntity_Interactable107         @ 107
    mPtr CreateEntity_Spring_Hiding           @ 108
    mPtr CreateEntity_Interactable109         @ 109
    mPtr CreateEntity_PipeEntrance            @ 110
    mPtr CreateEntity_PipeExit                @ 111
    mPtr CreateEntity_TrackAirCorner          @ 112
    mPtr CreateEntity_Interactable113         @ 113
    mPtr CreateEntity_BreakableWall           @ 114
    mPtr CreateEntity_ItemBox_ChaoHunt        @ 115

    .global gSpriteInits_Enemies
gSpriteInits_Enemies:   @ 80BB234
    mPtr CreateEntity_Kiki            @ 000 Kiki
    mPtr CreateEntity_Buzzer          @ 001 Buzzer
    mPtr CreateEntity_GamiGami        @ 002 GamiGami
    mPtr CreateEntity_Rhinotank       @ 003 Rhinotank
    mPtr CreateEntity_KeroKero        @ 004 KeroKero
    mPtr CreateEntity_Senbon          @ 005 Senbon
    mPtr CreateEntity_Tentou          @ 006 Tentou
    mPtr CreateEntity_Fireball        @ 007 Fireball
    mPtr CreateEntity_Hanabii         @ 008 Hanabii
    mPtr CreateEntity_Slot            @ 009 Slot
    mPtr CreateEntity_Pierrot         @ 010 Pierrot
    mPtr CreateEntity_Leon            @ 011 Leon
    mPtr CreateEntity_Mirror          @ 012 Mirror
    mPtr CreateEntity_Wamu            @ 013 Wamu
    mPtr CreateEntity_Oct             @ 014 Oct
    mPtr CreateEntity_Mole            @ 015 Mole
    mPtr CreateEntity_Yukimaru        @ 016 Yukimaru
    mPtr CreateEntity_Yukimaru_Wall   @ 017 Yukimaru on a wall
    mPtr CreateEntity_Drisame         @ 018 Drisame
    mPtr CreateEntity_Kuraa           @ 019 Kuraa
    mPtr CreateEntity_PenMk1          @ 020 Pen

    mPtr CreateEntity_EggHammerTank_Intro @ 021 Boss 1 Intro
    mPtr CreateEntity_EggHammerTank       @ 022 Boss 1
    mPtr CreateEntity_EggPress            @ 023 Boss 2
    mPtr CreateEntity_EggBall             @ 024 Boss 3
    mPtr CreateEntity_EggSpider           @ 025 Boss 4
    mPtr CreateEntity_MechaKnuckles       @ 026 Boss 5
    mPtr CreateEntity_EggSnake            @ 027 Boss 6
    mPtr CreateEntity_EggWrecker          @ 028 Boss Egg Wrecker (Green Hill)
    mPtr CreateEntity_EggDrillster        @ 029 Boss Egg Drillster (Emerald Hill)
    mPtr CreateEntity_EggX                @ 030 Final Boss
    mPtr CreateEntity_SuperEggRobot       @ 031 Extra Boss

    .global enemyDefeatScores
enemyDefeatScores: @ 0x080BB2B4
    .short 100, 200, 400, 800, 1000, 0

    @ Used for the Single Pak, "Collect Rings" stage
    .global gSpriteInits_InteractablesMultiplayer
gSpriteInits_InteractablesMultiplayer:
    mPtr CreateEntity_Spikes_Up @ 000
    mPtr CreateEntity_Spikes_Down @ 001
    mPtr CreateEntity_Spikes_Horizontal @ 002
    mPtr CreateEntity_Spikes_Horizontal @ 003
    mPtr CreateEntity_Spikes_Up @ 004
    mPtr CreateEntity_Spikes_Down @ 005
    mPtr CreateEntity_Spring_Normal_Up @ 006
    mPtr CreateEntity_Spring_Normal_Down @ 007
    mPtr CreateEntity_Spring_Horizontal @ 008
    mPtr CreateEntity_Spring_Horizontal @ 009
    mPtr CreateEntity_Spring_Big_Up @ 010
    mPtr CreateEntity_Spring_Big_Up @ 011
    mPtr CreateEntity_Toggle_PlayerLayer @ 012
    mPtr CreateEntity_Toggle_PlayerLayer @ 013
    mPtr CreateEntity_PlatformThin @ 014
    mPtr CreateEntity_PlatformThin_Falling @ 015
    mPtr CreateEntity_WaterBridge @ 016
    mPtr CreateEntity_ItemBox_ChaoHunt @ 017

    .global gUnknown_080BB308
gUnknown_080BB308:
    .byte 1, 5, 10, 20, 30, 40, 0, 0

    .global gUnknown_080BB310
gUnknown_080BB310:
    .byte 10, 3, 11, 3

    .global gUnknown_080BB314
gUnknown_080BB314:
    .incbin "baserom.gba", 0x000BB314, 0xA

    .global gUnknown_080BB31E
gUnknown_080BB31E:
    .incbin "baserom.gba", 0x000BB31E, 0x5

    .global gUnknown_080BB323
gUnknown_080BB323:
    .incbin "baserom.gba", 0x000BB323, 0x4

    .global gUnknown_080BB327
gUnknown_080BB327:
    .incbin "baserom.gba", 0x000BB327, 0x5

    .global gUnknown_080BB32C
gUnknown_080BB32C:
    mPtr CreateMultiplayerModeSelectScreen
    mPtr CreateTimeAttackMenu
    mPtr CreateOptionsMenu
    mPtr LoadTinyChaoGarden

    .global gUnknown_080BB33C
gUnknown_080BB33C:
    .incbin "baserom.gba", 0x000BB33C, 0x4
    mAlignWord
