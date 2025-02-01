.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_PlayerFloatMain
Task_PlayerFloatMain: @ 0x0808F288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0808F33C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r0, [r0]
	mov r8, r0
	ldr r2, _0808F340 @ =0x0300003C
	adds r0, r1, r2
	ldrb r0, [r0]
	mov sb, r0
	ldr r3, _0808F344 @ =0x03000034
	adds r0, r1, r3
	ldrh r2, [r0]
	ldr r4, _0808F348 @ =0x03000036
	adds r0, r1, r4
	ldrh r3, [r0]
	adds r4, #7
	adds r0, r1, r4
	ldrb r7, [r0]
	ldr r0, _0808F34C @ =0x0300003E
	adds r1, r1, r0
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	mov r4, sb
	lsls r1, r4, #3
	lsls r2, r2, #8
	adds r1, r1, r2
	mov r2, r8
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r3, r3, #8
	adds r0, r0, r3
	ldr r2, _0808F350 @ =gCamera
	ldrh r4, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r4
	ldrh r2, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _0808F318
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0808F318
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808F3A4
_0808F318:
	movs r4, #0
	ldr r6, _0808F354 @ =gPartner
	ldr r5, _0808F358 @ =gPlayer
_0808F31E:
	ldr r0, _0808F33C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r4, r0
	ldr r2, _0808F35C @ =0x0300003A
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _0808F374
	cmp r4, #0
	beq _0808F360
	movs r3, #0xa
	ldrsh r0, [r6, r3]
	b _0808F364
	.align 2, 0
