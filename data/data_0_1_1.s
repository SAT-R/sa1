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
    .short 0x0372, 0x0371

    .global gUnknown_080BB360
gUnknown_080BB360:
    .byte 1, 1, 0, 0

    .global gUnknown_080BB364
gUnknown_080BB364:
    mPtr TimeAttack_CreateStartMenu
    mPtr TimeAttack_CreateRecordsMenu

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
    
.if 0
.endif