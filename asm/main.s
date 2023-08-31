.include "asm/macros.inc"

.text
.syntax unified
.arm

	thumb_func_start AgbMain
AgbMain: @ 0x08001494
	push {lr}
	bl GameInit
	bl GameStart
	bl GameLoop
	pop {r0}
	bx r0
	.align 2, 0
