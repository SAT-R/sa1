.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start StageBgUpdate_Zone2Act1
StageBgUpdate_Zone2Act1: @ 0x0803F854
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, _0803F888 @ =gCamera
	movs r3, #0x10
	ldrsh r0, [r4, r3]
	subs r2, r2, r0
	movs r3, #0x12
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	ldr r0, _0803F88C @ =0x000005CF
	cmp r2, r0
	bgt _0803F894
	lsls r0, r2, #4
	movs r1, #0x9c
	lsls r1, r1, #3
	bl Div
	ldr r1, _0803F890 @ =gBgScrollRegs
	strh r0, [r4, #0x28]
	strh r0, [r1, #0xc]
	movs r0, #0xb0
	lsls r0, r0, #1
	strh r0, [r4, #0x2a]
	strh r0, [r1, #0xe]
	b _0803F89A
	.align 2, 0
_0803F888: .4byte gCamera
_0803F88C: .4byte 0x000005CF
_0803F890: .4byte gBgScrollRegs
_0803F894:
	adds r0, r2, #0
	bl StageBgUpdate_Zone2_Interior
_0803F89A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start StageBgUpdate_Zone2Act2
StageBgUpdate_Zone2Act2: @ 0x0803F8A0
	push {r4, lr}
	ldr r3, _0803F8BC @ =gCamera
	movs r4, #0x10
	ldrsh r2, [r3, r4]
	subs r0, r0, r2
	movs r4, #0x12
	ldrsh r2, [r3, r4]
	subs r1, r1, r2
	bl StageBgUpdate_Zone2_Interior
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F8BC: .4byte gCamera
