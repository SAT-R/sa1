    .include "asm/macros/portable.inc"

	.section .rodata

    .global gMultiboot_087C0258
gMultiboot_087C0258:
    .incbin "baserom_sa1.gba", 0x007C0258, 0x20A0

    .global gMultiboot_087C22F8
gMultiboot_087C22F8:
    .incbin "baserom_sa1.gba", 0x007C22F8, 0x8000

    .global gUnknown_087CA2F8
gUnknown_087CA2F8:
    .incbin "baserom_sa1.gba", 0x007CA2F8, 0x8000
    
    .global gUnknown_087D22F8
gUnknown_087D22F8:
    .incbin "baserom_sa1.gba", 0x007D22F8, 0x5B88

    .global gUnknown_087D7E80
gUnknown_087D7E80:
    .incbin "baserom_sa1.gba", 0x007D7E80, 0x8000

    .global gUnknown_087DFE80
gUnknown_087DFE80:
    .incbin "baserom_sa1.gba", 0x007DFE80, 0x3790

    .global gUnknown_087E3610
gUnknown_087E3610:
    .incbin "baserom_sa1.gba", 0x007E3610, 0x8000

    .global gUnknown_087EB610
gUnknown_087EB610:
    .incbin "baserom_sa1.gba", 0x007EB610, 0x6B18

    .global gUnknown_087F2128
gUnknown_087F2128:
    .incbin "baserom_sa1.gba", 0x007F2128, 0x67C8

    .global gUnknown_087F88F0
gUnknown_087F88F0:
    .incbin "baserom_sa1.gba", 0x007F88F0, 0x673C
