.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_805ACD8
Task_805ACD8: @ 0x0805ACD8
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r1, _0805AD10 @ =gUnknown_08688580
	mov r0, sp
	movs r2, #0x19
	bl memcpy
	ldr r0, _0805AD14 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r1, #0x38
	ldrsh r0, [r5, r1]
	cmp r0, #0x20
	ble _0805AD1C
	movs r1, #0
	movs r0, #6
	strh r0, [r5, #0xc]
	str r1, [r5, #0x38]
	ldr r0, [r5, #0x3c]
	subs r0, #0xb4
	str r0, [r5, #0x3c]
	ldr r0, _0805AD18 @ =sub_805ADF0
	str r0, [r2, #8]
	b _0805AD78
	.align 2, 0
_0805AD10: .4byte gUnknown_08688580
_0805AD14: .4byte gCurTask
_0805AD18: .4byte sub_805ADF0
_0805AD1C:
	cmp r0, #0xc
	ble _0805AD50
	adds r4, r0, #0
	subs r4, #0xd
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	ldr r1, _0805AD4C @ =gSineTable
	adds r0, #0x11
	muls r0, r4, r0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	movs r0, #0x38
	subs r0, r0, r1
	strh r0, [r5, #0xc]
	ldr r0, [r5, #0x3c]
	subs r0, #0xb4
	b _0805AD76
	.align 2, 0
_0805AD4C: .4byte gSineTable
_0805AD50:
	cmp r0, #9
	ble _0805AD5E
	movs r0, #0
	strh r0, [r5, #0xa]
	ldr r0, [r5, #0x3c]
	subs r0, #0xb4
	b _0805AD76
_0805AD5E:
	lsls r0, r0, #8
	movs r1, #0xa
	bl Div
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	strh r1, [r5, #0xa]
	ldr r0, [r5, #0x3c]
	ldr r1, _0805AD98 @ =0xFFFFF9C0
	adds r0, r0, r1
_0805AD76:
	str r0, [r5, #0x3c]
_0805AD78:
	ldr r0, _0805AD9C @ =gUnknown_0868859C
	adds r1, r5, #0
	bl sub_8052F78
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	ble _0805ADA0
	asrs r0, r0, #6
	movs r1, #0x20
	bl Div
	movs r1, #9
	subs r1, r1, r0
	strh r1, [r5, #0x26]
	b _0805ADA4
	.align 2, 0
_0805AD98: .4byte 0xFFFFF9C0
_0805AD9C: .4byte gUnknown_0868859C
_0805ADA0:
	movs r0, #9
	strh r0, [r5, #0x26]
_0805ADA4:
	ldr r1, [r5, #0x3c]
	movs r0, #0xf0
	lsls r0, r0, #6
	cmp r1, r0
	ble _0805ADB2
	movs r0, #0
	strh r0, [r5, #0x26]
_0805ADB2:
	ldr r1, [r5, #0x3c]
	ldr r0, _0805ADEC @ =0xFFFFF840
	cmp r1, r0
	bge _0805ADCC
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x30]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	str r0, [r5, #0x30]
_0805ADCC:
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #6
	strh r0, [r5, #0x22]
	ldrh r0, [r5, #0xc]
	strh r0, [r5, #0x24]
	ldr r0, [r5, #0x30]
	add r0, sp
	adds r1, r5, #0
	adds r1, #0x18
	bl sub_8052F78
	add sp, #0x1c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805ADEC: .4byte 0xFFFFF840

	thumb_func_start sub_805ADF0
sub_805ADF0: @ 0x0805ADF0
	push {r4, lr}
	sub sp, #0x1c
	ldr r1, _0805AE3C @ =gUnknown_08688580
	mov r0, sp
	movs r2, #0x19
	bl memcpy
	ldr r0, _0805AE40 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r0, _0805AE44 @ =gUnknown_0868859C
	adds r1, r4, #0
	bl sub_8052F78
	ldr r0, [r4, #0x34]
	adds r0, #1
	str r0, [r4, #0x34]
	movs r0, #6
	strh r0, [r4, #0x24]
	ldr r0, [r4, #0x3c]
	subs r0, #0xb4
	str r0, [r4, #0x3c]
	cmp r0, #0
	ble _0805AE48
	asrs r0, r0, #6
	movs r1, #0x20
	bl Div
	movs r1, #9
	subs r1, r1, r0
	strh r1, [r4, #0x26]
	b _0805AE4C
	.align 2, 0
_0805AE3C: .4byte gUnknown_08688580
_0805AE40: .4byte gCurTask
_0805AE44: .4byte gUnknown_0868859C
_0805AE48:
	movs r0, #9
	strh r0, [r4, #0x26]
_0805AE4C:
	ldr r1, [r4, #0x3c]
	ldr r0, _0805AE80 @ =0xFFFFF840
	cmp r1, r0
	bge _0805AE66
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x30]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	str r0, [r4, #0x30]
_0805AE66:
	ldr r0, [r4, #0x3c]
	asrs r0, r0, #6
	strh r0, [r4, #0x22]
	ldr r0, [r4, #0x30]
	add r0, sp
	adds r1, r4, #0
	adds r1, #0x18
	bl sub_8052F78
	add sp, #0x1c
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805AE80: .4byte 0xFFFFF840

	thumb_func_start Task_805AE84
Task_805AE84: @ 0x0805AE84
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r1, _0805AF10 @ =gUnknown_086885A8
	mov r0, sp
	movs r2, #0x19
	bl memcpy
	ldr r0, _0805AF14 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r0, #0
	strh r0, [r5, #0xa]
	ldr r0, _0805AF18 @ =gUnknown_0868859C
	adds r1, r5, #0
	bl sub_805321C
	movs r0, #6
	strh r0, [r5, #0x24]
	ldr r1, _0805AF1C @ =0x03000040
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x3c]
	subs r0, r0, r1
	str r0, [r5, #0x3c]
	ldr r3, _0805AF1C @ =0x03000040
	adds r4, r4, r3
	movs r2, #2
_0805AEC8:
	ldrh r1, [r4]
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _0805AED6
	subs r0, r1, #1
	strh r0, [r4]
_0805AED6:
	subs r2, #1
	cmp r2, #0
	bge _0805AEC8
	ldr r1, [r5, #0x3c]
	ldr r0, _0805AF20 @ =0xFFFFF840
	cmp r1, r0
	bge _0805AEF6
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x30]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	str r0, [r5, #0x30]
_0805AEF6:
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #6
	strh r0, [r5, #0x22]
	ldr r0, [r5, #0x30]
	add r0, sp
	adds r1, r5, #0
	adds r1, #0x18
	bl sub_805321C
	add sp, #0x1c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805AF10: .4byte gUnknown_086885A8
_0805AF14: .4byte gCurTask
_0805AF18: .4byte gUnknown_0868859C
_0805AF1C: .4byte 0x03000040
_0805AF20: .4byte 0xFFFFF840

	thumb_func_start Task_805AF24
Task_805AF24: @ 0x0805AF24
	push {r4, lr}
	ldr r0, _0805AF50 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	adds r0, #1
	str r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x21
	ble _0805AF58
	movs r0, #0
	movs r1, #0x84
	strh r1, [r4, #0xc]
	str r0, [r4, #0x18]
	ldr r0, _0805AF54 @ =sub_805AFC4
	str r0, [r2, #8]
	b _0805AFAE
	.align 2, 0
_0805AF50: .4byte gCurTask
_0805AF54: .4byte sub_805AFC4
_0805AF58:
	cmp r1, #0xd
	ble _0805AF84
	movs r0, #0x67
	muls r0, r1, r0
	movs r1, #0x6e
	bl Div
	ldr r2, _0805AF80 @ =gSineTable
	subs r0, #0xa
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #0x54
	strh r0, [r4, #0xc]
	b _0805AFAE
	.align 2, 0
_0805AF80: .4byte gSineTable
_0805AF84:
	cmp r1, #0xa
	ble _0805AF94
	ldr r0, _0805AF90 @ =gUnknown_08688570
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	b _0805AFAE
	.align 2, 0
_0805AF90: .4byte gUnknown_08688570
_0805AF94:
	lsls r0, r1, #8
	movs r1, #0xa
	bl Div
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	strh r1, [r4, #0xa]
	ldr r0, _0805AFBC @ =gUnknown_08688570
	ldrh r0, [r0]
	adds r1, r1, r0
	strh r1, [r4, #0xa]
_0805AFAE:
	ldr r0, _0805AFC0 @ =gUnknown_086885C4
	adds r1, r4, #0
	bl sub_8052F78
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805AFBC: .4byte gUnknown_08688570
_0805AFC0: .4byte gUnknown_086885C4

	thumb_func_start sub_805AFC4
sub_805AFC4: @ 0x0805AFC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r4, sp, #0x30
	ldr r1, _0805B0E0 @ =gUnknown_086885CE
	adds r0, r4, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, _0805B0E4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrh r2, [r5, #0x1c]
	ldrb r1, [r5, #0x1c]
	adds r7, r4, #0
	cmp r1, #0
	bne _0805AFEC
	b _0805B0F4
_0805AFEC:
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r2
	lsrs r4, r0, #8
	adds r0, r1, #0
	subs r0, #0x7f
	cmp r0, #0
	bge _0805B000
	movs r0, #0x7f
	subs r0, r0, r1
_0805B000:
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0805B0C6
	ldrh r0, [r5, #0x1c]
	movs r1, #0xc0
	lsls r1, r1, #2
	ands r1, r0
	lsrs r4, r1, #8
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x80
	ble _0805B022
	adds r4, #1
_0805B022:
	movs r0, #3
	ands r4, r0
	bl UiGfxStackInit
	add r2, sp, #0x2c
	movs r0, #0x29
	strb r0, [r2]
	mov r1, sp
	adds r1, #0x2b
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0805B0E8 @ =gUiGraphics
	mov ip, r0
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #0xa
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, _0805B0EC @ =0x06011120
	str r0, [sp, #0xc]
	mov r1, sp
	adds r1, #0x2a
	movs r0, #9
	strb r0, [r1]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r3, sp
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #8]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #9]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #0xa]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #0xb]
	mov r0, sp
	bl sub_80528AC
_0805B0C6:
	strh r6, [r5, #0x1e]
	ldr r0, _0805B0F0 @ =gUnknown_08688570
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrb r0, [r5, #0x1c]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r7, r0
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	b _0805B102
	.align 2, 0
_0805B0E0: .4byte gUnknown_086885CE
_0805B0E4: .4byte gCurTask
_0805B0E8: .4byte gUiGraphics
_0805B0EC: .4byte 0x06011120
_0805B0F0: .4byte gUnknown_08688570
_0805B0F4:
	ldr r0, _0805B114 @ =gUnknown_08688570
	movs r1, #0xc0
	lsls r1, r1, #2
	ands r1, r2
	lsrs r1, r1, #7
	adds r1, r1, r0
	ldrh r0, [r1]
_0805B102:
	strh r0, [r5, #0xa]
	ldr r0, _0805B118 @ =gUnknown_086885C4
	adds r1, r5, #0
	bl sub_8052F78
	add sp, #0x50
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B114: .4byte gUnknown_08688570
_0805B118: .4byte gUnknown_086885C4

	thumb_func_start Task_805B11C
Task_805B11C: @ 0x0805B11C
	push {r4, r5, lr}
	sub sp, #0x10
	ldr r1, _0805B190 @ =gUnknown_086885EE
	mov r0, sp
	movs r2, #0xe
	bl memcpy
	ldr r0, _0805B194 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r1, [r5, #0x18]
	adds r3, r1, #1
	str r3, [r5, #0x18]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x26
	ble _0805B1A0
	cmp r2, #0x62
	ble _0805B14E
	adds r0, r1, #0
	subs r0, #0x3b
	str r0, [r5, #0x18]
_0805B14E:
	adds r0, r2, #0
	movs r1, #0x3c
	bl Mod
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	add r0, sp
	ldrb r0, [r0]
	strh r0, [r5, #0xa]
	ldr r0, _0805B198 @ =gUnknown_086885FC
	adds r1, r5, #0
	bl sub_8052F78
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	mov r1, sp
	adds r1, #7
	adds r1, r1, r0
	ldrb r0, [r1]
	strh r0, [r5, #0xa]
	ldr r0, _0805B19C @ =gUnknown_08688600
	adds r1, r5, #0
	bl sub_8052F78
	b _0805B1D0
	.align 2, 0
_0805B190: .4byte gUnknown_086885EE
_0805B194: .4byte gCurTask
_0805B198: .4byte gUnknown_086885FC
_0805B19C: .4byte gUnknown_08688600
_0805B1A0:
	cmp r3, #0x1e
	bls _0805B1D0
	subs r1, #0x1d
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, #0x24
	strh r0, [r5, #0xa]
	ldr r0, _0805B1D8 @ =gUnknown_086885FC
	adds r1, r5, #0
	bl sub_8052F78
	ldr r0, [r5, #0x18]
	subs r0, #0x1e
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	movs r0, #0xf0
	subs r0, r0, r1
	strh r0, [r5, #0xa]
	ldr r0, _0805B1DC @ =gUnknown_08688600
	adds r1, r5, #0
	bl sub_8052F78
_0805B1D0:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B1D8: .4byte gUnknown_086885FC
_0805B1DC: .4byte gUnknown_08688600

	thumb_func_start Task_805B1E0
Task_805B1E0: @ 0x0805B1E0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0805B268 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r1, _0805B26C @ =0x030000C4
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	lsrs r0, r0, #8
	mov sb, r0
	ldr r2, _0805B270 @ =0x030000C0
	adds r1, r6, r2
	ldr r0, [r1]
	mov r8, r0
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x11
	bls _0805B29C
	mov r5, r8
	subs r5, #0x10
	lsls r0, r5, #7
	movs r1, #0xb
	bl Div
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	ldr r2, _0805B274 @ =0x03000046
	adds r0, r6, r2
	strh r1, [r0]
	lsls r4, r5, #5
	adds r0, r4, #0
	movs r1, #0xb
	bl Div
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	ldr r2, _0805B278 @ =0x03000076
	adds r0, r6, r2
	strh r1, [r0]
	adds r0, r4, #0
	movs r1, #0xb
	bl Div
	subs r0, #0x20
	strh r0, [r7, #0x16]
	ldr r0, _0805B27C @ =0x03000048
	adds r1, r6, r0
	movs r0, #0x6e
	strh r0, [r1]
	cmp r5, #4
	bgt _0805B288
	ldr r1, _0805B280 @ =gWinRegs
	ldr r0, _0805B284 @ =0x0000F0F0
	strh r0, [r1, #2]
	b _0805B29C
	.align 2, 0
_0805B268: .4byte gCurTask
_0805B26C: .4byte 0x030000C4
_0805B270: .4byte 0x030000C0
_0805B274: .4byte 0x03000046
_0805B278: .4byte 0x03000076
_0805B27C: .4byte 0x03000048
_0805B280: .4byte gWinRegs
_0805B284: .4byte 0x0000F0F0
_0805B288:
	ldr r2, _0805B314 @ =gWinRegs
	mov r0, r8
	subs r0, #0x15
	lsls r1, r0, #2
	adds r1, r1, r0
	movs r0, #0xf0
	subs r0, r0, r1
	lsls r0, r0, #8
	adds r0, #0xf0
	strh r0, [r2, #2]
_0805B29C:
	adds r1, r7, #0
	adds r1, #0xc0
	ldr r0, [r1]
	cmp r0, #0x1c
	bls _0805B2B8
	movs r0, #0
	str r0, [r1]
	ldr r1, _0805B314 @ =gWinRegs
	ldr r0, _0805B318 @ =0x0000C8F0
	strh r0, [r1, #2]
	ldr r0, _0805B31C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805B320 @ =sub_805B324
	str r0, [r1, #8]
_0805B2B8:
	movs r2, #3
	mov r0, sb
	lsls r1, r0, #1
	adds r0, r7, #0
	adds r0, #0x50
	strb r1, [r0]
	mov r0, sb
	adds r0, #1
	ands r0, r2
	lsls r0, r0, #1
	adds r1, r7, #0
	adds r1, #0x80
	strb r0, [r1]
	mov r0, sb
	adds r0, #3
	ands r0, r2
	lsls r0, r0, #1
	subs r1, #0x60
	strb r0, [r1]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	adds r4, r7, #0
	adds r4, #0x30
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x30
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B314: .4byte gWinRegs
_0805B318: .4byte 0x0000C8F0
_0805B31C: .4byte gCurTask
_0805B320: .4byte sub_805B324

	thumb_func_start sub_805B324
sub_805B324: @ 0x0805B324
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _0805B37C @ =gUnknown_08688602
	mov r0, sp
	movs r2, #6
	bl memcpy
	ldr r0, _0805B380 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r1, _0805B384 @ =0x030000C4
	adds r0, r2, r1
	ldrh r1, [r0]
	ldrb r0, [r0]
	lsrs r4, r0, #4
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	lsrs r0, r0, #8
	mov sl, r0
	ldr r1, _0805B388 @ =0x030000C6
	adds r0, r2, r1
	ldrb r1, [r0]
	cmp r1, #0
	bne _0805B398
	ldr r0, _0805B38C @ =0x0000FFF8
	strh r0, [r5, #0x16]
	ldr r0, _0805B390 @ =0x03000046
	adds r1, r2, r0
	movs r0, #0x78
	strh r0, [r1]
	ldr r0, _0805B394 @ =0x03000076
	adds r1, r2, r0
	movs r0, #0xf8
	strh r0, [r1]
	movs r6, #0
	b _0805B434
	.align 2, 0
_0805B37C: .4byte gUnknown_08688602
_0805B380: .4byte gCurTask
_0805B384: .4byte 0x030000C4
_0805B388: .4byte 0x030000C6
_0805B38C: .4byte 0x0000FFF8
_0805B390: .4byte 0x03000046
_0805B394: .4byte 0x03000076
_0805B398:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805B3A6
	movs r3, #1
	movs r2, #0xff
	b _0805B3B6
_0805B3A6:
	movs r3, #0
	movs r2, #1
	movs r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
_0805B3B6:
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	lsls r6, r2, #0x18
	cmp r7, #4
	bne _0805B416
	lsls r2, r3, #1
	adds r2, r2, r3
	mov r1, sp
	adds r0, r1, r2
	ldrb r0, [r0]
	add r0, sl
	movs r3, #3
	ands r0, r3
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x50
	strb r0, [r1]
	mov r0, sp
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	add r0, sl
	ands r0, r3
	lsls r0, r0, #1
	adds r1, #0x30
	strb r0, [r1]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	add r0, sl
	ands r0, r3
	lsls r0, r0, #1
	subs r1, #0x60
	strb r0, [r1]
	asrs r1, r6, #0x11
	ldrh r0, [r5, #0x16]
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	adds r2, r5, #0
	adds r2, #0x46
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	adds r2, #0x30
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
_0805B416:
	cmp r7, #8
	bgt _0805B434
	asrs r1, r6, #0x14
	ldrh r0, [r5, #0x16]
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	adds r2, r5, #0
	adds r2, #0x46
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r2, #0x30
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_0805B434:
	asrs r1, r6, #0x18
	cmp r1, #1
	bne _0805B448
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	cmp r0, #3
	bgt _0805B45C
	movs r2, #1
	b _0805B45C
_0805B448:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0805B45A
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r2, #1
	cmp r0, #3
	bgt _0805B45C
_0805B45A:
	movs r2, #0
_0805B45C:
	adds r7, r5, #0
	adds r7, #0xc8
	ldrb r1, [r7]
	adds r6, r2, #0
	subs r0, r6, #1
	add r0, sl
	movs r2, #3
	mov sb, r2
	ands r0, r2
	asrs r1, r0
	movs r0, #1
	mov r8, r0
	ands r1, r0
	cmp r1, #0
	beq _0805B490
	ldrh r0, [r5, #0x16]
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0xa8
	strh r1, [r0]
	subs r0, #0x18
	bl DisplaySprite
_0805B490:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldrb r1, [r7]
	mov r2, sl
	adds r0, r2, r6
	mov r2, sb
	ands r0, r2
	asrs r1, r0
	mov r0, r8
	ands r1, r0
	cmp r1, #0
	beq _0805B4CC
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x48
	ldrh r1, [r0]
	adds r0, #0x60
	strh r1, [r0]
	subs r0, #0x18
	bl DisplaySprite
_0805B4CC:
	adds r4, r5, #0
	adds r4, #0x30
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrb r1, [r7]
	adds r0, r6, #1
	add r0, sl
	mov r2, sb
	ands r0, r2
	asrs r1, r0
	mov r0, r8
	ands r1, r0
	cmp r1, #0
	beq _0805B50C
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x78
	ldrh r1, [r0]
	adds r0, #0x30
	strh r1, [r0]
	subs r0, #0x18
	bl DisplaySprite
_0805B50C:
	adds r4, r5, #0
	adds r4, #0x60
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_805B52C
Task_805B52C: @ 0x0805B52C
	push {r4, r5, lr}
	sub sp, #0x40
	ldr r1, _0805B564 @ =gUnknown_08688608
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	ldr r0, _0805B568 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x18]
	adds r0, #1
	str r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x21
	ble _0805B570
	movs r0, #0
	str r0, [r5, #0x18]
	movs r0, #0x70
	strh r0, [r5, #0xc]
	ldr r0, _0805B56C @ =sub_805B694
	str r0, [r2, #8]
	b _0805B666
	.align 2, 0
_0805B564: .4byte gUnknown_08688608
_0805B568: .4byte gCurTask
_0805B56C: .4byte sub_805B694
_0805B570:
	cmp r4, #0xd
	ble _0805B59C
	movs r0, #0x67
	muls r0, r4, r0
	movs r1, #0x6e
	bl Div
	ldr r2, _0805B598 @ =gSineTable
	subs r0, #0xa
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #0x40
	strh r0, [r5, #0xc]
	b _0805B666
	.align 2, 0
_0805B598: .4byte gSineTable
_0805B59C:
	cmp r4, #0xa
	ble _0805B5A6
	movs r0, #0
	strh r0, [r5, #0xa]
	b _0805B666
_0805B5A6:
	lsls r0, r4, #8
	movs r1, #0xa
	bl Div
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	subs r1, r1, r0
	strh r1, [r5, #0xa]
	cmp r4, #1
	bne _0805B666
	ldrh r0, [r5, #0x1c]
	movs r3, #0xc0
	lsls r3, r3, #2
	ands r3, r0
	lsrs r3, r3, #8
	add r0, sp, #0x10
	add r4, sp, #0x3c
	movs r1, #0x27
	strb r1, [r4]
	mov r2, sp
	adds r2, #0x3b
	movs r1, #0
	strb r1, [r2]
	ldr r1, _0805B68C @ =gUiGraphics
	mov ip, r1
	ldrb r2, [r4]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	mov r2, ip
	adds r2, #4
	adds r1, r1, r2
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #1
	ldr r1, [r1]
	adds r1, r1, r2
	str r1, [r0, #0x20]
	ldr r1, _0805B690 @ =0x06010020
	str r1, [r0, #0xc]
	movs r1, #8
	str r1, [r0, #0x24]
	add r2, sp, #0x38
	movs r1, #0xf
	strb r1, [r2]
	adds r2, #2
	movs r1, #0xc
	strb r1, [r2]
	ldrb r2, [r4]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	mov r2, ip
	adds r2, #8
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #4]
	ldrb r2, [r4]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	mov r2, ip
	adds r2, #0xc
	adds r1, r1, r2
	ldr r1, [r1]
	strb r1, [r0, #8]
	ldrb r2, [r4]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	mov r2, ip
	adds r2, #0x10
	adds r1, r1, r2
	ldr r1, [r1]
	strb r1, [r0, #9]
	ldrb r2, [r4]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	mov r2, ip
	adds r2, #0x14
	adds r1, r1, r2
	ldr r1, [r1]
	strb r1, [r0, #0xa]
	ldrb r2, [r4]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	mov r2, ip
	adds r2, #0x18
	adds r1, r1, r2
	ldr r1, [r1]
	strb r1, [r0, #0xb]
	bl sub_80528AC
_0805B666:
	mov r0, sp
	adds r1, r5, #0
	bl sub_8052F78
	ldrh r0, [r5, #0xc]
	adds r0, #0x20
	strh r0, [r5, #0xc]
	add r0, sp, #8
	adds r1, r5, #0
	bl sub_8052F78
	ldrh r0, [r5, #0xc]
	subs r0, #0x20
	strh r0, [r5, #0xc]
	add sp, #0x40
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B68C: .4byte gUiGraphics
_0805B690: .4byte 0x06010020

	thumb_func_start sub_805B694
sub_805B694: @ 0x0805B694
	push {r4, r5, r6, lr}
	sub sp, #0x40
	add r4, sp, #0x30
	ldr r1, _0805B7A0 @ =gUnknown_08688608
	adds r0, r4, #0
	movs r2, #0x10
	bl memcpy
	ldr r0, _0805B7A4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r0, #0
	strh r0, [r5, #0xa]
	ldrb r1, [r5, #0x1c]
	adds r6, r4, #0
	cmp r1, #0
	beq _0805B7B0
	adds r0, r1, #0
	subs r0, #0x7f
	cmp r0, #0
	bge _0805B6C8
	movs r0, #0x7f
	subs r0, r0, r1
_0805B6C8:
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	movs r0, #0xa8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0xc]
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0805B79A
	ldrh r0, [r5, #0x1c]
	movs r1, #0xc0
	lsls r1, r1, #2
	ands r1, r0
	lsrs r3, r1, #8
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x80
	ble _0805B6F4
	adds r3, #1
_0805B6F4:
	movs r0, #3
	ands r3, r0
	add r2, sp, #0x2c
	movs r0, #0x27
	strb r0, [r2]
	mov r1, sp
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0805B7A8 @ =gUiGraphics
	mov ip, r0
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #4
	adds r0, r0, r1
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #1
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, _0805B7AC @ =0x06010020
	str r0, [sp, #0xc]
	movs r0, #8
	str r0, [sp, #0x24]
	add r1, sp, #0x28
	movs r0, #0xf
	strb r0, [r1]
	adds r1, #2
	movs r0, #0xc
	strb r0, [r1]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r3, sp
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #8]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #9]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #0xa]
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #0xb]
	mov r0, sp
	bl sub_80528AC
_0805B79A:
	strh r4, [r5, #0x1e]
	b _0805B7B4
	.align 2, 0
_0805B7A0: .4byte gUnknown_08688608
_0805B7A4: .4byte gCurTask
_0805B7A8: .4byte gUiGraphics
_0805B7AC: .4byte 0x06010020
_0805B7B0:
	movs r0, #0x70
	strh r0, [r5, #0xc]
_0805B7B4:
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	cmp r0, #0x6f
	bgt _0805B7C0
	movs r0, #0x70
	strh r0, [r5, #0xc]
_0805B7C0:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_8052F78
	ldrh r0, [r5, #0xc]
	adds r0, #0x20
	strh r0, [r5, #0xc]
	add r0, sp, #0x38
	adds r1, r5, #0
	bl sub_8052F78
	ldrh r0, [r5, #0xc]
	subs r0, #0x20
	strh r0, [r5, #0xc]
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_805B7E4
sub_805B7E4: @ 0x0805B7E4
	push {r4, r5, lr}
	ldr r0, _0805B81C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	ldrh r1, [r3, #0x28]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	lsrs r1, r0, #8
	ldr r0, _0805B820 @ =gPressedKeys
	ldrh r2, [r0]
	adds r5, r0, #0
	cmp r2, #0
	beq _0805B850
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0805B828
	cmp r1, #0
	bne _0805B828
	ldr r2, _0805B824 @ =0x03000039
	adds r0, r4, r2
	strb r1, [r0]
	b _0805B850
	.align 2, 0
_0805B81C: .4byte gCurTask
_0805B820: .4byte gPressedKeys
_0805B824: .4byte 0x03000039
_0805B828:
	adds r3, #0x39
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _0805B850
	ldr r1, _0805B848 @ =gUnknown_08688618
	adds r2, r0, #0
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r5]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0805B84C
	adds r0, r2, #1
	b _0805B84E
	.align 2, 0
_0805B848: .4byte gUnknown_08688618
_0805B84C:
	movs r0, #0xff
_0805B84E:
	strb r0, [r3]
_0805B850:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805B858
sub_805B858: @ 0x0805B858
	ldr r0, _0805B874 @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0, #0x24]
	ldr r0, _0805B878 @ =gBldRegs
	strh r1, [r0, #4]
	ldr r0, _0805B87C @ =Task_805AC00
	str r0, [r2, #8]
	bx lr
	.align 2, 0
_0805B874: .4byte gCurTask
_0805B878: .4byte gBldRegs
_0805B87C: .4byte Task_805AC00

	thumb_func_start Task_805B880
Task_805B880: @ 0x0805B880
	push {r4, lr}
	ldr r0, _0805B8B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x18]
	adds r0, #1
	str r0, [r4, #0x18]
	ldr r0, _0805B8B8 @ =gUnknown_086885C4
	adds r1, r4, #0
	bl sub_805321C
	ldr r2, _0805B8BC @ =gUnknown_08688570
	ldrh r1, [r4, #0x1c]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	lsrs r0, r0, #7
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B8B4: .4byte gCurTask
_0805B8B8: .4byte gUnknown_086885C4
_0805B8BC: .4byte gUnknown_08688570

	thumb_func_start Task_805B8C0
Task_805B8C0: @ 0x0805B8C0
	push {r4, r5, lr}
	ldr r0, _0805B920 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, #0xc0
	adds r2, r5, r0
	ldr r0, [r2]
	cmp r0, #4
	bhi _0805B8E8
	ldrh r0, [r4, #0x16]
	subs r0, #0x14
	strh r0, [r4, #0x16]
	ldr r0, _0805B924 @ =0x03000076
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #0x14
	strh r0, [r1]
_0805B8E8:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _0805B928 @ =0x03000030
	adds r4, r5, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _0805B92C @ =0x03000060
	adds r4, r5, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B920: .4byte gCurTask
_0805B924: .4byte 0x03000076
_0805B928: .4byte 0x03000030
_0805B92C: .4byte 0x03000060

	thumb_func_start Task_805B930
Task_805B930: @ 0x0805B930
	push {r4, lr}
	sub sp, #0x10
	ldr r1, _0805B978 @ =gUnknown_08688608
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	ldr r0, _0805B97C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x18]
	adds r0, #1
	str r0, [r4, #0x18]
	movs r0, #0
	strh r0, [r4, #0xa]
	mov r0, sp
	adds r1, r4, #0
	bl sub_805321C
	ldrh r0, [r4, #0xc]
	adds r0, #0x20
	strh r0, [r4, #0xc]
	add r0, sp, #8
	adds r1, r4, #0
	bl sub_805321C
	ldrh r0, [r4, #0xc]
	subs r0, #0x20
	strh r0, [r4, #0xc]
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B978: .4byte gUnknown_08688608
_0805B97C: .4byte gCurTask

    thumb_func_start Task_nullsub_805B980
Task_nullsub_805B980: @ 0x0805B980
    bx lr
    .align 2, 0

	thumb_func_start Task_805B984
Task_805B984: @ 0x0805B984
	push {r4, lr}
	sub sp, #4
	ldr r1, _0805B9D4 @ =gUnknown_08688578
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, _0805B9D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r3, r4
	ldrh r0, [r4, #0x32]
	movs r1, #0xff
	ands r1, r0
	lsrs r1, r1, #6
	ldr r0, _0805B9DC @ =0x03000021
	adds r2, r3, r0
	movs r0, #0xff
	strb r0, [r2]
	ldr r0, _0805B9E0 @ =0x000002D3
	strh r0, [r4, #0xa]
	mov r2, sp
	adds r0, r2, r1
	ldrb r0, [r0]
	ldr r1, _0805B9E4 @ =0x03000020
	adds r3, r3, r1
	strb r0, [r3]
	adds r0, r4, #0
	bl sa2__sub_80036E0
	adds r0, r4, #0
	bl sa2__sub_8003914
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B9D4: .4byte gUnknown_08688578
_0805B9D8: .4byte gCurTask
_0805B9DC: .4byte 0x03000021
_0805B9E0: .4byte 0x000002D3
_0805B9E4: .4byte 0x03000020
