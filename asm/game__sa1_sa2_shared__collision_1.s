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

.if 0
.endif
