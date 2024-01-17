	.section .rodata

    .global gObjTiles_4bpp
gObjTiles_4bpp:
    .incbin "baserom.gba", 0x00121F74, 0x34A200

    .global gObjTiles_8bpp
gObjTiles_8bpp:
    .incbin "baserom.gba", 0x0046C174, 0x1AE80
