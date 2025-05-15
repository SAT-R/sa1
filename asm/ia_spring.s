.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8022AB4
sub_8022AB4: @ 0x08022AB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldrb r4, [r6, #0xe]
	adds r4, #6
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r2, [r6, #0xf]
	adds r2, #1
	rsbs r3, r2, #0
	mov r0, sp
	adds r0, #5
	strb r3, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r2, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	mov r1, r8
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r5, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, _08022C5C @ =gCamera
	ldrh r0, [r1]
	lsrs r3, r2, #0x10
	mov sl, r3
	asrs r4, r2, #0x10
	subs r0, r4, r0
	mov r2, sb
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #2]
	ldr r3, [sp, #8]
	lsls r5, r3, #0x10
	asrs r2, r5, #0x10
	subs r0, r2, r0
	mov r1, sb
	strh r0, [r1, #0x18]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022B36
	b _08022E00
_08022B36:
	mov r0, sb
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_800A768
	mov ip, r0
	cmp r0, #0
	bne _08022BDA
	mov r0, sb
	adds r0, #0x34
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r4, r3
	ldr r0, [r6]
	asrs r0, r0, #8
	mov r1, sp
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _08022B7A
	mov r0, sb
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _08022B8E
	adds r4, r5, #0
	cmp r2, r1
	bge _08022B7A
	b _08022DF0
_08022B7A:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	adds r4, r5, #0
	cmp r0, r2
	bge _08022B8E
	b _08022DF0
_08022B8E:
	ldr r3, [sp, #8]
	lsls r2, r3, #0x10
	asrs r0, r2, #0x10
	mov r1, sb
	adds r1, #0x35
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r3, r0, r5
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	mov r1, sp
	movs r7, #1
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	adds r4, r2, #0
	cmp r3, r1
	bgt _08022BC8
	mov r0, sb
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r1
	bge _08022BDA
	cmp r3, r1
	bge _08022BC8
	b _08022DF0
_08022BC8:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r3
	bge _08022BDA
	b _08022DF0
_08022BDA:
	movs r3, #0xc
	ldr r0, [r6, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08022C60 @ =gGameMode
	ldrb r2, [r0]
	adds r4, r0, #0
	cmp r2, #6
	bne _08022BF6
	movs r3, #0xa
_08022BF6:
	mov r0, r8
	ldrb r0, [r0, #2]
	cmp r3, r0
	bne _08022CD8
	mov r1, ip
	cmp r1, #0
	bne _08022C16
	mov r3, sl
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, #0x14
	subs r1, r1, r0
	cmp r1, #0
	ble _08022CD8
_08022C16:
	cmp r2, #3
	beq _08022C1E
	cmp r2, #5
	bne _08022C22
_08022C1E:
	movs r0, #2
	strh r0, [r6, #0x1c]
_08022C22:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08022C64 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	mov r0, r8
	ldrb r3, [r0, #3]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08022C68
	mov r1, r8
	ldrb r0, [r1, #4]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	ldrb r0, [r1, #4]
	lsls r0, r0, #4
	b _08022C86
	.align 2, 0
_08022C5C: .4byte gCamera
_08022C60: .4byte gGameMode
_08022C64: .4byte 0xFFFFFEFF
_08022C68:
	ldr r2, _08022CD0 @ =gUnknown_080BB4F4
	movs r1, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	mov r3, r8
	ldrb r0, [r3, #3]
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
_08022C86:
	rsbs r0, r0, #0
	strh r0, [r6, #8]
	mov r0, ip
	cmp r0, #0
	beq _08022CA4
	ldrh r1, [r6, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #8]
	ldrh r1, [r6, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #0xa]
_08022CA4:
	ldr r0, _08022CD4 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022CB6
	ldrh r0, [r6, #0xa]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
_08022CB6:
	mov r2, r8
	ldrb r1, [r2, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022DA8
	adds r0, r6, #0
	bl Player_TransitionCancelFlyingAndBoost
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x15
	b _08022DB4
	.align 2, 0
_08022CD0: .4byte gUnknown_080BB4F4
_08022CD4: .4byte gStageFlags
_08022CD8:
	mov r3, ip
	cmp r3, #0
	bne _08022CF0
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r6]
	asrs r0, r0, #8
	subs r0, r1, r0
	adds r0, #0x14
	cmp r0, #0
	bge _08022DE0
_08022CF0:
	ldrb r0, [r4]
	cmp r0, #3
	beq _08022CFA
	cmp r0, #5
	bne _08022CFE
_08022CFA:
	movs r0, #2
	strh r0, [r6, #0x1c]
_08022CFE:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08022D34 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	mov r2, r8
	ldrb r3, [r2, #3]
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #3
	ble _08022D38
	ldrb r0, [r2, #4]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	ldrb r0, [r2, #4]
	lsls r0, r0, #4
	b _08022D56
	.align 2, 0
_08022D34: .4byte 0xFFFFFEFF
_08022D38:
	ldr r2, _08022DA0 @ =gUnknown_080BB4F4
	movs r1, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	mov r3, r8
	ldrb r0, [r3, #3]
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
_08022D56:
	strh r0, [r6, #8]
	mov r0, ip
	cmp r0, #0
	beq _08022D72
	ldrh r1, [r6, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #8]
	ldrh r1, [r6, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #0xa]
_08022D72:
	ldr r0, _08022DA4 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022D84
	ldrh r0, [r6, #0xa]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
_08022D84:
	mov r2, r8
	ldrb r1, [r2, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022DA8
	adds r0, r6, #0
	bl Player_TransitionCancelFlyingAndBoost
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x15
	b _08022DB4
	.align 2, 0
_08022DA0: .4byte gUnknown_080BB4F4
_08022DA4: .4byte gStageFlags
_08022DA8:
	adds r0, r6, #0
	bl Player_TransitionCancelFlyingAndBoost
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x11
_08022DB4:
	strb r0, [r1]
	ldr r0, [r6, #0x64]
	adds r0, #0x2d
	movs r1, #0xff
	strb r1, [r0]
	mov r1, sb
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r6, #0xe]
	movs r0, #0xe
	strb r0, [r6, #0xf]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r0, #1
	b _08022E02
_08022DE0:
	ldr r3, [sp, #8]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	adds r3, r6, #0
	bl sub_80096B0
	b _08022E00
_08022DF0:
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	asrs r2, r4, #0x10
	mov r0, sb
	adds r3, r6, #0
	bl sub_80096B0
_08022E00:
	movs r0, #0
_08022E02:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8022E14
sub_8022E14: @ 0x08022E14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldrb r4, [r6, #0xe]
	adds r4, #6
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r2, [r6, #0xf]
	adds r2, #1
	rsbs r3, r2, #0
	mov r0, sp
	adds r0, #5
	strb r3, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r2, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	mov r1, r8
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r5, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, _08022FB0 @ =gCamera
	ldrh r0, [r1]
	lsrs r3, r2, #0x10
	mov sl, r3
	asrs r4, r2, #0x10
	subs r0, r4, r0
	mov r2, sb
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #2]
	ldr r3, [sp, #8]
	lsls r5, r3, #0x10
	asrs r2, r5, #0x10
	subs r0, r2, r0
	mov r1, sb
	strh r0, [r1, #0x18]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022E96
	b _08023158
_08022E96:
	mov r0, sb
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_800A768
	mov ip, r0
	cmp r0, #0
	bne _08022F3A
	mov r0, sb
	adds r0, #0x34
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r4, r3
	ldr r0, [r6]
	asrs r0, r0, #8
	mov r1, sp
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _08022EDA
	mov r0, sb
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _08022EEE
	adds r4, r5, #0
	cmp r2, r1
	bge _08022EDA
	b _08023148
_08022EDA:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	adds r4, r5, #0
	cmp r0, r2
	bge _08022EEE
	b _08023148
_08022EEE:
	ldr r3, [sp, #8]
	lsls r2, r3, #0x10
	asrs r0, r2, #0x10
	mov r1, sb
	adds r1, #0x35
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r3, r0, r5
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	mov r1, sp
	movs r7, #1
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	adds r4, r2, #0
	cmp r3, r1
	bgt _08022F28
	mov r0, sb
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r1
	bge _08022F3A
	cmp r3, r1
	bge _08022F28
	b _08023148
_08022F28:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r3
	bge _08022F3A
	b _08023148
_08022F3A:
	ldr r0, [r6, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc
	ands r0, r1
	str r0, [r6, #0x10]
	mov r1, r8
	ldrb r0, [r1, #2]
	cmp r0, #0xe
	bne _0802302C
	mov r2, ip
	cmp r2, #0
	bne _08022F68
	mov r3, sl
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, #0x14
	subs r1, r1, r0
	cmp r1, #0
	ble _0802302C
_08022F68:
	ldr r0, _08022FB4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08022F74
	cmp r0, #5
	bne _08022F78
_08022F74:
	movs r0, #2
	strh r0, [r6, #0x1c]
_08022F78:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08022FB8 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	mov r0, r8
	ldrb r3, [r0, #3]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08022FBC
	mov r1, r8
	ldrb r0, [r1, #4]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	ldrb r0, [r1, #4]
	lsls r0, r0, #4
	b _08022FDA
	.align 2, 0
_08022FB0: .4byte gCamera
_08022FB4: .4byte gGameMode
_08022FB8: .4byte 0xFFFFFEFF
_08022FBC:
	ldr r2, _08023024 @ =gUnknown_080BB4F4
	movs r1, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	mov r3, r8
	ldrb r0, [r3, #3]
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
_08022FDA:
	rsbs r0, r0, #0
	strh r0, [r6, #8]
	mov r0, ip
	cmp r0, #0
	beq _08022FF8
	ldrh r1, [r6, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #8]
	ldrh r1, [r6, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #0xa]
_08022FF8:
	ldr r0, _08023028 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802300A
	ldrh r0, [r6, #0xa]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
_0802300A:
	mov r2, r8
	ldrb r1, [r2, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08023100
	adds r0, r6, #0
	bl Player_TransitionCancelFlyingAndBoost
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x15
	b _0802310C
	.align 2, 0
_08023024: .4byte gUnknown_080BB4F4
_08023028: .4byte gStageFlags
_0802302C:
	mov r3, ip
	cmp r3, #0
	bne _08023044
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r6]
	asrs r0, r0, #8
	subs r0, r1, r0
	adds r0, #0x14
	cmp r0, #0
	bge _08023138
_08023044:
	ldr r0, _08023088 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08023050
	cmp r0, #5
	bne _08023054
_08023050:
	movs r0, #2
	strh r0, [r6, #0x1c]
_08023054:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _0802308C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	mov r2, r8
	ldrb r3, [r2, #3]
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #3
	ble _08023090
	ldrb r0, [r2, #4]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	ldrb r0, [r2, #4]
	lsls r0, r0, #4
	b _080230AE
	.align 2, 0
_08023088: .4byte gGameMode
_0802308C: .4byte 0xFFFFFEFF
_08023090:
	ldr r2, _080230F8 @ =gUnknown_080BB4F4
	movs r1, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	mov r3, r8
	ldrb r0, [r3, #3]
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
_080230AE:
	strh r0, [r6, #8]
	mov r0, ip
	cmp r0, #0
	beq _080230CA
	ldrh r1, [r6, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #8]
	ldrh r1, [r6, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #0xa]
_080230CA:
	ldr r0, _080230FC @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080230DC
	ldrh r0, [r6, #0xa]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
_080230DC:
	mov r2, r8
	ldrb r1, [r2, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08023100
	adds r0, r6, #0
	bl Player_TransitionCancelFlyingAndBoost
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x15
	b _0802310C
	.align 2, 0
_080230F8: .4byte gUnknown_080BB4F4
_080230FC: .4byte gStageFlags
_08023100:
	adds r0, r6, #0
	bl Player_TransitionCancelFlyingAndBoost
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x11
_0802310C:
	strb r0, [r1]
	ldr r0, [r6, #0x64]
	adds r0, #0x2d
	movs r1, #0xff
	strb r1, [r0]
	mov r1, sb
	adds r1, #0x20
	movs r0, #7
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r6, #0xe]
	movs r0, #0xe
	strb r0, [r6, #0xf]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r0, #1
	b _0802315A
_08023138:
	ldr r3, [sp, #8]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	adds r3, r6, #0
	bl sub_80096B0
	b _08023158
_08023148:
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	asrs r2, r4, #0x10
	mov r0, sb
	adds r3, r6, #0
	bl sub_80096B0
_08023158:
	movs r0, #0
_0802315A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_Spring
TaskDestructor_Spring: @ 0x0802316C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
