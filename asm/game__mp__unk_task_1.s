.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
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
	bl sub_801D0CC
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
.endif
