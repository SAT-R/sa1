.section .rodata

@ TODO: Confirm whether this is actually the 8BPP data
    .global gUnknown_08102DAC
gUnknown_0810F708: @ 0x810F708
    .incbin "baserom.gba", 0x0010F708, 0xE03C
    
    .global gSpriteOamData
gSpriteOamData: @ 0x811D744
    .incbin "baserom.gba", 0x0011D744, 0xE30

@ Next byte: 0x0811E574
