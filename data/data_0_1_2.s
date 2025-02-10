    .include "asm/macros/portable.inc"

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
    mPtr sub_800E934
    mPtr sub_800F318

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
    mPtr OptionsSelectPlayerData
    mPtr OptionsSelectDifficulty
    mPtr OptionsSelectTimeUp
    mPtr OptionsSelectSoundTest
    mPtr OptionsSelectLanguage
    mPtr OptionsSelectButtonConfig
    mPtr OptionsSelectDeleteGameData
    mPtr OptionsSelectEnd

    .global gUnknown_080BB3C0
gUnknown_080BB3C0:
    .short 869, 868

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
    mPtr PlayerDataSelectName
    mPtr PlayerDataSelectVsRecord
    mPtr PlayerDataSelectOK

    .global gPressStartTiles
gPressStartTiles:
    .short 778, 779

    .global gUnknown_080BB3E0
gUnknown_080BB3E0:
    .ascii "FLASH"
    .byte 0xC5, 0xB2, 0xC4, 0x2C, 0xBE, 0xB0, 0xCC, 0xDE, 0xC3, 0xDE, 0xB7
    .byte 0xC5, 0xB2, 0xC3, 0xDE, 0xBD, 0x00, 0x00, 0x00

    .global gUnknown_080BB3F8
gUnknown_080BB3F8:
    mPtr gMultiboot_087C22F8
    mPtr gUnknown_087CA2F8
    mPtr gUnknown_087D22F8
    mPtr gUnknown_087E3610
    mPtr gUnknown_087EB610
    mPtr gUnknown_087F2128
    mPtr gUnknown_087F88F0
    mPtr gUnknown_087DFE80
    mPtr gUnknown_087D7E80

    .global gUnknown_080BB41C
gUnknown_080BB41C:
    .short 697, 697, 695, 695, 696, 696, 697, 695

    .global gUnknown_080BB42C
gUnknown_080BB42C:
    .byte 0, 1, 0, 1, 0, 1, 0, 0

    .global gUnknown_080BB434
gUnknown_080BB434:
    .byte 1, 1, 4, 4, 16, 12, 1, 4

    .global gUnknown_080BB43C
gUnknown_080BB43C:
    .short 438, 449, 448, 438, 447, 448, 439, 446
    .short 442, 443, 444, 448, 447, 449, 442, 0
