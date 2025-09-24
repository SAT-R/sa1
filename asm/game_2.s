.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8062EDC
sub_8062EDC: @ 0x08062EDC
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x30
	bl UiGfxStackInit
	add r0, sp, #0x2c
	mov r8, r0
	movs r4, #0
	movs r6, #0x80
	strb r6, [r0]
	mov r5, sp
	adds r5, #0x2b
	movs r1, #1
	strb r1, [r5]
	ldr r0, _08062F7C @ =gUnknown_086A17F4
	str r0, [sp, #0x14]
	movs r0, #0xe0
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _08062F80 @ =gUnknown_086A2534
	str r0, [sp, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [sp, #0x1c]
	movs r0, #0x29
	add r0, sp
	mov sb, r0
	strb r1, [r0]
	movs r1, #0x2a
	add r1, sp
	mov sl, r1
	movs r0, #0x11
	strb r0, [r1]
	str r4, [sp, #4]
	mov r0, sp
	strb r4, [r0, #8]
	strb r4, [r0, #9]
	strb r4, [r0, #0xa]
	strb r4, [r0, #0xb]
	bl sub_80528AC
	mov r0, r8
	strb r6, [r0]
	strb r4, [r5]
	ldr r0, _08062F84 @ =gUnknown_086A4FB4
	str r0, [sp, #0x14]
	movs r0, #0xe6
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08062F88 @ =gUnknown_086A4DB4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08062F8C @ =gUnknown_086A5834
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [sp, #0x1c]
	add r0, sp, #0x28
	strb r4, [r0]
	mov r1, sb
	strb r4, [r1]
	movs r0, #0x15
	mov r1, sl
	strb r0, [r1]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062F7C: .4byte gUnknown_086A17F4
_08062F80: .4byte gUnknown_086A2534
_08062F84: .4byte gUnknown_086A4FB4
_08062F88: .4byte gUnknown_086A4DB4
_08062F8C: .4byte gUnknown_086A5834

	thumb_func_start sub_8062F90
sub_8062F90: @ 0x08062F90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08063188 @ =gMultiplayerMissingHeartbeats
	movs r4, #0
	strb r4, [r0, #3]
	strb r4, [r0, #2]
	strb r4, [r0, #1]
	strb r4, [r0]
	movs r0, #4
	bl m4aSongNumStart
	movs r0, #4
	mov sb, r0
	bl sub_80535FC
	ldr r1, _0806318C @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08063190 @ =gBgCntRegs
	movs r5, #0
	ldr r0, _08063194 @ =0x00001D83
	strh r0, [r1]
	ldr r0, _08063198 @ =0x00001886
	strh r0, [r1, #2]
	ldr r0, _0806319C @ =gBgScrollRegs
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	bl sub_8062EDC
	ldr r0, _080631A0 @ =sub_80631E8
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080631A4 @ =sub_8063910
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r7, r1, r6
	str r4, [r7, #0x4c]
	ldr r3, _080631A8 @ =0x03000057
	adds r0, r1, r3
	strb r5, [r0]
	ldr r2, _080631AC @ =0x03000050
	adds r0, r1, r2
	movs r2, #0x14
	strh r2, [r0]
	subs r3, #5
	adds r0, r1, r3
	strh r2, [r0]
	ldr r2, _080631B0 @ =0x03000054
	adds r0, r1, r2
	strb r5, [r0]
	adds r3, #3
	adds r0, r1, r3
	strb r5, [r0]
	ldr r0, _080631B4 @ =0x03000058
	adds r1, r1, r0
	mov r2, sb
	strb r2, [r1]
	strh r4, [r7]
	movs r1, #1
	movs r0, #1
	strh r0, [r7, #2]
	movs r0, #2
	strh r0, [r7, #4]
	strh r4, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #8]
	strb r1, [r7, #0xa]
	ldr r0, _080631B8 @ =sub_8063914
	ldr r3, _080631BC @ =0x00002030
	mov r8, r3
	str r4, [sp]
	movs r1, #0x54
	mov r2, r8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r0, [r2, #6]
	adds r1, r0, r6
	str r4, [r1, #0x48]
	ldr r3, _080631C0 @ =0x0300004C
	adds r1, r0, r3
	strh r4, [r1]
	adds r3, #2
	adds r1, r0, r3
	strb r5, [r1]
	adds r3, #3
	adds r1, r0, r3
	mov r3, sb
	strb r3, [r1]
	ldr r1, _080631C4 @ =0x0300004F
	adds r0, r0, r1
	strb r5, [r0]
	str r2, [r7, #0xc]
	ldr r0, _080631C8 @ =sub_8063824
	movs r1, #0xb7
	lsls r1, r1, #2
	str r4, [sp]
	mov r2, r8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r0, [r2, #6]
	adds r6, r0, r6
	str r6, [sp, #4]
	ldr r3, _080631CC @ =0x030002D0
	adds r1, r0, r3
	str r4, [r1]
	ldr r6, _080631D0 @ =0x030002D4
	adds r1, r0, r6
	strh r4, [r1]
	adds r3, #6
	adds r1, r0, r3
	strb r5, [r1]
	ldr r4, _080631D4 @ =0x030002D7
	adds r1, r0, r4
	strb r5, [r1]
	adds r6, #6
	adds r1, r0, r6
	mov r3, sb
	strb r3, [r1]
	adds r4, #2
	adds r0, r0, r4
	strb r5, [r0]
	movs r4, #0
	ldr r6, _080631D8 @ =gUnknown_0868B240
	mov r8, r6
	movs r5, #0
_080630B0:
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r0, r1, #4
	ldr r6, [sp, #4]
	adds r3, r6, r0
	lsls r1, r1, #2
	mov r6, r8
	adds r0, r1, r6
	ldr r0, [r0]
	str r0, [r3, #4]
	mov r0, r8
	adds r0, #4
	adds r0, r1, r0
	ldr r0, [r0]
	strh r0, [r3, #0xa]
	ldr r0, _080631DC @ =gUnknown_0868B248
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r3, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r3, #0x1a]
	strh r5, [r3, #8]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0x1c]
	adds r1, r3, #0
	adds r1, #0x21
	movs r6, #1
	rsbs r6, r6, #0
	mov sl, r6
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x22
	movs r1, #0x10
	mov sb, r1
	mov r6, sb
	strb r6, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	movs r6, #0x80
	lsls r6, r6, #6
	str r6, [r3, #0x10]
	adds r0, r3, #0
	str r2, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp, #8]
	cmp r4, #4
	bls _080630B0
	str r2, [r7, #0x10]
	adds r3, r7, #0
	adds r3, #0x1c
	movs r2, #0
	movs r1, #0
	movs r0, #0x78
	strh r0, [r3, #0x16]
	movs r0, #0x50
	strh r0, [r3, #0x18]
	ldr r0, _080631E0 @ =0x06010F00
	str r0, [r3, #4]
	movs r0, #0x80
	strh r0, [r3, #0x1a]
	strh r1, [r3, #8]
	ldr r0, _080631E4 @ =0x00000389
	strh r0, [r3, #0xa]
	adds r0, r7, #0
	adds r0, #0x3c
	strb r2, [r0]
	strh r1, [r3, #0x14]
	strh r1, [r3, #0x1c]
	adds r1, r7, #0
	adds r1, #0x3d
	ldrb r0, [r1]
	mov r4, sl
	orrs r0, r4
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x3e
	mov r1, sb
	strb r1, [r0]
	adds r0, #3
	strb r2, [r0]
	str r6, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl sub_805423C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063188: .4byte gMultiplayerMissingHeartbeats
_0806318C: .4byte gDispCnt
_08063190: .4byte gBgCntRegs
_08063194: .4byte 0x00001D83
_08063198: .4byte 0x00001886
_0806319C: .4byte gBgScrollRegs
_080631A0: .4byte sub_80631E8
_080631A4: .4byte sub_8063910
_080631A8: .4byte 0x03000057
_080631AC: .4byte 0x03000050
_080631B0: .4byte 0x03000054
_080631B4: .4byte 0x03000058
_080631B8: .4byte sub_8063914
_080631BC: .4byte 0x00002030
_080631C0: .4byte 0x0300004C
_080631C4: .4byte 0x0300004F
_080631C8: .4byte sub_8063824
_080631CC: .4byte 0x030002D0
_080631D0: .4byte 0x030002D4
_080631D4: .4byte 0x030002D7
_080631D8: .4byte gUnknown_0868B240
_080631DC: .4byte gUnknown_0868B248
_080631E0: .4byte 0x06010F00
_080631E4: .4byte 0x00000389

	thumb_func_start sub_80631E8
sub_80631E8: @ 0x080631E8
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
	movs r0, #0x6a
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
	ldr r0, _080637C4 @ =sub_80638B0
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
_080637C4: .4byte sub_80638B0
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

	thumb_func_start sub_8063824
sub_8063824: @ 0x08063824
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

	thumb_func_start sub_80638B0
sub_80638B0: @ 0x080638B0
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

    thumb_func_start sub_8063910
sub_8063910:
    bx lr
    .align 2, 0

    thumb_func_start sub_8063914
sub_8063914:
    bx lr
    .align 2, 0

	thumb_func_start sub_8063918
sub_8063918: @ 0x08063918
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _08063B08 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08063B0C @ =gBackgroundsCopyQueueCursor
	ldr r0, _08063B10 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08063B14 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08063B18 @ =gVramGraphicsCopyCursor
	ldr r0, _08063B1C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_80535FC
	bl UiGfxStackInit
	ldr r1, _08063B20 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08063B24 @ =gBgCntRegs
	movs r5, #0
	movs r4, #0
	ldr r0, _08063B28 @ =0x00009D86
	strh r0, [r1]
	ldr r0, _08063B2C @ =0x00001B8B
	strh r0, [r1, #2]
	ldr r0, _08063B30 @ =0x00009880
	strh r0, [r1, #4]
	ldr r0, _08063B34 @ =gBgScrollRegs
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	ldr r0, _08063B38 @ =sub_8065814
	ldr r2, _08063B3C @ =0x00002120
	str r4, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	mov sl, r0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r2, r0
	strh r4, [r6, #0x30]
	ldr r0, _08063B40 @ =0xFFFFDC00
	mov sb, r0
	str r4, [r6, #0x34]
	str r0, [r6, #0x38]
	str r0, [r6, #0x3c]
	movs r0, #0x90
	lsls r0, r0, #2
	str r0, [r6, #0x40]
	ldr r0, _08063B44 @ =0x06010020
	str r0, [r6, #4]
	ldr r0, _08063B48 @ =0x00000306
	strh r0, [r6, #0xa]
	ldr r1, _08063B4C @ =0x03000020
	adds r0, r2, r1
	strb r5, [r0]
	movs r0, #0x78
	strh r0, [r6, #0x16]
	ldr r0, _08063B50 @ =0x0000FFDC
	strh r0, [r6, #0x18]
	movs r0, #0xc0
	strh r0, [r6, #0x1a]
	strh r4, [r6, #8]
	strh r4, [r6, #0x14]
	strh r4, [r6, #0x1c]
	ldr r4, _08063B54 @ =0x03000021
	adds r1, r2, r4
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08063B58 @ =0x03000022
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08063B5C @ =0x03000025
	adds r2, r2, r1
	strb r5, [r2]
	subs r0, #0x11
	str r0, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r7, #0
	movs r2, #0
	mov r8, r2
_080639EA:
	lsls r4, r7, #1
	movs r5, #0xd0
	lsls r5, r5, #7
	adds r0, r5, #0
	adds r2, r4, #0
	orrs r2, r0
	mov r0, r8
	str r0, [sp]
	ldr r0, _08063B60 @ =sub_8065058
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r5, r1
	adds r4, r4, r7
	lsls r4, r4, #1
	movs r0, #0x2f
	subs r0, r0, r4
	strh r0, [r6, #0x30]
	ldr r2, _08063B64 @ =0x03000032
	adds r0, r5, r2
	strb r7, [r0]
	ldrh r0, [r6, #0x30]
	str r0, [r6, #0x34]
	mov r4, sb
	str r4, [r6, #0x38]
	str r4, [r6, #0x3c]
	movs r0, #0x90
	lsls r0, r0, #2
	str r0, [r6, #0x40]
	lsls r1, r7, #7
	ldr r2, _08063B68 @ =0x060103E0
	adds r0, r1, r2
	str r0, [r6, #4]
	ldr r0, _08063B6C @ =0x00000307
	strh r0, [r6, #0xa]
	ldr r4, _08063B4C @ =0x03000020
	adds r0, r5, r4
	mov r2, r8
	strb r2, [r0]
	ldr r0, _08063B70 @ =gSineTable
	adds r1, r1, r0
	movs r4, #0
	ldrsh r0, [r1, r4]
	ldr r1, _08063B74 @ =0x0000028A
	bl Div
	adds r0, #0x78
	strh r0, [r6, #0x16]
	ldr r0, _08063B50 @ =0x0000FFDC
	strh r0, [r6, #0x18]
	mov r0, r8
	strh r0, [r6, #0x1a]
	strh r0, [r6, #8]
	strh r0, [r6, #0x14]
	strh r0, [r6, #0x1c]
	ldr r2, _08063B54 @ =0x03000021
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r4, _08063B58 @ =0x03000022
	adds r1, r5, r4
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08063B5C @ =0x03000025
	adds r5, r5, r0
	mov r1, r8
	strb r1, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _080639EA
	ldr r0, _08063B78 @ =sub_80640C8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08063B7C @ =sub_8065810
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	ldr r2, _08063B80 @ =0x0300004C
	adds r1, r3, r2
	movs r2, #0
	strh r2, [r1]
	adds r4, #0x2c
	adds r1, r3, r4
	movs r4, #1
	strb r4, [r1]
	mov r5, sl
	str r5, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x20]
	str r2, [r0, #0x24]
	ldr r5, _08063B84 @ =0x03000050
	adds r1, r3, r5
	strh r2, [r1]
	ldr r1, _08063B88 @ =0x03000052
	adds r3, r3, r1
	strh r2, [r3]
	strh r2, [r0]
	movs r3, #1
	strh r4, [r0, #2]
	movs r1, #2
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	movs r1, #0x80
	strh r1, [r0, #8]
	strb r3, [r0, #0xa]
	bl sub_805423C
	movs r0, #1
	bl m4aSongNumStart
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063B08: .4byte 0x0000FFFF
_08063B0C: .4byte gBackgroundsCopyQueueCursor
_08063B10: .4byte gBackgroundsCopyQueueIndex
_08063B14: .4byte sa2__gUnknown_03005390
_08063B18: .4byte gVramGraphicsCopyCursor
_08063B1C: .4byte gVramGraphicsCopyQueueIndex
_08063B20: .4byte gDispCnt
_08063B24: .4byte gBgCntRegs
_08063B28: .4byte 0x00009D86
_08063B2C: .4byte 0x00001B8B
_08063B30: .4byte 0x00009880
_08063B34: .4byte gBgScrollRegs
_08063B38: .4byte sub_8065814
_08063B3C: .4byte 0x00002120
_08063B40: .4byte 0xFFFFDC00
_08063B44: .4byte 0x06010020
_08063B48: .4byte 0x00000306
_08063B4C: .4byte 0x03000020
_08063B50: .4byte 0x0000FFDC
_08063B54: .4byte 0x03000021
_08063B58: .4byte 0x03000022
_08063B5C: .4byte 0x03000025
_08063B60: .4byte sub_8065058
_08063B64: .4byte 0x03000032
_08063B68: .4byte 0x060103E0
_08063B6C: .4byte 0x00000307
_08063B70: .4byte gSineTable
_08063B74: .4byte 0x0000028A
_08063B78: .4byte sub_80640C8
_08063B7C: .4byte sub_8065810
_08063B80: .4byte 0x0300004C
_08063B84: .4byte 0x03000050
_08063B88: .4byte 0x03000052

	thumb_func_start sub_8063B8C
sub_8063B8C: @ 0x08063B8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl UiGfxStackInit
	add r5, sp, #0x2c
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	mov r7, sp
	adds r7, #0x2b
	movs r1, #0
	strb r1, [r7]
	ldr r0, _08063C34 @ =gUnknown_086B1CB4
	str r0, [sp, #0x14]
	movs r0, #0xa8
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _08063C38 @ =gUnknown_086B1AB4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08063C3C @ =gUnknown_086B21F4
	str r0, [sp, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	mov sl, r1
	str r1, [sp, #0x1c]
	add r0, sp, #0x28
	mov sb, r0
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x29
	add r0, sp
	mov r8, r0
	movs r4, #1
	strb r4, [r0]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0x15
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r5]
	strb r4, [r7]
	ldr r0, _08063C40 @ =gUnknown_086B2BF4
	str r0, [sp, #0x14]
	movs r0, #0xf0
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08063C44 @ =gUnknown_086B29F4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08063C48 @ =gUnknown_086B49F4
	str r0, [sp, #0x10]
	mov r1, sl
	str r1, [sp, #0x1c]
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	mov r0, r8
	strb r1, [r0]
	movs r0, #0x11
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063C34: .4byte gUnknown_086B1CB4
_08063C38: .4byte gUnknown_086B1AB4
_08063C3C: .4byte gUnknown_086B21F4
_08063C40: .4byte gUnknown_086B2BF4
_08063C44: .4byte gUnknown_086B29F4
_08063C48: .4byte gUnknown_086B49F4

	thumb_func_start sub_8063C4C
sub_8063C4C: @ 0x08063C4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl UiGfxStackInit
	add r5, sp, #0x2c
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	mov r7, sp
	adds r7, #0x2b
	movs r1, #0
	strb r1, [r7]
	ldr r0, _08063CF4 @ =gUnknown_086B1CB4
	str r0, [sp, #0x14]
	movs r0, #0xa8
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _08063CF8 @ =gUnknown_086B1AD4
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x24]
	ldr r0, _08063CFC @ =gUnknown_086B21F4
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #4
	mov sl, r0
	str r0, [sp, #0x1c]
	add r1, sp, #0x28
	mov sb, r1
	movs r0, #0
	strb r0, [r1]
	movs r1, #0x29
	add r1, sp
	mov r8, r1
	movs r4, #1
	strb r4, [r1]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0x14
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	strb r4, [r7]
	ldr r0, _08063D00 @ =gUnknown_086B53F4
	str r0, [sp, #0x14]
	movs r0, #0xdc
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08063D04 @ =gUnknown_086B51F4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08063D08 @ =gUnknown_086B6F74
	str r0, [sp, #0x10]
	mov r1, sl
	str r1, [sp, #0x1c]
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	mov r0, r8
	strb r1, [r0]
	movs r0, #0x11
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063CF4: .4byte gUnknown_086B1CB4
_08063CF8: .4byte gUnknown_086B1AD4
_08063CFC: .4byte gUnknown_086B21F4
_08063D00: .4byte gUnknown_086B53F4
_08063D04: .4byte gUnknown_086B51F4
_08063D08: .4byte gUnknown_086B6F74

	thumb_func_start sub_8063D0C
sub_8063D0C: @ 0x08063D0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl UiGfxStackInit
	add r5, sp, #0x2c
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	mov r7, sp
	adds r7, #0x2b
	movs r1, #0
	strb r1, [r7]
	ldr r0, _08063DB4 @ =gUnknown_086B1CB4
	str r0, [sp, #0x14]
	movs r0, #0xa8
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _08063DB8 @ =gUnknown_086B1AF4
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x24]
	ldr r0, _08063DBC @ =gUnknown_086B21F4
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #4
	mov sl, r0
	str r0, [sp, #0x1c]
	add r1, sp, #0x28
	mov sb, r1
	movs r0, #0
	strb r0, [r1]
	movs r1, #0x29
	add r1, sp
	mov r8, r1
	movs r4, #1
	strb r4, [r1]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0x14
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	strb r4, [r7]
	ldr r0, _08063DC0 @ =gUnknown_086B7974
	str r0, [sp, #0x14]
	movs r0, #0xc4
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08063DC4 @ =gUnknown_086B7774
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08063DC8 @ =gUnknown_086B91F4
	str r0, [sp, #0x10]
	mov r1, sl
	str r1, [sp, #0x1c]
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	mov r0, r8
	strb r1, [r0]
	movs r0, #0x11
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063DB4: .4byte gUnknown_086B1CB4
_08063DB8: .4byte gUnknown_086B1AF4
_08063DBC: .4byte gUnknown_086B21F4
_08063DC0: .4byte gUnknown_086B7974
_08063DC4: .4byte gUnknown_086B7774
_08063DC8: .4byte gUnknown_086B91F4

	thumb_func_start sub_8063DCC
sub_8063DCC: @ 0x08063DCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	bl UiGfxStackInit
	add r5, sp, #0x2c
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	mov r7, sp
	adds r7, #0x2b
	movs r1, #0
	strb r1, [r7]
	ldr r0, _08063E74 @ =gUnknown_086B1CB4
	str r0, [sp, #0x14]
	movs r0, #0xa8
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, _08063E78 @ =gUnknown_086B1B14
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x24]
	ldr r0, _08063E7C @ =gUnknown_086B21F4
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #4
	mov sl, r0
	str r0, [sp, #0x1c]
	add r1, sp, #0x28
	mov sb, r1
	movs r0, #0
	strb r0, [r1]
	movs r1, #0x29
	add r1, sp
	mov r8, r1
	movs r4, #1
	strb r4, [r1]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0x14
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x80
	rsbs r0, r0, #0
	strb r0, [r5]
	strb r4, [r7]
	ldr r0, _08063E80 @ =gUnknown_086B9BF4
	str r0, [sp, #0x14]
	movs r0, #0xc2
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	ldr r0, _08063E84 @ =gUnknown_086B99F4
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08063E88 @ =gUnknown_086BB434
	str r0, [sp, #0x10]
	mov r1, sl
	str r1, [sp, #0x1c]
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	mov r0, r8
	strb r1, [r0]
	movs r0, #0x11
	strb r0, [r6]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063E74: .4byte gUnknown_086B1CB4
_08063E78: .4byte gUnknown_086B1B14
_08063E7C: .4byte gUnknown_086B21F4
_08063E80: .4byte gUnknown_086B9BF4
_08063E84: .4byte gUnknown_086B99F4
_08063E88: .4byte gUnknown_086BB434

	thumb_func_start sub_8063E8C
sub_8063E8C: @ 0x08063E8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08063F80
	movs r7, #0
	movs r0, #0
	mov r8, r0
_08063EA2:
	lsls r5, r7, #1
	ldr r1, _08063F4C @ =0x00006801
	adds r0, r1, #0
	adds r2, r5, #0
	orrs r2, r0
	mov r0, r8
	str r0, [sp]
	ldr r0, _08063F50 @ =sub_806515C
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r6, r1
	adds r5, r5, r7
	lsls r5, r5, #1
	strh r5, [r4, #0x30]
	ldr r2, _08063F54 @ =0x03000032
	adds r0, r6, r2
	strb r7, [r0]
	ldr r1, _08063F58 @ =0xFFFFDC00
	ldrh r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r1, [r4, #0x38]
	str r1, [r4, #0x3c]
	movs r0, #0x90
	lsls r0, r0, #2
	str r0, [r4, #0x40]
	lsls r2, r7, #7
	ldr r1, _08063F5C @ =0x06010BE0
	adds r0, r2, r1
	str r0, [r4, #4]
	ldr r0, _08063F60 @ =0x00000307
	strh r0, [r4, #0xa]
	ldr r0, _08063F64 @ =0x03000020
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08063F68 @ =gSineTable
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, _08063F6C @ =0x0000028A
	bl Div
	adds r0, #0x78
	strh r0, [r4, #0x16]
	ldr r0, _08063F70 @ =0x0000FFDC
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	mov r2, r8
	strh r2, [r4, #8]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0x1c]
	ldr r0, _08063F74 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _08063F78 @ =0x03000022
	adds r1, r6, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08063F7C @ =0x03000025
	adds r6, r6, r0
	mov r1, r8
	strb r1, [r6]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _08063EA2
	b _080640B2
	.align 2, 0
_08063F4C: .4byte 0x00006801
_08063F50: .4byte sub_806515C
_08063F54: .4byte 0x03000032
_08063F58: .4byte 0xFFFFDC00
_08063F5C: .4byte 0x06010BE0
_08063F60: .4byte 0x00000307
_08063F64: .4byte 0x03000020
_08063F68: .4byte gSineTable
_08063F6C: .4byte 0x0000028A
_08063F70: .4byte 0x0000FFDC
_08063F74: .4byte 0x03000021
_08063F78: .4byte 0x03000022
_08063F7C: .4byte 0x03000025
_08063F80:
	cmp r3, #1
	bne _08063FD8
	ldr r1, _08063FC8 @ =gDispCnt
	movs r2, #0x92
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	add r1, sp, #0x30
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x2f
	strb r2, [r0]
	ldr r0, _08063FCC @ =gUnknown_086A5F34
	str r0, [sp, #0x18]
	movs r0, #0xbc
	lsls r0, r0, #6
	str r0, [sp, #0x1c]
	ldr r0, _08063FD0 @ =gUnknown_086A5D34
	str r0, [sp, #0x24]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x28]
	ldr r0, _08063FD4 @ =gUnknown_086A8E34
	str r0, [sp, #0x14]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [sp, #0x20]
	add r0, sp, #0x2c
	strb r2, [r0]
	adds r0, #1
	strb r3, [r0]
	subs r1, #2
	movs r0, #0x15
	b _0806405E
	.align 2, 0
_08063FC8: .4byte gDispCnt
_08063FCC: .4byte gUnknown_086A5F34
_08063FD0: .4byte gUnknown_086A5D34
_08063FD4: .4byte gUnknown_086A8E34
_08063FD8:
	cmp r3, #2
	bne _08064020
	ldr r1, _08064014 @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	add r1, sp, #0x30
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08064018 @ =gUnknown_086A9834
	str r0, [sp, #0x18]
	movs r0, #0xa1
	lsls r0, r0, #6
	str r0, [sp, #0x1c]
	ldr r0, _0806401C @ =gUnknown_086AC074
	str r0, [sp, #0x14]
	movs r0, #0x8c
	lsls r0, r0, #4
	str r0, [sp, #0x20]
	add r0, sp, #0x2c
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	subs r1, #1
	b _0806405C
	.align 2, 0
_08064014: .4byte gDispCnt
_08064018: .4byte gUnknown_086A9834
_0806401C: .4byte gUnknown_086AC074
_08064020:
	cmp r3, #3
	bne _08064074
	ldr r1, _08064068 @ =gDispCnt
	movs r2, #0xba
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	add r1, sp, #0x30
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x2f
	strb r2, [r0]
	ldr r0, _0806406C @ =gUnknown_086AFFB4
	str r0, [sp, #0x18]
	movs r0, #0xa2
	lsls r0, r0, #5
	str r0, [sp, #0x1c]
	ldr r0, _08064070 @ =gUnknown_086B13F4
	str r0, [sp, #0x14]
	movs r0, #0xd8
	lsls r0, r0, #3
	str r0, [sp, #0x20]
	add r0, sp, #0x2c
	strb r2, [r0]
	subs r1, #3
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
_0806405C:
	movs r0, #0x11
_0806405E:
	strb r0, [r1]
	add r0, sp, #4
	bl sub_80528AC
	b _080640B2
	.align 2, 0
_08064068: .4byte gDispCnt
_0806406C: .4byte gUnknown_086AFFB4
_08064070: .4byte gUnknown_086B13F4
_08064074:
	movs r0, #0x9b
	lsls r0, r0, #1
	cmp r3, r0
	bne _080640B2
	add r1, sp, #0x30
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080640C0 @ =gUnknown_086ACB34
	str r0, [sp, #0x18]
	movs r0, #0xa1
	lsls r0, r0, #6
	str r0, [sp, #0x1c]
	ldr r0, _080640C4 @ =gUnknown_086AF4F4
	str r0, [sp, #0x14]
	movs r0, #0x8c
	lsls r0, r0, #4
	str r0, [sp, #0x20]
	add r0, sp, #0x2c
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	subs r1, #1
	movs r0, #0x11
	strb r0, [r1]
	add r0, sp, #4
	bl sub_80528AC
_080640B2:
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080640C0: .4byte gUnknown_086ACB34
_080640C4: .4byte gUnknown_086AF4F4

	thumb_func_start sub_80640C8
sub_80640C8: @ 0x080640C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08064104 @ =gCurTask
	ldr r4, [r0]
	ldrh r3, [r4, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r3, r1
	str r0, [sp]
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	adds r1, #0x4c
	adds r2, r3, r1
	ldrh r1, [r2]
	strh r1, [r0, #0x30]
	ldr r0, _08064108 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08064110
	ldr r0, _0806410C @ =sub_8064FF8
	str r0, [r4, #8]
	b _08064232
	.align 2, 0
_08064104: .4byte gCurTask
_08064108: .4byte gPressedKeys
_0806410C: .4byte sub_8064FF8
_08064110:
	movs r1, #0
	ldrsh r0, [r2, r1]
	mov sb, r2
	cmp r0, #0x97
	ble _080641AC
	subs r0, #0x98
	lsls r0, r0, #0xf
	lsrs r7, r0, #0x10
	cmp r7, #0x28
	bls _08064126
	movs r7, #0x28
_08064126:
	movs r2, #0
	mov sl, r2
	ldr r0, _08064204 @ =0x0300004C
	adds r0, r0, r3
	mov sb, r0
_08064130:
	ldr r0, _08064208 @ =gUnknown_086A5D34
	mov r1, sl
	lsls r1, r1, #1
	mov r8, r1
	add r0, r8
	ldrh r6, [r0]
	movs r1, #0x1f
	ands r1, r6
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r0, r2, #0
	adds r4, r6, #0
	ands r4, r0
	lsrs r4, r4, #5
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r3, #0
	ands r6, r0
	lsrs r6, r6, #0xa
	adds r0, r1, #0
	muls r0, r7, r0
	movs r1, #0x28
	bl Div
	adds r5, r0, #0
	movs r0, #0x1f
	ands r5, r0
	adds r0, r4, #0
	muls r0, r7, r0
	movs r1, #0x28
	bl Div
	adds r4, r0, #0
	movs r1, #0x1f
	ands r4, r1
	adds r0, r6, #0
	muls r0, r7, r0
	movs r1, #0x28
	bl Div
	movs r2, #0x1f
	ands r0, r2
	ldr r1, _0806420C @ =gBgPalette
	add r8, r1
	lsls r4, r4, #5
	orrs r5, r4
	lsls r0, r0, #0xa
	orrs r5, r0
	mov r3, r8
	strh r5, [r3]
	ldr r2, _08064210 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0x1f
	bls _08064130
_080641AC:
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r2, _08064214 @ =gBgScrollRegs
	cmp r0, #0xb5
	ble _080641DA
	ldrh r0, [r2, #2]
	adds r0, #2
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x64
	ble _080641CA
	movs r0, #0x64
	strh r0, [r2, #2]
_080641CA:
	ldrh r1, [r2, #2]
	movs r3, #2
	ldrsh r0, [r2, r3]
	cmp r0, #0x50
	ble _080641DA
	adds r0, r1, #0
	subs r0, #0x50
	strh r0, [r2, #0xa]
_080641DA:
	ldrh r0, [r2, #6]
	adds r0, #0xa
	strh r0, [r2, #6]
	mov r1, sb
	ldrh r0, [r1]
	bl sub_8063E8C
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, _08064218 @ =0x0000013F
	cmp r1, r0
	ble _08064224
	movs r0, #0
	strh r0, [r2]
	ldr r0, _0806421C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064220 @ =sub_8064244
	str r0, [r1, #8]
	b _0806422A
	.align 2, 0
_08064204: .4byte 0x0300004C
_08064208: .4byte gUnknown_086A5D34
_0806420C: .4byte gBgPalette
_08064210: .4byte gFlags
_08064214: .4byte gBgScrollRegs
_08064218: .4byte 0x0000013F
_0806421C: .4byte gCurTask
_08064220: .4byte sub_8064244
_08064224:
	ldr r0, [sp]
	bl sub_805423C
_0806422A:
	mov r1, sb
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08064232:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8064244
sub_8064244: @ 0x08064244
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08064280 @ =gCurTask
	ldr r1, [r0]
	ldrh r0, [r1, #6]
	mov sb, r0
	movs r2, #0xc0
	lsls r2, r2, #0x12
	mov sl, r2
	mov r6, sb
	add r6, sl
	ldr r3, _08064284 @ =0x0300004C
	add r3, sb
	mov r8, r3
	movs r7, #0
	ldrsh r4, [r3, r7]
	ldr r0, _08064288 @ =gPressedKeys
	ldrh r0, [r0]
	movs r5, #0xb
	ands r5, r0
	cmp r5, #0
	beq _08064290
	ldr r0, _0806428C @ =sub_8064FF8
	str r0, [r1, #8]
	b _080645D2
	.align 2, 0
_08064280: .4byte gCurTask
_08064284: .4byte 0x0300004C
_08064288: .4byte gPressedKeys
_0806428C: .4byte sub_8064FF8
_08064290:
	cmp r4, #0x5f
	bhi _080642A6
	movs r0, #0xd0
	lsls r0, r0, #7
	lsrs r1, r4, #2
	ldr r2, _08064360 @ =0x00006802
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl TasksDestroyInPriorityRange
_080642A6:
	cmp r4, #0x3c
	bne _080642C2
	strh r5, [r6]
	movs r1, #1
	movs r0, #1
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	strh r5, [r6, #6]
	movs r0, #0x40
	strh r0, [r6, #8]
	strb r1, [r6, #0xa]
	adds r0, r6, #0
	bl sub_80543A4
_080642C2:
	ldr r7, _08064364 @ =gBgScrollRegs
	ldrh r0, [r7, #6]
	adds r0, #0xa
	strh r0, [r7, #6]
	mov r3, r8
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _08064368 @ =0x000001F9
	cmp r1, r0
	bgt _080642DE
	b _080644C0
_080642DE:
	ldr r0, [r6, #0xc]
	bl TaskDestroy
	str r5, [r6, #0xc]
	strh r5, [r7, #4]
	strh r5, [r7, #6]
	ldr r1, _0806436C @ =0x03000050
	add r1, sb
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1]
	ldr r0, _08064370 @ =0x03000052
	add r0, sb
	strh r5, [r0]
	mov r7, r8
	strh r5, [r7]
	ldr r0, [r6, #0x10]
	bl TaskDestroy
	str r5, [r6, #0x10]
	ldr r0, [r6, #0x14]
	bl TaskDestroy
	str r5, [r6, #0x14]
	ldr r1, _08064374 @ =gDispCnt
	ldr r0, _08064378 @ =gBldRegs
	strh r5, [r0]
	strh r5, [r0, #4]
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0806437C @ =gBgCntRegs
	ldr r0, _08064380 @ =0x00001D86
	strh r0, [r1]
	ldr r0, _08064384 @ =0x00001883
	strh r0, [r1, #2]
	ldr r0, _08064388 @ =sub_8065258
	ldr r2, _0806438C @ =0x00002210
	str r5, [sp]
	movs r1, #0xc8
	movs r3, #0
	bl TaskCreate
	str r0, [r6, #0x18]
	ldrh r0, [r0, #6]
	mov r3, sl
	adds r7, r0, r3
	ldr r1, _08064390 @ =0x030000B4
	adds r0, r0, r1
	strh r5, [r0]
	movs r4, #0
	movs r6, #0
	movs r5, #0
	ldr r2, _08064394 @ =0x00000301
	mov r8, r2
_0806434E:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r3, r7, r0
	cmp r4, #0
	beq _0806439C
	ldr r0, _08064398 @ =0x06014000
	b _0806439E
	.align 2, 0
_08064360: .4byte 0x00006802
_08064364: .4byte gBgScrollRegs
_08064368: .4byte 0x000001F9
_0806436C: .4byte 0x03000050
_08064370: .4byte 0x03000052
_08064374: .4byte gDispCnt
_08064378: .4byte gBldRegs
_0806437C: .4byte gBgCntRegs
_08064380: .4byte 0x00001D86
_08064384: .4byte 0x00001883
_08064388: .4byte sub_8065258
_0806438C: .4byte 0x00002210
_08064390: .4byte 0x030000B4
_08064394: .4byte 0x00000301
_08064398: .4byte 0x06014000
_0806439C:
	ldr r0, _08064494 @ =0x06011440
_0806439E:
	str r0, [r3, #4]
	mov r0, r8
	strh r0, [r3, #0xa]
	adds r0, r3, #0
	adds r0, #0x20
	strb r6, [r0]
	movs r0, #0xb4
	strh r0, [r3, #0x16]
	movs r0, #0x82
	strh r0, [r3, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r3, #0x1a]
	strh r5, [r3, #8]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0x1c]
	adds r1, r3, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x25
	strb r6, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	movs r0, #0x80
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0806434E
	movs r4, #0
	movs r5, #0
	movs r1, #0x8c
	lsls r1, r1, #1
	mov sb, r1
	ldr r6, _08064498 @ =gUnknown_0868B28C
	adds r2, r6, #4
	mov r8, r2
_080643FC:
	str r5, [sp]
	ldr r0, _0806449C @ =sub_806562C
	movs r1, #0x44
	ldr r2, _080644A0 @ =0x00006820
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r3, r2, r7
	strh r5, [r3, #0x30]
	ldr r1, _080644A4 @ =0x03000032
	adds r0, r2, r1
	strb r5, [r0]
	str r4, [r3, #0x34]
	ldr r0, _080644A8 @ =gUnknown_0868B27C
	movs r7, #0
	ldrsh r0, [r0, r7]
	add r0, sb
	str r0, [r3, #0x3c]
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #8
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r3, #4]
	adds r0, r1, r6
	ldr r0, [r0]
	strh r0, [r3, #0xa]
	add r1, r8
	ldr r1, [r1]
	ldr r7, _080644AC @ =0x03000020
	adds r0, r2, r7
	strb r1, [r0]
	mov r0, sb
	strh r0, [r3, #0x16]
	movs r0, #0x46
	strh r0, [r3, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r3, #0x1a]
	strh r5, [r3, #8]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0x1c]
	adds r7, #1
	adds r1, r2, r7
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080644B0 @ =0x03000022
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080644B4 @ =0x03000025
	adds r2, r2, r1
	strb r5, [r2]
	subs r0, #0x11
	str r0, [r3, #0x28]
	movs r0, #0x80
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _080643FC
	ldr r0, _080644B8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080644BC @ =sub_80645E4
	str r0, [r1, #8]
	b _080645D2
	.align 2, 0
_08064494: .4byte 0x06011440
_08064498: .4byte gUnknown_0868B28C
_0806449C: .4byte sub_806562C
_080644A0: .4byte 0x00006820
_080644A4: .4byte 0x03000032
_080644A8: .4byte gUnknown_0868B27C
_080644AC: .4byte 0x03000020
_080644B0: .4byte 0x03000022
_080644B4: .4byte 0x03000025
_080644B8: .4byte gCurTask
_080644BC: .4byte sub_80645E4
_080644C0:
	cmp r1, #0xe0
	bgt _080644C6
	b _080645C4
_080644C6:
	cmp r1, #0xe1
	bne _0806454C
	bl CreateSpotlightBeamTask
	str r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	mov r2, sl
	adds r7, r0, r2
	movs r3, #0x78
	mov sb, r3
	mov r0, sb
	strh r0, [r7, #6]
	movs r1, #0xfa
	mov r8, r1
	mov r2, r8
	strh r2, [r7, #8]
	strh r5, [r7]
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	movs r0, #2
	strb r0, [r7, #0xa]
	movs r4, #6
	strb r4, [r7, #0xb]
	bl CreateSpotlightBeamTask
	str r0, [r6, #0x14]
	ldrh r0, [r0, #6]
	mov r3, sl
	adds r7, r0, r3
	mov r0, sb
	strh r0, [r7, #6]
	mov r1, r8
	strh r1, [r7, #8]
	strh r5, [r7]
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	movs r0, #3
	strb r0, [r7, #0xa]
	strb r4, [r7, #0xb]
	ldr r2, _08064538 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0806453C @ =gWinRegs
	ldr r0, _08064540 @ =0x00001F1F
	strh r0, [r1, #8]
	movs r0, #0x3f
	strh r0, [r1, #0xa]
	ldr r1, _08064544 @ =gBldRegs
	ldr r0, _08064548 @ =0x00003FDF
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #4]
	b _080645D2
	.align 2, 0
_08064538: .4byte gDispCnt
_0806453C: .4byte gWinRegs
_08064540: .4byte 0x00001F1F
_08064544: .4byte gBldRegs
_08064548: .4byte 0x00003FDF
_0806454C:
	mov r7, r8
	movs r1, #0
	ldrsh r0, [r7, r1]
	adds r4, r0, #0
	subs r4, #0xe1
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	mov r2, sl
	adds r7, r0, r2
	adds r0, r4, #0
	movs r1, #0x19
	bl Mod
	movs r1, #0x18
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	strh r0, [r7]
	cmp r4, #0x3f
	bhi _08064588
	adds r0, r4, #0
	movs r1, #6
	bl Mod
	cmp r0, #0
	bne _08064588
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
_08064588:
	ldr r0, [r6, #0x14]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, r4, #0
	movs r1, #0x19
	bl Mod
	movs r1, #0x18
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r3, #0xdc
	lsls r3, r3, #2
	adds r0, r0, r3
	strh r0, [r7]
	cmp r4, #0x3f
	bhi _080645D2
	adds r0, r4, #0
	movs r1, #6
	bl Mod
	cmp r0, #0
	bne _080645D2
	ldrb r0, [r7, #0xb]
	adds r0, #1
	strb r0, [r7, #0xb]
	b _080645D2
_080645C4:
	adds r0, r4, #0
	subs r0, #0x1e
	cmp r0, #0x59
	bhi _080645D2
	adds r0, r6, #0
	bl sub_805423C
_080645D2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80645E4
sub_80645E4: @ 0x080645E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08064640 @ =gCurTask
	ldr r7, [r0]
	ldrh r1, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	ldr r2, _08064644 @ =0x0300004C
	adds r6, r1, r2
	ldrh r2, [r6]
	ldr r3, _08064648 @ =0x030000B4
	adds r0, r0, r3
	strh r2, [r0]
	ldr r0, _0806464C @ =0x03000050
	adds r2, r1, r0
	ldrh r0, [r2]
	subs r0, #0x20
	strh r0, [r2]
	subs r3, #0x62
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	ldr r3, _08064650 @ =gBgScrollRegs
	ldrh r0, [r2]
	lsrs r0, r0, #8
	strh r0, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strh r0, [r3, #2]
	ldr r0, _08064654 @ =gPressedKeys
	ldrh r0, [r0]
	movs r5, #0xb
	ands r5, r0
	cmp r5, #0
	beq _0806465C
	ldr r0, _08064658 @ =sub_8064FF8
	str r0, [r7, #8]
	b _080648C4
	.align 2, 0
_08064640: .4byte gCurTask
_08064644: .4byte 0x0300004C
_08064648: .4byte 0x030000B4
_0806464C: .4byte 0x03000050
_08064650: .4byte gBgScrollRegs
_08064654: .4byte gPressedKeys
_08064658: .4byte sub_8064FF8
_0806465C:
	movs r0, #0
	ldrsh r1, [r6, r0]
	cmp r1, #0x1d
	bhi _08064680
	cmp r1, #1
	bne _0806466C
	bl sub_8063B8C
_0806466C:
	strh r5, [r4]
	movs r0, #1
	movs r1, #1
	strh r1, [r4, #2]
	movs r1, #2
	strh r1, [r4, #4]
	strh r5, [r4, #6]
	strh r5, [r4, #8]
	strb r0, [r4, #0xa]
	b _08064698
_08064680:
	cmp r1, #0x29
	bhi _080646A0
	strh r5, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #8
	strh r0, [r4, #4]
	strh r5, [r4, #6]
	adds r0, #0xf8
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
_08064698:
	adds r0, r4, #0
	bl sub_80543A4
	b _080646BC
_080646A0:
	cmp r1, #0x65
	bls _080646A8
	cmp r1, #0xf1
	bhi _080646B0
_080646A8:
	adds r0, r4, #0
	bl sub_805423C
	b _080646BC
_080646B0:
	ldr r0, _08064748 @ =0x00000169
	cmp r1, r0
	bhi _080646BC
	adds r0, r4, #0
	bl sub_805423C
_080646BC:
	adds r5, r4, #0
	adds r5, #0x4c
	ldrh r0, [r5]
	adds r0, #1
	movs r6, #0
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0806474C @ =0x0000019D
	cmp r1, r0
	bgt _080646D4
	b _080648A4
_080646D4:
	ldr r0, _08064750 @ =0x00006820
	ldr r1, _08064754 @ =0x00006821
	bl TasksDestroyInPriorityRange
	ldr r0, [r4, #0x18]
	bl TaskDestroy
	str r6, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xe0
	lsls r0, r0, #8
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc0
	lsls r0, r0, #7
	strh r0, [r1]
	strh r6, [r5]
	strh r6, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	strb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_80543A4
	ldr r0, _08064758 @ =sub_8065328
	movs r2, #0x8a
	lsls r2, r2, #6
	str r6, [sp]
	movs r1, #0xc8
	movs r3, #0
	bl TaskCreate
	str r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r1, #0xb4
	adds r0, r0, r1
	strh r6, [r0]
	movs r5, #0
	movs r2, #0
	mov r8, r2
_08064736:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r7, r0
	cmp r5, #2
	bne _08064760
	ldr r0, _0806475C @ =0x06013280
	b _0806476E
	.align 2, 0
_08064748: .4byte 0x00000169
_0806474C: .4byte 0x0000019D
_08064750: .4byte 0x00006820
_08064754: .4byte 0x00006821
_08064758: .4byte sub_8065328
_0806475C: .4byte 0x06013280
_08064760:
	cmp r5, #1
	bne _0806476C
	ldr r0, _08064768 @ =0x06011980
	b _0806476E
	.align 2, 0
_08064768: .4byte 0x06011980
_0806476C:
	ldr r0, _08064874 @ =0x06010400
_0806476E:
	str r0, [r4, #4]
	ldr r0, _08064878 @ =0x00000301
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x30
	strh r0, [r4, #0x16]
	movs r0, #0x6c
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	mov r3, r8
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	str r0, [r4, #0x10]
	cmp r5, #0
	bne _080647BE
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080647BE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08064736
	movs r5, #0
	movs r6, #0
	movs r0, #0x8c
	lsls r0, r0, #1
	mov r8, r0
	ldr r7, _0806487C @ =gUnknown_0868B2D4
	adds r1, r7, #4
	mov sb, r1
_080647D8:
	str r6, [sp]
	ldr r0, _08064880 @ =sub_80656A4
	movs r1, #0x44
	ldr r2, _08064884 @ =0x00006820
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r4, r2, r3
	strh r6, [r4, #0x30]
	ldr r1, _08064888 @ =0x03000032
	adds r0, r2, r1
	strb r6, [r0]
	str r5, [r4, #0x34]
	ldr r0, _0806488C @ =gUnknown_0868B280
	movs r3, #0
	ldrsh r0, [r0, r3]
	add r0, r8
	str r0, [r4, #0x3c]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r4, #4]
	adds r0, r1, r7
	ldr r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldr r1, [r1]
	ldr r3, _08064890 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	mov r0, r8
	strh r0, [r4, #0x16]
	movs r0, #0x46
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08064894 @ =0x03000022
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08064898 @ =0x03000025
	adds r2, r2, r1
	strb r6, [r2]
	subs r0, #0x11
	str r0, [r4, #0x28]
	movs r0, #0x80
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _080647D8
	ldr r0, _0806489C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080648A0 @ =sub_80648D4
	str r0, [r1, #8]
	b _080648C4
	.align 2, 0
_08064874: .4byte 0x06010400
_08064878: .4byte 0x00000301
_0806487C: .4byte gUnknown_0868B2D4
_08064880: .4byte sub_80656A4
_08064884: .4byte 0x00006820
_08064888: .4byte 0x03000032
_0806488C: .4byte gUnknown_0868B280
_08064890: .4byte 0x03000020
_08064894: .4byte 0x03000022
_08064898: .4byte 0x03000025
_0806489C: .4byte gCurTask
_080648A0: .4byte sub_80648D4
_080648A4:
	movs r0, #0xb0
	lsls r0, r0, #1
	cmp r1, r0
	ble _080648C4
	adds r0, #1
	cmp r1, r0
	bne _080648BE
	movs r0, #4
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #8]
_080648BE:
	adds r0, r4, #0
	bl sub_805423C
_080648C4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80648D4
sub_80648D4: @ 0x080648D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08064930 @ =gCurTask
	ldr r6, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	ldr r2, _08064934 @ =0x0300004C
	adds r5, r1, r2
	ldrh r2, [r5]
	ldr r3, _08064938 @ =0x030000B4
	adds r0, r0, r3
	strh r2, [r0]
	ldr r0, _0806493C @ =0x03000050
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #0x20
	strh r0, [r2]
	subs r3, #0x62
	adds r1, r1, r3
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	ldr r3, _08064940 @ =gBgScrollRegs
	ldrh r0, [r2]
	lsrs r0, r0, #8
	strh r0, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strh r0, [r3, #2]
	ldr r0, _08064944 @ =gPressedKeys
	ldrh r0, [r0]
	movs r2, #0xb
	ands r2, r0
	cmp r2, #0
	beq _0806494C
	ldr r0, _08064948 @ =sub_8064FF8
	str r0, [r6, #8]
	b _08064BA4
	.align 2, 0
_08064930: .4byte gCurTask
_08064934: .4byte 0x0300004C
_08064938: .4byte 0x030000B4
_0806493C: .4byte 0x03000050
_08064940: .4byte gBgScrollRegs
_08064944: .4byte gPressedKeys
_08064948: .4byte sub_8064FF8
_0806494C:
	movs r0, #0
	ldrsh r1, [r5, r0]
	cmp r1, #0x1d
	bhi _0806495E
	cmp r1, #1
	bne _08064976
	bl sub_8063C4C
	b _08064976
_0806495E:
	cmp r1, #0x29
	bhi _0806497E
	strh r2, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #8
	strh r0, [r4, #4]
	strh r2, [r4, #6]
	adds r0, #0xf8
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
_08064976:
	adds r0, r4, #0
	bl sub_80543A4
	b _0806499A
_0806497E:
	cmp r1, #0x65
	bls _08064986
	cmp r1, #0xf1
	bhi _0806498E
_08064986:
	adds r0, r4, #0
	bl sub_805423C
	b _0806499A
_0806498E:
	ldr r0, _08064A24 @ =0x00000169
	cmp r1, r0
	bhi _0806499A
	adds r0, r4, #0
	bl sub_805423C
_0806499A:
	adds r5, r4, #0
	adds r5, #0x4c
	ldrh r0, [r5]
	adds r0, #1
	movs r6, #0
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _08064A28 @ =0x0000019D
	cmp r1, r0
	bgt _080649B2
	b _08064B84
_080649B2:
	ldr r0, _08064A2C @ =0x00006820
	ldr r1, _08064A30 @ =0x00006821
	bl TasksDestroyInPriorityRange
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xe0
	lsls r0, r0, #8
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, [r4, #0x1c]
	bl TaskDestroy
	str r6, [r4, #0x1c]
	strh r6, [r5]
	strh r6, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	strb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_80543A4
	ldr r0, _08064A34 @ =sub_8065444
	ldr r2, _08064A38 @ =0x00002230
	str r6, [sp]
	movs r1, #0xc8
	movs r3, #0
	bl TaskCreate
	str r0, [r4, #0x20]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r1, #0xb4
	adds r0, r0, r1
	strh r6, [r0]
	movs r5, #0
	movs r2, #0
	mov r8, r2
_08064A12:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r7, r0
	cmp r5, #2
	bne _08064A40
	ldr r0, _08064A3C @ =0x06013280
	b _08064A4E
	.align 2, 0
_08064A24: .4byte 0x00000169
_08064A28: .4byte 0x0000019D
_08064A2C: .4byte 0x00006820
_08064A30: .4byte 0x00006821
_08064A34: .4byte sub_8065444
_08064A38: .4byte 0x00002230
_08064A3C: .4byte 0x06013280
_08064A40:
	cmp r5, #1
	bne _08064A4C
	ldr r0, _08064A48 @ =0x06011980
	b _08064A4E
	.align 2, 0
_08064A48: .4byte 0x06011980
_08064A4C:
	ldr r0, _08064B50 @ =0x06010080
_08064A4E:
	str r0, [r4, #4]
	ldr r0, _08064B54 @ =0x00000301
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x30
	strh r0, [r4, #0x16]
	movs r0, #0x82
	strh r0, [r4, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	mov r3, r8
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	str r0, [r4, #0x10]
	cmp r5, #0
	bne _08064A9E
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08064A9E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08064A12
	movs r5, #0
	movs r6, #0
	movs r0, #0x8c
	lsls r0, r0, #1
	mov r8, r0
	ldr r7, _08064B58 @ =gUnknown_0868B31C
	adds r1, r7, #4
	mov sb, r1
_08064AB8:
	str r6, [sp]
	ldr r0, _08064B5C @ =sub_806571C
	movs r1, #0x44
	ldr r2, _08064B60 @ =0x00006820
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r4, r2, r3
	strh r6, [r4, #0x30]
	ldr r1, _08064B64 @ =0x03000032
	adds r0, r2, r1
	strb r6, [r0]
	str r5, [r4, #0x34]
	ldr r0, _08064B68 @ =gUnknown_0868B284
	movs r3, #0
	ldrsh r0, [r0, r3]
	add r0, r8
	str r0, [r4, #0x3c]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r4, #4]
	adds r0, r1, r7
	ldr r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldr r1, [r1]
	ldr r3, _08064B6C @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	mov r0, r8
	strh r0, [r4, #0x16]
	movs r0, #0x46
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08064B70 @ =0x03000022
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08064B74 @ =0x03000025
	adds r2, r2, r1
	strb r6, [r2]
	subs r0, #0x11
	str r0, [r4, #0x28]
	ldr r0, _08064B78 @ =0x00040080
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08064AB8
	ldr r0, _08064B7C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064B80 @ =sub_8064BB4
	str r0, [r1, #8]
	b _08064BA4
	.align 2, 0
_08064B50: .4byte 0x06010080
_08064B54: .4byte 0x00000301
_08064B58: .4byte gUnknown_0868B31C
_08064B5C: .4byte sub_806571C
_08064B60: .4byte 0x00006820
_08064B64: .4byte 0x03000032
_08064B68: .4byte gUnknown_0868B284
_08064B6C: .4byte 0x03000020
_08064B70: .4byte 0x03000022
_08064B74: .4byte 0x03000025
_08064B78: .4byte 0x00040080
_08064B7C: .4byte gCurTask
_08064B80: .4byte sub_8064BB4
_08064B84:
	movs r0, #0xb0
	lsls r0, r0, #1
	cmp r1, r0
	ble _08064BA4
	adds r0, #1
	cmp r1, r0
	bne _08064B9E
	movs r0, #4
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #8]
_08064B9E:
	adds r0, r4, #0
	bl sub_805423C
_08064BA4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8064BB4
sub_8064BB4: @ 0x08064BB4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08064C08 @ =gCurTask
	ldr r6, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x20]
	ldrh r0, [r0, #6]
	ldr r2, _08064C0C @ =0x0300004C
	adds r5, r1, r2
	ldrh r2, [r5]
	ldr r3, _08064C10 @ =0x030000B4
	adds r0, r0, r3
	strh r2, [r0]
	ldr r0, _08064C14 @ =0x03000050
	adds r2, r1, r0
	subs r3, #0x62
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	ldr r3, _08064C18 @ =gBgScrollRegs
	ldrh r0, [r2]
	lsrs r0, r0, #8
	strh r0, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strh r0, [r3, #2]
	ldr r0, _08064C1C @ =gPressedKeys
	ldrh r0, [r0]
	movs r2, #0xb
	ands r2, r0
	cmp r2, #0
	beq _08064C24
	ldr r0, _08064C20 @ =sub_8064FF8
	str r0, [r6, #8]
	b _08064E74
	.align 2, 0
_08064C08: .4byte gCurTask
_08064C0C: .4byte 0x0300004C
_08064C10: .4byte 0x030000B4
_08064C14: .4byte 0x03000050
_08064C18: .4byte gBgScrollRegs
_08064C1C: .4byte gPressedKeys
_08064C20: .4byte sub_8064FF8
_08064C24:
	movs r0, #0
	ldrsh r1, [r5, r0]
	cmp r1, #0x1d
	bhi _08064C36
	cmp r1, #1
	bne _08064C4E
	bl sub_8063D0C
	b _08064C4E
_08064C36:
	cmp r1, #0x29
	bhi _08064C56
	strh r2, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #8
	strh r0, [r4, #4]
	strh r2, [r4, #6]
	adds r0, #0xf8
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
_08064C4E:
	adds r0, r4, #0
	bl sub_80543A4
	b _08064C72
_08064C56:
	cmp r1, #0x65
	bls _08064C5E
	cmp r1, #0xf1
	bhi _08064C66
_08064C5E:
	adds r0, r4, #0
	bl sub_805423C
	b _08064C72
_08064C66:
	ldr r0, _08064D00 @ =0x00000169
	cmp r1, r0
	bhi _08064C72
	adds r0, r4, #0
	bl sub_805423C
_08064C72:
	adds r5, r4, #0
	adds r5, #0x4c
	ldrh r0, [r5]
	adds r0, #1
	movs r6, #0
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _08064D04 @ =0x0000019D
	cmp r1, r0
	bgt _08064C8A
	b _08064E54
_08064C8A:
	ldr r0, _08064D08 @ =0x00006820
	ldr r1, _08064D0C @ =0x00006821
	bl TasksDestroyInPriorityRange
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #6
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xa0
	lsls r0, r0, #7
	strh r0, [r1]
	ldr r0, [r4, #0x20]
	bl TaskDestroy
	str r6, [r4, #0x20]
	strh r6, [r5]
	strh r6, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	strb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_80543A4
	ldr r0, _08064D10 @ =sub_8065538
	ldr r2, _08064D14 @ =0x00002230
	str r6, [sp]
	movs r1, #0xc8
	movs r3, #0
	bl TaskCreate
	str r0, [r4, #0x24]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r1, #0xb4
	adds r0, r0, r1
	strh r6, [r0]
	movs r5, #0
	movs r2, #0
	mov sb, r2
	ldr r3, _08064D18 @ =0x00000301
	mov r8, r3
_08064CEE:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r7, r0
	cmp r5, #0
	beq _08064D20
	ldr r0, _08064D1C @ =0x06016400
	b _08064D22
	.align 2, 0
_08064D00: .4byte 0x00000169
_08064D04: .4byte 0x0000019D
_08064D08: .4byte 0x00006820
_08064D0C: .4byte 0x00006821
_08064D10: .4byte sub_8065538
_08064D14: .4byte 0x00002230
_08064D18: .4byte 0x00000301
_08064D1C: .4byte 0x06016400
_08064D20:
	ldr r0, _08064E24 @ =0x06011440
_08064D22:
	str r0, [r4, #4]
	mov r0, r8
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	movs r0, #0xb4
	strh r0, [r4, #0x16]
	movs r0, #0x6c
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	mov r1, sb
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r5, #0
	bne _08064D72
	adds r0, r4, #0
	bl DisplaySprite
_08064D72:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08064CEE
	movs r5, #0
	movs r6, #0
	movs r2, #0x8c
	lsls r2, r2, #1
	mov r8, r2
	ldr r7, _08064E28 @ =gUnknown_0868B388
	adds r3, r7, #4
	mov sb, r3
_08064D8C:
	str r6, [sp]
	ldr r0, _08064E2C @ =sub_8065794
	movs r1, #0x44
	ldr r2, _08064E30 @ =0x00006820
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	strh r6, [r4, #0x30]
	ldr r1, _08064E34 @ =0x03000032
	adds r0, r2, r1
	strb r6, [r0]
	str r5, [r4, #0x34]
	ldr r0, _08064E38 @ =gUnknown_0868B288
	movs r3, #0
	ldrsh r0, [r0, r3]
	add r0, r8
	str r0, [r4, #0x3c]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r4, #4]
	adds r0, r1, r7
	ldr r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldr r1, [r1]
	ldr r3, _08064E3C @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	mov r0, r8
	strh r0, [r4, #0x16]
	movs r0, #0x46
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08064E40 @ =0x03000022
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08064E44 @ =0x03000025
	adds r2, r2, r1
	strb r6, [r2]
	subs r0, #0x11
	str r0, [r4, #0x28]
	ldr r0, _08064E48 @ =0x00040080
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08064D8C
	ldr r0, _08064E4C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064E50 @ =sub_8064E84
	str r0, [r1, #8]
	b _08064E74
	.align 2, 0
_08064E24: .4byte 0x06011440
_08064E28: .4byte gUnknown_0868B388
_08064E2C: .4byte sub_8065794
_08064E30: .4byte 0x00006820
_08064E34: .4byte 0x03000032
_08064E38: .4byte gUnknown_0868B288
_08064E3C: .4byte 0x03000020
_08064E40: .4byte 0x03000022
_08064E44: .4byte 0x03000025
_08064E48: .4byte 0x00040080
_08064E4C: .4byte gCurTask
_08064E50: .4byte sub_8064E84
_08064E54:
	movs r0, #0xb0
	lsls r0, r0, #1
	cmp r1, r0
	ble _08064E74
	adds r0, #1
	cmp r1, r0
	bne _08064E6E
	movs r0, #4
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #8]
_08064E6E:
	adds r0, r4, #0
	bl sub_805423C
_08064E74:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8064E84
sub_8064E84: @ 0x08064E84
	push {r4, r5, r6, lr}
	ldr r0, _08064ED8 @ =gCurTask
	ldr r6, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x24]
	ldrh r0, [r0, #6]
	ldr r2, _08064EDC @ =0x0300004C
	adds r5, r1, r2
	ldrh r2, [r5]
	ldr r3, _08064EE0 @ =0x030000B4
	adds r0, r0, r3
	strh r2, [r0]
	ldr r0, _08064EE4 @ =0x03000050
	adds r2, r1, r0
	ldrh r0, [r2]
	subs r0, #0x20
	strh r0, [r2]
	subs r3, #0x62
	adds r1, r1, r3
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	ldr r3, _08064EE8 @ =gBgScrollRegs
	ldrh r0, [r2]
	lsrs r0, r0, #8
	strh r0, [r3]
	ldrh r0, [r1]
	lsrs r0, r0, #8
	strh r0, [r3, #2]
	ldr r0, _08064EEC @ =gPressedKeys
	ldrh r0, [r0]
	movs r2, #0xb
	ands r2, r0
	cmp r2, #0
	beq _08064EF4
	ldr r0, _08064EF0 @ =sub_8064FF8
	str r0, [r6, #8]
	b _08064F9A
	.align 2, 0
_08064ED8: .4byte gCurTask
_08064EDC: .4byte 0x0300004C
_08064EE0: .4byte 0x030000B4
_08064EE4: .4byte 0x03000050
_08064EE8: .4byte gBgScrollRegs
_08064EEC: .4byte gPressedKeys
_08064EF0: .4byte sub_8064FF8
_08064EF4:
	movs r0, #0
	ldrsh r1, [r5, r0]
	cmp r1, #0x1d
	bhi _08064F06
	cmp r1, #1
	bne _08064F1E
	bl sub_8063DCC
	b _08064F1E
_08064F06:
	cmp r1, #0x29
	bhi _08064F26
	strh r2, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #8
	strh r0, [r4, #4]
	strh r2, [r4, #6]
	adds r0, #0xf8
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
_08064F1E:
	adds r0, r4, #0
	bl sub_80543A4
	b _08064F42
_08064F26:
	cmp r1, #0x65
	bls _08064F2E
	cmp r1, #0xf1
	bhi _08064F36
_08064F2E:
	adds r0, r4, #0
	bl sub_805423C
	b _08064F42
_08064F36:
	ldr r0, _08064F68 @ =0x00000169
	cmp r1, r0
	bhi _08064F42
	adds r0, r4, #0
	bl sub_805423C
_08064F42:
	adds r0, r4, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _08064F6C @ =0x0000019D
	cmp r1, r0
	ble _08064F78
	ldr r0, _08064F70 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064F74 @ =sub_8064FA0
	str r0, [r1, #8]
	adds r0, r4, #0
	bl sub_805423C
	b _08064F9A
	.align 2, 0
_08064F68: .4byte 0x00000169
_08064F6C: .4byte 0x0000019D
_08064F70: .4byte gCurTask
_08064F74: .4byte sub_8064FA0
_08064F78:
	movs r0, #0xb0
	lsls r0, r0, #1
	cmp r1, r0
	ble _08064F9A
	adds r0, #1
	cmp r1, r0
	bne _08064F94
	movs r0, #4
	strh r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #8]
_08064F94:
	adds r0, r4, #0
	bl sub_805423C
_08064F9A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8064FA0
sub_8064FA0: @ 0x08064FA0
	push {lr}
	ldr r1, _08064FDC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08064FE0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08064FE4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08064FE8 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08064FEC @ =gVramGraphicsCopyCursor
	ldr r0, _08064FF0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08064FF4 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	bl CreateTitleScreen
	pop {r0}
	bx r0
	.align 2, 0
_08064FDC: .4byte 0x0000FFFF
_08064FE0: .4byte gBackgroundsCopyQueueCursor
_08064FE4: .4byte gBackgroundsCopyQueueIndex
_08064FE8: .4byte sa2__gUnknown_03005390
_08064FEC: .4byte gVramGraphicsCopyCursor
_08064FF0: .4byte gVramGraphicsCopyQueueIndex
_08064FF4: .4byte gBgScrollRegs

	thumb_func_start sub_8064FF8
sub_8064FF8: @ 0x08064FF8
	push {lr}
	ldr r1, _0806503C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08065040 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08065044 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08065048 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0806504C @ =gVramGraphicsCopyCursor
	ldr r0, _08065050 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #1
	bl m4aSongNumStop
	ldr r1, _08065054 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	movs r0, #1
	bl CreateTitleScreen
	pop {r0}
	bx r0
	.align 2, 0
_0806503C: .4byte 0x0000FFFF
_08065040: .4byte gBackgroundsCopyQueueCursor
_08065044: .4byte gBackgroundsCopyQueueIndex
_08065048: .4byte sa2__gUnknown_03005390
_0806504C: .4byte gVramGraphicsCopyCursor
_08065050: .4byte gVramGraphicsCopyQueueIndex
_08065054: .4byte gBgScrollRegs

	thumb_func_start sub_8065058
sub_8065058: @ 0x08065058
	push {r4, r5, r6, r7, lr}
	ldr r0, _08065130 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r5, r6, #0
	ldrh r0, [r6, #0x30]
	adds r0, #1
	strh r0, [r6, #0x30]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r2, r0, #0x10
	ldr r1, _08065134 @ =0xFFA60000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0x8f
	bls _08065086
	ldr r0, [r6, #0x3c]
	ldr r1, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x3c]
_08065086:
	cmp r2, #0x59
	bgt _08065098
	ldr r0, [r6, #0x40]
	subs r0, #6
	str r0, [r6, #0x40]
	cmp r0, #0
	bge _08065098
	movs r0, #0
	str r0, [r6, #0x40]
_08065098:
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	cmp r7, #0xe9
	bne _080650A6
	movs r0, #0xa0
	lsls r0, r0, #1
	str r0, [r5, #0x40]
_080650A6:
	ldr r0, [r5, #0x3c]
	movs r1, #0xb4
	lsls r1, r1, #8
	cmp r0, r1
	ble _080650B2
	str r1, [r5, #0x3c]
_080650B2:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	bne _080650C8
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x2f
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x3c]
	str r0, [r5, #0x38]
_080650C8:
	ldr r4, _08065138 @ =gSineTable
	ldr r0, [r5, #0x34]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x18
	bl Div
	ldr r1, [r5, #0x38]
	subs r1, r1, r0
	str r1, [r5, #0x38]
	ldr r1, [r5, #0x34]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	lsls r1, r7, #5
	adds r0, r0, r1
	ldr r1, _0806513C @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08065140 @ =0x0000028A
	bl Div
	adds r0, #0x78
	strh r0, [r6, #0x16]
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	ldr r0, [r5, #0x34]
	subs r0, #1
	str r0, [r5, #0x34]
	adds r0, r5, #0
	adds r0, #0x32
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08065144
	movs r0, #0
	b _08065148
	.align 2, 0
_08065130: .4byte gCurTask
_08065134: .4byte 0xFFA60000
_08065138: .4byte gSineTable
_0806513C: .4byte 0x000003FF
_08065140: .4byte 0x0000028A
_08065144:
	movs r0, #0xc0
	lsls r0, r0, #1
_08065148:
	strh r0, [r6, #0x1a]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_806515C
sub_806515C: @ 0x0806515C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0806522C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r5, r6, #0
	ldrh r0, [r6, #0x30]
	adds r0, #1
	strh r0, [r6, #0x30]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r2, r0, #0x10
	ldr r1, _08065230 @ =0xFFA60000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0x8f
	bls _0806518A
	ldr r0, [r6, #0x3c]
	ldr r1, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x3c]
_0806518A:
	cmp r2, #0x59
	bgt _0806519C
	ldr r0, [r6, #0x40]
	subs r0, #6
	str r0, [r6, #0x40]
	cmp r0, #0
	bge _0806519C
	movs r0, #0
	str r0, [r6, #0x40]
_0806519C:
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	cmp r7, #0xe9
	bne _080651AA
	movs r0, #0xa0
	lsls r0, r0, #1
	str r0, [r5, #0x40]
_080651AA:
	ldr r0, [r5, #0x3c]
	movs r1, #0xd4
	lsls r1, r1, #8
	cmp r0, r1
	ble _080651B6
	str r1, [r5, #0x3c]
_080651B6:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	bne _080651CC
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x2f
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x3c]
	str r0, [r5, #0x38]
_080651CC:
	ldr r4, _08065234 @ =gSineTable
	ldr r1, [r5, #0x34]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x18
	bl Div
	ldr r1, [r5, #0x38]
	subs r1, r1, r0
	str r1, [r5, #0x38]
	ldr r1, [r5, #0x34]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	lsls r1, r7, #5
	adds r0, r0, r1
	ldr r1, _08065238 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0806523C @ =0x0000028A
	bl Div
	movs r1, #0x78
	subs r1, r1, r0
	strh r1, [r6, #0x16]
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	ldr r0, [r5, #0x34]
	subs r0, #1
	str r0, [r5, #0x34]
	adds r0, r5, #0
	adds r0, #0x32
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08065240
	movs r0, #0
	b _08065244
	.align 2, 0
_0806522C: .4byte gCurTask
_08065230: .4byte 0xFFA60000
_08065234: .4byte gSineTable
_08065238: .4byte 0x000003FF
_0806523C: .4byte 0x0000028A
_08065240:
	movs r0, #0xc0
	lsls r0, r0, #1
_08065244:
	strh r0, [r6, #0x1a]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8065258
sub_8065258: @ 0x08065258
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080652CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _080652D0 @ =0x030000B4
	adds r1, r1, r0
	movs r7, #0
	movs r2, #0
	ldrsh r5, [r1, r2]
	ldr r0, _080652D4 @ =gUnknown_0868B3B8
	mov r8, r0
	movs r1, #2
	add r1, r8
	mov sb, r1
_08065284:
	lsls r6, r7, #1
	adds r0, r6, r7
	lsls r0, r0, #4
	mov r2, sl
	adds r4, r2, r0
	cmp r5, #0x1e
	bne _080652B4
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	lsls r1, r7, #3
	mov r2, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080652B4:
	cmp r5, #0
	ble _0806530E
	ldr r0, _080652D8 @ =0x00000161
	cmp r5, r0
	ble _080652DC
	movs r0, #0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _08065308
	.align 2, 0
_080652CC: .4byte gCurTask
_080652D0: .4byte 0x030000B4
_080652D4: .4byte gUnknown_0868B3B8
_080652D8: .4byte 0x00000161
_080652DC:
	cmp r5, #0xbd
	ble _08065308
	cmp r5, #0xbe
	bne _08065302
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r6, #1
	lsls r1, r1, #2
	mov r2, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
_08065302:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_08065308:
	adds r0, r4, #0
	bl DisplaySprite
_0806530E:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	blo _08065284
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8065328
sub_8065328: @ 0x08065328
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08065374 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	str r1, [sp]
	ldr r1, _08065378 @ =0x030000B4
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r6, #0
	lsls r0, r0, #0x10
	mov sb, r0
	mov r2, sb
	asrs r2, r2, #0x10
	mov r8, r2
	ldr r0, _0806537C @ =gUnknown_0868B3C0
	mov sl, r0
_08065358:
	lsls r1, r6, #1
	adds r0, r1, r6
	lsls r0, r0, #4
	ldr r2, [sp]
	adds r5, r2, r0
	adds r7, r1, #0
	mov r0, r8
	cmp r0, #0x1e
	bne _080653B8
	cmp r6, #2
	bne _08065384
	ldr r0, _08065380 @ =0x06013280
	b _08065392
	.align 2, 0
_08065374: .4byte gCurTask
_08065378: .4byte 0x030000B4
_0806537C: .4byte gUnknown_0868B3C0
_08065380: .4byte 0x06013280
_08065384:
	cmp r6, #1
	bne _08065390
	ldr r0, _0806538C @ =0x06011980
	b _08065392
	.align 2, 0
_0806538C: .4byte 0x06011980
_08065390:
	ldr r0, _080653DC @ =0x06010080
_08065392:
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	lsls r1, r6, #3
	mov r2, sl
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r0, _080653E0 @ =gUnknown_0868B3C2
	adds r1, r1, r0
	ldrh r1, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080653B8:
	mov r1, sb
	asrs r4, r1, #0x10
	cmp r4, #0
	blt _08065426
	cmp r4, #0x1d
	bgt _080653CA
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080653CA:
	ldr r0, _080653E4 @ =0x00000161
	cmp r4, r0
	ble _080653E8
	movs r0, #0
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	b _08065416
	.align 2, 0
_080653DC: .4byte 0x06010080
_080653E0: .4byte gUnknown_0868B3C2
_080653E4: .4byte 0x00000161
_080653E8:
	cmp r4, #0xbd
	ble _08065416
	cmp r4, #0xbe
	bne _08065410
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r7, #1
	lsls r1, r1, #2
	mov r2, sl
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r0, _08065440 @ =gUnknown_0868B3C2
	adds r1, r1, r0
	ldrh r1, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
_08065410:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_08065416:
	mov r1, r8
	cmp r1, #0x1d
	bgt _08065420
	cmp r6, #0
	bne _08065426
_08065420:
	adds r0, r5, #0
	bl DisplaySprite
_08065426:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	blo _08065358
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065440: .4byte gUnknown_0868B3C2

	thumb_func_start sub_8065444
sub_8065444: @ 0x08065444
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08065480 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r0
	mov sl, r1
	ldr r1, _08065484 @ =0x030000B4
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sb, r0
	movs r5, #0
	ldr r7, _08065488 @ =gUnknown_0868B3C8
	adds r2, r7, #2
	mov r8, r2
_0806546C:
	lsls r1, r5, #1
	adds r0, r1, r5
	lsls r0, r0, #4
	mov r2, sl
	adds r4, r2, r0
	adds r3, r1, #0
	cmp r5, #2
	bne _08065490
	ldr r0, _0806548C @ =0x06013280
	b _0806549E
	.align 2, 0
_08065480: .4byte gCurTask
_08065484: .4byte 0x030000B4
_08065488: .4byte gUnknown_0868B3C8
_0806548C: .4byte 0x06013280
_08065490:
	cmp r5, #1
	bne _0806549C
	ldr r0, _08065498 @ =0x06011980
	b _0806549E
	.align 2, 0
_08065498: .4byte 0x06011980
_0806549C:
	ldr r0, _080654DC @ =0x06010080
_0806549E:
	str r0, [r4, #4]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r6, r0, #0
	cmp r2, #0x1e
	bne _080654C6
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	lsls r1, r5, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, r8
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
_080654C6:
	cmp r2, #0
	blt _0806551E
	ldr r0, _080654E0 @ =0x00000161
	cmp r2, r0
	ble _080654E4
	movs r0, #0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _08065508
	.align 2, 0
_080654DC: .4byte 0x06010080
_080654E0: .4byte 0x00000161
_080654E4:
	cmp r2, #0xea
	ble _08065508
	cmp r2, #0xeb
	bne _08065508
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r3, #1
	lsls r1, r1, #2
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, r8
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
_08065508:
	asrs r0, r6, #0x10
	cmp r0, #0x1d
	bgt _08065512
	cmp r5, #0
	bne _0806551E
_08065512:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0806551E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	blo _0806546C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8065538
sub_8065538: @ 0x08065538
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080655D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp]
	ldr r2, _080655D4 @ =0x030000B4
	adds r0, r1, r2
	ldrh r0, [r0]
	lsls r2, r0, #0x10
	movs r0, #0xcd
	lsls r0, r0, #0x11
	cmp r2, r0
	bgt _0806561C
	movs r7, #0
	str r2, [sp, #4]
	ldr r0, _080655D4 @ =0x030000B4
	adds r0, r1, r0
	str r0, [sp, #8]
	ldr r1, _080655D8 @ =0x00000161
	mov sl, r1
	ldr r2, _080655DC @ =gUnknown_0868B3D0
	mov r8, r2
	movs r0, #2
	add r0, r8
	mov sb, r0
_0806557A:
	lsls r6, r7, #1
	adds r0, r6, r7
	lsls r0, r0, #4
	ldr r1, [sp]
	adds r4, r1, r0
	ldr r2, [sp, #8]
	ldrh r0, [r2]
	cmp r0, sl
	bne _08065590
	movs r0, #0
	str r0, [r4, #0x10]
_08065590:
	ldr r0, [sp, #4]
	asrs r5, r0, #0x10
	cmp r5, #0x1e
	bne _080655BA
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	lsls r1, r7, #3
	mov r2, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080655BA:
	cmp r5, #0
	blt _08065612
	cmp r5, sl
	ble _080655E0
	movs r0, #0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _0806560C
	.align 2, 0
_080655D0: .4byte gCurTask
_080655D4: .4byte 0x030000B4
_080655D8: .4byte 0x00000161
_080655DC: .4byte gUnknown_0868B3D0
_080655E0:
	cmp r5, #0xa4
	ble _0806560C
	cmp r5, #0xa5
	bne _08065606
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r6, #1
	lsls r1, r1, #2
	mov r2, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
_08065606:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_0806560C:
	adds r0, r4, #0
	bl DisplaySprite
_08065612:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	blo _0806557A
_0806561C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_806562C
sub_806562C: @ 0x0806562C
	push {r4, r5, lr}
	ldr r0, _08065698 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldrh r0, [r3, #0x30]
	adds r0, #1
	strh r0, [r3, #0x30]
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x10
	adds r0, r1, #0
	ldr r1, _0806569C @ =0x01610000
	cmp r0, r1
	bne _08065652
	movs r0, #0
	str r0, [r3, #0x10]
_08065652:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _08065690
	subs r0, #0x5a
	ldr r2, [r3, #0x34]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08065690
	ldr r0, [r3, #0x3c]
	subs r0, #0x10
	str r0, [r3, #0x3c]
	ldr r2, _080656A0 @ =gUnknown_0868B27C
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _0806567C
	str r1, [r3, #0x3c]
_0806567C:
	ldr r0, [r4, #0x3c]
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08065690:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065698: .4byte gCurTask
_0806569C: .4byte 0x01610000
_080656A0: .4byte gUnknown_0868B27C

	thumb_func_start sub_80656A4
sub_80656A4: @ 0x080656A4
	push {r4, r5, lr}
	ldr r0, _08065710 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldrh r0, [r3, #0x30]
	adds r0, #1
	strh r0, [r3, #0x30]
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x10
	adds r0, r1, #0
	ldr r1, _08065714 @ =0x01610000
	cmp r0, r1
	bne _080656CA
	movs r0, #0
	str r0, [r3, #0x10]
_080656CA:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _08065708
	subs r0, #0x5a
	ldr r2, [r3, #0x34]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08065708
	ldr r0, [r3, #0x3c]
	subs r0, #0x10
	str r0, [r3, #0x3c]
	ldr r2, _08065718 @ =gUnknown_0868B280
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _080656F4
	str r1, [r3, #0x3c]
_080656F4:
	ldr r0, [r4, #0x3c]
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08065708:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065710: .4byte gCurTask
_08065714: .4byte 0x01610000
_08065718: .4byte gUnknown_0868B280

	thumb_func_start sub_806571C
sub_806571C: @ 0x0806571C
	push {r4, r5, lr}
	ldr r0, _08065788 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldrh r0, [r3, #0x30]
	adds r0, #1
	strh r0, [r3, #0x30]
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x10
	adds r0, r1, #0
	ldr r1, _0806578C @ =0x01610000
	cmp r0, r1
	bne _08065742
	movs r0, #0
	str r0, [r3, #0x10]
_08065742:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _08065780
	subs r0, #0x5a
	ldr r2, [r3, #0x34]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08065780
	ldr r0, [r3, #0x3c]
	subs r0, #0x10
	str r0, [r3, #0x3c]
	ldr r2, _08065790 @ =gUnknown_0868B284
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _0806576C
	str r1, [r3, #0x3c]
_0806576C:
	ldr r0, [r4, #0x3c]
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08065780:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065788: .4byte gCurTask
_0806578C: .4byte 0x01610000
_08065790: .4byte gUnknown_0868B284

	thumb_func_start sub_8065794
sub_8065794: @ 0x08065794
	push {r4, r5, lr}
	ldr r0, _08065804 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldrh r0, [r3, #0x30]
	adds r1, r0, #1
	strh r1, [r3, #0x30]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r0, #0xcd
	lsls r0, r0, #1
	cmp r2, r0
	bgt _080657FE
	lsls r1, r1, #0x10
	ldr r0, _08065808 @ =0x01610000
	cmp r1, r0
	bne _080657C2
	movs r0, #0
	str r0, [r3, #0x10]
_080657C2:
	cmp r2, #0x5a
	ble _080657FE
	adds r0, r2, #0
	subs r0, #0x5a
	ldr r2, [r3, #0x34]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _080657FE
	ldr r0, [r3, #0x3c]
	subs r0, #0x10
	str r0, [r3, #0x3c]
	ldr r2, _0806580C @ =gUnknown_0868B288
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _080657EA
	str r1, [r3, #0x3c]
_080657EA:
	ldr r0, [r4, #0x3c]
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080657FE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065804: .4byte gCurTask
_08065808: .4byte 0x01610000
_0806580C: .4byte gUnknown_0868B288

	thumb_func_start sub_8065810
sub_8065810: @ 0x08065810
	bx lr
	.align 2, 0

	thumb_func_start sub_8065814
sub_8065814: @ 0x08065814
	push {r4, r5, lr}
	ldr r0, _08065880 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r2, r4, #0
	ldrh r5, [r4, #0x30]
	movs r0, #0x30
	ldrsh r3, [r4, r0]
	adds r0, r3, #0
	subs r0, #0x5a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x8f
	bls _0806583E
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x3c]
_0806583E:
	cmp r3, #0x59
	bgt _08065850
	ldr r0, [r4, #0x40]
	subs r0, #6
	str r0, [r4, #0x40]
	cmp r0, #0
	bge _08065850
	movs r0, #0
	str r0, [r4, #0x40]
_08065850:
	cmp r5, #0xe9
	bne _0806585A
	movs r0, #0xa0
	lsls r0, r0, #1
	str r0, [r2, #0x40]
_0806585A:
	ldr r0, [r2, #0x3c]
	movs r1, #0xb4
	lsls r1, r1, #8
	cmp r0, r1
	ble _08065866
	str r1, [r2, #0x3c]
_08065866:
	ldr r0, [r2, #0x3c]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065880: .4byte gCurTask

	thumb_func_start CreateCongratulationsAnimation
CreateCongratulationsAnimation: @ 0x08065884
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	ldr r1, _08065C70 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08065C74 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08065C78 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08065C7C @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08065C80 @ =gVramGraphicsCopyCursor
	ldr r0, _08065C84 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r0, _08065C88 @ =gFlags
	mov sl, r0
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r2, _08065C8C @ =0x04000200
	mov r8, r2
	ldrh r0, [r2]
	str r0, [sp, #0x54]
	ldr r6, _08065C90 @ =0x04000208
	ldrh r0, [r6]
	adds r7, r0, #0
	ldr r5, _08065C94 @ =0x04000004
	ldrh r3, [r5]
	mov sb, r3
	movs r0, #0
	strh r0, [r2]
	ldrh r0, [r2]
	movs r2, #0
	strh r2, [r6]
	ldrh r0, [r6]
	strh r2, [r5]
	ldrh r0, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	mov r3, sl
	str r1, [r3]
	ldr r1, _08065C98 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _08065C9C @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _08065CA0 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _08065CA4 @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	bl WriteSaveGame
	add r0, sp, #0x54
	ldrh r1, [r0]
	mov r0, r8
	strh r1, [r0]
	ldrh r0, [r0]
	strh r7, [r6]
	ldrh r0, [r6]
	mov r1, sb
	strh r1, [r5]
	ldrh r0, [r5]
	bl m4aSoundVSyncOn
	mov r2, sl
	ldr r0, [r2]
	ldr r1, _08065CA8 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2]
	bl sub_80535FC
	bl UiGfxStackInit
	ldr r1, _08065CAC @ =gDispCnt
	movs r3, #0x8a
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08065CB0 @ =gBgCntRegs
	movs r4, #0
	ldr r0, _08065CB4 @ =0x00009D86
	strh r0, [r1]
	ldr r0, _08065CB8 @ =0x00001B8B
	strh r0, [r1, #2]
	ldr r0, _08065CBC @ =0x00009880
	strh r0, [r1, #4]
	ldr r0, _08065CC0 @ =gBgScrollRegs
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	ldr r0, _08065CC4 @ =sub_8066DD0
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x44]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r0, _08065CCC @ =0x06010020
	str r0, [r7, #4]
	ldr r1, _08065CD0 @ =gUnknown_0868B3D8
	ldr r3, _08065CD4 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _08065CD8 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r1, #0x50
	strh r1, [r7, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08065CDC @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08065CE0 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strh r4, [r7, #0x3c]
	movs r5, #0xf0
	lsls r5, r5, #3
	str r5, [r7, #0x44]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r7, #0x40]
	str r4, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r7, #0x48]
	ldr r0, _08065CE4 @ =sub_8066E58
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x4c]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r2, r1
	ldr r0, _08065CE8 @ =0x06017D00
	str r0, [r7, #4]
	ldr r1, _08065CEC @ =gUnknown_0868B3F8
	ldr r3, _08065CD4 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _08065CD8 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x96
	lsls r0, r0, #1
	mov sl, r0
	mov r1, sl
	strh r1, [r7, #0x16]
	movs r3, #0x6c
	mov sb, r3
	mov r0, sb
	strh r0, [r7, #0x18]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r3, _08065CF0 @ =0x03000021
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08065CDC @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08065CE0 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strh r4, [r7, #0x3c]
	str r5, [r7, #0x44]
	movs r0, #0x96
	lsls r0, r0, #9
	mov r8, r0
	str r0, [r7, #0x40]
	str r4, [r7, #0x4c]
	movs r6, #0xd8
	lsls r6, r6, #7
	str r6, [r7, #0x48]
	ldr r0, _08065CF4 @ =sub_8066F14
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x48]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r1, r2
	ldr r0, _08065CF8 @ =0x06010BA0
	str r0, [r7, #4]
	movs r0, #0xb8
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r3, _08065CD8 @ =0x03000020
	adds r0, r1, r3
	movs r2, #0
	strb r2, [r0]
	mov r3, sl
	strh r3, [r7, #0x16]
	mov r0, sb
	strh r0, [r7, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r3, _08065CF0 @ =0x03000021
	adds r2, r1, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2]
	ldr r2, _08065CDC @ =0x03000022
	adds r0, r1, r2
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08065CE0 @ =0x03000025
	adds r1, r1, r0
	movs r2, #0
	strb r2, [r1]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strh r4, [r7, #0x3c]
	str r5, [r7, #0x44]
	mov r1, r8
	str r1, [r7, #0x40]
	str r4, [r7, #0x4c]
	str r6, [r7, #0x48]
	ldr r0, _08065CFC @ =sub_8066A5C
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x40]
	ldrh r5, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r5, r2
	ldr r0, _08065D00 @ =0x06010940
	str r0, [r7, #4]
	movs r0, #0xc5
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r3, _08065CD8 @ =0x03000020
	adds r0, r5, r3
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xf8
	strh r0, [r7, #0x16]
	movs r2, #0x50
	strh r2, [r7, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r3, #1
	adds r1, r5, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08065CDC @ =0x03000022
	adds r0, r5, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r3, #4
	adds r0, r5, r3
	movs r1, #0
	strb r1, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strh r4, [r7, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r7, #0x44]
	movs r0, #0xf8
	lsls r0, r0, #8
	str r0, [r7, #0x40]
	str r4, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r7, #0x48]
	ldr r1, _08065D04 @ =0x0300015C
	adds r5, r5, r1
	movs r2, #0
	strb r2, [r5]
	ldr r0, _08065D08 @ =sub_8067020
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x50]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r2, r3
	strh r4, [r7, #0x3c]
	str r4, [r7, #0x4c]
	str r4, [r7, #0x48]
	str r4, [r7, #0x44]
	str r4, [r7, #0x40]
	ldr r0, _08065D0C @ =0x06014020
	str r0, [r7, #4]
	ldr r1, _08065D10 @ =gUnknown_0868B3E8
	ldr r3, _08065CD4 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _08065CD8 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r1, #0x50
	strh r1, [r7, #0x18]
	movs r0, #0xc0
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	subs r0, #0xc1
	strb r0, [r1]
	ldr r1, _08065CDC @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08065CE0 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, _08065D14 @ =sub_8066C78
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	b _08065D18
	.align 2, 0
_08065C70: .4byte 0x0000FFFF
_08065C74: .4byte gBackgroundsCopyQueueCursor
_08065C78: .4byte gBackgroundsCopyQueueIndex
_08065C7C: .4byte sa2__gUnknown_03005390
_08065C80: .4byte gVramGraphicsCopyCursor
_08065C84: .4byte gVramGraphicsCopyQueueIndex
_08065C88: .4byte gFlags
_08065C8C: .4byte 0x04000200
_08065C90: .4byte 0x04000208
_08065C94: .4byte 0x04000004
_08065C98: .4byte 0x040000B0
_08065C9C: .4byte 0x0000C5FF
_08065CA0: .4byte 0x00007FFF
_08065CA4: .4byte 0x040000D4
_08065CA8: .4byte 0xFFFF7FFF
_08065CAC: .4byte gDispCnt
_08065CB0: .4byte gBgCntRegs
_08065CB4: .4byte 0x00009D86
_08065CB8: .4byte 0x00001B8B
_08065CBC: .4byte 0x00009880
_08065CC0: .4byte gBgScrollRegs
_08065CC4: .4byte sub_8066DD0
_08065CC8: .4byte 0x00002120
_08065CCC: .4byte 0x06010020
_08065CD0: .4byte gUnknown_0868B3D8
_08065CD4: .4byte gSelectedCharacter
_08065CD8: .4byte 0x03000020
_08065CDC: .4byte 0x03000022
_08065CE0: .4byte 0x03000025
_08065CE4: .4byte sub_8066E58
_08065CE8: .4byte 0x06017D00
_08065CEC: .4byte gUnknown_0868B3F8
_08065CF0: .4byte 0x03000021
_08065CF4: .4byte sub_8066F14
_08065CF8: .4byte 0x06010BA0
_08065CFC: .4byte sub_8066A5C
_08065D00: .4byte 0x06010940
_08065D04: .4byte 0x0300015C
_08065D08: .4byte sub_8067020
_08065D0C: .4byte 0x06014020
_08065D10: .4byte gUnknown_0868B3E8
_08065D14: .4byte sub_8066C78
_08065D18:
	bl TaskCreate
	mov sl, r0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	strh r4, [r7, #0x3c]
	movs r0, #0xf
	str r0, [r7, #0x4c]
	str r4, [r7, #0x48]
	str r4, [r7, #0x44]
	str r4, [r7, #0x40]
	ldr r0, _08065DE8 @ =0x060109C0
	str r0, [r7, #4]
	movs r0, #0xc2
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r1, _08065DEC @ =0x03000020
	adds r0, r2, r1
	movs r3, #0
	strb r3, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r1, #0x50
	strh r1, [r7, #0x18]
	strh r4, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r3, _08065DF0 @ =0x03000021
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08065DF4 @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08065DF8 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r5, #0
	add r6, sp, #0x10
	mov r7, sp
	adds r7, #0x3c
	str r7, [sp, #0x68]
	mov r0, sp
	adds r0, #0x3b
	str r0, [sp, #0x64]
	mov r1, sp
	adds r1, #0x38
	str r1, [sp, #0x58]
	mov r2, sp
	adds r2, #0x39
	str r2, [sp, #0x5c]
	mov r3, sp
	adds r3, #0x3a
	str r3, [sp, #0x60]
	ldr r7, _08065DFC @ =0x00000311
	mov r8, r7
_08065DA6:
	str r4, [sp]
	ldr r0, _08065E00 @ =sub_8066DC8
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065E04 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	lsls r1, r5, #2
	add r1, sp
	adds r1, #4
	str r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	strh r4, [r7, #0x3c]
	movs r0, #0xf
	str r0, [r7, #0x4c]
	str r4, [r7, #0x48]
	str r5, [r7, #0x44]
	str r4, [r7, #0x40]
	cmp r5, #0
	bne _08065E0C
	ldr r0, _08065E08 @ =0x06011AA0
	str r0, [r7, #4]
	mov r2, r8
	strh r2, [r7, #0xa]
	ldr r3, _08065DEC @ =0x03000020
	adds r0, r1, r3
	strb r4, [r0]
	b _08065E38
	.align 2, 0
_08065DE8: .4byte 0x060109C0
_08065DEC: .4byte 0x03000020
_08065DF0: .4byte 0x03000021
_08065DF4: .4byte 0x03000022
_08065DF8: .4byte 0x03000025
_08065DFC: .4byte 0x00000311
_08065E00: .4byte sub_8066DC8
_08065E04: .4byte 0x00002120
_08065E08: .4byte 0x06011AA0
_08065E0C:
	cmp r5, #1
	bne _08065E28
	ldr r0, _08065E20 @ =0x06012340
	str r0, [r7, #4]
	mov r0, r8
	strh r0, [r7, #0xa]
	ldr r2, _08065E24 @ =0x03000020
	adds r0, r1, r2
	strb r5, [r0]
	b _08065E38
	.align 2, 0
_08065E20: .4byte 0x06012340
_08065E24: .4byte 0x03000020
_08065E28:
	ldr r0, _08065F34 @ =0x06012820
	str r0, [r7, #4]
	mov r3, r8
	strh r3, [r7, #0xa]
	ldr r0, _08065F38 @ =0x03000020
	adds r1, r1, r0
	movs r0, #2
	strb r0, [r1]
_08065E38:
	movs r0, #0xb4
	strh r0, [r7, #0x16]
	movs r0, #0x50
	strh r0, [r7, #0x18]
	strh r4, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x25
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #5
	mov sb, r1
	str r1, [r7, #0x10]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08065DA6
	ldr r0, _08065F3C @ =sub_8065F5C
	movs r2, #0x84
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r3, _08065F40 @ =0x03000040
	adds r1, r2, r3
	movs r5, #0
	strh r4, [r1]
	ldr r7, _08065F44 @ =0x03000042
	adds r1, r2, r7
	movs r3, #1
	strb r3, [r1]
	ldr r1, [sp, #0x50]
	str r1, [r0, #0xc]
	ldr r1, [sp, #4]
	str r1, [r0, #0x24]
	ldr r1, [sp, #8]
	str r1, [r0, #0x28]
	ldr r1, [sp, #0xc]
	str r1, [r0, #0x2c]
	ldr r7, [sp, #0x44]
	str r7, [r0, #0x18]
	mov r1, sl
	str r1, [r0, #0x10]
	ldr r7, [sp, #0x40]
	str r7, [r0, #0x14]
	ldr r1, [sp, #0x48]
	str r1, [r0, #0x1c]
	ldr r7, [sp, #0x4c]
	str r7, [r0, #0x20]
	ldr r7, _08065F48 @ =0x03000044
	adds r1, r2, r7
	strh r4, [r1]
	ldr r1, _08065F4C @ =0x03000046
	adds r2, r2, r1
	strh r4, [r2]
	strh r4, [r0]
	movs r2, #1
	strh r3, [r0, #2]
	movs r1, #8
	strh r1, [r0, #4]
	strh r4, [r0, #6]
	movs r4, #0x80
	strh r4, [r0, #8]
	strb r2, [r0, #0xa]
	bl sub_80543A4
	ldr r2, [sp, #0x68]
	strb r4, [r2]
	ldr r3, [sp, #0x64]
	strb r5, [r3]
	ldr r0, _08065F50 @ =gUnknown_086BBE34
	str r0, [r6, #0x14]
	movs r0, #0xa6
	lsls r0, r0, #6
	str r0, [r6, #0x18]
	ldr r0, _08065F54 @ =gUnknown_086BBC34
	str r0, [r6, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r6, #0x24]
	ldr r0, _08065F58 @ =gUnknown_086BE7B4
	str r0, [r6, #0x10]
	mov r7, sb
	str r7, [r6, #0x1c]
	ldr r0, [sp, #0x58]
	strb r5, [r0]
	ldr r1, [sp, #0x5c]
	strb r5, [r1]
	movs r0, #0x15
	ldr r2, [sp, #0x60]
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_80528AC
	movs r0, #0x26
	bl m4aSongNumStart
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065F34: .4byte 0x06012820
_08065F38: .4byte 0x03000020
_08065F3C: .4byte sub_8065F5C
_08065F40: .4byte 0x03000040
_08065F44: .4byte 0x03000042
_08065F48: .4byte 0x03000044
_08065F4C: .4byte 0x03000046
_08065F50: .4byte gUnknown_086BBE34
_08065F54: .4byte gUnknown_086BBC34
_08065F58: .4byte gUnknown_086BE7B4

	thumb_func_start sub_8065F5C
sub_8065F5C: @ 0x08065F5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08066008 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r4, r1
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x20]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	adds r1, #0x40
	adds r0, r4, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r7, r0, #1
	adds r0, r5, #0
	bl sub_805423C
	cmp r7, #0xb4
	beq _08065FAA
	b _0806610A
_08065FAA:
	movs r6, #0
	ldr r0, _0806600C @ =0x03000030
	adds r0, r0, r4
	mov sb, r0
	movs r4, #0
	movs r1, #0xc8
	lsls r1, r1, #8
	mov r8, r1
_08065FBA:
	str r4, [sp]
	ldr r0, _08066010 @ =sub_806844C
	movs r1, #0x64
	ldr r2, _08066014 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	lsls r2, r6, #2
	mov r1, sp
	adds r1, r1, r2
	adds r1, #4
	str r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r3, r0
	str r4, [r1, #0x3c]
	cmp r6, #0
	bne _08066028
	mov r0, r8
	str r0, [r1, #0x54]
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [r1, #0x44]
	movs r0, #0x80
	str r0, [r1, #0x48]
	ldr r0, _08066018 @ =0xFFFFFC40
	str r0, [r1, #0x58]
	ldr r0, _0806601C @ =0x06012E80
	str r0, [r1, #4]
	ldr r0, _08066020 @ =0x00000316
	strh r0, [r1, #0xa]
	ldr r0, _08066024 @ =0x03000020
	adds r3, r3, r0
	strb r4, [r3]
	movs r0, #0x98
	lsls r0, r0, #3
	b _080660C0
	.align 2, 0
_08066008: .4byte gCurTask
_0806600C: .4byte 0x03000030
_08066010: .4byte sub_806844C
_08066014: .4byte 0x00002120
_08066018: .4byte 0xFFFFFC40
_0806601C: .4byte 0x06012E80
_08066020: .4byte 0x00000316
_08066024: .4byte 0x03000020
_08066028:
	cmp r6, #1
	bne _08066060
	mov r0, r8
	str r0, [r1, #0x54]
	str r4, [r1, #0x44]
	movs r0, #0x40
	str r0, [r1, #0x48]
	ldr r0, _08066050 @ =0xFFFFFC00
	str r0, [r1, #0x58]
	ldr r0, _08066054 @ =0x06012FC0
	str r0, [r1, #4]
	ldr r0, _08066058 @ =0x00000317
	strh r0, [r1, #0xa]
	ldr r0, _0806605C @ =0x03000020
	adds r3, r3, r0
	strb r4, [r3]
	movs r0, #0x90
	lsls r0, r0, #3
	b _080660C0
	.align 2, 0
_08066050: .4byte 0xFFFFFC00
_08066054: .4byte 0x06012FC0
_08066058: .4byte 0x00000317
_0806605C: .4byte 0x03000020
_08066060:
	cmp r6, #2
	bne _0806609C
	mov r0, r8
	str r0, [r1, #0x54]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1, #0x44]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r1, #0x48]
	ldr r0, _08066090 @ =0xFFFFFC80
	str r0, [r1, #0x58]
	ldr r0, _08066094 @ =0x06013260
	str r0, [r1, #4]
	movs r0, #0xc6
	lsls r0, r0, #2
	strh r0, [r1, #0xa]
	ldr r0, _08066098 @ =0x03000020
	adds r3, r3, r0
	strb r4, [r3]
	movs r0, #0x88
	lsls r0, r0, #3
	b _080660C0
	.align 2, 0
_08066090: .4byte 0xFFFFFC80
_08066094: .4byte 0x06013260
_08066098: .4byte 0x03000020
_0806609C:
	mov r0, r8
	str r0, [r1, #0x54]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r1, #0x44]
	movs r0, #0xc0
	str r0, [r1, #0x48]
	ldr r0, _0806617C @ =0xFFFFFB80
	str r0, [r1, #0x58]
	ldr r0, _08066180 @ =0x06013620
	str r0, [r1, #4]
	ldr r0, _08066184 @ =0x00000319
	strh r0, [r1, #0xa]
	ldr r0, _08066188 @ =0x03000020
	adds r3, r3, r0
	strb r4, [r3]
	movs r0, #0x80
	lsls r0, r0, #3
_080660C0:
	strh r0, [r1, #0x1a]
	movs r0, #0xb4
	strh r0, [r1, #0x16]
	movs r0, #0x50
	strh r0, [r1, #0x18]
	strh r4, [r1, #8]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x1c]
	adds r3, r1, #0
	adds r3, #0x21
	movs r0, #0xff
	strb r0, [r3]
	adds r3, #1
	movs r0, #0x10
	strb r0, [r3]
	adds r0, r1, #0
	adds r0, #0x25
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #0x10]
	mov r0, sb
	adds r1, r0, r2
	mov r0, sp
	adds r0, r0, r2
	adds r0, #4
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bhi _0806610A
	b _08065FBA
_0806610A:
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r7, r0
	bne _08066124
	ldr r0, [r5, #0x30]
	ldr r1, _0806618C @ =sub_80684B4
	str r1, [r0, #8]
	ldr r0, [r5, #0x34]
	str r1, [r0, #8]
	ldr r0, [r5, #0x38]
	str r1, [r0, #8]
	ldr r0, [r5, #0x3c]
	str r1, [r0, #8]
_08066124:
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r7, r0
	bls _08066154
	movs r7, #0
	ldr r0, [r5, #0x10]
	bl TaskDestroy
	ldr r1, [r5, #0x20]
	ldr r0, _08066190 @ =sub_8066E5C
	str r0, [r1, #8]
	ldr r1, [r5, #0x1c]
	ldr r0, _08066194 @ =sub_8066F30
	str r0, [r1, #8]
	ldr r1, [r5, #0x18]
	ldr r0, _08066198 @ =sub_8066628
	str r0, [r1, #8]
	ldr r1, [r5, #0xc]
	ldr r0, _0806619C @ =sub_8067050
	str r0, [r1, #8]
	ldr r0, _080661A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080661A4 @ =sub_80661A8
	str r0, [r1, #8]
_08066154:
	adds r0, r5, #0
	adds r0, #0x40
	strh r7, [r0]
	ldr r1, [sp, #0x14]
	strh r7, [r1, #0x3c]
	ldr r0, [sp, #0x18]
	strh r7, [r0, #0x3c]
	ldr r1, [sp, #0x1c]
	strh r7, [r1, #0x3c]
	mov r0, sl
	strh r7, [r0, #0x3c]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806617C: .4byte 0xFFFFFB80
_08066180: .4byte 0x06013620
_08066184: .4byte 0x00000319
_08066188: .4byte 0x03000020
_0806618C: .4byte sub_80684B4
_08066190: .4byte sub_8066E5C
_08066194: .4byte sub_8066F30
_08066198: .4byte sub_8066628
_0806619C: .4byte sub_8067050
_080661A0: .4byte gCurTask
_080661A4: .4byte sub_80661A8

	thumb_func_start sub_80661A8
sub_80661A8: @ 0x080661A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _080662A4 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r2, r1
	ldr r0, [r6, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r6, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r6, #0x20]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r3, _080662A8 @ =0x03000040
	adds r3, r3, r2
	mov sb, r3
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r5, r0, #1
	cmp r5, #0xd0
	bne _0806625E
	ldr r2, [r6, #0x30]
	ldrh r0, [r2, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r0, r3
	ldr r0, _080662AC @ =0xFFFFE200
	mov r8, r0
	str r0, [r7, #0x44]
	ldr r1, _080662B0 @ =0xFFFF8800
	mov ip, r1
	str r1, [r7, #0x54]
	movs r0, #0x80
	str r0, [r7, #0x48]
	movs r2, #0
	str r2, [r7, #0x58]
	ldr r3, [r6, #0x34]
	mov sl, r3
	ldrh r0, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	ldr r3, _080662B4 @ =0xFFFFC400
	str r3, [r7, #0x44]
	ldr r1, _080662B8 @ =0xFFFFA600
	str r1, [r7, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #1
	str r0, [r7, #0x48]
	str r2, [r7, #0x58]
	ldr r4, [r6, #0x38]
	ldrh r7, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r7, r0
	str r1, [r7, #0x44]
	str r3, [r7, #0x54]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r7, #0x48]
	str r2, [r7, #0x58]
	ldr r1, [r6, #0x3c]
	ldrh r0, [r1, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r0, r3
	mov r0, ip
	str r0, [r7, #0x44]
	mov r3, r8
	str r3, [r7, #0x54]
	movs r0, #0xc0
	str r0, [r7, #0x48]
	str r2, [r7, #0x58]
	ldr r0, _080662BC @ =sub_80683D8
	ldr r2, [r6, #0x30]
	str r0, [r2, #8]
	mov r3, sl
	str r0, [r3, #8]
	str r0, [r4, #8]
	str r0, [r1, #8]
_0806625E:
	movs r0, #0x8c
	lsls r0, r0, #1
	cmp r5, r0
	bls _08066282
	movs r5, #0
	ldr r1, [r6, #0x20]
	ldr r0, _080662C0 @ =sub_8066EBC
	str r0, [r1, #8]
	ldr r1, [r6, #0x1c]
	ldr r0, _080662C4 @ =sub_8066F90
	str r0, [r1, #8]
	ldr r1, [r6, #0x18]
	ldr r0, _080662C8 @ =sub_8066DF4
	str r0, [r1, #8]
	ldr r0, _080662A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080662CC @ =sub_80662D0
	str r0, [r1, #8]
_08066282:
	mov r1, sb
	strh r5, [r1]
	ldr r2, [sp]
	strh r5, [r2, #0x3c]
	ldr r3, [sp, #4]
	strh r5, [r3, #0x3c]
	ldr r0, [sp, #8]
	strh r5, [r0, #0x3c]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080662A4: .4byte gCurTask
_080662A8: .4byte 0x03000040
_080662AC: .4byte 0xFFFFE200
_080662B0: .4byte 0xFFFF8800
_080662B4: .4byte 0xFFFFC400
_080662B8: .4byte 0xFFFFA600
_080662BC: .4byte sub_80683D8
_080662C0: .4byte sub_8066EBC
_080662C4: .4byte sub_8066F90
_080662C8: .4byte sub_8066DF4
_080662CC: .4byte sub_80662D0

	thumb_func_start sub_80662D0
sub_80662D0: @ 0x080662D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08066350 @ =gCurTask
	ldr r0, [r0]
	mov ip, r0
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r2, r1
	ldr r7, [r3, #0x18]
	ldrh r0, [r7, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r6, [r3, #0x1c]
	ldrh r0, [r6, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r4, [r3, #0x20]
	ldrh r0, [r4, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08066354 @ =0x03000040
	adds r5, r2, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r2, r0, #1
	cmp r2, #0x10
	bls _08066334
	movs r2, #0
	ldr r0, [r3, #0x30]
	ldr r1, _08066358 @ =sub_8068360
	str r1, [r0, #8]
	ldr r0, [r3, #0x34]
	str r1, [r0, #8]
	ldr r0, [r3, #0x38]
	str r1, [r0, #8]
	ldr r0, [r3, #0x3c]
	str r1, [r0, #8]
	ldr r0, _0806635C @ =sub_80669A0
	str r0, [r4, #8]
	ldr r0, _08066360 @ =sub_8066FDC
	str r0, [r6, #8]
	ldr r0, _08066364 @ =sub_80666E0
	str r0, [r7, #8]
	ldr r0, _08066368 @ =sub_806636C
	mov r1, ip
	str r0, [r1, #8]
_08066334:
	strh r2, [r5]
	mov r0, sl
	strh r2, [r0, #0x3c]
	mov r1, sb
	strh r2, [r1, #0x3c]
	mov r0, r8
	strh r2, [r0, #0x3c]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066350: .4byte gCurTask
_08066354: .4byte 0x03000040
_08066358: .4byte sub_8068360
_0806635C: .4byte sub_80669A0
_08066360: .4byte sub_8066FDC
_08066364: .4byte sub_80666E0
_08066368: .4byte sub_806636C

	thumb_func_start sub_806636C
sub_806636C: @ 0x0806636C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080663D8 @ =gCurTask
	ldr r6, [r0]
	ldrh r2, [r6, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov ip, r0
	ldr r0, [r4, #0x20]
	ldrh r5, [r0, #6]
	adds r7, r5, r1
	ldr r0, _080663DC @ =0x03000040
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r3, r0, #1
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r3, r0
	bls _080663B2
	movs r3, #0
	ldr r0, [r4, #0x14]
	ldr r1, _080663E0 @ =sub_8066ACC
	str r1, [r0, #8]
	ldr r0, _080663E4 @ =sub_80663EC
	str r0, [r6, #8]
_080663B2:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r3, r0
	bne _080663C2
	ldr r0, _080663E8 @ =0x03000050
	adds r1, r5, r0
	movs r0, #1
	strh r0, [r1]
_080663C2:
	strh r3, [r2]
	mov r1, r8
	strh r3, [r1, #0x3c]
	mov r0, ip
	strh r3, [r0, #0x3c]
	strh r3, [r7, #0x3c]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080663D8: .4byte gCurTask
_080663DC: .4byte 0x03000040
_080663E0: .4byte sub_8066ACC
_080663E4: .4byte sub_80663EC
_080663E8: .4byte 0x03000050

	thumb_func_start sub_80663EC
sub_80663EC: @ 0x080663EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08066464 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r5, [r4, #0x14]
	ldrh r0, [r5, #6]
	adds r0, r0, r1
	mov ip, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	ldr r0, [r4, #0x20]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	adds r1, #0x40
	adds r2, r2, r1
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r3, r0, #1
	cmp r3, #0x3c
	bne _08066430
	ldr r0, _08066468 @ =sub_8066BA4
	str r0, [r5, #8]
_08066430:
	cmp r3, #0xc8
	bls _08066444
	movs r3, #0
	ldr r1, [r4, #0xc]
	ldr r0, _0806646C @ =sub_8067054
	str r0, [r1, #8]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _08066470 @ =sub_8066478
	str r0, [r1, #8]
_08066444:
	strh r3, [r2]
	ldr r1, _08066474 @ =0x000003FF
	adds r0, r3, r1
	mov r1, r8
	strh r0, [r1, #0x3c]
	mov r0, ip
	strh r3, [r0, #0x3c]
	strh r3, [r7, #0x3c]
	strh r3, [r6, #0x3c]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066464: .4byte gCurTask
_08066468: .4byte sub_8066BA4
_0806646C: .4byte sub_8067054
_08066470: .4byte sub_8066478
_08066474: .4byte 0x000003FF

	thumb_func_start sub_8066478
sub_8066478: @ 0x08066478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08066504 @ =gCurTask
	ldr r7, [r0]
	ldrh r2, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldr r6, [r4, #0x18]
	ldrh r0, [r6, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r4, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r4, #0x20]
	ldrh r5, [r0, #6]
	adds r1, r1, r5
	mov ip, r1
	ldr r0, _08066508 @ =0x03000040
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r3, r0, #1
	cmp r3, #0xf0
	bls _080664DA
	movs r3, #0
	ldr r0, [r4, #0x24]
	ldr r1, _0806650C @ =sub_8066D64
	str r1, [r0, #8]
	ldr r0, [r4, #0x28]
	str r1, [r0, #8]
	ldr r0, [r4, #0x2c]
	str r1, [r0, #8]
	ldr r0, _08066510 @ =sub_8066768
	str r0, [r6, #8]
	ldr r1, [r4, #0xc]
	ldr r0, _08066514 @ =sub_8067084
	str r0, [r1, #8]
	ldr r0, _08066518 @ =sub_8066520
	str r0, [r7, #8]
_080664DA:
	cmp r3, #1
	bne _080664E4
	ldr r1, _0806651C @ =0x03000050
	adds r0, r5, r1
	strh r3, [r0]
_080664E4:
	strh r3, [r2]
	mov r0, sl
	strh r3, [r0, #0x3c]
	mov r1, sb
	strh r3, [r1, #0x3c]
	mov r0, r8
	strh r3, [r0, #0x3c]
	mov r1, ip
	strh r3, [r1, #0x3c]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066504: .4byte gCurTask
_08066508: .4byte 0x03000040
_0806650C: .4byte sub_8066D64
_08066510: .4byte sub_8066768
_08066514: .4byte sub_8067084
_08066518: .4byte sub_8066520
_0806651C: .4byte 0x03000050

	thumb_func_start sub_8066520
sub_8066520: @ 0x08066520
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080665AC @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r4, #0x24]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r4, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	ldr r0, [r4, #0x20]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r0, _080665B0 @ =0x03000040
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r5, r0, #1
	movs r0, #0xaf
	lsls r0, r0, #2
	cmp r5, r0
	bls _080665CC
	ldr r1, _080665B4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080665B8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080665BC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080665C0 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080665C4 @ =gVramGraphicsCopyCursor
	ldr r0, _080665C8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateStaffCredits
	b _08066614
	.align 2, 0
_080665AC: .4byte gCurTask
_080665B0: .4byte 0x03000040
_080665B4: .4byte 0x0000FFFF
_080665B8: .4byte gBackgroundsCopyQueueCursor
_080665BC: .4byte gBackgroundsCopyQueueIndex
_080665C0: .4byte sa2__gUnknown_03005390
_080665C4: .4byte gVramGraphicsCopyCursor
_080665C8: .4byte gVramGraphicsCopyQueueIndex
_080665CC:
	ldr r0, _08066624 @ =0x0000029D
	cmp r5, r0
	bls _080665F2
	adds r0, #1
	cmp r5, r0
	bne _080665EC
	movs r1, #0
	strh r1, [r4]
	movs r2, #1
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	movs r0, #0xc0
	strh r0, [r4, #8]
	strb r2, [r4, #0xa]
_080665EC:
	adds r0, r4, #0
	bl sub_805423C
_080665F2:
	adds r0, r4, #0
	adds r0, #0x40
	strh r5, [r0]
	mov r0, sl
	strh r5, [r0, #0x3c]
	ldr r0, [sp]
	strh r5, [r0, #0x3c]
	ldr r0, [sp, #4]
	strh r5, [r0, #0x3c]
	ldr r0, [sp, #8]
	strh r5, [r0, #0x3c]
	mov r1, sb
	strh r5, [r1, #0x3c]
	mov r0, r8
	strh r5, [r0, #0x3c]
	strh r5, [r7, #0x3c]
	strh r5, [r6, #0x3c]
_08066614:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066624: .4byte 0x0000029D

	thumb_func_start sub_8066628
sub_8066628: @ 0x08066628
	push {r4, r5, r6, lr}
	ldr r0, _08066644 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r4, r5, #0
	ldrh r6, [r5, #0x3c]
	cmp r6, #0xf
	bne _0806664C
	ldr r1, _08066648 @ =gUnknown_0868B418
	b _0806665E
	.align 2, 0
_08066644: .4byte gCurTask
_08066648: .4byte gUnknown_0868B418
_0806664C:
	cmp r6, #0x14
	bne _08066658
	ldr r1, _08066654 @ =gUnknown_0868B428
	b _0806665E
	.align 2, 0
_08066654: .4byte gUnknown_0868B428
_08066658:
	cmp r6, #0x1e
	bne _08066686
	ldr r1, _080666C8 @ =gUnknown_0868B438
_0806665E:
	ldr r2, _080666CC @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _080666D0 @ =0x03000020
	adds r0, r3, r2
	strb r1, [r0]
	ldr r0, _080666D4 @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_08066686:
	cmp r6, #0x14
	bls _080666B6
	ldr r0, [r4, #0x48]
	ldr r1, _080666D8 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, _080666DC @ =0xFFFFC000
	cmp r0, r1
	bge _0806669A
	str r1, [r4, #0x48]
_0806669A:
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r5, #0x18]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x40]
	cmp r0, #0
	bge _080666B0
	movs r0, #0
	str r0, [r4, #0x40]
_080666B0:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r5, #0x16]
_080666B6:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080666C8: .4byte gUnknown_0868B438
_080666CC: .4byte gSelectedCharacter
_080666D0: .4byte 0x03000020
_080666D4: .4byte 0x03000021
_080666D8: .4byte 0xFFFFF800
_080666DC: .4byte 0xFFFFC000

	thumb_func_start sub_80666E0
sub_80666E0: @ 0x080666E0
	push {r4, r5, r6, lr}
	ldr r0, _08066750 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r5, r0
	adds r6, r3, #0
	ldrh r4, [r3, #0x3c]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r4, r0
	bne _08066724
	ldr r1, _08066754 @ =gUnknown_0868B448
	ldr r2, _08066758 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _0806675C @ =0x03000020
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _08066760 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08066724:
	ldr r1, _08066764 @ =gSineTable
	movs r0, #0xff
	ands r4, r0
	lsls r0, r4, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldr r0, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x48]
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08066750: .4byte gCurTask
_08066754: .4byte gUnknown_0868B448
_08066758: .4byte gSelectedCharacter
_0806675C: .4byte 0x03000020
_08066760: .4byte 0x03000021
_08066764: .4byte gSineTable

	thumb_func_start sub_8066768
sub_8066768: @ 0x08066768
	push {r4, r5, r6, r7, lr}
	ldr r0, _080667B0 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r6, r5, #0
	adds r0, #0x30
	adds r4, r3, r0
	ldrh r7, [r5, #0x3c]
	cmp r7, #1
	bne _080667C4
	ldr r1, _080667B4 @ =gUnknown_0868B458
	ldr r2, _080667B8 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _080667BC @ =0x03000020
	adds r0, r3, r2
	strb r1, [r0]
	ldr r0, _080667C0 @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
	b _080667F6
	.align 2, 0
_080667B0: .4byte gCurTask
_080667B4: .4byte gUnknown_0868B458
_080667B8: .4byte gSelectedCharacter
_080667BC: .4byte 0x03000020
_080667C0: .4byte 0x03000021
_080667C4:
	cmp r7, #0xf0
	bne _080667F6
	ldr r1, _08066850 @ =gUnknown_0868B468
	ldr r2, _08066854 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _08066858 @ =0x03000020
	adds r0, r3, r2
	strb r1, [r0]
	ldr r0, _0806685C @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08066860 @ =0xFFFFFC00
	str r0, [r5, #0x4c]
_080667F6:
	ldr r0, _08066864 @ =0x0000012B
	cmp r7, r0
	bls _0806686C
	adds r0, #1
	cmp r7, r0
	bne _08066846
	ldr r1, _08066868 @ =gUnknown_0868B478
	ldr r2, _08066854 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r3, #0
	strh r0, [r5, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r3, [r4]
	movs r0, #0xe0
	lsls r0, r0, #3
	movs r1, #0xa
	bl Div
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	ldrh r0, [r5, #0x16]
	strh r0, [r4, #6]
	ldrh r0, [r5, #0x18]
	strh r0, [r4, #8]
_08066846:
	ldr r1, [r6, #0x4c]
	adds r1, #0x1e
	str r1, [r6, #0x4c]
	b _0806687C
	.align 2, 0
_08066850: .4byte gUnknown_0868B468
_08066854: .4byte gSelectedCharacter
_08066858: .4byte 0x03000020
_0806685C: .4byte 0x03000021
_08066860: .4byte 0xFFFFFC00
_08066864: .4byte 0x0000012B
_08066868: .4byte gUnknown_0868B478
_0806686C:
	ldr r1, _080668C0 @ =gSineTable
	movs r0, #0xff
	ands r0, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
_0806687C:
	ldr r0, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x48]
	ldr r0, [r6, #0x48]
	asrs r0, r0, #8
	strh r0, [r5, #0x18]
	ldr r0, _080668C4 @ =0x0000012B
	cmp r7, r0
	bhi _08066890
	b _08066980
_08066890:
	adds r0, #1
	cmp r7, r0
	bne _080668D0
	ldr r3, _080668C8 @ =gUnknown_0868B488
	ldr r2, _080668CC @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r4, #6]
	subs r0, r0, r1
	strh r0, [r4, #6]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r5, #0x18]
	subs r0, r0, r1
	b _0806693E
	.align 2, 0
_080668C0: .4byte gSineTable
_080668C4: .4byte 0x0000012B
_080668C8: .4byte gUnknown_0868B488
_080668CC: .4byte gSelectedCharacter
_080668D0:
	ldr r0, _08066910 @ =0x0000012D
	cmp r7, r0
	bne _08066920
	ldr r2, _08066914 @ =gUnknown_0868B488
	ldr r3, _08066918 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, _0806691C @ =gSineTable
	adds r0, #0x58
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldrh r0, [r4, #6]
	adds r1, r1, r0
	strh r1, [r4, #6]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5, #0x18]
	adds r0, r0, r1
	b _0806693E
	.align 2, 0
_08066910: .4byte 0x0000012D
_08066914: .4byte gUnknown_0868B488
_08066918: .4byte gSelectedCharacter
_0806691C: .4byte gSineTable
_08066920:
	ldr r2, _08066974 @ =gSineTable
	ldr r0, _08066978 @ =0xFFFFFED4
	adds r1, r7, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	strh r0, [r4, #6]
	ldrh r0, [r5, #0x18]
_0806693E:
	strh r0, [r4, #8]
	ldrh r0, [r4, #2]
	adds r0, #4
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _08066954
	strh r1, [r4, #2]
_08066954:
	ldrh r0, [r4, #4]
	adds r0, #4
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	ble _08066964
	strh r1, [r4, #4]
_08066964:
	ldr r0, _0806697C @ =0x00001061
	str r0, [r5, #0x10]
	adds r0, r5, #0
	adds r1, r4, #0
	bl TransformSprite
	b _08066986
	.align 2, 0
_08066974: .4byte gSineTable
_08066978: .4byte 0xFFFFFED4
_0806697C: .4byte 0x00001061
_08066980:
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #0x10]
_08066986:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r7, r0
	bhi _0806699A
	adds r0, r5, #0
	bl DisplaySprite
_0806699A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80669A0
sub_80669A0: @ 0x080669A0
	push {r4, r5, r6, r7, lr}
	ldr r0, _080669CC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	mov ip, r5
	ldrh r6, [r5, #0x3c]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r6, r0
	bne _080669D8
	ldr r0, _080669D0 @ =0x03000050
	adds r7, r4, r0
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _08066A16
	ldr r1, _080669D4 @ =gUnknown_0868B408
	b _080669EA
	.align 2, 0
_080669CC: .4byte gCurTask
_080669D0: .4byte 0x03000050
_080669D4: .4byte gUnknown_0868B408
_080669D8:
	cmp r6, #1
	bne _08066A16
	ldr r1, _08066A44 @ =0x03000050
	adds r7, r4, r1
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #0
	beq _08066A16
	ldr r1, _08066A48 @ =gUnknown_0868B3F8
_080669EA:
	ldr r2, _08066A4C @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r3, #0
	strh r0, [r5, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _08066A50 @ =0x03000020
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08066A54 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	strh r3, [r7]
_08066A16:
	ldr r1, _08066A58 @ =gSineTable
	movs r0, #0xff
	ands r6, r0
	lsls r0, r6, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	mov r2, ip
	ldr r0, [r2, #0x48]
	adds r0, r0, r1
	str r0, [r2, #0x48]
	asrs r0, r0, #8
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066A44: .4byte 0x03000050
_08066A48: .4byte gUnknown_0868B3F8
_08066A4C: .4byte gSelectedCharacter
_08066A50: .4byte 0x03000020
_08066A54: .4byte 0x03000021
_08066A58: .4byte gSineTable

	thumb_func_start sub_8066A5C
sub_8066A5C: @ 0x08066A5C
	push {r4, r5, lr}
	ldr r0, _08066AB8 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	ldrh r1, [r0, #0x3c]
	ldr r0, _08066ABC @ =0x0300015C
	adds r4, r5, r0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3f
	ble _08066A82
	movs r0, #0
	strb r0, [r4]
_08066A82:
	adds r0, r1, #0
	movs r1, #0x40
	bl Mod
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #1
	ldr r2, _08066AC0 @ =0x03000050
	adds r3, r5, r2
	adds r3, r3, r1
	ldr r1, _08066AC4 @ =gSineTable
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x1a
	strh r2, [r3]
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #1
	ldr r3, _08066AC8 @ =0x030000D6
	adds r0, r5, r3
	adds r0, r0, r1
	strh r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08066AB8: .4byte gCurTask
_08066ABC: .4byte 0x0300015C
_08066AC0: .4byte 0x03000050
_08066AC4: .4byte gSineTable
_08066AC8: .4byte 0x030000D6

	thumb_func_start sub_8066ACC
sub_8066ACC: @ 0x08066ACC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08066B8C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	mov sl, r6
	ldrh r7, [r6, #0x3c]
	ldr r0, _08066B90 @ =0x0300015C
	adds r5, r4, r0
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3f
	ble _08066AFC
	movs r0, #0
	strb r0, [r5]
_08066AFC:
	adds r0, r7, #0
	movs r1, #0x40
	bl Mod
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r3, _08066B94 @ =0x03000050
	adds r2, r4, r3
	adds r2, r2, r1
	ldr r1, _08066B98 @ =gSineTable
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x1a
	strh r1, [r2]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	ldr r2, _08066B9C @ =0x030000D6
	adds r4, r4, r2
	adds r0, r4, r0
	strh r1, [r0]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r5, #0
	mov r8, r4
	ldr r4, _08066BA0 @ =gUnknown_0868B498
	adds r3, r4, #1
	mov sb, r3
_08066B3C:
	lsls r2, r5, #1
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0xf8
	subs r0, r0, r7
	strh r0, [r6, #0x16]
	movs r1, #0xae
	lsls r1, r1, #1
	add r1, sl
	lsls r0, r5, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #0x3f
	ands r0, r1
	add r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	adds r0, #0x50
	adds r1, r1, r0
	strh r1, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08066B3C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066B8C: .4byte gCurTask
_08066B90: .4byte 0x0300015C
_08066B94: .4byte 0x03000050
_08066B98: .4byte gSineTable
_08066B9C: .4byte 0x030000D6
_08066BA0: .4byte gUnknown_0868B498

	thumb_func_start sub_8066BA4
sub_8066BA4: @ 0x08066BA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08066C60 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	mov sb, r6
	ldrh r1, [r6, #0x3c]
	ldr r0, _08066C64 @ =0x0300015C
	adds r5, r4, r0
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3f
	ble _08066BD2
	movs r0, #0
	strb r0, [r5]
_08066BD2:
	adds r0, r1, #0
	movs r1, #0x40
	bl Mod
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r3, _08066C68 @ =0x03000050
	adds r2, r4, r3
	adds r2, r2, r1
	ldr r1, _08066C6C @ =gSineTable
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x1a
	strh r1, [r2]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	ldr r2, _08066C70 @ =0x030000D6
	adds r4, r4, r2
	adds r0, r4, r0
	strh r1, [r0]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r5, #0
	adds r7, r4, #0
	ldr r4, _08066C74 @ =gUnknown_0868B498
	adds r3, r4, #1
	mov r8, r3
_08066C12:
	lsls r2, r5, #1
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0xbc
	strh r0, [r6, #0x16]
	movs r1, #0xae
	lsls r1, r1, #1
	add r1, sb
	lsls r0, r5, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #0x3f
	ands r0, r1
	add r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r0, #1
	adds r0, r7, r0
	ldrh r0, [r0]
	adds r0, #0x50
	adds r1, r1, r0
	strh r1, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08066C12
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066C60: .4byte gCurTask
_08066C64: .4byte 0x0300015C
_08066C68: .4byte 0x03000050
_08066C6C: .4byte gSineTable
_08066C70: .4byte 0x030000D6
_08066C74: .4byte gUnknown_0868B498

	thumb_func_start sub_8066C78
sub_8066C78: @ 0x08066C78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08066CDC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r7, r6, #0
	ldrh r0, [r6, #0x3c]
	adds r0, #1
	strh r0, [r6, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, _08066CE0 @ =0x03000021
	adds r1, r1, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	mov r8, r1
	ldr r0, _08066CE4 @ =gPseudoRandom
	mov sb, r0
	ldr r1, _08066CE8 @ =0x3C6EF35F
	mov sl, r1
_08066CB8:
	ldr r0, [sp]
	add r0, r8
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08066CEC
	mov r0, r8
	lsls r2, r0, #1
	adds r3, r7, #0
	adds r3, #0xd6
	adds r1, r3, r2
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	adds r4, r2, #0
	adds r2, r7, #0
	adds r2, #0x50
	b _08066D2E
	.align 2, 0
_08066CDC: .4byte gCurTask
_08066CE0: .4byte 0x03000021
_08066CE4: .4byte gPseudoRandom
_08066CE8: .4byte 0x3C6EF35F
_08066CEC:
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _08066D60 @ =0x00196225
	muls r0, r1, r0
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r1, #0x28
	bl Mod
	mov r1, r8
	lsls r4, r1, #1
	adds r5, r7, #0
	adds r5, #0xd6
	adds r1, r5, r4
	adds r0, #0x8c
	strh r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _08066D60 @ =0x00196225
	muls r0, r1, r0
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r1, #0xdc
	bl Mod
	adds r2, r7, #0
	adds r2, #0x50
	adds r1, r2, r4
	adds r0, #0x14
	strh r0, [r1]
	adds r3, r5, #0
_08066D2E:
	adds r0, r2, r4
	ldrh r0, [r0]
	strh r0, [r6, #0x16]
	adds r0, r3, r4
	ldrh r0, [r0]
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0xe
	bls _08066CB8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066D60: .4byte 0x00196225

	thumb_func_start sub_8066D64
sub_8066D64: @ 0x08066D64
	push {r4, r5, lr}
	ldr r0, _08066DBC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r5, r3, #0
	ldrh r2, [r3, #0x3c]
	ldr r0, _08066DC0 @ =gUnknown_0868B4BE
	ldr r1, [r3, #0x44]
	lsls r4, r1, #1
	adds r0, r4, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r2, r0
	bls _08066DB6
	subs r2, r2, r0
	lsls r1, r2, #1
	adds r1, r1, r2
	movs r0, #0x78
	strh r0, [r3, #0x16]
	movs r0, #0xb4
	subs r0, r0, r1
	strh r0, [r3, #0x18]
	ldr r1, _08066DC4 @ =gUnknown_0868B4B8
	adds r1, r4, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	bge _08066DAA
	strh r2, [r3, #0x18]
_08066DAA:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_08066DB6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08066DBC: .4byte gCurTask
_08066DC0: .4byte gUnknown_0868B4BE
_08066DC4: .4byte gUnknown_0868B4B8

	thumb_func_start sub_8066DC8
sub_8066DC8: @ 0x08066DC8
	bx lr
	.align 2, 0

	thumb_func_start sub_8066DCC
sub_8066DCC: @ 0x08066DCC
	bx lr
	.align 2, 0

	thumb_func_start sub_8066DD0
sub_8066DD0: @ 0x08066DD0
	push {r4, lr}
	ldr r0, _08066DF0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066DF0: .4byte gCurTask

	thumb_func_start sub_8066DF4
sub_8066DF4: @ 0x08066DF4
	push {r4, lr}
	ldr r0, _08066E30 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r0, #0x14
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x48]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066E30: .4byte gCurTask

	thumb_func_start sub_8066E34
sub_8066E34: @ 0x08066E34
	push {r4, lr}
	ldr r0, _08066E54 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066E54: .4byte gCurTask

	thumb_func_start sub_8066E58
sub_8066E58: @ 0x08066E58
	bx lr
	.align 2, 0

	thumb_func_start sub_8066E5C
sub_8066E5C: @ 0x08066E5C
	push {r4, lr}
	ldr r0, _08066EB0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r2, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x40]
	cmp r0, #0
	bge _08066E7C
	movs r0, #0
	str r0, [r4, #0x40]
_08066E7C:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	cmp r2, #0x14
	bls _08066E9C
	ldr r0, [r4, #0x48]
	ldr r1, _08066EB4 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, _08066EB8 @ =0xFFFFE200
	cmp r0, r1
	bge _08066E96
	str r1, [r4, #0x48]
_08066E96:
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
_08066E9C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066EB0: .4byte gCurTask
_08066EB4: .4byte 0xFFFFF800
_08066EB8: .4byte 0xFFFFE200

	thumb_func_start sub_8066EBC
sub_8066EBC: @ 0x08066EBC
	push {r4, lr}
	ldr r0, _08066F0C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	adds r4, r2, #0
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	cmp r0, #0
	bge _08066EDC
	movs r0, #0
	str r0, [r2, #0x40]
_08066EDC:
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	strh r0, [r2, #0x16]
	ldr r0, [r2, #0x48]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r2, #0x48]
	ldr r1, _08066F10 @ =0xFFFFE200
	cmp r0, r1
	bge _08066EF4
	str r1, [r2, #0x48]
_08066EF4:
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066F0C: .4byte gCurTask
_08066F10: .4byte 0xFFFFE200

	thumb_func_start sub_8066F14
sub_8066F14: @ 0x08066F14
	push {lr}
	ldr r0, _08066F2C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl UpdateSpriteAnimation
	pop {r0}
	bx r0
	.align 2, 0
_08066F2C: .4byte gCurTask

	thumb_func_start sub_8066F30
sub_8066F30: @ 0x08066F30
	push {r4, lr}
	ldr r0, _08066F84 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r2, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x40]
	cmp r0, #0
	bge _08066F50
	movs r0, #0
	str r0, [r4, #0x40]
_08066F50:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	cmp r2, #0x14
	bls _08066F70
	ldr r0, [r4, #0x48]
	ldr r1, _08066F88 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, _08066F8C @ =0xFFFFE200
	cmp r0, r1
	bge _08066F6A
	str r1, [r4, #0x48]
_08066F6A:
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
_08066F70:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066F84: .4byte gCurTask
_08066F88: .4byte 0xFFFFF800
_08066F8C: .4byte 0xFFFFE200

	thumb_func_start sub_8066F90
sub_8066F90: @ 0x08066F90
	push {r4, lr}
	ldr r0, _08066FD8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	adds r4, r2, #0
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	cmp r0, #0
	bge _08066FB0
	movs r0, #0
	str r0, [r2, #0x40]
_08066FB0:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x48]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066FD8: .4byte gCurTask

	thumb_func_start sub_8066FDC
sub_8066FDC: @ 0x08066FDC
	push {r4, lr}
	ldr r0, _08067018 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldrh r0, [r4, #0x3c]
	ldr r2, _0806701C @ =gSineTable
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldr r0, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067018: .4byte gCurTask
_0806701C: .4byte gSineTable

	thumb_func_start sub_8067020
sub_8067020: @ 0x08067020
	push {lr}
	ldr r0, _08067048 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r0, [r0, #0x3c]
	movs r1, #2
	bl Mod
	cmp r0, #0
	bne _08067042
	ldr r1, _0806704C @ =gBgScrollRegs
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
_08067042:
	pop {r0}
	bx r0
	.align 2, 0
_08067048: .4byte gCurTask
_0806704C: .4byte gBgScrollRegs

	thumb_func_start sub_8067050
sub_8067050: @ 0x08067050
	bx lr
	.align 2, 0

	thumb_func_start sub_8067054
sub_8067054: @ 0x08067054
	push {r4, lr}
	ldr r0, _0806707C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _08067080 @ =0x03000021
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806707C: .4byte gCurTask
_08067080: .4byte 0x03000021

	thumb_func_start sub_8067084
sub_8067084: @ 0x08067084
	push {r4, r5, lr}
	ldr r0, _080670E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	adds r5, r3, #0
	ldrh r1, [r3, #0x3c]
	ldr r0, _080670E4 @ =0x00000167
	cmp r1, r0
	bls _080670D8
	adds r0, #1
	cmp r1, r0
	bne _080670CC
	ldr r1, _080670E8 @ =gUnknown_0868B4A8
	ldr r2, _080670EC @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _080670F0 @ =0x03000020
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _080670F4 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_080670CC:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_080670D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080670E0: .4byte gCurTask
_080670E4: .4byte 0x00000167
_080670E8: .4byte gUnknown_0868B4A8
_080670EC: .4byte gSelectedCharacter
_080670F0: .4byte 0x03000020
_080670F4: .4byte 0x03000021

	thumb_func_start CreateExtraStageResults
CreateExtraStageResults: @ 0x080670F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	ldr r1, _08067470 @ =gLoadedSaveGame
	movs r5, #0
	movs r0, #0xf
	strh r0, [r1, #8]
	ldr r0, _08067474 @ =0x00000424
	adds r1, r1, r0
	movs r2, #1
	strb r2, [r1]
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r7, _08067478 @ =gFlags
	ldr r1, [r7]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r3, _0806747C @ =0x04000200
	ldrh r0, [r3]
	str r0, [sp, #0x50]
	ldr r4, _08067480 @ =0x04000208
	mov r8, r4
	ldrh r0, [r4]
	str r0, [sp, #0x54]
	ldr r0, _08067484 @ =0x04000004
	ldrh r0, [r0]
	add r2, sp, #0x5c
	strh r0, [r2]
	adds r3, r0, #0
	str r3, [sp, #0x58]
	subs r4, #8
	strh r5, [r4]
	ldrh r0, [r4]
	mov r0, r8
	strh r5, [r0]
	ldrh r0, [r0]
	ldr r2, _08067484 @ =0x04000004
	strh r5, [r2]
	ldrh r0, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r7]
	ldr r1, _08067488 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _0806748C @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _08067490 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _08067494 @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	bl WriteSaveGame
	add r3, sp, #0x50
	ldrh r4, [r3]
	ldr r3, _0806747C @ =0x04000200
	strh r4, [r3]
	ldrh r0, [r3]
	add r4, sp, #0x54
	ldrh r0, [r4]
	mov r4, r8
	strh r0, [r4]
	ldrh r0, [r4]
	add r0, sp, #0x58
	ldrh r1, [r0]
	ldr r0, _08067484 @ =0x04000004
	strh r1, [r0]
	ldrh r0, [r0]
	bl m4aSoundVSyncOn
	ldr r0, [r7]
	ldr r1, _08067498 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r7]
	ldr r1, _0806749C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080674A0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080674A4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080674A8 @ =sa2__gUnknown_03005390
	movs r1, #0
	strb r1, [r0]
	ldr r1, _080674AC @ =gVramGraphicsCopyCursor
	ldr r0, _080674B0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_80535FC
	bl UiGfxStackInit
	ldr r1, _080674B4 @ =gDispCnt
	movs r2, #0xba
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080674B8 @ =gBgCntRegs
	ldr r0, _080674BC @ =0x00008583
	strh r0, [r1]
	ldr r0, _080674C0 @ =0x00009E86
	strh r0, [r1, #2]
	ldr r0, _080674C4 @ =0x00009B89
	strh r0, [r1, #4]
	ldr r0, _080674C8 @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	ldr r0, _080674CC @ =sub_8068628
	str r5, [sp]
	movs r1, #0x64
	ldr r2, _080674D0 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x44]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	mov r8, r3
	adds r4, r2, #0
	add r4, r8
	mov ip, r4
	str r5, [r4, #0x3c]
	movs r3, #0xa0
	lsls r3, r3, #8
	str r3, [r4, #0x44]
	ldr r1, _080674D4 @ =0xFFFFE000
	str r1, [r4, #0x54]
	ldr r0, _080674D8 @ =0x06012560
	str r0, [r4, #4]
	movs r0, #0xb7
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	ldr r4, _080674DC @ =0x03000020
	adds r0, r2, r4
	movs r4, #0
	strb r4, [r0]
	mov r0, ip
	strh r3, [r0, #0x16]
	strh r1, [r0, #0x18]
	movs r1, #0xc0
	strh r1, [r0, #0x1a]
	strh r5, [r0, #8]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x1c]
	ldr r3, _080674E0 @ =0x03000021
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r4, _080674E4 @ =0x03000022
	adds r0, r2, r4
	movs r7, #0x10
	strb r7, [r0]
	ldr r0, _080674E8 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	mov r3, ip
	str r2, [r3, #0x28]
	movs r4, #0x80
	lsls r4, r4, #5
	str r4, [r3, #0x10]
	ldr r0, _080674EC @ =sub_8068620
	str r5, [sp]
	movs r1, #0x64
	ldr r2, _080674D0 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x4c]
	ldrh r2, [r0, #6]
	adds r0, r2, #0
	add r0, r8
	mov ip, r0
	str r5, [r0, #0x3c]
	movs r1, #0xf0
	lsls r1, r1, #7
	mov sb, r1
	str r1, [r0, #0x44]
	movs r3, #0xb4
	lsls r3, r3, #7
	mov sl, r3
	str r3, [r0, #0x54]
	ldr r0, _080674F0 @ =0x06010440
	mov r4, ip
	str r0, [r4, #4]
	ldr r0, _080674F4 @ =0x00000325
	strh r0, [r4, #0xa]
	ldr r1, _080674DC @ =0x03000020
	adds r0, r2, r1
	movs r3, #1
	strb r3, [r0]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r4, #0x50
	mov r1, ip
	strh r4, [r1, #0x18]
	movs r3, #0xc0
	strh r3, [r1, #0x1a]
	strh r5, [r1, #8]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	ldr r0, _080674E0 @ =0x03000021
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080674E4 @ =0x03000022
	adds r0, r2, r1
	strb r7, [r0]
	ldr r3, _080674E8 @ =0x03000025
	adds r2, r2, r3
	movs r0, #0
	strb r0, [r2]
	movs r1, #1
	rsbs r1, r1, #0
	mov r2, ip
	str r1, [r2, #0x28]
	str r5, [r2, #0x10]
	ldr r0, _080674F8 @ =sub_8068624
	str r5, [sp]
	movs r1, #0x64
	ldr r2, _080674D0 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x48]
	ldrh r1, [r0, #6]
	adds r3, r1, #0
	add r3, r8
	mov ip, r3
	str r5, [r3, #0x3c]
	mov r0, sb
	str r0, [r3, #0x44]
	mov r2, sl
	str r2, [r3, #0x54]
	ldr r0, _080674FC @ =0x06010560
	str r0, [r3, #4]
	movs r0, #0xb8
	lsls r0, r0, #2
	strh r0, [r3, #0xa]
	ldr r3, _080674DC @ =0x03000020
	adds r0, r1, r3
	movs r2, #0
	strb r2, [r0]
	movs r0, #0x78
	mov r3, ip
	strh r0, [r3, #0x16]
	strh r4, [r3, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r3, #0x1a]
	strh r5, [r3, #8]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0x1c]
	ldr r3, _080674E0 @ =0x03000021
	adds r2, r1, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2]
	ldr r2, _080674E4 @ =0x03000022
	adds r0, r1, r2
	strb r7, [r0]
	adds r3, #4
	adds r1, r1, r3
	movs r0, #0
	strb r0, [r1]
	movs r1, #1
	rsbs r1, r1, #0
	mov r2, ip
	str r1, [r2, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r2, #0x10]
	ldr r0, _08067500 @ =sub_806806C
	str r5, [sp]
	movs r1, #0x64
	ldr r2, _080674D0 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	mov sb, r0
	ldrh r2, [r0, #6]
	adds r0, r2, #0
	add r0, r8
	mov ip, r0
	str r5, [r0, #0x3c]
	movs r0, #0x69
	mov r1, ip
	str r0, [r1, #0x44]
	movs r0, #0x11
	str r0, [r1, #0x54]
	movs r0, #0x2f
	str r0, [r1, #0x48]
	movs r1, #0x5f
	mov r3, ip
	str r1, [r3, #0x58]
	movs r0, #0xd5
	str r0, [r3, #0x4c]
	movs r0, #0x45
	str r0, [r3, #0x5c]
	movs r0, #0xa8
	str r0, [r3, #0x50]
	str r1, [r3, #0x60]
	ldr r0, _08067504 @ =0x06010020
	str r0, [r3, #4]
	ldr r0, _08067508 @ =0x000002DB
	strh r0, [r3, #0xa]
	ldr r1, _080674DC @ =0x03000020
	adds r0, r2, r1
	movs r3, #0
	strb r3, [r0]
	movs r1, #0x78
	mov r0, ip
	strh r1, [r0, #0x16]
	strh r4, [r0, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	mov r3, ip
	strh r0, [r3, #0x1a]
	strh r5, [r3, #8]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0x1c]
	ldr r4, _080674E0 @ =0x03000021
	adds r1, r2, r4
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080674E4 @ =0x03000022
	adds r0, r2, r1
	strb r7, [r0]
	ldr r3, _080674E8 @ =0x03000025
	adds r2, r2, r3
	movs r4, #0
	strb r4, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	mov r1, ip
	str r0, [r1, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #0x10]
	add r7, sp, #0x14
	mov r2, sp
	adds r2, #0x40
	str r2, [sp, #0x70]
	mov r3, sp
	adds r3, #0x3f
	str r3, [sp, #0x6c]
	mov r4, sp
	adds r4, #0x3c
	str r4, [sp, #0x60]
	mov r0, sp
	adds r0, #0x3d
	str r0, [sp, #0x64]
	mov r1, sp
	adds r1, #0x3e
	str r1, [sp, #0x68]
	movs r4, #0
_08067430:
	str r4, [sp]
	ldr r0, _0806750C @ =sub_8068448
	movs r1, #0x64
	ldr r2, _080674D0 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	lsls r1, r5, #2
	add r1, sp
	adds r1, #4
	str r0, [r1]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r2, r1
	mov ip, r2
	str r4, [r2, #0x3c]
	cmp r5, #0
	bne _08067518
	movs r0, #0xc8
	lsls r0, r0, #6
	str r0, [r2, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r2, #0x44]
	movs r0, #0x80
	str r0, [r2, #0x48]
	str r5, [r2, #0x58]
	ldr r0, _08067510 @ =0x06016060
	str r0, [r2, #4]
	ldr r0, _08067514 @ =0x00000316
	b _0806757E
	.align 2, 0
_08067470: .4byte gLoadedSaveGame
_08067474: .4byte 0x00000424
_08067478: .4byte gFlags
_0806747C: .4byte 0x04000200
_08067480: .4byte 0x04000208
_08067484: .4byte 0x04000004
_08067488: .4byte 0x040000B0
_0806748C: .4byte 0x0000C5FF
_08067490: .4byte 0x00007FFF
_08067494: .4byte 0x040000D4
_08067498: .4byte 0xFFFF7FFF
_0806749C: .4byte 0x0000FFFF
_080674A0: .4byte gBackgroundsCopyQueueCursor
_080674A4: .4byte gBackgroundsCopyQueueIndex
_080674A8: .4byte sa2__gUnknown_03005390
_080674AC: .4byte gVramGraphicsCopyCursor
_080674B0: .4byte gVramGraphicsCopyQueueIndex
_080674B4: .4byte gDispCnt
_080674B8: .4byte gBgCntRegs
_080674BC: .4byte 0x00008583
_080674C0: .4byte 0x00009E86
_080674C4: .4byte 0x00009B89
_080674C8: .4byte gBgScrollRegs
_080674CC: .4byte sub_8068628
_080674D0: .4byte 0x00002120
_080674D4: .4byte 0xFFFFE000
_080674D8: .4byte 0x06012560
_080674DC: .4byte 0x03000020
_080674E0: .4byte 0x03000021
_080674E4: .4byte 0x03000022
_080674E8: .4byte 0x03000025
_080674EC: .4byte sub_8068620
_080674F0: .4byte 0x06010440
_080674F4: .4byte 0x00000325
_080674F8: .4byte sub_8068624
_080674FC: .4byte 0x06010560
_08067500: .4byte sub_806806C
_08067504: .4byte 0x06010020
_08067508: .4byte 0x000002DB
_0806750C: .4byte sub_8068448
_08067510: .4byte 0x06016060
_08067514: .4byte 0x00000316
_08067518:
	cmp r5, #1
	bne _08067540
	movs r0, #0xc8
	lsls r0, r0, #7
	mov r2, ip
	str r0, [r2, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r2, #0x44]
	movs r0, #0x40
	str r0, [r2, #0x48]
	str r4, [r2, #0x58]
	ldr r0, _08067538 @ =0x060161A0
	str r0, [r2, #4]
	ldr r0, _0806753C @ =0x00000317
	b _0806757E
	.align 2, 0
_08067538: .4byte 0x060161A0
_0806753C: .4byte 0x00000317
_08067540:
	cmp r5, #2
	bne _08067564
	movs r0, #0xf0
	lsls r0, r0, #7
	mov r2, ip
	str r0, [r2, #0x54]
	str r0, [r2, #0x44]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r2, #0x48]
	str r4, [r2, #0x58]
	ldr r0, _08067560 @ =0x06016440
	str r0, [r2, #4]
	movs r0, #0xc6
	lsls r0, r0, #2
	b _0806757E
	.align 2, 0
_08067560: .4byte 0x06016440
_08067564:
	movs r0, #0xa0
	lsls r0, r0, #5
	mov r2, ip
	str r0, [r2, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r2, #0x44]
	movs r0, #0xc0
	str r0, [r2, #0x48]
	str r4, [r2, #0x58]
	ldr r0, _08067608 @ =0x060170A0
	str r0, [r2, #4]
	ldr r0, _0806760C @ =0x00000319
_0806757E:
	strh r0, [r2, #0xa]
	ldr r3, _08067610 @ =0x03000020
	adds r0, r1, r3
	strb r4, [r0]
	movs r0, #0xb4
	mov r1, ip
	strh r0, [r1, #0x16]
	movs r0, #0x50
	strh r0, [r1, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1, #0x1a]
	strh r4, [r1, #8]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x1c]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r2, ip
	str r0, [r2, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #0x10]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bhi _080675C8
	b _08067430
_080675C8:
	ldr r0, _08067614 @ =sub_8067F38
	ldr r2, _08067618 @ =0x00002120
	movs r4, #0
	str r4, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	adds r5, r0, #0
	ldrh r2, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov ip, r0
	str r4, [r0, #0x3c]
	str r4, [r0, #0x54]
	str r4, [r0, #0x44]
	str r4, [r0, #0x58]
	str r4, [r0, #0x48]
	str r4, [r0, #0x5c]
	str r4, [r0, #0x4c]
	ldr r0, _0806761C @ =0x060100A0
	mov r3, ip
	str r0, [r3, #4]
	ldr r0, _08067620 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	cmp r0, #0
	beq _08067628
	movs r0, #0
	ldr r1, _08067624 @ =0x0000030F
	b _0806762E
	.align 2, 0
_08067608: .4byte 0x060170A0
_0806760C: .4byte 0x00000319
_08067610: .4byte 0x03000020
_08067614: .4byte sub_8067F38
_08067618: .4byte 0x00002120
_0806761C: .4byte 0x060100A0
_08067620: .4byte gLoadedSaveGame
_08067624: .4byte 0x0000030F
_08067628:
	movs r0, #0
	ldr r1, _0806778C @ =0x00000312
	mov r3, ip
_0806762E:
	strh r1, [r3, #0xa]
	ldr r4, _08067790 @ =0x03000020
	adds r1, r2, r4
	strb r0, [r1]
	movs r4, #0
	movs r0, #0x78
	mov r1, ip
	strh r0, [r1, #0x16]
	movs r0, #0x50
	strh r0, [r1, #0x18]
	strh r4, [r1, #0x1a]
	strh r4, [r1, #8]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x1c]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	movs r2, #0
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r3, ip
	str r0, [r3, #0x28]
	movs r0, #0x80
	mov r8, r0
	str r0, [r3, #0x10]
	ldr r0, _08067794 @ =sub_8067824
	movs r2, #0x84
	lsls r2, r2, #6
	str r4, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r4, [r0, #0x38]
	movs r1, #0x3c
	str r1, [r0, #0x3c]
	ldr r1, _08067798 @ =0x03000040
	adds r2, r2, r1
	movs r3, #1
	strb r3, [r2]
	str r5, [r0, #0xc]
	ldr r2, [sp, #0x44]
	str r2, [r0, #0x14]
	mov r1, sb
	str r1, [r0, #0x10]
	ldr r2, [sp, #0x48]
	str r2, [r0, #0x18]
	ldr r1, [sp, #0x4c]
	str r1, [r0, #0x1c]
	ldr r1, [sp, #4]
	str r1, [r0, #0x20]
	ldr r1, [sp, #8]
	str r1, [r0, #0x24]
	ldr r1, [sp, #0xc]
	str r1, [r0, #0x28]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x2c]
	str r4, [r0, #0x44]
	str r4, [r0, #0x48]
	strh r4, [r0]
	strh r3, [r0, #2]
	movs r1, #8
	strh r1, [r0, #4]
	strh r4, [r0, #6]
	mov r2, r8
	strh r2, [r0, #8]
	strb r3, [r0, #0xa]
	bl sub_80543A4
	mov r0, r8
	ldr r4, [sp, #0x70]
	strb r0, [r4]
	movs r6, #2
	ldr r1, [sp, #0x6c]
	strb r6, [r1]
	ldr r0, _0806779C @ =gUnknown_086C5D74
	str r0, [r7, #0x14]
	movs r0, #0xf6
	lsls r0, r0, #5
	str r0, [r7, #0x18]
	ldr r0, _080677A0 @ =gUnknown_086C5B74
	str r0, [r7, #0x20]
	movs r2, #0x80
	lsls r2, r2, #2
	str r2, [r7, #0x24]
	ldr r0, _080677A4 @ =gUnknown_086C7C34
	str r0, [r7, #0x10]
	movs r5, #0xa0
	lsls r5, r5, #4
	str r5, [r7, #0x1c]
	movs r4, #0
	ldr r3, [sp, #0x60]
	strb r4, [r3]
	ldr r0, [sp, #0x64]
	strb r4, [r0]
	movs r4, #0x15
	ldr r1, [sp, #0x68]
	strb r4, [r1]
	adds r0, r7, #0
	bl sub_80528AC
	mov r3, r8
	ldr r2, [sp, #0x70]
	strb r3, [r2]
	movs r1, #0
	ldr r0, [sp, #0x6c]
	strb r1, [r0]
	ldr r0, _080677A8 @ =gUnknown_086BF9B4
	str r0, [r7, #0x14]
	ldr r0, _080677AC @ =0x000057C0
	str r0, [r7, #0x18]
	ldr r0, _080677B0 @ =gUnknown_086BF7B4
	str r0, [r7, #0x20]
	movs r2, #0x80
	lsls r2, r2, #2
	str r2, [r7, #0x24]
	ldr r0, _080677B4 @ =gUnknown_086C5174
	str r0, [r7, #0x10]
	str r5, [r7, #0x1c]
	ldr r3, [sp, #0x60]
	strb r1, [r3]
	ldr r0, [sp, #0x64]
	strb r6, [r0]
	ldr r1, [sp, #0x68]
	strb r4, [r1]
	adds r0, r7, #0
	bl sub_80528AC
	mov r3, r8
	ldr r2, [sp, #0x70]
	strb r3, [r2]
	movs r1, #1
	ldr r0, [sp, #0x6c]
	strb r1, [r0]
	ldr r0, _080677B8 @ =gUnknown_086C8834
	str r0, [r7, #0x14]
	movs r0, #0xd5
	lsls r0, r0, #6
	str r0, [r7, #0x18]
	ldr r0, _080677BC @ =gUnknown_086C8634
	str r0, [r7, #0x20]
	movs r2, #0x80
	lsls r2, r2, #2
	str r2, [r7, #0x24]
	ldr r0, _080677C0 @ =gUnknown_086CBD74
	str r0, [r7, #0x10]
	str r5, [r7, #0x1c]
	movs r0, #0
	ldr r3, [sp, #0x60]
	strb r0, [r3]
	ldr r2, [sp, #0x64]
	strb r1, [r2]
	ldr r3, [sp, #0x68]
	strb r4, [r3]
	adds r0, r7, #0
	bl sub_80528AC
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806778C: .4byte 0x00000312
_08067790: .4byte 0x03000020
_08067794: .4byte sub_8067824
_08067798: .4byte 0x03000040
_0806779C: .4byte gUnknown_086C5D74
_080677A0: .4byte gUnknown_086C5B74
_080677A4: .4byte gUnknown_086C7C34
_080677A8: .4byte gUnknown_086BF9B4
_080677AC: .4byte 0x000057C0
_080677B0: .4byte gUnknown_086BF7B4
_080677B4: .4byte gUnknown_086C5174
_080677B8: .4byte gUnknown_086C8834
_080677BC: .4byte gUnknown_086C8634
_080677C0: .4byte gUnknown_086CBD74

	thumb_func_start sub_80677C4
sub_80677C4: @ 0x080677C4
	push {lr}
	sub sp, #0x30
	cmp r0, #1
	bne _08067810
	bl UiGfxStackInit
	add r1, sp, #0x2c
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x2b
	strb r2, [r0]
	ldr r0, _08067818 @ =gUnknown_086BBE34
	str r0, [sp, #0x14]
	movs r0, #0xa6
	lsls r0, r0, #6
	str r0, [sp, #0x18]
	ldr r0, _0806781C @ =gUnknown_086BBC34
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08067820 @ =gUnknown_086BE7B4
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [sp, #0x1c]
	add r0, sp, #0x28
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	subs r1, #2
	movs r0, #0x15
	strb r0, [r1]
	mov r0, sp
	bl sub_80528AC
_08067810:
	add sp, #0x30
	pop {r0}
	bx r0
	.align 2, 0
_08067818: .4byte gUnknown_086BBE34
_0806781C: .4byte gUnknown_086BBC34
_08067820: .4byte gUnknown_086BE7B4

	thumb_func_start sub_8067824
sub_8067824: @ 0x08067824
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0806785C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r5, #0x10]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r5, #0x38]
	adds r6, r0, #1
	adds r4, r5, #0
	cmp r6, #0x19
	bne _08067860
	bl UiGfxStackInit
	bl sub_80538BC
	b _08067872
	.align 2, 0
_0806785C: .4byte gCurTask
_08067860:
	cmp r6, #0x1e
	bne _08067872
	ldr r0, _080678B8 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _080678BC @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	str r0, [r4, #0x3c]
_08067872:
	ldr r0, [r5, #0x3c]
	cmp r6, r0
	bne _0806787E
	movs r0, #0x27
	bl m4aSongNumStart
_0806787E:
	movs r7, #0x80
	lsls r7, r7, #6
	adds r0, r7, #0
	movs r1, #0x80
	bl Div
	ldr r1, [r5, #0x3c]
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r0, r0, r1
	cmp r0, r6
	bhs _080678CC
	movs r6, #0
	str r6, [r5, #0x38]
	mov r0, r8
	str r6, [r0, #0x3c]
	ldr r0, [r5, #0x10]
	bl TaskDestroy
	ldr r1, [r5, #0xc]
	ldr r0, _080678C0 @ =sub_806853C
	str r0, [r1, #8]
	ldr r0, _080678C4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080678C8 @ =sub_8067928
	str r0, [r1, #8]
	b _0806791C
	.align 2, 0
_080678B8: .4byte gRingCount
_080678BC: .4byte gCourseTime
_080678C0: .4byte sub_806853C
_080678C4: .4byte gCurTask
_080678C8: .4byte sub_8067928
_080678CC:
	adds r0, r7, #0
	movs r1, #0x80
	bl Div
	adds r4, r0, #0
	adds r0, r7, #0
	movs r1, #0x80
	bl Div
	ldr r1, [r5, #0x3c]
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r4, r4, r1
	subs r4, r4, r0
	cmp r4, r6
	bne _08067902
	movs r1, #0
	strh r1, [r5]
	movs r2, #1
	movs r0, #1
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	strh r1, [r5, #6]
	movs r0, #0x80
	strh r0, [r5, #8]
	strb r2, [r5, #0xa]
_08067902:
	adds r0, r5, #0
	bl sub_805423C
	str r6, [r5, #0x38]
	mov r0, r8
	str r6, [r0, #0x3c]
	mov r1, sb
	str r6, [r1, #0x3c]
	ldr r0, [r5, #0x3c]
	mov r2, r8
	str r0, [r2, #0x40]
	ldr r0, [r5, #0x3c]
	str r0, [r1, #0x40]
_0806791C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8067928
sub_8067928: @ 0x08067928
	push {r4, r5, r6, r7, lr}
	ldr r7, _080679BC @ =gCurTask
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r0, [r4, #0x38]
	adds r5, r0, #1
	movs r0, #0x80
	lsls r0, r0, #6
	movs r1, #0x80
	bl Div
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	cmp r0, r5
	bhs _080679B2
	ldr r1, _080679C0 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080679C4 @ =gBgCntRegs
	movs r2, #0
	ldr r0, _080679C8 @ =0x00009B83
	strh r0, [r1]
	strh r2, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r2, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_805423C
	movs r5, #0
	ldr r0, [r4, #0x20]
	ldr r1, _080679CC @ =sub_8068360
	str r1, [r0, #8]
	ldr r0, [r4, #0x24]
	str r1, [r0, #8]
	ldr r0, [r4, #0x28]
	str r1, [r0, #8]
	ldr r0, [r4, #0x2c]
	str r1, [r0, #8]
	ldr r1, [r4, #0x14]
	ldr r0, _080679D0 @ =sub_806862C
	str r0, [r1, #8]
	ldr r1, [r4, #0x18]
	ldr r0, _080679D4 @ =sub_8068214
	str r0, [r1, #8]
	ldr r1, [r4, #0x1c]
	ldr r0, _080679D8 @ =sub_8068148
	str r0, [r1, #8]
	ldr r1, [r4, #0xc]
	ldr r0, _080679DC @ =sub_806856C
	str r0, [r1, #8]
	ldr r1, [r7]
	ldr r0, _080679E0 @ =sub_80679E4
	str r0, [r1, #8]
_080679B2:
	str r5, [r4, #0x38]
	str r5, [r6, #0x3c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080679BC: .4byte gCurTask
_080679C0: .4byte gDispCnt
_080679C4: .4byte gBgCntRegs
_080679C8: .4byte 0x00009B83
_080679CC: .4byte sub_8068360
_080679D0: .4byte sub_806862C
_080679D4: .4byte sub_8068214
_080679D8: .4byte sub_8068148
_080679DC: .4byte sub_806856C
_080679E0: .4byte sub_80679E4

	thumb_func_start sub_80679E4
sub_80679E4: @ 0x080679E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08067AA8 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r4, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r4, #0x38]
	adds r5, r0, #1
	adds r0, r5, #0
	bl sub_80677C4
	movs r7, #0
	movs r0, #0
	mov r8, r0
	movs r0, #0x94
	lsls r0, r0, #1
	ldr r1, _08067AAC @ =gBgScrollRegs
	strh r0, [r1, #2]
	ldr r6, _08067AB0 @ =0x00000336
	cmp r5, r6
	bls _08067AC4
	movs r5, #0
	str r5, [r4, #0x38]
	mov r0, sb
	str r5, [r0, #0x3c]
	ldr r0, [r4, #0x20]
	bl TaskDestroy
	ldr r0, [r4, #0x24]
	bl TaskDestroy
	ldr r0, [r4, #0x28]
	bl TaskDestroy
	ldr r0, [r4, #0x2c]
	bl TaskDestroy
	ldr r0, [r4, #0x1c]
	bl TaskDestroy
	ldr r0, [r4, #0x14]
	bl TaskDestroy
	ldr r0, [r4, #0x18]
	bl TaskDestroy
	ldr r1, [r4, #0xc]
	ldr r0, _08067AB4 @ =sub_8068570
	str r0, [r1, #8]
	ldr r0, _08067AA8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08067AB8 @ =sub_8067B14
	str r0, [r1, #8]
	ldr r0, _08067ABC @ =sa2__gUnknown_03004D80
	strb r7, [r0]
	ldr r1, _08067AC0 @ =sa2__gUnknown_03002280
	strb r7, [r1]
	strb r7, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x14
	strb r0, [r1, #3]
	ldr r1, _08067AAC @ =gBgScrollRegs
	strh r5, [r1, #2]
	strh r5, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r5, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	b _08067B02
	.align 2, 0
_08067AA8: .4byte gCurTask
_08067AAC: .4byte gBgScrollRegs
_08067AB0: .4byte 0x00000336
_08067AB4: .4byte sub_8068570
_08067AB8: .4byte sub_8067B14
_08067ABC: .4byte sa2__gUnknown_03004D80
_08067AC0: .4byte sa2__gUnknown_03002280
_08067AC4:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r1, #0x80
	bl Div
	subs r0, r6, r0
	cmp r0, r5
	bne _08067AEA
	mov r0, r8
	strh r0, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	mov r0, r8
	strh r0, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
_08067AEA:
	adds r0, r4, #0
	bl sub_805423C
	str r5, [r4, #0x38]
	mov r1, sb
	str r5, [r1, #0x3c]
	ldr r0, [sp]
	str r5, [r0, #0x3c]
	ldr r1, [sp, #4]
	str r5, [r1, #0x3c]
	mov r0, sl
	str r5, [r0, #0x3c]
_08067B02:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8067B14
sub_8067B14: @ 0x08067B14
	push {r4, r5, r6, r7, lr}
	ldr r3, _08067B5C @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r2, [r4, #0xc]
	ldrh r0, [r2, #6]
	adds r7, r0, r1
	ldr r0, [r4, #0x38]
	adds r5, r0, #1
	movs r6, #0xc8
	lsls r6, r6, #1
	cmp r5, r6
	bls _08067B68
	movs r5, #0
	str r5, [r4, #0x38]
	str r5, [r7, #0x3c]
	strh r5, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r5, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	ldr r0, _08067B60 @ =sub_80685C8
	str r0, [r2, #8]
	ldr r1, [r3]
	ldr r0, _08067B64 @ =sub_8067B9C
	str r0, [r1, #8]
	b _08067B96
	.align 2, 0
_08067B5C: .4byte gCurTask
_08067B60: .4byte sub_80685C8
_08067B64: .4byte sub_8067B9C
_08067B68:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r1, #0x80
	bl Div
	subs r0, r6, r0
	cmp r0, r5
	bne _08067B8C
	movs r1, #0
	strh r1, [r4]
	movs r2, #1
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r2, [r4, #0xa]
_08067B8C:
	adds r0, r4, #0
	bl sub_805423C
	str r5, [r4, #0x38]
	str r5, [r7, #0x3c]
_08067B96:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8067B9C
sub_8067B9C: @ 0x08067B9C
	push {r4, r5, r6, r7, lr}
	ldr r3, _08067BE4 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r2, [r4, #0xc]
	ldrh r0, [r2, #6]
	adds r7, r0, r1
	ldr r0, [r4, #0x38]
	adds r5, r0, #1
	movs r6, #0xc8
	lsls r6, r6, #1
	cmp r5, r6
	bls _08067BF0
	movs r5, #0
	str r5, [r4, #0x38]
	str r5, [r7, #0x3c]
	strh r5, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r5, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	ldr r0, _08067BE8 @ =sub_8067F9C
	str r0, [r2, #8]
	ldr r1, [r3]
	ldr r0, _08067BEC @ =sub_8067C24
	str r0, [r1, #8]
	b _08067C1E
	.align 2, 0
_08067BE4: .4byte gCurTask
_08067BE8: .4byte sub_8067F9C
_08067BEC: .4byte sub_8067C24
_08067BF0:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r1, #0x80
	bl Div
	subs r0, r6, r0
	cmp r0, r5
	bne _08067C14
	movs r1, #0
	strh r1, [r4]
	movs r2, #1
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r2, [r4, #0xa]
_08067C14:
	adds r0, r4, #0
	bl sub_805423C
	str r5, [r4, #0x38]
	str r5, [r7, #0x3c]
_08067C1E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8067C24
sub_8067C24: @ 0x08067C24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08067CAC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	mov r1, sb
	ldr r0, [r1, #0x38]
	adds r2, r0, #1
	str r2, [sp, #0x10]
	subs r0, #0xb3
	cmp r0, #0x80
	bhi _08067D28
	lsrs r7, r0, #4
	movs r0, #2
	mov r8, r0
	movs r1, #0x1f
	mov ip, r1
	movs r2, #0xf8
	lsls r2, r2, #7
	mov sl, r2
_08067C64:
	mov r0, r8
	lsls r2, r0, #1
	ldr r1, _08067CB0 @ =gUiPaletteSoundTestBox3
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r3, #0x1f
	ands r3, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r5, r0, #5
	mov r0, sl
	ands r0, r1
	lsrs r4, r0, #0xa
	ldr r0, _08067CB4 @ =gUiPaletteSoundTestBox4
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r2, #0x1f
	ands r2, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r6, r0, #5
	mov r0, sl
	ands r0, r1
	lsrs r1, r0, #0xa
	cmp r3, r2
	bls _08067CB8
	subs r0, r3, r2
	muls r0, r7, r0
	lsrs r0, r0, #3
	subs r3, r3, r0
	mov r2, ip
	ands r3, r2
	b _08067CC4
	.align 2, 0
_08067CAC: .4byte gCurTask
_08067CB0: .4byte gUiPaletteSoundTestBox3
_08067CB4: .4byte gUiPaletteSoundTestBox4
_08067CB8:
	subs r0, r2, r3
	muls r0, r7, r0
	lsrs r0, r0, #3
	adds r3, r3, r0
	mov r0, ip
	ands r3, r0
_08067CC4:
	cmp r5, r6
	bls _08067CD2
	subs r0, r5, r6
	muls r0, r7, r0
	lsrs r0, r0, #3
	subs r0, r5, r0
	b _08067CDA
_08067CD2:
	subs r0, r6, r5
	muls r0, r7, r0
	lsrs r0, r0, #3
	adds r0, r5, r0
_08067CDA:
	mov r2, ip
	ands r0, r2
	lsls r5, r0, #5
	cmp r4, r1
	bls _08067CF2
	subs r0, r4, r1
	muls r0, r7, r0
	lsrs r0, r0, #3
	subs r0, r4, r0
	mov r1, ip
	ands r0, r1
	b _08067CFE
_08067CF2:
	subs r0, r1, r4
	muls r0, r7, r0
	lsrs r0, r0, #3
	adds r0, r4, r0
	mov r2, ip
	ands r0, r2
_08067CFE:
	lsls r4, r0, #0xa
	orrs r3, r5
	orrs r4, r3
	mov r0, r8
	adds r0, #0xe0
	lsls r0, r0, #1
	ldr r1, _08067D88 @ =gObjPalette
	adds r0, r0, r1
	strh r4, [r0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xf
	bls _08067C64
	ldr r2, _08067D8C @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_08067D28:
	movs r0, #0xc8
	lsls r0, r0, #1
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bhi _08067D34
	b _08067E32
_08067D34:
	movs r2, #0
	str r2, [sp, #0x10]
	mov r8, r2
	mov r7, sb
	adds r7, #0x2c
	movs r4, #0
	ldr r6, _08067D90 @ =0x00000311
_08067D42:
	str r4, [sp]
	ldr r0, _08067D94 @ =sub_8066D64
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08067D98 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	mov r1, r8
	lsls r2, r1, #2
	mov r1, sp
	adds r1, r1, r2
	adds r1, #4
	str r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	strh r4, [r3, #0x3c]
	movs r0, #0xf
	str r0, [r3, #0x4c]
	str r4, [r3, #0x48]
	mov r0, r8
	str r0, [r3, #0x44]
	str r4, [r3, #0x40]
	adds r5, r2, #0
	cmp r0, #0
	bne _08067DA4
	ldr r0, _08067D9C @ =0x06016060
	str r0, [r3, #4]
	strh r6, [r3, #0xa]
	ldr r2, _08067DA0 @ =0x03000020
	adds r0, r1, r2
	strb r4, [r0]
	b _08067DD2
	.align 2, 0
_08067D88: .4byte gObjPalette
_08067D8C: .4byte gFlags
_08067D90: .4byte 0x00000311
_08067D94: .4byte sub_8066D64
_08067D98: .4byte 0x00002120
_08067D9C: .4byte 0x06016060
_08067DA0: .4byte 0x03000020
_08067DA4:
	mov r0, r8
	cmp r0, #1
	bne _08067DC4
	ldr r0, _08067DBC @ =0x06016920
	str r0, [r3, #4]
	strh r6, [r3, #0xa]
	ldr r2, _08067DC0 @ =0x03000020
	adds r0, r1, r2
	mov r1, r8
	strb r1, [r0]
	b _08067DD2
	.align 2, 0
_08067DBC: .4byte 0x06016920
_08067DC0: .4byte 0x03000020
_08067DC4:
	ldr r0, _08067E54 @ =0x06016E20
	str r0, [r3, #4]
	strh r6, [r3, #0xa]
	ldr r2, _08067E58 @ =0x03000020
	adds r1, r1, r2
	movs r0, #2
	strb r0, [r1]
_08067DD2:
	movs r0, #0xb4
	strh r0, [r3, #0x16]
	movs r0, #0x50
	strh r0, [r3, #0x18]
	strh r4, [r3, #0x1a]
	strh r4, [r3, #8]
	strh r4, [r3, #0x14]
	strh r4, [r3, #0x1c]
	adds r1, r3, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x25
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r1, r7, r5
	mov r0, sp
	adds r0, r0, r5
	adds r0, #4
	ldr r0, [r0]
	str r0, [r1]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #2
	bls _08067D42
	mov r0, sb
	ldr r1, [r0, #0xc]
	ldr r0, _08067E5C @ =sub_8068004
	str r0, [r1, #8]
	ldr r0, _08067E60 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08067E64 @ =sub_8067E68
	str r0, [r1, #8]
_08067E32:
	mov r0, sb
	bl sub_805423C
	ldr r1, [sp, #0x10]
	mov r2, sb
	str r1, [r2, #0x38]
	ldr r0, [sp, #0x14]
	str r1, [r0, #0x3c]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067E54: .4byte 0x06016E20
_08067E58: .4byte 0x03000020
_08067E5C: .4byte sub_8068004
_08067E60: .4byte gCurTask
_08067E64: .4byte sub_8067E68

	thumb_func_start sub_8067E68
sub_8067E68: @ 0x08067E68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r0, _08067ECC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r4, #0x30]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r4, #0x34]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r7, [r4, #0x38]
	adds r5, r7, #1
	movs r6, #0xc8
	lsls r6, r6, #1
	cmp r5, r6
	bls _08067EE8
	ldr r1, _08067ED0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08067ED4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08067ED8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08067EDC @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08067EE0 @ =gVramGraphicsCopyCursor
	ldr r0, _08067EE4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateStaffCredits
	b _08067F28
	.align 2, 0
_08067ECC: .4byte gCurTask
_08067ED0: .4byte 0x0000FFFF
_08067ED4: .4byte gBackgroundsCopyQueueCursor
_08067ED8: .4byte gBackgroundsCopyQueueIndex
_08067EDC: .4byte sa2__gUnknown_03005390
_08067EE0: .4byte gVramGraphicsCopyCursor
_08067EE4: .4byte gVramGraphicsCopyQueueIndex
_08067EE8:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r1, #0x80
	bl Div
	subs r0, r6, r0
	cmp r0, r5
	bne _08067F0C
	movs r1, #0
	strh r1, [r4]
	movs r2, #1
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r2, [r4, #0xa]
_08067F0C:
	adds r0, r4, #0
	bl sub_805423C
	str r5, [r4, #0x38]
	mov r0, r8
	str r5, [r0, #0x3c]
	ldr r0, [sp]
	ldr r2, _08067F34 @ =0x0000014B
	adds r1, r7, r2
	strh r1, [r0, #0x3c]
	ldr r0, [sp, #4]
	strh r1, [r0, #0x3c]
	ldr r0, [sp, #8]
	strh r1, [r0, #0x3c]
_08067F28:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067F34: .4byte 0x0000014B

	thumb_func_start sub_8067F38
sub_8067F38: @ 0x08067F38
	ldr r0, _08067F94 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r1, [r2, #0x3c]
	ldr r0, [r2, #0x40]
	adds r0, #0x3c
	cmp r0, r1
	bhi _08067F92
	ldr r0, [r2, #0x54]
	adds r0, #0x55
	str r0, [r2, #0x54]
	ldr r1, _08067F98 @ =gBgScrollRegs
	asrs r0, r0, #8
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x47
	ble _08067F66
	movs r0, #0x47
	strh r0, [r1, #2]
_08067F66:
	ldr r0, [r2, #0x58]
	adds r0, #0x60
	str r0, [r2, #0x58]
	asrs r0, r0, #8
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x50
	ble _08067F7C
	movs r0, #0x50
	strh r0, [r1, #6]
_08067F7C:
	ldr r0, [r2, #0x5c]
	adds r0, #0xc0
	str r0, [r2, #0x5c]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _08067F92
	movs r0, #0xa0
	strh r0, [r1, #0xa]
_08067F92:
	bx lr
	.align 2, 0
_08067F94: .4byte gCurTask
_08067F98: .4byte gBgScrollRegs

	thumb_func_start sub_8067F9C
sub_8067F9C: @ 0x08067F9C
	push {r4, lr}
	ldr r0, _08067FF0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _08067FDC
	ldr r0, _08067FF4 @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08067FF8 @ =0x060126E0
	str r0, [r4, #4]
	movs r1, #0
	ldr r0, _08067FFC @ =0x000002DE
	strh r0, [r4, #0xa]
	ldr r3, _08068000 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
_08067FDC:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067FF0: .4byte gCurTask
_08067FF4: .4byte 0x03000021
_08067FF8: .4byte 0x060126E0
_08067FFC: .4byte 0x000002DE
_08068000: .4byte 0x03000020

	thumb_func_start sub_8068004
sub_8068004: @ 0x08068004
	push {r4, lr}
	ldr r0, _08068058 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _08068044
	ldr r0, _0806805C @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08068060 @ =0x060126E0
	str r0, [r4, #4]
	ldr r0, _08068064 @ =0x000002DE
	strh r0, [r4, #0xa]
	ldr r0, _08068068 @ =0x03000020
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
_08068044:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068058: .4byte gCurTask
_0806805C: .4byte 0x03000021
_08068060: .4byte 0x060126E0
_08068064: .4byte 0x000002DE
_08068068: .4byte 0x03000020

	thumb_func_start sub_806806C
sub_806806C: @ 0x0806806C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080680DC @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r4, [r7, #0x3c]
	ldr r0, [r7, #0x40]
	cmp r4, r0
	bls _0806812C
	subs r0, r4, r0
	movs r1, #0x10
	bl Div
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r7, #0x40]
	subs r0, r4, r0
	movs r1, #0x10
	bl Mod
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r5, #0
	beq _080680A4
	cmp r5, #2
	bne _080680E8
_080680A4:
	cmp r5, #2
	bne _080680AA
	movs r5, #3
_080680AA:
	adds r4, r7, #0
	cmp r0, #0
	bne _080680B8
	ldr r0, _080680E0 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_080680B8:
	lsls r1, r5, #2
	ldr r2, _080680E4 @ =0x03000044
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r4, #0x16]
	adds r2, #0x10
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _0806812C
	.align 2, 0
_080680DC: .4byte gCurTask
_080680E0: .4byte 0x03000021
_080680E4: .4byte 0x03000044
_080680E8:
	cmp r5, #1
	bne _0806812C
	adds r4, r7, #0
	cmp r0, #0
	bne _080680FA
	ldr r0, _08068134 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_080680FA:
	ldr r1, _08068138 @ =0x03000048
	adds r0, r6, r1
	ldr r0, [r0]
	strh r0, [r4, #0x16]
	ldr r2, _0806813C @ =0x03000058
	adds r0, r6, r2
	ldr r0, [r0]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _08068140 @ =0x0300004C
	adds r0, r6, r1
	ldr r0, [r0]
	strh r0, [r4, #0x16]
	ldr r2, _08068144 @ =0x0300005C
	adds r0, r6, r2
	ldr r0, [r0]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
_0806812C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068134: .4byte 0x03000021
_08068138: .4byte 0x03000048
_0806813C: .4byte 0x03000058
_08068140: .4byte 0x0300004C
_08068144: .4byte 0x0300005C

	thumb_func_start sub_8068148
sub_8068148: @ 0x08068148
	push {r4, r5, r6, lr}
	ldr r0, _0806816C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	adds r5, r4, #0
	ldr r2, [r4, #0x3c]
	cmp r2, #0x78
	bne _08068174
	movs r1, #0
	movs r0, #0xbf
	strh r0, [r4, #0xa]
	ldr r6, _08068170 @ =0x03000020
	adds r0, r3, r6
	strb r1, [r0]
	b _08068188
	.align 2, 0
_0806816C: .4byte gCurTask
_08068170: .4byte 0x03000020
_08068174:
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r2, r0
	bne _08068190
	movs r0, #0xbf
	strh r0, [r4, #0xa]
	ldr r6, _080681B0 @ =0x03000020
	adds r1, r3, r6
	movs r0, #1
	strb r0, [r1]
_08068188:
	ldr r0, _080681B4 @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_08068190:
	ldr r0, _080681B8 @ =0x00000257
	cmp r2, r0
	bhi _080681C0
	movs r0, #0xff
	ands r2, r0
	ldr r1, _080681BC @ =gSineTable
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x19
	ldr r0, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	b _080681F6
	.align 2, 0
_080681B0: .4byte 0x03000020
_080681B4: .4byte 0x03000021
_080681B8: .4byte 0x00000257
_080681BC: .4byte gSineTable
_080681C0:
	ldr r0, _080681E4 @ =0x00000296
	cmp r2, r0
	bhi _080681F0
	ldr r1, _080681E8 @ =gSineTable
	ldr r3, _080681EC @ =0xFFFFFDA8
	adds r0, r2, r3
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	movs r1, #0x1a
	bl Div
	ldr r1, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x54]
	b _080681F6
	.align 2, 0
_080681E4: .4byte 0x00000296
_080681E8: .4byte gSineTable
_080681EC: .4byte 0xFFFFFDA8
_080681F0:
	movs r0, #0x8c
	lsls r0, r0, #8
	str r0, [r5, #0x44]
_080681F6:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r5, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8068214
sub_8068214: @ 0x08068214
	push {r4, r5, r6, r7, lr}
	ldr r0, _08068244 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	adds r6, r4, #0
	adds r0, #0x30
	adds r7, r2, r0
	ldr r5, [r4, #0x3c]
	ldr r0, _08068248 @ =0x00000257
	cmp r5, r0
	bhi _08068250
	movs r0, #0xff
	ands r5, r0
	ldr r1, _0806824C @ =gSineTable
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x19
	b _0806826A
	.align 2, 0
_08068244: .4byte gCurTask
_08068248: .4byte 0x00000257
_0806824C: .4byte gSineTable
_08068250:
	ldr r0, _08068288 @ =0x00000296
	cmp r5, r0
	bhi _08068294
	ldr r1, _0806828C @ =gSineTable
	ldr r2, _08068290 @ =0xFFFFFDA8
	adds r0, r5, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x1a
	bl Div
_0806826A:
	ldr r1, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x54]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	asrs r1, r1, #8
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08068348
	.align 2, 0
_08068288: .4byte 0x00000296
_0806828C: .4byte gSineTable
_08068290: .4byte 0xFFFFFDA8
_08068294:
	ldr r1, _080682C8 @ =0x000002BB
	cmp r5, r1
	bhi _080682DC
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r4, #0x44]
	str r0, [r4, #0x54]
	cmp r5, r1
	bne _08068348
	movs r1, #0
	ldr r0, _080682CC @ =0x000002DF
	strh r0, [r4, #0xa]
	ldr r3, _080682D0 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	ldr r0, _080682D4 @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080682D8 @ =0x0000106B
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _08068348
	.align 2, 0
_080682C8: .4byte 0x000002BB
_080682CC: .4byte 0x000002DF
_080682D0: .4byte 0x03000020
_080682D4: .4byte 0x03000021
_080682D8: .4byte 0x0000106B
_080682DC:
	ldr r1, _08068350 @ =gSineTable
	ldr r0, _08068354 @ =0x000003BB
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r0, r4, #0
	movs r1, #0x24
	bl Div
	ldr r1, [r6, #0x54]
	adds r1, r1, r0
	str r1, [r6, #0x54]
	adds r0, r4, #0
	movs r1, #0x12
	bl Div
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	ldr r3, _08068358 @ =0xFFFFFD44
	adds r2, r5, r3
	lsls r1, r2, #1
	ldr r3, _0806835C @ =0x000003FF
	adds r0, r3, #0
	bics r0, r1
	strh r0, [r7]
	adds r1, r1, r2
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r7, #2]
	strh r0, [r7, #4]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	strh r0, [r7, #6]
	ldr r0, [r6, #0x54]
	asrs r0, r0, #8
	strh r0, [r7, #8]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	strh r0, [r6, #0x16]
	ldr r0, [r6, #0x54]
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	adds r1, r7, #0
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
_08068348:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068350: .4byte gSineTable
_08068354: .4byte 0x000003BB
_08068358: .4byte 0xFFFFFD44
_0806835C: .4byte 0x000003FF

	thumb_func_start sub_8068360
sub_8068360: @ 0x08068360
	push {r4, lr}
	ldr r0, _080683CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	adds r4, r2, #0
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	adds r0, r0, r1
	str r0, [r2, #0x44]
	movs r3, #0x88
	lsls r3, r3, #9
	cmp r0, r3
	ble _08068384
	ldr r0, _080683D0 @ =0xFFFF8800
	str r0, [r2, #0x44]
_08068384:
	ldr r1, [r2, #0x44]
	ldr r0, _080683D0 @ =0xFFFF8800
	cmp r1, r0
	bge _0806838E
	str r3, [r2, #0x44]
_0806838E:
	ldr r0, [r2, #0x54]
	ldr r1, [r2, #0x58]
	adds r0, r0, r1
	str r0, [r2, #0x54]
	movs r3, #0xac
	lsls r3, r3, #8
	cmp r0, r3
	ble _080683A2
	ldr r0, _080683D4 @ =0xFFFFF000
	str r0, [r2, #0x54]
_080683A2:
	ldr r1, [r2, #0x54]
	ldr r0, _080683D4 @ =0xFFFFF000
	cmp r1, r0
	bge _080683AC
	str r3, [r2, #0x54]
_080683AC:
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080683CC: .4byte gCurTask
_080683D0: .4byte 0xFFFF8800
_080683D4: .4byte 0xFFFFF000

	thumb_func_start sub_80683D8
sub_80683D8: @ 0x080683D8
	push {r4, lr}
	ldr r0, _08068440 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldr r1, [r3, #0x44]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r1, r2
	ldr r0, [r3, #0x54]
	adds r0, r0, r2
	str r0, [r3, #0x54]
	ldr r0, [r3, #0x48]
	adds r1, r1, r0
	str r1, [r3, #0x44]
	movs r0, #0x88
	lsls r0, r0, #9
	cmp r1, r0
	ble _0806840A
	ldr r2, _08068444 @ =0xFFFED400
	adds r0, r1, r2
	str r0, [r3, #0x44]
_0806840A:
	ldr r0, [r3, #0x54]
	ldr r1, [r3, #0x58]
	adds r1, r0, r1
	str r1, [r3, #0x54]
	movs r0, #0xac
	lsls r0, r0, #8
	cmp r1, r0
	ble _08068420
	ldr r2, _08068444 @ =0xFFFED400
	adds r0, r1, r2
	str r0, [r3, #0x54]
_08068420:
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068440: .4byte gCurTask
_08068444: .4byte 0xFFFED400

	thumb_func_start sub_8068448
sub_8068448: @ 0x08068448
	bx lr
	.align 2, 0

	thumb_func_start sub_806844C
sub_806844C: @ 0x0806844C
	push {r4, lr}
	ldr r0, _080684A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r2, r4, #0
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x54]
	ldr r1, _080684AC @ =0xFFFFF000
	cmp r0, r1
	bge _0806848A
	movs r0, #0xac
	lsls r0, r0, #8
	str r0, [r4, #0x54]
	ldr r1, [r4, #0x48]
	movs r0, #0xc8
	muls r1, r0, r1
	ldr r0, [r4, #0x44]
	adds r1, r0, r1
	str r1, [r4, #0x44]
	movs r0, #0x88
	lsls r0, r0, #9
	cmp r1, r0
	ble _0806848A
	ldr r3, _080684B0 @ =0xFFFED400
	adds r0, r1, r3
	str r0, [r4, #0x44]
_0806848A:
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r2, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080684A8: .4byte gCurTask
_080684AC: .4byte 0xFFFFF000
_080684B0: .4byte 0xFFFED400

	thumb_func_start sub_80684B4
sub_80684B4: @ 0x080684B4
	push {r4, lr}
	ldr r0, _080684EC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x54]
	ldr r0, _080684F0 @ =0xFFFFF000
	cmp r2, r0
	blt _080684E6
	ldr r1, [r4, #0x58]
	adds r1, r2, r1
	str r1, [r4, #0x54]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	asrs r1, r1, #8
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080684E6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080684EC: .4byte gCurTask
_080684F0: .4byte 0xFFFFF000

	thumb_func_start sub_80684F4
sub_80684F4: @ 0x080684F4
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08068514 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	cmp r2, #0x19
	bne _08068518
	bl UiGfxStackInit
	bl sub_80538BC
	b _0806852A
	.align 2, 0
_08068514: .4byte gCurTask
_08068518:
	cmp r2, #0x1e
	bne _0806852A
	ldr r0, _08068530 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08068534 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	str r0, [r4, #0x3c]
_0806852A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068530: .4byte gRingCount
_08068534: .4byte gCourseTime

	thumb_func_start sub_8068538
sub_8068538: @ 0x08068538
	bx lr
	.align 2, 0

	thumb_func_start sub_806853C
sub_806853C: @ 0x0806853C
	push {r4, lr}
	ldr r0, _08068564 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, [r4, #0x3c]
	ldr r0, _08068568 @ =0x00000257
	cmp r1, r0
	bhi _0806855E
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0806855E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068564: .4byte gCurTask
_08068568: .4byte 0x00000257

	thumb_func_start sub_806856C
sub_806856C: @ 0x0806856C
	bx lr
	.align 2, 0

	thumb_func_start sub_8068570
sub_8068570: @ 0x08068570
	push {r4, r5, lr}
	ldr r0, _080685B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r3, [r4, #0x3c]
	cmp r3, #0
	bne _080685A6
	adds r0, #0x21
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080685BC @ =0x060126E0
	str r0, [r4, #4]
	movs r1, #0
	ldr r0, _080685C0 @ =0x000002DD
	strh r0, [r4, #0xa]
	ldr r5, _080685C4 @ =0x03000020
	adds r0, r2, r5
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	str r3, [r4, #0x10]
_080685A6:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080685B8: .4byte gCurTask
_080685BC: .4byte 0x060126E0
_080685C0: .4byte 0x000002DD
_080685C4: .4byte 0x03000020

	thumb_func_start sub_80685C8
sub_80685C8: @ 0x080685C8
	push {r4, lr}
	ldr r0, _08068610 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r3, [r4, #0x3c]
	cmp r3, #0
	bne _080685FE
	adds r0, #0x21
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08068614 @ =0x060126E0
	str r0, [r4, #4]
	ldr r0, _08068618 @ =0x000002DD
	strh r0, [r4, #0xa]
	ldr r0, _0806861C @ =0x03000020
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	str r3, [r4, #0x10]
_080685FE:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068610: .4byte gCurTask
_08068614: .4byte 0x060126E0
_08068618: .4byte 0x000002DD
_0806861C: .4byte 0x03000020

	thumb_func_start sub_8068620
sub_8068620: @ 0x08068620
	bx lr
	.align 2, 0

	thumb_func_start sub_8068624
sub_8068624: @ 0x08068624
	bx lr
	.align 2, 0

	thumb_func_start sub_8068628
sub_8068628: @ 0x08068628
	bx lr
	.align 2, 0

	thumb_func_start sub_806862C
sub_806862C: @ 0x0806862C
	push {r4, lr}
	ldr r0, _08068680 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	adds r4, r1, #0
	ldr r0, [r1, #0x3c]
	cmp r0, #0xb4
	bls _08068678
	ldr r0, [r1, #0x44]
	subs r0, #0x60
	str r0, [r1, #0x44]
	ldr r2, _08068684 @ =0xFFFFC000
	cmp r0, r2
	bge _08068650
	str r2, [r1, #0x44]
_08068650:
	ldr r0, [r1, #0x54]
	adds r0, #0x30
	str r0, [r1, #0x54]
	movs r2, #0x80
	lsls r2, r2, #6
	cmp r0, r2
	ble _08068660
	str r2, [r1, #0x54]
_08068660:
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08068678:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068680: .4byte gCurTask
_08068684: .4byte 0xFFFFC000

	thumb_func_start CreateSpecialStageIntro
CreateSpecialStageIntro: @ 0x08068688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _0806887C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08068880 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08068884 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08068888 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0806888C @ =gVramGraphicsCopyCursor
	ldr r0, _08068890 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_80535FC
	bl UiGfxStackInit
	ldr r1, _08068894 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08068898 @ =gBgCntRegs
	movs r4, #0
	ldr r0, _0806889C @ =0x00009D86
	strh r0, [r1]
	ldr r1, _080688A0 @ =gBgScrollRegs
	strh r4, [r1]
	movs r0, #0x94
	lsls r0, r0, #1
	strh r0, [r1, #2]
	ldr r0, _080688A4 @ =Task_SpecialStageIntroInit
	ldr r6, _080688A8 @ =0x00002120
	str r4, [sp]
	movs r1, #0xc4
	adds r2, r6, #0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #8]
	ldrh r2, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r7, r2, r5
	ldr r0, _080688AC @ =0x06010020
	str r0, [r7, #4]
	ldr r1, _080688B0 @ =gUnknown_0868B584
	ldr r3, _080688B4 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _080688B8 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r0, #0xb4
	strh r0, [r7, #0x18]
	adds r0, #0xcc
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r0, _080688BC @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r3, #2
	adds r1, r2, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080688C0 @ =0x03000025
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
	subs r0, #2
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	str r4, [r7, #0x30]
	ldr r0, _080688C4 @ =0xFFFFFF00
	str r0, [r7, #0x3c]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r7, #0x40]
	ldr r0, _080688C8 @ =0xFFFFFC30
	str r0, [r7, #0x34]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r7, #0x38]
	ldr r0, _080688CC @ =sub_8068BB0
	str r4, [sp]
	movs r1, #0xc4
	adds r2, r6, #0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r0, [r0, #6]
	adds r7, r0, r5
	mov r8, r7
	str r4, [r7, #0x30]
	movs r0, #0xf
	str r0, [r7, #0x34]
	str r4, [r7, #0x38]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x40]
	movs r5, #0
	ldr r6, _080688D0 @ =gPseudoRandom
	ldr r1, _080688D4 @ =0x00196225
	mov sl, r1
	ldr r2, _080688D8 @ =0x3C6EF35F
	mov sb, r2
_08068794:
	ldr r0, [r6]
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	add r0, sb
	str r0, [r6]
	movs r1, #0x28
	bl Mod
	lsls r4, r5, #2
	mov r1, r8
	adds r1, #0x84
	adds r1, r1, r4
	subs r0, #0x14
	str r0, [r1]
	ldr r0, [r6]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sb
	str r0, [r6]
	movs r1, #0xdc
	bl Mod
	mov r1, r8
	adds r1, #0x44
	adds r1, r1, r4
	adds r0, #0x14
	str r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _08068794
	ldr r0, _080688DC @ =0x06010820
	str r0, [r7, #4]
	movs r1, #0
	movs r4, #0
	movs r0, #0xc2
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r0, #0x50
	strh r0, [r7, #0x18]
	strh r4, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r2, r7, #0
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	adds r2, #1
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x25
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, _080688E0 @ =sub_8068948
	movs r2, #0x84
	lsls r2, r2, #6
	str r4, [sp]
	movs r1, #0x20
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0, #0x18]
	movs r1, #1
	strb r1, [r0, #0x1a]
	ldr r2, [sp, #8]
	str r2, [r0, #0x10]
	ldr r3, [sp, #4]
	str r3, [r0, #0xc]
	strh r4, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0]
	movs r2, #1
	strh r1, [r0, #2]
	movs r1, #2
	strh r1, [r0, #4]
	strh r4, [r0, #6]
	movs r1, #0xa8
	lsls r1, r1, #1
	strh r1, [r0, #8]
	strb r2, [r0, #0xa]
	bl sub_80543A4
	movs r0, #0x29
	bl m4aSongNumStart
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806887C: .4byte 0x0000FFFF
_08068880: .4byte gBackgroundsCopyQueueCursor
_08068884: .4byte gBackgroundsCopyQueueIndex
_08068888: .4byte sa2__gUnknown_03005390
_0806888C: .4byte gVramGraphicsCopyCursor
_08068890: .4byte gVramGraphicsCopyQueueIndex
_08068894: .4byte gDispCnt
_08068898: .4byte gBgCntRegs
_0806889C: .4byte 0x00009D86
_080688A0: .4byte gBgScrollRegs
_080688A4: .4byte Task_SpecialStageIntroInit
_080688A8: .4byte 0x00002120
_080688AC: .4byte 0x06010020
_080688B0: .4byte gUnknown_0868B584
_080688B4: .4byte gSelectedCharacter
_080688B8: .4byte 0x03000020
_080688BC: .4byte 0x03000021
_080688C0: .4byte 0x03000025
_080688C4: .4byte 0xFFFFFF00
_080688C8: .4byte 0xFFFFFC30
_080688CC: .4byte sub_8068BB0
_080688D0: .4byte gPseudoRandom
_080688D4: .4byte 0x00196225
_080688D8: .4byte 0x3C6EF35F
_080688DC: .4byte 0x06010820
_080688E0: .4byte sub_8068948

	thumb_func_start sub_80688E4
sub_80688E4: @ 0x080688E4
	push {r4, lr}
	sub sp, #0x30
	adds r4, r0, #0
	bl UiGfxStackInit
	cmp r4, #1
	bne _08068932
	add r1, sp, #0x2c
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x2b
	strb r2, [r0]
	ldr r0, _0806893C @ =gUnknown_086BBE34
	str r0, [sp, #0x14]
	movs r0, #0xa6
	lsls r0, r0, #6
	str r0, [sp, #0x18]
	ldr r0, _08068940 @ =gUnknown_086BBC34
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08068944 @ =gUnknown_086BE7B4
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [sp, #0x1c]
	add r0, sp, #0x28
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	subs r1, #2
	movs r0, #0x15
	strb r0, [r1]
	mov r0, sp
	bl sub_80528AC
_08068932:
	add sp, #0x30
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806893C: .4byte gUnknown_086BBE34
_08068940: .4byte gUnknown_086BBC34
_08068944: .4byte gUnknown_086BE7B4

	thumb_func_start sub_8068948
sub_8068948: @ 0x08068948
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08068A0C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r5, r0, #1
	adds r0, r6, #0
	bl sub_805423C
	adds r0, r5, #0
	bl sub_80688E4
	cmp r5, #0x5a
	bls _08068A38
	movs r5, #0
	movs r4, #0
	strh r5, [r6, #0x18]
	str r5, [r7, #0x30]
	ldr r0, _08068A10 @ =gBgScrollRegs
	strh r5, [r0, #2]
	strh r5, [r6]
	movs r1, #1
	movs r0, #1
	strh r0, [r6, #2]
	movs r0, #2
	strh r0, [r6, #4]
	strh r5, [r6, #6]
	movs r0, #0xa8
	lsls r0, r0, #1
	strh r0, [r6, #8]
	strb r1, [r6, #0xa]
	ldr r0, _08068A14 @ =sub_8068CD4
	ldr r2, _08068A18 @ =0x00002120
	str r5, [sp]
	movs r1, #0xc4
	movs r3, #0
	bl TaskCreate
	str r0, [r6, #0x14]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r2, r3
	ldr r1, _08068A1C @ =0x06010C80
	str r1, [r0, #4]
	ldr r1, _08068A20 @ =0x0000032B
	strh r1, [r0, #0xa]
	adds r3, #0x20
	adds r1, r2, r3
	strb r4, [r1]
	movs r1, #0x78
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x18]
	strh r5, [r0, #0x1a]
	strh r5, [r0, #8]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x1c]
	ldr r1, _08068A24 @ =0x03000021
	adds r3, r2, r1
	movs r1, #0xff
	strb r1, [r3]
	ldr r1, _08068A28 @ =0x03000022
	adds r3, r2, r1
	movs r1, #0x10
	strb r1, [r3]
	ldr r3, _08068A2C @ =0x03000025
	adds r2, r2, r3
	strb r4, [r2]
	subs r1, #0x11
	str r1, [r0, #0x28]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #0x10]
	bl UpdateSpriteAnimation
	ldr r0, [r6, #0xc]
	bl TaskDestroy
	ldr r1, [r6, #0x10]
	ldr r0, _08068A30 @ =sub_8068B10
	str r0, [r1, #8]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08068A34 @ =sub_8068A78
	str r0, [r1, #8]
	b _08068A6A
	.align 2, 0
_08068A0C: .4byte gCurTask
_08068A10: .4byte gBgScrollRegs
_08068A14: .4byte sub_8068CD4
_08068A18: .4byte 0x00002120
_08068A1C: .4byte 0x06010C80
_08068A20: .4byte 0x0000032B
_08068A24: .4byte 0x03000021
_08068A28: .4byte 0x03000022
_08068A2C: .4byte 0x03000025
_08068A30: .4byte sub_8068B10
_08068A34: .4byte sub_8068A78
_08068A38:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r4, #0
	bl Div
	movs r1, #0x5a
	subs r1, r1, r0
	cmp r1, r5
	bne _08068A60
	movs r0, #0
	strh r0, [r6]
	movs r2, #1
	movs r1, #1
	strh r1, [r6, #2]
	strh r1, [r6, #4]
	strh r0, [r6, #6]
	strh r4, [r6, #8]
	strb r2, [r6, #0xa]
_08068A60:
	adds r0, r6, #0
	bl sub_805423C
	strh r5, [r6, #0x18]
	str r5, [r7, #0x30]
_08068A6A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8068A78
sub_8068A78: @ 0x08068A78
	push {r4, r5, r6, r7, lr}
	ldr r0, _08068ABC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, [r4, #0x10]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r5, r0, #1
	cmp r5, #0x96
	bls _08068AD8
	ldr r1, _08068AC0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08068AC4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08068AC8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08068ACC @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08068AD0 @ =gVramGraphicsCopyCursor
	ldr r0, _08068AD4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateSpecialStage
	b _08068B0A
	.align 2, 0
_08068ABC: .4byte gCurTask
_08068AC0: .4byte 0x0000FFFF
_08068AC4: .4byte gBackgroundsCopyQueueCursor
_08068AC8: .4byte gBackgroundsCopyQueueIndex
_08068ACC: .4byte sa2__gUnknown_03005390
_08068AD0: .4byte gVramGraphicsCopyCursor
_08068AD4: .4byte gVramGraphicsCopyQueueIndex
_08068AD8:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r6, #0xa8
	lsls r6, r6, #1
	adds r1, r6, #0
	bl Div
	movs r1, #0x96
	subs r1, r1, r0
	cmp r1, r5
	bne _08068B00
	movs r0, #0
	strh r0, [r4]
	movs r2, #1
	movs r1, #1
	strh r1, [r4, #2]
	strh r1, [r4, #4]
	strh r0, [r4, #6]
	strh r6, [r4, #8]
	strb r2, [r4, #0xa]
_08068B00:
	adds r0, r4, #0
	bl sub_805423C
	strh r5, [r4, #0x18]
	str r5, [r7, #0x30]
_08068B0A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8068B10
sub_8068B10: @ 0x08068B10
	push {r4, r5, r6, lr}
	ldr r0, _08068B98 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r5, r0
	adds r4, r3, #0
	ldr r6, [r3, #0x30]
	cmp r6, #0
	bne _08068B64
	ldr r1, _08068B9C @ =gUnknown_0868B594
	ldr r2, _08068BA0 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _08068BA4 @ =0x03000020
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _08068BA8 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r3, #0x34]
	ldr r1, _08068BAC @ =0xFFFFFB00
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r3, #0x38]
	movs r0, #0x96
	lsls r0, r0, #8
	str r0, [r3, #0x40]
_08068B64:
	cmp r6, #0x28
	bls _08068B90
	ldr r2, [r4, #0x40]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x40]
	ldr r0, [r4, #0x34]
	adds r0, #0x40
	str r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	adds r1, r1, r0
	str r1, [r4, #0x38]
	asrs r2, r2, #8
	strh r2, [r4, #0x16]
	asrs r1, r1, #8
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08068B90:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068B98: .4byte gCurTask
_08068B9C: .4byte gUnknown_0868B594
_08068BA0: .4byte gSelectedCharacter
_08068BA4: .4byte 0x03000020
_08068BA8: .4byte 0x03000021
_08068BAC: .4byte 0xFFFFFB00

	thumb_func_start sub_8068BB0
sub_8068BB0: @ 0x08068BB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08068C10 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r7, r6, #0
	ldr r0, [r6, #0x30]
	adds r0, #1
	str r0, [r6, #0x30]
	str r0, [sp]
	ldr r0, _08068C14 @ =0x03000021
	adds r1, r1, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	mov r8, r1
	ldr r0, _08068C18 @ =gPseudoRandom
	mov sb, r0
	ldr r1, _08068C1C @ =0x3C6EF35F
	mov sl, r1
_08068BEC:
	ldr r0, [sp]
	add r0, r8
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08068C20
	mov r0, r8
	lsls r2, r0, #2
	adds r3, r7, #0
	adds r3, #0x84
	adds r1, r3, r2
	ldr r0, [r1]
	adds r0, #0x10
	str r0, [r1]
	adds r4, r2, #0
	adds r2, r7, #0
	adds r2, #0x44
	b _08068C62
	.align 2, 0
_08068C10: .4byte gCurTask
_08068C14: .4byte 0x03000021
_08068C18: .4byte gPseudoRandom
_08068C1C: .4byte 0x3C6EF35F
_08068C20:
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _08068C94 @ =0x00196225
	muls r0, r1, r0
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r1, #0x28
	bl Mod
	mov r1, r8
	lsls r4, r1, #2
	adds r5, r7, #0
	adds r5, #0x84
	adds r1, r5, r4
	subs r0, #0x14
	str r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _08068C94 @ =0x00196225
	muls r0, r1, r0
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r1, #0xdc
	bl Mod
	adds r2, r7, #0
	adds r2, #0x44
	adds r1, r2, r4
	adds r0, #0x14
	str r0, [r1]
	adds r3, r5, #0
_08068C62:
	adds r0, r2, r4
	ldr r0, [r0]
	strh r0, [r6, #0x16]
	adds r0, r3, r4
	ldr r0, [r0]
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0xf
	bls _08068BEC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068C94: .4byte 0x00196225

	thumb_func_start Task_SpecialStageIntroInit
Task_SpecialStageIntroInit: @ 0x08068C98
	push {r4, lr}
	ldr r0, _08068CCC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r1, [r4, #0x38]
	ldr r0, _08068CD0 @ =0xFFFFFC30
	adds r1, r1, r0
	str r1, [r4, #0x38]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	asrs r1, r1, #8
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068CCC: .4byte gCurTask
_08068CD0: .4byte 0xFFFFFC30

	thumb_func_start sub_8068CD4
sub_8068CD4: @ 0x08068CD4
	push {r4, lr}
	ldr r0, _08068D08 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x30]
	adds r0, #1
	str r0, [r4, #0x30]
	movs r1, #0x1e
	bl Div
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _08068D02
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08068D02:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068D08: .4byte gCurTask

	thumb_func_start sub_8068D0C
sub_8068D0C: @ 0x08068D0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	bl sub_80535FC
	bl UiGfxStackInit
	ldr r1, _08068F34 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08068F38 @ =gBgCntRegs
	movs r4, #0
	ldr r0, _08068F3C @ =0x00009D86
	strh r0, [r1]
	ldr r1, _08068F40 @ =gBgScrollRegs
	strh r4, [r1]
	movs r0, #0x94
	lsls r0, r0, #1
	strh r0, [r1, #2]
	ldr r0, _08068F44 @ =sub_806954C
	str r4, [sp]
	movs r1, #0x44
	ldr r2, _08068F48 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x44]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r2, r3
	ldr r0, _08068F4C @ =0x06010020
	str r0, [r7, #4]
	ldr r1, _08068F50 @ =gUnknown_0868B5A4
	ldr r5, _08068F54 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r3, #0x20
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r0, #0xb4
	strh r0, [r7, #0x18]
	adds r0, #0xcc
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r0, _08068F58 @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08068F5C @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08068F60 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	str r2, [r7, #0x28]
	movs r6, #0x80
	lsls r6, r6, #5
	str r6, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	str r4, [r7, #0x30]
	str r4, [r7, #0x3c]
	movs r0, #0xaa
	lsls r0, r0, #8
	str r0, [r7, #0x40]
	movs r0, #0x94
	lsls r0, r0, #3
	str r0, [r7, #0x34]
	ldr r0, _08068F64 @ =0xFFFFE000
	str r0, [r7, #0x38]
	str r4, [sp]
	ldr r0, _08068F68 @ =sub_806959C
	movs r1, #0x44
	ldr r2, _08068F48 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x48]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r2, r3
	ldr r0, _08068F6C @ =0x06010820
	str r0, [r7, #4]
	ldr r1, _08068F70 @ =gUnknown_0868B5B4
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r3, #0x20
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r7, #0x16]
	movs r0, #0x64
	strh r0, [r7, #0x18]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08068F5C @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08068F60 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	mov r2, r8
	str r2, [r7, #0x28]
	str r6, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	str r4, [r7, #0x30]
	ldr r3, _08068F74 @ =0xFFFFFF00
	mov sb, r3
	str r3, [r7, #0x3c]
	movs r0, #0xaf
	lsls r0, r0, #9
	mov sl, r0
	str r0, [r7, #0x40]
	str r4, [r7, #0x34]
	movs r5, #0xc8
	lsls r5, r5, #7
	str r5, [r7, #0x38]
	str r4, [sp]
	ldr r0, _08068F68 @ =sub_806959C
	movs r1, #0x44
	ldr r2, _08068F48 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x4c]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r1, r2
	ldr r0, _08068F78 @ =0x060112A0
	str r0, [r7, #4]
	movs r0, #0xb8
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r3, _08068F7C @ =0x03000020
	adds r0, r1, r3
	movs r2, #0
	strb r2, [r0]
	movs r0, #0xaf
	lsls r0, r0, #1
	strh r0, [r7, #0x16]
	movs r3, #0x64
	strh r3, [r7, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r0, _08068F58 @ =0x03000021
	adds r2, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2]
	ldr r2, _08068F5C @ =0x03000022
	adds r0, r1, r2
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08068F60 @ =0x03000025
	adds r1, r1, r0
	movs r2, #0
	strb r2, [r1]
	mov r3, r8
	str r3, [r7, #0x28]
	str r6, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	str r4, [r7, #0x30]
	mov r0, sb
	str r0, [r7, #0x3c]
	mov r1, sl
	str r1, [r7, #0x40]
	str r4, [r7, #0x34]
	str r5, [r7, #0x38]
	movs r5, #0
	add r6, sp, #0x14
	add r2, sp, #0x40
	mov sl, r2
	movs r3, #0x3f
	add r3, sp
	mov sb, r3
	mov r0, sp
	adds r0, #0x3c
	str r0, [sp, #0x50]
	mov r1, sp
	adds r1, #0x3d
	str r1, [sp, #0x54]
	mov r2, sp
	adds r2, #0x3e
	str r2, [sp, #0x58]
_08068EF0:
	str r4, [sp]
	ldr r0, _08068F80 @ =sub_8068360
	movs r1, #0x64
	ldr r2, _08068F48 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	lsls r1, r5, #2
	add r1, sp
	adds r1, #4
	str r0, [r1]
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r1, r3
	str r4, [r7, #0x3c]
	cmp r5, #0
	bne _08068F8C
	movs r0, #0xc8
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r7, #0x44]
	movs r0, #0x80
	str r0, [r7, #0x48]
	str r5, [r7, #0x58]
	ldr r0, _08068F84 @ =0x06016040
	str r0, [r7, #4]
	ldr r0, _08068F88 @ =0x00000316
	strh r0, [r7, #0xa]
	ldr r2, _08068F7C @ =0x03000020
	adds r0, r1, r2
	b _08069000
	.align 2, 0
_08068F34: .4byte gDispCnt
_08068F38: .4byte gBgCntRegs
_08068F3C: .4byte 0x00009D86
_08068F40: .4byte gBgScrollRegs
_08068F44: .4byte sub_806954C
_08068F48: .4byte 0x00002120
_08068F4C: .4byte 0x06010020
_08068F50: .4byte gUnknown_0868B5A4
_08068F54: .4byte gSelectedCharacter
_08068F58: .4byte 0x03000021
_08068F5C: .4byte 0x03000022
_08068F60: .4byte 0x03000025
_08068F64: .4byte 0xFFFFE000
_08068F68: .4byte sub_806959C
_08068F6C: .4byte 0x06010820
_08068F70: .4byte gUnknown_0868B5B4
_08068F74: .4byte 0xFFFFFF00
_08068F78: .4byte 0x060112A0
_08068F7C: .4byte 0x03000020
_08068F80: .4byte sub_8068360
_08068F84: .4byte 0x06016040
_08068F88: .4byte 0x00000316
_08068F8C:
	cmp r5, #1
	bne _08068FB4
	movs r0, #0xc8
	lsls r0, r0, #7
	str r0, [r7, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x44]
	movs r0, #0x40
	str r0, [r7, #0x48]
	str r4, [r7, #0x58]
	ldr r0, _08068FAC @ =0x06016180
	str r0, [r7, #4]
	ldr r0, _08068FB0 @ =0x00000317
	b _08068FFA
	.align 2, 0
_08068FAC: .4byte 0x06016180
_08068FB0: .4byte 0x00000317
_08068FB4:
	cmp r5, #2
	bne _08068FE0
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r7, #0x54]
	str r0, [r7, #0x44]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r7, #0x48]
	str r4, [r7, #0x58]
	ldr r0, _08068FD8 @ =0x06016420
	str r0, [r7, #4]
	movs r0, #0xc6
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r2, _08068FDC @ =0x03000020
	adds r0, r1, r2
	b _08069000
	.align 2, 0
_08068FD8: .4byte 0x06016420
_08068FDC: .4byte 0x03000020
_08068FE0:
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r7, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r7, #0x44]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r7, #0x48]
	str r4, [r7, #0x58]
	ldr r0, _080690E0 @ =0x06017080
	str r0, [r7, #4]
	ldr r0, _080690E4 @ =0x00000319
_08068FFA:
	strh r0, [r7, #0xa]
	ldr r3, _080690E8 @ =0x03000020
	adds r0, r1, r3
_08069000:
	strb r4, [r0]
	movs r0, #0xb4
	strh r0, [r7, #0x16]
	movs r0, #0x50
	strh r0, [r7, #0x18]
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x25
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	mov r8, r0
	str r0, [r7, #0x10]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bhi _08069044
	b _08068EF0
_08069044:
	ldr r0, _080690EC @ =sub_80694E8
	movs r2, #0x84
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0x28
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	movs r5, #0
	strh r4, [r0, #0x1c]
	movs r3, #1
	strb r3, [r0, #0x1e]
	ldr r2, [sp, #0x44]
	str r2, [r0, #0xc]
	ldr r2, [sp, #0x48]
	str r2, [r0, #0x18]
	ldr r2, [sp, #0x4c]
	str r2, [r0, #0x14]
	ldr r2, _080690F0 @ =0x03000024
	adds r1, r1, r2
	strb r5, [r1]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0]
	movs r2, #1
	strh r3, [r0, #2]
	movs r1, #8
	strh r1, [r0, #4]
	strh r4, [r0, #6]
	movs r1, #0x94
	lsls r1, r1, #1
	strh r1, [r0, #8]
	strb r2, [r0, #0xa]
	bl sub_805423C
	movs r0, #0x80
	mov r3, sl
	strb r0, [r3]
	mov r0, sb
	strb r5, [r0]
	ldr r0, _080690F4 @ =gUnknown_086BBE34
	str r0, [r6, #0x14]
	movs r0, #0xa6
	lsls r0, r0, #6
	str r0, [r6, #0x18]
	ldr r0, _080690F8 @ =gUnknown_086BBC34
	str r0, [r6, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r6, #0x24]
	ldr r0, _080690FC @ =gUnknown_086BE7B4
	str r0, [r6, #0x10]
	mov r1, r8
	str r1, [r6, #0x1c]
	ldr r2, [sp, #0x50]
	strb r5, [r2]
	ldr r3, [sp, #0x54]
	strb r5, [r3]
	movs r0, #0x15
	ldr r1, [sp, #0x58]
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_80528AC
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080690E0: .4byte 0x06017080
_080690E4: .4byte 0x00000319
_080690E8: .4byte 0x03000020
_080690EC: .4byte sub_80694E8
_080690F0: .4byte 0x03000024
_080690F4: .4byte gUnknown_086BBE34
_080690F8: .4byte gUnknown_086BBC34
_080690FC: .4byte gUnknown_086BE7B4

	thumb_func_start sub_8069100
sub_8069100: @ 0x08069100
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0806927C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r0, [r6, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r6, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r6, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #8]
	movs r1, #0x1c
	ldrsh r0, [r6, r1]
	adds r0, #1
	mov sb, r0
	cmp r0, #1
	beq _0806913E
	b _080692C0
_0806913E:
	ldr r0, _08069280 @ =sub_8069634
	ldr r7, _08069284 @ =0x00002120
	movs r2, #0
	str r2, [sp]
	movs r1, #0x44
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r4, r1, r3
	ldr r0, _08069288 @ =0x06013820
	str r0, [r4, #4]
	ldr r0, _0806928C @ =0x000002FD
	strh r0, [r4, #0xa]
	ldr r2, _08069290 @ =0x03000020
	adds r0, r1, r2
	movs r3, #0
	strb r3, [r0]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r2, #0xb4
	strh r2, [r4, #0x18]
	movs r3, #0
	strh r3, [r4, #0x1a]
	strh r3, [r4, #8]
	strh r3, [r4, #0x14]
	strh r3, [r4, #0x1c]
	ldr r0, _08069294 @ =0x03000021
	adds r2, r1, r0
	movs r0, #0xff
	strb r0, [r2]
	ldr r2, _08069298 @ =0x03000022
	adds r0, r1, r2
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _0806929C @ =0x03000025
	adds r1, r1, r0
	movs r2, #0
	strb r2, [r1]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r2, _080692A0 @ =0xFFFFFF00
	str r2, [r4, #0x3c]
	mov r3, sl
	ldr r0, [r3, #0x40]
	ldr r1, _080692A4 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x40]
	movs r2, #0
	str r2, [r4, #0x34]
	ldr r0, [r3, #0x38]
	movs r3, #0xa0
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r4, #0x38]
	ldr r0, _080692A8 @ =sub_806959C
	str r2, [sp]
	movs r1, #0x44
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	str r0, [r6, #0x10]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r0, _080692AC @ =0x06010AA0
	str r0, [r7, #4]
	ldr r3, _080692B0 @ =gUnknown_0868B5C4
	ldr r5, _080692B4 @ =gSelectedCharacter
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #2
	ldr r0, _080692B8 @ =gUnknown_08487134
	mov r8, r0
	ldr r4, _080692BC @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r4, r0]
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	strh r0, [r7, #0xa]
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #2
	movs r0, #0
	ldrsb r0, [r4, r0]
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r3, #2
	adds r1, r1, r3
	ldrh r1, [r1]
	ldr r3, _08069290 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r1, #0xb4
	strh r1, [r7, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7, #0x1a]
	movs r3, #0
	strh r3, [r7, #8]
	strh r3, [r7, #0x14]
	strh r3, [r7, #0x1c]
	ldr r0, _08069294 @ =0x03000021
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08069298 @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _0806929C @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r0, #0
	str r0, [r7, #0x30]
	ldr r1, _080692A0 @ =0xFFFFFF00
	str r1, [r7, #0x3c]
	mov r2, sl
	ldr r0, [r2, #0x40]
	str r0, [r7, #0x40]
	movs r3, #0
	str r3, [r7, #0x34]
	ldr r0, [r2, #0x38]
	str r0, [r7, #0x38]
	b _080692CA
	.align 2, 0
_0806927C: .4byte gCurTask
_08069280: .4byte sub_8069634
_08069284: .4byte 0x00002120
_08069288: .4byte 0x06013820
_0806928C: .4byte 0x000002FD
_08069290: .4byte 0x03000020
_08069294: .4byte 0x03000021
_08069298: .4byte 0x03000022
_0806929C: .4byte 0x03000025
_080692A0: .4byte 0xFFFFFF00
_080692A4: .4byte 0xFFFFF800
_080692A8: .4byte sub_806959C
_080692AC: .4byte 0x06010AA0
_080692B0: .4byte gUnknown_0868B5C4
_080692B4: .4byte gSelectedCharacter
_080692B8: .4byte gUnknown_08487134
_080692BC: .4byte gCurrentLevel
_080692C0:
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
_080692CA:
	mov r2, sb
	cmp r2, #7
	bls _080692F6
	ldr r3, [sp, #8]
	ldr r2, [r3, #0x38]
	ldr r0, _08069364 @ =0x000063FF
	cmp r2, r0
	ble _080692F6
	ldr r1, _08069368 @ =0xFFFFFF00
	adds r0, r2, r1
	str r0, [r3, #0x38]
	ldr r2, [sp, #4]
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x38]
	mov r3, sl
	ldr r0, [r3, #0x38]
	adds r0, r0, r1
	str r0, [r3, #0x38]
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
_080692F6:
	mov r0, sb
	cmp r0, #1
	bne _08069320
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r2, [sp, #8]
	str r0, [r2, #0x38]
	ldr r3, [sp, #4]
	ldr r0, [r3, #0x38]
	adds r0, r0, r1
	str r0, [r3, #0x38]
	mov r2, sl
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x38]
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
_08069320:
	adds r0, r6, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08069388
	movs r3, #4
	ldrsh r0, [r6, r3]
	cmp r0, #4
	bne _08069388
	adds r1, r6, #0
	adds r1, #0x24
	ldrb r0, [r1]
	cmp r0, #0xa
	bls _08069384
	ldr r1, _0806936C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08069370 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08069374 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08069378 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0806937C @ =gVramGraphicsCopyCursor
	ldr r0, _08069380 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #1
	bl sub_805D048
	b _080693BE
	.align 2, 0
_08069364: .4byte 0x000063FF
_08069368: .4byte 0xFFFFFF00
_0806936C: .4byte 0x0000FFFF
_08069370: .4byte gBackgroundsCopyQueueCursor
_08069374: .4byte gBackgroundsCopyQueueIndex
_08069378: .4byte sa2__gUnknown_03005390
_0806937C: .4byte gVramGraphicsCopyCursor
_08069380: .4byte gVramGraphicsCopyQueueIndex
_08069384:
	adds r0, #1
	strb r0, [r1]
_08069388:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r4, #0x94
	lsls r4, r4, #1
	adds r1, r4, #0
	bl Div
	movs r1, #0x96
	lsls r1, r1, #1
	subs r1, r1, r0
	cmp r1, sb
	bne _080693B4
	movs r1, #0
	strh r1, [r6]
	movs r2, #1
	movs r0, #1
	strh r0, [r6, #2]
	movs r0, #4
	strh r0, [r6, #4]
	strh r1, [r6, #6]
	strh r4, [r6, #8]
	strb r2, [r6, #0xa]
_080693B4:
	mov r0, sb
	strh r0, [r6, #0x1c]
	mov r1, sb
	mov r2, sl
	str r1, [r2, #0x30]
_080693BE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80693D0
sub_80693D0: @ 0x080693D0
	push {r4, r5, lr}
	ldr r0, _08069448 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	adds r5, r3, #0
	ldr r0, [r3, #0x30]
	cmp r0, #0
	bne _0806941A
	ldr r1, _0806944C @ =gUnknown_0868B634
	ldr r2, _08069450 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _08069454 @ =0x03000020
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08069458 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r3, #0x38]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r3, #0x38]
_0806941A:
	ldr r0, [r3, #0x40]
	ldr r2, _0806945C @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r3, #0x40]
	ldr r1, _08069460 @ =0xFFFF9C00
	cmp r0, r1
	bge _0806942A
	str r1, [r3, #0x40]
_0806942A:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	strh r0, [r5, #0x16]
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069448: .4byte gCurTask
_0806944C: .4byte gUnknown_0868B634
_08069450: .4byte gSelectedCharacter
_08069454: .4byte 0x03000020
_08069458: .4byte 0x03000021
_0806945C: .4byte 0xFFFFFF00
_08069460: .4byte 0xFFFF9C00

	thumb_func_start sub_8069464
sub_8069464: @ 0x08069464
	push {r4, r5, lr}
	ldr r0, _080694D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r5, r0
	adds r4, r3, #0
	ldr r0, [r3, #0x30]
	cmp r0, #0
	bne _080694AA
	ldr r1, _080694D8 @ =gUnknown_0868B644
	ldr r2, _080694DC @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _080694E0 @ =0x03000020
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _080694E4 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r3, #0x38]
_080694AA:
	ldr r2, [r4, #0x40]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x40]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #8
	strh r2, [r4, #0x16]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080694D4: .4byte gCurTask
_080694D8: .4byte gUnknown_0868B644
_080694DC: .4byte gSelectedCharacter
_080694E0: .4byte 0x03000020
_080694E4: .4byte 0x03000021

	thumb_func_start sub_80694E8
sub_80694E8: @ 0x080694E8
	push {r4, r5, r6, r7, lr}
	ldr r7, _08069530 @ =gCurTask
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	adds r4, r0, #1
	adds r0, r5, #0
	bl sub_805423C
	cmp r4, #0x8c
	bne _08069512
	ldr r1, [r5, #0xc]
	ldr r0, _08069534 @ =sub_8069550
	str r0, [r1, #8]
_08069512:
	cmp r4, #0xa1
	bls _08069540
	movs r0, #0x2d
	bl m4aSongNumStart
	movs r4, #0
	strh r4, [r5, #0x1c]
	str r4, [r6, #0x30]
	ldr r1, [r5, #0xc]
	ldr r0, _08069538 @ =sub_80693D0
	str r0, [r1, #8]
	ldr r1, [r7]
	ldr r0, _0806953C @ =sub_8069100
	str r0, [r1, #8]
	b _08069544
	.align 2, 0
_08069530: .4byte gCurTask
_08069534: .4byte sub_8069550
_08069538: .4byte sub_80693D0
_0806953C: .4byte sub_8069100
_08069540:
	strh r4, [r5, #0x1c]
	str r4, [r6, #0x30]
_08069544:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806954C
sub_806954C: @ 0x0806954C
	bx lr
	.align 2, 0

	thumb_func_start sub_8069550
sub_8069550: @ 0x08069550
	push {r4, lr}
	ldr r0, _08069594 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	adds r4, r1, #0
	ldr r0, [r1, #0x38]
	movs r2, #0x94
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1, #0x38]
	movs r2, #0xa0
	lsls r2, r2, #7
	cmp r0, r2
	ble _08069574
	str r2, [r1, #0x38]
_08069574:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08069594: .4byte gCurTask

	thumb_func_start sub_8069598
sub_8069598: @ 0x08069598
	bx lr
	.align 2, 0

	thumb_func_start sub_806959C
sub_806959C: @ 0x0806959C
	push {r4, lr}
	ldr r0, _080695DC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	adds r4, r1, #0
	ldr r0, [r1, #0x40]
	ldr r2, _080695E0 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1, #0x40]
	ldr r2, _080695E4 @ =0xFFFF9C00
	cmp r0, r2
	bge _080695BC
	str r2, [r1, #0x40]
_080695BC:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080695DC: .4byte gCurTask
_080695E0: .4byte 0xFFFFFF00
_080695E4: .4byte 0xFFFF9C00

	thumb_func_start sub_80695E8
sub_80695E8: @ 0x080695E8
	push {r4, lr}
	ldr r0, _08069628 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	adds r4, r1, #0
	ldr r0, [r1, #0x40]
	ldr r2, _0806962C @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1, #0x40]
	ldr r2, _08069630 @ =0xFFFF9C00
	cmp r0, r2
	bge _08069608
	str r2, [r1, #0x40]
_08069608:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08069628: .4byte gCurTask
_0806962C: .4byte 0xFFFFFF00
_08069630: .4byte 0xFFFF9C00

	thumb_func_start sub_8069634
sub_8069634: @ 0x08069634
	push {r4, r5, lr}
	ldr r5, _08069660 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _08069664
	ldr r0, [r5]
	bl TaskDestroy
	b _08069682
	.align 2, 0
_08069660: .4byte gCurTask
_08069664:
	ldr r0, [r4, #0x10]
	ldr r1, _08069688 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
_08069682:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069688: .4byte 0xFFFFFBFF

	thumb_func_start sub_806968C
sub_806968C: @ 0x0806968C
	push {r4, lr}
	sub sp, #0x30
	bl UiGfxStackInit
	add r2, sp, #0x2c
	movs r4, #0
	movs r0, #0x80
	strb r0, [r2]
	mov r0, sp
	adds r0, #0x2b
	strb r4, [r0]
	movs r1, #0x2b
	strb r1, [r2]
	ldr r2, _080696FC @ =gUiGraphics
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r0, [r2]
	str r0, [sp, #0x14]
	movs r1, #0x20
	str r1, [sp, #0x18]
	ldr r0, _08069700 @ =gUnknown_086CC774
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	ldr r0, _08069704 @ =gUnknown_086CC834
	str r0, [sp, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #3
	str r0, [sp, #0x1c]
	add r0, sp, #0x28
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	mov r1, sp
	adds r1, #0x2a
	movs r0, #5
	strb r0, [r1]
	mov r0, sp
	bl sub_80528AC
	ldr r1, _08069708 @ =sa2__gUnknown_03004D80
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0806970C @ =sa2__gUnknown_03002280
	strb r4, [r1]
	strb r4, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x14
	strb r0, [r1, #3]
	add sp, #0x30
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080696FC: .4byte gUiGraphics
_08069700: .4byte gUnknown_086CC774
_08069704: .4byte gUnknown_086CC834
_08069708: .4byte sa2__gUnknown_03004D80
_0806970C: .4byte sa2__gUnknown_03002280

	thumb_func_start sub_8069710
sub_8069710: @ 0x08069710
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_80535FC
	ldr r1, _08069890 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08069894 @ =gBgCntRegs
	movs r5, #0
	ldr r0, _08069898 @ =0x00001D03
	strh r0, [r1]
	ldr r0, _0806989C @ =gBgScrollRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	bl sub_806968C
	ldr r0, _080698A0 @ =sub_80698F4
	str r5, [sp]
	movs r1, #0xa0
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r3, _080698A4 @ =0x03000090
	adds r6, r4, r3
	ldr r1, _080698A8 @ =0x06010000
	str r1, [r0, #4]
	ldr r2, _080698AC @ =gUnknown_0868B654
	ldr r3, _080698B0 @ =gLoadedSaveGame
	ldrb r1, [r3, #0x19]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xa]
	ldr r2, _080698B4 @ =gUnknown_0868B658
	ldrb r1, [r3, #0x19]
	adds r1, r1, r2
	ldrb r2, [r1]
	ldr r3, _080698B8 @ =0x03000020
	adds r1, r4, r3
	strb r2, [r1]
	movs r1, #0x78
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x18]
	strh r5, [r0, #8]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x1c]
	ldr r1, _080698BC @ =0x03000021
	adds r2, r4, r1
	movs r1, #0xff
	strb r1, [r2]
	ldr r2, _080698C0 @ =0x03000022
	adds r1, r4, r2
	movs r3, #0x10
	strb r3, [r1]
	adds r2, #3
	adds r1, r4, r2
	movs r3, #0
	strb r3, [r1]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x28]
	movs r2, #0x90
	lsls r2, r2, #3
	mov r8, r2
	mov r3, r8
	strh r3, [r0, #0x1a]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x10]
	bl UpdateSpriteAnimation
	ldr r3, _080698C4 @ =0x03000030
	adds r2, r4, r3
	ldr r0, _080698C8 @ =0x06012000
	str r0, [r2, #4]
	ldr r7, _080698CC @ =0x000002E3
	strh r7, [r2, #0xa]
	ldr r1, _080698D0 @ =0x03000050
	adds r0, r4, r1
	movs r3, #0
	strb r3, [r0]
	movs r0, #0x88
	mov sb, r0
	mov r1, sb
	strh r1, [r2, #0x16]
	movs r3, #0x5a
	mov sl, r3
	mov r0, sl
	strh r0, [r2, #0x18]
	strh r5, [r2, #8]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r3, _080698D4 @ =0x03000051
	adds r1, r4, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080698D8 @ =0x03000052
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x28]
	mov r1, r8
	strh r1, [r2, #0x1a]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, _080698DC @ =0x03000060
	adds r2, r4, r0
	ldr r0, _080698E0 @ =0x06014000
	str r0, [r2, #4]
	strh r7, [r2, #0xa]
	ldr r1, _080698E4 @ =0x03000080
	adds r0, r4, r1
	movs r7, #1
	strb r7, [r0]
	mov r3, sb
	strh r3, [r2, #0x16]
	mov r0, sl
	strh r0, [r2, #0x18]
	strh r5, [r2, #8]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r3, _080698E8 @ =0x03000081
	adds r1, r4, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080698EC @ =0x03000082
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x28]
	mov r1, r8
	strh r1, [r2, #0x1a]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, _080698F0 @ =0x0300009C
	adds r4, r4, r0
	str r5, [r4]
	strh r5, [r6]
	strh r7, [r6, #2]
	movs r0, #2
	strh r0, [r6, #4]
	strh r5, [r6, #6]
	adds r0, #0xfe
	strh r0, [r6, #8]
	movs r0, #8
	strb r0, [r6, #0xa]
	adds r0, r6, #0
	bl sub_805423C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069890: .4byte gDispCnt
_08069894: .4byte gBgCntRegs
_08069898: .4byte 0x00001D03
_0806989C: .4byte gBgScrollRegs
_080698A0: .4byte sub_80698F4
_080698A4: .4byte 0x03000090
_080698A8: .4byte 0x06010000
_080698AC: .4byte gUnknown_0868B654
_080698B0: .4byte gLoadedSaveGame
_080698B4: .4byte gUnknown_0868B658
_080698B8: .4byte 0x03000020
_080698BC: .4byte 0x03000021
_080698C0: .4byte 0x03000022
_080698C4: .4byte 0x03000030
_080698C8: .4byte 0x06012000
_080698CC: .4byte 0x000002E3
_080698D0: .4byte 0x03000050
_080698D4: .4byte 0x03000051
_080698D8: .4byte 0x03000052
_080698DC: .4byte 0x03000060
_080698E0: .4byte 0x06014000
_080698E4: .4byte 0x03000080
_080698E8: .4byte 0x03000081
_080698EC: .4byte 0x03000082
_080698F0: .4byte 0x0300009C

	thumb_func_start sub_80698F4
sub_80698F4: @ 0x080698F4
	push {lr}
	ldr r0, _08069930 @ =gCurTask
	ldr r3, [r0]
	ldrh r0, [r3, #6]
	ldr r1, _08069934 @ =0x03000090
	adds r2, r0, r1
	adds r1, #0xc
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r1, r0
	bls _08069944
	ldr r2, _08069938 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806993C @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08069940 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	adds r0, r3, #0
	bl TaskDestroy
	bl CreateSegaLogo
	b _0806995E
	.align 2, 0
_08069930: .4byte gCurTask
_08069934: .4byte 0x03000090
_08069938: .4byte gDispCnt
_0806993C: .4byte 0x00001FFF
_08069940: .4byte gBldRegs
_08069944:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bne _08069954
	movs r0, #0
	strh r0, [r2, #6]
	movs r0, #1
	strh r0, [r2, #4]
_08069954:
	adds r0, r2, #0
	bl sub_805423C
	bl sub_8069964
_0806995E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8069964
sub_8069964: @ 0x08069964
	push {r4, r5, lr}
	ldr r0, _08069990 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0
_08069974:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r5, r0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08069974
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069990: .4byte gCurTask

	thumb_func_start sub_8069994
sub_8069994: @ 0x08069994
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r0, #0
	bl UiGfxStackInit
	add r4, sp, #0x2c
	movs r0, #0x20
	strb r0, [r4]
	movs r1, #0x2b
	add r1, sp
	mov r8, r1
	movs r0, #0xf
	strb r0, [r1]
	ldr r7, _08069B10 @ =gUiGraphics
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B14 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xb0
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	add r1, sp, #0x28
	mov sb, r1
	movs r0, #6
	strb r0, [r1]
	str r6, [sp, #0xc]
	mov r6, sp
	adds r6, #0x2a
	movs r0, #0xd
	strb r0, [r6]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B18 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B1C @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x10
	adds r1, r1, r7
	mov sl, r1
	add r0, sl
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r5, r7, #0
	adds r5, #0x14
	adds r0, r0, r5
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B20 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x10
	strb r0, [r4]
	mov r1, r8
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B14 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r0, #0xc
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08069B24 @ =0x06011000
	str r0, [sp, #0xc]
	movs r0, #0xd
	strb r0, [r6]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B18 @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B1C @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069B20 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x22
	strb r0, [r4]
	movs r0, #2
	mov r1, r8
	strb r0, [r1]
	ldr r0, _08069B28 @ =gCurrentLevel
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	adds r3, r4, #0
	cmp r0, #0
	beq _08069B2C
	ldrb r0, [r3]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	b _08069B38
	.align 2, 0
_08069B10: .4byte gUiGraphics
_08069B14: .4byte gUiGraphics + 0x4
_08069B18: .4byte gUiGraphics + 0x8
_08069B1C: .4byte gUiGraphics + 0xC
_08069B20: .4byte gUiGraphics + 0x18
_08069B24: .4byte 0x06011000
_08069B28: .4byte gCurrentLevel
_08069B2C:
	ldrb r0, [r3]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r0, [r1]
_08069B38:
	str r0, [sp, #0x14]
	ldr r7, _08069C7C @ =gUiGraphics
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069C80 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r0, #0xb
	add r1, sp, #0x28
	strb r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _08069C84 @ =0x06011800
	str r0, [sp, #0xc]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #8
	adds r1, r1, r7
	mov sb, r1
	add r0, sb
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xc
	adds r1, r1, r7
	mov r8, r1
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r6, r7, #0
	adds r6, #0x10
	adds r0, r0, r6
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069C88 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r4, r7, #0
	adds r4, #0x18
	adds r0, r0, r4
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	str r3, [sp, #0x30]
	bl sub_80528AC
	ldr r0, _08069C8C @ =gSelectedCharacter
	ldrb r0, [r0]
	adds r0, #0xb
	ldr r3, [sp, #0x30]
	strb r0, [r3]
	movs r0, #2
	movs r1, #0x2b
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069C80 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	movs r0, #0xc
	str r0, [sp, #0x24]
	movs r0, #0xb
	add r1, sp, #0x28
	strb r0, [r1]
	ldr r0, _08069C90 @ =0x06011200
	str r0, [sp, #0xc]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08069C88 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069C7C: .4byte gUiGraphics
_08069C80: .4byte gUiGraphics + 0x4
_08069C84: .4byte 0x06011800
_08069C88: .4byte gUiGraphics + 0x14
_08069C8C: .4byte gSelectedCharacter
_08069C90: .4byte 0x06011200

@ Input:
@ R0; TimeRecord record
	thumb_func_start sub_8069C94
sub_8069C94: @ 0x08069C94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	bl sub_80535FC
	movs r0, #0x2c
	bl VramMalloc
	adds r7, r0, #0
	bl sub_8069994
	ldr r0, _08069CF8 @ =sub_8069E50
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08069CFC @ =sub_806A124
	str r1, [sp]
	movs r1, #0xd0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #8]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov sl, r0
	ldr r0, _08069D00 @ =0x030000A8
	adds r6, r5, r0
	ldr r0, [sp, #4]
	bl RegisterTimeRecord
	adds r4, r0, #0
	ldr r1, _08069D04 @ =0x030000C4
	adds r0, r5, r1
	str r4, [r0]
	cmp r4, #0
	beq _08069D10
	ldr r0, _08069D08 @ =0x00000131
	bl m4aSongNumStart
	ldr r0, _08069D0C @ =0x030000CC
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	b _08069D1E
	.align 2, 0
_08069CF8: .4byte sub_8069E50
_08069CFC: .4byte sub_806A124
_08069D00: .4byte 0x030000A8
_08069D04: .4byte 0x030000C4
_08069D08: .4byte 0x00000131
_08069D0C: .4byte 0x030000CC
_08069D10:
	movs r0, #0x99
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r1, _08069E48 @ =0x030000CC
	adds r0, r5, r1
	strb r4, [r0]
_08069D1E:
	ldr r1, _08069E4C @ =gMusicManagerState
	movs r0, #0xff
	strb r0, [r1]
	mov r0, sl
	adds r0, #0xbc
	movs r5, #0
	str r5, [r0]
	adds r0, #4
	str r5, [r0]
	adds r0, #8
	str r7, [r0]
	movs r0, #0x18
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #4]
	movs r7, #0
	movs r0, #0xdd
	lsls r0, r0, #2
	mov sb, r0
	mov r0, sb
	strh r0, [r1, #0xa]
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	movs r0, #0x78
	mov r1, sl
	strh r0, [r1, #0x16]
	strh r0, [r1, #0x18]
	strh r5, [r1, #8]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	adds r1, #0x21
	subs r0, #0x79
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x22
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	strb r7, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	mov r1, sl
	str r0, [r1, #0x28]
	strh r5, [r1, #0x1a]
	str r5, [r1, #0x10]
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r4, sl
	adds r4, #0x30
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	mov r0, sb
	strh r0, [r4, #0xa]
	mov r1, sl
	adds r1, #0x50
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x28
	strh r0, [r4, #0x16]
	movs r0, #0x58
	strh r0, [r4, #0x18]
	strh r5, [r4, #8]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, #1
	subs r0, #0x59
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x52
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	strb r7, [r0]
	mov r0, r8
	str r0, [r4, #0x28]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r7, sl
	adds r7, #0x60
	movs r3, #0xf0
	strh r3, [r7, #0xa]
	movs r2, #0x8c
	strh r2, [r7, #0xc]
	movs r0, #8
	strh r0, [r7, #0xe]
	movs r4, #0x10
	strh r4, [r7, #0x10]
	movs r0, #0xc
	strh r0, [r7, #0x12]
	movs r1, #1
	strb r1, [r7, #0x16]
	movs r0, #0x18
	strh r0, [r7, #8]
	adds r7, #0x18
	strh r3, [r7, #0xa]
	strh r2, [r7, #0xc]
	movs r0, #9
	strh r0, [r7, #0xe]
	movs r0, #2
	strh r0, [r7, #0x10]
	movs r0, #0xb
	strh r0, [r7, #0x12]
	strb r1, [r7, #0x16]
	strh r5, [r7, #8]
	adds r7, #0x18
	movs r0, #0x50
	strh r0, [r7, #0xa]
	strh r0, [r7, #0xc]
	movs r0, #7
	strh r0, [r7, #0xe]
	movs r0, #0xf
	strh r0, [r7, #0x10]
	movs r0, #6
	strh r0, [r7, #0x12]
	strb r1, [r7, #0x16]
	strh r5, [r7, #8]
	strh r5, [r6]
	strh r1, [r6, #2]
	strh r1, [r6, #4]
	strh r5, [r6, #6]
	adds r0, #0xfa
	strh r0, [r6, #8]
	strb r4, [r6, #0xa]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl sub_806A02C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069E48: .4byte 0x030000CC
_08069E4C: .4byte gMusicManagerState

	thumb_func_start sub_8069E50
sub_8069E50: @ 0x08069E50
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r2, _08069E80 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	ldr r1, _08069E84 @ =0x030000A8
	adds r4, r0, r1
	ldr r3, _08069E88 @ =0x030000BC
	adds r1, r0, r3
	ldr r3, [r1]
	adds r3, #1
	str r3, [r1]
	ldr r1, _08069E8C @ =0x030000CC
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _08069E90
	movs r0, #0x96
	lsls r0, r0, #2
	movs r1, #0x87
	lsls r1, r1, #2
	b _08069E98
	.align 2, 0
_08069E80: .4byte gCurTask
_08069E84: .4byte 0x030000A8
_08069E88: .4byte 0x030000BC
_08069E8C: .4byte 0x030000CC
_08069E90:
	movs r0, #0xa5
	lsls r0, r0, #1
	movs r1, #0x87
	lsls r1, r1, #1
_08069E98:
	cmp r3, r0
	bls _08069EC8
	ldr r2, _08069EBC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08069EC0 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08069EC4 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, [r6]
	bl TaskDestroy
	bl GoToNextLevel
	b _08069EDE
	.align 2, 0
_08069EBC: .4byte gDispCnt
_08069EC0: .4byte 0x00001FFF
_08069EC4: .4byte gBldRegs
_08069EC8:
	cmp r3, r1
	bls _08069ED4
	adds r0, r4, #0
	bl sub_805423C
	movs r5, #1
_08069ED4:
	bl sub_8069FDC
	adds r0, r5, #0
	bl sub_8069EE4
_08069EDE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8069EE4
sub_8069EE4: @ 0x08069EE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r0, #0
	ldr r1, _08069F38 @ =gUnknown_0868B65C
	mov r0, sp
	movs r2, #0x19
	bl memcpy
	ldr r0, _08069F3C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, _08069F40 @ =0x030000BC
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0x3c
	bls _08069F5A
	adds r1, #8
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08069F1A
	adds r0, r6, #0
	bl DisplaySprite
_08069F1A:
	ldr r1, _08069F44 @ =0x03000030
	adds r0, r4, r1
	bl DisplaySprite
	ldr r0, _08069F48 @ =0x03000090
	adds r5, r4, r0
	cmp r7, #0
	beq _08069F50
	ldr r1, _08069F4C @ =0x030000B4
	adds r0, r4, r1
	adds r1, r5, #0
	bl sub_8052F78
	b _08069F5A
	.align 2, 0
_08069F38: .4byte gUnknown_0868B65C
_08069F3C: .4byte gCurTask
_08069F40: .4byte 0x030000BC
_08069F44: .4byte 0x03000030
_08069F48: .4byte 0x03000090
_08069F4C: .4byte 0x030000B4
_08069F50:
	ldr r1, _08069F70 @ =0x030000B4
	adds r0, r4, r1
	adds r1, r5, #0
	bl sub_80530CC
_08069F5A:
	adds r5, r6, #0
	adds r5, #0x60
	ldrh r4, [r5, #0xc]
	cmp r7, #0
	beq _08069F78
	ldr r0, _08069F74 @ =gUnknown_0868B678
	adds r1, r5, #0
	bl sub_8052F78
	b _08069F80
	.align 2, 0
_08069F70: .4byte 0x030000B4
_08069F74: .4byte gUnknown_0868B678
_08069F78:
	ldr r0, _08069FC4 @ =gUnknown_0868B678
	adds r1, r5, #0
	bl sub_80530CC
_08069F80:
	adds r5, r6, #0
	adds r5, #0x78
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #2
	strh r0, [r5, #0xc]
	ldrh r2, [r5, #0xa]
	subs r0, r2, #2
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	adds r4, r6, #0
	adds r4, #0xc0
	cmp r0, r1
	bge _08069FB4
	adds r0, r2, #0
	adds r0, #0x1e
	strh r0, [r5, #0xa]
	ldr r0, [r4]
	adds r0, #1
	movs r1, #8
	bl Mod
	str r0, [r4]
_08069FB4:
	cmp r7, #0
	beq _08069FC8
	ldr r0, [r4]
	add r0, sp
	adds r1, r5, #0
	bl sub_8052F78
	b _08069FD2
	.align 2, 0
_08069FC4: .4byte gUnknown_0868B678
_08069FC8:
	ldr r0, [r4]
	add r0, sp
	adds r1, r5, #0
	bl sub_80530CC
_08069FD2:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8069FDC
sub_8069FDC: @ 0x08069FDC
	ldr r0, _0806A008 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0806A00C @ =0x03000060
	adds r2, r0, r1
	adds r1, #0x5c
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r1, #0
	subs r0, #0x1f
	cmp r0, #8
	bhi _0806A010
	ldrh r0, [r2, #0xc]
	subs r0, #0xc
	strh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	bgt _0806A028
	movs r0, #0x14
	strh r0, [r2, #0xc]
	b _0806A028
	.align 2, 0
_0806A008: .4byte gCurTask
_0806A00C: .4byte 0x03000060
_0806A010:
	cmp r1, #0x14
	bhi _0806A028
	cmp r1, #0xa
	bls _0806A028
	ldrh r0, [r2, #0xa]
	subs r0, #0x18
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806A028
	movs r0, #0
	strh r0, [r2, #0xa]
_0806A028:
	bx lr
	.align 2, 0

	thumb_func_start sub_806A02C
sub_806A02C: @ 0x0806A02C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrh r6, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov r8, r0
	ldr r0, _0806A068 @ =0x00008C9F
	cmp r4, r0
	bls _0806A080
	ldr r1, _0806A06C @ =0x030000BA
	adds r0, r6, r1
	movs r1, #0x29
	strb r1, [r0]
	ldr r2, _0806A070 @ =0x030000B9
	adds r0, r6, r2
	strb r1, [r0]
	ldr r3, _0806A074 @ =0x030000B7
	adds r0, r6, r3
	strb r1, [r0]
	ldr r4, _0806A078 @ =0x030000B6
	adds r2, r6, r4
	movs r0, #0x25
	strb r0, [r2]
	ldr r7, _0806A07C @ =0x030000B4
	adds r0, r6, r7
	b _0806A0EA
	.align 2, 0
_0806A068: .4byte 0x00008C9F
_0806A06C: .4byte 0x030000BA
_0806A070: .4byte 0x030000B9
_0806A074: .4byte 0x030000B7
_0806A078: .4byte 0x030000B6
_0806A07C: .4byte 0x030000B4
_0806A080:
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	adds r5, r0, #0
	movs r1, #0x3c
	bl Div
	ldr r2, _0806A104 @ =sZoneTimeSecondsTable
	lsls r0, r0, #1
	adds r1, r0, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r5, r5, r1
	lsls r5, r5, #1
	adds r2, r5, r2
	movs r7, #0
	ldrsh r2, [r2, r7]
	subs r2, r4, r2
	ldr r1, _0806A108 @ =sZoneTimeMinutesTable
	adds r1, r0, r1
	ldrh r1, [r1]
	subs r2, r2, r1
	lsls r2, r2, #1
	ldr r4, _0806A10C @ =gMillisUnpackTable
	adds r1, r2, #1
	adds r1, r1, r4
	ldrb r3, [r1]
	ldr r7, _0806A110 @ =0x030000BA
	adds r1, r6, r7
	strb r3, [r1]
	adds r2, r2, r4
	ldrb r2, [r2]
	ldr r3, _0806A114 @ =0x030000B9
	adds r1, r6, r3
	strb r2, [r1]
	ldr r3, _0806A118 @ =gSecondsTable
	adds r1, r5, #1
	adds r1, r1, r3
	ldrb r2, [r1]
	ldr r4, _0806A11C @ =0x030000B7
	adds r1, r6, r4
	strb r2, [r1]
	adds r1, r5, r3
	ldrb r2, [r1]
	subs r7, #4
	adds r1, r6, r7
	strb r2, [r1]
	adds r0, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	ldr r2, _0806A120 @ =0x030000B4
	adds r0, r6, r2
_0806A0EA:
	strb r1, [r0]
	mov r0, r8
	adds r0, #0xb5
	movs r1, #0x2a
	strb r1, [r0]
	adds r0, #3
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A104: .4byte sZoneTimeSecondsTable
_0806A108: .4byte sZoneTimeMinutesTable
_0806A10C: .4byte gMillisUnpackTable
_0806A110: .4byte 0x030000BA
_0806A114: .4byte 0x030000B9
_0806A118: .4byte gSecondsTable
_0806A11C: .4byte 0x030000B7
_0806A120: .4byte 0x030000B4

	thumb_func_start sub_806A124
sub_806A124: @ 0x0806A124
	push {r4, r5, lr}
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, _0806A14C @ =0x030000C8
	adds r5, r5, r0
	ldr r0, [r5]
	bl VramFree
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806A14C: .4byte 0x030000C8
