.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_805D684
Task_805D684: @ 0x0805D684
	push {lr}
	ldr r0, _0805D6CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r0, #0x20
	ldrsh r1, [r2, r0]
	ldrh r0, [r2, #0x22]
	ldr r3, _0805D6D0 @ =0x00000221
	adds r0, r0, r3
	cmp r1, r0
	ble _0805D6D4
	ldrh r3, [r2, #0xa]
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0805D6C2
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r2, #0xa]
	ldrh r1, [r2, #0xe]
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _0805D6C2
	subs r0, r1, #1
	strh r0, [r2, #0xe]
_0805D6C2:
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	b _0805D710
	.align 2, 0
_0805D6CC: .4byte gCurTask
_0805D6D0: .4byte 0x00000221
_0805D6D4:
	cmp r1, #0x31
	ble _0805D6DE
	movs r0, #0x11
	strh r0, [r2, #0xc]
	b _0805D710
_0805D6DE:
	cmp r1, #0x21
	ble _0805D6EA
	ldrh r0, [r2, #0xc]
	subs r0, #6
	strh r0, [r2, #0xc]
	b _0805D710
_0805D6EA:
	cmp r1, #0x19
	ble _0805D6F8
	ldr r0, _0805D6F4 @ =0x0000FFF0
	strh r0, [r2, #0xa]
	b _0805D710
	.align 2, 0
_0805D6F4: .4byte 0x0000FFF0
_0805D6F8:
	cmp r1, #0xf
	ble _0805D710
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805D710
	strh r1, [r2, #0xa]
_0805D710:
	ldr r0, _0805D71C @ =gUnknown_08688658
	adds r1, r2, #0
	bl sub_8052F78
	pop {r0}
	bx r0
	.align 2, 0
_0805D71C: .4byte gUnknown_08688658

	thumb_func_start Task_805D720
Task_805D720: @ 0x0805D720
	push {r4, lr}
	sub sp, #0x20
	ldr r1, _0805D770 @ =gUnknown_08688664
	mov r0, sp
	movs r2, #0x1f
	bl memcpy
	ldr r0, _0805D774 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	ldrh r0, [r4, #0x22]
	ldr r2, _0805D778 @ =0x00000221
	adds r0, r0, r2
	cmp r1, r0
	ble _0805D77C
	ldrh r0, [r4, #0xa]
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805D7CA
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0805D768
	subs r0, r1, #1
	strh r0, [r4, #0xe]
_0805D768:
	ldrh r0, [r4, #0xa]
	adds r0, #0x20
	b _0805D7BC
	.align 2, 0
_0805D770: .4byte gUnknown_08688664
_0805D774: .4byte gCurTask
_0805D778: .4byte 0x00000221
_0805D77C:
	cmp r1, #0x31
	ble _0805D78C
	movs r0, #0x13
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	b _0805D7AC
_0805D78C:
	cmp r1, #0x21
	ble _0805D79E
	ldrh r0, [r4, #0xc]
	subs r0, #6
	strh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	b _0805D7AC
_0805D79E:
	cmp r1, #0x19
	ble _0805D7D6
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	movs r1, #9
	strh r1, [r4, #0xe]
_0805D7AC:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805D7CA
	adds r0, r2, #0
	adds r0, #0x1e
_0805D7BC:
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x24]
	adds r0, #1
	movs r1, #0xa
	bl Mod
	strh r0, [r4, #0x24]
_0805D7CA:
	ldrh r0, [r4, #0x24]
	add r0, sp
	adds r1, r4, #0
	bl sub_8052F78
	b _0805D814
_0805D7D6:
	cmp r1, #0xf
	ble _0805D814
	ldrh r3, [r4, #0xa]
	adds r0, r3, #0
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xef
	bgt _0805D814
	asrs r0, r0, #0x15
	movs r1, #9
	subs r1, r1, r0
	strh r1, [r4, #0xe]
	movs r0, #0x1f
	rsbs r0, r0, #0
	cmp r2, r0
	bge _0805D80A
	adds r0, r3, #4
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x24]
	adds r0, #1
	movs r1, #0xa
	bl Mod
	strh r0, [r4, #0x24]
_0805D80A:
	ldrh r0, [r4, #0x24]
	add r0, sp
	adds r1, r4, #0
	bl sub_8052F78
_0805D814:
	add sp, #0x20
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_805D81C
sub_805D81C: @ 0x0805D81C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805D858 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r7, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	mov r8, r0
	ldrh r1, [r4, #0x20]
	ldrh r2, [r4, #0x22]
	ldr r3, _0805D85C @ =0x0000022E
	adds r0, r2, r3
	cmp r1, r0
	bgt _0805D8E2
	subs r3, #0xd
	adds r0, r2, r3
	cmp r1, r0
	ble _0805D864
	ldr r0, _0805D860 @ =0xFFFFFDDF
	adds r1, r1, r0
	subs r1, r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r6, r0, #0x10
	b _0805D866
	.align 2, 0
_0805D858: .4byte gCurTask
_0805D85C: .4byte 0x0000022E
_0805D860: .4byte 0xFFFFFDDF
_0805D864:
	movs r6, #0
_0805D866:
	movs r0, #3
	bl sub_805C900
	movs r5, #0
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _0805D88A
_0805D878:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bhi _0805D88A
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _0805D878
_0805D88A:
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805D8B4
	movs r0, #0x7e
	strh r0, [r4, #0xc]
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r1, #0xb3
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	adds r1, r4, #0
	bl sub_8052F78
	b _0805D8DC
_0805D8B4:
	ldrh r0, [r4, #2]
	movs r1, #0x19
	bl Div
	ldrh r2, [r4, #2]
	lsrs r2, r2, #4
	movs r1, #0x8f
	subs r1, r1, r2
	subs r1, r1, r0
	strh r1, [r4, #0xc]
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r0, #0xa3
	strh r0, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	adds r1, r4, #0
	bl sub_8052C84
_0805D8DC:
	strh r7, [r4, #0xa]
	mov r3, r8
	strh r3, [r4, #0xc]
_0805D8E2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_805D8EC
sub_805D8EC: @ 0x0805D8EC
	push {r4, lr}
	ldr r0, _0805D948 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r0, r1
	ldrh r1, [r3, #0x20]
	ldr r2, _0805D94C @ =0x0300002A
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805D9DA
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldrh r2, [r3, #0x22]
	adds r0, r2, #0
	adds r0, #0xaa
	cmp r1, r0
	blt _0805D9DA
	movs r0, #3
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x10]
	movs r0, #0xe
	strh r0, [r3, #0x12]
	ldr r4, _0805D950 @ =0x00000221
	adds r0, r2, r4
	cmp r1, r0
	ble _0805D968
	movs r0, #0x81
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xa]
	subs r0, #0x1c
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805D958
	movs r0, #0
	strh r0, [r3, #0xe]
	ldr r0, _0805D954 @ =0x0000FF80
	strh r0, [r3, #0xa]
	b _0805D9AC
	.align 2, 0
_0805D948: .4byte gCurTask
_0805D94C: .4byte 0x0300002A
_0805D950: .4byte 0x00000221
_0805D954: .4byte 0x0000FF80
_0805D958:
	ldr r0, _0805D964 @ =gUnknown_08688684
	adds r1, r3, #0
	bl sub_8052F78
	b _0805D9AC
	.align 2, 0
_0805D964: .4byte gUnknown_08688684
_0805D968:
	cmp r1, #0x27
	ble _0805D9B8
	ldrh r0, [r3, #2]
	adds r0, #0x20
	strh r0, [r3, #2]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bls _0805D998
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0x29
	strh r0, [r3, #0xa]
	movs r0, #0x81
	strh r0, [r3, #0xc]
	ldr r0, _0805D994 @ =gUnknown_08688684
	adds r1, r3, #0
	bl sub_8052F78
	b _0805D9AC
	.align 2, 0
_0805D994: .4byte gUnknown_08688684
_0805D998:
	movs r0, #0x19
	strh r0, [r3, #0xa]
	lsrs r1, r1, #0x14
	movs r0, #0x8b
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	ldr r0, _0805D9B4 @ =gUnknown_08688684
	adds r1, r3, #0
	bl sub_8052C84
_0805D9AC:
	bl sub_805D81C
	b _0805D9DA
	.align 2, 0
_0805D9B4: .4byte gUnknown_08688684
_0805D9B8:
	cmp r1, #0x21
	ble _0805D9DA
	movs r0, #0x19
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #2]
	lsrs r2, r1, #4
	movs r0, #0x8b
	subs r0, r0, r2
	strh r0, [r3, #0xc]
	adds r1, #0x20
	strh r1, [r3, #2]
	ldr r0, _0805D9E0 @ =gUnknown_08688684
	adds r1, r3, #0
	bl sub_8052C84
	bl sub_805D81C
_0805D9DA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D9E0: .4byte gUnknown_08688684

	thumb_func_start sub_805D9E4
sub_805D9E4: @ 0x0805D9E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805DA20 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r7, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	mov r8, r0
	ldrh r1, [r4, #0x20]
	ldrh r2, [r4, #0x22]
	ldr r3, _0805DA24 @ =0x0000022E
	adds r0, r2, r3
	cmp r1, r0
	bgt _0805DAF6
	subs r3, #0xd
	adds r0, r2, r3
	cmp r1, r0
	ble _0805DA2C
	ldr r0, _0805DA28 @ =0xFFFFFDDF
	adds r1, r1, r0
	subs r1, r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r6, r0, #0x10
	b _0805DA2E
	.align 2, 0
_0805DA20: .4byte gCurTask
_0805DA24: .4byte 0x0000022E
_0805DA28: .4byte 0xFFFFFDDF
_0805DA2C:
	movs r6, #0
_0805DA2E:
	movs r0, #6
	strh r0, [r4, #0x10]
	movs r0, #9
	strh r0, [r4, #0x12]
	movs r0, #2
	bl sub_805C900
	movs r5, #0
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _0805DA5A
_0805DA48:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bhi _0805DA5A
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _0805DA48
_0805DA5A:
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805DAA8
	movs r0, #0x6a
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0805DA8A
	movs r2, #7
	subs r2, r2, r5
	strh r2, [r4, #0xe]
	movs r1, #0xc3
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r2, r2, #3
	subs r1, r1, r2
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	b _0805DA9A
_0805DA8A:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r1, #0xbb
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0xa]
	ldr r0, _0805DAA4 @ =gUnknown_08688688
_0805DA9A:
	adds r1, r4, #0
	bl sub_8052F78
	b _0805DAF0
	.align 2, 0
_0805DAA4: .4byte gUnknown_08688688
_0805DAA8:
	ldrh r0, [r4, #2]
	movs r1, #0x19
	bl Div
	ldrh r2, [r4, #2]
	lsrs r2, r2, #4
	movs r1, #0x77
	subs r1, r1, r2
	subs r1, r1, r0
	strh r1, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0805DAE0
	movs r0, #7
	subs r0, r0, r5
	strh r0, [r4, #0xe]
	movs r1, #6
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x8f
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	adds r1, r4, #0
	bl sub_8052C84
	b _0805DAF0
_0805DAE0:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r0, #0xb7
	strh r0, [r4, #0xa]
	ldr r0, _0805DB00 @ =gUnknown_08688688
	adds r1, r4, #0
	bl sub_8052C84
_0805DAF0:
	strh r7, [r4, #0xa]
	mov r3, r8
	strh r3, [r4, #0xc]
_0805DAF6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DB00: .4byte gUnknown_08688688

	thumb_func_start sub_805DB04
sub_805DB04: @ 0x0805DB04
	push {lr}
	ldr r0, _0805DB4C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r1, [r3, #0x20]
	movs r0, #3
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x10]
	movs r0, #0xe
	strh r0, [r3, #0x12]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r3, #0x22]
	ldr r2, _0805DB50 @ =0x00000221
	adds r0, r0, r2
	cmp r1, r0
	ble _0805DB68
	movs r0, #0x6d
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xa]
	subs r0, #0x1c
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805DB58
	movs r0, #0
	strh r0, [r3, #0xe]
	ldr r0, _0805DB54 @ =0x0000FF80
	strh r0, [r3, #0xa]
	b _0805DBAC
	.align 2, 0
_0805DB4C: .4byte gCurTask
_0805DB50: .4byte 0x00000221
_0805DB54: .4byte 0x0000FF80
_0805DB58:
	ldr r0, _0805DB64 @ =gUnknown_0868868C
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DBAC
	.align 2, 0
_0805DB64: .4byte gUnknown_0868868C
_0805DB68:
	cmp r1, #0x2d
	ble _0805DBB8
	ldrh r0, [r3, #2]
	adds r0, #0x20
	strh r0, [r3, #2]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bls _0805DB98
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0x29
	strh r0, [r3, #0xa]
	movs r0, #0x6d
	strh r0, [r3, #0xc]
	ldr r0, _0805DB94 @ =gUnknown_0868868C
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DBAC
	.align 2, 0
_0805DB94: .4byte gUnknown_0868868C
_0805DB98:
	movs r0, #0x19
	strh r0, [r3, #0xa]
	lsrs r1, r1, #0x14
	movs r0, #0x77
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	ldr r0, _0805DBB4 @ =gUnknown_0868868C
	adds r1, r3, #0
	bl sub_8052C84
_0805DBAC:
	bl sub_805D9E4
	b _0805DBE8
	.align 2, 0
_0805DBB4: .4byte gUnknown_0868868C
_0805DBB8:
	cmp r1, #0x27
	ble _0805DBE8
	movs r0, #0x19
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #2]
	lsrs r2, r1, #4
	movs r0, #0x77
	subs r0, r0, r2
	strh r0, [r3, #0xc]
	adds r1, #0x20
	strh r1, [r3, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xff
	bls _0805DBDC
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
_0805DBDC:
	ldr r0, _0805DBEC @ =gUnknown_0868868C
	adds r1, r3, #0
	bl sub_8052C84
	bl sub_805D9E4
_0805DBE8:
	pop {r0}
	bx r0
	.align 2, 0
_0805DBEC: .4byte gUnknown_0868868C

	thumb_func_start sub_805DBF0
sub_805DBF0: @ 0x0805DBF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805DC2C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r7, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	mov r8, r0
	ldrh r1, [r4, #0x20]
	ldrh r2, [r4, #0x22]
	ldr r3, _0805DC30 @ =0x0000022E
	adds r0, r2, r3
	cmp r1, r0
	bgt _0805DD02
	subs r3, #0xd
	adds r0, r2, r3
	cmp r1, r0
	ble _0805DC38
	ldr r0, _0805DC34 @ =0xFFFFFDDF
	adds r1, r1, r0
	subs r1, r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r6, r0, #0x10
	b _0805DC3A
	.align 2, 0
_0805DC2C: .4byte gCurTask
_0805DC30: .4byte 0x0000022E
_0805DC34: .4byte 0xFFFFFDDF
_0805DC38:
	movs r6, #0
_0805DC3A:
	movs r0, #6
	strh r0, [r4, #0x10]
	movs r0, #9
	strh r0, [r4, #0x12]
	movs r0, #1
	bl sub_805C900
	movs r5, #0
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _0805DC66
_0805DC54:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bhi _0805DC66
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _0805DC54
_0805DC66:
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805DCB4
	movs r0, #0x58
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0805DC96
	movs r2, #7
	subs r2, r2, r5
	strh r2, [r4, #0xe]
	movs r1, #0xc3
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r2, r2, #3
	subs r1, r1, r2
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	b _0805DCA6
_0805DC96:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r1, #0xbb
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0xa]
	ldr r0, _0805DCB0 @ =gUnknown_08688688
_0805DCA6:
	adds r1, r4, #0
	bl sub_8052F78
	b _0805DCFC
	.align 2, 0
_0805DCB0: .4byte gUnknown_08688688
_0805DCB4:
	ldrh r0, [r4, #2]
	movs r1, #0x19
	bl Div
	ldrh r2, [r4, #2]
	lsrs r2, r2, #4
	movs r1, #0x65
	subs r1, r1, r2
	subs r1, r1, r0
	strh r1, [r4, #0xc]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0805DCEC
	movs r0, #7
	subs r0, r0, r5
	strh r0, [r4, #0xe]
	movs r1, #6
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x8f
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	adds r1, r4, #0
	bl sub_8052C84
	b _0805DCFC
_0805DCEC:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r0, #0xb7
	strh r0, [r4, #0xa]
	ldr r0, _0805DD0C @ =gUnknown_08688688
	adds r1, r4, #0
	bl sub_8052C84
_0805DCFC:
	strh r7, [r4, #0xa]
	mov r3, r8
	strh r3, [r4, #0xc]
_0805DD02:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DD0C: .4byte gUnknown_08688688

	thumb_func_start sub_805DD10
sub_805DD10: @ 0x0805DD10
	push {lr}
	ldr r0, _0805DD64 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r0, r1
	ldrh r1, [r3, #0x20]
	ldr r2, _0805DD68 @ =0x03000028
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805DE04
	movs r0, #3
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x10]
	movs r0, #0xe
	strh r0, [r3, #0x12]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldrh r0, [r3, #0x22]
	ldr r2, _0805DD6C @ =0x00000221
	adds r0, r0, r2
	cmp r1, r0
	ble _0805DD84
	movs r0, #0x5b
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xa]
	subs r0, #0x1c
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805DD74
	movs r0, #0
	strh r0, [r3, #0xe]
	ldr r0, _0805DD70 @ =0x0000FF80
	strh r0, [r3, #0xa]
	b _0805DDC8
	.align 2, 0
_0805DD64: .4byte gCurTask
_0805DD68: .4byte 0x03000028
_0805DD6C: .4byte 0x00000221
_0805DD70: .4byte 0x0000FF80
_0805DD74:
	ldr r0, _0805DD80 @ =gUnknown_08688690
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DDC8
	.align 2, 0
_0805DD80: .4byte gUnknown_08688690
_0805DD84:
	cmp r1, #0x33
	ble _0805DDD4
	ldrh r0, [r3, #2]
	adds r0, #0x20
	strh r0, [r3, #2]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bls _0805DDB4
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0x29
	strh r0, [r3, #0xa]
	movs r0, #0x5b
	strh r0, [r3, #0xc]
	ldr r0, _0805DDB0 @ =gUnknown_08688690
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DDC8
	.align 2, 0
_0805DDB0: .4byte gUnknown_08688690
_0805DDB4:
	movs r0, #0x19
	strh r0, [r3, #0xa]
	lsrs r1, r1, #0x14
	movs r0, #0x65
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	ldr r0, _0805DDD0 @ =gUnknown_08688690
	adds r1, r3, #0
	bl sub_8052C84
_0805DDC8:
	bl sub_805DBF0
	b _0805DE04
	.align 2, 0
_0805DDD0: .4byte gUnknown_08688690
_0805DDD4:
	cmp r1, #0x2d
	ble _0805DE04
	movs r0, #0x19
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #2]
	lsrs r2, r1, #4
	movs r0, #0x65
	subs r0, r0, r2
	strh r0, [r3, #0xc]
	adds r1, #0x20
	strh r1, [r3, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xff
	bls _0805DDF8
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
_0805DDF8:
	ldr r0, _0805DE08 @ =gUnknown_08688690
	adds r1, r3, #0
	bl sub_8052C84
	bl sub_805DBF0
_0805DE04:
	pop {r0}
	bx r0
	.align 2, 0
_0805DE08: .4byte gUnknown_08688690

	thumb_func_start sub_805DE0C
sub_805DE0C: @ 0x0805DE0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0805DE48 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r7, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	mov r8, r0
	ldrh r1, [r4, #0x20]
	ldrh r2, [r4, #0x22]
	ldr r3, _0805DE4C @ =0x0000022E
	adds r0, r2, r3
	cmp r1, r0
	bgt _0805DF1E
	subs r3, #0xd
	adds r0, r2, r3
	cmp r1, r0
	ble _0805DE54
	ldr r0, _0805DE50 @ =0xFFFFFDDF
	adds r1, r1, r0
	subs r1, r1, r2
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r6, r0, #0x10
	b _0805DE56
	.align 2, 0
_0805DE48: .4byte gCurTask
_0805DE4C: .4byte 0x0000022E
_0805DE50: .4byte 0xFFFFFDDF
_0805DE54:
	movs r6, #0
_0805DE56:
	movs r0, #6
	strh r0, [r4, #0x10]
	movs r0, #9
	strh r0, [r4, #0x12]
	movs r0, #0
	bl sub_805C900
	movs r5, #0
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	cmp r0, #0x20
	bne _0805DE82
_0805DE70:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bhi _0805DE82
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _0805DE70
_0805DE82:
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0805DED0
	movs r0, #0x46
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0x26]
	cmp r0, #0
	beq _0805DEB2
	movs r2, #7
	subs r2, r2, r5
	strh r2, [r4, #0xe]
	movs r1, #0xc3
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r2, r2, #3
	subs r1, r1, r2
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	b _0805DEC2
_0805DEB2:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r1, #0xbb
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0xa]
	ldr r0, _0805DECC @ =gUnknown_08688688
_0805DEC2:
	adds r1, r4, #0
	bl sub_8052F78
	b _0805DF18
	.align 2, 0
_0805DECC: .4byte gUnknown_08688688
_0805DED0:
	ldrh r0, [r4, #2]
	movs r1, #0x19
	bl Div
	ldrh r2, [r4, #2]
	lsrs r2, r2, #4
	movs r1, #0x53
	subs r1, r1, r2
	subs r1, r1, r0
	strh r1, [r4, #0xc]
	ldrh r0, [r4, #0x26]
	cmp r0, #0
	beq _0805DF08
	movs r0, #7
	subs r0, r0, r5
	strh r0, [r4, #0xe]
	movs r1, #6
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x8f
	strh r1, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x2b
	adds r0, r4, r0
	adds r1, r4, #0
	bl sub_8052C84
	b _0805DF18
_0805DF08:
	movs r0, #1
	strh r0, [r4, #0xe]
	movs r0, #0xb7
	strh r0, [r4, #0xa]
	ldr r0, _0805DF28 @ =gUnknown_08688688
	adds r1, r4, #0
	bl sub_8052C84
_0805DF18:
	strh r7, [r4, #0xa]
	mov r3, r8
	strh r3, [r4, #0xc]
_0805DF1E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DF28: .4byte gUnknown_08688688

	thumb_func_start sub_805DF2C
sub_805DF2C: @ 0x0805DF2C
	push {lr}
	ldr r0, _0805DF74 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r1, [r3, #0x20]
	movs r0, #3
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x10]
	movs r0, #0xe
	strh r0, [r3, #0x12]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r3, #0x22]
	ldr r2, _0805DF78 @ =0x00000221
	adds r0, r0, r2
	cmp r1, r0
	ble _0805DF90
	movs r0, #0x49
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xa]
	subs r0, #0x1c
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805DF80
	movs r0, #0
	strh r0, [r3, #0xe]
	ldr r0, _0805DF7C @ =0x0000FF80
	strh r0, [r3, #0xa]
	b _0805DFD4
	.align 2, 0
_0805DF74: .4byte gCurTask
_0805DF78: .4byte 0x00000221
_0805DF7C: .4byte 0x0000FF80
_0805DF80:
	ldr r0, _0805DF8C @ =gUnknown_08688694
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DFD4
	.align 2, 0
_0805DF8C: .4byte gUnknown_08688694
_0805DF90:
	cmp r1, #0x39
	ble _0805DFE0
	ldrh r0, [r3, #2]
	adds r0, #0x20
	strh r0, [r3, #2]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bls _0805DFC0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0x29
	strh r0, [r3, #0xa]
	movs r0, #0x49
	strh r0, [r3, #0xc]
	ldr r0, _0805DFBC @ =gUnknown_08688694
	adds r1, r3, #0
	bl sub_8052F78
	b _0805DFD4
	.align 2, 0
_0805DFBC: .4byte gUnknown_08688694
_0805DFC0:
	movs r0, #0x19
	strh r0, [r3, #0xa]
	lsrs r1, r1, #0x14
	movs r0, #0x53
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	ldr r0, _0805DFDC @ =gUnknown_08688694
	adds r1, r3, #0
	bl sub_8052C84
_0805DFD4:
	bl sub_805DE0C
	b _0805E010
	.align 2, 0
_0805DFDC: .4byte gUnknown_08688694
_0805DFE0:
	cmp r1, #0x33
	ble _0805E010
	movs r0, #0x19
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #2]
	lsrs r2, r1, #4
	movs r0, #0x53
	subs r0, r0, r2
	strh r0, [r3, #0xc]
	adds r1, #0x20
	strh r1, [r3, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xff
	bls _0805E004
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
_0805E004:
	ldr r0, _0805E014 @ =gUnknown_08688694
	adds r1, r3, #0
	bl sub_8052C84
	bl sub_805DE0C
_0805E010:
	pop {r0}
	bx r0
	.align 2, 0
_0805E014: .4byte gUnknown_08688694

	thumb_func_start sub_805E018
sub_805E018: @ 0x0805E018
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0805E088 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldrh r1, [r6, #0x20]
	ldrh r2, [r6, #0x22]
	ldr r4, _0805E08C @ =0x00000221
	adds r0, r2, r4
	cmp r1, r0
	ble _0805E0C4
	ldr r3, _0805E090 @ =0xFFFFFDDF
	adds r0, r1, r3
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #0x12
	movs r7, #0
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	subs r4, r0, #5
_0805E050:
	lsls r1, r7, #5
	subs r0, r1, r4
	strh r0, [r6, #0xa]
	subs r0, r5, #5
	subs r1, r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0805E0B4
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r0, [r0]
	asrs r0, r7
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0805E0A8
	lsrs r0, r7, #1
	movs r1, #0xd
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	beq _0805E098
	ldr r0, _0805E094 @ =gUnknown_08688698
	b _0805E09A
	.align 2, 0
_0805E088: .4byte gCurTask
_0805E08C: .4byte 0x00000221
_0805E090: .4byte 0xFFFFFDDF
_0805E094: .4byte gUnknown_08688698
_0805E098:
	ldr r0, _0805E0A4 @ =gUnknown_08688688
_0805E09A:
	adds r1, r6, #0
	bl sub_8052F78
	b _0805E0B4
	.align 2, 0
_0805E0A4: .4byte gUnknown_08688688
_0805E0A8:
	movs r0, #0xb
	strh r0, [r6, #0x12]
	ldr r0, _0805E0C0 @ =gUnknown_0868869C
	adds r1, r6, #0
	bl sub_8052F78
_0805E0B4:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #6
	bls _0805E050
	b _0805E1D2
	.align 2, 0
_0805E0C0: .4byte gUnknown_0868869C
_0805E0C4:
	cmp r1, #0x86
	bls _0805E128
	movs r7, #0
	ldr r4, _0805E0F4 @ =0x03000029
	adds r5, r3, r4
	movs r4, #1
_0805E0D0:
	lsls r0, r7, #5
	adds r0, #5
	strh r0, [r6, #0xa]
	ldrb r0, [r5]
	asrs r0, r7
	ands r0, r4
	cmp r0, #0
	beq _0805E10C
	lsrs r0, r7, #1
	movs r1, #0xd
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	adds r0, r7, #0
	ands r0, r4
	cmp r0, #0
	beq _0805E0FC
	ldr r0, _0805E0F8 @ =gUnknown_08688698
	b _0805E0FE
	.align 2, 0
_0805E0F4: .4byte 0x03000029
_0805E0F8: .4byte gUnknown_08688698
_0805E0FC:
	ldr r0, _0805E108 @ =gUnknown_08688688
_0805E0FE:
	adds r1, r6, #0
	bl sub_8052F78
	b _0805E118
	.align 2, 0
_0805E108: .4byte gUnknown_08688688
_0805E10C:
	movs r0, #0xb
	strh r0, [r6, #0x12]
	ldr r0, _0805E124 @ =gUnknown_0868869C
	adds r1, r6, #0
	bl sub_8052F78
_0805E118:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #6
	bls _0805E0D0
	b _0805E1D2
	.align 2, 0
_0805E124: .4byte gUnknown_0868869C
_0805E128:
	cmp r1, #0x31
	bls _0805E1D2
	movs r7, #0
	subs r1, #0x31
	mov sb, r1
	ldr r0, _0805E1A4 @ =gSineTable
	mov r8, r0
_0805E136:
	mov r1, sb
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r7, #2
	adds r0, r0, r7
	cmp r5, r0
	blt _0805E1C8
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x32
	bls _0805E150
	movs r5, #0x32
_0805E150:
	movs r0, #0x80
	lsls r0, r0, #2
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x50
	bl Div
	adds r4, r0, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x50
	bl Div
	lsls r1, r7, #5
	adds r4, #5
	adds r1, r1, r4
	subs r1, r1, r0
	strh r1, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r0, [r0]
	asrs r0, r7
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0805E1BC
	lsrs r0, r7, #1
	movs r1, #0xd
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	beq _0805E1AC
	ldr r0, _0805E1A8 @ =gUnknown_08688698
	b _0805E1AE
	.align 2, 0
_0805E1A4: .4byte gSineTable
_0805E1A8: .4byte gUnknown_08688698
_0805E1AC:
	ldr r0, _0805E1B8 @ =gUnknown_08688688
_0805E1AE:
	adds r1, r6, #0
	bl sub_8052F78
	b _0805E1C8
	.align 2, 0
_0805E1B8: .4byte gUnknown_08688688
_0805E1BC:
	movs r0, #0xb
	strh r0, [r6, #0x12]
	ldr r0, _0805E1E0 @ =gUnknown_0868869C
	adds r1, r6, #0
	bl sub_8052F78
_0805E1C8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #6
	bls _0805E136
_0805E1D2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E1E0: .4byte gUnknown_0868869C

    thumb_func_start TaskDestructor_805E1E4
TaskDestructor_805E1E4: @ 0x0805E1E4
    bx lr
    .align 2, 0
