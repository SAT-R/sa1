	.section .rodata

    .global gSpriteInits_Interactables
gSpriteInits_Interactables:     @ 0x080BB064
    .int CreateEntity_StageGoal               @ 000
    .int CreateEntity_Spikes_Up               @ 001
    .int CreateEntity_Spikes_Down             @ 002
    .int CreateEntity_Spikes_Horizontal       @ 003 - Left
    .int CreateEntity_Spikes_Horizontal       @ 004 - Right
    .int CreateEntity_Spikes_HidingUp         @ 005
    .int CreateEntity_Spikes_HidingDown       @ 006
    .int CreateEntity_Checkpoint              @ 007
    .int CreateEntity_Spring_Normal_Up        @ 008
    .int CreateEntity_Spring_Normal_Down      @ 009
    .int CreateEntity_Spring_Horizontal       @ 010 - Left
    .int CreateEntity_Spring_Horizontal       @ 011 - Right
    .int CreateEntity_Spring_Big_Up           @ 012 - Up-Left
    .int CreateEntity_Spring_Big_Up           @ 013 - Up-Right
    .int CreateEntity_Spring_Small_Up         @ 014 - Up-Left
    .int CreateEntity_Spring_Small_Up         @ 015 - Up-Right
    .int CreateEntity_Decoration              @ 016
    .int CreateEntity_Toggle_PlayerLayer      @ 017
    .int CreateEntity_Toggle_PlayerLayer      @ 018
    .int CreateEntity_GrindRail_Start         @ 019
    .int CreateEntity_GrindRail_End           @ 020
    .int CreateEntity_PlatformThin            @ 021
    .int CreateEntity_PlatformThin_Falling    @ 022
    .int CreateEntity_Trampoline              @ 023
    .int CreateEntity_PlatformCrumbling       @ 024
    .int CreateEntity_BounceBlock             @ 025
    .int CreateEntity_InclineRamp             @ 026
    .int CreateEntity_Waterfall               @ 027 (Only particles, used for "Sand Falls" as well)
    .int CreateEntity_HalfPipeStart           @ 028
    .int CreateEntity_HalfPipeEnd             @ 029
    .int CreateEntity_Shrubbery               @ 030
    .int CreateEntity_Booster                 @ 031
    .int CreateEntity_Booster_SlightLeft      @ 032
    .int CreateEntity_Booster_SlightRight     @ 033
    .int CreateEntity_Interactable034         @ 034
    .int CreateEntity_MiniLoop_Base           @ 035
    .int CreateEntity_MiniLoop_StartBoost     @ 036
    .int CreateEntity_MiniLoop_Exit           @ 037
    .int CreateEntity_MiniLoop_Entrance       @ 038
    .int CreateEntity_Interactable039         @ 039
    .int CreateEntity_WaterBridge             @ 040
    .int CreateEntity_ToBeContinuedText       @ 041
    .int CreateEntity_RedFlag                 @ 042
    .int CreateEntity_Interactable043         @ 043
    .int CreateEntity_WallPole_Left           @ 044
    .int CreateEntity_WallPole_Right          @ 045
    .int CreateEntity_ForcedIceSlide          @ 046
    .int CreateEntity_Booster_Wall            @ 047
    .int CreateEntity_BumperHexagon           @ 048
    .int CreateEntity_BumperRound_LinearMov   @ 049
    .int CreateEntity_BumperRound_CircularMov @ 050
    .int CreateEntity_BumperTriHorizontal     @ 051
    .int CreateEntity_BumperTriVertical       @ 052
    .int CreateEntity_BumperTriBig            @ 053
    .int CreateEntity_Flipper                 @ 054
    .int CreateEntity_Platform_Square         @ 055
    .int CreateEntity_Flipper_Vertical        @ 056
    .int CreateEntity_BarrelOfDoomMini        @ 057
    .int CreateEntity_SEGA_SONIC_Letter       @ 058
    .int CreateEntity_PartyBalloon            @ 059
    .int CreateEntity_ShipSwing               @ 060
    .int CreateEntity_Platform_Spiked         @ 061
    .int CreateEntity_Bowl                    @ 062
    .int CreateEntity_PanelGate_Vertical      @ 063
    .int CreateEntity_PanelGate_Horizontal    @ 064
    .int CreateEntity_MarbleTrack_Dir         @ 065
    .int CreateEntity_MarbleTrack_Unk         @ 066
    .int CreateEntity_MarbleTrack_Entrance    @ 067
    .int CreateEntity_MarbleTrack_Exit        @ 068
    .int CreateEntity_ConveyorBelt            @ 069 Also used for snow in Ice Paradise
    .int CreateEntity_Toggle_PlayerVisibility @ 070 (data[0]: 0 = Visible, 1 = Invisible)
    .int CreateEntity_WallBumper              @ 071
    .int CreateEntity_TeleportOrb             @ 072 (Casino Paradise)
    .int CreateEntity_Flipper_SmallBlue       @ 073
    .int CreateEntity_Carousel                @ 074
    .int CreateEntity_HookRail                @ 075 Hook-Rail
    .int CreateEntity_SwingingHook            @ 076
    .int CreateEntity_SecurityGate            @ 077
    .int CreateEntity_SwingRope               @ 078
    .int CreateEntity_SteamExhaust            @ 079
    .int CreateEntity_CraneClaw               @ 080
    .int CreateEntity_MovingSpring            @ 081 Moving Spring
    .int CreateEntity_IronBall                @ 082
    .int CreateEntity_HangBar                 @ 083
    .int CreateEntity_SkatingStone            @ 084
    .int CreateEntity_Interactable085         @ 085
    .int CreateEntity_RunWheel                @ 086
    .int CreateEntity_Torch                   @ 087 (Cosmic Angel: Antigravity field elements)
    .int CreateEntity_Lift                    @ 088
    .int CreateEntity_Interactable089         @ 089
    .int CreateEntity_PlayerFloat             @ 090 (data[0]: 0 = Whirlwind, 1 = Antigravity)
    .int CreateEntity_FerrisWheel             @ 091
    .int CreateEntity_BoulderSpawner          @ 092
    .int CreateEntity_SpikedBarrel            @ 093
    .int CreateEntity_AirBubbles              @ 094
    .int CreateEntity_IceBlock                @ 095
    .int CreateEntity_Interactable096         @ 096
    .int CreateEntity_Interactable097         @ 097
    .int CreateEntity_UnderwaterLavaPlatform  @ 098
    .int CreateEntity_Interactable099         @ 099
    .int CreateEntity_Booster_Steep           @ 100
    .int CreateEntity_Booster_Steep2          @ 101
    .int CreateEntity_SpecialSpring           @ 102
    .int CreateEntity_SpikedBarrel_ChaoHunt   @ 103
    .int CreateEntity_SmallFallBlock          @ 104 (X-Zone)
    .int CreateEntity_Lava                    @ 105
    .int CreateEntity_Track                   @ 106
    .int CreateEntity_Interactable107         @ 107
    .int CreateEntity_Spring_Hiding           @ 108
    .int CreateEntity_Interactable109         @ 109
    .int CreateEntity_PipeEntrance            @ 110
    .int CreateEntity_PipeExit                @ 111
    .int CreateEntity_TrackAirCorner          @ 112
    .int CreateEntity_Interactable113         @ 113
    .int CreateEntity_BreakableWall           @ 114
    .int CreateEntity_ItemBox_ChaoHunt        @ 115

    .global gSpriteInits_Enemies
