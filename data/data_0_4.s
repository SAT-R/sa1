    .include "asm/macros/portable.inc"
	.section .rodata

    .global gCollisionTable
gCollisionTable: @ 0x84ADEA8
    mPtr CollHeader_zone_1_act_1_fg
    mPtr CollHeader_zone_1_act_2_fg
    mPtr CollHeader_zone_2_act_1_fg
    mPtr CollHeader_zone_2_act_2_fg
    mPtr CollHeader_zone_3_act_1_fg
    mPtr CollHeader_zone_3_act_2_fg
    mPtr CollHeader_zone_4_act_1_fg
    mPtr CollHeader_zone_4_act_2_fg
    mPtr CollHeader_zone_5_act_1_fg
    mPtr CollHeader_zone_5_act_2_fg
    mPtr CollHeader_zone_6_act_1_fg
    mPtr CollHeader_zone_6_act_2_fg
    mPtr CollHeader_zone_7_act_1_fg
    mPtr CollHeader_zone_7_act_2_fg
    mPtr CollHeader_zone_chao_hunt_act_vs_zone_a_fg
    mPtr CollHeader_zone_chao_hunt_act_vs_zone_b_fg
    mPtr CollHeader_zone_chao_hunt_act_vs_zone_c_fg
    mPtr CollHeader_zone_chao_hunt_act_vs_zone_d_fg

    .global gSpawnPositions
gSpawnPositions:
    .incbin "baserom.gba", 0x004ADEF0, 0x48

    .global gSpawnPositions_Modes_4_and_5
gSpawnPositions_Modes_4_and_5:
    .incbin "baserom.gba", 0x004ADF38, 0x40

    .global gUnknown_084ADF78
gUnknown_084ADF78:
    .incbin "baserom.gba", 0x004ADF78, 0x48

    .global gUnknown_084ADFC0
gUnknown_084ADFC0:
    .incbin "baserom.gba", 0x004ADFC0, 0x48

    .global gPlayerCharacterIdleAnims
gPlayerCharacterIdleAnims:
    .short 0, 99, 199, 298

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
    .byte 0x42, 0x43, 0x44, 0x45

    .global gUnknown_084AE1B0
gUnknown_084AE1B0:
    .incbin "baserom.gba", 0x004AE1B0, 0x14

    @ TODO: The values look like they are Q_8_24(?), maybe just Q_8_8.
    .global gUnknown_084AE1C4
gUnknown_084AE1C4:
    mPtr sub_804EEA8
    mPtr sub_804F73C
    .int 0,          0,  0,      0, 0xE06, 0x00000277, 0x00FFFFFF
    mPtr sub_804EF18
    mPtr sub_804F760
    .int 0,          0,  0,      0, 0xE06, 0x00FFFFFF, 0x00FFFFFF
    mPtr sub_804F984
    mPtr sub_804F788
    .int 0,          0,  0,      0, 0xE06, 0x00FFFFFF, 0x00FFFFFF
    mPtr sub_804F990
    mPtr sub_804F78C
    .int 0,          0,  0,      0, 0xE06, 0x00010277, 0x00FFFFFF
    mPtr sub_804F9B0
    mPtr sub_804F790
    .int 0,          0,  0,      0, 0xE06, 0x00000278, 0x00FFFFFF
    mPtr sub_804FA08
    mPtr sub_804F7B0
    .int 0,          0, 90,    512, 0xE06, 0x00000278, 0x00000284
    mPtr sub_804FA38
    mPtr sub_804F7B4
    .int 0xFB200000, 0x002A0000,  0,  0x210, 0x906, 0x0000027C, 0x00000288
    mPtr sub_804EFA0
    mPtr sub_804F7C0
    .int 0x01800300,          3,  0, 0x1210, 0x606, 0x0000027E, 0x0000028A
    mPtr sub_804FA54
    mPtr sub_804F7C4
    .int 0, 0x002A0000,  0,   0x10, 0xE06, 0x00000280, 0x0000028C
    mPtr sub_804FA70
    mPtr sub_804F7C8
    .int 0,          0,  0,      0, 0xE06, 0x00010280, 0x0001028C
    mPtr sub_804FA9C
    mPtr sub_804F7CC
    .int 0,          0,  0, 0x1200, 0xE06, 0x00000282, 0x0000028E
    mPtr sub_804FAC8
    mPtr sub_804F7D0
    .int 0,          0, 60, 0x0900, 0x906, 0x0000027D, 0x00000289
    mPtr sub_804FAF0
    mPtr sub_804F7DC
    .int 0x480,          0,  0, 0x2400, 0x906, 0x0000027C, 0x00000288
    mPtr sub_804FB10
    mPtr sub_804F7E8
    .int 0x00000000, 0x00000000, 0x00000000, 0x00000200, 0x00000E06, 0x00000283, 0x00000283
    mPtr sub_804FB30
    mPtr sub_804F7EC
    .int 0x00000000, 0x00000000, 0x00000000, 0x00000200, 0x00000E06, 0x00010283, 0x00010283
    mPtr sub_804FB5C
    mPtr sub_804F7F0
    .int 0x00000000, 0x00000000, 0x00000000, 0x00001200, 0x00000E06, 0x0000028F, 0x0000028F
    mPtr sub_804FB7C
    mPtr sub_804F7F4
    .int 0x0000FB80, 0x00000060, 0x00000000, 0x00006400, 0x00000E06, 0x0001028F, 0x0001028F
    mPtr sub_804FBA8
    mPtr sub_804F834
    .int 0xFD00FE80, 0x002A0000, 0x00000000, 0x00001210, 0x00000906, 0x0000027A, 0x00000286
    mPtr sub_804FBE4
    mPtr sub_804F860
    .int 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000906, 0x0000027B, 0x00000286
    mPtr sub_804FC28
    mPtr sub_804F888
    .int 0xFD00FE80, 0x00150000, 0x00000000, 0x00001210, 0x00000906, 0x00000291, 0x00000291
    mPtr sub_804FC78
    mPtr sub_804F8D4
    .int 0x00000000, 0x00000000, 0x00000078, 0x00000000, 0x00000906, 0x00010291, 0x00010291
    mPtr sub_804FCA4
    mPtr sub_804F8D8
    .int 0x00000000, 0x00000000, 0x00000078, 0x00000000, 0x00000E06, 0x00010291, 0x00010291
    mPtr sub_804FCEC
    mPtr sub_804F8DC
    .int 0x00000000, 0x00000000, 0x00000000, 0x06000000, 0x00000000, 0x000002B5, 0x000002B5
    mPtr sub_804F020
    mPtr sub_804F934
    .int 0x00000000, 0x00000000, 0x00000000, 0x06000000, 0x00000000, 0x000102B5, 0x000102B5
    mPtr sub_804FD54
    mPtr sub_804F95C
    .int 0x00000400, 0x00000000, 0x00000000, 0x06000000, 0x00000000, 0x000002B5, 0x000002B5

    .global gUnknown_084AE548
gUnknown_084AE548:
    .short 0x292
    .byte 0, 16

    .short 0x292
    .byte 1, 16

    .short 0x292
    .byte 2, 16

    .short 0x292
    .byte 3, 16

    .short 0x292
    .byte 4, 16

    .short 0x292
    .byte 5, 16

    .global gUnknown_084AE560
gUnknown_084AE560:
    .byte 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0
