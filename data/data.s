.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata
    

    .global romData
romData: @ 0x0809B670
	.incbin "baserom.gba", 0x0009B670, 0x7639DB


@; end 0x0803045
@; another end 0x07ff04b ?
