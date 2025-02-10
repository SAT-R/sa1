.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_GamiGami
CreateEntity_GamiGami: @ 0x0806BF78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, _0806C098 @ =sub_806C0C0
	ldr r1, _0806C09C @ =sa2__TaskDestructor_80095E8
	str r1, [sp]
	movs r1, #0x50
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r3, _0806C0A0 @ =0x0300000C
	adds r5, r4, r3
	movs r2, #0
	strh r6, [r7, #4]
	mov r0, r8
	strh r0, [r7, #6]
	mov r1, sl
	str r1, [r7]
	ldrb r0, [r1]
	strb r0, [r7, #8]
	mov r3, sb
	strb r3, [r7, #9]
	movs r0, #0xa0
	rsbs r0, r0, #0
	str r0, [r7, #0x3c]
	str r2, [r7, #0x40]
	ldr r1, _0806C0A4 @ =0x03000044
	adds r0, r4, r1
	strh r2, [r0]
	ldr r3, _0806C0A8 @ =0x03000046
	adds r0, r4, r3
	strh r2, [r0]
	str r2, [r7, #0x48]
	mov r0, sl
	ldrb r1, [r0, #6]
	adds r3, #6
	adds r0, r4, r3
	strb r1, [r0]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	mov r3, r8
	lsls r3, r3, #8
	mov r8, r3
	add r0, r8
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r3, sl
	strb r0, [r3]
	movs r0, #0x1e
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r2, [sp, #4]
	strh r2, [r5, #8]
	movs r0, #0xca
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	ldr r1, _0806C0AC @ =0x0300002C
	adds r0, r4, r1
	movs r3, #0
	strb r3, [r0]
	strh r2, [r5, #0x14]
	strh r2, [r5, #0x1c]
	ldr r0, _0806C0B0 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _0806C0B4 @ =0x0300002E
	adds r1, r4, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0806C0B8 @ =0x03000031
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, _0806C0BC @ =gPlayer
	ldr r2, [r0]
	asrs r2, r2, #8
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	cmp r2, r1
	blt _0806C088
	movs r0, #0xa0
	str r0, [r7, #0x3c]
	ldr r0, [r7, #0x48]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #0x48]
_0806C088:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C098: .4byte sub_806C0C0
_0806C09C: .4byte sa2__TaskDestructor_80095E8
_0806C0A0: .4byte 0x0300000C
_0806C0A4: .4byte 0x03000044
_0806C0A8: .4byte 0x03000046
_0806C0AC: .4byte 0x0300002C
_0806C0B0: .4byte 0x0300002D
_0806C0B4: .4byte 0x0300002E
_0806C0B8: .4byte 0x03000031
_0806C0BC: .4byte gPlayer

	thumb_func_start sub_806C0C0
sub_806C0C0: @ 0x0806C0C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0806C188 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, #0xc
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r5]
	mov sl, r1
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r7, r1, r0
	mov r2, sl
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r6, r1, r0
	mov sb, r7
	str r6, [sp, #0xc]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x3c]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	movs r1, #0x80
	lsls r1, r1, #1
	bl Div
	adds r7, r7, r0
	subs r6, #6
	ldr r3, _0806C18C @ =0x03000044
	adds r4, r4, r3
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r6, r6, r0
	ldr r2, _0806C190 @ =gCamera
	ldrh r0, [r2]
	subs r0, r7, r0
	mov r3, r8
	strh r0, [r3, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r6, r0
	strh r0, [r3, #0x18]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp sb, r0
	bgt _0806C158
	adds r0, r1, #0
	subs r0, #0x80
	cmp sb, r0
	blt _0806C158
	movs r0, #2
	ldrsh r1, [r2, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r3, [sp, #0xc]
	cmp r3, r0
	bgt _0806C158
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	bge _0806C194
_0806C158:
	mov r1, r8
	ldrh r0, [r1, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806C180
	mov r2, r8
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0806C180
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806C194
_0806C180:
	ldrb r0, [r5, #8]
	mov r1, sl
	strb r0, [r1]
	b _0806C1A6
	.align 2, 0
_0806C188: .4byte gCurTask
_0806C18C: .4byte 0x03000044
_0806C190: .4byte gCamera
_0806C194:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	bl sa2__sub_800C4FC
	cmp r0, #0
	beq _0806C1B4
_0806C1A6:
	ldr r0, _0806C1B0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806C286
	.align 2, 0
_0806C1B0: .4byte gCurTask
_0806C1B4:
	adds r0, r5, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806C1D4
	add r2, sp, #8
	str r2, [sp]
	ldr r0, _0806C1D0 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #1
	b _0806C1E2
	.align 2, 0
_0806C1D0: .4byte sa2__sub_801EE64
_0806C1D4:
	add r3, sp, #8
	str r3, [sp]
	ldr r0, _0806C22C @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
_0806C1E2:
	movs r3, #8
	bl sa2__sub_801F07C
	adds r2, r5, #0
	adds r2, #0x44
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	ldr r0, [r5, #0x40]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	bl Div
	mov r2, sl
	movs r1, #3
	ldrsb r1, [r2, r1]
	lsls r1, r1, #3
	cmp r0, r1
	bgt _0806C230
	ldr r0, [r5, #0x48]
	mvns r0, r0
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	cmp r0, #0
	beq _0806C27A
	movs r0, #0xa0
	str r0, [r5, #0x3c]
	adds r1, r5, #0
	adds r1, #0x46
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r5, #0x48]
	orrs r0, r2
	b _0806C268
	.align 2, 0
_0806C22C: .4byte sa2__sub_801EE64
_0806C230:
	ldr r0, [r5, #0x40]
	adds r1, r4, #0
	bl Div
	mov r3, sl
	movs r1, #3
	ldrsb r1, [r3, r1]
	ldrb r2, [r3, #5]
	adds r1, r1, r2
	lsls r1, r1, #3
	cmp r0, r1
	blt _0806C27A
	ldr r0, [r5, #0x48]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806C27A
	movs r0, #0xa0
	rsbs r0, r0, #0
	str r0, [r5, #0x3c]
	adds r1, r5, #0
	adds r1, #0x46
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r5, #0x48]
	ldr r1, _0806C298 @ =0xFFFFFBFF
	ands r0, r1
_0806C268:
	str r0, [r5, #0x48]
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0806C29C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C2A0 @ =sub_806C2A4
	str r0, [r1, #8]
_0806C27A:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
_0806C286:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C298: .4byte 0xFFFFFBFF
_0806C29C: .4byte gCurTask
_0806C2A0: .4byte sub_806C2A4

	thumb_func_start sub_806C2A4
sub_806C2A4: @ 0x0806C2A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0806C388 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	adds r0, #0xc
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r7]
	str r1, [sp, #0xc]
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r6, r1, r0
	ldr r2, [sp, #0xc]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r5, r1, r0
	mov sb, r6
	mov sl, r5
	ldr r0, [r7, #0x40]
	movs r1, #0x80
	lsls r1, r1, #1
	bl Div
	adds r6, r6, r0
	subs r5, #6
	ldr r3, _0806C38C @ =0x03000044
	adds r0, r4, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r5, r5, r0
	ldr r2, _0806C390 @ =gCamera
	ldrh r0, [r2]
	subs r0, r6, r0
	mov r3, r8
	strh r0, [r3, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r5, r0
	strh r0, [r3, #0x18]
	ldr r0, _0806C394 @ =0x03000046
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bne _0806C32E
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	subs r1, #0x14
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r2, [sp, #0x10]
	bl sub_806C43C
	ldr r2, [sp, #0x10]
_0806C32E:
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp sb, r0
	bgt _0806C35A
	adds r0, r1, #0
	subs r0, #0x80
	cmp sb, r0
	blt _0806C35A
	movs r0, #2
	ldrsh r1, [r2, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp sl, r0
	bgt _0806C35A
	adds r0, r1, #0
	subs r0, #0x80
	cmp sl, r0
	bge _0806C398
_0806C35A:
	mov r3, r8
	ldrh r0, [r3, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806C380
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0806C380
	movs r2, #0x18
	ldrsh r1, [r3, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806C398
_0806C380:
	ldrb r0, [r7, #8]
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	b _0806C3AA
	.align 2, 0
_0806C388: .4byte gCurTask
_0806C38C: .4byte 0x03000044
_0806C390: .4byte gCamera
_0806C394: .4byte 0x03000046
_0806C398:
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	bl sa2__sub_800C4FC
	cmp r0, #0
	beq _0806C3B8
_0806C3AA:
	ldr r0, _0806C3B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806C41E
	.align 2, 0
_0806C3B4: .4byte gCurTask
_0806C3B8:
	adds r0, r7, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806C3D8
	add r0, sp, #8
	str r0, [sp]
	ldr r0, _0806C3D4 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	b _0806C3E6
	.align 2, 0
_0806C3D4: .4byte sa2__sub_801EE64
_0806C3D8:
	add r1, sp, #8
	str r1, [sp]
	ldr r0, _0806C430 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
_0806C3E6:
	movs r3, #8
	bl sa2__sub_801F07C
	adds r2, r7, #0
	adds r2, #0x44
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	adds r0, r7, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x12
	ble _0806C412
	mov r1, r8
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806C434 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C438 @ =sub_806C0C0
	str r0, [r1, #8]
_0806C412:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
_0806C41E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C430: .4byte sa2__sub_801EE64
_0806C434: .4byte gCurTask
_0806C438: .4byte sub_806C0C0

	thumb_func_start sub_806C43C
sub_806C43C: @ 0x0806C43C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	movs r6, #0
	movs r5, #0
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	adds r7, r4, #0
	adds r7, #8
	movs r0, #6
	mov sl, r0
	movs r2, #6
	rsbs r2, r2, #0
	mov sb, r2
_0806C464:
	str r5, [sp]
	ldr r0, _0806C4A4 @ =sub_806C510
	movs r1, #0x3c
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r0, r2
	lsls r0, r4, #2
	str r0, [r1, #0x30]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1, #0x38]
	mov r0, sl
	str r0, [r1, #0x34]
	cmp r6, #0
	beq _0806C4A8
	mov r2, sb
	str r2, [r1, #0x34]
	adds r0, r4, #0
	subs r0, #0xe
	lsls r0, r0, #2
	str r0, [r1, #0x30]
	adds r0, r4, #0
	subs r0, #8
	strh r0, [r1, #0x16]
	b _0806C4B2
	.align 2, 0
_0806C4A4: .4byte sub_806C510
_0806C4A8:
	adds r0, r4, #0
	adds r0, #0xe
	lsls r0, r0, #2
	str r0, [r1, #0x30]
	strh r7, [r1, #0x16]
_0806C4B2:
	mov r0, r8
	strh r0, [r1, #0x18]
	ldr r0, _0806C50C @ =0x06012620
	str r0, [r1, #4]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r1, #0x1a]
	strh r5, [r1, #8]
	subs r0, #0xa6
	strh r0, [r1, #0xa]
	adds r0, r1, #0
	adds r0, #0x20
	strb r5, [r0]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	adds r2, r1, #0
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	adds r2, #1
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r1, #0
	adds r0, #0x25
	strb r5, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #0x10]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r6, #1
	cmp r6, #1
	ble _0806C464
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C50C: .4byte 0x06012620

	thumb_func_start sub_806C510
sub_806C510: @ 0x0806C510
	push {r4, r5, r6, r7, lr}
	ldr r0, _0806C588 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r5, r4, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x38]
	adds r0, #0x28
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r0, #0x16
	ldrsh r6, [r4, r0]
	movs r1, #0x18
	ldrsh r7, [r4, r1]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r0, r4, #0
	bl sub_800B798
	ldr r3, _0806C58C @ =gCamera
	ldrh r0, [r4, #0x16]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r2, [r4, #0x18]
	ldrh r1, [r3, #2]
	subs r2, r2, r1
	strh r2, [r4, #0x18]
	adds r0, #0x14
	lsls r0, r0, #0x10
	movs r1, #0x8a
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806C57E
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _0806C57E
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0806C590
_0806C57E:
	ldr r0, _0806C588 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806C5A0
	.align 2, 0
_0806C588: .4byte gCurTask
_0806C58C: .4byte gCamera
_0806C590:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	strh r6, [r5, #0x16]
	strh r7, [r5, #0x18]
_0806C5A0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
