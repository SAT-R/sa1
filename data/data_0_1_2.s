	.section .rodata
    .align 2 , 0

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

@ These functions get called when pressing A inside the options menu main screen
    .global sOptionsSelectFuncs
sOptionsSelectFuncs:
    .int OptionsSelectPlayerData, OptionsSelectDifficulty, OptionsSelectTimeUp, OptionsSelectSoundTest
    .int OptionsSelectLanguage, OptionsSelectButtonConfig, OptionsSelectDeleteGameData, OptionsSelectEnd

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
    .int PlayerDataSelectName, PlayerDataSelectVsRecord, PlayerDataSelectOK

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

    .global gRoomEventHandlers
gRoomEventHandlers:
    .int ReceiveRoomEvent_PlatformChange
    .int ReceiveRoomEvent_ItemBoxBreak
    .int ReceiveRoomEvent_EnemyDestroyed
    .int ReceiveRoomEvent_PlayerRingLoss
    .int ReceiveRoomEvent_MysteryItemBoxBreak
    .int ReceiveRoomEvent_ItemEffect, ReceiveRoomEvent_ReachedStageGoal, ReceiveRoomEvent_7, ReceiveRoomEvent_8
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
