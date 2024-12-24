.section .rodata

    .align 2 , 0
    .global gMultiBootProgram_TinyChaoGarden
gMultiBootProgram_TinyChaoGarden:
    .incbin "baserom.gba", 0x0009C170, 0x1EDD4
