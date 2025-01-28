.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start StageBgUpdate_Zone7Act1
StageBgUpdate_Zone7Act1: @ 0x0803F7A8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r5, _0803F7FC @ =gCamera
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	subs r4, r4, r0
	ldr r0, _0803F800 @ =gRefCollision
	ldr r0, [r0]
	mov r8, r0
	lsls r0, r2, #6
	lsls r2, r2, #3
	subs r0, r0, r2
	mov r2, r8
	ldrh r1, [r2, #0x1c]
	subs r1, #0xf0
	bl Div
	ldr r6, _0803F804 @ =gBgScrollRegs
	strh r0, [r5, #0x28]
	strh r0, [r6, #0xc]
	lsls r0, r4, #4
	lsls r4, r4, #3
	adds r0, r0, r4
	mov r2, r8
	ldrh r1, [r2, #0x1e]
	subs r1, #0xa0
	bl Div
	strh r0, [r5, #0x2a]
	strh r0, [r6, #0xe]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803F7FC: .4byte gCamera
_0803F800: .4byte gRefCollision
_0803F804: .4byte gBgScrollRegs
