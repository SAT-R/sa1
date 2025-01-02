.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8040278
sub_8040278: @ 0x08040278
	push {r4, lr}
	ldr r0, _080402A0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0x18
	adds r4, r1, r0
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080402A4
	adds r0, r2, #0
	bl TaskDestroy
	b _080403D0
	.align 2, 0
_080402A0: .4byte gCurTask
_080402A4:
	ldrh r1, [r3, #0x14]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	beq _08040344
	cmp r0, #1
	bgt _080402B8
	cmp r0, #0
	beq _080402BE
	b _08040364
_080402B8:
	cmp r0, #2
	beq _0804035C
	b _08040364
_080402BE:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x10
	beq _08040320
	cmp r0, #0x20
	bne _08040328
	ldrb r2, [r3, #0x16]
	ldr r0, _080402F4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08040304
	ldr r1, _080402F8 @ =gMultiplayerPlayerTasks
	lsls r0, r2, #0x18
	asrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r2, _080402FC @ =0x03000050
	adds r1, r0, r2
	ldrh r1, [r1]
	strh r1, [r4, #0x16]
	ldr r1, _08040300 @ =0x03000052
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x18]
	b _08040328
	.align 2, 0
_080402F4: .4byte gGameMode
_080402F8: .4byte gMultiplayerPlayerTasks
_080402FC: .4byte 0x03000050
_08040300: .4byte 0x03000052
_08040304:
	ldr r1, _08040318 @ =gPlayer
	cmp r2, #0
	beq _0804030C
	ldr r1, _0804031C @ =gPartner
_0804030C:
	ldr r0, [r1]
	asrs r0, r0, #8
	str r0, [r3]
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	b _08040326
	.align 2, 0
_08040318: .4byte gPlayer
_0804031C: .4byte gPartner
_08040320:
	ldr r0, _0804033C @ =gWater
	movs r2, #2
	ldrsh r0, [r0, r2]
_08040326:
	str r0, [r3, #4]
_08040328:
	ldr r2, _08040340 @ =gCamera
	ldr r0, [r3]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	b _08040362
	.align 2, 0
_0804033C: .4byte gWater
_08040340: .4byte gCamera
_08040344:
	ldr r2, _08040358 @ =gCamera
	ldr r0, [r3]
	ldrh r1, [r2, #0x28]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	ldrh r1, [r2, #0x2a]
	subs r0, r0, r1
	b _08040362
	.align 2, 0
_08040358: .4byte gCamera
_0804035C:
	ldr r0, [r3]
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
_08040362:
	strh r0, [r4, #0x18]
_08040364:
	ldrh r1, [r3, #0x14]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08040390
	ldr r0, _08040384 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08040388
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0804038E
	.align 2, 0
_08040384: .4byte gPlayer
_08040388:
	ldr r0, [r4, #0x10]
	ldr r1, _080403B4 @ =0xFFFFFBFF
	ands r0, r1
_0804038E:
	str r0, [r4, #0x10]
_08040390:
	ldrh r1, [r3, #0x14]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080403C4
	ldr r0, _080403B8 @ =gStageFlags
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080403BC
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _080403C2
	.align 2, 0
_080403B4: .4byte 0xFFFFFBFF
_080403B8: .4byte gStageFlags
_080403BC:
	ldr r0, [r4, #0x10]
	ldr r1, _080403D8 @ =0xFFFFF7FF
	ands r0, r1
_080403C2:
	str r0, [r4, #0x10]
_080403C4:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080403D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080403D8: .4byte 0xFFFFF7FF

	thumb_func_start sub_80403DC
sub_80403DC: @ 0x080403DC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	mov r2, sb
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	ldr r2, _08040470 @ =0x00004001
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, _08040474 @ =0x03000018
	adds r6, r3, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [r1]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	str r5, [r1, #4]
	movs r5, #0
	movs r4, #0
	mov r2, r8
	strh r2, [r1, #0x14]
	mov r2, sb
	strb r2, [r1, #0x16]
	str r4, [r6, #4]
	strh r4, [r6, #8]
	strh r4, [r6, #0xa]
	ldr r2, _08040478 @ =0x03000038
	adds r1, r3, r2
	strb r5, [r1]
	ldr r1, _0804047C @ =0x03000039
	adds r2, r3, r1
	movs r1, #0xff
	strb r1, [r2]
	strh r4, [r6, #0x1a]
	strh r4, [r6, #0x1c]
	ldr r1, _08040480 @ =0x0300003A
	adds r2, r3, r1
	movs r1, #0x10
	strb r1, [r2]
	ldr r2, _08040484 @ =0x0300003D
	adds r3, r3, r2
	strb r5, [r3]
	str r4, [r6, #0x10]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08040470: .4byte 0x00004001
_08040474: .4byte 0x03000018
_08040478: .4byte 0x03000038
_0804047C: .4byte 0x03000039
_08040480: .4byte 0x0300003A
_08040484: .4byte 0x0300003D

	thumb_func_start sub_8040488
sub_8040488: @ 0x08040488
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0804049C @ =0x03000018
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0804049C: .4byte 0x03000018

	thumb_func_start sub_80404A0
sub_80404A0: @ 0x080404A0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r1, _080404C0 @ =gDustEffectBrakingTask
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _080404BA
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080404C4
_080404BA:
	movs r0, #0
	b _0804053C
	.align 2, 0
_080404C0: .4byte gDustEffectBrakingTask
_080404C4:
	subs r0, r2, #1
	movs r5, #0
	strb r0, [r1]
	ldr r0, _08040544 @ =sub_8040570
	ldr r2, _08040548 @ =0x00004001
	str r5, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	movs r6, #0
	strh r4, [r1]
	strh r7, [r1, #2]
	strh r5, [r1, #4]
	strh r5, [r1, #6]
	ldr r1, _0804054C @ =0x03000008
	adds r4, r2, r1
	ldr r1, _08040550 @ =0x06012100
	str r1, [r4, #4]
	strh r5, [r4, #8]
	movs r1, #0xbb
	lsls r1, r1, #2
	strh r1, [r4, #0xa]
	ldr r3, _08040554 @ =0x03000028
	adds r1, r2, r3
	strb r6, [r1]
	ldr r1, _08040558 @ =0x03000029
	adds r3, r2, r1
	movs r1, #0xff
	strb r1, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r4, #0x1a]
	strh r5, [r4, #0x1c]
	ldr r1, _0804055C @ =0x0300002A
	adds r3, r2, r1
	movs r1, #0x10
	strb r1, [r3]
	ldr r3, _08040560 @ =0x0300002D
	adds r2, r2, r3
	strb r6, [r2]
	movs r5, #0x80
	lsls r5, r5, #6
	str r5, [r4, #0x10]
	ldr r3, _08040564 @ =gPseudoRandom
	ldr r2, [r3]
	ldr r1, _08040568 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _0804056C @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	movs r2, #0xc0
	lsls r2, r2, #4
	ands r1, r2
	orrs r1, r5
	str r1, [r4, #0x10]
_0804053C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08040544: .4byte sub_8040570
_08040548: .4byte 0x00004001
_0804054C: .4byte 0x03000008
_08040550: .4byte 0x06012100
_08040554: .4byte 0x03000028
_08040558: .4byte 0x03000029
_0804055C: .4byte 0x0300002A
_08040560: .4byte 0x0300002D
_08040564: .4byte gPseudoRandom
_08040568: .4byte 0x00196225
_0804056C: .4byte 0x3C6EF35F

	thumb_func_start sub_8040570
sub_8040570: @ 0x08040570
	push {r4, r5, lr}
	ldr r2, _080405A4 @ =gDustEffectBrakingTask
	ldr r0, _080405A8 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #8
	adds r5, r1, r0
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _08040596
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080405AC
_08040596:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r3, #0
	bl TaskDestroy
	b _080405DA
	.align 2, 0
_080405A4: .4byte gDustEffectBrakingTask
_080405A8: .4byte gCurTask
_080405AC:
	ldr r2, _080405E0 @ =gCamera
	ldrh r0, [r4]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldrh r0, [r4, #2]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldrh r0, [r4, #4]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r0, [r4, #6]
	ldrh r1, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
_080405DA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080405E0: .4byte gCamera

	thumb_func_start sub_80405E4
sub_80405E4: @ 0x080405E4
	push {r4, lr}
	sub sp, #4
	ldr r4, _08040610 @ =gDustEffectBrakingTask
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _08040608
	ldr r0, _08040614 @ =Task_8040644
	movs r2, #0x80
	lsls r2, r2, #7
	ldr r1, _08040618 @ =sub_8040638
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	str r0, [r4, #4]
	movs r0, #0x14
	strb r0, [r4]
_08040608:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040610: .4byte gDustEffectBrakingTask
_08040614: .4byte Task_8040644
_08040618: .4byte sub_8040638

	thumb_func_start sub_804061C
sub_804061C: @ 0x0804061C
	push {r4, lr}
	ldr r4, _08040634 @ =gDustEffectBrakingTask
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0804062E
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #4]
_0804062E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040634: .4byte gDustEffectBrakingTask

	thumb_func_start sub_8040638
sub_8040638: @ 0x08040638
	ldr r1, _08040640 @ =gDustEffectBrakingTask
	movs r0, #0
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_08040640: .4byte gDustEffectBrakingTask

    thumb_func_start Task_8040644
Task_8040644:
	bx lr
	.align 2, 0

	thumb_func_start sub_8040648
sub_8040648: @ 0x08040648
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _080406AC @ =sub_80406CC
	ldr r2, _080406B0 @ =0x00004001
	ldr r1, _080406B4 @ =sub_80408AC
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r5, [r6, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4, #4]
	movs r3, #0
	movs r2, #0
	strh r2, [r4, #8]
	ldr r0, _080406B8 @ =0x000002EA
	strh r0, [r4, #0xa]
	ldr r1, _080406BC @ =0x03000020
	adds r0, r5, r1
	strb r3, [r0]
	ldr r0, _080406C0 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r2, [r4, #0x1c]
	ldr r0, _080406C4 @ =0x03000022
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080406C8 @ =0x03000025
	adds r5, r5, r1
	strb r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080406AC: .4byte sub_80406CC
_080406B0: .4byte 0x00004001
_080406B4: .4byte sub_80408AC
_080406B8: .4byte 0x000002EA
_080406BC: .4byte 0x03000020
_080406C0: .4byte 0x03000021
_080406C4: .4byte 0x03000022
_080406C8: .4byte 0x03000025

	thumb_func_start sub_80406CC
sub_80406CC: @ 0x080406CC
	push {r4, r5, r6, r7, lr}
	ldr r5, _080406F0 @ =gPlayer
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _080406E4
	ldr r6, [r5, #0x10]
	movs r0, #0x90
	lsls r0, r0, #3
	ands r6, r0
	subs r0, #0x80
	cmp r6, r0
	beq _080406F8
_080406E4:
	ldr r0, _080406F4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080407B0
	.align 2, 0
_080406F0: .4byte gPlayer
_080406F4: .4byte gCurTask
_080406F8:
	ldr r3, _08040764 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	movs r0, #0x16
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _0804072A
	movs r1, #0
	adds r0, #0xeb
	strh r0, [r4, #0xa]
	ldr r7, _08040768 @ =0x03000020
	adds r0, r2, r7
	strb r1, [r0]
	ldr r0, _0804076C @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, [r3]
	ldr r0, _08040770 @ =sub_80407BC
	str r0, [r1, #8]
_0804072A:
	ldr r7, _08040774 @ =gCamera
	movs r3, #0xf
	ldrsb r3, [r5, r3]
	ldr r2, _08040778 @ =gStageFlags
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804073E
	rsbs r3, r3, #0
_0804073E:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldrh r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	ldrh r1, [r7, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804077C
	ldr r0, [r4, #0x10]
	orrs r0, r6
	b _08040782
	.align 2, 0
_08040764: .4byte gCurTask
_08040768: .4byte 0x03000020
_0804076C: .4byte 0x03000021
_08040770: .4byte sub_80407BC
_08040774: .4byte gCamera
_08040778: .4byte gStageFlags
_0804077C:
	ldr r0, [r4, #0x10]
	ldr r1, _08040798 @ =0xFFFFFBFF
	ands r0, r1
_08040782:
	str r0, [r4, #0x10]
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804079C
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _080407A2
	.align 2, 0
_08040798: .4byte 0xFFFFFBFF
_0804079C:
	ldr r0, [r4, #0x10]
	ldr r1, _080407B8 @ =0xFFFFF7FF
	ands r0, r1
_080407A2:
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080407B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080407B8: .4byte 0xFFFFF7FF

	thumb_func_start sub_80407BC
sub_80407BC: @ 0x080407BC
	push {r4, r5, r6, r7, lr}
	ldr r5, _080407E0 @ =gPlayer
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _080407D4
	ldr r6, [r5, #0x10]
	movs r0, #0x90
	lsls r0, r0, #3
	ands r6, r0
	subs r0, #0x80
	cmp r6, r0
	beq _080407E8
_080407D4:
	ldr r0, _080407E4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080408A0
	.align 2, 0
_080407E0: .4byte gPlayer
_080407E4: .4byte gCurTask
_080407E8:
	ldr r3, _08040854 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	movs r0, #0x16
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bgt _0804081A
	movs r1, #0
	adds r0, #0xea
	strh r0, [r4, #0xa]
	ldr r7, _08040858 @ =0x03000020
	adds r0, r2, r7
	strb r1, [r0]
	ldr r0, _0804085C @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, [r3]
	ldr r0, _08040860 @ =sub_80406CC
	str r0, [r1, #8]
_0804081A:
	ldr r7, _08040864 @ =gCamera
	movs r3, #0xf
	ldrsb r3, [r5, r3]
	ldr r2, _08040868 @ =gStageFlags
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804082E
	rsbs r3, r3, #0
_0804082E:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldrh r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	ldrh r1, [r7, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804086C
	ldr r0, [r4, #0x10]
	orrs r0, r6
	b _08040872
	.align 2, 0
_08040854: .4byte gCurTask
_08040858: .4byte 0x03000020
_0804085C: .4byte 0x03000021
_08040860: .4byte sub_80406CC
_08040864: .4byte gCamera
_08040868: .4byte gStageFlags
_0804086C:
	ldr r0, [r4, #0x10]
	ldr r1, _08040888 @ =0xFFFFFBFF
	ands r0, r1
_08040872:
	str r0, [r4, #0x10]
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804088C
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08040892
	.align 2, 0
_08040888: .4byte 0xFFFFFBFF
_0804088C:
	ldr r0, [r4, #0x10]
	ldr r1, _080408A8 @ =0xFFFFF7FF
	ands r0, r1
_08040892:
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080408A0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080408A8: .4byte 0xFFFFF7FF

	thumb_func_start sub_80408AC
sub_80408AC: @ 0x080408AC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80408C0
sub_80408C0: @ 0x080408C0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08040924 @ =Task_8040944
	ldr r2, _08040928 @ =0x00002001
	ldr r1, _0804092C @ =TaskDestructor_80409E4
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r5, [r6, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #4]
	movs r3, #0
	movs r2, #0
	strh r2, [r4, #8]
	ldr r0, _08040930 @ =0x000002ED
	strh r0, [r4, #0xa]
	ldr r1, _08040934 @ =0x03000020
	adds r0, r5, r1
	strb r3, [r0]
	ldr r0, _08040938 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r2, [r4, #0x1c]
	ldr r0, _0804093C @ =0x03000022
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08040940 @ =0x03000025
	adds r5, r5, r1
	strb r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08040924: .4byte Task_8040944
_08040928: .4byte 0x00002001
_0804092C: .4byte TaskDestructor_80409E4
_08040930: .4byte 0x000002ED
_08040934: .4byte 0x03000020
_08040938: .4byte 0x03000021
_0804093C: .4byte 0x03000022
_08040940: .4byte 0x03000025

	thumb_func_start Task_8040944
Task_8040944: @ 0x08040944
	push {r4, r5, lr}
	ldr r3, _08040964 @ =gPlayer
	ldr r0, [r3, #0x60]
	cmp r0, #0
	beq _0804095A
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0804096C
_0804095A:
	ldr r0, _08040968 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080409D8
	.align 2, 0
_08040964: .4byte gPlayer
_08040968: .4byte gCurTask
_0804096C:
	adds r0, r3, #0
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r0, #0x2c
	bne _080409D8
	adds r0, r3, #0
	adds r0, #0x44
	ldrh r5, [r0]
	cmp r5, #1
	bne _080409D8
	ldr r0, _080409BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _080409C0 @ =gCamera
	ldr r0, [r3]
	asrs r0, r0, #8
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r1, [r3, #4]
	asrs r1, r1, #8
	movs r0, #0xf
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, [r3, #0x10]
	ands r0, r5
	cmp r0, #0
	bne _080409C4
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080409CA
	.align 2, 0
_080409BC: .4byte gCurTask
_080409C0: .4byte gCamera
_080409C4:
	ldr r0, [r4, #0x10]
	ldr r1, _080409E0 @ =0xFFFFFBFF
	ands r0, r1
_080409CA:
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080409D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080409E0: .4byte 0xFFFFFBFF

	thumb_func_start TaskDestructor_80409E4
TaskDestructor_80409E4: @ 0x080409E4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
