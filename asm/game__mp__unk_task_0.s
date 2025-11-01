.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_801C704
sub_801C704: @ 0x0801C704
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0801C758 @ =Task_801C770
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0801C75C @ =TaskDestructor_801C980
	str r1, [sp]
	movs r1, #8
	adds r2, r4, #0
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r2, r1
	movs r3, #0
	movs r5, #0
	strh r5, [r2, #2]
	movs r1, #0x96
	lsls r1, r1, #2
	strh r1, [r2, #4]
	strb r3, [r2, #6]
	movs r1, #0x40
	strh r1, [r2]
	ldr r2, _0801C760 @ =gDispCnt
	ldrh r1, [r2]
	orrs r4, r1
	strh r4, [r2]
	ldr r2, _0801C764 @ =gWinRegs
	movs r1, #0x1f
	strh r1, [r2, #8]
	movs r1, #0x3f
	strh r1, [r2, #0xa]
	ldr r2, _0801C768 @ =gBldRegs
	ldr r1, _0801C76C @ =0x00003FDF
	strh r1, [r2]
	strh r5, [r2, #4]
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801C758: .4byte Task_801C770
_0801C75C: .4byte TaskDestructor_801C980
_0801C760: .4byte gDispCnt
_0801C764: .4byte gWinRegs
_0801C768: .4byte gBldRegs
_0801C76C: .4byte 0x00003FDF

	thumb_func_start Task_801C770
Task_801C770: @ 0x0801C770
	push {r4, r5, lr}
	ldr r0, _0801C7E0 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldrh r0, [r2, #2]
	adds r0, #0x40
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x15
	cmp r0, r1
	bne _0801C792
	ldr r0, _0801C7E4 @ =Task_801C810
	str r0, [r3, #8]
_0801C792:
	ldr r1, _0801C7E8 @ =gBldRegs
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #4]
	ldr r1, _0801C7EC @ =gWinRegs
	ldr r0, _0801C7F0 @ =0x00001190
	strh r0, [r1, #4]
	ldr r3, _0801C7F4 @ =gVBlankCallbacks
	ldr r2, _0801C7F8 @ =gNumVBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0801C7FC @ =sub_801C9AC
	str r1, [r0]
	ldr r5, _0801C800 @ =gFlags
	ldr r3, [r5]
	movs r0, #0x10
	orrs r3, r0
	ldr r4, _0801C804 @ =gHBlankCallbacks
	ldr r2, _0801C808 @ =gNumHBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, _0801C80C @ =sub_801C9C0
	str r1, [r0]
	movs r0, #8
	orrs r3, r0
	str r3, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C7E0: .4byte gCurTask
_0801C7E4: .4byte Task_801C810
_0801C7E8: .4byte gBldRegs
_0801C7EC: .4byte gWinRegs
_0801C7F0: .4byte 0x00001190
_0801C7F4: .4byte gVBlankCallbacks
_0801C7F8: .4byte gNumVBlankCallbacks
_0801C7FC: .4byte sub_801C9AC
_0801C800: .4byte gFlags
_0801C804: .4byte gHBlankCallbacks
_0801C808: .4byte gNumHBlankCallbacks
_0801C80C: .4byte sub_801C9C0

	thumb_func_start Task_801C810
Task_801C810: @ 0x0801C810
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0801C8A4 @ =gCurTask
	mov r8, r0
	ldr r7, [r0]
	ldrh r4, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r1, _0801C8A8 @ =0x04000128
	mov ip, r1
	ldr r0, [r1]
	ldr r1, _0801C8AC @ =gBldRegs
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #4]
	ldr r3, _0801C8B0 @ =gVBlankCallbacks
	ldr r2, _0801C8B4 @ =gNumVBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0801C8B8 @ =sub_801C9AC
	str r1, [r0]
	ldr r6, _0801C8BC @ =gFlags
	ldr r3, [r6]
	movs r0, #0x10
	orrs r3, r0
	ldr r5, _0801C8C0 @ =gHBlankCallbacks
	ldr r2, _0801C8C4 @ =gNumHBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r1, _0801C8C8 @ =sub_801C9C0
	str r1, [r0]
	movs r0, #8
	orrs r3, r0
	str r3, [r6]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801C87A
	ldr r0, _0801C8CC @ =Task_801C8D4
	str r0, [r7, #8]
_0801C87A:
	ldr r1, _0801C8D0 @ =sa2__gUnknown_030054B4
	mov r2, ip
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0801C89A
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
_0801C89A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C8A4: .4byte gCurTask
_0801C8A8: .4byte 0x04000128
_0801C8AC: .4byte gBldRegs
_0801C8B0: .4byte gVBlankCallbacks
_0801C8B4: .4byte gNumVBlankCallbacks
_0801C8B8: .4byte sub_801C9AC
_0801C8BC: .4byte gFlags
_0801C8C0: .4byte gHBlankCallbacks
_0801C8C4: .4byte gNumHBlankCallbacks
_0801C8C8: .4byte sub_801C9C0
_0801C8CC: .4byte Task_801C8D4
_0801C8D0: .4byte sa2__gUnknown_030054B4

	thumb_func_start Task_801C8D4
Task_801C8D4: @ 0x0801C8D4
	push {r4, r5, lr}
	ldr r0, _0801C910 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	subs r0, #0x40
	strh r0, [r1, #2]
	lsls r2, r0, #0x10
	cmp r2, #0
	blt _0801C906
	ldr r1, _0801C914 @ =sa2__gUnknown_030054B4
	ldr r0, _0801C918 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0801C91C
_0801C906:
	adds r0, r3, #0
	bl TaskDestroy
	b _0801C958
	.align 2, 0
_0801C910: .4byte gCurTask
_0801C914: .4byte sa2__gUnknown_030054B4
_0801C918: .4byte 0x04000128
_0801C91C:
	ldr r1, _0801C960 @ =gBldRegs
	asrs r0, r2, #0x18
	strh r0, [r1, #4]
	ldr r3, _0801C964 @ =gVBlankCallbacks
	ldr r2, _0801C968 @ =gNumVBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0801C96C @ =sub_801C9AC
	str r1, [r0]
	ldr r5, _0801C970 @ =gFlags
	ldr r3, [r5]
	movs r0, #0x10
	orrs r3, r0
	ldr r4, _0801C974 @ =gHBlankCallbacks
	ldr r2, _0801C978 @ =gNumHBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, _0801C97C @ =sub_801C9C0
	str r1, [r0]
	movs r0, #8
	orrs r3, r0
	str r3, [r5]
_0801C958:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C960: .4byte gBldRegs
_0801C964: .4byte gVBlankCallbacks
_0801C968: .4byte gNumVBlankCallbacks
_0801C96C: .4byte sub_801C9AC
_0801C970: .4byte gFlags
_0801C974: .4byte gHBlankCallbacks
_0801C978: .4byte gNumHBlankCallbacks
_0801C97C: .4byte sub_801C9C0

	thumb_func_start TaskDestructor_801C980
TaskDestructor_801C980: @ 0x0801C980
	ldr r2, _0801C99C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0801C9A0 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0801C9A4 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r1, _0801C9A8 @ =gWinRegs
	strh r0, [r1]
	strh r0, [r1, #4]
	bx lr
	.align 2, 0
_0801C99C: .4byte gDispCnt
_0801C9A0: .4byte 0x0000DFFF
_0801C9A4: .4byte gBldRegs
_0801C9A8: .4byte gWinRegs

	thumb_func_start sub_801C9AC
sub_801C9AC: @ 0x0801C9AC
	ldr r0, _0801C9B8 @ =0x04000040
	ldr r1, _0801C9BC @ =gUnknown_087C0118
	ldrh r1, [r1]
	strh r1, [r0]
	bx lr
	.align 2, 0
_0801C9B8: .4byte 0x04000040
_0801C9BC: .4byte gUnknown_087C0118

	thumb_func_start sub_801C9C0
sub_801C9C0: @ 0x0801C9C0
	lsls r0, r0, #0x18
	ldr r2, _0801C9D0 @ =0x04000040
	lsrs r0, r0, #0x17
	ldr r1, _0801C9D4 @ =gUnknown_087C0118
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	bx lr
	.align 2, 0
_0801C9D0: .4byte 0x04000040
_0801C9D4: .4byte gUnknown_087C0118