gSpriteInits_Enemies:   @ 80BB234
    .int CreateEntity_Kiki            @ 000 Kiki
    .int CreateEntity_Buzzer          @ 001 Buzzer
    .int CreateEntity_GamiGami        @ 002 GamiGami
    .int CreateEntity_Rhinotank       @ 003 Rhinotank
    .int CreateEntity_KeroKero        @ 004 KeroKero
    .int CreateEntity_Senbon          @ 005 Senbon
    .int CreateEntity_Tentou          @ 006 Tentou
    .int CreateEntity_Fireball        @ 007 Fireball
    .int CreateEntity_Hanabii         @ 008 Hanabii
    .int CreateEntity_Slot            @ 009 Slot
    .int CreateEntity_Pierrot         @ 010 Pierrot
    .int CreateEntity_Leon            @ 011 Leon
    .int CreateEntity_Mirror          @ 012 Mirror
    .int CreateEntity_Wamu            @ 013 Wamu
    .int CreateEntity_Oct             @ 014 Oct
    .int CreateEntity_Mole            @ 015 Mole
    .int CreateEntity_Yukimaru        @ 016 Yukimaru
    .int CreateEntity_Yukimaru_Wall   @ 017 Yukimaru on a wall
    .int CreateEntity_Drisame         @ 018 Drisame
    .int CreateEntity_Kuraa           @ 019 Kuraa
    .int CreateEntity_PenMk1          @ 020 Pen

    .int CreateEntity_EggHammerTank_Intro @ 021 Boss 1 Intro
    .int CreateEntity_EggHammerTank       @ 022 Boss 1
    .int CreateEntity_EggPress            @ 023 Boss 2
    .int CreateEntity_EggBall             @ 024 Boss 3
    .int CreateEntity_EggSpider           @ 025 Boss 4
    .int CreateEntity_MechaKnuckles       @ 026 Boss 5
    .int CreateEntity_EggSnake            @ 027 Boss 6
    .int CreateEntity_EggWrecker          @ 028 Boss Egg Wrecker (Green Hill)
    .int CreateEntity_EggDrillster        @ 029 Boss Egg Drillster (Emerald Hill)
    .int CreateEntity_EggX                @ 030 Final Boss
    .int CreateEntity_SuperEggRobot       @ 031 Extra Boss

    .global enemyDefeatScores
