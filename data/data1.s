	.section .rodata

    .space 0x100

    .global gUnknown_087BF8CC
gUnknown_087BF8CC:
    .incbin "baserom.gba", 0x007BF8CC, 0x10

    .global gUnknown_087BF8DC
gUnknown_087BF8DC:
    .incbin "baserom.gba", 0x007BF8DC, 0x3C

@@@
@@@ Compressed Input-recordings for Demo playback
@@@
    @ src/data/recordings.c:static const u8 demo1[]
    .global demo1
demo1:
    .incbin "baserom.gba", 0x007BF918, 0x1F8

    @ src/data/recordings.c:static const u8 demo2[]
    .global demo2
demo2:
    .incbin "baserom.gba", 0x007BFB10, 0x200

    @ src/data/recordings.c:static const u8 demo4[]
    @ NOTE: Ice Mountain data comes before Casino Paradise!
    .global demo4
demo4:
    .incbin "baserom.gba", 0x007BFD10, 0x208

    @ src/data/recordings.c:static const u8 demo3[]
    .global demo3
demo3:
    .incbin "baserom.gba", 0x007BFF18, 0x200


    .global gUnknown_087C0118
gUnknown_087C0118:
    .incbin "baserom.gba", 0x007C0118, 0x140

    .global gUnknown_087C0258
gUnknown_087C0258:
    .incbin "baserom.gba", 0x007C0258, 0xC0

    .global gUnknown_087C0318
gUnknown_087C0318:
    .incbin "baserom.gba", 0x007C0318, 0x1FE0

    .global gUnknown_087C22F8
gUnknown_087C22F8:
    .incbin "baserom.gba", 0x007C22F8, 0x15B88

    .global gUnknown_087D7E80
gUnknown_087D7E80:
    .incbin "baserom.gba", 0x007D7E80, 0xB790

    .global gUnknown_087E3610
gUnknown_087E3610:
    .incbin "baserom.gba", 0x007E3610, 0x1BA3B
