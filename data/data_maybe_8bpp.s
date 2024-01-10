.section .rodata

@ TODO: Confirm whether this is actually the 8BPP data
    .global gUnknown_08102DAC
gUnknown_08102DAC: @ 0x8102DAC
    .incbin "baserom.gba", 0x00102DAC, 0x1B7C8

@ Next byte: 0x0811E574
