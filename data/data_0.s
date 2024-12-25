	.section .rodata

    .global gIntrTableTemplate
gIntrTableTemplate:
    .4byte gMultiSioIntrFuncBuf, VBlankIntr, HBlankIntr, VCountIntr
    .4byte Timer0Intr, Timer1Intr, Timer2Intr, Dma0Intr
    .4byte Dma1Intr, Dma2Intr, Dma3Intr, KeypadIntr
    .4byte GamepakIntr, 0

    .global spriteUpdateFuncs
spriteUpdateFuncs:
    .4byte ProcessVramGraphicsCopyQueue, sa2__sub_8004010, sub_8002958, sub_8001AA4

    .global animCmdTable_BG
animCmdTable_BG:
    .4byte animCmd_GetTiles_BG, animCmd_GetPalette_BG, animCmd_JumpBack_BG, animCmd_End_BG
    .4byte animCmd_PlaySoundEffect_BG, animCmd_AddHitbox_BG, animCmd_TranslateSprite_BG, animCmd_8_BG
    .4byte animCmd_SetIdAndVariant_BG, animCmd_10_BG, animCmd_SetSpritePriority_BG, animCmd_SetOamOrder_BG

    .global gSineTable
gSineTable:
    .incbin "baserom.gba", 0x0009B6E8, 0xA00
