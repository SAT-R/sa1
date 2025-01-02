.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@--- Start of game/stage/collision.c ---

@ NOTE: This is smaller than in SA2!
	thumb_func_start sa2__sub_801E4E4
sa2__sub_801E4E4: @ 0x0803FA74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov sb, r1
	mov sl, r2
	mov r8, r3
	ldr r7, [sp, #0x28]
	cmp r7, #0
	bne _0803FA90
	mov r7, sp
_0803FA90:
	mov r4, sp
	adds r4, #1
	adds r0, r6, #0
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	ldr r5, [sp, #0x2c]
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #0
	bne _0803FB6A
	mov r1, r8
	adds r0, r6, r1
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #0
	bne _0803FB2C
	mov r5, r8
	lsls r5, r5, #1
	adds r0, r6, r5
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	ldr r5, [sp, #0x2c]
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #0
	bne _0803FAEC
	mov r0, r8
	cmp r0, #0
	ble _0803FAE4
	movs r0, #7
	ands r0, r6
	movs r1, #0x18
	subs r0, r1, r0
	b _0803FC54
_0803FAE4:
	movs r0, #7
	ands r0, r6
	adds r0, #0x11
	b _0803FC54
_0803FAEC:
	cmp r1, #8
	bne _0803FB0C
	ldrb r0, [r4]
	strb r0, [r7]
	mov r1, r8
	cmp r1, #0
	ble _0803FB04
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #0x10
	b _0803FC54
_0803FB04:
	movs r0, #7
	ands r0, r6
	adds r0, #8
	b _0803FC54
_0803FB0C:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _0803FB22
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x10
	b _0803FC54
_0803FB22:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #0x10
	b _0803FC54
_0803FB2C:
	cmp r1, #8
	bne _0803FB4A
	ldrb r0, [r4]
	strb r0, [r7]
	mov r5, r8
	cmp r5, #0
	ble _0803FB44
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #8
	b _0803FC54
_0803FB44:
	movs r0, #7
	ands r0, r6
	b _0803FC54
_0803FB4A:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _0803FB60
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #8
	b _0803FC54
_0803FB60:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #8
	b _0803FC54
_0803FB6A:
	cmp r1, #8
	bne _0803FC3C
	ldrb r0, [r4]
	strb r0, [r7]
	mov r0, r8
	rsbs r0, r0, #0
	str r0, [sp, #4]
	adds r0, r6, r0
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	ldr r5, [sp, #0x2c]
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #8
	bne _0803FC02
	ldrb r0, [r4]
	strb r0, [r7]
	ldr r0, [sp, #4]
	mov r1, r8
	subs r0, r0, r1
	adds r0, r6, r0
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #8
	bne _0803FBC4
	ldrb r0, [r4]
	strb r0, [r7]
	mov r5, r8
	cmp r5, #0
	ble _0803FBBC
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	subs r0, #0x10
	b _0803FC54
_0803FBBC:
	movs r0, #7
	ands r0, r6
	subs r0, #0x18
	b _0803FC54
_0803FBC4:
	cmp r1, #0
	bne _0803FBE2
	mov r0, r8
	cmp r0, #0
	ble _0803FBDA
	movs r0, #7
	ands r0, r6
	movs r1, #9
	rsbs r1, r1, #0
	subs r0, r1, r0
	b _0803FC54
_0803FBDA:
	movs r0, #7
	ands r0, r6
	subs r0, #0x10
	b _0803FC54
_0803FBE2:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _0803FBF8
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #0x10
	b _0803FC54
_0803FBF8:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #0x10
	b _0803FC54
_0803FC02:
	cmp r1, #0
	bne _0803FC1C
	mov r1, r8
	cmp r1, #0
	ble _0803FC14
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	b _0803FC54
_0803FC14:
	movs r0, #8
	rsbs r0, r0, #0
	orrs r0, r6
	b _0803FC54
_0803FC1C:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _0803FC32
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #8
	b _0803FC54
_0803FC32:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #8
	b _0803FC54
_0803FC3C:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _0803FC4E
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r0, r1, r0
	b _0803FC54
_0803FC4E:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
_0803FC54:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

@ In SA2 there is another function here: sub_801E6D4

	thumb_func_start sa2__sub_801EB44
sa2__sub_801EB44: @ 0x0803FC64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	cmp r3, #0
	blt _0803FC8C
	ldr r0, _0803FC88 @ =gRefCollision
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r3, #0
	cmp r0, r1
	ble _0803FC8E
	adds r0, r1, #0
	b _0803FC8E
	.align 2, 0
_0803FC88: .4byte gRefCollision
_0803FC8C:
	movs r0, #0
_0803FC8E:
	adds r3, r0, #0
	cmp r4, #0
	blt _0803FCAC
	ldr r0, _0803FCA8 @ =gRefCollision
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	subs r0, #1
	adds r1, r4, #0
	cmp r1, r0
	ble _0803FCAE
	adds r1, r0, #0
	b _0803FCAE
	.align 2, 0
_0803FCA8: .4byte gRefCollision
_0803FCAC:
	movs r1, #0
_0803FCAE:
	adds r4, r1, #0
	movs r0, #1
	mov r8, r0
	adds r2, r7, #0
	ands r2, r0
	adds r0, r3, #0
	bl sa2__sub_801EF94
	adds r5, r0, #0
	ldr r3, _0803FD44 @ =0x000003FF
	ands r3, r5
	movs r6, #7
	adds r2, r6, #0
	ands r2, r4
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r5
	cmp r0, #0
	beq _0803FCD6
	subs r2, r6, r2
_0803FCD6:
	ldr r0, _0803FD48 @ =gRefCollision
	ldr r4, [r0]
	lsls r0, r3, #3
	ldr r1, [r4]
	adds r0, r0, r2
	adds r1, r1, r0
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r0, #0xf
	ands r2, r0
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0803FCF8
	movs r0, #0x10
	rsbs r0, r0, #0
	orrs r2, r0
_0803FCF8:
	movs r0, #8
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0803FD02
	movs r2, #8
_0803FD02:
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _0803FD24
	lsrs r0, r3, #3
	ldr r1, [r4, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ands r3, r6
	lsls r1, r3, #1
	asrs r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0803FD24
	movs r2, #0
_0803FD24:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _0803FD50
	cmp r2, #8
	beq _0803FD4C
	cmp r2, #0
	beq _0803FD4C
	adds r0, r2, #0
	adds r0, #8
	cmp r2, #0
	ble _0803FD4E
	subs r0, #0x10
	b _0803FD4E
	.align 2, 0
_0803FD44: .4byte 0x000003FF
_0803FD48: .4byte gRefCollision
_0803FD4C:
	adds r0, r2, #0
_0803FD4E:
	adds r2, r0, #0
_0803FD50:
	adds r0, r2, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sa2__sub_801EC3C
sa2__sub_801EC3C: @ 0x0803FD5C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	cmp r4, #0
	blt _0803FD84
	ldr r0, _0803FD80 @ =gRefCollision
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r4, #0
	cmp r0, r1
	ble _0803FD86   @ bls instr. in SA2; BUG_FIX?
	adds r0, r1, #0
	b _0803FD86
	.align 2, 0
_0803FD80: .4byte gRefCollision
_0803FD84:
	movs r0, #0
_0803FD86:
	adds r4, r0, #0
	cmp r3, #0
	blt _0803FDA4
	ldr r0, _0803FDA0 @ =gRefCollision
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	subs r1, r0, #1
	adds r0, r3, #0
	cmp r0, r1
	ble _0803FDA6
	adds r0, r1, #0
	b _0803FDA6
	.align 2, 0
_0803FDA0: .4byte gRefCollision
_0803FDA4:
	movs r0, #0
_0803FDA6:
	adds r3, r0, #0
	movs r0, #1
	mov r8, r0
	adds r2, r7, #0
	ands r2, r0
	adds r0, r4, #0
	adds r1, r3, #0
	bl sa2__sub_801EF94
	adds r5, r0, #0
	ldr r3, _0803FE2C @ =0x000003FF
	ands r3, r5
	movs r6, #7
	adds r2, r6, #0
	ands r2, r4
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _0803FDD0
	subs r2, r6, r2
_0803FDD0:
	ldr r0, _0803FE30 @ =gRefCollision
	ldr r4, [r0]
	lsls r0, r3, #3
	ldr r1, [r4]
	adds r0, r0, r2
	adds r1, r1, r0
	movs r2, #0
	ldrsb r2, [r1, r2]
	asrs r2, r2, #4
	movs r0, #8
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0803FDEC
	movs r2, #8
_0803FDEC:
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _0803FE0E
	lsrs r0, r3, #3
	ldr r1, [r4, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ands r3, r6
	lsls r1, r3, #1
	asrs r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0803FE0E
	movs r2, #0
_0803FE0E:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r5
	cmp r0, #0
	beq _0803FE38
	cmp r2, #8
	beq _0803FE34
	cmp r2, #0
	beq _0803FE34
	adds r0, r2, #0
	adds r0, #8
	cmp r2, #0
	ble _0803FE36
	subs r0, #0x10
	b _0803FE36
	.align 2, 0
_0803FE2C: .4byte 0x000003FF
_0803FE30: .4byte gRefCollision
_0803FE34:
	adds r0, r2, #0
_0803FE36:
	adds r2, r0, #0
_0803FE38:
	adds r0, r2, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sa2__sub_801ED24
sa2__sub_801ED24: @ 0x0803FE44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sl, r3
	cmp r4, #0
	blt _0803FE70
	ldr r0, _0803FE6C @ =gRefCollision
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r4, #0
	cmp r0, r1
	ble _0803FE72
	adds r0, r1, #0
	b _0803FE72
	.align 2, 0
_0803FE6C: .4byte gRefCollision
_0803FE70:
	movs r0, #0
_0803FE72:
	adds r4, r0, #0
	cmp r5, #0
	blt _0803FE90
	ldr r0, _0803FE8C @ =gRefCollision
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	subs r0, #1
	adds r1, r5, #0
	cmp r1, r0
	ble _0803FE92
	adds r1, r0, #0
	b _0803FE92
	.align 2, 0
_0803FE8C: .4byte gRefCollision
_0803FE90:
	movs r1, #0
_0803FE92:
	adds r5, r1, #0
	movs r0, #1
	mov sb, r0
	mov r2, r8
	ands r2, r0
	adds r0, r4, #0
	bl sa2__sub_801EF94
	adds r4, r0, #0
	ldr r6, _0803FF2C @ =0x000003FF
	ands r6, r4
	movs r7, #7
	adds r3, r7, #0
	ands r3, r5
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0803FEBA
	subs r3, r7, r3
_0803FEBA:
	ldr r2, _0803FF30 @ =gRefCollision
	ldr r5, [r2]
	lsls r0, r6, #3
	ldr r1, [r5]
	adds r0, r0, r3
	adds r1, r1, r0
	movs r3, #0
	ldrsb r3, [r1, r3]
	movs r0, #0xf
	ands r3, r0
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _0803FEDC
	movs r0, #0x10
	rsbs r0, r0, #0
	orrs r3, r0
_0803FEDC:
	movs r0, #8
	rsbs r0, r0, #0
	cmp r3, r0
	bne _0803FEE6
	movs r3, #8
_0803FEE6:
	movs r0, #0x80
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0803FF0C
	lsrs r0, r6, #3
	ldr r1, [r5, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r7
	lsls r0, r0, #1
	asrs r1, r0
	mov r0, sb
	ands r1, r0
	cmp r1, #0
	beq _0803FF0C
	movs r3, #0
_0803FF0C:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _0803FF38
	cmp r3, #8
	beq _0803FF34
	cmp r3, #0
	beq _0803FF34
	adds r0, r3, #0
	adds r0, #8
	cmp r3, #0
	ble _0803FF36
	subs r0, #0x10
	b _0803FF36
	.align 2, 0
_0803FF2C: .4byte 0x000003FF
_0803FF30: .4byte gRefCollision
_0803FF34:
	adds r0, r3, #0
_0803FF36:
	adds r3, r0, #0
_0803FF38:
	ldr r0, [r2]
	ldr r0, [r0, #4]
	adds r0, r0, r6
	ldrb r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0803FF54
	movs r0, #0x80
	rsbs r0, r0, #0
	subs r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0803FF54:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _0803FF6E
	cmp r3, #0
	beq _0803FF6A
	rsbs r0, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0803FF6C
_0803FF6A:
	adds r0, r2, #0
_0803FF6C:
	adds r2, r0, #0
_0803FF6E:
	mov r1, sl
	strb r2, [r1]
	adds r0, r3, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_801EE64
sa2__sub_801EE64: @ 0x0803FF84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sl, r3
	cmp r5, #0
	blt _0803FFB0
	ldr r0, _0803FFAC @ =gRefCollision
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r5, #0
	cmp r0, r1
	ble _0803FFB2
	adds r0, r1, #0
	b _0803FFB2
	.align 2, 0
_0803FFAC: .4byte gRefCollision
_0803FFB0:
	movs r0, #0
_0803FFB2:
	adds r5, r0, #0
	cmp r4, #0
	blt _0803FFD0
	ldr r0, _0803FFCC @ =gRefCollision
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	subs r1, r0, #1
	adds r0, r4, #0
	cmp r0, r1
	ble _0803FFD2
	adds r0, r1, #0
	b _0803FFD2
	.align 2, 0
_0803FFCC: .4byte gRefCollision
_0803FFD0:
	movs r0, #0
_0803FFD2:
	adds r4, r0, #0
	movs r0, #1
	mov sb, r0
	mov r2, r8
	ands r2, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sa2__sub_801EF94
	adds r4, r0, #0
	ldr r7, _0804005C @ =0x000003FF
	ands r7, r4
	movs r6, #7
	adds r3, r6, #0
	ands r3, r5
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _0803FFFC
	subs r3, r6, r3
_0803FFFC:
	ldr r2, _08040060 @ =gRefCollision
	ldr r5, [r2]
	lsls r0, r7, #3
	ldr r1, [r5]
	adds r0, r0, r3
	adds r1, r1, r0
	movs r3, #0
	ldrsb r3, [r1, r3]
	asrs r3, r3, #4
	movs r0, #8
	rsbs r0, r0, #0
	cmp r3, r0
	bne _08040018
	movs r3, #8
_08040018:
	movs r0, #0x80
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0804003E
	lsrs r0, r7, #3
	ldr r1, [r5, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r7, #0
	ands r0, r6
	lsls r0, r0, #1
	asrs r1, r0
	mov r0, sb
	ands r1, r0
	cmp r1, #0
	beq _0804003E
	movs r3, #0
_0804003E:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08040068
	cmp r3, #8
	beq _08040064
	cmp r3, #0
	beq _08040064
	adds r0, r3, #0
	adds r0, #8
	cmp r3, #0
	ble _08040066
	subs r0, #0x10
	b _08040066
	.align 2, 0
_0804005C: .4byte 0x000003FF
_08040060: .4byte gRefCollision
_08040064:
	adds r0, r3, #0
_08040066:
	adds r3, r0, #0
_08040068:
	ldr r0, [r2]
	ldr r0, [r0, #4]
	adds r0, r0, r7
	ldrb r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08040080
	rsbs r0, r2, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08040080:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0804009E
	cmp r3, #0
	beq _0804009A
	movs r0, #0x80
	rsbs r0, r0, #0
	subs r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0804009C
_0804009A:
	adds r0, r2, #0
_0804009C:
	adds r2, r0, #0
_0804009E:
	mov r1, sl
	strb r2, [r1]
	adds r0, r3, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_801EF94
sa2__sub_801EF94: @ 0x080400B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r1, #0
	mov sb, r2
	asrs r4, r0, #3
	ldr r5, _080400D0 @ =0x03000408
	ldr r0, [r5]
	cmp r0, r4
	bne _080400D4
	ldr r7, [r5, #8]
	ldr r0, [r5, #4]
	b _080400EC
	.align 2, 0
_080400D0: .4byte 0x03000408
_080400D4:
	adds r0, r4, #0
	movs r1, #0xc
	bl Div
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r1, r4, r1
	str r4, [r5]
	str r0, [r5, #4]
	str r1, [r5, #8]
	adds r7, r1, #0
_080400EC:
	mov r8, r0
	asrs r4, r6, #3
	ldr r6, _08040100 @ =0x03000418
	ldr r0, [r6]
	cmp r0, r4
	bne _08040104
	ldr r5, [r6, #8]
	ldr r3, [r6, #4]
	b _0804011E
	.align 2, 0
_08040100: .4byte 0x03000418
_08040104:
	adds r0, r4, #0
	movs r1, #0xc
	bl Div
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r1, r4, r1
	adds r3, r0, #0
	str r4, [r6]
	str r3, [r6, #4]
	str r1, [r6, #8]
	adds r5, r1, #0
_0804011E:
	ldr r0, _0804015C @ =gRefCollision
	ldr r4, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r4, #0
	adds r1, #0xc
	adds r1, r1, r0
	ldrh r0, [r4, #0x18]
	muls r0, r3, r0
	ldr r1, [r1]
	add r0, r8
	adds r1, r1, r0
	ldrb r2, [r1]
	lsls r1, r5, #3
	lsls r0, r5, #2
	adds r1, r1, r0
	adds r1, r1, r7
	lsls r3, r2, #8
	lsls r2, r2, #5
	lsls r1, r1, #1
	ldr r0, [r4, #8]
	adds r0, r0, r3
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804015C: .4byte gRefCollision

	thumb_func_start sa2__sub_801F044
sa2__sub_801F044: @ 0x08040160
	sub sp, #4
	movs r3, #0
	str r3, [sp]
	ldr r0, _08040188 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0804018C @ =0x03000408
	str r1, [r0, #4]
	ldr r2, _08040190 @ =0x85000003
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08040194 @ =0x03000418
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08040188: .4byte 0x040000D4
_0804018C: .4byte 0x03000408
_08040190: .4byte 0x85000003
_08040194: .4byte 0x03000418

	thumb_func_start sa2__sub_801F07C
sa2__sub_801F07C: @ 0x08040198
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r3
	ldr r6, [sp, #0x1c]
	cmp r6, #0
	bne _080401AC
	mov r6, sp
_080401AC:
	mov r4, sp
	adds r4, #1
	adds r0, r5, #0
	adds r3, r4, #0
	ldr r7, [sp, #0x20]
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #0
	bne _080401D8
	mov r0, r8
	cmp r0, #0
	ble _080401D0
	movs r0, #7
	ands r0, r5
	movs r1, #8
	subs r0, r1, r0
	b _0804020E
_080401D0:
	movs r0, #7
	ands r0, r5
	adds r0, #1
	b _0804020E
_080401D8:
	cmp r1, #8
	bne _080401F6
	ldrb r0, [r4]
	strb r0, [r6]
	mov r7, r8
	cmp r7, #0
	ble _080401EE
	movs r0, #7
	ands r0, r5
	mvns r0, r0
	b _0804020E
_080401EE:
	movs r0, #8
	rsbs r0, r0, #0
	orrs r0, r5
	b _0804020E
_080401F6:
	ldrb r0, [r4]
	strb r0, [r6]
	cmp r1, #0
	ble _08040208
	subs r1, #1
	movs r0, #7
	ands r0, r5
	subs r0, r1, r0
	b _0804020E
_08040208:
	movs r0, #7
	ands r0, r5
	adds r0, r1, r0
_0804020E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_801F100
sa2__sub_801F100: @ 0x0804021C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	ldr r3, [sp, #0xc]
	bl _call_via_r3
	adds r1, r0, #0
	cmp r1, #0
	bne _08040244
	cmp r5, #0
	ble _0804023C
	movs r0, #7
	ands r0, r4
	movs r1, #8
	subs r0, r1, r0
	b _08040270
_0804023C:
	movs r0, #7
	ands r0, r4
	adds r0, #1
	b _08040270
_08040244:
	cmp r1, #8
	bne _0804025C
	cmp r5, #0
	ble _08040254
	movs r0, #7
	ands r0, r4
	mvns r0, r0
	b _08040270
_08040254:
	movs r0, #8
	rsbs r0, r0, #0
	orrs r0, r4
	b _08040270
_0804025C:
	cmp r1, #0
	ble _0804026A
	subs r1, #1
	movs r0, #7
	ands r0, r4
	subs r0, r1, r0
	b _08040270
_0804026A:
	movs r0, #7
	ands r0, r4
	adds r0, r1, r0
_08040270:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
@ --- End of game/stage/collision.c ---
