.include "constants/constants.inc"

.syntax unified

.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0801B218 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801B256
	movs r5, #0
	ldr r2, _0801B21C @ =gMultiplayerConnections
	ldrb r1, [r2]
	movs r0, #1
	ands r1, r0
	ldr r7, _0801B220 @ =gMultiSioStatusFlags
	cmp r1, #0
	beq _0801B256
	movs r6, #1
	ldr r3, _0801B224 @ =gMultiplayerMissingHeartbeats
_0801B1DC:
	adds r0, r6, #0
	lsls r0, r5
	ldr r4, [r7]
	ands r4, r0
	cmp r4, #0
	bne _0801B240
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0801B244
	movs r0, #0
	ldr r1, _0801B228 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0801B22C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801B230 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801B234 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0801B238 @ =gVramGraphicsCopyCursor
	ldr r0, _0801B23C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LinkCommunicationError
	b _0801B4EE
	.align 2, 0
_0801B218: .4byte gGameMode
_0801B21C: .4byte gMultiplayerConnections
_0801B220: .4byte gMultiSioStatusFlags
_0801B224: .4byte gMultiplayerMissingHeartbeats
_0801B228: .4byte 0x0000FFFF
_0801B22C: .4byte gBackgroundsCopyQueueCursor
_0801B230: .4byte gBackgroundsCopyQueueIndex
_0801B234: .4byte sa2__gUnknown_03005390
_0801B238: .4byte gVramGraphicsCopyCursor
_0801B23C: .4byte gVramGraphicsCopyQueueIndex
_0801B240:
	movs r0, #0
	strb r0, [r3]
_0801B244:
	adds r3, #1
	adds r5, #1
	cmp r5, #3
	bhi _0801B256
	ldrb r0, [r2]
	asrs r0, r5
	ands r0, r6
	cmp r0, #0
	bne _0801B1DC
_0801B256:
	ldr r0, _0801B2AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	movs r6, #0
_0801B266:
	ldr r2, _0801B2B0 @ =gMultiSioStatusFlags
	adds r0, r6, #0
	adds r0, #8
	movs r3, #1
	adds r1, r3, #0
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0801B2B8
	ldr r0, _0801B2B4 @ =gMultiplayerRanks
	adds r0, r6, r0
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	lsls r1, r6, #2
	adds r1, r1, r6
	lsls r3, r1, #3
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x18
	adds r4, r6, #1
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x18
	movs r0, #0xa0
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #3
	movs r3, #0
	bl sa2__sub_80078D4
	b _0801B4E6
	.align 2, 0
_0801B2AC: .4byte gCurTask
_0801B2B0: .4byte gMultiSioStatusFlags
_0801B2B4: .4byte gMultiplayerRanks
_0801B2B8:
	ldr r0, _0801B42C @ =gMultiplayerRanks
	adds r0, r0, r6
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r3, r1, #3
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x18
	adds r0, #1
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x18
	lsls r5, r6, #2
	adds r4, r5, r6
	lsls r7, r4, #3
	subs r3, r7, r3
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	movs r0, #3
	movs r3, #0
	bl sa2__sub_80078D4
	lsls r4, r4, #2
	ldr r0, _0801B430 @ =gMultiSioRecv
	adds r4, r4, r0
	ldr r0, _0801B434 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov sl, r5
	cmp r6, r0
	beq _0801B30C
	ldrh r0, [r4]
	adds r4, r6, #1
	cmp r0, #0xf
	bhi _0801B30C
	b _0801B4E6
_0801B30C:
	ldr r0, _0801B438 @ =0x00000434
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _0801B318
	b _0801B444
_0801B318:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0x80
	mov r1, r8
	adds r5, r1, r0
	movs r0, #0x78
	strh r0, [r5, #0x16]
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0801B43C @ =gMultiplayerCharacters
	adds r0, r6, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xdc
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r1, r8
	adds r5, r1, r0
	movs r0, #0x34
	strh r0, [r5, #0x16]
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0801B440 @ =gMultiplayerCharRings
	adds r0, r6, r0
	ldrb r0, [r0]
	bl Base10DigitsToHexNibbles
	lsls r4, r0, #0x10
	lsrs r1, r4, #0x10
	mov sl, r1
	lsrs r1, r4, #0x18
	movs r3, #0xf
	ands r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r1, r8
	adds r5, r1, r0
	adds r7, r1, r2
	cmp r5, r7
	beq _0801B3C4
	movs r0, #0xa0
	strh r0, [r5, #0x16]
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl DisplaySprite
	ldr r3, [sp, #8]
	ldr r2, [sp, #4]
_0801B3C4:
	lsrs r1, r4, #0x14
	ands r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	mov r1, r8
	adds r5, r1, r0
	cmp r5, r7
	bne _0801B3DE
	mov r0, sl
	cmp r0, #0xff
	bls _0801B3F8
_0801B3DE:
	movs r0, #0xab
	strh r0, [r5, #0x16]
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
_0801B3F8:
	movs r1, #0xf
	mov r0, sl
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r1, r8
	adds r5, r1, r0
	movs r0, #0xb6
	strh r0, [r5, #0x16]
	ldr r0, _0801B42C @ =gMultiplayerRanks
	adds r0, r6, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
	b _0801B4E4
	.align 2, 0
_0801B42C: .4byte gMultiplayerRanks
_0801B430: .4byte gMultiSioRecv
_0801B434: .4byte 0x04000128
_0801B438: .4byte 0x00000434
_0801B43C: .4byte gMultiplayerCharacters
_0801B440: .4byte gMultiplayerCharRings
_0801B444:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0x80
	mov r1, r8
	adds r5, r1, r0
	movs r0, #0x78
	strh r0, [r5, #0x16]
	adds r0, r7, #0
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0801B474 @ =gMPRingCollectWins
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _0801B478
	movs r7, #0x63
	b _0801B482
	.align 2, 0
_0801B474: .4byte gMPRingCollectWins
_0801B478:
	ldrb r0, [r1]
	bl Base10DigitsToHexNibbles
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0801B482:
	lsrs r0, r7, #4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	mov r0, r8
	adds r5, r0, r1
	adds r0, r0, r4
	cmp r5, r0
	beq _0801B4AE
	movs r0, #0xa0
	strh r0, [r5, #0x16]
	mov r1, sl
	adds r0, r1, r6
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
_0801B4AE:
	movs r1, #0xf
	ands r1, r7
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	mov r1, r8
	adds r5, r1, r0
	movs r0, #0xab
	strh r0, [r5, #0x16]
	mov r0, sl
	adds r4, r0, r6
	lsls r4, r4, #3
	adds r4, #0x14
	strh r4, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
	movs r5, #0xd0
	lsls r5, r5, #2
	add r5, r8
	movs r0, #0xc5
	strh r0, [r5, #0x16]
	strh r4, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
_0801B4E4:
	adds r4, r6, #1
_0801B4E6:
	adds r6, r4, #0
	cmp r6, #3
	bhi _0801B4EE
	b _0801B266
_0801B4EE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
