.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	movs r7, #0
	ldr r2, _0800F0B8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	ldr r0, _0800F0BC @ =gGameMode
	ldrb r1, [r0]
	mov sl, r2
	mov sb, r0
	cmp r1, #1
	bls _0800F0E8
	movs r3, #0
	ldr r0, _0800F0C0 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	mov r8, r0
	cmp r1, #0
	beq _0800F0E8
	movs r5, #1
	ldr r2, _0800F0C4 @ =gMultiplayerMissingHeartbeats
_0800F094:
	ldr r1, _0800F0C8 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0800F0D0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0800F0D4
	movs r0, #0
	ldr r1, _0800F0CC @ =0x0000FFFF
	b _0800F1A2
	.align 2, 0
_0800F0B8: .4byte gCurTask
_0800F0BC: .4byte gGameMode
_0800F0C0: .4byte gMultiplayerConnections
_0800F0C4: .4byte gMultiplayerMissingHeartbeats
_0800F0C8: .4byte gMultiSioStatusFlags
_0800F0CC: .4byte 0x0000FFFF
_0800F0D0:
	movs r0, #0
	strb r0, [r2]
_0800F0D4:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0800F0E8
	mov r1, r8
	ldrb r0, [r1]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0800F094
_0800F0E8:
	ldr r2, _0800F108 @ =gMultiSioRecv
	ldrh r0, [r2]
	mov r8, r2
	cmp r0, #0x12
	bne _0800F10C
	movs r0, #2
	mov r2, sb
	strb r0, [r2]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #0
	bl CreateMultipackOutcomeScreen
	b _0800F2FA
	.align 2, 0
_0800F108: .4byte gMultiSioRecv
_0800F10C:
	cmp r0, #0x10
	beq _0800F12C
	ldr r0, _0800F170 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800F1DC
	ldr r0, _0800F174 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0800F18C
