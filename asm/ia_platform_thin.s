.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_PlatformThin_Falling
Task_PlatformThin_Falling: @ 0x08024574
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _0802468C @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, _08024690 @ =0x0300000C
	adds r6, r1, r2
	ldr r3, [r7]
	mov sb, r3
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08024694 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	mov sl, r4
	asrs r5, r2, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	str r2, [sp]
	asrs r4, r1, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x18]
	ldr r3, _08024698 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl Coll_Player_PlatformCrumbling
	movs r3, #8
	mov r8, r3
	ands r0, r3
	cmp r0, #0
	bne _080245F0
	ldr r3, _0802469C @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl Coll_Player_PlatformCrumbling
	mov r4, r8
	ands r0, r4
	cmp r0, #0
	beq _080245FC
_080245F0:
	ldr r1, _0802468C @ =gCurTask
	ldr r0, [r1]
	ldr r1, _080246A0 @ =sub_802473C
	str r1, [r0, #8]
	movs r0, #0x1e
	strh r0, [r7, #0x3c]
_080245FC:
	ldr r0, _080246A4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0802461E
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802461E
	movs r0, #0
	strh r0, [r7, #0x3c]
	ldr r0, _0802468C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080246A8 @ =sub_802492C
	str r0, [r1, #8]
_0802461E:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08024694 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _08024658
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08024658
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r4, #2
	ldrsh r2, [r3, r4]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	cmp r1, r0
	bgt _08024658
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _080246AC
_08024658:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0802467C
	movs r4, #0x18
	ldrsh r0, [r6, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0802467C
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080246AC
_0802467C:
	ldrb r0, [r7, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0802468C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08024728
	.align 2, 0
_0802468C: .4byte gCurTask
_08024690: .4byte 0x0300000C
_08024694: .4byte gCamera
_08024698: .4byte gPlayer
_0802469C: .4byte gPartner
_080246A0: .4byte sub_802473C
_080246A4: .4byte gGameMode
_080246A8: .4byte sub_802492C
_080246AC:
	ldr r1, _080246F0 @ =gPlayer
	ldr r0, [r1, #0x10]
	movs r2, #8
	ands r0, r2
	cmp r0, #0
	beq _080246BE
	ldr r0, [r1, #0x28]
	cmp r0, r6
	beq _080246DA
_080246BE:
	ldr r0, _080246F4 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080246FC
	ldr r1, _080246F8 @ =gPartner
	ldr r0, [r1, #0x10]
	ands r0, r2
	cmp r0, #0
	beq _080246FC
	ldr r0, [r1, #0x28]
	cmp r0, r6
	bne _080246FC
_080246DA:
	adds r0, r7, #0
	adds r0, #0x4c
	ldrh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	beq _0802470E
	adds r0, r3, #0
	adds r0, #0x10
	b _0802470C
	.align 2, 0
_080246F0: .4byte gPlayer
_080246F4: .4byte gNumSingleplayerCharacters
_080246F8: .4byte gPartner
_080246FC:
	adds r0, r7, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _0802470E
	adds r0, r1, #0
	subs r0, #0x10
_0802470C:
	strh r0, [r2]
_0802470E:
	ldr r1, _08024738 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r2, [r6, #0x18]
	adds r0, r0, r2
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
_08024728:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024738: .4byte gSineTable

	thumb_func_start sub_802473C
sub_802473C: @ 0x0802473C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080247CC @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _080247D0 @ =0x0300000C
	adds r7, r1, r2
	ldr r3, [r6]
	mov r8, r3
	ldrb r5, [r6, #8]
	lsls r5, r5, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	lsls r5, r5, #0x10
	ldrb r4, [r3, #1]
	lsls r4, r4, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	ldr r1, _080247D4 @ =gCamera
	ldrh r0, [r1]
	lsrs r2, r5, #0x10
	mov sl, r2
	asrs r5, r5, #0x10
	subs r0, r5, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r1, #2]
	lsrs r3, r4, #0x10
	str r3, [sp]
	asrs r4, r4, #0x10
	subs r0, r4, r0
	strh r0, [r7, #0x18]
	ldr r3, _080247D8 @ =gPlayer
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl Coll_Player_PlatformCrumbling
	ldr r3, _080247DC @ =gPartner
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl Coll_Player_PlatformCrumbling
	ldr r0, _080247E0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080247E8
	mov r0, r8
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080247E8
	movs r0, #0
	strh r0, [r6, #0x3c]
	mov r2, sb
	ldr r1, [r2]
	ldr r0, _080247E4 @ =sub_802492C
	str r0, [r1, #8]
	b _0802481E
	.align 2, 0
_080247CC: .4byte gCurTask
_080247D0: .4byte 0x0300000C
_080247D4: .4byte gCamera
_080247D8: .4byte gPlayer
_080247DC: .4byte gPartner
_080247E0: .4byte gGameMode
_080247E4: .4byte sub_802492C
_080247E8:
	ldrh r0, [r6, #0x3c]
	subs r0, #1
	strh r0, [r6, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0802481E
	strh r0, [r6, #0x3c]
	ldr r0, _0802488C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08024890 @ =sub_802492C
	str r0, [r1, #8]
	ldr r0, _08024894 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0802481E
	bl CreateRoomEvent
	movs r2, #1
	strb r2, [r0]
	ldrh r1, [r6, #4]
	strb r1, [r0, #1]
	ldrh r1, [r6, #6]
	strb r1, [r0, #2]
	ldrb r1, [r6, #9]
	strb r1, [r0, #3]
	strb r2, [r0, #4]
_0802481E:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	ldr r2, _08024898 @ =gCamera
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r5, r0
	bgt _08024858
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _08024858
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	movs r3, #2
	ldrsh r1, [r2, r3]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _08024858
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	bge _0802489C
_08024858:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0802487C
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0802487C
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802489C
_0802487C:
	ldrb r0, [r6, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _0802488C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08024918
	.align 2, 0
_0802488C: .4byte gCurTask
_08024890: .4byte sub_802492C
_08024894: .4byte gGameMode
_08024898: .4byte gCamera
_0802489C:
	ldr r1, _080248E0 @ =gPlayer
	ldr r0, [r1, #0x10]
	movs r2, #8
	ands r0, r2
	cmp r0, #0
	beq _080248AE
	ldr r0, [r1, #0x28]
	cmp r0, r7
	beq _080248CA
_080248AE:
	ldr r0, _080248E4 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080248EC
	ldr r1, _080248E8 @ =gPartner
	ldr r0, [r1, #0x10]
	ands r0, r2
	cmp r0, #0
	beq _080248EC
	ldr r0, [r1, #0x28]
	cmp r0, r7
	bne _080248EC
_080248CA:
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	beq _080248FE
	adds r0, r3, #0
	adds r0, #0x10
	b _080248FC
	.align 2, 0
_080248E0: .4byte gPlayer
_080248E4: .4byte gNumSingleplayerCharacters
_080248E8: .4byte gPartner
_080248EC:
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _080248FE
	adds r0, r1, #0
	subs r0, #0x10
_080248FC:
	strh r0, [r2]
_080248FE:
	ldr r1, _08024928 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r2, [r7, #0x18]
	adds r0, r0, r2
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_08024918:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024928: .4byte gSineTable

	thumb_func_start sub_802492C
sub_802492C: @ 0x0802492C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	mov r8, r0
	ldr r0, _080249F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _080249F4 @ =0x0300000C
	adds r7, r1, r2
	ldr r3, [r5]
	str r3, [sp, #4]
	adds r0, #0x4a
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #0x2a
	strh r0, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r4, _080249F8 @ =gCamera
	ldrh r3, [r4]
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	subs r0, r0, r3
	strh r0, [r7, #0x16]
	ldrh r0, [r4, #2]
	lsrs r3, r1, #0x10
	str r3, [sp]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	strh r0, [r5, #0x3c]
	ldr r0, _080249FC @ =gPlayer
	mov sb, r0
	mov sl, r2
_080249A4:
	ldr r4, _080249FC @ =gPlayer
	mov r1, r8
	cmp r1, #0
	beq _080249AE
	ldr r4, _08024A00 @ =gPartner
_080249AE:
	ldr r0, [r4, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08024A26
	ldr r0, [r4, #0x28]
	cmp r0, r7
	bne _08024A26
	mov r6, sb
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0xe
	bne _080249D4
	mov r0, sb
	bl Player_TransitionCancelFlyingAndBoost
	movs r0, #4
	strb r0, [r6]
_080249D4:
	ldrh r0, [r5, #0x3c]
	cmp r0, #0x20
	bls _08024A04
	ldr r1, [r4, #0x10]
	movs r0, #2
	orrs r1, r0
	subs r0, #0xb
	ands r1, r0
	str r1, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	b _08024A26
	.align 2, 0
_080249F0: .4byte gCurTask
_080249F4: .4byte 0x0300000C
_080249F8: .4byte gCamera
_080249FC: .4byte gPlayer
_08024A00: .4byte gPartner
_08024A04:
	adds r0, r5, #0
	adds r0, #0x48
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, [r4, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r0, r5, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r1, r0
	str r1, [r4, #4]
_08024A26:
	ldrh r0, [r5, #0x3c]
	cmp r0, #0x1f
	bhi _08024A48
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	ldr r3, [sp]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	mov r3, sl
	asrs r1, r3, #0x10
	adds r3, r4, #0
	bl Coll_Player_PlatformCrumbling
_08024A48:
	movs r0, #1
	add r8, r0
	ldr r2, _08024A8C @ =gNumSingleplayerCharacters
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r8, r0
	blt _080249A4
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08024A7A
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08024A7A
	movs r3, #0x18
	ldrsh r1, [r7, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08024A94
_08024A7A:
	ldrb r0, [r5, #8]
	ldr r1, [sp, #4]
	strb r0, [r1]
	ldr r0, _08024A90 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08024B08
	.align 2, 0
_08024A8C: .4byte gNumSingleplayerCharacters
_08024A90: .4byte gCurTask
_08024A94:
	ldr r1, _08024AD4 @ =gPlayer
	ldr r0, [r1, #0x10]
	movs r3, #8
	ands r0, r3
	cmp r0, #0
	beq _08024AA6
	ldr r0, [r1, #0x28]
	cmp r0, r7
	beq _08024ABE
_08024AA6:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _08024ADC
	ldr r1, _08024AD8 @ =gPartner
	ldr r0, [r1, #0x10]
	ands r0, r3
	cmp r0, #0
	beq _08024ADC
	ldr r0, [r1, #0x28]
	cmp r0, r7
	bne _08024ADC
_08024ABE:
	adds r0, r5, #0
	adds r0, #0x4c
	ldrh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	beq _08024AEE
	adds r0, r3, #0
	adds r0, #0x10
	b _08024AEC
	.align 2, 0
_08024AD4: .4byte gPlayer
_08024AD8: .4byte gPartner
_08024ADC:
	adds r0, r5, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _08024AEE
	adds r0, r1, #0
	subs r0, #0x10
_08024AEC:
	strh r0, [r2]
_08024AEE:
	ldr r1, _08024B18 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r2, [r7, #0x18]
	adds r0, r0, r2
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_08024B08:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024B18: .4byte gSineTable

	thumb_func_start TaskDestructor_PlatformThin
TaskDestructor_PlatformThin: @ 0x08024B1C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
