.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	mov r8, r0
	adds r7, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x1c]
	ldrb r3, [r7, #0xe]
	adds r3, #5
	rsbs r0, r3, #0
	add r5, sp, #0x10
	movs r6, #0
	strb r0, [r5]
	ldrb r2, [r7, #0xf]
	movs r0, #1
	subs r0, r0, r2
	mov r1, sp
	adds r1, #0x11
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x12
	strb r3, [r0]
	subs r2, #1
	adds r0, #1
	strb r2, [r0]
	add r0, sp, #0xc
	adds r1, r5, #0
	movs r2, #4
	bl memcpy
	ldrb r4, [r7, #0xe]
	rsbs r0, r4, #0
	add r1, sp, #0x14
	strb r0, [r1]
	ldrb r3, [r7, #0xf]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #0x15
	strb r2, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, r5, #0
	movs r2, #4
	bl memcpy
	str r6, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x20]
	mov r2, r8
	ldr r1, [r2, #0x28]
	subs r0, #1
	cmp r1, r0
	beq _0800A8D6
	ldr r2, [r7, #0x10]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0800A8DA
_0800A8D6:
	movs r0, #0
	b _0800ABDA
_0800A8DA:
	movs r4, #2
	adds r1, r2, #0
	ands r1, r4
	str r1, [sp, #0x18]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0800A900
	ldr r0, [r7, #0x28]
	cmp r0, r8
	bne _0800A900
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r7, #0x10]
	orrs r1, r4
	str r1, [sp, #0x18]
	movs r3, #1
	str r3, [sp, #0x20]
_0800A900:
	movs r1, #2
	ldr r0, [sp, #0x18]
	ands r0, r1
	mov r4, sb
	lsls r4, r4, #0x10
	mov sb, r4
	movs r1, #0x2c
	add r1, r8
	mov sl, r1
	cmp r0, #0
	bne _0800A918
	b _0800AAAA
_0800A918:
	asrs r0, r4, #0x10
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r6, r0, r2
	ldr r1, [r7]
	asrs r0, r1, #8
	mov r4, sp
	movs r3, #0x10
	ldrsb r3, [r4, r3]
	adds r4, r0, r3
	mov ip, r1
	cmp r6, r4
	bgt _0800A948
	mov r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r6, r0
	cmp r0, r4
	bge _0800A956
	cmp r6, r4
	blt _0800A9BA
_0800A948:
	mov r1, sp
	movs r0, #0x12
	ldrsb r0, [r1, r0]
	subs r0, r0, r3
	adds r0, r4, r0
	cmp r0, r6
	blt _0800A9BA
_0800A956:
	ldr r2, [sp, #0x1c]
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	mov r4, r8
	adds r4, #0x2d
	movs r2, #0
	ldrsb r2, [r4, r2]
	adds r6, r0, r2
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	mov r4, sp
	movs r3, #0x11
	ldrsb r3, [r4, r3]
	adds r4, r0, r3
	adds r5, r1, #0
	cmp r6, r4
	bgt _0800A98E
	mov r0, r8
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r6, r0
	cmp r0, r4
	bge _0800A99C
	cmp r6, r4
	blt _0800A9BA
_0800A98E:
	mov r1, sp
	movs r0, #0x13
	ldrsb r0, [r1, r0]
	subs r0, r0, r3
	adds r0, r4, r0
	cmp r0, r6
	blt _0800A9BA
_0800A99C:
	mov r2, sb
	asrs r1, r2, #0x10
	asrs r2, r5, #0x10
	ldr r3, [sp, #0x20]
	str r3, [sp]
	str r7, [sp, #4]
	add r0, sp, #0x18
	str r0, [sp, #8]
	mov r0, r8
	add r3, sp, #0x10
	bl sub_800C934
	cmp r0, #0
	beq _0800AAAA
	b _0800ABD8
_0800A9BA:
	mov r4, sb
	asrs r0, r4, #0x10
	mov r1, sl
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r2, r0, r4
	mov r3, ip
	asrs r1, r3, #8
	add r0, sp, #0xc
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r1, r1, r5
	cmp r2, r1
	bgt _0800A9EC
	mov r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _0800A9FC
	cmp r2, r1
	blt _0800AACA
_0800A9EC:
	add r0, sp, #0xc
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _0800AAAA
_0800A9FC:
	ldr r4, [sp, #0x1c]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	adds r1, #0x2d
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	add r1, sp, #0xc
	movs r4, #1
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800AA32
	mov r0, r8
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800AA42
	cmp r2, r1
	blt _0800AAAA
_0800AA32:
	add r0, sp, #0xc
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800AAAA
_0800AA42:
	ldr r0, [r7]
	asrs r0, r0, #8
	mov r2, sb
	asrs r1, r2, #0x10
	cmp r0, r1
	bgt _0800AA78
	movs r3, #8
	ldrsh r0, [r7, r3]
	cmp r0, #0
	blt _0800AAAA
	movs r0, #0
	strh r0, [r7, #8]
	mov r4, sl
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, r1, r0
	add r1, sp, #0xc
	ldrb r1, [r1, #2]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r7]
	ldr r0, [sp, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xa
	b _0800AAA6
_0800AA78:
	movs r2, #8
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bgt _0800AAAA
	movs r0, #0
	strh r0, [r7, #8]
	mov r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	add r1, sp, #0xc
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	adds r0, #1
	lsls r0, r0, #8
	str r0, [r7]
	ldr r0, [sp, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xb
_0800AAA6:
	orrs r0, r1
	str r0, [sp, #0x18]
_0800AAAA:
	mov r3, sb
	asrs r2, r3, #0x10
	mov r4, sl
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r2, r2, r0
	ldr r3, [r7]
	asrs r1, r3, #8
	add r0, sp, #0xc
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	mov ip, r3
	cmp r2, r1
	bgt _0800AAF8
_0800AACA:
	mov r0, sb
	asrs r2, r0, #0x10
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov r1, r8
	adds r1, #0x2e
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r4, r2, r0
	adds r1, r1, r2
	mov r3, ip
	asrs r2, r3, #8
	add r0, sp, #0xc
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	cmp r1, r2
	bge _0800AB14
	cmp r4, r2
	blt _0800ABD8
_0800AAF8:
	mov r4, ip
	asrs r1, r4, #8
	add r0, sp, #0xc
	movs r2, #2
	ldrsb r2, [r0, r2]
	adds r2, r2, r1
	mov r1, sb
	asrs r0, r1, #0x10
	mov r3, sl
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r0, r0, r1
	cmp r2, r0
	blt _0800ABD8
_0800AB14:
	ldr r4, [sp, #0x1c]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r4, r8
	adds r4, #0x2d
	ldrb r4, [r4]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	adds r2, r0, r4
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	add r1, sp, #0xc
	movs r5, #1
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _0800AB4C
	mov r0, r8
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _0800AB5C
	cmp r2, r1
	blt _0800ABD8
_0800AB4C:
	add r0, sp, #0xc
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _0800ABD8
_0800AB5C:
	mov r1, ip
	asrs r0, r1, #8
	mov r2, sb
	asrs r1, r2, #0x10
	cmp r0, r1
	bgt _0800AB9C
	movs r3, #8
	ldrsh r4, [r7, r3]
	cmp r4, #0
	blt _0800ABD8
	ldr r3, [sp, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r3, r0
	str r3, [sp, #0x18]
	cmp r4, #0
	ble _0800ABD8
	movs r0, #0x20
	orrs r3, r0
	subs r0, #0x22
	ands r3, r0
	str r3, [sp, #0x18]
	mov r4, sl
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, r1, r0
	add r1, sp, #0xc
	ldrb r1, [r1, #2]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	b _0800ABD4
_0800AB9C:
	movs r0, #8
	ldrsh r4, [r7, r0]
	cmp r4, #0
	bgt _0800ABD8
	ldr r3, [sp, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r3, r0
	str r3, [sp, #0x18]
	cmp r4, #0
	bge _0800ABD8
	movs r0, #0x20
	orrs r3, r0
	movs r0, #1
	orrs r3, r0
	str r3, [sp, #0x18]
	mov r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	add r1, sp, #0xc
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	adds r0, #1
_0800ABD4:
	lsls r0, r0, #8
	str r0, [r7]
_0800ABD8:
	ldr r0, [sp, #0x18]
_0800ABDA:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
