.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_802D2F4
sub_802D2F4: @ 0x0802D2F4
	adds r3, r0, #0
	ldr r2, [r3]
	ldr r0, _0802D304 @ =0xFFFFD800
	cmp r2, r0
	bge _0802D308
	movs r1, #1
	b _0802D314
	.align 2, 0
_0802D304: .4byte 0xFFFFD800
_0802D308:
	movs r0, #0xa0
	lsls r0, r0, #6
	movs r1, #3
	cmp r2, r0
	bgt _0802D314
	movs r1, #2
_0802D314:
	ldr r2, [r3, #4]
	ldr r0, _0802D328 @ =0x00001DFF
	cmp r2, r0
	bgt _0802D336
	ldr r0, _0802D32C @ =0xFFFFE200
	cmp r2, r0
	ble _0802D330
	adds r0, r1, #3
	b _0802D332
	.align 2, 0
_0802D328: .4byte 0x00001DFF
_0802D32C: .4byte 0xFFFFE200
_0802D330:
	adds r0, r1, #6
_0802D332:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0802D336:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_802D33C
sub_802D33C: @ 0x0802D33C
	push {r4, lr}
	ldr r1, _0802D36C @ =gUnknown_03005690
	ldr r4, _0802D370 @ =gUnknown_030055E0
	ldr r0, _0802D374 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, [r1, #8]
	ldr r0, [r0, #0x44]
	cmp r1, r0
	blt _0802D364
	ldr r1, _0802D378 @ =0x03000060
	adds r0, r2, r1
	ldrh r0, [r0]
	strb r0, [r4]
	adds r0, r3, #0
	bl TaskDestroy
_0802D364:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D36C: .4byte gUnknown_03005690
_0802D370: .4byte gUnknown_030055E0
_0802D374: .4byte gCurTask
_0802D378: .4byte 0x03000060

@ 0x74
	thumb_func_start Task_802D37C
Task_802D37C: @ 0x0802D37C
	push {r4, r5, r6, lr}
	ldr r0, _0802D3B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	ldr r0, _0802D3B8 @ =0x0300000C
	adds r5, r4, r0
	orrs r6, r4
	bl sub_802D464
	bl sub_802BBF0
	bl sub_802BC6C
	cmp r0, #0
	beq _0802D3DE
	ldr r3, _0802D3BC @ =0x03000070
	adds r1, r4, r3
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0802D3C0
	subs r0, r2, #1
	strh r0, [r1]
	b _0802D3C4
	.align 2, 0
_0802D3B4: .4byte gCurTask
_0802D3B8: .4byte 0x0300000C
_0802D3BC: .4byte 0x03000070
_0802D3C0:
	bl sub_802B884
_0802D3C4:
	adds r0, r5, #0
	bl sub_802B5DC
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
_0802D3DE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_802D3E4
sub_802D3E4: @ 0x0802D3E4
	push {r4, r5, r6, lr}
	ldr r5, _0802D418 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	bl sub_802BBF0
	bl sub_802BC6C
	cmp r0, #0
	beq _0802D444
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802D420
	ldr r1, [r5]
	ldr r0, _0802D41C @ =sub_802D450
	str r0, [r1, #8]
	b _0802D444
	.align 2, 0
_0802D418: .4byte gCurTask
_0802D41C: .4byte sub_802D450
_0802D420:
	adds r0, r4, #0
	bl sub_802B5DC
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0802D436
	ldr r1, [r5]
	ldr r0, _0802D44C @ =sub_802D450
	str r0, [r1, #8]
_0802D436:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r4, #0
	bl DisplaySprite
_0802D444:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D44C: .4byte sub_802D450

	thumb_func_start sub_802D450
sub_802D450: @ 0x0802D450
	push {lr}
	ldr r0, _0802D460 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802D460: .4byte gCurTask

@ 0x74
	thumb_func_start sub_802D464
sub_802D464: @ 0x0802D464
	push {r4, r5, lr}
	ldr r0, _0802D4A4 @ =gCurTask
	ldr r2, [r0]
	ldrh r4, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r1, [r0, #6]
	ldr r0, _0802D4A8 @ =0x03000060
	adds r3, r4, r0
	ldrh r0, [r3]
	cmp r0, #3
	bne _0802D4BE
	ldr r5, _0802D4AC @ =0x0300006D
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D4BC
	ldr r0, _0802D4B0 @ =gUnknown_03005690
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #4
	bne _0802D4BE
	ldr r0, _0802D4B4 @ =sub_802C0CC
	str r0, [r2, #8]
	ldr r0, _0802D4B8 @ =0x03000052
	adds r1, r4, r0
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r1]
	b _0802D4BE
	.align 2, 0
_0802D4A4: .4byte gCurTask
_0802D4A8: .4byte 0x03000060
_0802D4AC: .4byte 0x0300006D
_0802D4B0: .4byte gUnknown_03005690
_0802D4B4: .4byte sub_802C0CC
_0802D4B8: .4byte 0x03000052
_0802D4BC:
	strh r0, [r3]
_0802D4BE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_802D4C4
sub_802D4C4: @ 0x0802D4C4
	push {r4, r5, r6, lr}
	ldr r6, _0802D4F8 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	ldr r0, _0802D4FC @ =0x0300000C
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0802D500 @ =0x0300006D
	adds r4, r4, r0
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802D4F2
	ldr r1, [r6]
	ldr r0, _0802D504 @ =sub_802D66C
	str r0, [r1, #8]
_0802D4F2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D4F8: .4byte gCurTask
_0802D4FC: .4byte 0x0300000C
_0802D500: .4byte 0x0300006D
_0802D504: .4byte sub_802D66C

	thumb_func_start Task_802D508
Task_802D508: @ 0x0802D508
	push {r4, r5, lr}
	ldr r0, _0802D55C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	adds r1, #0xc
	adds r4, r0, r1
	adds r1, #0x62
	adds r2, r0, r1
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0xa0
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0802D556
	subs r0, r3, #1
	strh r0, [r2]
	bl sub_802BBF0
	bl sub_802BC6C
	cmp r0, #0
	beq _0802D556
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_802BE0C
	adds r0, r4, #0
	bl DisplaySprite
_0802D556:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D55C: .4byte gCurTask

	thumb_func_start sub_802D560
sub_802D560: @ 0x0802D560
	movs r2, #0
	ldr r0, _0802D574 @ =gUnknown_030056F0
	movs r1, #0xf
_0802D566:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	subs r1, #1
	cmp r1, #0
	bge _0802D566
	bx lr
	.align 2, 0
_0802D574: .4byte gUnknown_030056F0

	thumb_func_start TaskDestructor_802D578
TaskDestructor_802D578: @ 0x0802D578
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x3c]
	bl EwramFree
	pop {r0}
	bx r0

	thumb_func_start sub_802D58C
sub_802D58C: @ 0x0802D58C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0
	ldr r0, _0802D5A8 @ =gUnknown_03005670
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _0802D5AC @ =0x00007FFF
	adds r5, r0, #0
	cmp r2, r1
	bne _0802D5B0
	strh r4, [r5]
	b _0802D5DA
	.align 2, 0
_0802D5A8: .4byte gUnknown_03005670
_0802D5AC: .4byte 0x00007FFF
_0802D5B0:
	lsls r0, r3, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	beq _0802D5DA
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bhi _0802D5DA
	lsls r0, r3, #1
	adds r2, r0, r5
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _0802D5E8 @ =0x00007FFF
	cmp r1, r0
	bne _0802D5B0
	strh r4, [r2]
_0802D5DA:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802D5E8: .4byte 0x00007FFF

	thumb_func_start SpStage_PlayRingSoundeffect
SpStage_PlayRingSoundeffect: @ 0x0802D5EC
	push {r4, r5, lr}
	ldr r0, _0802D624 @ =gSpecialStageCollectedRings
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802D634
	ldr r4, _0802D628 @ =gMPlayInfo_SE2
	ldr r1, _0802D62C @ =se_ring_copy
	adds r0, r4, #0
	bl MPlayStart
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r5, _0802D630 @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl m4aMPlayVolumeControl
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl m4aMPlayPanpotControl
	b _0802D65A
	.align 2, 0
_0802D624: .4byte gSpecialStageCollectedRings
_0802D628: .4byte gMPlayInfo_SE2
_0802D62C: .4byte se_ring_copy
_0802D630: .4byte 0x0000FFFF
_0802D634:
	ldr r4, _0802D660 @ =gMPlayInfo_SE1
	ldr r1, _0802D664 @ =se_ring_copy
	adds r0, r4, #0
	bl MPlayStart
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r5, _0802D668 @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl m4aMPlayVolumeControl
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl m4aMPlayPanpotControl
_0802D65A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D660: .4byte gMPlayInfo_SE1
_0802D664: .4byte se_ring_copy
_0802D668: .4byte 0x0000FFFF

	thumb_func_start sub_802D66C
sub_802D66C: @ 0x0802D66C
	push {lr}
	ldr r0, _0802D67C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802D67C: .4byte gCurTask

	thumb_func_start sub_802D680
sub_802D680: @ 0x0802D680
	push {lr}
	ldr r0, _0802D6AC @ =gStageFlags
	ldrh r2, [r0]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	bne _0802D6A6
	ldr r0, _0802D6B0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802D6A6
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _0802D6A6
	bl CreatePauseMenu
_0802D6A6:
	pop {r0}
	bx r0
	.align 2, 0
_0802D6AC: .4byte gStageFlags
_0802D6B0: .4byte gPressedKeys

@ inline?
	thumb_func_start sub_802D6B4
sub_802D6B4: @ 0x0802D6B4
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x42
	ldr r0, _0802D6DC @ =gPlayerControls
	ldrh r1, [r1]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0802D6E0
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0802D6E0
	movs r0, #0x80
	lsls r0, r0, #1
	b _0802D6F6
	.align 2, 0
_0802D6DC: .4byte gPlayerControls
_0802D6E0:
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802D6F6
	movs r0, #0xff
	lsls r0, r0, #8
_0802D6F6:
	strh r0, [r2, #0x20]
	bx lr
	.align 2, 0

@ inline?
	thumb_func_start sub_802D6FC
sub_802D6FC: @ 0x0802D6FC
	mov ip, r0
	adds r3, r1, #0
	ldr r1, _0802D740 @ =gUnknown_084872C4
	adds r0, #0x60
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802D744 @ =0x06010000
	adds r0, r0, r1
	str r0, [r3, #4]
	movs r2, #0
	strh r2, [r3, #8]
	mov r0, ip
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	mov r0, ip
	adds r0, #0x64
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r3, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	bx lr
	.align 2, 0
_0802D740: .4byte gUnknown_084872C4
_0802D744: .4byte 0x06010000
