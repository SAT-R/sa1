.include "constants/constants.inc"

.syntax unified
.text
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

.syntax divided
