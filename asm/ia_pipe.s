.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_PipeExit
Task_PipeExit: @ 0x080963A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _080964B8 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, r8
	str r0, [sp]
	ldr r2, [r0]
	str r2, [sp, #4]
	ldr r6, _080964BC @ =0x0300000C
	add r6, r8
	ldr r0, _080964C0 @ =0x0300003C
	add r0, r8
	ldrb r0, [r0]
	ldr r4, _080964C4 @ =gPlayer
	cmp r0, #0
	beq _080963D2
	ldr r4, _080964C8 @ =gPartner
_080963D2:
	ldr r3, [sp]
	ldrb r1, [r3, #8]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp, #4]
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080964CC @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov sl, r1
	subs r0, r1, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	subs r0, r7, r0
	strh r0, [r6, #0x18]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	mov sb, r1
	adds r5, r0, #0
	ands r5, r1
	cmp r5, #0
	bne _080964EA
	movs r2, #0x80
	lsls r2, r2, #0xf
	ands r0, r2
	cmp r0, #0
	beq _080964DC
	movs r3, #0x6d
	adds r3, r3, r4
	mov sb, r3
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldr r0, _080964D0 @ =0x0300003D
	add r0, r8
	ldrb r0, [r0]
	cmp r1, r0
	bge _08096500
	adds r0, r6, #0
	mov r1, sl
	adds r2, r7, #0
	adds r3, r4, #0
	bl Coll_Player_Entity_Intersection
	cmp r0, #0
	beq _08096500
	ldr r1, _080964D4 @ =0x0300003E
	add r1, r8
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #6
	ands r0, r1
	subs r1, #0xfe
	ands r0, r1
	adds r1, #0xf0
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
	lsls r0, r7, #8
	str r0, [r4, #4]
	mov r2, sl
	lsls r0, r2, #8
	str r0, [r4]
	strh r5, [r4, #0xa]
	strh r5, [r4, #8]
	strh r5, [r4, #0xc]
	strh r5, [r4, #0x38]
	strh r5, [r4, #0x3a]
	movs r0, #0x7f
	mov r3, sb
	strb r0, [r3]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	ldr r0, _080964B8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080964D8 @ =sub_809656C
	str r0, [r1, #8]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	b _08096500
	.align 2, 0
_080964B8: .4byte gCurTask
_080964BC: .4byte 0x0300000C
_080964C0: .4byte 0x0300003C
_080964C4: .4byte gPlayer
_080964C8: .4byte gPartner
_080964CC: .4byte gCamera
_080964D0: .4byte 0x0300003D
_080964D4: .4byte 0x0300003E
_080964D8: .4byte sub_809656C
_080964DC:
	adds r0, r6, #0
	mov r1, sl
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_80096B0
	b _08096500
_080964EA:
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	ldr r0, [r4, #0x10]
	mov r1, sb
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #1
	strb r0, [r1]
_08096500:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08096524
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08096524
	movs r3, #0x18
	ldrsh r1, [r6, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08096544
_08096524:
	ldr r0, [sp]
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08096536
	ldr r1, [sp]
	ldrb r0, [r1, #8]
	ldr r2, [sp, #4]
	strb r0, [r2]
_08096536:
	ldr r0, _08096540 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0809655A
	.align 2, 0
_08096540: .4byte gCurTask
_08096544:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0809655A
	adds r0, r6, #0
	bl DisplaySprite
_0809655A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809656C
sub_809656C: @ 0x0809656C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _080965FC @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r2, [r7]
	adds r0, #0xc
	adds r0, r0, r6
	mov r8, r0
	ldr r3, _08096600 @ =0x0300003C
	adds r0, r6, r3
	ldrb r0, [r0]
	ldr r4, _08096604 @ =gPlayer
	mov sb, r1
	cmp r0, #0
	beq _08096598
	ldr r4, _08096608 @ =gPartner
_08096598:
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0809660C @ =gCamera
	ldrh r0, [r3]
	lsrs r5, r1, #0x10
	mov ip, r5
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r0, r8
	strh r1, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	mov r1, r8
	strh r0, [r1, #0x18]
	ldr r3, [r4, #0x10]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _080965D6
	b _080966F8
_080965D6:
	ldr r5, _08096610 @ =0x0300003E
	adds r0, r6, r5
	ldrb r5, [r0]
	cmp r5, #0
	beq _08096660
	lsls r2, r2, #8
	ldr r0, [r4, #4]
	cmp r0, r2
	beq _08096620
	cmp r0, r2
	bge _08096614
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #4]
	cmp r0, r2
	ble _08096620
	b _0809661E
	.align 2, 0
_080965FC: .4byte gCurTask
_08096600: .4byte 0x0300003C
_08096604: .4byte gPlayer
_08096608: .4byte gPartner
_0809660C: .4byte gCamera
_08096610: .4byte 0x0300003E
_08096614:
	ldr r3, _08096640 @ =0xFFFFFE80
	adds r0, r0, r3
	str r0, [r4, #4]
	cmp r0, r2
	bge _08096620
_0809661E:
	str r2, [r4, #4]
_08096620:
	mov r5, ip
	lsls r0, r5, #0x10
	asrs r1, r0, #8
	ldr r0, [r4]
	cmp r0, r1
	beq _08096650
	cmp r0, r1
	bge _08096644
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4]
	cmp r0, r1
	ble _08096650
	b _0809664E
	.align 2, 0
_08096640: .4byte 0xFFFFFE80
_08096644:
	ldr r3, _0809665C @ =0xFFFFFE80
	adds r0, r0, r3
	str r0, [r4]
	cmp r0, r1
	bge _08096650
_0809664E:
	str r1, [r4]
_08096650:
	adds r1, r7, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	b _080966E2
	.align 2, 0
_0809665C: .4byte 0xFFFFFE80
_08096660:
	ldr r1, _0809667C @ =0x0300003F
	adds r0, r6, r1
	ldrb r2, [r0]
	cmp r2, #1
	bhi _08096698
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08096684
	ldr r2, _08096680 @ =0x03000040
	adds r0, r6, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	b _0809668A
	.align 2, 0
_0809667C: .4byte 0x0300003F
_08096680: .4byte 0x03000040
_08096684:
	ldr r3, _08096694 @ =0x03000040
	adds r0, r6, r3
	ldrh r0, [r0]
_0809668A:
	strh r0, [r4, #0xa]
	strh r5, [r4, #8]
	strh r5, [r4, #0xc]
	b _080966D2
	.align 2, 0
_08096694: .4byte 0x03000040
_08096698:
	movs r0, #1
	adds r1, r0, #0
	ands r1, r2
	cmp r1, #0
	beq _080966BC
	orrs r3, r0
	str r3, [r4, #0x10]
	strh r5, [r4, #0xa]
	ldr r5, _080966B8 @ =0x03000040
	adds r0, r6, r5
	ldrh r1, [r0]
	rsbs r1, r1, #0
	strh r1, [r4, #8]
	ldrh r0, [r0]
	rsbs r0, r0, #0
	b _080966D0
	.align 2, 0
_080966B8: .4byte 0x03000040
_080966BC:
	movs r0, #2
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r4, #0x10]
	strh r1, [r4, #0xa]
	ldr r0, _0809671C @ =0x03000040
	adds r1, r6, r0
	ldrh r0, [r1]
	strh r0, [r4, #8]
	ldrh r0, [r1]
_080966D0:
	strh r0, [r4, #0xc]
_080966D2:
	adds r1, r7, #0
	adds r1, #0x3e
	movs r0, #0xf
	strb r0, [r1]
	mov r2, sb
	ldr r1, [r2]
	ldr r0, _08096720 @ =sub_8096724
	str r0, [r1, #8]
_080966E2:
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_080966F8:
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0809670E
	mov r0, r8
	bl DisplaySprite
_0809670E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809671C: .4byte 0x03000040
_08096720: .4byte sub_8096724

	thumb_func_start sub_8096724
sub_8096724: @ 0x08096724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080967F8 @ =gCurTask
	ldr r0, [r1]
	mov sb, r0
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r2, [r6]
	mov sl, r2
	adds r0, #0xc
	adds r0, r0, r5
	mov r8, r0
	ldr r2, _080967FC @ =0x0300003C
	adds r0, r5, r2
	ldrb r0, [r0]
	ldr r4, _08096800 @ =gPlayer
	cmp r0, #0
	beq _08096754
	ldr r4, _08096804 @ =gPartner
_08096754:
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, sl
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08096808 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r0, r2, #0x10
	lsrs r7, r0, #0x10
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	mov r0, r8
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	mov r2, r8
	strh r1, [r2, #0x18]
	ldr r0, _0809680C @ =0x0300003E
	adds r2, r5, r0
	ldrb r3, [r2]
	cmp r3, #0
	beq _0809681C
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0809686C
	subs r0, r3, #1
	strb r0, [r2]
	movs r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0809686C
	ldr r0, [r4, #0x10]
	ldr r1, _08096810 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r1, _08096814 @ =gPlayerControls
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	orrs r0, r1
	ldrh r1, [r4, #0x38]
	orrs r0, r1
	strh r0, [r4, #0x38]
	adds r0, r4, #0
	adds r0, #0x6d
	movs r2, #0x7f
	strb r2, [r0]
	ldr r0, [r4, #0x10]
	ldr r1, _08096818 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x26
	ldrb r0, [r1]
	ands r2, r0
	strb r2, [r1]
	b _0809686C
	.align 2, 0
_080967F8: .4byte gCurTask
_080967FC: .4byte 0x0300003C
_08096800: .4byte gPlayer
_08096804: .4byte gPartner
_08096808: .4byte gCamera
_0809680C: .4byte 0x0300003E
_08096810: .4byte 0xFFDFFFFF
_08096814: .4byte gPlayerControls
_08096818: .4byte 0xFFBFFFFF
_0809681C:
	ldr r0, _08096864 @ =Task_PipeExit
	mov r1, sb
	str r0, [r1, #8]
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r0, r2
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08096848
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08096848
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0809686C
_08096848:
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08096858
	ldrb r0, [r6, #8]
	mov r2, sl
	strb r0, [r2]
_08096858:
	ldr r1, _08096868 @ =gCurTask
	ldr r0, [r1]
	bl TaskDestroy
	b _08096882
	.align 2, 0
_08096864: .4byte Task_PipeExit
_08096868: .4byte gCurTask
_0809686C:
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08096882
	mov r0, r8
	bl DisplaySprite
_08096882:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_PipeExit
TaskDestructor_PipeExit: @ 0x08096890
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r2, _080968B0 @ =0x0300003C
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080968AA
	ldr r0, [r1, #0x10]
	bl VramFree
_080968AA:
	pop {r0}
	bx r0
	.align 2, 0
_080968B0: .4byte 0x0300003C
