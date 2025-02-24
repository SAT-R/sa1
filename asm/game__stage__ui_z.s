.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_8055458
Task_8055458: @ 0x08055458
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08055594 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r5, r1
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r0, [r4, #0x10]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	ldr r0, [r4, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r4, #0x20]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, _08055598 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xf3
	ands r0, r1
	cmp r0, #0
	beq _080554E8
	ldr r0, _0805559C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080554E8
	ldrh r0, [r4, #0x24]
	subs r0, #0x24
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb2
	bhi _080554E8
	movs r0, #0xd7
	strh r0, [r4, #0x24]
	movs r0, #6
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #6
	subs r0, r0, r1
	movs r1, #0xa
	bl Div
	strh r0, [r4, #8]
	ldr r1, _080555A0 @ =0x03000027
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080554E8
	adds r0, r4, #0
	bl sub_805423C
	ldr r2, _080555A4 @ =0x03000026
	adds r1, r5, r2
	strb r0, [r1]
_080554E8:
	ldrh r0, [r4, #0x24]
	strh r0, [r6, #0x18]
	ldrh r0, [r4, #0x24]
	strh r0, [r7, #0x18]
	ldrh r0, [r4, #0x24]
	mov r1, r8
	strh r0, [r1, #0x18]
	ldrh r0, [r4, #0x24]
	mov r2, sb
	strh r0, [r2, #0x18]
	ldrh r0, [r4, #0x24]
	mov r1, sl
	strh r0, [r1, #0x18]
	ldrh r0, [r4, #0x24]
	ldr r2, [sp]
	strh r0, [r2, #0x18]
	adds r5, r4, #0
	adds r5, #0x26
	ldrb r1, [r5]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	ldrb r1, [r5]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	ldrb r1, [r5]
	mov r0, r8
	adds r0, #0x20
	strb r1, [r0]
	ldrb r1, [r5]
	mov r0, sb
	adds r0, #0x20
	strb r1, [r0]
	ldrb r1, [r5]
	mov r0, sl
	adds r0, #0x20
	strb r1, [r0]
	ldrb r1, [r5]
	adds r0, r2, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x27
	ldrb r2, [r1]
	adds r0, r6, #0
	adds r0, #0x21
	strb r2, [r0]
	ldrb r2, [r1]
	adds r0, r7, #0
	adds r0, #0x21
	strb r2, [r0]
	ldrb r2, [r1]
	mov r0, r8
	adds r0, #0x21
	strb r2, [r0]
	ldrb r2, [r1]
	mov r0, sb
	adds r0, #0x21
	strb r2, [r0]
	ldrb r2, [r1]
	mov r0, sl
	adds r0, #0x21
	strb r2, [r0]
	ldrb r2, [r1]
	ldr r0, [sp]
	adds r0, #0x21
	strb r2, [r0]
	ldrb r0, [r1]
	adds r6, r1, #0
	cmp r0, #0
	bne _080555AE
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	cmp r1, #0x69
	ble _08055586
	ldrb r0, [r5]
	cmp r0, #0
	bne _080555AE
_08055586:
	cmp r1, #0x14
	ble _080555A8
	adds r0, r4, #0
	bl sub_805423C
	strb r0, [r5]
	b _080555AE
	.align 2, 0
_08055594: .4byte gCurTask
_08055598: .4byte gPressedKeys
_0805559C: .4byte gGameMode
_080555A0: .4byte 0x03000027
_080555A4: .4byte 0x03000026
_080555A8:
	adds r0, r4, #0
	bl sub_80543A4
_080555AE:
	ldrh r0, [r4, #0x24]
	adds r0, #1
	strh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe1
	bgt _080555BE
	b _08055708
_080555BE:
	ldrb r3, [r6]
	cmp r3, #0
	bne _080555D4
	ldr r2, _080556AC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080556B0 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080556B4 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_080555D4:
	ldr r0, _080556B8 @ =gGameMode
	ldrb r0, [r0]
	ldr r1, _080556BC @ =gPlayer
	mov r8, r1
	ldr r2, _080556C0 @ =gStageFlags
	mov sb, r2
	ldr r1, _080556C4 @ =gPartner
	mov sl, r1
	ldr r2, _080556C8 @ =sa2__gUnknown_030054B0
	mov ip, r2
	cmp r0, #1
	bls _08055622
	ldr r1, _080556CC @ =gMultiplayerPlayerTasks
	ldr r0, [r1]
	cmp r0, #0
	beq _0805561C
	movs r7, #0xc0
	lsls r7, r7, #0x12
	movs r6, #3
	rsbs r6, r6, #0
	adds r3, r1, #0
	adds r5, r3, #0
	adds r2, r3, #0
	adds r2, #0xc
_08055604:
	ldm r5!, {r0}
	ldrh r1, [r0, #6]
	adds r1, r1, r7
	ldr r0, [r1, #0x5c]
	ands r0, r6
	str r0, [r1, #0x5c]
	adds r3, #4
	cmp r5, r2
	bhi _0805561C
	ldr r0, [r3]
	cmp r0, #0
	bne _08055604
_0805561C:
	movs r0, #0x78
	mov r1, r8
	strh r0, [r1, #0x1c]
_08055622:
	mov r2, sb
	ldrh r1, [r2]
	ldr r0, _080556D0 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _080556D4 @ =0xFFDFFFFF
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
	mov r2, sl
	ldr r0, [r2, #0x10]
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r3, _080556D8 @ =gCurrentLevel
	ldrb r0, [r3]
	mov r1, ip
	strb r0, [r1]
	mov r2, r8
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	mov r2, sb
	ldrh r1, [r2]
	ldr r0, _080556DC @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2]
	ldrb r0, [r3]
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08055672
	bl LoadPalette423Anim
	bl sub_804C40C
_08055672:
	ldr r0, [r4, #0x20]
	bl TaskDestroy
	ldr r0, [r4, #0x1c]
	bl TaskDestroy
	ldr r0, [r4, #0x18]
	bl TaskDestroy
	ldr r0, [r4, #0x14]
	bl TaskDestroy
	ldr r0, [r4, #0x10]
	bl TaskDestroy
	ldr r0, [r4, #0xc]
	bl TaskDestroy
	ldr r0, _080556E0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _080556B8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	bhi _080556E4
	bl CreateStageUI
	b _080556E8
	.align 2, 0
_080556AC: .4byte gDispCnt
_080556B0: .4byte 0x00001FFF
_080556B4: .4byte gBldRegs
_080556B8: .4byte gGameMode
_080556BC: .4byte gPlayer
_080556C0: .4byte gStageFlags
_080556C4: .4byte gPartner
_080556C8: .4byte sa2__gUnknown_030054B0
_080556CC: .4byte gMultiplayerPlayerTasks
_080556D0: .4byte 0x0000FFFE
_080556D4: .4byte 0xFFDFFFFF
_080556D8: .4byte gCurrentLevel
_080556DC: .4byte 0x0000FFDF
_080556E0: .4byte gCurTask
_080556E4:
	bl CreateMultiplayerMultiPakUI
_080556E8:
	ldr r0, _08055704 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	bne _0805571A
	movs r0, #0xf0
	lsls r0, r0, #7
	movs r1, #0xa0
	lsls r1, r1, #7
	bl sub_804A5D8
	b _0805571A
	.align 2, 0
_08055704: .4byte gCurrentLevel
_08055708:
	ldr r0, _0805572C @ =gCurrentLevel
	ldrb r0, [r0]
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0805571A
	bl sub_804C40C
_0805571A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805572C: .4byte gCurrentLevel

	thumb_func_start Task_8055730
Task_8055730: @ 0x08055730
	push {lr}
	ldr r0, _0805574C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	cmp r0, #0xd7
	ble _08055750
	ldrh r0, [r1, #0xa]
	subs r0, #8
	b _08055760
	.align 2, 0
_0805574C: .4byte gCurTask
_08055750:
	cmp r0, #0xa
	ble _08055758
	movs r0, #0
	b _08055760
_08055758:
	cmp r0, #0
	ble _08055762
	ldrh r0, [r1, #0xa]
	adds r0, #8
_08055760:
	strh r0, [r1, #0xa]
_08055762:
	ldrh r0, [r1, #0x18]
	cmp r0, #0x69
	bls _0805577C
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805577C
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055788
_0805577C:
	ldr r0, _08055784 @ =gUnknown_086883AC
	bl sub_8052F78
	b _0805578E
	.align 2, 0
_08055784: .4byte gUnknown_086883AC
_08055788:
	ldr r0, _08055794 @ =gUnknown_086883AC
	bl sub_80530CC
_0805578E:
	pop {r0}
	bx r0
	.align 2, 0
_08055794: .4byte gUnknown_086883AC

	thumb_func_start Task_8055798
Task_8055798: @ 0x08055798
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08055804 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x18]
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	cmp r1, #0xd7
	ble _08055826
	subs r0, #0xd7
	lsls r0, r0, #7
	movs r1, #0xa
	bl Div
	movs r5, #0
	lsls r0, r0, #0x10
	movs r1, #0x20
	rsbs r1, r1, #0
	mov sb, r1
	asrs r1, r0, #0x10
	rsbs r0, r0, #0
	mov r8, r0
	rsbs r6, r1, #0
	ldr r7, _08055808 @ =gUnknown_08688394
_080557D6:
	strh r6, [r4, #0xc]
	mov r2, r8
	asrs r0, r2, #0x10
	cmp r0, sb
	blt _08055814
	ldrh r0, [r4, #0x18]
	cmp r0, #0x69
	bls _080557FA
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _080557FA
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805580C
_080557FA:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_8052F78
	b _08055814
	.align 2, 0
_08055804: .4byte gCurTask
_08055808: .4byte gUnknown_08688394
_0805580C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_80530CC
_08055814:
	movs r0, #0x80
	lsls r0, r0, #0xe
	add r8, r0
	adds r6, #0x20
	adds r7, #1
	adds r5, #1
	cmp r5, #3
	ble _080557D6
	b _080558F0
_08055826:
	cmp r1, #0x1f
	ble _0805586E
	movs r5, #0
	ldr r6, _08055858 @ =gUnknown_08688394
_0805582E:
	lsls r0, r5, #5
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0x18]
	cmp r0, #0x69
	bls _0805584C
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805584C
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805585C
_0805584C:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8052F78
	b _08055864
	.align 2, 0
_08055858: .4byte gUnknown_08688394
_0805585C:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80530CC
_08055864:
	adds r6, #1
	adds r5, #1
	cmp r5, #3
	ble _0805582E
	b _080558F0
_0805586E:
	cmp r1, #0x19
	ble _080558F0
	subs r0, #0xd7
	lsls r0, r0, #7
	movs r1, #6
	bl Div
	subs r0, #0xb0
	mov r8, r0
	ldr r1, _080558CC @ =0x000001FF
	adds r0, r1, #0
	movs r5, #0
	mov r2, r8
	ands r2, r0
	mov r8, r2
	ldr r0, _080558D0 @ =0x000001A5
	mov sl, r0
	lsls r7, r2, #0x10
	mov r6, r8
	movs r1, #0x20
	rsbs r1, r1, #0
	mov sb, r1
_0805589A:
	cmp r8, sl
	ble _080558E2
	strh r6, [r4, #0xc]
	asrs r0, r7, #0x10
	cmp r0, sb
	blt _080558E2
	ldrh r0, [r4, #0x18]
	cmp r0, #0x69
	bls _080558C0
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _080558C0
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080558D8
_080558C0:
	ldr r0, _080558D4 @ =gUnknown_08688394
	adds r0, r5, r0
	adds r1, r4, #0
	bl sub_8052F78
	b _080558E2
	.align 2, 0
_080558CC: .4byte 0x000001FF
_080558D0: .4byte 0x000001A5
_080558D4: .4byte gUnknown_08688394
_080558D8:
	ldr r0, _08055900 @ =gUnknown_08688394
	adds r0, r5, r0
	adds r1, r4, #0
	bl sub_80530CC
_080558E2:
	movs r2, #0x80
	lsls r2, r2, #0xe
	adds r7, r7, r2
	adds r6, #0x20
	adds r5, #1
	cmp r5, #3
	ble _0805589A
_080558F0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055900: .4byte gUnknown_08688394

	thumb_func_start Task_8055904
Task_8055904: @ 0x08055904
	push {lr}
	ldr r0, _08055928 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	cmp r0, #0xd7
	ble _0805592C
	ldrh r2, [r1, #0xc]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	cmp r0, #0x9f
	bgt _08055950
	adds r0, r2, #2
	b _0805594E
	.align 2, 0
_08055928: .4byte gCurTask
_0805592C:
	cmp r0, #0x23
	ble _0805593E
	movs r0, #0xb4
	strh r0, [r1, #0xa]
	movs r0, #0x90
	strh r0, [r1, #0xc]
	movs r0, #6
	strh r0, [r1, #0xe]
	b _08055950
_0805593E:
	cmp r0, #0x1e
	ble _08055950
	ldrh r2, [r1, #0xc]
	movs r3, #0xc
	ldrsh r0, [r1, r3]
	cmp r0, #0x90
	ble _08055950
	subs r0, r2, #3
_0805594E:
	strh r0, [r1, #0xc]
_08055950:
	ldr r0, _08055980 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	bgt _0805598E
	ldrh r0, [r1, #0x18]
	cmp r0, #0x69
	bls _08055976
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055976
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055988
_08055976:
	ldr r0, _08055984 @ =gUnknown_086883B0
	bl sub_8052F78
	b _0805598E
	.align 2, 0
_08055980: .4byte gCurrentLevel
_08055984: .4byte gUnknown_086883B0
_08055988:
	ldr r0, _08055994 @ =gUnknown_086883B0
	bl sub_80530CC
_0805598E:
	pop {r0}
	bx r0
	.align 2, 0
_08055994: .4byte gUnknown_086883B0

	thumb_func_start Task_8055998
Task_8055998: @ 0x08055998
	push {lr}
	ldr r0, _080559D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	cmp r0, #0xd7
	ble _080559DC
	ldrh r3, [r2, #0xa]
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080559D0
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r2, #0xa]
	ldrh r1, [r2, #0xe]
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _080559D0
	subs r0, r1, #1
	strh r0, [r2, #0xe]
_080559D0:
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	b _08055A60
	.align 2, 0
_080559D8: .4byte gCurTask
_080559DC:
	cmp r0, #0x19
	bgt _08055A5E
	cmp r0, #0xf
	ble _08055A62
	ldr r3, _08055A0C @ =gCurrentLevel
	ldrb r1, [r3]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0xd
	bne _08055A10
	movs r0, #0x7e
	strh r0, [r2, #0xc]
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08055A62
	strh r1, [r2, #0xa]
	b _08055A62
	.align 2, 0
_08055A0C: .4byte gCurrentLevel
_08055A10:
	cmp r0, #0xc
	bgt _08055A48
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08055A48
	ldr r0, _08055A40 @ =sa2__gUnknown_030054B0
	ldrb r1, [r0]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r1, r0
	beq _08055A48
	ldr r0, _08055A44 @ =0x0000FFF0
	strh r0, [r2, #0xa]
	ldrh r0, [r2, #0xc]
	adds r0, #9
	strh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x7e
	ble _08055A62
	movs r0, #0x7e
	strh r0, [r2, #0xc]
	b _08055A62
	.align 2, 0
_08055A40: .4byte sa2__gUnknown_030054B0
_08055A44: .4byte 0x0000FFF0
_08055A48:
	movs r0, #0x7e
	strh r0, [r2, #0xc]
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08055A62
_08055A5E:
	ldr r0, _08055A88 @ =0x0000FFF0
_08055A60:
	strh r0, [r2, #0xa]
_08055A62:
	ldrh r0, [r2, #0x18]
	cmp r0, #0x69
	bls _08055A7C
	adds r0, r2, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055A7C
	adds r0, r2, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055A90
_08055A7C:
	ldr r0, _08055A8C @ =gUnknown_086883B8
	adds r1, r2, #0
	bl sub_8052F78
	b _08055A98
	.align 2, 0
_08055A88: .4byte 0x0000FFF0
_08055A8C: .4byte gUnknown_086883B8
_08055A90:
	ldr r0, _08055A9C @ =gUnknown_086883B8
	adds r1, r2, #0
	bl sub_80530CC
_08055A98:
	pop {r0}
	bx r0
	.align 2, 0
_08055A9C: .4byte gUnknown_086883B8

	thumb_func_start sub_8055AA0
sub_8055AA0: @ 0x08055AA0
	push {lr}
	ldr r0, _08055AC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xd7
	ble _08055AC4
	ldrh r0, [r1, #0xa]
	subs r0, #0x1a
	b _08055ADE
	.align 2, 0
_08055AC0: .4byte gCurTask
_08055AC4:
	cmp r2, #0x19
	bgt _08055ADC
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08055AE0
	ldrh r0, [r1, #0xa]
	subs r0, #0x1a
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x6f
	bgt _08055AE0
_08055ADC:
	movs r0, #0x70
_08055ADE:
	strh r0, [r1, #0xa]
_08055AE0:
	ldrh r0, [r1, #0x18]
	cmp r0, #0x69
	bls _08055AFA
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055AFA
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055B08
_08055AFA:
	ldr r0, _08055B04 @ =gUnknown_086883C4
	bl sub_8052F78
	b _08055B0E
	.align 2, 0
_08055B04: .4byte gUnknown_086883C4
_08055B08:
	ldr r0, _08055B14 @ =gUnknown_086883C4
	bl sub_80530CC
_08055B0E:
	pop {r0}
	bx r0
	.align 2, 0
_08055B14: .4byte gUnknown_086883C4

	thumb_func_start sub_8055B18
sub_8055B18: @ 0x08055B18
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r1, _08055B64 @ =gUnknown_086883CC
	mov r0, sp
	movs r2, #0x16
	bl memcpy
	mov r0, sp
	adds r0, #0x16
	movs r1, #0
	movs r2, #5
	bl memset
	ldr r0, _08055B68 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0xd7
	ble _08055B6C
	ldrh r2, [r4, #0xa]
	adds r0, r2, #0
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08055B96
	ldrh r0, [r4, #0xe]
	subs r0, #1
	strh r0, [r4, #0xe]
	adds r0, r2, #4
	b _08055B88
	.align 2, 0
_08055B64: .4byte gUnknown_086883CC
_08055B68: .4byte gCurTask
_08055B6C:
	cmp r0, #0x19
	ble _08055BC0
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	movs r1, #9
	strh r1, [r4, #0xe]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, #0x28
	cmp r0, r1
	bge _08055B96
	adds r0, r2, #0
	adds r0, #0x1e
_08055B88:
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	movs r1, #7
	bl Mod
	strh r0, [r4, #0x1a]
_08055B96:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x69
	bls _08055C12
	ldr r1, _08055BBC @ =0x03000020
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055C12
	adds r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055C12
	ldrh r0, [r4, #0x1a]
	add r0, sp
	adds r1, r4, #0
	bl sub_80530CC
	b _08055C2E
	.align 2, 0
_08055BBC: .4byte 0x03000020
_08055BC0:
	cmp r0, #0xf
	ble _08055C2E
	movs r0, #0x80
	strh r0, [r4, #0xc]
	ldrh r3, [r4, #0xa]
	adds r0, r3, #0
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xef
	bgt _08055C2E
	asrs r0, r0, #0x15
	movs r1, #9
	subs r1, r1, r0
	strh r1, [r4, #0xe]
	movs r0, #0x1f
	rsbs r0, r0, #0
	cmp r2, r0
	bge _08055BF8
	adds r0, r3, #4
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	movs r1, #7
	bl Mod
	strh r0, [r4, #0x1a]
_08055BF8:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x69
	bls _08055C12
	ldr r1, _08055C20 @ =0x03000020
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055C12
	adds r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055C24
_08055C12:
	ldrh r0, [r4, #0x1a]
	add r0, sp
	adds r1, r4, #0
	bl sub_8052F78
	b _08055C2E
	.align 2, 0
_08055C20: .4byte 0x03000020
_08055C24:
	ldrh r0, [r4, #0x1a]
	add r0, sp
	adds r1, r4, #0
	bl sub_80530CC
_08055C2E:
	add sp, #0x1c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_8055C38
TaskDestructor_8055C38: @ 0x08055C38
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0

    thumb_func_start TaskDestructor_8055C4C
TaskDestructor_8055C4C: @ 0x08055C4C
    bx lr
    .align 2, 0

@ --- End of game/stage/ui.c ---
