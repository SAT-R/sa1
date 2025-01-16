.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Drisame
CreateEntity_Drisame: @ 0x08072AD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, _08072BC4 @ =sub_8072BE0
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08072BC8 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	ldr r0, _08072BCC @ =0x0300000C
	adds r4, r3, r0
	movs r7, #0
	movs r6, #0
	strh r5, [r2, #4]
	mov r1, r8
	strh r1, [r2, #6]
	mov r0, sl
	str r0, [r2]
	ldrb r0, [r0]
	strb r0, [r2, #8]
	mov r1, sb
	strb r1, [r2, #9]
	str r6, [r2, #0x44]
	str r6, [r2, #0x48]
	str r6, [r2, #0x3c]
	str r6, [r2, #0x40]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r4, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov r8, r1
	add r0, r8
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	movs r0, #0xa
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	movs r0, #0xd4
	lsls r0, r0, #1
	strh r0, [r4, #0xa]
	ldr r3, [sp, #8]
	ldr r1, _08072BD0 @ =0x0300002C
	adds r0, r3, r1
	strb r7, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _08072BD4 @ =0x0300002D
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08072BD8 @ =0x0300002E
	adds r1, r3, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08072BDC @ =0x03000031
	adds r3, r3, r1
	strb r7, [r3]
	subs r0, #0x11
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r3, #0x16
	ldrsh r0, [r4, r3]
	movs r3, #0x18
	ldrsh r1, [r4, r3]
	bl sub_8072F7C
	ldr r2, [sp, #4]
	str r0, [r2, #0x54]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072BC4: .4byte sub_8072BE0
_08072BC8: .4byte TaskDestructor_8009670
_08072BCC: .4byte 0x0300000C
_08072BD0: .4byte 0x0300002C
_08072BD4: .4byte 0x0300002D
_08072BD8: .4byte 0x0300002E
_08072BDC: .4byte 0x03000031

	thumb_func_start sub_8072BE0
sub_8072BE0: @ 0x08072BE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r3, _08072C98 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r0, r0, r1
	mov sb, r0
	ldr r5, [r7]
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r2, #0x10
	mov ip, r4
	asrs r2, r2, #0x10
	str r2, [r7, #0x4c]
	lsrs r6, r1, #0x10
	mov r8, r6
	asrs r1, r1, #0x10
	str r1, [r7, #0x50]
	ldr r4, _08072C9C @ =gCamera
	ldrh r0, [r4]
	subs r0, r2, r0
	mov r6, sb
	strh r0, [r6, #0x16]
	ldrh r0, [r4, #2]
	subs r0, r1, r0
	strh r0, [r6, #0x18]
	movs r6, #0
	ldrsh r0, [r4, r6]
	mov sl, r0
	movs r0, #0xb8
	lsls r0, r0, #1
	add r0, sl
	cmp r2, r0
	bgt _08072C66
	mov r0, sl
	subs r0, #0x80
	cmp r2, r0
	blt _08072C66
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r2, r4
	cmp r1, r0
	bgt _08072C66
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _08072CA0
_08072C66:
	mov r6, sb
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08072C8C
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08072C8C
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08072CA0
_08072C8C:
	ldrb r0, [r7, #8]
	strb r0, [r5]
	ldr r0, [r3]
	bl TaskDestroy
	b _08072E58
	.align 2, 0
_08072C98: .4byte gCurTask
_08072C9C: .4byte gCamera
_08072CA0:
	ldr r6, _08072D40 @ =gPlayer
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	mov r3, r8
	lsls r5, r3, #0x10
	asrs r4, r5, #0x10
	mov sl, r4
	subs r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r6]
	asrs r1, r1, #8
	mov r2, ip
	lsls r4, r2, #0x10
	asrs r3, r4, #0x10
	mov r8, r3
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	ldr r1, _08072D44 @ =0x000003FF
	ands r1, r0
	str r1, [sp]
	adds r2, r1, #0
	ldr r3, _08072D48 @ =0xFFFFFE7F
	adds r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r4, [sp, #4]
	str r5, [sp, #8]
	cmp r0, #0xfe
	bhi _08072D8A
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	mov r4, sl
	subs r0, r0, r4
	adds r5, r0, #0
	muls r5, r0, r5
	ldr r0, [r6]
	asrs r0, r0, #8
	mov r6, r8
	subs r0, r0, r6
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	adds r5, r5, r0
	ldr r0, _08072D4C @ =0x000018FF
	cmp r5, r0
	bgt _08072D8A
	ldr r0, [r7, #0x54]
	ldrh r0, [r0, #6]
	ldr r3, _08072D50 @ =0x030000BD
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0]
	mov r4, sb
	ldr r0, [r4, #0x10]
	ldr r1, _08072D54 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r1, _08072D58 @ =gSineTable
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r2, r6
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r0, r4, #0
	movs r1, #0x23
	bl Div
	cmp r0, #0
	bge _08072D5C
	adds r0, r4, #0
	movs r1, #0x23
	bl Div
	b _08072D66
	.align 2, 0
_08072D40: .4byte gPlayer
_08072D44: .4byte 0x000003FF
_08072D48: .4byte 0xFFFFFE7F
_08072D4C: .4byte 0x000018FF
_08072D50: .4byte 0x030000BD
_08072D54: .4byte 0xFFFFFBFF
_08072D58: .4byte gSineTable
_08072D5C:
	adds r0, r4, #0
	movs r1, #0x23
	bl Div
	rsbs r0, r0, #0
_08072D66:
	str r0, [r7, #0x3c]
	ldr r1, _08072E34 @ =gSineTable
	ldr r2, [sp]
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x23
	bl Div
	str r0, [r7, #0x40]
	movs r0, #0
	str r0, [r7, #0x44]
	str r0, [r7, #0x48]
	ldr r0, _08072E38 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08072E3C @ =sub_8072E68
	str r0, [r1, #8]
_08072D8A:
	ldr r4, [sp]
	mov r8, r4
	mov r0, r8
	subs r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _08072E18
	ldr r2, _08072E40 @ =gPlayer
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	ldr r6, [sp, #8]
	asrs r1, r6, #0x10
	subs r0, r0, r1
	adds r5, r0, #0
	muls r5, r0, r5
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r2, [sp, #4]
	asrs r1, r2, #0x10
	subs r0, r0, r1
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	adds r5, r5, r0
	ldr r0, _08072E44 @ =0x000018FF
	cmp r5, r0
	bgt _08072E18
	ldr r0, [r7, #0x54]
	ldrh r0, [r0, #6]
	ldr r4, _08072E48 @ =0x030000BD
	adds r0, r0, r4
	movs r6, #0
	movs r1, #1
	strb r1, [r0]
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
	ldr r5, _08072E34 @ =gSineTable
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, r8
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r4, #0x23
	adds r1, r4, #0
	bl Div
	str r0, [r7, #0x3c]
	mov r1, r8
	lsls r0, r1, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r4, #0
	bl Div
	str r0, [r7, #0x40]
	str r6, [r7, #0x44]
	str r6, [r7, #0x48]
	ldr r0, _08072E38 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08072E3C @ =sub_8072E68
	str r0, [r1, #8]
_08072E18:
	ldr r3, [sp, #4]
	asrs r1, r3, #0x10
	ldr r4, [sp, #8]
	asrs r2, r4, #0x10
	mov r0, sb
	bl sa2__sub_800C4FC
	cmp r0, #0
	beq _08072E4C
	ldr r0, _08072E38 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08072E58
	.align 2, 0
_08072E34: .4byte gSineTable
_08072E38: .4byte gCurTask
_08072E3C: .4byte sub_8072E68
_08072E40: .4byte gPlayer
_08072E44: .4byte 0x000018FF
_08072E48: .4byte 0x030000BD
_08072E4C:
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
_08072E58:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8072E68
sub_8072E68: @ 0x08072E68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08072F34 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r3, _08072F38 @ =0x0300000C
	adds r7, r1, r3
	ldr r5, [r6]
	ldr r3, [r6, #0x44]
	ldr r0, [r6, #0x3c]
	adds r3, r3, r0
	str r3, [r6, #0x44]
	ldr r4, [r6, #0x48]
	ldr r0, [r6, #0x40]
	adds r4, r4, r0
	str r4, [r6, #0x48]
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r5, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	asrs r3, r3, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r4, r4, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r4
	lsls r2, r2, #0x10
	ldr r3, _08072F3C @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r1, #0x10
	mov ip, r4
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsrs r4, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r7, #0x18]
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r6, #0x4c]
	cmp r1, r0
	bgt _08072F00
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _08072F00
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	cmp r1, r0
	bgt _08072F00
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _08072F40
_08072F00:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08072F24
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08072F24
	movs r3, #0x18
	ldrsh r1, [r7, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08072F40
_08072F24:
	ldrb r0, [r6, #8]
	strb r0, [r5]
	mov r4, r8
	ldr r0, [r4]
	bl TaskDestroy
	b _08072F70
	.align 2, 0
_08072F34: .4byte gCurTask
_08072F38: .4byte 0x0300000C
_08072F3C: .4byte gCamera
_08072F40:
	mov r0, ip
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sa2__sub_800C4FC
	cmp r0, #0
	beq _08072F64
	ldr r0, _08072F60 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08072F70
	.align 2, 0
_08072F60: .4byte gCurTask
_08072F64:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08072F70:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8072F7C
sub_8072F7C: @ 0x08072F7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	ldr r1, _08073048 @ =gUnknown_086CECFC
	add r0, sp, #4
	movs r2, #8
	bl memcpy
	ldr r0, _0807304C @ =sub_8073270
	movs r2, #0xc0
	lsls r2, r2, #6
	ldr r1, _08073050 @ =sub_80734C0
	str r1, [sp]
	movs r1, #0xc0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x14]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r4, r7, #0
	adds r0, #0x30
	adds r0, r0, r1
	mov sl, r0
	ldr r2, _08073054 @ =0x03000060
	adds r2, r2, r1
	mov sb, r2
	ldr r3, _08073058 @ =0x03000090
	adds r0, r1, r3
	movs r2, #0
	mov r5, sp
	ldrh r5, [r5, #0xc]
	strh r5, [r0]
	adds r3, #2
	adds r0, r1, r3
	mov r5, sp
	ldrh r5, [r5, #0x10]
	strh r5, [r0]
	adds r3, #0x2a
	adds r0, r1, r3
	strb r2, [r0]
	ldr r5, _0807305C @ =0x030000BD
	adds r0, r1, r5
	strb r2, [r0]
	movs r5, #0
	mov r0, sp
	adds r0, #5
	str r0, [sp, #0x64]
	ldr r2, _08073060 @ =0x030000B4
	adds r2, r1, r2
	str r2, [sp, #0x60]
	subs r3, #0x10
	adds r3, r3, r1
	mov ip, r3
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	mov r8, r3
	ldr r2, _08073064 @ =0x030000A4
	adds r2, r1, r2
	str r2, [sp, #0x5c]
	str r0, [sp, #0x1c]
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	str r2, [sp, #0x18]
	ldr r3, _08073068 @ =0x03000094
	adds r3, r1, r3
	str r3, [sp, #0x4c]
	ldr r2, _0807306C @ =0x0300009C
	adds r2, r1, r2
	str r2, [sp, #0x58]
	str r0, [sp, #0x20]
_08073024:
	lsls r2, r5, #1
	adds r0, r4, #0
	adds r0, #0xb4
	adds r0, r0, r2
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r0]
	movs r0, #1
	ands r0, r5
	adds r3, r2, #0
	cmp r0, #0
	beq _08073070
	mov r1, ip
	adds r0, r1, r3
	movs r2, #2
	rsbs r2, r2, #0
	strh r2, [r0]
	b _08073078
	.align 2, 0
_08073048: .4byte gUnknown_086CECFC
_0807304C: .4byte sub_8073270
_08073050: .4byte sub_80734C0
_08073054: .4byte 0x03000060
_08073058: .4byte 0x03000090
_0807305C: .4byte 0x030000BD
_08073060: .4byte 0x030000B4
_08073064: .4byte 0x030000A4
_08073068: .4byte 0x03000094
_0807306C: .4byte 0x0300009C
_08073070:
	mov r0, ip
	adds r1, r0, r3
	movs r0, #3
	strh r0, [r1]
_08073078:
	adds r6, r4, #0
	adds r6, #0xac
	adds r1, r4, #0
	adds r1, #0xa4
	adds r1, r1, r3
	mov r2, sp
	adds r2, r2, r3
	adds r2, #4
	movs r0, #0
	ldrsb r0, [r2, r0]
	add r0, r8
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x94
	adds r1, r1, r3
	movs r0, #0
	ldrsb r0, [r2, r0]
	add r0, r8
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x9c
	adds r1, r1, r3
	ldr r2, [sp, #0x64]
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r3, [sp, #0x18]
	adds r0, r3, r0
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08073024
	adds r0, r7, #0
	adds r0, #0x20
	str r0, [sp, #0x24]
	adds r1, r7, #0
	adds r1, #0x21
	str r1, [sp, #0x28]
	adds r2, r7, #0
	adds r2, #0x22
	str r2, [sp, #0x30]
	adds r3, r7, #0
	adds r3, #0x25
	str r3, [sp, #0x48]
	mov r0, sl
	adds r0, #0x20
	str r0, [sp, #0x2c]
	mov r1, sl
	adds r1, #0x21
	str r1, [sp, #0x34]
	mov r2, sl
	adds r2, #0x22
	str r2, [sp, #0x3c]
	mov r3, sl
	adds r3, #0x25
	str r3, [sp, #0x50]
	mov r0, sb
	adds r0, #0x20
	str r0, [sp, #0x38]
	mov r1, sb
	adds r1, #0x21
	str r1, [sp, #0x40]
	mov r2, sb
	adds r2, #0x22
	str r2, [sp, #0x44]
	mov r3, sb
	adds r3, #0x25
	str r3, [sp, #0x54]
	cmp r5, #3
	bhi _08073182
	ldr r0, _08073138 @ =0x0000FFFD
	mov ip, r0
	ldr r1, [sp, #0x1c]
	asrs r4, r1, #0x10
	ldr r2, [sp, #0x20]
	asrs r2, r2, #0x10
	mov r8, r2
_0807311A:
	lsls r0, r5, #1
	ldr r3, [sp, #0x60]
	adds r1, r3, r0
	ldr r2, _0807313C @ =0xFFFFFEB0
	strh r2, [r1]
	movs r1, #1
	ands r1, r5
	adds r3, r0, #0
	cmp r1, #0
	beq _08073140
	adds r1, r6, r3
	movs r0, #2
	strh r0, [r1]
	b _08073146
	.align 2, 0
_08073138: .4byte 0x0000FFFD
_0807313C: .4byte 0xFFFFFEB0
_08073140:
	adds r0, r6, r3
	mov r1, ip
	strh r1, [r0]
_08073146:
	ldr r2, [sp, #0x5c]
	adds r1, r2, r3
	mov r2, sp
	adds r2, r2, r3
	adds r2, #4
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r4, r0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [sp, #0x4c]
	adds r1, r0, r3
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r4, r0
	strh r0, [r1]
	ldr r2, [sp, #0x58]
	adds r1, r2, r3
	ldr r2, [sp, #0x64]
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, r8
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0807311A
_08073182:
	movs r5, #0
	movs r4, #0
	mov r3, sp
	ldrh r3, [r3, #0x10]
	strh r3, [r7, #0x18]
	mov r0, sp
	ldrh r0, [r0, #0xc]
	strh r0, [r7, #0x16]
	movs r0, #4
	bl VramMalloc
	str r0, [r7, #4]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r7, #0x1a]
	strh r4, [r7, #8]
	ldr r0, _0807326C @ =0x00000243
	strh r0, [r7, #0xa]
	ldr r2, [sp, #0x24]
	strb r5, [r2]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	movs r0, #0xff
	ldr r3, [sp, #0x28]
	strb r0, [r3]
	movs r1, #0x10
	ldr r0, [sp, #0x30]
	strb r1, [r0]
	ldr r2, [sp, #0x48]
	strb r5, [r2]
	movs r3, #1
	rsbs r3, r3, #0
	mov r8, r3
	str r3, [r7, #0x28]
	movs r6, #0x80
	lsls r6, r6, #5
	str r6, [r7, #0x10]
	mov r0, sp
	ldrh r1, [r0, #0x10]
	mov r0, sl
	strh r1, [r0, #0x18]
	mov r2, sp
	ldrh r2, [r2, #0xc]
	strh r2, [r0, #0x16]
	movs r0, #1
	bl VramMalloc
	mov r3, sl
	str r0, [r3, #4]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r3, #0x1a]
	strh r4, [r3, #8]
	subs r0, #0x3c
	strh r0, [r3, #0xa]
	ldr r1, [sp, #0x2c]
	strb r5, [r1]
	strh r4, [r3, #0x14]
	strh r4, [r3, #0x1c]
	movs r0, #1
	rsbs r0, r0, #0
	ldr r2, [sp, #0x34]
	strb r0, [r2]
	movs r0, #0x10
	ldr r3, [sp, #0x3c]
	strb r0, [r3]
	ldr r1, [sp, #0x50]
	strb r5, [r1]
	mov r2, r8
	mov r3, sl
	str r2, [r3, #0x28]
	str r6, [r3, #0x10]
	mov r0, sp
	ldrh r1, [r0, #0x10]
	mov r0, sb
	strh r1, [r0, #0x18]
	mov r2, sp
	ldrh r2, [r2, #0xc]
	strh r2, [r0, #0x16]
	movs r0, #0x1c
	bl VramMalloc
	mov r3, sb
	str r0, [r3, #4]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r3, #0x1a]
	strh r4, [r3, #8]
	subs r0, #0x43
	strh r0, [r3, #0xa]
	ldr r1, [sp, #0x38]
	strb r5, [r1]
	strh r4, [r3, #0x14]
	strh r4, [r3, #0x1c]
	movs r0, #1
	rsbs r0, r0, #0
	ldr r2, [sp, #0x40]
	strb r0, [r2]
	movs r0, #0x10
	ldr r3, [sp, #0x44]
	strb r0, [r3]
	ldr r1, [sp, #0x54]
	strb r5, [r1]
	mov r2, r8
	mov r3, sb
	str r2, [r3, #0x28]
	str r6, [r3, #0x10]
	ldr r0, [sp, #0x14]
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807326C: .4byte 0x00000243

	thumb_func_start sub_8073270
sub_8073270: @ 0x08073270
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08073308 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _0807330C @ =0x03000060
	adds r4, r1, r0
	ldr r3, _08073310 @ =0x03000090
	adds r0, r1, r3
	ldrh r6, [r0]
	ldr r5, _08073314 @ =0x03000092
	adds r1, r1, r5
	ldrh r7, [r1]
	mov r8, r7
	ldr r5, _08073318 @ =gCamera
	ldrh r0, [r5]
	subs r0, r6, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r1]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	lsls r0, r6, #0x10
	asrs r3, r0, #0x10
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r3, r0
	bgt _080732DC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	blt _080732DC
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	movs r7, #2
	ldrsh r1, [r5, r7]
	movs r5, #0x90
	lsls r5, r5, #1
	adds r0, r1, r5
	cmp r3, r0
	bgt _080732DC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	bge _0807331C
_080732DC:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08073300
	movs r7, #0x18
	ldrsh r0, [r4, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _08073300
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807331C
_08073300:
	ldr r0, [r2]
	bl TaskDestroy
	b _08073350
	.align 2, 0
_08073308: .4byte gCurTask
_0807330C: .4byte 0x03000060
_08073310: .4byte 0x03000090
_08073314: .4byte 0x03000092
_08073318: .4byte gCamera
_0807331C:
	mov r0, ip
	adds r0, #0xbd
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807332C
	ldr r1, [r2]
	ldr r0, _0807335C @ =sub_8073364
	str r0, [r1, #8]
_0807332C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r2, _08073360 @ =gCamera
	ldrh r1, [r2]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r1, [r2, #2]
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
_08073350:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807335C: .4byte sub_8073364
_08073360: .4byte gCamera

	thumb_func_start sub_8073364
sub_8073364: @ 0x08073364
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _0807339C @ =gCurTask
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	str r0, [sp, #8]
	ldr r0, _080733A0 @ =0x03000030
	adds r6, r4, r0
	ldr r3, _080733A4 @ =0x030000BC
	adds r5, r4, r3
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1d
	ble _080733A8
	ldr r0, [r1]
	bl TaskDestroy
	b _080734AE
	.align 2, 0
_0807339C: .4byte gCurTask
_080733A0: .4byte 0x03000030
_080733A4: .4byte 0x030000BC
_080733A8:
	ldr r0, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080734AE
	movs r5, #0
	ldr r7, _0807343C @ =0x030000A4
	adds r7, r4, r7
	str r7, [sp]
	ldr r0, _08073440 @ =0x030000AC
	adds r0, r4, r0
	str r0, [sp, #4]
	ldr r1, _08073444 @ =0x03000094
	adds r1, r1, r4
	mov sl, r1
	ldr r3, _08073448 @ =0x030000B4
	adds r3, r3, r4
	mov sb, r3
	ldr r7, _0807344C @ =0x0300009C
	adds r7, r7, r4
	mov r8, r7
	ldr r4, _08073450 @ =gCamera
_080733E0:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08073454
	lsls r2, r5, #1
	ldr r0, [sp]
	adds r1, r0, r2
	ldr r3, [sp, #4]
	adds r0, r3, r2
	ldrh r0, [r0]
	ldrh r7, [r1]
	adds r0, r0, r7
	strh r0, [r1]
	mov r0, sl
	adds r3, r0, r2
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	bge _08073408
	adds r0, #3
_08073408:
	asrs r0, r0, #2
	strh r0, [r3]
	mov r0, sb
	adds r1, r0, r2
	ldrh r0, [r1]
	adds r0, #0x14
	strh r0, [r1]
	add r2, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	ldr r3, [sp, #8]
	strh r0, [r3, #0x16]
	ldrh r0, [r2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r3, #0x18]
	ldr r0, [sp, #8]
	bl DisplaySprite
	b _080734A4
	.align 2, 0
_0807343C: .4byte 0x030000A4
_08073440: .4byte 0x030000AC
_08073444: .4byte 0x03000094
_08073448: .4byte 0x030000B4
_0807344C: .4byte 0x0300009C
_08073450: .4byte gCamera
_08073454:
	lsls r2, r5, #1
	ldr r7, [sp]
	adds r1, r7, r2
	ldr r3, [sp, #4]
	adds r0, r3, r2
	ldrh r0, [r0]
	ldrh r7, [r1]
	adds r0, r0, r7
	strh r0, [r1]
	mov r0, sl
	adds r3, r0, r2
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	bge _08073474
	adds r0, #3
_08073474:
	asrs r0, r0, #2
	strh r0, [r3]
	mov r0, sb
	adds r1, r0, r2
	ldrh r0, [r1]
	adds r0, #0x14
	strh r0, [r1]
	add r2, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r6, #0x16]
	ldrh r0, [r2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
_080734A4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080733E0
_080734AE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80734C0
sub_80734C0: @ 0x080734C0
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, [r4, #0x64]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
