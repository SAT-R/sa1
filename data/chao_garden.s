.section .rodata

    .align 2 , 0
    .global gMultiBootProgram_TinyChaoGarden
gMultiBootProgram_TinyChaoGarden:
    .incbin "baserom_sa1.gba", 0x0009C170, 0x1EDD4
