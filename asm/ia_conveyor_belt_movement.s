.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_ConveyorBeltMvt
Task_ConveyorBeltMvt: @ 0x08083E74
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
	ldr r0, _08083FE4 @ =gPartner + 0x27
	b _08083FEA
	.align 2, 0
_08083FE4: .4byte gPartner + 0x27
_08083FE8:
	ldr r0, _08084004 @ =gPlayer + 0x27
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
_08084004: .4byte gPlayer + 0x27
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
	ldr r0, _08084028 @ =gPartner + 0x27
	b _0808402E
	.align 2, 0
_08084028: .4byte gPartner + 0x27
_0808402C:
	ldr r0, _0808404C @ =gPlayer + 0x27
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
_0808404C: .4byte gPlayer + 0x27
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
	ldr r0, _08084090 @ =gPartner + 0x27
	b _08084096
	.align 2, 0
_08084090: .4byte gPartner + 0x27
_08084094:
	ldr r0, _080840B4 @ =gPlayer + 0x27
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
_080840B4: .4byte gPlayer + 0x27
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
	ldr r0, _080840D8 @ =gPartner + 0x27
	b _080840DE
	.align 2, 0
_080840D8: .4byte gPartner + 0x27
_080840DC:
	ldr r0, _080840FC @ =gPlayer + 0x27
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
_080840FC: .4byte gPlayer + 0x27
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

.if 0
.endif
