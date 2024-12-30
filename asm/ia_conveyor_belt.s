.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_ConveyorBelt
Task_ConveyorBelt: @ 0x08083E74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08083ED4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sl, r1
	ldr r0, [r1]
	str r0, [sp, #8]
	ldrb r0, [r1, #8]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	mov r2, sl
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r4, #0
	ldr r6, _08083ED8 @ =gPartner
	ldr r5, _08083EDC @ =gPlayer
_08083EBC:
	cmp r4, #0
	beq _08083EE0
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	ands r1, r0
	ldr r3, [sp, #4]
	lsls r3, r3, #0x10
	mov sb, r3
	mov r0, r8
	lsls r7, r0, #0x10
	b _08083EF0
	.align 2, 0
_08083ED4: .4byte gCurTask
_08083ED8: .4byte gPartner
_08083EDC: .4byte gPlayer
_08083EE0:
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	ands r1, r0
	ldr r2, [sp, #4]
	lsls r2, r2, #0x10
	mov sb, r2
	mov r3, r8
	lsls r7, r3, #0x10
_08083EF0:
	cmp r1, #0
	beq _08083EF6
	b _0808410A
_08083EF6:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov sb, r0
	cmp r4, #0
	beq _08083F10
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08083F1E
	mov r2, r8
	lsls r7, r2, #0x10
	b _0808410A
_08083F10:
	ldr r0, [r5]
	asrs r0, r0, #8
	mov r3, r8
	lsls r7, r3, #0x10
	cmp r1, r0
	ble _08083F1E
	b _0808410A
_08083F1E:
	mov r0, sb
	asrs r1, r0, #0x10
	ldr r2, [sp, #8]
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r4, #0
	beq _08083F3C
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08083F4A
	mov r3, r8
	lsls r7, r3, #0x10
	b _0808410A
_08083F3C:
	ldr r0, [r5]
	asrs r0, r0, #8
	mov r2, r8
	lsls r7, r2, #0x10
	cmp r1, r0
	bge _08083F4A
	b _0808410A
_08083F4A:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	adds r7, r0, #0
	cmp r4, #0
	beq _08083F60
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08083F6A
	b _0808410A
_08083F60:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08083F6A
	b _0808410A
_08083F6A:
	asrs r1, r7, #0x10
	ldr r2, [sp, #8]
	ldrb r0, [r2, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r4, #0
	beq _08083F82
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08083F8C
	b _0808410A
_08083F82:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08083F8C
	b _0808410A
_08083F8C:
	cmp r4, #0
	beq _08083F94
	ldr r0, [r6, #0x10]
	b _08083F96
_08083F94:
	ldr r0, [r5, #0x10]
_08083F96:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08083FA0
	b _0808410A
_08083FA0:
	mov r0, sl
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0808405A
	cmp r4, #0
	beq _08083FBA
	ldr r0, [r6]
	adds r0, #0xa0
	str r0, [r6]
	b _08083FC0
_08083FBA:
	ldr r0, [r5]
	adds r0, #0xa0
	str r0, [r5]
_08083FC0:
	cmp r4, #0
	beq _08083FC8
	ldr r0, [r6]
	b _08083FCA
_08083FC8:
	ldr r0, [r5]
_08083FCA:
	asrs r0, r0, #8
	adds r3, r0, #0
	adds r3, #8
	cmp r4, #0
	beq _08083FD8
	ldr r0, [r6, #4]
	b _08083FDA
_08083FD8:
	ldr r0, [r5, #4]
_08083FDA:
	asrs r1, r0, #8
	cmp r4, #0
	beq _08083FE8
	ldr r0, _08083FE4 @ =gUnknown_03005AD7
	b _08083FEA
	.align 2, 0
_08083FE4: .4byte gUnknown_03005AD7
_08083FE8:
	ldr r0, _08084004 @ =gUnknown_03005A47
_08083FEA:
	ldrb r2, [r0]
	ldr r0, _08084008 @ =sa2__sub_801EB44
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _0808406C
	cmp r4, #0
	beq _0808400C
	ldr r0, [r6]
	b _0808400E
	.align 2, 0
_08084004: .4byte gUnknown_03005A47
_08084008: .4byte sa2__sub_801EB44
_0808400C:
	ldr r0, [r5]
_0808400E:
	asrs r0, r0, #8
	adds r3, r0, #0
	adds r3, #8
	cmp r4, #0
	beq _0808401C
	ldr r0, [r6, #4]
	b _0808401E
_0808401C:
	ldr r0, [r5, #4]
_0808401E:
	asrs r1, r0, #8
	cmp r4, #0
	beq _0808402C
	ldr r0, _08084028 @ =gUnknown_03005AD7
	b _0808402E
	.align 2, 0
_08084028: .4byte gUnknown_03005AD7
_0808402C:
	ldr r0, _0808404C @ =gUnknown_03005A47
_0808402E:
	ldrb r2, [r0]
	ldr r0, _08084050 @ =sa2__sub_801EB44
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	bl sa2__sub_801F100
	lsls r1, r0, #8
	cmp r4, #0
	beq _08084054
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	b _0808406C
	.align 2, 0
_0808404C: .4byte gUnknown_03005A47
_08084050: .4byte sa2__sub_801EB44
_08084054:
	ldr r0, [r5]
	adds r0, r0, r1
	b _0808406A
_0808405A:
	cmp r4, #0
	beq _08084066
	ldr r0, [r6]
	subs r0, #0xa0
	str r0, [r6]
	b _0808406C
_08084066:
	ldr r0, [r5]
	subs r0, #0xa0
_0808406A:
	str r0, [r5]
_0808406C:
	cmp r4, #0
	beq _08084074
	ldr r0, [r6]
	b _08084076
_08084074:
	ldr r0, [r5]
_08084076:
	asrs r0, r0, #8
	adds r3, r0, #0
	subs r3, #8
	cmp r4, #0
	beq _08084084
	ldr r0, [r6, #4]
	b _08084086
_08084084:
	ldr r0, [r5, #4]
_08084086:
	asrs r1, r0, #8
	cmp r4, #0
	beq _08084094
	ldr r0, _08084090 @ =gUnknown_03005AD7
	b _08084096
	.align 2, 0
_08084090: .4byte gUnknown_03005AD7
_08084094:
	ldr r0, _080840B4 @ =gUnknown_03005A47
_08084096:
	ldrb r2, [r0]
	ldr r0, _080840B8 @ =sa2__sub_801EB44
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sa2__sub_801F100
	cmp r0, #0
	bge _0808410A
	cmp r4, #0
	beq _080840BC
	ldr r0, [r6]
	b _080840BE
	.align 2, 0
_080840B4: .4byte gUnknown_03005A47
_080840B8: .4byte sa2__sub_801EB44
_080840BC:
	ldr r0, [r5]
_080840BE:
	asrs r0, r0, #8
	adds r3, r0, #0
	subs r3, #8
	cmp r4, #0
	beq _080840CC
	ldr r0, [r6, #4]
	b _080840CE
_080840CC:
	ldr r0, [r5, #4]
_080840CE:
	asrs r1, r0, #8
	cmp r4, #0
	beq _080840DC
	ldr r0, _080840D8 @ =gUnknown_03005AD7
	b _080840DE
	.align 2, 0
_080840D8: .4byte gUnknown_03005AD7
_080840DC:
	ldr r0, _080840FC @ =gUnknown_03005A47
_080840DE:
	ldrb r2, [r0]
	ldr r0, _08084100 @ =sa2__sub_801EB44
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sa2__sub_801F100
	lsls r1, r0, #8
	cmp r4, #0
	beq _08084104
	ldr r0, [r6]
	subs r0, r0, r1
	str r0, [r6]
	b _0808410A
	.align 2, 0
_080840FC: .4byte gUnknown_03005A47
_08084100: .4byte sa2__sub_801EB44
_08084104:
	ldr r0, [r5]
	subs r0, r0, r1
	str r0, [r5]
_0808410A:
	adds r4, #1
	ldr r0, _08084178 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _0808411A
	b _08083EBC
_0808411A:
	ldr r2, _0808417C @ =gCamera
	ldrh r0, [r2]
	mov r3, sb
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	asrs r0, r7, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08084156
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08084156
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08084166
_08084156:
	mov r2, sl
	ldrb r0, [r2, #8]
	ldr r3, [sp, #8]
	strb r0, [r3]
	ldr r0, _08084180 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08084166:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08084178: .4byte gNumSingleplayerCharacters
_0808417C: .4byte gCamera
_08084180: .4byte gCurTask

@ TODO: Might be the same as SA2?
	thumb_func_start Task_SlowingSnow
Task_SlowingSnow: @ 0x08084184
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080841DC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sl, r1
	ldr r0, [r1]
	mov sb, r0
	ldrb r0, [r1, #8]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	mov r2, sl
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r6, #0
	ldr r2, _080841E0 @ =gPartner
	ldr r7, _080841E4 @ =gPlayer
_080841CA:
	cmp r6, #0
	beq _080841E8
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r4, r8
	lsls r3, r4, #0x10
	b _080841F2
	.align 2, 0
_080841DC: .4byte gCurTask
_080841E0: .4byte gPartner
_080841E4: .4byte gPlayer
_080841E8:
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r0, r8
	lsls r3, r0, #0x10
_080841F2:
	lsls r4, r5, #0x10
	cmp r1, #0
	bne _080842BE
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r3, r0, #0
	cmp r6, #0
	beq _08084210
	ldr r0, [r2]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0808421A
	lsls r4, r5, #0x10
	b _080842BE
_08084210:
	ldr r0, [r7]
	asrs r0, r0, #8
	lsls r4, r5, #0x10
	cmp r1, r0
	bgt _080842BE
_0808421A:
	asrs r1, r3, #0x10
	mov r4, sb
	ldrb r0, [r4, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r6, #0
	beq _08084234
	ldr r0, [r2]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808423E
	lsls r4, r5, #0x10
	b _080842BE
_08084234:
	ldr r0, [r7]
	asrs r0, r0, #8
	lsls r4, r5, #0x10
	cmp r1, r0
	blt _080842BE
_0808423E:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r6, #0
	beq _08084252
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0808425A
	b _080842BE
_08084252:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _080842BE
_0808425A:
	asrs r0, r4, #0x10
	mov ip, r0
	mov r1, sb
	ldrb r0, [r1, #6]
	lsls r0, r0, #3
	adds r1, r0, #0
	add r1, ip
	cmp r6, #0
	beq _08084276
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808427E
	b _080842BE
_08084276:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _080842BE
_0808427E:
	cmp r6, #0
	beq _08084286
	ldr r0, [r2, #0x10]
	b _08084288
_08084286:
	ldr r0, [r7, #0x10]
_08084288:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080842BE
	cmp r6, #0
	beq _0808429A
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	b _0808429E
_0808429A:
	movs r0, #0xc
	ldrsh r1, [r7, r0]
_0808429E:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	subs r0, r0, r1
	movs r1, #0x64
	str r2, [sp]
	str r3, [sp, #4]
	bl Div
	ldr r2, [sp]
	ldr r3, [sp, #4]
	cmp r6, #0
	beq _080842BC
	strh r0, [r2, #0xc]
	b _080842BE
_080842BC:
	strh r0, [r7, #0xc]
_080842BE:
	adds r6, #1
	ldr r0, _08084324 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _080842CE
	b _080841CA
_080842CE:
	ldr r2, _08084328 @ =gCamera
	ldrh r0, [r2]
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	asrs r0, r4, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r1, r1, r2
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08084304
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08084304
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08084314
_08084304:
	mov r4, sl
	ldrb r0, [r4, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0808432C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08084314:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08084324: .4byte gNumSingleplayerCharacters
_08084328: .4byte gCamera
_0808432C: .4byte gCurTask

	thumb_func_start CreateEntity_ConveyorBelt
CreateEntity_ConveyorBelt: @ 0x08084330
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	ldr r0, _08084368 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _08084370
	ldr r0, _0808436C @ =Task_SlowingSnow
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	b _08084382
	.align 2, 0
_08084368: .4byte gCurrentLevel
_0808436C: .4byte Task_SlowingSnow
_08084370:
	ldr r0, _080843B0 @ =Task_ConveyorBelt
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
_08084382:
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	strh r6, [r0, #4]
	strh r5, [r0, #6]
	str r4, [r0]
	ldrb r1, [r4]
	strb r1, [r0, #8]
	strb r7, [r0, #9]
	ldrb r0, [r4, #3]
	ldr r1, _080843B4 @ =0x0300003C
	adds r2, r2, r1
	strb r0, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r4]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080843B0: .4byte Task_ConveyorBelt
_080843B4: .4byte 0x0300003C