enemyDefeatScores: @ 0x080BB2B4
    .2byte 100, 200, 400, 800, 1000, 0

    @ Used for the Single Pak, "Collect Rings" stage
    .global gSpriteInits_InteractablesMultiplayer
gSpriteInits_InteractablesMultiplayer:
    .int CreateEntity_Spikes_Up @ 000
    .int CreateEntity_Spikes_Down @ 001
    .int CreateEntity_Spikes_Horizontal @ 002
    .int CreateEntity_Spikes_Horizontal @ 003
    .int CreateEntity_Spikes_Up @ 004
    .int CreateEntity_Spikes_Down @ 005
    .int CreateEntity_Spring_Normal_Up @ 006
    .int CreateEntity_Spring_Normal_Down @ 007
    .int CreateEntity_Spring_Horizontal @ 008
    .int CreateEntity_Spring_Horizontal @ 009
    .int CreateEntity_Spring_Big_Up @ 010
    .int CreateEntity_Spring_Big_Up @ 011
    .int CreateEntity_Toggle_PlayerLayer @ 012
    .int CreateEntity_Toggle_PlayerLayer @ 013
    .int CreateEntity_PlatformThin @ 014
    .int CreateEntity_PlatformThin_Falling @ 015
    .int CreateEntity_WaterBridge @ 016
    .int CreateEntity_ItemBox_ChaoHunt @ 017

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
    .int CreateMultiplayerModeSelectScreen, CreateTimeAttackMenu, CreateOptionsMenu, LoadTinyChaoGarden

    .global gUnknown_080BB33C
gUnknown_080BB33C:
    .incbin "baserom.gba", 0x000BB33C, 0x4

    .global gUnknown_080BB340
gUnknown_080BB340:
    .ascii "STAGE\0"
    .byte 0, 0

    .global gUnknown_080BB348
gUnknown_080BB348:
    .incbin "baserom.gba", 0x000BB348, 0x4

    .global gUnknown_080BB34C
gUnknown_080BB34C:
    .incbin "baserom.gba", 0x000BB34C, 0x4

    .global gUnknown_080BB350
gUnknown_080BB350:
    .incbin "baserom.gba", 0x000BB350, 0x4

    .global gUnknown_080BB354
gUnknown_080BB354:
    .int sub_800E934, sub_800F318

    .global gUnknown_080BB35C
gUnknown_080BB35C:
    .incbin "baserom.gba", 0x000BB35C, 0x4

    .global gUnknown_080BB360
gUnknown_080BB360:
    .incbin "baserom.gba", 0x000BB360, 0x4

    .global gUnknown_080BB364
gUnknown_080BB364:
    .incbin "baserom.gba", 0x000BB364, 0x8

    .global gUnknown_080BB36C
gUnknown_080BB36C:
    .incbin "baserom.gba", 0x000BB36C, 0x4

    .global gUnknown_080BB370
gUnknown_080BB370:
    .incbin "baserom.gba", 0x000BB370, 0x8

    .global gUnknown_080BB378
gUnknown_080BB378:
    .incbin "baserom.gba", 0x000BB378, 0x4

    .global gUnknown_080BB37C
gUnknown_080BB37C:
    .incbin "baserom.gba", 0x000BB37C, 0x2

    .global gUnknown_080BB37E
gUnknown_080BB37E:
    .incbin "baserom.gba", 0x000BB37E, 0x2

    .global gUnknown_080BB380
gUnknown_080BB380:
    .incbin "baserom.gba", 0x000BB380, 0x2

    .global gUnknown_080BB382
gUnknown_080BB382:
    .incbin "baserom.gba", 0x000BB382, 0x8

    .global gUnknown_080BB38A
gUnknown_080BB38A:
    .incbin "baserom.gba", 0x000BB38A, 0x4

    .global gUnknown_080BB38E
gUnknown_080BB38E:
    .incbin "baserom.gba", 0x000BB38E, 0x12

    .global gUnknown_080BB3A0
gUnknown_080BB3A0:
    .int sub_801166C, sub_8011684, sub_80116A0, sub_80116BC
    .int sub_80116D8, sub_801171C, sub_801104C, sub_8011738

    .global gUnknown_080BB3C0
gUnknown_080BB3C0:
    .2byte 869, 868

    .global gUnknown_080BB3C4