_0800F12C:
	ldr r1, _0800F178 @ =gMultiSioEnabled
	movs r0, #0
	strb r0, [r1]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	ldr r2, _0800F17C @ =gMultiSioSend
	movs r4, #0
	movs r0, #0
	strh r0, [r2]
	movs r0, #3
	bl m4aSongNumStop
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r0, _0800F180 @ =sa2__gUnknown_03004D80
	strb r4, [r0]
	ldr r1, _0800F184 @ =gBgSprites_Unknown2
	strb r4, [r1]
	strb r4, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x20
	strb r0, [r1, #3]
	ldr r0, _0800F188 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateMultiplayerModeSelectScreen
	b _0800F2FA
	.align 2, 0
_0800F170: .4byte gMultiSioStatusFlags
_0800F174: .4byte gPressedKeys
_0800F178: .4byte gMultiSioEnabled
_0800F17C: .4byte gMultiSioSend
_0800F180: .4byte sa2__gUnknown_03004D80
_0800F184: .4byte gBgSprites_Unknown2
_0800F188: .4byte gCurTask
_0800F18C:
	ldr r0, _0800F1C0 @ =0x00000219
	add r0, ip
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x3c
	bls _0800F1DC
	ldr r1, _0800F1C4 @ =0x0000FFFF
	movs r0, #0
_0800F1A2:
	bl TasksDestroyInPriorityRange
	ldr r1, _0800F1C8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0800F1CC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0800F1D0 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0800F1D4 @ =gVramGraphicsCopyCursor
	ldr r0, _0800F1D8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LinkCommunicationError
	b _0800F2FA
	.align 2, 0
_0800F1C0: .4byte 0x00000219
_0800F1C4: .4byte 0x0000FFFF
_0800F1C8: .4byte gBackgroundsCopyQueueCursor
_0800F1CC: .4byte gBackgroundsCopyQueueIndex
_0800F1D0: .4byte sa2__gUnknown_03005390
_0800F1D4: .4byte gVramGraphicsCopyCursor
_0800F1D8: .4byte gVramGraphicsCopyQueueIndex
_0800F1DC:
	movs r5, #0
	mov r4, ip
	adds r4, #0xc0
	ldr r1, _0800F2B0 @ =0x0000020B
	add r1, ip
	movs r3, #0
_0800F1E8:
	mov r0, r8
	adds r2, r3, r0
	ldrb r0, [r1]
	lsls r0, r0, #1
	strb r0, [r1]
	ldr r0, _0800F2B4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r5
	beq _0800F204
	ldrh r0, [r2]
	cmp r0, #0x10
	bls _0800F20E
_0800F204:
	movs r0, #1
	lsls r0, r5
	orrs r7, r0
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x18
_0800F20E:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800F216
	adds r6, #1
_0800F216:
	adds r1, #1
	adds r3, #0x14
	adds r5, #1
	cmp r5, #3
	ble _0800F1E8
	cmp r6, #0
	bne _0800F226
	movs r6, #1
_0800F226:
	adds r0, r6, #3
	strb r0, [r4]
	mov r4, ip
	adds r4, #0x40
	movs r5, #2
_0800F230:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x30
	subs r5, #1
	cmp r5, #0
	bge _0800F230
	ldr r2, _0800F2B8 @ =gMultiSioStatusFlags
	ldr r0, [r2]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800F2DA
	ldr r6, _0800F2BC @ =gMultiSioSend
	movs r0, #0x12
	strh r0, [r6]
	strb r7, [r6, #2]
	ldr r0, _0800F2C0 @ =gLoadedSaveGame
	ldr r1, [r0, #4]
	str r1, [r6, #4]
	ldr r1, _0800F2C4 @ =0x040000D4
	adds r0, #0x10
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #8
	str r0, [r1, #4]
	ldr r0, _0800F2C8 @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r5, #0
	ldr r1, _0800F2CC @ =gMultiplayerConnections
	ldrb r7, [r1]
	movs r4, #1
	mov ip, r2
	movs r3, #0
	ldr r2, _0800F2D0 @ =gMultiSioRecv
	mov r8, r2
_0800F280:
	adds r0, r7, #0
	asrs r0, r5
	ands r0, r4
	cmp r0, #0
	beq _0800F2A6
	cmp r5, #0
	beq _0800F2A6
	adds r1, r4, #0
	lsls r1, r5
	mov r2, ip
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _0800F2D4
	mov r0, r8
	adds r2, r3, r0
	ldrh r0, [r2]
	cmp r0, #0x11
	bne _0800F2D4
_0800F2A6:
	adds r3, #0x14
	adds r5, #1
	cmp r5, #3
	ble _0800F280
	b _0800F2FA
	.align 2, 0
_0800F2B0: .4byte 0x0000020B
_0800F2B4: .4byte 0x04000128
_0800F2B8: .4byte gMultiSioStatusFlags
_0800F2BC: .4byte gMultiSioSend
_0800F2C0: .4byte gLoadedSaveGame
_0800F2C4: .4byte 0x040000D4
_0800F2C8: .4byte 0x84000002
_0800F2CC: .4byte gMultiplayerConnections
_0800F2D0: .4byte gMultiSioRecv
_0800F2D4:
	movs r0, #0x11
	strh r0, [r6]
	b _0800F2FA
_0800F2DA:
	ldr r6, _0800F308 @ =gMultiSioSend
	movs r0, #0x11
	strh r0, [r6]
	strb r7, [r6, #2]
	ldr r0, _0800F30C @ =gLoadedSaveGame
	ldr r1, [r0, #4]
	str r1, [r6, #4]
	ldr r1, _0800F310 @ =0x040000D4
	adds r0, #0x10
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #8
	str r0, [r1, #4]
	ldr r0, _0800F314 @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800F2FA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F308: .4byte gMultiSioSend
_0800F30C: .4byte gLoadedSaveGame
_0800F310: .4byte 0x040000D4
_0800F314: .4byte 0x84000002

.syntax divided
