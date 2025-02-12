.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_ForcedIceSlide
CreateEntity_ForcedIceSlide: @ 0x0807834C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _0807844C @ =Task_ForcedIceSlide
	mov r1, r8
	movs r2, #4
	ldrsb r2, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _08078450 @ =TaskDestructor_ForcedIceSlide
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r5, r1
	ldr r0, _08078454 @ =0x0300000C
	adds r7, r5, r0
	movs r2, #0
	movs r3, #0
	mov sb, r3
	strh r4, [r1, #4]
	strh r6, [r1, #6]
	mov r0, r8
	str r0, [r1]
	ldrb r0, [r0]
	strb r0, [r1, #8]
	mov r1, r8
	ldrb r0, [r1, #3]
	ldr r3, _08078458 @ =0x0300003C
	adds r3, r3, r5
	mov sl, r3
	strb r0, [r3]
	ldr r1, _0807845C @ =0x0300003D
	adds r0, r5, r1
	strb r2, [r0]
	ldr r3, _08078460 @ =0x0300003E
	adds r0, r5, r3
	strb r2, [r0]
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r7, #0x18]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r1]
	movs r0, #0x12
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	ldr r1, _08078464 @ =gUnknown_086CED6C
	ldr r0, _08078468 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r1, _0807846C @ =0x0300002C
	adds r0, r5, r1
	ldr r2, [sp, #4]
	strb r2, [r0]
	movs r0, #0xc0
	strh r0, [r7, #0x1a]
	mov r3, sb
	strh r3, [r7, #8]
	strh r3, [r7, #0x14]
	strh r3, [r7, #0x1c]
	ldr r0, _08078470 @ =0x0300002D
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _08078474 @ =0x0300002E
	adds r1, r5, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08078478 @ =0x03000031
	adds r5, r5, r0
	strb r2, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	mov r2, sl
	ldrb r0, [r2]
	cmp r0, #0
	beq _0807843A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r7, #0x10]
_0807843A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807844C: .4byte Task_ForcedIceSlide
_08078450: .4byte TaskDestructor_ForcedIceSlide
_08078454: .4byte 0x0300000C
_08078458: .4byte 0x0300003C
_0807845C: .4byte 0x0300003D
_08078460: .4byte 0x0300003E
_08078464: .4byte gUnknown_086CED6C
_08078468: .4byte gCurrentLevel
_0807846C: .4byte 0x0300002C
_08078470: .4byte 0x0300002D
_08078474: .4byte 0x0300002E
_08078478: .4byte 0x03000031

	thumb_func_start Task_ForcedIceSlide
Task_ForcedIceSlide: @ 0x0807847C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	movs r0, #3
	str r0, [sp, #0x14]
	ldr r0, _080784D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sb, r0
	ldr r2, _080784D8 @ =0x0300000C
	adds r2, r2, r1
	mov sl, r2
	ldr r4, [r0]
	str r4, [sp, #0x10]
	ldrb r0, [r0, #8]
	lsls r0, r0, #3
	mov r2, sb
	ldrh r1, [r2, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	movs r6, #0
	ldr r5, _080784DC @ =gPartner
	ldr r7, _080784E0 @ =gPlayer
_080784CC:
	cmp r6, #0
	beq _080784E4
	ldr r0, [r5, #0x10]
	b _080784E6
	.align 2, 0
_080784D4: .4byte gCurTask
_080784D8: .4byte 0x0300000C
_080784DC: .4byte gPartner
_080784E0: .4byte gPlayer
_080784E4:
	ldr r0, [r7, #0x10]
_080784E6:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080784F0
	b _080788B0
_080784F0:
	ldr r4, [sp, #8]
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r6, #0
	beq _08078506
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08078510
	b _0807884A
_08078506:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08078510
	b _0807884A
_08078510:
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x10]
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r6, #0
	beq _08078528
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08078532
	b _0807884A
_08078528:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08078532
	b _0807884A
_08078532:
	ldr r4, [sp, #0xc]
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r6, #0
	beq _08078548
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08078552
	b _0807884A
_08078548:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08078552
	b _0807884A
_08078552:
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x10]
	ldrb r0, [r2, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r6, #0
	beq _0807856A
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08078574
	b _0807884A
_0807856A:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08078574
	b _0807884A
_08078574:
	mov r0, sb
	adds r0, #0x3d
	adds r1, r0, r6
	ldrb r1, [r1]
	mov r8, r0
	cmp r1, #0
	bne _080785C2
	cmp r6, #0
	beq _0807858A
	ldr r0, [r5, #4]
	b _0807858C
_0807858A:
	ldr r0, [r7, #4]
_0807858C:
	asrs r3, r0, #8
	cmp r6, #0
	beq _08078596
	ldr r0, [r5]
	b _08078598
_08078596:
	ldr r0, [r7]
_08078598:
	asrs r1, r0, #8
	cmp r6, #0
	beq _080785A8
	ldr r4, _080785A4 @ =gPartner + 0x27
	ldrb r2, [r4]
	b _080785AC
	.align 2, 0
_080785A4: .4byte gPartner + 0x27
_080785A8:
	ldr r0, _080785CC @ =gPlayer + 0x27
	ldrb r2, [r0]
_080785AC:
	movs r0, #0
	str r0, [sp]
	ldr r0, _080785D0 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sa2__sub_801F07C
	cmp r0, #3
	ble _080785C2
	b _0807883E
_080785C2:
	cmp r6, #0
	beq _080785D4
	ldr r0, [r5, #0x10]
	b _080785D6
	.align 2, 0
_080785CC: .4byte gPlayer + 0x27
_080785D0: .4byte sa2__sub_801EE64
_080785D4:
	ldr r0, [r7, #0x10]
_080785D6:
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080785E0
	b _0807883E
_080785E0:
	cmp r6, #0
	beq _080785E8
	ldr r0, [r5, #0x10]
	b _080785EA
_080785E8:
	ldr r0, [r7, #0x10]
_080785EA:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080785F4
	b _080787EE
_080785F4:
	mov r1, r8
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _08078610
	ldr r0, _08078634 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #4
	bne _08078610
	movs r0, #0xc9
	bl m4aSongNumStart
_08078610:
	mov r2, r8
	adds r1, r2, r6
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08078638 @ =gPlayer
	cmp r6, #0
	beq _08078620
	ldr r0, _0807863C @ =gPartner
_08078620:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _08078640
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807864A
	.align 2, 0
_08078634: .4byte gCurrentLevel
_08078638: .4byte gPlayer
_0807863C: .4byte gPartner
_08078640:
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_0807864A:
	ldr r3, _0807865C @ =gPlayer
	cmp r6, #0
	beq _08078664
	ldr r0, [r5, #0x10]
	ldr r1, _08078660 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807866C
	.align 2, 0
_0807865C: .4byte gPlayer
_08078660: .4byte 0xFFFFFEFF
_08078664:
	ldr r0, [r7, #0x10]
	ldr r1, _0807867C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r7, #0x10]
_0807866C:
	cmp r6, #0
	beq _08078680
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807868A
	.align 2, 0
_0807867C: .4byte 0xFFFFFEFF
_08078680:
	ldr r0, [r7, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_0807868A:
	cmp r6, #0
	beq _0807869A
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _080786A4
_0807869A:
	ldr r0, [r7, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_080786A4:
	cmp r6, #0
	beq _080786B4
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r5, #0x10]
	b _080786BE
_080786B4:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r7, #0x10]
_080786BE:
	cmp r6, #0
	beq _080786C8
	movs r0, #0
	strh r0, [r5, #0x38]
	b _080786CA
_080786C8:
	strh r6, [r3, #0x38]
_080786CA:
	cmp r6, #0
	beq _080786D4
	movs r0, #0
	strh r0, [r5, #0x3a]
	b _080786D6
_080786D4:
	strh r6, [r3, #0x3a]
_080786D6:
	mov r0, sb
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807871A
	cmp r6, #0
	beq _080786EE
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0x10]
	b _080786F6
_080786EE:
	ldr r0, [r7, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x10]
_080786F6:
	cmp r6, #0
	beq _08078702
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r5, #0xc]
	b _08078708
_08078702:
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r3, #0xc]
_08078708:
	cmp r6, #0
	beq _08078714
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r5, #8]
	b _08078758
_08078714:
	movs r0, #0xfc
	lsls r0, r0, #8
	b _08078756
_0807871A:
	cmp r6, #0
	beq _0807872A
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _08078734
_0807872A:
	ldr r0, [r7, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_08078734:
	cmp r6, #0
	beq _08078740
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0xc]
	b _08078746
_08078740:
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r3, #0xc]
_08078746:
	cmp r6, #0
	beq _08078752
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #8]
	b _08078758
_08078752:
	movs r0, #0x80
	lsls r0, r0, #3
_08078756:
	strh r0, [r3, #8]
_08078758:
	cmp r6, #0
	beq _08078762
	movs r0, #0
	strh r0, [r5, #0xa]
	b _08078764
_08078762:
	strh r6, [r3, #0xa]
_08078764:
	cmp r6, #0
	beq _08078774
	movs r0, #0xf
	ldr r4, _08078770 @ =gPartner + 0x40
	strb r0, [r4]
	b _0807877C
	.align 2, 0
_08078770: .4byte gPartner + 0x40
_08078774:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0xf
	strb r0, [r1]
_0807877C:
	ldr r0, _080787B4 @ =gPlayer
	cmp r6, #0
	beq _08078784
	ldr r0, _080787B8 @ =gPartner
_08078784:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _080787B4 @ =gPlayer
	cmp r6, #0
	beq _08078792
	ldr r1, _080787B8 @ =gPartner
_08078792:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r3, _080787B4 @ =gPlayer
	adds r1, r3, #0
	cmp r6, #0
	beq _080787A0
	ldr r1, _080787B8 @ =gPartner
_080787A0:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	ldr r0, _080787BC @ =gCamera
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r6, #0
	beq _080787C0
	ldr r0, [r5]
	b _080787C2
	.align 2, 0
_080787B4: .4byte gPlayer
_080787B8: .4byte gPartner
_080787BC: .4byte gCamera
_080787C0:
	ldr r0, [r3]
_080787C2:
	asrs r0, r0, #8
	subs r0, r0, r1
	mov r4, sl
	strh r0, [r4, #0x16]
	movs r0, #2
	ldrsh r1, [r2, r0]
	cmp r6, #0
	beq _080787D6
	ldr r0, [r5, #4]
	b _080787D8
_080787D6:
	ldr r0, [r3, #4]
_080787D8:
	asrs r0, r0, #8
	subs r0, r0, r1
	mov r1, sl
	strh r0, [r1, #0x18]
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	b _0807883E
_080787EE:
	mov r2, r8
	adds r1, r2, r6
	ldrb r0, [r1]
	cmp r0, #0
	beq _0807883E
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807883E
	cmp r6, #0
	beq _08078814
	ldr r0, [r5, #0x10]
	ldr r1, _08078810 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807881C
	.align 2, 0
_08078810: .4byte 0xFFDFFFFF
_08078814:
	ldr r0, [r7, #0x10]
	ldr r1, _08078830 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
_0807881C:
	ldr r0, _08078834 @ =gPlayerControls
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r6, #0
	beq _08078838
	ldrh r0, [r5, #0x38]
	orrs r1, r0
	strh r1, [r5, #0x38]
	b _0807883E
	.align 2, 0
_08078830: .4byte 0xFFDFFFFF
_08078834: .4byte gPlayerControls
_08078838:
	ldrh r0, [r7, #0x38]
	orrs r1, r0
	strh r1, [r7, #0x38]
_0807883E:
	movs r0, #1
	lsls r0, r6
	ldr r4, [sp, #0x14]
	bics r4, r0
	str r4, [sp, #0x14]
	b _080788B0
_0807884A:
	mov r0, sb
	adds r0, #0x3d
	adds r4, r0, r6
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #1
	bne _080788A8
	ldr r0, _08078874 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	movs r0, #0
	strb r0, [r4]
	cmp r6, #0
	beq _0807887C
	ldr r0, [r5, #0x10]
	ldr r1, _08078878 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08078884
	.align 2, 0
_08078874: .4byte gMPlayInfo_SE2
_08078878: .4byte 0xFFDFFFFF
_0807887C:
	ldr r0, [r7, #0x10]
	ldr r1, _08078898 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
_08078884:
	ldr r0, _0807889C @ =gPlayerControls
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r6, #0
	beq _080788A0
	ldrh r0, [r5, #0x38]
	orrs r1, r0
	strh r1, [r5, #0x38]
	b _080788B0
	.align 2, 0
_08078898: .4byte 0xFFDFFFFF
_0807889C: .4byte gPlayerControls
_080788A0:
	ldrh r0, [r7, #0x38]
	orrs r1, r0
	strh r1, [r7, #0x38]
	b _080788B0
_080788A8:
	cmp r1, #0
	beq _080788B0
	subs r0, #1
	strb r0, [r4]
_080788B0:
	adds r6, #1
	ldr r0, _08078940 @ =gNumSingleplayerCharacters
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r3, r0, #0
	cmp r6, r1
	bge _080788C0
	b _080784CC
_080788C0:
	movs r0, #3
	ldr r1, [sp, #0x14]
	ands r1, r0
	cmp r1, #0
	bne _08078996
	ldr r2, _08078944 @ =gCamera
	ldrh r0, [r2]
	ldr r4, [sp, #8]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	ldr r4, [sp, #0xc]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _0807890C
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0807890C
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08078996
_0807890C:
	movs r5, #0
	movs r2, #0x3d
	add r2, sb
	mov r8, r2
	ldr r7, _08078948 @ =gPartner
	ldr r6, _0807894C @ =gPlayer
	ldr r2, _08078950 @ =0xFFDFFFFF
_0807891A:
	mov r0, r8
	adds r4, r0, r5
	ldrb r0, [r4]
	cmp r0, #0
	beq _0807897C
	movs r0, #0xc9
	str r2, [sp, #0x18]
	bl m4aSongNumStop
	movs r0, #0
	strb r0, [r4]
	ldr r2, [sp, #0x18]
	cmp r5, #0
	beq _08078954
	ldr r0, [r7, #0x10]
	ands r0, r2
	str r0, [r7, #0x10]
	b _0807895A
	.align 2, 0
_08078940: .4byte gNumSingleplayerCharacters
_08078944: .4byte gCamera
_08078948: .4byte gPartner
_0807894C: .4byte gPlayer
_08078950: .4byte 0xFFDFFFFF
_08078954:
	ldr r0, [r6, #0x10]
	ands r0, r2
	str r0, [r6, #0x10]
_0807895A:
	ldr r0, _08078970 @ =gPlayerControls
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r5, #0
	beq _08078974
	ldrh r0, [r7, #0x38]
	orrs r1, r0
	strh r1, [r7, #0x38]
	b _0807897A
	.align 2, 0
_08078970: .4byte gPlayerControls
_08078974:
	ldrh r0, [r6, #0x38]
	orrs r1, r0
	strh r1, [r6, #0x38]
_0807897A:
	ldr r3, _080789A8 @ =gNumSingleplayerCharacters
_0807897C:
	adds r5, #1
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r5, r0
	blt _0807891A
	mov r1, sb
	ldrb r0, [r1, #8]
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	ldr r0, _080789AC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08078996:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080789A8: .4byte gNumSingleplayerCharacters
_080789AC: .4byte gCurTask

	thumb_func_start TaskDestructor_ForcedIceSlide
TaskDestructor_ForcedIceSlide: @ 0x080789B0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
