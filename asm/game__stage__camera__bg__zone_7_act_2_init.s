.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateStageBg_Zone7_Act2
CreateStageBg_Zone7_Act2: @ 0x0803F808
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _0803F838 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0803F83C @ =0x06004000
	str r1, [r0, #4]
	ldr r1, _0803F840 @ =0x85001000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _0803F844 @ =0x0600E000
	str r1, [r0, #4]
	ldr r1, _0803F848 @ =0x85000200
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _0803F84C @ =gBgCntRegs
	ldr r0, _0803F850 @ =0x00005C85
	strh r0, [r1, #4]
	add sp, #4
	bx lr
	.align 2, 0
_0803F838: .4byte 0x040000D4
_0803F83C: .4byte 0x06004000
_0803F840: .4byte 0x85001000
_0803F844: .4byte 0x0600E000
_0803F848: .4byte 0x85000200
_0803F84C: .4byte gBgCntRegs
_0803F850: .4byte 0x00005C85
