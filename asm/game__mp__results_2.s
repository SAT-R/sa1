.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ Module exists in some form in SA2!

.if 0
.endif

	thumb_func_start sa2__sub_808267C
sa2__sub_808267C: @ 0x0801B0B8
	push {r4, r5, r6, r7, lr}
	ldr r2, _0801B110 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r3, _0801B114 @ =gMultiSioRecv
	ldrh r0, [r3]
	adds r6, r2, #0
	cmp r0, #0x80
	bne _0801B144
	ldr r1, _0801B118 @ =gMultiplayerPseudoRandom
	ldr r0, [r3, #8]
	str r0, [r1]
	movs r1, #0
	ldr r5, _0801B11C @ =gFlags
	ldr r2, _0801B120 @ =gMultiplayerCharacters
	movs r4, #0
	ldr r3, _0801B124 @ =sa2__gUnknown_030054B4
_0801B0E0:
	adds r0, r1, r2
	strb r4, [r0]
	adds r0, r1, r3
	strb r1, [r0]
	adds r1, #1
	cmp r1, #3
	bls _0801B0E0
	ldr r0, [r5]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	ldr r1, _0801B128 @ =0x00000434
	adds r0, r7, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _0801B12C
	ldr r0, [r6]
	bl TaskDestroy
	movs r0, #0
	bl CreateMultiplayerSinglePakResultsScreen
	b _0801B198
	.align 2, 0
_0801B110: .4byte gCurTask
_0801B114: .4byte gMultiSioRecv
_0801B118: .4byte gMultiplayerPseudoRandom
_0801B11C: .4byte gFlags
_0801B120: .4byte gMultiplayerCharacters
_0801B124: .4byte sa2__gUnknown_030054B4
_0801B128: .4byte 0x00000434
_0801B12C:
	ldr r0, [r6]
	bl TaskDestroy
	ldr r0, _0801B140 @ =gBldRegs
	strh r4, [r0]
	strh r4, [r0, #4]
	bl sub_800FCFC
	b _0801B198
	.align 2, 0
_0801B140: .4byte gBldRegs
_0801B144:
	bl sa2__sub_8082788
	ldr r3, _0801B1A0 @ =gMultiSioSend
	movs r1, #0
	movs r0, #0x51
	strh r0, [r3]
	strb r1, [r3, #2]
	ldr r0, _0801B1A4 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801B198
	movs r1, #0
	ldr r0, _0801B1A8 @ =gMultiplayerConnections
	ldrb r2, [r0]
	movs r5, #1
	ldr r4, _0801B1AC @ =gMultiSioRecv
_0801B168:
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r5
	cmp r0, #0
	beq _0801B180
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, r0, r4
	ldrh r0, [r3]
	cmp r0, #0x51
	bne _0801B198
_0801B180:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0801B168
	ldr r3, _0801B1A0 @ =gMultiSioSend
	movs r0, #0x80
	strh r0, [r3]
	ldr r1, _0801B1B0 @ =0x0000043C
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [r3, #8]
_0801B198:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B1A0: .4byte gMultiSioSend
_0801B1A4: .4byte gMultiSioStatusFlags
_0801B1A8: .4byte gMultiplayerConnections
_0801B1AC: .4byte gMultiSioRecv
_0801B1B0: .4byte 0x0000043C

	thumb_func_start sa2__sub_8082788
sa2__sub_8082788: @ 0x0801B1B4
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
	ldr r0, _0801B2B4 @ =sa2__gUnknown_030054B4
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
_0801B2B4: .4byte sa2__gUnknown_030054B4
_0801B2B8:
	ldr r0, _0801B42C @ =sa2__gUnknown_030054B4
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
	ldr r0, _0801B42C @ =sa2__gUnknown_030054B4
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
_0801B42C: .4byte sa2__gUnknown_030054B4
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

	thumb_func_start sa2__sub_8082AA8
sa2__sub_8082AA8: @ 0x0801B500
	push {r4, r5, lr}
	ldr r5, _0801B554 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	bl sa2__sub_8082788
	ldr r0, _0801B558 @ =0x03000430
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0801B54E
	movs r0, #0
	strh r0, [r4]
	ldr r0, _0801B55C @ =gMPlayInfo_BGM
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r0, _0801B560 @ =gMPlayInfo_SE1
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r0, _0801B564 @ =gMPlayInfo_SE2
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r0, _0801B568 @ =gMPlayInfo_SE3
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r1, _0801B56C @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, [r5]
	ldr r0, _0801B570 @ =sa2__Task_8082630
	str r0, [r1, #8]
_0801B54E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B554: .4byte gCurTask
_0801B558: .4byte 0x03000430
_0801B55C: .4byte gMPlayInfo_BGM
_0801B560: .4byte gMPlayInfo_SE1
_0801B564: .4byte gMPlayInfo_SE2
_0801B568: .4byte gMPlayInfo_SE3
_0801B56C: .4byte gBldRegs
_0801B570: .4byte sa2__Task_8082630

	thumb_func_start CreateMultiplayerMultiPakUI
CreateMultiplayerMultiPakUI: @ 0x0801B574
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0801B5C4 @ =sub_801B6F4
	movs r1, #0x8a
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _0801B5C8 @ =sub_801BAA0
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r7, r4, #0
	movs r6, #0
	movs r1, #0
	strh r1, [r4, #0x16]
	movs r0, #8
	strh r0, [r4, #0x18]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r1, [r4, #8]
	ldr r0, _0801B5CC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801B5D4
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4, #4]
	ldr r0, _0801B5D0 @ =0x000002CA
	b _0801B5DE
	.align 2, 0
_0801B5C4: .4byte sub_801B6F4
_0801B5C8: .4byte sub_801BAA0
_0801B5CC: .4byte gGameMode
_0801B5D0: .4byte 0x000002CA
_0801B5D4:
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #4]
	ldr r0, _0801B634 @ =0x0000025E
_0801B5DE:
	strh r0, [r4, #0xa]
	ldr r1, _0801B638 @ =0x03000020
	adds r0, r5, r1
	strb r6, [r0]
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	adds r2, #1
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x25
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r6, #0
	movs r5, #0
	mov r8, r5
	movs r0, #0x90
	lsls r0, r0, #2
	mov sl, r0
	movs r1, #0x30
	mov sb, r1
_0801B61E:
	mov r0, sb
	adds r4, r7, r0
	strh r5, [r4, #0x16]
	strh r5, [r4, #0x18]
	cmp r6, #0
	bne _0801B63C
	movs r0, #0x16
	bl VramMalloc
	b _0801B640
	.align 2, 0
_0801B634: .4byte 0x0000025E
_0801B638: .4byte 0x03000020
_0801B63C:
	ldr r0, [r7, #0x34]
	add r0, r8
_0801B640:
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r1, _0801B688 @ =0x0000038B
	strh r1, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	strb r6, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	strb r5, [r0]
	str r5, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r0, sl
	adds r4, r7, r0
	strh r5, [r4, #0x16]
	strh r5, [r4, #0x18]
	cmp r6, #0
	bne _0801B68C
	movs r0, #0x16
	bl VramMalloc
	b _0801B696
	.align 2, 0
_0801B688: .4byte 0x0000038B
_0801B68C:
	movs r1, #0x91
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	add r0, r8
_0801B696:
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r0, _0801B6F0 @ =0x0000038B
	strh r0, [r4, #0xa]
	adds r1, r6, #0
	adds r1, #0xb
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	strb r5, [r0]
	str r5, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r1, #0x40
	add r8, r1
	movs r0, #0x30
	add sl, r0
	add sb, r0
	adds r6, #1
	cmp r6, #0xa
	bls _0801B61E
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B6F0: .4byte 0x0000038B

	thumb_func_start sub_801B6F4
sub_801B6F4: @ 0x0801B6F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0801B8A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	str r0, [sp]
	ldr r0, _0801B8A4 @ =gCourseTime
	ldr r2, [r0]
	ldr r1, _0801B8A8 @ =0x00000E0F
	ldr r4, _0801B8AC @ =0x03000030
	adds r4, r4, r3
	mov sl, r4
	adds r4, r0, #0
	cmp r2, r1
	bhi _0801B72E
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0801B72E
	ldr r0, _0801B8B0 @ =0x03000240
	adds r0, r0, r3
	mov sl, r0
_0801B72E:
	ldr r0, _0801B8B4 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B754
	ldr r1, [r4]
	ldr r0, _0801B8B8 @ =0x000004AF
	cmp r1, r0
	bhi _0801B754
	adds r0, r1, #0
	movs r1, #0x3c
	bl Mod
	cmp r0, #0
	bne _0801B754
	movs r0, #0x8b      @ SE_TIMER
	bl m4aSongNumStart
_0801B754:
	movs r7, #0xf0
	lsls r7, r7, #1
	add r7, sl
	movs r1, #0x20
	mov r8, r1
	mov r4, r8
	strh r4, [r7, #0x18]
	movs r0, #0x18
	strh r0, [r7, #0x16]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0x30
	strh r0, [r7, #0x16]
	adds r0, r7, #0
	bl DisplaySprite
	ldr r4, _0801B8A4 @ =gCourseTime
	ldr r0, [r4]
	movs r1, #0x3c
	bl Div
	adds r5, r0, #0
	ldr r1, [r4]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0801B8BC @ =sa2__gUnknown_080E0234
	adds r0, r1, r0
	ldrb r4, [r0]
	movs r0, #0xf
	mov sb, r0
	lsrs r1, r4, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x38
	strh r0, [r7, #0x16]
	mov r0, r8
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	movs r6, #0xf
	adds r1, r6, #0
	ands r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x40
	strh r0, [r7, #0x16]
	mov r4, r8
	strh r4, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	adds r0, r5, #0
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	subs r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r1, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r1, #0
	bl Base10DigitsToHexNibbles
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsrs r0, r0, #0x14
	mov r1, sb
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	mov r0, sl
	adds r7, r0, r1
	mov r1, r8
	strh r1, [r7, #0x16]
	strh r1, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	adds r1, r6, #0
	ands r1, r5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x28
	strh r0, [r7, #0x16]
	mov r0, r8
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	subs r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	adds r0, r1, #0
	bl Base10DigitsToHexNibbles
	ands r6, r0
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x10
	strh r0, [r7, #0x16]
	mov r4, r8
	strh r4, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	movs r5, #0
	ldr r0, _0801B8C0 @ =gMultiplayerConnections
	ldrb r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B876
	b _0801BA86
_0801B876:
	ldr r2, _0801B8C4 @ =gGameMode
	ldr r0, [sp]
	adds r0, #0x30
	mov sl, r0
_0801B87E:
	ldr r7, [sp]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, #8
	strh r0, [r7, #0x16]
	movs r0, #8
	strh r0, [r7, #0x18]
	ldrb r0, [r2]
	cmp r0, #6
	bne _0801B8C8
	adds r0, r7, #0
	adds r0, #0x25
	strb r5, [r0]
	adds r1, r5, #1
	mov sb, r1
	b _0801B920
	.align 2, 0
_0801B8A0: .4byte gCurTask
_0801B8A4: .4byte gCourseTime
_0801B8A8: .4byte 0x00000E0F
_0801B8AC: .4byte 0x03000030
_0801B8B0: .4byte 0x03000240
_0801B8B4: .4byte gStageFlags
_0801B8B8: .4byte 0x000004AF
_0801B8BC: .4byte sa2__gUnknown_080E0234
_0801B8C0: .4byte gMultiplayerConnections
_0801B8C4: .4byte gGameMode
_0801B8C8:
	cmp r0, #4
	bne _0801B8E4
	ldr r0, _0801B8E0 @ =gMultiplayerCharacters
	adds r0, r5, r0
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x25
	strb r0, [r1]
	adds r4, r5, #1
	mov sb, r4
	b _0801B920
	.align 2, 0
_0801B8E0: .4byte gMultiplayerCharacters
_0801B8E4:
	movs r2, #0
	ldr r3, _0801B974 @ =gMultiplayerConnections
	ldrb r1, [r3]
	movs r0, #0x10
	ands r1, r0
	asrs r1, r1, #4
	ldr r0, _0801B978 @ =gMultiplayerCharacters
	mov r8, r0
	adds r4, r7, #0
	adds r4, #0x25
	adds r0, r5, #1
	mov sb, r0
	cmp r5, r1
	beq _0801B918
	movs r6, #0x10
_0801B902:
	adds r2, #1
	cmp r2, #3
	bhi _0801B918
	ldrb r0, [r3]
	adds r1, r6, #0
	lsls r1, r2
	ands r0, r1
	adds r1, r2, #4
	asrs r0, r1
	cmp r5, r0
	bne _0801B902
_0801B918:
	mov r1, r8
	adds r0, r2, r1
	ldrb r0, [r0]
	strb r0, [r4]
_0801B920:
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _0801B97C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #5
	bne _0801B988
	movs r4, #0
	movs r2, #0
	ldr r1, _0801B980 @ =gMultiplayerPlayerTasks
	ldr r0, [r1]
	cmp r0, #0
	beq _0801B970
	ldr r0, _0801B974 @ =gMultiplayerConnections
	ldrb r3, [r0]
	mov r8, r1
	ldr r7, _0801B984 @ =gMultiplayerCharRings
	movs r6, #0x10
_0801B944:
	adds r0, r6, #0
	lsls r0, r2
	ands r0, r3
	adds r1, r2, #4
	asrs r0, r1
	cmp r5, r0
	bne _0801B95C
	adds r0, r2, r7
	ldrb r0, [r0]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801B95C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0801B970
	lsls r0, r2, #2
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _0801B944
_0801B970:
	adds r0, r4, #0
	b _0801B98E
	.align 2, 0
_0801B974: .4byte gMultiplayerConnections
_0801B978: .4byte gMultiplayerCharacters
_0801B97C: .4byte gGameMode
_0801B980: .4byte gMultiplayerPlayerTasks
_0801B984: .4byte gMultiplayerCharRings
_0801B988:
	ldr r0, _0801B9F4 @ =gMultiplayerCharRings
	adds r0, r5, r0
	ldrb r0, [r0]
_0801B98E:
	bl Base10DigitsToHexNibbles
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xff
	bls _0801B9F8
	lsrs r1, r4, #8
	movs r0, #0xf
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #3
	strh r0, [r7, #0x16]
	movs r0, #0xe
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	lsrs r1, r4, #4
	movs r0, #0xf
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #0xb
	strh r0, [r7, #0x16]
	movs r0, #0xe
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	movs r1, #0xf
	ands r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	ldr r4, [sp]
	ldrh r0, [r4, #0x16]
	adds r0, #0x13
	b _0801BA32
	.align 2, 0
_0801B9F4: .4byte gMultiplayerCharRings
_0801B9F8:
	cmp r4, #0xf
	bls _0801BA40
	lsrs r1, r4, #4
	movs r0, #0xf
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #7
	strh r0, [r7, #0x16]
	movs r0, #0xe
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	movs r1, #0xf
	ands r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	ldr r4, [sp]
	ldrh r0, [r4, #0x16]
	adds r0, #0xf
_0801BA32:
	strh r0, [r7, #0x16]
	movs r0, #0xe
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	b _0801BA60
_0801BA40:
	movs r0, #0xf
	ands r0, r4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	mov r4, sl
	adds r7, r4, r1
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #0xb
	strh r0, [r7, #0x16]
	movs r4, #0xe
	strh r4, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_0801BA60:
	mov r5, sb
	cmp r5, #3
	bhi _0801BA86
	ldr r0, _0801BA98 @ =gMultiplayerConnections
	ldrb r0, [r0]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801BA86
	ldr r0, _0801BA9C @ =gGameMode
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #5
	beq _0801BA80
	b _0801B87E
_0801BA80:
	cmp r5, #2
	beq _0801BA86
	b _0801B87E
_0801BA86:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801BA98: .4byte gMultiplayerConnections
_0801BA9C: .4byte gGameMode

	thumb_func_start sub_801BAA0
sub_801BAA0: @ 0x0801BAA0
	push {r4, r5, lr}
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, _0801BAC8 @ =0x03000244
	adds r5, r5, r0
	ldr r0, [r5]
	bl VramFree
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BAC8: .4byte 0x03000244
