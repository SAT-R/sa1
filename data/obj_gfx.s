	.section .rodata

    .global gObjTiles_4bpp
gObjTiles_4bpp:
.if 0
    .incbin "baserom.gba", 0x00121F74, 0x34A200
.else
    .include "graphics/obj_tiles_4bpp.inc"
.endif

    .global gObjTiles_8bpp
gObjTiles_8bpp:
    .include "graphics/obj_tiles_8bpp.inc"
