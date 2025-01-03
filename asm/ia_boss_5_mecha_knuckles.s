.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_MechaKnuckles
CreateEntity_MechaKnuckles: @ 0x0804E4FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	ldr r0, _0804E524 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0804E528
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r4]
	b _0804E576
	.align 2, 0
_0804E524: .4byte gGameMode
_0804E528:
	ldr r0, _0804E584 @ =Task_MechaKnucklesInit
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0804E588 @ =TaskDestructor_MechaKnuckles
	str r1, [sp]
	movs r1, #0x9c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	mov r8, r2
	strh r6, [r0, #4]
	strh r5, [r0, #6]
	str r4, [r0]
	ldrb r1, [r4]
	strb r1, [r0, #8]
	strb r7, [r0, #9]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r4]
	adds r1, r4, #0
	bl sub_804EC60
	ldr r0, _0804E58C @ =gRingsScatterTask
	ldr r0, [r0]
	cmp r0, #0
	beq _0804E576
	ldrh r0, [r0, #6]
	ldr r1, _0804E590 @ =0x03000336
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #1
	orrs r1, r2
	strh r1, [r0]
_0804E576:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E584: .4byte Task_MechaKnucklesInit
_0804E588: .4byte TaskDestructor_MechaKnuckles
_0804E58C: .4byte gRingsScatterTask
_0804E590: .4byte 0x03000336

	thumb_func_start Task_MechaKnucklesInit
Task_MechaKnucklesInit: @ 0x0804E594
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0804E6EC @ =gPlayer
	mov sl, r0
	ldr r0, _0804E6F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r1, _0804E6F4 @ =0x0300000C
	adds r1, r1, r6
	mov sb, r1
	ldr r2, _0804E6F8 @ =0x03000044
	adds r2, r6, r2
	str r2, [sp]
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804E5DE
	ldr r2, _0804E6FC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0804E700 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	mov r1, sb
	ldr r0, [r1, #0x10]
	ldr r1, _0804E704 @ =0xFFFFFE7F
	ands r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_0804E5DE:
	ldr r2, _0804E708 @ =gUnknown_084AE1C4
	ldr r3, _0804E70C @ =0x0300009A
	adds r0, r6, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r4, #0
	mov r1, sl
	bl _call_via_r2
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_804EB04
	ldr r0, _0804E710 @ =0x03000088
	adds r5, r6, r0
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	bne _0804E618
	adds r0, r4, #0
	bl sub_804FDD4
_0804E618:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	bne _0804E62A
	adds r0, r4, #0
	bl sub_804EB90
_0804E62A:
	ldr r1, _0804E714 @ =0x0300008C
	adds r1, r1, r6
	mov r8, r1
	ldr r1, [r1]
	ldr r0, [r4, #0x74]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _0804E718 @ =0x03000090
	adds r7, r6, r2
	ldr r2, [r7]
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	mov r3, sl
	bl sub_800BFEC
	adds r5, r0, #0
	ldr r3, _0804E71C @ =gNumSingleplayerCharacters
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #2
	bne _0804E684
	mov r0, r8
	ldr r1, [r0]
	ldr r0, [r4, #0x74]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r7]
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r3, _0804E720 @ =gPartner
	mov r0, sb
	bl sub_800BFEC
	orrs r5, r0
_0804E684:
	cmp r5, #0
	beq _0804E68A
	b _0804E7D0
_0804E68A:
	ldr r1, _0804E724 @ =0x03000097
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0804E69A
	b _0804E7DE
_0804E69A:
	mov r2, r8
	ldr r1, [r2]
	ldr r0, [r4, #0x74]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r7]
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	mov r3, sl
	bl sub_800C0E0
	adds r5, r0, #0
	ldr r3, _0804E71C @ =gNumSingleplayerCharacters
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #2
	bne _0804E728
	mov r0, r8
	ldr r1, [r0]
	ldr r0, [r4, #0x74]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r7]
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r3, _0804E720 @ =gPartner
	mov r0, sb
	bl sub_800C0E0
	b _0804E72A
	.align 2, 0
_0804E6EC: .4byte gPlayer
_0804E6F0: .4byte gCurTask
_0804E6F4: .4byte 0x0300000C
_0804E6F8: .4byte 0x03000044
_0804E6FC: .4byte gDispCnt
_0804E700: .4byte 0x00007FFF
_0804E704: .4byte 0xFFFFFE7F
_0804E708: .4byte gUnknown_084AE1C4
_0804E70C: .4byte 0x0300009A
_0804E710: .4byte 0x03000088
_0804E714: .4byte 0x0300008C
_0804E718: .4byte 0x03000090
_0804E71C: .4byte gNumSingleplayerCharacters
_0804E720: .4byte gPartner
_0804E724: .4byte 0x03000097
_0804E728:
	movs r0, #0
_0804E72A:
	cmp r5, #0
	beq _0804E764
	adds r0, r4, #0
	adds r0, #0x9a
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #5
	beq _0804E73E
	cmp r2, #0xa
	bne _0804E75E
_0804E73E:
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804E75E
	cmp r2, #0xa
	beq _0804E7D0
	movs r2, #0
	str r2, [sp, #4]
	adds r1, r4, #0
	adds r1, #0x9b
	movs r0, #0xa
	strb r0, [r1]
	mov r3, sl
	b _0804E794
_0804E75E:
	movs r0, #0
	str r0, [sp, #4]
	b _0804E7AC
_0804E764:
	cmp r0, #0
	beq _0804E7D0
	adds r0, r4, #0
	adds r0, #0x9a
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #5
	beq _0804E778
	cmp r2, #0xa
	bne _0804E7A8
_0804E778:
	ldr r3, _0804E7A4 @ =gPartner
	ldr r0, [r3, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804E7A8
	cmp r2, #0xa
	beq _0804E7D0
	movs r1, #0
	str r1, [sp, #4]
	adds r1, r4, #0
	adds r1, #0x9b
	movs r0, #0xa
	strb r0, [r1]
_0804E794:
	ldrh r0, [r3, #8]
	rsbs r0, r0, #0
	strh r0, [r3, #8]
	ldrh r0, [r3, #0xc]
	rsbs r0, r0, #0
	strh r0, [r3, #0xc]
	b _0804E7D0
	.align 2, 0
_0804E7A4: .4byte gPartner
_0804E7A8:
	movs r2, #0
	str r2, [sp, #4]
_0804E7AC:
	adds r2, r4, #0
	adds r2, #0x9b
	movs r0, #0x11
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x95
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0804E7C8
	movs r0, #0x13
	strb r0, [r2]
_0804E7C8:
	adds r1, r4, #0
	adds r1, #0x97
	movs r0, #0x20
	strb r0, [r1]
_0804E7D0:
	adds r0, r4, #0
	adds r0, #0x97
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0804E82E
_0804E7DE:
	ldr r0, _0804E8BC @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804E814
	ldr r0, _0804E8C0 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804E814
	mov r3, sb
	ldr r0, [r3, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, _0804E8C4 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0804E8C8 @ =gWinRegs
	ldr r0, _0804E8CC @ =0x00003F3F
	strh r0, [r1, #0xa]
_0804E814:
	adds r0, r4, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	subs r0, #0x11
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0804E82E
	adds r1, r4, #0
	adds r1, #0x97
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_0804E82E:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r1, [r0]
	ldr r0, [r4, #0x74]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r2, _0804E8D0 @ =gCamera
	ldrh r0, [r2]
	subs r1, r1, r0
	ldr r3, [sp]
	strh r1, [r3, #0x16]
	mov r0, sb
	strh r1, [r0, #0x16]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r1, [r0]
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldrh r0, [r2, #2]
	subs r1, r1, r0
	strh r1, [r3, #0x18]
	mov r2, sb
	strh r1, [r2, #0x18]
	adds r5, r4, #0
	adds r5, #0x88
	ldr r0, [r5]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804E878
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
_0804E878:
	ldr r0, [r5]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804E88E
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	bl DisplaySprite
_0804E88E:
	ldr r3, [sp, #4]
	cmp r3, #0
	bne _0804E8AC
	adds r0, r4, #0
	adds r0, #0x9b
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9a
	strb r0, [r1]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_804E8D4
_0804E8AC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E8BC: .4byte gStageTime
_0804E8C0: .4byte gPlayer
_0804E8C4: .4byte gDispCnt
_0804E8C8: .4byte gWinRegs
_0804E8CC: .4byte 0x00003F3F
_0804E8D0: .4byte gCamera

	thumb_func_start sub_804E8D4
sub_804E8D4: @ 0x0804E8D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0804E9DC @ =gUnknown_084AE1C4
	adds r6, r0, r1
	ldr r0, _0804E9E0 @ =gPlayer
	mov sl, r0
	mov r4, ip
	adds r4, #0xc
	mov r0, ip
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	movs r1, #8
	ldrsh r7, [r6, r1]
	movs r3, #0xc
	ldrsh r2, [r6, r3]
	mov r8, r2
	movs r5, #0x88
	add r5, ip
	mov sb, r5
	ldr r2, [r5]
	ldr r3, [r6, #0x14]
	movs r5, #0x80
	lsls r5, r5, #3
	ands r5, r3
	cmp r5, #0
	bne _0804E92A
	ldr r0, _0804E9E4 @ =0xFFFFF8FF
	ands r2, r0
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r3
	orrs r2, r0
_0804E92A:
	movs r1, #0x80
	lsls r1, r1, #6
	ands r1, r3
	cmp r1, #0
	bne _0804E940
	ldr r0, _0804E9E8 @ =0xFFFFC7FF
	ands r2, r0
	movs r0, #0xc0
	lsls r0, r0, #5
	ands r0, r3
	orrs r2, r0
_0804E940:
	orrs r2, r5
	orrs r2, r1
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r2, r0
	movs r1, #0x10
	adds r0, r3, #0
	ands r0, r1
	orrs r2, r0
	ldr r0, _0804E9EC @ =0xFFFF3FFF
	ands r2, r0
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r3
	orrs r2, r0
	ldr r0, _0804E9F0 @ =0xFDFFFFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r3
	orrs r2, r0
	ldr r0, _0804E9F4 @ =0xFBFFFFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r3, r0
	orrs r2, r3
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0804E984
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_0804E984:
	mov r0, sb
	str r2, [r0]
	ldrh r1, [r6, #0x10]
	mov r0, ip
	adds r0, #0x84
	strh r1, [r0]
	movs r1, #0x18
	ldrsb r1, [r6, r1]
	mov r3, ip
	adds r3, #0x98
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r1, r0
	beq _0804E9A4
	ldrb r0, [r6, #0x18]
	strb r0, [r3]
_0804E9A4:
	movs r1, #0x19
	ldrsb r1, [r6, r1]
	mov r3, ip
	adds r3, #0x99
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r1, r0
	beq _0804E9C4
	subs r0, r0, r1
	lsls r0, r0, #8
	mov r5, ip
	ldr r1, [r5, #0x78]
	subs r1, r1, r0
	str r1, [r5, #0x78]
	ldrb r0, [r6, #0x19]
	strb r0, [r3]
_0804E9C4:
	movs r1, #0xc0
	lsls r1, r1, #5
	ands r1, r2
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	beq _0804E9F8
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	beq _0804EA0C
	b _0804EA2C
	.align 2, 0
_0804E9DC: .4byte gUnknown_084AE1C4
_0804E9E0: .4byte gPlayer
_0804E9E4: .4byte 0xFFFFF8FF
_0804E9E8: .4byte 0xFFFFC7FF
_0804E9EC: .4byte 0xFFFF3FFF
_0804E9F0: .4byte 0xFDFFFFFF
_0804E9F4: .4byte 0xFBFFFFFF
_0804E9F8:
	mov r1, ip
	ldr r0, [r1, #0x74]
	asrs r0, r0, #8
	cmp r0, #0x77
	ble _0804EA2C
	rsbs r7, r7, #0
	mov r3, r8
	rsbs r3, r3, #0
	mov r8, r3
	b _0804EA2C
_0804EA0C:
	mov r5, ip
	ldr r1, [r5, #0x74]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x8c
	ldr r0, [r0]
	adds r1, r1, r0
	mov r3, sl
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0804EA2C
	rsbs r7, r7, #0
	mov r5, r8
	rsbs r5, r5, #0
	mov r8, r5
_0804EA2C:
	mov r0, ip
	adds r0, #0x7c
	strh r7, [r0]
	ldrh r0, [r6, #0xa]
	mov r1, ip
	adds r1, #0x7e
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x80
	mov r1, r8
	strh r1, [r0]
	ldrh r0, [r6, #0xe]
	mov r1, ip
	adds r1, #0x82
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #2
	ands r1, r2
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0804EA62
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0804EA78
	b _0804EAA6
_0804EA62:
	mov r2, ip
	ldr r0, [r2, #0x74]
	asrs r0, r0, #8
	cmp r0, #0x77
	ble _0804EA9C
	ldr r0, [r4, #0x10]
	ldr r1, _0804EA74 @ =0xFFFFFBFF
	ands r0, r1
	b _0804EAA4
	.align 2, 0
_0804EA74: .4byte 0xFFFFFBFF
_0804EA78:
	mov r3, ip
	ldr r1, [r3, #0x74]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x8c
	ldr r0, [r0]
	adds r1, r1, r0
	mov r5, sl
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0804EA9C
	ldr r0, [r4, #0x10]
	ldr r1, _0804EA98 @ =0xFFFFFBFF
	ands r0, r1
	b _0804EAA4
	.align 2, 0
_0804EA98: .4byte 0xFFFFFBFF
_0804EA9C:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0804EAA4:
	str r0, [r4, #0x10]
_0804EAA6:
	ldr r1, [sp]
	lsls r0, r1, #2
	adds r2, r6, r0
	ldrh r5, [r2, #0x1c]
	movs r3, #0x1c
	ldrsh r0, [r2, r3]
	cmp r0, #0
	blt _0804EAE6
	ldrh r1, [r4, #0xa]
	adds r3, r4, #0
	adds r3, #0x20
	cmp r1, r0
	bne _0804EAC8
	ldrb r0, [r3]
	ldrb r1, [r2, #0x1e]
	cmp r0, r1
	beq _0804EAE6
_0804EAC8:
	strh r5, [r4, #0xa]
	ldrb r0, [r2, #0x1e]
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r1, _0804EB00 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x30]
_0804EAE6:
	ldr r2, [r6, #4]
	mov r0, ip
	mov r1, sl
	bl _call_via_r2
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EB00: .4byte 0xFFFFBFFF

	thumb_func_start sub_804EB04
sub_804EB04: @ 0x0804EB04
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r0, #0x7c
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r0, #2
	movs r1, #0
	ldrsh r4, [r0, r1]
	mov r1, ip
	ldr r0, [r1, #0x74]
	adds r0, r0, r3
	str r0, [r1, #0x74]
	ldr r0, [r1, #0x78]
	adds r0, r0, r4
	str r0, [r1, #0x78]
	movs r6, #0x80
	lsls r6, r6, #0x18
	adds r2, r3, #0
	ands r2, r6
	mov r5, ip
	adds r5, #0x80
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r3, r3, r0
	mov r0, ip
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804EB50
	adds r0, r3, #0
	ands r0, r6
	cmp r2, r0
	beq _0804EB50
	movs r3, #0
	strh r3, [r5]
_0804EB50:
	mov r0, ip
	adds r0, #0x7c
	strh r3, [r0]
	movs r5, #0x80
	lsls r5, r5, #0x18
	adds r2, r4, #0
	ands r2, r5
	mov r3, ip
	adds r3, #0x82
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r4, r4, r0
	mov r0, ip
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0804EB84
	adds r0, r4, #0
	ands r0, r5
	cmp r2, r0
	beq _0804EB84
	movs r4, #0
	strh r4, [r3]
_0804EB84:
	mov r0, ip
	adds r0, #0x7e
	strh r4, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_804EB90
sub_804EB90: @ 0x0804EB90
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x8c
	ldr r0, [r4, #0x74]
	asrs r0, r0, #8
	ldr r1, [r1]
	adds r7, r1, r0
	adds r1, r4, #0
	adds r1, #0x90
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	ldr r1, [r1]
	adds r6, r1, r0
	adds r5, r4, #0
	adds r5, #0x88
	ldr r0, [r5]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	adds r0, r4, #0
	adds r0, #0x99
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	movs r1, #0
	str r1, [sp]
	ldr r1, _0804EBEC @ =sa2__sub_801EE64
	str r1, [sp, #4]
	adds r1, r7, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	ldr r0, [r5]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804EBF0
	cmp r2, #0
	bge _0804EC04
	b _0804EBF4
	.align 2, 0
_0804EBEC: .4byte sa2__sub_801EE64
_0804EBF0:
	cmp r2, #0xa
	bgt _0804EC04
_0804EBF4:
	lsls r1, r2, #8
	ldr r0, [r4, #0x78]
	adds r0, r0, r1
	str r0, [r4, #0x78]
	ldr r0, [r5]
	movs r1, #1
	orrs r0, r1
	str r0, [r5]
_0804EC04:
	adds r5, r4, #0
	adds r5, #0x88
	ldr r0, [r5]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	adds r0, r4, #0
	adds r0, #0x7e
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _0804EC54
	adds r0, r4, #0
	adds r0, #0x99
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r6, r0
	movs r3, #8
	rsbs r3, r3, #0
	movs r1, #0
	str r1, [sp]
	ldr r1, _0804EC5C @ =sa2__sub_801EE64
	str r1, [sp, #4]
	adds r1, r7, #0
	movs r2, #1
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	cmp r2, #0
	bge _0804EC54
	lsls r1, r2, #8
	ldr r0, [r4, #0x78]
	subs r0, r0, r1
	str r0, [r4, #0x78]
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
_0804EC54:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EC5C: .4byte sa2__sub_801EE64

	thumb_func_start sub_804EC60
sub_804EC60: @ 0x0804EC60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r3, r7, #0
	adds r3, #0x8c
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	str r2, [r3]
	adds r2, r7, #0
	adds r2, #0x90
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r2]
	movs r0, #0xd0
	lsls r0, r0, #8
	str r0, [r7, #0x74]
	ldr r0, _0804ED78 @ =0xFFFFE000
	str r0, [r7, #0x78]
	adds r0, r7, #0
	adds r0, #0x7c
	movs r6, #0
	movs r5, #0
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #6
	str r5, [r0]
	subs r0, #4
	strh r5, [r0]
	adds r0, #0x10
	strb r6, [r0]
	adds r3, #9
	movs r1, #8
	ldr r0, _0804ED7C @ =gLoadedSaveGame
	ldrb r2, [r0, #0x18]
	lsls r0, r2, #1
	subs r1, r1, r0
	strb r1, [r3]
	adds r1, r7, #0
	adds r1, #0x96
	movs r0, #4
	subs r0, r0, r2
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x97
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	movs r0, #0x9a
	adds r0, r0, r7
	mov sl, r0
	strb r6, [r0]
	adds r0, r7, #0
	adds r0, #0x9b
	strb r6, [r0]
	adds r4, r7, #0
	adds r4, #0xc
	movs r0, #0x40
	bl VramMalloc
	str r0, [r4, #4]
	movs r1, #0xa0
	lsls r1, r1, #3
	strh r1, [r4, #0x1a]
	strh r5, [r4, #8]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r7, #0
	adds r1, #0x2d
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x2e
	movs r1, #0x10
	mov sb, r1
	mov r1, sb
	strb r1, [r0]
	adds r0, #3
	strb r6, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	str r0, [r4, #0x10]
	adds r4, #0x38
	movs r0, #0x1e
	bl VramMalloc
	str r0, [r4, #4]
	movs r1, #0xa0
	lsls r1, r1, #3
	strh r1, [r4, #0x1a]
	strh r5, [r4, #8]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r7, #0
	adds r1, #0x65
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x66
	mov r1, sb
	strb r1, [r0]
	adds r0, #3
	strb r6, [r0]
	mov r0, r8
	str r0, [r4, #0x10]
	mov r0, sl
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r7, #0
	bl sub_804E8D4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804ED78: .4byte 0xFFFFE000
_0804ED7C: .4byte gLoadedSaveGame

	thumb_func_start sub_804ED80
sub_804ED80: @ 0x0804ED80
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, [r6]
	asrs r2, r0, #8
	adds r1, r5, #0
	adds r1, #0x8c
	ldr r0, [r5, #0x74]
	asrs r0, r0, #8
	ldr r1, [r1]
	adds r1, r1, r0
	subs r4, r2, r1
	cmp r4, #0
	bge _0804ED9E
	subs r4, r1, r2
_0804ED9E:
	ldr r2, _0804EDD4 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0804EDD8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0804EDDC @ =0x3C6EF35F
	adds r3, r0, r1
	str r3, [r2]
	adds r0, r5, #0
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804EDEE
	cmp r4, #0x4f
	bgt _0804EE0A
	cmp r4, #0x1f
	bgt _0804EDE0
	ldr r0, [r6, #0x10]
	movs r1, #2
	ands r0, r1
	movs r1, #0xd
	cmp r0, #0
	beq _0804EE18
_0804EDCE:
	movs r1, #6
	b _0804EE18
	.align 2, 0
_0804EDD4: .4byte gPseudoRandom
_0804EDD8: .4byte 0x00196225
_0804EDDC: .4byte 0x3C6EF35F
_0804EDE0:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _0804EE0A
	movs r1, #5
	b _0804EE18
_0804EDEE:
	cmp r4, #0x4f
	ble _0804EE00
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r3
	cmp r0, #0
	beq _0804EE0A
	movs r1, #0xf
	b _0804EE18
_0804EE00:
	ldr r0, [r6, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804EDCE
_0804EE0A:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r3, r0
	movs r1, #6
	cmp r3, #0
	beq _0804EE18
	movs r1, #0xb
_0804EE18:
	adds r0, r1, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_804EE20
sub_804EE20: @ 0x0804EE20
	push {r4, r5, r6, lr}
	mov ip, r0
	movs r2, #0
	ldr r0, _0804EE90 @ =gStageTime
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0804EE88
	ldr r6, _0804EE94 @ =gPseudoRandom
	ldr r0, [r6]
	ldr r3, _0804EE98 @ =0x00196225
	muls r0, r3, r0
	ldr r4, _0804EE9C @ =0x3C6EF35F
	adds r0, r0, r4
	ldr r5, _0804EEA0 @ =0x001FFF00
	adds r2, r0, #0
	ands r2, r5
	lsrs r2, r2, #8
	ldr r1, _0804EEA4 @ =0xFFFFF000
	adds r2, r2, r1
	muls r3, r0, r3
	adds r3, r3, r4
	str r3, [r6]
	ands r3, r5
	lsrs r3, r3, #8
	adds r3, r3, r1
	mov r0, ip
	adds r0, #0x8c
	ldr r1, [r0]
	lsls r1, r1, #8
	mov r4, ip
	ldr r0, [r4, #0x74]
	adds r0, r0, r1
	adds r0, r0, r2
	mov r1, ip
	adds r1, #0x90
	ldr r2, [r1]
	lsls r2, r2, #8
	ldr r1, [r4, #0x78]
	adds r1, r1, r2
	adds r1, r1, r3
	bl sub_8017540
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x1a]
	movs r2, #1
_0804EE88:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804EE90: .4byte gStageTime
_0804EE94: .4byte gPseudoRandom
_0804EE98: .4byte 0x00196225
_0804EE9C: .4byte 0x3C6EF35F
_0804EEA0: .4byte 0x001FFF00
_0804EEA4: .4byte 0xFFFFF000

	thumb_func_start sub_804EEA8
sub_804EEA8: @ 0x0804EEA8
	push {r4, lr}
	mov ip, r0
	movs r4, #1
	ldr r3, _0804EEC8 @ =gCamera
	ldrh r0, [r3]
	strh r0, [r3, #0x18]
	movs r0, #0x16
	ldrsh r2, [r3, r0]
	mov r0, ip
	adds r0, #0x90
	ldr r0, [r0]
	cmp r2, r0
	ble _0804EECC
	ldrh r0, [r3, #0x16]
	subs r0, #1
	b _0804EED4
	.align 2, 0
_0804EEC8: .4byte gCamera
_0804EECC:
	cmp r2, r0
	bge _0804EED6
	ldrh r0, [r3, #0x16]
	adds r0, #1
_0804EED4:
	strh r0, [r3, #0x16]
_0804EED6:
	movs r0, #0x14
	ldrsh r2, [r3, r0]
	mov r0, ip
	adds r0, #0x90
	ldr r0, [r0]
	subs r0, #0xa0
	cmp r2, r0
	ble _0804EEEC
	ldrh r0, [r3, #0x14]
	subs r0, #1
	b _0804EEF4
_0804EEEC:
	cmp r2, r0
	bge _0804EEF6
	ldrh r0, [r3, #0x14]
	adds r0, #1
_0804EEF4:
	strh r0, [r3, #0x14]
_0804EEF6:
	ldr r1, [r1]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x8c
	ldr r0, [r0]
	adds r0, #0x20
	cmp r1, r0
	blt _0804EF10
	mov r1, ip
	adds r1, #0x9b
	movs r0, #1
	strb r0, [r1]
	movs r4, #0
_0804EF10:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_804EF18
sub_804EF18: @ 0x0804EF18
	push {r4, r5, lr}
	mov ip, r0
	movs r5, #1
	ldr r3, _0804EF4C @ =gCamera
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	mov r1, ip
	adds r1, #0x8c
	ldr r1, [r1]
	cmp r0, r1
	bge _0804EF34
	ldrh r0, [r3, #0x18]
	adds r0, #1
	strh r0, [r3, #0x18]
_0804EF34:
	movs r0, #0x16
	ldrsh r2, [r3, r0]
	mov r0, ip
	adds r0, #0x90
	ldr r1, [r0]
	adds r4, r0, #0
	cmp r2, r1
	ble _0804EF50
	ldrh r0, [r3, #0x16]
	subs r0, #1
	b _0804EF58
	.align 2, 0
_0804EF4C: .4byte gCamera
_0804EF50:
	cmp r2, r1
	bge _0804EF5A
	ldrh r0, [r3, #0x16]
	adds r0, #1
_0804EF58:
	strh r0, [r3, #0x16]
_0804EF5A:
	movs r2, #0x14
	ldrsh r1, [r3, r2]
	ldr r0, [r4]
	subs r0, #0xa0
	cmp r1, r0
	ble _0804EF6C
	ldrh r0, [r3, #0x14]
	subs r0, #1
	b _0804EF74
_0804EF6C:
	cmp r1, r0
	bge _0804EF76
	ldrh r0, [r3, #0x14]
	adds r0, #1
_0804EF74:
	strh r0, [r3, #0x14]
_0804EF76:
	mov r0, ip
	adds r0, #0x8c
	movs r2, #0x18
	ldrsh r1, [r3, r2]
	ldr r0, [r0]
	cmp r0, r1
	bgt _0804EF98
	movs r0, #0x16
	ldrsh r1, [r3, r0]
	ldr r0, [r4]
	cmp r0, r1
	blt _0804EF98
	mov r1, ip
	adds r1, #0x9b
	movs r0, #2
	strb r0, [r1]
	movs r5, #0
_0804EF98:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_804EFA0
sub_804EFA0: @ 0x0804EFA0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	movs r6, #1
	adds r1, r3, #0
	adds r1, #0x7e
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0x7f
	bgt _0804EFBC
	adds r0, r2, #0
	adds r0, #0x18
	b _0804EFC0
_0804EFBC:
	adds r0, r2, #0
	subs r0, #0x18
_0804EFC0:
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _0804F00E
	adds r0, r3, #0
	adds r0, #0x7c
	movs r1, #0
	ldrsh r4, [r0, r1]
	cmp r4, #0
	bge _0804EFF0
	ldr r2, [r5]
	asrs r2, r2, #8
	adds r0, #0x10
	ldr r1, [r3, #0x74]
	asrs r1, r1, #8
	ldr r0, [r0]
	adds r0, r0, r1
	subs r2, r2, r0
	cmp r2, #0x20
	bgt _0804F00E
_0804EFF0:
	cmp r4, #0
	ble _0804F018
	ldr r2, [r5]
	asrs r2, r2, #8
	adds r0, r3, #0
	adds r0, #0x8c
	ldr r1, [r3, #0x74]
	asrs r1, r1, #8
	ldr r0, [r0]
	adds r0, r0, r1
	subs r2, r2, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r2, r0
	bge _0804F018
_0804F00E:
	adds r1, r3, #0
	adds r1, #0x9b
	movs r0, #8
	strb r0, [r1]
	movs r6, #0
_0804F018:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_804F020
sub_804F020: @ 0x0804F020
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r5, #1
	ldr r2, _0804F094 @ =gCamera
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r4, #0x1a
	ldrsh r0, [r2, r4]
	subs r0, #0xf0
	cmp r1, r0
	bge _0804F03C
	ldrh r0, [r2, #0x18]
	adds r0, #1
	strh r0, [r2, #0x18]
_0804F03C:
	movs r6, #0x18
	ldrsh r1, [r2, r6]
	ldrh r4, [r2]
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	bge _0804F04C
	strh r4, [r2, #0x18]
_0804F04C:
	ldr r0, [r3, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804F08C
	adds r1, r3, #0
	adds r1, #0x9b
	movs r0, #0x18
	strb r0, [r1]
	movs r5, #0
	adds r0, r3, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r1, [r3, #0x74]
	asrs r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, #0
	adds r1, #0x90
	ldr r1, [r1]
	ldr r2, [r3, #0x78]
	asrs r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl CreateBossCapsule
	ldr r1, _0804F098 @ =sa2__gUnknown_030054A8
	movs r0, #0x32
	strb r0, [r1, #1]
_0804F08C:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804F094: .4byte gCamera
_0804F098: .4byte sa2__gUnknown_030054A8

	thumb_func_start sub_804F09C
sub_804F09C: @ 0x0804F09C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0804F1A0 @ =sub_804F1D4
	ldr r2, _0804F1A4 @ =0x00002001
	ldr r1, _0804F1A8 @ =sub_804FE20
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r5, r0
	adds r0, #0x14
	adds r6, r5, r0
	ldr r1, _0804F1AC @ =0x03000044
	adds r7, r5, r1
	ldr r0, [r4, #0x1c]
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, r8
	ands r1, r0
	mov r8, r1
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	lsls r0, r0, #8
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r3]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	lsls r0, r0, #8
	ldr r1, [r4, #0x78]
	adds r0, r0, r1
	ldr r1, _0804F1B0 @ =0xFFFFFA00
	adds r0, r0, r1
	str r0, [r3, #4]
	movs r0, #0
	mov sb, r0
	movs r4, #0
	ldr r0, _0804F1B4 @ =0x0000FFC0
	strh r0, [r3, #8]
	mov r1, r8
	cmp r1, #0
	beq _0804F10A
	movs r0, #0x40
	strh r0, [r3, #8]
_0804F10A:
	strh r4, [r3, #0xa]
	movs r0, #0x40
	strh r0, [r3, #0xc]
	ldr r2, _0804F1B8 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0804F1BC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0804F1C0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0804F12C
	movs r0, #0x20
	strh r0, [r3, #0xc]
_0804F12C:
	strh r4, [r3, #0x10]
	strh r4, [r3, #0x12]
	mov r0, r8
	cmp r0, #0
	bne _0804F13A
	movs r0, #0x80
	strh r0, [r3, #0x12]
_0804F13A:
	movs r0, #0x40
	bl VramMalloc
	str r0, [r6, #4]
	strh r4, [r6, #8]
	movs r0, #0xa4
	lsls r0, r0, #2
	strh r0, [r6, #0xa]
	ldr r1, _0804F1C4 @ =0x03000034
	adds r0, r5, r1
	mov r1, sb
	strb r1, [r0]
	ldr r0, _0804F1C8 @ =0x03000035
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r4, [r6, #0x1c]
	ldr r0, _0804F1CC @ =0x03000036
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0804F1D0 @ =0x03000039
	adds r0, r5, r1
	mov r1, sb
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	strh r4, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r7, #2]
	mov r0, r8
	cmp r0, #0
	beq _0804F18A
	rsbs r0, r1, #0
	strh r0, [r7, #2]
_0804F18A:
	strh r1, [r7, #4]
	strh r4, [r7, #6]
	strh r4, [r7, #8]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F1A0: .4byte sub_804F1D4
_0804F1A4: .4byte 0x00002001
_0804F1A8: .4byte sub_804FE20
_0804F1AC: .4byte 0x03000044
_0804F1B0: .4byte 0xFFFFFA00
_0804F1B4: .4byte 0x0000FFC0
_0804F1B8: .4byte gPseudoRandom
_0804F1BC: .4byte 0x00196225
_0804F1C0: .4byte 0x3C6EF35F
_0804F1C4: .4byte 0x03000034
_0804F1C8: .4byte 0x03000035
_0804F1CC: .4byte 0x03000036
_0804F1D0: .4byte 0x03000039

	thumb_func_start sub_804F1D4
sub_804F1D4: @ 0x0804F1D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0804F27C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r1, #0x14
	adds r1, r0, r1
	str r1, [sp]
	ldr r2, _0804F280 @ =0x03000044
	adds r2, r0, r2
	str r2, [sp, #4]
	ldr r3, [r7]
	str r3, [sp, #8]
	ldr r4, [r7, #4]
	str r4, [sp, #0xc]
	movs r3, #0xff
	ldrb r6, [r7, #0x12]
	mov r8, r6
	movs r1, #0x10
	ldrsh r0, [r7, r1]
	cmp r0, #0x18
	ble _0804F2B6
	ldr r4, _0804F284 @ =gPlayer
	ldr r2, [r4]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xc]
	subs r6, r0, r1
	movs r0, #8
	ldrsh r4, [r7, r0]
	movs r0, #0xa
	ldrsh r1, [r7, r0]
	ldr r5, _0804F288 @ =gSineTable
	mov r0, r8
	ands r0, r3
	lsls r3, r0, #2
	mov sb, r3
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r3, [sp, #8]
	subs r0, r2, r3
	cmp r0, #0
	bge _0804F242
	rsbs r0, r0, #0
_0804F242:
	adds r2, r1, #0
	muls r2, r0, r2
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, sb
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #3
	adds r1, r4, r0
	cmp r1, #0
	bge _0804F260
	rsbs r1, r1, #0
_0804F260:
	adds r0, r2, #0
	bl __divsi3
	adds r1, r0, #0
	ldr r2, _0804F28C @ =0xFFFFF800
	adds r0, r6, r2
	cmp r1, r0
	bge _0804F298
	cmp r4, #0
	ble _0804F290
	movs r3, #3
	add r8, r3
	b _0804F2AC
	.align 2, 0
_0804F27C: .4byte gCurTask
_0804F280: .4byte 0x03000044
_0804F284: .4byte gPlayer
_0804F288: .4byte gSineTable
_0804F28C: .4byte 0xFFFFF800
_0804F290:
	movs r4, #3
	rsbs r4, r4, #0
	add r8, r4
	b _0804F2AC
_0804F298:
	cmp r1, r6
	ble _0804F2AC
	cmp r4, #0
	ble _0804F2A8
	movs r6, #3
	rsbs r6, r6, #0
	add r8, r6
	b _0804F2AC
_0804F2A8:
	movs r0, #3
	add r8, r0
_0804F2AC:
	movs r0, #0xff
	mov r1, r8
	ands r1, r0
	mov r8, r1
	strh r1, [r7, #0x12]
_0804F2B6:
	movs r2, #8
	ldrsh r0, [r7, r2]
	ldr r3, [sp, #8]
	adds r3, r3, r0
	str r3, [sp, #8]
	movs r4, #0xa
	ldrsh r0, [r7, r4]
	ldr r6, [sp, #0xc]
	adds r6, r6, r0
	str r6, [sp, #0xc]
	movs r1, #0x10
	ldrsh r0, [r7, r1]
	cmp r0, #0x10
	ble _0804F310
	movs r3, #0xc
	ldrsh r2, [r7, r3]
	ldr r3, _0804F350 @ =gSineTable
	movs r1, #0xff
	mov r4, r8
	ands r1, r4
	lsls r0, r1, #3
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	asrs r0, r0, #8
	ldrh r2, [r7, #8]
	adds r0, r0, r2
	strh r0, [r7, #8]
	movs r4, #0xc
	ldrsh r2, [r7, r4]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	asrs r0, r0, #8
	ldrh r6, [r7, #0xa]
	adds r0, r0, r6
	strh r0, [r7, #0xa]
_0804F310:
	ldr r0, [sp, #8]
	str r0, [r7]
	ldr r1, [sp, #0xc]
	str r1, [r7, #4]
	asrs r5, r0, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	asrs r4, r1, #8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r0, [sp]
	mov r1, sl
	mov r2, sb
	ldr r3, _0804F354 @ =gPlayer
	bl sub_800BF10
	adds r6, r0, #0
	ldr r0, _0804F358 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0804F360
	ldr r3, _0804F35C @ =gPartner
	ldr r0, [sp]
	mov r1, sl
	mov r2, sb
	bl sub_800BF10
	b _0804F362
	.align 2, 0
_0804F350: .4byte gSineTable
_0804F354: .4byte gPlayer
_0804F358: .4byte gNumSingleplayerCharacters
_0804F35C: .4byte gPartner
_0804F360:
	movs r0, #0
_0804F362:
	orrs r6, r0
	cmp r6, #0
	beq _0804F3A8
	movs r3, #0xa8
	lsls r3, r3, #5
	ldr r2, _0804F3A4 @ =gSineTable
	movs r1, #0xff
	mov r4, r8
	ands r1, r4
	lsls r0, r1, #3
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	ldr r4, [sp, #8]
	adds r0, r4, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	muls r1, r3, r1
	asrs r1, r1, #8
	ldr r6, [sp, #0xc]
	adds r1, r6, r1
	bl sub_8017540
	b _0804F41E
	.align 2, 0
_0804F3A4: .4byte gSineTable
_0804F3A8:
	ldr r1, _0804F428 @ =gCamera
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r5, r5, r0
	movs r3, #2
	ldrsh r0, [r1, r3]
	subs r4, r4, r0
	ldr r3, _0804F42C @ =gPseudoRandom
	ldr r1, [r3]
	ldr r0, _0804F430 @ =0x00196225
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r6, _0804F434 @ =0x3C6EF35F
	adds r2, r2, r6
	str r2, [r3]
	ldr r0, _0804F438 @ =0x000003FF
	mov sb, r0
	ands r2, r0
	ldr r1, _0804F43C @ =0xFFFFE600
	adds r2, r2, r1
	ldr r3, _0804F440 @ =gSineTable
	movs r1, #0xff
	mov r6, r8
	ands r1, r6
	lsls r0, r1, #3
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	asrs r0, r0, #8
	ldr r6, [sp, #8]
	adds r0, r6, r0
	asrs r0, r0, #8
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	muls r1, r2, r1
	asrs r1, r1, #8
	ldr r2, [sp, #0xc]
	adds r1, r2, r1
	asrs r1, r1, #8
	bl sub_80404A0
	adds r1, r5, #0
	adds r1, #0x20
	ldr r0, _0804F444 @ =0x0000012F
	cmp r1, r0
	bhi _0804F41E
	adds r1, r4, #0
	adds r1, #0x40
	subs r0, #0x10
	cmp r1, r0
	bls _0804F44C
_0804F41E:
	ldr r0, _0804F448 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804F4A6
	.align 2, 0
_0804F428: .4byte gCamera
_0804F42C: .4byte gPseudoRandom
_0804F430: .4byte 0x00196225
_0804F434: .4byte 0x3C6EF35F
_0804F438: .4byte 0x000003FF
_0804F43C: .4byte 0xFFFFE600
_0804F440: .4byte gSineTable
_0804F444: .4byte 0x0000012F
_0804F448: .4byte gCurTask
_0804F44C:
	ldrh r0, [r7, #0x10]
	adds r0, #1
	strh r0, [r7, #0x10]
	ldr r3, [sp, #4]
	strh r5, [r3, #6]
	strh r4, [r3, #8]
	mov r1, r8
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r0, #0
	bge _0804F464
	adds r1, #0x80
_0804F464:
	adds r0, r1, #0
	adds r0, #0x80
	lsls r0, r0, #2
	mov r6, sb
	ands r0, r6
	ldr r1, [sp, #4]
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	ldr r2, [sp]
	str r0, [r2, #0x10]
	ldr r2, _0804F4B8 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, [sp]
	ldr r0, [r3, #0x10]
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl TransformSprite
	ldr r0, [sp]
	bl DisplaySprite
_0804F4A6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F4B8: .4byte sa2__gUnknown_030054B8

	thumb_func_start sub_804F4BC
sub_804F4BC: @ 0x0804F4BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, _0804F5F0 @ =sub_804F630
	ldr r2, _0804F5F4 @ =0x00004001
	ldr r1, _0804F5F8 @ =sub_804FE3C
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r5, #0xc0
	lsls r5, r5, #0x12
	add r5, r8
	ldr r1, _0804F5FC @ =0x03000018
	add r1, r8
	mov sl, r1
	ldr r7, _0804F600 @ =0x03000048
	add r7, r8
	lsls r4, r4, #2
	ldr r0, _0804F604 @ =gUnknown_084AE548
	adds r4, r4, r0
	ldrb r0, [r4, #3]
	bl VramMalloc
	mov r2, sl
	str r0, [r2, #4]
	ldrh r0, [r4]
	movs r1, #0
	mov ip, r1
	movs r2, #0
	mov sb, r2
	mov r1, sl
	strh r0, [r1, #0xa]
	ldrb r1, [r4, #2]
	ldr r0, _0804F608 @ =0x03000038
	add r0, r8
	strb r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #3
	mov r2, sl
	strh r0, [r2, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2, #0x10]
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r0, [r0]
	lsls r0, r0, #8
	ldr r1, [r6, #0x74]
	adds r0, r0, r1
	str r0, [r5]
	adds r0, r6, #0
	adds r0, #0x90
	ldr r0, [r0]
	lsls r0, r0, #8
	ldr r1, [r6, #0x78]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r3, _0804F60C @ =gPseudoRandom
	ldr r0, [r3]
	ldr r6, _0804F610 @ =0x00196225
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r4, _0804F614 @ =0x3C6EF35F
	adds r1, r1, r4
	str r1, [r3]
	lsls r0, r1, #0xd
	lsrs r0, r0, #0x15
	ldr r2, _0804F618 @ =0xFFFFFC00
	adds r0, r0, r2
	strh r0, [r5, #8]
	adds r2, r1, #0
	muls r2, r6, r2
	adds r2, r2, r4
	str r2, [r3]
	lsls r1, r2, #0xf
	lsrs r1, r1, #0x17
	ldr r0, _0804F61C @ =0xFFFFFE00
	subs r0, r0, r1
	strh r0, [r5, #0xa]
	mov r0, sb
	strh r0, [r5, #0xc]
	muls r2, r6, r2
	adds r2, r2, r4
	str r2, [r3]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r2
	lsrs r1, r1, #8
	movs r0, #0x2a
	subs r0, r0, r1
	strh r0, [r5, #0xe]
	mov r1, sb
	strh r1, [r5, #0x10]
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r4
	str r0, [r3]
	lsrs r1, r0, #8
	strh r1, [r5, #0x12]
	muls r0, r6, r0
	adds r0, r0, r4
	str r0, [r3]
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x14
	ldr r2, _0804F620 @ =0xFFFFF800
	adds r0, r0, r2
	strh r0, [r5, #0x14]
	mov r1, sb
	mov r0, sl
	strh r1, [r0, #8]
	ldr r1, _0804F624 @ =0x03000039
	add r1, r8
	movs r0, #0xff
	strb r0, [r1]
	mov r0, sb
	mov r2, sl
	strh r0, [r2, #0x1c]
	ldr r1, _0804F628 @ =0x0300003A
	add r1, r8
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0804F62C @ =0x0300003D
	add r8, r1
	mov r0, ip
	mov r2, r8
	strb r0, [r2]
	mov r1, sb
	strh r1, [r7]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #2]
	strh r0, [r7, #4]
	strh r1, [r7, #6]
	strh r1, [r7, #8]
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804F5F0: .4byte sub_804F630
_0804F5F4: .4byte 0x00004001
_0804F5F8: .4byte sub_804FE3C
_0804F5FC: .4byte 0x03000018
_0804F600: .4byte 0x03000048
_0804F604: .4byte gUnknown_084AE548
_0804F608: .4byte 0x03000038
_0804F60C: .4byte gPseudoRandom
_0804F610: .4byte 0x00196225
_0804F614: .4byte 0x3C6EF35F
_0804F618: .4byte 0xFFFFFC00
_0804F61C: .4byte 0xFFFFFE00
_0804F620: .4byte 0xFFFFF800
_0804F624: .4byte 0x03000039
_0804F628: .4byte 0x0300003A
_0804F62C: .4byte 0x0300003D

	thumb_func_start sub_804F630
sub_804F630: @ 0x0804F630
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0804F6E0 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r0, r1
	adds r1, #0x18
	adds r4, r0, r1
	ldr r5, _0804F6E4 @ =0x03000048
	adds r6, r0, r5
	ldr r7, _0804F6E8 @ =gCamera
	mov r8, r7
	movs r0, #8
	ldrsh r1, [r3, r0]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	movs r5, #0xa
	ldrsh r1, [r3, r5]
	ldr r0, [r3, #4]
	adds r0, r0, r1
	str r0, [r3, #4]
	ldrh r0, [r3, #0xc]
	ldrh r7, [r3, #8]
	adds r0, r0, r7
	movs r5, #0
	strh r0, [r3, #8]
	ldrh r0, [r3, #0xe]
	ldrh r1, [r3, #0xa]
	adds r0, r0, r1
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #0x14]
	ldrh r7, [r3, #0x12]
	adds r0, r1, r7
	strh r0, [r3, #0x12]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov ip, r2
	cmp r0, #0
	beq _0804F6B0
	cmp r0, #0
	ble _0804F698
	adds r0, r1, #0
	subs r0, #8
	strh r0, [r3, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0804F6B0
	strh r5, [r3, #0x14]
_0804F698:
	ldrh r1, [r3, #0x14]
	movs r2, #0x14
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bge _0804F6B0
	adds r0, r1, #0
	adds r0, #8
	strh r0, [r3, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0804F6B0
	strh r5, [r3, #0x14]
_0804F6B0:
	ldr r0, [r3]
	asrs r0, r0, #8
	mov r5, r8
	movs r7, #0
	ldrsh r1, [r5, r7]
	subs r5, r0, r1
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	mov r2, r8
	movs r7, #2
	ldrsh r1, [r2, r7]
	subs r2, r0, r1
	adds r1, r5, #0
	adds r1, #0x20
	ldr r0, _0804F6EC @ =0x0000012F
	cmp r1, r0
	bhi _0804F6D6
	cmp r2, #0xdf
	ble _0804F6F0
_0804F6D6:
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _0804F72E
	.align 2, 0
_0804F6E0: .4byte gCurTask
_0804F6E4: .4byte 0x03000048
_0804F6E8: .4byte gCamera
_0804F6EC: .4byte 0x0000012F
_0804F6F0:
	strh r5, [r6, #6]
	strh r2, [r6, #8]
	ldrh r0, [r3, #0x12]
	lsrs r0, r0, #6
	strh r0, [r6]
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r2, _0804F738 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r4, #0x10]
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	adds r1, r6, #0
	bl TransformSprite
	adds r0, r4, #0
	bl DisplaySprite
_0804F72E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F738: .4byte sa2__gUnknown_030054B8

	thumb_func_start sub_804F73C
sub_804F73C: @ 0x0804F73C
	ldr r2, _0804F75C @ =gCamera
	adds r1, r0, #0
	adds r1, #0x8c
	ldr r1, [r1]
	adds r1, #0xf0
	strh r1, [r2, #0x1a]
	ldrh r1, [r2, #2]
	strh r1, [r2, #0x14]
	adds r1, #0xa0
	strh r1, [r2, #0x16]
	adds r0, #0x88
	ldr r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_0804F75C: .4byte gCamera

	thumb_func_start sub_804F760
sub_804F760: @ 0x0804F760
	ldr r0, _0804F784 @ =gCamera
	ldrh r2, [r0]
	movs r3, #0
	strh r2, [r0, #0x18]
	strh r3, [r1, #0xc]
	strh r3, [r1, #8]
	strh r3, [r1, #0xa]
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0xe
	orrs r0, r2
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #0x10]
	strh r3, [r1, #0x38]
	strh r3, [r1, #0x3a]
	bx lr
	.align 2, 0
_0804F784: .4byte gCamera

	thumb_func_start sub_804F788
sub_804F788: @ 0x0804F788
	bx lr
	.align 2, 0

	thumb_func_start sub_804F78C
sub_804F78C: @ 0x0804F78C
	bx lr
	.align 2, 0

	thumb_func_start sub_804F790
sub_804F790: @ 0x0804F790
	adds r2, r1, #0
	adds r2, #0x40
	movs r0, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0x10
	orrs r0, r2
	str r0, [r1, #0x10]
	ldr r1, _0804F7AC @ =sa2__gUnknown_030054A8
	movs r0, #0x11
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_0804F7AC: .4byte sa2__gUnknown_030054A8

	thumb_func_start sub_804F7B0
sub_804F7B0: @ 0x0804F7B0
	bx lr
	.align 2, 0

	thumb_func_start sub_804F7B4
sub_804F7B4: @ 0x0804F7B4
	push {lr}
	movs r0, #0x74
	bl m4aSongNumStart
	pop {r0}
	bx r0

	thumb_func_start sub_804F7C0
sub_804F7C0: @ 0x0804F7C0
	bx lr
	.align 2, 0

	thumb_func_start sub_804F7C4
sub_804F7C4: @ 0x0804F7C4
	bx lr
	.align 2, 0

	thumb_func_start sub_804F7C8
sub_804F7C8: @ 0x0804F7C8
	bx lr
	.align 2, 0

	thumb_func_start sub_804F7CC
sub_804F7CC: @ 0x0804F7CC
	bx lr
	.align 2, 0

	thumb_func_start sub_804F7D0
sub_804F7D0: @ 0x0804F7D0
	push {lr}
	movs r0, #0x6d
	bl m4aSongNumStart
	pop {r0}
	bx r0

	thumb_func_start sub_804F7DC
sub_804F7DC: @ 0x0804F7DC
	push {lr}
	movs r0, #0x6e
	bl m4aSongNumStart
	pop {r0}
	bx r0

	thumb_func_start sub_804F7E8
sub_804F7E8: @ 0x0804F7E8
	bx lr
	.align 2, 0

	thumb_func_start sub_804F7EC
sub_804F7EC: @ 0x0804F7EC
	bx lr
	.align 2, 0

	thumb_func_start sub_804F7F0
sub_804F7F0: @ 0x0804F7F0
	bx lr
	.align 2, 0

	thumb_func_start sub_804F7F4
sub_804F7F4: @ 0x0804F7F4
	push {r4, lr}
	sub sp, #4
	bl sub_804F09C
	movs r0, #0xc8
	bl m4aSongNumStart
	movs r0, #0x80
	lsls r0, r0, #2
	movs r2, #0x80
	lsls r2, r2, #1
	movs r4, #1
	rsbs r4, r4, #0
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x10
	adds r3, r4, #0
	bl sub_804CC14
	movs r0, #0x80
	lsls r0, r0, #3
	movs r1, #0x40
	str r1, [sp]
	movs r1, #0x10
	movs r2, #0x80
	adds r3, r4, #0
	bl sub_804CC14
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_804F834
sub_804F834: @ 0x0804F834
	adds r3, r0, #0
	adds r0, #0x95
	adds r2, r3, #0
	adds r2, #0x96
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	bne _0804F85E
	adds r1, r3, #0
	adds r1, #0x80
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
_0804F85E:
	bx lr
    .align 2, 0

	thumb_func_start sub_804F860
sub_804F860: @ 0x0804F860
	adds r2, r0, #0
	adds r0, #0x95
	adds r3, r2, #0
	adds r3, #0x96
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r1, r0
	bne _0804F882
	adds r1, r2, #0
	adds r1, #0x94
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0804F884 @ =sa2__gUnknown_030054A8
	movs r0, #0x12
	strb r0, [r1, #1]
_0804F882:
	bx lr
	.align 2, 0
_0804F884: .4byte sa2__gUnknown_030054A8

	thumb_func_start sub_804F888
sub_804F888: @ 0x0804F888
	push {r4, r5, r6, lr}
	ldr r1, _0804F8C4 @ =gLevelScore
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _0804F8C8 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _0804F8BC
	ldr r0, _0804F8CC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804F8BC
	ldr r1, _0804F8D0 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0804F8BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804F8C4: .4byte gLevelScore
_0804F8C8: .4byte 0x0000C350
_0804F8CC: .4byte gGameMode
_0804F8D0: .4byte gNumLives

	thumb_func_start sub_804F8D4
sub_804F8D4: @ 0x0804F8D4
	bx lr
	.align 2, 0

	thumb_func_start sub_804F8D8
sub_804F8D8: @ 0x0804F8D8
	bx lr
	.align 2, 0

	thumb_func_start sub_804F8DC
sub_804F8DC: @ 0x0804F8DC
	adds r2, r0, #0
	ldr r1, _0804F920 @ =gCamera
	movs r0, #0x88
	lsls r0, r0, #9
	str r0, [r2, #0x74]
	ldr r0, _0804F924 @ =0xFFFF9C00
	str r0, [r2, #0x78]
	ldr r0, _0804F928 @ =gRefCollision
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	strh r0, [r1, #0x1a]
	ldr r0, [r2, #0x1c]
	ldr r1, _0804F92C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #0x1c]
	ldr r0, [r2, #0x54]
	ands r0, r1
	str r0, [r2, #0x54]
	adds r1, r2, #0
	adds r1, #0x4e
	ldr r0, _0804F930 @ =0x000002B6
	strh r0, [r1]
	adds r1, #0x16
	movs r0, #3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r2, #0x88
	ldr r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_0804F920: .4byte gCamera
_0804F924: .4byte 0xFFFF9C00
_0804F928: .4byte gRefCollision
_0804F92C: .4byte 0xFFFFFBFF
_0804F930: .4byte 0x000002B6

	thumb_func_start sub_804F934
sub_804F934: @ 0x0804F934
	adds r2, r0, #0
	ldr r0, [r2, #0x1c]
	ldr r1, _0804F954 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #0x1c]
	adds r1, r2, #0
	adds r1, #0x4e
	ldr r0, _0804F958 @ =0x000002B6
	strh r0, [r1]
	adds r1, #0x16
	movs r0, #9
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	bx lr
	.align 2, 0
_0804F954: .4byte 0xFFFFFBFF
_0804F958: .4byte 0x000002B6

	thumb_func_start sub_804F95C
sub_804F95C: @ 0x0804F95C
	adds r2, r0, #0
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #0x1c]
	adds r1, r2, #0
	adds r1, #0x4e
	ldr r0, _0804F980 @ =0x000002B6
	strh r0, [r1]
	adds r1, #0x16
	movs r0, #6
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	bx lr
	.align 2, 0
_0804F980: .4byte 0x000002B6

	thumb_func_start sub_804F984
sub_804F984: @ 0x0804F984
	adds r0, #0x9b
	movs r1, #3
	strb r1, [r0]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_804F990
sub_804F990: @ 0x0804F990
	adds r2, r0, #0
	movs r3, #1
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804F9AA
	adds r1, r2, #0
	adds r1, #0x9b
	movs r0, #4
	strb r0, [r1]
	movs r3, #0
_0804F9AA:
	adds r0, r3, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_804F9B0
sub_804F9B0: @ 0x0804F9B0
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r4, #1
	ldr r0, [r3, #0x64]
	ldr r0, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804F9F4
	adds r1, r2, #0
	adds r1, #0x9b
	movs r0, #5
	strb r0, [r1]
	movs r4, #0
	ldr r2, [r3, #0x10]
	ldr r0, _0804F9FC @ =0xFFDFFFFF
	ands r2, r0
	str r2, [r3, #0x10]
	ldr r1, _0804FA00 @ =gUnknown_030060E0
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	orrs r0, r1
	ldrh r1, [r3, #0x38]
	orrs r0, r1
	movs r1, #0
	strh r0, [r3, #0x38]
	ldr r0, _0804FA04 @ =0xFF7FFFFF
	ands r2, r0
	str r2, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0x40
	strb r1, [r0]
_0804F9F4:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804F9FC: .4byte 0xFFDFFFFF
_0804FA00: .4byte gUnknown_030060E0
_0804FA04: .4byte 0xFF7FFFFF

	thumb_func_start sub_804FA08
sub_804FA08: @ 0x0804FA08
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	movs r5, #1
	adds r0, #0x84
	ldrh r1, [r0]
	subs r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bgt _0804FA2E
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_804ED80
	adds r1, r4, #0
	adds r1, #0x9b
	strb r0, [r1]
	movs r5, #0
_0804FA2E:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_804FA38
sub_804FA38: @ 0x0804FA38
	adds r1, r0, #0
	movs r2, #1
	adds r0, #0x7e
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	blt _0804FA4E
	adds r1, #0x9b
	movs r0, #7
	strb r0, [r1]
	movs r2, #0
_0804FA4E:
	adds r0, r2, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_804FA54
sub_804FA54: @ 0x0804FA54
	adds r1, r0, #0
	movs r2, #1
	adds r0, #0x88
	ldr r0, [r0]
	ands r0, r2
	cmp r0, #0
	beq _0804FA6A
	adds r1, #0x9b
	movs r0, #9
	strb r0, [r1]
	movs r2, #0
_0804FA6A:
	adds r0, r2, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_804FA70
sub_804FA70: @ 0x0804FA70
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	movs r3, #1
	ldr r0, [r4, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804FA94
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_804ED80
	adds r1, r4, #0
	adds r1, #0x9b
	strb r0, [r1]
	movs r3, #0
_0804FA94:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_804FA9C
sub_804FA9C: @ 0x0804FA9C
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	movs r3, #1
	ldr r0, [r4, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804FAC0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_804ED80
	adds r1, r4, #0
	adds r1, #0x9b
	strb r0, [r1]
	movs r3, #0
_0804FAC0:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_804FAC8
sub_804FAC8: @ 0x0804FAC8
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #1
	adds r0, #0x84
	ldrh r1, [r0]
	subs r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bgt _0804FAE6
	adds r1, r3, #0
	adds r1, #0x9b
	movs r0, #0xc
	strb r0, [r1]
	movs r4, #0
_0804FAE6:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_804FAF0
sub_804FAF0: @ 0x0804FAF0
	adds r2, r0, #0
	movs r3, #1
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0804FB0A
	adds r1, r2, #0
	adds r1, #0x9b
	movs r0, #5
	strb r0, [r1]
	movs r3, #0
_0804FB0A:
	adds r0, r3, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_804FB10
sub_804FB10: @ 0x0804FB10
	adds r2, r0, #0
	movs r3, #1
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804FB2A
	adds r1, r2, #0
	adds r1, #0x9b
	movs r0, #0xe
	strb r0, [r1]
	movs r3, #0
_0804FB2A:
	adds r0, r3, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_804FB30
sub_804FB30: @ 0x0804FB30
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	movs r3, #1
	ldr r0, [r4, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804FB54
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_804ED80
	adds r1, r4, #0
	adds r1, #0x9b
	strb r0, [r1]
	movs r3, #0
_0804FB54:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_804FB5C
sub_804FB5C: @ 0x0804FB5C
	adds r2, r0, #0
	movs r3, #1
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804FB76
	adds r1, r2, #0
	adds r1, #0x9b
	movs r0, #0x10
	strb r0, [r1]
	movs r3, #0
_0804FB76:
	adds r0, r3, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_804FB7C
sub_804FB7C: @ 0x0804FB7C
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	movs r3, #1
	ldr r0, [r4, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804FBA0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_804ED80
	adds r1, r4, #0
	adds r1, #0x9b
	strb r0, [r1]
	movs r3, #0
_0804FBA0:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_804FBA8
sub_804FBA8: @ 0x0804FBA8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	adds r0, #0x95
	adds r2, r4, #0
	adds r2, #0x96
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	bne _0804FBC6
	adds r0, r4, #0
	bl sub_804EE20
_0804FBC6:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	ands r0, r5
	cmp r0, #0
	beq _0804FBDC
	adds r1, r4, #0
	adds r1, #0x9b
	movs r0, #0x12
	strb r0, [r1]
	movs r5, #0
_0804FBDC:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_804FBE4
sub_804FBE4: @ 0x0804FBE4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r6, #1
	adds r0, #0x95
	adds r2, r4, #0
	adds r2, #0x96
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	bne _0804FC04
	adds r0, r4, #0
	bl sub_804EE20
_0804FC04:
	ldr r0, [r4, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804FC20
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_804ED80
	adds r1, r4, #0
	adds r1, #0x9b
	strb r0, [r1]
	movs r6, #0
_0804FC20:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_804FC28
sub_804FC28: @ 0x0804FC28
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	bl sub_804EE20
	adds r2, r4, #0
	adds r2, #0x88
	ldr r0, [r2]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0804FC4A
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_0804FC4A:
	ldr r0, [r2]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0804FC5E
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_0804FC5E:
	ldr r0, [r2]
	ands r0, r5
	cmp r0, #0
	beq _0804FC70
	adds r1, r4, #0
	adds r1, #0x9b
	movs r0, #0x14
	strb r0, [r1]
	movs r5, #0
_0804FC70:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_804FC78
sub_804FC78: @ 0x0804FC78
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	bl sub_804EE20
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r1, [r0]
	subs r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bgt _0804FC9C
	adds r1, r4, #0
	adds r1, #0x9b
	movs r0, #0x15
	strb r0, [r1]
	movs r5, #0
_0804FC9C:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_804FCA4
sub_804FCA4: @ 0x0804FCA4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	bl sub_804EE20
	cmp r0, #0
	beq _0804FCE4
	adds r1, r4, #0
	adds r1, #0x9b
	movs r0, #0x16
	strb r0, [r1]
	movs r5, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_804F4BC
	adds r0, r4, #0
	movs r1, #1
	bl sub_804F4BC
	adds r0, r4, #0
	movs r1, #2
	bl sub_804F4BC
	adds r0, r4, #0
	movs r1, #3
	bl sub_804F4BC
	adds r0, r4, #0
	movs r1, #4
	bl sub_804F4BC
_0804FCE4:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_804FCEC
sub_804FCEC: @ 0x0804FCEC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #1
	ldr r2, _0804FD50 @ =gCamera
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r3, #0x1a
	ldrsh r0, [r2, r3]
	subs r0, #0xf0
	cmp r1, r0
	bge _0804FD08
	ldrh r0, [r2, #0x18]
	adds r0, #1
	strh r0, [r2, #0x18]
_0804FD08:
	movs r6, #0x18
	ldrsh r1, [r2, r6]
	ldrh r3, [r2]
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	bge _0804FD18
	strh r3, [r2, #0x18]
_0804FD18:
	adds r1, r4, #0
	adds r1, #0x8c
	ldr r0, [r4, #0x74]
	asrs r0, r0, #8
	ldr r1, [r1]
	adds r1, r1, r0
	adds r1, #0x20
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, #0xf0
	cmp r1, r0
	bgt _0804FD48
	movs r6, #0x18
	ldrsh r1, [r2, r6]
	movs r3, #0x1a
	ldrsh r0, [r2, r3]
	subs r0, #0xf0
	cmp r1, r0
	blt _0804FD48
	adds r1, r4, #0
	adds r1, #0x9b
	movs r0, #0x17
	strb r0, [r1]
	movs r5, #0
_0804FD48:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804FD50: .4byte gCamera

	thumb_func_start sub_804FD54
sub_804FD54: @ 0x0804FD54
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r3, _0804FDB0 @ =gCamera
	movs r0, #0x18
	ldrsh r1, [r3, r0]
	movs r4, #0x1a
	ldrsh r0, [r3, r4]
	subs r0, #0xf0
	cmp r1, r0
	bge _0804FD6E
	ldrh r0, [r3, #0x18]
	adds r0, #1
	strh r0, [r3, #0x18]
_0804FD6E:
	movs r5, #0x18
	ldrsh r1, [r3, r5]
	ldrh r4, [r3]
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r1, r0
	bge _0804FD7E
	strh r4, [r3, #0x18]
_0804FD7E:
	adds r1, r2, #0
	adds r1, #0x8c
	ldr r0, [r2, #0x74]
	asrs r0, r0, #8
	ldr r1, [r1]
	adds r1, r1, r0
	movs r4, #0x1a
	ldrsh r0, [r3, r4]
	adds r0, #0x20
	cmp r1, r0
	blt _0804FDA8
	adds r2, #0x88
	ldr r0, [r2]
	movs r1, #0x61
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r0, _0804FDB4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0804FDA8:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0804FDB0: .4byte gCamera
_0804FDB4: .4byte gCurTask

	thumb_func_start TaskDestructor_MechaKnuckles
TaskDestructor_MechaKnuckles: @ 0x0804FDB8
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

	thumb_func_start sub_804FDD4
sub_804FDD4: @ 0x0804FDD4
	push {r4, lr}
	mov ip, r0
	ldr r2, [r0, #0x74]
	mov r4, ip
	adds r4, #0x88
	ldr r3, [r4]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r3, r0
	asrs r0, r2, #8
	mov r1, ip
	adds r1, #0x98
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	subs r0, #6
	cmp r0, #0
	bge _0804FE02
	lsls r0, r0, #8
	subs r2, r2, r0
	movs r0, #4
	orrs r3, r0
_0804FE02:
	asrs r0, r2, #8
	adds r0, r0, r1
	subs r0, #0xea
	cmp r0, #0
	ble _0804FE14
	lsls r0, r0, #8
	subs r2, r2, r0
	movs r0, #8
	orrs r3, r0
_0804FE14:
	mov r0, ip
	str r2, [r0, #0x74]
	str r3, [r4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_804FE20
sub_804FE20: @ 0x0804FE20
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0804FE38 @ =0x03000014
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	movs r0, #0xc8
	bl m4aSongNumStop
	pop {r0}
	bx r0
	.align 2, 0
_0804FE38: .4byte 0x03000014

	thumb_func_start sub_804FE3C
sub_804FE3C: @ 0x0804FE3C
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0804FE50 @ =0x03000018
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0804FE50: .4byte 0x03000018
