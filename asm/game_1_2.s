.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_804CD80
sub_804CD80: @ 0x0804CD80
	push {r4, r5, lr}
	mov ip, r0
	movs r5, #0
	movs r2, #0
	strh r2, [r0]
	strb r5, [r0, #2]
	strb r5, [r0, #3]
	str r2, [r0, #4]
	str r2, [r0, #8]
	str r2, [r0, #0x50]
	str r2, [r0, #0x54]
	adds r0, #0x58
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	mov r3, ip
	adds r3, #0x18
	mov r4, ip
	adds r4, #0xc
	ldr r0, [r1, #4]
	str r0, [r3, #4]
	ldrh r0, [r1]
	strh r0, [r3, #0xa]
	ldrb r1, [r1, #2]
	mov r0, ip
	adds r0, #0x38
	strb r1, [r0]
	strh r2, [r3, #0x1a]
	str r2, [r3, #0x10]
	strh r2, [r3, #8]
	mov r1, ip
	adds r1, #0x39
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r3, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x3d
	strb r5, [r0]
	mov r0, ip
	strh r2, [r0, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r2, [r4, #6]
	strh r2, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x30]
	str r0, [r3, #0x28]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_804CDF8
sub_804CDF8: @ 0x0804CDF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0804CE44 @ =gCurTask
	ldr r0, [r0]
	mov ip, r0
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	adds r0, #0x18
	adds r4, r5, r0
	ldr r1, _0804CE48 @ =0x0300000C
	adds r1, r1, r5
	mov r8, r1
	ldr r2, _0804CE4C @ =gCamera
	ldr r0, [r6, #0x50]
	asrs r0, r0, #8
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r3, r0, r1
	ldr r0, [r6, #0x54]
	asrs r0, r0, #8
	movs r7, #2
	ldrsh r1, [r2, r7]
	subs r2, r0, r1
	adds r1, r3, #0
	adds r1, #0x20
	ldr r0, _0804CE50 @ =0x0000012F
	cmp r1, r0
	bhi _0804CE3A
	cmp r2, #0xdf
	ble _0804CE54
_0804CE3A:
	mov r0, ip
	bl TaskDestroy
	b _0804CEC2
	.align 2, 0
_0804CE44: .4byte gCurTask
_0804CE48: .4byte 0x0300000C
_0804CE4C: .4byte gCamera
_0804CE50: .4byte 0x0000012F
_0804CE54:
	mov r0, r8
	strh r3, [r0, #6]
	strh r2, [r0, #8]
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r2, _0804CECC @ =gUnknown_0300504C
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r4, #0x10]
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	mov r1, r8
	bl sub_80037D0
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _0804CED0 @ =0x03000058
	adds r3, r5, r1
	movs r7, #0
	ldrsh r1, [r3, r7]
	ldr r0, [r6, #0x50]
	adds r0, r0, r1
	str r0, [r6, #0x50]
	ldr r0, _0804CED4 @ =0x0300005A
	adds r2, r5, r0
	movs r7, #0
	ldrsh r1, [r2, r7]
	ldr r0, [r6, #0x54]
	adds r0, r0, r1
	str r0, [r6, #0x54]
	ldr r1, _0804CED8 @ =0x0300005C
	adds r0, r5, r1
	ldrh r0, [r0]
	ldrh r7, [r3]
	adds r0, r0, r7
	strh r0, [r3]
	adds r1, #2
	adds r0, r5, r1
	ldrh r0, [r0]
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r2]
_0804CEC2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CECC: .4byte gUnknown_0300504C
_0804CED0: .4byte 0x03000058
_0804CED4: .4byte 0x0300005A
_0804CED8: .4byte 0x0300005C

	thumb_func_start sub_804CEDC
sub_804CEDC: @ 0x0804CEDC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, r1, #0
	adds r3, r2, #0
	ldr r1, _0804CF18 @ =gCurTask
	ldr r1, [r1]
	ldrh r2, [r1, #0x10]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r3, [sp]
	movs r1, #0x60
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	ldrh r0, [r4, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	adds r1, r5, #0
	bl sub_804CD80
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0804CF18: .4byte gCurTask

	thumb_func_start sub_804CF1C
sub_804CF1C: @ 0x0804CF1C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, r1, #0
	adds r3, r2, #0
	ldr r1, _0804CF58 @ =gCurTask
	ldr r1, [r1]
	ldrh r2, [r1, #0x10]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r3, [sp]
	movs r1, #0x7c
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	ldrh r0, [r4, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	adds r1, r5, #0
	bl sub_804CF5C
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0804CF58: .4byte gCurTask

	thumb_func_start sub_804CF5C
sub_804CF5C: @ 0x0804CF5C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_804CD80
	movs r0, #0
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	str r0, [r4, #0x68]
	str r0, [r4, #0x6c]
	adds r1, r4, #0
	adds r1, #0x70
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804CF88
sub_804CF88: @ 0x0804CF88
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0804CF9C @ =0x03000018
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0804CF9C: .4byte 0x03000018

	thumb_func_start sub_804CFA0
sub_804CFA0: @ 0x0804CFA0
	adds r2, r0, #0
	adds r0, #0x58
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2, #0x50]
	adds r0, r0, r1
	str r0, [r2, #0x50]
	adds r0, r2, #0
	adds r0, #0x5a
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2, #0x54]
	adds r0, r0, r1
	str r0, [r2, #0x54]
	bx lr
	.align 2, 0

	thumb_func_start sub_804CFC0
sub_804CFC0: @ 0x0804CFC0
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x58
	adds r0, #0x5c
	ldrh r0, [r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r0, r2, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	bx lr

	thumb_func_start sub_804CFE0
sub_804CFE0: @ 0x0804CFE0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r5, r4, #0
	ldrh r2, [r3]
	cmp r1, r2
	beq _0804D022
	subs r0, r1, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0804D00E
	adds r0, r4, r2
	strh r0, [r3]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0804D01E
	strh r1, [r3]
	b _0804D022
_0804D00E:
	subs r0, r2, r5
	strh r0, [r3]
	subs r0, r6, r0
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0804D01E
	strh r6, [r3]
	b _0804D022
_0804D01E:
	movs r0, #0
	b _0804D024
_0804D022:
	movs r0, #1
_0804D024:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_804D02C
sub_804D02C: @ 0x0804D02C
	adds r2, r0, #0
	ldr r3, _0804D04C @ =gUnknown_030060E0
	cmp r2, #0
	beq _0804D040
	ldr r0, _0804D050 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804D054
_0804D040:
	movs r0, #1
	strh r0, [r3]
	movs r0, #2
	strh r0, [r3, #2]
	b _0804D05E
	.align 2, 0
_0804D04C: .4byte gUnknown_030060E0
_0804D050: .4byte gUnknown_03005004
_0804D054:
	cmp r2, #1
	bne _0804D05E
	movs r0, #2
	strh r0, [r3]
	strh r2, [r3, #2]
_0804D05E:
	bx lr

	thumb_func_start sub_804D060
sub_804D060: @ 0x0804D060
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r1, _0804D0AC @ =gUnknown_03006170
	ldr r4, _0804D0B0 @ =gUnknown_030060F0
	ldrh r0, [r1]
	movs r2, #0x30
	ands r2, r0
	adds r1, #2
	cmp r2, #0x20
	bne _0804D0BE
	movs r3, #0
	cmp r3, r6
	bge _0804D0F6
	movs r0, #0xd0
	mov ip, r0
	movs r7, #0x20
	adds r5, r1, #0
_0804D082:
	ldrh r0, [r4]
	mov r1, ip
	ands r1, r0
	cmp r1, #0
	bne _0804D0F6
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r3, #3
	ble _0804D09E
	cmp r2, #0
	bne _0804D0B4
_0804D09E:
	adds r5, #2
	adds r4, #2
	adds r3, #1
	cmp r3, r6
	blt _0804D082
	b _0804D0F6
	.align 2, 0
_0804D0AC: .4byte gUnknown_03006170
_0804D0B0: .4byte gUnknown_030060F0
_0804D0B4:
	movs r0, #1
	rsbs r0, r0, #0
	b _0804D0F8
_0804D0BA:
	movs r0, #1
	b _0804D0F8
_0804D0BE:
	cmp r2, #0x10
	bne _0804D0F6
	movs r3, #0
	cmp r3, r6
	bge _0804D0F6
	movs r0, #0xe0
	mov ip, r0
	movs r7, #0x10
	adds r5, r1, #0
_0804D0D0:
	ldrh r0, [r4]
	mov r1, ip
	ands r1, r0
	cmp r1, #0
	bne _0804D0F6
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r3, #3
	ble _0804D0EC
	cmp r2, #0
	bne _0804D0BA
_0804D0EC:
	adds r5, #2
	adds r4, #2
	adds r3, #1
	cmp r3, r6
	blt _0804D0D0
_0804D0F6:
	movs r0, #0
_0804D0F8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_804D100
sub_804D100: @ 0x0804D100
	sub sp, #4
	mov r0, sp
	movs r3, #0
	strh r3, [r0]
	ldr r0, _0804D12C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0804D130 @ =gUnknown_030060F0
	str r1, [r0, #4]
	ldr r2, _0804D134 @ =0x81000002
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	ldr r1, _0804D138 @ =gUnknown_03006170
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #4
	bx lr
	.align 2, 0
_0804D12C: .4byte 0x040000D4
_0804D130: .4byte gUnknown_030060F0
_0804D134: .4byte 0x81000002
_0804D138: .4byte gUnknown_03006170

	thumb_func_start sub_804D13C
sub_804D13C: @ 0x0804D13C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r5, _0804D170 @ =gUnknown_03006166
	ldr r3, _0804D174 @ =gUnknown_030061E6
	movs r4, #0x3a
_0804D148:
	subs r1, r5, #2
	ldrh r0, [r1]
	strh r0, [r5]
	adds r5, r1, #0
	subs r2, r3, #2
	ldrh r0, [r2]
	strh r0, [r3]
	adds r3, r2, #0
	subs r4, #1
	cmp r4, #0
	bge _0804D148
	strh r6, [r1]
	ldrh r1, [r1, #2]
	adds r0, r6, #0
	bics r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804D170: .4byte gUnknown_03006166
_0804D174: .4byte gUnknown_030061E6
