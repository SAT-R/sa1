
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	ldr r2, _0800E28C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0     @ r7 = levelSelect
	ldr r0, _0800E290 @ =gGameMode
	ldrb r0, [r0]
	mov ip, r2
	cmp r0, #1
	bls _0800E2CE
	movs r3, #0
	ldr r0, _0800E294 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r6, r0, #0     @ r6 = gMultiplayerConnections
	cmp r1, #0
	beq _0800E2CE
	movs r5, #1
	ldr r2, _0800E298 @ =gMultiplayerMissingHeartbeats
_0800E24C:
	ldr r1, _0800E29C @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0800E2B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0800E2BC
	movs r0, #0
	ldr r1, _0800E2A0 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0800E2A4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0800E2A8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0800E2AC @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0800E2B0 @ =gVramGraphicsCopyCursor
	ldr r0, _0800E2B4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LinkCommunicationError
	b _0800E334_return
	.align 2, 0
_0800E28C: .4byte gCurTask
_0800E290: .4byte gGameMode
_0800E294: .4byte gMultiplayerConnections
_0800E298: .4byte gMultiplayerMissingHeartbeats
_0800E29C: .4byte gMultiSioStatusFlags
_0800E2A0: .4byte 0x0000FFFF
_0800E2A4: .4byte gBackgroundsCopyQueueCursor
_0800E2A8: .4byte gBackgroundsCopyQueueIndex
_0800E2AC: .4byte sa2__gUnknown_03005390
_0800E2B0: .4byte gVramGraphicsCopyCursor
_0800E2B4: .4byte gVramGraphicsCopyQueueIndex
_0800E2B8:
	movs r0, #0
	strb r0, [r2]
_0800E2BC:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0800E2CE
	ldrb r0, [r6]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0800E24C
_0800E2CE:
	ldr r2, _0800E2E4 @ =gMultiSioRecv
	ldrh r0, [r2]
	cmp r0, #0x52
	bne _0800E2EC
	ldrb r0, [r2, #2]
	strb r0, [r7, #6]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _0800E2E8 @ =Task_CreateSelectedTask
	str r0, [r1, #8]
	b _0800E334_return
	.align 2, 0
_0800E2E4: .4byte gMultiSioRecv
_0800E2E8: .4byte Task_CreateSelectedTask
_0800E2EC:
	ldr r2, _0800E33C @ =gMultiSioSend
	movs r0, #0x51
	strh r0, [r2]
	ldrb r0, [r7, #6]
	strb r0, [r2, #2]
	ldr r0, _0800E340 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _0800E334_return
	movs r1, #0
	ldr r6, _0800E344 @ =gMultiplayerConnections
	ldrb r3, [r6]
	movs r5, #1
	ldr r4, _0800E348 @ =gMultiSioRecv
_0800E30E:
	adds r0, r3, #0
	asrs r0, r1
	ands r0, r5
	cmp r0, #0
	beq _0800E326
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r4
	ldrh r0, [r2]
	cmp r0, #0x51
	bne _0800E334_return
_0800E326:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0800E30E
	movs r0, #0x52
	strh r0, [r7]
_0800E334_return:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E33C: .4byte gMultiSioSend
_0800E340: .4byte gMultiSioStatusFlags
_0800E344: .4byte gMultiplayerConnections
_0800E348: .4byte gMultiSioRecv

.syntax divided
