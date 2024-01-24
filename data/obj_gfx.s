	.section .rodata

    .global gObjTiles_4bpp
gObjTiles_4bpp:
    .incbin "baserom.gba", 0x00121F74, 0x34A200
    @.include "graphics/obj_tiles_4bpp.inc"

    .global gObjTiles_8bpp
gObjTiles_8bpp:
    .include "graphics/obj_tiles_8bpp.inc"
