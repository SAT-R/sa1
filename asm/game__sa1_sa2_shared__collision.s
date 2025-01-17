.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of game/sa1_sa2_shared/collision.c ---

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

	thumb_func_start sub_800B2BC
sub_800B2BC: @ 0x0800B2BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	adds r5, r3, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldrb r4, [r5, #0xe]
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r3, [r5, #0xf]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #5
	strb r2, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	movs r0, #0
	str r0, [sp, #8]
	mov sb, r0
	mov r2, r8
	ldr r1, [r2, #0x28]
	subs r0, #1
	cmp r1, r0
	beq _0800B310
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800B314
_0800B310:
	movs r0, #0
	b _0800B4E6
_0800B314:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800B32E
	ldr r0, [r5, #0x28]
	cmp r0, r8
	bne _0800B32E
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0x10]
	movs r0, #1
	mov sb, r0
_0800B32E:
	lsls r1, r6, #0x10
	asrs r1, r1, #8
	mov r0, r8
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	lsls r0, r3, #8
	adds r2, r1, r0
	mov r0, sp
	movs r4, #0
	ldrsb r4, [r0, r4]
	lsls r1, r4, #8
	ldr r0, [r5]
	adds r1, r0, r1
	cmp r2, r1
	bgt _0800B368
	mov r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	lsls r0, r0, #8
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B37C
	cmp r2, r1
	bge _0800B368
	b _0800B4C8
_0800B368:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	lsls r0, r0, #8
	adds r0, r1, r0
	cmp r0, r2
	bge _0800B37C
	b _0800B4C8
_0800B37C:
	lsls r3, r7, #0x10
	asrs r1, r3, #8
	mov r2, r8
	adds r2, #0x2d
	movs r7, #0
	ldrsb r7, [r2, r7]
	lsls r0, r7, #8
	adds r6, r1, r0
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov ip, r0
	lsls r0, r0, #8
	ldr r1, [r5, #4]
	adds r4, r1, r0
	mov sl, r3
	str r2, [sp, #0xc]
	adds r3, r1, #0
	cmp r6, r4
	bgt _0800B3C0
	mov r0, r8
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	lsls r0, r0, #8
	adds r0, r6, r0
	cmp r0, r4
	bge _0800B3D4
	cmp r6, r4
	bge _0800B3C0
	b _0800B4C8
_0800B3C0:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, ip
	subs r0, r0, r1
	lsls r0, r0, #8
	adds r0, r4, r0
	cmp r0, r6
	blt _0800B4C8
_0800B3D4:
	movs r2, #0xa
	ldrsh r0, [r5, r2]
	cmp r0, #0
	blt _0800B4C8
	mov r2, sp
	ldrb r1, [r5, #0xf]
	rsbs r0, r1, #0
	strb r0, [r2, #1]
	mov r0, sp
	strb r1, [r0, #3]
	ldr r1, [r5, #0x10]
	movs r0, #8
	orrs r1, r0
	str r1, [r5, #0x10]
	ldr r2, [sp, #8]
	orrs r2, r0
	str r2, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x59
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r4, r0, #0
	cmp r2, #2
	bne _0800B414
	subs r0, #0x1c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0800B43A
	cmp r0, #3
	beq _0800B43A
_0800B414:
	cmp r2, #3
	bne _0800B430
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _0800B430
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0800B43A
_0800B430:
	ldr r0, [r5, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0800B43A:
	mov r0, sb
	cmp r0, #0
	bne _0800B46A
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #2
	bne _0800B45A
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0800B464
	cmp r0, #3
	beq _0800B464
_0800B45A:
	adds r0, r5, #0
	bl sa2__sub_8021BE0
	ldrh r0, [r5, #8]
	strh r0, [r5, #0xc]
_0800B464:
	movs r0, #0
	strb r0, [r5, #0x14]
	ldr r3, [r5, #4]
_0800B46A:
	mov r1, r8
	str r1, [r5, #0x28]
	movs r0, #0
	strh r0, [r5, #0xa]
	ldr r0, _0800B498 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800B49C
	mov r2, sl
	asrs r0, r2, #0x10
	ldr r2, [sp, #0xc]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, sp
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	b _0800B4B6
	.align 2, 0
_0800B498: .4byte gStageFlags
_0800B49C:
	mov r1, sl
	asrs r0, r1, #0x10
	mov r1, r8
	adds r1, #0x2f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	mov r1, sp
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
_0800B4B6:
	lsls r0, r0, #8
	ldr r1, _0800B4C4 @ =0xFFFFFF00
	bics r3, r1
	adds r0, r3, r0
	str r0, [r5, #4]
	b _0800B4E4
	.align 2, 0
_0800B4C4: .4byte 0xFFFFFF00
_0800B4C8:
	mov r2, sb
	cmp r2, #0
	beq _0800B4E4
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800B4E4
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r5, #0x10]
_0800B4E4:
	ldr r0, [sp, #8]
_0800B4E6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sa2__sub_800C4FC
sa2__sub_800C4FC: @ 0x0800B4F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, [r6, #0x28]
	subs r0, #1
	cmp r1, r0
	bne _0800B540
	b _0800B782
_0800B520:
	mov r1, sl
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	ldr r2, [sp]
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl CreateDustCloud
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8054954
	movs r0, #1
	b _0800B784
_0800B540:
	ldr r0, _0800B664 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
_0800B55E:
	ldr r7, _0800B668 @ =gPlayer
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0800B568
	ldr r7, _0800B66C @ =gPartner
_0800B568:
	ldr r5, [r7, #0x64]
	movs r1, #0xc
	adds r1, r1, r5
	mov ip, r1
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800B57C
	b _0800B76E
_0800B57C:
	ldr r0, _0800B670 @ =gGameMode
	ldrb r1, [r0]
	cmp r1, #1
	bls _0800B594
	mov r2, r8
	ldr r0, [r2]
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800B520
_0800B594:
	mov r0, ip
	ldr r1, [r0, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800B674
	adds r0, r6, #0
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r1, [sp, #8]
	adds r2, r1, r3
	ldr r1, [r7]
	asrs r1, r1, #8
	adds r0, r5, #0
	adds r0, #0x40
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	mov r0, sl
	lsls r0, r0, #0x10
	mov sb, r0
	cmp r2, r1
	bgt _0800B5DA
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B5EC
	cmp r2, r1
	blt _0800B674
_0800B5DA:
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B674
_0800B5EC:
	adds r0, r6, #0
	adds r0, #0x2d
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r1, [sp, #0xc]
	adds r2, r1, r3
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x35
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	ldr r0, [sp]
	lsls r5, r0, #0x10
	cmp r2, r1
	bgt _0800B624
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B636
	cmp r2, r1
	blt _0800B674
_0800B624:
	mov r0, ip
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B674
_0800B636:
	ldr r1, _0800B670 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #1
	bls _0800B654
	bl sa2__sub_8019224
	movs r1, #3
	strb r1, [r0]
	mov r2, r8
	ldrh r1, [r2, #4]
	strb r1, [r0, #1]
	ldrh r1, [r2, #6]
	strb r1, [r0, #2]
	ldrb r1, [r2, #9]
	strb r1, [r0, #3]
_0800B654:
	ldrh r1, [r7, #0xa]
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	cmp r0, #0
	ble _0800B742
	rsbs r0, r1, #0
	strh r0, [r7, #0xa]
	b _0800B742
	.align 2, 0
_0800B664: .4byte gCurTask
_0800B668: .4byte gPlayer
_0800B66C: .4byte gPartner
_0800B670: .4byte gGameMode
_0800B674:
	mov r2, ip
	ldr r1, [r2, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800B76E
	adds r0, r6, #0
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r0, [sp, #8]
	adds r2, r0, r3
	ldr r1, [r7]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x2c
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	mov r0, sl
	lsls r0, r0, #0x10
	mov sb, r0
	cmp r2, r1
	bgt _0800B6BA
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B6CC
	cmp r2, r1
	blt _0800B76E
_0800B6BA:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B76E
_0800B6CC:
	adds r0, r6, #0
	adds r0, #0x2d
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r1, [sp, #0xc]
	adds r2, r1, r3
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x2d
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	ldr r0, [sp]
	lsls r5, r0, #0x10
	cmp r2, r1
	bgt _0800B704
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B716
	cmp r2, r1
	blt _0800B76E
_0800B704:
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B76E
_0800B716:
	adds r0, r7, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800B768
	ldr r1, _0800B764 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #1
	bls _0800B742
	bl sa2__sub_8019224
	movs r1, #3
	strb r1, [r0]
	mov r2, r8
	ldrh r1, [r2, #4]
	strb r1, [r0, #1]
	ldrh r1, [r2, #6]
	strb r1, [r0, #2]
	ldrb r1, [r2, #9]
	strb r1, [r0, #3]
_0800B742:
	mov r0, sb
	asrs r4, r0, #0x10
	asrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateDustCloud
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8054954
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateEnemyDefeatScoreAndManageLives
	movs r0, #1
	b _0800B784
	.align 2, 0
_0800B764: .4byte gGameMode
_0800B768:
	adds r0, r7, #0
	bl sa2__sub_800CBA4
_0800B76E:
	ldr r1, [sp, #4]
	adds r1, #1
	str r1, [sp, #4]
	ldr r0, _0800B794 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bge _0800B782
	b _0800B55E
_0800B782:
	movs r0, #0
_0800B784:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B794: .4byte gNumSingleplayerCharacters

	thumb_func_start sub_800B798
sub_800B798: @ 0x0800B798
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0
	mov sb, r0
	ldr r1, [r6, #0x28]
	subs r0, #1
	cmp r1, r0
	beq _0800B896
	movs r0, #0
	mov r8, r0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
_0800B7CA:
	ldr r7, _0800B8A8 @ =gPlayer
	mov r0, r8
	cmp r0, #0
	beq _0800B7D4
	ldr r7, _0800B8AC @ =gPartner
_0800B7D4:
	ldr r0, [r7, #0x64]
	mov ip, r0
	mov r5, ip
	adds r5, #0xc
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800B886
	ldr r1, [r5, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800B886
	adds r0, r6, #0
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	ldr r0, [sp]
	adds r2, r0, r3
	ldr r1, [r7]
	asrs r1, r1, #8
	mov r0, ip
	adds r0, #0x38
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	cmp r2, r1
	bgt _0800B824
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B836
	cmp r2, r1
	blt _0800B886
_0800B824:
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B886
_0800B836:
	adds r0, r6, #0
	adds r0, #0x2d
	movs r3, #0
	ldrsb r3, [r0, r3]
	mov r0, sl
	adds r2, r0, r3
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x2d
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800B86A
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B87C
	cmp r2, r1
	blt _0800B886
_0800B86A:
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B886
_0800B87C:
	adds r0, r7, #0
	bl sa2__sub_800CBA4
	movs r0, #1
	mov sb, r0
_0800B886:
	movs r0, #1
	add r8, r0
	ldr r0, _0800B8B0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	blt _0800B7CA
_0800B896:
	mov r0, sb
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B8A8: .4byte gPlayer
_0800B8AC: .4byte gPartner
_0800B8B0: .4byte gNumSingleplayerCharacters

	thumb_func_start sub_800B8B4
sub_800B8B4: @ 0x0800B8B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	ldr r0, [r3, #0x64]
	mov ip, r0
	mov r6, ip
	adds r6, #0xc
	ldr r0, [r4, #0x28]
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	bne _0800B8DE
	b _0800BA4E
_0800B8DE:
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800B8EA
	b _0800BA4E
_0800B8EA:
	ldr r0, [r6, #0x30]
	cmp r0, r5
	beq _0800B9AA
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2c
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x40
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800B928
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B93A
	cmp r2, r1
	blt _0800B9AA
_0800B928:
	mov r0, ip
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B9AA
_0800B93A:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2d
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x35
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800B972
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B984
	cmp r2, r1
	blt _0800B9AA
_0800B972:
	adds r0, r6, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800B9AA
_0800B984:
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	beq _0800B998
	ldrh r0, [r3, #8]
	rsbs r0, r0, #0
	b _0800B99E
_0800B998:
	ldrh r0, [r3, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
_0800B99E:
	strh r0, [r3, #8]
	ldrh r0, [r3, #0xa]
	rsbs r0, r0, #0
	strh r0, [r3, #0xa]
	movs r0, #1
	b _0800BA50
_0800B9AA:
	ldr r1, [r6, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800BA4E
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2c
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x2c
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800B9EC
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800B9FE
	cmp r2, r1
	blt _0800BA4E
_0800B9EC:
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BA4E
_0800B9FE:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2d
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	movs r1, #0x2d
	ldrsb r7, [r1, r6]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800BA32
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BA44
	cmp r2, r1
	blt _0800BA4E
_0800BA32:
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BA4E
_0800BA44:
	adds r0, r3, #0
	bl sa2__sub_800CBA4
	movs r0, #2
	b _0800BA50
_0800BA4E:
	movs r0, #0
_0800BA50:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800BA5C
sub_800BA5C: @ 0x0800BA5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	ldr r0, [r5, #0x64]
	mov r8, r0
	mov r7, r8
	adds r7, #0xc
	ldr r0, [r6, #0x28]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _0800BA8C
	b _0800BCAA
_0800BA8C:
	ldr r0, [r6, #0x30]
	cmp r0, r2
	bne _0800BA94
	b _0800BCAA
_0800BA94:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800BAA0
	b _0800BCAA
_0800BAA0:
	ldr r0, [r7, #0x30]
	cmp r0, r2
	bne _0800BAA8
	b _0800BC00
_0800BAA8:
	ldr r1, [sp]
	lsls r3, r1, #0x10
	asrs r1, r3, #0x10
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov ip, r0
	adds r4, r1, r0
	ldr r2, [r5]
	asrs r1, r2, #8
	mov r0, r8
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov sb, r0
	add r1, sb
	str r3, [sp, #8]
	str r2, [sp, #4]
	cmp r4, r1
	bgt _0800BAEE
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, ip
	subs r0, r0, r2
	adds r0, r4, r0
	cmp r0, r1
	bge _0800BB02
	cmp r4, r1
	blt _0800BB48
_0800BAEE:
	mov r0, r8
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, sb
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r4
	blt _0800BB48
_0800BB02:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x35
	ldrsb r4, [r2, r6]
	adds r2, r0, r4
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0x2d
	ldrsb r3, [r1, r7]
	adds r1, r0, r3
	cmp r2, r1
	bgt _0800BB34
	adds r0, r6, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	blt _0800BB30
	b _0800BCA0
_0800BB30:
	cmp r2, r1
	blt _0800BB48
_0800BB34:
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BB48
	b _0800BCA0
_0800BB48:
	ldr r2, [sp, #8]
	asrs r1, r2, #0x10
	adds r0, r6, #0
	adds r0, #0x2c
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r3, r1, r4
	ldr r0, [sp, #4]
	asrs r1, r0, #8
	adds r0, r7, #0
	adds r0, #0x34
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, r1, r2
	cmp r3, r1
	bgt _0800BB7E
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r1
	bge _0800BB90
	cmp r3, r1
	blt _0800BC00
_0800BB7E:
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r3
	blt _0800BC00
_0800BB90:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2d
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r1, r7, #0
	adds r1, #0x35
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800BBC8
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BBDA
	cmp r2, r1
	blt _0800BC00
_0800BBC8:
	adds r0, r7, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BC00
_0800BBDA:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	beq _0800BBEE
	ldrh r0, [r5, #8]
	rsbs r0, r0, #0
	b _0800BBF4
_0800BBEE:
	ldrh r0, [r5, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
_0800BBF4:
	strh r0, [r5, #8]
	ldrh r0, [r5, #0xa]
	rsbs r0, r0, #0
	strh r0, [r5, #0xa]
	movs r0, #1
	b _0800BCAC
_0800BC00:
	ldr r1, [r7, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800BCAA
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2c
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r3, r0, r2
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r1, r7, #0
	adds r1, #0x2c
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r3, r1
	bgt _0800BC42
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r1
	bge _0800BC54
	cmp r3, r1
	blt _0800BCAA
_0800BC42:
	adds r0, r7, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r3
	blt _0800BCAA
_0800BC54:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r3, r7, #0
	adds r3, #0x2d
	movs r4, #0
	ldrsb r4, [r3, r4]
	adds r3, r0, r4
	cmp r2, r3
	bgt _0800BC8E
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r3
	bge _0800BCA0
	cmp r2, r3
	blt _0800BCAA
_0800BC8E:
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r2
	blt _0800BCAA
_0800BCA0:
	adds r0, r5, #0
	bl sa2__sub_800CBA4
	movs r0, #2
	b _0800BCAC
_0800BCAA:
	movs r0, #0
_0800BCAC:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800BCBC
sub_800BCBC: @ 0x0800BCBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	ldr r0, [r3, #0x64]
	mov ip, r0
	mov r6, ip
	adds r6, #0xc
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800BCE6
	b _0800BF02
_0800BCE6:
	ldr r0, [r6, #0x30]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	beq _0800BDB8
	ldr r0, [r4, #0x28]
	cmp r0, r2
	beq _0800BDB8
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0800BDB8
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2c
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x40
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800BD36
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BD48
	cmp r2, r1
	blt _0800BDB8
_0800BD36:
	mov r0, ip
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BDB8
_0800BD48:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2d
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x35
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800BD80
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BD92
	cmp r2, r1
	blt _0800BDB8
_0800BD80:
	adds r0, r6, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BDB8
_0800BD92:
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	beq _0800BDA6
	ldrh r0, [r3, #8]
	rsbs r0, r0, #0
	b _0800BDAC
_0800BDA6:
	ldrh r0, [r3, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
_0800BDAC:
	strh r0, [r3, #8]
	ldrh r0, [r3, #0xa]
	rsbs r0, r0, #0
	strh r0, [r3, #0xa]
	movs r0, #1
	b _0800BF04
_0800BDB8:
	ldr r0, [r6, #0x28]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0800BDC4
	b _0800BF02
_0800BDC4:
	ldr r0, [r4, #0x28]
	cmp r0, r1
	beq _0800BE5E
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2c
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x2c
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800BE02
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BE14
	cmp r2, r1
	blt _0800BE5E
_0800BE02:
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BE5E
_0800BE14:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2d
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x2d
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800BE4C
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BEF8
	cmp r2, r1
	blt _0800BE5E
_0800BE4C:
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	bge _0800BEF8
_0800BE5E:
	ldr r1, [r4, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800BF02
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x34
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x2c
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800BEA0
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BEB2
	cmp r2, r1
	blt _0800BF02
_0800BEA0:
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BF02
_0800BEB2:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x35
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r2, r0, r5
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	movs r1, #0x2d
	ldrsb r7, [r1, r6]
	adds r1, r0, r7
	cmp r2, r1
	bgt _0800BEE6
	adds r0, r4, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BEF8
	cmp r2, r1
	blt _0800BF02
_0800BEE6:
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BF02
_0800BEF8:
	adds r0, r3, #0
	bl sa2__sub_800CBA4
	movs r0, #2
	b _0800BF04
_0800BF02:
	movs r0, #0
_0800BF04:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800BF10
sub_800BF10: @ 0x0800BF10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r3, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, [r6, #0x64]
	mov ip, r0
	mov r7, ip
	adds r7, #0xc
	ldr r0, [r5, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	cmp r0, r3
	beq _0800BFDE
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800BFDE
	ldr r0, [r7, #0x28]
	cmp r0, r3
	beq _0800BFDE
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x2c
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r6]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x38
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800BF7C
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BF8E
	cmp r2, r1
	blt _0800BFDE
_0800BF7C:
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BFDE
_0800BF8E:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x2d
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	movs r1, #0x2d
	ldrsb r4, [r1, r7]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800BFC2
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800BFD4
	cmp r2, r1
	blt _0800BFDE
_0800BFC2:
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800BFDE
_0800BFD4:
	adds r0, r6, #0
	bl sa2__sub_800CBA4
	movs r0, #2
	b _0800BFE0
_0800BFDE:
	movs r0, #0
_0800BFE0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800BFEC
sub_800BFEC: @ 0x0800BFEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r3, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, [r6, #0x64]
	mov ip, r0
	mov r7, ip
	adds r7, #0xc
	ldr r0, [r5, #0x30]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0800C0D2
	ldr r0, [r7, #0x28]
	cmp r0, r1
	beq _0800C0D2
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800C0D2
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x34
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r6]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x38
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800C058
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800C06A
	cmp r2, r1
	blt _0800C0D2
_0800C058:
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800C0D2
_0800C06A:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x35
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	movs r1, #0x2d
	ldrsb r4, [r1, r7]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800C09E
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800C0B0
	cmp r2, r1
	blt _0800C0D2
_0800C09E:
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800C0D2
_0800C0B0:
	ldr r0, _0800C0C4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _0800C0C8
	adds r0, r6, #0
	bl sa2__sub_800CBA4
	b _0800C0CE
	.align 2, 0
_0800C0C4: .4byte gCurrentLevel
_0800C0C8:
	adds r0, r6, #0
	bl sub_800C714
_0800C0CE:
	movs r0, #2
	b _0800C0D4
_0800C0D2:
	movs r0, #0
_0800C0D4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
    
.if 01
	thumb_func_start sub_800C0E0
sub_800C0E0: @ 0x0800C0E0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, [r3, #0x64]
	mov ip, r0
	mov r7, ip
	adds r7, #0xc
	ldr r0, [r6, #0x28]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0800C1DA
	ldr r0, [r7, #0x30]
	cmp r0, r1
	beq _0800C1DA
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800C1DA
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2c
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r2, r0, r4
	ldr r0, [r3]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x40
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _0800C14A
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _0800C15C
	cmp r2, r1
	blt _0800C1DA
_0800C14A:
	mov r0, ip
	adds r0, #0x42
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _0800C1DA
_0800C15C:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2d
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r2, r0, r4
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	movs r1, #0x35
	ldrsb r5, [r1, r7]
	adds r1, r0, r5
	cmp r2, r1
	bgt _0800C190
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _0800C1A2
	cmp r2, r1
	blt _0800C1DA
_0800C190:
	adds r0, r7, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _0800C1DA
_0800C1A2:
	ldr r0, _0800C1C4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _0800C1D6
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	beq _0800C1C8
	ldrh r0, [r3, #8]
	rsbs r0, r0, #0
	b _0800C1CE
	.align 2, 0
_0800C1C4: .4byte gCurrentLevel
_0800C1C8:
	ldrh r0, [r3, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
_0800C1CE:
	strh r0, [r3, #8]
	ldrh r0, [r3, #0xa]
	rsbs r0, r0, #0
	strh r0, [r3, #0xa]
_0800C1D6:
	movs r0, #1
	b _0800C1DC
_0800C1DA:
	movs r0, #0
_0800C1DC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.endif
