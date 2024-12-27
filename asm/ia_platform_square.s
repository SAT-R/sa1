.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Platform_Square
CreateEntity_Platform_Square: @ 0x0807D190
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0807D224 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0807D228 @ =Task_Platform_Square
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0807D22C @ =TaskDestructor_Platform_Square
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r5, r2, r0
	movs r1, #0
	movs r7, #0
	mov r0, sb
	strh r0, [r3, #4]
	mov r0, sl
	strh r0, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #8]
	strb r4, [r3, #9]
	str r7, [r3, #0x40]
	str r7, [r3, #0x44]
	ldr r4, _0807D230 @ =0x0300004F
	adds r0, r2, r4
	strb r1, [r0]
	subs r4, #1
	adds r0, r2, r4
	strb r1, [r0]
	ldrb r0, [r6, #5]
	ldrb r1, [r6, #6]
	cmp r0, r1
	bls _0807D260
	movs r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _0807D238
	subs r4, #4
	adds r1, r2, r4
	movs r0, #4
	strh r0, [r1]
	ldr r1, _0807D234 @ =0x03000048
	adds r0, r2, r1
	strh r7, [r0]
	adds r4, #2
	adds r0, r2, r4
	b _0807D24C
	.align 2, 0
_0807D224: .4byte gCurrentLevel
_0807D228: .4byte Task_Platform_Square
_0807D22C: .4byte TaskDestructor_Platform_Square
_0807D230: .4byte 0x0300004F
_0807D234: .4byte 0x03000048
_0807D238:
	ldr r0, _0807D254 @ =0x0300004A
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	ldr r4, _0807D258 @ =0x03000048
	adds r1, r2, r4
	movs r0, #0x80
	strh r0, [r1]
	ldr r1, _0807D25C @ =0x0300004C
	adds r0, r2, r1
_0807D24C:
	strh r7, [r0]
	ldrb r1, [r6, #4]
	b _0807D2A4
	.align 2, 0
_0807D254: .4byte 0x0300004A
_0807D258: .4byte 0x03000048
_0807D25C: .4byte 0x0300004C
_0807D260:
	movs r0, #4
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _0807D28C
	ldr r4, _0807D280 @ =0x0300004A
	adds r0, r2, r4
	strh r7, [r0]
	ldr r0, _0807D284 @ =0x0300004C
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	ldr r1, _0807D288 @ =0x03000048
	adds r0, r2, r1
	strh r7, [r0]
	b _0807D2A2
	.align 2, 0
_0807D280: .4byte 0x0300004A
_0807D284: .4byte 0x0300004C
_0807D288: .4byte 0x03000048
_0807D28C:
	ldr r4, _0807D30C @ =0x0300004A
	adds r0, r2, r4
	strh r7, [r0]
	ldr r0, _0807D310 @ =0x0300004C
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	subs r4, #2
	adds r1, r2, r4
	movs r0, #0x80
	strh r0, [r1]
_0807D2A2:
	ldrb r1, [r6, #3]
_0807D2A4:
	adds r0, r3, #0
	adds r0, #0x50
	strb r1, [r0]
	adds r2, r0, #0
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r3, sb
	lsls r1, r3, #8
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r5, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r3, sl
	lsls r1, r3, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	mov r3, r8
	cmp r3, #2
	beq _0807D38E
	ldr r0, _0807D314 @ =gCurrentLevel
	ldrb r3, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0x10
	beq _0807D38E
	mov r0, r8
	cmp r0, #5
	beq _0807D2EA
	cmp r1, #0x11
	bne _0807D350
_0807D2EA:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _0807D2F6
	cmp r1, #0x11
	bne _0807D328
_0807D2F6:
	ldrb r0, [r2]
	cmp r0, #0
	beq _0807D318
	movs r0, #0x28
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x96
	lsls r0, r0, #2
	b _0807D39A
	.align 2, 0
_0807D30C: .4byte 0x0300004A
_0807D310: .4byte 0x0300004C
_0807D314: .4byte gCurrentLevel
_0807D318:
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _0807D324 @ =0x00000257
	b _0807D39A
	.align 2, 0
_0807D324: .4byte 0x00000257
_0807D328:
	ldrb r0, [r2]
	cmp r0, #0
	beq _0807D340
	movs r0, #0x28
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _0807D33C @ =0x00000207
	b _0807D39A
	.align 2, 0
_0807D33C: .4byte 0x00000207
_0807D340:
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _0807D34C @ =0x00000206
	b _0807D39A
	.align 2, 0
_0807D34C: .4byte 0x00000206
_0807D350:
	mov r1, r8
	cmp r1, #4
	bne _0807D37A
	ldrb r0, [r2]
	cmp r0, #0
	beq _0807D36C
	movs r0, #0x28
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _0807D368 @ =0x00000219
	b _0807D39A
	.align 2, 0
_0807D368: .4byte 0x00000219
_0807D36C:
	movs r0, #0x28
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x86
	lsls r0, r0, #2
	b _0807D39A
_0807D37A:
	mov r3, r8
	cmp r3, #3
	bne _0807D38E
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x83
	lsls r0, r0, #2
	b _0807D39A
_0807D38E:
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xf7
	lsls r0, r0, #1
_0807D39A:
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r4, [r0]
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r1, [r5, #8]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_Platform_Square
Task_Platform_Square: @ 0x0807D3E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	movs r0, #0
	str r0, [sp, #0x20]
	movs r1, #0
	str r1, [sp, #0x24]
	movs r2, #0
	str r2, [sp, #0x28]
	ldr r0, _0807D500 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov sl, r0
	ldr r3, _0807D504 @ =0x0300000C
	adds r3, r7, r3
	str r3, [sp, #0x10]
	ldr r4, [r0]
	str r4, [sp, #0x1c]
	ldr r0, _0807D508 @ =0x0300004A
	adds r1, r7, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0807D45A
	mov r3, sl
	ldr r6, [r3, #0x40]
	ldrb r3, [r4, #5]
	lsls r3, r3, #0xb
	ldr r5, _0807D50C @ =gSineTable
	adds r4, r0, #0
	ldr r2, _0807D510 @ =gStageTime
	ldr r1, _0807D514 @ =0x03000048
	adds r0, r7, r1
	ldrh r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r4, r0
	ldr r1, _0807D518 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	mov r3, sl
	str r0, [r3, #0x40]
	subs r6, r0, r6
	str r6, [sp, #0x20]
_0807D45A:
	ldr r4, _0807D51C @ =0x0300004C
	adds r1, r7, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0807D49E
	mov r3, sl
	ldr r6, [r3, #0x44]
	ldr r4, [sp, #0x1c]
	ldrb r3, [r4, #6]
	lsls r3, r3, #0xb
	ldr r5, _0807D50C @ =gSineTable
	adds r4, r0, #0
	ldr r2, _0807D510 @ =gStageTime
	ldr r1, _0807D514 @ =0x03000048
	adds r0, r7, r1
	ldrh r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r4, r0
	ldr r1, _0807D518 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	mov r3, sl
	str r0, [r3, #0x44]
	subs r6, r0, r6
	str r6, [sp, #0x24]
_0807D49E:
	mov r4, sl
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, [sp, #0x1c]
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _0807D520 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r1, #0x10
	str r4, [sp, #0x14]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r4, sl
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp, #0x10]
	strh r1, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsrs r1, r2, #0x10
	str r1, [sp, #0x18]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldr r3, [sp, #0x10]
	strh r2, [r3, #0x18]
	movs r5, #0
	ldr r7, _0807D524 @ =gPartner
	ldr r6, _0807D528 @ =gPlayer

	thumb_func_start sub_807D4EC
sub_807D4EC: @ 0x0807D4EC
	cmp r5, #0
	beq _0807D52C
	ldr r0, [r7, #0x10]
	movs r4, #0x80
	ands r0, r4
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	str r1, [sp, #0x30]
	b _0807D538
	.align 2, 0
_0807D500: .4byte gCurTask
_0807D504: .4byte 0x0300000C
_0807D508: .4byte 0x0300004A
_0807D50C: .4byte gSineTable
_0807D510: .4byte gStageTime
_0807D514: .4byte 0x03000048
_0807D518: .4byte 0x000003FF
_0807D51C: .4byte 0x0300004C
_0807D520: .4byte gCamera
_0807D524: .4byte gPartner
_0807D528: .4byte gPlayer
_0807D52C:
	ldr r0, [r6, #0x10]
	movs r2, #0x80
	ands r0, r2
	ldr r3, [sp, #0x14]
	lsls r3, r3, #0x10
	str r3, [sp, #0x30]
_0807D538:
	cmp r0, #0
	beq _0807D540
	bl _0807E2DE
_0807D540:
	cmp r5, #0
	beq _0807D554
	ldr r0, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0xf
	ands r0, r4
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	str r1, [sp, #0x30]
	b _0807D562
_0807D554:
	ldr r0, [r6, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0xf
	ands r0, r2
	ldr r3, [sp, #0x14]
	lsls r3, r3, #0x10
	str r3, [sp, #0x30]
_0807D562:
	cmp r0, #0
	beq _0807D56A
	bl _0807E2DE
_0807D56A:
	cmp r5, #0
	beq _0807D574
	ldr r4, [r7]
	mov sb, r4
	b _0807D578
_0807D574:
	ldr r0, [r6]
	mov sb, r0
_0807D578:
	mov r2, sl
	adds r2, #0x4e
	ldrb r1, [r2]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	str r2, [sp, #0x38]
	cmp r1, #0
	bne _0807D58C
	b _0807D92C
_0807D58C:
	cmp r5, #0
	beq _0807D59A
	ldr r0, [r7]
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	str r0, [r7]
	b _0807D5A2
_0807D59A:
	ldr r0, [r6]
	ldr r2, [sp, #0x20]
	adds r0, r0, r2
	str r0, [r6]
_0807D5A2:
	ldr r3, [sp, #0x24]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r3, r4
	cmp r5, #0
	beq _0807D5B6
	ldr r0, [r7, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
	b _0807D5BC
_0807D5B6:
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
_0807D5BC:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	ble _0807D6A2
	cmp r5, #0
	beq _0807D5CA
	ldr r0, [r7]
	b _0807D5CC
_0807D5CA:
	ldr r0, [r6]
_0807D5CC:
	asrs r0, r0, #8
	cmp r5, #0
	beq _0807D5DA
	adds r1, r0, #2
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807D5E0
_0807D5DA:
	adds r1, r0, #2
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807D5E0:
	adds r3, r1, r0
	cmp r5, #0
	beq _0807D5EA
	ldr r0, [r7, #4]
	b _0807D5EC
_0807D5EA:
	ldr r0, [r6, #4]
_0807D5EC:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D5FC
	ldr r4, _0807D5F8 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _0807D600
	.align 2, 0
_0807D5F8: .4byte gUnknown_03005AD7
_0807D5FC:
	ldr r0, _0807D61C @ =gUnknown_03005A47
	ldrb r2, [r0]
_0807D600:
	movs r4, #0
	str r4, [sp]
	ldr r0, _0807D620 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_803FA74
	adds r4, r0, #0
	cmp r5, #0
	beq _0807D624
	ldr r0, [r7]
	b _0807D626
	.align 2, 0
_0807D61C: .4byte gUnknown_03005A47
_0807D620: .4byte sub_803FE44
_0807D624:
	ldr r0, [r6]
_0807D626:
	asrs r0, r0, #8
	cmp r5, #0
	beq _0807D634
	adds r1, r0, #2
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807D63A
_0807D634:
	adds r1, r0, #2
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807D63A:
	adds r3, r1, r0
	cmp r5, #0
	beq _0807D644
	ldr r0, [r7, #4]
	b _0807D646
_0807D644:
	ldr r0, [r6, #4]
_0807D646:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D652
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807D656
_0807D652:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807D656:
	subs r1, r1, r0
	cmp r5, #0
	beq _0807D664
	ldr r0, _0807D660 @ =gUnknown_03005AD7
	b _0807D666
	.align 2, 0
_0807D660: .4byte gUnknown_03005AD7
_0807D664:
	ldr r0, _0807D694 @ =gUnknown_03005A47
_0807D666:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0807D698 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_803FA74
	cmp r0, r4
	ble _0807D67E
	adds r0, r4, #0
_0807D67E:
	cmp r0, #0
	blt _0807D684
	b _0807D782
_0807D684:
	lsls r1, r0, #8
	cmp r5, #0
	beq _0807D69C
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	b _0807D782
	.align 2, 0
_0807D694: .4byte gUnknown_03005A47
_0807D698: .4byte sub_803FE44
_0807D69C:
	ldr r0, [r6]
	adds r0, r0, r1
	b _0807D780
_0807D6A2:
	cmp r5, #0
	beq _0807D6AA
	ldr r0, [r7]
	b _0807D6AC
_0807D6AA:
	ldr r0, [r6]
_0807D6AC:
	asrs r0, r0, #8
	cmp r5, #0
	beq _0807D6BA
	subs r1, r0, #2
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807D6C0
_0807D6BA:
	subs r1, r0, #2
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807D6C0:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807D6CA
	ldr r0, [r7, #4]
	b _0807D6CC
_0807D6CA:
	ldr r0, [r6, #4]
_0807D6CC:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D6DC
	ldr r4, _0807D6D8 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _0807D6E0
	.align 2, 0
_0807D6D8: .4byte gUnknown_03005AD7
_0807D6DC:
	ldr r0, _0807D6FC @ =gUnknown_03005A47
	ldrb r2, [r0]
_0807D6E0:
	movs r4, #0
	str r4, [sp]
	ldr r0, _0807D700 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	adds r4, r0, #0
	cmp r5, #0
	beq _0807D704
	ldr r0, [r7]
	b _0807D706
	.align 2, 0
_0807D6FC: .4byte gUnknown_03005A47
_0807D700: .4byte sub_803FE44
_0807D704:
	ldr r0, [r6]
_0807D706:
	asrs r0, r0, #8
	cmp r5, #0
	beq _0807D714
	subs r1, r0, #2
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807D71A
_0807D714:
	subs r1, r0, #2
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807D71A:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807D724
	ldr r0, [r7, #4]
	b _0807D726
_0807D724:
	ldr r0, [r6, #4]
_0807D726:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D732
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807D736
_0807D732:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807D736:
	subs r1, r1, r0
	cmp r5, #0
	beq _0807D744
	ldr r0, _0807D740 @ =gUnknown_03005AD7
	b _0807D746
	.align 2, 0
_0807D740: .4byte gUnknown_03005AD7
_0807D744:
	ldr r0, _0807D774 @ =gUnknown_03005A47
_0807D746:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0807D778 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	cmp r0, r4
	ble _0807D760
	adds r0, r4, #0
_0807D760:
	cmp r0, #0
	bge _0807D782
	lsls r1, r0, #8
	cmp r5, #0
	beq _0807D77C
	ldr r0, [r7]
	subs r0, r0, r1
	str r0, [r7]
	b _0807D782
	.align 2, 0
_0807D774: .4byte gUnknown_03005A47
_0807D778: .4byte sub_803FE44
_0807D77C:
	ldr r0, [r6]
	subs r0, r0, r1
_0807D780:
	str r0, [r6]
_0807D782:
	cmp r5, #0
	beq _0807D78A
	ldr r0, [r7, #4]
	b _0807D78C
_0807D78A:
	ldr r0, [r6, #4]
_0807D78C:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D798
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807D79C
_0807D798:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807D79C:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807D7A6
	ldr r0, [r7]
	b _0807D7A8
_0807D7A6:
	ldr r0, [r6]
_0807D7A8:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D7B4
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807D7B8
_0807D7B4:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807D7B8:
	subs r1, r1, r0
	cmp r5, #0
	beq _0807D7C8
	ldr r4, _0807D7C4 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _0807D7CC
	.align 2, 0
_0807D7C4: .4byte gUnknown_03005AD7
_0807D7C8:
	ldr r0, _0807D7E8 @ =gUnknown_03005A47
	ldrb r2, [r0]
_0807D7CC:
	movs r4, #0
	str r4, [sp]
	ldr r0, _0807D7EC @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	adds r4, r0, #0
	cmp r5, #0
	beq _0807D7F0
	ldr r0, [r7, #4]
	b _0807D7F2
	.align 2, 0
_0807D7E8: .4byte gUnknown_03005A47
_0807D7EC: .4byte sub_803FF84
_0807D7F0:
	ldr r0, [r6, #4]
_0807D7F2:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D7FE
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807D802
_0807D7FE:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807D802:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807D80C
	ldr r0, [r7]
	b _0807D80E
_0807D80C:
	ldr r0, [r6]
_0807D80E:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D81A
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807D81E
_0807D81A:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807D81E:
	adds r1, r1, r0
	cmp r5, #0
	beq _0807D82C
	ldr r0, _0807D828 @ =gUnknown_03005AD7
	b _0807D82E
	.align 2, 0
_0807D828: .4byte gUnknown_03005AD7
_0807D82C:
	ldr r0, _0807D86C @ =gUnknown_03005A47
_0807D82E:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0807D870 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	cmp r0, r4
	ble _0807D848
	adds r0, r4, #0
_0807D848:
	cmp r0, #0
	bge _0807D8D4
	mov r0, sl
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [sp, #0x14]
	lsls r2, r2, #0x10
	str r2, [sp, #0x30]
	cmp r0, #0
	bne _0807D862
	bl _0807E16A
_0807D862:
	cmp r5, #0
	beq _0807D874
	mov r3, sb
	str r3, [r7]
	b _0807D878
	.align 2, 0
_0807D86C: .4byte gUnknown_03005A47
_0807D870: .4byte sub_803FF84
_0807D874:
	mov r4, sb
	str r4, [r6]
_0807D878:
	cmp r5, #0
	beq _0807D888
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807D892
_0807D888:
	ldr r0, [r6, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807D892:
	cmp r5, #0
	beq _0807D8A0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0807D8A8
_0807D8A0:
	ldr r0, [r6, #0x10]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r6, #0x10]
_0807D8A8:
	cmp r5, #0
	beq _0807D8C0
	ldr r0, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0xf
	orrs r0, r3
	str r0, [r7, #0x10]
	ldr r4, [sp, #0x14]
	lsls r4, r4, #0x10
	str r4, [sp, #0x30]
	bl _0807E16A
_0807D8C0:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
	ldr r2, [sp, #0x14]
	lsls r2, r2, #0x10
	str r2, [sp, #0x30]
	bl _0807E16A
_0807D8D4:
	mov r3, sl
	ldr r1, [r3, #0x40]
	asrs r1, r1, #8
	ldr r4, [sp, #0x14]
	lsls r2, r4, #0x10
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	ldr r1, [r3, #0x44]
	asrs r1, r1, #8
	ldr r3, [sp, #0x18]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r3, _0807D924 @ =gPlayer
	str r2, [sp, #0x30]
	cmp r5, #0
	beq _0807D902
	ldr r3, _0807D928 @ =gPartner
_0807D902:
	ldr r0, [sp, #0x10]
	mov r1, ip
	adds r2, r4, #0
	bl sub_800CE34
	cmp r0, #0
	beq _0807D914
	bl _0807E16A
_0807D914:
	movs r1, #1
	lsls r1, r5
	ldr r4, [sp, #0x38]
	ldrb r0, [r4]
	bics r0, r1
	bl sub_807E168
	.align 2, 0
_0807D924: .4byte gPlayer
_0807D928: .4byte gPartner
_0807D92C:
	add r2, sp, #8
	cmp r5, #0
	beq _0807D936
	ldrb r0, [r7, #0xe]
	b _0807D938
_0807D936:
	ldrb r0, [r6, #0xe]
_0807D938:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	adds r3, r0, #0
	cmp r5, #0
	beq _0807D94A
	ldrb r1, [r7, #0xf]
	b _0807D94C
_0807D94A:
	ldrb r1, [r6, #0xf]
_0807D94C:
	movs r0, #1
	subs r1, r0, r1
	mov r0, sp
	adds r0, #0xd
	strb r1, [r0]
	cmp r5, #0
	beq _0807D95E
	ldrb r0, [r7, #0xe]
	b _0807D960
_0807D95E:
	ldrb r0, [r6, #0xe]
_0807D960:
	adds r1, r0, #5
	mov r0, sp
	adds r0, #0xe
	strb r1, [r0]
	cmp r5, #0
	beq _0807D970
	ldrb r0, [r7, #0xf]
	b _0807D972
_0807D970:
	ldrb r0, [r6, #0xf]
_0807D972:
	subs r1, r0, #1
	mov r0, sp
	adds r0, #0xf
	strb r1, [r0]
	adds r0, r2, #0
	adds r1, r3, #0
	movs r2, #4
	bl memcpy
	cmp r5, #0
	beq _0807D98E
	ldr r0, [r7]
	mov sb, r0
	b _0807D992
_0807D98E:
	ldr r1, [r6]
	mov sb, r1
_0807D992:
	cmp r5, #0
	beq _0807D99C
	ldr r2, [r7, #4]
	str r2, [sp, #0x2c]
	b _0807D9A0
_0807D99C:
	ldr r3, [r6, #4]
	str r3, [sp, #0x2c]
_0807D9A0:
	cmp r5, #0
	beq _0807D9A8
	ldr r0, [r7, #4]
	b _0807D9AA
_0807D9A8:
	ldr r0, [r6, #4]
_0807D9AA:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D9B6
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807D9BA
_0807D9B6:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807D9BA:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807D9C4
	ldr r0, [r7]
	b _0807D9C6
_0807D9C4:
	ldr r0, [r6]
_0807D9C6:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D9D2
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807D9D6
_0807D9D2:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807D9D6:
	subs r1, r1, r0
	cmp r5, #0
	beq _0807D9E8
	ldr r4, _0807D9E4 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _0807D9EC
	.align 2, 0
_0807D9E4: .4byte gUnknown_03005AD7
_0807D9E8:
	ldr r0, _0807DA08 @ =gUnknown_03005A47
	ldrb r2, [r0]
_0807D9EC:
	movs r4, #0
	str r4, [sp]
	ldr r0, _0807DA0C @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	adds r4, r0, #0
	cmp r5, #0
	beq _0807DA10
	ldr r0, [r7, #4]
	b _0807DA12
	.align 2, 0
_0807DA08: .4byte gUnknown_03005A47
_0807DA0C: .4byte sub_803FF84
_0807DA10:
	ldr r0, [r6, #4]
_0807DA12:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DA1E
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807DA22
_0807DA1E:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807DA22:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807DA2C
	ldr r0, [r7]
	b _0807DA2E
_0807DA2C:
	ldr r0, [r6]
_0807DA2E:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DA3A
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807DA3E
_0807DA3A:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807DA3E:
	adds r1, r1, r0
	cmp r5, #0
	beq _0807DA4C
	ldr r0, _0807DA48 @ =gUnknown_03005AD7
	b _0807DA4E
	.align 2, 0
_0807DA48: .4byte gUnknown_03005AD7
_0807DA4C:
	ldr r0, _0807DA9C @ =gUnknown_03005A47
_0807DA4E:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0807DAA0 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	cmp r0, r4
	ble _0807DA68
	adds r0, r4, #0
_0807DA68:
	cmp r0, #0
	bge _0807DAB4
	ldr r1, [sp, #0x14]
	lsls r3, r1, #0x10
	asrs r1, r3, #0x10
	mov r2, sl
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	adds r1, r1, r0
	mov r8, r1
	ldr r4, [sp, #0x18]
	lsls r2, r4, #0x10
	asrs r1, r2, #0x10
	mov r4, sl
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r4, r1, r0
	add r0, sp, #8
	mov ip, r0
	str r3, [sp, #0x30]
	str r2, [sp, #0x34]
	cmp r5, #0
	beq _0807DAA4
	str r7, [sp]
	b _0807DAA6
	.align 2, 0
_0807DA9C: .4byte gUnknown_03005A47
_0807DAA0: .4byte sub_803FF84
_0807DAA4:
	str r6, [sp]
_0807DAA6:
	ldr r0, [sp, #0x10]
	mov r1, r8
	adds r2, r4, #0
	mov r3, ip
	bl sub_807E914
	b _0807DAF6
_0807DAB4:
	mov r2, sl
	ldr r1, [r2, #0x40]
	asrs r1, r1, #8
	ldr r4, [sp, #0x14]
	lsls r3, r4, #0x10
	asrs r0, r3, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r1, [r2, #0x44]
	asrs r1, r1, #8
	ldr r0, [sp, #0x18]
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r1, _0807DB34 @ =gPlayer
	mov ip, r1
	str r3, [sp, #0x30]
	str r2, [sp, #0x34]
	cmp r5, #0
	beq _0807DAE8
	ldr r2, _0807DB38 @ =gPartner
	mov ip, r2
_0807DAE8:
	ldr r0, [sp, #0x10]
	mov r1, r8
	adds r2, r4, #0
	mov r3, ip
	bl sub_80096B0
	str r0, [sp, #0x28]
_0807DAF6:
	movs r0, #0xb8
	lsls r0, r0, #0xd
	ldr r3, [sp, #0x28]
	ands r0, r3
	cmp r0, #0
	bne _0807DB04
	b _0807E042
_0807DB04:
	mov r2, sl
	adds r2, #0x4f
	movs r0, #1
	lsls r0, r5
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	bne _0807DB1E
	b _0807DC20
_0807DB1E:
	mov r0, sl
	adds r0, #0x4a
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bne _0807DB2C
	b _0807E16A
_0807DB2C:
	cmp r5, #0
	beq _0807DB3C
	ldr r0, [r7]
	b _0807DB3E
	.align 2, 0
_0807DB34: .4byte gPlayer
_0807DB38: .4byte gPartner
_0807DB3C:
	ldr r0, [r6]
_0807DB3E:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DB4A
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807DB4E
_0807DB4A:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807DB4E:
	adds r3, r1, r0
	cmp r5, #0
	beq _0807DB58
	ldr r0, [r7, #4]
	b _0807DB5A
_0807DB58:
	ldr r0, [r6, #4]
_0807DB5A:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DB6C
	ldr r0, _0807DB68 @ =gUnknown_03005AD7
	ldrb r2, [r0]
	b _0807DB70
	.align 2, 0
_0807DB68: .4byte gUnknown_03005AD7
_0807DB6C:
	ldr r4, _0807DB94 @ =gUnknown_03005A47
	ldrb r2, [r4]
_0807DB70:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0807DB98 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_803FA74
	cmp r0, #0
	bgt _0807DBC4
	cmp r5, #0
	beq _0807DB9C
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807DBA6
	.align 2, 0
_0807DB94: .4byte gUnknown_03005A47
_0807DB98: .4byte sub_803FE44
_0807DB9C:
	ldr r0, [r6, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807DBA6:
	cmp r5, #0
	beq _0807DBB4
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0807DBBC
_0807DBB4:
	ldr r0, [r6, #0x10]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r6, #0x10]
_0807DBBC:
	cmp r5, #0
	beq _0807DBC2
	b _0807DCCC
_0807DBC2:
	b _0807DCD8
_0807DBC4:
	cmp r5, #0
	beq _0807DBD4
	ldrh r0, [r7, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0807DBE0
	b _0807E16A
_0807DBD4:
	ldrh r0, [r6, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0807DBE0
	b _0807E16A
_0807DBE0:
	cmp r5, #0
	beq _0807DBE8
	ldr r0, [r7, #0x10]
	b _0807DBEA
_0807DBE8:
	ldr r0, [r6, #0x10]
_0807DBEA:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0807DBF4
	b _0807E16A
_0807DBF4:
	cmp r5, #0
	beq _0807DC08
	ldr r0, [r7]
	ldr r1, _0807DC04 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r7]
	b _0807DC10
	.align 2, 0
_0807DC04: .4byte 0xFFFFFF00
_0807DC08:
	ldr r0, [r6]
	ldr r2, _0807DC1C @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r6]
_0807DC10:
	cmp r5, #0
	beq _0807DC16
	b _0807DD32
_0807DC16:
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	b _0807E03C
	.align 2, 0
_0807DC1C: .4byte 0xFFFFFF00
_0807DC20:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ldr r3, [sp, #0x28]
	ands r0, r3
	cmp r0, #0
	bne _0807DC2E
	b _0807DD42
_0807DC2E:
	mov r0, sl
	adds r0, #0x4a
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bne _0807DC3C
	b _0807E16A
_0807DC3C:
	cmp r5, #0
	beq _0807DC44
	ldr r0, [r7]
	b _0807DC46
_0807DC44:
	ldr r0, [r6]
_0807DC46:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DC52
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807DC56
_0807DC52:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807DC56:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807DC60
	ldr r0, [r7, #4]
	b _0807DC62
_0807DC60:
	ldr r0, [r6, #4]
_0807DC62:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DC74
	ldr r0, _0807DC70 @ =gUnknown_03005AD7
	ldrb r2, [r0]
	b _0807DC78
	.align 2, 0
_0807DC70: .4byte gUnknown_03005AD7
_0807DC74:
	ldr r4, _0807DCA0 @ =gUnknown_03005A47
	ldrb r2, [r4]
_0807DC78:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0807DCA4 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	cmp r0, #0
	bge _0807DCE4
	cmp r5, #0
	beq _0807DCA8
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807DCB2
	.align 2, 0
_0807DCA0: .4byte gUnknown_03005A47
_0807DCA4: .4byte sub_803FE44
_0807DCA8:
	ldr r0, [r6, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807DCB2:
	cmp r5, #0
	beq _0807DCC0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0807DCC8
_0807DCC0:
	ldr r0, [r6, #0x10]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r6, #0x10]
_0807DCC8:
	cmp r5, #0
	beq _0807DCD8
_0807DCCC:
	ldr r0, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0xf
	orrs r0, r3
	str r0, [r7, #0x10]
	b _0807E16A
_0807DCD8:
	ldr r0, [r6, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0xf
	orrs r0, r4
	str r0, [r6, #0x10]
	b _0807E16A
_0807DCE4:
	cmp r5, #0
	beq _0807DCF4
	ldrh r0, [r7, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0807DD00
	b _0807E16A
_0807DCF4:
	ldrh r0, [r6, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0807DD00
	b _0807E16A
_0807DD00:
	cmp r5, #0
	beq _0807DD08
	ldr r0, [r7, #0x10]
	b _0807DD0A
_0807DD08:
	ldr r0, [r6, #0x10]
_0807DD0A:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0807DD14
	b _0807E16A
_0807DD14:
	cmp r5, #0
	beq _0807DD24
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r7]
	b _0807DD2E
_0807DD24:
	ldr r0, [r6]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r6]
_0807DD2E:
	cmp r5, #0
	beq _0807DD3C
_0807DD32:
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0807E16A
_0807DD3C:
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	b _0807E03C
_0807DD42:
	movs r0, #0x80
	lsls r0, r0, #9
	ldr r3, [sp, #0x28]
	ands r0, r3
	cmp r0, #0
	bne _0807DD50
	b _0807DEC6
_0807DD50:
	cmp r5, #0
	beq _0807DD5A
	mov r4, sb
	str r4, [r7]
	b _0807DD5E
_0807DD5A:
	mov r0, sb
	str r0, [r6]
_0807DD5E:
	mov r0, sl
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0807DD6C
	b _0807E16A
_0807DD6C:
	cmp r5, #0
	beq _0807DD74
	ldr r0, [r7, #4]
	b _0807DD76
_0807DD74:
	ldr r0, [r6, #4]
_0807DD76:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DD82
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807DD86
_0807DD82:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807DD86:
	adds r3, r1, r0
	cmp r5, #0
	beq _0807DD90
	ldr r0, [r7]
	b _0807DD92
_0807DD90:
	ldr r0, [r6]
_0807DD92:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DD9E
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807DDA2
_0807DD9E:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807DDA2:
	subs r1, r1, r0
	cmp r5, #0
	beq _0807DDB4
	ldr r4, _0807DDB0 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _0807DDB8
	.align 2, 0
_0807DDB0: .4byte gUnknown_03005AD7
_0807DDB4:
	ldr r0, _0807DDD4 @ =gUnknown_03005A47
	ldrb r2, [r0]
_0807DDB8:
	movs r4, #0
	str r4, [sp]
	ldr r0, _0807DDD8 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_803FA74
	adds r4, r0, #0
	cmp r5, #0
	beq _0807DDDC
	ldr r0, [r7, #4]
	b _0807DDDE
	.align 2, 0
_0807DDD4: .4byte gUnknown_03005A47
_0807DDD8: .4byte sub_803FF84
_0807DDDC:
	ldr r0, [r6, #4]
_0807DDDE:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DDEA
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807DDEE
_0807DDEA:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807DDEE:
	adds r3, r1, r0
	cmp r5, #0
	beq _0807DDF8
	ldr r0, [r7]
	b _0807DDFA
_0807DDF8:
	ldr r0, [r6]
_0807DDFA:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DE06
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807DE0A
_0807DE06:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807DE0A:
	adds r1, r1, r0
	cmp r5, #0
	beq _0807DE18
	ldr r0, _0807DE14 @ =gUnknown_03005AD7
	b _0807DE1A
	.align 2, 0
_0807DE14: .4byte gUnknown_03005AD7
_0807DE18:
	ldr r0, _0807DE60 @ =gUnknown_03005A47
_0807DE1A:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0807DE64 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_803FA74
	cmp r0, r4
	ble _0807DE32
	adds r0, r4, #0
_0807DE32:
	cmp r0, #0
	ble _0807DE38
	b _0807E16A
_0807DE38:
	ldr r1, [sp, #0x34]
	asrs r0, r1, #0x10
	mov r2, sl
	ldr r1, [r2, #0x44]
	asrs r1, r1, #8
	adds r0, r0, r1
	ldr r1, [sp, #0x10]
	adds r1, #0x2f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, r0, r1
	cmp r5, #0
	beq _0807DE68
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0807DE72
	b _0807E16A
	.align 2, 0
_0807DE60: .4byte gUnknown_03005A47
_0807DE64: .4byte sub_803FF84
_0807DE68:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0807DE72
	b _0807E16A
_0807DE72:
	cmp r5, #0
	beq _0807DE7C
	mov r3, sb
	str r3, [r7]
	b _0807DE80
_0807DE7C:
	mov r4, sb
	str r4, [r6]
_0807DE80:
	cmp r5, #0
	beq _0807DE8A
	ldr r0, [sp, #0x2c]
	str r0, [r7, #4]
	b _0807DE8E
_0807DE8A:
	ldr r1, [sp, #0x2c]
	str r1, [r6, #4]
_0807DE8E:
	cmp r5, #0
	beq _0807DE9E
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807DEA8
_0807DE9E:
	ldr r0, [r6, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807DEA8:
	cmp r5, #0
	beq _0807DEB6
	ldr r0, [r7, #0x10]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r7, #0x10]
	b _0807DEBE
_0807DEB6:
	ldr r0, [r6, #0x10]
	movs r3, #0x80
	orrs r0, r3
	str r0, [r6, #0x10]
_0807DEBE:
	cmp r5, #0
	beq _0807DEC4
	b _0807E02A
_0807DEC4:
	b _0807E036
_0807DEC6:
	mov r0, sl
	adds r0, #0x4c
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0807DED4
	b _0807E16A
_0807DED4:
	cmp r5, #0
	beq _0807DEDC
	ldr r0, [r7, #4]
	b _0807DEDE
_0807DEDC:
	ldr r0, [r6, #4]
_0807DEDE:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DEEA
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807DEEE
_0807DEEA:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807DEEE:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807DEF8
	ldr r0, [r7]
	b _0807DEFA
_0807DEF8:
	ldr r0, [r6]
_0807DEFA:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DF06
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807DF0A
_0807DF06:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807DF0A:
	subs r1, r1, r0
	cmp r5, #0
	beq _0807DF1C
	ldr r4, _0807DF18 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _0807DF20
	.align 2, 0
_0807DF18: .4byte gUnknown_03005AD7
_0807DF1C:
	ldr r0, _0807DF3C @ =gUnknown_03005A47
	ldrb r2, [r0]
_0807DF20:
	movs r4, #0
	str r4, [sp]
	ldr r0, _0807DF40 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	adds r4, r0, #0
	cmp r5, #0
	beq _0807DF44
	ldr r0, [r7, #4]
	b _0807DF46
	.align 2, 0
_0807DF3C: .4byte gUnknown_03005A47
_0807DF40: .4byte sub_803FF84
_0807DF44:
	ldr r0, [r6, #4]
_0807DF46:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DF52
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807DF56
_0807DF52:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807DF56:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807DF60
	ldr r0, [r7]
	b _0807DF62
_0807DF60:
	ldr r0, [r6]
_0807DF62:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DF6E
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807DF72
_0807DF6E:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807DF72:
	adds r1, r1, r0
	cmp r5, #0
	beq _0807DF80
	ldr r0, _0807DF7C @ =gUnknown_03005AD7
	b _0807DF82
	.align 2, 0
_0807DF7C: .4byte gUnknown_03005AD7
_0807DF80:
	ldr r0, _0807DFC8 @ =gUnknown_03005A47
_0807DF82:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0807DFCC @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	cmp r0, r4
	ble _0807DF9C
	adds r0, r4, #0
_0807DF9C:
	cmp r0, #0
	blt _0807DFA2
	b _0807E16A
_0807DFA2:
	ldr r1, [sp, #0x34]
	asrs r0, r1, #0x10
	mov r2, sl
	ldr r1, [r2, #0x44]
	asrs r1, r1, #8
	adds r0, r0, r1
	ldr r1, [sp, #0x10]
	adds r1, #0x2f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, r0, r1
	cmp r5, #0
	beq _0807DFD0
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0807DFDA
	b _0807E16A
	.align 2, 0
_0807DFC8: .4byte gUnknown_03005A47
_0807DFCC: .4byte sub_803FF84
_0807DFD0:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0807DFDA
	b _0807E16A
_0807DFDA:
	cmp r5, #0
	beq _0807DFE4
	mov r3, sb
	str r3, [r7]
	b _0807DFE8
_0807DFE4:
	mov r4, sb
	str r4, [r6]
_0807DFE8:
	cmp r5, #0
	beq _0807DFF2
	ldr r0, [sp, #0x2c]
	str r0, [r7, #4]
	b _0807DFF6
_0807DFF2:
	ldr r1, [sp, #0x2c]
	str r1, [r6, #4]
_0807DFF6:
	cmp r5, #0
	beq _0807E006
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807E010
_0807E006:
	ldr r0, [r6, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807E010:
	cmp r5, #0
	beq _0807E01E
	ldr r0, [r7, #0x10]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r7, #0x10]
	b _0807E026
_0807E01E:
	ldr r0, [r6, #0x10]
	movs r3, #0x80
	orrs r0, r3
	str r0, [r6, #0x10]
_0807E026:
	cmp r5, #0
	beq _0807E036
_0807E02A:
	ldr r0, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0xf
	orrs r0, r4
	str r0, [r7, #0x10]
	b _0807E16A
_0807E036:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
_0807E03C:
	orrs r0, r1
	str r0, [r6, #0x10]
	b _0807E16A
_0807E042:
	mov r2, sl
	adds r2, #0x4f
	ldrb r1, [r2]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _0807E054
	b _0807E16A
_0807E054:
	cmp r5, #0
	beq _0807E068
	ldr r3, _0807E064 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0xe
	beq _0807E074
	b _0807E16A
	.align 2, 0
_0807E064: .4byte gUnknown_03005AF0
_0807E068:
	ldr r4, _0807E088 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0xe
	beq _0807E074
	b _0807E16A
_0807E074:
	movs r0, #1
	lsls r0, r5
	ldrb r1, [r2]
	bics r1, r0
	movs r0, #0
	strb r1, [r2]
	cmp r5, #0
	beq _0807E08C
	strh r0, [r7, #0xc]
	b _0807E08E
	.align 2, 0
_0807E088: .4byte gUnknown_03005A60
_0807E08C:
	strh r5, [r6, #0xc]
_0807E08E:
	ldr r3, _0807E0AC @ =gPlayer
	adds r0, r3, #0
	cmp r5, #0
	beq _0807E098
	ldr r0, _0807E0B0 @ =gPartner
_0807E098:
	bl sub_8046CEC
	cmp r5, #0
	beq _0807E0B4
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807E0BE
	.align 2, 0
_0807E0AC: .4byte gPlayer
_0807E0B0: .4byte gPartner
_0807E0B4:
	ldr r0, [r6, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807E0BE:
	cmp r5, #0
	beq _0807E0D4
	ldr r1, _0807E0D0 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0xe
	beq _0807E0DE
	b _0807E16A
	.align 2, 0
_0807E0D0: .4byte gUnknown_03005AF0
_0807E0D4:
	ldr r2, _0807E0F0 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0xe
	bne _0807E16A
_0807E0DE:
	cmp r5, #0
	beq _0807E0F8
	ldr r3, _0807E0F4 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	bne _0807E102
	b _0807E126
	.align 2, 0
_0807E0F0: .4byte gUnknown_03005A60
_0807E0F4: .4byte gUnknown_03005B09
_0807E0F8:
	ldr r4, _0807E10C @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #3
	beq _0807E126
_0807E102:
	cmp r5, #0
	beq _0807E110
	ldr r0, [r7, #0x10]
	b _0807E112
	.align 2, 0
_0807E10C: .4byte gUnknown_03005A79
_0807E110:
	ldr r0, [r6, #0x10]
_0807E112:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807E120
	cmp r5, #0
	bne _0807E13C
	b _0807E148
_0807E120:
	cmp r5, #0
	bne _0807E158
	b _0807E164
_0807E126:
	cmp r5, #0
	beq _0807E12E
	ldr r0, [r7, #0x10]
	b _0807E130
_0807E12E:
	ldr r0, [r6, #0x10]
_0807E130:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807E154
	cmp r5, #0
	beq _0807E148
_0807E13C:
	movs r0, #4
	ldr r1, _0807E144 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _0807E16A
	.align 2, 0
_0807E144: .4byte gUnknown_03005AF0
_0807E148:
	movs r0, #4
	ldr r2, _0807E150 @ =gUnknown_03005A60
	strb r0, [r2]
	b _0807E16A
	.align 2, 0
_0807E150: .4byte gUnknown_03005A60
_0807E154:
	cmp r5, #0
	beq _0807E164
_0807E158:
	movs r0, #5
	ldr r3, _0807E160 @ =gUnknown_03005AF0
	strb r0, [r3]
	b _0807E16A
	.align 2, 0
_0807E160: .4byte gUnknown_03005AF0
_0807E164:
	movs r0, #5
	ldr r4, _0807E178 @ =gUnknown_03005A60
sub_807E168:
	strb r0, [r4]
_0807E16A:
	cmp r5, #0
	beq _0807E17C
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	b _0807E182
	.align 2, 0
_0807E178: .4byte gUnknown_03005A60
_0807E17C:
	ldr r0, [r6, #0x10]
	movs r2, #0x80
	ands r0, r2
_0807E182:
	cmp r0, #0
	beq _0807E188
	b _0807E2DE
_0807E188:
	cmp r5, #0
	beq _0807E196
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bge _0807E1A0
	b _0807E2DE
_0807E196:
	movs r4, #0xa
	ldrsh r0, [r6, r4]
	cmp r0, #0
	bge _0807E1A0
	b _0807E2DE
_0807E1A0:
	ldr r0, [sp, #0x18]
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	mov r3, sl
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	str r2, [sp, #0x34]
	cmp r5, #0
	beq _0807E1BE
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _0807E1C8
	b _0807E2DE
_0807E1BE:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _0807E1C8
	b _0807E2DE
_0807E1C8:
	add r2, sp, #8
	cmp r5, #0
	beq _0807E1D2
	ldrb r0, [r7, #0xe]
	b _0807E1D4
_0807E1D2:
	ldrb r0, [r6, #0xe]
_0807E1D4:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	adds r3, r0, #0
	cmp r5, #0
	beq _0807E1E6
	ldrb r1, [r7, #0xf]
	b _0807E1E8
_0807E1E6:
	ldrb r1, [r6, #0xf]
_0807E1E8:
	movs r0, #1
	subs r1, r0, r1
	mov r0, sp
	adds r0, #0xd
	strb r1, [r0]
	cmp r5, #0
	beq _0807E1FA
	ldrb r0, [r7, #0xe]
	b _0807E1FC
_0807E1FA:
	ldrb r0, [r6, #0xe]
_0807E1FC:
	adds r1, r0, #5
	mov r0, sp
	adds r0, #0xe
	strb r1, [r0]
	cmp r5, #0
	beq _0807E20C
	ldrb r0, [r7, #0xf]
	b _0807E20E
_0807E20C:
	ldrb r0, [r6, #0xf]
_0807E20E:
	subs r1, r0, #1
	mov r0, sp
	adds r0, #0xf
	strb r1, [r0]
	adds r0, r2, #0
	adds r1, r3, #0
	movs r2, #4
	bl memcpy
	ldr r4, [sp, #0x30]
	asrs r1, r4, #0x10
	mov r2, sl
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	adds r4, r1, r0
	ldr r3, [sp, #0x34]
	asrs r1, r3, #0x10
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	adds r2, r1, r0
	add r3, sp, #8
	cmp r5, #0
	beq _0807E240
	str r7, [sp]
	b _0807E242
_0807E240:
	str r6, [sp]
_0807E242:
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	bl sub_807E914
	cmp r5, #0
	beq _0807E254
	ldr r4, [r7]
	mov sb, r4
	b _0807E258
_0807E254:
	ldr r0, [r6]
	mov sb, r0
_0807E258:
	ldr r3, _0807E2B0 @ =gPlayer
	mov r2, sl
	ldr r1, [r2, #0x40]
	asrs r1, r1, #8
	ldr r4, [sp, #0x30]
	asrs r0, r4, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r1, [r2, #0x44]
	asrs r1, r1, #8
	ldr r2, [sp, #0x34]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r5, #0
	beq _0807E27E
	ldr r3, _0807E2B4 @ =gPartner
_0807E27E:
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	bl sub_80096B0
	str r0, [sp, #0x28]
	movs r0, #8
	ldr r3, [sp, #0x28]
	ands r0, r3
	cmp r0, #0
	beq _0807E2C4
	movs r0, #1
	lsls r0, r5
	ldr r4, [sp, #0x38]
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	cmp r5, #0
	beq _0807E2B8
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r7, #4]
	b _0807E2DE
	.align 2, 0
_0807E2B0: .4byte gPlayer
_0807E2B4: .4byte gPartner
_0807E2B8:
	ldr r0, [r6, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r6, #4]
	b _0807E2DE
_0807E2C4:
	movs r0, #0x80
	lsls r0, r0, #9
	ldr r3, [sp, #0x28]
	ands r0, r3
	cmp r0, #0
	beq _0807E2DE
	cmp r5, #0
	beq _0807E2DA
	mov r4, sb
	str r4, [r7]
	b _0807E2DE
_0807E2DA:
	mov r0, sb
	str r0, [r6]
_0807E2DE:
	adds r5, #1
	ldr r0, _0807E360 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _0807E2F0
	bl sub_807D4EC
_0807E2F0:
	ldr r2, [sp, #0x30]
	asrs r1, r2, #0x10
	ldr r3, _0807E364 @ =gCamera
	movs r0, #0
	ldrsh r4, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r4, r2
	cmp r1, r0
	bgt _0807E328
	adds r0, r4, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0807E328
	ldr r4, [sp, #0x18]
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0807E328
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0807E36C
_0807E328:
	ldr r4, [sp, #0x10]
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807E34E
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0807E34E
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807E36C
_0807E34E:
	mov r3, sl
	ldrb r0, [r3, #8]
	ldr r4, [sp, #0x1c]
	strb r0, [r4]
	ldr r0, _0807E368 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807E378
	.align 2, 0
_0807E360: .4byte gUnknown_03005088
_0807E364: .4byte gCamera
_0807E368: .4byte gCurTask
_0807E36C:
	ldr r0, [sp, #0x10]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #0x10]
	bl DisplaySprite
_0807E378:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_BarrelOfDoomMini
CreateEntity_BarrelOfDoomMini: @ 0x0807E388
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0807E468 @ =Task_BarrelOfDoomMini
	ldr r1, _0807E46C @ =TaskDestructor_Platform_Square
	str r1, [sp]
	movs r1, #0x54
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _0807E470 @ =0x0300000C
	adds r4, r2, r1
	movs r7, #0
	mov sl, r7
	movs r3, #0
	strh r5, [r0, #4]
	strh r6, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r7, r8
	strb r7, [r0, #9]
	str r3, [r0, #0x40]
	str r3, [r0, #0x44]
	ldr r7, _0807E474 @ =0x0300004E
	adds r1, r2, r7
	mov r7, sl
	strb r7, [r1]
	str r3, [r0, #0x3c]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r4, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r4, #0x18]
	movs r0, #0xfe
	strb r0, [r1]
	movs r0, #0x14
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl VramMalloc
	str r0, [r4, #4]
	ldr r0, _0807E478 @ =0x000001ED
	strh r0, [r4, #0xa]
	ldr r2, [sp, #4]
	ldr r7, _0807E47C @ =0x0300002C
	adds r0, r2, r7
	mov r1, sl
	strb r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	ldr r3, [sp, #8]
	strh r3, [r4, #8]
	strh r3, [r4, #0x14]
	strh r3, [r4, #0x1c]
	adds r7, #1
	adds r1, r2, r7
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0807E480 @ =0x0300002E
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0807E484 @ =0x03000031
	adds r2, r2, r1
	mov r7, sl
	strb r7, [r2]
	subs r0, #0x11
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E468: .4byte Task_BarrelOfDoomMini
_0807E46C: .4byte TaskDestructor_Platform_Square
_0807E470: .4byte 0x0300000C
_0807E474: .4byte 0x0300004E
_0807E478: .4byte 0x000001ED
_0807E47C: .4byte 0x0300002C
_0807E480: .4byte 0x0300002E
_0807E484: .4byte 0x03000031

	thumb_func_start Task_BarrelOfDoomMini
Task_BarrelOfDoomMini: @ 0x0807E488
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _0807E4E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _0807E4E4 @ =0x0300000C
	adds r0, r0, r1
	mov sl, r0
	mov r1, r8
	ldr r1, [r1]
	str r1, [sp, #8]
	mov r2, r8
	ldrb r0, [r2, #8]
	lsls r0, r0, #3
	ldrh r1, [r2, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r4, [sp, #8]
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r2, #0x44]
	cmp r0, #0
	beq _0807E4F0
	cmp r0, #0
	bge _0807E4E8
	ldr r0, [r2, #0x3c]
	adds r0, #0x30
	str r0, [r2, #0x3c]
	b _0807E4F0
	.align 2, 0
_0807E4E0: .4byte gCurTask
_0807E4E4: .4byte 0x0300000C
_0807E4E8:
	mov r1, r8
	ldr r0, [r1, #0x3c]
	subs r0, #0x30
	str r0, [r1, #0x3c]
_0807E4F0:
	ldr r2, _0807E534 @ =gCamera
	ldrh r1, [r2]
	lsls r3, r3, #0x10
	asrs r0, r3, #0x10
	subs r0, r0, r1
	mov r1, sl
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	lsls r2, r4, #0x10
	asrs r1, r2, #0x10
	subs r1, r1, r0
	mov r4, r8
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	mov r0, sl
	strh r1, [r0, #0x18]
	movs r4, #0
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r6, _0807E538 @ =gPartner
	ldr r7, _0807E53C @ =gPlayer
	movs r1, #0
	str r1, [sp, #0x14]
	movs r2, #9
	rsbs r2, r2, #0
	mov sb, r2
_0807E526:
	ldr r1, [sp, #0x14]
	add r1, sp
	cmp r4, #0
	beq _0807E540
	movs r3, #0xa
	ldrsh r0, [r6, r3]
	b _0807E544
	.align 2, 0
_0807E534: .4byte gCamera
_0807E538: .4byte gPartner
_0807E53C: .4byte gPlayer
_0807E540:
	movs r2, #0xa
	ldrsh r0, [r7, r2]
_0807E544:
	str r0, [r1]
	cmp r4, #0
	beq _0807E55C
	ldr r0, [r6, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0807E56A
	ldr r3, _0807E558 @ =gPlayer
	b _0807E7D4
	.align 2, 0
_0807E558: .4byte gPlayer
_0807E55C:
	ldr r1, [r7, #0x10]
	movs r0, #8
	ands r1, r0
	ldr r3, _0807E578 @ =gPlayer
	cmp r1, #0
	bne _0807E56A
	b _0807E7D4
_0807E56A:
	cmp r4, #0
	beq _0807E57C
	ldr r0, [r6, #0x28]
	cmp r0, sl
	beq _0807E586
	ldr r3, _0807E578 @ =gPlayer
	b _0807E7D4
	.align 2, 0
_0807E578: .4byte gPlayer
_0807E57C:
	ldr r0, [r7, #0x28]
	ldr r3, _0807E590 @ =gPlayer
	cmp r0, sl
	beq _0807E586
	b _0807E7D4
_0807E586:
	cmp r4, #0
	beq _0807E594
	movs r0, #0
	strh r0, [r6, #0xa]
	b _0807E596
	.align 2, 0
_0807E590: .4byte gPlayer
_0807E594:
	strh r4, [r7, #0xa]
_0807E596:
	mov r3, r8
	ldr r1, [r3, #0x3c]
	cmp r4, #0
	beq _0807E5A6
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
	b _0807E5AC
_0807E5A6:
	ldr r0, [r7, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
_0807E5AC:
	ldr r0, _0807E5C0 @ =gUnknown_030060E0
	ldrh r1, [r0, #2]
	adds r2, r0, #0
	cmp r4, #0
	beq _0807E5C4
	ldrh r0, [r6, #0x3a]
	ands r0, r1
	cmp r0, #0
	bne _0807E5CC
	b _0807E638
	.align 2, 0
_0807E5C0: .4byte gUnknown_030060E0
_0807E5C4:
	ldrh r0, [r7, #0x3a]
	ands r0, r1
	cmp r0, #0
	beq _0807E638
_0807E5CC:
	cmp r4, #0
	beq _0807E5DC
	ldrh r0, [r6, #0x38]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807E5E6
	b _0807E638
_0807E5DC:
	ldrh r0, [r7, #0x38]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807E638
_0807E5E6:
	cmp r4, #0
	beq _0807E5FC
	ldr r1, _0807E5F8 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	beq _0807E608
	b _0807E824
	.align 2, 0
_0807E5F8: .4byte gUnknown_03005B09
_0807E5FC:
	ldr r2, _0807E618 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	beq _0807E608
	b _0807E824
_0807E608:
	cmp r4, #0
	beq _0807E61C
	ldr r0, [r6, #0x10]
	mov r3, sb
	ands r0, r3
	str r0, [r6, #0x10]
	b _0807E624
	.align 2, 0
_0807E618: .4byte gUnknown_03005A79
_0807E61C:
	ldr r0, [r7, #0x10]
	mov r1, sb
	ands r0, r1
	str r0, [r7, #0x10]
_0807E624:
	cmp r4, #0
	beq _0807E630
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r6, #0xa]
	b _0807E824
_0807E630:
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r7, #0xa]
	b _0807E824
_0807E638:
	ldrh r1, [r2]
	cmp r4, #0
	beq _0807E648
	ldrh r0, [r6, #0x3a]
	ands r0, r1
	cmp r0, #0
	bne _0807E650
	b _0807E6D8
_0807E648:
	ldrh r0, [r7, #0x3a]
	ands r0, r1
	cmp r0, #0
	beq _0807E6D8
_0807E650:
	cmp r4, #0
	beq _0807E660
	ldrh r0, [r6, #0x38]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807E66A
	b _0807E6D8
_0807E660:
	ldrh r0, [r7, #0x38]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807E6D8
_0807E66A:
	cmp r4, #0
	beq _0807E680
	ldr r2, _0807E67C @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _0807E68A
	b _0807E6C0
	.align 2, 0
_0807E67C: .4byte gUnknown_03005B09
_0807E680:
	ldr r3, _0807E6B4 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	beq _0807E6C0
_0807E68A:
	ldr r0, _0807E6B8 @ =gPlayer
	cmp r4, #0
	beq _0807E692
	ldr r0, _0807E6BC @ =gPartner
_0807E692:
	movs r1, #9
	bl sub_804516C
	ldr r1, _0807E6B8 @ =gPlayer
	cmp r4, #0
	beq _0807E6A0
	ldr r1, _0807E6BC @ =gPartner
_0807E6A0:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0807E6B8 @ =gPlayer
	cmp r4, #0
	beq _0807E6AC
	ldr r1, _0807E6BC @ =gPartner
_0807E6AC:
	movs r0, #9
	strb r0, [r1, #0xf]
	b _0807E824
	.align 2, 0
_0807E6B4: .4byte gUnknown_03005A79
_0807E6B8: .4byte gPlayer
_0807E6BC: .4byte gPartner
_0807E6C0:
	cmp r4, #0
	beq _0807E6CE
	ldr r0, [r6, #0x10]
	mov r1, sb
	ands r0, r1
	str r0, [r6, #0x10]
	b _0807E824
_0807E6CE:
	ldr r0, [r7, #0x10]
	mov r2, sb
	ands r0, r2
	str r0, [r7, #0x10]
	b _0807E824
_0807E6D8:
	ldrh r1, [r2]
	cmp r4, #0
	beq _0807E6F0
	ldrh r0, [r6, #0x3a]
	ands r0, r1
	cmp r0, #0
	bne _0807E6FA
	ldr r3, _0807E6EC @ =gPlayer
	b _0807E72E
	.align 2, 0
_0807E6EC: .4byte gPlayer
_0807E6F0:
	ldrh r0, [r7, #0x3a]
	ands r0, r1
	ldr r3, _0807E70C @ =gPlayer
	cmp r0, #0
	beq _0807E72E
_0807E6FA:
	mov r3, r8
	ldr r0, [r3, #0x3c]
	asrs r0, r0, #1
	ldr r1, _0807E710 @ =0xFFFFFC00
	adds r0, r0, r1
	cmp r4, #0
	beq _0807E714
	strh r0, [r6, #0xa]
	b _0807E716
	.align 2, 0
_0807E70C: .4byte gPlayer
_0807E710: .4byte 0xFFFFFC00
_0807E714:
	strh r0, [r7, #0xa]
_0807E716:
	cmp r4, #0
	beq _0807E724
	ldr r0, [r6, #0x10]
	mov r2, sb
	ands r0, r2
	str r0, [r6, #0x10]
	b _0807E824
_0807E724:
	ldr r0, [r7, #0x10]
	mov r3, sb
	ands r0, r3
	str r0, [r7, #0x10]
	b _0807E824
_0807E72E:
	cmp r4, #0
	beq _0807E73E
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r6, #4]
	b _0807E748
_0807E73E:
	ldr r0, [r7, #4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r7, #4]
_0807E748:
	cmp r4, #0
	beq _0807E752
	movs r0, #1
	strh r0, [r6, #0xa]
	b _0807E756
_0807E752:
	movs r0, #1
	strh r0, [r3, #0xa]
_0807E756:
	mov r0, r8
	ldr r1, [r0, #0x40]
	asrs r1, r1, #8
	ldr r2, [sp, #0xc]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	mov r0, r8
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	ldr r2, [sp, #0x10]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _0807E77C
	ldr r3, _0807E798 @ =gPartner
_0807E77C:
	mov r0, sl
	adds r1, r5, #0
	bl sub_800B2BC
	cmp r0, #0
	bne _0807E7C0
	cmp r4, #0
	beq _0807E79C
	ldr r0, [r6, #0x10]
	mov r3, sb
	ands r0, r3
	str r0, [r6, #0x10]
	b _0807E7A4
	.align 2, 0
_0807E798: .4byte gPartner
_0807E79C:
	ldr r0, [r7, #0x10]
	mov r1, sb
	ands r0, r1
	str r0, [r7, #0x10]
_0807E7A4:
	cmp r4, #0
	beq _0807E7B8
	ldr r0, [r6, #4]
	ldr r2, _0807E7B4 @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r6, #4]
	b _0807E7C0
	.align 2, 0
_0807E7B4: .4byte 0xFFFFF800
_0807E7B8:
	ldr r0, [r7, #4]
	ldr r3, _0807E7CC @ =0xFFFFF800
	adds r0, r0, r3
	str r0, [r7, #4]
_0807E7C0:
	cmp r4, #0
	beq _0807E7D0
	movs r0, #0
	strh r0, [r6, #0xa]
	b _0807E824
	.align 2, 0
_0807E7CC: .4byte 0xFFFFF800
_0807E7D0:
	strh r4, [r7, #0xa]
	b _0807E824
_0807E7D4:
	mov r0, r8
	ldr r1, [r0, #0x40]
	asrs r1, r1, #8
	ldr r2, [sp, #0xc]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	mov r0, r8
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	ldr r2, [sp, #0x10]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _0807E7FA
	ldr r3, _0807E8DC @ =gPartner
_0807E7FA:
	mov r0, sl
	adds r1, r5, #0
	bl sub_800B2BC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _0807E824
	ldr r0, [sp, #0x14]
	add r0, sp
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0xa
	bl Div
	mov r3, r8
	ldr r1, [r3, #0x3c]
	adds r1, r1, r0
	str r1, [r3, #0x3c]
_0807E824:
	ldr r0, [sp, #0x14]
	adds r0, #4
	str r0, [sp, #0x14]
	adds r4, #1
	ldr r0, _0807E8E0 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _0807E83A
	b _0807E526
_0807E83A:
	mov r2, r8
	ldr r1, [r2, #0x3c]
	ldr r0, _0807E8E4 @ =0x000026AC
	muls r0, r1, r0
	ldr r1, _0807E8E8 @ =0x00002710
	bl Div
	mov r3, r8
	str r0, [r3, #0x3c]
	adds r0, #0x2f
	cmp r0, #0x5e
	bhi _0807E864
	ldr r1, [r3, #0x44]
	ldr r0, _0807E8EC @ =0xFFFFFD00
	cmp r1, r0
	ble _0807E864
	ldr r0, _0807E8F0 @ =0x000002FF
	cmp r1, r0
	bgt _0807E864
	movs r0, #0
	str r0, [r3, #0x3c]
_0807E864:
	mov r4, r8
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [sp, #0xc]
	asrs r3, r0, #0x10
	ldr r4, _0807E8F4 @ =gCamera
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r3, r0
	bgt _0807E8A4
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	blt _0807E8A4
	ldr r3, [sp, #0x10]
	asrs r2, r3, #0x10
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0807E8A4
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0807E8FC
_0807E8A4:
	mov r4, sl
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807E8CA
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0807E8CA
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807E8FC
_0807E8CA:
	mov r3, r8
	ldrb r0, [r3, #8]
	ldr r4, [sp, #8]
	strb r0, [r4]
	ldr r0, _0807E8F8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807E902
	.align 2, 0
_0807E8DC: .4byte gPartner
_0807E8E0: .4byte gUnknown_03005088
_0807E8E4: .4byte 0x000026AC
_0807E8E8: .4byte 0x00002710
_0807E8EC: .4byte 0xFFFFFD00
_0807E8F0: .4byte 0x000002FF
_0807E8F4: .4byte gCamera
_0807E8F8: .4byte gCurTask
_0807E8FC:
	mov r0, sl
	bl DisplaySprite
_0807E902:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807E914
sub_807E914: @ 0x0807E914
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov ip, r0
	mov sb, r1
	mov sl, r2
	adds r6, r3, #0
	ldr r4, [sp, #0x2c]
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r1, r3
	ldr r0, [r4]
	asrs r0, r0, #8
	movs r5, #0
	ldrsb r5, [r6, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _0807E958
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0807E966
	cmp r2, r1
	bge _0807E958
	b _0807EA5C
_0807E958:
	movs r0, #2
	ldrsb r0, [r6, r0]
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	bge _0807E966
	b _0807EA5C
_0807E966:
	mov r2, ip
	adds r2, #0x2d
	movs r0, #0
	ldrsb r0, [r2, r0]
	str r0, [sp, #8]
	adds r5, r0, #0
	add r5, sl
	ldr r1, [r4, #4]
	asrs r0, r1, #8
	movs r3, #1
	ldrsb r3, [r6, r3]
	mov r8, r3
	adds r3, r0, r3
	cmp r5, r3
	bgt _0807E99C
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r7, [sp, #8]
	subs r0, r0, r7
	adds r0, r5, r0
	cmp r0, r3
	bge _0807E9AA
	cmp r5, r3
	blt _0807EA5C
_0807E99C:
	movs r0, #3
	ldrsb r0, [r6, r0]
	mov r7, r8
	subs r0, r0, r7
	adds r0, r3, r0
	cmp r0, r5
	blt _0807EA5C
_0807E9AA:
	asrs r5, r1, #8
	movs r0, #0
	ldrsb r0, [r2, r0]
	add r0, sl
	movs r1, #3
	ldrsb r1, [r6, r1]
	subs r0, r0, r1
	adds r0, #2
	cmp r5, r0
	ble _0807EA5C
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	movs r1, #2
	ldrsb r1, [r6, r1]
	subs r2, r0, r1
	adds r1, r2, #0
	adds r1, #8
	ldr r0, [r4]
	asrs r3, r0, #8
	cmp r3, r1
	bgt _0807E9E0
	lsls r1, r2, #8
	b _0807E9FC
_0807E9E0:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	movs r1, #0
	ldrsb r1, [r6, r1]
	subs r0, r0, r1
	subs r1, r0, #7
	cmp r3, r1
	blt _0807EA5C
	adds r1, r0, #1
	lsls r1, r1, #8
_0807E9FC:
	str r1, [r4]
	adds r0, r5, #0
	adds r0, #9
	asrs r1, r1, #8
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r2, [r5]
	movs r7, #0
	str r7, [sp]
	ldr r6, _0807EA58 @ =sub_803FF84
	str r6, [sp, #4]
	movs r3, #8
	bl sub_803FA74
	cmp r0, #0
	bge _0807EA24
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_0807EA24:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrb r2, [r5]
	movs r3, #8
	rsbs r3, r3, #0
	str r7, [sp]
	str r6, [sp, #4]
	bl sub_803FA74
	cmp r0, #0
	bge _0807EA46
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_0807EA46:
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #0x18
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #1
	b _0807EA5E
	.align 2, 0
_0807EA58: .4byte sub_803FF84
_0807EA5C:
	movs r0, #0
_0807EA5E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

@ Shared with Barrel of Doom Mini
	thumb_func_start TaskDestructor_Platform_Square
TaskDestructor_Platform_Square: @ 0x0807EA70
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
