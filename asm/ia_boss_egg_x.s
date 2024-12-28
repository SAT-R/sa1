.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of X-Zone Final Boss
	thumb_func_start CreateEntity_EggX
CreateEntity_EggX: @ 0x080371C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r0, _080371F8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080371FC
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r4]
	b _080373B8
	.align 2, 0
_080371F8: .4byte gGameMode
_080371FC:
	ldr r0, _08037278 @ =Task_EggXMain
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0803727C @ =TaskDestructor_EggX
	str r1, [sp]
	movs r1, #0xa0
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	movs r5, #0
	movs r2, #0
	mov r0, r8
	strh r0, [r7, #4]
	mov r1, sb
	strh r1, [r7, #6]
	str r4, [r7]
	ldrb r0, [r4]
	strb r0, [r7, #8]
	strb r6, [r7, #9]
	ldr r0, _08037280 @ =0x03000092
	adds r1, r3, r0
	movs r0, #0x78
	strh r0, [r1]
	ldr r1, _08037284 @ =0x03000095
	adds r0, r3, r1
	strb r5, [r0]
	adds r1, #4
	adds r0, r3, r1
	strb r5, [r0]
	subs r1, #1
	adds r0, r3, r1
	strb r5, [r0]
	movs r0, #0xe8
	lsls r0, r0, #7
	str r0, [r7, #0x74]
	movs r0, #0xe8
	lsls r0, r0, #8
	str r0, [r7, #0x78]
	str r2, [r7, #0x7c]
	subs r1, #0x18
	adds r0, r3, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r3, r1
	str r2, [r0]
	adds r1, #0x12
	adds r0, r3, r1
	strh r2, [r0]
	ldr r0, _08037288 @ =gUnknown_03005160
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _08037290
	ldr r2, _0803728C @ =0x03000094
	adds r1, r3, r2
	movs r0, #2
	strb r0, [r1]
	b _08037296
	.align 2, 0
_08037278: .4byte Task_EggXMain
_0803727C: .4byte TaskDestructor_EggX
_08037280: .4byte 0x03000092
_08037284: .4byte 0x03000095
_08037288: .4byte gUnknown_03005160
_0803728C: .4byte 0x03000094
_08037290:
	ldr r1, _080373C8 @ =0x03000094
	adds r0, r3, r1
	strb r5, [r0]
_08037296:
	ldrb r1, [r4]
	lsls r1, r1, #3
	mov r2, r8
	lsls r0, r2, #8
	adds r1, r1, r0
	adds r6, r7, #0
	adds r6, #0x88
	movs r5, #0
	strh r1, [r6]
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r1, #0x8a
	adds r1, r1, r7
	mov sl, r1
	strh r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r4]
	adds r4, r7, #0
	adds r4, #0xc
	ldrh r0, [r6]
	strh r0, [r4, #0x16]
	ldrh r0, [r1]
	strh r0, [r4, #0x18]
	movs r0, #0x2a
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r0, _080373CC @ =0x000002AF
	strh r0, [r4, #0xa]
	adds r0, r7, #0
	adds r0, #0x2c
	movs r1, #0
	strb r1, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r7, #0
	adds r1, #0x2d
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x2e
	movs r2, #0x10
	mov sb, r2
	mov r1, sb
	strb r1, [r0]
	adds r0, #3
	movs r2, #0
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	adds r4, #0x38
	ldrh r0, [r6]
	strh r0, [r4, #0x16]
	mov r2, sl
	ldrh r0, [r2]
	strh r0, [r4, #0x18]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r0, _080373D0 @ =0x000002B3
	strh r0, [r4, #0xa]
	adds r0, r7, #0
	adds r0, #0x64
	movs r1, #0
	strb r1, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r7, #0
	adds r1, #0x65
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x66
	mov r2, sb
	strb r2, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	mov r2, r8
	str r2, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	ldr r0, _080373D4 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08037396
	ldr r1, _080373D8 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldr r0, _080373DC @ =0x00001F1F
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	ldr r1, _080373E0 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0xc
	strh r0, [r1, #4]
	ldr r2, _080373E4 @ =gDispCnt
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r1
	strh r0, [r2]
_08037396: @ inline of sub_803A614?
	add r1, sp, #4
	ldr r2, _080373E8 @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080373EC @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _080373F0 @ =gObjPalette+0x180
	str r0, [r1, #4]
	ldr r0, _080373F4 @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _080373F8 @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_080373B8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080373C8: .4byte 0x03000094
_080373CC: .4byte 0x000002AF
_080373D0: .4byte 0x000002B3
_080373D4: .4byte gPlayer
_080373D8: .4byte gWinRegs
_080373DC: .4byte 0x00001F1F
_080373E0: .4byte gBldRegs
_080373E4: .4byte gDispCnt
_080373E8: .4byte 0x00007FFF
_080373EC: .4byte 0x040000D4
_080373F0: .4byte gObjPalette+0x180
_080373F4: .4byte 0x81000010
_080373F8: .4byte gFlags

	thumb_func_start Task_EggXMain
Task_EggXMain: @ 0x080373FC
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _08037420 @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0x99
	adds r4, r2, r0
	ldrb r0, [r4]
	cmp r0, #1
	beq _0803745C
	cmp r0, #1
	bgt _08037424
	cmp r0, #0
	beq _0803742E
	b _08037518
	.align 2, 0
_08037420: .4byte gCurTask
_08037424:
	cmp r0, #2
	beq _08037494
	cmp r0, #3
	beq _080374C4
	b _08037518
_0803742E:
	ldr r1, _08037454 @ =0x03000088
	adds r2, r2, r1
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r0, #0x78
	ldr r3, _08037458 @ =gCamera
	movs r5, #0
	ldrsh r1, [r3, r5]
	cmp r0, r1
	bgt _08037518
	ldrh r0, [r2]
	subs r0, #0x90
	strh r0, [r3, #0x18]
	ldrh r0, [r2]
	adds r0, #0x90
	strh r0, [r3, #0x1a]
	movs r0, #1
	strb r0, [r4]
	b _08037518
	.align 2, 0
_08037454: .4byte 0x03000088
_08037458: .4byte gCamera
_0803745C:
	ldr r0, _0803748C @ =0x0300008A
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	subs r0, #0x28
	ldr r1, _08037490 @ =gCamera
	movs r3, #2
	ldrsh r1, [r1, r3]
	cmp r0, r1
	bgt _08037518
	ldrh r1, [r2]
	adds r0, r1, #0
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0xa0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80174DC
	movs r0, #2
	strb r0, [r4]
	b _08037518
	.align 2, 0
_0803748C: .4byte 0x0300008A
_08037490: .4byte gCamera
_08037494:
	ldr r3, _080374BC @ =gCamera
	movs r5, #0x14
	ldrsh r0, [r3, r5]
	ldr r5, _080374C0 @ =0x0300008A
	adds r1, r2, r5
	movs r5, #0
	ldrsh r2, [r1, r5]
	adds r1, r2, #0
	subs r1, #0x28
	cmp r0, r1
	bne _08037518
	movs r0, #0x16
	ldrsh r1, [r3, r0]
	adds r0, r2, #0
	adds r0, #0xa0
	cmp r1, r0
	bne _08037518
	movs r0, #3
	strb r0, [r4]
	b _08037518
	.align 2, 0
_080374BC: .4byte gCamera
_080374C0: .4byte 0x0300008A
_080374C4:
	movs r0, #0
	strb r0, [r4]
	ldr r4, _08037520 @ =0x03000080
	adds r1, r2, r4
	ldr r0, _08037524 @ =0xFFFFFF00
	str r0, [r1]
	ldr r0, _08037528 @ =0x03000088
	adds r1, r2, r0
	ldr r0, [r3, #0x74]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r4, #0xc
	adds r1, r2, r4
	strh r0, [r1]
	ldr r0, _0803752C @ =0x0300008A
	adds r1, r2, r0
	ldr r0, [r3, #0x78]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r3, _08037530 @ =0x0300008E
	adds r1, r2, r3
	strh r0, [r1]
	bl sub_8038F04
	ldr r1, [r5]
	ldr r0, _08037534 @ =sub_803753C
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0x80
	str r1, [sp]
	movs r1, #4
	movs r3, #0x7a
	bl sub_804CC14
	ldr r1, _08037538 @ =gUnknown_03005040
	movs r0, #0x16
	strb r0, [r1, #1]
_08037518:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037520: .4byte 0x03000080
_08037524: .4byte 0xFFFFFF00
_08037528: .4byte 0x03000088
_0803752C: .4byte 0x0300008A
_08037530: .4byte 0x0300008E
_08037534: .4byte sub_803753C
_08037538: .4byte gUnknown_03005040

	thumb_func_start sub_803753C
sub_803753C: @ 0x0803753C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080375D0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r5, r1
	ldr r2, _080375D4 @ =0x0300009C
	adds r0, r5, r2
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r7, _080375D8 @ =0x0300000C
	adds r7, r7, r5
	mov sl, r7
	ldr r0, _080375DC @ =0x03000044
	adds r4, r5, r0
	ldr r0, [r6, #0x74]
	ldr r1, [r6, #0x7c]
	adds r0, r0, r1
	str r0, [r6, #0x74]
	ldr r1, _080375E0 @ =0x03000080
	adds r3, r5, r1
	ldr r1, [r6, #0x78]
	ldr r2, [r3]
	adds r1, r1, r2
	str r1, [r6, #0x78]
	ldr r7, _080375E4 @ =0x03000088
	adds r2, r5, r7
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r2, _080375E8 @ =0x0300008A
	adds r0, r5, r2
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, [r3]
	cmp r0, #0
	bne _080375F8
	ldr r0, _080375EC @ =0x03000090
	adds r2, r5, r0
	ldrh r0, [r2]
	adds r0, #8
	ldr r1, _080375F0 @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _080375F4 @ =gSineTable
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x1c
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _08037600
	.align 2, 0
_080375D0: .4byte gCurTask
_080375D4: .4byte 0x0300009C
_080375D8: .4byte 0x0300000C
_080375DC: .4byte 0x03000044
_080375E0: .4byte 0x03000080
_080375E4: .4byte 0x03000088
_080375E8: .4byte 0x0300008A
_080375EC: .4byte 0x03000090
_080375F0: .4byte 0x000003FF
_080375F4: .4byte gSineTable
_080375F8:
	ldr r0, _0803766C @ =0x03000090
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
_08037600:
	adds r0, r6, #0
	adds r0, #0x8c
	mov r1, ip
	strh r1, [r0]
	adds r0, #2
	strh r7, [r0]
	mov r2, sb
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	ldr r5, _08037670 @ =0x0300000C
	adds r1, r1, r5
	ldr r3, _08037674 @ =gCamera
	ldrh r2, [r3]
	mov r5, ip
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x16]
	ldrh r2, [r3, #2]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x18]
	mov r0, sl
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r7, sb
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r1, _08037670 @ =0x0300000C
	adds r2, r0, r1
	ldr r5, _08037678 @ =0x03000044
	adds r0, r0, r5
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_80370B4
	adds r0, r6, #0
	adds r0, #0x99
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #5
	bhi _08037746
	lsls r0, r1, #2
	ldr r1, _0803767C @ =_08037680
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803766C: .4byte 0x03000090
_08037670: .4byte 0x0300000C
_08037674: .4byte gCamera
_08037678: .4byte 0x03000044
_0803767C: .4byte _08037680
_08037680: @ jump table
	.4byte _08037698 @ case 0
	.4byte _080376B0 @ case 1
	.4byte _080376CA @ case 2
	.4byte _080376E4 @ case 3
	.4byte _0803770A @ case 4
	.4byte _08037724 @ case 5
_08037698:
	ldr r0, [r6, #0x78]
	movs r1, #0xdc
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08037746
	str r1, [r6, #0x78]
	movs r1, #0
	str r1, [r6, #0x7c]
	adds r0, r6, #0
	adds r0, #0x80
	str r1, [r0]
	b _08037714
_080376B0:
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037746
	mov r1, r8
	adds r1, #0x79
	movs r0, #1
	strb r0, [r1]
	b _0803771C
_080376CA:
	mov r0, r8
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #4
	bne _08037746
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	b _0803771C
_080376E4:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08037746
	mov r1, r8
	adds r1, #0x79
	movs r2, #0
	movs r0, #5
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	b _0803771C
_0803770A:
	mov r0, r8
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #7
	bne _08037746
_08037714:
	adds r1, r6, #0
	adds r1, #0x92
	movs r0, #0xf
	strh r0, [r1]
_0803771C:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _08037746
_08037724:
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037746
	adds r1, #6
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08037754 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08037758 @ =sub_803775C
	str r0, [r1, #8]
_08037746:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037754: .4byte gCurTask
_08037758: .4byte sub_803775C

	thumb_func_start sub_803775C
sub_803775C: @ 0x0803775C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _080377AC @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r2, r1
	ldr r3, _080377B0 @ =0x0300009C
	adds r0, r2, r3
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r4, _080377B4 @ =0x0300000C
	adds r7, r2, r4
	ldr r0, _080377B8 @ =0x03000044
	adds r0, r2, r0
	str r0, [sp, #4]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080377C0
	ldr r1, _080377BC @ =0x03000084
	adds r0, r2, r1
	ldr r1, [r6, #0x7c]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r6, #0x7c]
	ldr r0, [r6, #0x74]
	subs r0, r0, r1
	b _080377D0
	.align 2, 0
_080377AC: .4byte gCurTask
_080377B0: .4byte 0x0300009C
_080377B4: .4byte 0x0300000C
_080377B8: .4byte 0x03000044
_080377BC: .4byte 0x03000084
_080377C0:
	ldr r3, _08037830 @ =0x03000084
	adds r0, r2, r3
	ldr r1, [r6, #0x7c]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r6, #0x7c]
	ldr r0, [r6, #0x74]
	adds r0, r0, r1
_080377D0:
	str r0, [r6, #0x74]
	adds r3, r6, #0
	adds r3, #0x80
	ldr r1, [r6, #0x78]
	ldr r0, [r3]
	adds r1, r1, r0
	str r1, [r6, #0x78]
	adds r2, r6, #0
	adds r2, #0x88
	ldr r0, [r6, #0x74]
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x8a
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, [r3]
	cmp r0, #0
	bne _0803783C
	adds r2, r6, #0
	adds r2, #0x90
	ldrh r0, [r2]
	adds r0, #8
	ldr r1, _08037834 @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08037838 @ =gSineTable
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x1c
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08037844
	.align 2, 0
_08037830: .4byte 0x03000084
_08037834: .4byte 0x000003FF
_08037838: .4byte gSineTable
_0803783C:
	adds r1, r6, #0
	adds r1, #0x90
	movs r0, #0
	strh r0, [r1]
_08037844:
	adds r0, r6, #0
	adds r0, #0x8c
	strh r5, [r0]
	adds r0, #2
	strh r4, [r0]
	lsls r5, r5, #0x10
	asrs r3, r5, #0x10
	mov r8, r3
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	mov sb, r0
	mov r0, r8
	mov r1, sb
	bl sub_8036E20
	adds r0, r6, #0
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r4, [sp, #0x20]
	str r5, [sp, #0x1c]
	cmp r0, #7
	ble _0803787A
	bl sub_803803C
	b _0803802A
_0803787A:
	ldr r0, _080378FC @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	ldr r2, _08037900 @ =0x0300000C
	adds r1, r1, r2
	ldr r2, _08037904 @ =gCamera
	ldrh r0, [r2]
	mov r4, r8
	subs r0, r4, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	mov r2, sb
	subs r0, r2, r0
	strh r0, [r1, #0x18]
	ldrh r2, [r3, #6]
	ldr r3, _08037908 @ =0x03000044
	adds r1, r2, r3
	ldr r4, _0803790C @ =0x03000064
	adds r3, r2, r4
	ldrb r0, [r3]
	cmp r0, #0
	beq _080378BE
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080378BE
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08037910 @ =0x03000065
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_080378BE:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r0, _080378FC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08037900 @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _08037908 @ =0x03000044
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_80370B4
	adds r0, r6, #0
	adds r0, #0x99
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x42
	bls _080378F2
	b _0803802A
_080378F2:
	lsls r0, r1, #2
	ldr r1, _08037914 @ =_08037918
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080378FC: .4byte gCurTask
_08037900: .4byte 0x0300000C
_08037904: .4byte gCamera
_08037908: .4byte 0x03000044
_0803790C: .4byte 0x03000064
_08037910: .4byte 0x03000065
_08037914: .4byte _08037918
_08037918: @ jump table
	.4byte _08037A24 @ case 0
	.4byte _08037A88 @ case 1
	.4byte _08037ACA @ case 2
	.4byte _08037B02 @ case 3
	.4byte _08037B54 @ case 4
	.4byte _08038018 @ case 5
	.4byte _0803802A @ case 6
	.4byte _0803802A @ case 7
	.4byte _0803802A @ case 8
	.4byte _0803802A @ case 9
	.4byte _0803802A @ case 10
	.4byte _0803802A @ case 11
	.4byte _0803802A @ case 12
	.4byte _0803802A @ case 13
	.4byte _0803802A @ case 14
	.4byte _0803802A @ case 15
	.4byte _08037B6A @ case 16
	.4byte _08037B8C @ case 17
	.4byte _0803802A @ case 18
	.4byte _0803802A @ case 19
	.4byte _0803802A @ case 20
	.4byte _0803802A @ case 21
	.4byte _0803802A @ case 22
	.4byte _0803802A @ case 23
	.4byte _0803802A @ case 24
	.4byte _0803802A @ case 25
	.4byte _0803802A @ case 26
	.4byte _0803802A @ case 27
	.4byte _0803802A @ case 28
	.4byte _0803802A @ case 29
	.4byte _0803802A @ case 30
	.4byte _0803802A @ case 31
	.4byte _08037BF2 @ case 32
	.4byte _0803802A @ case 33
	.4byte _0803802A @ case 34
	.4byte _0803802A @ case 35
	.4byte _0803802A @ case 36
	.4byte _0803802A @ case 37
	.4byte _0803802A @ case 38
	.4byte _0803802A @ case 39
	.4byte _0803802A @ case 40
	.4byte _0803802A @ case 41
	.4byte _0803802A @ case 42
	.4byte _0803802A @ case 43
	.4byte _0803802A @ case 44
	.4byte _0803802A @ case 45
	.4byte _0803802A @ case 46
	.4byte _0803802A @ case 47
	.4byte _08037E88 @ case 48
	.4byte _0803802A @ case 49
	.4byte _08037E92 @ case 50
	.4byte _08037E96 @ case 51
	.4byte _08037EAC @ case 52
	.4byte _08037F18 @ case 53
	.4byte _0803802A @ case 54
	.4byte _0803802A @ case 55
	.4byte _0803802A @ case 56
	.4byte _0803802A @ case 57
	.4byte _0803802A @ case 58
	.4byte _0803802A @ case 59
	.4byte _0803802A @ case 60
	.4byte _0803802A @ case 61
	.4byte _0803802A @ case 62
	.4byte _0803802A @ case 63
	.4byte _08037F54 @ case 64
	.4byte _08037F80 @ case 65
	.4byte _08037FE4 @ case 66
_08037A24:
	adds r1, r6, #0
	adds r1, #0x9a
	movs r0, #0
	strb r0, [r1]
	mov r1, sl
	adds r1, #0x79
	movs r0, #8
	strb r0, [r1]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldr r2, _08037A5C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08037A60 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08037A64 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	movs r1, #0x30
	ands r0, r1
	lsrs r0, r0, #4
	cmp r0, #1
	beq _08037A78
	cmp r0, #1
	bgt _08037A68
	cmp r0, #0
	beq _08037A70
	b _08037A88
	.align 2, 0
_08037A5C: .4byte gPseudoRandom
_08037A60: .4byte 0x00196225
_08037A64: .4byte 0x3C6EF35F
_08037A68:
	cmp r0, #2
	beq _08037A80
	cmp r0, #3
	bne _08037A88
_08037A70:
	adds r1, r6, #0
	adds r1, #0x92
	movs r0, #0x5a
	b _08037A86
_08037A78:
	adds r1, r6, #0
	adds r1, #0x92
	movs r0, #0xb4
	b _08037A86
_08037A80:
	adds r1, r6, #0
	adds r1, #0x92
	movs r0, #0xf0
_08037A86:
	strh r0, [r1]
_08037A88:
	adds r4, r6, #0
	adds r4, #0x92
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08037A9A
	b _0803802A
_08037A9A:
	ldr r7, [sp, #0x1c]
	asrs r0, r7, #0x10
	bl sub_803711C
	adds r1, r6, #0
	adds r1, #0x9a
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	beq _08037ABA
	movs r0, #0xa
	strh r0, [r4]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
_08037ABA:
	mov r1, sl
	adds r1, #0x79
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0x14
	strh r0, [r4]
	movs r0, #0x40
	b _08038028
_08037ACA:
	mov r2, sl
	adds r2, #0x7a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	strb r0, [r2]
	cmp r0, #0
	bne _08037ADC
	b _0803802A
_08037ADC:
	adds r2, r6, #0
	adds r2, #0x92
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08037AEE
	b _0803802A
_08037AEE:
	movs r1, #0xa
	movs r0, #0xa
	strh r0, [r2]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	mov r0, sl
	adds r0, #0x79
	strb r1, [r0]
	b _0803802A
_08037B02:
	mov r0, sl
	adds r0, #0x7a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08037B12
	b _0803802A
_08037B12:
	adds r2, r6, #0
	adds r2, #0x92
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08037B26
	b _0803802A
_08037B26:
	mov r1, sl
	adds r1, #0x79
	movs r0, #0xd
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x9a
	ldrb r0, [r1]
	lsls r0, r0, #4
	strb r0, [r5]
	ldrb r0, [r1]
	cmp r0, #2
	bne _08037B4A
	movs r0, #0x1e
	strh r0, [r2]
	movs r0, #0xac
	bl m4aSongNumStart
	b _0803802A
_08037B4A:
	cmp r0, #1
	beq _08037B50
	b _0803802A
_08037B50:
	strh r3, [r2]
	b _0803802A
_08037B54:
	mov r1, sl
	adds r1, #0x79
	movs r2, #0
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x9a
	strb r2, [r0]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
_08037B6A:
	bl sub_803967C
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r6, #0x7c]
	subs r1, #0xe
	movs r0, #0x40
	rsbs r0, r0, #0
	str r0, [r1]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
_08037B8C:
	movs r2, #0
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	bgt _08037BA8
	adds r3, r6, #0
	adds r3, #0x84
	ldr r1, [r3]
	adds r0, r1, #0
	cmp r1, #0
	bge _08037BA2
	adds r0, r1, #3
_08037BA2:
	asrs r0, r0, #2
	subs r0, r1, r0
	str r0, [r3]
_08037BA8:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08037BC4
	ldr r0, [r6, #0x74]
	ldr r1, _08037BC0 @ =0xFFFF8C00
	cmp r0, r1
	blt _08037BD2
	str r1, [r6, #0x74]
	b _08037BD8
	.align 2, 0
_08037BC0: .4byte 0xFFFF8C00
_08037BC4:
	ldr r0, [r6, #0x74]
	movs r1, #0xe8
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08037BD2
	str r1, [r6, #0x74]
	movs r2, #0xff
_08037BD2:
	cmp r2, #0
	bne _08037BD8
	b _0803802A
_08037BD8:
	movs r1, #0
	str r1, [r6, #0x7c]
	adds r0, r6, #0
	adds r0, #0x84
	str r1, [r0]
	adds r0, #0xe
	ldrh r0, [r0]
	cmp r0, #0
	beq _08037BEE
	movs r0, #4
	b _08038028
_08037BEE:
	movs r0, #0x10
	b _08038028
_08037BF2:
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	subs r0, #1
	movs r4, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0
	bne _08037C40
	movs r0, #4
	strb r0, [r5]
	ldr r0, _08037C30 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08037C20
	ldr r0, _08037C34 @ =gNumLives
	ldrb r0, [r0]
	cmp r0, #0
	bne _08037C20
	b _0803802A
_08037C20:
	ldr r1, _08037C38 @ =gWinRegs
	ldr r0, _08037C3C @ =0x00001F1F
	strh r0, [r1, #8]
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	b _0803802A
	.align 2, 0
_08037C30: .4byte gPlayer
_08037C34: .4byte gNumLives
_08037C38: .4byte gWinRegs
_08037C3C: .4byte 0x00001F1F
_08037C40:
	ldr r0, _08037D54 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #0x80
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _08037C56
	ldr r0, _08037D58 @ =gNumLives
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037C5C
_08037C56:
	ldr r1, _08037D5C @ =gWinRegs
	ldr r0, _08037D60 @ =0x00003F3F
	strh r0, [r1, #8]
_08037C5C:
	movs r1, #0
	ldrsh r0, [r3, r1]
	subs r0, #0xf
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08037C72
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08037C72:
	movs r0, #0xf
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb
	ble _08037C8C
	movs r1, #0xc
	movs r4, #0xb
_08037C8C:
	ldrh r0, [r7, #0x18]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r2, r0, r1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xa0
	ble _08037CA6
	movs r3, #0xa0
_08037CA6:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08037D80
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08037CC4
	ldr r0, _08037D58 @ =gNumLives
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037CDE
_08037CC4:
	ldr r2, _08037D5C @ =gWinRegs
	ldrh r0, [r7, #0x16]
	adds r0, #0x20
	lsls r0, r0, #8
	movs r1, #0xf0
	orrs r0, r1
	strh r0, [r2]
	lsls r1, r5, #0x10
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2, #4]
_08037CDE:
	ldr r0, _08037D64 @ =gCamera
	ldrh r5, [r0]
	adds r5, #0x78
	ldrh r0, [r7, #0x16]
	subs r0, #0x58
	lsls r4, r4, #0x10
	rsbs r3, r4, #0
	asrs r3, r3, #0x10
	movs r2, #0
	str r2, [sp, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08037D68 @ =0xFFFFFF00
	ldr r7, [sp, #0x10]
	ands r1, r7
	orrs r1, r0
	str r1, [sp, #0x10]
	movs r0, #0xf0
	lsls r0, r0, #0xf
	ldr r2, _08037D6C @ =0xFF00FFFF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x10]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x10
	ldr r0, _08037D70 @ =0xFFFF00FF
	ands r0, r2
	orrs r0, r3
	str r0, [sp, #0x10]
	lsls r4, r4, #8
	ldr r1, _08037D74 @ =0x00FFFFFF
	ands r0, r1
	orrs r0, r4
	str r0, [sp, #0x10]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldr r0, [sp, #0x20]
	asrs r4, r0, #0x10
	str r6, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_800C1E8
	adds r6, r0, #0
	ldr r0, _08037D78 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08037D48
	b _08037E44
_08037D48:
	ldr r0, _08037D7C @ =gPartner
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	b _08037E14
	.align 2, 0
_08037D54: .4byte gPlayer
_08037D58: .4byte gNumLives
_08037D5C: .4byte gWinRegs
_08037D60: .4byte 0x00003F3F
_08037D64: .4byte gCamera
_08037D68: .4byte 0xFFFFFF00
_08037D6C: .4byte 0xFF00FFFF
_08037D70: .4byte 0xFFFF00FF
_08037D74: .4byte 0x00FFFFFF
_08037D78: .4byte gNumSingleplayerCharacters
_08037D7C: .4byte gPartner
_08037D80:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08037D92
	ldr r0, _08037E20 @ =gNumLives
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037DA6
_08037D92:
	ldr r2, _08037E24 @ =gWinRegs
	ldrh r0, [r7, #0x16]
	subs r0, #0x20
	strh r0, [r2]
	lsls r1, r5, #0x10
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2, #4]
_08037DA6:
	ldr r0, _08037E28 @ =gCamera
	ldrh r5, [r0]
	adds r5, #0x78
	ldrh r2, [r7, #0x16]
	subs r2, #0x98
	lsls r4, r4, #0x10
	rsbs r3, r4, #0
	asrs r3, r3, #0x10
	movs r0, #0
	str r0, [sp, #0x14]
	movs r1, #0x88
	ldr r0, _08037E2C @ =0xFFFFFF00
	ldr r7, [sp, #0x18]
	ands r0, r7
	orrs r0, r1
	str r0, [sp, #0x18]
	lsls r2, r2, #0x18
	lsrs r2, r2, #8
	ldr r1, _08037E30 @ =0xFF00FFFF
	ands r1, r0
	orrs r1, r2
	str r1, [sp, #0x18]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x10
	ldr r0, _08037E34 @ =0xFFFF00FF
	ands r0, r1
	orrs r0, r3
	str r0, [sp, #0x18]
	lsls r4, r4, #8
	ldr r1, _08037E38 @ =0x00FFFFFF
	ands r0, r1
	orrs r0, r4
	str r0, [sp, #0x18]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldr r0, [sp, #0x20]
	asrs r4, r0, #0x10
	str r6, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_800C1E8
	adds r6, r0, #0
	ldr r0, _08037E3C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08037E44
	ldr r0, _08037E40 @ =gPartner
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
_08037E14:
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_800C1E8
	b _08037E46
	.align 2, 0
_08037E20: .4byte gNumLives
_08037E24: .4byte gWinRegs
_08037E28: .4byte gCamera
_08037E2C: .4byte 0xFFFFFF00
_08037E30: .4byte 0xFF00FFFF
_08037E34: .4byte 0xFFFF00FF
_08037E38: .4byte 0x00FFFFFF
_08037E3C: .4byte gNumSingleplayerCharacters
_08037E40: .4byte gPartner
_08037E44:
	movs r0, #0
_08037E46:
	orrs r6, r0
	cmp r6, #2
	beq _08037E4E
	b _0803802A
_08037E4E:
	ldr r0, _08037E74 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r1, _08037E78 @ =0x03000044
	adds r3, r2, r1
	ldr r4, _08037E7C @ =0x03000064
	adds r1, r2, r4
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08037E80 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r7, _08037E84 @ =0x03000065
	adds r2, r2, r7
	movs r0, #0xff
	strb r0, [r2]
	b _0803802A
	.align 2, 0
_08037E74: .4byte gCurTask
_08037E78: .4byte 0x03000044
_08037E7C: .4byte 0x03000064
_08037E80: .4byte 0xFFFFBFFF
_08037E84: .4byte 0x03000065
_08037E88:
	bl sub_8039940
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
_08037E92:
	movs r0, #4
	b _08038028
_08037E96:
	ldr r0, _08037EA8 @ =0xFFFFFE00
	str r0, [r6, #0x7c]
	adds r1, r6, #0
	adds r1, #0x92
	movs r0, #0
	strh r0, [r1]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
	.align 2, 0
_08037EA8: .4byte 0xFFFFFE00
_08037EAC:
	adds r3, r6, #0
	adds r3, #0x92
	ldrh r0, [r3]
	cmp r0, #0
	beq _08037EC2
	mov r0, sl
	adds r0, #0x79
	movs r2, #0
	movs r1, #0xf
	strb r1, [r0]
	strh r2, [r3]
_08037EC2:
	movs r2, #0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08037EE4
	ldr r1, [r6, #0x74]
	ldr r0, _08037EE0 @ =0x0000CFFF
	cmp r1, r0
	ble _08037EF0
	adds r0, #1
	str r0, [sp, #8]
	b _08037EF6
	.align 2, 0
_08037EE0: .4byte 0x0000CFFF
_08037EE4:
	ldr r0, [r6, #0x74]
	ldr r1, _08037F14 @ =0xFFFF3000
	cmp r0, r1
	bgt _08037EF0
	str r1, [sp, #8]
	movs r2, #0xff
_08037EF0:
	cmp r2, #0
	bne _08037EF6
	b _0803802A
_08037EF6:
	ldr r1, [sp, #8]
	str r1, [r6, #0x74]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	str r0, [r7, #0x10]
	ldr r2, [sp, #4]
	ldr r0, [r2, #0x10]
	eors r0, r1
	str r0, [r2, #0x10]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
	.align 2, 0
_08037F14: .4byte 0xFFFF3000
_08037F18:
	movs r2, #0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08037F38
	ldr r0, [r6, #0x74]
	ldr r1, _08037F34 @ =0xFFFF8C00
	cmp r0, r1
	blt _08037F46
	str r1, [sp, #8]
	b _08037F4A
	.align 2, 0
_08037F34: .4byte 0xFFFF8C00
_08037F38:
	ldr r0, [r6, #0x74]
	movs r1, #0xe8
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08037F46
	str r1, [sp, #8]
	movs r2, #0xff
_08037F46:
	cmp r2, #0
	beq _0803802A
_08037F4A:
	ldr r3, [sp, #8]
	str r3, [r6, #0x74]
	movs r0, #0
	str r0, [r6, #0x7c]
	b _08038028
_08037F54:
	mov r0, sl
	adds r0, #0x7a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803802A
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803802A
	ldr r0, _08037F7C @ =0xFFFFFD00
	str r0, [r6, #0x7c]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
	.align 2, 0
_08037F7C: .4byte 0xFFFFFD00
_08037F80:
	movs r2, #0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08037FA4
	ldr r1, [r6, #0x74]
	ldr r0, _08037FA0 @ =0x0000CFFF
	cmp r1, r0
	ble _08037FB0
	movs r4, #0xd0
	lsls r4, r4, #8
	str r4, [sp, #8]
	b _08037FB4
	.align 2, 0
_08037FA0: .4byte 0x0000CFFF
_08037FA4:
	ldr r0, [r6, #0x74]
	ldr r1, _08037FDC @ =0xFFFF3000
	cmp r0, r1
	bgt _08037FB0
	str r1, [sp, #8]
	movs r2, #0xff
_08037FB0:
	cmp r2, #0
	beq _0803802A
_08037FB4:
	ldr r0, _08037FE0 @ =0xFFFFFE00
	str r0, [r6, #0x7c]
	mov r1, sl
	adds r1, #0x79
	movs r0, #0x13
	strb r0, [r1]
	ldr r0, [sp, #8]
	str r0, [r6, #0x74]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	str r0, [r7, #0x10]
	ldr r2, [sp, #4]
	ldr r0, [r2, #0x10]
	eors r0, r1
	str r0, [r2, #0x10]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
	.align 2, 0
_08037FDC: .4byte 0xFFFF3000
_08037FE0: .4byte 0xFFFFFE00
_08037FE4:
	movs r2, #0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08038004
	ldr r0, [r6, #0x74]
	ldr r1, _08038000 @ =0xFFFF8C00
	cmp r0, r1
	blt _08038014
	str r1, [r6, #0x74]
	str r2, [r6, #0x7c]
	b _08038018
	.align 2, 0
_08038000: .4byte 0xFFFF8C00
_08038004:
	ldr r0, [r6, #0x74]
	movs r1, #0xe8
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08038014
	str r1, [r6, #0x74]
	str r2, [r6, #0x7c]
	movs r2, #0xff
_08038014:
	cmp r2, #0
	beq _0803802A
_08038018:
	mov r0, sl
	adds r0, #0x7a
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803802A
	movs r0, #0
_08038028:
	strb r0, [r5]
_0803802A:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803803C
sub_803803C: @ 0x0803803C
	push {r4, r5, r6, lr}
	ldr r0, _08038108 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r2, _0803810C @ =0x0300000C
	adds r4, r1, r2
	ldr r3, _08038110 @ =0x03000099
	adds r2, r1, r3
	movs r5, #0
	strb r5, [r2]
	str r5, [r0, #0x7c]
	ldr r2, _08038114 @ =0x03000080
	adds r0, r1, r2
	str r5, [r0]
	subs r3, #0x35
	adds r2, r1, r3
	movs r0, #2
	strb r0, [r2]
	ldr r0, _08038118 @ =0x03000065
	adds r1, r1, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0803811C @ =gCamera
	ldrh r0, [r1]
	strh r0, [r1, #0x18]
	adds r0, #0xf0
	strh r0, [r1, #0x1a]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r0, [r4, #0x10]
	ldr r1, _08038120 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r3, _08038124 @ =gPlayer
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080380AA
	ldr r2, _08038128 @ =gDispCnt
	ldrh r0, [r2]
	ldr r1, _0803812C @ =0x00007FFF
	ands r1, r0
	ldr r0, _08038130 @ =gWinRegs
	strh r5, [r0, #0xa]
	ldr r0, _08038134 @ =gBldRegs
	strh r5, [r0]
	strh r5, [r0, #4]
	ldr r0, _08038138 @ =0x00001FFF
	ands r1, r0
	strh r1, [r2]
_080380AA:
	strh r5, [r3, #0xc]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r3, #0x10]
	strh r5, [r3, #0x38]
	strh r5, [r3, #0x3a]
	ldr r2, _0803813C @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08038140 @ =gLevelScore
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _08038144 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _080380F6
	ldr r0, _08038148 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _080380F6
	ldr r1, _0803814C @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080380F6:
	bl sub_8038154
	ldr r0, _08038108 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08038150 @ =sub_8038154
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038108: .4byte gCurTask
_0803810C: .4byte 0x0300000C
_08038110: .4byte 0x03000099
_08038114: .4byte 0x03000080
_08038118: .4byte 0x03000065
_0803811C: .4byte gCamera
_08038120: .4byte 0xFFFFFE7F
_08038124: .4byte gPlayer
_08038128: .4byte gDispCnt
_0803812C: .4byte 0x00007FFF
_08038130: .4byte gWinRegs
_08038134: .4byte gBldRegs
_08038138: .4byte 0x00001FFF
_0803813C: .4byte gUnknown_03005004
_08038140: .4byte gLevelScore
_08038144: .4byte 0x0000C350
_08038148: .4byte gGameMode
_0803814C: .4byte gNumLives
_08038150: .4byte sub_8038154

	thumb_func_start sub_8038154
sub_8038154: @ 0x08038154
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r5, #0
	movs r7, #0
	ldr r4, _08038244 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0xc
	adds r0, r0, r3
	mov r8, r0
	ldr r1, _08038248 @ =0x03000044
	adds r1, r1, r3
	mov sb, r1
	ldr r2, _0803824C @ =0x03000099
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803822C
	ldr r5, _08038250 @ =0x03000080
	adds r2, r3, r5
	cmp r0, #0
	bne _08038192
	ldr r0, [r2]
	adds r0, #0x10
	str r0, [r2]
_08038192:
	ldr r0, [r6, #0x74]
	ldr r1, [r6, #0x7c]
	adds r0, r0, r1
	str r0, [r6, #0x74]
	ldr r1, [r6, #0x78]
	ldr r2, [r2]
	adds r1, r1, r2
	str r1, [r6, #0x78]
	ldr r5, _08038254 @ =0x03000088
	adds r2, r3, r5
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _08038258 @ =0x0300008A
	adds r0, r3, r2
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r1, _0803825C @ =0x0300008C
	adds r0, r3, r1
	strh r5, [r0]
	adds r2, #4
	adds r0, r3, r2
	strh r7, [r0]
	adds r1, #6
	adds r0, r3, r1
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080381E4
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_8038420
_080381E4:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	ldr r4, [r4]
	ldrh r1, [r4, #6]
	ldr r2, _08038260 @ =0x0300000C
	adds r1, r1, r2
	ldr r3, _08038264 @ =gCamera
	ldrh r2, [r3]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x16]
	ldrh r2, [r3, #2]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x18]
	ldrh r0, [r4, #6]
	ldr r1, _08038260 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	mov r0, r8
	bl DisplaySprite
	mov r0, sb
	bl DisplaySprite
_0803822C:
	adds r0, r6, #0
	adds r0, #0x99
	ldrb r4, [r0]
	mov sb, r0
	cmp r4, #1
	beq _08038332
	cmp r4, #1
	bgt _08038268
	cmp r4, #0
	beq _08038270
	b _0803840C
	.align 2, 0
_08038244: .4byte gCurTask
_08038248: .4byte 0x03000044
_0803824C: .4byte 0x03000099
_08038250: .4byte 0x03000080
_08038254: .4byte 0x03000088
_08038258: .4byte 0x0300008A
_0803825C: .4byte 0x0300008C
_08038260: .4byte 0x0300000C
_08038264: .4byte gCamera
_08038268:
	cmp r4, #2
	bne _0803826E
	b _08038404
_0803826E:
	b _0803840C
_08038270:
	movs r2, #0x92
	adds r2, r2, r6
	mov r8, r2
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x14
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08038314 @ =sub_803FD5C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	blt _08038298
	b _0803840C
_08038298:
	lsls r1, r0, #8
	ldr r0, [r6, #0x78]
	adds r0, r0, r1
	str r0, [r6, #0x78]
	adds r2, r6, #0
	adds r2, #0x80
	ldr r1, [r2]
	asrs r0, r1, #2
	subs r0, r0, r1
	str r0, [r2]
	ldr r1, _08038318 @ =0xFFFFFF00
	cmp r0, r1
	bgt _080382B4
	b _0803840C
_080382B4:
	str r4, [r2]
	movs r0, #0xf0
	mov r5, r8
	strh r0, [r5]
	mov r1, sb
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _0803831C @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803832C
	ldr r0, _08038320 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	ble _0803832C
	ldr r1, _08038324 @ =gUnknown_03005160
	ldrb r0, [r1, #0x1d]
	cmp r0, #0x7f
	bne _0803832C
	ldrh r2, [r1, #8]
	cmp r2, #0xc
	bls _0803832C
	ldrh r0, [r1, #0xa]
	cmp r0, #0xc
	bls _0803832C
	ldrh r0, [r1, #0xc]
	cmp r0, #0xc
	bls _0803832C
	ldrh r0, [r1, #0xe]
	cmp r0, #0xc
	bls _0803832C
	cmp r2, #0xf
	bne _0803830C
	ldr r0, _08038328 @ =gUnknown_03005124
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	beq _0803832C
_0803830C:
	bl sub_803A54C
	b _0803840C
	.align 2, 0
_08038314: .4byte sub_803FD5C
_08038318: .4byte 0xFFFFFF00
_0803831C: .4byte gSelectedCharacter
_08038320: .4byte gCurrentLevel
_08038324: .4byte gUnknown_03005160
_08038328: .4byte gUnknown_03005124
_0803832C:
	bl sub_803A594
	b _0803840C
_08038332:
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803840C
	ldr r0, _080383EC @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r6, r5, #0x10
	lsls r2, r7, #0x10
	cmp r0, #0
	bne _080383A2
	ldr r0, _080383F0 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	ble _080383A2
	ldr r1, _080383F4 @ =gUnknown_03005160
	ldrb r0, [r1, #0x1d]
	cmp r0, #0x7f
	bne _080383A2
	ldrh r3, [r1, #8]
	cmp r3, #0xc
	bls _080383A2
	ldrh r0, [r1, #0xa]
	cmp r0, #0xc
	bls _080383A2
	ldrh r0, [r1, #0xc]
	cmp r0, #0xc
	bls _080383A2
	ldrh r0, [r1, #0xe]
	cmp r0, #0xc
	bls _080383A2
	cmp r3, #0xf
	bne _0803838E
	ldr r0, _080383F8 @ =gUnknown_03005124
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	beq _080383A2
_0803838E:
	lsls r5, r5, #0x10
	asrs r0, r5, #0x10
	lsls r4, r7, #0x10
	ldr r2, _080383FC @ =0xFFF80000
	adds r1, r4, r2
	asrs r1, r1, #0x10
	bl sub_8015C5C
	adds r6, r5, #0
	adds r2, r4, #0
_080383A2:
	ldr r1, _08038400 @ =gUnknown_03005040
	movs r0, #0x36
	strb r0, [r1, #1]
	asrs r4, r6, #0x10
	lsls r5, r4, #8
	mov r8, r5
	asrs r5, r2, #0x10
	adds r1, r5, #0
	subs r1, #0x18
	lsls r1, r1, #8
	mov r0, r8
	bl sub_8017540
	adds r0, r4, #0
	subs r0, #0x10
	lsls r0, r0, #8
	lsls r6, r5, #8
	adds r1, r6, #0
	bl sub_8017540
	adds r4, #0x10
	lsls r4, r4, #8
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_8017540
	adds r5, #0x18
	lsls r5, r5, #8
	mov r0, r8
	adds r1, r5, #0
	bl sub_8017540
	mov r1, sb
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0803840C
	.align 2, 0
_080383EC: .4byte gSelectedCharacter
_080383F0: .4byte gCurrentLevel
_080383F4: .4byte gUnknown_03005160
_080383F8: .4byte gUnknown_03005124
_080383FC: .4byte 0xFFF80000
_08038400: .4byte gUnknown_03005040
_08038404:
	ldr r0, _0803841C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0803840C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803841C: .4byte gCurTask

	thumb_func_start sub_8038420
sub_8038420: @ 0x08038420
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _0803852C @ =gPseudoRandom
	mov sb, r0
	ldr r0, [r0]
	ldr r7, _08038530 @ =0x00196225
	muls r0, r7, r0
	ldr r1, _08038534 @ =0x3C6EF35F
	mov sl, r1
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r4, #7
	ands r4, r0
	ldr r0, _08038538 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	ldr r2, _0803853C @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08038540 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _08038544 @ =sub_80177EC
	str r0, [sp]
	mov r0, r8
	bl sub_801769C
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r1, r3
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r0, r5, #8
	str r0, [r3, #0x30]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov ip, r6
	mov r0, ip
	adds r0, #0x10
	lsls r0, r0, #8
	str r0, [r3, #0x34]
	mov r6, r8
	str r6, [r3, #0x10]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r3, #0x1a]
	movs r0, #5
	strh r0, [r3, #0x3e]
	ldr r0, _08038548 @ =0x03000040
	adds r1, r1, r0
	movs r0, #0x20
	strh r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	adds r4, r0, #0
	muls r4, r7, r4
	add r4, sl
	str r4, [r1]
	ldr r6, _0803854C @ =gSineTable
	mov r8, r6
	ldr r1, _08038550 @ =0x000001FF
	ands r1, r4
	lsls r0, r1, #1
	add r0, r8
	movs r6, #0
	ldrsh r2, [r0, r6]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x3a]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	add r1, r8
	movs r6, #0
	ldrsh r1, [r1, r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x38]
	adds r1, r4, #0
	muls r1, r7, r1
	add r1, sl
	mov r0, sb
	str r1, [r0]
	movs r0, #0x3f
	ands r0, r1
	adds r5, r5, r0
	subs r5, #0x20
	lsls r5, r5, #8
	movs r0, #0xfc
	lsls r0, r0, #0xe
	ands r1, r0
	asrs r1, r1, #0x10
	subs r1, #0x20
	mov r0, ip
	subs r6, r0, r1
	lsls r6, r6, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8017540
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803852C: .4byte gPseudoRandom
_08038530: .4byte 0x00196225
_08038534: .4byte 0x3C6EF35F
_08038538: .4byte gUnknown_080BB434
_0803853C: .4byte gUnknown_080BB41C
_08038540: .4byte gUnknown_080BB42C
_08038544: .4byte sub_80177EC
_08038548: .4byte 0x03000040
_0803854C: .4byte gSineTable
_08038550: .4byte 0x000001FF

	thumb_func_start sub_8038554
sub_8038554: @ 0x08038554
	push {r4, r5, lr}
	ldr r0, _08038574 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #8]
	cmp r0, #8
	bls _0803856A
	b _08038858
_0803856A:
	lsls r0, r0, #2
	ldr r1, _08038578 @ =_0803857C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08038574: .4byte gCurTask
_08038578: .4byte _0803857C
_0803857C: @ jump table
	.4byte _080385A0 @ case 0
	.4byte _080385F0 @ case 1
	.4byte _08038638 @ case 2
	.4byte _08038668 @ case 3
	.4byte _08038690 @ case 4
	.4byte _080386D4 @ case 5
	.4byte _08038788 @ case 6
	.4byte _080387CC @ case 7
	.4byte _08038820 @ case 8
_080385A0:
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _080385AC
	subs r0, #1
	strh r0, [r4, #6]
	b _08038858
_080385AC:
	ldr r2, _080385DC @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080385BA
	b _08038858
_080385BA:
	movs r0, #0x10
	strh r0, [r2, #0x38]
	ldr r2, _080385E0 @ =gUnknown_03005A0C
	ldr r1, _080385E4 @ =gCollisionTable
	ldr r0, _080385E8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r1, _080385EC @ =gCamera
	ldrh r0, [r0, #0x1c]
	strh r0, [r1, #0x1a]
	b _08038804
	.align 2, 0
_080385DC: .4byte gPlayer
_080385E0: .4byte gUnknown_03005A0C
_080385E4: .4byte gCollisionTable
_080385E8: .4byte gCurrentLevel
_080385EC: .4byte gCamera
_080385F0:
	ldr r5, _0803862C @ =gPlayer
	ldr r1, [r5]
	ldr r0, _08038630 @ =0x000E5FFF
	cmp r1, r0
	bgt _080385FC
	b _08038858
_080385FC:
	movs r0, #0x20
	strh r0, [r5, #0x38]
	movs r0, #0xc
	strh r0, [r4, #6]
	bl sub_8038C20
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	ldr r3, _08038634 @ =gCamera
	movs r1, #0x14
	ldrsh r0, [r3, r1]
	movs r2, #0x16
	ldrsh r1, [r3, r2]
	ldr r2, [r5]
	asrs r2, r2, #8
	subs r2, #0x60
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r5, #0x1a
	ldrsh r3, [r3, r5]
	bl sub_80171BC
	b _08038858
	.align 2, 0
_0803862C: .4byte gPlayer
_08038630: .4byte 0x000E5FFF
_08038634: .4byte gCamera
_08038638:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08038648
	b _08038858
_08038648:
	ldr r2, _08038664 @ =gPlayer
	strh r0, [r2, #0x38]
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x34
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x3c
	strh r0, [r4, #6]
	b _08038804
	.align 2, 0
_08038664: .4byte gPlayer
_08038668:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08038676
	b _08038858
_08038676:
	ldr r0, _08038688 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _0803868C @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	strh r0, [r4, #6]
	b _08038804
	.align 2, 0
_08038688: .4byte gRingCount
_0803868C: .4byte gCourseTime
_08038690:
	ldr r3, _080386CC @ =gPlayer
	adds r1, r3, #0
	adds r1, #0x46
	movs r0, #0x3c
	strh r0, [r1]
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080386AA
	b _08038858
_080386AA:
	subs r1, #6
	movs r0, #0x32
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r3, #4]
	ldr r1, _080386D0 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r3, #4]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0xc]
	strh r2, [r4, #6]
	b _08038804
	.align 2, 0
_080386CC: .4byte gPlayer
_080386D0: .4byte 0xFFFFF000
_080386D4:
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x22
	bne _080386E6
	bl sub_8038B38
_080386E6:
	ldrh r0, [r4, #6]
	cmp r0, #0x99
	bls _08038704
	ldr r0, _08038700 @ =gPlayer
	adds r0, #0x40
	movs r1, #0x33
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0xc]
	movs r0, #0x78
	strh r0, [r4, #6]
	b _08038804
	.align 2, 0
_08038700: .4byte gPlayer
_08038704:
	cmp r0, #0x21
	bls _0803873C
	ldrh r0, [r4, #0xe]
	adds r0, #0x10
	ldr r1, _08038730 @ =0x000003FF
	ands r0, r1
	strh r0, [r4, #0xe]
	ldr r1, _08038734 @ =gSineTable
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _08038738 @ =gPlayer
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	asrs r1, r1, #0x1b
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r2, #4]
	b _08038858
	.align 2, 0
_08038730: .4byte 0x000003FF
_08038734: .4byte gSineTable
_08038738: .4byte gPlayer
_0803873C:
	cmp r0, #0x1f
	bls _08038764
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	ldrh r1, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldr r2, _08038760 @ =gPlayer
	movs r3, #0xc
	ldrsh r1, [r4, r3]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	asrs r0, r0, #8
	strh r0, [r4, #0xa]
	b _08038858
	.align 2, 0
_08038760: .4byte gPlayer
_08038764:
	cmp r0, #0x19
	bls _08038858
	ldr r5, _08038780 @ =0xFFFFFE80
	adds r0, r5, #0
	ldrh r1, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldr r2, _08038784 @ =gPlayer
	movs r3, #0xc
	ldrsh r1, [r4, r3]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	b _08038858
	.align 2, 0
_08038780: .4byte 0xFFFFFE80
_08038784: .4byte gPlayer
_08038788:
	ldr r2, _080387A8 @ =gPlayer
	ldr r1, [r2]
	movs r0, #0xf2
	lsls r0, r0, #0xc
	cmp r1, r0
	bgt _080387AC
	ldrh r0, [r4, #0xc]
	adds r0, #0x80
	strh r0, [r4, #0xc]
	movs r5, #0xc
	ldrsh r1, [r4, r5]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	b _080387B6
	.align 2, 0
_080387A8: .4byte gPlayer
_080387AC:
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r2, #0x10]
_080387B6:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08038858
	bl sub_8038D2C
	movs r0, #0xb4
	strh r0, [r4, #6]
	b _08038804
_080387CC:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08038858
	ldr r1, _0803880C @ =gWinRegs
	ldr r0, _08038810 @ =0x00003F3F
	strh r0, [r1, #8]
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldr r1, _08038814 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r3, [r1, #4]
	ldr r2, _08038818 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	orrs r0, r1
	ldr r1, _0803881C @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	strh r3, [r4, #6]
_08038804:
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	b _08038858
	.align 2, 0
_0803880C: .4byte gWinRegs
_08038810: .4byte 0x00003F3F
_08038814: .4byte gBldRegs
_08038818: .4byte gDispCnt
_0803881C: .4byte 0x0000BFFF
_08038820:
	ldrh r0, [r4, #6]
	adds r2, r0, #1
	strh r2, [r4, #6]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x80
	bls _08038850
	movs r0, #0x80
	lsls r0, r0, #6
	ldr r1, _08038848 @ =0x00002FFF
	bl TasksDestroyInPriorityRange
	ldr r0, _0803884C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_803D724
	b _08038858
	.align 2, 0
_08038848: .4byte 0x00002FFF
_0803884C: .4byte gCurTask
_08038850:
	ldr r1, _08038880 @ =gBldRegs
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x13
	strh r0, [r1, #4]
_08038858:
	ldr r0, _08038884 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08038912
	ldrb r0, [r4, #8]
	cmp r0, #0
	blt _08038900
	cmp r0, #4
	bgt _08038900
	ldrb r2, [r4, #9]
	cmp r2, #1
	beq _080388B8
	cmp r2, #1
	bgt _08038888
	cmp r2, #0
	beq _08038892
	b _08038912
	.align 2, 0
_08038880: .4byte gBldRegs
_08038884: .4byte gNumSingleplayerCharacters
_08038888:
	cmp r2, #2
	beq _080388D4
	cmp r2, #3
	beq _080388F4
	b _08038912
_08038892:
	ldr r3, _080388B0 @ =gPartner
	ldr r1, [r3]
	ldr r0, _080388B4 @ =0x000E2FFF
	cmp r1, r0
	ble _08038912
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r3, #0x10]
	strh r2, [r3, #0x3a]
	movs r0, #0x20
	strh r0, [r3, #0x38]
	b _080388C6
	.align 2, 0
_080388B0: .4byte gPartner
_080388B4: .4byte 0x000E2FFF
_080388B8:
	ldr r1, _080388D0 @ =gPartner
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	cmp r0, #0x80
	bgt _08038912
	movs r0, #0
	strh r0, [r1, #0x38]
_080388C6:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	b _08038912
	.align 2, 0
_080388D0: .4byte gPartner
_080388D4:
	ldr r2, _080388FC @ =gPartner
	adds r0, r2, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080388F4
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r2, #0x10]
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
_080388F4:
	ldr r0, _080388FC @ =gPartner
	bl sub_80472AC
	b _08038912
	.align 2, 0
_080388FC: .4byte gPartner
_08038900:
	ldr r0, _08038918 @ =gPartner
	adds r1, r0, #0
	adds r1, #0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x3d
	beq _08038912
	movs r0, #0x3d
	strb r0, [r1]
_08038912:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038918: .4byte gPartner

	thumb_func_start sub_803891C
sub_803891C: @ 0x0803891C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080389D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	ldr r1, _080389DC @ =0x0000FFFF
	ands r0, r1
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803898C
	ldr r5, _080389E0 @ =gPseudoRandom
	ldr r0, [r5]
	ldr r2, _080389E4 @ =0x00196225
	mov sb, r2
	mov r4, sb
	muls r4, r0, r4
	ldr r0, _080389E8 @ =0x3C6EF35F
	mov r8, r0
	add r4, r8
	str r4, [r5]
	adds r0, r4, #0
	movs r1, #0xf0
	bl __modsi3
	ldr r6, _080389EC @ =gCamera
	ldrh r1, [r6]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	mov r0, sb
	muls r0, r4, r0
	add r0, r8
	str r0, [r5]
	movs r1, #0xa0
	bl __modsi3
	ldrh r1, [r6, #2]
	adds r1, r1, r0
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_8038420
_0803898C:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	ldrh r1, [r7]
	ldr r4, _080389DC @ =0x0000FFFF
	ands r0, r4
	cmp r0, r1
	blo _080389C6
	movs r0, #0
	strh r0, [r7, #2]
	subs r0, r1, #2
	strh r0, [r7]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _080389B0
	movs r0, #4
	strh r0, [r7]
_080389B0:
	ldr r1, _080389F0 @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	subs r0, #0x30
	ldr r1, [r1, #4]
	lsls r1, r1, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl sub_8038420
_080389C6:
	ldrb r0, [r7, #8]
	cmp r0, #1
	beq _08038A48
	cmp r0, #1
	bgt _080389F4
	cmp r0, #0
	beq _080389FA
	b _08038B22
	.align 2, 0
_080389D8: .4byte gCurTask
_080389DC: .4byte 0x0000FFFF
_080389E0: .4byte gPseudoRandom
_080389E4: .4byte 0x00196225
_080389E8: .4byte 0x3C6EF35F
_080389EC: .4byte gCamera
_080389F0: .4byte gPlayer
_080389F4:
	cmp r0, #2
	beq _08038AA4
	b _08038B22
_080389FA:
	ldrh r0, [r7, #6]
	cmp r0, #0
	beq _08038A06
	subs r0, #1
	strh r0, [r7, #6]
	b _08038B22
_08038A06:
	ldr r2, _08038A34 @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08038A14
	b _08038B22
_08038A14:
	movs r0, #0x10
	strh r0, [r2, #0x38]
	ldr r2, _08038A38 @ =gUnknown_03005A0C
	ldr r1, _08038A3C @ =gCollisionTable
	ldr r0, _08038A40 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r1, _08038A44 @ =gCamera
	ldrh r0, [r0, #0x1c]
	strh r0, [r1, #0x1a]
	b _08038A7E
	.align 2, 0
_08038A34: .4byte gPlayer
_08038A38: .4byte gUnknown_03005A0C
_08038A3C: .4byte gCollisionTable
_08038A40: .4byte gCurrentLevel
_08038A44: .4byte gCamera
_08038A48:
	ldr r0, _08038A88 @ =gPlayer
	ldr r1, [r0]
	ldr r0, _08038A8C @ =0x000BFFFF
	cmp r1, r0
	ble _08038B22
	ldr r1, _08038A90 @ =gWinRegs
	movs r3, #0
	ldr r0, _08038A94 @ =0x00003F3F
	strh r0, [r1, #8]
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldr r1, _08038A98 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r3, [r1, #4]
	ldr r2, _08038A9C @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	ldr r1, _08038AA0 @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	strh r3, [r7, #6]
_08038A7E:
	ldrb r0, [r7, #8]
	adds r0, #1
	strb r0, [r7, #8]
	b _08038B22
	.align 2, 0
_08038A88: .4byte gPlayer
_08038A8C: .4byte 0x000BFFFF
_08038A90: .4byte gWinRegs
_08038A94: .4byte 0x00003F3F
_08038A98: .4byte gBldRegs
_08038A9C: .4byte gDispCnt
_08038AA0: .4byte 0x0000BFFF
_08038AA4:
	ldrh r0, [r7, #6]
	adds r2, r0, #1
	movs r1, #0
	strh r2, [r7, #6]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x80
	bls _08038B10
	ldr r2, _08038AF4 @ =gPlayer
	strh r1, [r2, #0x38]
	strh r1, [r2, #8]
	strh r1, [r2, #0xa]
	strh r1, [r2, #0xc]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #6
	ldr r1, _08038AF8 @ =0x00002FFF
	bl TasksDestroyInPriorityRange
	ldr r0, _08038AFC @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08038B00 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	ldr r0, _08038B04 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r2, _08038B08 @ =gBldRegs
	ldrh r1, [r2]
	ldr r0, _08038B0C @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	b _08038B22
	.align 2, 0
_08038AF4: .4byte gPlayer
_08038AF8: .4byte 0x00002FFF
_08038AFC: .4byte gRingCount
_08038B00: .4byte gCourseTime
_08038B04: .4byte gCurTask
_08038B08: .4byte gBldRegs
_08038B0C: .4byte 0x0000FFEF
_08038B10:
	ldr r1, _08038B30 @ =gBldRegs
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x13
	strh r0, [r1, #4]
	ldr r1, _08038B34 @ =gCamera
	ldrh r0, [r7, #6]
	lsrs r0, r0, #1
	rsbs r0, r0, #0
	strh r0, [r1, #0xc]
_08038B22:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038B30: .4byte gBldRegs
_08038B34: .4byte gCamera

	thumb_func_start sub_8038B38
sub_8038B38: @ 0x08038B38
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	movs r5, #0xc0
	lsls r5, r5, #0x12
	ldr r0, _08038BB0 @ =sub_8038BC8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08038BB4 @ =sub_803A5EC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	adds r5, r4, r5
	movs r0, #0
	mov r8, r0
	movs r6, #0
	movs r0, #0xf
	strh r0, [r5, #0x30]
	movs r0, #0x38
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	movs r0, #0xc7
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	ldr r0, _08038BB8 @ =0x03000020
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08038BBC @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08038BC0 @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08038BC4 @ =0x03000025
	adds r4, r4, r0
	mov r0, r8
	strb r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038BB0: .4byte sub_8038BC8
_08038BB4: .4byte sub_803A5EC
_08038BB8: .4byte 0x03000020
_08038BBC: .4byte 0x03000021
_08038BC0: .4byte 0x03000022
_08038BC4: .4byte 0x03000025

	thumb_func_start sub_8038BC8
sub_8038BC8: @ 0x08038BC8
	push {r4, r5, lr}
	ldr r5, _08038C14 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r3, _08038C18 @ =gPlayer
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r2, _08038C1C @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrh r0, [r4, #0x30]
	subs r0, #1
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08038C0C
	ldr r0, [r5]
	bl TaskDestroy
_08038C0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038C14: .4byte gCurTask
_08038C18: .4byte gPlayer
_08038C1C: .4byte gCamera

	thumb_func_start sub_8038C20
sub_8038C20: @ 0x08038C20
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r0, _08038CE4 @ =sub_8038E34
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08038CE8 @ =sub_803A600
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r0, _08038CEC @ =0x03000050
	adds r1, r4, r0
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r0, _08038CF0 @ =0x00000EF4
	strh r0, [r1]
	ldr r0, _08038CF4 @ =0x03000052
	adds r1, r4, r0
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r1]
	str r6, [r5, #0x54]
	str r6, [r5, #0x58]
	ldr r0, _08038CF8 @ =0x0300005C
	adds r1, r4, r0
	ldr r0, _08038CFC @ =0x0000FFF8
	strh r0, [r1]
	ldr r0, _08038D00 @ =0x0300005E
	adds r1, r4, r0
	movs r0, #4
	strh r0, [r1]
	ldr r0, _08038D04 @ =0x0300004A
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, _08038D08 @ =0x0300004C
	adds r1, r4, r0
	ldr r0, _08038D0C @ =0x0000FFFF
	strh r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r5, #0x3c]
	movs r0, #4
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _08038D10 @ =0x000002DB
	strh r0, [r5, #0xa]
	ldr r1, _08038D14 @ =0x03000020
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08038D18 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08038D1C @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08038D20 @ =0x03000025
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	ldr r0, _08038D24 @ =0x00002030
	str r0, [r5, #0x10]
	ldr r0, _08038D28 @ =0x03000030
	adds r4, r4, r0
	strh r6, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038CE4: .4byte sub_8038E34
_08038CE8: .4byte sub_803A600
_08038CEC: .4byte 0x03000050
_08038CF0: .4byte 0x00000EF4
_08038CF4: .4byte 0x03000052
_08038CF8: .4byte 0x0300005C
_08038CFC: .4byte 0x0000FFF8
_08038D00: .4byte 0x0300005E
_08038D04: .4byte 0x0300004A
_08038D08: .4byte 0x0300004C
_08038D0C: .4byte 0x0000FFFF
_08038D10: .4byte 0x000002DB
_08038D14: .4byte 0x03000020
_08038D18: .4byte 0x03000021
_08038D1C: .4byte 0x03000022
_08038D20: .4byte 0x03000025
_08038D24: .4byte 0x00002030
_08038D28: .4byte 0x03000030

	thumb_func_start sub_8038D2C
sub_8038D2C: @ 0x08038D2C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r0, _08038DF0 @ =sub_8038E34
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08038DF4 @ =sub_803A600
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r0, _08038DF8 @ =0x03000050
	adds r1, r4, r0
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r0, _08038DFC @ =0x00000EF4
	strh r0, [r1]
	ldr r0, _08038E00 @ =0x03000052
	adds r1, r4, r0
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r1]
	str r6, [r5, #0x54]
	str r6, [r5, #0x58]
	ldr r0, _08038E04 @ =0x0300005C
	adds r1, r4, r0
	ldr r0, _08038E08 @ =0x0000FFF4
	strh r0, [r1]
	ldr r0, _08038E0C @ =0x0300005E
	adds r1, r4, r0
	movs r0, #6
	strh r0, [r1]
	ldr r0, _08038E10 @ =0x0300004A
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, _08038E14 @ =0x0300004C
	adds r1, r4, r0
	ldr r0, _08038E18 @ =0x0000FFFF
	strh r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r5, #0x3c]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	movs r0, #0xb7
	lsls r0, r0, #2
	strh r0, [r5, #0xa]
	ldr r1, _08038E1C @ =0x03000020
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08038E20 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08038E24 @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08038E28 @ =0x03000025
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	ldr r0, _08038E2C @ =0x00002030
	str r0, [r5, #0x10]
	ldr r0, _08038E30 @ =0x03000030
	adds r4, r4, r0
	strh r6, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038DF0: .4byte sub_8038E34
_08038DF4: .4byte sub_803A600
_08038DF8: .4byte 0x03000050
_08038DFC: .4byte 0x00000EF4
_08038E00: .4byte 0x03000052
_08038E04: .4byte 0x0300005C
_08038E08: .4byte 0x0000FFF4
_08038E0C: .4byte 0x0300005E
_08038E10: .4byte 0x0300004A
_08038E14: .4byte 0x0300004C
_08038E18: .4byte 0x0000FFFF
_08038E1C: .4byte 0x03000020
_08038E20: .4byte 0x03000021
_08038E24: .4byte 0x03000022
_08038E28: .4byte 0x03000025
_08038E2C: .4byte 0x00002030
_08038E30: .4byte 0x03000030

	thumb_func_start sub_8038E34
sub_8038E34: @ 0x08038E34
	push {r4, r5, r6, r7, lr}
	ldr r7, _08038EE8 @ =gCurTask
	ldr r0, [r7]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0x30
	adds r6, r2, r0
	ldr r1, _08038EEC @ =0x0300005C
	adds r0, r2, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	ldr r4, _08038EF0 @ =0x0300005E
	adds r1, r2, r4
	movs r4, #0
	ldrsh r3, [r1, r4]
	ldr r1, [r5, #0x58]
	adds r1, r1, r3
	str r1, [r5, #0x58]
	ldr r4, _08038EF4 @ =0x03000050
	adds r3, r2, r4
	asrs r0, r0, #8
	ldrh r3, [r3]
	adds r0, r0, r3
	adds r4, #2
	adds r3, r2, r4
	asrs r1, r1, #8
	ldrh r3, [r3]
	adds r1, r1, r3
	ldr r4, _08038EF8 @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r6, #6]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #8]
	ldr r0, _08038EFC @ =0x0300004A
	adds r1, r2, r0
	ldr r3, _08038F00 @ =0x0300004C
	adds r2, r2, r3
	ldrh r0, [r2]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #4
	cmp r0, r2
	bgt _08038EAA
	strh r2, [r1]
_08038EAA:
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r6, #2]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r6, #4]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl TransformSprite
	adds r0, r5, #0
	bl DisplaySprite
	ldrh r0, [r5, #0x3c]
	subs r0, #1
	strh r0, [r5, #0x3c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08038EE0
	ldr r0, [r7]
	bl TaskDestroy
_08038EE0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038EE8: .4byte gCurTask
_08038EEC: .4byte 0x0300005C
_08038EF0: .4byte 0x0300005E
_08038EF4: .4byte 0x03000050
_08038EF8: .4byte gCamera
_08038EFC: .4byte 0x0300004A
_08038F00: .4byte 0x0300004C

	thumb_func_start sub_8038F04
sub_8038F04: @ 0x08038F04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08039028 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r0, r0, r4
	mov sl, r0
	ldr r0, _0803902C @ =sub_8039264
	ldr r2, _08039030 @ =0x00002001
	ldr r1, _08039034 @ =sub_803A5D0
	str r1, [sp]
	movs r1, #0x7c
	movs r3, #0
	bl TaskCreate
	ldr r1, _08039038 @ =0x0300009C
	add r1, r8
	str r0, [r1]
	ldrh r5, [r0, #6]
	adds r4, r5, r4
	ldr r1, _0803903C @ =0x03000088
	add r1, r8
	mov r2, sl
	ldr r0, [r2, #0x74]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r2, _08039040 @ =0x03000074
	adds r1, r5, r2
	movs r6, #0
	strh r0, [r1]
	ldr r0, _08039044 @ =0x0300008A
	add r8, r0
	mov r1, sl
	ldr r0, [r1, #0x78]
	asrs r0, r0, #8
	mov r2, r8
	ldrh r2, [r2]
	adds r0, r0, r2
	ldr r2, _08039048 @ =0x03000076
	adds r1, r5, r2
	strh r0, [r1]
	str r6, [r4, #0x64]
	ldr r0, _0803904C @ =0xFFFFE900
	str r0, [r4, #0x68]
	str r6, [r4, #0x6c]
	str r6, [r4, #0x70]
	ldr r1, _08039050 @ =0x03000078
	adds r0, r5, r1
	movs r2, #0
	strb r2, [r0]
	adds r1, #1
	adds r0, r5, r1
	strb r2, [r0]
	ldr r2, _08039054 @ =0x0300007A
	adds r0, r5, r2
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4, #4]
	movs r2, #0xa0
	lsls r2, r2, #3
	strh r2, [r4, #0x1a]
	strh r6, [r4, #8]
	movs r0, #0xac
	lsls r0, r0, #2
	mov sb, r0
	mov r1, sb
	strh r1, [r4, #0xa]
	ldr r2, _08039058 @ =0x03000020
	adds r1, r5, r2
	movs r0, #8
	strb r0, [r1]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _0803905C @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08039060 @ =0x03000022
	adds r0, r5, r1
	movs r7, #0x10
	strb r7, [r0]
	adds r2, #5
	adds r0, r5, r2
	movs r1, #0
	strb r1, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	mov sl, r2
	str r2, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	str r0, [r4, #0x10]
	ldr r1, _08039064 @ =0x03000030
	adds r4, r5, r1
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4, #4]
	movs r2, #0xa0
	lsls r2, r2, #3
	strh r2, [r4, #0x1a]
	strh r6, [r4, #8]
	mov r0, sb
	strh r0, [r4, #0xa]
	ldr r2, _08039068 @ =0x03000050
	adds r1, r5, r2
	movs r0, #0xb
	strb r0, [r1]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _0803906C @ =0x03000051
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08039070 @ =0x03000052
	adds r0, r5, r1
	strb r7, [r0]
	adds r2, #5
	adds r5, r5, r2
	movs r0, #0
	strb r0, [r5]
	mov r1, sl
	str r1, [r4, #0x28]
	mov r2, r8
	str r2, [r4, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039028: .4byte gCurTask
_0803902C: .4byte sub_8039264
_08039030: .4byte 0x00002001
_08039034: .4byte sub_803A5D0
_08039038: .4byte 0x0300009C
_0803903C: .4byte 0x03000088
_08039040: .4byte 0x03000074
_08039044: .4byte 0x0300008A
_08039048: .4byte 0x03000076
_0803904C: .4byte 0xFFFFE900
_08039050: .4byte 0x03000078
_08039054: .4byte 0x0300007A
_08039058: .4byte 0x03000020
_0803905C: .4byte 0x03000021
_08039060: .4byte 0x03000022
_08039064: .4byte 0x03000030
_08039068: .4byte 0x03000050
_0803906C: .4byte 0x03000051
_08039070: .4byte 0x03000052

	thumb_func_start sub_8039074
sub_8039074: @ 0x08039074
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _0803908C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	cmp r2, #2
	beq _080390B0
	cmp r2, #2
	bgt _08039090
	cmp r2, #1
	beq _08039096
	b _080390F0
	.align 2, 0
_0803908C: .4byte gCurTask
_08039090:
	cmp r2, #3
	beq _080390C8
	b _080390F0
_08039096:
	ldr r1, _080390A8 @ =0x03000020
	adds r0, r3, r1
	movs r2, #4
	strb r2, [r0]
	ldr r0, _080390AC @ =0x03000050
	adds r1, r3, r0
	movs r0, #5
	b _080390D6
	.align 2, 0
_080390A8: .4byte 0x03000020
_080390AC: .4byte 0x03000050
_080390B0:
	ldr r1, _080390C0 @ =0x03000020
	adds r0, r3, r1
	strb r2, [r0]
	ldr r0, _080390C4 @ =0x03000050
	adds r1, r3, r0
	movs r0, #3
	b _080390D6
	.align 2, 0
_080390C0: .4byte 0x03000020
_080390C4: .4byte 0x03000050
_080390C8:
	ldr r1, _080390F4 @ =0x03000020
	adds r0, r3, r1
	movs r2, #6
	strb r2, [r0]
	ldr r0, _080390F8 @ =0x03000050
	adds r1, r3, r0
	movs r0, #7
_080390D6:
	strb r0, [r1]
	ldr r0, _080390FC @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08039100 @ =0x03000051
	adds r1, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08039104 @ =0x03000078
	adds r0, r3, r1
	strb r2, [r0]
_080390F0:
	bx lr
	.align 2, 0
_080390F4: .4byte 0x03000020
_080390F8: .4byte 0x03000050
_080390FC: .4byte 0x03000021
_08039100: .4byte 0x03000051
_08039104: .4byte 0x03000078

	thumb_func_start sub_8039108
sub_8039108: @ 0x08039108
	ldr r0, _08039124 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	ldr r0, _08039128 @ =0x03000020
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #4
	beq _08039132
	cmp r0, #4
	bgt _0803912C
	cmp r0, #2
	beq _08039144
	b _08039178
	.align 2, 0
_08039124: .4byte gCurTask
_08039128: .4byte 0x03000020
_0803912C:
	cmp r0, #6
	beq _08039154
	b _08039178
_08039132:
	movs r2, #0xe
	strb r2, [r1]
	ldr r0, _08039140 @ =0x03000050
	adds r1, r3, r0
	movs r0, #0x11
	b _0803915E
	.align 2, 0
_08039140: .4byte 0x03000050
_08039144:
	movs r2, #0xf
	strb r2, [r1]
	ldr r0, _08039150 @ =0x03000050
	adds r1, r3, r0
	movs r0, #0x12
	b _0803915E
	.align 2, 0
_08039150: .4byte 0x03000050
_08039154:
	movs r2, #0x10
	strb r2, [r1]
	ldr r0, _0803917C @ =0x03000050
	adds r1, r3, r0
	movs r0, #0x13
_0803915E:
	strb r0, [r1]
	ldr r0, _08039180 @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08039184 @ =0x03000051
	adds r1, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08039188 @ =0x03000078
	adds r0, r3, r1
	strb r2, [r0]
_08039178:
	bx lr
	.align 2, 0
_0803917C: .4byte 0x03000050
_08039180: .4byte 0x03000021
_08039184: .4byte 0x03000051
_08039188: .4byte 0x03000078

	thumb_func_start sub_803918C
sub_803918C: @ 0x0803918C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _080391C8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	adds r3, r4, #0
	adds r0, #0x30
	adds r0, r0, r2
	mov ip, r0
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08039252
	ldr r0, _080391CC @ =0x03000020
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, r5
	bne _080391D4
	ldr r0, _080391D0 @ =0x0300007A
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _0803925C
	.align 2, 0
_080391C8: .4byte gCurTask
_080391CC: .4byte 0x03000020
_080391D0: .4byte 0x0300007A
_080391D4:
	ldrb r0, [r1]
	subs r0, #8
	cmp r0, #8
	bhi _08039240
	lsls r0, r0, #2
	ldr r1, _080391E8 @ =_080391EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080391E8: .4byte _080391EC
_080391EC: @ jump table
	.4byte _08039210 @ case 0
	.4byte _08039220 @ case 1
	.4byte _08039230 @ case 2
	.4byte _08039240 @ case 3
	.4byte _08039240 @ case 4
	.4byte _08039240 @ case 5
	.4byte _08039210 @ case 6
	.4byte _08039220 @ case 7
	.4byte _08039230 @ case 8
_08039210:
	adds r1, r3, #0
	adds r1, #0x20
	movs r0, #0xa
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x20
	movs r0, #0xd
	b _0803923E
_08039220:
	adds r1, r3, #0
	adds r1, #0x20
	movs r0, #8
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x20
	movs r0, #0xb
	b _0803923E
_08039230:
	adds r1, r3, #0
	adds r1, #0x20
	movs r0, #9
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x20
	movs r0, #0xc
_0803923E:
	strb r0, [r1]
_08039240:
	adds r1, r3, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x21
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
_08039252:
	adds r2, r4, #0
	adds r2, #0x7a
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_0803925C:
	strb r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8039264
sub_8039264: @ 0x08039264
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r3, _080392C4 @ =gCurTask
	ldr r0, [r3]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r4, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	adds r6, r2, r1
	mov r8, r5
	ldr r0, _080392C8 @ =0x03000030
	adds r0, r0, r4
	mov sb, r0
	ldr r0, [r5, #0x10]
	ldr r1, _080392CC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
	mov r7, sb
	ldr r0, [r7, #0x10]
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r1, [r6, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r0, _080392D0 @ =0x03000031
	adds r2, r2, r0
	ldrb r1, [r2]
	adds r7, r3, #0
	cmp r1, #0
	beq _080392D8
	ldr r1, _080392D4 @ =0x03000025
	adds r0, r4, r1
	movs r1, #0xfe
	b _080392DC
	.align 2, 0
_080392C4: .4byte gCurTask
_080392C8: .4byte 0x03000030
_080392CC: .4byte 0xFFFFFBFF
_080392D0: .4byte 0x03000031
_080392D4: .4byte 0x03000025
_080392D8:
	ldr r3, _08039348 @ =0x03000025
	adds r0, r4, r3
_080392DC:
	strb r1, [r0]
	ldr r2, _0803934C @ =0x03000055
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x8c
	ldrh r0, [r0]
	adds r3, r5, #0
	adds r3, #0x74
	strh r0, [r3]
	adds r0, r6, #0
	adds r0, #0x8e
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x94
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov sl, r3
	str r1, [sp]
	str r0, [sp, #4]
	cmp r2, #7
	ble _08039354
	adds r4, r5, #0
	adds r4, #0x79
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803932A
	mov r0, r8
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #6
	beq _08039326
	bl sub_8039108
_08039326:
	movs r0, #0
	strb r0, [r4]
_0803932A:
	movs r0, #0
	str r0, [r5, #0x6c]
	str r0, [r5, #0x70]
	adds r0, r6, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803933C
	b _08039514
_0803933C:
	ldr r0, _08039350 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08039658
	.align 2, 0
_08039348: .4byte 0x03000025
_0803934C: .4byte 0x03000055
_08039350: .4byte gCurTask
_08039354:
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0x16
	bls _08039362
	b _08039514
_08039362:
	lsls r0, r1, #2
	ldr r1, _0803936C @ =_08039370
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803936C: .4byte _08039370
_08039370: @ jump table
	.4byte _08039514 @ case 0
	.4byte _080393CC @ case 1
	.4byte _080393F8 @ case 2
	.4byte _08039410 @ case 3
	.4byte _08039514 @ case 4
	.4byte _08039422 @ case 5
	.4byte _080394FC @ case 6
	.4byte _08039514 @ case 7
	.4byte _0803942C @ case 8
	.4byte _0803943E @ case 9
	.4byte _08039498 @ case 10
	.4byte _080394A4 @ case 11
	.4byte _08039514 @ case 12
	.4byte _080394B4 @ case 13
	.4byte _08039514 @ case 14
	.4byte _080394C0 @ case 15
	.4byte _080394D2 @ case 16
	.4byte _080394FC @ case 17
	.4byte _08039514 @ case 18
	.4byte _080394EC @ case 19
	.4byte _08039514 @ case 20
	.4byte _080394FC @ case 21
	.4byte _08039514 @ case 22
_080393CC:
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r3, _080393F4 @ =0x03000078
	adds r0, r0, r3
	movs r1, #8
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x7a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080393E8
	b _08039514
_080393E8:
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0x1e
	strh r0, [r1]
	b _0803950E
	.align 2, 0
_080393F4: .4byte 0x03000078
_080393F8:
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803940A
	b _08039514
_0803940A:
	movs r0, #0x80
	lsls r0, r0, #1
	b _0803950C
_08039410:
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x70]
	adds r0, r0, r1
	cmp r0, #0
	bge _0803941C
	b _08039514
_0803941C:
	movs r0, #0
	str r0, [r5, #0x68]
	b _0803950C
_08039422:
	ldr r0, _08039428 @ =0xFFFFFF00
	b _0803950C
	.align 2, 0
_08039428: .4byte 0xFFFFFF00
_0803942C:
	ldr r0, _08039460 @ =0xFFFFE900
	str r0, [r5, #0x68]
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_0803943E:
	adds r1, r6, #0
	adds r1, #0x9a
	ldrb r0, [r1]
	cmp r0, #0
	beq _08039514
	adds r2, r0, #0
	adds r1, r2, #0
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	cmp r2, #2
	beq _08039478
	cmp r2, #2
	bgt _08039464
	cmp r2, #1
	beq _0803946A
	b _08039514
	.align 2, 0
_08039460: .4byte 0xFFFFE900
_08039464:
	cmp r1, #3
	beq _08039488
	b _08039514
_0803946A:
	ldr r7, _08039474 @ =0x03000078
	adds r1, r0, r7
	movs r0, #8
	strb r0, [r1]
	b _08039514
	.align 2, 0
_08039474: .4byte 0x03000078
_08039478:
	ldr r2, _08039484 @ =0x03000078
	adds r1, r0, r2
	movs r0, #9
	strb r0, [r1]
	b _08039514
	.align 2, 0
_08039484: .4byte 0x03000078
_08039488:
	ldr r3, _08039494 @ =0x03000078
	adds r1, r0, r3
	movs r0, #0xa
	strb r0, [r1]
	b _08039514
	.align 2, 0
_08039494: .4byte 0x03000078
_08039498:
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r5, #0x70]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080394A4:
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x70]
	adds r0, r0, r1
	cmp r0, #0
	blt _08039514
	movs r0, #0
	str r0, [r5, #0x68]
	b _0803950C
_080394B4:
	adds r0, r6, #0
	adds r0, #0x9a
	ldrb r0, [r0]
	bl sub_8039074
	b _0803950E
_080394C0:
	bl sub_8039108
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0xa
	strh r0, [r1]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080394D2:
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08039514
	ldr r0, _080394E8 @ =0xFFFFFE00
	b _0803950C
	.align 2, 0
_080394E8: .4byte 0xFFFFFE00
_080394EC:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldr r0, _080394F8 @ =0xFFFFFE00
	b _0803950C
	.align 2, 0
_080394F8: .4byte 0xFFFFFE00
_080394FC:
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x70]
	adds r0, r0, r1
	ldr r1, _08039538 @ =0xFFFFE900
	cmp r0, r1
	bgt _08039514
	str r1, [r5, #0x68]
	movs r0, #0
_0803950C:
	str r0, [r5, #0x70]
_0803950E:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_08039514:
	ldr r0, [r5, #0x64]
	ldr r1, [r5, #0x6c]
	adds r0, r0, r1
	str r0, [r5, #0x64]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x70]
	adds r0, r0, r1
	str r0, [r5, #0x68]
	ldr r1, _08039538 @ =0xFFFFE900
	cmp r0, r1
	bgt _0803953C
	adds r0, r5, #0
	adds r0, #0x7a
	ldrb r2, [r0]
	movs r1, #4
	orrs r1, r2
	b _08039546
	.align 2, 0
_08039538: .4byte 0xFFFFE900
_0803953C:
	adds r0, r5, #0
	adds r0, #0x7a
	ldrb r2, [r0]
	movs r1, #0xfb
	ands r1, r2
_08039546:
	strb r1, [r0]
	adds r2, r0, #0
	ldr r0, [r5, #0x68]
	cmp r0, #0
	blt _08039558
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _0803955E
_08039558:
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_0803955E:
	strb r0, [r2]
	ldr r0, [r5, #0x64]
	asrs r0, r0, #8
	mov r7, sl
	ldrh r7, [r7]
	adds r0, r0, r7
	ldr r1, [r5, #0x68]
	asrs r1, r1, #8
	ldr r2, [sp]
	ldrh r2, [r2]
	adds r1, r1, r2
	ldr r3, _080395F8 @ =gCamera
	ldrh r2, [r3]
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	subs r2, r7, r2
	mov r0, r8
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	subs r0, r4, r0
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r3, sb
	strh r2, [r3, #0x16]
	ldrh r0, [r1, #0x18]
	strh r0, [r3, #0x18]
	adds r0, r5, #0
	adds r0, #0x78
	ldrb r0, [r0]
	bl sub_803918C
	adds r0, r6, #0
	adds r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039640
	adds r0, r6, #0
	adds r0, #0x95
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08039640
	ldr r1, [sp, #4]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #7
	bgt _08039640
	ldr r0, _080395FC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r0, r2
	adds r5, r7, #0
	ldr r3, _08039600 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _08039604 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803960C
	ldr r3, _08039608 @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803960E
	.align 2, 0
_080395F8: .4byte gCamera
_080395FC: .4byte gCurTask
_08039600: .4byte gPlayer
_08039604: .4byte gNumSingleplayerCharacters
_08039608: .4byte gPartner
_0803960C:
	movs r0, #0
_0803960E:
	cmp r7, #2
	beq _08039616
	cmp r0, #2
	bne _08039640
_08039616:
	ldr r0, _08039668 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	ldrh r2, [r0, #6]
	ldr r7, _0803966C @ =0x03000044
	adds r3, r2, r7
	ldr r0, _08039670 @ =0x03000064
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08039674 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r1, _08039678 @ =0x03000065
	adds r2, r2, r1
	movs r0, #0xff
	strb r0, [r2]
_08039640:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	mov r0, sb
	bl DisplaySprite
_08039658:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039668: .4byte gCurTask
_0803966C: .4byte 0x03000044
_08039670: .4byte 0x03000064
_08039674: .4byte 0xFFFFBFFF
_08039678: .4byte 0x03000065

	thumb_func_start sub_803967C
sub_803967C: @ 0x0803967C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r2, _080396F0 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080396F4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080396F8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #4
	ands r5, r0
	ldr r0, _080396FC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r7, r4, r6
	ldr r0, _08039700 @ =sub_80397A8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08039704 @ =sub_803A5EC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	adds r6, r2, r6
	ldr r3, _08039708 @ =0x03000088
	adds r0, r4, r3
	ldrh r1, [r0]
	subs r3, #0x48
	adds r0, r2, r3
	strh r1, [r0]
	ldr r0, _0803970C @ =0x0300008A
	adds r4, r4, r0
	ldrh r1, [r4]
	adds r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	ldr r0, [r7, #0x74]
	str r0, [r6, #0x34]
	ldr r0, [r7, #0x78]
	str r0, [r6, #0x38]
	cmp r5, #0
	beq _08039714
	ldr r1, _08039710 @ =0x03000044
	adds r0, r2, r1
	movs r1, #0x28
	strh r1, [r0]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r6, #0x3e]
	movs r2, #0xc0
	lsls r2, r2, #2
	b _08039726
	.align 2, 0
_080396F0: .4byte gPseudoRandom
_080396F4: .4byte 0x00196225
_080396F8: .4byte 0x3C6EF35F
_080396FC: .4byte gCurTask
_08039700: .4byte sub_80397A8
_08039704: .4byte sub_803A5EC
_08039708: .4byte 0x03000088
_0803970C: .4byte 0x0300008A
_08039710: .4byte 0x03000044
_08039714:
	ldr r3, _08039740 @ =0x03000044
	adds r0, r2, r3
	movs r1, #0x30
	strh r1, [r0]
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r6, #0x3e]
	movs r2, #0xc0
	lsls r2, r2, #1
_08039726:
	ldr r0, [r7, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08039744
	ldr r0, [r6, #0x34]
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r6, #0x34]
	strh r2, [r6, #0x3c]
	b _08039750
	.align 2, 0
_08039740: .4byte 0x03000044
_08039744:
	ldr r0, [r6, #0x34]
	ldr r3, _080397A0 @ =0xFFFFEC00
	adds r0, r0, r3
	str r0, [r6, #0x34]
	rsbs r0, r2, #0
	strh r0, [r6, #0x3c]
_08039750:
	movs r0, #4
	bl VramMalloc
	str r0, [r6, #4]
	movs r3, #0
	movs r2, #0
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r2, [r6, #8]
	ldr r0, _080397A4 @ =0x000002B2
	strh r0, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	strh r2, [r6, #0x14]
	strh r2, [r6, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	movs r0, #0x91
	bl m4aSongNumStart
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080397A0: .4byte 0xFFFFEC00
_080397A4: .4byte 0x000002B2

	thumb_func_start sub_80397A8
sub_80397A8: @ 0x080397A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08039888 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r3, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	mov sb, r4
	adds r1, #0x44
	adds r0, r3, r1
	ldrh r0, [r0]
	ldrh r2, [r4, #0x3e]
	adds r0, r0, r2
	strh r0, [r4, #0x3e]
	movs r5, #0x3c
	ldrsh r0, [r4, r5]
	ldr r1, [r4, #0x34]
	adds r1, r1, r0
	str r1, [r4, #0x34]
	movs r0, #0x3e
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r2
	str r0, [r4, #0x38]
	ldr r5, _0803988C @ =0x03000040
	adds r2, r3, r5
	asrs r1, r1, #8
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r2, _08039890 @ =0x03000042
	adds r3, r3, r2
	asrs r0, r0, #8
	ldrh r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08039894 @ =sub_803FD5C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _08039838
	lsls r0, r0, #8
	ldr r1, [r4, #0x38]
	adds r1, r1, r0
	str r1, [r4, #0x38]
	ldrh r0, [r4, #0x3e]
	rsbs r1, r0, #0
	movs r3, #0x3e
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _08039832
	adds r0, #3
_08039832:
	asrs r0, r0, #2
	adds r0, r1, r0
	strh r0, [r4, #0x3e]
_08039838:
	adds r0, r7, #0
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r5, r5, #0x10
	str r5, [sp, #4]
	lsls r6, r6, #0x10
	mov sl, r6
	cmp r0, #7
	bgt _080398DA
	ldr r0, _08039888 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r7, r0, r5
	asrs r6, r6, #0x10
	ldr r0, [sp, #4]
	asrs r5, r0, #0x10
	ldr r3, _08039898 @ =gPlayer
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	mov r8, r0
	ldr r0, _0803989C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080398A4
	ldr r3, _080398A0 @ =gPartner
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	b _080398A6
	.align 2, 0
_08039888: .4byte gCurTask
_0803988C: .4byte 0x03000040
_08039890: .4byte 0x03000042
_08039894: .4byte sub_803FD5C
_08039898: .4byte gPlayer
_0803989C: .4byte gNumSingleplayerCharacters
_080398A0: .4byte gPartner
_080398A4:
	movs r0, #0
_080398A6:
	mov r1, r8
	cmp r1, #2
	beq _080398B0
	cmp r0, #2
	bne _080398DA
_080398B0:
	ldr r0, _08039928 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r0, r0, r2
	ldrh r2, [r0, #6]
	ldr r5, _0803992C @ =0x03000044
	adds r3, r2, r5
	ldr r0, _08039930 @ =0x03000064
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08039934 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r1, _08039938 @ =0x03000065
	adds r2, r2, r1
	movs r0, #0xff
	strb r0, [r2]
_080398DA:
	ldr r2, _0803993C @ =gCamera
	ldrh r1, [r2]
	mov r3, sl
	asrs r0, r3, #0x10
	subs r0, r0, r1
	mov r5, sb
	strh r0, [r5, #0x16]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #4]
	asrs r0, r2, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	ldr r0, [r4, #0x34]
	movs r3, #0xd0
	lsls r3, r3, #8
	adds r0, r0, r3
	movs r1, #0xd0
	lsls r1, r1, #9
	cmp r0, r1
	bls _08039916
	ldr r0, _08039928 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08039916:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039928: .4byte gCurTask
_0803992C: .4byte 0x03000044
_08039930: .4byte 0x03000064
_08039934: .4byte 0xFFFFBFFF
_08039938: .4byte 0x03000065
_0803993C: .4byte gCamera

	thumb_func_start sub_8039940
sub_8039940: @ 0x08039940
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080399B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r7, r4, r5
	ldr r0, _080399B8 @ =sub_8039A64
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080399BC @ =sub_803A600
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	adds r6, r2, r5
	ldr r0, _080399C0 @ =0x03000088
	adds r1, r4, r0
	ldr r0, [r7, #0x74]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r1, _080399C4 @ =0x03000050
	adds r5, r2, r1
	movs r3, #0
	strh r0, [r5]
	ldr r0, _080399C8 @ =0x0300008A
	adds r4, r4, r0
	ldr r0, [r7, #0x78]
	asrs r0, r0, #8
	ldrh r4, [r4]
	adds r0, r0, r4
	ldr r4, _080399CC @ =0x03000052
	adds r1, r2, r4
	strh r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #4
	str r0, [r6, #0x40]
	ldr r0, _080399D0 @ =0x03000048
	adds r1, r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _080399D4 @ =0x0300004A
	adds r2, r2, r1
	strh r3, [r2]
	ldr r0, [r7, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080399D8
	ldrh r0, [r5]
	adds r0, #0x1a
	b _080399DC
	.align 2, 0
_080399B4: .4byte gCurTask
_080399B8: .4byte sub_8039A64
_080399BC: .4byte sub_803A600
_080399C0: .4byte 0x03000088
_080399C4: .4byte 0x03000050
_080399C8: .4byte 0x0300008A
_080399CC: .4byte 0x03000052
_080399D0: .4byte 0x03000048
_080399D4: .4byte 0x0300004A
_080399D8:
	ldrh r0, [r5]
	subs r0, #0x1a
_080399DC:
	strh r0, [r5]
	movs r4, #0
	movs r5, #0
	movs r0, #0x11
	strh r0, [r6, #0x3c]
	adds r0, r6, #0
	adds r0, #0x61
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	movs r0, #0x40
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r5, [r6, #8]
	ldr r0, _08039A48 @ =0x000002B1
	strh r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	strb r4, [r0]
	strh r5, [r6, #0x14]
	strh r5, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	ldr r0, [r7, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	ldr r1, _08039A4C @ =0x00002030
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x30
	strh r5, [r6, #0x30]
	ands r0, r2
	cmp r0, #0
	beq _08039A50
	movs r0, #0xff
	lsls r0, r0, #8
	b _08039A54
	.align 2, 0
_08039A48: .4byte 0x000002B1
_08039A4C: .4byte 0x00002030
_08039A50:
	movs r0, #0x80
	lsls r0, r0, #1
_08039A54:
	strh r0, [r1, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #4]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8039A64
sub_8039A64: @ 0x08039A64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _08039AD0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r4, r1
	mov r8, r2
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r3, [r0, #6]
	adds r1, r3, r1
	str r1, [sp]
	mov sl, r8
	ldr r0, _08039AD4 @ =0x03000030
	adds r0, r4, r0
	str r0, [sp, #4]
	ldr r1, _08039AD8 @ =0x03000094
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	bgt _08039AEA
	ldr r2, _08039ADC @ =0x0300008C
	adds r0, r3, r2
	ldrh r0, [r0]
	subs r1, #0x44
	adds r2, r4, r1
	strh r0, [r2]
	adds r1, #0x3e
	adds r0, r3, r1
	ldrh r1, [r0]
	ldr r3, _08039AE0 @ =0x03000052
	adds r0, r4, r3
	strh r1, [r0]
	mov r4, sl
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08039AE4
	ldrh r0, [r2]
	adds r0, #0x1a
	b _08039AE8
	.align 2, 0
_08039AD0: .4byte gCurTask
_08039AD4: .4byte 0x03000030
_08039AD8: .4byte 0x03000094
_08039ADC: .4byte 0x0300008C
_08039AE0: .4byte 0x03000052
_08039AE4:
	ldrh r0, [r2]
	subs r0, #0x1a
_08039AE8:
	strh r0, [r2]
_08039AEA:
	mov r3, r8
	adds r3, #0x48
	movs r0, #0
	ldrsh r1, [r3, r0]
	mov r2, r8
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	adds r2, #0x4a
	ldrh r0, [r2]
	mov r1, r8
	adds r1, #0x4e
	strh r0, [r1]
	ldrh r6, [r2]
	mov ip, r6
	mov r4, sl
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	str r3, [sp, #0xc]
	mov sb, r2
	cmp r1, #0
	beq _08039B38
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r2, _08039BD4 @ =0xFFFFFE00
	adds r1, r2, #0
	subs r6, r1, r0
	ldr r1, _08039BD8 @ =0x000003FF
	ands r6, r1
	mov r3, ip
	lsls r0, r3, #0x10
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	mov ip, r0
	mov r4, ip
	ands r4, r1
	mov ip, r4
_08039B38:
	ldr r2, _08039BDC @ =gSineTable
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r6, [r0, r4]
	asrs r6, r6, #6
	mov r3, r8
	ldr r0, [r3, #0x40]
	muls r6, r0, r6
	asrs r6, r6, #0x10
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r4, #0
	ldrsh r7, [r1, r4]
	asrs r7, r7, #6
	muls r7, r0, r7
	asrs r7, r7, #0x10
	mov r5, r8
	adds r5, #0x50
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r6, r6, r0
	mov r4, r8
	adds r4, #0x52
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r7, r7, r0
	ldr r1, _08039BE0 @ =gCamera
	ldrh r0, [r1]
	subs r0, r6, r0
	ldr r3, [sp, #4]
	strh r0, [r3, #6]
	ldrh r0, [r1, #2]
	subs r0, r7, r0
	strh r0, [r3, #8]
	mov r0, ip
	strh r0, [r3]
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	ldr r1, [sp, #4]
	bl TransformSprite
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp]
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _08039BEC
	movs r0, #0
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	lsls r0, r6, #8
	mov r2, r8
	str r0, [r2, #0x54]
	lsls r0, r7, #8
	str r0, [r2, #0x58]
	movs r0, #0xb8
	lsls r0, r0, #3
	mov r3, sl
	strh r0, [r3, #0x1a]
	movs r0, #0x50
	strh r0, [r2, #0x3c]
	ldr r0, _08039BE4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08039BE8 @ =sub_803A46C
	str r0, [r1, #8]
	b _0803A14A
	.align 2, 0
_08039BD4: .4byte 0xFFFFFE00
_08039BD8: .4byte 0x000003FF
_08039BDC: .4byte gSineTable
_08039BE0: .4byte gCamera
_08039BE4: .4byte gCurTask
_08039BE8: .4byte sub_803A46C
_08039BEC:
	mov r0, r8
	adds r0, #0x61
	ldrb r1, [r0]
	str r0, [sp, #0x10]
	cmp r1, #0
	blt _08039C1E
	cmp r1, #1
	ble _08039C02
	cmp r1, #2
	beq _08039C0E
	b _08039C1E
_08039C02:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	b _08039C18
_08039C0E:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
_08039C18:
	bl sub_8036F9C
	str r0, [sp, #8]
_08039C1E:
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	cmp r0, #9
	bls _08039C28
	b _0803A14A
_08039C28:
	lsls r0, r0, #2
	ldr r1, _08039C34 @ =_08039C38
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08039C34: .4byte _08039C38
_08039C38: @ jump table
	.4byte _08039C60 @ case 0
	.4byte _08039CDE @ case 1
	.4byte _08039E08 @ case 2
	.4byte _08039EE2 @ case 3
	.4byte _08039EFC @ case 4
	.4byte _08039F30 @ case 5
	.4byte _08039F94 @ case 6
	.4byte _08039FD4 @ case 7
	.4byte _0803A026 @ case 8
	.4byte _0803A084 @ case 9
_08039C60:
	mov r2, r8
	ldrh r0, [r2, #0x3c]
	subs r0, #1
	strh r0, [r2, #0x3c]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08039C72
	b _0803A14A
_08039C72:
	ldr r2, _08039CA8 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08039CAC @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08039CB0 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	adds r1, r0, #0
	ldr r0, [sp, #0xc]
	strh r3, [r0]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r1, #0
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	subs r1, #0x23
	cmp r1, #0
	bgt _08039CB4
	movs r0, #0xb4
	mov r3, r8
	strh r0, [r3, #0x3c]
	b _0803A14A
	.align 2, 0
_08039CA8: .4byte gPseudoRandom
_08039CAC: .4byte 0x00196225
_08039CB0: .4byte 0x3C6EF35F
_08039CB4:
	adds r1, r0, #0
	subs r1, #0x46
	cmp r1, #0
	bgt _08039CC4
	movs r0, #0x3c
	mov r4, r8
	strh r0, [r4, #0x3c]
	b _0803A14A
_08039CC4:
	adds r1, r0, #0
	subs r1, #0x5a
	cmp r1, #0
	bgt _08039CD4
	movs r0, #0x12
	mov r1, r8
	strh r0, [r1, #0x3c]
	b _0803A14A
_08039CD4:
	movs r0, #0x96
	lsls r0, r0, #1
	mov r2, r8
	strh r0, [r2, #0x3c]
	b _0803A14A
_08039CDE:
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r2, _08039D48 @ =gPlayer
	ldr r0, [r2]
	asrs r0, r0, #8
	subs r6, r1, r0
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	subs r7, r1, r0
	cmp r6, #0
	bge _08039CFA
	rsbs r6, r6, #0
_08039CFA:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, _08039D4C @ =0xFF1F0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	movs r1, #0x8f
	lsls r1, r1, #1
	cmp r0, r1
	bhi _08039D1A
	movs r6, #0xe0
_08039D1A:
	lsls r0, r6, #0x10
	ldr r2, _08039D50 @ =0xFDFF0000
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	cmp r0, r1
	bhi _08039D2A
	movs r6, #0xc8
	lsls r6, r6, #2
_08039D2A:
	mov r3, sb
	ldrh r2, [r3]
	lsls r0, r2, #0x16
	asrs r1, r0, #0x10
	lsls r0, r6, #0x16
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08039D54
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r0, r3
	cmp r1, r0
	blt _08039D60
	subs r0, r2, #6
	b _08039D6E
	.align 2, 0
_08039D48: .4byte gPlayer
_08039D4C: .4byte 0xFF1F0000
_08039D50: .4byte 0xFDFF0000
_08039D54:
	cmp r1, r0
	bge _08039D72
	ldr r3, _08039D68 @ =0xFFFFFE80
	adds r0, r0, r3
	cmp r1, r0
	ble _08039D6C
_08039D60:
	mov r0, sb
	strh r6, [r0]
	b _08039D72
	.align 2, 0
_08039D68: .4byte 0xFFFFFE80
_08039D6C:
	adds r0, r2, #6
_08039D6E:
	mov r1, sb
	strh r0, [r1]
_08039D72:
	mov r2, sb
	ldrh r0, [r2]
	ldr r1, _08039DFC @ =0x000003FF
	ands r1, r0
	strh r1, [r2]
	mov r3, r8
	ldrh r0, [r3, #0x3c]
	subs r0, #1
	strh r0, [r3, #0x3c]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08039D8C
	b _0803A14A
_08039D8C:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r3, _08039E00 @ =gPlayer
	ldr r1, [r3]
	asrs r1, r1, #8
	subs r0, r0, r1
	movs r1, #0
	ldrsh r2, [r4, r1]
	ldr r1, [r3, #4]
	asrs r1, r1, #8
	subs r2, r2, r1
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	adds r4, r2, #0
	muls r4, r2, r4
	adds r2, r4, #0
	lsls r0, r0, #8
	lsls r2, r2, #8
	adds r0, r0, r2
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xc
	ldr r1, _08039E04 @ =0xFFFFF000
	subs r1, r1, r0
	mov r0, r8
	str r1, [r0, #0x44]
	movs r0, #0xfa
	lsls r0, r0, #8
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x60
	movs r0, #0
	strb r0, [r1]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0xf0
	lsls r0, r0, #2
	mov r3, sl
	strh r0, [r3, #0x1a]
	mov r1, sl
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb3
	bl m4aSongNumStart
	b _0803A14A
	.align 2, 0
_08039DFC: .4byte 0x000003FF
_08039E00: .4byte gPlayer
_08039E04: .4byte 0xFFFFF000
_08039E08:
	mov r4, r8
	ldr r0, [r4, #0x40]
	rsbs r0, r0, #0
	asrs r0, r0, #8
	subs r0, #0x14
	asrs r0, r0, #4
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	mov r1, r8
	adds r1, #0x60
	ldrb r0, [r1]
	cmp r0, r2
	bhs _08039E2A
	strb r2, [r1]
	bl sub_803A1D8
_08039E2A:
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _08039EB8
	mov r1, r8
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
	movs r4, #0
	ldr r1, [sp, #0xc]
	strh r4, [r1]
	movs r0, #7
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	mov r0, sl
	adds r0, #0x20
	mov r3, sp
	ldrb r3, [r3, #8]
	strb r3, [r0]
	mov r1, sl
	adds r1, #0x21
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r5, _08039E90 @ =gPlayer
	adds r0, r5, #0
	bl sub_8046CEC
	lsls r0, r6, #8
	str r0, [r5]
	lsls r0, r7, #8
	str r0, [r5, #4]
	strh r4, [r5, #8]
	strh r4, [r5, #0xa]
	strh r4, [r5, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, _08039E94 @ =0x00E00100
	orrs r0, r1
	str r0, [r5, #0x10]
	mov r4, sl
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08039E98
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	b _08039E9E
	.align 2, 0
_08039E90: .4byte gPlayer
_08039E94: .4byte 0x00E00100
_08039E98:
	mov r3, sb
	ldrh r0, [r3]
	lsrs r0, r0, #2
_08039E9E:
	strb r0, [r5, #0x14]
	ldr r1, _08039EB4 @ =gPlayer
	adds r3, r1, #0
	adds r3, #0x40
	movs r2, #0
	movs r0, #0x28
	strb r0, [r3]
	strh r2, [r1, #0x38]
	strh r2, [r1, #0x3a]
	b _0803A14A
	.align 2, 0
_08039EB4: .4byte gPlayer
_08039EB8:
	mov r4, r8
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x44]
	cmp r1, r0
	ble _08039EC4
	b _0803A14A
_08039EC4:
	movs r0, #0
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	mov r1, sl
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	b _0803A14A
_08039EE2:
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08039EF2
	b _0803A14A
_08039EF2:
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r4, [sp, #0xc]
	strh r0, [r4]
	b _0803A076
_08039EFC:
	mov r2, r8
	ldr r0, [r2, #0x40]
	ldr r1, _08039F2C @ =0xFFFFEC00
	cmp r0, r1
	bge _08039F08
	b _0803A14A
_08039F08:
	str r1, [r2, #0x40]
	movs r1, #0
	movs r0, #0
	ldr r3, [sp, #0xc]
	strh r0, [r3]
	movs r0, #0xb8
	lsls r0, r0, #3
	mov r4, sl
	strh r0, [r4, #0x1a]
	mov r0, sl
	adds r0, #0x20
	strb r1, [r0]
	mov r1, sl
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	b _0803A076
	.align 2, 0
_08039F2C: .4byte 0xFFFFEC00
_08039F30:
	mov r2, sb
	ldrh r0, [r2]
	movs r3, #0
	ldrsh r1, [r2, r3]
	cmp r1, #0
	bne _08039F56
	movs r0, #0xb8
	lsls r0, r0, #3
	mov r4, sl
	strh r0, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	b _0803A14A
_08039F56:
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r1, r2
	ble _08039F78
	adds r0, #6
	ldr r3, _08039F74 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	mov r4, sb
	strh r0, [r4]
	cmp r0, #6
	ble _08039F70
	b _0803A14A
_08039F70:
	b _08039F8A
	.align 2, 0
_08039F74: .4byte 0x000003FF
_08039F78:
	subs r0, #6
	ldr r3, _08039F90 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	mov r4, sb
	strh r0, [r4]
	cmp r0, r2
	bgt _08039F8A
	b _0803A14A
_08039F8A:
	movs r0, #0
	strh r0, [r4]
	b _0803A14A
	.align 2, 0
_08039F90: .4byte 0x000003FF
_08039F94:
	mov r0, r8
	ldr r1, [r0, #0x40]
	ldr r0, _08039FB8 @ =0x00000DFF
	cmp r1, r0
	bgt _08039FA0
	b _0803A14A
_08039FA0:
	mov r0, r8
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039FBC
	ldr r1, [sp]
	adds r1, #0x99
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08039FC4
	.align 2, 0
_08039FB8: .4byte 0x00000DFF
_08039FBC:
	ldr r1, [sp]
	adds r1, #0x92
	movs r0, #1
	strh r0, [r1]
_08039FC4:
	ldr r0, _08039FD0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803A14A
	.align 2, 0
_08039FD0: .4byte gCurTask
_08039FD4:
	ldr r2, _08039FF8 @ =gPlayer
	lsls r0, r6, #8
	str r0, [r2]
	lsls r0, r7, #8
	str r0, [r2, #4]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08039FFC
	mov r3, sb
	movs r4, #0
	ldrsh r0, [r3, r4]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	b _0803A002
	.align 2, 0
_08039FF8: .4byte gPlayer
_08039FFC:
	mov r1, sb
	ldrh r0, [r1]
	lsrs r0, r0, #2
_0803A002:
	strb r0, [r2, #0x14]
	mov r2, sl
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0803A014
	b _0803A14A
_0803A014:
	movs r0, #0xc0
	lsls r0, r0, #3
	ldr r3, [sp, #0xc]
	strh r0, [r3]
	ldr r4, [sp, #0x10]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _0803A14A
_0803A026:
	ldr r2, _0803A04C @ =gPlayer
	lsls r0, r6, #8
	str r0, [r2]
	lsls r0, r7, #8
	str r0, [r2, #4]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A050
	mov r3, sb
	movs r4, #0
	ldrsh r0, [r3, r4]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	b _0803A056
	.align 2, 0
_0803A04C: .4byte gPlayer
_0803A050:
	mov r1, sb
	ldrh r0, [r1]
	lsrs r0, r0, #2
_0803A056:
	strb r0, [r2, #0x14]
	mov r2, r8
	ldr r0, [r2, #0x40]
	ldr r1, _0803A080 @ =0xFFFFDC00
	cmp r0, r1
	blt _0803A14A
	str r1, [r2, #0x40]
	movs r2, #0
	ldr r3, [sp, #0xc]
	strh r2, [r3]
	mov r1, r8
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	mov r4, r8
	strh r2, [r4, #0x3c]
_0803A076:
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0803A14A
	.align 2, 0
_0803A080: .4byte 0xFFFFDC00
_0803A084:
	ldr r2, _0803A0AC @ =gPlayer
	lsls r0, r6, #8
	str r0, [r2]
	lsls r0, r7, #8
	str r0, [r2, #4]
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	adds r3, r2, #0
	cmp r0, #0
	beq _0803A0B0
	mov r4, sb
	movs r1, #0
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	b _0803A0B6
	.align 2, 0
_0803A0AC: .4byte gPlayer
_0803A0B0:
	mov r2, sb
	ldrh r0, [r2]
	lsrs r0, r0, #2
_0803A0B6:
	strb r0, [r3, #0x14]
	mov r2, r8
	adds r2, #0x4c
	ldrh r0, [r2]
	mov r4, sb
	ldrh r4, [r4]
	adds r0, r0, r4
	ldr r1, _0803A15C @ =0x000003FF
	ands r0, r1
	mov r1, sb
	strh r0, [r1]
	ldr r1, _0803A160 @ =0x000001FF
	adds r5, r2, #0
	cmp r0, r1
	ble _0803A102
	ldr r6, _0803A164 @ =gRingCount
	ldrh r4, [r6]
	cmp r4, #0
	beq _0803A0FE
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _0803A0FE
	cmp r4, #5
	bls _0803A0EA
	movs r4, #5
_0803A0EA:
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	asrs r1, r1, #8
	adds r2, r4, #0
	bl sub_8040B10
	ldrh r0, [r6]
	subs r0, r0, r4
	strh r0, [r6]
_0803A0FE:
	movs r0, #0x10
	strh r0, [r5]
_0803A102:
	ldr r3, _0803A168 @ =0xFFFFFF00
	adds r0, r3, #0
	mov r4, sb
	ldrh r4, [r4]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bhi _0803A14A
	ldr r0, _0803A16C @ =0x0000FFF0
	strh r0, [r5]
	mov r1, r8
	ldrh r0, [r1, #0x3c]
	adds r0, #1
	strh r0, [r1, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bne _0803A130
	ldr r1, [sp]
	adds r1, #0x99
	movs r0, #0x33
	strb r0, [r1]
_0803A130:
	mov r2, r8
	ldrh r4, [r2, #0x3c]
	cmp r4, #5
	bne _0803A14A
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	bl sub_803A170
	ldr r0, [sp, #0x10]
	strb r4, [r0]
_0803A14A:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A15C: .4byte 0x000003FF
_0803A160: .4byte 0x000001FF
_0803A164: .4byte gRingCount
_0803A168: .4byte 0xFFFFFF00
_0803A16C: .4byte 0x0000FFF0

	thumb_func_start sub_803A170
sub_803A170: @ 0x0803A170
	push {r4, r5, lr}
	ldr r2, _0803A184 @ =gPlayer
	movs r1, #0x78
	strh r1, [r2, #0x1c]
	adds r5, r2, #0
	cmp r0, #0
	beq _0803A188
	movs r0, #0xfe
	lsls r0, r0, #8
	b _0803A18C
	.align 2, 0
_0803A184: .4byte gPlayer
_0803A188:
	movs r0, #0x80
	lsls r0, r0, #2
_0803A18C:
	strh r0, [r5, #8]
	movs r4, #0
	ldr r0, _0803A1D0 @ =0x0000FA20
	strh r0, [r5, #0xa]
	strb r4, [r5, #0x14]
	ldr r0, [r5, #0x10]
	ldr r1, _0803A1D4 @ =0xFF1FFAC3
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3e
	strb r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A1D0: .4byte 0x0000FA20
_0803A1D4: .4byte 0xFF1FFAC3

	thumb_func_start sub_803A1D8
sub_803A1D8: @ 0x0803A1D8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	ldr r0, _0803A2A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r0, r4, r6
	mov sb, r0
	ldr r0, _0803A2A4 @ =sub_803A2F8
	ldr r2, _0803A2A8 @ =0x00002101
	ldr r1, _0803A2AC @ =sub_803A600
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	adds r6, r5, r6
	ldr r1, _0803A2B0 @ =0x03000050
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _0803A2B0 @ =0x03000050
	adds r0, r5, r2
	movs r2, #0
	mov r8, r2
	movs r3, #0
	strh r1, [r0]
	ldr r1, _0803A2B4 @ =0x03000052
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _0803A2B4 @ =0x03000052
	adds r0, r5, r2
	strh r1, [r0]
	ldr r1, _0803A2B8 @ =0x0300004E
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r2, #8
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _0803A2BC @ =0x03000060
	adds r4, r4, r0
	ldrb r1, [r4]
	adds r0, r5, r0
	strb r1, [r0]
	movs r0, #4
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	ldr r3, [sp, #4]
	strh r3, [r6, #8]
	ldr r0, _0803A2C0 @ =0x000002B2
	strh r0, [r6, #0xa]
	ldr r1, _0803A2C4 @ =0x03000020
	adds r0, r5, r1
	mov r2, r8
	strb r2, [r0]
	strh r3, [r6, #0x14]
	strh r3, [r6, #0x1c]
	ldr r0, _0803A2C8 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _0803A2CC @ =0x03000022
	adds r1, r5, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0803A2D0 @ =0x03000025
	adds r0, r5, r1
	mov r2, r8
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	ldr r1, _0803A2D4 @ =0x00002030
	orrs r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0803A2D8 @ =0x03000030
	adds r5, r5, r0
	strh r3, [r5]
	ldr r0, [r6, #0x10]
	ands r0, r2
	cmp r0, #0
	beq _0803A2DC
	movs r0, #0xff
	lsls r0, r0, #8
	b _0803A2E0
	.align 2, 0
_0803A2A0: .4byte gCurTask
_0803A2A4: .4byte sub_803A2F8
_0803A2A8: .4byte 0x00002101
_0803A2AC: .4byte sub_803A600
_0803A2B0: .4byte 0x03000050
_0803A2B4: .4byte 0x03000052
_0803A2B8: .4byte 0x0300004E
_0803A2BC: .4byte 0x03000060
_0803A2C0: .4byte 0x000002B2
_0803A2C4: .4byte 0x03000020
_0803A2C8: .4byte 0x03000021
_0803A2CC: .4byte 0x03000022
_0803A2D0: .4byte 0x03000025
_0803A2D4: .4byte 0x00002030
_0803A2D8: .4byte 0x03000030
_0803A2DC:
	movs r0, #0x80
	lsls r0, r0, #1
_0803A2E0:
	strh r0, [r5, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #4]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803A2F8
sub_803A2F8: @ 0x0803A2F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _0803A43C @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r3, [r0, #6]
	mov r8, r3
	adds r3, r3, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r4, _0803A440 @ =0x03000030
	adds r4, r4, r2
	mov sb, r4
	ldr r0, _0803A444 @ =0x03000050
	add r0, r8
	ldrh r0, [r0]
	adds r1, #0x50
	adds r1, r1, r2
	mov sl, r1
	strh r0, [r1]
	ldr r0, _0803A448 @ =0x03000052
	add r0, r8
	ldrh r0, [r0]
	ldr r4, _0803A448 @ =0x03000052
	adds r4, r4, r2
	mov ip, r4
	strh r0, [r4]
	ldr r0, _0803A44C @ =0x0300004E
	add r0, r8
	ldrh r6, [r0]
	adds r4, r6, #0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A36C
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	ldr r1, _0803A450 @ =0xFFFFFE00
	adds r4, r0, r1
	ldr r1, _0803A454 @ =0x000003FF
	ands r4, r1
	adds r6, r1, #0
	ands r6, r0
_0803A36C:
	ldr r1, _0803A458 @ =0x03000060
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, #8
	lsls r0, r0, #8
	ldr r2, [r3, #0x40]
	adds r2, r2, r0
	str r2, [r7, #0x40]
	ldr r3, _0803A45C @ =gSineTable
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r1, r4
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r5, [r0, r4]
	asrs r5, r5, #6
	muls r5, r2, r5
	asrs r5, r5, #0x10
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r0, #0
	ldrsh r4, [r1, r0]
	asrs r4, r4, #6
	muls r4, r2, r4
	asrs r4, r4, #0x10
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	mov r3, ip
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r4, r4, r0
	ldr r1, _0803A460 @ =gCamera
	ldrh r0, [r1]
	subs r0, r5, r0
	mov r2, sb
	strh r0, [r2, #6]
	ldrh r0, [r1, #2]
	subs r0, r4, r0
	strh r0, [r2, #8]
	strh r6, [r2]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	mov r1, sb
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	ldr r1, [r7, #0x40]
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bgt _0803A3F0
	ldr r0, _0803A464 @ =0x03000061
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #6
	bne _0803A3F8
_0803A3F0:
	ldr r3, _0803A43C @ =gCurTask
	ldr r0, [r3]
	bl TaskDestroy
_0803A3F8:
	ldr r0, [sp]
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0803A42C
	adds r1, r7, #0
	adds r1, #0x48
	movs r0, #0
	strh r0, [r1]
	lsls r0, r5, #8
	str r0, [r7, #0x54]
	lsls r0, r4, #8
	str r0, [r7, #0x58]
	ldr r0, _0803A43C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803A468 @ =sub_803A46C
	str r0, [r1, #8]
	adds r0, r7, #0
	adds r0, #0x60
	ldrb r1, [r0]
	lsls r1, r1, #2
	movs r0, #0x50
	subs r0, r0, r1
	strh r0, [r7, #0x3c]
_0803A42C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A43C: .4byte gCurTask
_0803A440: .4byte 0x03000030
_0803A444: .4byte 0x03000050
_0803A448: .4byte 0x03000052
_0803A44C: .4byte 0x0300004E
_0803A450: .4byte 0xFFFFFE00
_0803A454: .4byte 0x000003FF
_0803A458: .4byte 0x03000060
_0803A45C: .4byte gSineTable
_0803A460: .4byte gCamera
_0803A464: .4byte 0x03000061
_0803A468: .4byte sub_803A46C

	thumb_func_start sub_803A46C
sub_803A46C: @ 0x0803A46C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0803A520 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0x30
	adds r1, r1, r0
	mov r8, r1
	ldr r2, _0803A524 @ =0x03000048
	adds r5, r0, r2
	ldrh r0, [r5]
	adds r0, #0x20
	strh r0, [r5]
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x58]
	ldr r1, [r4, #0x54]
	lsls r1, r1, #8
	lsls r0, r0, #8
	asrs r7, r0, #0x10
	adds r0, r7, #0
	adds r0, #8
	asrs r6, r1, #0x10
	ldr r1, _0803A528 @ =sub_803FD5C
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _0803A4D0
	lsls r1, r0, #8
	ldr r0, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x58]
	ldrh r1, [r5]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5]
_0803A4D0:
	ldr r1, _0803A52C @ =gCamera
	ldrh r0, [r1]
	subs r0, r6, r0
	mov r2, r8
	strh r0, [r2, #6]
	ldrh r0, [r1, #2]
	subs r0, r7, r0
	strh r0, [r2, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	mov r1, r8
	bl TransformSprite
	adds r0, r4, #0
	bl DisplaySprite
	ldrh r0, [r4, #0x3c]
	subs r0, #1
	strh r0, [r4, #0x3c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803A510
	lsls r0, r6, #8
	lsls r1, r7, #8
	bl sub_8017540
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
_0803A510:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A520: .4byte gCurTask
_0803A524: .4byte 0x03000048
_0803A528: .4byte sub_803FD5C
_0803A52C: .4byte gCamera

	thumb_func_start TaskDestructor_EggX
TaskDestructor_EggX: @ 0x0803A530
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x48]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_803A54C
sub_803A54C: @ 0x0803A54C
	push {r4, lr}
	sub sp, #4
	ldr r2, _0803A588 @ =gUnknown_03005160
	ldrh r0, [r2, #8]
	cmp r0, #0xd
	bhi _0803A55A
	movs r0, #0xe
_0803A55A:
	movs r4, #0
	movs r1, #0
	strh r0, [r2, #8]
	ldr r0, _0803A58C @ =sub_8038554
	ldr r2, _0803A590 @ =0x00001FFF
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0xd2
	lsls r1, r1, #1
	strh r1, [r0, #6]
	strb r4, [r0, #9]
	strb r4, [r0, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A588: .4byte gUnknown_03005160
_0803A58C: .4byte sub_8038554
_0803A590: .4byte 0x00001FFF

	thumb_func_start sub_803A594
sub_803A594: @ 0x0803A594
	push {r4, lr}
	sub sp, #4
	ldr r0, _0803A5C8 @ =sub_803891C
	ldr r2, _0803A5CC @ =0x00001FFF
	movs r4, #0
	str r4, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x20
	strh r1, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	movs r1, #0x78
	strh r1, [r0, #6]
	strb r2, [r0, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A5C8: .4byte sub_803891C
_0803A5CC: .4byte 0x00001FFF

	thumb_func_start sub_803A5D0
sub_803A5D0: @ 0x0803A5D0
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_803A5EC
sub_803A5EC: @ 0x0803A5EC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803A600
sub_803A600: @ 0x0803A600
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

@ Inline?
	thumb_func_start sub_803A614
sub_803A614: @ 0x0803A614
	sub sp, #4
	mov r1, sp
	ldr r2, _0803A63C @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0803A640 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0803A644 @ =gObjPalette+0x180
	str r0, [r1, #4]
	ldr r0, _0803A648 @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0803A64C @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	bx lr
	.align 2, 0
_0803A63C: .4byte 0x00007FFF
_0803A640: .4byte 0x040000D4
_0803A644: .4byte gObjPalette+0x180
_0803A648: .4byte 0x81000010
_0803A64C: .4byte gFlags

@ Inline?
	thumb_func_start sub_803A650
sub_803A650: @ 0x0803A650
	push {r4, r5, r6, r7, lr}
	ldr r2, _0803A690 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _0803A694 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _0803A698 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803A6A0
	ldr r3, _0803A69C @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803A6A2
	.align 2, 0
_0803A690: .4byte gCurTask
_0803A694: .4byte gPlayer
_0803A698: .4byte gNumSingleplayerCharacters
_0803A69C: .4byte gPartner
_0803A6A0:
	movs r0, #0
_0803A6A2:
	cmp r7, #2
	beq _0803A6AA
	cmp r0, #2
	bne _0803A6D4
_0803A6AA:
	ldr r0, _0803A6DC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _0803A6E0 @ =0x03000044
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0803A6E4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _0803A6E8 @ =0x03000065
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_0803A6D4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A6DC: .4byte gCurTask
_0803A6E0: .4byte 0x03000044
_0803A6E4: .4byte 0xFFFFBFFF
_0803A6E8: .4byte 0x03000065

	thumb_func_start sub_803A6EC
sub_803A6EC: @ 0x0803A6EC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r6, [sp, #0x20]
	ldr r4, [sp, #0x24]
	mov r8, r4
	movs r5, #0
	str r5, [sp, #4]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r4, _0803A76C @ =0xFFFFFF00
	ldr r5, [sp, #8]
	ands r4, r5
	orrs r4, r2
	str r4, [sp, #8]
	lsls r3, r3, #0x18
	lsrs r3, r3, #8
	ldr r5, _0803A770 @ =0xFF00FFFF
	ands r5, r4
	orrs r5, r3
	str r5, [sp, #8]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x10
	ldr r2, _0803A774 @ =0xFFFF00FF
	ands r2, r5
	orrs r2, r6
	str r2, [sp, #8]
	mov r3, r8
	lsls r3, r3, #0x18
	mov r8, r3
	ldr r3, _0803A778 @ =0x00FFFFFF
	ands r2, r3
	mov r4, r8
	orrs r4, r2
	str r4, [sp, #8]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	ldr r0, _0803A77C @ =gPlayer
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_800C1E8
	adds r4, r0, #0
	ldr r0, _0803A780 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803A788
	ldr r0, _0803A784 @ =gPartner
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_800C1E8
	b _0803A78A
	.align 2, 0
_0803A76C: .4byte 0xFFFFFF00
_0803A770: .4byte 0xFF00FFFF
_0803A774: .4byte 0xFFFF00FF
_0803A778: .4byte 0x00FFFFFF
_0803A77C: .4byte gPlayer
_0803A780: .4byte gNumSingleplayerCharacters
_0803A784: .4byte gPartner
_0803A788:
	movs r0, #0
_0803A78A:
	orrs r4, r0
	cmp r4, #2
	bne _0803A7B2
	ldr r0, _0803A7C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r5, _0803A7C4 @ =0x03000044
	adds r3, r2, r5
	ldr r0, _0803A7C8 @ =0x03000064
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0803A7CC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r3, _0803A7D0 @ =0x03000065
	adds r2, r2, r3
	movs r0, #0xff
	strb r0, [r2]
_0803A7B2:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803A7C0: .4byte gCurTask
_0803A7C4: .4byte 0x03000044
_0803A7C8: .4byte 0x03000064
_0803A7CC: .4byte 0xFFFFBFFF
_0803A7D0: .4byte 0x03000065

	thumb_func_start sub_803A7D4
sub_803A7D4: @ 0x0803A7D4
	push {r4, r5, r6, r7, lr}
	ldr r2, _0803A814 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _0803A818 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _0803A81C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803A824
	ldr r3, _0803A820 @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803A826
	.align 2, 0
_0803A814: .4byte gCurTask
_0803A818: .4byte gPlayer
_0803A81C: .4byte gNumSingleplayerCharacters
_0803A820: .4byte gPartner
_0803A824:
	movs r0, #0
_0803A826:
	cmp r7, #2
	beq _0803A82E
	cmp r0, #2
	bne _0803A858
_0803A82E:
	ldr r0, _0803A860 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _0803A864 @ =0x03000044
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0803A868 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _0803A86C @ =0x03000065
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_0803A858:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A860: .4byte gCurTask
_0803A864: .4byte 0x03000044
_0803A868: .4byte 0xFFFFBFFF
_0803A86C: .4byte 0x03000065

	thumb_func_start sub_803A870
sub_803A870: @ 0x0803A870
	ldr r0, _0803A8A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _0803A8A4 @ =0x03000044
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0803A89C
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0803A89C
	movs r0, #0
	strb r0, [r3]
	ldr r0, _0803A8A8 @ =0x03000065
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_0803A89C:
	bx lr
	.align 2, 0
_0803A8A0: .4byte gCurTask
_0803A8A4: .4byte 0x03000044
_0803A8A8: .4byte 0x03000065

	thumb_func_start sub_803A8AC
sub_803A8AC: @ 0x0803A8AC
	ldr r0, _0803A8C4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0803A8C8 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_0803A8C4: .4byte gCurTask
_0803A8C8: .4byte 0x0300000C

	thumb_func_start sub_803A8CC
sub_803A8CC: @ 0x0803A8CC
	push {r4, lr}
	ldr r2, _0803A8F4 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _0803A8F8 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _0803A8FC @ =gCamera
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
_0803A8F4: .4byte gCurTask
_0803A8F8: .4byte 0x0300000C
_0803A8FC: .4byte gCamera

	thumb_func_start sub_803A900
sub_803A900: @ 0x0803A900
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, r2, #0
	ldr r0, _0803A91C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	cmp r2, #2
	beq _0803A934
	cmp r2, #2
	bgt _0803A920
	cmp r2, #1
	beq _0803A926
	b _0803A948
	.align 2, 0
_0803A91C: .4byte gCurTask
_0803A920:
	cmp r3, #3
	beq _0803A940
	b _0803A948
_0803A926:
	ldr r0, _0803A930 @ =0x03000078
	adds r1, r1, r0
	movs r0, #8
	b _0803A946
	.align 2, 0
_0803A930: .4byte 0x03000078
_0803A934:
	ldr r0, _0803A93C @ =0x03000078
	adds r1, r1, r0
	movs r0, #9
	b _0803A946
	.align 2, 0
_0803A93C: .4byte 0x03000078
_0803A940:
	ldr r0, _0803A94C @ =0x03000078
	adds r1, r1, r0
	movs r0, #0xa
_0803A946:
	strb r0, [r1]
_0803A948:
	bx lr
	.align 2, 0
_0803A94C: .4byte 0x03000078

@ --- End of X-Zone Final Boss
