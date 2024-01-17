	.section .rodata

    .global gCollisionTable
gCollisionTable: @ 0x84ADEA8
    .4byte CollHeader_zone_1_act_1_fg, CollHeader_zone_1_act_2_fg
    .4byte CollHeader_zone_2_act_1_fg, CollHeader_zone_2_act_2_fg
    .4byte CollHeader_zone_3_act_1_fg, CollHeader_zone_3_act_2_fg
    .4byte CollHeader_zone_4_act_1_fg, CollHeader_zone_4_act_2_fg
    .4byte CollHeader_zone_5_act_1_fg, CollHeader_zone_5_act_2_fg
    .4byte CollHeader_zone_6_act_1_fg, CollHeader_zone_6_act_2_fg
    .4byte CollHeader_zone_7_act_1_fg, CollHeader_zone_7_act_2_fg
    .4byte CollHeader_zone_chao_hunt_act_vs_zone_a_fg
    .4byte CollHeader_zone_chao_hunt_act_vs_zone_b_fg
    .4byte CollHeader_zone_chao_hunt_act_vs_zone_c_fg
    .4byte CollHeader_zone_chao_hunt_act_vs_zone_d_fg

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

    @ TODO: The values look like they are Q_8_24(?), maybe just Q_8_8.
    .global gUnknown_084AE1C4
gUnknown_084AE1C4:
    .4byte sub_804EEA8, sub_804F73C,          0,          0,  0,      0, 0xE06, 0x00000277, 0x00FFFFFF
    .4byte sub_804EF18, sub_804F760,          0,          0,  0,      0, 0xE06, 0x00FFFFFF, 0x00FFFFFF
    .4byte sub_804F984, sub_804F788,          0,          0,  0,      0, 0xE06, 0x00FFFFFF, 0x00FFFFFF
    .4byte sub_804F990, sub_804F78C,          0,          0,  0,      0, 0xE06, 0x00010277, 0x00FFFFFF
    .4byte sub_804F9B0, sub_804F790,          0,          0,  0,      0, 0xE06, 0x00000278, 0x00FFFFFF
    .4byte sub_804FA08, sub_804F7B0,          0,          0, 90,    512, 0xE06, 0x00000278, 0x00000284
    .4byte sub_804FA38, sub_804F7B4, 0xFB200000, 0x002A0000,  0,  0x210, 0x906, 0x0000027C, 0x00000288
    .4byte sub_804EFA0, sub_804F7C0, 0x01800300,          3,  0, 0x1210, 0x606, 0x0000027E, 0x0000028A
    .4byte sub_804FA54, sub_804F7C4,          0, 0x002A0000,  0,   0x10, 0xE06, 0x00000280, 0x0000028C
    .4byte sub_804FA70, sub_804F7C8,          0,          0,  0,      0, 0xE06, 0x00010280, 0x0001028C
    .4byte sub_804FA9C, sub_804F7CC,          0,          0,  0, 0x1200, 0xE06, 0x00000282, 0x0000028E
    .4byte sub_804FAC8, sub_804F7D0,          0,          0, 60, 0x0900, 0x906, 0x0000027D, 0x00000289
    .4byte sub_804FAF0, sub_804F7DC,      0x480,          0,  0, 0x2400, 0x906, 0x0000027C, 0x00000288
    .4byte sub_804FB10, sub_804F7E8, 0x00000000, 0x00000000, 0x00000000, 0x00000200, 0x00000E06, 0x00000283, 0x00000283
    .4byte sub_804FB30, sub_804F7EC, 0x00000000, 0x00000000, 0x00000000, 0x00000200, 0x00000E06, 0x00010283, 0x00010283
    .4byte sub_804FB5C, sub_804F7F0, 0x00000000, 0x00000000, 0x00000000, 0x00001200, 0x00000E06, 0x0000028F, 0x0000028F
    .4byte sub_804FB7C, sub_804F7F4, 0x0000FB80, 0x00000060, 0x00000000, 0x00006400, 0x00000E06, 0x0001028F, 0x0001028F
    .4byte sub_804FBA8, sub_804F834, 0xFD00FE80, 0x002A0000, 0x00000000, 0x00001210, 0x00000906, 0x0000027A, 0x00000286
    .4byte sub_804FBE4, sub_804F860, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000906, 0x0000027B, 0x00000286
    .4byte sub_804FC28, sub_804F888, 0xFD00FE80, 0x00150000, 0x00000000, 0x00001210, 0x00000906, 0x00000291, 0x00000291
    .4byte sub_804FC78, sub_804F8D4, 0x00000000, 0x00000000, 0x00000078, 0x00000000, 0x00000906, 0x00010291, 0x00010291
    .4byte sub_804FCA4, sub_804F8D8, 0x00000000, 0x00000000, 0x00000078, 0x00000000, 0x00000E06, 0x00010291, 0x00010291
    .4byte sub_804FCEC, sub_804F8DC, 0x00000000, 0x00000000, 0x00000000, 0x06000000, 0x00000000, 0x000002B5, 0x000002B5
    .4byte sub_804F020, sub_804F934, 0x00000000, 0x00000000, 0x00000000, 0x06000000, 0x00000000, 0x000102B5, 0x000102B5
    .4byte sub_804FD54, sub_804F95C, 0x00000400, 0x00000000, 0x00000000, 0x06000000, 0x00000000, 0x000002B5, 0x000002B5

    .global gUnknown_084AE548
gUnknown_084AE548:
    .incbin "baserom.gba", 0x004AE548, 0x18

    .global gUnknown_084AE560
gUnknown_084AE560:
    .incbin "baserom.gba", 0x004AE560, 0x14
