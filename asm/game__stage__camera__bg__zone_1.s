.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start StageBgUpdate_Zone1Acts12
StageBgUpdate_Zone1Acts12: @ 0x0803E78C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _0803E854 @ =gCamera
	movs r1, #0x10
	ldrsh r0, [r2, r1]
	subs r4, r4, r0
	ldr r0, _0803E858 @ =gStageBackgroundsRam + 0xC0
	ldr r3, _0803E85C @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r2, #0x28]
	strh r1, [r3, #0xc]
	strh r1, [r2, #0x2a]
	strh r1, [r3, #0xe]
	strh r1, [r0, #0x30]
	strh r1, [r0, #0x32]
	bl DrawBackground
	ldr r1, _0803E860 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r1, _0803E864 @ =sa2__gUnknown_03002878
	ldr r0, _0803E868 @ =0x0400001C
	str r0, [r1]
	ldr r0, _0803E86C @ =sa2__gUnknown_03002A80
	strb r2, [r0]
	ldr r0, _0803E870 @ =gBgOffsetsHBlank
	ldr r1, [r0]
	ldr r6, _0803E874 @ =gStageTime
	movs r5, #0xff
	movs r3, #0
	movs r2, #7
_0803E7CE:
	ldr r0, [r6]
	lsrs r0, r0, #4
	ands r0, r5
	strh r0, [r1]
	adds r1, #2
	strh r3, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _0803E7CE
	ldr r6, _0803E874 @ =gStageTime
	movs r5, #0xff
	movs r3, #0
	movs r2, #0xf
_0803E7EA:
	ldr r0, [r6]
	lsrs r0, r0, #5
	ands r0, r5
	strh r0, [r1]
	adds r1, #2
	strh r3, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _0803E7EA
	movs r2, #0x18
	ldr r6, _0803E874 @ =gStageTime
	movs r5, #0xff
	movs r3, #0
_0803E806:
	ldr r0, [r6]
	lsrs r0, r0, #6
	ands r0, r5
	strh r0, [r1]
	adds r1, #2
	strh r3, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x27
	ble _0803E806
	cmp r2, #0x57
	bgt _0803E82E
	movs r0, #0
_0803E820:
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x57
	ble _0803E820
_0803E82E:
	cmp r2, #0x9f
	bgt _0803E84E
	movs r5, #0
	adds r0, r2, #0
	subs r0, #0x56
	adds r3, r0, #0
	muls r3, r4, r3
_0803E83C:
	asrs r0, r3, #8
	strh r0, [r1]
	adds r1, #2
	strh r5, [r1]
	adds r1, #2
	adds r3, r3, r4
	adds r2, #1
	cmp r2, #0x9f
	ble _0803E83C
_0803E84E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803E854: .4byte gCamera
_0803E858: .4byte gStageBackgroundsRam + 0xC0
_0803E85C: .4byte gBgScrollRegs
_0803E860: .4byte gFlags
_0803E864: .4byte sa2__gUnknown_03002878
_0803E868: .4byte 0x0400001C
_0803E86C: .4byte sa2__gUnknown_03002A80
_0803E870: .4byte gBgOffsetsHBlank
_0803E874: .4byte gStageTime
