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
