.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_SpikedBarrel_ChaoHunt
CreateEntity_SpikedBarrel_ChaoHunt: @ 0x08093718
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080937EC @ =Task_SpikedBarrel_ChaoHunt
	ldr r1, _080937F0 @ =TaskDestructor_SpikedBarrel_ChaoHunt
	str r1, [sp]
	movs r1, #0x3c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _080937F4 @ =0x0300000C
	adds r5, r2, r1
	movs r7, #0
	movs r3, #0
	mov sl, r3
	strh r4, [r0, #4]
	strh r6, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r3, r8
	strb r3, [r0, #9]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r5, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x18]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r1]
	movs r0, #0x36
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	mov r0, sl
	strh r0, [r5, #8]
	ldr r0, _080937F8 @ =0x00000203
	strh r0, [r5, #0xa]
	ldr r2, [sp, #4]
	ldr r1, _080937FC @ =0x0300002C
	adds r0, r2, r1
	strb r7, [r0]
	mov r3, sl
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r0, _08093800 @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _08093804 @ =0x0300002E
	adds r1, r2, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08093808 @ =0x03000031
	adds r2, r2, r0
	strb r7, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #0xb
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080937EC: .4byte Task_SpikedBarrel_ChaoHunt
_080937F0: .4byte TaskDestructor_SpikedBarrel_ChaoHunt
_080937F4: .4byte 0x0300000C
_080937F8: .4byte 0x00000203
_080937FC: .4byte 0x0300002C
_08093800: .4byte 0x0300002D
_08093804: .4byte 0x0300002E
_08093808: .4byte 0x03000031

	thumb_func_start Task_SpikedBarrel_ChaoHunt
Task_SpikedBarrel_ChaoHunt: @ 0x0809380C
	push {r4, r5, r6, r7, lr}
	ldr r4, _08093878 @ =gCurTask
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
	ldr r3, _0809387C @ =gCamera
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
	bhi _0809386A
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0809386A
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08093880
_0809386A:
	ldrb r0, [r5, #8]
	strb r0, [r7]
	ldr r0, [r4]
	bl TaskDestroy
	b _0809388C
	.align 2, 0
_08093878: .4byte gCurTask
_0809387C: .4byte gCamera
_08093880:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0809388C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_SpikedBarrel_ChaoHunt
TaskDestructor_SpikedBarrel_ChaoHunt: @ 0x08093894
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
