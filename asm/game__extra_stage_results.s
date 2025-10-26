.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_80679E4
Task_80679E4: @ 0x080679E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08067AA8 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r4, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r4, #0x38]
	adds r5, r0, #1
	adds r0, r5, #0
	bl sub_80677C4
	movs r7, #0
	movs r0, #0
	mov r8, r0
	movs r0, #0x94
	lsls r0, r0, #1
	ldr r1, _08067AAC @ =gBgScrollRegs
	strh r0, [r1, #2]
	ldr r6, _08067AB0 @ =0x00000336
	cmp r5, r6
	bls _08067AC4
	movs r5, #0
	str r5, [r4, #0x38]
	mov r0, sb
	str r5, [r0, #0x3c]
	ldr r0, [r4, #0x20]
	bl TaskDestroy
	ldr r0, [r4, #0x24]
	bl TaskDestroy
	ldr r0, [r4, #0x28]
	bl TaskDestroy
	ldr r0, [r4, #0x2c]
	bl TaskDestroy
	ldr r0, [r4, #0x1c]
	bl TaskDestroy
	ldr r0, [r4, #0x14]
	bl TaskDestroy
	ldr r0, [r4, #0x18]
	bl TaskDestroy
	ldr r1, [r4, #0xc]
	ldr r0, _08067AB4 @ =sub_8068570
	str r0, [r1, #8]
	ldr r0, _08067AA8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08067AB8 @ =sub_8067B14
	str r0, [r1, #8]
	ldr r0, _08067ABC @ =sa2__gUnknown_03004D80
	strb r7, [r0]
	ldr r1, _08067AC0 @ =sa2__gUnknown_03002280
	strb r7, [r1]
	strb r7, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x14
	strb r0, [r1, #3]
	ldr r1, _08067AAC @ =gBgScrollRegs
	strh r5, [r1, #2]
	strh r5, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r5, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	b _08067B02
	.align 2, 0
_08067AA8: .4byte gCurTask
_08067AAC: .4byte gBgScrollRegs
_08067AB0: .4byte 0x00000336
_08067AB4: .4byte sub_8068570
_08067AB8: .4byte sub_8067B14
_08067ABC: .4byte sa2__gUnknown_03004D80
_08067AC0: .4byte sa2__gUnknown_03002280
_08067AC4:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r1, #0x80
	bl Div
	subs r0, r6, r0
	cmp r0, r5
	bne _08067AEA
	mov r0, r8
	strh r0, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	mov r0, r8
	strh r0, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
_08067AEA:
	adds r0, r4, #0
	bl sub_805423C
	str r5, [r4, #0x38]
	mov r1, sb
	str r5, [r1, #0x3c]
	ldr r0, [sp]
	str r5, [r0, #0x3c]
	ldr r1, [sp, #4]
	str r5, [r1, #0x3c]
	mov r0, sl
	str r5, [r0, #0x3c]
_08067B02:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8067B14
sub_8067B14: @ 0x08067B14
	push {r4, r5, r6, r7, lr}
	ldr r3, _08067B5C @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r2, [r4, #0xc]
	ldrh r0, [r2, #6]
	adds r7, r0, r1
	ldr r0, [r4, #0x38]
	adds r5, r0, #1
	movs r6, #0xc8
	lsls r6, r6, #1
	cmp r5, r6
	bls _08067B68
	movs r5, #0
	str r5, [r4, #0x38]
	str r5, [r7, #0x3c]
	strh r5, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r5, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	ldr r0, _08067B60 @ =sub_80685C8
	str r0, [r2, #8]
	ldr r1, [r3]
	ldr r0, _08067B64 @ =sub_8067B9C
	str r0, [r1, #8]
	b _08067B96
	.align 2, 0
_08067B5C: .4byte gCurTask
_08067B60: .4byte sub_80685C8
_08067B64: .4byte sub_8067B9C
_08067B68:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r1, #0x80
	bl Div
	subs r0, r6, r0
	cmp r0, r5
	bne _08067B8C
	movs r1, #0
	strh r1, [r4]
	movs r2, #1
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r2, [r4, #0xa]
_08067B8C:
	adds r0, r4, #0
	bl sub_805423C
	str r5, [r4, #0x38]
	str r5, [r7, #0x3c]
_08067B96:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8067B9C
sub_8067B9C: @ 0x08067B9C
	push {r4, r5, r6, r7, lr}
	ldr r3, _08067BE4 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r2, [r4, #0xc]
	ldrh r0, [r2, #6]
	adds r7, r0, r1
	ldr r0, [r4, #0x38]
	adds r5, r0, #1
	movs r6, #0xc8
	lsls r6, r6, #1
	cmp r5, r6
	bls _08067BF0
	movs r5, #0
	str r5, [r4, #0x38]
	str r5, [r7, #0x3c]
	strh r5, [r4]
	movs r1, #1
	movs r0, #1
	strh r0, [r4, #2]
	movs r0, #2
	strh r0, [r4, #4]
	strh r5, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r1, [r4, #0xa]
	ldr r0, _08067BE8 @ =sub_8067F9C
	str r0, [r2, #8]
	ldr r1, [r3]
	ldr r0, _08067BEC @ =sub_8067C24
	str r0, [r1, #8]
	b _08067C1E
	.align 2, 0
_08067BE4: .4byte gCurTask
_08067BE8: .4byte sub_8067F9C
_08067BEC: .4byte sub_8067C24
_08067BF0:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r1, #0x80
	bl Div
	subs r0, r6, r0
	cmp r0, r5
	bne _08067C14
	movs r1, #0
	strh r1, [r4]
	movs r2, #1
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r2, [r4, #0xa]
_08067C14:
	adds r0, r4, #0
	bl sub_805423C
	str r5, [r4, #0x38]
	str r5, [r7, #0x3c]
_08067C1E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8067C24
sub_8067C24: @ 0x08067C24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08067CAC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	mov r1, sb
	ldr r0, [r1, #0x38]
	adds r2, r0, #1
	str r2, [sp, #0x10]
	subs r0, #0xb3
	cmp r0, #0x80
	bhi _08067D28
	lsrs r7, r0, #4
	movs r0, #2
	mov r8, r0
	movs r1, #0x1f
	mov ip, r1
	movs r2, #0xf8
	lsls r2, r2, #7
	mov sl, r2
_08067C64:
	mov r0, r8
	lsls r2, r0, #1
	ldr r1, _08067CB0 @ =gUiPaletteSoundTestBox3
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r3, #0x1f
	ands r3, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r5, r0, #5
	mov r0, sl
	ands r0, r1
	lsrs r4, r0, #0xa
	ldr r0, _08067CB4 @ =gUiPaletteSoundTestBox4
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r2, #0x1f
	ands r2, r1
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r1
	lsrs r6, r0, #5
	mov r0, sl
	ands r0, r1
	lsrs r1, r0, #0xa
	cmp r3, r2
	bls _08067CB8
	subs r0, r3, r2
	muls r0, r7, r0
	lsrs r0, r0, #3
	subs r3, r3, r0
	mov r2, ip
	ands r3, r2
	b _08067CC4
	.align 2, 0
_08067CAC: .4byte gCurTask
_08067CB0: .4byte gUiPaletteSoundTestBox3
_08067CB4: .4byte gUiPaletteSoundTestBox4
_08067CB8:
	subs r0, r2, r3
	muls r0, r7, r0
	lsrs r0, r0, #3
	adds r3, r3, r0
	mov r0, ip
	ands r3, r0
_08067CC4:
	cmp r5, r6
	bls _08067CD2
	subs r0, r5, r6
	muls r0, r7, r0
	lsrs r0, r0, #3
	subs r0, r5, r0
	b _08067CDA
_08067CD2:
	subs r0, r6, r5
	muls r0, r7, r0
	lsrs r0, r0, #3
	adds r0, r5, r0
_08067CDA:
	mov r2, ip
	ands r0, r2
	lsls r5, r0, #5
	cmp r4, r1
	bls _08067CF2
	subs r0, r4, r1
	muls r0, r7, r0
	lsrs r0, r0, #3
	subs r0, r4, r0
	mov r1, ip
	ands r0, r1
	b _08067CFE
_08067CF2:
	subs r0, r1, r4
	muls r0, r7, r0
	lsrs r0, r0, #3
	adds r0, r4, r0
	mov r2, ip
	ands r0, r2
_08067CFE:
	lsls r4, r0, #0xa
	orrs r3, r5
	orrs r4, r3
	mov r0, r8
	adds r0, #0xe0
	lsls r0, r0, #1
	ldr r1, _08067D88 @ =gObjPalette
	adds r0, r0, r1
	strh r4, [r0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xf
	bls _08067C64
	ldr r2, _08067D8C @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_08067D28:
	movs r0, #0xc8
	lsls r0, r0, #1
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bhi _08067D34
	b _08067E32
_08067D34:
	movs r2, #0
	str r2, [sp, #0x10]
	mov r8, r2
	mov r7, sb
	adds r7, #0x2c
	movs r4, #0
	ldr r6, _08067D90 @ =0x00000311
_08067D42:
	str r4, [sp]
	ldr r0, _08067D94 @ =sub_8066D64
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08067D98 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	mov r1, r8
	lsls r2, r1, #2
	mov r1, sp
	adds r1, r1, r2
	adds r1, #4
	str r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	strh r4, [r3, #0x3c]
	movs r0, #0xf
	str r0, [r3, #0x4c]
	str r4, [r3, #0x48]
	mov r0, r8
	str r0, [r3, #0x44]
	str r4, [r3, #0x40]
	adds r5, r2, #0
	cmp r0, #0
	bne _08067DA4
	ldr r0, _08067D9C @ =0x06016060
	str r0, [r3, #4]
	strh r6, [r3, #0xa]
	ldr r2, _08067DA0 @ =0x03000020
	adds r0, r1, r2
	strb r4, [r0]
	b _08067DD2
	.align 2, 0
_08067D88: .4byte gObjPalette
_08067D8C: .4byte gFlags
_08067D90: .4byte 0x00000311
_08067D94: .4byte sub_8066D64
_08067D98: .4byte 0x00002120
_08067D9C: .4byte 0x06016060
_08067DA0: .4byte 0x03000020
_08067DA4:
	mov r0, r8
	cmp r0, #1
	bne _08067DC4
	ldr r0, _08067DBC @ =0x06016920
	str r0, [r3, #4]
	strh r6, [r3, #0xa]
	ldr r2, _08067DC0 @ =0x03000020
	adds r0, r1, r2
	mov r1, r8
	strb r1, [r0]
	b _08067DD2
	.align 2, 0
_08067DBC: .4byte 0x06016920
_08067DC0: .4byte 0x03000020
_08067DC4:
	ldr r0, _08067E54 @ =0x06016E20
	str r0, [r3, #4]
	strh r6, [r3, #0xa]
	ldr r2, _08067E58 @ =0x03000020
	adds r1, r1, r2
	movs r0, #2
	strb r0, [r1]
_08067DD2:
	movs r0, #0xb4
	strh r0, [r3, #0x16]
	movs r0, #0x50
	strh r0, [r3, #0x18]
	strh r4, [r3, #0x1a]
	strh r4, [r3, #8]
	strh r4, [r3, #0x14]
	strh r4, [r3, #0x1c]
	adds r1, r3, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x25
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r1, r7, r5
	mov r0, sp
	adds r0, r0, r5
	adds r0, #4
	ldr r0, [r0]
	str r0, [r1]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #2
	bls _08067D42
	mov r0, sb
	ldr r1, [r0, #0xc]
	ldr r0, _08067E5C @ =sub_8068004
	str r0, [r1, #8]
	ldr r0, _08067E60 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08067E64 @ =sub_8067E68
	str r0, [r1, #8]
_08067E32:
	mov r0, sb
	bl sub_805423C
	ldr r1, [sp, #0x10]
	mov r2, sb
	str r1, [r2, #0x38]
	ldr r0, [sp, #0x14]
	str r1, [r0, #0x3c]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067E54: .4byte 0x06016E20
_08067E58: .4byte 0x03000020
_08067E5C: .4byte sub_8068004
_08067E60: .4byte gCurTask
_08067E64: .4byte sub_8067E68

	thumb_func_start sub_8067E68
sub_8067E68: @ 0x08067E68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r0, _08067ECC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r4, #0x30]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r4, #0x34]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r7, [r4, #0x38]
	adds r5, r7, #1
	movs r6, #0xc8
	lsls r6, r6, #1
	cmp r5, r6
	bls _08067EE8
	ldr r1, _08067ED0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08067ED4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08067ED8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08067EDC @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08067EE0 @ =gVramGraphicsCopyCursor
	ldr r0, _08067EE4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateStaffCredits
	b _08067F28
	.align 2, 0
_08067ECC: .4byte gCurTask
_08067ED0: .4byte 0x0000FFFF
_08067ED4: .4byte gBackgroundsCopyQueueCursor
_08067ED8: .4byte gBackgroundsCopyQueueIndex
_08067EDC: .4byte sa2__gUnknown_03005390
_08067EE0: .4byte gVramGraphicsCopyCursor
_08067EE4: .4byte gVramGraphicsCopyQueueIndex
_08067EE8:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r1, #0x80
	bl Div
	subs r0, r6, r0
	cmp r0, r5
	bne _08067F0C
	movs r1, #0
	strh r1, [r4]
	movs r2, #1
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	movs r0, #0x80
	strh r0, [r4, #8]
	strb r2, [r4, #0xa]
_08067F0C:
	adds r0, r4, #0
	bl sub_805423C
	str r5, [r4, #0x38]
	mov r0, r8
	str r5, [r0, #0x3c]
	ldr r0, [sp]
	ldr r2, _08067F34 @ =0x0000014B
	adds r1, r7, r2
	strh r1, [r0, #0x3c]
	ldr r0, [sp, #4]
	strh r1, [r0, #0x3c]
	ldr r0, [sp, #8]
	strh r1, [r0, #0x3c]
_08067F28:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067F34: .4byte 0x0000014B

	thumb_func_start Task_8067F38
Task_8067F38: @ 0x08067F38
	ldr r0, _08067F94 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r1, [r2, #0x3c]
	ldr r0, [r2, #0x40]
	adds r0, #0x3c
	cmp r0, r1
	bhi _08067F92
	ldr r0, [r2, #0x54]
	adds r0, #0x55
	str r0, [r2, #0x54]
	ldr r1, _08067F98 @ =gBgScrollRegs
	asrs r0, r0, #8
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x47
	ble _08067F66
	movs r0, #0x47
	strh r0, [r1, #2]
_08067F66:
	ldr r0, [r2, #0x58]
	adds r0, #0x60
	str r0, [r2, #0x58]
	asrs r0, r0, #8
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x50
	ble _08067F7C
	movs r0, #0x50
	strh r0, [r1, #6]
_08067F7C:
	ldr r0, [r2, #0x5c]
	adds r0, #0xc0
	str r0, [r2, #0x5c]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _08067F92
	movs r0, #0xa0
	strh r0, [r1, #0xa]
_08067F92:
	bx lr
	.align 2, 0
_08067F94: .4byte gCurTask
_08067F98: .4byte gBgScrollRegs

	thumb_func_start sub_8067F9C
sub_8067F9C: @ 0x08067F9C
	push {r4, lr}
	ldr r0, _08067FF0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _08067FDC
	ldr r0, _08067FF4 @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08067FF8 @ =0x060126E0
	str r0, [r4, #4]
	movs r1, #0
	ldr r0, _08067FFC @ =0x000002DE
	strh r0, [r4, #0xa]
	ldr r3, _08068000 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
_08067FDC:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067FF0: .4byte gCurTask
_08067FF4: .4byte 0x03000021
_08067FF8: .4byte 0x060126E0
_08067FFC: .4byte 0x000002DE
_08068000: .4byte 0x03000020

	thumb_func_start sub_8068004
sub_8068004: @ 0x08068004
	push {r4, lr}
	ldr r0, _08068058 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _08068044
	ldr r0, _0806805C @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08068060 @ =0x060126E0
	str r0, [r4, #4]
	ldr r0, _08068064 @ =0x000002DE
	strh r0, [r4, #0xa]
	ldr r0, _08068068 @ =0x03000020
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
_08068044:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068058: .4byte gCurTask
_0806805C: .4byte 0x03000021
_08068060: .4byte 0x060126E0
_08068064: .4byte 0x000002DE
_08068068: .4byte 0x03000020

	thumb_func_start Task_806806C
Task_806806C: @ 0x0806806C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080680DC @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r4, [r7, #0x3c]
	ldr r0, [r7, #0x40]
	cmp r4, r0
	bls _0806812C
	subs r0, r4, r0
	movs r1, #0x10
	bl Div
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r7, #0x40]
	subs r0, r4, r0
	movs r1, #0x10
	bl Mod
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r5, #0
	beq _080680A4
	cmp r5, #2
	bne _080680E8
_080680A4:
	cmp r5, #2
	bne _080680AA
	movs r5, #3
_080680AA:
	adds r4, r7, #0
	cmp r0, #0
	bne _080680B8
	ldr r0, _080680E0 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_080680B8:
	lsls r1, r5, #2
	ldr r2, _080680E4 @ =0x03000044
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r4, #0x16]
	adds r2, #0x10
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _0806812C
	.align 2, 0
_080680DC: .4byte gCurTask
_080680E0: .4byte 0x03000021
_080680E4: .4byte 0x03000044
_080680E8:
	cmp r5, #1
	bne _0806812C
	adds r4, r7, #0
	cmp r0, #0
	bne _080680FA
	ldr r0, _08068134 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_080680FA:
	ldr r1, _08068138 @ =0x03000048
	adds r0, r6, r1
	ldr r0, [r0]
	strh r0, [r4, #0x16]
	ldr r2, _0806813C @ =0x03000058
	adds r0, r6, r2
	ldr r0, [r0]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _08068140 @ =0x0300004C
	adds r0, r6, r1
	ldr r0, [r0]
	strh r0, [r4, #0x16]
	ldr r2, _08068144 @ =0x0300005C
	adds r0, r6, r2
	ldr r0, [r0]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
_0806812C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068134: .4byte 0x03000021
_08068138: .4byte 0x03000048
_0806813C: .4byte 0x03000058
_08068140: .4byte 0x0300004C
_08068144: .4byte 0x0300005C

	thumb_func_start Task_8068148
Task_8068148: @ 0x08068148
	push {r4, r5, r6, lr}
	ldr r0, _0806816C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	adds r5, r4, #0
	ldr r2, [r4, #0x3c]
	cmp r2, #0x78
	bne _08068174
	movs r1, #0
	movs r0, #0xbf
	strh r0, [r4, #0xa]
	ldr r6, _08068170 @ =0x03000020
	adds r0, r3, r6
	strb r1, [r0]
	b _08068188
	.align 2, 0
_0806816C: .4byte gCurTask
_08068170: .4byte 0x03000020
_08068174:
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r2, r0
	bne _08068190
	movs r0, #0xbf
	strh r0, [r4, #0xa]
	ldr r6, _080681B0 @ =0x03000020
	adds r1, r3, r6
	movs r0, #1
	strb r0, [r1]
_08068188:
	ldr r0, _080681B4 @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_08068190:
	ldr r0, _080681B8 @ =0x00000257
	cmp r2, r0
	bhi _080681C0
	movs r0, #0xff
	ands r2, r0
	ldr r1, _080681BC @ =gSineTable
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x19
	ldr r0, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	b _080681F6
	.align 2, 0
_080681B0: .4byte 0x03000020
_080681B4: .4byte 0x03000021
_080681B8: .4byte 0x00000257
_080681BC: .4byte gSineTable
_080681C0:
	ldr r0, _080681E4 @ =0x00000296
	cmp r2, r0
	bhi _080681F0
	ldr r1, _080681E8 @ =gSineTable
	ldr r3, _080681EC @ =0xFFFFFDA8
	adds r0, r2, r3
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	movs r1, #0x1a
	bl Div
	ldr r1, [r5, #0x54]
	adds r1, r1, r0
	str r1, [r5, #0x54]
	b _080681F6
	.align 2, 0
_080681E4: .4byte 0x00000296
_080681E8: .4byte gSineTable
_080681EC: .4byte 0xFFFFFDA8
_080681F0:
	movs r0, #0x8c
	lsls r0, r0, #8
	str r0, [r5, #0x44]
_080681F6:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r5, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start Task_8068214
Task_8068214: @ 0x08068214
	push {r4, r5, r6, r7, lr}
	ldr r0, _08068244 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	adds r6, r4, #0
	adds r0, #0x30
	adds r7, r2, r0
	ldr r5, [r4, #0x3c]
	ldr r0, _08068248 @ =0x00000257
	cmp r5, r0
	bhi _08068250
	movs r0, #0xff
	ands r5, r0
	ldr r1, _0806824C @ =gSineTable
	lsls r0, r5, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x19
	b _0806826A
	.align 2, 0
_08068244: .4byte gCurTask
_08068248: .4byte 0x00000257
_0806824C: .4byte gSineTable
_08068250:
	ldr r0, _08068288 @ =0x00000296
	cmp r5, r0
	bhi _08068294
	ldr r1, _0806828C @ =gSineTable
	ldr r2, _08068290 @ =0xFFFFFDA8
	adds r0, r5, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x1a
	bl Div
_0806826A:
	ldr r1, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x54]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	asrs r1, r1, #8
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08068348
	.align 2, 0
_08068288: .4byte 0x00000296
_0806828C: .4byte gSineTable
_08068290: .4byte 0xFFFFFDA8
_08068294:
	ldr r1, _080682C8 @ =0x000002BB
	cmp r5, r1
	bhi _080682DC
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r4, #0x44]
	str r0, [r4, #0x54]
	cmp r5, r1
	bne _08068348
	movs r1, #0
	ldr r0, _080682CC @ =0x000002DF
	strh r0, [r4, #0xa]
	ldr r3, _080682D0 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	ldr r0, _080682D4 @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080682D8 @ =0x0000106B
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _08068348
	.align 2, 0
_080682C8: .4byte 0x000002BB
_080682CC: .4byte 0x000002DF
_080682D0: .4byte 0x03000020
_080682D4: .4byte 0x03000021
_080682D8: .4byte 0x0000106B
_080682DC:
	ldr r1, _08068350 @ =gSineTable
	ldr r0, _08068354 @ =0x000003BB
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r0, r4, #0
	movs r1, #0x24
	bl Div
	ldr r1, [r6, #0x54]
	adds r1, r1, r0
	str r1, [r6, #0x54]
	adds r0, r4, #0
	movs r1, #0x12
	bl Div
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	ldr r3, _08068358 @ =0xFFFFFD44
	adds r2, r5, r3
	lsls r1, r2, #1
	ldr r3, _0806835C @ =0x000003FF
	adds r0, r3, #0
	bics r0, r1
	strh r0, [r7]
	adds r1, r1, r2
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r7, #2]
	strh r0, [r7, #4]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	strh r0, [r7, #6]
	ldr r0, [r6, #0x54]
	asrs r0, r0, #8
	strh r0, [r7, #8]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	strh r0, [r6, #0x16]
	ldr r0, [r6, #0x54]
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	adds r1, r7, #0
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
_08068348:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068350: .4byte gSineTable
_08068354: .4byte 0x000003BB
_08068358: .4byte 0xFFFFFD44
_0806835C: .4byte 0x000003FF

	thumb_func_start Task_8068360
Task_8068360: @ 0x08068360
	push {r4, lr}
	ldr r0, _080683CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	adds r4, r2, #0
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	adds r0, r0, r1
	str r0, [r2, #0x44]
	movs r3, #0x88
	lsls r3, r3, #9
	cmp r0, r3
	ble _08068384
	ldr r0, _080683D0 @ =0xFFFF8800
	str r0, [r2, #0x44]
_08068384:
	ldr r1, [r2, #0x44]
	ldr r0, _080683D0 @ =0xFFFF8800
	cmp r1, r0
	bge _0806838E
	str r3, [r2, #0x44]
_0806838E:
	ldr r0, [r2, #0x54]
	ldr r1, [r2, #0x58]
	adds r0, r0, r1
	str r0, [r2, #0x54]
	movs r3, #0xac
	lsls r3, r3, #8
	cmp r0, r3
	ble _080683A2
	ldr r0, _080683D4 @ =0xFFFFF000
	str r0, [r2, #0x54]
_080683A2:
	ldr r1, [r2, #0x54]
	ldr r0, _080683D4 @ =0xFFFFF000
	cmp r1, r0
	bge _080683AC
	str r3, [r2, #0x54]
_080683AC:
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080683CC: .4byte gCurTask
_080683D0: .4byte 0xFFFF8800
_080683D4: .4byte 0xFFFFF000

	thumb_func_start sub_80683D8
sub_80683D8: @ 0x080683D8
	push {r4, lr}
	ldr r0, _08068440 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldr r1, [r3, #0x44]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r1, r2
	ldr r0, [r3, #0x54]
	adds r0, r0, r2
	str r0, [r3, #0x54]
	ldr r0, [r3, #0x48]
	adds r1, r1, r0
	str r1, [r3, #0x44]
	movs r0, #0x88
	lsls r0, r0, #9
	cmp r1, r0
	ble _0806840A
	ldr r2, _08068444 @ =0xFFFED400
	adds r0, r1, r2
	str r0, [r3, #0x44]
_0806840A:
	ldr r0, [r3, #0x54]
	ldr r1, [r3, #0x58]
	adds r1, r0, r1
	str r1, [r3, #0x54]
	movs r0, #0xac
	lsls r0, r0, #8
	cmp r1, r0
	ble _08068420
	ldr r2, _08068444 @ =0xFFFED400
	adds r0, r1, r2
	str r0, [r3, #0x54]
_08068420:
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068440: .4byte gCurTask
_08068444: .4byte 0xFFFED400

	thumb_func_start Task_nullsub_8068448
Task_nullsub_8068448: @ 0x08068448
	bx lr
	.align 2, 0

	thumb_func_start sub_806844C
sub_806844C: @ 0x0806844C
	push {r4, lr}
	ldr r0, _080684A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r2, r4, #0
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x54]
	ldr r1, _080684AC @ =0xFFFFF000
	cmp r0, r1
	bge _0806848A
	movs r0, #0xac
	lsls r0, r0, #8
	str r0, [r4, #0x54]
	ldr r1, [r4, #0x48]
	movs r0, #0xc8
	muls r1, r0, r1
	ldr r0, [r4, #0x44]
	adds r1, r0, r1
	str r1, [r4, #0x44]
	movs r0, #0x88
	lsls r0, r0, #9
	cmp r1, r0
	ble _0806848A
	ldr r3, _080684B0 @ =0xFFFED400
	adds r0, r1, r3
	str r0, [r4, #0x44]
_0806848A:
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r2, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080684A8: .4byte gCurTask
_080684AC: .4byte 0xFFFFF000
_080684B0: .4byte 0xFFFED400

	thumb_func_start sub_80684B4
sub_80684B4: @ 0x080684B4
	push {r4, lr}
	ldr r0, _080684EC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x54]
	ldr r0, _080684F0 @ =0xFFFFF000
	cmp r2, r0
	blt _080684E6
	ldr r1, [r4, #0x58]
	adds r1, r2, r1
	str r1, [r4, #0x54]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	asrs r1, r1, #8
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080684E6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080684EC: .4byte gCurTask
_080684F0: .4byte 0xFFFFF000

	thumb_func_start sub_80684F4
sub_80684F4: @ 0x080684F4
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08068514 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	cmp r2, #0x19
	bne _08068518
	bl UiGfxStackInit
	bl sub_80538BC
	b _0806852A
	.align 2, 0
_08068514: .4byte gCurTask
_08068518:
	cmp r2, #0x1e
	bne _0806852A
	ldr r0, _08068530 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08068534 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	str r0, [r4, #0x3c]
_0806852A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068530: .4byte gRingCount
_08068534: .4byte gCourseTime

	thumb_func_start sub_8068538
sub_8068538: @ 0x08068538
	bx lr
	.align 2, 0

	thumb_func_start sub_806853C
sub_806853C: @ 0x0806853C
	push {r4, lr}
	ldr r0, _08068564 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, [r4, #0x3c]
	ldr r0, _08068568 @ =0x00000257
	cmp r1, r0
	bhi _0806855E
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0806855E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068564: .4byte gCurTask
_08068568: .4byte 0x00000257

	thumb_func_start Task_806856C
Task_806856C: @ 0x0806856C
	bx lr
	.align 2, 0

	thumb_func_start sub_8068570
sub_8068570: @ 0x08068570
	push {r4, r5, lr}
	ldr r0, _080685B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r3, [r4, #0x3c]
	cmp r3, #0
	bne _080685A6
	adds r0, #0x21
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080685BC @ =0x060126E0
	str r0, [r4, #4]
	movs r1, #0
	ldr r0, _080685C0 @ =0x000002DD
	strh r0, [r4, #0xa]
	ldr r5, _080685C4 @ =0x03000020
	adds r0, r2, r5
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	str r3, [r4, #0x10]
_080685A6:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080685B8: .4byte gCurTask
_080685BC: .4byte 0x060126E0
_080685C0: .4byte 0x000002DD
_080685C4: .4byte 0x03000020

	thumb_func_start sub_80685C8
sub_80685C8: @ 0x080685C8
	push {r4, lr}
	ldr r0, _08068610 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r3, [r4, #0x3c]
	cmp r3, #0
	bne _080685FE
	adds r0, #0x21
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08068614 @ =0x060126E0
	str r0, [r4, #4]
	ldr r0, _08068618 @ =0x000002DD
	strh r0, [r4, #0xa]
	ldr r0, _0806861C @ =0x03000020
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	str r3, [r4, #0x10]
_080685FE:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068610: .4byte gCurTask
_08068614: .4byte 0x060126E0
_08068618: .4byte 0x000002DD
_0806861C: .4byte 0x03000020

	thumb_func_start Task_8068620
Task_8068620: @ 0x08068620
	bx lr
	.align 2, 0

	thumb_func_start Task_8068624
Task_8068624: @ 0x08068624
	bx lr
	.align 2, 0

	thumb_func_start Task_8068628
Task_8068628: @ 0x08068628
	bx lr
	.align 2, 0

	thumb_func_start Task_806862C
Task_806862C: @ 0x0806862C
	push {r4, lr}
	ldr r0, _08068680 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	adds r4, r1, #0
	ldr r0, [r1, #0x3c]
	cmp r0, #0xb4
	bls _08068678
	ldr r0, [r1, #0x44]
	subs r0, #0x60
	str r0, [r1, #0x44]
	ldr r2, _08068684 @ =0xFFFFC000
	cmp r0, r2
	bge _08068650
	str r2, [r1, #0x44]
_08068650:
	ldr r0, [r1, #0x54]
	adds r0, #0x30
	str r0, [r1, #0x54]
	movs r2, #0x80
	lsls r2, r2, #6
	cmp r0, r2
	ble _08068660
	str r2, [r1, #0x54]
_08068660:
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08068678:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068680: .4byte gCurTask
_08068684: .4byte 0xFFFFC000
