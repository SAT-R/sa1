	.section .rodata

    .global gMillisUnpackTable
gMillisUnpackTable:
    .incbin "baserom_sa1.gba", 0x0065EFF4, 0x78

    .global gSecondsTable
gSecondsTable:
    .incbin "baserom_sa1.gba", 0x0065F06C, 0x78

    .global sZoneTimeSecondsTable
sZoneTimeSecondsTable:
    .incbin "baserom_sa1.gba", 0x0065F0E4, 0x7A

    .global sZoneTimeMinutesTable
sZoneTimeMinutesTable:
    .incbin "baserom_sa1.gba", 0x0065F15E, 0x16

    .global gUnknown_0865F174
gUnknown_0865F174:
    .incbin "baserom_sa1.gba", 0x0065F174, 0x4

    .global gUnknown_0865F178
gUnknown_0865F178:
    .incbin "baserom_sa1.gba", 0x0065F178, 0x4
    