.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_800A768
sub_800A768: @ 0x0800A768
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov ip, r3
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r0, #0
	mov r8, r0
	mov r0, ip
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _0800A842
	mov r0, ip
	adds r0, #0x40
	ldrb r0, [r0]
	subs r0, #0x57
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0800A842
	mov r1, ip
	ldr r3, [r1, #0x64]
	ldr r1, [r3, #0x3c]
	movs r0, #1
	rsbs r0, r0, #0
	adds r5, r3, #0
	cmp r1, r0
	beq _0800A842
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2c
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r3, r0, r2
	mov r1, ip
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x40
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r3, r1
	bgt _0800A7E4
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r1
	bge _0800A7F6
	cmp r3, r1
	blt _0800A842
_0800A7E4:
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r3
	blt _0800A842
_0800A7F6:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	mov r3, ip
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	movs r3, #0x41
	ldrsb r4, [r3, r5]
	adds r3, r0, r4
	cmp r2, r3
	bgt _0800A82C
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r3
	bge _0800A83E
	cmp r2, r3
	blt _0800A842
_0800A82C:
	adds r0, r5, #0
	adds r0, #0x43
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r2
	blt _0800A842
_0800A83E:
	movs r0, #1
	mov r8, r0
_0800A842:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A850
sub_800A850: @ 0x0800A850
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

	thumb_func_start sub_800ABEC
sub_800ABEC: @ 0x0800ABEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	str r0, [sp, #0xc]
	adds r7, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x10]
	ldrb r3, [r7, #0xe]
	adds r3, #5
	rsbs r0, r3, #0
	add r5, sp, #4
	strb r0, [r5]
	ldrb r2, [r7, #0xf]
	movs r0, #1
	subs r0, r0, r2
	mov r1, sp
	adds r1, #5
	strb r0, [r1]
	mov r0, sp
	adds r0, #6
	strb r3, [r0]
	subs r2, #1
	adds r0, #1
	strb r2, [r0]
	mov r0, sp
	adds r1, r5, #0
	movs r2, #4
	bl memcpy
	ldrb r4, [r7, #0xe]
	rsbs r0, r4, #0
	add r1, sp, #8
	strb r0, [r1]
	ldrb r3, [r7, #0xf]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #9
	strb r2, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, r5, #0
	movs r2, #4
	bl memcpy
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #0x28]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _0800AC68
	b _0800AE68
_0800AC68:
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	ands r0, r1
	adds r6, r1, #0
	cmp r0, #0
	beq _0800AC76
	b _0800AE68
_0800AC76:
	ldr r1, [r7, #0x64]
	ldr r0, [r1, #0x3c]
	adds r5, r1, #0
	cmp r0, r2
	beq _0800AD36
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0xc]
	adds r1, #0x2c
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r7]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x40
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800ACB8
	ldr r0, [sp, #0xc]
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800ACCA
	cmp r2, r1
	blt _0800AD36
_0800ACB8:
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800AD36
_0800ACCA:
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0xc]
	adds r1, #0x2d
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r3, r0, r4
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x41
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	cmp r3, r2
	bgt _0800AD04
	ldr r0, [sp, #0xc]
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r2
	bge _0800AD16
	cmp r3, r2
	blt _0800AD36
_0800AD04:
	adds r0, r5, #0
	adds r0, #0x43
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r3
	blt _0800AD36
_0800AD16:
	movs r0, #0x20
	ldr r5, [sp, #0x14]
	orrs r5, r0
	str r5, [sp, #0x14]
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	bne _0800AD28
	b _0800AFCA
_0800AD28:
	ldrh r1, [r7, #0xa]
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	cmp r0, #0
	ble _0800AD36
	rsbs r0, r1, #0
	strh r0, [r7, #0xa]
_0800AD36:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	bne _0800AD40
	b _0800AFCA
_0800AD40:
	mov r3, r8
	lsls r3, r3, #0x10
	str r3, [sp, #0x1c]
	asrs r4, r3, #0x10
	ldr r5, [sp, #0xc]
	adds r5, #0x2c
	mov r8, r5
	movs r6, #0
	ldrsb r6, [r5, r6]
	mov ip, r6
	ldr r0, [sp, #0xc]
	adds r0, #0x2e
	mov sb, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	str r1, [sp, #0x20]
	adds r0, r1, #0
	add r0, ip
	asrs r0, r0, #1
	adds r0, r4, r0
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x10]
	lsls r2, r2, #0x10
	str r2, [sp, #0x3c]
	asrs r2, r2, #0x10
	ldr r5, [sp, #0xc]
	adds r5, #0x2d
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldr r3, [sp, #0xc]
	adds r3, #0x2f
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r2, r2, r0
	str r2, [sp, #0x24]
	add r4, ip
	ldr r1, [r7]
	asrs r0, r1, #8
	mov r6, sp
	ldrb r6, [r6, #4]
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	mov sl, r6
	adds r2, r0, r6
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x28]
	mov r6, r8
	str r6, [sp, #0x2c]
	str r1, [sp, #0x38]
	mov r0, sb
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x3c]
	mov r8, r1
	str r5, [sp, #0x30]
	mov sb, r3
	cmp r4, r2
	bgt _0800ADC8
	ldr r3, [sp, #0x20]
	mov r5, ip
	subs r0, r3, r5
	adds r0, r4, r0
	cmp r0, r2
	bge _0800ADDA
	cmp r4, r2
	bge _0800ADC8
	b _0800AEF8
_0800ADC8:
	mov r6, sp
	movs r0, #6
	ldrsb r0, [r6, r0]
	mov r1, sl
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r4
	bge _0800ADDA
	b _0800AEF8
_0800ADDA:
	mov r2, r8
	asrs r0, r2, #0x10
	ldr r3, [sp, #0x30]
	movs r5, #0
	ldrsb r5, [r3, r5]
	adds r4, r0, r5
	ldr r1, [r7, #4]
	asrs r0, r1, #8
	mov r2, sp
	movs r6, #5
	ldrsb r6, [r2, r6]
	adds r2, r0, r6
	adds r3, r1, #0
	cmp r4, r2
	bgt _0800AE0C
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	subs r0, r0, r5
	adds r0, r4, r0
	cmp r0, r2
	bge _0800AE1A
	cmp r4, r2
	bge _0800AE0C
	b _0800AEF8
_0800AE0C:
	mov r5, sp
	movs r0, #7
	ldrsb r0, [r5, r0]
	subs r0, r0, r6
	adds r0, r2, r0
	cmp r0, r4
	blt _0800AEF8
_0800AE1A:
	ldr r2, _0800AE30 @ =gStageFlags
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800AE34
	asrs r0, r3, #8
	ldr r6, [sp, #0x24]
	cmp r0, r6
	ble _0800AE3C
	b _0800AE8C
	.align 2, 0
_0800AE30: .4byte gStageFlags
_0800AE34:
	asrs r0, r3, #8
	ldr r1, [sp, #0x24]
	cmp r0, r1
	blt _0800AE8C
_0800AE3C:
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0800AE6C
	adds r0, r7, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0800AE6C
	ldr r2, [sp, #0x28]
	asrs r1, r2, #0x10
	mov r3, r8
	asrs r2, r3, #0x10
	ldr r0, [sp, #0xc]
	adds r3, r7, #0
	bl sub_80096B0
_0800AE68:
	movs r0, #0
	b _0800AFCC
_0800AE6C:
	ldrh r2, [r7, #0xa]
	movs r5, #0xa
	ldrsh r1, [r7, r5]
	cmp r1, #0
	bge _0800AE78
	b _0800AFCA
_0800AE78:
	movs r0, #8
	ldr r6, [sp, #0x14]
	orrs r6, r0
	str r6, [sp, #0x14]
	cmp r1, #0
	bgt _0800AE86
	b _0800AFCA
_0800AE86:
	rsbs r0, r2, #0
	strh r0, [r7, #0xa]
	b _0800AFCA
_0800AE8C:
	movs r1, #0xa
	ldrsh r0, [r7, r1]
	cmp r0, #0
	blt _0800AE96
	b _0800AFCA
_0800AE96:
	movs r0, #0
	strh r0, [r7, #0xa]
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800AEC8
	mov r2, r8
	asrs r0, r2, #0x10
	mov r5, sb
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	mov r6, sp
	movs r1, #5
	ldrsb r1, [r6, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, _0800AEC4 @ =0xFFFFFF00
	bics r3, r1
	adds r0, r3, r0
	str r0, [r7, #4]
	b _0800AEE8
	.align 2, 0
_0800AEC4: .4byte 0xFFFFFF00
_0800AEC8:
	mov r0, r8
	asrs r1, r0, #0x10
	mov r2, sb
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	mov r5, sp
	movs r0, #5
	ldrsb r0, [r5, r0]
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, _0800AEF4 @ =0xFFFFFF00
	ands r0, r3
	subs r1, r1, r0
	subs r1, r3, r1
	str r1, [r7, #4]
_0800AEE8:
	movs r0, #0x80
	lsls r0, r0, #9
	ldr r6, [sp, #0x14]
	orrs r6, r0
	str r6, [sp, #0x14]
	b _0800AFCA
	.align 2, 0
_0800AEF4: .4byte 0xFFFFFF00
_0800AEF8:
	ldr r1, [sp, #0x28]
	asrs r0, r1, #0x10
	ldr r2, [sp, #0x2c]
	movs r4, #0
	ldrsb r4, [r2, r4]
	adds r2, r0, r4
	ldr r3, [sp, #0x38]
	asrs r1, r3, #8
	mov r0, sp
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, r1, r3
	cmp r2, r1
	bgt _0800AF26
	ldr r5, [sp, #0x34]
	movs r0, #0
	ldrsb r0, [r5, r0]
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _0800AF36
	cmp r2, r1
	blt _0800AFCA
_0800AF26:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0800AFCA
_0800AF36:
	mov r6, r8
	asrs r0, r6, #0x10
	ldr r1, [sp, #0x30]
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	mov r1, sp
	movs r4, #1
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800AF64
	mov r5, sb
	movs r0, #0
	ldrsb r0, [r5, r0]
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800AF74
	cmp r2, r1
	blt _0800AFCA
_0800AF64:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800AFCA
_0800AF74:
	ldr r6, [sp, #0x38]
	asrs r0, r6, #8
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bgt _0800AFA2
	movs r2, #8
	ldrsh r0, [r7, r2]
	cmp r0, #0
	ble _0800AFCA
	movs r0, #0
	strh r0, [r7, #8]
	ldr r3, [sp, #0x28]
	asrs r0, r3, #0x10
	ldr r5, [sp, #0x2c]
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	mov r1, sp
	ldrb r1, [r1, #2]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	b _0800AFC6
_0800AFA2:
	movs r6, #8
	ldrsh r0, [r7, r6]
	cmp r0, #0
	bge _0800AFCA
	movs r0, #0
	strh r0, [r7, #8]
	ldr r1, [sp, #0x28]
	asrs r0, r1, #0x10
	ldr r2, [sp, #0x34]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, sp
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	adds r0, #1
_0800AFC6:
	lsls r0, r0, #8
	str r0, [r7]
_0800AFCA:
	ldr r0, [sp, #0x14]
_0800AFCC:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

@ Checks for collision on the right?
@ Used by Security Gate and Breakable Wall.
	thumb_func_start sub_800AFDC
sub_800AFDC: @ 0x0800AFDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r7, r0, #0
	adds r6, r3, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	movs r0, #0
	str r0, [sp, #0x14]
	ldrb r4, [r6, #0xe]
	adds r4, #5
	rsbs r0, r4, #0
	add r1, sp, #0x10
	strb r0, [r1]
	ldrb r3, [r6, #0xf]
	movs r0, #1
	subs r0, r0, r3
	mov r2, sp
	adds r2, #0x11
	strb r0, [r2]
	mov r0, sp
	adds r0, #0x12
	strb r4, [r0]
	subs r3, #1
	adds r0, #1
	strb r3, [r0]
	add r0, sp, #0xc
	movs r2, #4
	bl memcpy
	ldr r0, [r7, #0x28]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _0800B030
	b _0800B1A4
_0800B030:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	ands r0, r1
	str r1, [sp, #0x18]
	cmp r0, #0
	beq _0800B03E
	b _0800B1A4
_0800B03E:
	lsls r5, r5, #0x10
	str r5, [sp, #0x20]
	mov r0, sb
	lsls r0, r0, #0x10
	mov sl, r0
	ldr r0, [sp, #0x48]
	cmp r0, #0
	bne _0800B050
	b _0800B1A8
_0800B050:
	ldr r1, [r6, #0x64]
	ldr r0, [r1, #0x3c]
	mov ip, r1
	cmp r0, r2
	bne _0800B05C
	b _0800B1A8
_0800B05C:
	asrs r0, r5, #0x10
	adds r3, r7, #0
	adds r3, #0x2c
	movs r5, #0
	ldrsb r5, [r3, r5]
	adds r4, r0, r5
	ldr r2, [r6]
	asrs r1, r2, #8
	mov r0, ip
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	add r1, r8
	str r3, [sp, #0x24]
	str r2, [sp, #0x1c]
	cmp r4, r1
	bgt _0800B098
	adds r0, r7, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r4, r0
	cmp r0, r1
	bge _0800B0B2
	cmp r4, r1
	blt _0800B0FE
_0800B098:
	mov r0, ip
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, r8
	subs r0, r0, r2
	adds r0, r1, r0
	mov r1, sb
	lsls r1, r1, #0x10
	mov sl, r1
	cmp r0, r4
	blt _0800B0FE
_0800B0B2:
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	adds r4, r7, #0
	adds r4, #0x2d
	movs r5, #0
	ldrsb r5, [r4, r5]
	adds r2, r0, r5
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	mov r4, ip
	adds r4, #0x41
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r4, r0, r3
	mov sl, r1
	cmp r2, r4
	bgt _0800B0EC
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r4
	bge _0800B184
	cmp r2, r4
	blt _0800B0FE
_0800B0EC:
	mov r0, ip
	adds r0, #0x43
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r4, r0
	cmp r0, r2
	bge _0800B184
_0800B0FE:
	ldr r1, [sp, #0x20]
	asrs r0, r1, #0x10
	ldr r2, [sp, #0x24]
	movs r3, #0
	ldrsb r3, [r2, r3]
	adds r4, r0, r3
	ldr r0, [sp, #0x1c]
	asrs r1, r0, #8
	add r0, sp, #0xc
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, r1, r2
	cmp r4, r1
	bgt _0800B130
	adds r0, r7, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r4, r0
	cmp r0, r1
	bge _0800B140
	cmp r4, r1
	blt _0800B1A8
_0800B130:
	add r0, sp, #0xc
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r4
	blt _0800B1A8
_0800B140:
	mov r1, sl
	asrs r0, r1, #0x10
	adds r1, r7, #0
	adds r1, #0x2d
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	add r1, sp, #0xc
	movs r4, #1
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800B174
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B184
	cmp r2, r1
	blt _0800B1A8
_0800B174:
	add r0, sp, #0xc
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B1A8
_0800B184:
	movs r0, #8
	ldr r1, [sp, #0x14]
	orrs r1, r0
	str r1, [sp, #0x14]
	movs r0, #2
	ldr r2, [sp, #0x18]
	ands r0, r2
	cmp r0, #0
	beq _0800B1A4
	ldrh r1, [r6, #0xa]
	movs r2, #0xa
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _0800B1A4
	rsbs r0, r1, #0
	strh r0, [r6, #0xa]
_0800B1A4:
	ldr r0, [sp, #0x14]
	b _0800B1C4
_0800B1A8:
	ldr r0, [sp, #0x20]
	asrs r1, r0, #0x10
	mov r0, sl
	asrs r2, r0, #0x10
	movs r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	add r0, sp, #0x14
	str r0, [sp, #8]
	adds r0, r7, #0
	add r3, sp, #0xc
	bl sub_800CBBC
	ldr r0, [sp, #0x14]
_0800B1C4:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800B1D4
sub_800B1D4: @ 0x0800B1D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	adds r6, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldrb r4, [r6, #0xe]
	rsbs r0, r4, #0
	add r1, sp, #0x10
	movs r5, #0
	strb r0, [r1]
	ldrb r3, [r6, #0xf]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #0x11
	strb r2, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	add r0, sp, #0xc
	movs r2, #4
	bl memcpy
	str r5, [sp, #0x14]
	mov sb, r5
	mov r0, r8
	ldr r1, [r0, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800B22C
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800B230
_0800B22C:
	movs r0, #0
	b _0800B2AC
_0800B230:
	movs r3, #2
	adds r2, r1, #0
	ands r2, r3
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800B252
	ldr r0, [r6, #0x28]
	cmp r0, r8
	bne _0800B252
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #0x10]
	orrs r2, r3
	movs r0, #1
	mov sb, r0
_0800B252:
	mov r0, sl
	lsls r5, r0, #0x10
	lsls r7, r7, #0x10
	add r4, sp, #0x14
	cmp r2, #0
	beq _0800B276
	asrs r1, r5, #0x10
	asrs r2, r7, #0x10
	mov r0, sb
	str r0, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, r8
	add r3, sp, #0xc
	bl sub_800C934
	cmp r0, #0
	bne _0800B2AA
_0800B276:
	asrs r1, r5, #0x10
	asrs r2, r7, #0x10
	mov r0, sb
	str r0, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	mov r0, r8
	add r3, sp, #0xc
	bl sub_800C934
	cmp r0, #0
	bne _0800B2AA
	mov r0, sb
	cmp r0, #0
	beq _0800B2AA
	ldr r1, [r6, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800B2AA
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r6, #0x10]
_0800B2AA:
	ldr r0, [sp, #0x14]
_0800B2AC:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
