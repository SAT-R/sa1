.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Spikes_Up
CreateEntity_Spikes_Up: @ 0x0801FFC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08020094 @ =Task_Spikes_Up
	movs r1, #0x80
	lsls r1, r1, #6
	mov sl, r1
	movs r2, #0
	mov r8, r2
	str r2, [sp]
	movs r1, #0x44
	mov r2, sl
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r7, _08020098 @ =0x0300000C
	adds r0, r3, r7
	mov r2, r8
	str r2, [r1, #0x40]
	str r2, [r1, #0x3c]
	movs r7, #0
	mov ip, r7
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	mov r2, sb
	str r2, [r1]
	ldrb r2, [r2]
	strb r2, [r1, #8]
	strb r6, [r1, #9]
	mov r7, sb
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	strh r1, [r0, #0x16]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	strh r1, [r0, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r7]
	ldr r1, _0802009C @ =0x06011B00
	str r1, [r0, #4]
	movs r1, #0x88
	lsls r1, r1, #3
	strh r1, [r0, #0x1a]
	mov r7, r8
	strh r7, [r0, #8]
	movs r1, #0xe3
	lsls r1, r1, #1
	strh r1, [r0, #0xa]
	ldr r1, _080200A0 @ =0x0300002C
	adds r2, r3, r1
	movs r1, #2
	strb r1, [r2]
	mov r2, r8
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x1c]
	ldr r7, _080200A4 @ =0x0300002D
	adds r2, r3, r7
	movs r1, #0xff
	strb r1, [r2]
	ldr r1, _080200A8 @ =0x0300002E
	adds r2, r3, r1
	movs r1, #0x10
	strb r1, [r2]
	ldr r2, _080200AC @ =0x03000031
	adds r3, r3, r2
	mov r7, ip
	strb r7, [r3]
	subs r1, #0x11
	str r1, [r0, #0x28]
	mov r1, sl
	str r1, [r0, #0x10]
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
_08020094: .4byte Task_Spikes_Up
_08020098: .4byte 0x0300000C
_0802009C: .4byte 0x06011B00
_080200A0: .4byte 0x0300002C
_080200A4: .4byte 0x0300002D
_080200A8: .4byte 0x0300002E
_080200AC: .4byte 0x03000031

	thumb_func_start CreateEntity_Spikes_Down
CreateEntity_Spikes_Down: @ 0x080200B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08020178 @ =Task_Spikes_Down
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, _0802017C @ =0x0300000C
	adds r0, r3, r2
	mov r7, r8
	str r7, [r1, #0x40]
	str r7, [r1, #0x3c]
	movs r2, #0
	mov sl, r2
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	mov r7, sb
	str r7, [r1]
	ldrb r2, [r7]
	strb r2, [r1, #8]
	strb r6, [r1, #9]
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	strh r1, [r0, #0x16]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	strh r1, [r0, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r7]
	ldr r1, _08020180 @ =0x06011B00
	str r1, [r0, #4]
	movs r1, #0x88
	lsls r1, r1, #3
	strh r1, [r0, #0x1a]
	movs r1, #0xe3
	lsls r1, r1, #1
	strh r1, [r0, #0xa]
	ldr r7, _08020184 @ =0x0300002C
	adds r2, r3, r7
	movs r1, #2
	strb r1, [r2]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r1, [r0, #0x1c]
	adds r7, #1
	adds r2, r3, r7
	movs r1, #0xff
	strb r1, [r2]
	ldr r1, _08020188 @ =0x0300002E
	adds r2, r3, r1
	movs r1, #0x10
	strb r1, [r2]
	ldr r2, _0802018C @ =0x03000031
	adds r3, r3, r2
	mov r7, sl
	strb r7, [r3]
	subs r1, #0x11
	str r1, [r0, #0x28]
	movs r1, #0xa0
	lsls r1, r1, #6
	str r1, [r0, #0x10]
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
_08020178: .4byte Task_Spikes_Down
_0802017C: .4byte 0x0300000C
_08020180: .4byte 0x06011B00
_08020184: .4byte 0x0300002C
_08020188: .4byte 0x0300002E
_0802018C: .4byte 0x03000031

	thumb_func_start Task_Spikes_Up
Task_Spikes_Up: @ 0x08020190
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08020218 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r7, r1, r0
	ldr r1, [r6]
	mov r8, r1
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, r8
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0802021C @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r7, #0x18]
	ldr r0, _08020220 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _080201F4
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080201F4
	ldr r0, _08020224 @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020254
_080201F4:
	movs r4, #0
_080201F6:
	ldr r0, _08020228 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08020234
	ldr r3, _0802022C @ =gPlayer
	cmp r4, #0
	beq _0802020A
	ldr r3, _08020230 @ =gUnknown_03005AB0
_0802020A:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_8020D44
	b _08020246
	.align 2, 0
_08020218: .4byte gCurTask
_0802021C: .4byte gCamera
_08020220: .4byte gGameMode
_08020224: .4byte gUnknown_03004FE0
_08020228: .4byte gUnknown_03005004
_0802022C: .4byte gPlayer
_08020230: .4byte gUnknown_03005AB0
_08020234:
	ldr r3, _080202A0 @ =gPlayer
	cmp r4, #0
	beq _0802023C
	ldr r3, _080202A4 @ =gUnknown_03005AB0
_0802023C:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_8020E98
_08020246:
	adds r4, #1
	ldr r0, _080202A8 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _080201F6
_08020254:
	ldr r0, _080202AC @ =gGameMode
	ldrb r1, [r0]
	cmp r1, #6
	bne _080202EA
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080202EA
	ldr r0, _080202B0 @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080202EA
	movs r3, #0
	ldr r0, _080202A8 @ =gUnknown_03005088
	mov sl, r0
	ldr r5, _080202A4 @ =gUnknown_03005AB0
	movs r1, #0x21
	rsbs r1, r1, #0
	mov sb, r1
	ldr r4, _080202A0 @ =gPlayer
	movs r0, #9
	rsbs r0, r0, #0
	mov ip, r0
	adds r2, r6, #0
	adds r2, #0x3c
_08020288:
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080202BC
	cmp r3, #0
	beq _080202B4
	ldr r0, [r5, #0x10]
	mov r1, sb
	ands r0, r1
	str r0, [r5, #0x10]
	b _080202BC
	.align 2, 0
_080202A0: .4byte gPlayer
_080202A4: .4byte gUnknown_03005AB0
_080202A8: .4byte gUnknown_03005088
_080202AC: .4byte gGameMode
_080202B0: .4byte gUnknown_03004FE0
_080202B4:
	ldr r0, [r4, #0x10]
	mov r1, sb
	ands r0, r1
	str r0, [r4, #0x10]
_080202BC:
	ldr r0, [r2]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080202DC
	cmp r3, #0
	beq _080202D4
	ldr r0, [r5, #0x10]
	mov r1, ip
	ands r0, r1
	str r0, [r5, #0x10]
	b _080202DC
_080202D4:
	ldr r0, [r4, #0x10]
	mov r1, ip
	ands r0, r1
	str r0, [r4, #0x10]
_080202DC:
	adds r2, #4
	adds r3, #1
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r3, r0
	blt _08020288
_080202EA:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0802030E
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0802030E
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08020324
_0802030E:
	ldrb r0, [r6, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _08020320 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08020344
	.align 2, 0
_08020320: .4byte gCurTask
_08020324:
	ldr r1, _08020354 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #6
	bne _0802033E
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0802033E
	ldr r0, _08020358 @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020344
_0802033E:
	adds r0, r7, #0
	bl DisplaySprite
_08020344:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020354: .4byte gGameMode
_08020358: .4byte gUnknown_03004FE0

	thumb_func_start Task_Spikes_Down
Task_Spikes_Down: @ 0x0802035C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080203E4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r7, r1, r0
	ldr r1, [r6]
	mov r8, r1
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, r8
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080203E8 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r7, #0x18]
	ldr r0, _080203EC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _080203C0
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080203C0
	ldr r0, _080203F0 @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020420
_080203C0:
	movs r4, #0
_080203C2:
	ldr r0, _080203F4 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08020400
	ldr r3, _080203F8 @ =gPlayer
	cmp r4, #0
	beq _080203D6
	ldr r3, _080203FC @ =gUnknown_03005AB0
_080203D6:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_8020E98
	b _08020412
	.align 2, 0
_080203E4: .4byte gCurTask
_080203E8: .4byte gCamera
_080203EC: .4byte gGameMode
_080203F0: .4byte gUnknown_03004FE0
_080203F4: .4byte gUnknown_03005004
_080203F8: .4byte gPlayer
_080203FC: .4byte gUnknown_03005AB0
_08020400:
	ldr r3, _0802046C @ =gPlayer
	cmp r4, #0
	beq _08020408
	ldr r3, _08020470 @ =gUnknown_03005AB0
_08020408:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_8020D44
_08020412:
	adds r4, #1
	ldr r0, _08020474 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _080203C2
_08020420:
	ldr r0, _08020478 @ =gGameMode
	ldrb r1, [r0]
	cmp r1, #6
	bne _080204B6
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080204B6
	ldr r0, _0802047C @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080204B6
	movs r3, #0
	ldr r0, _08020474 @ =gUnknown_03005088
	mov sl, r0
	ldr r5, _08020470 @ =gUnknown_03005AB0
	movs r1, #0x21
	rsbs r1, r1, #0
	mov sb, r1
	ldr r4, _0802046C @ =gPlayer
	movs r0, #9
	rsbs r0, r0, #0
	mov ip, r0
	adds r2, r6, #0
	adds r2, #0x3c
_08020454:
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08020488
	cmp r3, #0
	beq _08020480
	ldr r0, [r5, #0x10]
	mov r1, sb
	ands r0, r1
	str r0, [r5, #0x10]
	b _08020488
	.align 2, 0
_0802046C: .4byte gPlayer
_08020470: .4byte gUnknown_03005AB0
_08020474: .4byte gUnknown_03005088
_08020478: .4byte gGameMode
_0802047C: .4byte gUnknown_03004FE0
_08020480:
	ldr r0, [r4, #0x10]
	mov r1, sb
	ands r0, r1
	str r0, [r4, #0x10]
_08020488:
	ldr r0, [r2]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080204A8
	cmp r3, #0
	beq _080204A0
	ldr r0, [r5, #0x10]
	mov r1, ip
	ands r0, r1
	str r0, [r5, #0x10]
	b _080204A8
_080204A0:
	ldr r0, [r4, #0x10]
	mov r1, ip
	ands r0, r1
	str r0, [r4, #0x10]
_080204A8:
	adds r2, #4
	adds r3, #1
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r3, r0
	blt _08020454
_080204B6:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080204DA
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080204DA
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080204F0
_080204DA:
	ldrb r0, [r6, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _080204EC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08020510
	.align 2, 0
_080204EC: .4byte gCurTask
_080204F0:
	ldr r1, _08020520 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #6
	bne _0802050A
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0802050A
	ldr r0, _08020524 @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020510
_0802050A:
	adds r0, r7, #0
	bl DisplaySprite
_08020510:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020520: .4byte gGameMode
_08020524: .4byte gUnknown_03004FE0

	thumb_func_start CreateEntity_Spikes_Horizontal
CreateEntity_Spikes_Horizontal: @ 0x08020528
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
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
	ldr r0, _080205FC @ =Task_Spikes_Horizontal
	movs r1, #0x80
	lsls r1, r1, #6
	mov sb, r1
	ldr r1, _08020600 @ =TaskDestructor_Spikes
	str r1, [sp]
	movs r1, #0x44
	mov r2, sb
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r3, _08020604 @ =0x0300000C
	adds r7, r6, r3
	movs r2, #0
	str r2, [r0, #0x40]
	str r2, [r0, #0x3c]
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sl
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r3, r8
	strb r3, [r0, #9]
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
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r1]
	movs r0, #0x10
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	ldr r2, [sp, #4]
	strh r2, [r7, #8]
	movs r0, #0xe3
	lsls r0, r0, #1
	strh r0, [r7, #0xa]
	ldr r0, _08020608 @ =0x0300002C
	adds r1, r6, r0
	movs r0, #3
	strb r0, [r1]
	strh r2, [r7, #0x14]
	strh r2, [r7, #0x1c]
	ldr r3, _0802060C @ =0x0300002D
	adds r1, r6, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08020610 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08020614 @ =0x03000031
	adds r6, r6, r1
	movs r3, #0
	strb r3, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	mov r0, sb
	str r0, [r7, #0x10]
	ldr r0, _08020618 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0802061C
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #2
	bne _0802062E
	b _08020624
	.align 2, 0
_080205FC: .4byte Task_Spikes_Horizontal
_08020600: .4byte TaskDestructor_Spikes
_08020604: .4byte 0x0300000C
_08020608: .4byte 0x0300002C
_0802060C: .4byte 0x0300002D
_08020610: .4byte 0x0300002E
_08020614: .4byte 0x03000031
_08020618: .4byte gGameMode
_0802061C:
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #3
	bne _0802062E
_08020624:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r3, sb
	orrs r0, r3
	str r0, [r7, #0x10]
_0802062E:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_Spikes_Horizontal
Task_Spikes_Horizontal: @ 0x08020644
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08020710 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _08020714 @ =0x0300000C
	adds r0, r0, r1
	mov r8, r0
	mov r1, sl
	ldr r1, [r1]
	mov sb, r1
	mov r3, sl
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08020718 @ =gCamera
	ldrh r0, [r3]
	lsrs r5, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	mov r0, r8
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r3, r8
	strh r1, [r3, #0x18]
	ldr r0, _0802071C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _080206BA
	mov r1, sb
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080206BA
	ldr r0, _08020720 @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080206BA
	b _08020858
_080206BA:
	movs r4, #0
	lsls r0, r5, #0x10
	lsls r2, r2, #0x10
	str r2, [sp, #8]
	asrs r7, r0, #0x10
	ldr r6, _08020724 @ =gUnknown_03005AB0
	ldr r5, _08020728 @ =gPlayer
_080206C8:
	ldr r3, [sp, #8]
	asrs r2, r3, #0x10
	ldr r3, _08020728 @ =gPlayer
	cmp r4, #0
	beq _080206D4
	ldr r3, _08020724 @ =gUnknown_03005AB0
_080206D4:
	mov r0, r8
	adds r1, r7, #0
	bl sub_80096B0
	adds r1, r0, #0
	ldr r0, _0802072C @ =0x00010008
	ands r0, r1
	cmp r0, #0
	beq _080206E8
	b _08020848
_080206E8:
	movs r2, #3
	ldr r0, _0802071C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _080206F4
	movs r2, #2
_080206F4:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0802079A
	mov r0, sb
	ldrb r0, [r0, #2]
	cmp r2, r0
	beq _080207AE
	mov r3, sp
	cmp r4, #0
	beq _08020730
	ldrb r0, [r6, #0xe]
	b _08020732
	.align 2, 0
_08020710: .4byte gCurTask
_08020714: .4byte 0x0300000C
_08020718: .4byte gCamera
_0802071C: .4byte gGameMode
_08020720: .4byte gUnknown_03004FE0
_08020724: .4byte gUnknown_03005AB0
_08020728: .4byte gPlayer
_0802072C: .4byte 0x00010008
_08020730:
	ldrb r0, [r5, #0xe]
_08020732:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #4
	strb r1, [r0]
	adds r1, r0, #0
	cmp r4, #0
	beq _08020744
	ldrb r0, [r6, #0xf]
	b _08020746
_08020744:
	ldrb r0, [r5, #0xf]
_08020746:
	mvns r2, r0
	mov r0, sp
	adds r0, #5
	strb r2, [r0]
	cmp r4, #0
	beq _08020756
	ldrb r0, [r6, #0xe]
	b _08020758
_08020756:
	ldrb r0, [r5, #0xe]
_08020758:
	adds r2, r0, #5
	mov r0, sp
	adds r0, #6
	strb r2, [r0]
	cmp r4, #0
	beq _08020768
	ldrb r0, [r6, #0xf]
	b _0802076A
_08020768:
	ldrb r0, [r5, #0xf]
_0802076A:
	adds r2, r0, #1
	mov r0, sp
	adds r0, #7
	strb r2, [r0]
	adds r0, r3, #0
	movs r2, #4
	bl memcpy
	mov r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	mov r1, sp
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	adds r0, #1
	lsls r0, r0, #8
	cmp r4, #0
	bne _08020842
	b _08020846
_0802079A:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08020848
	adds r0, r2, #1
	mov r1, sb
	ldrb r1, [r1, #2]
	cmp r0, r1
	bne _080207D0
_080207AE:
	ldr r0, _080207C8 @ =gPlayer
	cmp r4, #0
	beq _080207B6
	ldr r0, _080207CC @ =gUnknown_03005AB0
_080207B6:
	bl sub_800C558
	cmp r0, #0
	beq _08020848
	movs r0, #0xab
	bl m4aSongNumStart
	b _08020848
	.align 2, 0
_080207C8: .4byte gPlayer
_080207CC: .4byte gUnknown_03005AB0
_080207D0:
	mov r3, sp
	cmp r4, #0
	beq _080207DA
	ldrb r0, [r6, #0xe]
	b _080207DC
_080207DA:
	ldrb r0, [r5, #0xe]
_080207DC:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #4
	strb r1, [r0]
	adds r1, r0, #0
	cmp r4, #0
	beq _080207EE
	ldrb r0, [r6, #0xf]
	b _080207F0
_080207EE:
	ldrb r0, [r5, #0xf]
_080207F0:
	mvns r2, r0
	mov r0, sp
	adds r0, #5
	strb r2, [r0]
	cmp r4, #0
	beq _08020800
	ldrb r0, [r6, #0xe]
	b _08020802
_08020800:
	ldrb r0, [r5, #0xe]
_08020802:
	adds r2, r0, #5
	mov r0, sp
	adds r0, #6
	strb r2, [r0]
	cmp r4, #0
	beq _08020812
	ldrb r0, [r6, #0xf]
	b _08020814
_08020812:
	ldrb r0, [r5, #0xf]
_08020814:
	adds r2, r0, #1
	mov r0, sp
	adds r0, #7
	strb r2, [r0]
	adds r0, r3, #0
	movs r2, #4
	bl memcpy
	mov r0, r8
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	mov r1, sp
	ldrb r1, [r1, #2]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	subs r0, #1
	lsls r0, r0, #8
	cmp r4, #0
	beq _08020846
_08020842:
	str r0, [r6]
	b _08020848
_08020846:
	str r0, [r5]
_08020848:
	adds r4, #1
	ldr r0, _080208A0 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _08020858
	b _080206C8
_08020858:
	ldr r0, _080208A4 @ =gGameMode
	ldrb r1, [r0]
	cmp r1, #6
	bne _080208E4
	mov r2, sb
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _080208E4
	ldr r0, _080208A8 @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080208E4
	movs r3, #0
	ldr r0, _080208A0 @ =gUnknown_03005088
	mov ip, r0
	ldr r5, _080208AC @ =gUnknown_03005AB0
	movs r7, #0x21
	rsbs r7, r7, #0
	ldr r4, _080208B0 @ =gPlayer
	movs r6, #9
	rsbs r6, r6, #0
	mov r2, sl
	adds r2, #0x3c
_08020888:
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080208BA
	cmp r3, #0
	beq _080208B4
	ldr r0, [r5, #0x10]
	ands r0, r7
	str r0, [r5, #0x10]
	b _080208BA
	.align 2, 0
_080208A0: .4byte gUnknown_03005088
_080208A4: .4byte gGameMode
_080208A8: .4byte gUnknown_03004FE0
_080208AC: .4byte gUnknown_03005AB0
_080208B0: .4byte gPlayer
_080208B4:
	ldr r0, [r4, #0x10]
	ands r0, r7
	str r0, [r4, #0x10]
_080208BA:
	ldr r0, [r2]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080208D6
	cmp r3, #0
	beq _080208D0
	ldr r0, [r5, #0x10]
	ands r0, r6
	str r0, [r5, #0x10]
	b _080208D6
_080208D0:
	ldr r0, [r4, #0x10]
	ands r0, r6
	str r0, [r4, #0x10]
_080208D6:
	adds r2, #4
	adds r3, #1
	mov r1, ip
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r3, r0
	blt _08020888
_080208E4:
	mov r2, r8
	ldrh r0, [r2, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0802090A
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0802090A
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08020920
_0802090A:
	mov r1, sl
	ldrb r0, [r1, #8]
	mov r2, sb
	strb r0, [r2]
	ldr r0, _0802091C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08020940
	.align 2, 0
_0802091C: .4byte gCurTask
_08020920:
	ldr r3, _08020950 @ =gGameMode
	ldrb r0, [r3]
	cmp r0, #6
	bne _0802093A
	mov r1, sb
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0802093A
	ldr r0, _08020954 @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020940
_0802093A:
	mov r0, r8
	bl DisplaySprite
_08020940:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020950: .4byte gGameMode
_08020954: .4byte gUnknown_03004FE0

	thumb_func_start CreateEntity_Spikes_HidingUp
CreateEntity_Spikes_HidingUp: @ 0x08020958
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08020A2C @ =Task_Spikes_HidingUp
	movs r1, #0x80
	lsls r1, r1, #6
	mov sl, r1
	ldr r1, _08020A30 @ =TaskDestructor_Spikes
	str r1, [sp]
	movs r1, #0x44
	mov r2, sl
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r7, _08020A34 @ =0x0300000C
	adds r5, r2, r7
	movs r3, #0
	str r3, [r0, #0x40]
	str r3, [r0, #0x3c]
	strh r4, [r0, #4]
	strh r6, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r7, r8
	strb r7, [r0, #9]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r5, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x18]
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	strb r0, [r1]
	movs r0, #0x10
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r3, [sp, #8]
	strh r3, [r5, #8]
	ldr r0, _08020A38 @ =0x0000FFFF
	strh r0, [r5, #0xa]
	ldr r2, [sp, #4]
	ldr r0, _08020A3C @ =0x0300002C
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r7, _08020A40 @ =0x0300002D
	adds r1, r2, r7
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r0, _08020A44 @ =0x0300002E
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08020A48 @ =0x03000031
	adds r2, r2, r1
	movs r7, #0
	strb r7, [r2]
	subs r0, #0x11
	str r0, [r5, #0x28]
	mov r0, sl
	str r0, [r5, #0x10]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020A2C: .4byte Task_Spikes_HidingUp
_08020A30: .4byte TaskDestructor_Spikes
_08020A34: .4byte 0x0300000C
_08020A38: .4byte 0x0000FFFF
_08020A3C: .4byte 0x0300002C
_08020A40: .4byte 0x0300002D
_08020A44: .4byte 0x0300002E
_08020A48: .4byte 0x03000031

	thumb_func_start Task_Spikes_HidingUp
Task_Spikes_HidingUp: @ 0x08020A4C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r4, _08020AC8 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r1, [r5]
	mov r8, r1
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, r8
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08020ACC @ =gCamera
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
	bhi _08020AB8
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08020AB8
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08020AD0
_08020AB8:
	ldrb r0, [r5, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08020B32
	.align 2, 0
_08020AC8: .4byte gCurTask
_08020ACC: .4byte gCamera
_08020AD0:
	movs r4, #0
	add r7, sp, #4
_08020AD4:
	ldr r0, _08020AF8 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08020B04
	ldr r3, _08020AFC @ =gPlayer
	cmp r4, #0
	beq _08020AE8
	ldr r3, _08020B00 @ =gUnknown_03005AB0
_08020AE8:
	str r7, [sp]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_8020F2C
	b _08020B18
	.align 2, 0
_08020AF8: .4byte gUnknown_03005004
_08020AFC: .4byte gPlayer
_08020B00: .4byte gUnknown_03005AB0
_08020B04:
	ldr r3, _08020B40 @ =gPlayer
	cmp r4, #0
	beq _08020B0C
	ldr r3, _08020B44 @ =gUnknown_03005AB0
_08020B0C:
	str r7, [sp]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_8021208
_08020B18:
	adds r1, r0, #0
	adds r4, #1
	ldr r0, _08020B48 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08020AD4
	cmp r1, #0
	beq _08020B32
	adds r0, r6, #0
	bl DisplaySprite
_08020B32:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020B40: .4byte gPlayer
_08020B44: .4byte gUnknown_03005AB0
_08020B48: .4byte gUnknown_03005088

	thumb_func_start CreateEntity_Spikes_HidingDown
CreateEntity_Spikes_HidingDown: @ 0x08020B4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08020C24 @ =Task_Spikes_HidingDown
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08020C28 @ =TaskDestructor_Spikes
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _08020C2C @ =0x0300000C
	adds r5, r2, r1
	movs r3, #0
	str r3, [r0, #0x40]
	str r3, [r0, #0x3c]
	movs r7, #0
	mov sl, r7
	strh r4, [r0, #4]
	strh r6, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r7, r8
	strb r7, [r0, #9]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r5, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x18]
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	strb r0, [r1]
	movs r0, #0x10
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r3, [sp, #8]
	strh r3, [r5, #8]
	ldr r0, _08020C30 @ =0x0000FFFF
	strh r0, [r5, #0xa]
	ldr r2, [sp, #4]
	ldr r0, _08020C34 @ =0x0300002C
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r7, _08020C38 @ =0x0300002D
	adds r1, r2, r7
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r0, _08020C3C @ =0x0300002E
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08020C40 @ =0x03000031
	adds r2, r2, r1
	mov r7, sl
	strb r7, [r2]
	subs r0, #0x11
	str r0, [r5, #0x28]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020C24: .4byte Task_Spikes_HidingDown
_08020C28: .4byte TaskDestructor_Spikes
_08020C2C: .4byte 0x0300000C
_08020C30: .4byte 0x0000FFFF
_08020C34: .4byte 0x0300002C
_08020C38: .4byte 0x0300002D
_08020C3C: .4byte 0x0300002E
_08020C40: .4byte 0x03000031

	thumb_func_start Task_Spikes_HidingDown
Task_Spikes_HidingDown: @ 0x08020C44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r4, _08020CC0 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r1, [r5]
	mov r8, r1
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, r8
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08020CC4 @ =gCamera
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
	bhi _08020CB0
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08020CB0
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08020CC8
_08020CB0:
	ldrb r0, [r5, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08020D2A
	.align 2, 0
_08020CC0: .4byte gCurTask
_08020CC4: .4byte gCamera
_08020CC8:
	movs r4, #0
	add r7, sp, #4
_08020CCC:
	ldr r0, _08020CF0 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08020CFC
	ldr r3, _08020CF4 @ =gPlayer
	cmp r4, #0
	beq _08020CE0
	ldr r3, _08020CF8 @ =gUnknown_03005AB0
_08020CE0:
	str r7, [sp]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_8021208
	b _08020D10
	.align 2, 0
_08020CF0: .4byte gUnknown_03005004
_08020CF4: .4byte gPlayer
_08020CF8: .4byte gUnknown_03005AB0
_08020CFC:
	ldr r3, _08020D38 @ =gPlayer
	cmp r4, #0
	beq _08020D04
	ldr r3, _08020D3C @ =gUnknown_03005AB0
_08020D04:
	str r7, [sp]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r5, #0
	bl sub_8020F2C
_08020D10:
	adds r1, r0, #0
	adds r4, #1
	ldr r0, _08020D40 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08020CCC
	cmp r1, #0
	beq _08020D2A
	adds r0, r6, #0
	bl DisplaySprite
_08020D2A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020D38: .4byte gPlayer
_08020D3C: .4byte gUnknown_03005AB0
_08020D40: .4byte gUnknown_03005088

	thumb_func_start sub_8020D44
sub_8020D44: @ 0x08020D44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r4, r1, #0
	mov r8, r2
	adds r5, r3, #0
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #8]
	ldrb r2, [r2, #8]
	lsls r2, r2, #3
	mov r1, r8
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	mov r3, r8
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08020E14 @ =gCamera
	ldrh r0, [r3]
	lsrs r6, r2, #0x10
	mov sl, r6
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r6, r1, #0x10
	subs r0, r6, r0
	strh r0, [r7, #0x18]
	ldr r0, _08020E18 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08020E48
	movs r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08020E48
	ldr r0, _08020E1C @ =gUnknown_03004FE0
	ldrb r0, [r0]
	cmp r0, #0x1e
	bne _08020E48
	adds r0, r7, #0
	adds r1, r2, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_800CE34
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	bne _08020E48
	ldrb r4, [r5, #0xe]
	adds r4, #5
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r3, [r5, #0xf]
	movs r0, #1
	subs r0, r0, r3
	mov r2, sp
	adds r2, #5
	strb r0, [r2]
	mov r0, sp
	adds r0, #6
	strb r4, [r0]
	subs r3, #1
	adds r0, #1
	strb r3, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, _08020E20 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08020E24
	adds r0, r7, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	mov r1, sp
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	b _08020E3A
	.align 2, 0
_08020E14: .4byte gCamera
_08020E18: .4byte gGameMode
_08020E1C: .4byte gUnknown_03004FE0
_08020E20: .4byte gUnknown_03005004
_08020E24:
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	mov r1, sp
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
_08020E3A:
	lsls r0, r0, #8
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_800C558
	cmp r0, #0
	bne _08020E7A
_08020E48:
	mov r6, sl
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	adds r3, r5, #0
	bl sub_80096B0
	ldr r1, [sp, #8]
	lsls r2, r1, #2
	mov r1, r8
	adds r1, #0x3c
	adds r1, r1, r2
	str r0, [r1]
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _08020E84
	adds r0, r5, #0
	bl sub_800C558
	cmp r0, #0
	beq _08020E84
_08020E7A:
	movs r0, #0xab
	bl m4aSongNumStart
	movs r0, #1
	b _08020E86
_08020E84:
	movs r0, #0
_08020E86:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8020E98
sub_8020E98: @ 0x08020E98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08020F1C @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	subs r0, r7, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x18]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08020F20
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r6, #0
	bl sub_80096B0
	mov r1, r8
	lsls r2, r1, #2
	adds r1, r4, #0
	adds r1, #0x3c
	adds r1, r1, r2
	str r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	beq _08020F20
	adds r0, r6, #0
	bl sub_800C558
	cmp r0, #0
	beq _08020F20
	movs r0, #0xab
	bl m4aSongNumStart
	movs r0, #1
	b _08020F22
	.align 2, 0
_08020F1C: .4byte gCamera
_08020F20:
	movs r0, #0
_08020F22:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8020F2C
sub_8020F2C: @ 0x08020F2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r7, r2, #0
	adds r5, r3, #0
	ldr r0, _08020FD0 @ =gStageTime
	ldr r4, [r0]
	movs r0, #0x7f
	ands r4, r0
	str r4, [sp, #0xc]
	movs r0, #0x3c
	adds r0, r0, r5
	mov ip, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov sl, r2
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08020FD4 @ =gCamera
	ldrh r0, [r3]
	mov sb, r0
	lsrs r0, r2, #0x10
	str r0, [sp, #8]
	asrs r2, r2, #0x10
	mov r8, r2
	mov r0, sb
	subs r2, r2, r0
	strh r2, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	mov sb, r1
	subs r0, r1, r0
	strh r0, [r6, #0x18]
	cmp r4, #0x3b
	bhi _08020FD8
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08020FAC
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08020FAC
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08020FAC:
	mov r2, sl
	lsls r1, r2, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08020FCC
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_08020FCC:
	movs r0, #0
	b _080211F8
	.align 2, 0
_08020FD0: .4byte gStageTime
_08020FD4: .4byte gCamera
_08020FD8:
	cmp r4, #0x3d
	bhi _08021026
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08020FF8
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08020FF8
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08020FF8:
	mov r4, sl
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08021018
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_08021018:
	movs r0, #0
	movs r1, #0xe3
	lsls r1, r1, #1
	strh r1, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	b _0802119C
_08021026:
	cmp r4, #0x3f
	bhi _0802104C
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021046
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021046
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021046:
	mov r0, sl
	lsls r1, r0, #2
	b _08021174
_0802104C:
	cmp r4, #0x7b
	bls _08021052
	b _0802114E
_08021052:
	adds r3, r6, #0
	adds r3, #0x20
	ldrb r0, [r3]
	mov r4, ip
	ldrb r1, [r4]
	cmp r0, #2
	bne _0802106C
	cmp r1, #0
	beq _08021116
	ldr r4, [sp, #0x30]
	ldr r0, [r4]
	cmp r0, #0
	beq _08021116
_0802106C:
	cmp r1, #0
	bne _08021076
	movs r0, #1
	ldr r1, [sp, #0x30]
	str r0, [r1]
_08021076:
	movs r0, #0xe3
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	movs r0, #2
	strb r0, [r3]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	mov r1, r8
	mov r2, sb
	adds r3, r5, #0
	bl sub_800CE34
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	bne _08021108
	ldrb r4, [r5, #0xe]
	adds r4, #5
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r3, [r5, #0xf]
	movs r0, #1
	subs r0, r0, r3
	mov r2, sp
	adds r2, #5
	strb r0, [r2]
	mov r0, sp
	adds r0, #6
	strb r4, [r0]
	subs r3, #1
	adds r0, #1
	strb r3, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, _080210E8 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080210EC
	adds r0, r6, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	mov r1, sp
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	b _08021102
	.align 2, 0
_080210E8: .4byte gUnknown_03005004
_080210EC:
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	mov r1, sp
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
_08021102:
	lsls r0, r0, #8
	str r0, [r5, #4]
	b _0802113C
_08021108:
	adds r0, r6, #0
	mov r1, r8
	mov r2, sb
	adds r3, r5, #0
	bl sub_80096B0
	b _08021134
_08021116:
	ldr r4, [sp, #8]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r3, r5, #0
	bl sub_80096B0
	mov r1, sl
	lsls r2, r1, #2
	adds r1, r7, #0
	adds r1, #0x3c
	adds r1, r1, r2
	str r0, [r1]
_08021134:
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _080211F6
_0802113C:
	adds r0, r5, #0
	bl sub_800C558
	cmp r0, #0
	beq _080211F6
	movs r0, #0xab
	bl m4aSongNumStart
	b _080211F6
_0802114E:
	ldr r2, [sp, #0xc]
	cmp r2, #0x7d
	bhi _080211A6
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021170
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021170
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021170:
	mov r4, sl
	lsls r1, r4, #2
_08021174:
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08021190
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_08021190:
	movs r0, #0xe3
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
_0802119C:
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	b _080211F6
_080211A6:
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080211C2
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _080211C2
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_080211C2:
	mov r0, sl
	lsls r1, r0, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080211E2
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_080211E2:
	movs r0, #0
	movs r1, #0xe3
	lsls r1, r1, #1
	strh r1, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
_080211F6:
	movs r0, #1
_080211F8:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8021208
sub_8021208: @ 0x08021208
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r7, r2, #0
	adds r5, r3, #0
	ldr r0, _080212AC @ =gStageTime
	ldr r4, [r0]
	movs r0, #0x7f
	ands r4, r0
	str r4, [sp, #0xc]
	movs r0, #0x3c
	adds r0, r0, r5
	mov ip, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov sb, r2
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _080212B0 @ =gCamera
	ldrh r0, [r3]
	mov r8, r0
	lsrs r0, r2, #0x10
	str r0, [sp, #8]
	asrs r2, r2, #0x10
	mov sl, r2
	mov r0, r8
	subs r2, r2, r0
	strh r2, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	subs r0, r1, r0
	strh r0, [r6, #0x18]
	cmp r4, #0x3b
	bhi _080212B4
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021288
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021288
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021288:
	mov r2, sb
	lsls r1, r2, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080212A8
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_080212A8:
	movs r0, #0
	b _080214C8
	.align 2, 0
_080212AC: .4byte gStageTime
_080212B0: .4byte gCamera
_080212B4:
	cmp r4, #0x3d
	bhi _08021302
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080212D4
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _080212D4
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_080212D4:
	mov r4, sb
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080212F4
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_080212F4:
	movs r0, #0
	movs r1, #0xe3
	lsls r1, r1, #1
	strh r1, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	b _0802146C
_08021302:
	cmp r4, #0x3f
	bhi _08021328
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021322
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021322
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021322:
	mov r0, sb
	lsls r1, r0, #2
	b _08021444
_08021328:
	cmp r4, #0x7b
	bhi _0802141E
	adds r3, r6, #0
	adds r3, #0x20
	ldrb r0, [r3]
	mov r4, ip
	ldrb r1, [r4]
	cmp r0, #2
	bne _08021346
	cmp r1, #0
	beq _080213E4
	ldr r4, [sp, #0x30]
	ldr r0, [r4]
	cmp r0, #0
	beq _080213E4
_08021346:
	cmp r1, #0
	bne _08021350
	movs r0, #1
	ldr r1, [sp, #0x30]
	str r0, [r1]
_08021350:
	movs r0, #0xe3
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	movs r0, #2
	strb r0, [r3]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl sub_800CE34
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	beq _08021376
	b _080214C6
_08021376:
	ldrb r4, [r5, #0xe]
	adds r4, #5
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r3, [r5, #0xf]
	movs r0, #1
	subs r0, r0, r3
	mov r2, sp
	adds r2, #5
	strb r0, [r2]
	mov r0, sp
	adds r0, #6
	strb r4, [r0]
	subs r3, #1
	adds r0, #1
	strb r3, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, _080213C4 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080213C8
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, r8
	mov r1, sp
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	b _080213DE
	.align 2, 0
_080213C4: .4byte gUnknown_03005004
_080213C8:
	adds r0, r6, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, r8
	mov r1, sp
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
_080213DE:
	lsls r0, r0, #8
	str r0, [r5, #4]
	b _0802140C
_080213E4:
	ldr r4, [sp, #8]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r3, r5, #0
	bl sub_80096B0
	mov r1, sb
	lsls r2, r1, #2
	adds r1, r7, #0
	adds r1, #0x3c
	adds r1, r1, r2
	str r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	beq _080214C6
_0802140C:
	adds r0, r5, #0
	bl sub_800C558
	cmp r0, #0
	beq _080214C6
	movs r0, #0xab
	bl m4aSongNumStart
	b _080214C6
_0802141E:
	ldr r2, [sp, #0xc]
	cmp r2, #0x7d
	bhi _08021476
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021440
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021440
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021440:
	mov r4, sb
	lsls r1, r4, #2
_08021444:
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08021460
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_08021460:
	movs r0, #0xe3
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
_0802146C:
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	b _080214C6
_08021476:
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021492
	ldr r0, [r5, #0x28]
	cmp r0, r6
	bne _08021492
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_08021492:
	mov r0, sb
	lsls r1, r0, #2
	adds r0, r7, #0
	adds r0, #0x3c
	adds r2, r0, r1
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080214B2
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r2]
_080214B2:
	movs r0, #0
	movs r1, #0xe3
	lsls r1, r1, #1
	strh r1, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
_080214C6:
	movs r0, #1
_080214C8:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start TaskDestructor_Spikes
TaskDestructor_Spikes: @ 0x080214D8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
