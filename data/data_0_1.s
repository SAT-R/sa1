	.section .rodata

    .global gSpriteInits_Interactables
gSpriteInits_Interactables:     @ 0x080BB064
    .4byte CreateEntity_StageGoal               @ 000
    .4byte CreateEntity_Spikes_Up               @ 001
    .4byte CreateEntity_Spikes_Down             @ 002
    .4byte CreateEntity_Spikes_Horizontal       @ 003 - Left
    .4byte CreateEntity_Spikes_Horizontal       @ 004 - Right
    .4byte CreateEntity_Spikes_HidingUp         @ 005
    .4byte CreateEntity_Spikes_HidingDown       @ 006
    .4byte CreateEntity_Checkpoint              @ 007
    .4byte CreateEntity_Spring_Normal_Up        @ 008
    .4byte CreateEntity_Spring_Normal_Down      @ 009
    .4byte CreateEntity_Spring_Horizontal       @ 010 - Left
    .4byte CreateEntity_Spring_Horizontal       @ 011 - Right
    .4byte CreateEntity_Spring_Big_Up           @ 012 - Up-Left
    .4byte CreateEntity_Spring_Big_Up           @ 013 - Up-Right
    .4byte CreateEntity_Spring_Small_Up         @ 014 - Up-Left
    .4byte CreateEntity_Spring_Small_Up         @ 015 - Up-Right
    .4byte CreateEntity_Decoration              @ 016
    .4byte CreateEntity_Toggle_PlayerLayer      @ 017
    .4byte CreateEntity_Toggle_PlayerLayer      @ 018
    .4byte CreateEntity_GrindRail_Start         @ 019
    .4byte CreateEntity_GrindRail_End           @ 020
    .4byte CreateEntity_PlatformThin            @ 021
    .4byte CreateEntity_PlatformThin_Falling    @ 022
    .4byte CreateEntity_Trampoline              @ 023
    .4byte CreateEntity_PlatformCrumbling       @ 024
    .4byte CreateEntity_BounceBlock             @ 025
    .4byte CreateEntity_InclineRamp             @ 026
    .4byte CreateEntity_Waterfall               @ 027 (Only particles, used for "Sand Falls" as well)
    .4byte CreateEntity_HalfPipeStart           @ 028
    .4byte CreateEntity_HalfPipeEnd             @ 029
    .4byte CreateEntity_Copse                   @ 030
    .4byte CreateEntity_Booster                 @ 031
    .4byte CreateEntity_Booster_SlightLeft      @ 032
    .4byte CreateEntity_Booster_SlightRight     @ 033
    .4byte CreateEntity_Interactable034         @ 034
    .4byte CreateEntity_MiniLoop_Base           @ 035
    .4byte CreateEntity_MiniLoop_StartBoost     @ 036
    .4byte CreateEntity_MiniLoop_Exit           @ 037
    .4byte CreateEntity_MiniLoop_Entrance       @ 038
    .4byte CreateEntity_Interactable039         @ 039
    .4byte CreateEntity_WaterBridge             @ 040
    .4byte CreateEntity_ToBeContinuedText       @ 041
    .4byte CreateEntity_RedFlag                 @ 042
    .4byte CreateEntity_Interactable043         @ 043
    .4byte CreateEntity_WallPole_Left           @ 044
    .4byte CreateEntity_WallPole_Right          @ 045
    .4byte CreateEntity_ForcedIceSlide          @ 046
    .4byte CreateEntity_Booster_Wall            @ 047
    .4byte CreateEntity_BumperHexagon           @ 048
    .4byte CreateEntity_BumperRound_LinearMov   @ 049
    .4byte CreateEntity_BumperRound_CircularMov @ 050
    .4byte CreateEntity_BumperTriHorizontal     @ 051
    .4byte CreateEntity_BumperTriVertical       @ 052
    .4byte CreateEntity_BumperTriBig            @ 053
    .4byte CreateEntity_Flipper                 @ 054
    .4byte CreateEntity_Platform_Square         @ 055
    .4byte CreateEntity_Flipper_Vertical        @ 056
    .4byte CreateEntity_BarrelOfDoomMini        @ 057
    .4byte CreateEntity_SEGA_SONIC_Letter       @ 058
    .4byte CreateEntity_Baloon                  @ 059
    .4byte CreateEntity_ShipSwing               @ 060
    .4byte CreateEntity_Platform_Spiked         @ 061
    .4byte CreateEntity_Bowl                    @ 062
    .4byte CreateEntity_PanelGate_Vertical      @ 063
    .4byte CreateEntity_PanelGate_Horizontal    @ 064
    .4byte CreateEntity_MarbleTrack_Dir         @ 065
    .4byte CreateEntity_MarbleTrack_Unk         @ 066
    .4byte CreateEntity_MarbleTrack_Entrance    @ 067
    .4byte CreateEntity_MarbleTrack_Exit        @ 068
    .4byte CreateEntity_ConveyorBelt            @ 069 Also used for snow in Ice Paradise?
    .4byte CreateEntity_Toggle_PlayerVisibility @ 070 (data[0]: 0 = Visible, 1 = Invisible)
    .4byte CreateEntity_WallBumper              @ 071
    .4byte CreateEntity_TeleportOrb             @ 072 (Casino Paradise)
    .4byte CreateEntity_Flipper_SmallBlue       @ 073
    .4byte CreateEntity_Carousel                @ 074
    .4byte CreateEntity_HookRail                @ 075 Hook-Rail
    .4byte CreateEntity_SwingingHook            @ 076
    .4byte CreateEntity_SecurityGate            @ 077
    .4byte CreateEntity_SwingRope               @ 078
    .4byte CreateEntity_SteamExhaust            @ 079
    .4byte CreateEntity_CraneClaw               @ 080
    .4byte CreateEntity_MovingSpring            @ 081 Moving Spring
    .4byte CreateEntity_IronBall                @ 082
    .4byte CreateEntity_HangBar                 @ 083
    .4byte CreateEntity_Interactable084         @ 084 Platform that falls and slides once the player steps on it
    .4byte CreateEntity_Interactable085         @ 085
    .4byte CreateEntity_RunWheel                @ 086
    .4byte CreateEntity_Torch                   @ 087 (Cosmic Angel: Antigravity field elements)
    .4byte CreateEntity_Lift                    @ 088
    .4byte CreateEntity_Interactable089         @ 089
    .4byte CreateEntity_PlayerFloat             @ 090 (data[0]: 0 = Whirlwind, 1 = Antigravity)
    .4byte CreateEntity_FerrisWheel             @ 091
    .4byte CreateEntity_Boulder                 @ 092
    .4byte CreateEntity_SpikedBarrel            @ 093
    .4byte CreateEntity_AirBubbles              @ 094
    .4byte CreateEntity_IceBlock                @ 095
    .4byte CreateEntity_Interactable096         @ 096
    .4byte CreateEntity_Interactable097         @ 097
    .4byte CreateEntity_UnderwaterLavaPlatform  @ 098
    .4byte CreateEntity_Interactable099         @ 099
    .4byte CreateEntity_Booster_Steep           @ 100
    .4byte CreateEntity_Interactable101         @ 101
    .4byte CreateEntity_SpecialSpring           @ 102
    .4byte CreateEntity_SpikedBarrel_ChaoHunt   @ 103
    .4byte CreateEntity_SmallFallBlock          @ 104 (X-Zone)
    .4byte CreateEntity_Lava                    @ 105
    .4byte CreateEntity_Track                   @ 106
    .4byte CreateEntity_Interactable107         @ 107
    .4byte CreateEntity_Spring_Hiding           @ 108
    .4byte CreateEntity_Interactable109         @ 109
    .4byte CreateEntity_PipeEntrance            @ 110
    .4byte CreateEntity_PipeExit                @ 111
    .4byte CreateEntity_Interactable112         @ 112
    .4byte CreateEntity_Interactable113         @ 113
    .4byte CreateEntity_BreakableWall           @ 114
    .4byte CreateEntity_ItemBox_ChaoHunt        @ 115

    .global gSpriteInits_Enemies
