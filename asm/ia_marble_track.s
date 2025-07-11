.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_MarbleTrack_Dir
CreateEntity_MarbleTrack_Dir: @ 0x080821AC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0808224C @ =Task_MarbleTrack_Dir
	ldrb r2, [r7, #6]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r2, r1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	strh r4, [r3, #4]
	strh r5, [r3, #6]
	str r7, [r3]
	ldrb r0, [r7]
	strb r0, [r3, #8]
	strb r6, [r3, #9]
	ldrb r1, [r7, #5]
	ldr r4, _08082250 @ =0x0300003D
	adds r0, r2, r4
	strb r1, [r0]
	movs r4, #0
	ldr r0, _08082254 @ =0x0300003E
	adds r6, r2, r0
	movs r1, #0
	adds r0, #2
	adds r5, r2, r0
	adds r0, #8
	adds r2, r2, r0
_08082208:
	adds r0, r6, r4
	strb r1, [r0]
	stm r5!, {r1}
	str r1, [r2]
	str r1, [r2, #0x10]
	str r1, [r2, #0x18]
	adds r2, #4
	adds r4, #1
	cmp r4, #1
	ble _08082208
	movs r0, #3
	ldrsb r0, [r7, r0]
	lsls r0, r0, #3
	str r0, [r3, #0x50]
	movs r0, #4
	ldrsb r0, [r7, r0]
	lsls r0, r0, #3
	str r0, [r3, #0x54]
	adds r1, r3, #0
	adds r1, #0x68
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r7, #6]
	adds r0, r3, #0
	adds r0, #0x3c
	strb r1, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808224C: .4byte Task_MarbleTrack_Dir
_08082250: .4byte 0x0300003D
_08082254: .4byte 0x0300003E

	thumb_func_start Task_MarbleTrack_Dir
Task_MarbleTrack_Dir: @ 0x08082258
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r0, _080822D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sl, r1
	ldr r0, [r1]
	str r0, [sp, #0x10]
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	mov r2, sl
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, [sp, #0x10]
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	mov r4, sl
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _080822D8 @ =gCamera
	ldrh r0, [r3]
	lsrs r5, r1, #0x10
	str r5, [sp]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	ldrh r0, [r3, #2]
	lsrs r1, r2, #0x10
	str r1, [sp, #4]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	movs r7, #0
	ldr r3, _080822DC @ =gPartner
	ldr r2, _080822E0 @ =gPlayer
	mov sb, r2
	movs r4, #0
	str r4, [sp, #0x1c]
_080822C2:
	cmp r7, #0
	beq _080822E4
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r5, sl
	adds r5, #0x68
	str r5, [sp, #0x14]
	b _080822F2
	.align 2, 0
_080822D4: .4byte gCurTask
_080822D8: .4byte gCamera
_080822DC: .4byte gPartner
_080822E0: .4byte gPlayer
_080822E4:
	mov r0, sb
	ldr r1, [r0, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r2, sl
	adds r2, #0x68
	str r2, [sp, #0x14]
_080822F2:
	cmp r1, #0
	beq _080822F8
	b _0808280A
_080822F8:
	mov r1, sl
	adds r1, #0x68
	ldrb r2, [r1]
	adds r0, r2, #0
	asrs r0, r7
	movs r4, #1
	ands r0, r4
	str r1, [sp, #0x14]
	cmp r0, #0
	bne _0808230E
	b _080825E0
_0808230E:
	ldr r0, _08082370 @ =gPlayer + 0x6D
	cmp r7, #0
	beq _08082316
	ldr r0, _08082374 @ =gPartner + 0x6D
_08082316:
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r0, sl
	adds r0, #0x3c
	str r0, [sp, #0x18]
	ldrb r5, [r0]
	cmp r1, r5
	beq _08082328
	b _080825D4
_08082328:
	movs r0, #0x3e
	add r0, sl
	mov r8, r0
	adds r4, r0, r7
	ldrb r1, [r4]
	mov r2, sl
	ldr r0, [r2, #0x50]
	muls r0, r1, r0
	mov r5, sl
	adds r5, #0x3d
	ldrb r1, [r5]
	str r3, [sp, #0x20]
	bl Div
	adds r6, r0, #0
	ldrb r1, [r4]
	mov r4, sl
	ldr r0, [r4, #0x54]
	muls r0, r1, r0
	ldrb r1, [r5]
	bl Div
	adds r1, r0, #0
	mov r0, sl
	adds r0, #0x40
	ldr r2, [sp, #0x1c]
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r6
	lsls r0, r0, #8
	mov r4, r8
	ldr r3, [sp, #0x20]
	cmp r7, #0
	beq _08082378
	str r0, [r3]
	b _0808237C
	.align 2, 0
_08082370: .4byte gPlayer + 0x6D
_08082374: .4byte gPartner + 0x6D
_08082378:
	mov r2, sb
	str r0, [r2]
_0808237C:
	mov r0, sl
	adds r0, #0x48
	ldr r2, [sp, #0x1c]
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	lsls r0, r0, #8
	cmp r7, #0
	beq _08082392
	str r0, [r3, #4]
	b _08082396
_08082392:
	mov r1, sb
	str r0, [r1, #4]
_08082396:
	mov r1, sl
	adds r1, #0x58
	ldr r2, [sp, #0x1c]
	adds r0, r1, r2
	ldr r2, [r0]
	mov r8, r1
	cmp r7, #0
	beq _080823AA
	ldr r0, [r3]
	b _080823AE
_080823AA:
	mov r1, sb
	ldr r0, [r1]
_080823AE:
	subs r0, r0, r2
	cmp r7, #0
	beq _080823B8
	strh r0, [r3, #8]
	b _080823BC
_080823B8:
	mov r2, sb
	strh r0, [r2, #8]
_080823BC:
	mov r1, sl
	adds r1, #0x60
	ldr r2, [sp, #0x1c]
	adds r0, r1, r2
	ldr r2, [r0]
	adds r6, r1, #0
	cmp r7, #0
	beq _080823D0
	ldr r0, [r3, #4]
	b _080823D4
_080823D0:
	mov r1, sb
	ldr r0, [r1, #4]
_080823D4:
	subs r0, r0, r2
	cmp r7, #0
	beq _080823DE
	strh r0, [r3, #0xa]
	b _080823E2
_080823DE:
	mov r2, sb
	strh r0, [r2, #0xa]
_080823E2:
	adds r1, r4, r7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08082430 @ =gPlayer + 0x6D
	ldrb r5, [r5]
	cmp r0, r5
	bhs _0808240C
	adds r0, r2, #0
	cmp r7, #0
	beq _080823FE
	ldr r0, _08082434 @ =gPartner + 0x6D
_080823FE:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r4, [sp, #0x18]
	ldrb r4, [r4]
	cmp r0, r4
	ble _080824EA
_0808240C:
	adds r0, r2, #0
	cmp r7, #0
	beq _08082414
	ldr r0, _08082434 @ =gPartner + 0x6D
_08082414:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r5, [sp, #0x18]
	ldrb r5, [r5]
	cmp r0, r5
	bne _080824DC
	cmp r7, #0
	beq _0808243C
	ldr r0, [r3, #0x10]
	ldr r1, _08082438 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r3, #0x10]
	b _08082448
	.align 2, 0
_08082430: .4byte gPlayer + 0x6D
_08082434: .4byte gPartner + 0x6D
_08082438: .4byte 0xFFDFFFFF
_0808243C:
	mov r1, sb
	ldr r0, [r1, #0x10]
	ldr r1, _0808245C @ =0xFFDFFFFF
	ands r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_08082448:
	ldr r0, _08082460 @ =gPlayerControls
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r7, #0
	beq _08082464
	ldrh r0, [r3, #0x38]
	orrs r1, r0
	strh r1, [r3, #0x38]
	b _0808246C
	.align 2, 0
_0808245C: .4byte 0xFFDFFFFF
_08082460: .4byte gPlayerControls
_08082464:
	mov r4, sb
	ldrh r0, [r4, #0x38]
	orrs r1, r0
	strh r1, [r4, #0x38]
_0808246C:
	cmp r7, #0
	beq _08082480
	ldr r0, [r3, #0x10]
	ldr r1, _0808247C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r3, #0x10]
	b _0808248A
	.align 2, 0
_0808247C: .4byte 0xFFBFFFFF
_08082480:
	mov r5, sb
	ldr r0, [r5, #0x10]
	ldr r1, _0808249C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_0808248A:
	cmp r7, #0
	beq _080824A4
	ldr r0, _080824A0 @ =gPartner + 0x26
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	ldr r1, _080824A0 @ =gPartner + 0x26
	strb r0, [r1]
	b _080824AE
	.align 2, 0
_0808249C: .4byte 0xFFBFFFFF
_080824A0: .4byte gPartner + 0x26
_080824A4:
	ldr r2, _080824B8 @ =gPlayer + 0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_080824AE:
	cmp r7, #0
	beq _080824BC
	movs r4, #0
	strh r4, [r3, #0xa]
	b _080824C0
	.align 2, 0
_080824B8: .4byte gPlayer + 0x26
_080824BC:
	mov r5, sb
	strh r7, [r5, #0xa]
_080824C0:
	cmp r7, #0
	beq _080824CA
	movs r0, #0
	strh r0, [r3, #8]
	b _080824CE
_080824CA:
	mov r1, sb
	strh r7, [r1, #8]
_080824CE:
	cmp r7, #0
	beq _080824D8
	movs r2, #0
	strh r2, [r3, #0xc]
	b _080824DC
_080824D8:
	mov r4, sb
	strh r7, [r4, #0xc]
_080824DC:
	movs r1, #1
	lsls r1, r7
	ldr r5, [sp, #0x14]
	ldrb r0, [r5]
	bics r0, r1
	strb r0, [r5]
	b _080825A4
_080824EA:
	cmp r7, #0
	beq _080824FA
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r3, #0x10]
	b _08082508
_080824FA:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	mov r4, sb
	str r0, [r4, #0x10]
_08082508:
	subs r2, #0x6d
	ldr r0, _08082520 @ =gPlayerControls
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r7, #0
	beq _08082524
	ldrh r0, [r3, #0x38]
	orrs r1, r0
	strh r1, [r3, #0x38]
	b _0808252C
	.align 2, 0
_08082520: .4byte gPlayerControls
_08082524:
	mov r5, sb
	ldrh r0, [r5, #0x38]
	orrs r1, r0
	strh r1, [r5, #0x38]
_0808252C:
	cmp r7, #0
	beq _0808253C
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r3, #0x10]
	b _0808254A
_0808253C:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	mov r4, sb
	str r0, [r4, #0x10]
_0808254A:
	cmp r7, #0
	beq _08082554
	movs r5, #0
	strh r5, [r3, #0xc]
	b _08082556
_08082554:
	strh r7, [r2, #0xc]
_08082556:
	cmp r7, #0
	beq _08082560
	movs r0, #0
	strh r0, [r3, #0x38]
	b _08082562
_08082560:
	strh r7, [r2, #0x38]
_08082562:
	cmp r7, #0
	beq _0808256C
	movs r1, #0
	strh r1, [r3, #0x3a]
	b _0808256E
_0808256C:
	strh r7, [r2, #0x3a]
_0808256E:
	ldr r0, _080825B0 @ =gPlayer
	cmp r7, #0
	beq _08082576
	ldr r0, _080825B4 @ =gPartner
_08082576:
	movs r1, #0xe
	str r3, [sp, #0x20]
	bl sa2__sub_8023B5C
	ldr r1, _080825B0 @ =gPlayer
	ldr r3, [sp, #0x20]
	cmp r7, #0
	beq _08082588
	ldr r1, _080825B4 @ =gPartner
_08082588:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _080825B0 @ =gPlayer
	cmp r7, #0
	beq _08082594
	ldr r1, _080825B4 @ =gPartner
_08082594:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #1
	lsls r0, r7
	ldr r2, [sp, #0x14]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
_080825A4:
	ldr r1, [sp, #0x1c]
	add r1, r8
	cmp r7, #0
	beq _080825B8
	ldr r0, [r3]
	b _080825BC
	.align 2, 0
_080825B0: .4byte gPlayer
_080825B4: .4byte gPartner
_080825B8:
	mov r4, sb
	ldr r0, [r4]
_080825BC:
	str r0, [r1]
	ldr r5, [sp, #0x1c]
	adds r1, r6, r5
	cmp r7, #0
	beq _080825CC
	ldr r0, [r3, #4]
	str r0, [r1]
	b _0808280A
_080825CC:
	mov r2, sb
	ldr r0, [r2, #4]
	str r0, [r1]
	b _0808280A
_080825D4:
	adds r0, r4, #0
	lsls r0, r7
	bics r2, r0
	ldr r4, [sp, #0x14]
	strb r2, [r4]
	b _0808280A
_080825E0:
	cmp r7, #0
	beq _080825F8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0808260C
	mov r5, sl
	adds r5, #0x3c
	str r5, [sp, #0x18]
	b _08082624
_080825F8:
	mov r0, sb
	ldr r1, [r0, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	mov r2, sl
	adds r2, #0x3c
	str r2, [sp, #0x18]
	cmp r1, #0
	beq _08082624
_0808260C:
	ldr r0, _08082648 @ =gPlayer + 0x6D
	cmp r7, #0
	beq _08082614
	ldr r0, _0808264C @ =gPartner + 0x6D
_08082614:
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r0, sl
	adds r0, #0x3c
	str r0, [sp, #0x18]
	ldrb r4, [r0]
	cmp r1, r4
	blt _0808262E
_08082624:
	ldr r5, [sp, #0x18]
	ldrb r0, [r5]
	cmp r0, #0
	beq _0808262E
	b _0808280A
_0808262E:
	ldr r0, [sp]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #8
	cmp r7, #0
	beq _08082650
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808265C
	b _0808280A
	.align 2, 0
_08082648: .4byte gPlayer + 0x6D
_0808264C: .4byte gPartner + 0x6D
_08082650:
	mov r4, sb
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808265C
	b _0808280A
_0808265C:
	asrs r0, r1, #0x10
	adds r1, r0, #0
	adds r1, #8
	cmp r7, #0
	beq _08082670
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808267C
	b _0808280A
_08082670:
	mov r5, sb
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808267C
	b _0808280A
_0808267C:
	ldr r0, [sp, #4]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #0xa
	cmp r7, #0
	beq _08082694
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _080826A0
	b _0808280A
_08082694:
	mov r4, sb
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _080826A0
	b _0808280A
_080826A0:
	asrs r0, r1, #0x10
	adds r1, r0, #0
	adds r1, #0xa
	cmp r7, #0
	beq _080826B4
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080826C0
	b _0808280A
_080826B4:
	mov r5, sb
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080826C0
	b _0808280A
_080826C0:
	mov r0, sl
	adds r0, #0x3e
	adds r0, r0, r7
	movs r1, #0
	strb r1, [r0]
	cmp r7, #0
	beq _080826D8
	ldr r0, [r3, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #0x10]
	b _080826E2
_080826D8:
	mov r2, sb
	ldr r0, [r2, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #0x10]
_080826E2:
	ldr r2, _080826F4 @ =gPlayer
	cmp r7, #0
	beq _080826F8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r3, #0x10]
	b _08082704
	.align 2, 0
_080826F4: .4byte gPlayer
_080826F8:
	mov r4, sb
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0x10]
_08082704:
	cmp r7, #0
	beq _08082714
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r3, #0x10]
	b _08082720
_08082714:
	mov r5, sb
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
_08082720:
	mov r0, sl
	adds r0, #0x40
	ldr r4, [sp, #0x1c]
	adds r1, r0, r4
	cmp r7, #0
	beq _08082730
	ldr r0, [r3]
	b _08082732
_08082730:
	ldr r0, [r2]
_08082732:
	asrs r0, r0, #8
	str r0, [r1]
	mov r0, sl
	adds r0, #0x48
	ldr r5, [sp, #0x1c]
	adds r1, r0, r5
	cmp r7, #0
	beq _08082746
	ldr r0, [r3, #4]
	b _08082748
_08082746:
	ldr r0, [r2, #4]
_08082748:
	asrs r0, r0, #8
	str r0, [r1]
	cmp r7, #0
	beq _08082756
	movs r0, #0
	strh r0, [r3, #0xa]
	b _08082758
_08082756:
	strh r7, [r2, #0xa]
_08082758:
	cmp r7, #0
	beq _08082762
	movs r1, #0
	strh r1, [r3, #8]
	b _08082764
_08082762:
	strh r7, [r2, #8]
_08082764:
	cmp r7, #0
	beq _0808276E
	movs r4, #0
	strh r4, [r3, #0xc]
	b _08082770
_0808276E:
	strh r7, [r2, #0xc]
_08082770:
	cmp r7, #0
	beq _0808277A
	movs r5, #0
	strh r5, [r3, #0x38]
	b _0808277C
_0808277A:
	strh r7, [r2, #0x38]
_0808277C:
	cmp r7, #0
	beq _08082786
	movs r0, #0
	strh r0, [r3, #0x3a]
	b _08082788
_08082786:
	strh r7, [r2, #0x3a]
_08082788:
	ldr r0, _080827EC @ =gPlayer
	cmp r7, #0
	beq _08082790
	ldr r0, _080827F0 @ =gPartner
_08082790:
	movs r1, #0xe
	str r3, [sp, #0x20]
	bl sa2__sub_8023B5C
	ldr r1, _080827EC @ =gPlayer
	ldr r3, [sp, #0x20]
	cmp r7, #0
	beq _080827A2
	ldr r1, _080827F0 @ =gPartner
_080827A2:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _080827EC @ =gPlayer
	cmp r7, #0
	beq _080827AE
	ldr r1, _080827F0 @ =gPartner
_080827AE:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xaa
	str r3, [sp, #0x20]
	bl m4aSongNumStart
	movs r1, #1
	lsls r1, r7
	ldr r2, [sp, #0x14]
	ldrb r0, [r2]
	orrs r1, r0
	movs r2, #0
	ldr r4, [sp, #0x14]
	strb r1, [r4]
	ldr r1, _080827F4 @ =gPlayer + 0x6D
	ldr r3, [sp, #0x20]
	cmp r7, #0
	beq _080827D4
	ldr r1, _080827F8 @ =gPartner + 0x6D
_080827D4:
	ldr r5, [sp, #0x18]
	ldrb r0, [r5]
	strb r0, [r1]
	cmp r7, #0
	beq _08082800
	ldr r1, _080827FC @ =gPartner + 0x26
	ldrb r0, [r1]
	movs r1, #0x80
	orrs r0, r1
	ldr r2, _080827FC @ =gPartner + 0x26
	strb r0, [r2]
	b _0808280A
	.align 2, 0
_080827EC: .4byte gPlayer
_080827F0: .4byte gPartner
_080827F4: .4byte gPlayer + 0x6D
_080827F8: .4byte gPartner + 0x6D
_080827FC: .4byte gPartner + 0x26
_08082800:
	ldr r4, _08082874 @ =gPlayer + 0x26
	ldrb r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4]
_0808280A:
	ldr r5, [sp, #0x1c]
	adds r5, #4
	str r5, [sp, #0x1c]
	adds r7, #1
	ldr r0, _08082878 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	bge _08082820
	b _080822C2
_08082820:
	ldr r0, [sp, #0x14]
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08082864
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r0, r2
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08082854
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08082854
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r2, r0
	ble _08082864
_08082854:
	mov r4, sl
	ldrb r0, [r4, #8]
	ldr r5, [sp, #0x10]
	strb r0, [r5]
	ldr r0, _0808287C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08082864:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08082874: .4byte gPlayer + 0x26
_08082878: .4byte gNumSingleplayerCharacters
_0808287C: .4byte gCurTask

	thumb_func_start CreateEntity_MarbleTrack_Unk
CreateEntity_MarbleTrack_Unk: @ 0x08082880
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r6, r0, #0
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
	ldr r0, _08082934 @ =Task_MarbleTrack_Unk
	movs r2, #4
	ldrsb r2, [r6, r2]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0
	mov sb, r1
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	movs r0, #0
	mov sl, r0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	str r6, [r2]
	ldrb r0, [r6]
	strb r0, [r2, #8]
	mov r1, r8
	strb r1, [r2, #9]
	ldrb r1, [r6, #5]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r4, _08082938 @ =0x03000048
	adds r1, r3, r4
	strh r0, [r1]
	ldr r1, _0808293C @ =0x0300004C
	adds r0, r3, r1
	mov r4, sl
	strb r4, [r0]
	subs r1, #8
	adds r0, r3, r1
	mov r4, sb
	strh r4, [r0]
	mov r0, sb
	str r0, [r2, #0x3c]
	adds r1, #2
	adds r0, r3, r1
	strh r4, [r0]
	mov r0, sb
	str r0, [r2, #0x40]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	ldr r2, _08082940 @ =0x0300004A
	adds r1, r3, r2
	strh r0, [r1]
	ldrb r0, [r6, #4]
	ldr r4, _08082944 @ =0x0300004D
	adds r3, r3, r4
	strb r0, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08082934: .4byte Task_MarbleTrack_Unk
_08082938: .4byte 0x03000048
_0808293C: .4byte 0x0300004C
_08082940: .4byte 0x0300004A
_08082944: .4byte 0x0300004D

	thumb_func_start Task_MarbleTrack_Unk
Task_MarbleTrack_Unk: @ 0x08082948
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _080829BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r1]
	str r0, [sp, #0x10]
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	mov r2, r8
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, [sp, #0x10]
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	mov r4, r8
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _080829C0 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r1, #0x10
	str r4, [sp]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	ldrh r0, [r3, #2]
	lsrs r1, r2, #0x10
	str r1, [sp, #4]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	movs r4, #0
	ldr r5, _080829C4 @ =gPartner
	ldr r7, _080829C8 @ =gPlayer
	movs r2, #0
	str r2, [sp, #0x14]
	mov sl, r2
_080829B2:
	cmp r4, #0
	beq _080829CC
	ldr r0, [r5, #0x10]
	b _080829CE
	.align 2, 0
_080829BC: .4byte gCurTask
_080829C0: .4byte gCamera
_080829C4: .4byte gPartner
_080829C8: .4byte gPlayer
_080829CC:
	ldr r0, [r7, #0x10]
_080829CE:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080829D8
	b _08082DC8
_080829D8:
	mov r2, r8
	adds r2, #0x4c
	ldrb r1, [r2]
	asrs r1, r4
	movs r0, #1
	ands r1, r0
	mov sb, r2
	cmp r1, #0
	bne _080829EC
	b _08082C08
_080829EC:
	cmp r4, #0
	beq _080829F8
	ldrh r0, [r5, #0xa]
	adds r0, #0x2a
	strh r0, [r5, #0xa]
	b _080829FE
_080829F8:
	ldrh r0, [r7, #0xa]
	adds r0, #0x2a
	strh r0, [r7, #0xa]
_080829FE:
	cmp r4, #0
	beq _08082A08
	movs r3, #0xa
	ldrsh r1, [r5, r3]
	b _08082A0C
_08082A08:
	movs r0, #0xa
	ldrsh r1, [r7, r0]
_08082A0C:
	cmp r4, #0
	beq _08082A18
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	b _08082A1E
_08082A18:
	ldr r0, [r7, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
_08082A1E:
	mov r0, r8
	adds r0, #0x3c
	ldr r2, [sp, #0x14]
	adds r1, r0, r2
	ldr r2, [r1]
	mov ip, r0
	cmp r4, #0
	beq _08082A34
	movs r3, #0xa
	ldrsh r0, [r5, r3]
	b _08082A38
_08082A34:
	movs r3, #0xa
	ldrsh r0, [r7, r3]
_08082A38:
	adds r0, r2, r0
	str r0, [r1]
	ldr r0, _08082A64 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #1
	beq _08082A4E
	cmp r1, #0xf
	bne _08082ACE
_08082A4E:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r2, r0, #8
	adds r1, r0, #0
	cmp r4, #0
	beq _08082A68
	ldr r0, [r5]
	cmp r0, r2
	blt _08082A6E
	b _08082A9C
	.align 2, 0
_08082A64: .4byte gCurrentLevel
_08082A68:
	ldr r0, [r7]
	cmp r0, r2
	bge _08082A9C
_08082A6E:
	cmp r4, #0
	beq _08082A7A
	ldr r0, [r5]
	adds r0, #0x80
	str r0, [r5]
	b _08082A80
_08082A7A:
	ldr r0, [r7]
	adds r0, #0x80
	str r0, [r7]
_08082A80:
	asrs r2, r1, #8
	cmp r4, #0
	beq _08082A8E
	ldr r0, [r5]
	cmp r0, r2
	bgt _08082A94
	b _08082ACE
_08082A8E:
	ldr r0, [r7]
	cmp r0, r2
	ble _08082ACE
_08082A94:
	asrs r0, r1, #8
	cmp r4, #0
	bne _08082AC8
	b _08082ACC
_08082A9C:
	cmp r4, #0
	beq _08082AA8
	ldr r0, [r5]
	subs r0, #0x80
	str r0, [r5]
	b _08082AAE
_08082AA8:
	ldr r0, [r7]
	subs r0, #0x80
	str r0, [r7]
_08082AAE:
	asrs r2, r1, #8
	cmp r4, #0
	beq _08082ABC
	ldr r0, [r5]
	cmp r0, r2
	blt _08082AC2
	b _08082ACE
_08082ABC:
	ldr r0, [r7]
	cmp r0, r2
	bge _08082ACE
_08082AC2:
	asrs r0, r1, #8
	cmp r4, #0
	beq _08082ACC
_08082AC8:
	str r0, [r5]
	b _08082ACE
_08082ACC:
	str r0, [r7]
_08082ACE:
	ldr r3, _08082B48 @ =gPlayer + 0x6D
	adds r0, r3, #0
	cmp r4, #0
	beq _08082AD8
	ldr r0, _08082B4C @ =gPartner + 0x6D
_08082AD8:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, r8
	adds r1, #0x4d
	adds r6, r1, #0
	ldrb r2, [r6]
	cmp r0, r2
	bgt _08082B18
	lsls r0, r4, #1
	subs r1, #9
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bhs _08082B18
	ldr r0, [sp, #0x14]
	add r0, ip
	ldr r1, [r0]
	asrs r1, r1, #8
	mov r0, r8
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _08082B94
_08082B18:
	adds r0, r3, #0
	cmp r4, #0
	beq _08082B20
	ldr r0, _08082B4C @ =gPartner + 0x6D
_08082B20:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r6, [r6]
	cmp r0, r6
	bne _08082B80
	adds r1, r3, #0
	cmp r4, #0
	beq _08082B34
	ldr r1, _08082B4C @ =gPartner + 0x6D
_08082B34:
	movs r0, #0x7f
	strb r0, [r1]
	cmp r4, #0
	beq _08082B54
	ldr r0, [r5, #0x10]
	ldr r1, _08082B50 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08082B5C
	.align 2, 0
_08082B48: .4byte gPlayer + 0x6D
_08082B4C: .4byte gPartner + 0x6D
_08082B50: .4byte 0xFFBFFFFF
_08082B54:
	ldr r0, [r7, #0x10]
	ldr r1, _08082B6C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
_08082B5C:
	cmp r4, #0
	beq _08082B74
	ldr r3, _08082B70 @ =gPartner + 0x26
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3]
	b _08082B80
	.align 2, 0
_08082B6C: .4byte 0xFFBFFFFF
_08082B70: .4byte gPartner + 0x26
_08082B74:
	ldr r0, _08082B90 @ =gPlayer + 0x26
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	ldr r1, _08082B90 @ =gPlayer + 0x26
	strb r0, [r1]
_08082B80:
	movs r1, #1
	lsls r1, r4
	mov r2, sb
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	b _08082E00
	.align 2, 0
_08082B90: .4byte gPlayer + 0x26
_08082B94:
	cmp r4, #0
	beq _08082BA4
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08082BAE
_08082BA4:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r7, #0x10]
_08082BAE:
	adds r2, r3, #0
	subs r2, #0x6d
	cmp r4, #0
	beq _08082BBC
	mov r3, sl
	strh r3, [r5, #8]
	b _08082BBE
_08082BBC:
	strh r4, [r2, #8]
_08082BBE:
	cmp r4, #0
	beq _08082BC8
	mov r0, sl
	strh r0, [r5, #0xc]
	b _08082BCA
_08082BC8:
	strh r4, [r2, #0xc]
_08082BCA:
	ldr r0, _08082C00 @ =gPlayer
	cmp r4, #0
	beq _08082BD2
	ldr r0, _08082C04 @ =gPartner
_08082BD2:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _08082C00 @ =gPlayer
	cmp r4, #0
	beq _08082BE0
	ldr r1, _08082C04 @ =gPartner
_08082BE0:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08082C00 @ =gPlayer
	cmp r4, #0
	beq _08082BEC
	ldr r1, _08082C04 @ =gPartner
_08082BEC:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #1
	lsls r0, r4
	mov r2, sb
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	b _08082E00
	.align 2, 0
_08082C00: .4byte gPlayer
_08082C04: .4byte gPartner
_08082C08:
	cmp r4, #0
	beq _08082C1E
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08082C2E
	mov r6, r8
	adds r6, #0x4d
	b _08082C48
_08082C1E:
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	mov r6, r8
	adds r6, #0x4d
	cmp r1, #0
	beq _08082C48
_08082C2E:
	ldr r0, _08082C68 @ =gPlayer + 0x6D
	cmp r4, #0
	beq _08082C36
	ldr r0, _08082C6C @ =gPartner + 0x6D
_08082C36:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, r8
	adds r1, #0x4d
	adds r6, r1, #0
	ldrb r3, [r6]
	cmp r0, r3
	blt _08082C50
_08082C48:
	ldrb r0, [r6]
	cmp r0, #0
	beq _08082C50
	b _08082E00
_08082C50:
	ldr r0, [sp]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #0xc
	cmp r4, #0
	beq _08082C70
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08082C7A
	b _08082E00
	.align 2, 0
_08082C68: .4byte gPlayer + 0x6D
_08082C6C: .4byte gPartner + 0x6D
_08082C70:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08082C7A
	b _08082E00
_08082C7A:
	asrs r0, r1, #0x10
	adds r1, r0, #0
	adds r1, #0xc
	cmp r4, #0
	beq _08082C8E
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08082C98
	b _08082E00
_08082C8E:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08082C98
	b _08082E00
_08082C98:
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #0xc
	cmp r4, #0
	beq _08082CB0
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08082CBA
	b _08082E00
_08082CB0:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08082CBA
	b _08082E00
_08082CBA:
	asrs r0, r1, #0x10
	adds r1, r0, #0
	adds r1, #0xc
	cmp r4, #0
	beq _08082CCE
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08082CD8
	b _08082E00
_08082CCE:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08082CD8
	b _08082E00
_08082CD8:
	lsls r0, r4, #1
	mov r1, r8
	adds r1, #0x44
	adds r1, r1, r0
	mov r3, sl
	strh r3, [r1]
	mov r0, r8
	adds r0, #0x3c
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	mov r2, sl
	str r2, [r0]
	cmp r4, #0
	beq _08082CFE
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08082D06
_08082CFE:
	ldr r0, [r7, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x10]
_08082D06:
	ldr r2, _08082D18 @ =gPlayer
	cmp r4, #0
	beq _08082D1C
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08082D26
	.align 2, 0
_08082D18: .4byte gPlayer
_08082D1C:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r7, #0x10]
_08082D26:
	cmp r4, #0
	beq _08082D30
	mov r3, sl
	strh r3, [r5, #0xa]
	b _08082D32
_08082D30:
	strh r4, [r2, #0xa]
_08082D32:
	cmp r4, #0
	beq _08082D3C
	mov r0, sl
	strh r0, [r5, #8]
	b _08082D3E
_08082D3C:
	strh r4, [r2, #8]
_08082D3E:
	cmp r4, #0
	beq _08082D48
	mov r1, sl
	strh r1, [r5, #0xc]
	b _08082D4A
_08082D48:
	strh r4, [r2, #0xc]
_08082D4A:
	ldr r0, _08082DA4 @ =gPlayer
	cmp r4, #0
	beq _08082D52
	ldr r0, _08082DA8 @ =gPartner
_08082D52:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _08082DA4 @ =gPlayer
	cmp r4, #0
	beq _08082D60
	ldr r1, _08082DA8 @ =gPartner
_08082D60:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08082DA4 @ =gPlayer
	cmp r4, #0
	beq _08082D6C
	ldr r1, _08082DA8 @ =gPartner
_08082D6C:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r1, #1
	lsls r1, r4
	mov r2, sb
	ldrb r0, [r2]
	orrs r1, r0
	movs r2, #0
	mov r3, sb
	strb r1, [r3]
	ldr r1, _08082DAC @ =gPlayer + 0x6D
	cmp r4, #0
	beq _08082D8E
	ldr r1, _08082DB0 @ =gPartner + 0x6D
_08082D8E:
	ldrb r0, [r6]
	strb r0, [r1]
	cmp r4, #0
	beq _08082DB8
	ldr r1, _08082DB4 @ =gPartner + 0x26
	ldrb r0, [r1]
	movs r1, #0x80
	orrs r0, r1
	ldr r2, _08082DB4 @ =gPartner + 0x26
	strb r0, [r2]
	b _08082E00
	.align 2, 0
_08082DA4: .4byte gPlayer
_08082DA8: .4byte gPartner
_08082DAC: .4byte gPlayer + 0x6D
_08082DB0: .4byte gPartner + 0x6D
_08082DB4: .4byte gPartner + 0x26
_08082DB8:
	ldr r3, _08082DC4 @ =gPlayer + 0x26
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
	b _08082E00
	.align 2, 0
_08082DC4: .4byte gPlayer + 0x26
_08082DC8:
	mov r1, r8
	adds r1, #0x4c
	ldrb r3, [r1]
	adds r0, r3, #0
	asrs r0, r4
	movs r2, #1
	ands r0, r2
	mov sb, r1
	cmp r0, #0
	beq _08082E00
	adds r0, r2, #0
	lsls r0, r4
	bics r3, r0
	strb r3, [r1]
	cmp r4, #0
	beq _08082DF8
	ldr r0, [r5, #0x10]
	ldr r1, _08082DF4 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08082E00
	.align 2, 0
_08082DF4: .4byte 0xFFBFFFFF
_08082DF8:
	ldr r0, [r7, #0x10]
	ldr r1, _08082E8C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
_08082E00:
	ldr r0, [sp, #0x14]
	adds r0, #4
	str r0, [sp, #0x14]
	adds r4, #1
	ldr r0, _08082E90 @ =gNumSingleplayerCharacters
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov ip, r0
	cmp r4, r1
	bge _08082E16
	b _080829B2
_08082E16:
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08082EC6
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x10
	adds r0, r0, r4
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08082E4A
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08082E4A
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r2, r0
	ble _08082EC6
_08082E4A:
	movs r2, #0
	ldr r3, _08082E94 @ =gCurTask
	mov sl, r3
	ldr r3, _08082E98 @ =gPlayer + 0x6D
	mov r6, r8
	adds r6, #0x4d
	ldr r7, _08082E9C @ =gPartner
	ldr r5, _08082E8C @ =0xFFBFFFFF
	adds r4, r3, #0
	subs r4, #0x6d
_08082E5E:
	adds r0, r3, #0
	cmp r2, #0
	beq _08082E66
	ldr r0, _08082EA0 @ =gPartner + 0x6D
_08082E66:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r6]
	cmp r0, r1
	bne _08082EAA
	mov r1, sb
	ldrb r0, [r1]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08082EAA
	cmp r2, #0
	beq _08082EA4
	ldr r0, [r7, #0x10]
	ands r0, r5
	str r0, [r7, #0x10]
	b _08082EAA
	.align 2, 0
_08082E8C: .4byte 0xFFBFFFFF
_08082E90: .4byte gNumSingleplayerCharacters
_08082E94: .4byte gCurTask
_08082E98: .4byte gPlayer + 0x6D
_08082E9C: .4byte gPartner
_08082EA0: .4byte gPartner + 0x6D
_08082EA4:
	ldr r0, [r4, #0x10]
	ands r0, r5
	str r0, [r4, #0x10]
_08082EAA:
	adds r2, #1
	mov r1, ip
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blt _08082E5E
	mov r2, r8
	ldrb r0, [r2, #8]
	ldr r3, [sp, #0x10]
	strb r0, [r3]
	mov r4, sl
	ldr r0, [r4]
	bl TaskDestroy
_08082EC6:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_MarbleTrack_Entrance
CreateEntity_MarbleTrack_Entrance: @ 0x08082ED8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	mov sb, r2
	mov sl, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r0, _08082FF4 @ =Task_MarbleTrack_Entrance
	mov r3, r8
	ldrb r2, [r3, #6]
	movs r3, #0xc8
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r2, r1
	ldr r1, _08082FF8 @ =TaskDestructor_MarbleTrack_Entrance
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldr r0, _08082FFC @ =0x0300000C
	adds r6, r4, r0
	movs r7, #0
	movs r3, #0
	strh r5, [r1, #4]
	mov r2, sb
	strh r2, [r1, #6]
	mov r0, r8
	str r0, [r1]
	ldrb r0, [r0]
	strb r0, [r1, #8]
	mov r2, sl
	strb r2, [r1, #9]
	mov r0, r8
	ldrb r0, [r0, #3]
	mov sl, r0
	ldr r2, _08083000 @ =0x0300003F
	adds r0, r4, r2
	mov r2, sl
	strb r2, [r0]
	ldr r2, _08083004 @ =0x0300003C
	adds r0, r4, r2
	strb r7, [r0]
	str r3, [r1, #0x40]
	adds r2, #1
	adds r0, r4, r2
	strb r7, [r0]
	str r3, [r1, #0x44]
	mov r0, r8
	ldrb r1, [r0, #5]
	adds r2, #0xb
	adds r0, r4, r2
	strh r1, [r0]
	ldr r1, _08083008 @ =0x0300003E
	adds r0, r4, r1
	strb r7, [r0]
	mov r2, r8
	movs r1, #4
	ldrsb r1, [r2, r1]
	ldr r2, _0808300C @ =0x0300004A
	adds r0, r4, r2
	strh r1, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, r8
	strb r0, [r2]
	lsls r5, r5, #8
	movs r0, #0xfe
	lsls r0, r0, #3
	adds r5, r5, r0
	strh r5, [r6, #0x16]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	mov r1, sb
	lsls r1, r1, #8
	mov sb, r1
	add r0, sb
	strh r0, [r6, #0x18]
	movs r0, #0x10
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	ldr r3, [sp, #4]
	strh r3, [r6, #8]
	movs r0, #0xf4
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	ldr r2, _08083010 @ =0x0300002C
	adds r0, r4, r2
	strb r7, [r0]
	strh r3, [r6, #0x14]
	strh r3, [r6, #0x1c]
	ldr r3, _08083014 @ =0x0300002D
	adds r1, r4, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08083018 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0808301C @ =0x03000031
	adds r4, r4, r1
	strb r7, [r4]
	subs r0, #0x11
	str r0, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08082FF4: .4byte Task_MarbleTrack_Entrance
_08082FF8: .4byte TaskDestructor_MarbleTrack_Entrance
_08082FFC: .4byte 0x0300000C
_08083000: .4byte 0x0300003F
_08083004: .4byte 0x0300003C
_08083008: .4byte 0x0300003E
_0808300C: .4byte 0x0300004A
_08083010: .4byte 0x0300002C
_08083014: .4byte 0x0300002D
_08083018: .4byte 0x0300002E
_0808301C: .4byte 0x03000031

	thumb_func_start Task_MarbleTrack_Entrance
Task_MarbleTrack_Entrance: @ 0x08083020
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r0, _080830AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _080830B0 @ =0x0300000C
	adds r0, r1, r0
	str r0, [sp, #0x10]
	mov r1, sl
	ldr r1, [r1]
	str r1, [sp, #0x14]
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
	ldr r3, _080830B4 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	str r4, [sp]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrh r0, [r3, #2]
	lsrs r4, r1, #0x10
	str r4, [sp, #4]
	asrs r1, r1, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	ldr r2, [sp, #0x10]
	strh r1, [r2, #0x18]
	movs r6, #0
	ldr r7, _080830B8 @ =gPartner
	ldr r3, _080830BC @ =gPlayer
	mov r8, r3
	movs r4, #0
	str r4, [sp, #0x20]
_0808309A:
	cmp r6, #0
	beq _080830C0
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r0, sl
	adds r0, #0x3e
	str r0, [sp, #0x18]
	b _080830CE
	.align 2, 0
_080830AC: .4byte gCurTask
_080830B0: .4byte 0x0300000C
_080830B4: .4byte gCamera
_080830B8: .4byte gPartner
_080830BC: .4byte gPlayer
_080830C0:
	mov r2, r8
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r3, sl
	adds r3, #0x3e
	str r3, [sp, #0x18]
_080830CE:
	cmp r1, #0
	beq _080830D4
	b _080835A6
_080830D4:
	mov r2, sl
	adds r2, #0x3e
	ldrb r1, [r2]
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	str r2, [sp, #0x18]
	cmp r1, #0
	bne _080830E8
	b _08083338
_080830E8:
	cmp r6, #0
	beq _080830F4
	ldrh r0, [r7, #0xa]
	adds r0, #0x2a
	strh r0, [r7, #0xa]
	b _080830FC
_080830F4:
	mov r4, r8
	ldrh r0, [r4, #0xa]
	adds r0, #0x2a
	strh r0, [r4, #0xa]
_080830FC:
	mov r0, sl
	adds r0, #0x4a
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r5, sl
	adds r5, #0x3c
	adds r0, r5, r6
	ldrb r0, [r0]
	muls r0, r1, r0
	mov r4, sl
	adds r4, #0x3f
	ldrb r1, [r4]
	bl Div
	ldr r3, [sp]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #8
	mov sb, r1
	str r4, [sp, #0x1c]
	cmp r6, #0
	beq _08083130
	movs r4, #0xa
	ldrsh r1, [r7, r4]
	b _08083136
_08083130:
	mov r0, r8
	movs r2, #0xa
	ldrsh r1, [r0, r2]
_08083136:
	cmp r6, #0
	beq _08083142
	ldr r0, [r7, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
	b _0808314A
_08083142:
	mov r3, r8
	ldr r0, [r3, #4]
	adds r0, r0, r1
	str r0, [r3, #4]
_0808314A:
	mov r0, sl
	adds r0, #0x40
	ldr r4, [sp, #0x20]
	adds r1, r0, r4
	ldr r2, [r1]
	str r0, [sp, #0x24]
	cmp r6, #0
	beq _08083160
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	b _08083166
_08083160:
	mov r4, r8
	movs r3, #0xa
	ldrsh r0, [r4, r3]
_08083166:
	adds r0, r2, r0
	str r0, [r1]
	cmp r6, #0
	beq _08083174
	mov r4, sb
	str r4, [r7]
	b _0808317A
_08083174:
	mov r0, sb
	mov r1, r8
	str r0, [r1]
_0808317A:
	cmp r6, #0
	beq _0808318C
	ldr r2, _08083188 @ =gPartner + 0x54
	ldrh r0, [r2]
	adds r0, #4
	strh r0, [r2]
	b _08083194
	.align 2, 0
_08083188: .4byte gPartner + 0x54
_0808318C:
	ldr r3, _080831A8 @ =gPlayer + 0x54
	ldrh r0, [r3]
	adds r0, #4
	strh r0, [r3]
_08083194:
	cmp r6, #0
	beq _080831B0
	ldr r4, _080831AC @ =gPartner + 0x54
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bgt _080831BE
	b _080831DC
	.align 2, 0
_080831A8: .4byte gPlayer + 0x54
_080831AC: .4byte gPartner + 0x54
_080831B0:
	ldr r2, _080831CC @ =gPlayer + 0x54
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _080831DC
_080831BE:
	cmp r6, #0
	beq _080831D4
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r4, _080831D0 @ =gPartner + 0x54
	strh r0, [r4]
	b _080831DC
	.align 2, 0
_080831CC: .4byte gPlayer + 0x54
_080831D0: .4byte gPartner + 0x54
_080831D4:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, _080831E8 @ =gPlayer + 0x54
	strh r0, [r1]
_080831DC:
	cmp r6, #0
	beq _080831F0
	ldr r2, _080831EC @ =gPartner + 0x54
	movs r3, #0
	ldrsh r0, [r2, r3]
	b _080831F6
	.align 2, 0
_080831E8: .4byte gPlayer + 0x54
_080831EC: .4byte gPartner + 0x54
_080831F0:
	ldr r4, _08083200 @ =gPlayer + 0x54
	movs r1, #0
	ldrsh r0, [r4, r1]
_080831F6:
	cmp r6, #0
	beq _08083208
	ldr r2, _08083204 @ =gPartner + 0x56
	strh r0, [r2]
	b _0808320C
	.align 2, 0
_08083200: .4byte gPlayer + 0x54
_08083204: .4byte gPartner + 0x56
_08083208:
	ldr r3, _08083284 @ =gPlayer + 0x56
	strh r0, [r3]
_0808320C:
	adds r0, r5, r6
	ldrb r0, [r0]
	cmp r0, #0x19
	bne _08083220
	ldr r0, _08083288 @ =gPlayer
	cmp r6, #0
	beq _0808321C
	ldr r0, _0808328C @ =gPartner
_0808321C:
	bl Player_Tails_InitGfxMarbleTrack
_08083220:
	adds r1, r5, r6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, [sp, #0x1c]
	ldrb r4, [r4]
	cmp r0, r4
	bhs _08083274
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	mov r0, sl
	adds r0, #0x48
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bgt _08083274
	ldr r1, _08083290 @ =gPlayer + 0x6D
	adds r0, r1, #0
	cmp r6, #0
	beq _08083254
	ldr r0, _08083294 @ =gPartner + 0x6D
_08083254:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x7f
	beq _08083298
	adds r0, r1, #0
	cmp r6, #0
	beq _08083266
	ldr r0, _08083294 @ =gPartner + 0x6D
_08083266:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r4, [sp, #0x14]
	ldrb r4, [r4, #6]
	cmp r0, r4
	ble _08083298
_08083274:
	movs r1, #1
	lsls r1, r6
	ldr r2, [sp, #0x18]
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	b _080835A6
	.align 2, 0
_08083284: .4byte gPlayer + 0x56
_08083288: .4byte gPlayer
_0808328C: .4byte gPartner
_08083290: .4byte gPlayer + 0x6D
_08083294: .4byte gPartner + 0x6D
_08083298:
	ldr r0, _080832B4 @ =gPlayer
	cmp r6, #0
	beq _080832A0
	ldr r0, _080832B8 @ =gPartner
_080832A0:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _080832BC
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r7, #0x10]
	b _080832C8
	.align 2, 0
_080832B4: .4byte gPlayer
_080832B8: .4byte gPartner
_080832BC:
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r3, #0x10]
_080832C8:
	ldr r2, _080832D4 @ =gPlayer
	cmp r6, #0
	beq _080832D8
	movs r4, #0
	strh r4, [r7, #8]
	b _080832DA
	.align 2, 0
_080832D4: .4byte gPlayer
_080832D8:
	strh r6, [r2, #8]
_080832DA:
	cmp r6, #0
	beq _080832E4
	movs r0, #0
	strh r0, [r7, #0xc]
	b _080832E6
_080832E4:
	strh r6, [r2, #0xc]
_080832E6:
	cmp r6, #0
	beq _080832F4
	movs r0, #0x20
	ldr r1, _080832F0 @ =gPartner + 0x40
	b _080832FA
	.align 2, 0
_080832F0: .4byte gPartner + 0x40
_080832F4:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x20
_080832FA:
	strb r0, [r1]
	ldr r0, _08083330 @ =gPlayer
	cmp r6, #0
	beq _08083304
	ldr r0, _08083334 @ =gPartner
_08083304:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _08083330 @ =gPlayer
	cmp r6, #0
	beq _08083312
	ldr r1, _08083334 @ =gPartner
_08083312:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08083330 @ =gPlayer
	cmp r6, #0
	beq _0808331E
	ldr r1, _08083334 @ =gPartner
_0808331E:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #1
	lsls r0, r6
	ldr r2, [sp, #0x18]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	b _080835A6
	.align 2, 0
_08083330: .4byte gPlayer
_08083334: .4byte gPartner
_08083338:
	cmp r6, #0
	beq _08083342
	ldr r3, [r7]
	mov sb, r3
	b _08083348
_08083342:
	mov r4, r8
	ldr r4, [r4]
	mov sb, r4
_08083348:
	bl sub_80549FC
	cmp r0, #0
	beq _080833D6
	cmp r6, #0
	beq _08083364
	ldr r1, _08083360 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x49
	bne _08083372
	b _080833D6
	.align 2, 0
_08083360: .4byte gPartner + 0x40
_08083364:
	mov r0, r8
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x49
	beq _080833D6
_08083372:
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r0, r1, #8
	movs r4, #0xc0
	lsls r4, r4, #4
	adds r3, r0, r4
	adds r2, r1, #0
	cmp r6, #0
	beq _0808338C
	ldr r0, [r7, #4]
	cmp r0, r3
	bgt _08083396
	b _080835A6
_0808338C:
	mov r1, r8
	ldr r0, [r1, #4]
	cmp r0, r3
	bgt _08083396
	b _080835A6
_08083396:
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	asrs r4, r2, #0x10
	ldr r3, _080833C8 @ =gPlayer
	cmp r6, #0
	beq _080833A6
	ldr r3, _080833CC @ =gPartner
_080833A6:
	ldr r0, [sp, #0x10]
	adds r2, r4, #0
	bl sub_80096B0
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	bne _080833BA
	b _080835A6
_080833BA:
	adds r0, r4, #0
	adds r0, #0x17
	lsls r0, r0, #8
	cmp r6, #0
	beq _080833D0
	str r0, [r7, #4]
	b _080835A6
	.align 2, 0
_080833C8: .4byte gPlayer
_080833CC: .4byte gPartner
_080833D0:
	mov r4, r8
	str r0, [r4, #4]
	b _080835A6
_080833D6:
	ldr r0, _08083440 @ =gPlayer + 0x6D
	cmp r6, #0
	beq _080833DE
	ldr r0, _08083444 @ =gPartner + 0x6D
_080833DE:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x7f
	beq _080833EA
	b _080835A6
_080833EA:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08083448 @ =gPlayer
	cmp r6, #0
	beq _080833FE
	ldr r3, _0808344C @ =gPartner
_080833FE:
	ldr r0, [sp, #0x10]
	bl sub_80096B0
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0808340E
	b _080835A6
_0808340E:
	mov r0, sl
	adds r0, #0x3c
	adds r0, r0, r6
	movs r3, #0
	strb r3, [r0]
	mov r0, sl
	adds r0, #0x40
	ldr r4, [sp, #0x20]
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
	ldr r0, _08083448 @ =gPlayer
	cmp r6, #0
	beq _0808342C
	ldr r0, _0808344C @ =gPartner
_0808342C:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r6, #0
	beq _08083450
	ldr r0, [r7, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0808345A
	.align 2, 0
_08083440: .4byte gPlayer + 0x6D
_08083444: .4byte gPartner + 0x6D
_08083448: .4byte gPlayer
_0808344C: .4byte gPartner
_08083450:
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #0x10]
_0808345A:
	ldr r2, _0808346C @ =gPlayer
	cmp r6, #0
	beq _08083470
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808347C
	.align 2, 0
_0808346C: .4byte gPlayer
_08083470:
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
_0808347C:
	cmp r6, #0
	beq _0808348C
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08083498
_0808348C:
	mov r4, r8
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
_08083498:
	ldr r1, _080834B0 @ =gPlayer + 0x6D
	cmp r6, #0
	beq _080834A0
	ldr r1, _080834B4 @ =gPartner + 0x6D
_080834A0:
	ldr r3, [sp, #0x14]
	ldrb r0, [r3, #6]
	strb r0, [r1]
	cmp r6, #0
	beq _080834B8
	movs r4, #0
	strh r4, [r7, #0xa]
	b _080834BA
	.align 2, 0
_080834B0: .4byte gPlayer + 0x6D
_080834B4: .4byte gPartner + 0x6D
_080834B8:
	strh r6, [r2, #0xa]
_080834BA:
	cmp r6, #0
	beq _080834C4
	movs r0, #0
	strh r0, [r7, #8]
	b _080834C6
_080834C4:
	strh r6, [r2, #8]
_080834C6:
	cmp r6, #0
	beq _080834D0
	movs r1, #0
	strh r1, [r7, #0xc]
	b _080834D2
_080834D0:
	strh r6, [r2, #0xc]
_080834D2:
	cmp r6, #0
	beq _080834DC
	movs r3, #0
	strh r3, [r7, #0x3a]
	b _080834DE
_080834DC:
	strh r6, [r2, #0x3a]
_080834DE:
	cmp r6, #0
	beq _080834E8
	movs r4, #0
	strh r4, [r7, #0x38]
	b _080834EA
_080834E8:
	strh r6, [r2, #0x38]
_080834EA:
	cmp r6, #0
	beq _080834F8
	movs r0, #0x20
	ldr r1, _080834F4 @ =gPartner + 0x40
	b _080834FE
	.align 2, 0
_080834F4: .4byte gPartner + 0x40
_080834F8:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x20
_080834FE:
	strb r0, [r1]
	cmp r6, #0
	beq _08083510
	movs r0, #0xb0
	ldr r2, _0808350C @ =gPartner + 0x54
	strh r0, [r2]
	b _08083516
	.align 2, 0
_0808350C: .4byte gPartner + 0x54
_08083510:
	movs r0, #0xb0
	ldr r3, _08083524 @ =gPlayer + 0x54
	strh r0, [r3]
_08083516:
	cmp r6, #0
	beq _0808352C
	movs r0, #0xb0
	ldr r4, _08083528 @ =gPartner + 0x56
	strh r0, [r4]
	b _08083532
	.align 2, 0
_08083524: .4byte gPlayer + 0x54
_08083528: .4byte gPartner + 0x56
_0808352C:
	movs r0, #0xb0
	ldr r1, _08083574 @ =gPlayer + 0x56
	strh r0, [r1]
_08083532:
	ldr r0, _08083578 @ =gPlayer
	cmp r6, #0
	beq _0808353A
	ldr r0, _0808357C @ =gPartner
_0808353A:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _08083578 @ =gPlayer
	cmp r6, #0
	beq _08083548
	ldr r1, _0808357C @ =gPartner
_08083548:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08083578 @ =gPlayer
	cmp r6, #0
	beq _08083554
	ldr r1, _0808357C @ =gPartner
_08083554:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r0, #1
	lsls r0, r6
	ldr r2, [sp, #0x18]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	cmp r6, #0
	beq _08083580
	mov r3, sb
	str r3, [r7]
	b _08083586
	.align 2, 0
_08083574: .4byte gPlayer + 0x56
_08083578: .4byte gPlayer
_0808357C: .4byte gPartner
_08083580:
	mov r4, sb
	mov r0, r8
	str r4, [r0]
_08083586:
	cmp r6, #0
	beq _0808359C
	ldr r1, _08083598 @ =gPartner + 0x26
	ldrb r0, [r1]
	movs r1, #0x80
	orrs r0, r1
	ldr r2, _08083598 @ =gPartner + 0x26
	strb r0, [r2]
	b _080835A6
	.align 2, 0
_08083598: .4byte gPartner + 0x26
_0808359C:
	ldr r3, _0808363C @ =gPlayer + 0x26
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
_080835A6:
	ldr r4, [sp, #0x20]
	adds r4, #4
	str r4, [sp, #0x20]
	adds r6, #1
	ldr r0, _08083640 @ =gNumSingleplayerCharacters
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r0
	cmp r6, r1
	bge _080835BC
	b _0808309A
_080835BC:
	ldr r0, [sp, #0x18]
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08083698
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r0, r2
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080835F0
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _080835F0
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08083698
_080835F0:
	movs r2, #0
	ldr r4, _08083644 @ =gCurTask
	mov ip, r4
	ldr r4, _08083648 @ =gPartner
	ldr r0, _0808364C @ =0xFFBFFFFF
	mov r8, r0
	ldr r3, _08083650 @ =gPlayer
	adds r6, r4, #0
	adds r6, #0x26
	movs r7, #0x7f
	adds r5, r3, #0
	adds r5, #0x26
_08083608:
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808367A
	ldr r0, [sp, #0x14]
	ldrb r1, [r0, #6]
	ldr r0, _08083654 @ =gPlayer + 0x6D
	cmp r2, #0
	beq _08083622
	ldr r0, _08083658 @ =gPartner + 0x6D
_08083622:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _0808367A
	cmp r2, #0
	beq _0808365C
	ldr r0, [r4, #0x10]
	mov r1, r8
	ands r0, r1
	str r0, [r4, #0x10]
	b _08083664
	.align 2, 0
_0808363C: .4byte gPlayer + 0x26
_08083640: .4byte gNumSingleplayerCharacters
_08083644: .4byte gCurTask
_08083648: .4byte gPartner
_0808364C: .4byte 0xFFBFFFFF
_08083650: .4byte gPlayer
_08083654: .4byte gPlayer + 0x6D
_08083658: .4byte gPartner + 0x6D
_0808365C:
	ldr r0, [r3, #0x10]
	mov r1, r8
	ands r0, r1
	str r0, [r3, #0x10]
_08083664:
	cmp r2, #0
	beq _08083672
	ldrb r1, [r6]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r6]
	b _0808367A
_08083672:
	ldrb r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r5]
_0808367A:
	adds r2, #1
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blt _08083608
	mov r2, sl
	ldrb r0, [r2, #8]
	ldr r3, [sp, #0x14]
	strb r0, [r3]
	mov r4, ip
	ldr r0, [r4]
	bl TaskDestroy
	b _080836A4
_08083698:
	ldr r0, [sp, #0x10]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #0x10]
	bl DisplaySprite
_080836A4:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_MarbleTrack_Entrance
TaskDestructor_MarbleTrack_Entrance: @ 0x080836B4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

.if 0
.endif
