.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ Cosmic Angel: Antigravity field elements
	thumb_func_start CreateEntity_Torch
CreateEntity_Torch: @ 0x0808F0C8
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
	ldr r0, _0808F160 @ =Task_TorchMain
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808F164 @ =TaskDestructor_Torch
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov sb, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, sb
	ldr r7, _0808F168 @ =0x0300000C
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
	ldr r0, _0808F16C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #5
	beq _0808F148
	cmp r1, #0x11
	bne _0808F190
_0808F148:
	mov r2, r8
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0808F174
	movs r0, #4
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _0808F170 @ =0x000001FF
	b _0808F19A
	.align 2, 0
_0808F160: .4byte Task_TorchMain
_0808F164: .4byte TaskDestructor_Torch
_0808F168: .4byte 0x0300000C
_0808F16C: .4byte gCurrentLevel
_0808F170: .4byte 0x000001FF
_0808F174:
	movs r0, #8
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r0, _0808F18C @ =0x0300002C
	add r0, sb
	mov r2, sl
	strb r2, [r0]
	b _0808F1A4
	.align 2, 0
_0808F18C: .4byte 0x0300002C
_0808F190:
	movs r0, #0xf
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _0808F1E4 @ =0x0000022E
_0808F19A:
	strh r0, [r7, #0xa]
	ldr r0, _0808F1E8 @ =0x0300002C
	add r0, sb
	mov r1, sl
	strb r1, [r0]
_0808F1A4:
	movs r2, #0
	movs r1, #0
	movs r0, #0xe0
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
_0808F1E4: .4byte 0x0000022E
_0808F1E8: .4byte 0x0300002C

	thumb_func_start Task_TorchMain
Task_TorchMain: @ 0x0808F1EC
	push {r4, r5, r6, r7, lr}
	ldr r4, _0808F258 @ =gCurTask
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
	ldr r3, _0808F25C @ =gCamera
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
	bhi _0808F24A
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808F24A
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0808F260
_0808F24A:
	ldrb r0, [r5, #8]
	strb r0, [r7]
	ldr r0, [r4]
	bl TaskDestroy
	b _0808F26C
	.align 2, 0
_0808F258: .4byte gCurTask
_0808F25C: .4byte gCamera
_0808F260:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0808F26C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_Torch
TaskDestructor_Torch: @ 0x0808F274
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
