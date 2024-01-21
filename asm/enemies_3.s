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
	ldr r1, _0806C09C @ =TaskDestructor_8009670
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
	ldr r0, _0806C0BC @ =gUnknown_03005A20
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
_0806C09C: .4byte TaskDestructor_8009670
_0806C0A0: .4byte 0x0300000C
_0806C0A4: .4byte 0x03000044
_0806C0A8: .4byte 0x03000046
_0806C0AC: .4byte 0x0300002C
_0806C0B0: .4byte 0x0300002D
_0806C0B4: .4byte 0x0300002E
_0806C0B8: .4byte 0x03000031
_0806C0BC: .4byte gUnknown_03005A20

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
	bl sub_800B4F8
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
	ldr r0, _0806C1D0 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #1
	b _0806C1E2
	.align 2, 0
_0806C1D0: .4byte sub_803FF84
_0806C1D4:
	add r3, sp, #8
	str r3, [sp]
	ldr r0, _0806C22C @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
_0806C1E2:
	movs r3, #8
	bl sub_8040198
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
_0806C22C: .4byte sub_803FF84
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
	bl sub_800B4F8
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
	ldr r0, _0806C3D4 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	b _0806C3E6
	.align 2, 0
_0806C3D4: .4byte sub_803FF84
_0806C3D8:
	add r1, sp, #8
	str r1, [sp]
	ldr r0, _0806C430 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
_0806C3E6:
	movs r3, #8
	bl sub_8040198
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
_0806C430: .4byte sub_803FF84
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

	thumb_func_start CreateEntity_Rhinotank
