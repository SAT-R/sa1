.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_80631E8
Task_80631E8: @ 0x080631E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08063288 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r5, r1
	ldr r0, [r6, #0xc]
	ldrh r2, [r0, #6]
	adds r1, r2, r1
	ldr r0, [r6, #0x10]
	ldrh r3, [r0, #6]
	ldr r4, [r6, #0x4c]
	adds r4, #1
	str r4, [r6, #0x4c]
	str r4, [r1, #0x48]
	ldr r1, _0806328C @ =0x030002D0
	adds r1, r1, r3
	mov sl, r1
	str r4, [r1]
	ldr r7, _08063290 @ =0x03000055
	adds r1, r5, r7
	ldrb r0, [r1]
	subs r7, #6
	adds r2, r2, r7
	movs r7, #0
	mov r8, r7
	strb r0, [r2]
	ldrb r1, [r1]
	ldr r2, _08063294 @ =0x030002D7
	adds r0, r3, r2
	strb r1, [r0]
	ldr r7, _08063298 @ =0x03000057
	adds r5, r5, r7
	ldrb r0, [r5]
	ldr r1, _0806329C @ =0x030002D9
	adds r3, r3, r1
	strb r0, [r3]
	adds r0, r6, #0
	bl sub_805423C
	cmp r4, #0x40
	beq _08063254
	ldr r0, _080632A0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08063278
_08063254:
	movs r0, #0x40
	str r0, [r6, #0x4c]
	mov r2, sl
	str r0, [r2]
	ldr r2, _080632A4 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080632A8 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080632AC @ =gBldRegs
	mov r7, r8
	strh r7, [r0]
	mov r1, r8
	strh r1, [r0, #4]
	mov r2, sb
	ldr r1, [r2]
	ldr r0, _080632B0 @ =sub_80632B4
	str r0, [r1, #8]
_08063278:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063288: .4byte gCurTask
_0806328C: .4byte 0x030002D0
_08063290: .4byte 0x03000055
_08063294: .4byte 0x030002D7
_08063298: .4byte 0x03000057
_0806329C: .4byte 0x030002D9
_080632A0: .4byte gPressedKeys
_080632A4: .4byte gDispCnt
_080632A8: .4byte 0x00001FFF
_080632AC: .4byte gBldRegs
_080632B0: .4byte sub_80632B4

	thumb_func_start sub_80632B4
sub_80632B4: @ 0x080632B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08063338 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	ldr r0, [r7, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r7, #0x10]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, _0806333C @ =gGameMode
	ldrb r0, [r0]
	ldr r1, _08063340 @ =gMultiSioStatusFlags
	mov r8, r1
	cmp r0, #1
	bls _0806337A
	movs r5, #0
	ldr r2, _08063344 @ =gMultiplayerConnections
	ldrb r1, [r2]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0806337A
	movs r6, #1
	ldr r3, _08063348 @ =gMultiplayerMissingHeartbeats
_080632F8:
	adds r0, r6, #0
	lsls r0, r5
	mov r1, r8
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _08063364
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _08063368
	movs r0, #0
	ldr r1, _0806334C @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _08063350 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08063354 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08063358 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0806335C @ =gVramGraphicsCopyCursor
	ldr r0, _08063360 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _080634BC
	.align 2, 0
_08063338: .4byte gCurTask
_0806333C: .4byte gGameMode
_08063340: .4byte gMultiSioStatusFlags
_08063344: .4byte gMultiplayerConnections
_08063348: .4byte gMultiplayerMissingHeartbeats
_0806334C: .4byte 0x0000FFFF
_08063350: .4byte gBackgroundsCopyQueueCursor
_08063354: .4byte gBackgroundsCopyQueueIndex
_08063358: .4byte sa2__gUnknown_03005390
_0806335C: .4byte gVramGraphicsCopyCursor
_08063360: .4byte gVramGraphicsCopyQueueIndex
_08063364:
	movs r0, #0
	strb r0, [r3]
_08063368:
	adds r3, #1
	adds r5, #1
	cmp r5, #3
	bhi _0806337A
	ldrb r0, [r2]
	asrs r0, r5
	ands r0, r6
	cmp r0, #0
	bne _080632F8
_0806337A:
	ldr r2, _080633DC @ =gMultiSioRecv
	ldr r0, _080633E0 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	adds r5, r7, #0
	adds r5, #0x55
	cmp r0, #0
	bne _080633A6
	ldrh r0, [r2]
	cmp r0, #0x4f
	bls _08063396
	ldrb r0, [r2, #2]
	strb r0, [r5]
_08063396:
	adds r4, r7, #0
	adds r4, #0x1c
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080633A6:
	ldr r2, [r7, #0x4c]
	mov r8, r2
	movs r0, #1
	add r8, r0
	ldr r0, _080633E0 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r2, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080633FA
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #1
	bls _080633FA
	ldr r0, _080633E4 @ =gRepeatedKeys
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080633E8
	ldrb r0, [r5]
	cmp r0, #2
	bhi _080633FA
	adds r0, #1
	b _080633F8
	.align 2, 0
_080633DC: .4byte gMultiSioRecv
_080633E0: .4byte gMultiSioStatusFlags
_080633E4: .4byte gRepeatedKeys
_080633E8:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080633FA
	ldrb r0, [r5]
	cmp r0, #0
	beq _080633FA
	subs r0, #1
_080633F8:
	strb r0, [r5]
_080633FA:
	ldrb r4, [r5]
	adds r6, r7, #0
	adds r6, #0x52
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r1, #0x18
	bl Div
	adds r0, #5
	cmp r4, r0
	ble _08063416
	ldrb r1, [r5]
	subs r1, #5
	b _08063428
_08063416:
	ldrb r4, [r5]
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r1, #0x18
	bl Div
	cmp r4, r0
	bgt _08063432
	ldrb r1, [r5]
_08063428:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, #8
	strh r0, [r6]
_08063432:
	mov r0, r8
	str r0, [r7, #0x4c]
	mov r1, sl
	str r0, [r1, #0x48]
	movs r0, #0xb4
	lsls r0, r0, #2
	add r0, sb
	mov r2, r8
	str r2, [r0]
	ldrb r1, [r5]
	mov r0, sl
	adds r0, #0x4f
	strb r1, [r0]
	ldrb r1, [r5]
	ldr r0, _080634CC @ =0x000002D7
	add r0, sb
	strb r1, [r0]
	adds r4, r7, #0
	adds r4, #0x57
	ldrb r1, [r4]
	ldr r0, _080634D0 @ =0x000002D9
	add r0, sb
	strb r1, [r0]
	adds r0, r7, #0
	bl sub_805423C
	ldr r2, _080634D4 @ =gMultiSioSend
	movs r0, #0x50
	strh r0, [r2]
	ldrb r0, [r5]
	strb r0, [r2, #2]
	ldr r0, _080634D8 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	adds r3, r4, #0
	cmp r0, #0
	beq _0806348E
	ldr r0, _080634DC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806348E
	movs r0, #0x51
	strh r0, [r2]
_0806348E:
	ldr r2, _080634E0 @ =gMultiSioRecv
	ldrh r0, [r2]
	cmp r0, #0x51
	bne _080634BC
	movs r4, #1
	strb r4, [r3]
	ldr r0, _080634E4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080634E8 @ =sub_80634EC
	str r0, [r1, #8]
	movs r0, #0x6a      @ SE_SELECT
	bl m4aSongNumStart
	movs r0, #3
	bl m4aSongNumStop
	strh r4, [r7, #4]
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r7, #6]
_080634BC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080634CC: .4byte 0x000002D7
_080634D0: .4byte 0x000002D9
_080634D4: .4byte gMultiSioSend
_080634D8: .4byte gMultiSioStatusFlags
_080634DC: .4byte gPressedKeys
_080634E0: .4byte gMultiSioRecv
_080634E4: .4byte gCurTask
_080634E8: .4byte sub_80634EC

	thumb_func_start sub_80634EC
sub_80634EC: @ 0x080634EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0806356C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r0, [r6, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	ldr r0, _08063570 @ =gGameMode
	ldrb r0, [r0]
	ldr r1, _08063574 @ =gMultiSioStatusFlags
	mov ip, r1
	cmp r0, #1
	bls _080635B0
	movs r5, #0
	ldr r2, _08063578 @ =gMultiplayerConnections
	ldrb r1, [r2]
	movs r0, #1
	ands r1, r0
	mov r8, r2
	cmp r1, #0
	beq _080635B0
	movs r2, #1
	ldr r3, _0806357C @ =gMultiplayerMissingHeartbeats
_0806352E:
	adds r0, r2, #0
	lsls r0, r5
	mov r1, ip
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _08063598
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0806359C
	movs r0, #0
	ldr r1, _08063580 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _08063584 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08063588 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0806358C @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _08063590 @ =gVramGraphicsCopyCursor
	ldr r0, _08063594 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0806361C
	.align 2, 0
_0806356C: .4byte gCurTask
_08063570: .4byte gGameMode
_08063574: .4byte gMultiSioStatusFlags
_08063578: .4byte gMultiplayerConnections
_0806357C: .4byte gMultiplayerMissingHeartbeats
_08063580: .4byte 0x0000FFFF
_08063584: .4byte gBackgroundsCopyQueueCursor
_08063588: .4byte gBackgroundsCopyQueueIndex
_0806358C: .4byte sa2__gUnknown_03005390
_08063590: .4byte gVramGraphicsCopyCursor
_08063594: .4byte gVramGraphicsCopyQueueIndex
_08063598:
	movs r0, #0
	strb r0, [r3]
_0806359C:
	adds r3, #1
	adds r5, #1
	cmp r5, #3
	bhi _080635B0
	mov r1, r8
	ldrb r0, [r1]
	asrs r0, r5
	ands r0, r2
	cmp r0, #0
	bne _0806352E
_080635B0:
	ldr r3, _08063628 @ =gMultiSioRecv
	mov r2, ip
	ldr r0, [r2]
	movs r1, #0x80
	ands r0, r1
	adds r2, r6, #0
	adds r2, #0x55
	cmp r0, #0
	bne _080635CC
	ldrh r0, [r3]
	cmp r0, #0x4f
	bls _080635CC
	ldrb r0, [r3, #2]
	strb r0, [r2]
_080635CC:
	ldr r0, [r6, #0x4c]
	adds r0, #1
	str r0, [r6, #0x4c]
	mov r3, sb
	str r0, [r3, #0x48]
	movs r3, #0xb4
	lsls r3, r3, #2
	adds r1, r7, r3
	str r0, [r1]
	ldrb r1, [r2]
	mov r0, sb
	adds r0, #0x4f
	strb r1, [r0]
	ldrb r1, [r2]
	ldr r2, _0806362C @ =0x000002D7
	adds r0, r7, r2
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x57
	ldrb r1, [r0]
	adds r3, #9
	adds r0, r7, r3
	strb r1, [r0]
	adds r0, r6, #0
	bl sub_805423C
	movs r0, #6
	ldrsh r1, [r6, r0]
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r1, r0
	ble _0806361C
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #1
	bne _0806361C
	ldr r0, _08063630 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08063634 @ =sub_8063638
	str r0, [r1, #8]
_0806361C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063628: .4byte gMultiSioRecv
_0806362C: .4byte 0x000002D7
_08063630: .4byte gCurTask
_08063634: .4byte sub_8063638

	thumb_func_start sub_8063638
sub_8063638: @ 0x08063638
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080636AC @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	ldr r0, _080636B0 @ =gGameMode
	ldrb r0, [r0]
	mov sb, r2
	ldr r7, _080636B4 @ =gMultiSioStatusFlags
	cmp r0, #1
	bls _080636EE
	movs r5, #0
	ldr r2, _080636B8 @ =gMultiplayerConnections
	ldrb r1, [r2]
	movs r0, #1
	ands r1, r0
	adds r6, r2, #0
	cmp r1, #0
	beq _080636EE
	movs r2, #1
	ldr r3, _080636BC @ =gMultiplayerMissingHeartbeats
_0806366E:
	adds r0, r2, #0
	lsls r0, r5
	ldr r4, [r7]
	ands r4, r0
	cmp r4, #0
	bne _080636D8
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _080636DC
	movs r0, #0
	ldr r1, _080636C0 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _080636C4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080636C8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080636CC @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _080636D0 @ =gVramGraphicsCopyCursor
	ldr r0, _080636D4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _08063818
	.align 2, 0
_080636AC: .4byte gCurTask
_080636B0: .4byte gGameMode
_080636B4: .4byte gMultiSioStatusFlags
_080636B8: .4byte gMultiplayerConnections
_080636BC: .4byte gMultiplayerMissingHeartbeats
_080636C0: .4byte 0x0000FFFF
_080636C4: .4byte gBackgroundsCopyQueueCursor
_080636C8: .4byte gBackgroundsCopyQueueIndex
_080636CC: .4byte sa2__gUnknown_03005390
_080636D0: .4byte gVramGraphicsCopyCursor
_080636D4: .4byte gVramGraphicsCopyQueueIndex
_080636D8:
	movs r0, #0
	strb r0, [r3]
_080636DC:
	adds r3, #1
	adds r5, #1
	cmp r5, #3
	bhi _080636EE
	ldrb r0, [r6]
	asrs r0, r5
	ands r0, r2
	cmp r0, #0
	bne _0806366E
_080636EE:
	ldr r4, _080637BC @ =gMultiSioRecv
	ldrh r0, [r4]
	adds r5, r4, #0
	ldr r1, _080637C0 @ =gMultiSioSend
	mov r8, r1
	movs r1, #0x55
	add ip, r1
	cmp r0, #0x52
	bne _0806371A
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _080637C4 @ =Task_80638B0
	str r0, [r1, #8]
	movs r3, #0
	adds r1, r4, #3
	ldr r2, _080637C8 @ =gChaoTasks
_0806370E:
	adds r0, r1, r3
	ldrb r0, [r0]
	stm r2!, {r0}
	adds r3, #1
	cmp r3, #2
	bls _0806370E
_0806371A:
	ldr r0, [r7]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0806380C
	movs r3, #1
	ldr r1, _080637CC @ =gMultiplayerConnections
	ldrb r0, [r1]
	asrs r0, r0, #1
	ands r0, r3
	adds r6, r1, #0
	cmp r0, #0
	beq _0806373A
	ldrh r0, [r5, #0x14]
	cmp r0, #0x51
	bne _0806375A
_0806373A:
	adds r3, #1
	cmp r3, #3
	bhi _0806375A
	ldrb r0, [r6]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0806373A
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r4, r0, r5
	ldrh r0, [r4]
	cmp r0, #0x51
	beq _0806373A
_0806375A:
	cmp r3, #4
	bne _0806380C
	mov r4, r8
	movs r0, #0x52
	strh r0, [r4]
	mov r1, ip
	ldrb r0, [r1]
	strb r0, [r4, #2]
	ldr r2, _080637D0 @ =gPseudoRandom
	ldr r0, [r2]
	ldr r1, _080637D4 @ =0x00196225
	mov ip, r1
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r7, _080637D8 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	adds r3, r0, #0
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #3]
	lsrs r3, r3, #8
	ldrb r1, [r4, #3]
	movs r0, #7
	ands r0, r3
	adds r6, r2, #0
	cmp r1, r0
	bne _080637AE
	adds r5, r6, #0
	movs r2, #7
_08063798:
	ldr r0, [r5]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r7
	str r0, [r5]
	adds r3, r0, #0
	ldrb r1, [r4, #3]
	ands r0, r2
	cmp r1, r0
	beq _08063798
_080637AE:
	movs r0, #7
	adds r1, r3, #0
	ands r1, r0
	strb r1, [r4, #4]
	lsrs r3, r3, #8
	b _080637EA
	.align 2, 0
_080637BC: .4byte gMultiSioRecv
_080637C0: .4byte gMultiSioSend
_080637C4: .4byte Task_80638B0
_080637C8: .4byte gChaoTasks
_080637CC: .4byte gMultiplayerConnections
_080637D0: .4byte gPseudoRandom
_080637D4: .4byte 0x00196225
_080637D8: .4byte 0x3C6EF35F
_080637DC:
	ldr r1, [r6]
	ldr r0, _08063804 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08063808 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r6]
	adds r3, r0, #0
_080637EA:
	ldrb r0, [r4, #3]
	movs r1, #7
	ands r1, r3
	cmp r0, r1
	beq _080637DC
	ldrb r0, [r4, #4]
	cmp r0, r1
	beq _080637DC
	movs r0, #7
	ands r3, r0
	strb r3, [r4, #5]
	b _08063818
	.align 2, 0
_08063804: .4byte 0x00196225
_08063808: .4byte 0x3C6EF35F
_0806380C:
	mov r4, r8
	movs r0, #0x51
	strh r0, [r4]
	mov r1, ip
	ldrb r0, [r1]
	strb r0, [r4, #2]
_08063818:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_8063824
Task_8063824: @ 0x08063824
	push {r4, r5, r6, r7, lr}
	ldr r0, _08063868 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r6, #0
	movs r7, #0
_08063836:
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #4
	adds r4, r5, r0
	ldr r1, _0806386C @ =0x000002D7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r6, r0
	bne _08063884
	adds r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08063876
	subs r1, #9
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08063870
	adds r0, r4, #0
	adds r0, #0x25
	strb r1, [r0]
	b _0806387E
	.align 2, 0
_08063868: .4byte gCurTask
_0806386C: .4byte 0x000002D7
_08063870:
	adds r1, r4, #0
	adds r1, #0x25
	b _0806387C
_08063876:
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #1
_0806387C:
	strb r0, [r1]
_0806387E:
	movs r0, #0x68
	strh r0, [r4, #0x16]
	b _0806388E
_08063884:
	movs r0, #0x64
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x25
	strb r7, [r0]
_0806388E:
	lsls r0, r6, #5
	adds r0, #0x18
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08063836
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_80638B0
Task_80638B0: @ 0x080638B0
	push {r4, r5, lr}
	ldr r5, _080638F8 @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r2, r4
	ldr r3, _080638FC @ =gDispCnt
	ldrh r1, [r3]
	ldr r0, _08063900 @ =0x00001FFF
	ands r0, r1
	strh r0, [r3]
	ldr r1, _08063904 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _08063908 @ =0x03000055
	adds r2, r2, r0
	ldrb r0, [r2]
	ldr r1, _0806390C @ =gCurrentLevel
	adds r0, #0xe
	strb r0, [r1]
	bl ApplyGameStageSettings
	ldr r0, [r4, #0xc]
	bl TaskDestroy
	ldr r0, [r4, #0x10]
	bl TaskDestroy
	ldr r0, [r5]
	bl TaskDestroy
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080638F8: .4byte gCurTask
_080638FC: .4byte gDispCnt
_08063900: .4byte 0x00001FFF
_08063904: .4byte gBldRegs
_08063908: .4byte 0x03000055
_0806390C: .4byte gCurrentLevel
    .align 2, 0

    thumb_func_start TaskDestructor_8063910
TaskDestructor_8063910:
    bx lr
    .align 2, 0

    thumb_func_start Task_8063914
Task_8063914:
    bx lr
    .align 2, 0
