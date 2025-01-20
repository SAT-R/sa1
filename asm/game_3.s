.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_806AFA4
sub_806AFA4: @ 0x0806AFA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0806B224 @ =gMultiplayerMissingHeartbeats
	movs r1, #0
	strb r1, [r0, #3]
	strb r1, [r0, #2]
	strb r1, [r0, #1]
	strb r1, [r0]
	movs r0, #0x9b
	bl m4aSongNumStart
	ldr r0, _0806B228 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	str r0, [sp, #4]
	movs r5, #0
	ldr r4, _0806B22C @ =gKeysFirstRepeatIntervals
	movs r3, #0x14
	ldr r2, _0806B230 @ =gKeysContinuedRepeatIntervals
	movs r1, #8
_0806AFD2:
	adds r0, r5, r4
	strb r3, [r0]
	adds r0, r5, r2
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _0806AFD2
	ldr r1, _0806B234 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0806B238 @ =gBgCntRegs
	movs r5, #0
	movs r4, #0
	movs r0, #0xf0
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, _0806B23C @ =gBgScrollRegs
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r0, _0806B240 @ =sub_806B290
	movs r1, #0xba
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _0806B244 @ =sub_806B620
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r3, _0806B248 @ =0x03000160
	adds r3, r3, r1
	mov sb, r3
	ldr r2, _0806B24C @ =0x0300016C
	adds r0, r1, r2
	strb r5, [r0]
	ldr r3, _0806B250 @ =0x0300016E
	adds r0, r1, r3
	strh r4, [r0]
	adds r2, #4
	adds r0, r1, r2
	strb r5, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	mov r3, r8
	str r0, [r3, #4]
	strh r4, [r3, #0xa]
	ldr r0, _0806B254 @ =0x0600F000
	str r0, [r3, #0xc]
	strh r4, [r3, #0x18]
	strh r4, [r3, #0x1a]
	movs r0, #0x50
	strh r0, [r3, #0x1c]
	strh r4, [r3, #0x1e]
	strh r4, [r3, #0x20]
	strh r4, [r3, #0x22]
	strh r4, [r3, #0x24]
	movs r0, #0x1e
	strh r0, [r3, #0x26]
	movs r0, #0x14
	strh r0, [r3, #0x28]
	ldr r0, _0806B258 @ =0x0300002A
	adds r1, r1, r0
	strb r5, [r1]
	strh r4, [r3, #0x2e]
	mov r0, r8
	bl DrawBackground
	movs r5, #0
	ldr r1, [sp, #4]
	lsls r1, r1, #1
	str r1, [sp, #0xc]
	movs r6, #0
_0806B074:
	lsls r4, r5, #1
	adds r0, r4, r5
	lsls r0, r0, #4
	adds r0, #0x40
	mov r2, r8
	adds r7, r2, r0
	ldr r0, _0806B25C @ =gUnknown_0868B77E
	adds r0, r5, r0
	ldrb r0, [r0]
	bl VramMalloc
	str r0, [r7, #4]
	ldr r1, _0806B260 @ =gUnknown_0868B76C
	lsls r0, r5, #2
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r1, _0806B264 @ =gUnknown_0868B778
	ldr r2, [sp, #4]
	adds r0, r2, r4
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r3, _0806B268 @ =gUnknown_0868B78A
	adds r0, r4, r3
	ldrb r0, [r0]
	strh r0, [r7, #0x16]
	ldr r0, _0806B26C @ =gUnknown_0868B78B
	adds r4, r4, r0
	ldrb r0, [r4]
	strh r0, [r7, #0x18]
	strh r6, [r7, #8]
	strh r6, [r7, #0x14]
	strh r6, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r3, #1
	rsbs r3, r3, #0
	mov r2, sp
	strb r3, [r2, #8]
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x22
	movs r1, #0x10
	mov sl, r1
	mov r2, sl
	strb r2, [r0]
	adds r0, #3
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x1a]
	str r6, [r7, #0x10]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0806B074
	mov r7, r8
	adds r7, #0xd0
	movs r0, #0x1c
	bl VramMalloc
	str r0, [r7, #4]
	movs r5, #0
	movs r4, #0
	ldr r0, _0806B270 @ =0x0000035A
	strh r0, [r7, #0xa]
	mov r0, r8
	adds r0, #0xf0
	strb r5, [r0]
	movs r0, #0x17
	strh r0, [r7, #0x16]
	movs r0, #0x39
	strh r0, [r7, #0x18]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	mov r1, r8
	adds r1, #0xf1
	ldrb r0, [r1]
	mov r2, sp
	ldrb r2, [r2, #8]
	orrs r0, r2
	strb r0, [r1]
	mov r0, r8
	adds r0, #0xf2
	mov r3, sl
	strb r3, [r0]
	adds r0, #3
	strb r5, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x1a]
	str r4, [r7, #0x10]
	movs r6, #0x80
	lsls r6, r6, #1
	mov r2, r8
	adds r7, r2, r6
	movs r0, #0x23
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _0806B274 @ =gUnknown_0868B782
	ldrh r0, [r0, #2]
	strh r0, [r7, #0xa]
	ldr r0, _0806B278 @ =gUnknown_0868B786
	ldrh r1, [r0, #2]
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, r8
	strb r1, [r0]
	movs r0, #0x65
	strh r0, [r7, #0x16]
	movs r0, #0x51
	strh r0, [r7, #0x18]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r1, _0806B27C @ =0x00000121
	add r1, r8
	ldrb r0, [r1]
	mov r3, sp
	ldrb r3, [r3, #8]
	orrs r0, r3
	strb r0, [r1]
	movs r0, #0x91
	lsls r0, r0, #1
	add r0, r8
	mov r1, sl
	strb r1, [r0]
	ldr r0, _0806B280 @ =0x00000125
	add r0, r8
	strb r5, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x90
	lsls r3, r3, #3
	strh r3, [r7, #0x1a]
	str r4, [r7, #0x10]
	movs r7, #0x98
	lsls r7, r7, #1
	add r7, r8
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r0, #0x50
	strh r0, [r7, #0x18]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x80
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	ldr r0, _0806B284 @ =0x00000389
	strh r0, [r7, #0xa]
	movs r0, #0xa8
	lsls r0, r0, #1
	add r0, r8
	strb r5, [r0]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r1, _0806B288 @ =0x00000151
	add r1, r8
	ldrb r0, [r1]
	mov r2, sp
	ldrb r2, [r2, #8]
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0xa9
	lsls r0, r0, #1
	add r0, r8
	mov r3, sl
	strb r3, [r0]
	ldr r0, _0806B28C @ =0x00000155
	add r0, r8
	strb r5, [r0]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, sb
	strh r4, [r0]
	movs r0, #1
	mov r1, sb
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #4]
	strh r4, [r1, #6]
	strh r6, [r1, #8]
	mov r2, sl
	strb r2, [r1, #0xa]
	mov r0, sb
	bl sub_805423C
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B224: .4byte gMultiplayerMissingHeartbeats
_0806B228: .4byte gLoadedSaveGame
_0806B22C: .4byte gKeysFirstRepeatIntervals
_0806B230: .4byte gKeysContinuedRepeatIntervals
_0806B234: .4byte gDispCnt
_0806B238: .4byte gBgCntRegs
_0806B23C: .4byte gBgScrollRegs
_0806B240: .4byte sub_806B290
_0806B244: .4byte sub_806B620
_0806B248: .4byte 0x03000160
_0806B24C: .4byte 0x0300016C
_0806B250: .4byte 0x0300016E
_0806B254: .4byte 0x0600F000
_0806B258: .4byte 0x0300002A
_0806B25C: .4byte gUnknown_0868B77E
_0806B260: .4byte gUnknown_0868B76C
_0806B264: .4byte gUnknown_0868B778
_0806B268: .4byte gUnknown_0868B78A
_0806B26C: .4byte gUnknown_0868B78B
_0806B270: .4byte 0x0000035A
_0806B274: .4byte gUnknown_0868B782
_0806B278: .4byte gUnknown_0868B786
_0806B27C: .4byte 0x00000121
_0806B280: .4byte 0x00000125
_0806B284: .4byte 0x00000389
_0806B288: .4byte 0x00000151
_0806B28C: .4byte 0x00000155

	thumb_func_start sub_806B290
sub_806B290: @ 0x0806B290
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0806B30C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r1, _0806B310 @ =0x03000160
	adds r1, r1, r0
	mov r8, r1
	ldr r2, _0806B314 @ =0x0300016E
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, #0x78
	bls _0806B358
	ldr r0, _0806B318 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0806B35C
	movs r3, #0
	ldr r0, _0806B31C @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _0806B35C
	movs r5, #1
	ldr r2, _0806B320 @ =gMultiplayerMissingHeartbeats
_0806B2CE:
	ldr r1, _0806B324 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0806B340
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0806B344
	movs r0, #0
	ldr r1, _0806B328 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0806B32C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0806B330 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0806B334 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0806B338 @ =gVramGraphicsCopyCursor
	ldr r0, _0806B33C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0806B520
	.align 2, 0
_0806B30C: .4byte gCurTask
_0806B310: .4byte 0x03000160
_0806B314: .4byte 0x0300016E
_0806B318: .4byte gGameMode
_0806B31C: .4byte gMultiplayerConnections
_0806B320: .4byte gMultiplayerMissingHeartbeats
_0806B324: .4byte gMultiSioStatusFlags
_0806B328: .4byte 0x0000FFFF
_0806B32C: .4byte gBackgroundsCopyQueueCursor
_0806B330: .4byte gBackgroundsCopyQueueIndex
_0806B334: .4byte sa2__gUnknown_03005390
_0806B338: .4byte gVramGraphicsCopyCursor
_0806B33C: .4byte gVramGraphicsCopyQueueIndex
_0806B340:
	movs r0, #0
	strb r0, [r2]
_0806B344:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0806B35C
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0806B2CE
	b _0806B35C
_0806B358:
	adds r0, #1
	strh r0, [r1]
_0806B35C:
	mov r0, r8
	bl sub_805423C
	lsls r0, r0, #0x18
	movs r1, #0x90
	lsls r1, r1, #1
	adds r3, r6, r1
	cmp r0, #0
	bne _0806B370
	b _0806B4FA
_0806B370:
	ldr r2, _0806B3B0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806B3B4 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0806B3B8 @ =gBldRegs
	movs r7, #0
	strh r7, [r0]
	strh r7, [r0, #4]
	ldr r4, _0806B3BC @ =gMultiSioRecv
	ldrh r0, [r4]
	cmp r0, #0xa0
	bne _0806B3C4
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r5, r6, r2
	ldrb r0, [r5]
	ldrb r1, [r4, #2]
	cmp r0, r1
	beq _0806B3F6
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _0806B3C0 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0806B3F6
	ldrb r0, [r4, #2]
	strb r0, [r5]
	b _0806B3F6
	.align 2, 0
_0806B3B0: .4byte gDispCnt
_0806B3B4: .4byte 0x00009FFF
_0806B3B8: .4byte gBldRegs
_0806B3BC: .4byte gMultiSioRecv
_0806B3C0: .4byte gMultiSioStatusFlags
_0806B3C4:
	cmp r0, #0xa1
	bne _0806B3F6
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r5, r6, r2
	ldrb r0, [r5]
	ldrb r1, [r4, #2]
	cmp r0, r1
	beq _0806B3E0
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrb r0, [r4, #2]
	strb r0, [r5]
_0806B3E0:
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r0, #1
	mov r2, r8
	strh r0, [r2, #4]
	strh r7, [r2, #6]
	ldr r0, _0806B42C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806B430 @ =sub_806B534
	str r0, [r1, #8]
_0806B3F6:
	ldr r4, _0806B434 @ =gMultiSioSend
	movs r0, #0xa0
	strh r0, [r4]
	adds r0, #0xcc
	adds r2, r6, r0
	ldrb r0, [r2]
	strb r0, [r4, #2]
	ldr r0, _0806B438 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	adds r7, r4, #0
	cmp r0, #0
	beq _0806B4E2
	adds r1, #0xf0
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806B4D8
	ldr r0, _0806B43C @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806B440
	movs r0, #1
	b _0806B44A
	.align 2, 0
_0806B42C: .4byte gCurTask
_0806B430: .4byte sub_806B534
_0806B434: .4byte gMultiSioSend
_0806B438: .4byte gMultiSioStatusFlags
_0806B43C: .4byte gRepeatedKeys
_0806B440:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0806B44C
	movs r0, #0
_0806B44A:
	strb r0, [r2]
_0806B44C:
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrb r0, [r0]
	strb r0, [r4, #2]
	ldr r0, _0806B4C8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	movs r1, #0x90
	lsls r1, r1, #1
	adds r3, r6, r1
	cmp r0, #0
	beq _0806B4FA
	movs r5, #1
	movs r2, #0
	ldr r0, _0806B4CC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r2, r0
	beq _0806B494
	ldr r0, _0806B4D0 @ =gMultiplayerConnections
	ldrb r0, [r0]
	ands r0, r5
	cmp r0, #0
	beq _0806B4B4
_0806B482:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _0806B4D4 @ =gMultiSioRecv
	adds r4, r0, r1
	ldrh r0, [r4]
	cmp r0, #0xa0
	beq _0806B494
	movs r5, #0
_0806B494:
	adds r2, #1
	cmp r2, #3
	bhi _0806B4B4
	ldr r0, _0806B4CC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r2, r0
	beq _0806B494
	ldr r0, _0806B4D0 @ =gMultiplayerConnections
	ldrb r0, [r0]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0806B482
_0806B4B4:
	cmp r5, #0
	beq _0806B4FA
	movs r0, #0xa1
	strh r0, [r7]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	b _0806B4FA
	.align 2, 0
_0806B4C8: .4byte gPressedKeys
_0806B4CC: .4byte 0x04000128
_0806B4D0: .4byte gMultiplayerConnections
_0806B4D4: .4byte gMultiSioRecv
_0806B4D8:
	movs r0, #0xa1
	strh r0, [r4]
	adds r0, #0x7f
	adds r3, r6, r0
	b _0806B4FA
_0806B4E2:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r4, r6, r1
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r2, #0x90
	lsls r2, r2, #1
	adds r3, r6, r2
_0806B4FA:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r1, _0806B52C @ =gUnknown_0868B782
	adds r0, #0x6c
	adds r2, r6, r0
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	ldr r1, _0806B530 @ =gUnknown_0868B786
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r3]
	bl sub_806B5A4
_0806B520:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B52C: .4byte gUnknown_0868B782
_0806B530: .4byte gUnknown_0868B786

	thumb_func_start sub_806B534
sub_806B534: @ 0x0806B534
	push {r4, r5, lr}
	ldr r5, _0806B578 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	ldr r1, _0806B57C @ =0x03000160
	adds r0, r4, r1
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806B598
	ldr r2, _0806B580 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806B584 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0806B588 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r1, _0806B58C @ =0x0300016C
	adds r0, r4, r1
	ldrb r4, [r0]
	movs r0, #0x9b
	bl m4aSongNumStop
	ldr r0, [r5]
	bl TaskDestroy
	cmp r4, #0
	bne _0806B590
	bl sub_8018538
	b _0806B59C
	.align 2, 0
_0806B578: .4byte gCurTask
_0806B57C: .4byte 0x03000160
_0806B580: .4byte gDispCnt
_0806B584: .4byte 0x00001FFF
_0806B588: .4byte gBldRegs
_0806B58C: .4byte 0x0300016C
_0806B590:
	movs r0, #2
	bl CreateChaoMessageMP
	b _0806B59C
_0806B598:
	bl sub_806B5A4
_0806B59C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806B5A4
sub_806B5A4: @ 0x0806B5A4
	push {r4, r5, r6, r7, lr}
	ldr r0, _0806B614 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r1, _0806B618 @ =0x0300016C
	adds r0, r0, r1
	ldrb r7, [r0]
	movs r5, #0
_0806B5BA:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, #0x40
	adds r4, r6, r0
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0806B5BA
	adds r4, r6, #0
	adds r4, #0xd0
	ldr r0, _0806B61C @ =gUnknown_0868B790
	adds r0, r7, r0
	ldrb r0, [r0]
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B614: .4byte gCurTask
_0806B618: .4byte 0x0300016C
_0806B61C: .4byte gUnknown_0868B790

	thumb_func_start sub_806B620
sub_806B620: @ 0x0806B620
	push {r4, r5, r6, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0
	adds r0, #0x44
	adds r6, r1, r0
_0806B630:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r6, r0
	ldr r0, [r0]
	bl VramFree
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0806B630
	adds r0, r5, #0
	adds r0, #0xd4
	ldr r0, [r0]
	bl VramFree
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_806B670
sub_806B670: @ 0x0806B670
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	add r5, sp, #0x2c
	movs r3, #0x20
	strb r3, [r5]
	mov r1, sp
	adds r1, #0x2b
	str r1, [sp, #0x30]
	movs r2, #1
	strb r2, [r1]
	ldr r4, _0806B810 @ =gUiGraphics
	ldrb r2, [r5]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r1, [r1]
	str r1, [sp, #0x14]
	ldrb r2, [r5]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r2, r4, #4
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [sp, #0x20]
	movs r1, #0xb0
	lsls r1, r1, #3
	str r1, [sp, #0x18]
	str r3, [sp, #0x24]
	mov r1, sp
	adds r1, #0x28
	str r1, [sp, #0x34]
	movs r1, #6
	ldr r2, [sp, #0x34]
	strb r1, [r2]
	str r0, [sp, #0xc]
	mov r0, sp
	adds r0, #0x2a
	str r0, [sp, #0x38]
	movs r0, #0xd
	ldr r1, [sp, #0x38]
	strb r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r5]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r2, #0x80
	mov sl, r2
	mov r0, sl
	strb r0, [r5]
	movs r2, #0
	ldr r1, [sp, #0x30]
	strb r2, [r1]
	ldr r7, _0806B814 @ =gUnknown_0868B794
	ldr r4, _0806B818 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #5
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #5
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x18]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #5
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	mov sb, r0
	str r0, [sp, #0x24]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #5
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #3
	mov r8, r1
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x34]
	strb r2, [r0]
	mov r6, sp
	adds r6, #0x29
	movs r1, #1
	strb r1, [r6]
	movs r0, #0x11
	ldr r2, [sp, #0x38]
	strb r0, [r2]
	mov r0, sp
	bl sub_80528AC
	mov r0, sl
	strb r0, [r5]
	movs r0, #2
	ldr r1, [sp, #0x30]
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #5
	adds r1, r7, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x18]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #5
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	mov r2, sb
	str r2, [sp, #0x24]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #5
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x10]
	mov r0, r8
	str r0, [sp, #0x1c]
	movs r2, #0
	ldr r1, [sp, #0x34]
	strb r2, [r1]
	strb r2, [r6]
	movs r0, #0x15
	ldr r1, [sp, #0x38]
	strb r0, [r1]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B810: .4byte gUiGraphics
_0806B814: .4byte gUnknown_0868B794
_0806B818: .4byte gSelectedCharacter

	thumb_func_start sub_806B81C
sub_806B81C: @ 0x0806B81C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_80535FC
	bl sub_8053674
	ldr r1, _0806BB40 @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0806BB44 @ =gBgCntRegs
	movs r0, #0
	mov r8, r0
	ldr r0, _0806BB48 @ =0x00001E83
	strh r0, [r1]
	ldr r0, _0806BB4C @ =0x00001C86
	strh r0, [r1, #2]
	ldr r0, _0806BB50 @ =gBgScrollRegs
	mov r1, r8
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	movs r0, #0x2c
	bl VramMalloc
	adds r6, r0, #0
	bl sub_806B670
	ldr r0, _0806BB54 @ =Task_806BBC0
	movs r1, #0x8a
	lsls r1, r1, #1
	ldr r2, _0806BB58 @ =TaskDestructor_806BF38
	str r2, [sp]
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r2, _0806BB5C @ =0x030000D8
	adds r2, r2, r4
	mov sl, r2
	ldr r1, _0806BB60 @ =0x03000104
	adds r0, r4, r1
	mov r2, r8
	str r2, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r2, [r0]
	ldr r2, _0806BB64 @ =0x0300010C
	adds r0, r4, r2
	mov r1, r8
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	str r6, [r0]
	ldr r0, _0806BB68 @ =0x030000FC
	adds r1, r4, r0
	movs r0, #0x21
	strb r0, [r1]
	subs r2, #0x13
	adds r1, r4, r2
	movs r0, #0x22
	strb r0, [r1]
	ldr r0, _0806BB6C @ =0x030000FE
	adds r1, r4, r0
	movs r0, #0x23
	strb r0, [r1]
	ldr r6, _0806BB70 @ =gUnknown_0868B814
	ldr r1, _0806BB74 @ =gCurrentLevel
	mov sb, r1
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x19
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	bl VramMalloc
	str r0, [r5, #4]
	mov r2, sb
	ldrb r1, [r2]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x19
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r6, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldrb r1, [r2]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x19
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r6, #4
	adds r0, r0, r6
	ldrh r1, [r0]
	ldr r2, _0806BB78 @ =0x03000020
	adds r0, r4, r2
	strb r1, [r0]
	movs r6, #0x19
	strh r6, [r5, #0x16]
	movs r0, #0x18
	strh r0, [r5, #0x18]
	mov r1, r8
	strh r1, [r5, #8]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	adds r2, #1
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0806BB7C @ =0x03000022
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r5, #0x1a]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, _0806BB80 @ =0x03000030
	adds r7, r4, r0
	ldr r5, _0806BB84 @ =gUnknown_0868B838
	mov r1, sb
	ldrb r0, [r1]
	movs r1, #1
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	bl VramMalloc
	str r0, [r7, #4]
	mov r2, sb
	ldrb r0, [r2]
	movs r1, #1
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r5, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldrb r0, [r2]
	movs r1, #1
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r5, #4
	adds r0, r0, r5
	ldrh r1, [r0]
	ldr r2, _0806BB88 @ =0x03000050
	adds r0, r4, r2
	strb r1, [r0]
	movs r0, #0x5d
	strh r0, [r7, #0x16]
	movs r0, #0x1b
	strh r0, [r7, #0x18]
	mov r0, r8
	strh r0, [r7, #8]
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	adds r2, #1
	adds r1, r4, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0806BB8C @ =0x03000052
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x1a]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, _0806BB90 @ =0x03000060
	adds r7, r4, r0
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xdd
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r2, _0806BB94 @ =0x03000080
	adds r1, r4, r2
	movs r0, #2
	strb r0, [r1]
	strh r6, [r7, #0x16]
	movs r0, #0x50
	strh r0, [r7, #0x18]
	mov r0, r8
	strh r0, [r7, #8]
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	adds r2, #1
	adds r1, r4, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0806BB98 @ =0x03000082
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x1a]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, _0806BB9C @ =0x03000090
	adds r7, r4, r0
	ldr r5, _0806BBA0 @ =gUnknown_0868B844
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r6, _0806BBA4 @ =gLoadedSaveGame
	ldrb r2, [r6, #0x19]
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r5
	ldrh r0, [r1]
	bl VramMalloc
	str r0, [r7, #4]
	mov r2, sb
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldrb r2, [r6, #0x19]
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r0, r5, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7, #0xa]
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldrb r2, [r6, #0x19]
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r5, #4
	adds r1, r1, r5
	ldrh r1, [r1]
	ldr r2, _0806BBA8 @ =0x030000B0
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _0806BBAC @ =0x03000100
	adds r1, r4, r0
	ldr r0, _0806BBB0 @ =0xFFFFA600
	str r0, [r1]
	ldr r0, _0806BBB4 @ =0x0000FFA6
	strh r0, [r7, #0x16]
	movs r0, #0x30
	strh r0, [r7, #0x18]
	mov r1, r8
	strh r1, [r7, #8]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x1c]
	adds r2, #1
	adds r1, r4, r2
	subs r0, #0x31
	strb r0, [r1]
	ldr r1, _0806BBB8 @ =0x030000B2
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x1a]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, _0806BBBC @ =0x030000C0
	adds r4, r4, r0
	movs r0, #0xf0
	strh r0, [r4, #0xa]
	movs r0, #0x8c
	strh r0, [r4, #0xc]
	movs r0, #8
	strh r0, [r4, #0xe]
	movs r1, #1
	strh r1, [r4, #0x10]
	movs r0, #6
	strh r0, [r4, #0x12]
	strb r1, [r4, #0x16]
	movs r1, #0x18
	strh r1, [r4, #8]
	movs r4, #0
_0806BAFA:
	adds r0, r4, #0
	ldr r1, [sp, #4]
	bl sub_806BDC4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0806BAFA
	movs r1, #0
	mov r2, sl
	strh r1, [r2]
	movs r0, #1
	strh r0, [r2, #2]
	movs r0, #2
	strh r0, [r2, #4]
	strh r1, [r2, #6]
	adds r0, #0xfe
	strh r0, [r2, #8]
	movs r0, #0x10
	strb r0, [r2, #0xa]
	mov r0, sl
	bl sub_805423C
	movs r0, #4
	bl m4aSongNumStartOrContinue
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806BB40: .4byte gDispCnt
_0806BB44: .4byte gBgCntRegs
_0806BB48: .4byte 0x00001E83
_0806BB4C: .4byte 0x00001C86
_0806BB50: .4byte gBgScrollRegs
_0806BB54: .4byte Task_806BBC0
_0806BB58: .4byte TaskDestructor_806BF38
_0806BB5C: .4byte 0x030000D8
_0806BB60: .4byte 0x03000104
_0806BB64: .4byte 0x0300010C
_0806BB68: .4byte 0x030000FC
_0806BB6C: .4byte 0x030000FE
_0806BB70: .4byte gUnknown_0868B814
_0806BB74: .4byte gCurrentLevel
_0806BB78: .4byte 0x03000020
_0806BB7C: .4byte 0x03000022
_0806BB80: .4byte 0x03000030
_0806BB84: .4byte gUnknown_0868B838
_0806BB88: .4byte 0x03000050
_0806BB8C: .4byte 0x03000052
_0806BB90: .4byte 0x03000060
_0806BB94: .4byte 0x03000080
_0806BB98: .4byte 0x03000082
_0806BB9C: .4byte 0x03000090
_0806BBA0: .4byte gUnknown_0868B844
_0806BBA4: .4byte gLoadedSaveGame
_0806BBA8: .4byte 0x030000B0
_0806BBAC: .4byte 0x03000100
_0806BBB0: .4byte 0xFFFFA600
_0806BBB4: .4byte 0x0000FFA6
_0806BBB8: .4byte 0x030000B2
_0806BBBC: .4byte 0x030000C0

	thumb_func_start Task_806BBC0
Task_806BBC0: @ 0x0806BBC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r6, #0
	movs r0, #0xa0
	mov ip, r0
	movs r4, #0
	mov sb, r4
	ldr r5, _0806BC30 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r0
	mov sl, r1
	ldr r1, _0806BC34 @ =0x030000D8
	adds r1, r1, r0
	mov r8, r1
	ldr r2, _0806BC38 @ =0x03000104
	adds r1, r0, r2
	ldr r7, [r1]
	adds r7, #1
	ldr r1, _0806BC3C @ =0x03000108
	adds r0, r0, r1
	ldr r2, [r0]
	adds r2, #1
	str r2, [r0]
	cmp r7, #0xf0
	bls _0806BC50
	ldr r2, _0806BC40 @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r0, #4
	bl m4aSongNumStop
	ldr r2, _0806BC44 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806BC48 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0806BC4C @ =gBldRegs
	strh r6, [r0]
	strh r6, [r0, #4]
	ldr r0, [r5]
	bl TaskDestroy
	bl ApplyGameStageSettings
	b _0806BCF6
	.align 2, 0
_0806BC30: .4byte gCurTask
_0806BC34: .4byte 0x030000D8
_0806BC38: .4byte 0x03000104
_0806BC3C: .4byte 0x03000108
_0806BC40: .4byte gFlags
_0806BC44: .4byte gDispCnt
_0806BC48: .4byte 0x00001FFF
_0806BC4C: .4byte gBldRegs
_0806BC50:
	cmp r7, #0xd0
	bne _0806BC5E
	movs r0, #1
	mov r5, r8
	strh r0, [r5, #4]
	strh r6, [r5, #6]
	b _0806BC74
_0806BC5E:
	ldr r0, _0806BD08 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0806BC74
	cmp r7, #0x20
	bls _0806BC74
	cmp r7, #0xcf
	bhi _0806BC74
	movs r7, #0xcf
_0806BC74:
	movs r0, #0xff
	adds r3, r0, #0
	ands r3, r2
	ldr r1, _0806BD0C @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r1, _0806BD10 @ =sa2__gUnknown_03002878
	ldr r0, _0806BD14 @ =0x04000010
	str r0, [r1]
	ldr r0, _0806BD18 @ =sa2__gUnknown_03002A80
	strb r2, [r0]
	ldr r0, _0806BD1C @ =gBgOffsetsHBlank
	lsls r1, r6, #2
	ldr r0, [r0]
	adds r2, r0, r1
	cmp r6, ip
	bhs _0806BCE0
_0806BC9A:
	movs r1, #0
	lsls r4, r4, #0x18
	str r4, [sp]
	lsls r4, r3, #0x10
	cmp r6, ip
	bhs _0806BCC8
	adds r3, #0
	ldr r5, _0806BD20 @ =0x000001FF
	adds r0, r5, #0
	ands r3, r0
_0806BCAE:
	strh r3, [r2]
	adds r2, #2
	mov r0, sb
	strh r0, [r2]
	adds r2, #2
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r1, #1
	cmp r1, #0x17
	bhi _0806BCC8
	cmp r6, ip
	blo _0806BCAE
_0806BCC8:
	ldr r5, [sp]
	asrs r1, r5, #0x18
	asrs r0, r4, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r6, ip
	blo _0806BC9A
_0806BCE0:
	movs r0, #0x82
	lsls r0, r0, #1
	add r0, sl
	str r7, [r0]
	mov r0, r8
	bl sub_805423C
	bl sub_806BF04
	bl sub_806BD24
_0806BCF6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806BD08: .4byte gPressedKeys
_0806BD0C: .4byte gFlags
_0806BD10: .4byte sa2__gUnknown_03002878
_0806BD14: .4byte 0x04000010
_0806BD18: .4byte sa2__gUnknown_03002A80
_0806BD1C: .4byte gBgOffsetsHBlank
_0806BD20: .4byte 0x000001FF

	thumb_func_start sub_806BD24
sub_806BD24: @ 0x0806BD24
	push {r4, r5, r6, r7, lr}
	ldr r0, _0806BDC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc0
	adds r6, r1, r0
	movs r5, #0
_0806BD38:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r7, r0
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0806BD38
	adds r4, r7, #0
	adds r4, #0x90
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0xf3
	cmp r0, r1
	bgt _0806BD80
	adds r5, r1, #0
_0806BD6C:
	adds r0, r4, #0
	bl DisplaySprite
	ldrh r0, [r4, #0x16]
	adds r0, #0xc8
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	ble _0806BD6C
_0806BD80:
	movs r5, #0
_0806BD82:
	movs r0, #1
	strh r0, [r6, #0xe]
	movs r0, #0x2c
	strh r0, [r6, #0xa]
	lsls r0, r5, #4
	adds r0, #0x5c
	strh r0, [r6, #0xc]
	adds r0, r5, #0
	adds r0, #0xfc
	adds r0, r7, r0
	adds r1, r6, #0
	bl sub_8052F78
	movs r0, #7
	strh r0, [r6, #0xe]
	movs r0, #0x50
	strh r0, [r6, #0xa]
	lsls r0, r5, #3
	adds r0, #0xe4
	adds r0, r7, r0
	adds r1, r6, #0
	bl sub_8052F78
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0806BD82
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806BDC0: .4byte gCurTask

	thumb_func_start sub_806BDC4
sub_806BDC4: @ 0x0806BDC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrh r7, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov r8, r0
	ldr r3, _0806BE30 @ =gLoadedSaveGame
	ldr r0, _0806BE34 @ =gCurrentLevel
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _0806BE38 @ =gSelectedCharacter
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r1, #0xd8
	muls r1, r2, r1
	adds r0, r0, r1
	adds r3, #0x20
	adds r0, r0, r3
	ldr r6, [r0]
	ldr r0, _0806BE3C @ =0x00008C9F
	cmp r6, r0
	bls _0806BE48
	lsls r2, r5, #3
	ldr r1, _0806BE40 @ =0x030000EA
	adds r0, r7, r1
	adds r0, r0, r2
	movs r3, #0x29
	strb r3, [r0]
	subs r1, #1
	adds r0, r7, r1
	adds r0, r0, r2
	strb r3, [r0]
	subs r1, #2
	adds r0, r7, r1
	adds r0, r0, r2
	strb r3, [r0]
	subs r1, #1
	adds r0, r7, r1
	adds r0, r0, r2
	movs r1, #0x25
	strb r1, [r0]
	ldr r1, _0806BE44 @ =0x030000E4
	adds r0, r7, r1
	adds r0, r0, r2
	strb r3, [r0]
	b _0806BEC2
	.align 2, 0
_0806BE30: .4byte gLoadedSaveGame
_0806BE34: .4byte gCurrentLevel
_0806BE38: .4byte gSelectedCharacter
_0806BE3C: .4byte 0x00008C9F
_0806BE40: .4byte 0x030000EA
_0806BE44: .4byte 0x030000E4
_0806BE48:
	adds r0, r6, #0
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	movs r1, #0x3c
	bl Div
	ldr r2, _0806BEE0 @ =sZoneTimeSecondsTable
	lsls r0, r0, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r4, r4, r1
	lsls r4, r4, #1
	adds r2, r4, r2
	movs r1, #0
	ldrsh r2, [r2, r1]
	subs r2, r6, r2
	ldr r1, _0806BEE4 @ =sZoneTimeMinutesTable
	adds r1, r0, r1
	ldrh r1, [r1]
	subs r2, r2, r1
	lsls r2, r2, #1
	lsls r5, r5, #3
	ldr r1, _0806BEE8 @ =0x030000EA
	adds r3, r7, r1
	adds r3, r3, r5
	ldr r6, _0806BEEC @ =gUnknown_0865EFF4
	adds r1, r2, #1
	adds r1, r1, r6
	ldrb r1, [r1]
	strb r1, [r3]
	ldr r3, _0806BEF0 @ =0x030000E9
	adds r1, r7, r3
	adds r1, r1, r5
	adds r2, r2, r6
	ldrb r2, [r2]
	strb r2, [r1]
	ldr r1, _0806BEF4 @ =0x030000E7
	adds r2, r7, r1
	adds r2, r2, r5
	ldr r3, _0806BEF8 @ =gUnknown_0865F06C
	adds r1, r4, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	strb r1, [r2]
	ldr r2, _0806BEFC @ =0x030000E6
	adds r1, r7, r2
	adds r1, r1, r5
	adds r4, r4, r3
	ldrb r2, [r4]
	strb r2, [r1]
	ldr r2, _0806BF00 @ =0x030000E4
	adds r1, r7, r2
	adds r1, r1, r5
	adds r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r2, r5, #0
_0806BEC2:
	mov r0, r8
	adds r0, #0xe5
	adds r0, r0, r2
	movs r1, #0x2a
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xe8
	adds r0, r0, r2
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806BEE0: .4byte sZoneTimeSecondsTable
_0806BEE4: .4byte sZoneTimeMinutesTable
_0806BEE8: .4byte 0x030000EA
_0806BEEC: .4byte gUnknown_0865EFF4
_0806BEF0: .4byte 0x030000E9
_0806BEF4: .4byte 0x030000E7
_0806BEF8: .4byte gUnknown_0865F06C
_0806BEFC: .4byte 0x030000E6
_0806BF00: .4byte 0x030000E4

	thumb_func_start sub_806BF04
sub_806BF04: @ 0x0806BF04
	ldr r0, _0806BF28 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0806BF2C @ =0x03000100
	adds r2, r0, r1
	ldr r3, [r2]
	ldr r0, _0806BF30 @ =0xFFFFFE00
	adds r1, r3, r0
	str r1, [r2]
	ldr r0, _0806BF34 @ =0xFFFF3800
	cmp r1, r0
	bge _0806BF24
	movs r1, #0xc6
	lsls r1, r1, #8
	adds r0, r3, r1
	str r0, [r2]
_0806BF24:
	bx lr
	.align 2, 0
_0806BF28: .4byte gCurTask
_0806BF2C: .4byte 0x03000100
_0806BF30: .4byte 0xFFFFFE00
_0806BF34: .4byte 0xFFFF3800

	thumb_func_start TaskDestructor_806BF38
TaskDestructor_806BF38: @ 0x0806BF38
	push {r4, r5, lr}
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, [r4, #0x64]
	bl VramFree
	ldr r1, _0806BF70 @ =0x03000094
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	ldr r0, _0806BF74 @ =0x03000110
	adds r5, r5, r0
	ldr r0, [r5]
	bl VramFree
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806BF70: .4byte 0x03000094
_0806BF74: .4byte 0x03000110
