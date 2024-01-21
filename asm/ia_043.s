.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable043
CreateEntity_Interactable043: @ 0x0804DDDC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0804DE94 @ =Task_Interactable043
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0804DE98 @ =TaskDestructor_Interactable043
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r6, r1
	mov r0, sb
	str r0, [r1]
	ldrb r2, [r0]
	ldr r3, _0804DE9C @ =0x0300003D
	adds r0, r6, r3
	movs r3, #0
	mov r8, r3
	strb r2, [r0]
	ldr r2, _0804DEA0 @ =0x0300003C
	adds r0, r6, r2
	mov r3, r8
	strb r3, [r0]
	lsls r4, r4, #8
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r4, r4, r0
	lsls r5, r5, #8
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r4, [r1, #4]
	str r5, [r1, #8]
	ldr r3, _0804DEA4 @ =0x0300000C
	adds r4, r6, r3
	movs r0, #0x31
	bl VramMalloc
	str r0, [r4, #4]
	movs r2, #0
	mov r0, r8
	strh r0, [r4, #8]
	ldr r0, _0804DEA8 @ =0x000001D9
	strh r0, [r4, #0xa]
	ldr r1, _0804DEAC @ =0x0300002C
	adds r0, r6, r1
	strb r2, [r0]
	ldr r3, _0804DEB0 @ =0x0300002D
	adds r1, r6, r3
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	mov r0, r8
	strh r0, [r4, #0x1c]
	adds r3, #1
	adds r1, r6, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0804DEB4 @ =0x03000031
	adds r6, r6, r0
	strb r2, [r6]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x10]
	movs r0, #0xfe
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DE94: .4byte Task_Interactable043
_0804DE98: .4byte TaskDestructor_Interactable043
_0804DE9C: .4byte 0x0300003D
_0804DEA0: .4byte 0x0300003C
_0804DEA4: .4byte 0x0300000C
_0804DEA8: .4byte 0x000001D9
_0804DEAC: .4byte 0x0300002C
_0804DEB0: .4byte 0x0300002D
_0804DEB4: .4byte 0x03000031

	thumb_func_start Task_Interactable043
Task_Interactable043: @ 0x0804DEB8
	push {r4, r5, r6, r7, lr}
	ldr r2, _0804DF10 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r6, _0804DF14 @ =gCamera
	movs r3, #0
	ldrsh r1, [r6, r3]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	ldr r3, [r4, #4]
	adds r7, r2, #0
	cmp r3, r0
	bgt _0804DEFE
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	blt _0804DEFE
	movs r0, #2
	ldrsh r2, [r6, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _0804DEFE
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0804DF18
_0804DEFE:
	ldr r1, [r4]
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, [r7]
	bl TaskDestroy
	b _0804DF32
	.align 2, 0
_0804DF10: .4byte gCurTask
_0804DF14: .4byte gCamera
_0804DF18:
	ldrh r0, [r6]
	subs r0, r3, r0
	strh r0, [r5, #0x16]
	ldr r0, [r4, #8]
	ldrh r1, [r6, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0804DF32:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_Interactable043
TaskDestructor_Interactable043: @ 0x0804DF38
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0804DF4C @ =0x0300000C
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0804DF4C: .4byte 0x0300000C
