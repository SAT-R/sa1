.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of EggSpider

.if 0
.endif

	thumb_func_start sub_80311D4
sub_80311D4: @ 0x080311D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080312A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r8, r0
	adds r2, r4, r0
	ldr r1, _080312A4 @ =0x0300000C
	adds r1, r1, r4
	mov sl, r1
	ldr r3, [r2]
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #0x6c]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #0x70]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r2, _080312A8 @ =0x0300005C
	adds r1, r4, r2
	movs r5, #0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _080312AC @ =0x03000088
	adds r0, r4, r1
	movs r6, #0
	strh r5, [r0]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r2, _080312B0 @ =0x03000084
	adds r0, r4, r2
	strh r5, [r0]
	ldr r0, _080312B4 @ =0x00000272
	mov r1, sl
	strh r0, [r1, #0xa]
	subs r2, #0x58
	adds r0, r4, r2
	strb r6, [r0]
	ldr r0, _080312B8 @ =0x0300002D
	adds r4, r4, r0
	movs r0, #0xff
	strb r0, [r4]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r3, _080312BC @ =0x00000273
	str r5, [sp]
	movs r2, #0x10
	bl sub_80168F0
	ldrh r2, [r0, #6]
	mov r4, r8
	adds r3, r2, r4
	ldr r1, _080312C0 @ =0x03000046
	adds r0, r2, r1
	strh r5, [r0]
	ldr r4, _080312C4 @ =0x03000048
	adds r0, r2, r4
	strh r5, [r0]
	ldr r0, _080312C8 @ =0x03000042
	adds r1, r2, r0
	movs r0, #0x80
	strh r0, [r1]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080312CC
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	subs r4, #4
	adds r1, r2, r4
	movs r0, #0x80
	lsls r0, r0, #1
	b _080312D4
	.align 2, 0
_080312A0: .4byte gCurTask
_080312A4: .4byte 0x0300000C
_080312A8: .4byte 0x0300005C
_080312AC: .4byte 0x03000088
_080312B0: .4byte 0x03000084
_080312B4: .4byte 0x00000272
_080312B8: .4byte 0x0300002D
_080312BC: .4byte 0x00000273
_080312C0: .4byte 0x03000046
_080312C4: .4byte 0x03000048
_080312C8: .4byte 0x03000042
_080312CC:
	ldr r0, _08031338 @ =0x03000044
	adds r1, r2, r0
	movs r0, #0xff
	lsls r0, r0, #8
_080312D4:
	strh r0, [r1]
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	mov r1, sb
	lsls r6, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r0, r6, r2
	asrs r0, r0, #0x10
	lsls r5, r7, #0x10
	adds r1, r5, r2
	asrs r1, r1, #0x10
	ldr r3, _0803133C @ =0x00000273
	movs r2, #1
	str r2, [sp]
	movs r2, #0xc
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	ldr r1, _08031340 @ =0x03000046
	adds r0, r2, r1
	strh r4, [r0]
	adds r1, #2
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _08031344 @ =0x03000042
	adds r1, r2, r4
	movs r0, #0x80
	strh r0, [r1]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08031348
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	adds r4, #2
	adds r0, r2, r4
	strh r1, [r0]
	b _08031352
	.align 2, 0
_08031338: .4byte 0x03000044
_0803133C: .4byte 0x00000273
_08031340: .4byte 0x03000046
_08031344: .4byte 0x03000042
_08031348:
	ldr r0, _080313BC @ =0x03000044
	adds r1, r2, r0
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
_08031352:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _080313C0 @ =0xFFF00000
	adds r0, r6, r1
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r1, r5, r2
	asrs r1, r1, #0x10
	ldr r3, _080313C4 @ =0x00000273
	movs r2, #1
	str r2, [sp]
	movs r2, #0xc
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	ldr r1, _080313C8 @ =0x03000046
	adds r0, r2, r1
	strh r4, [r0]
	adds r1, #2
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _080313CC @ =0x03000042
	adds r1, r2, r4
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0x10]
	mov r4, sl
	ldr r0, [r4, #0x10]
	ands r0, r1
	cmp r0, #0
	beq _080313D0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r0, _080313BC @ =0x03000044
	adds r1, r2, r0
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
	b _080313D6
	.align 2, 0
_080313BC: .4byte 0x03000044
_080313C0: .4byte 0xFFF00000
_080313C4: .4byte 0x00000273
_080313C8: .4byte 0x03000046
_080313CC: .4byte 0x03000042
_080313D0:
	ldr r4, _0803145C @ =0x03000044
	adds r0, r2, r4
	strh r1, [r0]
_080313D6:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _08031460 @ =gCamera
	ldrh r0, [r4]
	strh r0, [r4, #0x18]
	adds r0, #0xf0
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x14]
	mov sb, r0
	ldrh r7, [r4, #0x16]
	adds r0, r7, #0
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x16
	ldrsh r1, [r4, r2]
	bl sub_80174DC
	mov r0, sb
	strh r0, [r4, #0x14]
	strh r7, [r4, #0x16]
	ldr r1, _08031464 @ =gWater
	ldrh r0, [r1, #4]
	adds r0, #0xa0
	strh r0, [r1, #4]
	ldr r1, _08031468 @ =gLevelScore
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _0803146C @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _0803143E
	ldr r0, _08031470 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803143E
	ldr r1, _08031474 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0803143E:
	bl sub_8031480
	ldr r0, _08031478 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803147C @ =sub_8031480
	str r0, [r1, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803145C: .4byte 0x03000044
_08031460: .4byte gCamera
_08031464: .4byte gWater
_08031468: .4byte gLevelScore
_0803146C: .4byte 0x0000C350
_08031470: .4byte gGameMode
_08031474: .4byte gNumLives
_08031478: .4byte gCurTask
_0803147C: .4byte sub_8031480

	thumb_func_start sub_8031480
sub_8031480: @ 0x08031480
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080316A8 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _080316AC @ =0x0300000C
	adds r7, r4, r1
	ldr r2, _080316B0 @ =0x0300003C
	adds r2, r4, r2
	str r2, [sp, #4]
	ldr r2, [r5]
	ldr r3, _080316B4 @ =0x03000088
	adds r6, r4, r3
	ldrh r0, [r6]
	adds r0, #2
	strh r0, [r6]
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r3, [r5, #0x70]
	adds r3, r3, r0
	str r3, [r5, #0x70]
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x6c]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r2, [r5, #6]
	lsls r2, r2, #8
	adds r0, r0, r2
	asrs r3, r3, #8
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r8, r2
	asrs r0, r0, #0x10
	adds r0, #0x38
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r1, r1, #0x10
	ldr r2, _080316B8 @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	adds r1, r0, #0
	ldr r0, _080316BC @ =0x03000084
	adds r4, r4, r0
	ldrh r0, [r4]
	cmp r0, #0x78
	bls _08031512
	cmp r1, #0
	bge _08031512
	movs r0, #0
	strh r0, [r6]
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _080316C0 @ =sub_803170C
	str r0, [r1, #8]
_08031512:
	ldr r0, [r7, #0x10]
	ldr r1, _080316C4 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r0, _080316C8 @ =gPlayer
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _0803153A
	ldr r2, _080316CC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080316D0 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080316D4 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _080316D8 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_0803153A:
	adds r1, r5, #0
	adds r1, #0x84
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r4, #7
	ands r0, r4
	mov r3, r8
	lsls r3, r3, #0x10
	str r3, [sp, #8]
	mov r1, sb
	lsls r1, r1, #0x10
	mov sl, r1
	cmp r0, #0
	bne _08031636
	ldr r2, _080316DC @ =gPseudoRandom
	mov sb, r2
	ldr r0, [r2]
	ldr r3, _080316E0 @ =0x00196225
	muls r0, r3, r0
	ldr r1, _080316E4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ands r4, r0
	ldr r0, _080316E8 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _080316EC @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _080316F0 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _080316F4 @ =TaskDestructor_NutsAndBolts
	str r0, [sp]
	adds r0, r6, #0
	bl CreateNutsAndBoltsTask
	ldrh r3, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r3, r5
	mov r2, sl
	asrs r0, r2, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	ldr r4, [sp, #8]
	asrs r1, r4, #0x10
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #5
	strh r2, [r5, #0x3e]
	ldr r2, _080316F8 @ =0x03000040
	adds r3, r3, r2
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r4, _080316E0 @ =0x00196225
	adds r6, r2, #0
	muls r6, r4, r6
	ldr r2, _080316E4 @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _080316FC @ =gSineTable
	mov r8, r3
	ldr r3, _08031700 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	mov ip, r2
	movs r4, #0
	ldrsh r2, [r2, r4]
	mov ip, r2
	lsls r2, r2, #1
	add r2, ip
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r4, #0
	ldrsh r3, [r3, r4]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _080316E0 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r4, _080316E4 @ =0x3C6EF35F
	adds r3, r3, r4
	mov r2, sb
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r3, #0x20
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_08031636:
	ldr r2, _08031704 @ =gCamera
	ldrh r1, [r2]
	mov r3, sl
	asrs r0, r3, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	ldrh r1, [r2, #2]
	ldr r4, [sp, #8]
	asrs r0, r4, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x18]
@ inline sub_8031D0C
	ldr r0, _080316A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _080316AC @ =0x0300000C
	adds r2, r0, r1
	ldr r4, _080316B0 @ =0x0300003C
	adds r3, r0, r4
	ldrh r0, [r2, #0x16]
	strh r0, [r3, #0x16]
	ldrh r4, [r2, #0x18]
	strh r4, [r3, #0x18]
	ldrh r1, [r2, #0xa]
	movs r0, #0x9d
	lsls r0, r0, #2
	cmp r1, r0
	bne _08031680
	ldr r0, [r2, #0xc]
	ldr r1, _08031708 @ =gUnknown_084ACED8
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r4, r0
	strh r0, [r3, #0x18]
_08031680:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080316A8: .4byte gCurTask
_080316AC: .4byte 0x0300000C
_080316B0: .4byte 0x0300003C
_080316B4: .4byte 0x03000088
_080316B8: .4byte sa2__sub_801EC3C
_080316BC: .4byte 0x03000084
_080316C0: .4byte sub_803170C
_080316C4: .4byte 0xFFFFFE7F
_080316C8: .4byte gPlayer
_080316CC: .4byte gDispCnt
_080316D0: .4byte 0x00007FFF
_080316D4: .4byte gWinRegs
_080316D8: .4byte gBldRegs
_080316DC: .4byte gPseudoRandom
_080316E0: .4byte 0x00196225
_080316E4: .4byte 0x3C6EF35F
_080316E8: .4byte gUnknown_080BB434
_080316EC: .4byte gUnknown_080BB41C
_080316F0: .4byte gUnknown_080BB42C
_080316F4: .4byte TaskDestructor_NutsAndBolts
_080316F8: .4byte 0x03000040
_080316FC: .4byte gSineTable
_08031700: .4byte 0x000001FF
_08031704: .4byte gCamera
_08031708: .4byte gUnknown_084ACED8

	thumb_func_start sub_803170C
sub_803170C: @ 0x0803170C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _080317C8 @ =gCurTask
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r2, r4, r5
	ldr r3, _080317CC @ =0x0300000C
	adds r3, r3, r4
	mov sl, r3
	ldr r7, _080317D0 @ =0x0300003C
	adds r7, r4, r7
	str r7, [sp, #4]
	ldr r3, [r2]
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #0x6c]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, r8
	str r0, [sp, #8]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #0x70]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	str r7, [sp, #0xc]
	ldr r0, _080317D4 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08031784
	ldr r2, _080317D8 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080317DC @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	mov r1, sl
	ldr r0, [r1, #0x10]
	ldr r1, _080317E0 @ =0xFFFFFE7F
	ands r0, r1
	mov r2, sl
	str r0, [r2, #0x10]
_08031784:
	ldr r3, _080317E4 @ =0x03000084
	adds r0, r4, r3
	ldrh r1, [r0]
	adds r3, r1, #1
	strh r3, [r0]
	lsls r1, r1, #0x10
	movs r0, #0x96
	lsls r0, r0, #0x11
	cmp r1, r0
	bls _080317EC
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r1, r7, #0x10
	asrs r5, r1, #0x10
	movs r2, #0xa0
	lsls r2, r2, #0xe
	adds r1, r1, r2
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8015C5C
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateBossCapsule
	ldr r1, _080317E8 @ =gMusicManagerState
	movs r0, #0x30
	strb r0, [r1, #1]
	ldr r3, _080317C8 @ =gCurTask
	ldr r0, [r3]
	bl TaskDestroy
	b _08031942
	.align 2, 0
_080317C8: .4byte gCurTask
_080317CC: .4byte 0x0300000C
_080317D0: .4byte 0x0300003C
_080317D4: .4byte gPlayer
_080317D8: .4byte gDispCnt
_080317DC: .4byte 0x00007FFF
_080317E0: .4byte 0xFFFFFE7F
_080317E4: .4byte 0x03000084
_080317E8: .4byte gMusicManagerState
_080317EC:
	movs r4, #7
	ands r3, r4
	cmp r3, #0
	bne _080318CE
	ldr r0, _08031954 @ =gPseudoRandom
	mov sb, r0
	ldr r0, [r0]
	ldr r1, _08031958 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _0803195C @ =0x3C6EF35F
	adds r0, r0, r2
	mov r3, sb
	str r0, [r3]
	ands r4, r0
	ldr r0, _08031960 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _08031964 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08031968 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _0803196C @ =TaskDestructor_NutsAndBolts
	str r0, [sp]
	adds r0, r6, #0
	bl CreateNutsAndBoltsTask
	ldrh r3, [r0, #6]
	adds r5, r3, r5
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #5
	strh r2, [r5, #0x3e]
	ldr r2, _08031970 @ =0x03000040
	adds r3, r3, r2
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r7, _08031958 @ =0x00196225
	adds r6, r2, #0
	muls r6, r7, r6
	ldr r2, _0803195C @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _08031974 @ =gSineTable
	mov r8, r3
	ldr r3, _08031978 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	movs r7, #0
	ldrsh r4, [r2, r7]
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r7, #0
	ldrsh r3, [r3, r7]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _08031958 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r7, _0803195C @ =0x3C6EF35F
	adds r3, r3, r7
	mov r2, sb
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r3, #0x20
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_080318CE:
	ldr r1, _0803197C @ =gWinRegs
	movs r0, #0
	strh r0, [r1, #0xa]
	ldr r1, _08031980 @ =gBldRegs
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r2, _08031984 @ =gCamera
	ldrh r1, [r2]
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	mov r7, sl
	strh r0, [r7, #0x16]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x18]
@ inline sub_8031D0C
	ldr r3, _08031988 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	ldr r7, _0803198C @ =0x0300000C
	adds r2, r0, r7
	ldr r1, _08031990 @ =0x0300003C
	adds r3, r0, r1
	ldrh r0, [r2, #0x16]
	strh r0, [r3, #0x16]
	ldrh r4, [r2, #0x18]
	strh r4, [r3, #0x18]
	ldrh r1, [r2, #0xa]
	movs r0, #0x9d
	lsls r0, r0, #2
	cmp r1, r0
	bne _0803192A
	ldr r0, [r2, #0xc]
	ldr r1, _08031994 @ =gUnknown_084ACED8
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r4, r0
	strh r0, [r3, #0x18]
_0803192A:
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_08031942:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031954: .4byte gPseudoRandom
_08031958: .4byte 0x00196225
_0803195C: .4byte 0x3C6EF35F
_08031960: .4byte gUnknown_080BB434
_08031964: .4byte gUnknown_080BB41C
_08031968: .4byte gUnknown_080BB42C
_0803196C: .4byte TaskDestructor_NutsAndBolts
_08031970: .4byte 0x03000040
_08031974: .4byte gSineTable
_08031978: .4byte 0x000001FF
_0803197C: .4byte gWinRegs
_08031980: .4byte gBldRegs
_08031984: .4byte gCamera
_08031988: .4byte gCurTask
_0803198C: .4byte 0x0300000C
_08031990: .4byte 0x0300003C
_08031994: .4byte gUnknown_084ACED8

	thumb_func_start sub_8031998
sub_8031998: @ 0x08031998
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4]
	ldr r0, _08031A84 @ =sub_8031AB4
	movs r2, #0x88
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r7, _08031A88 @ =0x03000044
	adds r0, r3, r7
	movs r7, #0
	mov sl, r7
	strh r1, [r0]
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _08031A8C @ =0x03000046
	adds r0, r3, r4
	strh r1, [r0]
	ldr r7, _08031A90 @ =gPseudoRandom
	mov r8, r7
	mov r1, r8
	ldr r0, [r1]
	ldr r5, _08031A94 @ =0x00196225
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r4, _08031A98 @ =0x3C6EF35F
	adds r1, r1, r4
	str r1, [r7]
	lsrs r7, r1, #1
	movs r0, #0xf
	mov sb, r0
	ands r7, r0
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	rsbs r0, r0, #0
	subs r0, #0xa
	lsls r0, r0, #8
	str r0, [r2, #0x4c]
	ldr r0, _08031A9C @ =0xFFFFE000
	str r0, [r2, #0x50]
	str r6, [r2, #0x54]
	movs r0, #0xa
	str r0, [r2, #0x58]
	adds r0, r1, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	mov r1, r8
	str r0, [r1]
	mov r4, sb
	ands r0, r4
	adds r0, #0xa
	str r0, [r2, #0x58]
	strh r6, [r2, #0x16]
	strh r6, [r2, #0x18]
	ldr r0, _08031AA0 @ =0x06012720
	str r0, [r2, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r6, [r2, #8]
	ldr r0, _08031AA4 @ =0x00000276
	strh r0, [r2, #0xa]
	ldr r7, _08031AA8 @ =0x03000020
	adds r0, r3, r7
	mov r1, sl
	strb r1, [r0]
	strh r6, [r2, #0x14]
	strh r6, [r2, #0x1c]
	ldr r4, _08031AAC @ =0x03000021
	adds r1, r3, r4
	movs r0, #0xff
	strb r0, [r1]
	adds r7, #2
	adds r1, r3, r7
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08031AB0 @ =0x03000025
	adds r3, r3, r0
	mov r1, sl
	strb r1, [r3]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031A84: .4byte sub_8031AB4
_08031A88: .4byte 0x03000044
_08031A8C: .4byte 0x03000046
_08031A90: .4byte gPseudoRandom
_08031A94: .4byte 0x00196225
_08031A98: .4byte 0x3C6EF35F
_08031A9C: .4byte 0xFFFFE000
_08031AA0: .4byte 0x06012720
_08031AA4: .4byte 0x00000276
_08031AA8: .4byte 0x03000020
_08031AAC: .4byte 0x03000021
_08031AB0: .4byte 0x03000025

	thumb_func_start sub_8031AB4
sub_8031AB4: @ 0x08031AB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r3, _08031B08 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r5, [r0, #6]
	adds r1, r5, r1
	str r1, [sp]
	adds r4, r7, #0
	ldr r1, _08031B0C @ =0x03000046
	adds r2, r2, r1
	movs r6, #0
	ldrsh r1, [r2, r6]
	ldr r2, [r4, #0x50]
	asrs r0, r2, #8
	adds r1, r1, r0
	subs r1, #0x11
	ldr r0, _08031B10 @ =gWater
	movs r6, #2
	ldrsh r0, [r0, r6]
	cmp r1, r0
	bge _08031B14
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x54]
	adds r1, r2, r0
	str r1, [r4, #0x50]
	mov sl, r0
	b _08031B54
	.align 2, 0
_08031B08: .4byte gCurTask
_08031B0C: .4byte 0x03000046
_08031B10: .4byte gWater
_08031B14:
	movs r0, #1
	str r0, [sp, #4]
	ldr r1, _08031B2C @ =0x03000086
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _08031B30
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	b _08031B3C
	.align 2, 0
_08031B2C: .4byte 0x03000086
_08031B30:
	ldr r1, [r4, #0x58]
	cmp r1, #0
	bge _08031B38
	adds r1, #7
_08031B38:
	asrs r1, r1, #3
	ldr r0, [r4, #0x54]
_08031B3C:
	adds r0, r0, r1
	str r0, [r4, #0x54]
	ldr r1, [r7, #0x54]
	adds r0, r1, #0
	cmp r1, #0
	bge _08031B4A
	adds r0, r1, #7
_08031B4A:
	asrs r2, r0, #3
	ldr r0, [r7, #0x50]
	adds r0, r0, r2
	str r0, [r7, #0x50]
	mov sl, r2
_08031B54:
	ldr r2, [r7, #0x50]
	movs r0, #0xd0
	lsls r0, r0, #8
	cmp r2, r0
	ble _08031B66
	ldr r0, [r3]
	bl TaskDestroy
	b _08031CA2
_08031B66:
	adds r1, r7, #0
	adds r1, #0x44
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r1, r7, #0
	adds r1, #0x46
	asrs r0, r2, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r2, _08031C24 @ =gCamera
	ldrh r0, [r2]
	mov r3, sb
	lsls r1, r3, #0x10
	asrs r6, r1, #0x10
	subs r0, r6, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	ldr r3, [sp]
	cmp r3, r0
	beq _08031BE4
	adds r0, r3, #0
	adds r0, #0x86
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	bgt _08031BE4
	ldr r3, _08031C28 @ =gPlayer
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BFEC
	ldr r0, _08031C2C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08031BE4
	ldr r3, _08031C30 @ =gPartner
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BFEC
_08031BE4:
	ldr r6, [sp, #4]
	cmp r6, #0
	beq _08031BFE
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	ldr r3, _08031C28 @ =gPlayer
	adds r0, r4, #0
	bl Coll_Player_PlatformCrumbling
_08031BFE:
	ldr r3, _08031C28 @ =gPlayer
	ldr r2, [r3, #0x10]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08031C40
	ldr r0, [r3, #0x28]
	cmp r0, r4
	bne _08031C40
	ldr r1, [r7, #0x50]
	movs r0, #0xc4
	lsls r0, r0, #8
	cmp r1, r0
	ble _08031C34
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #0x10]
	b _08031C40
	.align 2, 0
_08031C24: .4byte gCamera
_08031C28: .4byte gPlayer
_08031C2C: .4byte gNumSingleplayerCharacters
_08031C30: .4byte gPartner
_08031C34:
	ldr r0, [r3, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	add r0, sl
	str r0, [r3, #4]
_08031C40:
	ldr r0, _08031C88 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08031C9C
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	ldr r5, _08031C8C @ =gPartner
	adds r0, r4, #0
	adds r3, r5, #0
	bl Coll_Player_PlatformCrumbling
	ldr r3, [r5, #0x10]
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _08031C9C
	ldr r0, [r5, #0x28]
	cmp r0, r4
	bne _08031C9C
	ldr r1, [r7, #0x50]
	movs r0, #0xc4
	lsls r0, r0, #8
	cmp r1, r0
	ble _08031C90
	movs r0, #9
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r5, #0x10]
	b _08031C9C
	.align 2, 0
_08031C88: .4byte gNumSingleplayerCharacters
_08031C8C: .4byte gPartner
_08031C90:
	ldr r0, [r5, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	add r0, sl
	str r0, [r5, #4]
_08031C9C:
	adds r0, r4, #0
	bl DisplaySprite
_08031CA2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_8031CB4
TaskDestructor_8031CB4: @ 0x08031CB4
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

@ inline same as sub_802EF24 in Boss 2 and sub_8030814 in Boss 3
	thumb_func_start sub_8031CD0
sub_8031CD0: @ 0x08031CD0
	ldr r0, _08031D00 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _08031D04 @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08031CFC
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08031CFC
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08031D08 @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_08031CFC:
	bx lr
	.align 2, 0
_08031D00: .4byte gCurTask
_08031D04: .4byte 0x0300003C
_08031D08: .4byte 0x0300005D

	thumb_func_start sub_8031D0C
sub_8031D0C: @ 0x08031D0C
	push {r4, lr}
	ldr r0, _08031D48 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08031D4C @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r3, r0, r1
	ldrh r0, [r2, #0x16]
	strh r0, [r3, #0x16]
	ldrh r4, [r2, #0x18]
	strh r4, [r3, #0x18]
	ldrh r1, [r2, #0xa]
	movs r0, #0x9d
	lsls r0, r0, #2
	cmp r1, r0
	bne _08031D42
	ldr r0, [r2, #0xc]
	ldr r1, _08031D50 @ =gUnknown_084ACED8
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r4, r0
	strh r0, [r3, #0x18]
_08031D42:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031D48: .4byte gCurTask
_08031D4C: .4byte 0x0300000C
_08031D50: .4byte gUnknown_084ACED8

@ inline - same as sub_802EF60 in Boss 2 and sub_8030870 in Boss 3
	thumb_func_start sub_8031D54
sub_8031D54: @ 0x08031D54
	push {r4, lr}
	ldr r2, _08031D7C @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08031D80 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _08031D84 @ =gCamera
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
_08031D7C: .4byte gCurTask
_08031D80: .4byte 0x0300000C
_08031D84: .4byte gCamera
