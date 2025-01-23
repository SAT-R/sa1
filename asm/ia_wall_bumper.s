.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_WallBumper
Task_WallBumper: @ 0x080845C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08084620 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r1]
	mov sl, r0
	ldrb r0, [r1, #8]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	mov r2, r8
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r6, #0
	ldr r5, _08084624 @ =gPartner
	ldr r4, _08084628 @ =gPlayer
_08084610:
	cmp r6, #0
	beq _0808462C
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r3, sb
	lsls r7, r3, #0x10
	b _08084636
	.align 2, 0
_08084620: .4byte gCurTask
_08084624: .4byte gPartner
_08084628: .4byte gPlayer
_0808462C:
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r0, sb
	lsls r7, r0, #0x10
_08084636:
	cmp r1, #0
	beq _0808463C
	b _08084840
_0808463C:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r7, r0, #0
	cmp r6, #0
	beq _08084652
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0808465C
	b _08084840
_08084652:
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0808465C
	b _08084840
_0808465C:
	asrs r1, r7, #0x10
	mov r2, sl
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r6, #0
	beq _08084674
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808467E
	b _08084840
_08084674:
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808467E
	b _08084840
_0808467E:
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r6, #0
	beq _08084694
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808469E
	b _08084840
_08084694:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808469E
	b _08084840
_0808469E:
	asrs r1, r1, #0x10
	mov r2, sl
	ldrb r0, [r2, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r6, #0
	beq _080846B6
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080846C0
	b _08084840
_080846B6:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080846C0
	b _08084840
_080846C0:
	movs r0, #0xb8
	bl m4aSongNumStart
	cmp r6, #0
	beq _080846D8
	ldr r0, [r5, #0x10]
	ldr r1, _080846D4 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _080846E0
	.align 2, 0
_080846D4: .4byte 0xFFFFFEFF
_080846D8:
	ldr r0, [r4, #0x10]
	ldr r1, _080846F0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
_080846E0:
	cmp r6, #0
	beq _080846F4
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	b _080846FC
	.align 2, 0
_080846F0: .4byte 0xFFFFFEFF
_080846F4:
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_080846FC:
	cmp r6, #0
	beq _0808470C
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _08084716
_0808470C:
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_08084716:
	mov r2, r8
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08084736
	cmp r6, #0
	beq _08084730
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #8]
	b _08084748
_08084730:
	movs r0, #0xa0
	lsls r0, r0, #3
	b _08084746
_08084736:
	cmp r6, #0
	beq _08084742
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r5, #8]
	b _08084748
_08084742:
	movs r0, #0xfb
	lsls r0, r0, #8
_08084746:
	strh r0, [r4, #8]
_08084748:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bgt _08084762
	cmp r6, #0
	beq _0808475C
	movs r0, #0xf9
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	b _08084774
_0808475C:
	movs r0, #0xf9
	lsls r0, r0, #8
	b _08084772
_08084762:
	cmp r6, #0
	beq _0808476E
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0xa]
	b _08084774
_0808476E:
	movs r0, #0xc0
	lsls r0, r0, #3
_08084772:
	strh r0, [r4, #0xa]
_08084774:
	cmp r6, #0
	beq _08084784
	ldr r3, _08084780 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r3, r0]
	b _0808478A
	.align 2, 0
_08084780: .4byte gUnknown_03005B09
_08084784:
	ldr r1, _080847A0 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r1, r0]
_0808478A:
	cmp r0, #1
	beq _080847B2
	cmp r6, #0
	beq _080847A8
	ldr r2, _080847A4 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	beq _080847B2
	b _08084840
	.align 2, 0
_080847A0: .4byte gUnknown_03005A79
_080847A4: .4byte gUnknown_03005B09
_080847A8:
	ldr r3, _080847C4 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #2
	bne _08084840
_080847B2:
	cmp r6, #0
	beq _080847CC
	ldr r1, _080847C8 @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080847D6
	b _08084840
	.align 2, 0
_080847C4: .4byte gUnknown_03005A79
_080847C8: .4byte gUnknown_03005AED
_080847CC:
	ldr r2, _080847F0 @ =gUnknown_03005A5D
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08084840
_080847D6:
	ldr r0, _080847F4 @ =gPlayer
	cmp r6, #0
	beq _080847DE
	ldr r0, _080847F8 @ =gPartner
_080847DE:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _08084800
	movs r0, #5
	ldr r3, _080847FC @ =gUnknown_03005AF0
	strb r0, [r3]
	b _08084806
	.align 2, 0
_080847F0: .4byte gUnknown_03005A5D
_080847F4: .4byte gPlayer
_080847F8: .4byte gPartner
_080847FC: .4byte gUnknown_03005AF0
_08084800:
	movs r0, #5
	ldr r1, _08084818 @ =gUnknown_03005A60
	strb r0, [r1]
_08084806:
	ldr r2, _0808481C @ =gPlayer
	cmp r6, #0
	beq _08084820
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08084828
	.align 2, 0
_08084818: .4byte gUnknown_03005A60
_0808481C: .4byte gPlayer
_08084820:
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
_08084828:
	adds r1, r2, #0
	cmp r6, #0
	beq _08084830
	ldr r1, _080848A8 @ =gPartner
_08084830:
	movs r0, #6
	strb r0, [r1, #0xe]
	adds r1, r2, #0
	cmp r6, #0
	beq _0808483C
	ldr r1, _080848A8 @ =gPartner
_0808483C:
	movs r0, #9
	strb r0, [r1, #0xf]
_08084840:
	adds r6, #1
	ldr r0, _080848AC @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _08084850
	b _08084610
_08084850:
	asrs r1, r7, #0x10
	ldr r3, _080848B0 @ =gCamera
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r2, r4
	cmp r1, r0
	bgt _08084886
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _08084886
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _08084886
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _08084896
_08084886:
	mov r4, r8
	ldrb r0, [r4, #8]
	mov r1, sl
	strb r0, [r1]
	ldr r0, _080848B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08084896:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080848A8: .4byte gPartner
_080848AC: .4byte gNumSingleplayerCharacters
_080848B0: .4byte gCamera
_080848B4: .4byte gCurTask

	thumb_func_start CreateEntity_WallBumper
CreateEntity_WallBumper: @ 0x080848B8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0808491C @ =Task_WallBumper
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	mov r3, r8
	ldrb r0, [r3, #3]
	ldr r1, _08084920 @ =0x0300003C
	adds r2, r2, r1
	strb r0, [r2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808491C: .4byte Task_WallBumper
_08084920: .4byte 0x0300003C
