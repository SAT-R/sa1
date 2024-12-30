.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_80096B0
sub_80096B0: @ 0x080096B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov r8, r0
	adds r7, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x1c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
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
	mov sb, r6
	mov r0, r8
	ldr r1, [r0, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08009736
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800973A
_08009736:
	movs r0, #0
	b _080097D4
_0800973A:
	movs r3, #2
	adds r2, r1, #0
	ands r2, r3
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800975C
	ldr r0, [r7, #0x28]
	cmp r0, r8
	bne _0800975C
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r7, #0x10]
	orrs r2, r3
	movs r0, #1
	mov sb, r0
_0800975C:
	ldr r0, [sp, #0x1c]
	lsls r6, r0, #0x10
	mov r0, sl
	lsls r5, r0, #0x10
	add r4, sp, #0x18
	cmp r2, #0
	beq _08009782
	asrs r1, r6, #0x10
	asrs r2, r5, #0x10
	mov r0, sb
	str r0, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, r8
	add r3, sp, #0x10
	bl sub_800C934
	cmp r0, #0
	bne _080097D2
_08009782:
	asrs r6, r6, #0x10
	asrs r5, r5, #0x10
	mov r0, sb
	str r0, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	add r3, sp, #0xc
	bl sub_800CBBC
	cmp r0, #0
	bne _080097D2
	mov r0, sb
	str r0, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	add r3, sp, #0x10
	bl sub_800C934
	cmp r0, #0
	bne _080097D2
	mov r0, sb
	cmp r0, #0
	beq _080097D2
	ldr r1, [r7, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080097D2
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r7, #0x10]
_080097D2:
	ldr r0, [sp, #0x18]
_080097D4:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80097E4
sub_80097E4: @ 0x080097E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x68]
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x1c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x20]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x24]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x28]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	str r5, [sp, #0x2c]
	ldr r7, _08009920 @ =gPlayer
	ldrb r3, [r7, #0xe]
	adds r3, #5
	rsbs r0, r3, #0
	add r1, sp, #8
	mov sb, r1
	strb r0, [r1]
	ldrb r1, [r7, #0xf]
	movs r6, #1
	subs r2, r6, r1
	mov r0, sp
	adds r0, #9
	strb r2, [r0]
	adds r0, #1
	strb r3, [r0]
	subs r1, #1
	adds r0, #1
	strb r1, [r0]
	add r0, sp, #4
	mov r1, sb
	movs r2, #4
	bl memcpy
	ldrb r3, [r7, #0xe]
	rsbs r0, r3, #0
	add r2, sp, #0xc
	mov r8, r2
	strb r0, [r2]
	ldrb r2, [r7, #0xf]
	rsbs r1, r2, #0
	mov r0, sp
	adds r0, #0xd
	strb r1, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r2, [r0]
	mov r0, sb
	mov r1, r8
	movs r2, #4
	bl memcpy
	movs r3, #0
	str r3, [sp, #0x30]
	movs r5, #0
	str r5, [sp, #0x34]
	ldr r0, _08009924 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x40]
	ldr r0, _08009928 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldrb r1, [r7, #0xe]
	adds r1, #5
	rsbs r0, r1, #0
	add r5, sp, #0x10
	strb r0, [r5]
	ldr r0, _0800992C @ =0x03000058
	adds r4, r4, r0
	ldrb r0, [r4]
	subs r6, r6, r0
	mov r0, sp
	adds r0, #0x11
	strb r6, [r0]
	adds r0, #1
	strb r1, [r0]
	ldrb r0, [r4]
	subs r0, #1
	mov r1, sp
	adds r1, #0x13
	strb r0, [r1]
	mov r0, r8
	adds r1, r5, #0
	movs r2, #4
	bl memcpy
	ldrb r3, [r7, #0xe]
	rsbs r0, r3, #0
	add r1, sp, #0x14
	strb r0, [r1]
	ldrb r0, [r4]
	rsbs r0, r0, #0
	mov r2, sp
	adds r2, #0x15
	strb r0, [r2]
	mov r0, sp
	adds r0, #0x16
	strb r3, [r0]
	ldrb r2, [r4]
	adds r0, #1
	strb r2, [r0]
	adds r0, r5, #0
	movs r2, #4
	bl memcpy
	ldr r2, [sp, #0x18]
	ldr r1, [r2, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	mov ip, sb
	cmp r1, r0
	beq _08009918
	ldr r0, [r7, #0x10]
	movs r3, #0x80
	ands r0, r3
	cmp r0, #0
	bne _08009918
	ldr r6, [sp, #0x1c]
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	ldr r1, [r7]
	asrs r1, r1, #8
	str r0, [sp, #0x44]
	cmp r2, r1
	bne _08009930
	ldr r0, [sp, #0x20]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bne _08009930
_08009918:
	movs r0, #0
	bl sub_800A392
	.align 2, 0
_08009920: .4byte gPlayer
_08009924: .4byte gStageFlags
_08009928: .4byte gCurTask
_0800992C: .4byte 0x03000058
_08009930:
	ldr r0, _08009A18 @ =gPlayer
	ldr r1, [r0]
	str r1, [sp, #0x38]
	ldr r2, [r0, #4]
	str r2, [sp, #0x3c]
	adds r1, r0, #0
	adds r1, #0x27
	adds r4, r0, #0
	ldr r3, [sp, #0x28]
	ldrb r1, [r1]
	cmp r3, r1
	beq _0800994C
	bl _0800A390
_0800994C:
	ldr r1, [r4, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800996A
	ldr r0, [r4, #0x28]
	ldr r6, [sp, #0x18]
	cmp r0, r6
	bne _0800996A
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x10]
	movs r0, #1
	str r0, [sp, #0x34]
_0800996A:
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov sb, r0
	ldr r2, [sp, #0x3c]
	asrs r2, r2, #8
	mov r8, r2
	cmp r1, r8
	bne _0800997E
	b _08009E70
_0800997E:
	ldr r3, [sp, #0x44]
	asrs r0, r3, #0x10
	movs r3, #0
	ldrsb r3, [r5, r3]
	adds r2, r0, r3
	ldr r6, [sp, #0x38]
	asrs r0, r6, #8
	mov r1, ip
	movs r6, #0
	ldrsb r6, [r1, r6]
	adds r1, r0, r6
	adds r7, r0, #0
	cmp r2, r1
	bgt _080099AC
	movs r0, #2
	ldrsb r0, [r5, r0]
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _080099BC
	cmp r2, r1
	bge _080099AC
	b _08009E70
_080099AC:
	mov r3, ip
	movs r0, #2
	ldrsb r0, [r3, r0]
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	bge _080099BC
	b _08009E70
_080099BC:
	mov r6, sb
	asrs r0, r6, #0x10
	movs r3, #1
	ldrsb r3, [r5, r3]
	adds r2, r0, r3
	mov r0, ip
	movs r6, #1
	ldrsb r6, [r0, r6]
	mov r0, r8
	adds r1, r0, r6
	cmp r2, r1
	bgt _080099E6
	movs r0, #3
	ldrsb r0, [r5, r0]
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _080099F6
	cmp r2, r1
	bge _080099E6
	b _08009E70
_080099E6:
	mov r3, ip
	movs r0, #3
	ldrsb r0, [r3, r0]
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	bge _080099F6
	b _08009E70
_080099F6:
	ldr r6, [sp, #0x40]
	cmp r6, #0
	bne _08009A1C
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r8, r0
	ble _08009A06
	b _08009CBE
_08009A06:
	movs r2, #0xa
	ldrsh r1, [r4, r2]
	ldr r3, [sp, #0x24]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	cmp r1, #0
	bge _08009A38
	b _08009CBE
	.align 2, 0
_08009A18: .4byte gPlayer
_08009A1C:
	mov r6, sb
	asrs r0, r6, #0x10
	cmp r8, r0
	bgt _08009A26
	b _08009CB8
_08009A26:
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	ldr r2, [sp, #0x24]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	cmp r1, #0
	bge _08009A38
	b _08009CB8
_08009A38:
	ldr r3, [sp, #0x40]
	cmp r3, #0
	beq _08009A40
	b _08009B78
_08009A40:
	mov r6, sb
	asrs r0, r6, #0x10
	movs r1, #1
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	mov r2, ip
	movs r1, #3
	ldrsb r1, [r2, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r6, _08009AF8 @ =gPlayer
	ldr r1, [r6, #4]
	ldr r2, _08009AFC @ =0xFFFFFF00
	ands r1, r2
	subs r0, r0, r1
	ldr r3, [sp, #0x3c]
	adds r3, r3, r0
	str r3, [sp, #0x3c]
	asrs r0, r3, #8
	movs r1, #0xf
	ldrsb r1, [r6, r1]
	subs r0, r0, r1
	movs r3, #8
	rsbs r3, r3, #0
	ldr r1, _08009B00 @ =sub_803FD5C
	str r1, [sp]
	adds r1, r7, #0
	ldr r2, [sp, #0x28]
	bl sub_804021C
	adds r7, r0, #0
	cmp r7, #0
	bge _08009B04
	ldr r1, [r6, #0x10]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #0x10]
	adds r0, r6, #0
	adds r0, #0x59
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #2
	bne _08009AAA
	subs r0, #0x1c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r6, #0
	cmp r0, #1
	beq _08009AD6
	cmp r0, #3
	beq _08009AD6
_08009AAA:
	cmp r2, #3
	bne _08009AC8
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _08009AC8
	adds r0, r6, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r6, #0
	cmp r0, #0
	bne _08009AD6
_08009AC8:
	ldr r0, _08009AF8 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x10]
	adds r4, r0, #0
_08009AD6:
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	movs r0, #0
	strh r0, [r4, #0xa]
	lsls r1, r7, #8
	ldr r0, [r4, #4]
	subs r0, r0, r1
	str r0, [r4, #4]
	bl _0800A372
	.align 2, 0
_08009AF8: .4byte gPlayer
_08009AFC: .4byte 0xFFFFFF00
_08009B00: .4byte sub_803FD5C
_08009B04:
	movs r0, #8
	ldr r5, [sp, #0x30]
	orrs r5, r0
	str r5, [sp, #0x30]
	ldr r1, [r6, #0x10]
	orrs r1, r0
	str r1, [r6, #0x10]
	adds r0, r6, #0
	adds r0, #0x59
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #2
	bne _08009B30
	subs r0, #0x1c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r6, #0
	cmp r0, #1
	beq _08009B5C
	cmp r0, #3
	beq _08009B5C
_08009B30:
	cmp r2, #3
	bne _08009B4E
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _08009B4E
	adds r0, r6, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r6, #0
	cmp r0, #0
	bne _08009B5C
_08009B4E:
	ldr r0, _08009B74 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x10]
	adds r4, r0, #0
_08009B5C:
	ldr r6, [sp, #0x18]
	str r6, [r4, #0x28]
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r0, [sp, #0x3c]
	str r0, [r4, #4]
	ldr r1, [sp, #0x34]
	cmp r1, #0
	beq _08009B72
	bl _0800A378
_08009B72:
	b _08009CA4
	.align 2, 0
_08009B74: .4byte gPlayer
_08009B78:
	mov r2, sb
	asrs r0, r2, #0x10
	movs r1, #3
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	mov r3, ip
	movs r1, #3
	ldrsb r1, [r3, r1]
	adds r0, r0, r1
	lsls r0, r0, #8
	ldr r6, _08009C2C @ =gPlayer
	ldr r1, [r6, #4]
	ldr r2, _08009C30 @ =0xFFFFFF00
	ands r1, r2
	subs r0, r0, r1
	ldr r5, [sp, #0x3c]
	adds r5, r5, r0
	str r5, [sp, #0x3c]
	asrs r0, r5, #8
	movs r1, #0xf
	ldrsb r1, [r6, r1]
	adds r0, r0, r1
	ldr r1, _08009C34 @ =sub_803FD5C
	str r1, [sp]
	adds r1, r7, #0
	ldr r2, [sp, #0x28]
	movs r3, #8
	bl sub_804021C
	adds r7, r0, #0
	cmp r7, #0
	bge _08009C38
	ldr r1, [r6, #0x10]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #0x10]
	adds r0, r6, #0
	adds r0, #0x59
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #2
	bne _08009BE0
	subs r0, #0x1c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r6, #0
	cmp r0, #1
	beq _08009C0C
	cmp r0, #3
	beq _08009C0C
_08009BE0:
	cmp r2, #3
	bne _08009BFE
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _08009BFE
	adds r0, r6, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r6, #0
	cmp r0, #0
	bne _08009C0C
_08009BFE:
	ldr r0, _08009C2C @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x10]
	adds r4, r0, #0
_08009C0C:
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	movs r0, #0
	strh r0, [r4, #0xa]
	lsls r1, r7, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	b _0800A372
	.align 2, 0
_08009C2C: .4byte gPlayer
_08009C30: .4byte 0xFFFFFF00
_08009C34: .4byte sub_803FD5C
_08009C38:
	movs r0, #8
	ldr r1, [sp, #0x30]
	orrs r1, r0
	str r1, [sp, #0x30]
	ldr r1, [r6, #0x10]
	orrs r1, r0
	str r1, [r6, #0x10]
	adds r0, r6, #0
	adds r0, #0x59
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #2
	bne _08009C64
	subs r0, #0x1c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r6, #0
	cmp r0, #1
	beq _08009C90
	cmp r0, #3
	beq _08009C90
_08009C64:
	cmp r2, #3
	bne _08009C82
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _08009C82
	adds r0, r6, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r6, #0
	cmp r0, #0
	bne _08009C90
_08009C82:
	ldr r0, _08009CB4 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x10]
	adds r4, r0, #0
_08009C90:
	ldr r2, [sp, #0x18]
	str r2, [r4, #0x28]
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r3, [sp, #0x3c]
	str r3, [r4, #4]
	ldr r5, [sp, #0x34]
	cmp r5, #0
	beq _08009CA4
	b _0800A378
_08009CA4:
	adds r0, r4, #0
	bl sub_8042848
	ldrh r0, [r4, #8]
	strh r0, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #0x14]
	b _0800A372
	.align 2, 0
_08009CB4: .4byte gPlayer
_08009CB8:
	ldr r6, [sp, #0x40]
	cmp r6, #0
	bne _08009CE0
_08009CBE:
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r8, r0
	ble _08009CD8
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	ldr r3, [sp, #0x24]
	lsls r2, r3, #0x10
	asrs r1, r2, #0x10
	subs r0, r0, r1
	adds r5, r2, #0
	cmp r0, #0
	blt _08009CFE
_08009CD8:
	ldr r5, [sp, #0x40]
	cmp r5, #0
	bne _08009CE0
	b _08009E70
_08009CE0:
	mov r6, sb
	asrs r0, r6, #0x10
	cmp r8, r0
	ble _08009CEA
	b _08009E70
_08009CEA:
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	ldr r3, [sp, #0x24]
	lsls r2, r3, #0x10
	asrs r1, r2, #0x10
	adds r0, r0, r1
	adds r5, r2, #0
	cmp r0, #0
	blt _08009CFE
	b _08009E70
_08009CFE:
	ldr r6, [sp, #0x40]
	cmp r6, #0
	bne _08009DB0
	ldr r4, _08009D90 @ =gPlayer
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	add r0, r8
	ldr r1, _08009D94 @ =sub_803FD5C
	str r1, [sp]
	adds r1, r7, #0
	ldr r2, [sp, #0x28]
	movs r3, #8
	bl sub_804021C
	adds r7, r0, #0
	cmp r7, #0
	bge _08009D98
	ldr r1, [r4, #0x10]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x59
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #2
	bne _08009D46
	subs r0, #0x1c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08009D6E
	cmp r0, #3
	beq _08009D6E
_08009D46:
	cmp r2, #3
	bne _08009D62
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _08009D62
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08009D6E
_08009D62:
	ldr r0, _08009D90 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x10]
_08009D6E:
	ldr r4, _08009D90 @ =gPlayer
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	movs r0, #0
	strh r0, [r4, #0xa]
	lsls r1, r7, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	b _08009DA0
	.align 2, 0
_08009D90: .4byte gPlayer
_08009D94: .4byte sub_803FD5C
_08009D98:
	ldr r0, [sp, #0x38]
	str r0, [r4]
	ldr r1, [sp, #0x3c]
	str r1, [r4, #4]
_08009DA0:
	ldr r0, _08009DAC @ =gPlayer
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	asrs r2, r5, #0x10
	subs r1, r1, r2
	b _08009E5A
	.align 2, 0
_08009DAC: .4byte gPlayer
_08009DB0:
	ldr r4, _08009E40 @ =gPlayer
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	mov r6, r8
	subs r0, r6, r0
	movs r3, #8
	rsbs r3, r3, #0
	ldr r1, _08009E44 @ =sub_803FD5C
	str r1, [sp]
	adds r1, r7, #0
	ldr r2, [sp, #0x28]
	bl sub_804021C
	adds r7, r0, #0
	cmp r7, #0
	bge _08009E48
	ldr r1, [r4, #0x10]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x59
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #2
	bne _08009DF6
	subs r0, #0x1c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08009E1E
	cmp r0, #3
	beq _08009E1E
_08009DF6:
	cmp r2, #3
	bne _08009E12
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _08009E12
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08009E1E
_08009E12:
	ldr r0, _08009E40 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x10]
_08009E1E:
	ldr r4, _08009E40 @ =gPlayer
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	movs r0, #0
	strh r0, [r4, #0xa]
	lsls r1, r7, #8
	ldr r0, [r4, #4]
	subs r0, r0, r1
	str r0, [r4, #4]
	b _08009E50
	.align 2, 0
_08009E40: .4byte gPlayer
_08009E44: .4byte sub_803FD5C
_08009E48:
	ldr r0, [sp, #0x38]
	str r0, [r4]
	ldr r1, [sp, #0x3c]
	str r1, [r4, #4]
_08009E50:
	ldr r0, _08009E6C @ =gPlayer
	movs r2, #0xa
	ldrsh r1, [r0, r2]
	asrs r2, r5, #0x10
	adds r1, r1, r2
_08009E5A:
	adds r4, r0, #0
	cmp r1, #0
	bgt _08009E70
	movs r0, #0x80
	lsls r0, r0, #9
	ldr r3, [sp, #0x30]
	orrs r3, r0
	str r3, [sp, #0x30]
	b _0800A372
	.align 2, 0
_08009E6C: .4byte gPlayer
_08009E70:
	ldrb r0, [r4, #0x14]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	asrs r0, r0, #6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08009E84
	b _0800A372
_08009E84:
	ldr r5, [sp, #0x44]
	asrs r0, r5, #0x10
	mov r6, sp
	movs r5, #0xc
	ldrsb r5, [r6, r5]
	adds r3, r0, r5
	ldr r0, [sp, #0x38]
	asrs r1, r0, #8
	add r0, sp, #4
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r2, r1, r6
	adds r7, r1, #0
	cmp r3, r2
	bgt _08009EB6
	mov r1, sp
	movs r0, #0xe
	ldrsb r0, [r1, r0]
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r2
	bge _08009EC8
	cmp r3, r2
	bge _08009EB6
	b _0800A372
_08009EB6:
	add r0, sp, #4
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r2, r0
	cmp r0, r3
	bge _08009EC8
	b _0800A372
_08009EC8:
	mov r2, sb
	asrs r0, r2, #0x10
	mov r3, sp
	movs r2, #0xd
	ldrsb r2, [r3, r2]
	adds r1, r0, r2
	add r0, sp, #4
	movs r5, #1
	ldrsb r5, [r0, r5]
	mov r6, r8
	adds r3, r6, r5
	cmp r1, r3
	bgt _08009EF6
	mov r6, sp
	movs r0, #0xf
	ldrsb r0, [r6, r0]
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r3
	bge _08009F08
	cmp r1, r3
	bge _08009EF6
	b _0800A372
_08009EF6:
	add r0, sp, #4
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r1
	bge _08009F08
	b _0800A372
_08009F08:
	ldr r0, [sp, #0x44]
	asrs r1, r0, #0x10
	cmp r7, r1
	ble _08009F12
	b _0800A132
_08009F12:
	mov sb, r4
	ldr r3, [r4, #0x10]
	movs r2, #1
	ands r2, r3
	cmp r2, #0
	beq _08009F20
	b _0800A0B8
_08009F20:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ldr r5, [sp, #0x30]
	orrs r5, r0
	str r5, [sp, #0x30]
	adds r6, r4, #0
	adds r6, #0x3e
	movs r5, #0
	ldrsb r5, [r6, r5]
	cmp r5, #0
	beq _08009F3A
	strh r2, [r4, #8]
	b _0800A372
_08009F3A:
	mov r2, sp
	movs r0, #0xc
	ldrsb r0, [r2, r0]
	adds r0, r1, r0
	add r1, sp, #4
	ldrb r1, [r1, #2]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x38]
	movs r0, #8
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _08009F5A
	rsbs r1, r1, #0
_08009F5A:
	movs r0, #0x90
	lsls r0, r0, #3
	cmp r1, r0
	ble _08009FCC
	movs r0, #0x80
	lsls r0, r0, #0xe
	ldr r1, [sp, #0x30]
	orrs r1, r0
	str r1, [sp, #0x30]
	mov r2, sl
	lsls r0, r2, #0x10
	cmp r0, #0
	ble _08009FB4
	ldr r3, [sp, #0x2c]
	cmp r3, #0
	beq _08009FA2
	strh r2, [r4, #0xc]
	mov r0, sl
	strh r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3d
	strb r5, [r0]
	strb r5, [r6]
	b _0800A358
_08009FA2:
	mov r1, sl
	strh r1, [r4, #0xc]
	strh r1, [r4, #8]
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4]
	b _0800A366
_08009FB4:
	movs r0, #2
	orrs r3, r0
	str r3, [r4, #0x10]
	ldr r0, _08009FC8 @ =0x0000FE80
	strh r0, [r4, #8]
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4, #0xa]
	b _0800A372
	.align 2, 0
_08009FC8: .4byte 0x0000FE80
_08009FCC:
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _08009FD6
	b _0800A372
_08009FD6:
	ldr r1, [sp, #0x38]
	asrs r0, r1, #8
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	mov r2, r8
	subs r1, r2, r1
	movs r3, #8
	rsbs r3, r3, #0
	ldr r2, _0800A060 @ =sub_803FC64
	str r2, [sp]
	ldr r2, [sp, #0x28]
	bl sub_804021C
	adds r7, r0, #0
	cmp r7, #0
	bge _0800A068
	ldr r1, [r4, #0x10]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x59
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #2
	bne _0800A01C
	subs r0, #0x1c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0800A042
	cmp r0, #3
	beq _0800A042
_0800A01C:
	cmp r2, #3
	bne _0800A034
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _0800A034
	movs r0, #0
	ldrsb r0, [r6, r0]
	mov r4, sb
	cmp r0, #0
	bne _0800A042
_0800A034:
	ldr r0, _0800A064 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x10]
	adds r4, r0, #0
_0800A042:
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	movs r0, #0
	strh r0, [r4, #8]
	lsls r1, r7, #8
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
	b _0800A372
	.align 2, 0
_0800A060: .4byte sub_803FC64
_0800A064: .4byte gPlayer
_0800A068:
	ldr r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800A09A
	movs r0, #0x20
	orrs r1, r0
	ldr r3, [sp, #0x30]
	orrs r3, r0
	subs r0, #0x25
	ands r1, r0
	str r1, [r4, #0x10]
	ands r3, r0
	str r3, [sp, #0x30]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x40
	strb r0, [r1]
_0800A09A:
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r6, [sp, #0x30]
	ands r6, r1
	str r6, [sp, #0x30]
	strh r5, [r4, #0xc]
	strh r5, [r4, #8]
	ldr r0, [sp, #0x38]
	str r0, [r4]
	ldr r1, [sp, #0x3c]
	str r1, [r4, #4]
	b _0800A372
_0800A0B8:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ldr r2, [sp, #0x30]
	orrs r2, r0
	str r2, [sp, #0x30]
	adds r6, r4, #0
	adds r6, #0x3e
	movs r5, #0
	ldrsb r5, [r6, r5]
	cmp r5, #0
	beq _0800A0D4
	movs r0, #0
	strh r0, [r4, #8]
	b _0800A372
_0800A0D4:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	adds r2, r1, #0
	cmp r1, #0
	bge _0800A0E2
	rsbs r2, r1, #0
_0800A0E2:
	movs r0, #0x90
	lsls r0, r0, #3
	cmp r2, r0
	bgt _0800A0EC
	b _0800A372
_0800A0EC:
	movs r0, #0x80
	lsls r0, r0, #0xe
	ldr r2, [sp, #0x30]
	orrs r2, r0
	str r2, [sp, #0x30]
	cmp r1, #0
	bge _0800A12C
	ldr r3, [sp, #0x2c]
	cmp r3, #0
	beq _0800A128
	mov r0, sl
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #4
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3d
	strb r5, [r0]
	strb r5, [r6]
	b _0800A358
_0800A128:
	adds r0, r4, #0
	b _0800A362
_0800A12C:
	strh r5, [r4, #0xc]
	strh r5, [r4, #8]
	b _0800A372
_0800A132:
	adds r5, r4, #0
	ldr r3, [r5, #0x10]
	movs r2, #1
	mov sb, r2
	adds r2, r3, #0
	mov r6, sb
	ands r2, r6
	cmp r2, #0
	bne _0800A146
	b _0800A2F0
_0800A146:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ldr r2, [sp, #0x30]
	orrs r2, r0
	str r2, [sp, #0x30]
	ldr r0, _0800A160 @ =gUnknown_03005A5E
	movs r6, #0
	ldrsb r6, [r0, r6]
	cmp r6, #0
	beq _0800A164
	movs r0, #0
	strh r0, [r5, #8]
	b _0800A372
	.align 2, 0
_0800A160: .4byte gUnknown_03005A5E
_0800A164:
	mov r2, sp
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	adds r0, r1, r0
	add r1, sp, #4
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x38]
	movs r0, #8
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bge _0800A184
	rsbs r1, r1, #0
_0800A184:
	movs r0, #0x90
	lsls r0, r0, #3
	cmp r1, r0
	ble _0800A1FC
	movs r0, #0x80
	lsls r0, r0, #0xe
	ldr r1, [sp, #0x30]
	orrs r1, r0
	str r1, [sp, #0x30]
	mov r2, sl
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _0800A1E8
	ldr r3, [sp, #0x2c]
	cmp r3, #0
	beq _0800A1D4
	strh r2, [r5, #0xc]
	mov r0, sl
	strh r0, [r5, #8]
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #4
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3d
	strb r6, [r0]
	ldr r1, _0800A1D0 @ =gUnknown_03005A5E
	strb r6, [r1]
	b _0800A358
	.align 2, 0
_0800A1D0: .4byte gUnknown_03005A5E
_0800A1D4:
	mov r2, sl
	strh r2, [r5, #0xc]
	strh r2, [r5, #8]
	ldr r0, [r5]
	ldr r3, _0800A1E4 @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r5]
	b _0800A366
	.align 2, 0
_0800A1E4: .4byte 0xFFFFFF00
_0800A1E8:
	movs r0, #2
	orrs r3, r0
	str r3, [r5, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r5, #8]
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	b _0800A372
_0800A1FC:
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0800A206
	b _0800A372
_0800A206:
	ldr r2, [sp, #0x38]
	asrs r0, r2, #8
	movs r1, #0xe
	ldrsb r1, [r5, r1]
	add r1, r8
	ldr r2, _0800A290 @ =sub_803FC64
	str r2, [sp]
	ldr r2, [sp, #0x28]
	movs r3, #8
	bl sub_804021C
	adds r7, r0, #0
	cmp r7, #0
	bge _0800A29C
	ldr r1, [r5, #0x10]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0x10]
	adds r0, r5, #0
	adds r0, #0x59
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #2
	bne _0800A24A
	subs r0, #0x1c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r5, #0
	cmp r0, #1
	beq _0800A272
	cmp r0, #3
	beq _0800A272
_0800A24A:
	cmp r2, #3
	bne _0800A264
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _0800A264
	ldr r3, _0800A294 @ =gUnknown_03005A5E
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r4, r5, #0
	cmp r0, #0
	bne _0800A272
_0800A264:
	ldr r0, _0800A298 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x10]
	adds r4, r0, #0
_0800A272:
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	movs r0, #0
	strh r0, [r4, #8]
	lsls r1, r7, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	b _0800A372
	.align 2, 0
_0800A290: .4byte sub_803FC64
_0800A294: .4byte gUnknown_03005A5E
_0800A298: .4byte gPlayer
_0800A29C:
	ldr r1, [r5, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800A2CE
	movs r0, #0x20
	orrs r1, r0
	ldr r2, [sp, #0x30]
	orrs r2, r0
	subs r0, #0x25
	ands r1, r0
	str r1, [r5, #0x10]
	ands r2, r0
	str r2, [sp, #0x30]
	adds r0, r5, #0
	adds r0, #0x40
	movs r4, #0xe
	strb r4, [r0]
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
_0800A2CE:
	ldr r0, [r5, #0x10]
	mov r3, sb
	orrs r0, r3
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x30]
	orrs r0, r3
	str r0, [sp, #0x30]
	strh r6, [r5, #0xc]
	strh r6, [r5, #8]
	ldr r1, [sp, #0x38]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r5]
	ldr r3, [sp, #0x3c]
	str r3, [r5, #4]
	b _0800A372
_0800A2F0:
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r3, r0
	str r3, [r5, #0x10]
	adds r7, r5, #0
	adds r7, #0x3e
	movs r6, #0
	ldrsb r6, [r7, r6]
	cmp r6, #0
	beq _0800A308
	strh r2, [r5, #8]
	b _0800A372
_0800A308:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r2, r1, #0
	cmp r1, #0
	bge _0800A316
	rsbs r2, r1, #0
_0800A316:
	movs r0, #0x90
	lsls r0, r0, #3
	cmp r2, r0
	ble _0800A372
	movs r0, #0x80
	lsls r0, r0, #0xe
	ldr r2, [sp, #0x30]
	orrs r2, r0
	str r2, [sp, #0x30]
	cmp r1, #0
	ble _0800A36E
	ldr r3, [sp, #0x2c]
	cmp r3, #0
	beq _0800A360
	mov r0, sl
	strh r0, [r5, #0xc]
	strh r0, [r5, #8]
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #4
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3d
	strb r6, [r0]
	strb r6, [r7]
_0800A358:
	movs r0, #0xa1
	bl m4aSongNumStart
	b _0800A372
_0800A360:
	adds r0, r5, #0
_0800A362:
	bl sub_800C848
_0800A366:
	movs r0, #0xa2
	bl m4aSongNumStart
	b _0800A372
_0800A36E:
	strh r6, [r4, #0xc]
	strh r6, [r4, #8]
_0800A372:
	ldr r1, [sp, #0x34]
	cmp r1, #0
	beq _0800A390
_0800A378:
	ldr r2, _0800A3A4 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800A390
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_0800A390:
	ldr r0, [sp, #0x30]
sub_800A392:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800A3A4: .4byte gPlayer

	thumb_func_start sub_800A3A8
sub_800A3A8: @ 0x0800A3A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [sp, #0x38]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0
	mov r8, r0
	ldr r2, _0800A400 @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800A3FC
	ldr r1, _0800A404 @ =gMultiplayerPlayerTasks
	ldr r0, _0800A408 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	mov sb, r6
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r4, r0
	beq _0800A40C
_0800A3FC:
	movs r0, #0
	b _0800A694
	.align 2, 0
_0800A400: .4byte gPlayer
_0800A404: .4byte gMultiplayerPlayerTasks
_0800A408: .4byte 0x04000128
_0800A40C:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0800A4C0
	ldr r1, [r5, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800A4C0
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x34
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r2, r0, r4
	ldr r7, _0800A5A0 @ =0x03000050
	adds r0, r3, r7
	movs r7, #0
	ldrsh r1, [r0, r7]
	ldr r7, _0800A5A4 @ =0x0300002C
	adds r0, r3, r7
	movs r7, #0
	ldrsb r7, [r0, r7]
	adds r1, r1, r7
	cmp r2, r1
	bgt _0800A458
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _0800A46A
	cmp r2, r1
	blt _0800A4C0
_0800A458:
	ldr r4, _0800A5A8 @ =0x0300002E
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0800A4C0
_0800A46A:
	ldr r7, [sp, #4]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x35
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	mov r0, sb
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	adds r1, #0x2d
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800A4A6
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800A4B8
	cmp r2, r1
	blt _0800A4C0
_0800A4A6:
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800A4C0
_0800A4B8:
	movs r0, #2
	mov r2, r8
	orrs r2, r0
	mov r8, r2
_0800A4C0:
	ldr r0, [r6, #0x30]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0800A4CC
	b _0800A5DC
_0800A4CC:
	ldr r0, [r5, #0x28]
	cmp r0, r1
	bne _0800A4D4
	b _0800A5DC
_0800A4D4:
	ldr r4, [sp]
	lsls r3, r4, #0x10
	asrs r1, r3, #0x10
	adds r0, r5, #0
	adds r0, #0x2c
	movs r7, #0
	ldrsb r7, [r0, r7]
	adds r4, r1, r7
	mov r2, sb
	adds r2, #0x50
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov ip, r0
	add r1, ip
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	cmp r4, r1
	bgt _0800A518
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r4, r0
	cmp r0, r1
	bge _0800A52C
	cmp r4, r1
	blt _0800A5DC
_0800A518:
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, ip
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r4
	blt _0800A5DC
_0800A52C:
	ldr r3, [sp, #4]
	lsls r2, r3, #0x10
	asrs r0, r2, #0x10
	adds r1, r5, #0
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	str r1, [sp, #0x10]
	adds r4, r0, r1
	mov r1, sb
	adds r1, #0x52
	movs r7, #0
	ldrsh r0, [r1, r7]
	movs r3, #0x35
	ldrsb r7, [r3, r6]
	mov ip, r7
	adds r3, r0, r7
	mov sl, r2
	adds r2, r1, #0
	cmp r4, r3
	bgt _0800A570
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [sp, #0x10]
	subs r0, r0, r1
	adds r0, r4, r0
	cmp r0, r3
	bge _0800A584
	cmp r4, r3
	blt _0800A5DC
_0800A570:
	adds r0, r6, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r7, ip
	subs r0, r0, r7
	adds r0, r3, r0
	cmp r0, r4
	blt _0800A5DC
_0800A584:
	ldr r0, [sp, #0xc]
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r4, [sp, #8]
	asrs r0, r4, #0x10
	cmp r1, r0
	ble _0800A5AC
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov r7, r8
	orrs r7, r0
	mov r8, r7
	b _0800A5B6
	.align 2, 0
_0800A5A0: .4byte 0x03000050
_0800A5A4: .4byte 0x0300002C
_0800A5A8: .4byte 0x0300002E
_0800A5AC:
	movs r0, #0x80
	lsls r0, r0, #0xa
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_0800A5B6:
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r4, sl
	asrs r0, r4, #0x10
	cmp r1, r0
	ble _0800A5CE
	movs r0, #0x80
	lsls r0, r0, #9
	mov r7, r8
	orrs r7, r0
	mov r8, r7
	b _0800A5D8
_0800A5CE:
	movs r0, #0x80
	lsls r0, r0, #0xd
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_0800A5D8:
	movs r0, #1
	b _0800A68C
_0800A5DC:
	ldr r0, [r6, #0x28]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0800A692
	ldr r0, [r5, #0x30]
	cmp r0, r1
	beq _0800A692
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x34
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r3, r0, r2
	mov r0, sb
	adds r0, #0x50
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r0, r6, #0
	adds r0, #0x2c
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	cmp r3, r1
	bgt _0800A628
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r1
	bge _0800A63A
	cmp r3, r1
	blt _0800A692
_0800A628:
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r3
	blt _0800A692
_0800A63A:
	ldr r7, [sp, #4]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x35
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r2, r0, r4
	mov r0, sb
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r3, r6, #0
	adds r3, #0x2d
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r1, r0, r3
	cmp r2, r1
	bgt _0800A678
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _0800A68A
	cmp r2, r1
	blt _0800A692
_0800A678:
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0800A692
_0800A68A:
	movs r0, #2
_0800A68C:
	mov r2, r8
	orrs r2, r0
	mov r8, r2
_0800A692:
	mov r0, r8
_0800A694:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

@ --- Start of game/sa1_sa2_shared/collision.c ---

@ NOTE: parameters 1 and 2 are s16 in SA1, s32 in SA2!
	thumb_func_start CheckRectCollision_SpritePlayer
CheckRectCollision_SpritePlayer: @ 0x0800A6A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r5, r3, #0
	ldr r6, [sp, #0x18]
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r7, #0
	ldr r1, [r0, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800A6D0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800A6D4
_0800A6D0:
	movs r0, #0
	b _0800A75C
_0800A6D4:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	adds r1, #0x2c
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r5]
	asrs r0, r0, #8
	movs r4, #0
	ldrsb r4, [r6, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0800A706
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800A712
	cmp r2, r1
	blt _0800A75A
_0800A706:
	movs r0, #2
	ldrsb r0, [r6, r0]
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0800A75A
_0800A712:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r4, #1
	ldrsb r4, [r6, r4]
	adds r3, r0, r4
	cmp r2, r3
	bgt _0800A748
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r3
	bge _0800A754
	cmp r2, r3
	blt _0800A75A
_0800A748:
	movs r0, #3
	ldrsb r0, [r6, r0]
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r2
	blt _0800A75A
_0800A754:
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r7, r0
_0800A75A:
	adds r0, r7, #0
_0800A75C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

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
	bl sub_8042848
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

	thumb_func_start sub_800B4F8
sub_800B4F8: @ 0x0800B4F8
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
	bl sub_80182FC
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
	bl sub_80182FC
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

	thumb_func_start sub_800C1E8
sub_800C1E8: @ 0x0800C1E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x1c]
	mov r8, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	ldr r1, [r0, #0x64]
	mov ip, r1
	mov r7, ip
	adds r7, #0xc
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800C2AA
	ldr r1, [r7, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800C2AA
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x18
	asrs r3, r1, #0x18
	adds r2, r0, r3
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x38
	movs r6, #0
	ldrsb r6, [r1, r6]
	adds r1, r0, r6
	cmp r2, r1
	bgt _0800C24C
	lsls r0, r5, #8
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800C25E
	cmp r2, r1
	blt _0800C2AA
_0800C24C:
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	blt _0800C2AA
_0800C25E:
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r4, r5, #0
	lsls r1, r4, #0x10
	asrs r1, r1, #0x18
	adds r3, r0, r1
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r2, r7, #0
	adds r2, #0x2d
	movs r5, #0
	ldrsb r5, [r2, r5]
	adds r2, r0, r5
	cmp r3, r2
	bgt _0800C28E
	asrs r0, r4, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _0800C2A0
	cmp r3, r2
	blt _0800C2AA
_0800C28E:
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	blt _0800C2AA
_0800C2A0:
	mov r0, r8
	bl sa2__sub_800CBA4
	movs r0, #2
	b _0800C2AC
_0800C2AA:
	movs r0, #0
_0800C2AC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800C2B8
sub_800C2B8: @ 0x0800C2B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, [r4, #0x64]
	mov ip, r0
	mov r7, ip
	adds r7, #0xc
	ldr r0, [r6, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	cmp r0, r3
	beq _0800C388
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800C388
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0800C388
	ldr r0, [r7, #0x28]
	cmp r0, r3
	beq _0800C388
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2c
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r4]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x38
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _0800C32A
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0800C33C
	cmp r2, r1
	blt _0800C388
_0800C32A:
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _0800C388
_0800C33C:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r3, #0x2d
	ldrsb r4, [r3, r7]
	adds r3, r0, r4
	cmp r2, r3
	bgt _0800C372
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r3
	bge _0800C384
	cmp r2, r3
	blt _0800C388
_0800C372:
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r2
	blt _0800C388
_0800C384:
	movs r0, #2
	b _0800C38A
_0800C388:
	movs r0, #0
_0800C38A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800C394
sub_800C394: @ 0x0800C394
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r3, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
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

@ NOTE: Not a 1:1 match with SA2!
	thumb_func_start sa2__sub_800CBA4
sa2__sub_800CBA4: @ 0x0800C558
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0800C56C
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0800C570
_0800C56C:
	movs r0, #0
	b _0800C70C
_0800C570:
	movs r0, #0x78
	strh r0, [r4, #0x1c]
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0x10]
	cmp r0, #0
	blt _0800C58A
	cmp r0, #0
	bne _0800C590
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C590
_0800C58A:
	movs r0, #0xc0
	lsls r0, r0, #1
	b _0800C592
_0800C590:
	ldr r0, _0800C62C @ =0x0000FE80
_0800C592:
	strh r0, [r4, #8]
	movs r2, #0xfd
	lsls r2, r2, #8
	strh r2, [r4, #0xa]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800C5B0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #8]
_0800C5B0:
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	subs r0, #0x18
	ands r1, r0
	adds r0, #0x1c
	ands r1, r0
	subs r0, #0xc
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	ldr r0, _0800C630 @ =0xFFFFFBFF
	ands r1, r0
	ldr r0, _0800C634 @ =0xFFFFFEFF
	ands r1, r0
	str r1, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	adds r6, r4, #0
	adds r6, #0x26
	cmp r0, #0
	beq _0800C658
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r0, [r5]
	movs r7, #1
	eors r0, r7
	strb r0, [r5]
	ldrb r0, [r4, #0x14]
	adds r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	bl sub_8043AD8
	cmp r0, #3
	bgt _0800C638
	ldrb r0, [r5]
	eors r0, r7
	strb r0, [r5]
	b _0800C658
	.align 2, 0
_0800C62C: .4byte 0x0000FE80
_0800C630: .4byte 0xFFFFFBFF
_0800C634: .4byte 0xFFFFFEFF
_0800C638:
	ldr r0, [r4, #0x10]
	ldr r1, _0800C6C0 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldrb r1, [r6]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r6]
	ldr r2, [r4, #0x64]
	ldr r0, [r2, #0x1c]
	ldr r1, _0800C6C4 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r2, #0x1c]
_0800C658:
	adds r1, r6, #0
	ldrb r0, [r1]
	movs r2, #0x7f
	ands r2, r0
	strb r2, [r1]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0800C70A
	movs r0, #9
	ands r0, r2
	cmp r0, #0
	bne _0800C6FC
	ldr r2, _0800C6C8 @ =gRingCount
	ldrh r0, [r2]
	cmp r0, #0
	beq _0800C6D0
	adds r5, r0, #0
	ldr r0, _0800C6CC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0800C694
	adds r0, r5, #0
	cmp r5, #0xa
	bls _0800C692
	movs r0, #0xa
_0800C692:
	adds r5, r0, #0
_0800C694:
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	adds r2, r5, #0
	bl InitScatteringRings
	ldr r0, _0800C6CC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0800C6B4
	bl sub_80182FC
	movs r1, #4
	strb r1, [r0]
	strb r5, [r0, #1]
_0800C6B4:
	ldr r1, _0800C6C8 @ =gRingCount
	ldrh r0, [r1]
	subs r0, r0, r5
	strh r0, [r1]
	b _0800C70A
	.align 2, 0
_0800C6C0: .4byte 0xFEFFFFFF
_0800C6C4: .4byte 0xFFFFCFFF
_0800C6C8: .4byte gRingCount
_0800C6CC: .4byte gGameMode
_0800C6D0:
	ldr r0, _0800C6F4 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0800C70A
	ldr r0, _0800C6F8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #4
	beq _0800C70A
	cmp r0, #5
	beq _0800C70A
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0800C70A
	.align 2, 0
_0800C6F4: .4byte gStageFlags
_0800C6F8: .4byte gGameMode
_0800C6FC:
	movs r0, #0x77      @ SE_LIFE_LOST
	bl m4aSongNumStart
	ldrb r1, [r6]
	movs r0, #0xf6
	ands r0, r1
	strb r0, [r6]
_0800C70A:
	movs r0, #1
_0800C70C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    @ TODO: Only in SA1?
	thumb_func_start sub_800C714
sub_800C714: @ 0x0800C714
	push {lr}
	adds r3, r0, #0
	movs r1, #0x1e
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bgt _0800C728
	movs r1, #0x1c
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _0800C72C
_0800C728:
	movs r0, #0
	b _0800C75C
_0800C72C:
	movs r2, #0
	movs r1, #0
	movs r0, #0x1e
	strh r0, [r3, #0x1c]
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r3, #8]
	strh r0, [r3, #0xc]
	strh r1, [r3, #0xa]
	movs r0, #0x18
	strh r0, [r3, #0x1a]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #4
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3d
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	movs r0, #0x77      @ SE_LIFE_LOST
	bl m4aSongNumStart
	movs r0, #1
_0800C75C:
	pop {r1}
	bx r1

	thumb_func_start sub_800C760
sub_800C760: @ 0x0800C760
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _0800C774
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _0800C778
_0800C774:
	movs r0, #0
	b _0800C82E
_0800C778:
	movs r0, #0x78
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C78C
	movs r0, #0xc0
	lsls r0, r0, #1
	b _0800C78E
_0800C78C:
	ldr r0, _0800C834 @ =0x0000FE80
_0800C78E:
	strh r0, [r5, #8]
	movs r2, #0xfd
	lsls r2, r2, #8
	strh r2, [r5, #0xa]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800C7AC
	lsls r0, r2, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0xa]
	ldrh r0, [r5, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #8]
_0800C7AC:
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r0, r1
	ldr r1, _0800C838 @ =0xFFFFFBFF
	ands r1, r0
	ldr r0, _0800C83C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	ldr r0, _0800C840 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0800C826
	ldr r6, _0800C844 @ =gRingCount
	ldrh r4, [r6]
	cmp r4, #0xa
	bls _0800C808
	movs r4, #0xa
_0800C808:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	adds r2, r4, #0
	bl InitScatteringRings
	ldrh r0, [r6]
	subs r0, r0, r4
	strh r0, [r6]
	bl sub_80182FC
	movs r1, #4
	strb r1, [r0]
	strb r4, [r0, #1]
_0800C826:
	movs r0, #0x77      @ SE_LIFE_LOST
	bl m4aSongNumStart
	movs r0, #1
_0800C82E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800C834: .4byte 0x0000FE80
_0800C838: .4byte 0xFFFFFBFF
_0800C83C: .4byte 0xFFFFFEFF
_0800C840: .4byte gGameMode
_0800C844: .4byte gRingCount

	thumb_func_start sub_800C848
sub_800C848: @ 0x0800C848
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _0800C85C
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _0800C860
_0800C85C:
	movs r0, #0
	b _0800C91C
_0800C860:
	movs r0, #0x78
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C878
	ldr r0, _0800C874 @ =0x0000FE80
	b _0800C87C
	.align 2, 0
_0800C874: .4byte 0x0000FE80
_0800C878:
	movs r0, #0xc0
	lsls r0, r0, #1
_0800C87C:
	strh r0, [r5, #8]
	movs r2, #0xfd
	lsls r2, r2, #8
	strh r2, [r5, #0xa]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800C89A
	lsls r0, r2, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0xa]
	ldrh r0, [r5, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #8]
_0800C89A:
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r0, r1
	ldr r1, _0800C924 @ =0xFFFFFBFF
	ands r1, r0
	ldr r0, _0800C928 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x29
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	ldr r0, _0800C92C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0800C914
	ldr r6, _0800C930 @ =gRingCount
	ldrh r4, [r6]
	cmp r4, #5
	bls _0800C8F6
	movs r4, #5
_0800C8F6:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	adds r2, r4, #0
	bl InitScatteringRings
	ldrh r0, [r6]
	subs r0, r0, r4
	strh r0, [r6]
	bl sub_80182FC
	movs r1, #4
	strb r1, [r0]
	strb r4, [r0, #1]
_0800C914:
	movs r0, #0x77      @ SE_LIFE_LOST
	bl m4aSongNumStart
	movs r0, #1
_0800C91C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800C924: .4byte 0xFFFFFBFF
_0800C928: .4byte 0xFFFFFEFF
_0800C92C: .4byte gGameMode
_0800C930: .4byte gRingCount

	thumb_func_start sub_800C934
sub_800C934: @ 0x0800C934
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	mov sb, r2
	adds r7, r3, #0
	ldr r4, [sp, #0x2c]
	ldr r0, _0800CA1C @ =gStageFlags
	ldrh r2, [r0]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	mov r0, r8
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, r8
	adds r2, #0x2f
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r0, r2
	asrs r0, r0, #1
	add r0, sb
	mov sl, r0
	mov r0, r8
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r1, r1, r3
	ldr r0, [r4]
	asrs r0, r0, #8
	movs r5, #0
	ldrsb r5, [r7, r5]
	adds r2, r0, r5
	cmp r1, r2
	bgt _0800C9A2
	mov r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	bge _0800C9B0
	cmp r1, r2
	bge _0800C9A2
	b _0800CBA8
_0800C9A2:
	movs r0, #2
	ldrsb r0, [r7, r0]
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0800C9B0
	b _0800CBA8
_0800C9B0:
	mov r3, r8
	adds r3, #0x2d
	movs r0, #0
	ldrsb r0, [r3, r0]
	mov ip, r0
	mov r6, sb
	add r6, ip
	ldr r2, [r4, #4]
	asrs r0, r2, #8
	movs r1, #1
	ldrsb r1, [r7, r1]
	adds r5, r0, r1
	str r3, [sp, #4]
	cmp r6, r5
	bgt _0800C9E8
	mov r0, r8
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r3, ip
	subs r0, r0, r3
	adds r0, r6, r0
	cmp r0, r5
	bge _0800C9F6
	cmp r6, r5
	bge _0800C9E8
	b _0800CBA8
_0800C9E8:
	movs r0, #3
	ldrsb r0, [r7, r0]
	subs r0, r0, r1
	adds r0, r5, r0
	cmp r0, r6
	bge _0800C9F6
	b _0800CBA8
_0800C9F6:
	ldr r0, [sp]
	cmp r0, #0
	bne _0800CA20
	asrs r0, r2, #8
	cmp r0, sl
	ble _0800CA28
	mov r0, r8
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	subs r0, r0, r1
	lsls r0, r0, #8
	ldrb r1, [r4, #4]
	adds r1, r1, r0
	str r1, [r4, #4]
	b _0800CB4C
	.align 2, 0
_0800CA1C: .4byte gStageFlags
_0800CA20:
	asrs r0, r2, #8
	cmp r0, sl
	bge _0800CA28
	b _0800CB38
_0800CA28:
	ldr r1, [sp]
	cmp r1, #0
	bne _0800CA3E
	ldr r2, [sp, #4]
	movs r0, #0
	ldrsb r0, [r2, r0]
	add r0, sb
	movs r1, #3
	ldrsb r1, [r7, r1]
	subs r0, r0, r1
	b _0800CA50
_0800CA3E:
	mov r0, r8
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	movs r1, #3
	ldrsb r1, [r7, r1]
	adds r0, r0, r1
_0800CA50:
	lsls r0, r0, #8
	ldrb r1, [r4, #4]
	adds r1, r1, r0
	str r1, [r4, #4]
	ldr r3, _0800CA6C @ =gCamera
	movs r1, #0x14
	ldrsh r0, [r3, r1]
	lsls r0, r0, #8
	ldr r1, [r4, #4]
	cmp r1, r0
	bge _0800CA70
_0800CA66:
	str r0, [r4, #4]
	b _0800CBA8
	.align 2, 0
_0800CA6C: .4byte gCamera
_0800CA70:
	ldr r2, _0800CB34 @ =gCamera
	movs r3, #0x16
	ldrsh r0, [r2, r3]
	lsls r0, r0, #8
	cmp r1, r0
	bge _0800CA66
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0800CA86
	b _0800CBA8
_0800CA86:
	ldrb r0, [r4, #0xf]
	rsbs r0, r0, #0
	strb r0, [r7, #1]
	ldrb r0, [r4, #0xf]
	strb r0, [r7, #3]
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r2, [r4, #0x10]
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	bne _0800CAAC
	ldrb r0, [r4, #0x14]
	adds r0, #0x20
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800CAAC
	strh r2, [r4, #0xc]
_0800CAAC:
	ldr r0, [r4, #0x10]
	movs r1, #8
	orrs r0, r1
	str r0, [r4, #0x10]
	ldr r2, [sp, #0x30]
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x59
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldr r1, [r4, #0x10]
	adds r3, r0, #0
	cmp r2, #2
	bne _0800CADC
	subs r0, #0x1c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0800CB00
	cmp r0, #3
	beq _0800CB00
_0800CADC:
	cmp r2, #3
	bne _0800CAF8
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	beq _0800CAF8
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0800CB00
_0800CAF8:
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x10]
_0800CB00:
	mov r0, r8
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _0800CB9A
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #2
	bne _0800CB24
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0800CB2E
	cmp r0, #3
	beq _0800CB2E
_0800CB24:
	adds r0, r4, #0
	bl sub_8042848
	ldrh r0, [r4, #8]
	strh r0, [r4, #0xc]
_0800CB2E:
	movs r0, #0
	strb r0, [r4, #0x14]
	b _0800CB9A
	.align 2, 0
_0800CB34: .4byte gCamera
_0800CB38:
	ldr r3, [sp, #4]
	movs r0, #0
	ldrsb r0, [r3, r0]
	add r0, sb
	adds r0, r0, r1
	lsls r0, r0, #8
	ldr r1, _0800CBA0 @ =0xFFFFFF00
	bics r2, r1
	adds r0, r2, r0
	str r0, [r4, #4]
_0800CB4C:
	ldr r1, _0800CBA4 @ =gCamera
	movs r2, #0x14
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	ldr r1, [r4, #4]
	cmp r1, r0
	bge _0800CB5C
	b _0800CA66
_0800CB5C:
	ldr r3, _0800CBA4 @ =gCamera
	movs r2, #0x16
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	cmp r1, r0
	blt _0800CB6A
	b _0800CA66
_0800CB6A:
	ldr r3, [sp, #0x30]
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r3]
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0800CBA8
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r2, [r4, #0x10]
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	bne _0800CB9A
	ldrb r0, [r4, #0x14]
	adds r0, #0x20
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800CB9A
	strh r2, [r4, #0xc]
_0800CB9A:
	movs r0, #1
	b _0800CBAA
	.align 2, 0
_0800CBA0: .4byte 0xFFFFFF00
_0800CBA4: .4byte gCamera
_0800CBA8:
	movs r0, #0
_0800CBAA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800CBBC
sub_800CBBC: @ 0x0800CBBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	mov sb, r1
	mov sl, r2
	adds r7, r3, #0
	ldr r4, [sp, #0x3c]
	ldr r0, [sp, #0x40]
	mov r8, r0
	adds r0, r6, #0
	adds r0, #0x2c
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov ip, r0
	adds r0, r5, r0
	asrs r0, r0, #1
	add r0, sb
	str r0, [sp, #8]
	ldrb r0, [r4, #0x14]
	adds r0, #0x20
	movs r1, #0xc0
	ands r0, r1
	asrs r0, r0, #6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800CC04
	b _0800CE20
_0800CC04:
	mov r1, sb
	adds r3, r1, r5
	ldr r0, [r4]
	asrs r1, r0, #8
	movs r2, #0
	ldrsb r2, [r7, r2]
	adds r1, r1, r2
	str r0, [sp, #0x10]
	str r2, [sp, #0xc]
	cmp r3, r1
	bgt _0800CC2A
	mov r2, ip
	subs r0, r2, r5
	adds r0, r3, r0
	cmp r0, r1
	bge _0800CC3A
	cmp r3, r1
	bge _0800CC2A
	b _0800CE20
_0800CC2A:
	movs r0, #2
	ldrsb r0, [r7, r0]
	ldr r5, [sp, #0xc]
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r3
	bge _0800CC3A
	b _0800CE20
_0800CC3A:
	adds r0, r6, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x14]
	adds r2, r0, #0
	add r2, sl
	ldr r1, [r4, #4]
	asrs r0, r1, #8
	movs r3, #1
	ldrsb r3, [r7, r3]
	mov ip, r3
	adds r3, r0, r3
	mov sl, r1
	cmp r2, r3
	bgt _0800CC76
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r5, [sp, #0x14]
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	bge _0800CC86
	cmp r2, r3
	bge _0800CC76
	b _0800CE20
_0800CC76:
	movs r0, #3
	ldrsb r0, [r7, r0]
	mov r1, ip
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _0800CC86
	b _0800CE20
_0800CC86:
	ldr r2, [sp, #0x10]
	asrs r0, r2, #8
	ldr r3, [sp, #8]
	cmp r0, r3
	bgt _0800CD58
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	movs r1, #2
	ldrsb r1, [r7, r1]
	subs r5, r0, r1
	mov r0, sl
	asrs r1, r0, #8
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r2, [r0]
	movs r3, #8
	rsbs r3, r3, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _0800CCC8 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_803FA74
	cmp r0, #0
	blt _0800CCCC
	lsls r0, r5, #8
	b _0800CCE2
	.align 2, 0
_0800CCC8: .4byte sub_803FE44
_0800CCCC:
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	movs r1, #0
	ldrsb r1, [r7, r1]
	subs r0, r0, r1
	adds r0, #1
	lsls r0, r0, #8
_0800CCE2:
	str r0, [r4]
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0800CCEE
	b _0800CE20
_0800CCEE:
	mov r2, r8
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [r2]
	ldr r2, [r4, #0x10]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0800CDD0
	adds r0, r4, #0
	adds r0, #0x3e
	movs r3, #0
	ldrsb r3, [r0, r3]
	cmp r3, #0
	bne _0800CDD0
	movs r5, #8
	ldrsh r0, [r4, r5]
	cmp r0, #0
	ble _0800CDD4
	movs r1, #0x20
	orrs r2, r1
	str r2, [r4, #0x10]
	mov r2, r8
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldr r0, [r4, #0x10]
	subs r1, #0x25
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r2]
	ands r0, r1
	str r0, [r2]
	ldr r0, [r4, #0x10]
	adds r1, #3
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r2]
	ands r0, r1
	str r0, [r2]
	strh r3, [r4, #0xc]
	strh r3, [r4, #8]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	b _0800CDD4
_0800CD58:
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	ldr r3, [sp, #0xc]
	subs r0, r0, r3
	adds r5, r0, #1
	mov r0, sl
	asrs r1, r0, #8
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0800CD8C @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r3, #8
	bl sub_803FA74
	cmp r0, #0
	blt _0800CD90
	lsls r0, r5, #8
	b _0800CDA4
	.align 2, 0
_0800CD8C: .4byte sub_803FE44
_0800CD90:
	adds r0, r6, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	movs r1, #2
	ldrsb r1, [r7, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
_0800CDA4:
	str r0, [r4]
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0800CE20
	mov r2, r8
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r2]
	ldr r2, [r4, #0x10]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0800CDD0
	adds r0, r4, #0
	adds r0, #0x3e
	movs r3, #0
	ldrsb r3, [r0, r3]
	cmp r3, #0
	beq _0800CDD8
_0800CDD0:
	movs r0, #0
	strh r0, [r4, #8]
_0800CDD4:
	movs r0, #1
	b _0800CE22
_0800CDD8:
	movs r5, #8
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _0800CDD4
	movs r1, #0x20
	orrs r2, r1
	str r2, [r4, #0x10]
	mov r2, r8
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	ldr r0, [r4, #0x10]
	subs r1, #0x25
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r2]
	ands r0, r1
	str r0, [r2]
	ldr r0, [r4, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	strh r3, [r4, #0xc]
	strh r3, [r4, #8]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	b _0800CDD4
_0800CE20:
	movs r0, #0
_0800CE22:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800CE34
sub_800CE34: @ 0x0800CE34
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0xc
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldrb r6, [r3, #0xe]
	rsbs r0, r6, #0
	add r1, sp, #8
	strb r0, [r1]
	ldrb r3, [r3, #0xf]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #9
	strb r2, [r0]
	adds r0, #1
	strb r6, [r0]
	adds r0, #1
	strb r3, [r0]
	add r0, sp, #4
	movs r2, #4
	bl memcpy
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	add r0, sp, #4
	str r0, [sp]
	mov r0, sb
	adds r1, r4, #0
	adds r2, r5, #0
	mov r3, r8
	bl CheckRectCollision_SpritePlayer
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800CE98
sub_800CE98: @ 0x0800CE98
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0xc
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldrb r6, [r3, #0xe]
	adds r6, #5
	rsbs r0, r6, #0
	add r1, sp, #8
	strb r0, [r1]
	ldrb r3, [r3, #0xf]
	movs r0, #1
	subs r0, r0, r3
	mov r2, sp
	adds r2, #9
	strb r0, [r2]
	mov r0, sp
	adds r0, #0xa
	strb r6, [r0]
	subs r3, #1
	adds r0, #1
	strb r3, [r0]
	add r0, sp, #4
	movs r2, #4
	bl memcpy
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	add r0, sp, #4
	str r0, [sp]
	mov r0, sb
	adds r1, r4, #0
	adds r2, r5, #0
	mov r3, r8
	bl CheckRectCollision_SpritePlayer
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