gSpriteInits_Enemies:   @ 80BB234
    .4byte CreateEntity_Kiki            @ 000 Kiki
    .4byte CreateEntity_Buzzer          @ 001 Buzzer
    .4byte CreateEntity_GamiGami        @ 002 GamiGami
    .4byte CreateEntity_Rhinotank       @ 003 Rhinotank
    .4byte CreateEntity_KeroKero        @ 004 KeroKero
    .4byte CreateEntity_Senbon          @ 005 Senbon
    .4byte CreateEntity_Tentou          @ 006 Tentou
    .4byte CreateEntity_Fireball        @ 007 Fireball
    .4byte CreateEntity_Hanabii         @ 008 Hanabii
    .4byte CreateEntity_Slot            @ 009 Slot
    .4byte CreateEntity_Pierrot         @ 010 Pierrot
    .4byte CreateEntity_Leon            @ 011 Leon
    .4byte CreateEntity_Mirror          @ 012 Mirror
    .4byte CreateEntity_Wamu            @ 013 Wamu
    .4byte CreateEntity_Oct             @ 014 Oct
    .4byte CreateEntity_Mole            @ 015 Mole
    .4byte CreateEntity_Yukimaru        @ 016 Yukimaru
    .4byte CreateEntity_Yukimaru_Wall   @ 017 Yukimaru on a wall
    .4byte CreateEntity_Drisame         @ 018 Drisame
    .4byte CreateEntity_Kuraa           @ 019 Kuraa
    .4byte CreateEntity_PenMk1          @ 020 Pen

    .4byte CreateEntity_EggHammerTank_Intro @ 021 Boss 1 Intro
    .4byte CreateEntity_EggHammerTank       @ 022 Boss 1
    .4byte CreateEntity_EggPress            @ 023 Boss 2
    .4byte CreateEntity_EggBall             @ 024 Boss 3
    .4byte CreateEntity_EggSpider           @ 025 Boss 4
    .4byte CreateEntity_MechaKnuckles       @ 026 Boss 5
    .4byte CreateEntity_EggSnake            @ 027 Boss 6
    .4byte CreateEntity_EggWrecker          @ 028 Boss Egg Wrecker (Green Hill)
    .4byte CreateEntity_EggDrillster        @ 029 Boss Egg Drillster (Emerald Hill)
    .4byte CreateEntity_EggX                @ 030 Final Boss
    .4byte CreateEntity_SuperEggRobot       @ 031 Extra Boss

    .global enemyDefeatScores
