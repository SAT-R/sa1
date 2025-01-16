.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Mole
CreateEntity_Mole: @ 0x08071440
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #4
	ldrsb r0, [r7, r0]
	cmp r0, #0
	beq _08071484
	ldr r0, _0807147C @ =Task_Mole
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08071480 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	b _08071496
	.align 2, 0
_0807147C: .4byte Task_Mole
_08071480: .4byte TaskDestructor_8009670
_08071484:
	ldr r0, _0807153C @ =sub_8071734
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08071540 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
_08071496:
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	ldr r1, _08071544 @ =0x0300000C
	adds r4, r5, r1
	movs r6, #0
	mov r2, sb
	strh r2, [r0, #4]
	mov r1, sl
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	strh r6, [r0, #0x3c]
	ldr r1, _08071548 @ =0x0300003E
	adds r0, r5, r1
	movs r2, #0
	strb r2, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, sl
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	movs r0, #0xd9
	lsls r0, r0, #1
	strh r0, [r4, #0xa]
	ldr r2, _0807154C @ =0x0300002C
	adds r0, r5, r2
	movs r1, #0
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r2, #1
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08071550 @ =0x0300002E
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08071554 @ =0x03000031
	adds r5, r5, r1
	movs r2, #0
	strb r2, [r5]
	subs r0, #0x11
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807153C: .4byte sub_8071734
_08071540: .4byte TaskDestructor_8009670
_08071544: .4byte 0x0300000C
_08071548: .4byte 0x0300003E
_0807154C: .4byte 0x0300002C
_08071550: .4byte 0x0300002E
_08071554: .4byte 0x03000031

	thumb_func_start Task_Mole
Task_Mole: @ 0x08071558
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080715D0 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r7, r0
	ldr r1, _080715D4 @ =0x0300000C
	adds r6, r7, r1
	ldr r0, [r5]
	mov ip, r0
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, ip
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _080715D8 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x16]
	ldrh r2, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r2, r1, r2
	strh r2, [r6, #0x18]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	mov r3, r8
	cmp r0, r1
	bhi _080715C2
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080715C2
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080715DC
_080715C2:
	ldrb r0, [r5, #8]
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r3]
	bl TaskDestroy
	b _08071630
	.align 2, 0
_080715D0: .4byte gCurTask
_080715D4: .4byte 0x0300000C
_080715D8: .4byte gCamera
_080715DC:
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	strh r0, [r5, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08071624
	movs r0, #0
	strh r0, [r5, #0x3c]
	ldr r0, _08071608 @ =0x0300002C
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0807160C @ =gPlayer
	ldr r0, [r0]
	asrs r0, r0, #8
	cmp r4, r0
	ble _08071614
	ldr r0, [r6, #0x10]
	ldr r1, _08071610 @ =0xFFFFFBFF
	ands r0, r1
	b _0807161C
	.align 2, 0
_08071608: .4byte 0x0300002C
_0807160C: .4byte gPlayer
_08071610: .4byte 0xFFFFFBFF
_08071614:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0807161C:
	str r0, [r6, #0x10]
	ldr r1, [r3]
	ldr r0, _0807163C @ =sub_8071640
	str r0, [r1, #8]
_08071624:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08071630:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807163C: .4byte sub_8071640

	thumb_func_start sub_8071640
sub_8071640: @ 0x08071640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080716C0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r1, _080716C4 @ =0x0300000C
	adds r5, r6, r1
	ldr r7, [r4]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080716C8 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	subs r0, r1, r0
	movs r1, #0
	mov r8, r1
	strh r0, [r5, #0x16]
	ldrh r1, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r3, r2, r1
	strh r3, [r5, #0x18]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	mov sl, sb
	cmp r0, r1
	bhi _080716B0
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080716B0
	lsls r1, r3, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080716CC
_080716B0:
	ldrb r0, [r4, #8]
	strb r0, [r7]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _08071718
	.align 2, 0
_080716C0: .4byte gCurTask
_080716C4: .4byte 0x0300000C
_080716C8: .4byte gCamera
_080716CC:
	ldrh r0, [r4, #0x3c]
	adds r0, #1
	strh r0, [r4, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _080716EE
	movs r0, #0
	strh r0, [r4, #0x3c]
	ldr r1, _08071728 @ =0x0300002C
	adds r0, r6, r1
	mov r1, r8
	strb r1, [r0]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0807172C @ =Task_Mole
	str r0, [r1, #8]
_080716EE:
	adds r0, r5, #0
	mov r1, ip
	bl sa2__sub_800C4FC
	cmp r0, #0
	beq _0807170C
	ldr r1, _08071728 @ =0x0300002C
	adds r0, r6, r1
	mov r1, r8
	strb r1, [r0]
	strb r1, [r7, #4]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _08071730 @ =sub_8071734
	str r0, [r1, #8]
_0807170C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_08071718:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071728: .4byte 0x0300002C
_0807172C: .4byte Task_Mole
_08071730: .4byte sub_8071734

	thumb_func_start sub_8071734
sub_8071734: @ 0x08071734
	push {r4, r5, r6, r7, lr}
	ldr r4, _080717A0 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r7, [r5]
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080717A4 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #0x18]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08071792
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08071792
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080717A8
_08071792:
	ldrb r0, [r5, #8]
	strb r0, [r7]
	ldr r0, [r4]
	bl TaskDestroy
	b _080717B4
	.align 2, 0
_080717A0: .4byte gCurTask
_080717A4: .4byte gCamera
_080717A8:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_080717B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
