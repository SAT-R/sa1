.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

@ Exclusively used by bosses
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
	bl Coll_DamagePlayer
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
    