    .include "asm/macros/portable.inc"

	.section .rodata

    .space 0x100

    .global gUnknown_087BF8CC
gUnknown_087BF8CC:
    mPtr demo1
    mPtr demo2
    mPtr demo3
    mPtr demo4

    .global gUnknown_087BF8DC
gUnknown_087BF8DC:
    mPtr gUnknown_08487358
    mPtr gUnknown_08487BBC
    mPtr gUnknown_0848872C
    mPtr gUnknown_08489308
    mPtr gUnknown_08489F5C
    mPtr gUnknown_0848ADB4
    mPtr gUnknown_0848BA80
    .ascii "CODRED\0\0"
    .ascii "NIMDA \0\0"
    .ascii "CIRCAM\0\0"
    .ascii "HAPTIM\0\0"

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

    .global gMultiboot_087C0258
gMultiboot_087C0258:
    .incbin "baserom.gba", 0x007C0258, 0x20A0

    .global gMultiboot_087C22F8
gMultiboot_087C22F8:
    .incbin "baserom.gba", 0x007C22F8, 0x8000

    .global gUnknown_087CA2F8
gUnknown_087CA2F8:
    .incbin "baserom.gba", 0x007CA2F8, 0x8000
    
    .global gUnknown_087D22F8
gUnknown_087D22F8:
    .incbin "baserom.gba", 0x007D22F8, 0x5B88

    .global gUnknown_087D7E80
gUnknown_087D7E80:
    .incbin "baserom.gba", 0x007D7E80, 0x8000

    .global gUnknown_087DFE80
gUnknown_087DFE80:
    .incbin "baserom.gba", 0x007DFE80, 0x3790

    .global gUnknown_087E3610
gUnknown_087E3610:
    .incbin "baserom.gba", 0x007E3610, 0x8000

    .global gUnknown_087EB610
gUnknown_087EB610:
    .incbin "baserom.gba", 0x007EB610, 0x6B18

    .global gUnknown_087F2128
gUnknown_087F2128:
    .incbin "baserom.gba", 0x007F2128, 0x67C8

    .global gUnknown_087F88F0
gUnknown_087F88F0:
    .incbin "baserom.gba", 0x007F88F0, 0x673C
