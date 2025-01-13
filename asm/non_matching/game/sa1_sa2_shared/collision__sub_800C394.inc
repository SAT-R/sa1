.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0     @ r6 = Sprite *
	adds r5, r3, #0     @ r5 = r3 = p
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10  @ r7 = s16 sx
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2          @ r8 = s16 sy
	ldrb r4, [r5, #0xe]
	adds r4, #5
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r2, [r5, #0xf]
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
	ldr r1, [r6, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800C3DE
	b _0800C546
_0800C3DE:
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	mov sb, r1
	cmp r0, #0
	beq _0800C3EC
	b _0800C546
_0800C3EC:
	movs r0, #6
	mov r1, sb
	ands r0, r1
	cmp r0, #6
	bne _0800C488
	movs r2, #0xa
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _0800C488
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2c
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r5]
	asrs r0, r0, #8
	mov r1, sp
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800C432
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800C442
	cmp r2, r1
	blt _0800C488
_0800C432:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800C488
_0800C442:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2d
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	mov r1, sp
	movs r4, #1
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800C478
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800C534
	cmp r2, r1
	blt _0800C488
_0800C478:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	bge _0800C534
_0800C488:
	ldr r2, [r5, #0x64]
	ldr r1, [r2, #0x3c]
	movs r0, #1
	rsbs r0, r0, #0
	mov ip, r2
	cmp r1, r0
	beq _0800C546
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2c
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r5]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x40
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800C4CC
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800C4DE
	cmp r2, r1
	blt _0800C546
_0800C4CC:
	mov r0, ip
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800C546
_0800C4DE:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	mov r3, ip
	adds r3, #0x41
	movs r4, #0
	ldrsb r4, [r3, r4]
	adds r3, r0, r4
	cmp r2, r3
	bgt _0800C518
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r3
	bge _0800C52A
	cmp r2, r3
	blt _0800C546
_0800C518:
	mov r0, ip
	adds r0, #0x43
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r2
	blt _0800C546
_0800C52A:
	movs r0, #6
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	bne _0800C546
_0800C534:
	ldrh r1, [r5, #0xa]
	movs r2, #0xa
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _0800C542
	rsbs r0, r1, #0
	strh r0, [r5, #0xa]
_0800C542:
	movs r0, #1
	b _0800C548
_0800C546:
	movs r0, #0
_0800C548:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
    
.syntax divided
