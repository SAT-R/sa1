.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_PanelGate_Vertical
CreateEntity_PanelGate_Vertical: @ 0x080813F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080814E0 @ =Task_PanelGate_Vertical
	ldr r1, _080814E4 @ =TaskDestructor_PanelGate
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _080814E8 @ =0x0300000C
	adds r7, r6, r1
	movs r2, #0
	mov sb, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sl
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	ldr r1, _080814EC @ =0x0300003C
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	movs r0, #8
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sb
	strh r0, [r7, #8]
	movs r0, #0xf8
	lsls r0, r0, #1
	strh r0, [r7, #0xa]
	ldr r1, _080814F0 @ =0x0300002C
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
	mov r0, sb
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r2, _080814F4 @ =0x0300002D
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080814F8 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080814FC @ =0x03000031
	adds r6, r6, r1
	movs r2, #0
	strb r2, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	mov r1, sl
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _080814CA
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r7, #0x10]
_080814CA:
	adds r0, r7, #0
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
_080814E0: .4byte Task_PanelGate_Vertical
_080814E4: .4byte TaskDestructor_PanelGate
_080814E8: .4byte 0x0300000C
_080814EC: .4byte 0x0300003C
_080814F0: .4byte 0x0300002C
_080814F4: .4byte 0x0300002D
_080814F8: .4byte 0x0300002E
_080814FC: .4byte 0x03000031

	thumb_func_start Task_PanelGate_Vertical
Task_PanelGate_Vertical: @ 0x08081500
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0808155C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r6]
	mov sl, r1
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _08081560 @ =gCamera
	ldrh r3, [r4]
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	subs r0, r0, r3
	strh r0, [r5, #0x16]
	ldrh r3, [r4, #2]
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	subs r0, r0, r3
	strh r0, [r5, #0x18]
	movs r4, #0
	mov sb, r2
	mov r8, r1
_0808154E:
	cmp r4, #0
	beq _08081568
	ldr r0, _08081564 @ =gPartner
	ldr r0, [r0, #0x10]
	movs r3, #0x80
	ands r0, r3
	b _08081570
	.align 2, 0
_0808155C: .4byte gCurTask
_08081560: .4byte gCamera
_08081564: .4byte gPartner
_08081568:
	ldr r0, _080815D4 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r7, #0x80
	ands r0, r7
_08081570:
	cmp r0, #0
	bne _08081590
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sb
	asrs r2, r3, #0x10
	mov r7, r8
	asrs r3, r7, #0x10
	bl sub_8081C04
	cmp r0, #0
	beq _08081590
	ldr r0, _080815D8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080815DC @ =Task_PanelGate_Vertical2
	str r0, [r1, #8]
_08081590:
	adds r4, #1
	ldr r0, _080815E0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0808154E
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080815C2
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080815C2
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080815E4
_080815C2:
	ldrb r0, [r6, #8]
	mov r7, sl
	strb r0, [r7]
	ldr r0, _080815D8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080815EA
	.align 2, 0
_080815D4: .4byte gPlayer
_080815D8: .4byte gCurTask
_080815DC: .4byte Task_PanelGate_Vertical2
_080815E0: .4byte gNumSingleplayerCharacters
_080815E4:
	adds r0, r5, #0
	bl DisplaySprite
_080815EA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_PanelGate_Vertical2
Task_PanelGate_Vertical2: @ 0x080815F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r4, _08081680 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r5, r1, r0
	ldr r6, _08081684 @ =0x0300000C
	add r6, r8
	ldr r2, [r5]
	str r2, [sp, #0x10]
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, [sp, #0x10]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08081688 @ =gCamera
	ldrh r0, [r3]
	lsrs r7, r2, #0x10
	mov sl, r7
	asrs r2, r2, #0x10
	mov ip, r2
	subs r0, r2, r0
	strh r0, [r6, #0x16]
	ldrh r2, [r3, #2]
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r1, r1, #0x10
	subs r2, r1, r2
	strh r2, [r6, #0x18]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08081672
	movs r7, #0x18
	ldrsh r0, [r6, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _08081672
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0808168C
_08081672:
	ldrb r0, [r5, #8]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _080817DA
	.align 2, 0
_08081680: .4byte gCurTask
_08081684: .4byte 0x0300000C
_08081688: .4byte gCamera
_0808168C:
	movs r7, #0
	ldr r2, _080816BC @ =0x0300003C
	add r2, r8
	str r2, [sp, #0xc]
	mov r0, ip
	subs r0, #6
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, ip
	adds r0, #6
	lsls r0, r0, #0x10
	str r0, [sp, #8]
_080816A4:
	cmp r7, #0
	beq _080816C8
	ldr r3, _080816C0 @ =gPartner
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080817A0
	ldr r5, _080816C4 @ =gPlayer
	mov r8, r5
	b _080816D6
	.align 2, 0
_080816BC: .4byte 0x0300003C
_080816C0: .4byte gPartner
_080816C4: .4byte gPlayer
_080816C8:
	ldr r2, _08081714 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r8, r2
	cmp r1, #0
	bne _080817A0
_080816D6:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08081748
	ldr r0, [sp, #4]
	asrs r1, r0, #0x10
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r3, r8
	mov r5, sl
	lsls r4, r5, #0x10
	adds r5, r0, #0
	cmp r7, #0
	beq _080816FA
	ldr r3, _08081718 @ =gPartner
_080816FA:
	adds r0, r6, #0
	bl sub_800CE34
	cmp r0, #0
	beq _080817A0
	cmp r7, #0
	beq _0808171C
	ldr r1, _08081718 @ =gPartner
	movs r2, #8
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bgt _08081726
	b _080817A0
	.align 2, 0
_08081714: .4byte gPlayer
_08081718: .4byte gPartner
_0808171C:
	mov r3, r8
	movs r1, #8
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _080817A0
_08081726:
	asrs r1, r4, #0x10
	asrs r2, r5, #0x10
	ldr r3, _08081740 @ =gPlayer
	cmp r7, #0
	beq _08081732
	ldr r3, _08081744 @ =gPartner
_08081732:
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	bl sub_800AFDC
	b _080817A0
	.align 2, 0
_08081740: .4byte gPlayer
_08081744: .4byte gPartner
_08081748:
	ldr r2, [sp, #8]
	asrs r1, r2, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	mov r3, r8
	mov r5, sl
	lsls r4, r5, #0x10
	adds r5, r0, #0
	cmp r7, #0
	beq _08081760
	ldr r3, _0808177C @ =gPartner
_08081760:
	adds r0, r6, #0
	bl sub_800CE34
	cmp r0, #0
	beq _080817A0
	cmp r7, #0
	beq _08081780
	ldr r1, _0808177C @ =gPartner
	movs r2, #8
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _0808178A
	b _080817A0
	.align 2, 0
_0808177C: .4byte gPartner
_08081780:
	mov r3, r8
	movs r1, #8
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080817A0
_0808178A:
	asrs r1, r4, #0x10
	asrs r2, r5, #0x10
	ldr r3, _080817EC @ =gPlayer
	cmp r7, #0
	beq _08081796
	ldr r3, _080817F0 @ =gPartner
_08081796:
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	bl sub_800AFDC
_080817A0:
	adds r7, #1
	ldr r0, _080817F4 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	bge _080817B0
	b _080816A4
_080817B0:
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080817CE
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _080817F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080817FC @ =Task_PanelGate_Vertical
	str r0, [r1, #8]
_080817CE:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_080817DA:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080817EC: .4byte gPlayer
_080817F0: .4byte gPartner
_080817F4: .4byte gNumSingleplayerCharacters
_080817F8: .4byte gCurTask
_080817FC: .4byte Task_PanelGate_Vertical

	thumb_func_start CreateEntity_PanelGate_Horizontal
CreateEntity_PanelGate_Horizontal: @ 0x08081800
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080818F0 @ =Task_PanelGate_Horizontal
	ldr r1, _080818F4 @ =TaskDestructor_PanelGate
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _080818F8 @ =0x0300000C
	adds r7, r6, r1
	movs r2, #0
	mov sb, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sl
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	ldr r1, _080818FC @ =0x0300003C
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	movs r0, #8
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sb
	strh r0, [r7, #8]
	ldr r0, _08081900 @ =0x000001F1
	strh r0, [r7, #0xa]
	ldr r2, _08081904 @ =0x0300002C
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	mov r0, sb
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	adds r2, #1
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08081908 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0808190C @ =0x03000031
	adds r6, r6, r1
	movs r2, #0
	strb r2, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	mov r1, sl
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _080818D8
	movs r0, #0x80
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r7, #0x10]
_080818D8:
	adds r0, r7, #0
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
_080818F0: .4byte Task_PanelGate_Horizontal
_080818F4: .4byte TaskDestructor_PanelGate
_080818F8: .4byte 0x0300000C
_080818FC: .4byte 0x0300003C
_08081900: .4byte 0x000001F1
_08081904: .4byte 0x0300002C
_08081908: .4byte 0x0300002E
_0808190C: .4byte 0x03000031

	thumb_func_start Task_PanelGate_Horizontal
Task_PanelGate_Horizontal: @ 0x08081910
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0808196C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r6]
	mov sl, r1
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _08081970 @ =gCamera
	ldrh r3, [r4]
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	subs r0, r0, r3
	strh r0, [r5, #0x16]
	ldrh r3, [r4, #2]
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	subs r0, r0, r3
	strh r0, [r5, #0x18]
	movs r4, #0
	mov sb, r2
	mov r8, r1
_0808195E:
	cmp r4, #0
	beq _08081978
	ldr r0, _08081974 @ =gPartner
	ldr r0, [r0, #0x10]
	movs r3, #0x80
	ands r0, r3
	b _08081980
	.align 2, 0
_0808196C: .4byte gCurTask
_08081970: .4byte gCamera
_08081974: .4byte gPartner
_08081978:
	ldr r0, _080819E4 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r7, #0x80
	ands r0, r7
_08081980:
	cmp r0, #0
	bne _080819A0
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sb
	asrs r2, r3, #0x10
	mov r7, r8
	asrs r3, r7, #0x10
	bl sub_8081F50
	cmp r0, #0
	beq _080819A0
	ldr r0, _080819E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080819EC @ =Task_PanelGate_Horizontal2
	str r0, [r1, #8]
_080819A0:
	adds r4, #1
	ldr r0, _080819F0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0808195E
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080819D2
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080819D2
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080819F4
_080819D2:
	ldrb r0, [r6, #8]
	mov r7, sl
	strb r0, [r7]
	ldr r0, _080819E8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080819FA
	.align 2, 0
_080819E4: .4byte gPlayer
_080819E8: .4byte gCurTask
_080819EC: .4byte Task_PanelGate_Horizontal2
_080819F0: .4byte gNumSingleplayerCharacters
_080819F4:
	adds r0, r5, #0
	bl DisplaySprite
_080819FA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_PanelGate_Horizontal2
Task_PanelGate_Horizontal2: @ 0x08081A08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r4, _08081A8C @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r5, r1, r0
	ldr r6, _08081A90 @ =0x0300000C
	add r6, r8
	ldr r2, [r5]
	mov sl, r2
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _08081A94 @ =gCamera
	ldrh r0, [r3]
	lsrs r7, r1, #0x10
	str r7, [sp]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r3, r2, #0x10
	mov sb, r3
	asrs r2, r2, #0x10
	subs r3, r2, r0
	strh r3, [r6, #0x18]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08081A7E
	movs r7, #0x18
	ldrsh r0, [r6, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _08081A7E
	lsls r1, r3, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08081A98
_08081A7E:
	ldrb r0, [r5, #8]
	mov r1, sl
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08081BDE
	.align 2, 0
_08081A8C: .4byte gCurTask
_08081A90: .4byte 0x0300000C
_08081A94: .4byte gCamera
_08081A98:
	movs r7, #0
	ldr r3, _08081AC8 @ =0x0300003C
	add r3, r8
	str r3, [sp, #0xc]
	adds r0, r2, #5
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	subs r0, r2, #5
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _08081ACC @ =gPartner
	mov sl, r0
_08081AB0:
	cmp r7, #0
	beq _08081AD4
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08081BA4
	ldr r2, _08081AD0 @ =gPlayer
	mov r8, r2
	b _08081AE2
	.align 2, 0
_08081AC8: .4byte 0x0300003C
_08081ACC: .4byte gPartner
_08081AD0: .4byte gPlayer
_08081AD4:
	ldr r2, _08081B20 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r8, r2
	cmp r1, #0
	bne _08081BA4
_08081AE2:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08081B50
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	ldr r3, [sp, #4]
	asrs r2, r3, #0x10
	mov r3, r8
	adds r4, r0, #0
	mov r0, sb
	lsls r5, r0, #0x10
	cmp r7, #0
	beq _08081B06
	ldr r3, _08081B24 @ =gPartner
_08081B06:
	adds r0, r6, #0
	bl sub_800CE34
	cmp r0, #0
	beq _08081BA4
	cmp r7, #0
	beq _08081B28
	mov r1, sl
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bgt _08081B32
	b _08081BA4
	.align 2, 0
_08081B20: .4byte gPlayer
_08081B24: .4byte gPartner
_08081B28:
	mov r3, r8
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _08081BA4
_08081B32:
	asrs r1, r4, #0x10
	asrs r2, r5, #0x10
	ldr r3, _08081B48 @ =gPlayer
	cmp r7, #0
	beq _08081B3E
	ldr r3, _08081B4C @ =gPartner
_08081B3E:
	adds r0, r6, #0
	bl sub_80096B0
	b _08081BA4
	.align 2, 0
_08081B48: .4byte gPlayer
_08081B4C: .4byte gPartner
_08081B50:
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	ldr r3, [sp, #8]
	asrs r2, r3, #0x10
	mov r3, r8
	adds r4, r0, #0
	mov r0, sb
	lsls r5, r0, #0x10
	cmp r7, #0
	beq _08081B68
	ldr r3, _08081B84 @ =gPartner
_08081B68:
	adds r0, r6, #0
	bl sub_800CE34
	cmp r0, #0
	beq _08081BA4
	cmp r7, #0
	beq _08081B88
	mov r1, sl
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _08081B92
	b _08081BA4
	.align 2, 0
_08081B84: .4byte gPartner
_08081B88:
	mov r3, r8
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _08081BA4
_08081B92:
	asrs r1, r4, #0x10
	asrs r2, r5, #0x10
	ldr r3, _08081BF0 @ =gPlayer
	cmp r7, #0
	beq _08081B9E
	ldr r3, _08081BF4 @ =gPartner
_08081B9E:
	adds r0, r6, #0
	bl sub_80096B0
_08081BA4:
	adds r7, #1
	ldr r0, _08081BF8 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	bge _08081BB4
	b _08081AB0
_08081BB4:
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08081BD2
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08081BFC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08081C00 @ =Task_PanelGate_Horizontal
	str r0, [r1, #8]
_08081BD2:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08081BDE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08081BF0: .4byte gPlayer
_08081BF4: .4byte gPartner
_08081BF8: .4byte gNumSingleplayerCharacters
_08081BFC: .4byte gCurTask
_08081C00: .4byte Task_PanelGate_Horizontal

	thumb_func_start sub_8081C04
sub_8081C04: @ 0x08081C04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	mov sl, r1
	mov r8, r2
	mov sb, r3
	movs r0, #0
	str r0, [sp, #8]
	movs r4, #0
	ldr r7, _08081C2C @ =gPartner
	ldr r6, _08081C30 @ =gPlayer
_08081C22:
	cmp r4, #0
	beq _08081C34
	ldr r1, [r7, #4]
	str r1, [sp, #0xc]
	b _08081C38
	.align 2, 0
_08081C2C: .4byte gPartner
_08081C30: .4byte gPlayer
_08081C34:
	ldr r2, [r6, #4]
	str r2, [sp, #0xc]
_08081C38:
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08081C48
	b _08081D9E
_08081C48:
	cmp r4, #0
	beq _08081C56
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r8, r0
	ble _08081C60
	b _08081F1A
_08081C56:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r8, r0
	ble _08081C60
	b _08081F1A
_08081C60:
	mov r2, r8
	adds r2, #0x20
	cmp r4, #0
	beq _08081C72
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081C7C
	b _08081F1A
_08081C72:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081C7C
	b _08081F1A
_08081C7C:
	mov r1, sb
	subs r1, #0x28
	cmp r4, #0
	beq _08081C8E
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08081C98
	b _08081F1A
_08081C8E:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08081C98
	b _08081F1A
_08081C98:
	mov r1, sb
	adds r1, #0x28
	cmp r4, #0
	beq _08081CAA
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081CB4
	b _08081F1A
_08081CAA:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081CB4
	b _08081F1A
_08081CB4:
	cmp r4, #0
	beq _08081CC2
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r8, r0
	ble _08081CCA
	b _08081D4C
_08081CC2:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r8, r0
	bgt _08081D4C
_08081CCA:
	cmp r4, #0
	beq _08081CD8
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081CE0
	b _08081D4C
_08081CD8:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	blt _08081D4C
_08081CE0:
	cmp r4, #0
	beq _08081CF4
	movs r2, #8
	ldrsh r0, [r7, r2]
	ldr r3, _08081CF0 @ =gPlayer
	cmp r0, #0
	blt _08081D00
	b _08081EA4
	.align 2, 0
_08081CF0: .4byte gPlayer
_08081CF4:
	movs r1, #8
	ldrsh r0, [r6, r1]
	ldr r3, _08081D44 @ =gPlayer
	cmp r0, #0
	blt _08081D00
	b _08081EA4
_08081D00:
	ldr r1, [sp, #4]
	adds r1, #0x3c
	movs r0, #0x7d
	strb r0, [r1]
	mov r1, sl
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08081D44 @ =gPlayer
	cmp r4, #0
	beq _08081D18
	ldr r0, _08081D48 @ =gPartner
_08081D18:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _08081D44 @ =gPlayer
	cmp r4, #0
	beq _08081D26
	ldr r1, _08081D48 @ =gPartner
_08081D26:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08081D44 @ =gPlayer
	cmp r4, #0
	beq _08081D32
	ldr r1, _08081D48 @ =gPartner
_08081D32:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xb9
	bl m4aSongNumStart
	movs r2, #1
	str r2, [sp, #8]
	b _08081F1A
	.align 2, 0
_08081D44: .4byte gPlayer
_08081D48: .4byte gPartner
_08081D4C:
	cmp r4, #0
	beq _08081D5A
	movs r1, #8
	ldrsh r0, [r7, r1]
	cmp r0, #0
	blt _08081D64
	b _08081F1A
_08081D5A:
	movs r2, #8
	ldrsh r0, [r6, r2]
	cmp r0, #0
	blt _08081D64
	b _08081F1A
_08081D64:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08081D8C @ =gPlayer
	cmp r4, #0
	beq _08081D78
	ldr r3, _08081D90 @ =gPartner
_08081D78:
	movs r5, #0
	str r5, [sp]
	mov r0, sl
	bl sub_800AFDC
	cmp r4, #0
	beq _08081D94
	strh r5, [r7, #0xc]
	b _08081D96
	.align 2, 0
_08081D8C: .4byte gPlayer
_08081D90: .4byte gPartner
_08081D94:
	strh r4, [r6, #0xc]
_08081D96:
	cmp r4, #0
	beq _08081D9C
	b _08081F12
_08081D9C:
	b _08081F18
_08081D9E:
	mov r2, r8
	subs r2, #0x20
	cmp r4, #0
	beq _08081DB0
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08081DBA
	b _08081F1A
_08081DB0:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08081DBA
	b _08081F1A
_08081DBA:
	mov r1, r8
	adds r1, #0x10
	cmp r4, #0
	beq _08081DCC
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081DD6
	b _08081F1A
_08081DCC:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081DD6
	b _08081F1A
_08081DD6:
	mov r1, sb
	subs r1, #0x28
	cmp r4, #0
	beq _08081DE8
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08081DF2
	b _08081F1A
_08081DE8:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08081DF2
	b _08081F1A
_08081DF2:
	mov r1, sb
	adds r1, #0x28
	cmp r4, #0
	beq _08081E04
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081E0E
	b _08081F1A
_08081E04:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081E0E
	b _08081F1A
_08081E0E:
	cmp r4, #0
	beq _08081E1C
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08081E24
	b _08081EC8
_08081E1C:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	bgt _08081EC8
_08081E24:
	cmp r4, #0
	beq _08081E32
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r8, r0
	bge _08081E3A
	b _08081EC8
_08081E32:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r8, r0
	blt _08081EC8
_08081E3A:
	cmp r4, #0
	beq _08081E50
	movs r1, #8
	ldrsh r0, [r7, r1]
	ldr r3, _08081E4C @ =gPlayer
	cmp r0, #0
	bgt _08081E5A
	b _08081EA4
	.align 2, 0
_08081E4C: .4byte gPlayer
_08081E50:
	movs r2, #8
	ldrsh r0, [r6, r2]
	ldr r3, _08081E9C @ =gPlayer
	cmp r0, #0
	ble _08081EA4
_08081E5A:
	ldr r1, [sp, #4]
	adds r1, #0x3c
	movs r0, #0x7d
	strb r0, [r1]
	mov r1, sl
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08081E9C @ =gPlayer
	cmp r4, #0
	beq _08081E72
	ldr r0, _08081EA0 @ =gPartner
_08081E72:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _08081E9C @ =gPlayer
	cmp r4, #0
	beq _08081E80
	ldr r1, _08081EA0 @ =gPartner
_08081E80:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08081E9C @ =gPlayer
	cmp r4, #0
	beq _08081E8C
	ldr r1, _08081EA0 @ =gPartner
_08081E8C:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xb9
	bl m4aSongNumStart
	movs r0, #1
	str r0, [sp, #8]
	b _08081F1A
	.align 2, 0
_08081E9C: .4byte gPlayer
_08081EA0: .4byte gPartner
_08081EA4:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _08081EB6
	ldr r3, _08081EC4 @ =gPartner
_08081EB6:
	movs r0, #0
	str r0, [sp]
	mov r0, sl
	bl sub_800AFDC
	b _08081F1A
	.align 2, 0
_08081EC4: .4byte gPartner
_08081EC8:
	cmp r4, #0
	beq _08081ED6
	movs r1, #8
	ldrsh r0, [r7, r1]
	cmp r0, #0
	blt _08081EDE
	b _08081F1A
_08081ED6:
	movs r2, #8
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _08081F1A
_08081EDE:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08081F04 @ =gPlayer
	cmp r4, #0
	beq _08081EF2
	ldr r3, _08081F08 @ =gPartner
_08081EF2:
	movs r5, #0
	str r5, [sp]
	mov r0, sl
	bl sub_800AFDC
	cmp r4, #0
	beq _08081F0C
	strh r5, [r7, #0xc]
	b _08081F0E
	.align 2, 0
_08081F04: .4byte gPlayer
_08081F08: .4byte gPartner
_08081F0C:
	strh r4, [r6, #0xc]
_08081F0E:
	cmp r4, #0
	beq _08081F18
_08081F12:
	movs r0, #0
	strh r0, [r7, #8]
	b _08081F1A
_08081F18:
	strh r4, [r6, #8]
_08081F1A:
	cmp r4, #0
	beq _08081F24
	ldr r0, [sp, #0xc]
	str r0, [r7, #4]
	b _08081F28
_08081F24:
	ldr r1, [sp, #0xc]
	str r1, [r6, #4]
_08081F28:
	adds r4, #1
	ldr r0, _08081F4C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _08081F38
	b _08081C22
_08081F38:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08081F4C: .4byte gNumSingleplayerCharacters

	thumb_func_start sub_8081F50
sub_8081F50: @ 0x08081F50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	movs r0, #0
	mov sl, r0
	movs r4, #0
	ldr r1, _08081F8C @ =gPartner
	mov r8, r1
_08081F6C:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08082064
	cmp r4, #0
	beq _08081F94
	mov r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r3, _08081F90 @ =gPlayer
	cmp r6, r0
	ble _08081FA2
	b _08082140
	.align 2, 0
_08081F8C: .4byte gPartner
_08081F90: .4byte gPlayer
_08081F94:
	ldr r1, _08081FB8 @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r3, r1, #0
	cmp r6, r0
	ble _08081FA2
	b _08082140
_08081FA2:
	adds r2, r6, #0
	adds r2, #0x20
	cmp r4, #0
	beq _08081FBC
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081FC6
	b _08082140
	.align 2, 0
_08081FB8: .4byte gPlayer
_08081FBC:
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081FC6
	b _08082140
_08081FC6:
	cmp r4, #0
	beq _08081FD6
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r5, r0
	ble _08081FE0
	b _08082140
_08081FD6:
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r5, r0
	ble _08081FE0
	b _08082140
_08081FE0:
	adds r2, r5, #0
	adds r2, #0x1c
	cmp r4, #0
	beq _08081FF4
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081FFE
	b _08082140
_08081FF4:
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081FFE
	b _08082140
_08081FFE:
	cmp r4, #0
	beq _0808200E
	mov r2, r8
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _08082018
	b _08082140
_0808200E:
	movs r2, #0xa
	ldrsh r0, [r3, r2]
	cmp r0, #0
	blt _08082018
	b _08082140
_08082018:
	mov r1, sb
	adds r1, #0x3c
	movs r2, #0
	movs r0, #0x7d
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _0808205C @ =gPlayer
	cmp r4, #0
	beq _08082030
	ldr r0, _08082060 @ =gPartner
_08082030:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _0808205C @ =gPlayer
	cmp r4, #0
	beq _0808203E
	ldr r1, _08082060 @ =gPartner
_0808203E:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0808205C @ =gPlayer
	cmp r4, #0
	beq _0808204A
	ldr r1, _08082060 @ =gPartner
_0808204A:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xb9
	bl m4aSongNumStart
	movs r0, #1
	mov sl, r0
	b _08082170
	.align 2, 0
_0808205C: .4byte gPlayer
_08082060: .4byte gPartner
_08082064:
	cmp r4, #0
	beq _0808207C
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r3, _08082078 @ =gPlayer
	cmp r6, r0
	ble _08082088
	b _0808215C
	.align 2, 0
_08082078: .4byte gPlayer
_0808207C:
	ldr r1, _0808209C @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r3, r1, #0
	cmp r6, r0
	bgt _0808215C
_08082088:
	adds r2, r6, #0
	adds r2, #0x20
	cmp r4, #0
	beq _080820A0
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	cmp r2, r0
	bge _080820A8
	b _0808215C
	.align 2, 0
_0808209C: .4byte gPlayer
_080820A0:
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r2, r0
	blt _0808215C
_080820A8:
	adds r2, r5, #0
	subs r2, #0x1c
	cmp r4, #0
	beq _080820BC
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _080820C4
	b _0808215C
_080820BC:
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r2, r0
	bgt _0808215C
_080820C4:
	cmp r4, #0
	beq _080820D4
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r5, r0
	bge _080820DC
	b _0808215C
_080820D4:
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r5, r0
	blt _0808215C
_080820DC:
	cmp r4, #0
	beq _080820EC
	mov r1, r8
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bgt _080820F4
	b _08082140
_080820EC:
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _08082140
_080820F4:
	mov r1, sb
	adds r1, #0x3c
	movs r2, #0
	movs r0, #0x7d
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _08082138 @ =gPlayer
	cmp r4, #0
	beq _0808210C
	ldr r0, _0808213C @ =gPartner
_0808210C:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _08082138 @ =gPlayer
	cmp r4, #0
	beq _0808211A
	ldr r1, _0808213C @ =gPartner
_0808211A:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08082138 @ =gPlayer
	cmp r4, #0
	beq _08082126
	ldr r1, _0808213C @ =gPartner
_08082126:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xb9
	bl m4aSongNumStart
	movs r2, #1
	mov sl, r2
	b _08082170
	.align 2, 0
_08082138: .4byte gPlayer
_0808213C: .4byte gPartner
_08082140:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _0808214E
	ldr r3, _08082158 @ =gPartner
_0808214E:
	adds r0, r7, #0
	bl sub_80096B0
	b _08082170
	.align 2, 0
_08082158: .4byte gPartner
_0808215C:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _0808216A
	ldr r3, _08082190 @ =gPartner
_0808216A:
	adds r0, r7, #0
	bl sub_80096B0
_08082170:
	adds r4, #1
	ldr r0, _08082194 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _08082180
	b _08081F6C
_08082180:
	mov r0, sl
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08082190: .4byte gPartner
_08082194: .4byte gNumSingleplayerCharacters

	thumb_func_start TaskDestructor_PanelGate
TaskDestructor_PanelGate: @ 0x08082198
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
