.section .rodata

    @ "graphics/tilemaps/mp_multipak_player_overview/header.c"

    .global gUnknown_084ADA08
gUnknown_084ADA08:
    .incbin "baserom_sa1.gba", 0x004ADA08, 0x2

    .global gUnknown_084ADA0A
gUnknown_084ADA0A:
    .incbin "baserom_sa1.gba", 0x004ADA0A, 0x4

    .global gUnknown_084ADA0E
gUnknown_084ADA0E:
    .incbin "baserom_sa1.gba", 0x004ADA0E, 0x2

    .global gUnknown_084ADA10
gUnknown_084ADA10:
    .incbin "baserom_sa1.gba", 0x004ADA10, 0xA
