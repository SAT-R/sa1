	.section .rodata

    .if 0
    .global gSpriteTables
gSpriteTables: @ 0x80DC170
    .4byte gAnimations
    .4byte gSpriteDimensions
    .4byte gSpriteOamData
    .4byte gObjPalettes
    .4byte gObjTiles_4bpp
    .4byte gObjTiles_8bpp
.endif
