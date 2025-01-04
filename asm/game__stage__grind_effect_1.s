.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_80408C0
sub_80408C0: @ 0x080408C0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08040924 @ =Task_8040944
	ldr r2, _08040928 @ =0x00002001
	ldr r1, _0804092C @ =TaskDestructor_80409E4
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r5, [r6, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #4]
	movs r3, #0
	movs r2, #0
	strh r2, [r4, #8]
	ldr r0, _08040930 @ =0x000002ED
	strh r0, [r4, #0xa]
	ldr r1, _08040934 @ =0x03000020
	adds r0, r5, r1
	strb r3, [r0]
	ldr r0, _08040938 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r2, [r4, #0x1c]
	ldr r0, _0804093C @ =0x03000022
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08040940 @ =0x03000025
	adds r5, r5, r1
	strb r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08040924: .4byte Task_8040944
_08040928: .4byte 0x00002001
_0804092C: .4byte TaskDestructor_80409E4
_08040930: .4byte 0x000002ED
_08040934: .4byte 0x03000020
_08040938: .4byte 0x03000021
_0804093C: .4byte 0x03000022
_08040940: .4byte 0x03000025

	thumb_func_start Task_8040944
Task_8040944: @ 0x08040944
	push {r4, r5, lr}
	ldr r3, _08040964 @ =gPlayer
	ldr r0, [r3, #0x60]
	cmp r0, #0
	beq _0804095A
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0804096C
_0804095A:
	ldr r0, _08040968 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080409D8
	.align 2, 0
_08040964: .4byte gPlayer
_08040968: .4byte gCurTask
_0804096C:
	adds r0, r3, #0
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r0, #0x2c
	bne _080409D8
	adds r0, r3, #0
	adds r0, #0x44
	ldrh r5, [r0]
	cmp r5, #1
	bne _080409D8
	ldr r0, _080409BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _080409C0 @ =gCamera
	ldr r0, [r3]
	asrs r0, r0, #8
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r1, [r3, #4]
	asrs r1, r1, #8
	movs r0, #0xf
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, [r3, #0x10]
	ands r0, r5
	cmp r0, #0
	bne _080409C4
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080409CA
	.align 2, 0
_080409BC: .4byte gCurTask
_080409C0: .4byte gCamera
_080409C4:
	ldr r0, [r4, #0x10]
	ldr r1, _080409E0 @ =0xFFFFFBFF
	ands r0, r1
_080409CA:
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080409D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080409E0: .4byte 0xFFFFFBFF

	thumb_func_start TaskDestructor_80409E4
TaskDestructor_80409E4: @ 0x080409E4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
