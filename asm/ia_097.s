.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable097
CreateEntity_Interactable097: @ 0x08092454
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _080924D8 @ =Task_Interactable097
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080924DC @ =TaskDestructor_Interactable097
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov sb, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, sb
	ldr r7, _080924E0 @ =0x0300000C
	add r7, sb
	movs r1, #0
	mov sl, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r2, r8
	str r2, [r0]
	ldrb r1, [r2]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	ldrb r0, [r2]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r2]
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _080924E4
	movs r0, #1
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x8d
	lsls r0, r0, #2
	b _08092512
	.align 2, 0
_080924D8: .4byte Task_Interactable097
_080924DC: .4byte TaskDestructor_Interactable097
_080924E0: .4byte 0x0300000C
_080924E4:
	cmp r0, #1
	bne _08092508
	movs r0, #1
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _08092500 @ =0x00000236
	strh r0, [r7, #0xa]
	ldr r0, _08092504 @ =0x0300002C
	add r0, sb
	mov r1, sl
	strb r1, [r0]
	b _0809251C
	.align 2, 0
_08092500: .4byte 0x00000236
_08092504: .4byte 0x0300002C
_08092508:
	movs r0, #2
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _0809255C @ =0x00000235
_08092512:
	strh r0, [r7, #0xa]
	ldr r0, _08092560 @ =0x0300002C
	add r0, sb
	mov r2, sl
	strb r2, [r0]
_0809251C:
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r1, [r7, #8]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809255C: .4byte 0x00000235
_08092560: .4byte 0x0300002C

	thumb_func_start Task_Interactable097
Task_Interactable097: @ 0x08092564
	push {r4, r5, r6, r7, lr}
	ldr r4, _080925D0 @ =gCurTask
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
	ldr r3, _080925D4 @ =gCamera
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
	bhi _080925C2
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080925C2
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080925D8
_080925C2:
	ldrb r0, [r5, #8]
	strb r0, [r7]
	ldr r0, [r4]
	bl TaskDestroy
	b _080925E4
	.align 2, 0
_080925D0: .4byte gCurTask
_080925D4: .4byte gCamera
_080925D8:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_080925E4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_Interactable097
TaskDestructor_Interactable097: @ 0x080925EC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
