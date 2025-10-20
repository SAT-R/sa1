.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ Start of src/game/multiplayer/finish.c

.if 01
.endif

	thumb_func_start sa2__Task_801A04C
sa2__Task_801A04C: @ 0x0801A110
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r6, _0801A17C @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0801A180 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801A12A
	movs r2, #0xf0
_0801A12A:
	ldr r0, _0801A184 @ =gRoomEventQueueWritePos
	ldr r1, _0801A188 @ =gRoomEventQueueSendPos
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801A176
	ldrh r0, [r5]
	adds r1, r0, #1
	strh r1, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r2
	bls _0801A176
	ldr r1, _0801A18C @ =gBldRegs
	movs r4, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r4, [r1, #4]
	ldr r0, _0801A190 @ =gMPlayInfo_BGM
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _0801A194 @ =gMPlayInfo_SE1
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _0801A198 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _0801A19C @ =gMPlayInfo_SE3
	movs r1, #4
	bl m4aMPlayFadeOut
	strh r4, [r5]
	ldr r1, [r6]
	ldr r0, _0801A1A0 @ =Task_TransitionToResultsScreen
	str r0, [r1, #8]
_0801A176:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A17C: .4byte gCurTask
_0801A180: .4byte gGameMode
_0801A184: .4byte gRoomEventQueueWritePos
_0801A188: .4byte gRoomEventQueueSendPos
_0801A18C: .4byte gBldRegs
_0801A190: .4byte gMPlayInfo_BGM
_0801A194: .4byte gMPlayInfo_SE1
_0801A198: .4byte gMPlayInfo_SE2
_0801A19C: .4byte gMPlayInfo_SE3
_0801A1A0: .4byte Task_TransitionToResultsScreen

	thumb_func_start Task_TransitionToResultsScreen
Task_TransitionToResultsScreen: @ 0x0801A1A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0801A290 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	ldr r2, _0801A294 @ =gBldRegs
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r2, #4]
	ldrh r1, [r1]
	ldr r0, _0801A298 @ =0x00000FFF
	cmp r1, r0
	bhi _0801A1D4
	b _0801A36E
_0801A1D4:
	movs r0, #0xbf
	strh r0, [r2]
	movs r0, #0
	strh r0, [r2, #4]
	ldr r0, _0801A29C @ =gGameMode
	ldrb r0, [r0]
	add r1, sp, #8
	mov sl, r1
	cmp r0, #6
	beq _0801A1EA
	b _0801A2EA
_0801A1EA:
	ldr r1, _0801A2A0 @ =gUnknown_080BB490
	mov r0, sp
	movs r2, #4
	bl memcpy
	add r4, sp, #4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl memset
	ldr r0, _0801A2A4 @ =gMultiplayerCharRings
	ldr r0, [r0]
	str r0, [sp, #4]
	movs r7, #0
	mov sb, r4
	movs r0, #3
	mov ip, r0
_0801A20E:
	movs r4, #0
	cmp r4, ip
	bhs _0801A256
	mov r6, sb
	mov r8, ip
_0801A218:
	adds r3, r6, r4
	adds r5, r4, #1
	adds r2, r6, r5
	ldrb r0, [r3]
	ldrb r1, [r2]
	cmp r0, r1
	bhs _0801A250
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	strb r0, [r3]
	mov r1, sp
	adds r3, r1, r4
	adds r2, r1, r5
	ldrb r1, [r3]
	ldrb r0, [r2]
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	strb r0, [r3]
_0801A250:
	adds r4, r5, #0
	cmp r4, r8
	blo _0801A218
_0801A256:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r7, #1
	cmp r7, #3
	bls _0801A20E
	movs r7, #0
	mov r4, sb
	ldr r6, _0801A2A8 @ =sa2__gUnknown_030054B4
	ldr r5, _0801A2AC @ =gMultiplayerCharacters
	mov r3, sp
	mov r2, sp
	ldr r1, _0801A2B0 @ =gMPRingCollectWins
	mov r8, r1
_0801A272:
	cmp r7, #0
	beq _0801A2B4
	adds r0, r4, r7
	ldrb r0, [r0]
	ldrb r1, [r4]
	cmp r0, r1
	beq _0801A2BC
	ldrb r0, [r2]
	adds r0, r0, r6
	strb r7, [r0]
	ldrb r0, [r2]
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
	b _0801A2E2
	.align 2, 0
_0801A290: .4byte gCurTask
_0801A294: .4byte gBldRegs
_0801A298: .4byte 0x00000FFF
_0801A29C: .4byte gGameMode
_0801A2A0: .4byte gUnknown_080BB490
_0801A2A4: .4byte gMultiplayerCharRings
_0801A2A8: .4byte sa2__gUnknown_030054B4
_0801A2AC: .4byte gMultiplayerCharacters
_0801A2B0: .4byte gMPRingCollectWins
_0801A2B4:
	ldrb r1, [r4, #1]
	ldrb r0, [r4]
	cmp r0, r1
	bne _0801A2CC
_0801A2BC:
	ldrb r0, [r2]
	adds r0, r0, r6
	strb r7, [r0]
	ldrb r0, [r2]
	adds r0, r0, r5
	movs r1, #2
	strb r1, [r0]
	b _0801A2E2
_0801A2CC:
	ldrb r0, [r3]
	adds r0, r0, r6
	strb r7, [r0]
	ldrb r1, [r3]
	add r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, r0, r5
	strb r7, [r0]
_0801A2E2:
	adds r2, #1
	adds r7, #1
	cmp r7, #3
	bls _0801A272
_0801A2EA:
	ldr r1, _0801A32C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0801A330 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801A334 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0801A338 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0801A33C @ =gVramGraphicsCopyCursor
	ldr r0, _0801A340 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801A344 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801A354
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, _0801A348 @ =0x040000D4
	mov r0, sl
	str r0, [r1]
	ldr r0, _0801A34C @ =gMultiSioSend
	str r0, [r1, #4]
	ldr r0, _0801A350 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	bl CreateMultiplayerResultsScreen
	b _0801A36E
	.align 2, 0
_0801A32C: .4byte 0x0000FFFF
_0801A330: .4byte gBackgroundsCopyQueueCursor
_0801A334: .4byte gBackgroundsCopyQueueIndex
_0801A338: .4byte sa2__gUnknown_03005390
_0801A33C: .4byte gVramGraphicsCopyCursor
_0801A340: .4byte gVramGraphicsCopyQueueIndex
_0801A344: .4byte gGameMode
_0801A348: .4byte 0x040000D4
_0801A34C: .4byte gMultiSioSend
_0801A350: .4byte 0x85000005
_0801A354:
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, _0801A380 @ =0x040000D4
	mov r0, sl
	str r0, [r1]
	ldr r0, _0801A384 @ =gMultiSioSend
	str r0, [r1, #4]
	ldr r0, _0801A388 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	bl CreateMultiplayerSinglePakResultsScreen
_0801A36E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A380: .4byte 0x040000D4
_0801A384: .4byte gMultiSioSend
_0801A388: .4byte 0x85000005
