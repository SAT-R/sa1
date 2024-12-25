	.section .rodata

    .global gIntrTableTemplate
gIntrTableTemplate:
    .4byte gMultiSioIntrFuncBuf, VBlankIntr, HBlankIntr, VCountIntr
    .4byte Timer0Intr, Timer1Intr, Timer2Intr, Dma0Intr
    .4byte Dma1Intr, Dma2Intr, Dma3Intr, KeypadIntr
    .4byte GamepakIntr, 0

    .global spriteUpdateFuncs
spriteUpdateFuncs:
    .4byte ProcessVramGraphicsCopyQueue, sa2__sub_8004010, sa2__sub_80039E4, sa2__sub_8002B20
