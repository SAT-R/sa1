	.section .rodata
    .align 2 , 0

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
