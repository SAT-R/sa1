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

	thumb_func_start sub_801C9D8
sub_801C9D8: @ 0x0801C9D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _0801CA58 @ =gWinRegs
	movs r2, #0
	movs r4, #0
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	strh r4, [r0]
	strh r4, [r0, #4]
	strh r4, [r0, #2]
	strh r4, [r0, #6]
	ldr r0, _0801CA5C @ =gDispCnt
	movs r3, #0x40
	strh r3, [r0]
	ldr r1, _0801CA60 @ =gBgCntRegs
	ldr r0, _0801CA64 @ =0x00005E0B
	strh r0, [r1, #6]
	ldr r0, _0801CA68 @ =gBldRegs
	strh r4, [r0]
	strh r4, [r0, #4]
	ldr r0, _0801CA6C @ =gMultiplayerMissingHeartbeats
	strb r2, [r0, #3]
	strb r2, [r0, #2]
	strb r2, [r0, #1]
	strb r2, [r0]
	ldr r1, _0801CA70 @ =sa2__gUnknown_03004D80
	movs r0, #0xff
	strb r0, [r1, #3]
	ldr r0, _0801CA74 @ =sa2__gUnknown_03002280
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xd]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0xe]
	strb r3, [r0, #0xf]
	str r4, [sp, #4]
	ldr r1, _0801CA78 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _0801CA7C @ =0x06009FE0
	str r0, [r1, #4]
	ldr r0, _0801CA80 @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0801CA84 @ =Task_801CB80
	ldr r1, _0801CA88 @ =0x00000434
	movs r2, #0x80
	lsls r2, r2, #6
	str r4, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r1, _0801CA8C @ =0x03000430
	adds r0, r0, r1
	strh r4, [r0]
	movs r6, #0
	ldr r2, _0801CA90 @ =gMultiplayerConnections
	ldrb r0, [r2]
	movs r1, #1
	b _0801CA9E
	.align 2, 0
_0801CA58: .4byte gWinRegs
_0801CA5C: .4byte gDispCnt
_0801CA60: .4byte gBgCntRegs
_0801CA64: .4byte 0x00005E0B
_0801CA68: .4byte gBldRegs
_0801CA6C: .4byte gMultiplayerMissingHeartbeats
_0801CA70: .4byte sa2__gUnknown_03004D80
_0801CA74: .4byte sa2__gUnknown_03002280
_0801CA78: .4byte 0x040000D4
_0801CA7C: .4byte 0x06009FE0
_0801CA80: .4byte 0x85000010
_0801CA84: .4byte Task_801CB80
_0801CA88: .4byte 0x00000434
_0801CA8C: .4byte 0x03000430
_0801CA90: .4byte gMultiplayerConnections
_0801CA94:
	adds r6, #1
	cmp r6, #3
	bhi _0801CAB4
	ldrb r0, [r2]
	asrs r0, r6
_0801CA9E:
	ands r0, r1
	cmp r0, #0
	bne _0801CA94
	cmp r6, #3
	bne _0801CAB4
	ldr r0, _0801CAB0 @ =0x00000432
	adds r1, r5, r0
	movs r0, #0x14
	b _0801CACA
	.align 2, 0
_0801CAB0: .4byte 0x00000432
_0801CAB4:
	cmp r6, #2
	bne _0801CAC4
	ldr r0, _0801CAC0 @ =0x00000432
	adds r1, r5, r0
	movs r0, #0x28
	b _0801CACA
	.align 2, 0
_0801CAC0: .4byte 0x00000432
_0801CAC4:
	ldr r0, _0801CB6C @ =0x00000432
	adds r1, r5, r0
	movs r0, #0
_0801CACA:
	strh r0, [r1]
	ldr r0, _0801CB70 @ =0x06008000
	str r0, [r5, #4]
	movs r2, #0
	movs r0, #0
	strh r0, [r5, #0xa]
	ldr r1, _0801CB74 @ =0x0600F000
	str r1, [r5, #0xc]
	strh r0, [r5, #0x18]
	strh r0, [r5, #0x1a]
	movs r1, #0x58
	strh r1, [r5, #0x1c]
	strh r0, [r5, #0x1e]
	strh r0, [r5, #0x20]
	strh r0, [r5, #0x22]
	strh r0, [r5, #0x24]
	movs r0, #0x1e
	strh r0, [r5, #0x26]
	movs r0, #0x14
	strh r0, [r5, #0x28]
	adds r0, r5, #0
	adds r0, #0x2a
	strb r2, [r0]
	movs r0, #3
	strh r0, [r5, #0x2e]
	adds r0, r5, #0
	bl DrawBackground
	movs r6, #0
	movs r3, #0
	movs r2, #0
	adds r4, r5, #0
	adds r4, #0x88
	movs r7, #0x14
	adds r5, #0x80
_0801CB10:
	movs r0, #0x78
	strh r0, [r4, #0xe]
	strh r7, [r4, #0x10]
	lsls r0, r6, #0xb
	ldr r1, _0801CB78 @ =0x06010000
	adds r0, r0, r1
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x12]
	strh r2, [r4]
	ldr r1, _0801CB7C @ =gPlayerCharacterIdleAnims
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #2]
	strb r3, [r4, #0x18]
	strh r2, [r4, #0xc]
	strh r2, [r4, #0x14]
	movs r0, #0xff
	strb r0, [r4, #0x19]
	movs r0, #0x10
	strb r0, [r4, #0x1a]
	strb r3, [r4, #0x1d]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r5, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl UpdateSpriteAnimation
	adds r4, #0x38
	adds r7, #0x28
	adds r5, #0x38
	adds r6, #1
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	cmp r6, #3
	bls _0801CB10
	bl sub_80535FC
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CB6C: .4byte 0x00000432
_0801CB70: .4byte 0x06008000
_0801CB74: .4byte 0x0600F000
_0801CB78: .4byte 0x06010000
_0801CB7C: .4byte gPlayerCharacterIdleAnims

	thumb_func_start Task_801CB80
Task_801CB80: @ 0x0801CB80
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r2, _0801CBEC @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0801CBF0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801CC2E
	movs r3, #0
	ldr r0, _0801CBF4 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _0801CC2E
	movs r5, #1
	ldr r2, _0801CBF8 @ =gMultiplayerMissingHeartbeats
_0801CBAE:
	ldr r1, _0801CBFC @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0801CC18
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0801CC1C
	movs r0, #0
	ldr r1, _0801CC00 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0801CC04 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801CC08 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801CC0C @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0801CC10 @ =gVramGraphicsCopyCursor
	ldr r0, _0801CC14 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0801CD6E
	.align 2, 0
_0801CBEC: .4byte gDispCnt
_0801CBF0: .4byte gGameMode
_0801CBF4: .4byte gMultiplayerConnections
_0801CBF8: .4byte gMultiplayerMissingHeartbeats
_0801CBFC: .4byte gMultiSioStatusFlags
_0801CC00: .4byte 0x0000FFFF
_0801CC04: .4byte gBackgroundsCopyQueueCursor
_0801CC08: .4byte gBackgroundsCopyQueueIndex
_0801CC0C: .4byte sa2__gUnknown_03005390
_0801CC10: .4byte gVramGraphicsCopyCursor
_0801CC14: .4byte gVramGraphicsCopyQueueIndex
_0801CC18:
	movs r0, #0
	strb r0, [r2]
_0801CC1C:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0801CC2E
	ldrb r0, [r6]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0801CBAE
_0801CC2E:
	ldr r5, _0801CC68 @ =gCurTask
	ldr r0, [r5]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r0, _0801CC6C @ =0x03000430
	adds r2, r3, r0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	ldrh r1, [r2]
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #0x18
	cmp r0, r1
	bls _0801CC74
	strh r4, [r2]
	bl Task_801D0CC
	ldr r1, [r5]
	ldr r0, _0801CC70 @ =Task_801D34C
	str r0, [r1, #8]
	bl _call_via_r0
	b _0801CD6E
	.align 2, 0
_0801CC68: .4byte gCurTask
_0801CC6C: .4byte 0x03000430
_0801CC70: .4byte Task_801D34C
_0801CC74:
	ldr r1, _0801CC9C @ =0x03000432
	adds r0, r3, r1
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _0801CC92
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r4, [sp]
	movs r0, #3
	movs r1, #0
	movs r3, #0xf0
	bl sa2__sub_80078D4
_0801CC92:
	movs r5, #0
	ldr r0, _0801CCA0 @ =gMultiplayerConnections
	ldrb r0, [r0]
	b _0801CD3E
	.align 2, 0
_0801CC9C: .4byte 0x03000432
_0801CCA0: .4byte gMultiplayerConnections
_0801CCA4:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0801CCF4
	ldr r1, _0801CCF0 @ =0x00000432
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r2, r4, #0
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #3
	adds r1, r2, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, #1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r3, #0x86
	lsls r3, r3, #3
	adds r0, r6, r3
	ldrh r0, [r0]
	lsrs r0, r0, #8
	movs r3, #0xf0
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	rsbs r4, r4, #0
	movs r0, #0xff
	ands r4, r0
	str r4, [sp]
	movs r0, #3
	bl sa2__sub_80078D4
	b _0801CD34
	.align 2, 0
_0801CCF0: .4byte 0x00000432
_0801CCF4:
	ldr r1, _0801CD78 @ =0x00000432
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r2, r4, #0
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #3
	adds r1, r2, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, #1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r3, #0x86
	lsls r3, r3, #3
	adds r0, r6, r3
	ldrh r3, [r0]
	lsrs r3, r3, #8
	subs r3, #0xf0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	rsbs r4, r4, #0
	movs r0, #0xff
	ands r4, r0
	str r4, [sp]
	movs r0, #3
	bl sa2__sub_80078D4
_0801CD34:
	cmp r5, #3
	bhi _0801CD46
	ldr r0, _0801CD7C @ =gMultiplayerConnections
	ldrb r0, [r0]
	asrs r0, r5
_0801CD3E:
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801CCA4
_0801CD46:
	ldr r1, _0801CD78 @ =0x00000432
	adds r0, r6, r1
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _0801CD6E
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #3
	adds r1, r2, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	movs r2, #0xa0 @ DISPLAY_HEIGHT ?
	movs r3, #0xf0 @ DISPLAY_WIDTH  ?
	bl sa2__sub_80078D4
_0801CD6E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801CD78: .4byte 0x00000432
_0801CD7C: .4byte gMultiplayerConnections

	thumb_func_start Task_801CD80
Task_801CD80: @ 0x0801CD80
	push {r4, r5, lr}
	ldr r0, _0801CDF0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0801CDF4 @ =0x03000430
	adds r4, r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r1, [r4]
	adds r0, r0, r1
	movs r5, #0
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	bhi _0801CDA8
	b _0801CEF0
_0801CDA8:
	strh r1, [r4]
	ldr r1, _0801CDF8 @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r2, _0801CDFC @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r1, _0801CE00 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0801CE04 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801CE08 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801CE0C @ =sa2__gUnknown_03005390
	strb r5, [r0]
	ldr r1, _0801CE10 @ =gVramGraphicsCopyCursor
	ldr r0, _0801CE14 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r4, _0801CE18 @ =gGameMode
	ldrb r0, [r4]
	cmp r0, #2
	beq _0801CDE4
	cmp r0, #4
	bne _0801CE58
_0801CDE4:
	movs r2, #0
	ldr r3, _0801CE1C @ =gMultiplayerConnections
	ldrb r0, [r3]
	movs r1, #1
	b _0801CE2E
	.align 2, 0
_0801CDF0: .4byte gCurTask
_0801CDF4: .4byte 0x03000430
_0801CDF8: .4byte gBldRegs
_0801CDFC: .4byte gFlags
_0801CE00: .4byte 0x0000FFFF
_0801CE04: .4byte gBackgroundsCopyQueueCursor
_0801CE08: .4byte gBackgroundsCopyQueueIndex
_0801CE0C: .4byte sa2__gUnknown_03005390
_0801CE10: .4byte gVramGraphicsCopyCursor
_0801CE14: .4byte gVramGraphicsCopyQueueIndex
_0801CE18: .4byte gGameMode
_0801CE1C: .4byte gMultiplayerConnections
_0801CE20:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0801CE34
	ldrb r0, [r3]
	asrs r0, r2
_0801CE2E:
	ands r0, r1
	cmp r0, #0
	bne _0801CE20
_0801CE34:
	cmp r2, #2
	bhi _0801CE52
	ldr r1, _0801CE44 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #2
	bne _0801CE48
	strb r0, [r1]
	b _0801CEE8
	.align 2, 0
_0801CE44: .4byte gGameMode
_0801CE48:
	movs r0, #4
	strb r0, [r1]
	bl sub_8062F90
	b _0801CEFC
_0801CE52:
	bl sub_8018AE0
	b _0801CEFC
_0801CE58:
	movs r0, #3
	bl m4aSongNumStop
	ldr r0, _0801CEA8 @ =gInput
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801CEB4
	ldr r3, _0801CEAC @ =sa2__gUnknown_03004D80
	strb r5, [r3]
	ldr r0, _0801CEB0 @ =sa2__gUnknown_03002280
	strb r5, [r0]
	strb r5, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x20
	strb r2, [r0, #3]
	strb r5, [r3, #1]
	strb r5, [r0, #4]
	strb r5, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r5, [r3, #2]
	strb r5, [r0, #8]
	strb r5, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	strb r5, [r3, #3]
	strb r5, [r0, #0xc]
	strb r5, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r2, [r0, #0xf]
	bl CreateUnusedLevelSelect
	b _0801CEFC
	.align 2, 0
_0801CEA8: .4byte gInput
_0801CEAC: .4byte sa2__gUnknown_03004D80
_0801CEB0: .4byte sa2__gUnknown_03002280
_0801CEB4:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801CEE8
	ldr r1, _0801CEDC @ =gLoadedSaveGame
	ldr r0, _0801CEE0 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r1, #8
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0801CEE8
	ldr r0, _0801CEE4 @ =gCurrentLevel
	strb r5, [r0]
	bl ApplyGameStageSettings
	b _0801CEFC
	.align 2, 0
_0801CEDC: .4byte gLoadedSaveGame
_0801CEE0: .4byte gSelectedCharacter
_0801CEE4: .4byte gCurrentLevel
_0801CEE8:
	movs r0, #0
	bl sub_8061948
	b _0801CEFC
_0801CEF0:
	bl sub_801CF08
	ldr r1, _0801CF04 @ =gBldRegs
	ldrh r0, [r4]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
_0801CEFC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801CF04: .4byte gBldRegs

	thumb_func_start sub_801CF08
sub_801CF08: @ 0x0801CF08
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0801CF6C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801CFAA
	movs r3, #0
	ldr r0, _0801CF70 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _0801CFAA
	movs r5, #1
	ldr r2, _0801CF74 @ =gMultiplayerMissingHeartbeats
_0801CF2E:
	ldr r1, _0801CF78 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0801CF94
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0801CF98
	movs r0, #0
	ldr r1, _0801CF7C @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0801CF80 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801CF84 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801CF88 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0801CF8C @ =gVramGraphicsCopyCursor
	ldr r0, _0801CF90 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0801D0A4
	.align 2, 0
_0801CF6C: .4byte gGameMode
_0801CF70: .4byte gMultiplayerConnections
_0801CF74: .4byte gMultiplayerMissingHeartbeats
_0801CF78: .4byte gMultiSioStatusFlags
_0801CF7C: .4byte 0x0000FFFF
_0801CF80: .4byte gBackgroundsCopyQueueCursor
_0801CF84: .4byte gBackgroundsCopyQueueIndex
_0801CF88: .4byte sa2__gUnknown_03005390
_0801CF8C: .4byte gVramGraphicsCopyCursor
_0801CF90: .4byte gVramGraphicsCopyQueueIndex
_0801CF94:
	movs r0, #0
	strb r0, [r2]
_0801CF98:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0801CFAA
	ldrb r0, [r6]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0801CF2E
_0801CFAA:
	ldr r0, _0801D0B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov sb, r0
	ldr r1, _0801D0B8 @ =0x03000432
	adds r0, r4, r1
	ldrh r2, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0801CFD8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	movs r1, #0
	movs r3, #0xf0
	bl sa2__sub_80078D4
_0801CFD8:
	movs r5, #0
	ldr r0, _0801D0BC @ =gMultiplayerConnections
	ldrb r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801D07C
	ldr r2, _0801D0B8 @ =0x03000432
	adds r2, r2, r4
	mov r8, r2
_0801CFEC:
	mov r0, r8
	ldrh r3, [r0]
	adds r2, r3, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r7, r0, #3
	adds r1, r2, r7
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r4, r5, #1
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	rsbs r3, r3, #0
	movs r0, #0xff
	ands r3, r0
	str r3, [sp]
	movs r0, #3
	movs r3, #0
	bl sa2__sub_80078D4
	ldr r0, _0801D0C0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r6, r4, #0
	cmp r5, r0
	beq _0801D038
	ldr r0, _0801D0BC @ =gMultiplayerConnections
	ldrb r0, [r0]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801D068
_0801D038:
	ldr r0, _0801D0C4 @ =gMultiplayerCharacters
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r4, r0, #3
	subs r4, r4, r0
	lsls r4, r4, #3
	adds r4, #0x80
	add r4, sb
	movs r0, #0x78
	strh r0, [r4, #0x16]
	adds r0, r7, #0
	adds r0, #0x14
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0801D068:
	adds r5, r6, #0
	cmp r5, #3
	bhi _0801D07C
	ldr r0, _0801D0BC @ =gMultiplayerConnections
	ldrb r0, [r0]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801CFEC
_0801D07C:
	ldr r0, _0801D0C8 @ =0x00000432
	add r0, sb
	ldrh r2, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0801D0A4
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #3
	adds r1, r2, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	movs r2, #0xa0
	movs r3, #0xf0
	bl sa2__sub_80078D4
_0801D0A4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D0B4: .4byte gCurTask
_0801D0B8: .4byte 0x03000432
_0801D0BC: .4byte gMultiplayerConnections
_0801D0C0: .4byte 0x04000128
_0801D0C4: .4byte gMultiplayerCharacters
_0801D0C8: .4byte 0x00000432

	thumb_func_start Task_801D0CC
Task_801D0CC: @ 0x0801D0CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	ldr r0, _0801D1E8 @ =Task_801D200
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _0801D1EC @ =TaskDestructor_801D3C8
	str r1, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	add r4, sp, #0x30
	movs r0, #0
	strb r0, [r4]
	mov r1, sp
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	ldr r6, _0801D1F0 @ =gUiGraphics
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r1, _0801D1F4 @ =0x00000694
	adds r0, r6, r1
	ldr r0, [r0]
	str r0, [sp, #0x24]
	movs r0, #0xe0
	bl VramMalloc
	str r0, [sp, #0x10]
	movs r0, #0xe0
	lsls r0, r0, #5
	str r0, [sp, #0x1c]
	movs r0, #0x20
	str r0, [sp, #0x28]
	add r1, sp, #0x2c
	movs r0, #4
	strb r0, [r1]
	adds r1, #2
	movs r0, #0xd
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	add r2, sp, #4
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	bl sub_80528AC
	ldr r0, [sp, #0x10]
	str r0, [r7, #0x64]
	ldr r6, _0801D1F8 @ =0x03000060
	adds r1, r5, r6
	movs r0, #0xa
	strh r0, [r1]
	ldr r0, _0801D1FC @ =0x03000062
	adds r5, r5, r0
	movs r0, #0x14
	strh r0, [r5]
	movs r1, #0
	mov ip, r1
	movs r6, #0xa
	mov r8, r6
	movs r5, #1
	movs r2, #1
	movs r4, #0x14
	movs r3, #4
_0801D1B8:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r7, r0
	mov r6, r8
	strh r6, [r0, #0xa]
	strh r4, [r0, #0xc]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x10]
	strh r3, [r0, #0x12]
	strb r5, [r0, #0x16]
	mov r6, ip
	strh r6, [r0, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0801D1B8
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D1E8: .4byte Task_801D200
_0801D1EC: .4byte TaskDestructor_801D3C8
_0801D1F0: .4byte gUiGraphics
_0801D1F4: .4byte 0x00000694
_0801D1F8: .4byte 0x03000060
_0801D1FC: .4byte 0x03000062

	thumb_func_start Task_801D200
Task_801D200: @ 0x0801D200
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _0801D228 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp]
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r2, _0801D22C @ =gMultiplayerConnections
	ldrb r0, [r2]
	movs r1, #1
	b _0801D244
	.align 2, 0
_0801D228: .4byte gCurTask
_0801D22C: .4byte gMultiplayerConnections
_0801D230:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	cmp r0, #3
	bhi _0801D24A
	ldrb r0, [r2]
	ldr r3, [sp, #0x18]
	asrs r0, r3
_0801D244:
	ands r0, r1
	cmp r0, #0
	bne _0801D230
_0801D24A:
	movs r0, #0x14
	ldr r4, [sp, #0x18]
	cmp r4, #3
	beq _0801D25A
	movs r0, #0
	cmp r4, #2
	bne _0801D25A
	movs r0, #0x28
_0801D25A:
	movs r6, #0
	ldr r7, [sp, #0x18]
	cmp r6, r7
	bhs _0801D336
	ldr r1, [sp]
	adds r1, #0x60
	str r1, [sp, #0x10]
	ldr r3, [sp]
	adds r3, #0x62
	str r3, [sp, #0x14]
	ldr r4, _0801D2DC @ =gLoadedSaveGame
	str r4, [sp, #8]
	str r0, [sp, #4]
_0801D274:
	movs r5, #0
	lsls r7, r6, #1
	mov sl, r7
	lsls r0, r6, #2
	lsls r1, r6, #0x10
	mov sb, r1
	adds r3, r6, #1
	str r3, [sp, #0xc]
	adds r0, r0, r6
	lsls r0, r0, #3
	ldr r4, [sp, #4]
	adds r4, r4, r0
	mov r8, r4
_0801D28E:
	mov r7, sl
	adds r0, r7, r6
	lsls r0, r0, #3
	ldr r1, [sp]
	adds r2, r1, r0
	lsls r0, r5, #3
	ldr r3, [sp, #0x10]
	ldrh r3, [r3]
	adds r0, r0, r3
	strh r0, [r2, #0xa]
	ldr r4, [sp, #0x14]
	ldrh r0, [r4]
	mov r7, r8
	adds r3, r0, r7
	strh r3, [r2, #0xc]
	ldr r0, _0801D2E0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r4, sb
	lsrs r1, r4, #0x10
	cmp r0, r1
	bne _0801D2E8
	ldr r7, _0801D2E4 @ =gLoadedSaveGame + 0x10
	adds r1, r5, r7
	ldrb r0, [r1]
	subs r0, #0x70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _0801D2D2
	adds r0, r3, #0
	adds r0, #8
	strh r0, [r2, #0xc]
_0801D2D2:
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_8052F78
	b _0801D320
	.align 2, 0
_0801D2DC: .4byte gLoadedSaveGame
_0801D2E0: .4byte 0x04000128
_0801D2E4: .4byte gLoadedSaveGame + 0x10
_0801D2E8:
	ldr r0, _0801D348 @ =gUnknown_03005008
	adds r1, r6, r0
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r5
	mov ip, r0
	ldr r0, [sp, #8]
	movs r7, #0xe1
	lsls r7, r7, #2
	adds r4, r0, r7
	mov r7, ip
	adds r0, r7, r4
	ldrb r0, [r0]
	subs r0, #0x70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _0801D312
	adds r0, r3, #0
	adds r0, #8
	strh r0, [r2, #0xc]
_0801D312:
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, r0, r5
	adds r1, r2, #0
	bl sub_8052F78
_0801D320:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _0801D28E
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	ldr r3, [sp, #0x18]
	cmp r6, r3
	blo _0801D274
_0801D336:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D348: .4byte gUnknown_03005008

	thumb_func_start Task_801D34C
Task_801D34C: @ 0x0801D34C
	push {r4, lr}
	ldr r4, _0801D39C @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	ldr r1, _0801D3A0 @ =0x03000430
	adds r2, r0, r1
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0801D3BC
	movs r0, #0
	strh r0, [r2]
	ldr r1, _0801D3A4 @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	ldr r0, _0801D3A8 @ =gMPlayInfo_BGM
	movs r1, #0
	bl m4aMPlayFadeOut
	ldr r0, _0801D3AC @ =gMPlayInfo_SE1
	movs r1, #0
	bl m4aMPlayFadeOut
	ldr r0, _0801D3B0 @ =gMPlayInfo_SE2
	movs r1, #0
	bl m4aMPlayFadeOut
	ldr r0, _0801D3B4 @ =gMPlayInfo_SE3
	movs r1, #0
	bl m4aMPlayFadeOut
	ldr r1, [r4]
	ldr r0, _0801D3B8 @ =Task_801CD80
	str r0, [r1, #8]
	bl _call_via_r0
	b _0801D3C0
	.align 2, 0
_0801D39C: .4byte gCurTask
_0801D3A0: .4byte 0x03000430
_0801D3A4: .4byte gBldRegs
_0801D3A8: .4byte gMPlayInfo_BGM
_0801D3AC: .4byte gMPlayInfo_SE1
_0801D3B0: .4byte gMPlayInfo_SE2
_0801D3B4: .4byte gMPlayInfo_SE3
_0801D3B8: .4byte Task_801CD80
_0801D3BC:
	bl sub_801CF08
_0801D3C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_801D3C8
TaskDestructor_801D3C8: @ 0x0801D3C8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x64]
	bl VramFree
	pop {r0}
	bx r0
