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

    .global gUnknown_084AE1C4
gUnknown_084AE1C4:
    .incbin "baserom.gba", 0x004AE1C4, 0x384

    .global gUnknown_084AE548
gUnknown_084AE548:
    .incbin "baserom.gba", 0x004AE548, 0x18

    .global gUnknown_084AE560
gUnknown_084AE560:
    .incbin "baserom.gba", 0x004AE560, 0x14