CreateEntity_Rhinotank: @ 0x0806C5A8
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
	ldr r0, _0806C6A0 @ =sub_806C6D0
	ldr r1, _0806C6A4 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x4c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r2, _0806C6A8 @ =0x0300000C
	adds r5, r4, r2
	movs r7, #0
	movs r3, #0
	strh r6, [r0, #4]
	mov r1, r8
	strh r1, [r0, #6]
	mov r2, sl
	str r2, [r0]
	ldrb r1, [r2]
	strb r1, [r0, #8]
	mov r1, sb
	strb r1, [r0, #9]
	ldr r1, _0806C6AC @ =0x03000046
	adds r2, r4, r1
	ldr r1, _0806C6B0 @ =0x0000FF60
	strh r1, [r2]
	str r3, [r0, #0x40]
	strh r3, [r0, #0x3c]
	ldr r2, _0806C6B4 @ =0x03000044
	adds r0, r4, r2
	strh r3, [r0]
	ldr r1, _0806C6B8 @ =0x03000048
	adds r0, r4, r1
	strb r7, [r0]
	adds r2, #5
	adds r0, r4, r2
	strb r7, [r0]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r2, r2, #8
	mov r8, r2
	add r0, r8
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, sl
	strb r0, [r2]
	movs r0, #0x14
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r3, [sp, #4]
	strh r3, [r5, #8]
	ldr r0, _0806C6BC @ =0x00000195
	strh r0, [r5, #0xa]
	ldr r1, _0806C6C0 @ =0x0300002C
	adds r0, r4, r1
	strb r7, [r0]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r2, _0806C6C4 @ =0x0300002D
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0806C6C8 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0806C6CC @ =0x03000031
	adds r4, r4, r1
	strb r7, [r4]
	subs r0, #0x11
	str r0, [r5, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C6A0: .4byte sub_806C6D0
_0806C6A4: .4byte TaskDestructor_8009670
_0806C6A8: .4byte 0x0300000C
_0806C6AC: .4byte 0x03000046
_0806C6B0: .4byte 0x0000FF60
_0806C6B4: .4byte 0x03000044
_0806C6B8: .4byte 0x03000048
_0806C6BC: .4byte 0x00000195
_0806C6C0: .4byte 0x0300002C
_0806C6C4: .4byte 0x0300002D
_0806C6C8: .4byte 0x0300002E
_0806C6CC: .4byte 0x03000031

	thumb_func_start sub_806C6D0
sub_806C6D0: @ 0x0806C6D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0806C748 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	adds r0, #0xc
	adds r5, r3, r0
	ldr r1, [r4]
	mov sb, r1
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	mov r8, r2
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	mov sl, r1
	ldr r2, _0806C74C @ =0x03000046
	adds r0, r3, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, _0806C750 @ =0x03000049
	adds r3, r3, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0806C760
	subs r0, #1
	strb r0, [r3]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806C754
	ldrb r1, [r3]
	movs r0, #0xd
	muls r1, r0, r1
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	b _0806C75E
	.align 2, 0
_0806C748: .4byte gCurTask
_0806C74C: .4byte 0x03000046
_0806C750: .4byte 0x03000049
_0806C754:
	ldrb r1, [r3]
	movs r0, #0xd
	muls r1, r0, r1
	ldr r0, [r4, #0x40]
	subs r0, r0, r1
_0806C75E:
	str r0, [r4, #0x40]
_0806C760:
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #1
	bl Div
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0x3c]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	ldr r3, _0806C7EC @ =gCamera
	ldrh r2, [r3]
	lsrs r7, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r5, #0x16]
	ldrh r1, [r3, #2]
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r8, r0
	bgt _0806C7BE
	adds r0, r1, #0
	subs r0, #0x80
	cmp r8, r0
	blt _0806C7BE
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp sl, r0
	bgt _0806C7BE
	adds r0, r2, #0
	subs r0, #0x80
	cmp sl, r0
	bge _0806C7F0
_0806C7BE:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806C7E2
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806C7E2
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806C7F0
_0806C7E2:
	ldrb r0, [r4, #8]
	mov r1, sb
	strb r0, [r1]
	b _0806C808
	.align 2, 0
_0806C7EC: .4byte gCamera
_0806C7F0:
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800B4F8
	mov r8, r0
	cmp r0, #0
	beq _0806C818
_0806C808:
	ldr r0, _0806C814 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806C986
	.align 2, 0
_0806C814: .4byte gCurTask
_0806C818:
	add r2, sp, #8
	str r2, [sp]
	ldr r0, _0806C888 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	ldrh r1, [r4, #0x3c]
	adds r1, r1, r0
	strh r1, [r4, #0x3c]
	ldr r3, [r4, #0x40]
	asrs r2, r3, #8
	mov r0, sb
	movs r1, #3
	ldrsb r1, [r0, r1]
	adds r0, r1, #1
	lsls r0, r0, #3
	cmp r2, r0
	bgt _0806C894
	ldr r0, [r5, #0x10]
	mvns r0, r0
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0806C854
	b _0806C97A
_0806C854:
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806C866
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r3, r1
	str r0, [r4, #0x40]
_0806C866:
	adds r0, r4, #0
	adds r0, #0x44
	mov r2, r8
	strh r2, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0xa0
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0806C88C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C890 @ =sub_806C9A0
	b _0806C978
	.align 2, 0
_0806C888: .4byte sub_803FF84
_0806C88C: .4byte gCurTask
_0806C890: .4byte sub_806C9A0
_0806C894:
	mov r0, sb
	ldrb r0, [r0, #5]
	mov sb, r0
	add r1, sb
	subs r0, r1, #1
	lsls r0, r0, #3
	cmp r2, r0
	blt _0806C8F0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806C97A
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806C8C0
	ldr r1, _0806C8E0 @ =0xFFFFFD00
	adds r0, r3, r1
	str r0, [r4, #0x40]
_0806C8C0:
	adds r0, r4, #0
	adds r0, #0x44
	mov r2, r8
	strh r2, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	ldr r0, _0806C8E4 @ =0x0000FF60
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0806C8E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C8EC @ =sub_806C9A0
	b _0806C978
	.align 2, 0
_0806C8E0: .4byte 0xFFFFFD00
_0806C8E4: .4byte 0x0000FF60
_0806C8E8: .4byte gCurTask
_0806C8EC: .4byte sub_806C9A0
_0806C8F0:
	adds r3, r4, #0
	adds r3, #0x48
	ldrb r0, [r3]
	mov r8, r0
	cmp r0, #0
	bne _0806C97A
	ldr r2, _0806C944 @ =gUnknown_03005A20
	ldr r0, [r2, #4]
	asrs r1, r0, #8
	adds r0, r6, #0
	adds r0, #8
	cmp r1, r0
	bgt _0806C97A
	subs r0, #0x28
	cmp r0, r1
	bgt _0806C97A
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	beq _0806C948
	ldr r0, [r2]
	asrs r1, r0, #8
	cmp r1, r7
	blt _0806C97A
	adds r0, r7, #0
	adds r0, #0x50
	cmp r0, r1
	blt _0806C97A
	movs r2, #1
	strb r2, [r3]
	adds r0, r4, #0
	adds r0, #0x44
	mov r1, r8
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0xc0
	lsls r0, r0, #2
	b _0806C96A
	.align 2, 0
_0806C944: .4byte gUnknown_03005A20
_0806C948:
	ldr r0, [r2]
	asrs r2, r0, #8
	cmp r2, r7
	bgt _0806C97A
	adds r0, r7, #0
	subs r0, #0x50
	cmp r0, r2
	bgt _0806C97A
	movs r2, #1
	strb r2, [r3]
	adds r0, r4, #0
	adds r0, #0x44
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0xfd
	lsls r0, r0, #8
_0806C96A:
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _0806C998 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C99C @ =sub_806CBD0
_0806C978:
	str r0, [r1, #8]
_0806C97A:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0806C986:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C998: .4byte gCurTask
_0806C99C: .4byte sub_806CBD0

	thumb_func_start sub_806C9A0
sub_806C9A0: @ 0x0806C9A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r3, _0806CA68 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r1, [r5]
	mov r8, r1
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, r4, r0
	lsls r0, r0, #0x10
	ldrh r1, [r5, #0x3c]
	add r1, ip
	lsls r1, r1, #0x10
	ldr r7, _0806CA6C @ =gCamera
	ldrh r2, [r7]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r0, r2
	strh r0, [r6, #0x16]
	ldrh r0, [r7, #2]
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0806CA36
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0806CA36
	movs r0, #2
	ldrsh r2, [r7, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _0806CA36
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _0806CA70
_0806CA36:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806CA5A
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806CA5A
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806CA70
_0806CA5A:
	ldrb r0, [r5, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r3]
	bl TaskDestroy
	b _0806CBB6
	.align 2, 0
_0806CA68: .4byte gCurTask
_0806CA6C: .4byte gCamera
_0806CA70:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r7, r0, #0x10
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _0806CA98
	ldr r0, _0806CA94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806CBB6
	.align 2, 0
_0806CA94: .4byte gCurTask
_0806CA98:
	add r2, sp, #8
	str r2, [sp]
	ldr r0, _0806CAFC @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	ldrh r1, [r5, #0x3c]
	adds r1, r1, r0
	strh r1, [r5, #0x3c]
	adds r0, r5, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r3, #0x40
	adds r7, r0, #0
	cmp r1, #0
	beq _0806CAC2
	movs r3, #0x20
_0806CAC2:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806CB04
	ldr r2, _0806CB00 @ =gSineTable
	adds r4, r5, #0
	adds r4, #0x44
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r3, #0
	bl Div
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	b _0806CB2E
	.align 2, 0
_0806CAFC: .4byte sub_803FF84
_0806CB00: .4byte gSineTable
_0806CB04:
	ldr r2, _0806CB6C @ =gSineTable
	adds r4, r5, #0
	adds r4, #0x44
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r3, #0
	bl Div
	ldr r1, [r5, #0x40]
	subs r1, r1, r0
_0806CB2E:
	str r1, [r5, #0x40]
	ldrh r0, [r4]
	adds r0, #1
	movs r1, #0
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	bne _0806CBAA
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, [r6, #0x10]
	movs r3, #0x80
	lsls r3, r3, #3
	ands r0, r3
	cmp r0, #0
	beq _0806CB78
	adds r2, r5, #0
	adds r2, #0x46
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, _0806CB70 @ =0x0000FF60
	strh r0, [r2]
	ldr r0, [r6, #0x10]
	ldr r1, _0806CB74 @ =0xFFFFFBFF
	ands r0, r1
	b _0806CB8E
	.align 2, 0
_0806CB6C: .4byte gSineTable
_0806CB70: .4byte 0x0000FF60
_0806CB74: .4byte 0xFFFFFBFF
_0806CB78:
	adds r2, r5, #0
	adds r2, #0x46
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	movs r0, #0xa0
	strh r0, [r2]
	ldr r0, [r6, #0x10]
	orrs r0, r3
_0806CB8E:
	str r0, [r6, #0x10]
	ldrb r0, [r7]
	cmp r0, #0
	beq _0806CB9E
	adds r1, r5, #0
	adds r1, #0x49
	movs r0, #0
	strb r0, [r1]
_0806CB9E:
	movs r0, #0
	strb r0, [r7]
	ldr r0, _0806CBC8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806CBCC @ =sub_806C6D0
	str r0, [r1, #8]
_0806CBAA:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0806CBB6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806CBC8: .4byte gCurTask
_0806CBCC: .4byte sub_806C6D0

	thumb_func_start sub_806CBD0
sub_806CBD0: @ 0x0806CBD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r3, _0806CC98 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r1, [r4]
	mov r8, r1
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r0, r5, r0
	lsls r0, r0, #0x10
	ldrh r1, [r4, #0x3c]
	add r1, ip
	lsls r1, r1, #0x10
	ldr r7, _0806CC9C @ =gCamera
	ldrh r2, [r7]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r0, r2
	strh r0, [r6, #0x16]
	ldrh r0, [r7, #2]
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _0806CC66
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _0806CC66
	movs r0, #2
	ldrsh r2, [r7, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _0806CC66
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _0806CCA0
_0806CC66:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806CC8A
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806CC8A
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806CCA0
_0806CC8A:
	ldrb r0, [r4, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r3]
	bl TaskDestroy
	b _0806CD10
	.align 2, 0
_0806CC98: .4byte gCurTask
_0806CC9C: .4byte gCamera
_0806CCA0:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r7, r0, #0x10
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _0806CCC8
	ldr r0, _0806CCC4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806CD10
	.align 2, 0
_0806CCC4: .4byte gCurTask
_0806CCC8:
	add r2, sp, #8
	str r2, [sp]
	ldr r0, _0806CD20 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	ldrh r1, [r4, #0x3c]
	adds r1, r1, r0
	strh r1, [r4, #0x3c]
	adds r1, r4, #0
	adds r1, #0x44
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x19
	bne _0806CD04
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806CD24 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806CD28 @ =sub_806C6D0
	str r0, [r1, #8]
_0806CD04:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0806CD10:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806CD20: .4byte sub_803FF84
_0806CD24: .4byte gCurTask
_0806CD28: .4byte sub_806C6D0

	thumb_func_start CreateEntity_KeroKero
CreateEntity_KeroKero: @ 0x0806CD2C
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
	ldr r0, _0806CE3C @ =sub_806CE68
	ldr r1, _0806CE40 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x4c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldr r2, _0806CE44 @ =0x0300000C
	adds r5, r4, r2
	movs r7, #0
	movs r3, #0
	strh r6, [r1, #4]
	mov r0, r8
	strh r0, [r1, #6]
	mov r2, sl
	str r2, [r1]
	ldrb r0, [r2]
	strb r0, [r1, #8]
	mov r0, sb
	strb r0, [r1, #9]
	ldr r0, _0806CE48 @ =0x03000040
	adds r2, r4, r0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2]
	str r3, [r1, #0x3c]
	ldr r1, _0806CE4C @ =0x03000042
	adds r0, r4, r1
	strh r3, [r0]
	ldr r2, _0806CE50 @ =0x03000044
	adds r0, r4, r2
	strh r3, [r0]
	adds r1, #4
	adds r0, r4, r1
	strb r7, [r0]
	adds r2, #3
	adds r0, r4, r2
	strb r7, [r0]
	adds r1, #2
	adds r0, r4, r1
	strh r3, [r0]
	mov r2, sl
	ldrb r1, [r2, #6]
	ldr r2, _0806CE54 @ =0x0300004A
	adds r0, r4, r2
	strh r1, [r0]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r2, r2, #8
	mov r8, r2
	add r0, r8
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, sl
	strb r0, [r2]
	movs r0, #0x14
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r3, [sp, #4]
	strh r3, [r5, #8]
	movs r0, #0xcb
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	ldr r1, _0806CE58 @ =0x0300002C
	adds r0, r4, r1
	strb r7, [r0]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r2, _0806CE5C @ =0x0300002D
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0806CE60 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0806CE64 @ =0x03000031
	adds r4, r4, r1
	strb r7, [r4]
	subs r0, #0x11
	str r0, [r5, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806CE3C: .4byte sub_806CE68
_0806CE40: .4byte TaskDestructor_8009670
_0806CE44: .4byte 0x0300000C
_0806CE48: .4byte 0x03000040
_0806CE4C: .4byte 0x03000042
_0806CE50: .4byte 0x03000044
_0806CE54: .4byte 0x0300004A
_0806CE58: .4byte 0x0300002C
_0806CE5C: .4byte 0x0300002D
_0806CE60: .4byte 0x0300002E
_0806CE64: .4byte 0x03000031

	thumb_func_start sub_806CE68
sub_806CE68: @ 0x0806CE68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _0806CF38 @ =gUnknown_086CECF4
	add r0, sp, #8
	movs r2, #8
	bl memcpy
	ldr r0, _0806CF3C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0xc
	adds r0, r0, r3
	mov sb, r0
	ldr r1, [r6]
	mov sl, r1
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	ldr r0, [r6, #0x3c]
	asrs r0, r0, #8
	adds r0, r4, r0
	lsls r0, r0, #0x10
	ldr r2, _0806CF40 @ =0x03000042
	adds r3, r3, r2
	ldrh r1, [r3]
	adds r1, r7, r1
	lsls r1, r1, #0x10
	ldr r3, _0806CF44 @ =gCamera
	ldrh r2, [r3]
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	mov r2, sb
	strh r0, [r2, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov ip, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r0, sb
	strh r1, [r0, #0x18]
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0806CF0A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0806CF0A
	movs r4, #2
	ldrsh r2, [r3, r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r7, r0
	bgt _0806CF0A
	adds r0, r2, #0
	subs r0, #0x80
	cmp r7, r0
	bge _0806CF48
_0806CF0A:
	mov r2, sb
	ldrh r0, [r2, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806CF30
	movs r4, #0x18
	ldrsh r0, [r2, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0806CF30
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806CF48
_0806CF30:
	ldrb r0, [r6, #8]
	mov r1, sl
	strb r0, [r1]
	b _0806CF6C
	.align 2, 0
_0806CF38: .4byte gUnknown_086CECF4
_0806CF3C: .4byte gCurTask
_0806CF40: .4byte 0x03000042
_0806CF44: .4byte gCamera
_0806CF48:
	adds r4, r6, #0
	adds r4, #0x48
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r5, r5, #0x10
	asrs r2, r5, #0x10
	mov r8, r2
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _0806CF7C
_0806CF6C:
	ldr r0, _0806CF78 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806D10A
	.align 2, 0
_0806CF78: .4byte gCurTask
_0806CF7C:
	adds r0, r6, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _0806CF9C
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, _0806CF98 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #1
	b _0806CFAA
	.align 2, 0
_0806CF98: .4byte sub_803FF84
_0806CF9C:
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, _0806CFD4 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
_0806CFAA:
	movs r3, #8
	bl sub_8040198
	adds r2, r6, #0
	adds r2, #0x42
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	ldr r0, _0806CFD8 @ =gUnknown_03005A20
	ldr r1, [r0]
	asrs r1, r1, #8
	asrs r2, r5, #0x10
	adds r7, r0, #0
	cmp r1, r2
	ble _0806CFDC
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0806CFE4
	.align 2, 0
_0806CFD4: .4byte sub_803FF84
_0806CFD8: .4byte gUnknown_03005A20
_0806CFDC:
	mov r1, sb
	ldr r0, [r1, #0x10]
	ldr r1, _0806D014 @ =0xFFFFFBFF
	ands r0, r1
_0806CFE4:
	mov r2, sb
	str r0, [r2, #0x10]
	adds r3, r4, #0
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0xfa
	ble _0806D020
	adds r1, r6, #0
	adds r1, #0x46
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r3]
	subs r0, #0xfa
	strh r0, [r3]
	mov r1, sb
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0806D018 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806D01C @ =sub_806D124
	str r0, [r1, #8]
	b _0806D104
	.align 2, 0
_0806D014: .4byte 0xFFFFFBFF
_0806D018: .4byte gCurTask
_0806D01C: .4byte sub_806D124
_0806D020:
	adds r1, r6, #0
	adds r1, #0x46
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806D030
	subs r0, #1
	strb r0, [r1]
	b _0806D104
_0806D030:
	mov r2, sb
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806D0A4
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	mov r4, sl
	movs r0, #3
	ldrsb r0, [r4, r0]
	ldrb r2, [r4, #5]
	adds r0, r0, r2
	subs r0, #8
	lsls r0, r0, #3
	cmp r1, r0
	bgt _0806D104
	ldr r0, [r7]
	asrs r1, r0, #8
	asrs r0, r5, #0x10
	cmp r1, r0
	blt _0806D104
	adds r0, #0x50
	cmp r0, r1
	blt _0806D104
	adds r1, r6, #0
	adds r1, #0x44
	movs r2, #0
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r1]
	mov r0, sb
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _0806D09C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806D0A0 @ =sub_806D2B8
	str r0, [r1, #8]
	adds r2, r6, #0
	adds r2, #0x47
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	adds r1, r1, r0
	adds r1, #8
	ldrh r0, [r3]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r3]
	b _0806D0FC
	.align 2, 0
_0806D09C: .4byte gCurTask
_0806D0A0: .4byte sub_806D2B8
_0806D0A4:
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	mov r2, sl
	movs r0, #3
	ldrsb r0, [r2, r0]
	adds r0, #8
	lsls r0, r0, #3
	cmp r1, r0
	blt _0806D104
	ldr r0, [r7]
	asrs r1, r0, #8
	asrs r0, r5, #0x10
	cmp r1, r0
	bgt _0806D104
	subs r0, #0x50
	cmp r0, r1
	bgt _0806D104
	adds r1, r6, #0
	adds r1, #0x44
	movs r2, #0
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r1]
	mov r0, sb
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _0806D11C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806D120 @ =sub_806D2B8
	str r0, [r1, #8]
	adds r2, r6, #0
	adds r2, #0x47
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	adds r1, r1, r0
	adds r1, #8
	ldrh r0, [r4]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r4]
_0806D0FC:
	ldrb r1, [r2]
	movs r0, #7
	ands r0, r1
	strb r0, [r2]
_0806D104:
	mov r0, sb
	bl DisplaySprite
_0806D10A:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D11C: .4byte gCurTask
_0806D120: .4byte sub_806D2B8

	thumb_func_start sub_806D124
sub_806D124: @ 0x0806D124
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r4, _0806D1F8 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0xc
	adds r0, r0, r3
	mov r8, r0
	ldr r1, [r6]
	mov ip, r1
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	ldr r0, [r6, #0x3c]
	asrs r0, r0, #8
	adds r0, r5, r0
	lsls r0, r0, #0x10
	ldr r2, _0806D1FC @ =0x03000042
	adds r3, r3, r2
	ldrh r1, [r3]
	adds r1, r7, r1
	lsls r1, r1, #0x10
	ldr r3, _0806D200 @ =gCamera
	ldrh r2, [r3]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r0, r2
	mov r2, r8
	strh r0, [r2, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r0, r8
	strh r1, [r0, #0x18]
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _0806D1C2
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _0806D1C2
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r7, r0
	bgt _0806D1C2
	adds r0, r2, #0
	subs r0, #0x80
	cmp r7, r0
	bge _0806D204
_0806D1C2:
	mov r2, r8
	ldrh r0, [r2, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806D1E8
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0806D1E8
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806D204
_0806D1E8:
	ldrb r0, [r6, #8]
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _0806D29A
	.align 2, 0
_0806D1F8: .4byte gCurTask
_0806D1FC: .4byte 0x03000042
_0806D200: .4byte gCamera
_0806D204:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	mov r0, r8
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _0806D22C
	ldr r0, _0806D228 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806D29A
	.align 2, 0
_0806D228: .4byte gCurTask
_0806D22C:
	adds r0, r6, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _0806D24C
	add r0, sp, #8
	str r0, [sp]
	ldr r0, _0806D248 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	b _0806D25A
	.align 2, 0
_0806D248: .4byte sub_803FF84
_0806D24C:
	add r1, sp, #8
	str r1, [sp]
	ldr r0, _0806D2AC @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
_0806D25A:
	movs r3, #8
	bl sub_8040198
	adds r2, r6, #0
	adds r2, #0x42
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	adds r3, r6, #0
	adds r3, #0x46
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _0806D28E
	strb r1, [r3]
	mov r0, r8
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _0806D2B0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806D2B4 @ =sub_806CE68
	str r0, [r1, #8]
_0806D28E:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
_0806D29A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D2AC: .4byte sub_803FF84
_0806D2B0: .4byte gCurTask
_0806D2B4: .4byte sub_806CE68

	thumb_func_start sub_806D2B8
sub_806D2B8: @ 0x0806D2B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0806D33C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov r8, r0
	ldr r0, _0806D340 @ =0x0300000C
	adds r6, r4, r0
	mov r1, r8
	ldr r1, [r1]
	str r1, [sp, #0xc]
	mov r3, r8
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	mov sb, r2
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	mov sl, r1
	ldr r0, _0806D344 @ =0x03000044
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r1, #0x80
	lsls r1, r1, #1
	bl Div
	ldr r3, _0806D348 @ =0x03000042
	adds r4, r4, r3
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806D34C
	mov r1, r8
	ldr r0, [r1, #0x3c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1, #0x3c]
	b _0806D356
	.align 2, 0
_0806D33C: .4byte gCurTask
_0806D340: .4byte 0x0300000C
_0806D344: .4byte 0x03000044
_0806D348: .4byte 0x03000042
_0806D34C:
	mov r3, r8
	ldr r0, [r3, #0x3c]
	ldr r1, _0806D3E4 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r3, #0x3c]
_0806D356:
	mov r2, r8
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	mov r3, r8
	adds r3, #0x42
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r3]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r4, _0806D3E8 @ =gCamera
	ldrh r2, [r4]
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r6, #0x16]
	ldrh r0, [r4, #2]
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	str r3, [sp, #0x10]
	cmp sb, r0
	bgt _0806D3B6
	adds r0, r1, #0
	subs r0, #0x80
	cmp sb, r0
	blt _0806D3B6
	movs r3, #2
	ldrsh r2, [r4, r3]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp sl, r0
	bgt _0806D3B6
	adds r0, r2, #0
	subs r0, #0x80
	cmp sl, r0
	bge _0806D3EC
_0806D3B6:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806D3DA
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806D3DA
	movs r3, #0x18
	ldrsh r1, [r6, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806D3EC
_0806D3DA:
	mov r1, r8
	ldrb r0, [r1, #8]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	b _0806D404
	.align 2, 0
_0806D3E4: .4byte 0xFFFFFF00
_0806D3E8: .4byte gCamera
_0806D3EC:
	lsls r4, r7, #0x10
	asrs r7, r4, #0x10
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_800B4F8
	mov sb, r4
	cmp r0, #0
	beq _0806D414
_0806D404:
	ldr r0, _0806D410 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806D4B4
	.align 2, 0
_0806D410: .4byte gCurTask
_0806D414:
	mov r0, r8
	adds r0, #0x4a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _0806D434
	add r0, sp, #8
	str r0, [sp]
	ldr r0, _0806D430 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #1
	b _0806D442
	.align 2, 0
_0806D430: .4byte sub_803FF84
_0806D434:
	add r1, sp, #8
	str r1, [sp]
	ldr r0, _0806D490 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
_0806D442:
	movs r3, #8
	bl sub_8040198
	adds r2, r0, #0
	cmp r2, #0
	bgt _0806D4A8
	mov r1, r8
	adds r1, #0x46
	movs r0, #5
	strb r0, [r1]
	ldr r3, [sp, #0x10]
	ldrh r0, [r3]
	adds r0, r0, r2
	movs r5, #0
	strh r0, [r3]
	adds r4, r6, #0
	adds r4, #0x20
	movs r0, #1
	strb r0, [r4]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	strb r5, [r4]
	ldr r0, _0806D494 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806D498 @ =sub_806CE68
	str r0, [r1, #8]
	ldr r0, _0806D49C @ =gUnknown_03005A20
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r2, sb
	asrs r1, r2, #0x10
	cmp r0, r1
	ble _0806D4A0
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0806D4A6
	.align 2, 0
_0806D490: .4byte sub_803FF84
_0806D494: .4byte gCurTask
_0806D498: .4byte sub_806CE68
_0806D49C: .4byte gUnknown_03005A20
_0806D4A0:
	ldr r0, [r6, #0x10]
	ldr r1, _0806D4C4 @ =0xFFFFFBFF
	ands r0, r1
_0806D4A6:
	str r0, [r6, #0x10]
_0806D4A8:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0806D4B4:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D4C4: .4byte 0xFFFFFBFF

	thumb_func_start CreateEntity_Hanabii
CreateEntity_Hanabii: @ 0x0806D4C8
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
	ldr r0, _0806D5BC @ =sub_806D5E8
	ldr r1, _0806D5C0 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x4c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r2, _0806D5C4 @ =0x0300000C
	adds r5, r4, r2
	movs r7, #0
	movs r3, #0
	strh r6, [r0, #4]
	mov r1, r8
	strh r1, [r0, #6]
	mov r2, sl
	str r2, [r0]
	ldrb r1, [r2]
	strb r1, [r0, #8]
	mov r1, sb
	strb r1, [r0, #9]
	ldr r1, _0806D5C8 @ =0x03000044
	adds r2, r4, r1
	ldr r1, _0806D5CC @ =0x0000FF60
	strh r1, [r2]
	str r3, [r0, #0x3c]
	str r3, [r0, #0x40]
	ldr r2, _0806D5D0 @ =0x03000046
	adds r0, r4, r2
	strh r3, [r0]
	ldr r1, _0806D5D4 @ =0x03000048
	adds r0, r4, r1
	strh r3, [r0]
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x16]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov r8, r1
	add r0, r8
	strh r0, [r5, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	mov r1, sl
	strb r0, [r1]
	movs r0, #0x14
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r3, [sp, #4]
	strh r3, [r5, #8]
	ldr r0, _0806D5D8 @ =0x0000019F
	strh r0, [r5, #0xa]
	ldr r2, _0806D5DC @ =0x0300002C
	adds r0, r4, r2
	strb r7, [r0]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r0, _0806D5E0 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r2, #2
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0806D5E4 @ =0x03000031
	adds r4, r4, r0
	strb r7, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D5BC: .4byte sub_806D5E8
_0806D5C0: .4byte TaskDestructor_8009670
_0806D5C4: .4byte 0x0300000C
_0806D5C8: .4byte 0x03000044
_0806D5CC: .4byte 0x0000FF60
_0806D5D0: .4byte 0x03000046
_0806D5D4: .4byte 0x03000048
_0806D5D8: .4byte 0x0000019F
_0806D5DC: .4byte 0x0300002C
_0806D5E0: .4byte 0x0300002D
_0806D5E4: .4byte 0x03000031

	thumb_func_start sub_806D5E8
sub_806D5E8: @ 0x0806D5E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, _0806D6BC @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0xc
	adds r7, r3, r0
	ldr r1, [r5]
	mov r8, r1
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r2, _0806D6C0 @ =0x03000044
	adds r3, r3, r2
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r5, #0x3c]
	adds r0, r0, r1
	str r0, [r5, #0x3c]
	asrs r0, r0, #8
	adds r0, r6, r0
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x40]
	add r1, ip
	lsls r1, r1, #0x10
	ldr r3, _0806D6C4 @ =gCamera
	ldrh r2, [r3]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r0, r2
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r7, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	bgt _0806D68A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	blt _0806D68A
	movs r6, #2
	ldrsh r2, [r3, r6]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _0806D68A
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _0806D6C8
_0806D68A:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806D6AE
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806D6AE
	movs r6, #0x18
	ldrsh r1, [r7, r6]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806D6C8
_0806D6AE:
	ldrb r0, [r5, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _0806D7E8
	.align 2, 0
_0806D6BC: .4byte gCurTask
_0806D6C0: .4byte 0x03000044
_0806D6C4: .4byte gCamera
_0806D6C8:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	mov r6, sb
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _0806D6F0
	ldr r0, _0806D6EC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806D7E8
	.align 2, 0
_0806D6EC: .4byte gCurTask
_0806D6F0:
	str r0, [sp]
	ldr r0, _0806D760 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	ldr r1, _0806D764 @ =gUnknown_03005A20
	ldr r0, [r1]
	asrs r0, r0, #8
	subs r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	subs r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r6, r0, #0
	muls r6, r0, r6
	adds r0, r6, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r5, #0x3c]
	asrs r4, r0, #8
	mov r0, r8
	movs r3, #3
	ldrsb r3, [r0, r3]
	adds r0, r3, #1
	lsls r0, r0, #3
	cmp r4, r0
	bgt _0806D768
	ldr r1, [r7, #0x10]
	mvns r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	cmp r0, #0
	beq _0806D7DC
	orrs r1, r2
	str r1, [r7, #0x10]
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #0xa0
	strh r0, [r1]
	b _0806D7DC
	.align 2, 0
_0806D760: .4byte sub_803FF84
_0806D764: .4byte gUnknown_03005A20
_0806D768:
	mov r6, r8
	ldrb r0, [r6, #5]
	adds r0, r3, r0
	lsls r0, r0, #3
	cmp r4, r0
	blt _0806D798
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0806D7DC
	ldr r0, _0806D790 @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r7, #0x10]
	adds r1, r5, #0
	adds r1, #0x44
	ldr r0, _0806D794 @ =0x0000FF60
	strh r0, [r1]
	b _0806D7DC
	.align 2, 0
_0806D790: .4byte 0xFFFFFBFF
_0806D794: .4byte 0x0000FF60
_0806D798:
	adds r3, r5, #0
	adds r3, #0x48
	ldrh r0, [r3]
	movs r6, #0
	ldrsh r4, [r3, r6]
	cmp r4, #0
	beq _0806D7AC
	subs r0, #1
	strh r0, [r3]
	b _0806D7DC
_0806D7AC:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	ldr r1, _0806D7F8 @ =0x0000270F
	cmp r0, r1
	bgt _0806D7DC
	adds r0, r5, #0
	adds r0, #0x46
	strh r4, [r0]
	movs r0, #0x64
	strh r0, [r3]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0806D7FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806D800 @ =sub_806D804
	str r0, [r1, #8]
_0806D7DC:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0806D7E8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D7F8: .4byte 0x0000270F
_0806D7FC: .4byte gCurTask
_0806D800: .4byte sub_806D804

	thumb_func_start sub_806D804
sub_806D804: @ 0x0806D804
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r3, _0806D8CC @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r7, r1, r0
	ldr r1, [r4]
	mov r8, r1
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r0, [r4, #0x3c]
	asrs r0, r0, #8
	adds r0, r5, r0
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x40]
	add r1, ip
	lsls r1, r1, #0x10
	ldr r6, _0806D8D0 @ =gCamera
	ldrh r2, [r6]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r0, r2
	strh r0, [r7, #0x16]
	ldrh r0, [r6, #2]
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r7, #0x18]
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _0806D89A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _0806D89A
	movs r0, #2
	ldrsh r2, [r6, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _0806D89A
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _0806D8D4
_0806D89A:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806D8BE
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806D8BE
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806D8D4
_0806D8BE:
	ldrb r0, [r4, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r3]
	bl TaskDestroy
	b _0806D992
	.align 2, 0
_0806D8CC: .4byte gCurTask
_0806D8D0: .4byte gCamera
_0806D8D4:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _0806D8FC
	ldr r0, _0806D8F8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806D992
	.align 2, 0
_0806D8F8: .4byte gCurTask
_0806D8FC:
	add r2, sp, #8
	str r2, [sp]
	ldr r0, _0806D94C @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, #0
	cmp r0, #7
	bne _0806D962
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806D950
	adds r0, r5, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	subs r1, #0x14
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_806D9AC
	b _0806D962
	.align 2, 0
_0806D94C: .4byte sub_803FF84
_0806D950:
	subs r0, r5, #6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	subs r1, #0x14
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_806D9AC
_0806D962:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x13
	bne _0806D986
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	adds r2, r7, #0
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _0806D9A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806D9A8 @ =sub_806D5E8
	str r0, [r1, #8]
_0806D986:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0806D992:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D9A4: .4byte gCurTask
_0806D9A8: .4byte sub_806D5E8

	thumb_func_start sub_806D9AC
sub_806D9AC: @ 0x0806D9AC
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _0806DA60 @ =sub_806DA80
	movs r2, #0xc0
	lsls r2, r2, #6
	ldr r1, _0806DA64 @ =sub_806DC5C
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	lsls r0, r6, #0x10
	asrs r0, r0, #0xe
	str r0, [r4, #0x30]
	movs r1, #0
	mov sl, r1
	movs r0, #0
	mov sb, r0
	ldr r0, _0806DA68 @ =0x0000FC50
	strh r0, [r4, #0x34]
	ldr r1, _0806DA6C @ =0x03000036
	adds r0, r5, r1
	mov r1, sl
	strb r1, [r0]
	strh r6, [r4, #0x16]
	mov r0, r8
	strh r0, [r4, #0x18]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	mov r1, sb
	strh r1, [r4, #8]
	subs r0, #0x9d
	strh r0, [r4, #0xa]
	ldr r1, _0806DA70 @ =0x03000020
	adds r0, r5, r1
	mov r1, sl
	strb r1, [r0]
	mov r0, sb
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x1c]
	ldr r0, _0806DA74 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0806DA78 @ =0x03000022
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0806DA7C @ =0x03000025
	adds r5, r5, r1
	mov r0, sl
	strb r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806DA60: .4byte sub_806DA80
_0806DA64: .4byte sub_806DC5C
_0806DA68: .4byte 0x0000FC50
_0806DA6C: .4byte 0x03000036
_0806DA70: .4byte 0x03000020
_0806DA74: .4byte 0x03000021
_0806DA78: .4byte 0x03000022
_0806DA7C: .4byte 0x03000025

	thumb_func_start sub_806DA80
sub_806DA80: @ 0x0806DA80
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0806DB04 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r6, r4, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bge _0806DAA0
	adds r0, #3
_0806DAA0:
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x34]
	adds r0, #0x2c
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	ldrh r7, [r4, #0x16]
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldrh r0, [r4, #0x18]
	mov r8, r0
	movs r0, #0x18
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	bl sub_800B798
	ldr r3, _0806DB08 @ =gCamera
	ldrh r0, [r4, #0x16]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r2, [r4, #0x18]
	ldrh r1, [r3, #2]
	subs r2, r2, r1
	strh r2, [r4, #0x18]
	adds r0, #0x3c
	lsls r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806DAFA
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x3c
	cmp r0, #0
	blt _0806DAFA
	lsls r1, r2, #0x10
	movs r0, #0x96
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0806DB0C
_0806DAFA:
	ldr r0, _0806DB04 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806DB48
	.align 2, 0
_0806DB04: .4byte gCurTask
_0806DB08: .4byte gCamera
_0806DB0C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0806DB42
	movs r0, #0xd0
	lsls r0, r0, #1
	strh r0, [r4, #0xa]
	ldr r0, _0806DB54 @ =0x03000020
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806DB58 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0806DB5C @ =sub_806DB60
	str r0, [r1, #8]
_0806DB42:
	strh r7, [r6, #0x16]
	mov r1, r8
	strh r1, [r6, #0x18]
_0806DB48:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DB54: .4byte 0x03000020
_0806DB58: .4byte 0x03000021
_0806DB5C: .4byte sub_806DB60

	thumb_func_start sub_806DB60
sub_806DB60: @ 0x0806DB60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0806DBF4 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r5, r4, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bge _0806DB7C
	adds r0, #3
_0806DB7C:
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	ldrh r7, [r4, #0x16]
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldrh r0, [r4, #0x18]
	mov r8, r0
	movs r0, #0x18
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	bl sub_800B798
	ldr r2, _0806DBF8 @ =gCamera
	ldrh r0, [r4, #0x16]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, _0806DBFC @ =0x03000036
	adds r1, r6, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	ldrh r0, [r4, #0x16]
	adds r0, #0x3c
	lsls r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806DBE8
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x3c
	cmp r0, #0
	blt _0806DBE8
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	bgt _0806DBE8
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bls _0806DC00
_0806DBE8:
	ldr r0, _0806DBF4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806DC48
	.align 2, 0
_0806DBF4: .4byte gCurTask
_0806DBF8: .4byte gCamera
_0806DBFC: .4byte 0x03000036
_0806DC00:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	ldr r1, _0806DC54 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	ldr r1, _0806DC58 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
	strh r7, [r5, #0x16]
	mov r1, r8
	strh r1, [r5, #0x18]
_0806DC48:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DC54: .4byte 0xFFFFF7FF
_0806DC58: .4byte 0xFFFFFBFF

	thumb_func_start sub_806DC5C
sub_806DC5C: @ 0x0806DC5C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Pierrot
CreateEntity_Pierrot: @ 0x0806DC70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
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
	ldr r0, _0806DD5C @ =sub_806DD80
	ldr r1, _0806DD60 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x4c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r6, r1
	ldr r2, _0806DD64 @ =0x0300000C
	adds r4, r6, r2
	movs r7, #0
	movs r3, #0
	strh r5, [r1, #4]
	mov r0, r8
	strh r0, [r1, #6]
	mov r2, sl
	str r2, [r1]
	ldrb r0, [r2]
	strb r0, [r1, #8]
	mov r0, sb
	strb r0, [r1, #9]
	ldr r0, _0806DD68 @ =0x03000048
	adds r2, r6, r0
	ldr r0, _0806DD6C @ =0x0000FF60
	strh r0, [r2]
	str r3, [r1, #0x44]
	ldr r1, _0806DD70 @ =0x0300004A
	adds r0, r6, r1
	strh r3, [r0]
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r4, #0x16]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov r8, r1
	add r0, r8
	strh r0, [r4, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	mov r1, sl
	strb r0, [r1]
	movs r0, #0x24
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	ldr r3, [sp, #4]
	strh r3, [r4, #8]
	movs r0, #0xd1
	lsls r0, r0, #1
	strh r0, [r4, #0xa]
	ldr r2, _0806DD74 @ =0x0300002C
	adds r0, r6, r2
	strb r7, [r0]
	strh r3, [r4, #0x14]
	strh r3, [r4, #0x1c]
	ldr r0, _0806DD78 @ =0x0300002D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r2, #2
	adds r1, r6, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0806DD7C @ =0x03000031
	adds r6, r6, r0
	strb r7, [r6]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DD5C: .4byte sub_806DD80
_0806DD60: .4byte TaskDestructor_8009670
_0806DD64: .4byte 0x0300000C
_0806DD68: .4byte 0x03000048
_0806DD6C: .4byte 0x0000FF60
_0806DD70: .4byte 0x0300004A
_0806DD74: .4byte 0x0300002C
_0806DD78: .4byte 0x0300002D
_0806DD7C: .4byte 0x03000031

	thumb_func_start sub_806DD80
sub_806DD80: @ 0x0806DD80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r4, _0806DE64 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov r8, r0
	ldr r0, _0806DE68 @ =0x0300000C
	adds r5, r3, r0
	mov r1, r8
	ldr r1, [r1]
	str r1, [sp, #0xc]
	mov r6, r8
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	ldr r1, _0806DE6C @ =0x03000048
	adds r0, r3, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r2, r8
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r2, #0x44]
	asrs r0, r0, #8
	adds r0, r6, r0
	lsls r0, r0, #0x10
	ldr r1, _0806DE70 @ =0x0300004A
	adds r3, r3, r1
	ldrh r1, [r3]
	adds r1, r7, r1
	lsls r1, r1, #0x10
	ldr r2, _0806DE74 @ =0xFFD00000
	adds r1, r1, r2
	ldr r3, _0806DE78 @ =gCamera
	ldrh r2, [r3]
	mov sl, r2
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	mov r2, sl
	subs r0, r0, r2
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov sl, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	bgt _0806DE30
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	blt _0806DE30
	movs r6, #2
	ldrsh r2, [r3, r6]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r7, r0
	bgt _0806DE30
	adds r0, r2, #0
	subs r0, #0x80
	cmp r7, r0
	bge _0806DE7C
_0806DE30:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806DE54
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806DE54
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806DE7C
_0806DE54:
	mov r6, r8
	ldrb r0, [r6, #8]
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _0806E04C
	.align 2, 0
_0806DE64: .4byte gCurTask
_0806DE68: .4byte 0x0300000C
_0806DE6C: .4byte 0x03000048
_0806DE70: .4byte 0x0300004A
_0806DE74: .4byte 0xFFD00000
_0806DE78: .4byte gCamera
_0806DE7C:
	ldr r2, _0806DF60 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r3, sb
	lsls r3, r3, #0x10
	str r3, [sp, #0x10]
	mov r6, sl
	lsls r6, r6, #0x10
	mov sb, r6
	cmp r1, #0
	beq _0806DE96
	b _0806DFD8
_0806DE96:
	ldr r1, [r5, #0x30]
	subs r0, #0x81
	cmp r1, r0
	bne _0806DEA0
	b _0806DFB6
_0806DEA0:
	asrs r1, r3, #0x10
	adds r0, r5, #0
	adds r0, #0x34
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r4, r1, r6
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _0806DF64 @ =gUnknown_03005BE0
	adds r0, r3, #0
	adds r0, #0x38
	movs r7, #0
	ldrsb r7, [r0, r7]
	adds r1, r1, r7
	mov ip, r3
	cmp r4, r1
	bgt _0806DED8
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r4, r0
	cmp r0, r1
	bge _0806DEF0
	cmp r4, r1
	blt _0806DFB6
_0806DED8:
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	mov r1, sl
	lsls r1, r1, #0x10
	mov sb, r1
	cmp r0, r4
	blt _0806DFB6
_0806DEF0:
	mov r3, sl
	lsls r1, r3, #0x10
	asrs r0, r1, #0x10
	adds r3, r5, #0
	adds r3, #0x35
	movs r6, #0
	ldrsb r6, [r3, r6]
	adds r4, r0, r6
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	mov r3, ip
	adds r3, #0x39
	movs r7, #0
	ldrsb r7, [r3, r7]
	adds r3, r0, r7
	mov sb, r1
	cmp r4, r3
	bgt _0806DF2A
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r4, r0
	cmp r0, r3
	bge _0806DF3C
	cmp r4, r3
	blt _0806DFB6
_0806DF2A:
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r3, r0
	cmp r0, r4
	blt _0806DFB6
_0806DF3C:
	ldr r1, [r2, #0x10]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806DFB0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0806DF7C
	movs r6, #0xc
	ldrsh r0, [r2, r6]
	cmp r0, #0
	ble _0806DF68
	adds r1, r0, #0
	ldr r0, [r2]
	adds r0, r0, r1
	b _0806DF70
	.align 2, 0
_0806DF60: .4byte gUnknown_03005A20
_0806DF64: .4byte gUnknown_03005BE0
_0806DF68:
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	ldr r0, [r2]
	subs r0, r0, r1
_0806DF70:
	str r0, [r2]
	ldr r0, [r2, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _0806DF9C
_0806DF7C:
	movs r6, #0xc
	ldrsh r0, [r2, r6]
	cmp r0, #0
	bge _0806DF8C
	adds r1, r0, #0
	ldr r0, [r2]
	adds r0, r0, r1
	b _0806DF94
_0806DF8C:
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	ldr r0, [r2]
	subs r0, r0, r1
_0806DF94:
	str r0, [r2]
	ldr r0, [r2, #0x10]
	movs r1, #1
	orrs r0, r1
_0806DF9C:
	str r0, [r2, #0x10]
	movs r6, #0xc
	ldrsh r0, [r2, r6]
	rsbs r0, r0, #0
	strh r0, [r2, #0xc]
	movs r1, #8
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	strh r0, [r2, #8]
	b _0806DFB6
_0806DFB0:
	adds r0, r2, #0
	bl sub_800C558
_0806DFB6:
	ldr r2, [sp, #0x10]
	asrs r1, r2, #0x10
	mov r3, sb
	asrs r2, r3, #0x10
	adds r0, r5, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _0806DFD8
	ldr r0, _0806DFD4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806E04C
	.align 2, 0
_0806DFD4: .4byte gCurTask
_0806DFD8:
	mov r6, sb
	asrs r0, r6, #0x10
	ldr r2, [sp, #0x10]
	asrs r1, r2, #0x10
	add r3, sp, #8
	str r3, [sp]
	ldr r2, _0806E020 @ =sub_803FF84
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	mov r2, r8
	adds r2, #0x4a
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	mov r6, r8
	ldr r0, [r6, #0x44]
	asrs r2, r0, #8
	ldr r0, [sp, #0xc]
	movs r1, #3
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	cmp r2, r0
	bgt _0806E024
	mov r1, r8
	adds r1, #0x48
	movs r0, #0xa0
	strh r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0806E03E
	.align 2, 0
_0806E020: .4byte sub_803FF84
_0806E024:
	ldr r3, [sp, #0xc]
	ldrb r0, [r3, #5]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r2, r0
	blt _0806E040
	mov r1, r8
	adds r1, #0x48
	ldr r0, _0806E05C @ =0x0000FF60
	strh r0, [r1]
	ldr r0, [r5, #0x10]
	ldr r1, _0806E060 @ =0xFFFFFBFF
	ands r0, r1
_0806E03E:
	str r0, [r5, #0x10]
_0806E040:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0806E04C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E05C: .4byte 0x0000FF60
_0806E060: .4byte 0xFFFFFBFF

	thumb_func_start CreateEntity_Slot
CreateEntity_Slot: @ 0x0806E064
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	ldr r0, _0806E160 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #2
	bne _0806E098
	ldr r0, _0806E164 @ =gUnknown_03005160
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	bne _0806E150
_0806E098:
	ldr r0, _0806E168 @ =sub_806E190
	ldr r1, _0806E16C @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x48
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _0806E170 @ =0x0300000C
	adds r5, r4, r1
	movs r6, #0
	mov r2, sb
	strh r2, [r0, #4]
	mov r1, r8
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	mov r2, sl
	strb r2, [r0, #9]
	ldr r1, _0806E174 @ =0x0000FF60
	strh r1, [r0, #0x3e]
	strh r6, [r0, #0x3c]
	ldr r1, _0806E178 @ =0x03000044
	adds r0, r4, r1
	strh r6, [r0]
	ldr r2, _0806E17C @ =0x03000040
	adds r0, r4, r2
	strh r6, [r0]
	subs r1, #2
	adds r0, r4, r1
	strh r6, [r0]
	adds r2, #6
	adds r0, r4, r2
	strh r6, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0xf
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _0806E180 @ =0x000001A1
	strh r0, [r5, #0xa]
	ldr r2, _0806E184 @ =0x0300002C
	adds r0, r4, r2
	movs r1, #0
	strb r1, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	adds r2, #1
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0806E188 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0806E18C @ =0x03000031
	adds r4, r4, r1
	movs r2, #0
	strb r2, [r4]
	subs r0, #0x11
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_0806E150:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E160: .4byte gCurrentLevel
_0806E164: .4byte gUnknown_03005160
_0806E168: .4byte sub_806E190
_0806E16C: .4byte TaskDestructor_8009670
_0806E170: .4byte 0x0300000C
_0806E174: .4byte 0x0000FF60
_0806E178: .4byte 0x03000044
_0806E17C: .4byte 0x03000040
_0806E180: .4byte 0x000001A1
_0806E184: .4byte 0x0300002C
_0806E188: .4byte 0x0300002E
_0806E18C: .4byte 0x03000031

	thumb_func_start sub_806E190
sub_806E190: @ 0x0806E190
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0806E27C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, #0xc
	adds r6, r4, r0
	ldr r1, [r5]
	mov sb, r1
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	ldr r3, _0806E280 @ =0x03000046
	adds r2, r4, r3
	ldrh r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0806E284 @ =gSineTable
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xc8
	lsls r1, r1, #2
	bl Div
	ldr r2, _0806E288 @ =0x03000044
	adds r4, r4, r2
	strh r0, [r4]
	ldrh r0, [r5, #0x3e]
	ldrh r3, [r5, #0x3c]
	adds r0, r0, r3
	strh r0, [r5, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r7, r0
	lsls r0, r0, #0x10
	ldrh r1, [r4]
	mov r4, r8
	subs r1, r4, r1
	lsls r1, r1, #0x10
	ldr r3, _0806E28C @ =gCamera
	ldrh r2, [r3]
	lsrs r4, r0, #0x10
	mov ip, r4
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r7, r0
	bgt _0806E250
	adds r0, r1, #0
	subs r0, #0x80
	cmp r7, r0
	blt _0806E250
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r8, r0
	bgt _0806E250
	adds r0, r2, #0
	subs r0, #0x80
	cmp r8, r0
	bge _0806E290
_0806E250:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806E274
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806E274
	movs r3, #0x18
	ldrsh r1, [r6, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806E290
_0806E274:
	ldrb r0, [r5, #8]
	mov r4, sb
	strb r0, [r4]
	b _0806E2AA
	.align 2, 0
_0806E27C: .4byte gCurTask
_0806E280: .4byte 0x03000046
_0806E284: .4byte gSineTable
_0806E288: .4byte 0x03000044
_0806E28C: .4byte gCamera
_0806E290:
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_800B4F8
	cmp r0, #0
	beq _0806E2B8
_0806E2AA:
	ldr r0, _0806E2B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806E356
	.align 2, 0
_0806E2B4: .4byte gCurTask
_0806E2B8:
	ldrh r0, [r5, #0x3c]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x18
	mov r3, sb
	movs r1, #3
	ldrsb r1, [r3, r1]
	lsls r0, r1, #3
	cmp r2, r0
	bgt _0806E2D0
	movs r0, #0xa0
	strh r0, [r5, #0x3e]
	b _0806E332
_0806E2D0:
	mov r4, sb
	ldrb r0, [r4, #5]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r2, r0
	blt _0806E2E8
	ldr r0, _0806E2E4 @ =0x0000FF60
	strh r0, [r5, #0x3e]
	b _0806E332
	.align 2, 0
_0806E2E4: .4byte 0x0000FF60
_0806E2E8:
	adds r4, r5, #0
	adds r4, #0x42
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0806E2FC
	subs r0, r1, #1
	strh r0, [r4]
	b _0806E332
_0806E2FC:
	ldr r0, _0806E364 @ =gUnknown_03005A20
	ldr r0, [r0]
	asrs r1, r0, #8
	adds r0, r7, #0
	adds r0, #0x10
	cmp r1, r0
	bgt _0806E332
	subs r0, #0x20
	cmp r1, r0
	blt _0806E332
	movs r0, #0x64
	strh r0, [r4]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	mov r1, r8
	subs r1, #6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_806E4E0
	ldr r0, _0806E368 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806E36C @ =sub_806E374
	str r0, [r1, #8]
_0806E332:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r6, #0x10]
	ldr r1, _0806E370 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #0x10]
_0806E356:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E364: .4byte gUnknown_03005A20
_0806E368: .4byte gCurTask
_0806E36C: .4byte sub_806E374
_0806E370: .4byte 0xFFFFFBFF

	thumb_func_start sub_806E374
sub_806E374: @ 0x0806E374
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0806E444 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r1, _0806E448 @ =0x0300000C
	adds r5, r3, r1
	ldr r2, [r6]
	mov ip, r2
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, ip
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldrh r0, [r6, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r7, r0
	lsls r0, r0, #0x10
	ldr r1, _0806E44C @ =0x03000044
	adds r3, r3, r1
	ldrh r1, [r3]
	subs r1, r4, r1
	lsls r1, r1, #0x10
	ldr r3, _0806E450 @ =gCamera
	ldrh r2, [r3]
	mov r8, r2
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	mov r2, r8
	subs r0, r0, r2
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov r8, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r7, r0
	bgt _0806E410
	adds r0, r1, #0
	subs r0, #0x80
	cmp r7, r0
	blt _0806E410
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r4, r0
	bgt _0806E410
	adds r0, r2, #0
	subs r0, #0x80
	cmp r4, r0
	bge _0806E454
_0806E410:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806E434
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806E434
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806E454
_0806E434:
	ldrb r0, [r6, #8]
	mov r1, ip
	strb r0, [r1]
	mov r2, sl
	ldr r0, [r2]
	bl TaskDestroy
	b _0806E4C4
	.align 2, 0
_0806E444: .4byte gCurTask
_0806E448: .4byte 0x0300000C
_0806E44C: .4byte 0x03000044
_0806E450: .4byte gCamera
_0806E454:
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_800B4F8
	adds r1, r0, #0
	cmp r1, #0
	beq _0806E47C
	ldr r0, _0806E478 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806E4C4
	.align 2, 0
_0806E478: .4byte gCurTask
_0806E47C:
	adds r3, r6, #0
	adds r3, #0x40
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0806E4A0
	strh r1, [r3]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806E4D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806E4D8 @ =sub_806E190
	str r0, [r1, #8]
_0806E4A0:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	ldr r1, _0806E4DC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
_0806E4C4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E4D4: .4byte gCurTask
_0806E4D8: .4byte sub_806E190
_0806E4DC: .4byte 0xFFFFFBFF

	thumb_func_start sub_806E4E0
sub_806E4E0: @ 0x0806E4E0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0806E574 @ =sub_806E590
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x90
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	lsls r1, r4, #0x10
	asrs r1, r1, #8
	str r1, [r0, #0x34]
	ldr r2, _0806E578 @ =0x0300004C
	adds r1, r3, r2
	movs r2, #0
	mov r8, r2
	strh r6, [r1]
	strh r4, [r0, #0x16]
	strh r5, [r0, #0x18]
	ldr r1, _0806E57C @ =0x06012600
	str r1, [r0, #4]
	movs r1, #0x90
	lsls r1, r1, #2
	strh r1, [r0, #0x1a]
	strh r6, [r0, #8]
	subs r1, #0x9c
	strh r1, [r0, #0xa]
	ldr r2, _0806E580 @ =0x03000020
	adds r1, r3, r2
	mov r2, r8
	strb r2, [r1]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0x1c]
	ldr r1, _0806E584 @ =0x03000021
	adds r2, r3, r1
	movs r1, #0xff
	strb r1, [r2]
	ldr r1, _0806E588 @ =0x03000022
	adds r2, r3, r1
	movs r1, #0x10
	strb r1, [r2]
	ldr r2, _0806E58C @ =0x03000025
	adds r3, r3, r2
	mov r1, r8
	strb r1, [r3]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x10]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806E574: .4byte sub_806E590
_0806E578: .4byte 0x0300004C
_0806E57C: .4byte 0x06012600
_0806E580: .4byte 0x03000020
_0806E584: .4byte 0x03000021
_0806E588: .4byte 0x03000022
_0806E58C: .4byte 0x03000025

	thumb_func_start sub_806E590
sub_806E590: @ 0x0806E590
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	ldr r0, _0806E628 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r0, [r6, #0x34]
	movs r1, #0x80
	lsls r1, r1, #1
	bl Div
	strh r0, [r6, #0x16]
	ldr r0, _0806E62C @ =0x0300004C
	adds r5, r4, r0
	ldrh r0, [r5]
	adds r0, #0x28
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r6, #0x18]
	adds r0, r0, r1
	strh r0, [r6, #0x18]
	ldrh r2, [r6, #0x18]
	str r2, [sp, #0x10]
	ldrh r0, [r6, #0x16]
	str r0, [sp, #0xc]
	movs r2, #0x16
	ldrsh r1, [r6, r2]
	mov sb, r1
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	mov sl, r0
	asrs r7, r0, #0x10
	adds r0, r6, #0
	adds r2, r7, #0
	bl sub_800B798
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	mov r8, r1
	ldr r3, _0806E630 @ =gCamera
	ldrh r0, [r6, #0x16]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r6, #0x16]
	ldrh r2, [r6, #0x18]
	ldrh r1, [r3, #2]
	subs r2, r2, r1
	strh r2, [r6, #0x18]
	adds r0, #0x14
	lsls r0, r0, #0x10
	movs r1, #0x8a
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806E61E
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _0806E61E
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0806E634
_0806E61E:
	ldr r0, _0806E628 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806E782
	.align 2, 0
_0806E628: .4byte gCurTask
_0806E62C: .4byte 0x0300004C
_0806E630: .4byte gCamera
_0806E634:
	add r2, sp, #8
	str r2, [sp]
	ldr r0, _0806E794 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	mov sb, r0
	cmp r0, #0
	ble _0806E656
	mov r0, r8
	cmp r0, #0
	bne _0806E656
	b _0806E76A
_0806E656:
	mov r1, r8
	cmp r1, #0
	beq _0806E662
	add r1, sp, #8
	movs r0, #0
	strb r0, [r1]
_0806E662:
	ldrh r1, [r5]
	ldr r2, [r6, #0x34]
	str r2, [sp, #0x14]
	movs r0, #0x2d
	strh r0, [r6, #0x30]
	movs r7, #0
	mov r0, sl
	str r0, [sp, #0x28]
	ldr r2, _0806E798 @ =0x0300004C
	adds r2, r4, r2
	str r2, [sp, #0x18]
	ldr r0, _0806E79C @ =0x03000058
	adds r0, r4, r0
	str r0, [sp, #0x1c]
	ldr r2, _0806E7A0 @ =0x03000064
	adds r2, r4, r2
	str r2, [sp, #0x20]
	ldr r0, _0806E7A4 @ =0x03000034
	adds r0, r4, r0
	str r0, [sp, #0x38]
	ldr r2, _0806E7A8 @ =0x03000070
	adds r2, r4, r2
	str r2, [sp, #0x24]
	ldr r0, _0806E7AC @ =0x03000088
	adds r0, r4, r0
	str r0, [sp, #0x34]
	ldr r2, _0806E7B0 @ =0x03000021
	adds r2, r4, r2
	str r2, [sp, #0x30]
	ldr r0, _0806E7B4 @ =0x03000020
	adds r0, r4, r0
	str r0, [sp, #0x2c]
	ldr r2, _0806E7B8 @ =gSineTable
	mov sl, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
_0806E6AC:
	mov r0, r8
	lsls r4, r0, #2
	add r4, r8
	lsls r4, r4, #1
	ldr r2, _0806E7BC @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0806E7C0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0806E7C4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #4
	bl Mod
	adds r1, r0, #0
	adds r1, #0x10
	rsbs r0, r4, #0
	bl Div
	lsls r4, r7, #1
	ldr r2, [sp, #0x18]
	adds r5, r2, r4
	add r1, sp, #8
	ldrb r1, [r1]
	lsls r1, r1, #2
	movs r2, #0x7f
	ands r1, r2
	adds r2, #0x81
	adds r1, r1, r2
	lsls r1, r1, #1
	add r1, sl
	movs r2, #0
	ldrsh r1, [r1, r2]
	muls r0, r1, r0
	ldr r1, _0806E7C8 @ =0x00004E20
	bl __divsi3
	strh r0, [r5]
	ldr r1, [sp, #0x1c]
	adds r0, r1, r4
	mov r2, sp
	ldrh r2, [r2, #0xc]
	strh r2, [r0]
	ldr r0, [sp, #0x20]
	adds r4, r0, r4
	ldr r1, [sp, #0x28]
	asrs r0, r1, #0x10
	add r0, sb
	strh r0, [r4]
	lsls r4, r7, #2
	ldr r2, [sp, #0x38]
	adds r0, r2, r4
	ldr r1, [sp, #0x14]
	str r1, [r0]
	add r1, sp, #8
	lsls r0, r7, #3
	subs r0, #0x18
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0806E7CC @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0x1e
	bl Div
	ldr r1, [sp, #0x24]
	adds r4, r1, r4
	str r0, [r4]
	ldr r2, [sp, #0x34]
	adds r1, r2, r7
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _0806E6AC
	movs r0, #0xff
	ldr r1, [sp, #0x30]
	strb r0, [r1]
	ldr r0, _0806E7D0 @ =0x06012680
	str r0, [r6, #4]
	movs r1, #0
	ldr r0, _0806E7D4 @ =0x000001A5
	strh r0, [r6, #0xa]
	ldr r2, [sp, #0x2c]
	strb r1, [r2]
	ldr r0, _0806E7D8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806E7DC @ =sub_806E7E0
	str r0, [r1, #8]
_0806E76A:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, sp
	ldrh r0, [r0, #0xc]
	strh r0, [r6, #0x16]
	mov r1, sp
	ldrh r1, [r1, #0x10]
	strh r1, [r6, #0x18]
_0806E782:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E794: .4byte sub_803FF84
_0806E798: .4byte 0x0300004C
_0806E79C: .4byte 0x03000058
_0806E7A0: .4byte 0x03000064
_0806E7A4: .4byte 0x03000034
_0806E7A8: .4byte 0x03000070
_0806E7AC: .4byte 0x03000088
_0806E7B0: .4byte 0x03000021
_0806E7B4: .4byte 0x03000020
_0806E7B8: .4byte gSineTable
_0806E7BC: .4byte gPseudoRandom
_0806E7C0: .4byte 0x00196225
_0806E7C4: .4byte 0x3C6EF35F
_0806E7C8: .4byte 0x00004E20
_0806E7CC: .4byte 0x000003FF
_0806E7D0: .4byte 0x06012680
_0806E7D4: .4byte 0x000001A5
_0806E7D8: .4byte gCurTask
_0806E7DC: .4byte sub_806E7E0

	thumb_func_start sub_806E7E0
sub_806E7E0: @ 0x0806E7E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r6, _0806E814 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r7, r5, #0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldrh r0, [r5, #0x30]
	subs r0, #1
	strh r0, [r5, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806E818
	ldr r0, [r6]
	bl TaskDestroy
	b _0806E980
	.align 2, 0
_0806E814: .4byte gCurTask
_0806E818:
	movs r0, #0
	mov sl, r0
	ldr r1, _0806E8D8 @ =0x03000088
	adds r1, r4, r1
	str r1, [sp, #0x10]
_0806E822:
	ldr r0, [sp, #0x10]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806E82E
	b _0806E970
_0806E82E:
	mov r2, sl
	lsls r4, r2, #1
	adds r0, r7, #0
	adds r0, #0x4c
	adds r6, r0, r4
	movs r3, #0
	ldrsh r1, [r6, r3]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x30
	ldrsh r2, [r7, r1]
	ldr r1, _0806E8DC @ =0x00000415
	subs r1, r1, r2
	bl Div
	strh r0, [r6]
	mov r2, sl
	lsls r1, r2, #2
	adds r2, r7, #0
	adds r2, #0x34
	adds r2, r2, r1
	adds r0, r7, #0
	adds r0, #0x70
	adds r0, r0, r1
	mov sb, r0
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	adds r2, r7, #0
	adds r2, #0x58
	adds r2, r2, r4
	asrs r1, r1, #8
	strh r1, [r2]
	ldrh r0, [r6]
	adds r0, #0x28
	strh r0, [r6]
	adds r1, r7, #0
	adds r1, #0x64
	adds r4, r1, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	ldrh r0, [r2]
	strh r0, [r5, #0x16]
	ldrh r2, [r4]
	strh r2, [r5, #0x18]
	ldrh r0, [r5, #0x16]
	mov r8, r0
	ldrh r1, [r5, #0x18]
	str r1, [sp, #0xc]
	ldr r1, _0806E8E0 @ =gCamera
	ldrh r0, [r1]
	mov r3, r8
	subs r0, r3, r0
	strh r0, [r5, #0x16]
	ldrh r1, [r1, #2]
	subs r2, r2, r1
	strh r2, [r5, #0x18]
	adds r0, #0x14
	lsls r0, r0, #0x10
	movs r1, #0x8a
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806E8CC
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _0806E8CC
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0806E8E4
_0806E8CC:
	ldr r1, [sp, #0x10]
	add r1, sl
	movs r0, #0
	strb r0, [r1]
	b _0806E970
	.align 2, 0
_0806E8D8: .4byte 0x03000088
_0806E8DC: .4byte 0x00000415
_0806E8E0: .4byte gCamera
_0806E8E4:
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _0806E958 @ =sub_803FF84
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	adds r1, r0, #0
	cmp r1, #0
	bgt _0806E93C
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	movs r3, #0
	ldrsh r1, [r6, r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	rsbs r0, r0, #0
	movs r1, #0x15
	bl Div
	strh r0, [r6]
	ldr r1, _0806E95C @ =gSineTable
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x1e
	bl Div
	mov r2, sb
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_0806E93C:
	ldrh r1, [r7, #0x30]
	movs r3, #0x30
	ldrsh r0, [r7, r3]
	cmp r0, #0x1d
	bgt _0806E960
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806E966
	adds r0, r5, #0
	bl DisplaySprite
	b _0806E966
	.align 2, 0
_0806E958: .4byte sub_803FF84
_0806E95C: .4byte gSineTable
_0806E960:
	adds r0, r5, #0
	bl DisplaySprite
_0806E966:
	mov r0, r8
	strh r0, [r5, #0x16]
	mov r1, sp
	ldrh r1, [r1, #0xc]
	strh r1, [r5, #0x18]
_0806E970:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #5
	bhi _0806E980
	b _0806E822
_0806E980:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Leon
CreateEntity_Leon: @ 0x0806E990
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	ldr r0, _0806EA88 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #4
	bne _0806E9C4
	ldr r0, _0806EA8C @ =gUnknown_03005160
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	bne _0806EA76
_0806E9C4:
	ldr r0, _0806EA90 @ =sub_806EAB8
	ldr r1, _0806EA94 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x50
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldr r0, _0806EA98 @ =0x0300000C
	adds r5, r4, r0
	movs r6, #0
	mov r2, sl
	strh r2, [r1, #4]
	mov r0, r8
	strh r0, [r1, #6]
	str r7, [r1]
	ldrb r0, [r7]
	strb r0, [r1, #8]
	mov r2, sb
	strb r2, [r1, #9]
	ldr r0, _0806EA9C @ =0x03000048
	adds r2, r4, r0
	ldr r0, _0806EAA0 @ =0x0000FF60
	strh r0, [r2]
	str r6, [r1, #0x44]
	ldr r1, _0806EAA4 @ =0x0300004C
	adds r0, r4, r1
	strh r6, [r0]
	ldr r2, _0806EAA8 @ =0x0300004A
	adds r0, r4, r2
	strh r6, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, sl
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x18
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	movs r0, #0xd7
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	ldr r2, _0806EAAC @ =0x0300002C
	adds r0, r4, r2
	movs r1, #0
	strb r1, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	adds r2, #1
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0806EAB0 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0806EAB4 @ =0x03000031
	adds r4, r4, r1
	movs r2, #0
	strb r2, [r4]
	subs r0, #0x11
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_0806EA76:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806EA88: .4byte gCurrentLevel
_0806EA8C: .4byte gUnknown_03005160
_0806EA90: .4byte sub_806EAB8
_0806EA94: .4byte TaskDestructor_8009670
_0806EA98: .4byte 0x0300000C
_0806EA9C: .4byte 0x03000048
_0806EAA0: .4byte 0x0000FF60
_0806EAA4: .4byte 0x0300004C
_0806EAA8: .4byte 0x0300004A
_0806EAAC: .4byte 0x0300002C
_0806EAB0: .4byte 0x0300002E
_0806EAB4: .4byte 0x03000031

	thumb_func_start sub_806EAB8
sub_806EAB8: @ 0x0806EAB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r4, _0806EB90 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0xc
	adds r6, r3, r0
	ldr r1, [r5]
	mov sb, r1
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r2, _0806EB94 @ =0x03000048
	adds r0, r3, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, r7, r0
	lsls r0, r0, #0x10
	ldr r1, _0806EB98 @ =0x0300004C
	adds r3, r3, r1
	ldrh r1, [r3]
	add r1, ip
	lsls r1, r1, #0x10
	ldr r3, _0806EB9C @ =gCamera
	ldrh r2, [r3]
	mov r8, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, r8
	subs r0, r0, r2
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov r8, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r7, r0
	bgt _0806EB5E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r7, r0
	blt _0806EB5E
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _0806EB5E
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _0806EBA0
_0806EB5E:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806EB82
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806EB82
	movs r3, #0x18
	ldrsh r1, [r6, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806EBA0
_0806EB82:
	ldrb r0, [r5, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _0806ED2C
	.align 2, 0
_0806EB90: .4byte gCurTask
_0806EB94: .4byte 0x03000048
_0806EB98: .4byte 0x0300004C
_0806EB9C: .4byte gCamera
_0806EBA0:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r7, r0, #0x10
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_800B4F8
	mov r8, r0
	cmp r0, #0
	beq _0806EBCC
	ldr r0, _0806EBC8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806ED2C
	.align 2, 0
_0806EBC8: .4byte gCurTask
_0806EBCC:
	adds r0, r4, #3
	add r1, sp, #8
	str r1, [sp]
	ldr r1, _0806EC34 @ =sub_803FF84
	str r1, [sp, #4]
	adds r1, r7, #0
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	adds r2, r5, #0
	adds r2, #0x4c
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	ldr r0, [r5, #0x44]
	asrs r2, r0, #8
	mov r3, sb
	movs r1, #3
	ldrsb r1, [r3, r1]
	lsls r0, r1, #3
	cmp r2, r0
	bgt _0806EC40
	ldr r0, [r6, #0x10]
	mvns r0, r0
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	cmp r0, #0
	bne _0806EC0A
	b _0806ED20
_0806EC0A:
	adds r1, r5, #0
	adds r1, #0x48
	movs r0, #0xa0
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x4a
	mov r1, r8
	strh r1, [r0]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0806EC38 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806EC3C @ =sub_806ED3C
	str r0, [r1, #8]
	ldr r0, [r6, #0x10]
	orrs r0, r2
	str r0, [r6, #0x10]
	b _0806ED20
	.align 2, 0
_0806EC34: .4byte sub_803FF84
_0806EC38: .4byte gCurTask
_0806EC3C: .4byte sub_806ED3C
_0806EC40:
	mov r3, sb
	ldrb r0, [r3, #5]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r2, r0
	blt _0806EC94
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806ED20
	adds r1, r5, #0
	adds r1, #0x48
	ldr r0, _0806EC84 @ =0x0000FF60
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x4a
	mov r1, r8
	strh r1, [r0]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r6, #0x10]
	ldr r1, _0806EC88 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0806EC8C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806EC90 @ =sub_806ED3C
	str r0, [r1, #8]
	b _0806ED20
	.align 2, 0
_0806EC84: .4byte 0x0000FF60
_0806EC88: .4byte 0xFFFFFBFF
_0806EC8C: .4byte gCurTask
_0806EC90: .4byte sub_806ED3C
_0806EC94:
	adds r3, r5, #0
	adds r3, #0x4e
	ldrh r0, [r3]
	movs r1, #0
	ldrsh r2, [r3, r1]
	mov r8, r2
	cmp r2, #0
	bne _0806ED1C
	ldr r2, _0806ECE4 @ =gUnknown_03005A20
	ldr r0, [r2, #4]
	asrs r1, r0, #8
	adds r0, r4, #0
	adds r0, #8
	cmp r1, r0
	bgt _0806ED20
	subs r0, #0x28
	cmp r0, r1
	bgt _0806ED20
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	beq _0806ECE8
	ldr r0, [r2]
	asrs r1, r0, #8
	cmp r1, r7
	blt _0806ED20
	adds r0, r7, #0
	adds r0, #0x50
	cmp r0, r1
	blt _0806ED20
	movs r0, #0x3c
	strh r0, [r3]
	adds r0, r5, #0
	adds r0, #0x4a
	mov r2, r8
	strh r2, [r0]
	b _0806ED02
	.align 2, 0
_0806ECE4: .4byte gUnknown_03005A20
_0806ECE8:
	ldr r0, [r2]
	asrs r2, r0, #8
	cmp r2, r7
	bgt _0806ED20
	adds r0, r7, #0
	subs r0, #0x50
	cmp r0, r2
	bgt _0806ED20
	movs r0, #0x3c
	strh r0, [r3]
	adds r0, r5, #0
	adds r0, #0x4a
	strh r1, [r0]
_0806ED02:
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0806ED14 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806ED18 @ =sub_806EEA4
	str r0, [r1, #8]
	b _0806ED20
	.align 2, 0
_0806ED14: .4byte gCurTask
_0806ED18: .4byte sub_806EEA4
_0806ED1C:
	subs r0, #1
	strh r0, [r3]
_0806ED20:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0806ED2C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_806ED3C
sub_806ED3C: @ 0x0806ED3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r4, _0806EE08 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0xc
	adds r7, r3, r0
	ldr r1, [r5]
	mov r8, r1
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, r6, r0
	lsls r0, r0, #0x10
	ldr r2, _0806EE0C @ =0x0300004C
	adds r3, r3, r2
	ldrh r1, [r3]
	add r1, ip
	lsls r1, r1, #0x10
	ldr r3, _0806EE10 @ =gCamera
	ldrh r2, [r3]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r0, r2
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r7, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	bgt _0806EDD6
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	blt _0806EDD6
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _0806EDD6
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _0806EE14
_0806EDD6:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806EDFA
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806EDFA
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806EE14
_0806EDFA:
	ldrb r0, [r5, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _0806EE88
	.align 2, 0
_0806EE08: .4byte gCurTask
_0806EE0C: .4byte 0x0300004C
_0806EE10: .4byte gCamera
_0806EE14:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _0806EE3C
	ldr r0, _0806EE38 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806EE88
	.align 2, 0
_0806EE38: .4byte gCurTask
_0806EE3C:
	adds r0, r4, #3
	add r2, sp, #8
	str r2, [sp]
	ldr r1, _0806EE98 @ =sub_803FF84
	str r1, [sp, #4]
	adds r1, r6, #0
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	adds r2, r5, #0
	adds r2, #0x4c
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	adds r1, r5, #0
	adds r1, #0x4a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	bne _0806EE7C
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806EE9C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806EEA0 @ =sub_806EAB8
	str r0, [r1, #8]
_0806EE7C:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0806EE88:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806EE98: .4byte sub_803FF84
_0806EE9C: .4byte gCurTask
_0806EEA0: .4byte sub_806EAB8

	thumb_func_start sub_806EEA4
sub_806EEA4: @ 0x0806EEA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r4, _0806EF78 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sb, r0
	ldr r0, _0806EF7C @ =0x0300000C
	adds r6, r3, r0
	mov r1, sb
	ldr r1, [r1]
	mov r8, r1
	mov r5, sb
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	mov r1, sb
	ldr r0, [r1, #0x44]
	asrs r0, r0, #8
	adds r0, r5, r0
	lsls r0, r0, #0x10
	ldr r2, _0806EF80 @ =0x0300004C
	adds r3, r3, r2
	ldrh r1, [r3]
	adds r1, r7, r1
	lsls r1, r1, #0x10
	ldr r3, _0806EF84 @ =gCamera
	ldrh r2, [r3]
	mov sl, r2
	lsrs r2, r0, #0x10
	mov ip, r2
	asrs r0, r0, #0x10
	mov r2, sl
	subs r0, r0, r2
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov sl, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _0806EF44
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _0806EF44
	movs r5, #2
	ldrsh r2, [r3, r5]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r7, r0
	bgt _0806EF44
	adds r0, r2, #0
	subs r0, #0x80
	cmp r7, r0
	bge _0806EF88
_0806EF44:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806EF68
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806EF68
	movs r5, #0x18
	ldrsh r1, [r6, r5]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806EF88
_0806EF68:
	mov r1, sb
	ldrb r0, [r1, #8]
	mov r2, r8
	strb r0, [r2]
	ldr r0, [r4]
	bl TaskDestroy
	b _0806F0C4
	.align 2, 0
_0806EF78: .4byte gCurTask
_0806EF7C: .4byte 0x0300000C
_0806EF80: .4byte 0x0300004C
_0806EF84: .4byte gCamera
_0806EF88:
	ldr r1, [r6, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	mov r5, ip
	lsls r5, r5, #0x10
	str r5, [sp, #0xc]
	mov r2, sl
	lsls r2, r2, #0x10
	mov r8, r2
	cmp r1, r0
	beq _0806F04A
	asrs r1, r5, #0x10
	adds r0, r6, #0
	adds r0, #0x34
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r4, r1, r5
	ldr r2, _0806F06C @ =gUnknown_03005A20
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _0806F070 @ =gUnknown_03005BE0
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov ip, r0
	add r1, ip
	adds r7, r3, #0
	cmp r4, r1
	bgt _0806EFDC
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r4, r0
	cmp r0, r1
	bge _0806EFF6
	cmp r4, r1
	blt _0806F04A
_0806EFDC:
	adds r0, r7, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r5, ip
	subs r0, r0, r5
	adds r0, r1, r0
	mov r1, sl
	lsls r1, r1, #0x10
	mov r8, r1
	cmp r0, r4
	blt _0806F04A
_0806EFF6:
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	adds r3, r6, #0
	adds r3, #0x35
	movs r5, #0
	ldrsb r5, [r3, r5]
	adds r4, r0, r5
	ldr r2, _0806F06C @ =gUnknown_03005A20
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r3, r7, #0
	adds r3, #0x39
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r3, r0, r2
	mov r8, r1
	cmp r4, r3
	bgt _0806F032
	adds r0, r6, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r4, r0
	cmp r0, r3
	bge _0806F044
	cmp r4, r3
	blt _0806F04A
_0806F032:
	adds r0, r7, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r4
	blt _0806F04A
_0806F044:
	ldr r0, _0806F06C @ =gUnknown_03005A20
	bl sub_800C558
_0806F04A:
	ldr r0, [sp, #0xc]
	asrs r5, r0, #0x10
	mov r1, r8
	asrs r4, r1, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _0806F078
	ldr r0, _0806F074 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806F0C4
	.align 2, 0
_0806F06C: .4byte gUnknown_03005A20
_0806F070: .4byte gUnknown_03005BE0
_0806F074: .4byte gCurTask
_0806F078:
	adds r0, r4, #3
	add r2, sp, #8
	str r2, [sp]
	ldr r1, _0806F0D4 @ =sub_803FF84
	str r1, [sp, #4]
	adds r1, r5, #0
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	mov r2, sb
	adds r2, #0x4c
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	mov r1, sb
	adds r1, #0x4a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	bne _0806F0B8
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806F0D8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806F0DC @ =sub_806EAB8
	str r0, [r1, #8]
_0806F0B8:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0806F0C4:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F0D4: .4byte sub_803FF84
_0806F0D8: .4byte gCurTask
_0806F0DC: .4byte sub_806EAB8

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
	bl sub_800B4F8
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
	ldr r2, _0806F944 @ =gUnknown_03005A20
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _0806F948 @ =gUnknown_03005BE0
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
	bl sub_800C558
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
	ldr r2, _0806F944 @ =gUnknown_03005A20
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _0806F948 @ =gUnknown_03005BE0
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
	bl sub_800C558
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
	ldr r2, _0806F944 @ =gUnknown_03005A20
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _0806F948 @ =gUnknown_03005BE0
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
_0806F944: .4byte gUnknown_03005A20
_0806F948: .4byte gUnknown_03005BE0
_0806F94C:
	blt _0806F954
_0806F94E:
	adds r0, r2, #0
	bl sub_800C558
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
	ldr r2, _0806FA7C @ =gUnknown_03005A20
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _0806FA80 @ =gUnknown_03005BE0
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
	bl sub_800C558
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
_0806FA7C: .4byte gUnknown_03005A20
_0806FA80: .4byte gUnknown_03005BE0

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

	thumb_func_start CreateEntity_Mirror
CreateEntity_Mirror: @ 0x0806FAB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	ldr r0, _0806FBAC @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #5
	bne _0806FAE4
	ldr r0, _0806FBB0 @ =gUnknown_03005160
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	bne _0806FB9C
_0806FAE4:
	ldr r0, _0806FBB4 @ =sub_806FBDC
	ldr r1, _0806FBB8 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x48
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldr r0, _0806FBBC @ =0x0300000C
	adds r5, r4, r0
	movs r6, #0
	mov r2, sb
	strh r2, [r1, #4]
	mov r0, r8
	strh r0, [r1, #6]
	str r7, [r1]
	ldrb r0, [r7]
	strb r0, [r1, #8]
	mov r2, sl
	strb r2, [r1, #9]
	ldr r0, _0806FBC0 @ =0x03000040
	adds r2, r4, r0
	ldr r0, _0806FBC4 @ =0x0000FF60
	strh r0, [r2]
	str r6, [r1, #0x3c]
	ldr r1, _0806FBC8 @ =0x03000044
	adds r0, r4, r1
	strh r6, [r0]
	ldr r2, _0806FBCC @ =0x03000042
	adds r0, r4, r2
	strh r6, [r0]
	adds r1, #2
	adds r0, r4, r1
	strh r6, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x14
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	movs r0, #0xd8
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	ldr r2, _0806FBD0 @ =0x0300002C
	adds r0, r4, r2
	movs r1, #0
	strb r1, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	adds r2, #1
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0806FBD4 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0806FBD8 @ =0x03000031
	adds r4, r4, r1
	movs r2, #0
	strb r2, [r4]
	subs r0, #0x11
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_0806FB9C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FBAC: .4byte gCurrentLevel
_0806FBB0: .4byte gUnknown_03005160
_0806FBB4: .4byte sub_806FBDC
_0806FBB8: .4byte TaskDestructor_8009670
_0806FBBC: .4byte 0x0300000C
_0806FBC0: .4byte 0x03000040
_0806FBC4: .4byte 0x0000FF60
_0806FBC8: .4byte 0x03000044
_0806FBCC: .4byte 0x03000042
_0806FBD0: .4byte 0x0300002C
_0806FBD4: .4byte 0x0300002E
_0806FBD8: .4byte 0x03000031

	thumb_func_start sub_806FBDC
sub_806FBDC: @ 0x0806FBDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, _0806FCA8 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	adds r0, #0xc
	adds r5, r3, r0
	ldr r1, [r7]
	mov sb, r1
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsrs r0, r1, #0x10
	str r0, [sp, #4]
	asrs r6, r1, #0x10
	ldr r1, _0806FCAC @ =0x03000040
	adds r3, r3, r1
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r7, #0x3c]
	adds r0, r0, r1
	str r0, [r7, #0x3c]
	asrs r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #0x10
	ldr r3, _0806FCB0 @ =gCamera
	ldrh r1, [r3]
	mov r8, r1
	lsrs r1, r0, #0x10
	str r1, [sp]
	asrs r0, r0, #0x10
	mov r1, r8
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r6, r0
	strh r0, [r5, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r0, r0, r1
	mov r8, r0
	cmp r2, r8
	bgt _0806FC76
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0806FC76
	movs r2, #2
	ldrsh r1, [r3, r2]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r6, r0
	bgt _0806FC76
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	bge _0806FCB4
_0806FC76:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806FC9A
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0806FC9A
	movs r2, #0x18
	ldrsh r1, [r5, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806FCB4
_0806FC9A:
	ldrb r0, [r7, #8]
	mov r3, sb
	strb r0, [r3]
	ldr r0, [r4]
	bl TaskDestroy
	b _0806FE10
	.align 2, 0
_0806FCA8: .4byte gCurTask
_0806FCAC: .4byte 0x03000040
_0806FCB0: .4byte gCamera
_0806FCB4:
	ldr r1, [r5, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806FD6E
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov ip, r1
	adds r4, r0, r1
	ldr r2, _0806FD88 @ =gUnknown_03005A20
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _0806FD8C @ =gUnknown_03005BE0
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	add r1, r8
	mov sl, r2
	adds r6, r3, #0
	cmp r4, r1
	bgt _0806FD08
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, ip
	subs r0, r0, r2
	adds r0, r4, r0
	cmp r0, r1
	bge _0806FD1C
	cmp r4, r1
	blt _0806FD6E
_0806FD08:
	adds r0, r6, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r3, r8
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r4
	blt _0806FD6E
_0806FD1C:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r3, r5, #0
	adds r3, #0x2d
	movs r4, #0
	ldrsb r4, [r3, r4]
	adds r1, r0, r4
	mov r2, sl
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r3, r6, #0
	adds r3, #0x39
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r3, r0, r2
	cmp r1, r3
	bgt _0806FD56
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r3
	bge _0806FD68
	cmp r1, r3
	blt _0806FD6E
_0806FD56:
	adds r0, r6, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r1
	blt _0806FD6E
_0806FD68:
	mov r0, sl
	bl sub_800C558
_0806FD6E:
	ldr r0, [r7, #0x3c]
	asrs r2, r0, #8
	mov r3, sb
	movs r1, #3
	ldrsb r1, [r3, r1]
	lsls r0, r1, #3
	cmp r2, r0
	bgt _0806FD90
	adds r1, r7, #0
	adds r1, #0x40
	movs r0, #0xa0
	strh r0, [r1]
	b _0806FE04
	.align 2, 0
_0806FD88: .4byte gUnknown_03005A20
_0806FD8C: .4byte gUnknown_03005BE0
_0806FD90:
	mov r3, sb
	ldrb r0, [r3, #5]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r2, r0
	blt _0806FDAC
	adds r1, r7, #0
	adds r1, #0x40
	ldr r0, _0806FDA8 @ =0x0000FF60
	strh r0, [r1]
	b _0806FE04
	.align 2, 0
_0806FDA8: .4byte 0x0000FF60
_0806FDAC:
	adds r0, r7, #0
	adds r0, #0x46
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r3, r0, #0
	cmp r1, #0
	beq _0806FDC2
	subs r0, r2, #1
	strh r0, [r3]
	b _0806FE04
_0806FDC2:
	ldr r0, _0806FDDC @ =gUnknown_03005A20
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _0806FDE0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0806FDE6
	.align 2, 0
_0806FDDC: .4byte gUnknown_03005A20
_0806FDE0:
	ldr r0, [r5, #0x10]
	ldr r1, _0806FE20 @ =0xFFFFFBFF
	ands r0, r1
_0806FDE6:
	str r0, [r5, #0x10]
	movs r1, #0
	movs r0, #0x5a
	strh r0, [r3]
	adds r0, r7, #0
	adds r0, #0x42
	strh r1, [r0]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0806FE24 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806FE28 @ =sub_806FE2C
	str r0, [r1, #8]
_0806FE04:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0806FE10:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FE20: .4byte 0xFFFFFBFF
_0806FE24: .4byte gCurTask
_0806FE28: .4byte sub_806FE2C

	thumb_func_start sub_806FE2C
sub_806FE2C: @ 0x0806FE2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0806FEEC @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _0806FEF0 @ =0x0300000C
	adds r7, r1, r2
	ldr r3, [r5]
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsrs r0, r1, #0x10
	mov sb, r0
	asrs r6, r1, #0x10
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #0x10
	ldr r4, _0806FEF4 @ =gCamera
	ldrh r1, [r4]
	mov sl, r1
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	mov r1, sl
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	ldrh r0, [r4, #2]
	subs r0, r6, r0
	strh r0, [r7, #0x18]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r0, r0, r1
	mov sl, r0
	cmp r2, sl
	bgt _0806FEB8
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0806FEB8
	movs r2, #2
	ldrsh r1, [r4, r2]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	bgt _0806FEB8
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	bge _0806FEF8
_0806FEB8:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806FEDC
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0806FEDC
	movs r2, #0x18
	ldrsh r1, [r7, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806FEF8
_0806FEDC:
	ldrb r0, [r5, #8]
	strb r0, [r3]
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _0806FF92
	.align 2, 0
_0806FEEC: .4byte gCurTask
_0806FEF0: .4byte 0x0300000C
_0806FEF4: .4byte gCamera
_0806FEF8:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _0806FF20
	ldr r0, _0806FF1C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806FF92
	.align 2, 0
_0806FF1C: .4byte gCurTask
_0806FF20:
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r5, r1, #0
	cmp r0, #0x14
	bne _0806FF6E
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806FF58
	adds r0, r4, #0
	adds r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
	bl sub_806FFA8
	b _0806FF6E
_0806FF58:
	adds r0, r4, #0
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_806FFA8
_0806FF6E:
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0x3c
	bne _0806FF86
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806FFA0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806FFA4 @ =sub_806FBDC
	str r0, [r1, #8]
_0806FF86:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0806FF92:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FFA0: .4byte gCurTask
_0806FFA4: .4byte sub_806FBDC

	thumb_func_start sub_806FFA8
sub_806FFA8: @ 0x0806FFA8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0806FFE4 @ =sub_8070044
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r1, r3, #0
	cmp r4, #0
	beq _0806FFE8
	strh r5, [r3, #0x16]
	movs r0, #0x80
	lsls r0, r0, #2
	b _0806FFEE
	.align 2, 0
_0806FFE4: .4byte sub_8070044
_0806FFE8:
	strh r5, [r3, #0x16]
	movs r0, #0xfe
	lsls r0, r0, #8
_0806FFEE:
	strh r0, [r3, #0x34]
	lsls r0, r5, #0x10
	asrs r0, r0, #8
	str r0, [r1, #0x30]
	movs r2, #0
	movs r1, #0
	strh r6, [r3, #0x18]
	ldr r0, _08070040 @ =0x06012580
	str r0, [r3, #4]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r3, #0x1a]
	strh r1, [r3, #8]
	subs r0, #0x8d
	strh r0, [r3, #0xa]
	adds r0, r3, #0
	adds r0, #0x20
	strb r2, [r0]
	strh r1, [r3, #0x14]
	strh r1, [r3, #0x1c]
	adds r4, r3, #0
	adds r4, #0x21
	movs r0, #0xff
	strb r0, [r4]
	adds r4, #1
	movs r0, #0x10
	strb r0, [r4]
	adds r0, r3, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	str r1, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08070040: .4byte 0x06012580

	thumb_func_start sub_8070044
sub_8070044: @ 0x08070044
	push {r4, r5, r6, r7, lr}
	ldr r0, _080700B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r5, r4, #0
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x16]
	adds r6, r0, #0
	ldrh r0, [r4, #0x18]
	adds r7, r0, #0
	ldr r1, _080700B8 @ =gCamera
	ldrh r0, [r1]
	subs r0, r6, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_800B798
	ldrh r0, [r4, #0x16]
	adds r0, #0x14
	lsls r0, r0, #0x10
	movs r1, #0x8a
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080700A8
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _080700A8
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0xf0
	ble _080700BC
_080700A8:
	ldr r0, _080700B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080700CC
	.align 2, 0
_080700B4: .4byte gCurTask
_080700B8: .4byte gCamera
_080700BC:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	strh r6, [r5, #0x16]
	strh r7, [r5, #0x18]
_080700CC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Oct
CreateEntity_Oct: @ 0x080700D4
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
	ldr r0, _080701CC @ =sub_80701F4
	ldr r1, _080701D0 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x48
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldr r2, _080701D4 @ =0x0300000C
	adds r5, r4, r2
	movs r7, #0
	movs r3, #0
	strh r6, [r1, #4]
	mov r0, r8
	strh r0, [r1, #6]
	mov r2, sl
	str r2, [r1]
	ldrb r0, [r2]
	strb r0, [r1, #8]
	mov r0, sb
	strb r0, [r1, #9]
	ldr r0, _080701D8 @ =0x03000040
	adds r2, r4, r0
	ldr r0, _080701DC @ =0x0000FF40
	strh r0, [r2]
	str r3, [r1, #0x3c]
	ldr r1, _080701E0 @ =0x03000042
	adds r0, r4, r1
	strh r3, [r0]
	ldr r2, _080701E4 @ =0x03000044
	adds r0, r4, r2
	strh r3, [r0]
	adds r1, #4
	adds r0, r4, r1
	strb r7, [r0]
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x16]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov r8, r1
	add r0, r8
	strh r0, [r5, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	mov r1, sl
	strb r0, [r1]
	movs r0, #8
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r3, [sp, #4]
	strh r3, [r5, #8]
	ldr r2, _080701E8 @ =0x0300002D
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	adds r0, #0xb2
	strh r0, [r5, #0xa]
	ldr r1, _080701EC @ =0x0300002C
	adds r0, r4, r1
	strb r7, [r0]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	adds r2, #1
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080701F0 @ =0x03000031
	adds r4, r4, r0
	strb r7, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080701CC: .4byte sub_80701F4
_080701D0: .4byte TaskDestructor_8009670
_080701D4: .4byte 0x0300000C
_080701D8: .4byte 0x03000040
_080701DC: .4byte 0x0000FF40
_080701E0: .4byte 0x03000042
_080701E4: .4byte 0x03000044
_080701E8: .4byte 0x0300002D
_080701EC: .4byte 0x0300002C
_080701F0: .4byte 0x03000031

	thumb_func_start sub_80701F4
sub_80701F4: @ 0x080701F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080702A4 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, _080702A8 @ =0x0300000C
	adds r5, r1, r2
	ldr r3, [r7]
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r2, #0x10
	mov sb, r0
	asrs r2, r2, #0x10
	lsrs r0, r1, #0x10
	mov r8, r0
	asrs r6, r1, #0x10
	ldr r1, _080702AC @ =gCamera
	ldrh r0, [r1]
	subs r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r1, #2]
	subs r0, r6, r0
	strh r0, [r5, #0x18]
	movs r0, #0
	ldrsh r4, [r1, r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r0, r0, r4
	mov sl, r0
	cmp r2, sl
	bgt _08070272
	adds r0, r4, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08070272
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	bgt _08070272
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	bge _080702B0
_08070272:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08070296
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08070296
	movs r2, #0x18
	ldrsh r1, [r5, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080702B0
_08070296:
	ldrb r0, [r7, #8]
	strb r0, [r3]
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _0807031E
	.align 2, 0
_080702A4: .4byte gCurTask
_080702A8: .4byte 0x0300000C
_080702AC: .4byte gCamera
_080702B0:
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_800B4F8
	adds r2, r0, #0
	cmp r2, #0
	beq _080702D8
	ldr r0, _080702D4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807031E
	.align 2, 0
_080702D4: .4byte gCurTask
_080702D8:
	adds r0, r4, #0
	subs r0, #0x78
	ldr r1, _0807032C @ =gUnknown_03005A20
	ldr r1, [r1]
	asrs r1, r1, #8
	cmp r0, r1
	bge _080702FA
	adds r0, #0xf0
	cmp r0, r1
	ble _080702FA
	adds r0, r5, #0
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _08070330 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08070334 @ =sub_807033C
	str r0, [r1, #8]
_080702FA:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	ldr r1, _08070338 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807031E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807032C: .4byte gUnknown_03005A20
_08070330: .4byte gCurTask
_08070334: .4byte sub_807033C
_08070338: .4byte 0xFFFFFBFF

	thumb_func_start sub_807033C
sub_807033C: @ 0x0807033C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08070404 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldr r1, _08070408 @ =0x0300000C
	adds r6, r3, r1
	ldr r4, [r5]
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsrs r7, r1, #0x10
	mov sb, r7
	asrs r1, r1, #0x10
	mov sl, r1
	ldr r0, _0807040C @ =0x03000040
	adds r3, r3, r0
	movs r7, #0
	ldrsh r1, [r3, r7]
	ldr r0, [r5, #0x3c]
	adds r0, r0, r1
	str r0, [r5, #0x3c]
	asrs r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #0x10
	ldr r3, _08070410 @ =gCamera
	ldrh r1, [r3]
	lsrs r7, r0, #0x10
	mov r8, r7
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	mov r1, sl
	subs r0, r1, r0
	strh r0, [r6, #0x18]
	movs r7, #0
	ldrsh r1, [r3, r7]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r2, r0
	bgt _080703D2
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _080703D2
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp sl, r0
	bgt _080703D2
	adds r0, r1, #0
	subs r0, #0x80
	cmp sl, r0
	bge _08070414
_080703D2:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080703F6
	movs r3, #0x18
	ldrsh r0, [r6, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _080703F6
	movs r7, #0x18
	ldrsh r1, [r6, r7]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08070414
_080703F6:
	ldrb r0, [r5, #8]
	strb r0, [r4]
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _08070502
	.align 2, 0
_08070404: .4byte gCurTask
_08070408: .4byte 0x0300000C
_0807040C: .4byte 0x03000040
_08070410: .4byte gCamera
_08070414:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_800B4F8
	adds r3, r0, #0
	cmp r3, #0
	beq _08070440
	ldr r0, _0807043C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08070502
	.align 2, 0
_0807043C: .4byte gCurTask
_08070440:
	ldr r0, [r5, #0x3c]
	asrs r2, r0, #8
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #3
	cmp r2, r0
	bgt _08070478
	adds r1, r5, #0
	adds r1, #0x46
	ldrb r0, [r1]
	cmp r0, #0
	bne _080704E4
	movs r0, #1
	strb r0, [r1]
	subs r1, #6
	movs r0, #0xc0
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x42
	strh r3, [r0]
	ldr r0, _08070470 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08070474 @ =sub_807051C
	b _080704E2
	.align 2, 0
_08070470: .4byte gCurTask
_08070474: .4byte sub_807051C
_08070478:
	ldrb r0, [r4, #5]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r2, r0
	blt _080704B0
	adds r1, r5, #0
	adds r1, #0x46
	ldrb r0, [r1]
	cmp r0, #0
	bne _080704E4
	movs r0, #1
	strb r0, [r1]
	subs r1, #6
	ldr r0, _080704A4 @ =0x0000FF40
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x42
	strh r3, [r0]
	ldr r0, _080704A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080704AC @ =sub_807051C
	b _080704E2
	.align 2, 0
_080704A4: .4byte 0x0000FF40
_080704A8: .4byte gCurTask
_080704AC: .4byte sub_807051C
_080704B0:
	adds r0, r5, #0
	adds r0, #0x46
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x44
	ldrh r0, [r1]
	movs r7, #0
	ldrsh r2, [r1, r7]
	cmp r2, #0
	beq _080704CA
	subs r0, #1
	strh r0, [r1]
	b _080704E4
_080704CA:
	movs r0, #0x3c
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x42
	strh r2, [r0]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08070510 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08070514 @ =sub_80706F0
_080704E2:
	str r0, [r1, #8]
_080704E4:
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r6, #0x10]
	ldr r1, _08070518 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #0x10]
_08070502:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070510: .4byte gCurTask
_08070514: .4byte sub_80706F0
_08070518: .4byte 0xFFFFFBFF

	thumb_func_start sub_807051C
sub_807051C: @ 0x0807051C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0807059C @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	adds r0, #0xc
	adds r5, r6, r0
	ldr r1, [r7]
	str r1, [sp]
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r2, #0x10
	mov r8, r3
	asrs r2, r2, #0x10
	mov sb, r2
	lsrs r4, r1, #0x10
	str r4, [sp, #4]
	asrs r1, r1, #0x10
	mov sl, r1
	ldr r1, _080705A0 @ =0x03000040
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _080705AC
	ldr r4, _080705A4 @ =gSineTable
	movs r0, #0x80
	lsls r0, r0, #3
	movs r1, #0x1e
	bl Div
	ldr r3, _080705A8 @ =0x03000042
	adds r1, r6, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0x37
	bl Div
	ldr r1, [r7, #0x3c]
	adds r1, r1, r0
	b _080705D4
	.align 2, 0
_0807059C: .4byte gCurTask
_080705A0: .4byte 0x03000040
_080705A4: .4byte gSineTable
_080705A8: .4byte 0x03000042
_080705AC:
	ldr r4, _08070658 @ =gSineTable
	movs r0, #0x80
	lsls r0, r0, #3
	movs r1, #0x1e
	bl Div
	ldr r2, _0807065C @ =0x03000042
	adds r1, r6, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	movs r1, #0x37
	bl Div
	ldr r1, [r7, #0x3c]
	subs r1, r1, r0
_080705D4:
	str r1, [r7, #0x3c]
	ldr r1, [r7, #0x3c]
	asrs r1, r1, #8
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldr r3, _08070660 @ =gCamera
	ldrh r1, [r3]
	lsrs r4, r0, #0x10
	mov r8, r4
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldrh r1, [r3, #2]
	ldr r0, [sp, #4]
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp sb, r0
	bgt _0807062A
	adds r0, r1, #0
	subs r0, #0x80
	cmp sb, r0
	blt _0807062A
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp sl, r0
	bgt _0807062A
	adds r0, r1, #0
	subs r0, #0x80
	cmp sl, r0
	bge _08070664
_0807062A:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807064E
	movs r4, #0x18
	ldrsh r0, [r5, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0807064E
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08070664
_0807064E:
	ldrb r0, [r7, #8]
	ldr r1, [sp]
	strb r0, [r1]
	b _08070676
	.align 2, 0
_08070658: .4byte gSineTable
_0807065C: .4byte 0x03000042
_08070660: .4byte gCamera
_08070664:
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _08070684
_08070676:
	ldr r0, _08070680 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080706D4
	.align 2, 0
_08070680: .4byte gCurTask
_08070684:
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _080706B0
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, #0xb2
	strh r0, [r5, #0xa]
	subs r1, #1
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080706E4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080706E8 @ =sub_807033C
	str r0, [r1, #8]
_080706B0:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	ldr r1, _080706EC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
_080706D4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080706E4: .4byte gCurTask
_080706E8: .4byte sub_807033C
_080706EC: .4byte 0xFFFFFBFF

	thumb_func_start sub_80706F0
sub_80706F0: @ 0x080706F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080707AC @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _080707B0 @ =0x0300000C
	adds r4, r1, r2
	ldr r3, [r5]
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsrs r7, r1, #0x10
	mov sb, r7
	asrs r1, r1, #0x10
	mov sl, r1
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #0x10
	ldr r6, _080707B4 @ =gCamera
	ldrh r1, [r6]
	lsrs r7, r0, #0x10
	mov r8, r7
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r0, [r6, #2]
	mov r1, sl
	subs r0, r1, r0
	strh r0, [r4, #0x18]
	movs r7, #0
	ldrsh r1, [r6, r7]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r2, r0
	bgt _0807077A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0807077A
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp sl, r0
	bgt _0807077A
	adds r0, r1, #0
	subs r0, #0x80
	cmp sl, r0
	bge _080707B8
_0807077A:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807079E
	movs r7, #0x18
	ldrsh r0, [r4, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _0807079E
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080707B8
_0807079E:
	ldrb r0, [r5, #8]
	strb r0, [r3]
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _08070842
	.align 2, 0
_080707AC: .4byte gCurTask
_080707B0: .4byte 0x0300000C
_080707B4: .4byte gCamera
_080707B8:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r7, r0, #0x10
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _080707E0
	ldr r0, _080707DC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08070842
	.align 2, 0
_080707DC: .4byte gCurTask
_080707E0:
	adds r5, #0x42
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	bne _080707FC
	subs r1, r6, #2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_807085C
_080707FC:
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0x1a
	bne _0807081E
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, #0xb2
	strh r0, [r4, #0xa]
	subs r1, #1
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08070850 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08070854 @ =sub_807033C
	str r0, [r1, #8]
_0807081E:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	ldr r1, _08070858 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
_08070842:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070850: .4byte gCurTask
_08070854: .4byte sub_807033C
_08070858: .4byte 0xFFFFFBFF

	thumb_func_start sub_807085C
sub_807085C: @ 0x0807085C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _080708F4 @ =sub_807090C
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	lsls r1, r4, #0x10
	asrs r1, r1, #8
	str r1, [r0, #0x30]
	lsls r1, r5, #0x10
	asrs r1, r1, #8
	str r1, [r0, #0x34]
	movs r1, #0
	mov r8, r1
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x3a]
	strh r4, [r0, #0x16]
	strh r5, [r0, #0x18]
	ldr r1, _080708F8 @ =0x06012600
	str r1, [r0, #4]
	movs r1, #0x90
	lsls r1, r1, #2
	strh r1, [r0, #0x1a]
	strh r6, [r0, #8]
	subs r1, #0x8c
	strh r1, [r0, #0xa]
	ldr r2, _080708FC @ =0x03000020
	adds r1, r3, r2
	mov r2, r8
	strb r2, [r1]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0x1c]
	ldr r1, _08070900 @ =0x03000021
	adds r2, r3, r1
	movs r1, #0xff
	strb r1, [r2]
	ldr r1, _08070904 @ =0x03000022
	adds r2, r3, r1
	movs r1, #0x10
	strb r1, [r2]
	ldr r2, _08070908 @ =0x03000025
	adds r3, r3, r2
	mov r1, r8
	strb r1, [r3]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x10]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080708F4: .4byte sub_807090C
_080708F8: .4byte 0x06012600
_080708FC: .4byte 0x03000020
_08070900: .4byte 0x03000021
_08070904: .4byte 0x03000022
_08070908: .4byte 0x03000025

	thumb_func_start sub_807090C
sub_807090C: @ 0x0807090C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08070980 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r5, r4, #0
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	movs r0, #0x3a
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x16]
	adds r7, r0, #0
	ldrh r0, [r4, #0x18]
	adds r6, r0, #0
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_800B798
	ldr r3, _08070984 @ =gCamera
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
	bhi _08070976
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _08070976
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08070988
_08070976:
	ldr r0, _08070980 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08070998
	.align 2, 0
_08070980: .4byte gCurTask
_08070984: .4byte gCamera
_08070988:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	strh r7, [r5, #0x16]
	strh r6, [r5, #0x18]
_08070998:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Senbon
CreateEntity_Senbon: @ 0x080709A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	ldr r0, _08070A98 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #1
	bne _080709D4
	ldr r0, _08070A9C @ =gUnknown_03005160
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	bne _08070A86
_080709D4:
	ldr r0, _08070AA0 @ =sub_8070ACC
	ldr r1, _08070AA4 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x4c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _08070AA8 @ =0x0300000C
	adds r5, r4, r1
	movs r6, #0
	mov r2, sb
	strh r2, [r0, #4]
	mov r1, r8
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	mov r2, sl
	strb r2, [r0, #9]
	ldr r1, _08070AAC @ =0x03000048
	adds r2, r4, r1
	ldr r1, _08070AB0 @ =0x0000FF60
	strh r1, [r2]
	str r6, [r0, #0x40]
	strh r6, [r0, #0x3c]
	ldr r2, _08070AB4 @ =0x03000044
	adds r0, r4, r2
	strh r6, [r0]
	ldr r1, _08070AB8 @ =0x03000046
	adds r0, r4, r1
	strh r6, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _08070ABC @ =0x0000019B
	strh r0, [r5, #0xa]
	ldr r2, _08070AC0 @ =0x0300002C
	adds r0, r4, r2
	movs r1, #0
	strb r1, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	adds r2, #1
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08070AC4 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08070AC8 @ =0x03000031
	adds r4, r4, r1
	movs r2, #0
	strb r2, [r4]
	subs r0, #0x11
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_08070A86:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070A98: .4byte gCurrentLevel
_08070A9C: .4byte gUnknown_03005160
_08070AA0: .4byte sub_8070ACC
_08070AA4: .4byte TaskDestructor_8009670
_08070AA8: .4byte 0x0300000C
_08070AAC: .4byte 0x03000048
_08070AB0: .4byte 0x0000FF60
_08070AB4: .4byte 0x03000044
_08070AB8: .4byte 0x03000046
_08070ABC: .4byte 0x0000019B
_08070AC0: .4byte 0x0300002C
_08070AC4: .4byte 0x0300002E
_08070AC8: .4byte 0x03000031

	thumb_func_start sub_8070ACC
sub_8070ACC: @ 0x08070ACC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08070BA0 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0xc
	adds r5, r3, r0
	ldr r1, [r6]
	mov r8, r1
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r2, _08070BA4 @ =0x03000048
	adds r3, r3, r2
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x40]
	asrs r0, r0, #8
	adds r0, r7, r0
	lsls r0, r0, #0x10
	ldrh r1, [r6, #0x3c]
	add r1, ip
	lsls r1, r1, #0x10
	ldr r3, _08070BA8 @ =gCamera
	ldrh r2, [r3]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r0, r2
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r7, r0
	bgt _08070B6C
	adds r0, r1, #0
	subs r0, #0x80
	cmp r7, r0
	blt _08070B6C
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _08070B6C
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _08070BAC
_08070B6C:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08070B90
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08070B90
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08070BAC
_08070B90:
	ldrb r0, [r6, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08070C98
	.align 2, 0
_08070BA0: .4byte gCurTask
_08070BA4: .4byte 0x03000048
_08070BA8: .4byte gCamera
_08070BAC:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _08070BD4
	ldr r0, _08070BD0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08070C98
	.align 2, 0
_08070BD0: .4byte gCurTask
_08070BD4:
	ldr r0, [r6, #0x40]
	asrs r2, r0, #8
	mov r0, r8
	movs r1, #3
	ldrsb r1, [r0, r1]
	adds r0, r1, #1
	lsls r0, r0, #3
	cmp r2, r0
	bgt _08070BFA
	adds r1, r6, #0
	adds r1, #0x48
	movs r0, #0xa0
	strh r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08070C8C
_08070BFA:
	mov r3, r8
	ldrb r0, [r3, #5]
	adds r0, r1, r0
	subs r0, #1
	lsls r0, r0, #3
	cmp r2, r0
	blt _08070C24
	adds r1, r6, #0
	adds r1, #0x48
	ldr r0, _08070C1C @ =0x0000FF60
	strh r0, [r1]
	ldr r0, [r5, #0x10]
	ldr r1, _08070C20 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08070C8C
	.align 2, 0
_08070C1C: .4byte 0x0000FF60
_08070C20: .4byte 0xFFFFFBFF
_08070C24:
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r1]
	movs r3, #0
	ldrsh r2, [r1, r3]
	cmp r2, #0
	beq _08070C38
	subs r0, #1
	strh r0, [r1]
	b _08070C8C
_08070C38:
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	beq _08070C64
	ldr r0, _08070C60 @ =gUnknown_03005A20
	ldr r0, [r0]
	asrs r1, r0, #8
	cmp r1, r4
	blt _08070C8C
	adds r0, r4, #0
	adds r0, #0x50
	cmp r0, r1
	blt _08070C8C
	adds r0, r6, #0
	adds r0, #0x44
	strh r2, [r0]
	b _08070C7C
	.align 2, 0
_08070C60: .4byte gUnknown_03005A20
_08070C64:
	ldr r0, _08070CA8 @ =gUnknown_03005A20
	ldr r0, [r0]
	asrs r2, r0, #8
	cmp r2, r4
	bgt _08070C8C
	adds r0, r4, #0
	subs r0, #0x50
	cmp r0, r2
	bgt _08070C8C
	adds r0, r6, #0
	adds r0, #0x44
	strh r1, [r0]
_08070C7C:
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08070CAC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08070CB0 @ =sub_8070CB4
	str r0, [r1, #8]
_08070C8C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_08070C98:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070CA8: .4byte gUnknown_03005A20
_08070CAC: .4byte gCurTask
_08070CB0: .4byte sub_8070CB4

	thumb_func_start sub_8070CB4
sub_8070CB4: @ 0x08070CB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08070D84 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08070D88 @ =0x0300000C
	adds r5, r1, r0
	mov r1, r8
	ldr r1, [r1]
	mov ip, r1
	mov r4, r8
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	mov r1, r8
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	adds r0, r4, r0
	lsls r0, r0, #0x10
	ldrh r1, [r1, #0x3c]
	adds r1, r7, r1
	lsls r1, r1, #0x10
	ldr r6, _08070D8C @ =gCamera
	ldrh r2, [r6]
	mov sl, r2
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	mov r2, sl
	subs r0, r0, r2
	strh r0, [r5, #0x16]
	ldrh r0, [r6, #2]
	lsrs r2, r1, #0x10
	mov sl, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _08070D4E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _08070D4E
	movs r4, #2
	ldrsh r2, [r6, r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r7, r0
	bgt _08070D4E
	adds r0, r2, #0
	subs r0, #0x80
	cmp r7, r0
	bge _08070D90
_08070D4E:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08070D72
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08070D72
	movs r4, #0x18
	ldrsh r1, [r5, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08070D90
_08070D72:
	mov r1, r8
	ldrb r0, [r1, #8]
	mov r2, ip
	strb r0, [r2]
	ldr r0, [r3]
	bl TaskDestroy
	b _08070E74
	.align 2, 0
_08070D84: .4byte gCurTask
_08070D88: .4byte 0x0300000C
_08070D8C: .4byte gCamera
_08070D90:
	ldr r1, [r5, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08070E40
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x2c
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r4, r0, r7
	ldr r2, _08070E84 @ =gUnknown_03005A20
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _08070E88 @ =gUnknown_03005BE0
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov ip, r0
	add r1, ip
	adds r6, r3, #0
	cmp r4, r1
	bgt _08070DDC
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r4, r0
	cmp r0, r1
	bge _08070DF0
	cmp r4, r1
	blt _08070E40
_08070DDC:
	adds r0, r6, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r3, ip
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r4
	blt _08070E40
_08070DF0:
	mov r4, sl
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r3, r5, #0
	adds r3, #0x2d
	movs r4, #0
	ldrsb r4, [r3, r4]
	adds r1, r0, r4
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r3, r6, #0
	adds r3, #0x39
	movs r7, #0
	ldrsb r7, [r3, r7]
	adds r3, r0, r7
	cmp r1, r3
	bgt _08070E28
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r3
	bge _08070E3A
	cmp r1, r3
	blt _08070E40
_08070E28:
	adds r0, r6, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r3, r0
	cmp r0, r1
	blt _08070E40
_08070E3A:
	adds r0, r2, #0
	bl sub_800C558
_08070E40:
	mov r1, r8
	adds r1, #0x44
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08070E68
	adds r1, #2
	movs r0, #0x78
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08070E8C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08070E90 @ =sub_8070ACC
	str r0, [r1, #8]
_08070E68:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_08070E74:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070E84: .4byte gUnknown_03005A20
_08070E88: .4byte gUnknown_03005BE0
_08070E8C: .4byte gCurTask
_08070E90: .4byte sub_8070ACC

	thumb_func_start sub_8070E94
sub_8070E94: @ 0x08070E94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r2, _08070F14 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	ldr r3, [r7]
	mov sl, r3
	ldrb r0, [r7, #6]
	lsls r0, r0, #3
	ldrh r1, [r7, #8]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #0xa]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r6, r8
	lsls r0, r6, #0x10
	asrs r3, r0, #0x10
	ldr r5, _08070F18 @ =gCamera
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r6, #0xb8
	lsls r6, r6, #1
	adds r0, r1, r6
	cmp r3, r0
	bgt _08070F06
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	blt _08070F06
	lsls r0, r4, #0x10
	asrs r6, r0, #0x10
	movs r0, #2
	ldrsh r1, [r5, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r6, r0
	bgt _08070F06
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	bge _08070F1C
_08070F06:
	ldrb r0, [r7, #6]
	mov r6, sl
	strb r0, [r6]
	ldr r0, [r2]
	bl TaskDestroy
	b _08070FE8
	.align 2, 0
_08070F14: .4byte gCurTask
_08070F18: .4byte gCamera
_08070F1C:
	ldr r0, _08070FF8 @ =gStageTime
	movs r2, #4
	ldrsh r1, [r7, r2]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xf0
	bl Mod
	mov sb, r0
	cmp r0, #0
	bne _08070FE8
	ldr r0, _08070FFC @ =sub_807101C
	ldr r1, _08071000 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x48
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r1, r5, r3
	ldr r0, _08071004 @ =0x0300000C
	adds r4, r5, r0
	ldrh r0, [r7, #8]
	strh r0, [r1, #4]
	ldrh r0, [r7, #0xa]
	strh r0, [r1, #6]
	ldr r0, [r7]
	str r0, [r1]
	ldrb r0, [r7, #6]
	strb r0, [r1, #8]
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r1, #0x3c]
	mov r2, r8
	strh r2, [r1, #0x3e]
	adds r2, r6, #0
	adds r2, #0x18
	adds r3, #0x40
	adds r0, r5, r3
	strh r2, [r0]
	movs r6, #0
	ldrsh r0, [r0, r6]
	str r0, [r1, #0x44]
	mov r0, sl
	ldrb r1, [r0]
	lsls r1, r1, #3
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x16]
	mov r2, sl
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x18]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r2]
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	mov r6, sb
	strh r6, [r4, #8]
	ldr r0, _08071008 @ =0x0000019D
	strh r0, [r4, #0xa]
	ldr r1, _0807100C @ =0x0300002C
	adds r0, r5, r1
	movs r2, #0
	strb r2, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r3, _08071010 @ =0x0300002D
	adds r1, r5, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r6, _08071014 @ =0x0300002E
	adds r1, r5, r6
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08071018 @ =0x03000031
	adds r5, r5, r0
	strb r2, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_08070FE8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070FF8: .4byte gStageTime
_08070FFC: .4byte sub_807101C
_08071000: .4byte TaskDestructor_8009670
_08071004: .4byte 0x0300000C
_08071008: .4byte 0x0000019D
_0807100C: .4byte 0x0300002C
_08071010: .4byte 0x0300002D
_08071014: .4byte 0x0300002E
_08071018: .4byte 0x03000031

	thumb_func_start sub_807101C
sub_807101C: @ 0x0807101C
	push {r4, r5, r6, r7, lr}
	ldr r3, _080710BC @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0xc
	adds r4, r2, r0
	ldr r1, [r5]
	mov ip, r1
	ldr r6, _080710C0 @ =gCamera
	ldrh r0, [r5, #0x3e]
	ldrh r1, [r6]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0x3c]
	adds r0, #0x40
	strh r0, [r5, #0x3c]
	ldr r7, _080710C4 @ =0x03000040
	adds r2, r2, r7
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrh r1, [r6, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	movs r7, #0x3e
	ldrsh r2, [r5, r7]
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r2, r0
	bgt _08071088
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08071088
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r2, [r5, #0x44]
	cmp r2, r0
	bgt _08071088
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _080710C8
_08071088:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080710AC
	movs r7, #0x18
	ldrsh r0, [r4, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _080710AC
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080710C8
_080710AC:
	ldrb r0, [r5, #8]
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r3]
	bl TaskDestroy
	b _08071148
	.align 2, 0
_080710BC: .4byte gCurTask
_080710C0: .4byte gCamera
_080710C4: .4byte 0x03000040
_080710C8:
	ldr r6, _08071150 @ =gUnknown_03005A20
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080710F2
	movs r2, #0x3e
	ldrsh r1, [r5, r2]
	adds r0, r5, #0
	adds r0, #0x40
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	adds r3, r6, #0
	bl sub_800CE34
	cmp r0, #0
	beq _080710F2
	adds r0, r6, #0
	bl sub_800C558
_080710F2:
	movs r7, #0x3c
	ldrsh r0, [r5, r7]
	cmp r0, #0
	blt _08071124
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	adds r1, r5, #0
	adds r1, #0x40
	ldrh r1, [r1]
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_8071288
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08071154 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08071158 @ =sub_8071160
	str r0, [r1, #8]
_08071124:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	ldr r1, _0807115C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
_08071148:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071150: .4byte gUnknown_03005A20
_08071154: .4byte gCurTask
_08071158: .4byte sub_8071160
_0807115C: .4byte 0xFFFFFBFF

	thumb_func_start sub_8071160
sub_8071160: @ 0x08071160
	push {r4, r5, r6, r7, lr}
	ldr r3, _08071200 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0xc
	adds r4, r2, r0
	ldr r1, [r5]
	mov ip, r1
	ldr r6, _08071204 @ =gCamera
	ldrh r0, [r5, #0x3e]
	ldrh r1, [r6]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0x3c]
	adds r0, #0x40
	strh r0, [r5, #0x3c]
	ldr r7, _08071208 @ =0x03000040
	adds r2, r2, r7
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrh r1, [r6, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	movs r7, #0x3e
	ldrsh r2, [r5, r7]
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r2, r0
	bgt _080711CC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _080711CC
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r2, [r5, #0x44]
	cmp r2, r0
	bgt _080711CC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0807120C
_080711CC:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080711F0
	movs r7, #0x18
	ldrsh r0, [r4, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _080711F0
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807120C
_080711F0:
	ldrb r0, [r5, #8]
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r3]
	bl TaskDestroy
	b _0807127C
	.align 2, 0
_08071200: .4byte gCurTask
_08071204: .4byte gCamera
_08071208: .4byte 0x03000040
_0807120C:
	ldr r6, _0807124C @ =gUnknown_03005A20
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08071236
	movs r2, #0x3e
	ldrsh r1, [r5, r2]
	adds r0, r5, #0
	adds r0, #0x40
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	adds r3, r6, #0
	bl sub_800CE34
	cmp r0, #0
	beq _08071236
	adds r0, r6, #0
	bl sub_800C558
_08071236:
	movs r7, #0x3c
	ldrsh r1, [r5, r7]
	ldr r0, _08071250 @ =0x000001FF
	cmp r1, r0
	ble _08071258
	ldr r0, _08071254 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807127C
	.align 2, 0
_0807124C: .4byte gUnknown_03005A20
_08071250: .4byte 0x000001FF
_08071254: .4byte gCurTask
_08071258:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	ldr r1, _08071284 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
_0807127C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071284: .4byte 0xFFFFFBFF

	thumb_func_start sub_8071288
sub_8071288: @ 0x08071288
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	movs r6, #0
	movs r4, #0
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	lsls r5, r7, #2
	movs r0, #8
	adds r0, r0, r7
	mov r8, r0
_080712A8:
	str r4, [sp]
	ldr r0, _080712DC @ =sub_8071344
	movs r1, #0x38
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r0, r2
	strh r5, [r1, #0x30]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1, #0x34]
	movs r0, #6
	strh r0, [r1, #0x32]
	cmp r6, #0
	beq _080712E0
	rsbs r0, r0, #0
	strh r0, [r1, #0x32]
	adds r0, r7, #0
	subs r0, #8
	b _080712E4
	.align 2, 0
_080712DC: .4byte sub_8071344
_080712E0:
	strh r5, [r1, #0x30]
	mov r0, r8
_080712E4:
	strh r0, [r1, #0x16]
	mov r2, sb
	strh r2, [r1, #0x18]
	ldr r0, _08071340 @ =0x06012580
	str r0, [r1, #4]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r1, #0x1a]
	strh r4, [r1, #8]
	subs r0, #0xa2
	strh r0, [r1, #0xa]
	adds r0, r1, #0
	adds r0, #0x20
	strb r4, [r0]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x1c]
	adds r2, r1, #0
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	adds r2, #1
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r1, #0
	adds r0, #0x25
	strb r4, [r0]
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
	ble _080712A8
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071340: .4byte 0x06012580

	thumb_func_start sub_8071344
sub_8071344: @ 0x08071344
	push {r4, r5, r6, r7, lr}
	ldr r0, _080713C8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r5, r4, #0
	ldrh r0, [r4, #0x32]
	ldrh r1, [r4, #0x30]
	adds r0, r0, r1
	strh r0, [r4, #0x30]
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08071366
	adds r0, #3
_08071366:
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x34]
	adds r0, #0x28
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	ldrh r6, [r4, #0x16]
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldrh r7, [r4, #0x18]
	movs r0, #0x18
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	bl sub_800B798
	ldr r3, _080713CC @ =gCamera
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
	bhi _080713BC
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _080713BC
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _080713D0
_080713BC:
	ldr r0, _080713C8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080713E0
	.align 2, 0
_080713C8: .4byte gCurTask
_080713CC: .4byte gCamera
_080713D0:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	strh r6, [r5, #0x16]
	strh r7, [r5, #0x18]
_080713E0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Fireball
CreateEntity_Fireball: @ 0x080713E8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0807143C @ =sub_8070E94
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r6, [r0]
	mov r1, r8
	strh r1, [r0, #4]
	ldrb r1, [r6]
	strb r1, [r0, #6]
	strh r4, [r0, #8]
	strh r5, [r0, #0xa]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0807143C: .4byte sub_8070E94

	thumb_func_start CreateEntity_Mole
CreateEntity_Mole: @ 0x08071440
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #4
	ldrsb r0, [r7, r0]
	cmp r0, #0
	beq _08071484
	ldr r0, _0807147C @ =sub_8071558
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08071480 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	b _08071496
	.align 2, 0
_0807147C: .4byte sub_8071558
_08071480: .4byte TaskDestructor_8009670
_08071484:
	ldr r0, _0807153C @ =sub_8071734
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08071540 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
_08071496:
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	ldr r1, _08071544 @ =0x0300000C
	adds r4, r5, r1
	movs r6, #0
	mov r2, sb
	strh r2, [r0, #4]
	mov r1, sl
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	strh r6, [r0, #0x3c]
	ldr r1, _08071548 @ =0x0300003E
	adds r0, r5, r1
	movs r2, #0
	strb r2, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, sl
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	movs r0, #0xd9
	lsls r0, r0, #1
	strh r0, [r4, #0xa]
	ldr r2, _0807154C @ =0x0300002C
	adds r0, r5, r2
	movs r1, #0
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r2, #1
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08071550 @ =0x0300002E
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08071554 @ =0x03000031
	adds r5, r5, r1
	movs r2, #0
	strb r2, [r5]
	subs r0, #0x11
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807153C: .4byte sub_8071734
_08071540: .4byte TaskDestructor_8009670
_08071544: .4byte 0x0300000C
_08071548: .4byte 0x0300003E
_0807154C: .4byte 0x0300002C
_08071550: .4byte 0x0300002E
_08071554: .4byte 0x03000031

	thumb_func_start sub_8071558
sub_8071558: @ 0x08071558
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080715D0 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r7, r0
	ldr r1, _080715D4 @ =0x0300000C
	adds r6, r7, r1
	ldr r0, [r5]
	mov ip, r0
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, ip
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _080715D8 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x16]
	ldrh r2, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r2, r1, r2
	strh r2, [r6, #0x18]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	mov r3, r8
	cmp r0, r1
	bhi _080715C2
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080715C2
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080715DC
_080715C2:
	ldrb r0, [r5, #8]
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r3]
	bl TaskDestroy
	b _08071630
	.align 2, 0
_080715D0: .4byte gCurTask
_080715D4: .4byte 0x0300000C
_080715D8: .4byte gCamera
_080715DC:
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	strh r0, [r5, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08071624
	movs r0, #0
	strh r0, [r5, #0x3c]
	ldr r0, _08071608 @ =0x0300002C
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0807160C @ =gUnknown_03005A20
	ldr r0, [r0]
	asrs r0, r0, #8
	cmp r4, r0
	ble _08071614
	ldr r0, [r6, #0x10]
	ldr r1, _08071610 @ =0xFFFFFBFF
	ands r0, r1
	b _0807161C
	.align 2, 0
_08071608: .4byte 0x0300002C
_0807160C: .4byte gUnknown_03005A20
_08071610: .4byte 0xFFFFFBFF
_08071614:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0807161C:
	str r0, [r6, #0x10]
	ldr r1, [r3]
	ldr r0, _0807163C @ =sub_8071640
	str r0, [r1, #8]
_08071624:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08071630:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807163C: .4byte sub_8071640

	thumb_func_start sub_8071640
sub_8071640: @ 0x08071640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080716C0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r1, _080716C4 @ =0x0300000C
	adds r5, r6, r1
	ldr r7, [r4]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080716C8 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	subs r0, r1, r0
	movs r1, #0
	mov r8, r1
	strh r0, [r5, #0x16]
	ldrh r1, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r3, r2, r1
	strh r3, [r5, #0x18]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	mov sl, sb
	cmp r0, r1
	bhi _080716B0
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080716B0
	lsls r1, r3, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080716CC
_080716B0:
	ldrb r0, [r4, #8]
	strb r0, [r7]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _08071718
	.align 2, 0
_080716C0: .4byte gCurTask
_080716C4: .4byte 0x0300000C
_080716C8: .4byte gCamera
_080716CC:
	ldrh r0, [r4, #0x3c]
	adds r0, #1
	strh r0, [r4, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _080716EE
	movs r0, #0
	strh r0, [r4, #0x3c]
	ldr r1, _08071728 @ =0x0300002C
	adds r0, r6, r1
	mov r1, r8
	strb r1, [r0]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0807172C @ =sub_8071558
	str r0, [r1, #8]
_080716EE:
	adds r0, r5, #0
	mov r1, ip
	bl sub_800B4F8
	cmp r0, #0
	beq _0807170C
	ldr r1, _08071728 @ =0x0300002C
	adds r0, r6, r1
	mov r1, r8
	strb r1, [r0]
	strb r1, [r7, #4]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _08071730 @ =sub_8071734
	str r0, [r1, #8]
_0807170C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_08071718:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071728: .4byte 0x0300002C
_0807172C: .4byte sub_8071558
_08071730: .4byte sub_8071734

	thumb_func_start sub_8071734
sub_8071734: @ 0x08071734
	push {r4, r5, r6, r7, lr}
	ldr r4, _080717A0 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r7, [r5]
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080717A4 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #0x18]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08071792
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08071792
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080717A8
_08071792:
	ldrb r0, [r5, #8]
	strb r0, [r7]
	ldr r0, [r4]
	bl TaskDestroy
	b _080717B4
	.align 2, 0
_080717A0: .4byte gCurTask
_080717A4: .4byte gCamera
_080717A8:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_080717B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Yukimaru
CreateEntity_Yukimaru: @ 0x080717BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	ldr r0, _0807196C @ =sub_80719B8
	ldr r1, _08071970 @ =sub_8071F28
	str r1, [sp]
	movs r1, #0x84
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r6, r4, r6
	ldr r2, _08071974 @ =0x0300000C
	adds r7, r4, r2
	movs r5, #0
	mov r0, sb
	strh r0, [r6, #4]
	mov r1, sl
	strh r1, [r6, #6]
	mov r2, r8
	str r2, [r6]
	ldrb r0, [r2]
	strb r0, [r6, #8]
	mov r0, sp
	ldrb r0, [r0, #4]
	strb r0, [r6, #9]
	ldr r1, _08071978 @ =0x03000078
	adds r1, r4, r1
	str r1, [sp, #8]
	movs r2, #0xa0
	rsbs r2, r2, #0
	strh r2, [r1]
	ldr r0, _0807197C @ =0x0300007A
	adds r0, r4, r0
	str r0, [sp, #0xc]
	strh r5, [r0]
	ldr r1, _08071980 @ =0x0300007C
	adds r1, r4, r1
	str r1, [sp, #0x10]
	strh r5, [r1]
	ldr r2, _08071984 @ =0x0300007E
	adds r2, r4, r2
	str r2, [sp, #0x14]
	strh r5, [r2]
	ldr r1, _08071988 @ =0x03000080
	adds r0, r4, r1
	strh r5, [r0]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #3
	mov r1, sb
	lsls r1, r1, #8
	str r1, [sp, #0x18]
	adds r0, r0, r1
	strh r0, [r7, #0x16]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	mov r2, sl
	lsls r2, r2, #8
	str r2, [sp, #0x1c]
	adds r0, r0, r2
	strh r0, [r7, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	mov r0, r8
	strb r1, [r0]
	movs r0, #8
	bl VramMalloc
	str r0, [r7, #4]
	strh r5, [r7, #0x1a]
	strh r5, [r7, #8]
	movs r2, #0xd3
	lsls r2, r2, #1
	strh r2, [r7, #0xa]
	ldr r1, _0807198C @ =0x0300002C
	adds r0, r4, r1
	movs r2, #1
	strb r2, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r0, _08071990 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08071994 @ =0x0300002E
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r2, _08071998 @ =0x03000048
	adds r7, r4, r2
	ldr r1, _0807199C @ =0x03000040
	adds r0, r4, r1
	mov r2, sb
	strh r2, [r0]
	adds r1, #2
	adds r0, r4, r1
	mov r2, sl
	strh r2, [r0]
	mov r0, r8
	str r0, [r6, #0x3c]
	ldrb r1, [r0]
	ldr r2, _080719A0 @ =0x03000044
	adds r0, r4, r2
	strb r1, [r0]
	ldr r1, _080719A4 @ =0x03000045
	adds r0, r4, r1
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	movs r1, #0xa0
	rsbs r1, r1, #0
	ldr r0, [sp, #8]
	strh r1, [r0]
	ldr r2, [sp, #0xc]
	strh r5, [r2]
	ldr r0, [sp, #0x10]
	strh r5, [r0]
	ldr r1, [sp, #0x14]
	strh r5, [r1]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #3
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	strh r0, [r7, #0x16]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldr r2, [sp, #0x1c]
	adds r0, r0, r2
	strh r0, [r7, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	mov r0, r8
	strb r1, [r0]
	movs r0, #8
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	movs r2, #0xd3
	lsls r2, r2, #1
	strh r2, [r7, #0xa]
	ldr r1, _080719A8 @ =0x03000068
	adds r0, r4, r1
	movs r2, #1
	strb r2, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r0, _080719AC @ =0x03000069
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080719B0 @ =0x0300006A
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	ldr r0, _080719B4 @ =0x0300006D
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807196C: .4byte sub_80719B8
_08071970: .4byte sub_8071F28
_08071974: .4byte 0x0300000C
_08071978: .4byte 0x03000078
_0807197C: .4byte 0x0300007A
_08071980: .4byte 0x0300007C
_08071984: .4byte 0x0300007E
_08071988: .4byte 0x03000080
_0807198C: .4byte 0x0300002C
_08071990: .4byte 0x0300002D
_08071994: .4byte 0x0300002E
_08071998: .4byte 0x03000048
_0807199C: .4byte 0x03000040
_080719A0: .4byte 0x03000044
_080719A4: .4byte 0x03000045
_080719A8: .4byte 0x03000068
_080719AC: .4byte 0x03000069
_080719B0: .4byte 0x0300006A
_080719B4: .4byte 0x0300006D

	thumb_func_start sub_80719B8
sub_80719B8: @ 0x080719B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _08071AB0 @ =gCurTask
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldr r2, _08071AB4 @ =0x0300000C
	adds r7, r3, r2
	ldr r4, _08071AB8 @ =0x03000048
	adds r4, r4, r3
	mov r8, r4
	ldr r0, [r5]
	mov sb, r0
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r4, sb
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	ldr r0, _08071ABC @ =0x0300007A
	adds r2, r3, r0
	ldr r4, _08071AC0 @ =0x03000078
	ldrh r0, [r4, r3]
	ldrh r4, [r2]
	adds r0, r0, r4
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x10
	asrs r2, r1, #0x10
	mov ip, r2
	ldr r4, _08071AC4 @ =0x0300007C
	adds r3, r3, r4
	ldr r2, _08071AC8 @ =0xFFFA0000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	ldrh r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	ldr r3, _08071ACC @ =gCamera
	ldrh r4, [r3]
	mov sl, r4
	lsrs r2, r0, #0x10
	str r2, [sp, #0xc]
	asrs r0, r0, #0x10
	mov r4, sl
	subs r2, r0, r4
	strh r2, [r7, #0x16]
	lsrs r2, r1, #0x10
	mov sl, r2
	asrs r1, r1, #0x10
	ldrh r4, [r3, #2]
	subs r2, r1, r4
	strh r2, [r7, #0x18]
	ldrh r2, [r3]
	subs r0, r0, r2
	mov r2, r8
	strh r0, [r2, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r4, _08071AB0 @ =gCurTask
	cmp r6, r0
	bgt _08071A7E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	blt _08071A7E
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _08071A7E
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _08071AD0
_08071A7E:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08071AA2
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08071AA2
	movs r3, #0x18
	ldrsh r1, [r7, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08071AD0
_08071AA2:
	ldrb r0, [r5, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08071BDA
	.align 2, 0
_08071AB0: .4byte gCurTask
_08071AB4: .4byte 0x0300000C
_08071AB8: .4byte 0x03000048
_08071ABC: .4byte 0x0300007A
_08071AC0: .4byte 0x03000078
_08071AC4: .4byte 0x0300007C
_08071AC8: .4byte 0xFFFA0000
_08071ACC: .4byte gCamera
_08071AD0:
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r6, r0, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _08071AF8
	ldr r0, _08071AF4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08071BDA
	.align 2, 0
_08071AF4: .4byte gCurTask
_08071AF8:
	add r0, sp, #8
	str r0, [sp]
	ldr r0, _08071B3C @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	adds r2, r5, #0
	adds r2, #0x7c
	ldrh r1, [r2]
	adds r1, r1, r0
	movs r3, #0
	mov ip, r3
	strh r1, [r2]
	adds r0, r5, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x18
	mov r0, sb
	movs r1, #3
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	cmp r2, r0
	bgt _08071B40
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0xa0
	strh r0, [r1]
	b _08071BAC
	.align 2, 0
_08071B3C: .4byte sub_803FF84
_08071B40:
	mov r3, sb
	ldrb r0, [r3, #5]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r2, r0
	blt _08071B5C
	adds r1, r5, #0
	adds r1, #0x78
	ldr r0, _08071B58 @ =0x0000FF60
	strh r0, [r1]
	b _08071BAC
	.align 2, 0
_08071B58: .4byte 0x0000FF60
_08071B5C:
	adds r2, r5, #0
	adds r2, #0x80
	ldrh r0, [r2]
	movs r1, #0
	ldrsh r3, [r2, r1]
	cmp r3, #0
	beq _08071B70
	subs r0, #1
	strh r0, [r2]
	b _08071BAC
_08071B70:
	ldr r1, _08071BEC @ =gUnknown_03005A20
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	cmp r0, r6
	bgt _08071BAC
	ldr r0, [r1]
	asrs r1, r0, #8
	adds r0, r4, #0
	adds r0, #8
	cmp r1, r0
	bgt _08071BAC
	subs r0, #0x10
	cmp r0, r1
	bgt _08071BAC
	movs r0, #0x3c
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x7e
	strh r3, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	mov r2, ip
	strb r2, [r0]
	mov r0, r8
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _08071BF0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08071BF4 @ =sub_8071BFC
	str r0, [r1, #8]
_08071BAC:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0x10]
	mov r0, r8
	bl DisplaySprite
	mov r4, r8
	ldr r0, [r4, #0x10]
	ldr r1, _08071BF8 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
_08071BDA:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071BEC: .4byte gUnknown_03005A20
_08071BF0: .4byte gCurTask
_08071BF4: .4byte sub_8071BFC
_08071BF8: .4byte 0xFFFFFBFF

	thumb_func_start sub_8071BFC
sub_8071BFC: @ 0x08071BFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r4, _08071CF4 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	adds r0, #0xc
	adds r0, r0, r3
	mov r8, r0
	ldr r1, _08071CF8 @ =0x03000048
	adds r1, r1, r3
	mov sb, r1
	ldr r2, [r7]
	mov ip, r2
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r6, ip
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	ldr r2, _08071CFC @ =0x0300007A
	adds r0, r3, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r5, r0
	lsls r0, r0, #0x10
	asrs r6, r1, #0x10
	str r6, [sp, #0x10]
	adds r2, #2
	adds r3, r3, r2
	ldr r6, _08071D00 @ =0xFFFA0000
	adds r1, r1, r6
	asrs r1, r1, #0x10
	ldrh r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	ldr r3, _08071D04 @ =gCamera
	ldrh r2, [r3]
	lsrs r6, r0, #0x10
	str r6, [sp, #0xc]
	asrs r0, r0, #0x10
	subs r2, r0, r2
	mov r6, r8
	strh r2, [r6, #0x16]
	ldrh r2, [r3, #2]
	lsrs r6, r1, #0x10
	mov sl, r6
	asrs r1, r1, #0x10
	subs r2, r1, r2
	mov r6, r8
	strh r2, [r6, #0x18]
	ldrh r2, [r3]
	subs r0, r0, r2
	mov r2, sb
	strh r0, [r2, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	movs r6, #0
	ldrsh r1, [r3, r6]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _08071CBC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _08071CBC
	movs r6, #2
	ldrsh r2, [r3, r6]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r6, [sp, #0x10]
	cmp r6, r0
	bgt _08071CBC
	adds r0, r2, #0
	subs r0, #0x80
	cmp r6, r0
	bge _08071D08
_08071CBC:
	mov r1, r8
	ldrh r0, [r1, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08071CE4
	mov r2, r8
	movs r6, #0x18
	ldrsh r0, [r2, r6]
	adds r0, #0x80
	cmp r0, #0
	blt _08071CE4
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08071D08
_08071CE4:
	ldrb r0, [r7, #8]
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08071DBC
	.align 2, 0
_08071CF4: .4byte gCurTask
_08071CF8: .4byte 0x03000048
_08071CFC: .4byte 0x0300007A
_08071D00: .4byte 0xFFFA0000
_08071D04: .4byte gCamera
_08071D08:
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _08071D30
	ldr r0, _08071D2C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08071DBC
	.align 2, 0
_08071D2C: .4byte gCurTask
_08071D30:
	add r2, sp, #8
	str r2, [sp]
	ldr r0, _08071DCC @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	adds r2, r7, #0
	adds r2, #0x7c
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	adds r4, r7, #0
	adds r4, #0x7e
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bne _08071D6E
	adds r1, r5, #0
	subs r1, #0x12
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_8071DDC
_08071D6E:
	movs r6, #0
	ldrsh r0, [r4, r6]
	cmp r0, #0xd
	bne _08071D8C
	mov r0, r8
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	mov r0, sb
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _08071DD0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08071DD4 @ =sub_80719B8
	str r0, [r1, #8]
_08071D8C:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
	mov r0, sb
	bl DisplaySprite
	mov r6, sb
	ldr r0, [r6, #0x10]
	ldr r1, _08071DD8 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #0x10]
_08071DBC:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071DCC: .4byte sub_803FF84
_08071DD0: .4byte gCurTask
_08071DD4: .4byte sub_80719B8
_08071DD8: .4byte 0xFFFFFBFF

	thumb_func_start sub_8071DDC
sub_8071DDC: @ 0x08071DDC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08071E70 @ =sub_8071E8C
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #2
	movs r1, #0
	mov r8, r1
	movs r1, #0xfb
	lsls r1, r1, #8
	strh r1, [r0, #0x34]
	strh r6, [r0, #0x32]
	strh r2, [r0, #0x30]
	subs r4, #8
	strh r4, [r0, #0x16]
	strh r5, [r0, #0x18]
	ldr r1, _08071E74 @ =0x06012580
	str r1, [r0, #4]
	movs r1, #0x40
	strh r1, [r0, #0x1a]
	strh r6, [r0, #8]
	ldr r1, _08071E78 @ =0x000001AB
	strh r1, [r0, #0xa]
	ldr r2, _08071E7C @ =0x03000020
	adds r1, r3, r2
	mov r2, r8
	strb r2, [r1]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0x1c]
	ldr r1, _08071E80 @ =0x03000021
	adds r2, r3, r1
	movs r1, #0xff
	strb r1, [r2]
	ldr r1, _08071E84 @ =0x03000022
	adds r2, r3, r1
	movs r1, #0x10
	strb r1, [r2]
	ldr r2, _08071E88 @ =0x03000025
	adds r3, r3, r2
	mov r1, r8
	strb r1, [r3]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x28]
	str r6, [r0, #0x10]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08071E70: .4byte sub_8071E8C
_08071E74: .4byte 0x06012580
_08071E78: .4byte 0x000001AB
_08071E7C: .4byte 0x03000020
_08071E80: .4byte 0x03000021
_08071E84: .4byte 0x03000022
_08071E88: .4byte 0x03000025

	thumb_func_start sub_8071E8C
sub_8071E8C: @ 0x08071E8C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08071F08 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r5, r4, #0
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08071EA6
	adds r0, #3
_08071EA6:
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x34]
	adds r0, #0x28
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	ldrh r6, [r4, #0x16]
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldrh r7, [r4, #0x18]
	movs r0, #0x18
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	bl sub_800B798
	ldr r3, _08071F0C @ =gCamera
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
	bhi _08071EFC
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _08071EFC
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08071F10
_08071EFC:
	ldr r0, _08071F08 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08071F20
	.align 2, 0
_08071F08: .4byte gCurTask
_08071F0C: .4byte gCamera
_08071F10:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	strh r6, [r5, #0x16]
	strh r7, [r5, #0x18]
_08071F20:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8071F28
sub_8071F28: @ 0x08071F28
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x4c]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Yukimaru_Wall
CreateEntity_Yukimaru_Wall: @ 0x08071F44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #0
	beq _08071F88
	ldr r0, _08071F80 @ =sub_8072188
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08071F84 @ =sub_8072AB4
	str r1, [sp]
	movs r1, #0x84
	movs r3, #0
	bl TaskCreate
	b _08071F9A
	.align 2, 0
_08071F80: .4byte sub_8072188
_08071F84: .4byte sub_8072AB4
_08071F88:
	ldr r0, _08072138 @ =sub_8072578
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0807213C @ =sub_8072AB4
	str r1, [sp]
	movs r1, #0x84
	movs r3, #0
	bl TaskCreate
_08071F9A:
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	ldr r0, _08072140 @ =0x0300000C
	adds r4, r5, r0
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	movs r6, #0
	mov r2, sb
	mov r1, r8
	strh r2, [r1, #4]
	mov r3, sl
	strh r3, [r1, #6]
	str r7, [r1]
	ldrb r0, [r7]
	strb r0, [r1, #8]
	mov r0, sp
	ldrb r0, [r0, #4]
	strb r0, [r1, #9]
	ldr r1, _08072144 @ =0x03000078
	adds r1, r5, r1
	str r1, [sp, #8]
	movs r2, #0xa0
	rsbs r2, r2, #0
	strh r2, [r1]
	ldr r3, _08072148 @ =0x0300007A
	adds r3, r5, r3
	str r3, [sp, #0xc]
	strh r6, [r3]
	ldr r0, _0807214C @ =0x0300007C
	adds r0, r5, r0
	str r0, [sp, #0x10]
	strh r6, [r0]
	ldr r1, _08072150 @ =0x0300007E
	adds r1, r5, r1
	str r1, [sp, #0x14]
	strh r6, [r1]
	ldr r2, _08072154 @ =0x03000080
	adds r0, r5, r2
	strh r6, [r0]
	ldrb r1, [r7, #3]
	ldr r3, _08072158 @ =0x03000082
	adds r0, r5, r3
	strb r1, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r1, sb
	lsls r1, r1, #8
	str r1, [sp, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, sl
	lsls r2, r2, #8
	str r2, [sp, #0x1c]
	adds r0, r0, r2
	strh r0, [r4, #0x18]
	movs r3, #2
	rsbs r3, r3, #0
	strb r3, [r7]
	strh r6, [r4, #0x1a]
	strh r6, [r4, #8]
	ldr r0, _0807215C @ =0x000001A7
	strh r0, [r4, #0xa]
	ldr r1, _08072160 @ =0x0300002C
	adds r0, r5, r1
	movs r2, #1
	strb r2, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r3, _08072164 @ =0x0300002D
	adds r1, r5, r3
	movs r0, #1
	rsbs r0, r0, #0
	add r2, sp, #0x20
	strb r0, [r2]
	movs r0, #0xff
	strb r0, [r1]
	adds r3, #1
	adds r0, r5, r3
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, _08072168 @ =0x03000031
	adds r0, r5, r2
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #1
	beq _08072074
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
_08072074:
	ldr r2, _0807216C @ =0x03000048
	adds r4, r5, r2
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	ldr r3, _08072170 @ =0x03000040
	adds r0, r5, r3
	mov r1, sb
	strh r1, [r0]
	ldr r2, _08072174 @ =0x03000042
	adds r0, r5, r2
	mov r3, sl
	strh r3, [r0]
	mov r0, r8
	str r7, [r0, #0x3c]
	ldrb r1, [r7]
	adds r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	ldr r3, _08072178 @ =0x03000045
	adds r0, r5, r3
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r0]
	movs r3, #0xa0
	rsbs r3, r3, #0
	ldr r2, [sp, #8]
	strh r3, [r2]
	ldr r0, [sp, #0xc]
	strh r6, [r0]
	ldr r1, [sp, #0x10]
	strh r6, [r1]
	ldr r2, [sp, #0x14]
	strh r6, [r2]
	ldrb r0, [r7]
	lsls r0, r0, #3
	ldr r3, [sp, #0x18]
	adds r0, r0, r3
	strh r0, [r4, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	strb r2, [r7]
	strh r6, [r4, #0x1a]
	strh r6, [r4, #8]
	ldr r3, _0807215C @ =0x000001A7
	strh r3, [r4, #0xa]
	ldr r1, _0807217C @ =0x03000068
	adds r0, r5, r1
	movs r2, #1
	strb r2, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r3, _08072180 @ =0x03000069
	adds r1, r5, r3
	ldrb r0, [r1]
	add r2, sp, #0x20
	ldrb r2, [r2]
	orrs r0, r2
	strb r0, [r1]
	adds r3, #1
	adds r0, r5, r3
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, _08072184 @ =0x0300006D
	adds r0, r5, r2
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #1
	beq _08072122
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r4, #0x10]
_08072122:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072138: .4byte sub_8072578
_0807213C: .4byte sub_8072AB4
_08072140: .4byte 0x0300000C
_08072144: .4byte 0x03000078
_08072148: .4byte 0x0300007A
_0807214C: .4byte 0x0300007C
_08072150: .4byte 0x0300007E
_08072154: .4byte 0x03000080
_08072158: .4byte 0x03000082
_0807215C: .4byte 0x000001A7
_08072160: .4byte 0x0300002C
_08072164: .4byte 0x0300002D
_08072168: .4byte 0x03000031
_0807216C: .4byte 0x03000048
_08072170: .4byte 0x03000040
_08072174: .4byte 0x03000042
_08072178: .4byte 0x03000045
_0807217C: .4byte 0x03000068
_08072180: .4byte 0x03000069
_08072184: .4byte 0x0300006D

	thumb_func_start sub_8072188
sub_8072188: @ 0x08072188
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0807227C @ =gCurTask
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldr r2, _08072280 @ =0x0300000C
	adds r7, r3, r2
	ldr r4, _08072284 @ =0x03000048
	adds r4, r4, r3
	mov r8, r4
	ldr r0, [r5]
	mov sb, r0
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r4, sb
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r0, _08072288 @ =0x0300007C
	adds r1, r3, r0
	ldr r2, _0807228C @ =0x03000078
	adds r0, r3, r2
	ldrh r0, [r0]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	add r0, ip
	lsls r0, r0, #0x10
	ldr r1, _08072290 @ =0x0300007A
	adds r3, r3, r1
	ldrh r1, [r3]
	adds r1, r6, r1
	lsls r1, r1, #0x10
	ldr r3, _08072294 @ =gCamera
	lsrs r2, r1, #0x10
	mov sl, r2
	asrs r1, r1, #0x10
	ldrh r4, [r3]
	subs r4, r1, r4
	str r4, [sp, #0xc]
	strh r4, [r7, #0x16]
	lsrs r4, r0, #0x10
	str r4, [sp, #8]
	asrs r0, r0, #0x10
	ldrh r2, [r3, #2]
	subs r2, r0, r2
	str r2, [sp, #0xc]
	strh r2, [r7, #0x18]
	ldrh r2, [r3]
	subs r1, r1, r2
	mov r2, r8
	strh r1, [r2, #0x16]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #0x18]
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r4, _0807227C @ =gCurTask
	cmp r6, r0
	bgt _0807224A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	blt _0807224A
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _0807224A
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _08072298
_0807224A:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807226E
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0807226E
	movs r3, #0x18
	ldrsh r1, [r7, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08072298
_0807226E:
	ldrb r0, [r5, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _0807239E
	.align 2, 0
_0807227C: .4byte gCurTask
_08072280: .4byte 0x0300000C
_08072284: .4byte 0x03000048
_08072288: .4byte 0x0300007C
_0807228C: .4byte 0x03000078
_08072290: .4byte 0x0300007A
_08072294: .4byte gCamera
_08072298:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _080722C0
	ldr r0, _080722BC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807239E
	.align 2, 0
_080722BC: .4byte gCurTask
_080722C0:
	str r0, [sp]
	ldr r0, _08072300 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	adds r2, r5, #0
	adds r2, #0x7a
	ldrh r1, [r2]
	adds r1, r1, r0
	movs r0, #0
	mov ip, r0
	strh r1, [r2]
	adds r0, r5, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x18
	mov r3, sb
	movs r1, #4
	ldrsb r1, [r3, r1]
	lsls r0, r1, #3
	cmp r2, r0
	bgt _08072304
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0xa0
	strh r0, [r1]
	b _08072370
	.align 2, 0
_08072300: .4byte sub_803FE44
_08072304:
	mov r3, sb
	ldrb r0, [r3, #6]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r2, r0
	blt _08072320
	adds r1, r5, #0
	adds r1, #0x78
	ldr r0, _0807231C @ =0x0000FF60
	strh r0, [r1]
	b _08072370
	.align 2, 0
_0807231C: .4byte 0x0000FF60
_08072320:
	adds r2, r5, #0
	adds r2, #0x80
	ldrh r0, [r2]
	movs r1, #0
	ldrsh r3, [r2, r1]
	cmp r3, #0
	beq _08072334
	subs r0, #1
	strh r0, [r2]
	b _08072370
_08072334:
	ldr r1, _080723B0 @ =gUnknown_03005A20
	ldr r0, [r1]
	asrs r0, r0, #8
	cmp r0, r6
	bgt _08072370
	ldr r0, [r1, #4]
	asrs r1, r0, #8
	adds r0, r4, #0
	adds r0, #8
	cmp r1, r0
	bgt _08072370
	subs r0, #0x10
	cmp r0, r1
	bgt _08072370
	movs r0, #0x3c
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x7e
	strh r3, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	mov r2, ip
	strb r2, [r0]
	mov r0, r8
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _080723B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080723B8 @ =sub_80723C0
	str r0, [r1, #8]
_08072370:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #0x10]
	mov r0, r8
	bl DisplaySprite
	mov r4, r8
	ldr r0, [r4, #0x10]
	ldr r1, _080723BC @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
_0807239E:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080723B0: .4byte gUnknown_03005A20
_080723B4: .4byte gCurTask
_080723B8: .4byte sub_80723C0
_080723BC: .4byte 0xFFFFF7FF

	thumb_func_start sub_80723C0
sub_80723C0: @ 0x080723C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, _080724AC @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sb, r0
	ldr r0, _080724B0 @ =0x0300000C
	adds r5, r3, r0
	ldr r1, _080724B4 @ =0x03000048
	adds r6, r3, r1
	mov r2, sb
	ldr r2, [r2]
	mov r8, r2
	mov r7, sb
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r1, _080724B8 @ =0x0300007A
	adds r0, r3, r1
	ldrh r2, [r0]
	ldr r7, [sp, #4]
	adds r2, r7, r2
	lsls r2, r2, #0x10
	ldr r0, _080724BC @ =0x0300007C
	adds r3, r3, r0
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	add r0, ip
	lsls r0, r0, #0x10
	ldr r3, _080724C0 @ =gCamera
	ldrh r1, [r3]
	lsrs r7, r2, #0x10
	str r7, [sp]
	asrs r2, r2, #0x10
	subs r1, r2, r1
	strh r1, [r5, #0x16]
	ldrh r1, [r3, #2]
	lsrs r7, r0, #0x10
	mov sl, r7
	asrs r0, r0, #0x10
	subs r1, r0, r1
	strh r1, [r5, #0x18]
	ldrh r1, [r3]
	subs r2, r2, r1
	strh r2, [r6, #0x16]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r6, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r7, [sp, #4]
	cmp r7, r0
	bgt _08072478
	adds r0, r1, #0
	subs r0, #0x80
	cmp r7, r0
	blt _08072478
	movs r0, #2
	ldrsh r1, [r3, r0]
	subs r2, #0x50
	adds r0, r1, r2
	cmp ip, r0
	bgt _08072478
	adds r0, r1, #0
	subs r0, #0x80
	cmp ip, r0
	bge _080724C4
_08072478:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807249C
	movs r7, #0x18
	ldrsh r0, [r5, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _0807249C
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080724C4
_0807249C:
	mov r1, sb
	ldrb r0, [r1, #8]
	mov r2, r8
	strb r0, [r2]
	ldr r0, [r4]
	bl TaskDestroy
	b _0807255A
	.align 2, 0
_080724AC: .4byte gCurTask
_080724B0: .4byte 0x0300000C
_080724B4: .4byte 0x03000048
_080724B8: .4byte 0x0300007A
_080724BC: .4byte 0x0300007C
_080724C0: .4byte gCamera
_080724C4:
	ldr r7, [sp]
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_800B4F8
	cmp r0, #0
	beq _080724F0
	ldr r0, _080724EC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807255A
	.align 2, 0
_080724EC: .4byte gCurTask
_080724F0:
	mov r4, sb
	adds r4, #0x7e
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bne _08072512
	adds r0, r7, #0
	subs r0, #0xa
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	movs r2, #0
	bl sub_8072964
_08072512:
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0x12
	bne _08072530
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _0807256C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08072570 @ =sub_8072188
	str r0, [r1, #8]
_08072530:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r6, #0x10]
	ldr r1, _08072574 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r6, #0x10]
_0807255A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807256C: .4byte gCurTask
_08072570: .4byte sub_8072188
_08072574: .4byte 0xFFFFF7FF

	thumb_func_start sub_8072578
sub_8072578: @ 0x08072578
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0807266C @ =gCurTask
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldr r2, _08072670 @ =0x0300000C
	adds r7, r3, r2
	ldr r4, _08072674 @ =0x03000048
	adds r4, r4, r3
	mov r8, r4
	ldr r0, [r5]
	mov sb, r0
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r4, sb
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r0, _08072678 @ =0x0300007C
	adds r1, r3, r0
	ldr r2, _0807267C @ =0x03000078
	adds r0, r3, r2
	ldrh r0, [r0]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	add r0, ip
	lsls r0, r0, #0x10
	ldr r1, _08072680 @ =0x0300007A
	adds r3, r3, r1
	ldrh r1, [r3]
	adds r1, r6, r1
	lsls r1, r1, #0x10
	ldr r3, _08072684 @ =gCamera
	lsrs r2, r1, #0x10
	mov sl, r2
	asrs r1, r1, #0x10
	ldrh r4, [r3]
	subs r4, r1, r4
	str r4, [sp, #0xc]
	strh r4, [r7, #0x16]
	lsrs r4, r0, #0x10
	str r4, [sp, #8]
	asrs r0, r0, #0x10
	ldrh r2, [r3, #2]
	subs r2, r0, r2
	str r2, [sp, #0xc]
	strh r2, [r7, #0x18]
	ldrh r2, [r3]
	subs r1, r1, r2
	mov r2, r8
	strh r1, [r2, #0x16]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #0x18]
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r4, _0807266C @ =gCurTask
	cmp r6, r0
	bgt _0807263A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	blt _0807263A
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _0807263A
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _08072688
_0807263A:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807265E
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0807265E
	movs r3, #0x18
	ldrsh r1, [r7, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08072688
_0807265E:
	ldrb r0, [r5, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08072792
	.align 2, 0
_0807266C: .4byte gCurTask
_08072670: .4byte 0x0300000C
_08072674: .4byte 0x03000048
_08072678: .4byte 0x0300007C
_0807267C: .4byte 0x03000078
_08072680: .4byte 0x0300007A
_08072684: .4byte gCamera
_08072688:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _080726B0
	ldr r0, _080726AC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08072792
	.align 2, 0
_080726AC: .4byte gCurTask
_080726B0:
	movs r3, #8
	rsbs r3, r3, #0
	str r0, [sp]
	ldr r0, _080726F4 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_8040198
	adds r2, r5, #0
	adds r2, #0x7a
	ldrh r1, [r2]
	subs r1, r1, r0
	movs r0, #0
	mov ip, r0
	strh r1, [r2]
	adds r0, r5, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x18
	mov r3, sb
	movs r1, #4
	ldrsb r1, [r3, r1]
	lsls r0, r1, #3
	cmp r2, r0
	bgt _080726F8
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0xa0
	strh r0, [r1]
	b _08072764
	.align 2, 0
_080726F4: .4byte sub_803FE44
_080726F8:
	mov r3, sb
	ldrb r0, [r3, #6]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r2, r0
	blt _08072714
	adds r1, r5, #0
	adds r1, #0x78
	ldr r0, _08072710 @ =0x0000FF60
	strh r0, [r1]
	b _08072764
	.align 2, 0
_08072710: .4byte 0x0000FF60
_08072714:
	adds r2, r5, #0
	adds r2, #0x80
	ldrh r0, [r2]
	movs r1, #0
	ldrsh r3, [r2, r1]
	cmp r3, #0
	beq _08072728
	subs r0, #1
	strh r0, [r2]
	b _08072764
_08072728:
	ldr r1, _080727A4 @ =gUnknown_03005A20
	ldr r0, [r1]
	asrs r0, r0, #8
	cmp r0, r6
	blt _08072764
	ldr r0, [r1, #4]
	asrs r1, r0, #8
	adds r0, r4, #0
	adds r0, #8
	cmp r1, r0
	bgt _08072764
	subs r0, #0x10
	cmp r0, r1
	bgt _08072764
	movs r0, #0x3c
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x7e
	strh r3, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	mov r2, ip
	strb r2, [r0]
	mov r0, r8
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _080727A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080727AC @ =sub_80727B4
	str r0, [r1, #8]
_08072764:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #0x10]
	mov r0, r8
	bl DisplaySprite
	mov r4, r8
	ldr r0, [r4, #0x10]
	ldr r1, _080727B0 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
_08072792:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080727A4: .4byte gUnknown_03005A20
_080727A8: .4byte gCurTask
_080727AC: .4byte sub_80727B4
_080727B0: .4byte 0xFFFFF7FF

	thumb_func_start sub_80727B4
sub_80727B4: @ 0x080727B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080728BC @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sl, r0
	ldr r0, _080728C0 @ =0x0300000C
	adds r5, r3, r0
	ldr r1, _080728C4 @ =0x03000048
	adds r6, r3, r1
	mov r2, sl
	ldr r2, [r2]
	str r2, [sp]
	mov r4, sl
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [sp]
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r8, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov sb, r1
	ldr r1, _080728C8 @ =0x0300007A
	adds r0, r3, r1
	ldrh r2, [r0]
	add r2, r8
	lsls r2, r2, #0x10
	ldr r4, _080728CC @ =0x0300007C
	adds r0, r3, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	add r0, sb
	lsls r0, r0, #0x10
	ldr r7, _080728D0 @ =gCamera
	ldrh r1, [r7]
	lsrs r4, r2, #0x10
	str r4, [sp, #8]
	asrs r4, r2, #0x10
	subs r1, r4, r1
	strh r1, [r5, #0x16]
	ldrh r1, [r7, #2]
	lsrs r2, r0, #0x10
	str r2, [sp, #4]
	asrs r2, r0, #0x10
	subs r1, r2, r1
	strh r1, [r5, #0x18]
	ldrh r0, [r7]
	subs r0, r4, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r7, #2]
	subs r0, r2, r0
	strh r0, [r6, #0x18]
	ldr r0, _080728D4 @ =0x0300007E
	adds r3, r3, r0
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bne _08072860
	adds r0, r4, #0
	adds r0, #0xa
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r2, #0
	movs r2, #1
	bl sub_8072964
_08072860:
	movs r2, #0
	ldrsh r1, [r7, r2]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r8, r0
	bgt _0807288C
	adds r0, r1, #0
	subs r0, #0x80
	cmp r8, r0
	blt _0807288C
	movs r0, #2
	ldrsh r1, [r7, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp sb, r0
	bgt _0807288C
	adds r0, r1, #0
	subs r0, #0x80
	cmp sb, r0
	bge _080728D8
_0807288C:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080728B0
	movs r4, #0x18
	ldrsh r0, [r5, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _080728B0
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080728D8
_080728B0:
	mov r1, sl
	ldrb r0, [r1, #8]
	ldr r2, [sp]
	strb r0, [r2]
	b _080728EE
	.align 2, 0
_080728BC: .4byte gCurTask
_080728C0: .4byte 0x0300000C
_080728C4: .4byte 0x03000048
_080728C8: .4byte 0x0300007A
_080728CC: .4byte 0x0300007C
_080728D0: .4byte gCamera
_080728D4: .4byte 0x0300007E
_080728D8:
	ldr r4, [sp, #8]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #4]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _080728FC
_080728EE:
	ldr r0, _080728F8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08072948
	.align 2, 0
_080728F8: .4byte gCurTask
_080728FC:
	mov r0, sl
	adds r0, #0x7e
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x12
	bne _0807291E
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _08072958 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807295C @ =sub_8072578
	str r0, [r1, #8]
_0807291E:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r6, #0x10]
	ldr r1, _08072960 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r6, #0x10]
_08072948:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072958: .4byte gCurTask
_0807295C: .4byte sub_8072578
_08072960: .4byte 0xFFFFF7FF

	thumb_func_start sub_8072964
sub_8072964: @ 0x08072964
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080729A8 @ =sub_8072A1C
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r5, #0
	str r5, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	mov r6, ip
	strh r5, [r6, #0x34]
	cmp r4, #0
	beq _080729B0
	ldr r0, _080729AC @ =0x0000FFFD
	strh r0, [r6, #0x32]
	b _080729B6
	.align 2, 0
_080729A8: .4byte sub_8072A1C
_080729AC: .4byte 0x0000FFFD
_080729B0:
	movs r0, #3
	mov r1, ip
	strh r0, [r1, #0x32]
_080729B6:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	movs r3, #0
	movs r2, #0
	strh r1, [r6, #0x30]
	subs r0, #8
	mov r1, ip
	strh r0, [r1, #0x16]
	mov r0, r8
	strh r0, [r1, #0x18]
	ldr r0, _08072A14 @ =0x06012580
	str r0, [r1, #4]
	movs r0, #0x40
	strh r0, [r1, #0x1a]
	strh r2, [r1, #8]
	ldr r0, _08072A18 @ =0x000001AB
	strh r0, [r1, #0xa]
	mov r0, ip
	adds r0, #0x20
	strb r3, [r0]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x1c]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r1, ip
	str r0, [r1, #0x28]
	str r2, [r1, #0x10]
	mov r0, ip
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072A14: .4byte 0x06012580
_08072A18: .4byte 0x000001AB

	thumb_func_start sub_8072A1C
sub_8072A1C: @ 0x08072A1C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08072A94 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r5, r4, #0
	ldrh r0, [r4, #0x16]
	ldrh r1, [r4, #0x32]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x34]
	adds r0, #0x17
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x16]
	adds r7, r0, #0
	ldrh r0, [r4, #0x18]
	adds r6, r0, #0
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_800B798
	ldr r3, _08072A98 @ =gCamera
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
	bhi _08072A8A
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _08072A8A
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08072A9C
_08072A8A:
	ldr r0, _08072A94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08072AAC
	.align 2, 0
_08072A94: .4byte gCurTask
_08072A98: .4byte gCamera
_08072A9C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	strh r7, [r5, #0x16]
	strh r6, [r5, #0x18]
_08072AAC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8072AB4
sub_8072AB4: @ 0x08072AB4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x4c]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

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
	ldr r6, _08072D40 @ =gUnknown_03005A20
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
	bl sub_800338C
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
_08072D40: .4byte gUnknown_03005A20
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
	ldr r2, _08072E40 @ =gUnknown_03005A20
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
	bl sub_800B4F8
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
_08072E40: .4byte gUnknown_03005A20
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
	bl sub_800B4F8
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

	thumb_func_start CreateEntity_Kuraa
CreateEntity_Kuraa: @ 0x080734E4
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
	ldr r0, _080735DC @ =sub_8073608
	ldr r1, _080735E0 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x48
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldr r2, _080735E4 @ =0x0300000C
	adds r5, r4, r2
	movs r7, #0
	movs r3, #0
	strh r6, [r1, #4]
	mov r0, r8
	strh r0, [r1, #6]
	mov r2, sl
	str r2, [r1]
	ldrb r0, [r2]
	strb r0, [r1, #8]
	mov r0, sb
	strb r0, [r1, #9]
	ldr r0, _080735E8 @ =0x03000040
	adds r2, r4, r0
	ldr r0, _080735EC @ =0x0000FFC0
	strh r0, [r2]
	str r3, [r1, #0x3c]
	ldr r1, _080735F0 @ =0x03000044
	adds r0, r4, r1
	strh r3, [r0]
	ldr r2, _080735F4 @ =0x03000042
	adds r0, r4, r2
	strh r3, [r0]
	adds r1, #2
	adds r0, r4, r1
	strh r3, [r0]
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x16]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov r8, r1
	add r0, r8
	strh r0, [r5, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	mov r1, sl
	strb r0, [r1]
	movs r0, #0xf
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r3, [sp, #4]
	strh r3, [r5, #8]
	ldr r0, _080735F8 @ =0x000001A9
	strh r0, [r5, #0xa]
	ldr r2, _080735FC @ =0x0300002C
	adds r0, r4, r2
	strb r7, [r0]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r0, _08073600 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r2, #2
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08073604 @ =0x03000031
	adds r4, r4, r0
	strb r7, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080735DC: .4byte sub_8073608
_080735E0: .4byte TaskDestructor_8009670
_080735E4: .4byte 0x0300000C
_080735E8: .4byte 0x03000040
_080735EC: .4byte 0x0000FFC0
_080735F0: .4byte 0x03000044
_080735F4: .4byte 0x03000042
_080735F8: .4byte 0x000001A9
_080735FC: .4byte 0x0300002C
_08073600: .4byte 0x0300002D
_08073604: .4byte 0x03000031

	thumb_func_start sub_8073608
sub_8073608: @ 0x08073608
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080736D0 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r1, _080736D4 @ =0x0300000C
	adds r5, r3, r1
	ldr r4, [r6]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsrs r7, r1, #0x10
	mov sb, r7
	asrs r1, r1, #0x10
	mov sl, r1
	ldr r0, _080736D8 @ =0x03000040
	adds r3, r3, r0
	movs r7, #0
	ldrsh r1, [r3, r7]
	ldr r0, [r6, #0x3c]
	adds r0, r0, r1
	str r0, [r6, #0x3c]
	asrs r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #0x10
	ldr r3, _080736DC @ =gCamera
	ldrh r1, [r3]
	lsrs r7, r0, #0x10
	mov ip, r7
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	mov r1, sl
	subs r0, r1, r0
	strh r0, [r5, #0x18]
	movs r7, #0
	ldrsh r1, [r3, r7]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r2, r0
	bgt _0807369E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0807369E
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp sl, r0
	bgt _0807369E
	adds r0, r1, #0
	subs r0, #0x80
	cmp sl, r0
	bge _080736E0
_0807369E:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080736C2
	movs r3, #0x18
	ldrsh r0, [r5, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _080736C2
	movs r7, #0x18
	ldrsh r1, [r5, r7]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080736E0
_080736C2:
	ldrb r0, [r6, #8]
	strb r0, [r4]
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
	b _0807378E
	.align 2, 0
_080736D0: .4byte gCurTask
_080736D4: .4byte 0x0300000C
_080736D8: .4byte 0x03000040
_080736DC: .4byte gCamera
_080736E0:
	mov r2, ip
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _08073704
	ldr r0, _08073700 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807378E
	.align 2, 0
_08073700: .4byte gCurTask
_08073704:
	ldr r0, [r6, #0x3c]
	asrs r2, r0, #8
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #3
	cmp r2, r0
	bgt _0807371C
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x40
	strh r0, [r1]
	b _0807376A
_0807371C:
	ldrb r0, [r4, #5]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r2, r0
	blt _08073734
	adds r1, r6, #0
	adds r1, #0x40
	ldr r0, _08073730 @ =0x0000FFC0
	strh r0, [r1]
	b _0807376A
	.align 2, 0
_08073730: .4byte 0x0000FFC0
_08073734:
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r1]
	movs r7, #0
	ldrsh r2, [r1, r7]
	cmp r2, #0
	beq _08073748
	subs r0, #1
	strh r0, [r1]
	b _0807376A
_08073748:
	adds r0, r6, #0
	adds r0, #0x42
	strh r2, [r0]
	movs r0, #0xfa
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0807379C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080737A0 @ =sub_80737A8
	str r0, [r1, #8]
_0807376A:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	ldr r1, _080737A4 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807378E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807379C: .4byte gCurTask
_080737A0: .4byte sub_80737A8
_080737A4: .4byte 0xFFFFFBFF

	thumb_func_start sub_80737A8
sub_80737A8: @ 0x080737A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08073868 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _0807386C @ =0x0300000C
	adds r4, r1, r0
	mov r1, r8
	ldr r1, [r1]
	mov ip, r1
	mov r5, r8
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsrs r7, r1, #0x10
	mov sl, r7
	asrs r6, r1, #0x10
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #0x10
	ldr r5, _08073870 @ =gCamera
	ldrh r1, [r5]
	lsrs r7, r0, #0x10
	mov sb, r7
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #2]
	subs r0, r6, r0
	strh r0, [r4, #0x18]
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r2, r0
	bgt _08073834
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08073834
	movs r0, #2
	ldrsh r1, [r5, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	bgt _08073834
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	bge _08073874
_08073834:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08073858
	movs r5, #0x18
	ldrsh r0, [r4, r5]
	adds r0, #0x80
	cmp r0, #0
	blt _08073858
	movs r7, #0x18
	ldrsh r1, [r4, r7]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08073874
_08073858:
	mov r1, r8
	ldrb r0, [r1, #8]
	mov r2, ip
	strb r0, [r2]
	ldr r0, [r3]
	bl TaskDestroy
	b _08073974
	.align 2, 0
_08073868: .4byte gCurTask
_0807386C: .4byte 0x0300000C
_08073870: .4byte gCamera
_08073874:
	ldr r1, [r4, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08073928
	mov r5, sb
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2c
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r5, r0, r7
	ldr r2, _08073984 @ =gUnknown_03005A20
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _08073988 @ =gUnknown_03005BE0
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov ip, r0
	add r1, ip
	mov sb, r2
	adds r6, r3, #0
	cmp r5, r1
	bgt _080738C2
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r5, r0
	cmp r0, r1
	bge _080738D6
	cmp r5, r1
	blt _08073928
_080738C2:
	adds r0, r6, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r7, ip
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r5
	blt _08073928
_080738D6:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r3, r4, #0
	adds r3, #0x2d
	movs r5, #0
	ldrsb r5, [r3, r5]
	adds r1, r0, r5
	mov r2, sb
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r3, r6, #0
	adds r3, #0x39
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r3, r0, r2
	cmp r1, r3
	bgt _08073910
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r3
	bge _08073922
	cmp r1, r3
	blt _08073928
_08073910:
	adds r0, r6, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r1
	blt _08073928
_08073922:
	mov r0, sb
	bl sub_800C558
_08073928:
	mov r1, r8
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x77
	ble _08073950
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0807398C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08073990 @ =sub_8073608
	str r0, [r1, #8]
_08073950:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	ldr r1, _08073994 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
_08073974:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073984: .4byte gUnknown_03005A20
_08073988: .4byte gUnknown_03005BE0
_0807398C: .4byte gCurTask
_08073990: .4byte sub_8073608
_08073994: .4byte 0xFFFFFBFF

@ NOTE: Not the same Pen enemy as SA2 has
	thumb_func_start CreateEntity_PenMk1
CreateEntity_PenMk1: @ 0x08073998
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	ldr r0, _08073A90 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #3
	bne _080739CC
	ldr r0, _08073A94 @ =gUnknown_03005160
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	bne _08073A80
_080739CC:
	ldr r0, _08073A98 @ =Task_Enemy020
	ldr r1, _08073A9C @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x4c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _08073AA0 @ =0x0300000C
	adds r5, r4, r1
	movs r6, #0
	mov r2, sb
	strh r2, [r0, #4]
	mov r1, r8
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	mov r2, sl
	strb r2, [r0, #9]
	ldr r1, _08073AA4 @ =0x03000044
	adds r2, r4, r1
	ldr r1, _08073AA8 @ =0x0000FF60
	strh r1, [r2]
	str r6, [r0, #0x3c]
	str r6, [r0, #0x40]
	ldr r2, _08073AAC @ =0x03000046
	adds r0, r4, r2
	strh r6, [r0]
	ldr r1, _08073AB0 @ =0x03000048
	adds r0, r4, r1
	strh r6, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #6
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	movs r0, #0xd5
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	ldr r2, _08073AB4 @ =0x0300002C
	adds r0, r4, r2
	movs r1, #0
	strb r1, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	adds r2, #1
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08073AB8 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08073ABC @ =0x03000031
	adds r4, r4, r1
	movs r2, #0
	strb r2, [r4]
	subs r0, #0x11
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_08073A80:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073A90: .4byte gCurrentLevel
_08073A94: .4byte gUnknown_03005160
_08073A98: .4byte Task_Enemy020
_08073A9C: .4byte TaskDestructor_8009670
_08073AA0: .4byte 0x0300000C
_08073AA4: .4byte 0x03000044
_08073AA8: .4byte 0x0000FF60
_08073AAC: .4byte 0x03000046
_08073AB0: .4byte 0x03000048
_08073AB4: .4byte 0x0300002C
_08073AB8: .4byte 0x0300002E
_08073ABC: .4byte 0x03000031

	thumb_func_start Task_Enemy020
Task_Enemy020: @ 0x08073AC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, _08073B94 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0xc
	adds r7, r3, r0
	ldr r1, [r5]
	mov r8, r1
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r2, _08073B98 @ =0x03000044
	adds r3, r3, r2
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r5, #0x3c]
	adds r0, r0, r1
	str r0, [r5, #0x3c]
	asrs r0, r0, #8
	adds r0, r6, r0
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x40]
	add r1, ip
	lsls r1, r1, #0x10
	ldr r3, _08073B9C @ =gCamera
	ldrh r2, [r3]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r0, r2
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r7, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	bgt _08073B62
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	blt _08073B62
	movs r6, #2
	ldrsh r2, [r3, r6]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _08073B62
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _08073BA0
_08073B62:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08073B86
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08073B86
	movs r6, #0x18
	ldrsh r1, [r7, r6]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08073BA0
_08073B86:
	ldrb r0, [r5, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08073CA8
	.align 2, 0
_08073B94: .4byte gCurTask
_08073B98: .4byte 0x03000044
_08073B9C: .4byte gCamera
_08073BA0:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	mov r6, sb
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _08073BC8
	ldr r0, _08073BC4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08073CA8
	.align 2, 0
_08073BC4: .4byte gCurTask
_08073BC8:
	str r0, [sp]
	ldr r0, _08073C28 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	ldr r1, _08073C2C @ =gUnknown_03005A20
	ldr r0, [r1]
	asrs r0, r0, #8
	subs r4, r0, r4
	adds r0, r4, #0
	muls r0, r4, r0
	adds r4, r0, #0
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	subs r1, r0, r6
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	ldr r0, [r5, #0x3c]
	asrs r3, r0, #8
	mov r6, r8
	movs r2, #3
	ldrsb r2, [r6, r2]
	adds r0, r2, #1
	lsls r0, r0, #3
	cmp r3, r0
	bgt _08073C30
	ldr r1, [r7, #0x10]
	mvns r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	cmp r0, #0
	beq _08073C9C
	orrs r1, r2
	str r1, [r7, #0x10]
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #0xa0
	strh r0, [r1]
	b _08073C9C
	.align 2, 0
_08073C28: .4byte sub_803FF84
_08073C2C: .4byte gUnknown_03005A20
_08073C30:
	mov r6, r8
	ldrb r0, [r6, #5]
	adds r0, r2, r0
	lsls r0, r0, #3
	cmp r3, r0
	blt _08073C60
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08073C9C
	ldr r0, _08073C58 @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r7, #0x10]
	adds r1, r5, #0
	adds r1, #0x44
	ldr r0, _08073C5C @ =0x0000FF60
	strh r0, [r1]
	b _08073C9C
	.align 2, 0
_08073C58: .4byte 0xFFFFFBFF
_08073C5C: .4byte 0x0000FF60
_08073C60:
	adds r3, r5, #0
	adds r3, #0x48
	ldrh r0, [r3]
	movs r6, #0
	ldrsh r2, [r3, r6]
	cmp r2, #0
	beq _08073C74
	subs r0, #1
	strh r0, [r3]
	b _08073C9C
_08073C74:
	adds r1, r4, r1
	ldr r0, _08073CB8 @ =0x000018FF
	cmp r1, r0
	bgt _08073C9C
	adds r0, r5, #0
	adds r0, #0x46
	strh r2, [r0]
	movs r0, #0x3c
	strh r0, [r3]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08073CBC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08073CC0 @ =sub_8073CC4
	str r0, [r1, #8]
_08073C9C:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08073CA8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073CB8: .4byte 0x000018FF
_08073CBC: .4byte gCurTask
_08073CC0: .4byte sub_8073CC4

	thumb_func_start sub_8073CC4
sub_8073CC4: @ 0x08073CC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _08073DB0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	adds r0, #0xc
	adds r0, r0, r4
	mov sb, r0
	ldr r1, [r7]
	mov sl, r1
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	ldr r1, [r7, #0x3c]
	asrs r1, r1, #8
	adds r1, r6, r1
	lsls r1, r1, #0x10
	ldr r0, [r7, #0x40]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	ldr r2, _08073DB4 @ =gCamera
	mov r8, r2
	ldrh r2, [r2]
	lsrs r3, r1, #0x10
	str r3, [sp, #0x10]
	asrs r1, r1, #0x10
	subs r2, r1, r2
	mov r3, sb
	strh r2, [r3, #0x16]
	mov r3, r8
	ldrh r2, [r3, #2]
	lsrs r3, r0, #0x10
	str r3, [sp, #0xc]
	asrs r0, r0, #0x10
	subs r2, r0, r2
	mov r3, sb
	strh r2, [r3, #0x18]
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _08073DB8 @ =sub_803FF84
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	ldr r3, _08073DBC @ =0x03000046
	adds r4, r4, r3
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r6, r0
	bgt _08073D80
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	blt _08073D80
	mov r0, r8
	movs r1, #2
	ldrsh r2, [r0, r1]
	subs r3, #0x50
	adds r0, r2, r3
	cmp r5, r0
	bgt _08073D80
	adds r0, r2, #0
	subs r0, #0x80
	cmp r5, r0
	bge _08073DC0
_08073D80:
	mov r1, sb
	ldrh r0, [r1, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08073DA8
	mov r2, sb
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _08073DA8
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08073DC0
_08073DA8:
	ldrb r0, [r7, #8]
	mov r1, sl
	strb r0, [r1]
	b _08073DE0
	.align 2, 0
_08073DB0: .4byte gCurTask
_08073DB4: .4byte gCamera
_08073DB8: .4byte sub_803FF84
_08073DBC: .4byte 0x03000046
_08073DC0:
	ldr r2, [sp, #0x10]
	lsls r5, r2, #0x10
	asrs r6, r5, #0x10
	ldr r3, [sp, #0xc]
	lsls r4, r3, #0x10
	asrs r0, r4, #0x10
	mov r8, r0
	mov r0, sb
	adds r1, r6, #0
	mov r2, r8
	bl sub_800B4F8
	mov sl, r5
	adds r5, r4, #0
	cmp r0, #0
	beq _08073DF0
_08073DE0:
	ldr r0, _08073DEC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08073E76
	.align 2, 0
_08073DEC: .4byte gCurTask
_08073DF0:
	adds r0, r7, #0
	adds r0, #0x46
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r0, #0
	cmp r1, #0xd
	bne _08073E2A
	mov r3, sb
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08073E1C
	adds r0, r6, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	movs r2, #1
	bl sub_8073E94
	b _08073E2A
_08073E1C:
	subs r0, r6, #6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	movs r2, #0
	bl sub_8073E94
_08073E2A:
	asrs r0, r5, #0x10
	mov r2, sl
	asrs r1, r2, #0x10
	add r3, sp, #8
	str r3, [sp]
	ldr r2, _08073E88 @ =sub_803FF84
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x10
	ble _08073E6A
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	mov r2, sb
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	mov r0, sb
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _08073E8C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08073E90 @ =Task_Enemy020
	str r0, [r1, #8]
_08073E6A:
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
_08073E76:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073E88: .4byte sub_803FF84
_08073E8C: .4byte gCurTask
_08073E90: .4byte Task_Enemy020

	thumb_func_start sub_8073E94
sub_8073E94: @ 0x08073E94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08073EDC @ =sub_8073F84
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r5, #0
	str r5, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	adds r7, r6, #0
	adds r1, #0x4a
	adds r0, r0, r1
	strb r5, [r0]
	cmp r4, #0
	beq _08073EE0
	movs r0, #0x80
	lsls r0, r0, #2
	b _08073EE4
	.align 2, 0
_08073EDC: .4byte sub_8073F84
_08073EE0:
	movs r0, #0xfe
	lsls r0, r0, #8
_08073EE4:
	strh r0, [r6, #0x30]
	movs r5, #0
	movs r4, #0
	strh r4, [r7, #0x32]
	str r4, [r7, #0x34]
	str r4, [r7, #0x38]
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [r7, #0x3c]
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0x44]
	adds r2, r7, #0
	adds r2, #0x4b
	strb r5, [r2]
	adds r3, r7, #0
	adds r3, #0x48
	movs r2, #0xc8
	lsls r2, r2, #2
	strh r2, [r3]
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _08073F7C @ =sub_803FF84
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	ldr r1, [r7, #0x38]
	adds r1, r1, r0
	str r1, [r7, #0x38]
	mov r0, sb
	strh r0, [r6, #0x16]
	mov r1, r8
	strh r1, [r6, #0x18]
	ldr r0, _08073F80 @ =0x060125A0
	str r0, [r6, #4]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r6, #0x1a]
	strh r4, [r6, #8]
	subs r0, #0x94
	strh r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	strb r5, [r0]
	strh r4, [r6, #0x14]
	strh r4, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	strb r5, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073F7C: .4byte sub_803FF84
_08073F80: .4byte 0x060125A0

	thumb_func_start sub_8073F84
sub_8073F84: @ 0x08073F84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _08074010 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	mov r8, r6
	ldr r1, _08074014 @ =0x0300004B
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08073FAE
	ldrh r0, [r6, #0x32]
	adds r0, #0x3c
	strh r0, [r6, #0x32]
_08073FAE:
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	ldr r1, [r6, #0x34]
	adds r1, r1, r0
	str r1, [r6, #0x34]
	movs r7, #0x32
	ldrsh r0, [r6, r7]
	ldr r2, [r6, #0x38]
	adds r2, r2, r0
	str r2, [r6, #0x38]
	ldr r0, [r6, #0x3c]
	asrs r1, r1, #8
	adds r0, r0, r1
	strh r0, [r6, #0x16]
	ldr r0, [r6, #0x44]
	asrs r2, r2, #8
	adds r0, r0, r2
	strh r0, [r6, #0x18]
	ldrh r0, [r6, #0x16]
	mov sl, r0
	ldrh r1, [r6, #0x18]
	str r1, [sp, #0xc]
	ldr r5, _08074018 @ =gSineTable
	ldr r2, _0807401C @ =0x0300004A
	adds r4, r3, r2
	ldrb r0, [r4]
	ldr r7, _08074020 @ =0x000003FF
	mov sb, r7
	lsls r0, r0, #3
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r7, #0x17
	adds r1, r7, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0807402C
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	adds r0, r1, r0
	ldr r1, _08074024 @ =0x0000FFFE
	cmp r0, r1
	ble _0807402C
	ldr r0, _08074028 @ =0x0000FFFF
	strh r0, [r6, #0x30]
	b _08074048
	.align 2, 0
_08074010: .4byte gCurTask
_08074014: .4byte 0x0300004B
_08074018: .4byte gSineTable
_0807401C: .4byte 0x0300004A
_08074020: .4byte 0x000003FF
_08074024: .4byte 0x0000FFFE
_08074028: .4byte 0x0000FFFF
_0807402C:
	ldrb r0, [r4]
	lsls r0, r0, #2
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r7, #0
	bl Div
	ldrh r1, [r6, #0x30]
	adds r1, r1, r0
	strh r1, [r6, #0x30]
_08074048:
	ldr r1, _080740AC @ =gSineTable
	mov r4, r8
	adds r4, #0x4a
	ldrb r0, [r4]
	lsls r0, r0, #3
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r0, r7
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xfa
	lsls r1, r1, #2
	bl Div
	mov r2, r8
	ldr r1, [r2, #0x38]
	adds r1, r1, r0
	str r1, [r2, #0x38]
	mov r7, r8
	adds r7, #0x48
	ldrh r0, [r7]
	str r4, [sp, #0x10]
	cmp r0, #0
	beq _0807407E
	subs r0, #1
	strh r0, [r7]
_0807407E:
	mov r0, sl
	lsls r5, r0, #0x10
	asrs r1, r5, #0x10
	mov sb, r1
	ldr r2, [sp, #0xc]
	lsls r4, r2, #0x10
	asrs r0, r4, #0x10
	mov sl, r0
	adds r0, r6, #0
	mov r2, sl
	bl sub_800B798
	cmp r0, #0
	bne _080740A0
	ldrh r0, [r7]
	cmp r0, #0
	bne _080740B0
_080740A0:
	mov r0, sb
	mov r1, sl
	bl sub_80741E8
	b _080741BC
	.align 2, 0
_080740AC: .4byte gSineTable
_080740B0:
	ldr r2, _080740F0 @ =gCamera
	ldrh r0, [r6, #0x16]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r6, #0x16]
	ldrh r0, [r6, #0x18]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r6, #0x18]
	add r1, sp, #8
	str r1, [sp]
	ldr r0, _080740F4 @ =sub_803FF84
	str r0, [sp, #4]
	mov r0, sl
	mov r1, sb
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	adds r3, r0, #0
	cmp r3, #0
	ble _080740F8
	mov r0, r8
	adds r0, #0x4b
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	bne _080740EC
	mov r7, r8
	strh r1, [r7, #0x32]
_080740EC:
	movs r0, #1
	b _0807411E
	.align 2, 0
_080740F0: .4byte gCamera
_080740F4: .4byte sub_803FF84
_080740F8:
	mov r0, r8
	adds r0, #0x4b
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _08074118
	movs r0, #0
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	mov r7, r8
	movs r0, #0x32
	ldrsh r1, [r7, r0]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bgt _080740A0
_08074118:
	cmp r3, #0
	bge _08074120
	movs r0, #0
_0807411E:
	strb r0, [r2]
_08074120:
	ldrb r2, [r2]
	cmp r2, #0
	bne _08074174
	cmp r3, #0
	bge _08074138
	lsls r1, r3, #8
	mov r7, r8
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	strh r2, [r7, #0x32]
	b _08074144
_08074138:
	lsls r0, r3, #6
	mov r1, r8
	ldrh r1, [r1, #0x32]
	adds r0, r0, r1
	mov r2, r8
	strh r0, [r2, #0x32]
_08074144:
	add r1, sp, #8
	ldr r7, [sp, #0x10]
	ldrb r0, [r7]
	ldrb r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0807415E
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0807415E:
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3f
	ble _08074170
_08074166:
	asrs r0, r5, #0x10
	asrs r1, r4, #0x10
	bl sub_80741E8
	b _080741BC
_08074170:
	ldr r0, [sp, #0x10]
	strb r1, [r0]
_08074174:
	adds r0, r3, #5
	cmp r0, #5
	bhi _08074198
	add r0, sp, #8
	ldrb r1, [r0]
	adds r0, r1, #0
	adds r0, #0x3f
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1c
	bls _08074166
	adds r0, r1, #0
	adds r0, #0x5d
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1c
	bhi _080741CC
	b _08074166
_08074198:
	ldrh r0, [r6, #0x16]
	adds r0, #0x3c
	lsls r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080741BC
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x3c
	cmp r0, #0
	blt _080741BC
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	ble _080741CC
_080741BC:
	ldr r0, _080741C8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080741D8
	.align 2, 0
_080741C8: .4byte gCurTask
_080741CC:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_080741D8:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80741E8
sub_80741E8: @ 0x080741E8
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldr r0, _080742C0 @ =sub_80742E0
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r2, #0
	mov sl, r2
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #0x30]
	ldr r0, _080742C4 @ =0x0000FC40
	strh r0, [r4, #0x32]
	str r6, [r4, #0x34]
	str r6, [r4, #0x38]
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #8
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #8
	str r2, [r4, #0x44]
	ldr r3, _080742C8 @ =0x0300004B
	adds r2, r5, r3
	mov r3, sl
	strb r3, [r2]
	str r6, [sp]
	ldr r2, _080742CC @ =sub_803FF84
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8040198
	ldr r1, [r4, #0x38]
	adds r1, r1, r0
	str r1, [r4, #0x38]
	mov r0, r8
	strh r0, [r4, #0x16]
	mov r1, sb
	strh r1, [r4, #0x18]
	ldr r0, _080742D0 @ =0x06012620
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	subs r0, #0x93
	strh r0, [r4, #0xa]
	ldr r2, _080742D4 @ =0x03000020
	adds r0, r5, r2
	mov r3, sl
	strb r3, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _080742D8 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r2, #2
	adds r1, r5, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r3, _080742DC @ =0x03000025
	adds r5, r5, r3
	mov r0, sl
	strb r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080742C0: .4byte sub_80742E0
_080742C4: .4byte 0x0000FC40
_080742C8: .4byte 0x0300004B
_080742CC: .4byte sub_803FF84
_080742D0: .4byte 0x06012620
_080742D4: .4byte 0x03000020
_080742D8: .4byte 0x03000021
_080742DC: .4byte 0x03000025

	thumb_func_start sub_80742E0
sub_80742E0: @ 0x080742E0
	push {r4, r5, lr}
	ldr r0, _08074338 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0x3c]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r0, #0
	ldr r0, [r4, #0x40]
	subs r0, r0, r2
	str r0, [r4, #0x40]
	asrs r1, r1, #8
	strh r1, [r4, #0x16]
	ldrh r0, [r4, #0x32]
	adds r0, #0x3c
	strh r0, [r4, #0x32]
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	ldrh r1, [r4, #0x16]
	ldr r5, _0807433C @ =gCamera
	ldrh r2, [r5]
	subs r1, r1, r2
	strh r1, [r4, #0x16]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08074340
	adds r0, r3, #0
	bl TaskDestroy
	b _0807435C
	.align 2, 0
_08074338: .4byte gCurTask
_0807433C: .4byte gCamera
_08074340:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	ldrh r1, [r5]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl DisplaySprite
_0807435C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Tentou
CreateEntity_Tentou: @ 0x08074364
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08074498 @ =Task_TentouMain
	ldr r1, _0807449C @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x5c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	adds r0, #0xc
	adds r0, r0, r3
	mov sl, r0
	movs r1, #0
	mov r8, r1
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r2, sb
	str r2, [r7]
	ldrb r0, [r2]
	strb r0, [r7, #8]
	strb r6, [r7, #9]
	movs r0, #0xa0
	rsbs r0, r0, #0
	str r0, [r7, #0x3c]
	str r1, [r7, #0x40]
	ldr r1, _080744A0 @ =0x03000044
	adds r0, r3, r1
	mov r2, r8
	strh r2, [r0]
	adds r1, #2
	adds r0, r3, r1
	strh r2, [r0]
	mov r2, r8
	str r2, [r7, #0x48]
	mov r0, sb
	ldrb r1, [r0, #4]
	ldr r2, _080744A4 @ =0x0300004C
	adds r0, r3, r2
	strb r1, [r0]
	mov r0, r8
	str r0, [r7, #0x50]
	str r0, [r7, #0x54]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	mov r2, sl
	strh r0, [r2, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r2, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, sb
	strb r0, [r2]
	movs r0, #6
	str r3, [sp, #4]
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #4]
	movs r0, #0xce
	lsls r0, r0, #1
	strh r0, [r1, #0xa]
	ldr r3, [sp, #4]
	ldr r2, _080744A8 @ =0x0300002C
	adds r0, r3, r2
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	mov r2, sl
	strh r0, [r2, #0x1a]
	mov r0, r8
	strh r0, [r2, #8]
	strh r0, [r2, #0x14]
	strh r0, [r2, #0x1c]
	ldr r2, _080744AC @ =0x0300002D
	adds r1, r3, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080744B0 @ =0x0300002E
	adds r1, r3, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080744B4 @ =0x03000031
	adds r0, r3, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r1, sl
	str r0, [r1, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r1, #0x10]
	ldr r0, _080744B8 @ =gUnknown_03005A20
	ldr r2, [r0]
	asrs r2, r2, #8
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	cmp r2, r1
	blt _08074476
	movs r0, #0xa0
	str r0, [r7, #0x3c]
	ldr r0, [r7, #0x48]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #0x48]
_08074476:
	mov r1, sb
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080744C4
	ldr r2, _080744BC @ =0x03000058
	adds r1, r3, r2
	movs r0, #8
	strh r0, [r1]
	ldr r1, _080744C0 @ =0x0300004E
	adds r0, r3, r1
	mov r2, r8
	strh r2, [r0]
	adds r1, #0xc
	adds r0, r3, r1
	b _080744DA
	.align 2, 0
_08074498: .4byte Task_TentouMain
_0807449C: .4byte TaskDestructor_8009670
_080744A0: .4byte 0x03000044
_080744A4: .4byte 0x0300004C
_080744A8: .4byte 0x0300002C
_080744AC: .4byte 0x0300002D
_080744B0: .4byte 0x0300002E
_080744B4: .4byte 0x03000031
_080744B8: .4byte gUnknown_03005A20
_080744BC: .4byte 0x03000058
_080744C0: .4byte 0x0300004E
_080744C4:
	ldr r2, _08074504 @ =0x03000058
	adds r1, r3, r2
	movs r0, #8
	strh r0, [r1]
	ldr r0, _08074508 @ =0x0300004E
	adds r1, r3, r0
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _0807450C @ =0x0300005A
	adds r0, r3, r1
	mov r2, r8
_080744DA:
	strh r2, [r0]
	adds r2, r7, #0
	adds r2, #0x5a
	movs r0, #0
	movs r1, #8
	strh r1, [r2]
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	mov r0, sl
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074504: .4byte 0x03000058
_08074508: .4byte 0x0300004E
_0807450C: .4byte 0x0300005A

	thumb_func_start Task_TentouMain
Task_TentouMain: @ 0x08074510
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _08074648 @ =gCurTask
	ldr r0, [r1]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov sb, r0
	ldr r2, _0807464C @ =0x0300000C
	adds r5, r7, r2
	ldr r3, [r0]
	str r3, [sp]
	ldrb r1, [r0, #8]
	lsls r1, r1, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov sl, r1
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	mov r4, sb
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #4]
	mov r0, sl
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r6, [r4, #0x50]
	ldrb r2, [r3, #5]
	lsls r2, r2, #0xb
	ldr r1, _08074650 @ =gSineTable
	mov r8, r1
	ldr r3, _08074654 @ =0x03000058
	adds r0, r7, r3
	movs r4, #0
	ldrsh r3, [r0, r4]
	ldr r0, _08074658 @ =0x0300004E
	adds r4, r7, r0
	ldrh r1, [r4]
	movs r0, #0x7f
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _0807465C @ =0x000003FF
	mov ip, r1
	ands r0, r1
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	mov r1, sb
	str r0, [r1, #0x50]
	subs r6, r0, r6
	str r6, [sp, #0x10]
	ldr r6, [r1, #0x54]
	ldr r3, [sp]
	ldrb r2, [r3, #6]
	lsls r2, r2, #0xb
	ldr r1, _08074660 @ =0x0300005A
	adds r0, r7, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	ldrh r1, [r4]
	movs r0, #0x3f
	ands r0, r1
	muls r0, r3, r0
	mov r3, ip
	ands r0, r3
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	mov r1, sb
	str r0, [r1, #0x54]
	subs r3, r0, r6
	ldrh r0, [r4]
	adds r0, #1
	movs r2, #0
	movs r1, #0
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x40
	beq _080745D4
	cmp r0, #0x80
	bne _080745E8
_080745D4:
	ldr r4, _08074664 @ =0x03000046
	adds r0, r7, r4
	strh r1, [r0]
	ldr r1, _08074668 @ =0x0300002C
	adds r0, r7, r1
	strb r2, [r0]
	ldr r2, _08074648 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _0807466C @ =sub_8074928
	str r0, [r1, #8]
_080745E8:
	mov r2, sb
	adds r2, #0x4e
	ldrh r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strh r0, [r2]
	ldr r7, _08074670 @ =gCamera
	ldrh r0, [r7]
	ldr r4, [sp, #8]
	subs r0, r4, r0
	ldr r1, [sp, #0x10]
	asrs r6, r1, #5
	adds r0, r0, r6
	strh r0, [r5, #0x16]
	asrs r4, r3, #4
	adds r0, r4, #0
	movs r1, #0x40
	bl Mod
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3f
	beq _08074674
	adds r0, r4, #0
	movs r1, #0x40
	bl Mod
	ldrh r1, [r7, #2]
	ldr r2, [sp, #0xc]
	subs r1, r2, r1
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	mov r3, sl
	adds r1, r3, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #4]
	subs r2, r0, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _08074694
	b _080746F2
	.align 2, 0
_08074648: .4byte gCurTask
_0807464C: .4byte 0x0300000C
_08074650: .4byte gSineTable
_08074654: .4byte 0x03000058
_08074658: .4byte 0x0300004E
_0807465C: .4byte 0x000003FF
_08074660: .4byte 0x0300005A
_08074664: .4byte 0x03000046
_08074668: .4byte 0x0300002C
_0807466C: .4byte sub_8074928
_08074670: .4byte gCamera
_08074674:
	mov r2, sl
	adds r1, r2, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp, #4]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_800B4F8
	cmp r0, #0
	bne _080746F2
	ldrh r0, [r7, #2]
	ldr r4, [sp, #0xc]
	subs r0, r4, r0
	strh r0, [r5, #0x18]
_08074694:
	ldr r2, _080746FC @ =gCamera
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	ldr r4, [sp, #8]
	cmp r4, r0
	bgt _080746C6
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _080746C6
	movs r0, #2
	ldrsh r1, [r2, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r3, [sp, #0xc]
	cmp r3, r0
	bgt _080746C6
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	bge _08074704
_080746C6:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080746EA
	movs r4, #0x18
	ldrsh r0, [r5, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _080746EA
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08074704
_080746EA:
	mov r1, sb
	ldrb r0, [r1, #8]
	ldr r2, [sp]
	strb r0, [r2]
_080746F2:
	ldr r0, _08074700 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08074728
	.align 2, 0
_080746FC: .4byte gCamera
_08074700: .4byte gCurTask
_08074704:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	ldr r1, _08074738 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
_08074728:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074738: .4byte 0xFFFFFBFF

	thumb_func_start Task_807473C
Task_807473C: @ 0x0807473C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08074880 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0xc
	adds r7, r3, r0
	ldr r1, [r5]
	str r1, [sp]
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov sb, r1
	ldr r2, [sp]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov sl, r1
	ldr r0, [r5, #0x50]
	rsbs r0, r0, #0
	str r0, [sp, #4]
	ldrb r2, [r2, #5]
	lsls r2, r2, #0xb
	ldr r1, _08074884 @ =0x03000058
	adds r0, r3, r1
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r0, _08074888 @ =0x0300004E
	adds r6, r3, r0
	ldrh r0, [r6]
	subs r0, #1
	movs r1, #0x7f
	ands r0, r1
	muls r0, r4, r0
	ldr r1, _0807488C @ =0x000003FF
	mov ip, r1
	ands r0, r1
	lsls r0, r0, #1
	ldr r1, _08074890 @ =gSineTable
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r5, #0x50]
	ldr r2, [r5, #0x54]
	mov r8, r2
	ldr r0, [sp]
	ldrb r2, [r0, #6]
	lsls r2, r2, #0xb
	ldr r1, _08074894 @ =0x0300005A
	adds r0, r3, r1
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldrh r0, [r6]
	subs r0, #1
	movs r1, #0x3f
	ands r0, r1
	muls r0, r4, r0
	mov r1, ip
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08074890 @ =gSineTable
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r5, #0x54]
	mov r2, r8
	subs r6, r0, r2
	ldr r4, _08074898 @ =gCamera
	ldrh r0, [r4]
	mov r1, sb
	subs r0, r1, r0
	ldr r1, [sp, #4]
	asrs r2, r1, #5
	adds r0, r0, r2
	strh r0, [r7, #0x16]
	ldrh r0, [r4, #2]
	mov r1, sl
	subs r0, r1, r0
	asrs r1, r6, #4
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldr r0, _0807489C @ =0x03000046
	adds r3, r3, r0
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bne _0807482A
	mov r3, sb
	adds r0, r3, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	subs r1, r2, r1
	subs r1, #5
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_8074B80
_0807482A:
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp sb, r0
	bgt _08074854
	adds r0, r1, #0
	subs r0, #0x80
	cmp sb, r0
	blt _08074854
	movs r3, #2
	ldrsh r1, [r4, r3]
	subs r2, #0x50
	adds r0, r1, r2
	cmp sl, r0
	bgt _08074854
	adds r0, r1, #0
	subs r0, #0x80
	cmp sl, r0
	bge _080748A0
_08074854:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08074878
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _08074878
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080748A0
_08074878:
	ldrb r0, [r5, #8]
	ldr r1, [sp]
	strb r0, [r1]
	b _080748BE
	.align 2, 0
_08074880: .4byte gCurTask
_08074884: .4byte 0x03000058
_08074888: .4byte 0x0300004E
_0807488C: .4byte 0x000003FF
_08074890: .4byte gSineTable
_08074894: .4byte 0x0300005A
_08074898: .4byte gCamera
_0807489C: .4byte 0x03000046
_080748A0:
	ldr r2, [sp, #4]
	asrs r1, r2, #5
	add r1, sb
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r2, r6, #4
	mov r3, sl
	subs r2, r3, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _080748CC
_080748BE:
	ldr r0, _080748C8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807490C
	.align 2, 0
_080748C8: .4byte gCurTask
_080748CC:
	adds r0, r5, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x20
	ble _080748E8
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0807491C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08074920 @ =Task_TentouMain
	str r0, [r1, #8]
_080748E8:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [r7, #0x10]
	ldr r1, _08074924 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #0x10]
_0807490C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807491C: .4byte gCurTask
_08074920: .4byte Task_TentouMain
_08074924: .4byte 0xFFFFFBFF

	thumb_func_start sub_8074928
sub_8074928: @ 0x08074928
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _08074A64 @ =gCurTask
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sl, r0
	ldr r2, _08074A68 @ =0x0300000C
	adds r7, r3, r2
	ldr r4, [r0]
	str r4, [sp]
	ldrb r1, [r0, #8]
	lsls r1, r1, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #8]
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	mov r5, sl
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #4]
	ldr r5, [sp, #8]
	mov ip, r1
	mov r6, sl
	ldr r0, [r6, #0x50]
	rsbs r0, r0, #0
	str r0, [sp, #0xc]
	ldrb r2, [r4, #5]
	lsls r2, r2, #0xb
	ldr r1, _08074A6C @ =0x03000058
	adds r0, r3, r1
	movs r6, #0
	ldrsh r4, [r0, r6]
	ldr r0, _08074A70 @ =0x0300004E
	adds r6, r3, r0
	ldrh r0, [r6]
	subs r0, #1
	movs r1, #0x7f
	ands r0, r1
	muls r0, r4, r0
	ldr r1, _08074A74 @ =0x000003FF
	mov sb, r1
	ands r0, r1
	lsls r0, r0, #1
	ldr r4, _08074A78 @ =gSineTable
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	mov r2, sl
	str r0, [r2, #0x50]
	ldr r4, [r2, #0x54]
	mov r8, r4
	ldr r0, [sp]
	ldrb r2, [r0, #6]
	lsls r2, r2, #0xb
	ldr r1, _08074A7C @ =0x0300005A
	adds r0, r3, r1
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldrh r0, [r6]
	subs r0, #1
	movs r1, #0x3f
	ands r0, r1
	muls r0, r4, r0
	mov r4, sb
	ands r0, r4
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #1
	ldr r1, _08074A78 @ =gSineTable
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	mov r6, sl
	str r0, [r6, #0x54]
	mov r1, r8
	subs r2, r0, r1
	ldr r4, _08074A80 @ =gCamera
	ldrh r0, [r4]
	subs r0, r5, r0
	ldr r6, [sp, #0xc]
	asrs r1, r6, #5
	adds r0, r0, r1
	strh r0, [r7, #0x16]
	ldrh r0, [r4, #2]
	mov r1, ip
	subs r0, r1, r0
	asrs r1, r2, #4
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldr r6, _08074A84 @ =0x03000046
	adds r3, r3, r6
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	ldr r3, _08074A64 @ =gCurTask
	cmp r5, r0
	bgt _08074A30
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _08074A30
	movs r5, #2
	ldrsh r1, [r4, r5]
	movs r6, #0x90
	lsls r6, r6, #1
	adds r0, r1, r6
	cmp ip, r0
	bgt _08074A30
	adds r0, r1, #0
	subs r0, #0x80
	cmp ip, r0
	bge _08074A88
_08074A30:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08074A54
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08074A54
	movs r4, #0x18
	ldrsh r1, [r7, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08074A88
_08074A54:
	mov r5, sl
	ldrb r0, [r5, #8]
	ldr r6, [sp]
	strb r0, [r6]
	ldr r0, [r3]
	bl TaskDestroy
	b _08074B62
	.align 2, 0
_08074A64: .4byte gCurTask
_08074A68: .4byte 0x0300000C
_08074A6C: .4byte 0x03000058
_08074A70: .4byte 0x0300004E
_08074A74: .4byte 0x000003FF
_08074A78: .4byte gSineTable
_08074A7C: .4byte 0x0300005A
_08074A80: .4byte gCamera
_08074A84: .4byte 0x03000046
_08074A88:
	ldr r0, [sp, #0xc]
	asrs r1, r0, #5
	ldr r3, [sp, #8]
	adds r1, r3, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #4
	ldr r4, [sp, #4]
	subs r2, r4, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_800B4F8
	adds r4, r0, #0
	cmp r4, #0
	beq _08074AB8
	ldr r0, _08074AB4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08074B62
	.align 2, 0
_08074AB4: .4byte gCurTask
_08074AB8:
	ldr r3, _08074B0C @ =gUnknown_03005A20
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r2, _08074B10 @ =gCamera
	movs r5, #0
	ldrsh r1, [r2, r5]
	subs r0, r0, r1
	movs r6, #0x16
	ldrsh r1, [r7, r6]
	subs r5, r0, r1
	adds r0, r5, #0
	muls r0, r5, r0
	adds r5, r0, #0
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	movs r3, #2
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	movs r6, #0x18
	ldrsh r1, [r7, r6]
	subs r0, r0, r1
	mov ip, r0
	adds r1, r0, #0
	mov r0, ip
	muls r0, r1, r0
	adds r0, r0, r5
	mov ip, r0
	ldr r0, _08074B14 @ =0x000018FF
	cmp ip, r0
	bgt _08074B20
	mov r0, sl
	adds r0, #0x46
	strh r4, [r0]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08074B18 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08074B1C @ =Task_807473C
	b _08074B3C
	.align 2, 0
_08074B0C: .4byte gUnknown_03005A20
_08074B10: .4byte gCamera
_08074B14: .4byte 0x000018FF
_08074B18: .4byte gCurTask
_08074B1C: .4byte Task_807473C
_08074B20:
	mov r3, sl
	adds r3, #0x46
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, #0x3b
	ble _08074B3E
	strh r4, [r3]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08074B74 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08074B78 @ =Task_TentouMain
_08074B3C:
	str r0, [r1, #8]
_08074B3E:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [r7, #0x10]
	ldr r1, _08074B7C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #0x10]
_08074B62:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074B74: .4byte gCurTask
_08074B78: .4byte Task_TentouMain
_08074B7C: .4byte 0xFFFFFBFF

	thumb_func_start sub_8074B80
sub_8074B80: @ 0x08074B80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	movs r7, #0
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	movs r6, #0
	movs r0, #8
	adds r0, r0, r5
	mov r8, r0
	movs r1, #6
	rsbs r1, r1, #0
	mov sl, r1
_08074BA6:
	ldr r0, _08074BE0 @ =sub_8074CE8
	str r0, [sp]
	ldr r0, _08074BE4 @ =sub_8074C50
	movs r1, #0x3c
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	lsls r0, r5, #2
	str r0, [r4, #0x30]
	strh r6, [r4, #0x38]
	movs r0, #6
	str r0, [r4, #0x34]
	cmp r7, #0
	beq _08074BE8
	mov r1, sl
	str r1, [r4, #0x34]
	subs r0, r5, #6
	lsls r0, r0, #2
	str r0, [r4, #0x30]
	adds r0, r5, #0
	subs r0, #8
	b _08074BF0
	.align 2, 0
_08074BE0: .4byte sub_8074CE8
_08074BE4: .4byte sub_8074C50
_08074BE8:
	adds r0, r5, #6
	lsls r0, r0, #2
	str r0, [r4, #0x30]
	mov r0, r8
_08074BF0:
	strh r0, [r4, #0x16]
	mov r1, sb
	strh r1, [r4, #0x18]
	movs r0, #4
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	subs r0, #0xa6
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	strb r6, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	strb r6, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r7, #1
	cmp r7, #1
	ble _08074BA6
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8074C50
sub_8074C50: @ 0x08074C50
	push {r4, r5, r6, r7, lr}
	ldr r0, _08074CC8 @ =gCurTask
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
	ldr r3, _08074CCC @ =gCamera
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
	bhi _08074CBE
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _08074CBE
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08074CD0
_08074CBE:
	ldr r0, _08074CC8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08074CE0
	.align 2, 0
_08074CC8: .4byte gCurTask
_08074CCC: .4byte gCamera
_08074CD0:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	strh r6, [r5, #0x16]
	strh r7, [r5, #0x18]
_08074CE0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8074CE8
sub_8074CE8: @ 0x08074CE8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
