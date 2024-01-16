	.section .rodata

    .global gCollisionTable
gCollisionTable: @ 0x84ADEA8
.if 1
    .incbin "baserom.gba", 0x004ADEA8, 0x48
.else
    .4byte gUnknown_084C62FC, gUnknown_084DD5B4
    .4byte gUnknown_084F43F8, gUnknown_0850E06C, gUnknown_08527414, gUnknown_08544820
    .4byte gUnknown_08562254, gUnknown_0857EEEC, gUnknown_0859C1AC, gUnknown_085B8D04
    .4byte gUnknown_085D70F4, gUnknown_085F1554, gUnknown_085F903C, gUnknown_085FCD80
    .4byte gUnknown_0860AE24, gUnknown_08618548, gUnknown_086274A0, gUnknown_08634358
.endif
    .global gUnknown_084ADEF0
gUnknown_084ADEF0:
    .incbin "baserom.gba", 0x004ADEF0, 0x48

    .global gUnknown_084ADF38
gUnknown_084ADF38:
    .incbin "baserom.gba", 0x004ADF38, 0x40

    .global gUnknown_084ADF78
gUnknown_084ADF78:
    .incbin "baserom.gba", 0x004ADF78, 0x48

    .global gUnknown_084ADFC0
gUnknown_084ADFC0:
    .incbin "baserom.gba", 0x004ADFC0, 0x48

    .global gUnknown_084AE008
gUnknown_084AE008:
    .incbin "baserom.gba", 0x004AE008, 0x8

    .global gUnknown_084AE010
gUnknown_084AE010:
    .incbin "baserom.gba", 0x004AE010, 0x178

    .global gUnknown_084AE188
gUnknown_084AE188:
    .incbin "baserom.gba", 0x004AE188, 0x12

    .global gUnknown_084AE19A
gUnknown_084AE19A:
    .incbin "baserom.gba", 0x004AE19A, 0x12

    .global gUnknown_084AE1AC
gUnknown_084AE1AC:
    .incbin "baserom.gba", 0x004AE1AC, 0x4

    .global gUnknown_084AE1B0
gUnknown_084AE1B0:
    .incbin "baserom.gba", 0x004AE1B0, 0x14

    .global gUnknown_084AE1C4
gUnknown_084AE1C4:
    .incbin "baserom.gba", 0x004AE1C4, 0x384

    .global gUnknown_084AE548
gUnknown_084AE548:
    .incbin "baserom.gba", 0x004AE548, 0x18

    .global gUnknown_084AE560
gUnknown_084AE560:
    .incbin "baserom.gba", 0x004AE560, 0x14
   
@ \--- Stages and Collision data ---/

.if 0
    .global gUnknown_084AE574
gUnknown_084AE574:
    .incbin "baserom.gba", 0x004AE574, 0x17D88

    .global gUnknown_084C62FC
gUnknown_084C62FC:
    .incbin "baserom.gba", 0x004C62FC, 0x172B8

    .global gUnknown_084DD5B4
gUnknown_084DD5B4:
    .incbin "baserom.gba", 0x004DD5B4, 0x16E44

    .global gUnknown_084F43F8
gUnknown_084F43F8:
    .incbin "baserom.gba", 0x004F43F8, 0x19C74

    .global gUnknown_0850E06C
gUnknown_0850E06C:
    .incbin "baserom.gba", 0x0050E06C, 0x193A8

    .global gUnknown_08527414
gUnknown_08527414:
    .incbin "baserom.gba", 0x00527414, 0x1D40C

    .global gUnknown_08544820
gUnknown_08544820:
    .incbin "baserom.gba", 0x00544820, 0x1DA34

    .global gUnknown_08562254
gUnknown_08562254:
    .incbin "baserom.gba", 0x00562254, 0x1CC98

    .global gUnknown_0857EEEC
gUnknown_0857EEEC:
    .incbin "baserom.gba", 0x0057EEEC, 0x1D2C0

    .global gUnknown_0859C1AC
gUnknown_0859C1AC:
    .incbin "baserom.gba", 0x0059C1AC, 0x1CB58

    .global gUnknown_085B8D04
gUnknown_085B8D04:
    .incbin "baserom.gba", 0x005B8D04, 0x1E3F0

    .global gUnknown_085D70F4
gUnknown_085D70F4:
    .incbin "baserom.gba", 0x005D70F4, 0x1A460

    .global gUnknown_085F1554
gUnknown_085F1554:
    .incbin "baserom.gba", 0x005F1554, 0x7AE8

    .global gUnknown_085F903C
gUnknown_085F903C:
    .incbin "baserom.gba", 0x005F903C, 0x3D44

    .global gUnknown_085FCD80
gUnknown_085FCD80:
    .incbin "baserom.gba", 0x005FCD80, 0xE0A4

    .global gUnknown_0860AE24
gUnknown_0860AE24:
    .incbin "baserom.gba", 0x0060AE24, 0xD724

    .global gUnknown_08618548
gUnknown_08618548:
    .incbin "baserom.gba", 0x00618548, 0xEF58

    .global gUnknown_086274A0
gUnknown_086274A0:
    .incbin "baserom.gba", 0x006274A0, 0xCEB8

    .global gUnknown_08634358
gUnknown_08634358:
    .incbin "baserom.gba", 0x00634358, 0x2220

    .global gUnknown_08636578
gUnknown_08636578:
    .incbin "baserom.gba", 0x00636578, 0x28A7C
.endif