enemyDefeatScores: @ 0x080BB2B4
    .2byte 100, 200, 400, 800, 1000, 0

    @ Used for the Single Pak, "Collect Rings" stage
    .global gSpriteInits_InteractablesMultiplayer
gSpriteInits_InteractablesMultiplayer:
    .4byte CreateEntity_Spikes_Up @ 000
    .4byte CreateEntity_Spikes_Down @ 001
    .4byte CreateEntity_Spikes_Horizontal @ 002
    .4byte CreateEntity_Spikes_Horizontal @ 003
    .4byte CreateEntity_Spikes_Up @ 004
    .4byte CreateEntity_Spikes_Down @ 005
    .4byte CreateEntity_Spring_Normal_Up @ 006
    .4byte CreateEntity_Spring_Normal_Down @ 007
    .4byte CreateEntity_Spring_Horizontal @ 008
    .4byte CreateEntity_Spring_Horizontal @ 009
    .4byte CreateEntity_Spring_Big_Up @ 010
    .4byte CreateEntity_Spring_Big_Up @ 011
    .4byte CreateEntity_Toggle_PlayerLayer @ 012
    .4byte CreateEntity_Toggle_PlayerLayer @ 013
    .4byte CreateEntity_PlatformThin @ 014
    .4byte CreateEntity_PlatformThin_Falling @ 015
    .4byte CreateEntity_WaterBridge @ 016
    .4byte CreateEntity_ItemBox_ChaoHunt @ 017

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
    .4byte sub_800E470, sub_80100A8, sub_801061C, sub_800E060

    .global gUnknown_080BB33C
gUnknown_080BB33C:
    .incbin "baserom.gba", 0x000BB33C, 0x4

    .global gUnknown_080BB340
gUnknown_080BB340:
    .incbin "baserom.gba", 0x000BB340, 0x8

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
    .4byte sub_800E934, sub_800F318

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
    .4byte sub_801166C, sub_8011684, sub_80116A0, sub_80116BC
    .4byte sub_80116D8, sub_801171C, sub_801104C, sub_8011738

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
    .4byte sub_8011D88, sub_8011DA0, sub_8011DB8

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
    .4byte gMultiboot_087C22F8, gUnknown_087CA2F8
    .4byte gUnknown_087D22F8, gUnknown_087E3610, gUnknown_087EB610, gUnknown_087F2128
    .4byte gUnknown_087F88F0, gUnknown_087DFE80, gUnknown_087D7E80

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

    .global gUnknown_080BB45C
gUnknown_080BB45C:
    .4byte sub_8018318
    .4byte sub_8018380, sub_80183D4, sub_8018428, sub_8018440
    .4byte sub_8017C04, sub_8017F10, sub_8018490, sub_80184D0
    .4byte 0

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
    .incbin "baserom.gba", 0x000BB4D8, 0x10

    .global gUnknown_080BB4E8
gUnknown_080BB4E8:
    .incbin "baserom.gba", 0x000BB4E8, 0x8

    .global gUnknown_080BB4F0
gUnknown_080BB4F0:
    .incbin "baserom.gba", 0x000BB4F0, 0x4

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
