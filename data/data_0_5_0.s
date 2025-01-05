	.section .rodata

    .global gUnknown_0865EFF4
gUnknown_0865EFF4:
    .incbin "baserom.gba", 0x0065EFF4, 0x78

    .global gUnknown_0865F06C
gUnknown_0865F06C:
    .incbin "baserom.gba", 0x0065F06C, 0x78

    .global sZoneTimeSecondsTable
sZoneTimeSecondsTable:
    .incbin "baserom.gba", 0x0065F0E4, 0x7A

    .global sZoneTimeMinutesTable
sZoneTimeMinutesTable:
    .incbin "baserom.gba", 0x0065F15E, 0x16

    .global gUnknown_0865F174
gUnknown_0865F174:
    .incbin "baserom.gba", 0x0065F174, 0x4

    .global gUnknown_0865F178
gUnknown_0865F178:
    .incbin "baserom.gba", 0x0065F178, 0x4
    