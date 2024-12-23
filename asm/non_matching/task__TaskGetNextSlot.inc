.include "asm/macros.inc"
.include "constants/constants.inc"

.syntax unified
.text
	ldr r3, _08001948 @ =gNumTasks
	ldr r2, [r3]
	cmp r2, #0x7f
	bgt _08001950
	ldr r1, _0800194C @ =gTaskPtrs
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r2, #1
	str r1, [r3]
	b _08001952
	.align 2, 0
_08001948: .4byte gNumTasks
_0800194C: .4byte gTaskPtrs
_08001950:
	movs r0, #0
_08001952:
	bx lr

.syntax divided