_0808F33C: .4byte gCurTask
_0808F340: .4byte 0x0300003C
_0808F344: .4byte 0x03000034
_0808F348: .4byte 0x03000036
_0808F34C: .4byte 0x0300003E
_0808F350: .4byte gCamera
_0808F354: .4byte gPartner
_0808F358: .4byte gPlayer
_0808F35C: .4byte 0x0300003A
_0808F360:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
_0808F364:
	movs r1, #2
	bl Div
	cmp r4, #0
	beq _0808F372
	strh r0, [r6, #0xa]
	b _0808F374
_0808F372:
	strh r0, [r5, #0xa]
_0808F374:
	adds r4, #1
	ldr r0, _0808F39C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0808F31E
	cmp r7, #1
	bne _0808F38C
	movs r0, #0xc8
	bl m4aSongNumStop
_0808F38C:
	mov r3, sb
	mov r2, r8
	strb r3, [r2]
	ldr r0, _0808F3A0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808F6E6
	.align 2, 0
_0808F39C: .4byte gNumSingleplayerCharacters
_0808F3A0: .4byte gCurTask
_0808F3A4:
	adds r0, r3, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r6, #0
	ldr r4, _0808F3D8 @ =gPartner
	movs r0, #0x40
	adds r0, r0, r4
	mov sl, r0
	ldr r5, _0808F3DC @ =gPlayer
	movs r1, #0x40
	adds r1, r1, r5
	mov sb, r1
_0808F3C6:
	cmp r6, #0
	beq _0808F3E0
	mov r2, sl
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0x25
	bne _0808F3EA
	b _0808F3F8
	.align 2, 0
_0808F3D8: .4byte gPartner
_0808F3DC: .4byte gPlayer
_0808F3E0:
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0x25
	beq _0808F3F8
_0808F3EA:
	cmp r7, #0
	beq _0808F3F8
	ldr r0, _0808F400 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	movs r7, #0
_0808F3F8:
	cmp r6, #0
	beq _0808F404
	ldr r0, [r4, #0x10]
	b _0808F406
	.align 2, 0
_0808F400: .4byte gMPlayInfo_SE2
_0808F404:
	ldr r0, [r5, #0x10]
_0808F406:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808F410
	b _0808F6BC
_0808F410:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r6, #0
	beq _0808F426
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808F430
	b _0808F69C
_0808F426:
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808F430
	b _0808F69C
_0808F430:
	asrs r1, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r6, #0
	beq _0808F448
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808F452
	b _0808F69C
_0808F448:
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808F452
	b _0808F69C
_0808F452:
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r6, #0
	beq _0808F468
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808F472
	b _0808F69C
_0808F468:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808F472
	b _0808F69C
_0808F472:
	asrs r1, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r6, #0
	beq _0808F48A
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808F494
	b _0808F69C
_0808F48A:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808F494
	b _0808F69C
_0808F494:
	cmp r7, #0
	bne _0808F4C4
	cmp r6, #0
	beq _0808F4A8
	mov r3, sl
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0x25
	bne _0808F4B2
	b _0808F4C4
_0808F4A8:
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x25
	beq _0808F4C4
_0808F4B2:
	mov r2, r8
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _0808F4C4
	movs r7, #1
	movs r0, #0xc8
	bl m4aSongNumStart
_0808F4C4:
	cmp r6, #0
	beq _0808F4CC
	ldr r1, [r4, #0x10]
	b _0808F4CE
_0808F4CC:
	ldr r1, [r5, #0x10]
_0808F4CE:
	movs r0, #0x80
	ands r1, r0
	ldr r2, _0808F4E4 @ =gPlayer
	cmp r1, #0
	bne _0808F4EE
	cmp r6, #0
	beq _0808F4E8
	ldrh r0, [r4, #0xa]
	subs r0, #0x68
	strh r0, [r4, #0xa]
	b _0808F4EE
	.align 2, 0
_0808F4E4: .4byte gPlayer
_0808F4E8:
	ldrh r0, [r5, #0xa]
	subs r0, #0x68
	strh r0, [r5, #0xa]
_0808F4EE:
	cmp r6, #0
	beq _0808F504
	movs r3, #0xa
	ldrsh r1, [r4, r3]
	ldr r0, _0808F500 @ =0xFFFFFDC0
	cmp r1, r0
	blt _0808F50E
	b _0808F524
	.align 2, 0
_0808F500: .4byte 0xFFFFFDC0
_0808F504:
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	ldr r0, _0808F518 @ =0xFFFFFDC0
	cmp r1, r0
	bge _0808F524
_0808F50E:
	cmp r6, #0
	beq _0808F520
	ldr r0, _0808F51C @ =0x0000FDC0
	strh r0, [r4, #0xa]
	b _0808F524
	.align 2, 0
_0808F518: .4byte 0xFFFFFDC0
_0808F51C: .4byte 0x0000FDC0
_0808F520:
	ldr r0, _0808F534 @ =0x0000FDC0
	strh r0, [r2, #0xa]
_0808F524:
	cmp r6, #0
	beq _0808F538
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0808F540
	.align 2, 0
_0808F534: .4byte 0x0000FDC0
_0808F538:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0808F540:
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0808F56C
	adds r0, r2, #0
	cmp r6, #0
	beq _0808F552
	ldr r0, _0808F560 @ =gPartner
_0808F552:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _0808F564
	movs r0, #0x25
	mov r2, sl
	b _0808F58C
	.align 2, 0
_0808F560: .4byte gPartner
_0808F564:
	movs r0, #0x25
	mov r3, sb
	strb r0, [r3]
	b _0808F58E
_0808F56C:
	adds r0, r2, #0
	cmp r6, #0
	beq _0808F574
	ldr r0, _0808F584 @ =gPartner
_0808F574:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _0808F588
	movs r0, #0x11
	mov r1, sl
	strb r0, [r1]
	b _0808F58E
	.align 2, 0
_0808F584: .4byte gPartner
_0808F588:
	movs r0, #0x11
	mov r2, sb
_0808F58C:
	strb r0, [r2]
_0808F58E:
	cmp r6, #0
	beq _0808F5A4
	ldr r3, _0808F5A0 @ =gPartner + 0x59
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	beq _0808F5AE
	b _0808F5CE
	.align 2, 0
_0808F5A0: .4byte gPartner + 0x59
_0808F5A4:
	ldr r1, _0808F5C0 @ =gPlayer + 0x59
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _0808F5CE
_0808F5AE:
	cmp r6, #0
	beq _0808F5C4
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0808F5CE
	.align 2, 0
_0808F5C0: .4byte gPlayer + 0x59
_0808F5C4:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r5, #0x10]
_0808F5CE:
	cmp r6, #0
	beq _0808F5D6
	ldr r0, [r4, #4]
	b _0808F5D8
_0808F5D6:
	ldr r0, [r5, #4]
_0808F5D8:
	asrs r3, r0, #8
	cmp r6, #0
	beq _0808F5E2
	ldr r0, [r4]
	b _0808F5E4
_0808F5E2:
	ldr r0, [r5]
_0808F5E4:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0808F5F4
	ldr r0, _0808F5F0 @ =gPartner + 0x27
	b _0808F5F6
	.align 2, 0
_0808F5F0: .4byte gPartner + 0x27
_0808F5F4:
	ldr r0, _0808F618 @ =gPlayer + 0x27
_0808F5F6:
	ldrb r2, [r0]
	ldr r0, _0808F61C @ =sa2__sub_801EC3C
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #4
	ble _0808F67C
	cmp r6, #0
	beq _0808F620
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0808F628
	.align 2, 0
_0808F618: .4byte gPlayer + 0x27
_0808F61C: .4byte sa2__sub_801EC3C
_0808F620:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0808F628:
	cmp r6, #0
	beq _0808F63C
	ldr r0, [r4, #0x10]
	ldr r1, _0808F638 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808F644
	.align 2, 0
_0808F638: .4byte 0xFFFFFEFF
_0808F63C:
	ldr r0, [r5, #0x10]
	ldr r1, _0808F654 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0808F644:
	cmp r6, #0
	beq _0808F658
	ldr r0, [r4, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808F662
	.align 2, 0
_0808F654: .4byte 0xFFFFFEFF
_0808F658:
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0808F662:
	cmp r6, #0
	beq _0808F672
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808F67C
_0808F672:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0808F67C:
	ldr r0, _0808F690 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r6, r0
	ldr r2, _0808F694 @ =0x0300003A
	adds r1, r0, r2
	ldr r3, _0808F698 @ =0x03000038
	adds r0, r0, r3
	b _0808F6B8
	.align 2, 0
_0808F690: .4byte gCurTask
_0808F694: .4byte 0x0300003A
_0808F698: .4byte 0x03000038
_0808F69C:
	ldr r1, _0808F6F8 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	adds r0, r6, r0
	ldr r2, _0808F6FC @ =0x03000038
	adds r0, r0, r2
	movs r3, #0
	strb r3, [r0]
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	adds r0, r6, r0
	ldr r3, _0808F700 @ =0x0300003A
	adds r1, r0, r3
	adds r0, r0, r2
_0808F6B8:
	ldrb r0, [r0]
	strb r0, [r1]
_0808F6BC:
	adds r6, #1
	ldr r0, _0808F704 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _0808F6CC
	b _0808F3C6
_0808F6CC:
	ldr r1, _0808F6F8 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r4, _0808F708 @ =0x0300003D
	adds r0, r0, r4
	strb r7, [r0]
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r1, _0808F70C @ =0x0300003E
	adds r0, r0, r1
	mov r2, sp
	ldrb r2, [r2, #0xc]
	strb r2, [r0]
_0808F6E6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F6F8: .4byte gCurTask
_0808F6FC: .4byte 0x03000038
_0808F700: .4byte 0x0300003A
_0808F704: .4byte gNumSingleplayerCharacters
_0808F708: .4byte 0x0300003D
_0808F70C: .4byte 0x0300003E

	thumb_func_start CreateEntity_PlayerFloat
CreateEntity_PlayerFloat: @ 0x0808F710
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0808F794 @ =Task_PlayerFloatMain
	movs r2, #0x80
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x3f
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	ldr r2, _0808F798 @ =0x03000034
	adds r1, r1, r2
	strh r4, [r1]
	ldrh r1, [r0, #6]
	adds r2, #2
	adds r1, r1, r2
	strh r5, [r1]
	ldrh r1, [r0, #6]
	adds r2, #2
	adds r1, r1, r2
	movs r3, #0
	strh r6, [r1]
	ldrh r1, [r0, #6]
	adds r2, #2
	adds r1, r1, r2
	strh r6, [r1]
	ldrh r1, [r0, #6]
	subs r2, #0x3a
	adds r1, r1, r2
	mov r2, r8
	str r2, [r1]
	ldrh r1, [r0, #6]
	ldr r2, _0808F79C @ =0x0300003D
	adds r1, r1, r2
	strb r3, [r1]
	ldrh r1, [r0, #6]
	adds r2, #1
	adds r1, r1, r2
	strb r3, [r1]
	ldrh r0, [r0, #6]
	ldr r1, _0808F7A0 @ =0x0300003C
	adds r0, r0, r1
	mov r2, r8
	ldrb r1, [r2]
	strb r1, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r2]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808F794: .4byte Task_PlayerFloatMain
_0808F798: .4byte 0x03000034
_0808F79C: .4byte 0x0300003D
_0808F7A0: .4byte 0x0300003C
