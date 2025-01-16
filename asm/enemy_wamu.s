.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Wamu
CreateEntity_Wamu: @ 0x0806F0E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0806F2C0 @ =sub_806F2F0
	movs r1, #0xe2
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _0806F2C4 @ =sub_806FA84
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov sl, r0
	ldr r0, _0806F2C8 @ =0x0300000C
	adds r7, r2, r0
	movs r3, #0
	mov r1, sp
	ldrh r0, [r1, #4]
	mov r1, sl
	strh r0, [r1, #4]
	mov r1, sp
	ldrh r0, [r1, #8]
	mov r1, sl
	strh r0, [r1, #6]
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #8]
	strb r4, [r1, #9]
	ldr r0, _0806F2CC @ =0x030000BE
	adds r1, r2, r0
	ldr r0, _0806F2D0 @ =0x0000FF60
	strh r0, [r1]
	ldr r1, _0806F2D4 @ =0x030000B4
	adds r0, r2, r1
	str r3, [r0]
	adds r1, #4
	adds r0, r2, r1
	str r3, [r0]
	ldr r3, _0806F2D8 @ =0x030000BC
	adds r1, r2, r3
	movs r0, #0x64
	strh r0, [r1]
	ldr r0, _0806F2DC @ =0x030001C0
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r6]
	lsls r0, r0, #3
	ldr r3, [sp, #4]
	lsls r1, r3, #8
	adds r0, r0, r1
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldr r3, [sp, #8]
	lsls r1, r3, #8
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	movs r3, #0
	ldr r0, _0806F2E0 @ =0x030000C0
	adds r5, r2, r0
	ldr r1, _0806F2E4 @ =0x03000140
	adds r4, r2, r1
_0806F182:
	lsls r1, r3, #1
	adds r2, r5, r1
	ldrh r0, [r7, #0x16]
	strh r0, [r2]
	adds r1, r4, r1
	ldrh r0, [r7, #0x18]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x3f
	bls _0806F182
	ldr r0, _0806F2E8 @ =0x000001C1
	add r0, sl
	movs r4, #0
	strb r4, [r0]
	movs r3, #2
	rsbs r3, r3, #0
	strb r3, [r6]
	movs r0, #4
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	ldr r1, _0806F2EC @ =0x000001AF
	strh r1, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	movs r3, #0
	strb r3, [r0]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x22
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	strb r3, [r0]
	movs r3, #1
	rsbs r3, r3, #0
	mov r8, r3
	str r3, [r7, #0x28]
	movs r5, #0x80
	lsls r5, r5, #6
	str r5, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r7, sl
	adds r7, #0x48
	ldrb r0, [r6]
	lsls r0, r0, #3
	ldr r1, [sp, #4]
	lsls r1, r1, #8
	str r1, [sp, #0xc]
	adds r0, r0, r1
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldr r3, [sp, #8]
	lsls r3, r3, #8
	mov sb, r3
	add r0, sb
	strh r0, [r7, #0x18]
	movs r0, #2
	rsbs r0, r0, #0
	strb r0, [r6]
	movs r0, #4
	bl VramMalloc
	str r0, [r7, #4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x1a]
	strh r4, [r7, #8]
	ldr r3, _0806F2EC @ =0x000001AF
	strh r3, [r7, #0xa]
	mov r1, sl
	adds r1, #0x68
	movs r0, #1
	strb r0, [r1]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r1, #1
	subs r0, #2
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x6a
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r3, #0
	strb r3, [r0]
	mov r0, r8
	str r0, [r7, #0x28]
	str r5, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r7, #0x3c
	ldrb r0, [r6]
	lsls r0, r0, #3
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	add r0, sb
	strh r0, [r7, #0x18]
	movs r3, #2
	rsbs r3, r3, #0
	strb r3, [r6]
	movs r0, #4
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	ldr r1, _0806F2EC @ =0x000001AF
	strh r1, [r7, #0xa]
	mov r1, sl
	adds r1, #0xa4
	movs r0, #2
	strb r0, [r1]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r1, #1
	subs r0, #3
	strb r0, [r1]
	mov r0, sl
	adds r0, #0xa6
	movs r3, #0x10
	strb r3, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	mov r3, r8
	str r3, [r7, #0x28]
	str r5, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F2C0: .4byte sub_806F2F0
_0806F2C4: .4byte sub_806FA84
_0806F2C8: .4byte 0x0300000C
_0806F2CC: .4byte 0x030000BE
_0806F2D0: .4byte 0x0000FF60
_0806F2D4: .4byte 0x030000B4
_0806F2D8: .4byte 0x030000BC
_0806F2DC: .4byte 0x030001C0
_0806F2E0: .4byte 0x030000C0
_0806F2E4: .4byte 0x03000140
_0806F2E8: .4byte 0x000001C1
_0806F2EC: .4byte 0x000001AF

	thumb_func_start sub_806F2F0
sub_806F2F0: @ 0x0806F2F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, _0806F3F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov sb, r0
	ldr r1, _0806F3FC @ =0x0300000C
	adds r1, r1, r6
	mov sl, r1
	ldr r2, _0806F400 @ =0x03000048
	adds r2, r2, r6
	mov r8, r2
	ldr r3, _0806F404 @ =0x03000084
	adds r7, r6, r3
	ldr r4, [r0]
	str r4, [sp]
	ldrb r2, [r0, #8]
	lsls r2, r2, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	mov r5, sb
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #0x10]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #0x14]
	ldr r4, _0806F408 @ =gSineTable
	ldr r0, _0806F40C @ =0x030000BC
	adds r5, r6, r0
	ldrh r1, [r5]
	ldr r0, _0806F410 @ =0x000003FF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r3, [sp]
	ldrb r2, [r3, #6]
	lsls r2, r2, #2
	movs r1, #0x50
	subs r1, r1, r2
	bl Div
	ldr r1, _0806F414 @ =0x030000B4
	adds r2, r6, r1
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	asrs r1, r1, #8
	ldr r2, [sp, #0x10]
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	ldrh r1, [r5]
	ldr r0, _0806F410 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x50
	bl Div
	ldr r4, _0806F418 @ =0x030000B8
	adds r2, r6, r4
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	asrs r1, r1, #8
	ldr r0, [sp, #0x14]
	adds r1, r0, r1
	lsls r1, r1, #0x10
	ldr r3, _0806F41C @ =gCamera
	ldrh r2, [r3]
	ldr r4, [sp, #4]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	movs r4, #0
	mov r2, sl
	strh r0, [r2, #0x16]
	ldrh r0, [r3, #2]
	lsrs r3, r1, #0x10
	str r3, [sp, #8]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806F44C
	ldr r0, _0806F420 @ =0x030001C0
	adds r2, r6, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0806F428
	ldrh r0, [r5]
	adds r0, #5
	strh r0, [r5]
	subs r1, #1
	ands r0, r1
	subs r0, #0x65
	lsls r0, r0, #0x10
	ldr r1, _0806F424 @ =0x03360000
	cmp r0, r1
	bhi _0806F49A
	movs r0, #0x64
	strh r0, [r5]
	b _0806F46A
	.align 2, 0
_0806F3F8: .4byte gCurTask
_0806F3FC: .4byte 0x0300000C
_0806F400: .4byte 0x03000048
_0806F404: .4byte 0x03000084
_0806F408: .4byte gSineTable
_0806F40C: .4byte 0x030000BC
_0806F410: .4byte 0x000003FF
_0806F414: .4byte 0x030000B4
_0806F418: .4byte 0x030000B8
_0806F41C: .4byte gCamera
_0806F420: .4byte 0x030001C0
_0806F424: .4byte 0x03360000
_0806F428:
	ldrh r0, [r5]
	subs r0, #5
	strh r0, [r5]
	ldr r3, _0806F444 @ =0x000003FF
	ands r0, r3
	subs r0, #0x65
	lsls r0, r0, #0x10
	ldr r1, _0806F448 @ =0x03360000
	cmp r0, r1
	bhi _0806F49A
	movs r0, #0xe7
	lsls r0, r0, #2
	b _0806F490
	.align 2, 0
_0806F444: .4byte 0x000003FF
_0806F448: .4byte 0x03360000
_0806F44C:
	ldr r0, _0806F474 @ =0x030001C0
	adds r2, r6, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0806F47C
	ldrh r0, [r5]
	adds r0, #5
	strh r0, [r5]
	ldr r1, _0806F478 @ =0x000003FF
	ands r0, r1
	movs r1, #0x99
	lsls r1, r1, #2
	cmp r0, r1
	bls _0806F49A
	strh r1, [r5]
_0806F46A:
	strb r4, [r2]
	movs r2, #1
	str r2, [sp, #0xc]
	b _0806F49A
	.align 2, 0
_0806F474: .4byte 0x030001C0
_0806F478: .4byte 0x000003FF
_0806F47C:
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r5]
	ldr r3, _0806F52C @ =0x000003FF
	ands r0, r3
	ldr r1, _0806F530 @ =0x0000019B
	cmp r0, r1
	bhi _0806F49A
	movs r0, #0xce
	lsls r0, r0, #1
_0806F490:
	strh r0, [r5]
	movs r0, #1
	strb r0, [r2]
	movs r4, #1
	str r4, [sp, #0xc]
_0806F49A:
	ldr r3, _0806F534 @ =0x000001C1
	add r3, sb
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	movs r1, #0x3f
	ands r0, r1
	lsls r0, r0, #1
	mov r2, sb
	adds r2, #0xc0
	adds r0, r2, r0
	mov r5, sp
	ldrh r5, [r5, #4]
	strh r5, [r0]
	ldrb r0, [r3]
	ands r1, r0
	lsls r1, r1, #1
	movs r0, #0xa0
	lsls r0, r0, #1
	add r0, sb
	adds r0, r0, r1
	mov r1, sp
	ldrh r1, [r1, #8]
	strh r1, [r0]
	ldr r3, _0806F538 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	str r2, [sp, #0x18]
	ldr r2, [sp, #0x10]
	cmp r2, r0
	bgt _0806F4FC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0806F4FC
	movs r4, #2
	ldrsh r1, [r3, r4]
	subs r5, #0x50
	adds r0, r1, r5
	ldr r2, [sp, #0x14]
	cmp r2, r0
	bgt _0806F4FC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0806F53C
_0806F4FC:
	mov r3, sl
	ldrh r0, [r3, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806F522
	movs r4, #0x18
	ldrsh r0, [r3, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0806F522
	movs r5, #0x18
	ldrsh r1, [r3, r5]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806F53C
_0806F522:
	mov r1, sb
	ldrb r0, [r1, #8]
	ldr r2, [sp]
	strb r0, [r2]
	b _0806F552
	.align 2, 0
_0806F52C: .4byte 0x000003FF
_0806F530: .4byte 0x0000019B
_0806F534: .4byte 0x000001C1
_0806F538: .4byte gCamera
_0806F53C:
	ldr r3, [sp, #4]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r4, [sp, #8]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	bl sa2__sub_800C4FC
	cmp r0, #0
	beq _0806F560
_0806F552:
	ldr r0, _0806F55C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806FA64
	.align 2, 0
_0806F55C: .4byte gCurTask
_0806F560:
	mov r0, sb
	adds r0, #0xb4
	ldr r0, [r0]
	asrs r2, r0, #8
	ldr r5, [sp]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r0, r1, #3
	cmp r2, r0
	bgt _0806F5A8
	mov r1, sl
	ldr r0, [r1, #0x10]
	mvns r0, r0
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	cmp r0, #0
	beq _0806F5F6
	ldr r3, [sp, #0xc]
	cmp r3, #0
	beq _0806F5F6
	mov r1, sb
	adds r1, #0xbe
	movs r0, #0xa0
	strh r0, [r1]
	mov r4, sl
	ldr r0, [r4, #0x10]
	orrs r0, r2
	str r0, [r4, #0x10]
	mov r5, r8
	ldr r0, [r5, #0x10]
	orrs r0, r2
	str r0, [r5, #0x10]
	ldr r0, [r7, #0x10]
	orrs r0, r2
	b _0806F5E4
_0806F5A8:
	ldr r4, [sp]
	ldrb r0, [r4, #5]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r2, r0
	blt _0806F5F6
	mov r5, sl
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806F5F6
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0806F5F6
	mov r1, sb
	adds r1, #0xbe
	ldr r0, _0806F934 @ =0x0000FF60
	strh r0, [r1]
	ldr r0, [r5, #0x10]
	ldr r1, _0806F938 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
	mov r2, r8
	ldr r0, [r2, #0x10]
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r7, #0x10]
	ands r0, r1
_0806F5E4:
	str r0, [r7, #0x10]
	mov r2, sb
	adds r2, #0xbc
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	eors r0, r1
	strh r0, [r2]
_0806F5F6:
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	ldr r4, _0806F93C @ =0x000001C1
	add r4, sb
	ldrb r0, [r4]
	subs r0, #0x18
	movs r2, #0x3f
	ands r0, r2
	lsls r0, r0, #1
	ldr r5, [sp, #0x18]
	adds r0, r5, r0
	ldr r3, _0806F940 @ =gCamera
	ldrh r0, [r0]
	ldrh r1, [r3]
	subs r0, r0, r1
	mov r5, sl
	ldrh r1, [r5, #0x16]
	subs r1, r1, r0
	strh r1, [r7, #0x16]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	ldrb r0, [r4]
	subs r0, #0x18
	ands r0, r2
	lsls r0, r0, #1
	ldr r5, [sp, #0x18]
	adds r0, r5, r0
	ldrh r0, [r0]
	subs r0, r0, r1
	ldrh r1, [r3]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	subs r1, r5, r1
	strh r1, [r7, #0x16]
	ldrb r0, [r4]
	subs r0, #0x28
	ands r0, r2
	lsls r0, r0, #1
	movs r1, #0xa0
	lsls r1, r1, #1
	add r1, sb
	adds r1, r1, r0
	ldrh r2, [r3, #2]
	ldrh r0, [r1]
	str r0, [sp, #8]
	movs r3, #0
	ldrsh r0, [r1, r3]
	subs r0, r0, r2
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r1, [r7, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806F716
	adds r0, r7, #0
	adds r0, #0x2c
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r5, r5, r6
	ldr r2, _0806F944 @ =gPlayer
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _0806F948 @ =sa2__gUnknown_03005AF0
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov ip, r0
	add r1, ip
	adds r4, r3, #0
	cmp r5, r1
	bgt _0806F6B2
	adds r0, r7, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r5, r0
	cmp r0, r1
	bge _0806F6C6
	cmp r5, r1
	blt _0806F716
_0806F6B2:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r3, ip
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r5
	blt _0806F716
_0806F6C6:
	ldr r5, [sp, #8]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r3, r7, #0
	adds r3, #0x2d
	movs r5, #0
	ldrsb r5, [r3, r5]
	adds r1, r0, r5
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r3, r4, #0
	adds r3, #0x39
	movs r6, #0
	ldrsb r6, [r3, r6]
	adds r3, r0, r6
	cmp r1, r3
	bgt _0806F6FE
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r3
	bge _0806F710
	cmp r1, r3
	blt _0806F716
_0806F6FE:
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r3, r0
	cmp r0, r1
	blt _0806F716
_0806F710:
	adds r0, r2, #0
	bl sa2__sub_800CBA4
_0806F716:
	ldr r4, _0806F93C @ =0x000001C1
	add r4, sb
	ldrb r0, [r4]
	subs r0, #0x13
	movs r2, #0x3f
	ands r0, r2
	lsls r0, r0, #1
	ldr r1, [sp, #0x18]
	adds r0, r1, r0
	ldr r3, _0806F940 @ =gCamera
	ldrh r0, [r0]
	ldrh r1, [r3]
	subs r0, r0, r1
	mov r5, sl
	ldrh r1, [r5, #0x16]
	subs r1, r1, r0
	strh r1, [r7, #0x16]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	ldrb r0, [r4]
	subs r0, #0x13
	ands r0, r2
	lsls r0, r0, #1
	ldr r5, [sp, #0x18]
	adds r0, r5, r0
	ldrh r0, [r0]
	subs r0, r0, r1
	ldrh r1, [r3]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	subs r1, r5, r1
	strh r1, [r7, #0x16]
	ldrb r0, [r4]
	subs r0, #0x1e
	ands r0, r2
	lsls r0, r0, #1
	movs r1, #0xa0
	lsls r1, r1, #1
	add r1, sb
	adds r1, r1, r0
	ldrh r2, [r3, #2]
	ldrh r0, [r1]
	str r0, [sp, #8]
	movs r3, #0
	ldrsh r0, [r1, r3]
	subs r0, r0, r2
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	ldr r1, [r7, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806F824
	adds r0, r7, #0
	adds r0, #0x2c
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r5, r5, r6
	ldr r2, _0806F944 @ =gPlayer
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _0806F948 @ =sa2__gUnknown_03005AF0
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov ip, r0
	add r1, ip
	adds r4, r3, #0
	cmp r5, r1
	bgt _0806F7C0
	adds r0, r7, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r5, r0
	cmp r0, r1
	bge _0806F7D4
	cmp r5, r1
	blt _0806F824
_0806F7C0:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r3, ip
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r5
	blt _0806F824
_0806F7D4:
	ldr r5, [sp, #8]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r3, r7, #0
	adds r3, #0x2d
	movs r5, #0
	ldrsb r5, [r3, r5]
	adds r1, r0, r5
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r3, r4, #0
	adds r3, #0x39
	movs r6, #0
	ldrsb r6, [r3, r6]
	adds r3, r0, r6
	cmp r1, r3
	bgt _0806F80C
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r3
	bge _0806F81E
	cmp r1, r3
	blt _0806F824
_0806F80C:
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r3, r0
	cmp r0, r1
	blt _0806F824
_0806F81E:
	adds r0, r2, #0
	bl sa2__sub_800CBA4
_0806F824:
	ldr r4, _0806F93C @ =0x000001C1
	add r4, sb
	ldrb r0, [r4]
	subs r0, #0xe
	movs r2, #0x3f
	ands r0, r2
	lsls r0, r0, #1
	ldr r1, [sp, #0x18]
	adds r0, r1, r0
	ldr r3, _0806F940 @ =gCamera
	ldrh r0, [r0]
	ldrh r1, [r3]
	subs r0, r0, r1
	mov r5, sl
	ldrh r1, [r5, #0x16]
	subs r1, r1, r0
	mov r0, r8
	strh r1, [r0, #0x16]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	ldrb r0, [r4]
	subs r0, #0xe
	ands r0, r2
	lsls r0, r0, #1
	ldr r5, [sp, #0x18]
	adds r0, r5, r0
	ldrh r0, [r0]
	subs r0, r0, r1
	ldrh r1, [r3]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	subs r1, r5, r1
	mov r0, r8
	strh r1, [r0, #0x16]
	ldrb r0, [r4]
	subs r0, #0x14
	ands r0, r2
	lsls r0, r0, #1
	movs r1, #0xa0
	lsls r1, r1, #1
	add r1, sb
	adds r1, r1, r0
	ldrh r2, [r3, #2]
	ldrh r3, [r1]
	str r3, [sp, #8]
	movs r4, #0
	ldrsh r0, [r1, r4]
	subs r0, r0, r2
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	mov r2, r8
	ldr r1, [r2, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806F954
	mov r0, r8
	adds r0, #0x2c
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r5, r5, r6
	ldr r2, _0806F944 @ =gPlayer
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _0806F948 @ =sa2__gUnknown_03005AF0
	adds r0, r3, #0
	adds r0, #0x38
	movs r7, #0
	ldrsb r7, [r0, r7]
	adds r1, r1, r7
	adds r4, r3, #0
	cmp r5, r1
	bgt _0806F8D8
	mov r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r5, r0
	cmp r0, r1
	bge _0806F8EA
	cmp r5, r1
	blt _0806F954
_0806F8D8:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r5
	blt _0806F954
_0806F8EA:
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r3, r8
	adds r3, #0x2d
	movs r5, #0
	ldrsb r5, [r3, r5]
	adds r1, r0, r5
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r3, r4, #0
	adds r3, #0x39
	movs r6, #0
	ldrsb r6, [r3, r6]
	adds r3, r0, r6
	cmp r1, r3
	bgt _0806F922
	mov r0, r8
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r3
	bge _0806F94E
	cmp r1, r3
	blt _0806F954
_0806F922:
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r3, r0
	cmp r0, r1
	b _0806F94C
	.align 2, 0
_0806F934: .4byte 0x0000FF60
_0806F938: .4byte 0xFFFFFBFF
_0806F93C: .4byte 0x000001C1
_0806F940: .4byte gCamera
_0806F944: .4byte gPlayer
_0806F948: .4byte sa2__gUnknown_03005AF0
_0806F94C:
	blt _0806F954
_0806F94E:
	adds r0, r2, #0
	bl sa2__sub_800CBA4
_0806F954:
	ldr r4, _0806FA74 @ =0x000001C1
	add r4, sb
	ldrb r0, [r4]
	subs r0, #7
	movs r2, #0x3f
	ands r0, r2
	lsls r0, r0, #1
	ldr r5, [sp, #0x18]
	adds r0, r5, r0
	ldr r3, _0806FA78 @ =gCamera
	ldrh r0, [r0]
	ldrh r1, [r3]
	subs r0, r0, r1
	mov r5, sl
	ldrh r1, [r5, #0x16]
	subs r1, r1, r0
	mov r0, r8
	strh r1, [r0, #0x16]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	ldrb r0, [r4]
	subs r0, #7
	ands r0, r2
	lsls r0, r0, #1
	ldr r5, [sp, #0x18]
	adds r0, r5, r0
	ldrh r0, [r0]
	subs r0, r0, r1
	ldrh r1, [r3]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	subs r1, r5, r1
	mov r0, r8
	strh r1, [r0, #0x16]
	ldrb r0, [r4]
	subs r0, #0xa
	ands r0, r2
	lsls r0, r0, #1
	movs r1, #0xa0
	lsls r1, r1, #1
	add r1, sb
	adds r1, r1, r0
	ldrh r2, [r3, #2]
	ldrh r3, [r1]
	str r3, [sp, #8]
	movs r4, #0
	ldrsh r0, [r1, r4]
	subs r0, r0, r2
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r0, r8
	bl DisplaySprite
	mov r2, r8
	ldr r1, [r2, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806FA64
	mov r0, r8
	adds r0, #0x2c
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r5, r5, r6
	ldr r2, _0806FA7C @ =gPlayer
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _0806FA80 @ =sa2__gUnknown_03005AF0
	adds r0, r3, #0
	adds r0, #0x38
	movs r7, #0
	ldrsb r7, [r0, r7]
	adds r1, r1, r7
	adds r4, r3, #0
	cmp r5, r1
	bgt _0806FA02
	mov r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r5, r0
	cmp r0, r1
	bge _0806FA14
	cmp r5, r1
	blt _0806FA64
_0806FA02:
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r5
	blt _0806FA64
_0806FA14:
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r3, r8
	adds r3, #0x2d
	movs r5, #0
	ldrsb r5, [r3, r5]
	adds r1, r0, r5
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r3, r4, #0
	adds r3, #0x39
	movs r6, #0
	ldrsb r6, [r3, r6]
	adds r3, r0, r6
	cmp r1, r3
	bgt _0806FA4C
	mov r0, r8
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r3
	bge _0806FA5E
	cmp r1, r3
	blt _0806FA64
_0806FA4C:
	adds r0, r4, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r3, r0
	cmp r0, r1
	blt _0806FA64
_0806FA5E:
	adds r0, r2, #0
	bl sa2__sub_800CBA4
_0806FA64:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FA74: .4byte 0x000001C1
_0806FA78: .4byte gCamera
_0806FA7C: .4byte gPlayer
_0806FA80: .4byte sa2__gUnknown_03005AF0

	thumb_func_start sub_806FA84
sub_806FA84: @ 0x0806FA84
	push {r4, r5, lr}
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x4c]
	bl VramFree
	ldr r0, _0806FAAC @ =0x03000088
	adds r5, r5, r0
	ldr r0, [r5]
	bl VramFree
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806FAAC: .4byte 0x03000088
