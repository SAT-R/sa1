.include "asm/macros/portable.inc" @; for mPtr / mAlignWord

	mSectionRodata

    .global gUnknown_0868B0D4
gUnknown_0868B0D4:
    .incbin "baserom_sa1.gba", 0x0068B0D4, 0x18

    .global gUnknown_0868B0EC
gUnknown_0868B0EC:
    .incbin "baserom_sa1.gba", 0x0068B0EC, 0x8

    .global gUnknown_0868B0F4
gUnknown_0868B0F4:
    .incbin "baserom_sa1.gba", 0x0068B0F4, 0x8

    .global gUnknown_0868B0FC
gUnknown_0868B0FC:
    .incbin "baserom_sa1.gba", 0x0068B0FC, 0x10
