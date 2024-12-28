.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_SecurityGate
CreateEntity_SecurityGate: @ 0x0808838C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
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
	ldr r0, _080883F4 @ =Task_SecurityGateMain
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080883F8 @ =TaskDestructor_SecurityGateMain
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	adds r0, #0xc
	adds r7, r1, r0
	movs r3, #0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r4, r8
	str r4, [r2]
	ldrb r0, [r4]
	strb r0, [r2, #8]
	strb r6, [r2, #9]
	ldr r4, _080883FC @ =0x0300003C
	adds r0, r1, r4
	strb r3, [r0]
	ldr r0, _08088400 @ =0x0300003D
	adds r1, r1, r0
	strb r3, [r1]
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08088404
	ldrb r0, [r1, #5]
	lsls r0, r0, #3
	subs r0, #0xa
	b _08088406
	.align 2, 0
_080883F4: .4byte Task_SecurityGateMain
_080883F8: .4byte TaskDestructor_SecurityGateMain
_080883FC: .4byte 0x0300003C
_08088400: .4byte 0x0300003D
_08088404:
	ldr r0, _08088460 @ =0x0000FFF6
_08088406:
	strh r0, [r2, #0x3e]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	mov r1, r8
	strb r0, [r1]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7, #4]
	movs r2, #0
	movs r1, #0
	ldr r0, _08088464 @ =0x00000216
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	strb r2, [r0]
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
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08088460: .4byte 0x0000FFF6
_08088464: .4byte 0x00000216

	thumb_func_start Task_SecurityGateMain
Task_SecurityGateMain: @ 0x08088468
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08088584 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov ip, r0
	ldr r1, [r0]
	mov r8, r1
	ldr r2, _08088588 @ =0x0300000C
	adds r6, r4, r2
	ldrb r2, [r0, #8]
	lsls r2, r2, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	mov r3, ip
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _0808858C @ =gCamera
	ldrh r0, [r3]
	lsrs r5, r2, #0x10
	mov sl, r5
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r7, r1, #0x10
	str r7, [sp]
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x18]
	ldr r0, _08088590 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _08088516
	mov r1, ip
	movs r7, #0x3e
	ldrsh r0, [r1, r7]
	subs r2, r2, r0
	ldr r1, _08088590 @ =gPlayer
	ldr r0, [r1]
	asrs r1, r0, #8
	cmp r2, r1
	bgt _08088516
	mov r7, r8
	ldrb r0, [r7, #5]
	lsls r0, r0, #3
	adds r0, r2, r0
	cmp r0, r1
	blt _08088516
	ldr r1, _08088590 @ =gPlayer
	ldr r0, [r1, #4]
	asrs r1, r0, #8
	cmp r5, r1
	bgt _08088516
	ldrb r0, [r7, #6]
	lsls r0, r0, #3
	adds r0, r5, r0
	cmp r0, r1
	blt _08088516
	ldr r2, _08088594 @ =0x0300003C
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	ldr r5, _08088598 @ =0x0300003D
	adds r1, r4, r5
	movs r0, #8
	strb r0, [r1]
	mov r7, sb
	ldr r1, [r7]
	ldr r0, _0808859C @ =Task_SecurityGate1
	str r0, [r1, #8]
_08088516:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	cmp r2, r0
	bgt _0808854E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0808854E
	ldr r7, [sp]
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	movs r0, #2
	ldrsh r3, [r3, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r3, r2
	cmp r1, r0
	bgt _0808854E
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _080885A0
_0808854E:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08088572
	movs r3, #0x18
	ldrsh r0, [r6, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _08088572
	movs r4, #0x18
	ldrsh r1, [r6, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080885A0
_08088572:
	mov r5, ip
	ldrb r0, [r5, #8]
	mov r7, r8
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _080885AC
	.align 2, 0
_08088584: .4byte gCurTask
_08088588: .4byte 0x0300000C
_0808858C: .4byte gCamera
_08088590: .4byte gPlayer
_08088594: .4byte 0x0300003C
_08088598: .4byte 0x0300003D
_0808859C: .4byte Task_SecurityGate1
_080885A0:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_080885AC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_SecurityGate1
Task_SecurityGate1: @ 0x080885BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08088670 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r1, [r6]
	mov ip, r1
	ldr r4, _08088674 @ =0x0300000C
	adds r7, r3, r4
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, ip
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r4, _08088678 @ =gCamera
	ldrh r0, [r4]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r7, #0x16]
	ldrh r1, [r4, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r1, r2, r1
	ldr r0, _0808867C @ =0x0300003C
	adds r3, r3, r0
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	mov r3, r8
	cmp r5, r0
	bgt _0808863C
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _0808863C
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _0808863C
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _08088680
_0808863C:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08088660
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08088660
	movs r4, #0x18
	ldrsh r1, [r7, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08088680
_08088660:
	ldrb r0, [r6, #8]
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r3]
	bl TaskDestroy
	b _080886BA
	.align 2, 0
_08088670: .4byte gCurTask
_08088674: .4byte 0x0300000C
_08088678: .4byte gCamera
_0808867C: .4byte 0x0300003C
_08088680:
	adds r1, r6, #0
	adds r1, #0x3d
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080886A4
	subs r1, #1
	movs r0, #0x30
	strb r0, [r1]
	ldr r1, [r3]
	ldr r0, _080886A0 @ =Task_SecurityGate2
	str r0, [r1, #8]
	b _080886AE
	.align 2, 0
_080886A0: .4byte Task_SecurityGate2
_080886A4:
	adds r1, r6, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	adds r0, #6
	strb r0, [r1]
_080886AE:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_080886BA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_SecurityGate2
Task_SecurityGate2: @ 0x080886C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _080887D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r0, [r7]
	str r0, [sp, #8]
	ldr r1, _080887DC @ =0x0300000C
	adds r6, r4, r1
	ldrb r0, [r7, #8]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r3, [sp, #8]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _080887E0 @ =gCamera
	ldrh r2, [r3]
	mov r0, r8
	lsls r5, r0, #0x10
	asrs r0, r5, #0x10
	subs r0, r0, r2
	strh r0, [r6, #0x16]
	ldrh r2, [r3, #2]
	lsrs r3, r1, #0x10
	str r3, [sp, #4]
	asrs r1, r1, #0x10
	subs r2, r1, r2
	ldr r0, _080887E4 @ =0x0300003C
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, r0, r2
	strh r0, [r6, #0x18]
	movs r4, #0
	mov sl, r1
	mov sb, r5
_0808872C:
	ldr r3, _080887E8 @ =gPlayer
	cmp r4, #0
	beq _08088734
	ldr r3, _080887EC @ =gPartner
_08088734:
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r5, r8
	lsls r5, r5, #0x10
	str r5, [sp, #0xc]
	cmp r1, #0
	bne _0808875E
	adds r0, r7, #0
	adds r0, #0x3c
	movs r2, #0
	ldrsb r2, [r0, r2]
	add r2, sl
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r1, [sp]
	adds r0, r6, #0
	mov r5, sb
	asrs r1, r5, #0x10
	bl sub_800AFDC
_0808875E:
	adds r4, #1
	ldr r0, _080887F0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0808872C
	ldr r0, [sp, #0xc]
	asrs r2, r0, #0x10
	ldr r3, _080887E0 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	cmp r2, r0
	bgt _080887A2
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _080887A2
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r4, #2
	ldrsh r2, [r3, r4]
	subs r5, #0x50
	adds r0, r2, r5
	cmp r1, r0
	bgt _080887A2
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _080887F4
_080887A2:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080887C6
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080887C6
	movs r3, #0x18
	ldrsh r1, [r6, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080887F4
_080887C6:
	ldrb r0, [r7, #8]
	ldr r4, [sp, #8]
	strb r0, [r4]
	ldr r0, _080887D8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08088800
	.align 2, 0
_080887D8: .4byte gCurTask
_080887DC: .4byte 0x0300000C
_080887E0: .4byte gCamera
_080887E4: .4byte 0x0300003C
_080887E8: .4byte gPlayer
_080887EC: .4byte gPartner
_080887F0: .4byte gNumSingleplayerCharacters
_080887F4:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08088800:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_SecurityGateMain
TaskDestructor_SecurityGateMain: @ 0x08088810
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
