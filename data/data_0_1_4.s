	.section .rodata
    .align 2 , 0

    .global gUnknown_080BB544
gUnknown_080BB544:
    .short 0x022F, 0x022F
    .short 0x022F, 0x022F
    .short 0x022F, 0x022F
    .short 0x0252, 0x0252
    .short 0x0253, 0x0253
    .short 0x0254, 0x0254
    .short 0x0254, 0x0254
    .short 0x022F, 0x022F
    .short 0x022F, 0x0254

    .global sChaoSpawnPositions
sChaoSpawnPositions:
    .incbin "baserom_sa1.gba", 0x000BB568, 0x80
