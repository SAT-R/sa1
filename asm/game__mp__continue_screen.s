.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateMultiplayerContinueScreen
CreateMultiplayerContinueScreen: @ 0x0806AFA4
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
	ldr r0, _0806B240 @ =Task_MultiplayerContinueScreen
	movs r1, #0xba
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _0806B244 @ =TaskDestructor_MultiplayerContinueScreen
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
_0806B240: .4byte Task_MultiplayerContinueScreen
_0806B244: .4byte TaskDestructor_MultiplayerContinueScreen
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

	thumb_func_start Task_MultiplayerContinueScreen
Task_MultiplayerContinueScreen: @ 0x0806B290
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
	bl CreateMultiplayerResultsScreen
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

	thumb_func_start TaskDestructor_MultiplayerContinueScreen
TaskDestructor_MultiplayerContinueScreen: @ 0x0806B620
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
