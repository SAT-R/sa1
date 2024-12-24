	.section .rodata

    .global gIntrTableTemplate
gIntrTableTemplate:
    .4byte gMultiSioIntrFuncBuf, VBlankIntr, HBlankIntr, VCountIntr
    .4byte Timer0Intr, Timer1Intr, Timer2Intr, Dma0Intr
    .4byte Dma1Intr, Dma2Intr, Dma3Intr, KeypadIntr
    .4byte GamepakIntr, 0

    .global spriteUpdateFuncs
spriteUpdateFuncs:
    .4byte ProcessVramGraphicsCopyQueue, sub_8002F84, sub_8002958, sub_8001AA4

    .global animCmdTable_BG
animCmdTable_BG:
    .4byte animCmd_GetTiles_BG, animCmd_GetPalette_BG, animCmd_JumpBack_BG, animCmd_End_BG
    .4byte animCmd_PlaySoundEffect_BG, animCmd_AddHitbox_BG, animCmd_TranslateSprite_BG, animCmd_8_BG
    .4byte animCmd_SetIdAndVariant_BG, animCmd_10_BG, animCmd_SetSpritePriority_BG, animCmd_SetOamOrder_BG

    .global gSineTable
gSineTable:
    .incbin "baserom.gba", 0x0009B6E8, 0xA00

@ SA2: sUnknown_080984A4
    .global gUnknown_0809C0E8
gUnknown_0809C0E8:
    .byte 0x01, 0x00, 0x02, 0x03, 0x06, 0x07, 0x05, 0x04

    .global animCmdTable
animCmdTable:
    .4byte animCmd_GetTiles, animCmd_GetPalette, animCmd_JumpBack, animCmd_End
    .4byte animCmd_PlaySoundEffect, animCmd_AddHitbox, animCmd_TranslateSprite, animCmd_8
    .4byte animCmd_SetIdAndVariant, animCmd_10, animCmd_SetSpritePriority, animCmd_SetOamOrder

    .global gOamShapesSizes
gOamShapesSizes:
    .incbin "baserom.gba", 0x0009C120, 0x18

    .global gUnknown_0809C138
gUnknown_0809C138:
    .incbin "baserom.gba", 0x0009C138, 0x20
