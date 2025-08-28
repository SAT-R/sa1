.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of EggBall

.if 0
.endif

	thumb_func_start Task_803020C
Task_803020C: @ 0x0803020C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _080302D4 @ =gCurTask
	ldr r2, [r3]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r5, r0, r1
	adds r4, r6, #0
	ldr r7, [r5]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x38]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	movs r0, #0x9c
	lsls r0, r0, #9
	adds r1, r1, r0
	movs r0, #0xac
	lsls r0, r0, #9
	cmp r1, r0
	bhi _0803025A
	ldr r0, _080302D8 @ =0xFFFF3000
	cmp r2, r0
	blt _0803025A
	movs r0, #0xa0
	lsls r0, r0, #6
	cmp r2, r0
	ble _08030260
_0803025A:
	ldr r1, [r3]
	ldr r0, _080302DC @ =Task_8030120
	str r0, [r1, #8]
_08030260:
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #0x30]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #0x34]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _080302D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	ldr r3, _080302E0 @ =gPlayer
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	mov r8, r0
	ldr r0, _080302E4 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080302EC
	ldr r3, _080302E8 @ =gPartner
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	b _080302EE
	.align 2, 0
_080302D4: .4byte gCurTask
_080302D8: .4byte 0xFFFF3000
_080302DC: .4byte Task_8030120
_080302E0: .4byte gPlayer
_080302E4: .4byte gNumSingleplayerCharacters
_080302E8: .4byte gPartner
_080302EC:
	movs r0, #0
_080302EE:
	mov r1, r8
	cmp r1, #2
	beq _080302F8
	cmp r0, #2
	bne _08030322
_080302F8:
	ldr r0, _08030350 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r0, r0, r2
	ldrh r2, [r0, #6]
	ldr r0, _08030354 @ =0x0300003C
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08030358 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r1, _0803035C @ =0x0300005D
	adds r2, r2, r1
	movs r0, #0xff
	strb r0, [r2]
_08030322:
	ldr r2, _08030360 @ =gCamera
	ldrh r1, [r2]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r1, [r2, #2]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030350: .4byte gCurTask
_08030354: .4byte 0x0300003C
_08030358: .4byte 0xFFFFBFFF
_0803035C: .4byte 0x0300005D
_08030360: .4byte gCamera

	thumb_func_start Task_8030364
Task_8030364: @ 0x08030364
	push {r4, r5, lr}
	ldr r4, _080303C4 @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r3, [r0, #6]
	adds r3, r3, r1
	ldr r1, [r3]
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r5, #0x30]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x34]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _080303C8 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, #0x78
	cmp r2, r0
	bge _080303CC
	movs r0, #0x80
	lsls r0, r0, #2
	b _080303CE
	.align 2, 0
_080303C4: .4byte gCurTask
_080303C8: .4byte gCamera
_080303CC:
	ldr r0, _080303DC @ =0xFFFFFE00
_080303CE:
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	bne _080303E4
	ldr r0, _080303E0 @ =0xFFFFFA00
	b _080303F6
	.align 2, 0
_080303DC: .4byte 0xFFFFFE00
_080303E0: .4byte 0xFFFFFA00
_080303E4:
	cmp r0, #0
	bge _080303F0
	ldr r1, _080303EC @ =0xFFFFFD00
	b _080303F4
	.align 2, 0
_080303EC: .4byte 0xFFFFFD00
_080303F0:
	movs r1, #0xc0
	lsls r1, r1, #2
_080303F4:
	adds r0, r0, r1
_080303F6:
	str r0, [r5, #0x3c]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r4]
	ldr r0, _08030410 @ =sub_8030414
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030410: .4byte sub_8030414

	thumb_func_start sub_8030414
sub_8030414: @ 0x08030414
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08030450 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	mov r8, r5
	ldrh r0, [r3]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r7, [r6]
	ldr r0, _08030454 @ =0x03000040
	adds r2, r2, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _08030458
	adds r0, r3, #0
	bl TaskDestroy
	b _0803051A
	.align 2, 0
_08030450: .4byte gCurTask
_08030454: .4byte 0x03000040
_08030458:
	ldr r4, [r5, #0x3c]
	adds r4, #0x28
	str r4, [r5, #0x3c]
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x38]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	ldr r3, [r5, #0x34]
	adds r3, r3, r4
	str r3, [r5, #0x34]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	asrs r1, r1, #8
	adds r2, r2, r1
	lsls r2, r2, #0x10
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r3, r3, #8
	adds r1, r1, r3
	lsls r1, r1, #0x10
	ldr r3, _08030528 @ =gCamera
	ldrh r0, [r3]
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r5, #0x18]
	cmp r4, #0
	ble _080304CC
	adds r0, r1, #0
	adds r0, #0x18
	ldr r1, _0803052C @ =sa2__sub_801EC3C
	str r1, [sp]
	adds r1, r2, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _080304CC
	lsls r1, r0, #8
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	ldr r1, [r5, #0x3c]
	asrs r0, r1, #2
	subs r0, r0, r1
	str r0, [r5, #0x3c]
_080304CC:
	mov r0, r8
	adds r0, #0x40
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0803050E
	ldr r3, _08030530 @ =gPseudoRandom
	ldr r1, [r3]
	ldr r0, _08030534 @ =0x00196225
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _08030538 @ =0x3C6EF35F
	adds r2, r2, r0
	str r2, [r3]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x3f
	ands r1, r2
	adds r0, r0, r1
	subs r0, #0x20
	lsls r0, r0, #8
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r3, #0xfc
	lsls r3, r3, #0xe
	ands r2, r3
	asrs r2, r2, #0x10
	subs r2, #0x20
	subs r1, r1, r2
	lsls r1, r1, #8
	bl sub_8017540
_0803050E:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0803051A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030528: .4byte gCamera
_0803052C: .4byte sa2__sub_801EC3C
_08030530: .4byte gPseudoRandom
_08030534: .4byte 0x00196225
_08030538: .4byte 0x3C6EF35F

@ -> 0x4C
	thumb_func_start Task_803053C
Task_803053C: @ 0x0803053C
	push {r4, r5, r6, lr}
	ldr r5, _08030588 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	ldr r0, _0803058C @ =0x03000045
	adds r1, r4, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08030582
	ldr r2, _08030590 @ =gUnknown_084ACE12
	ldr r6, _08030594 @ =0x03000044
	adds r3, r4, r6
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r6, #4
	adds r0, r4, r6
	strh r1, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r2, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, _08030598 @ =0x03000042
	adds r0, r4, r2
	strh r1, [r0]
	ldr r1, [r5]
	ldr r0, _0803059C @ =sub_80305A0
	str r0, [r1, #8]
_08030582:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08030588: .4byte gCurTask
_0803058C: .4byte 0x03000045
_08030590: .4byte gUnknown_084ACE12
_08030594: .4byte 0x03000044
_08030598: .4byte 0x03000042
_0803059C: .4byte sub_80305A0

	thumb_func_start sub_80305A0
sub_80305A0: @ 0x080305A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08030620 @ =gCurTask
	ldr r5, [r0]
	ldrh r4, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov ip, r0
	ldr r0, [r0, #0x48]
	ldr r1, _08030624 @ =0x0300000C
	adds r6, r4, r1
	mov r2, ip
	ldr r2, [r2]
	mov r8, r2
	adds r0, #0x8a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _08030638
	ldr r2, _08030628 @ =gUnknown_084ACE12
	ldr r3, _0803062C @ =0x03000044
	adds r0, r4, r3
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r7, _08030630 @ =0x03000040
	adds r2, r4, r7
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	asrs r0, r0, #0x14
	ldrh r7, [r2]
	adds r0, r0, r7
	strh r0, [r2]
	ldr r7, _08030634 @ =0x03000042
	adds r0, r4, r7
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r7, [r0]
	adds r1, r1, r7
	strh r1, [r0]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, r3
	bne _08030678
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _08030678
	adds r0, r5, #0
	bl TaskDestroy
	b _08030700
	.align 2, 0
_08030620: .4byte gCurTask
_08030624: .4byte 0x0300000C
_08030628: .4byte gUnknown_084ACE12
_0803062C: .4byte 0x03000044
_08030630: .4byte 0x03000040
_08030634: .4byte 0x03000042
_08030638:
	ldr r0, _0803070C @ =0x03000040
	adds r1, r4, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0803064A
	adds r0, r2, #1
	strh r0, [r1]
_0803064A:
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	ble _08030658
	subs r0, r2, #1
	strh r0, [r1]
_08030658:
	ldr r0, _08030710 @ =0x03000042
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _0803066A
	adds r0, r1, #1
	strh r0, [r2]
_0803066A:
	ldrh r1, [r2]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0
	ble _08030678
	subs r0, r1, #1
	strh r0, [r2]
_08030678:
	mov r0, ip
	ldrb r1, [r0, #8]
	lsls r1, r1, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, ip
	ldrh r2, [r2, #0x3c]
	adds r1, r1, r2
	mov r0, ip
	adds r0, #0x40
	ldrh r3, [r0]
	adds r3, r3, r1
	mov r7, r8
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	mov r2, ip
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrh r7, [r2, #0x3e]
	adds r1, r1, r7
	mov r0, ip
	adds r0, #0x42
	ldrh r2, [r0]
	adds r2, r2, r1
	ldr r1, _08030714 @ =gCamera
	ldrh r0, [r1]
	lsls r3, r3, #0x10
	asrs r5, r3, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r1, #2]
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x18]
	mov r0, ip
	adds r0, #0x44
	ldrb r1, [r0]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080306F4
	ldr r3, _08030718 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80096B0
	ldr r0, _0803071C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080306F4
	ldr r3, _08030720 @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80096B0
_080306F4:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08030700:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803070C: .4byte 0x03000040
_08030710: .4byte 0x03000042
_08030714: .4byte gCamera
_08030718: .4byte gPlayer
_0803071C: .4byte gNumSingleplayerCharacters
_08030720: .4byte gPartner

	thumb_func_start TaskDestructor_EggBall
TaskDestructor_EggBall: @ 0x08030724
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
    
    @ ->0x44 task
	thumb_func_start TaskDestructor_8030740
TaskDestructor_8030740: @ 0x08030740
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

    @ ->0x4C task
	thumb_func_start TaskDestructor_8030754
TaskDestructor_8030754: @ 0x08030754
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r0, r1
	adds r1, #0x44
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	cmp r0, #0
	bne _08030774
	ldr r0, [r2, #0x10]
	bl VramFree
_08030774:
	pop {r0}
	bx r0

	thumb_func_start sub_8030778
sub_8030778: @ 0x08030778
	push {r4, r5, r6, r7, lr}
	ldr r2, _080307B8 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _080307BC @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _080307C0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080307C8
	ldr r3, _080307C4 @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _080307CA
	.align 2, 0
_080307B8: .4byte gCurTask
_080307BC: .4byte gPlayer
_080307C0: .4byte gNumSingleplayerCharacters
_080307C4: .4byte gPartner
_080307C8:
	movs r0, #0
_080307CA:
	cmp r7, #2
	beq _080307D2
	cmp r0, #2
	bne _080307FC
_080307D2:
	ldr r0, _08030804 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _08030808 @ =0x0300003C
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0803080C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08030810 @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_080307FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030804: .4byte gCurTask
_08030808: .4byte 0x0300003C
_0803080C: .4byte 0xFFFFBFFF
_08030810: .4byte 0x0300005D

@ inline same as sub_802EF24 in Boss 2
	thumb_func_start sub_8030814_inline
sub_8030814_inline: @ 0x08030814
	ldr r0, _08030844 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _08030848 @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08030840
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08030840
	movs r0, #0
	strb r0, [r3]
	ldr r0, _0803084C @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_08030840:
	bx lr
	.align 2, 0
_08030844: .4byte gCurTask
_08030848: .4byte 0x0300003C
_0803084C: .4byte 0x0300005D

@ inline
	thumb_func_start sub_8030850_inline
sub_8030850_inline: @ 0x08030850
	ldr r0, _08030868 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0803086C @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_08030868: .4byte gCurTask
_0803086C: .4byte 0x0300000C

@ inline - same as sub_802EF60 in Boss 2
	thumb_func_start sub_8030870_inline
sub_8030870_inline: @ 0x08030870
	push {r4, lr}
	ldr r2, _08030898 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _0803089C @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _080308A0 @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08030898: .4byte gCurTask
_0803089C: .4byte 0x0300000C
_080308A0: .4byte gCamera
