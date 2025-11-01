    .include "asm/macros/portable.inc"

	.section .rodata

    .space 0x100

    .global gDemoRecordings
gDemoRecordings:
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
    .incbin "baserom_sa1.gba", 0x007BF918, 0x1F8

    @ src/data/recordings.c:static const u8 demo2[]
    .global demo2
demo2:
    .incbin "baserom_sa1.gba", 0x007BFB10, 0x200

    @ src/data/recordings.c:static const u8 demo4[]
    @ NOTE: Ice Mountain data comes before Casino Paradise!
    .global demo4
demo4:
    .incbin "baserom_sa1.gba", 0x007BFD10, 0x208

    @ src/data/recordings.c:static const u8 demo3[]
    .global demo3
demo3:
    .incbin "baserom_sa1.gba", 0x007BFF18, 0x200