gUnknown_080BB3C4:
    .byte 1, 0, 2

    .global gUnknown_080BB3C7
gUnknown_080BB3C7:
    .byte 0x41, 0x59, 0x81

    .global gUnknown_080BB3CA
gUnknown_080BB3CA:
    .byte 8, 18, 14, 0, 0, 0

    .global gUnknown_080BB3D0
gUnknown_080BB3D0:
    .int sub_8011D88, sub_8011DA0, sub_8011DB8

    .global gUnknown_080BB3DC
gUnknown_080BB3DC:
    .2byte 778, 779

    .global gUnknown_080BB3E0
gUnknown_080BB3E0:
    .ascii "FLASH"
    .byte 0xC5, 0xB2, 0xC4, 0x2C, 0xBE, 0xB0, 0xCC, 0xDE, 0xC3, 0xDE, 0xB7
    .byte 0xC5, 0xB2, 0xC3, 0xDE, 0xBD, 0x00, 0x00, 0x00

    .global gUnknown_080BB3F8
gUnknown_080BB3F8:
    .int gMultiboot_087C22F8, gUnknown_087CA2F8
    .int gUnknown_087D22F8, gUnknown_087E3610, gUnknown_087EB610, gUnknown_087F2128
    .int gUnknown_087F88F0, gUnknown_087DFE80, gUnknown_087D7E80

    .global gUnknown_080BB41C
gUnknown_080BB41C:
    .2byte 697, 697, 695, 695, 696, 696, 697, 695

    .global gUnknown_080BB42C
gUnknown_080BB42C:
    .byte 0, 1, 0, 1, 0, 1, 0, 0

    .global gUnknown_080BB434
gUnknown_080BB434:
    .byte 1, 1, 4, 4, 16, 12, 1, 4

    .global gUnknown_080BB43C
gUnknown_080BB43C:
    .2byte 438, 449, 448, 438, 447, 448, 439, 446
    .2byte 442, 443, 444, 448, 447, 449, 442, 0

    .global sa2__gUnknown_080D5744
sa2__gUnknown_080D5744:
    .int sub_8018318
    .int sub_8018380, sub_80183D4, sub_8018428, sub_8018440
    .int sub_8017C04, sub_8017F10, sub_8018490, sub_80184D0
    .int 0

    .global gUnknown_080BB484
gUnknown_080BB484:
    .byte 0x35, 0x4D, 0x65, 0x7D
 
    .global gUnknown_080BB488
gUnknown_080BB488:
    .2byte 895, 894

    .global gUnknown_080BB48C
gUnknown_080BB48C:
    .byte 0x38, 0x5C, 0x40, 0x68

    .global gUnknown_080BB490
gUnknown_080BB490:
    .byte 0, 1, 2, 3

    .global gUnknown_080BB494
gUnknown_080BB494:
    .byte   0,   2,   3,   5,   7,   8,  16,  18,  19,  21,  23,  24
    .byte  32,  34,  35,  37,  39,  40,  48,  50,  51,  53,  55,  56,  64,  66,  67,  69
    .byte  71,  72,  80,  82,  83,  85,  87,  88,  96,  98,  99, 101, 103, 104, 112, 114
    .byte 115, 117, 119, 120, 128, 130, 131, 133, 135, 136, 144, 146, 147, 149, 151, 152

    .global gUnknown_080BB4D0
gUnknown_080BB4D0:
    .byte 13, 16, 14, 13

    .global gUnknown_080BB4D4
gUnknown_080BB4D4:
    .byte 8, 11, 8, 11

    .global gUnknown_080BB4D8
gUnknown_080BB4D8:
    .byte 0x00, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0C, 0x0D, 0x0F, 0x09, 0x0A, 0x08, 0x07, 0x06

    .global gUnknown_080BB4E8
gUnknown_080BB4E8:
    .byte 6, 7, 5, 4, 3, 6, 7, 5

    .global gUnknown_080BB4F0
gUnknown_080BB4F0:
    .byte 8, 9, 10, 9

    .global gUnknown_080BB4F4
gUnknown_080BB4F4:
    .incbin "baserom.gba", 0x000BB4F4, 0x8

    .global gUnknown_080BB4FC
gUnknown_080BB4FC:
    .incbin "baserom.gba", 0x000BB4FC, 0x24

    .global gUnknown_080BB520
gUnknown_080BB520:
    .incbin "baserom.gba", 0x000BB520, 0x24

    .global gUnknown_080BB544
gUnknown_080BB544:
    .incbin "baserom.gba", 0x000BB544, 0x24

    .global gUnknown_080BB568
gUnknown_080BB568:
    .incbin "baserom.gba", 0x000BB568, 0x80
