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

.if 0
.endif
