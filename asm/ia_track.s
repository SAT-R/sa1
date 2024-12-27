.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Track
CreateEntity_Track: @ 0x08094234
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, _080942F8 @ =Task_Track
	ldrb r2, [r5, #6]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r2, r1
	movs r4, #0
	str r4, [sp]
	movs r1, #0x70
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	movs r0, #0
	mov sl, r0
	strh r6, [r1, #4]
	mov r2, r8
	strh r2, [r1, #6]
	str r5, [r1]
	ldrb r0, [r5]
	strb r0, [r1, #8]
	mov r6, sb
	strb r6, [r1, #9]
	ldrb r2, [r5, #5]
	ldr r6, _080942FC @ =0x0300003E
	adds r0, r3, r6
	strb r2, [r0]
	ldr r2, _08094300 @ =0x0300003F
	adds r0, r3, r2
	mov r6, sl
	strb r6, [r0]
	str r4, [r1, #0x44]
	str r4, [r1, #0x4c]
	str r4, [r1, #0x5c]
	str r4, [r1, #0x64]
	adds r2, #1
	adds r0, r3, r2
	strb r6, [r0]
	str r4, [r1, #0x48]
	str r4, [r1, #0x50]
	str r4, [r1, #0x60]
	str r4, [r1, #0x68]
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #3
	str r0, [r1, #0x54]
	movs r0, #4
	ldrsb r0, [r5, r0]
	lsls r0, r0, #3
	str r0, [r1, #0x58]
	ldr r6, _08094304 @ =0x0300006C
	adds r0, r3, r6
	mov r1, sl
	strb r1, [r0]
	ldrb r1, [r5, #6]
	subs r2, #4
	adds r0, r3, r2
	strb r1, [r0]
	ldrb r0, [r5, #6]
	subs r6, #0x2f
	adds r3, r3, r6
	strb r0, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080942F8: .4byte Task_Track
_080942FC: .4byte 0x0300003E
_08094300: .4byte 0x0300003F
_08094304: .4byte 0x0300006C

	thumb_func_start Task_Track
Task_Track: @ 0x08094308
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r0, _08094398 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov sl, r0
	ldr r0, [r0]
	str r0, [sp, #0x10]
	mov r2, sl
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, [sp, #0x10]
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	mov r5, sl
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _0809439C @ =gCamera
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
	movs r3, #0
	ldr r2, _080943A0 @ =0x0300006C
	adds r2, r4, r2
	str r2, [sp, #0x1c]
	ldr r4, _080943A4 @ =gPartner
	mov r8, r4
	ldr r5, _080943A8 @ =gPlayer
	mov sb, r5
	movs r0, #0
	str r0, [sp, #0x20]
_0809437A:
	mov r0, sl
	adds r0, #0x6c
	ldrb r0, [r0]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809438C
	b _080946E4
_0809438C:
	cmp r3, #0
	beq _080943AC
	mov r1, r8
	ldr r0, [r1, #0x10]
	b _080943B0
	.align 2, 0
_08094398: .4byte gCurTask
_0809439C: .4byte gCamera
_080943A0: .4byte 0x0300006C
_080943A4: .4byte gPartner
_080943A8: .4byte gPlayer
_080943AC:
	mov r2, sb
	ldr r0, [r2, #0x10]
_080943B0:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080943BA
	b _0809468A
_080943BA:
	ldr r0, _08094420 @ =gUnknown_03005A8D
	cmp r3, #0
	beq _080943C2
	ldr r0, _08094424 @ =gUnknown_03005B1D
_080943C2:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, sl
	adds r1, #0x3c
	adds r2, r1, r3
	str r1, [sp, #0x14]
	ldrb r2, [r2]
	cmp r0, r2
	beq _080943D8
	b _0809467C
_080943D8:
	mov r6, sl
	adds r6, #0x3f
	adds r4, r6, r3
	ldrb r1, [r4]
	mov r5, sl
	ldr r0, [r5, #0x54]
	muls r0, r1, r0
	mov r7, sl
	adds r7, #0x3e
	ldrb r1, [r7]
	str r3, [sp, #0x24]
	bl Div
	adds r5, r0, #0
	ldrb r1, [r4]
	mov r2, sl
	ldr r0, [r2, #0x58]
	muls r0, r1, r0
	ldrb r1, [r7]
	bl Div
	adds r2, r0, #0
	mov r1, sl
	adds r1, #0x44
	ldr r4, [sp, #0x20]
	adds r0, r1, r4
	ldr r0, [r0]
	adds r0, r0, r5
	lsls r0, r0, #8
	adds r4, r1, #0
	ldr r3, [sp, #0x24]
	cmp r3, #0
	beq _08094428
	mov r5, r8
	str r0, [r5]
	b _0809442C
	.align 2, 0
_08094420: .4byte gUnknown_03005A8D
_08094424: .4byte gUnknown_03005B1D
_08094428:
	mov r1, sb
	str r0, [r1]
_0809442C:
	mov r1, sl
	adds r1, #0x4c
	ldr r5, [sp, #0x20]
	adds r0, r1, r5
	ldr r0, [r0]
	adds r0, r0, r2
	lsls r0, r0, #8
	adds r5, r1, #0
	cmp r3, #0
	beq _08094446
	mov r1, r8
	str r0, [r1, #4]
	b _0809444A
_08094446:
	mov r2, sb
	str r0, [r2, #4]
_0809444A:
	mov r1, sl
	adds r1, #0x64
	ldr r2, [sp, #0x20]
	adds r0, r1, r2
	ldr r2, [r0]
	str r1, [sp, #0x18]
	cmp r3, #0
	beq _0809445E
	mov r1, r8
	b _08094460
_0809445E:
	mov r1, sb
_08094460:
	ldr r0, [r1, #4]
	subs r0, r0, r2
	cmp r3, #0
	beq _0809446E
	mov r2, r8
	strh r0, [r2, #0xa]
	b _08094472
_0809446E:
	mov r1, sb
	strh r0, [r1, #0xa]
_08094472:
	mov r1, sl
	adds r1, #0x5c
	ldr r2, [sp, #0x20]
	adds r0, r1, r2
	ldr r2, [r0]
	adds r7, r1, #0
	cmp r3, #0
	beq _08094486
	mov r1, r8
	b _08094488
_08094486:
	mov r1, sb
_08094488:
	ldr r0, [r1]
	subs r0, r0, r2
	cmp r3, #0
	beq _08094496
	mov r2, r8
	strh r0, [r2, #0xc]
	b _0809449A
_08094496:
	mov r1, sb
	strh r0, [r1, #0xc]
_0809449A:
	cmp r3, #0
	beq _080944A2
	mov r2, r8
	b _080944A4
_080944A2:
	mov r2, sb
_080944A4:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	cmp r3, #0
	beq _080944B2
	mov r2, r8
	strh r0, [r2, #8]
	b _080944B6
_080944B2:
	mov r1, sb
	strh r0, [r1, #8]
_080944B6:
	adds r1, r6, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, [sp, #0x20]
	adds r0, r4, r2
	ldr r1, [r0]
	mov r4, sl
	ldr r0, [r4, #0x54]
	adds r1, r1, r0
	cmp r3, #0
	beq _080944DA
	mov r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	cmp r0, r1
	beq _080944E4
	b _08094598
_080944DA:
	mov r4, sb
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r0, r1
	bne _08094598
_080944E4:
	ldr r1, [sp, #0x20]
	adds r0, r5, r1
	ldr r1, [r0]
	mov r2, sl
	ldr r0, [r2, #0x58]
	adds r1, r1, r0
	cmp r3, #0
	beq _08094500
	mov r4, r8
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, r1
	beq _0809450A
	b _08094598
_08094500:
	mov r5, sb
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r0, r1
	bne _08094598
_0809450A:
	ldr r0, _08094530 @ =gUnknown_03005A8D
	cmp r3, #0
	beq _08094512
	ldr r0, _08094534 @ =gUnknown_03005B1D
_08094512:
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, [sp, #0x14]
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r1, r0
	bne _08094588
	cmp r3, #0
	beq _0809453C
	mov r4, r8
	ldr r0, [r4, #0x10]
	ldr r1, _08094538 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _08094546
	.align 2, 0
_08094530: .4byte gUnknown_03005A8D
_08094534: .4byte gUnknown_03005B1D
_08094538: .4byte 0xFFBFFFFF
_0809453C:
	mov r5, sb
	ldr r0, [r5, #0x10]
	ldr r1, _08094558 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_08094546:
	cmp r3, #0
	beq _0809455C
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #2
	orrs r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
	b _08094566
	.align 2, 0
_08094558: .4byte 0xFFBFFFFF
_0809455C:
	mov r4, sb
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_08094566:
	cmp r3, #0
	beq _0809457C
	ldr r5, _08094578 @ =gUnknown_03005AD6
	ldrb r1, [r5]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r5]
	b _08094588
	.align 2, 0
_08094578: .4byte gUnknown_03005AD6
_0809457C:
	ldr r0, _08094594 @ =gUnknown_03005A46
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	ldr r1, _08094594 @ =gUnknown_03005A46
	strb r0, [r1]
_08094588:
	movs r1, #1
	lsls r1, r3
	ldr r2, [sp, #0x1c]
	ldrb r0, [r2]
	bics r0, r1
	b _08094644
	.align 2, 0
_08094594: .4byte gUnknown_03005A46
_08094598:
	ldr r0, _080945BC @ =gPlayer
	cmp r3, #0
	beq _080945A0
	ldr r0, _080945C0 @ =gPartner
_080945A0:
	str r3, [sp, #0x24]
	bl sub_8046CEC
	ldr r3, [sp, #0x24]
	cmp r3, #0
	beq _080945C4
	mov r4, r8
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _080945D0
	.align 2, 0
_080945BC: .4byte gPlayer
_080945C0: .4byte gPartner
_080945C4:
	mov r5, sb
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_080945D0:
	ldr r2, _080945E8 @ =gPlayer
	cmp r3, #0
	beq _080945EC
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	mov r4, r8
	str r0, [r4, #0x10]
	b _080945F8
	.align 2, 0
_080945E8: .4byte gPlayer
_080945EC:
	mov r5, sb
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
_080945F8:
	cmp r3, #0
	beq _08094608
	movs r0, #5
	ldr r1, _08094604 @ =gUnknown_03005AF0
	b _0809460E
	.align 2, 0
_08094604: .4byte gUnknown_03005AF0
_08094608:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #5
_0809460E:
	strb r0, [r1]
	ldr r0, _08094654 @ =gPlayer
	cmp r3, #0
	beq _08094618
	ldr r0, _08094658 @ =gPartner
_08094618:
	movs r1, #0xe
	str r3, [sp, #0x24]
	bl sub_804516C
	ldr r1, _08094654 @ =gPlayer
	ldr r3, [sp, #0x24]
	cmp r3, #0
	beq _0809462A
	ldr r1, _08094658 @ =gPartner
_0809462A:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08094654 @ =gPlayer
	cmp r3, #0
	beq _08094636
	ldr r1, _08094658 @ =gPartner
_08094636:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #1
	lsls r0, r3
	ldr r2, [sp, #0x1c]
	ldrb r1, [r2]
	orrs r0, r1
_08094644:
	strb r0, [r2]
	ldr r4, [sp, #0x20]
	adds r1, r7, r4
	cmp r3, #0
	beq _0809465C
	mov r5, r8
	ldr r0, [r5]
	b _08094660
	.align 2, 0
_08094654: .4byte gPlayer
_08094658: .4byte gPartner
_0809465C:
	mov r2, sb
	ldr r0, [r2]
_08094660:
	str r0, [r1]
	ldr r4, [sp, #0x18]
	ldr r5, [sp, #0x20]
	adds r1, r4, r5
	cmp r3, #0
	beq _08094674
	mov r2, r8
	ldr r0, [r2, #4]
	str r0, [r1]
	b _08094940
_08094674:
	mov r4, sb
	ldr r0, [r4, #4]
	str r0, [r1]
	b _08094940
_0809467C:
	movs r1, #1
	lsls r1, r3
	ldr r5, [sp, #0x1c]
	ldrb r0, [r5]
	bics r0, r1
	strb r0, [r5]
	b _08094940
_0809468A:
	cmp r3, #0
	beq _080946A0
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _0809469C @ =0xFFEFFFFF
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
	b _080946AA
	.align 2, 0
_0809469C: .4byte 0xFFEFFFFF
_080946A0:
	mov r4, sb
	ldr r0, [r4, #0x10]
	ldr r1, _080946BC @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_080946AA:
	cmp r3, #0
	beq _080946C4
	mov r5, r8
	ldr r0, [r5, #0x10]
	ldr r1, _080946C0 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _080946D0
	.align 2, 0
_080946BC: .4byte 0xFFEFFFFF
_080946C0: .4byte 0xFFBFFFFF
_080946C4:
	mov r1, sb
	ldr r0, [r1, #0x10]
	ldr r1, _080946E0 @ =0xFFBFFFFF
	ands r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_080946D0:
	movs r1, #1
	lsls r1, r3
	ldr r4, [sp, #0x1c]
	ldrb r0, [r4]
	bics r0, r1
	strb r0, [r4]
	b _08094940
	.align 2, 0
_080946E0: .4byte 0xFFBFFFFF
_080946E4:
	cmp r3, #0
	beq _080946EE
	mov r5, r8
	ldr r0, [r5, #0x10]
	b _080946F2
_080946EE:
	mov r1, sb
	ldr r0, [r1, #0x10]
_080946F2:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080946FC
	b _08094920
_080946FC:
	ldr r0, _08094738 @ =gUnknown_03005A8D
	cmp r3, #0
	beq _08094704
	ldr r0, _0809473C @ =gUnknown_03005B1D
_08094704:
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov r1, sl
	adds r1, #0x3c
	adds r0, r1, r3
	ldrb r0, [r0]
	str r1, [sp, #0x14]
	cmp r2, r0
	blt _0809471C
	cmp r0, #0
	beq _0809471C
	b _08094940
_0809471C:
	ldr r2, [sp]
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #0xa
	adds r5, r1, #0
	cmp r3, #0
	beq _08094740
	mov r4, r8
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0809474C
	b _08094940
	.align 2, 0
_08094738: .4byte gUnknown_03005A8D
_0809473C: .4byte gUnknown_03005B1D
_08094740:
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0809474C
	b _08094940
_0809474C:
	asrs r0, r5, #0x10
	adds r1, r0, #0
	adds r1, #0xa
	cmp r3, #0
	beq _08094762
	mov r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0809476E
	b _08094940
_08094762:
	mov r4, sb
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0809476E
	b _08094940
_0809476E:
	ldr r0, [sp, #4]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #0xa
	adds r4, r1, #0
	cmp r3, #0
	beq _0809478A
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08094796
	b _08094940
_0809478A:
	mov r1, sb
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08094796
	b _08094940
_08094796:
	asrs r0, r4, #0x10
	adds r1, r0, #0
	adds r1, #0xa
	cmp r3, #0
	beq _080947AC
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080947B8
	b _08094940
_080947AC:
	mov r2, sb
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080947B8
	b _08094940
_080947B8:
	mov r0, sl
	adds r0, #0x3f
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080947E4 @ =gPlayer
	cmp r3, #0
	beq _080947CA
	ldr r0, _080947E8 @ =gPartner
_080947CA:
	str r3, [sp, #0x24]
	bl sub_8046CEC
	ldr r3, [sp, #0x24]
	cmp r3, #0
	beq _080947EC
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #4
	orrs r0, r1
	mov r2, r8
	b _080947F6
	.align 2, 0
_080947E4: .4byte gPlayer
_080947E8: .4byte gPartner
_080947EC:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #4
	orrs r0, r1
	mov r2, sb
_080947F6:
	str r0, [r2, #0x10]
	ldr r2, _0809480C @ =gPlayer
	cmp r3, #0
	beq _08094810
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	mov r1, r8
	b _0809481C
	.align 2, 0
_0809480C: .4byte gPlayer
_08094810:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	mov r1, sb
_0809481C:
	str r0, [r1, #0x10]
	asrs r0, r5, #8
	cmp r3, #0
	beq _0809482A
	mov r1, r8
	str r0, [r1]
	b _0809482C
_0809482A:
	str r0, [r2]
_0809482C:
	asrs r0, r4, #8
	cmp r3, #0
	beq _08094838
	mov r1, r8
	str r0, [r1, #4]
	b _0809483A
_08094838:
	str r0, [r2, #4]
_0809483A:
	mov r0, sl
	adds r0, #0x44
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	asrs r1, r5, #0x10
	str r1, [r0]
	mov r0, sl
	adds r0, #0x4c
	ldr r5, [sp, #0x20]
	adds r0, r0, r5
	asrs r1, r4, #0x10
	str r1, [r0]
	cmp r3, #0
	beq _0809485E
	movs r0, #0
	mov r1, r8
	strh r0, [r1, #0xa]
	b _08094860
_0809485E:
	strh r3, [r2, #0xa]
_08094860:
	cmp r3, #0
	beq _0809486C
	movs r0, #0
	mov r4, r8
	strh r0, [r4, #8]
	b _0809486E
_0809486C:
	strh r3, [r2, #8]
_0809486E:
	cmp r3, #0
	beq _0809487A
	movs r0, #0
	mov r5, r8
	strh r0, [r5, #0xc]
	b _0809487C
_0809487A:
	strh r3, [r2, #0xc]
_0809487C:
	cmp r3, #0
	beq _0809488C
	movs r0, #5
	ldr r1, _08094888 @ =gUnknown_03005AF0
	b _08094892
	.align 2, 0
_08094888: .4byte gUnknown_03005AF0
_0809488C:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #5
_08094892:
	strb r0, [r1]
	ldr r0, _080948FC @ =gPlayer
	cmp r3, #0
	beq _0809489C
	ldr r0, _08094900 @ =gPartner
_0809489C:
	movs r1, #0xe
	str r3, [sp, #0x24]
	bl sub_804516C
	ldr r1, _080948FC @ =gPlayer
	ldr r3, [sp, #0x24]
	cmp r3, #0
	beq _080948AE
	ldr r1, _08094900 @ =gPartner
_080948AE:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _080948FC @ =gPlayer
	cmp r3, #0
	beq _080948BA
	ldr r1, _08094900 @ =gPartner
_080948BA:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xca
	str r3, [sp, #0x24]
	bl m4aSongNumStart
	movs r1, #1
	ldr r3, [sp, #0x24]
	lsls r1, r3
	ldr r2, [sp, #0x1c]
	ldrb r0, [r2]
	orrs r1, r0
	movs r2, #0
	ldr r4, [sp, #0x1c]
	strb r1, [r4]
	ldr r1, _08094904 @ =gUnknown_03005A8D
	cmp r3, #0
	beq _080948E0
	ldr r1, _08094908 @ =gUnknown_03005B1D
_080948E0:
	ldr r5, [sp, #0x14]
	adds r0, r5, r3
	ldrb r0, [r0]
	strb r0, [r1]
	cmp r3, #0
	beq _08094910
	ldr r1, _0809490C @ =gUnknown_03005AD6
	ldrb r0, [r1]
	movs r1, #0x80
	orrs r0, r1
	ldr r2, _0809490C @ =gUnknown_03005AD6
	strb r0, [r2]
	b _08094940
	.align 2, 0
_080948FC: .4byte gPlayer
_08094900: .4byte gPartner
_08094904: .4byte gUnknown_03005A8D
_08094908: .4byte gUnknown_03005B1D
_0809490C: .4byte gUnknown_03005AD6
_08094910:
	ldr r4, _0809491C @ =gUnknown_03005A46
	ldrb r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4]
	b _08094940
	.align 2, 0
_0809491C: .4byte gUnknown_03005A46
_08094920:
	cmp r3, #0
	beq _08094934
	mov r5, r8
	ldr r0, [r5, #0x10]
	ldr r1, _08094930 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08094940
	.align 2, 0
_08094930: .4byte 0xFFEFFFFF
_08094934:
	mov r1, sb
	ldr r0, [r1, #0x10]
	ldr r1, _080949AC @ =0xFFEFFFFF
	ands r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_08094940:
	ldr r4, [sp, #0x20]
	adds r4, #4
	str r4, [sp, #0x20]
	adds r3, #1
	ldr r0, _080949B0 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r3, r0
	bge _08094956
	b _0809437A
_08094956:
	ldr r5, [sp, #0x1c]
	ldrb r1, [r5]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0809499A
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r0, r2
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0809498A
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0809498A
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r2, r0
	ble _0809499A
_0809498A:
	mov r4, sl
	ldrb r0, [r4, #8]
	ldr r5, [sp, #0x10]
	strb r0, [r5]
	ldr r0, _080949B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0809499A:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080949AC: .4byte 0xFFEFFFFF
_080949B0: .4byte gUnknown_03005088
_080949B4: .4byte gCurTask
