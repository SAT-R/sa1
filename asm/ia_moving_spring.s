.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_MovingSpring
CreateEntity_MovingSpring: @ 0x0808B270
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0808B2F4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _0808B2F8 @ =Task_MovingSpringMain
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808B2FC @ =TaskDestructor_MovingSpring
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r5, r2, r0
	movs r6, #0
	mov r1, r8
	strh r1, [r3, #4]
	mov r0, sl
	strh r0, [r3, #6]
	str r7, [r3]
	ldrb r0, [r7]
	strb r0, [r3, #8]
	strb r4, [r3, #9]
	str r6, [r3, #0x40]
	str r6, [r3, #0x44]
	ldr r1, _0808B300 @ =0x0300004C
	adds r0, r2, r1
	strh r6, [r0]
	ldrb r0, [r7, #5]
	ldrb r1, [r7, #6]
	cmp r0, r1
	bls _0808B324
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _0808B308
	ldr r1, _0808B304 @ =0x03000048
	adds r0, r2, r1
	movs r1, #4
	strh r1, [r0]
	strh r6, [r3, #0x3c]
	b _0808B314
	.align 2, 0
_0808B2F4: .4byte gCurrentLevel
_0808B2F8: .4byte Task_MovingSpringMain
_0808B2FC: .4byte TaskDestructor_MovingSpring
_0808B300: .4byte 0x0300004C
_0808B304: .4byte 0x03000048
_0808B308:
	ldr r0, _0808B31C @ =0x03000048
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x3c]
_0808B314:
	ldr r1, _0808B320 @ =0x0300004A
	adds r0, r2, r1
	strh r6, [r0]
	b _0808B35A
	.align 2, 0
_0808B31C: .4byte 0x03000048
_0808B320: .4byte 0x0300004A
_0808B324:
	movs r0, #4
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _0808B348
	ldr r1, _0808B340 @ =0x03000048
	adds r0, r2, r1
	strh r6, [r0]
	ldr r0, _0808B344 @ =0x0300004A
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	strh r6, [r3, #0x3c]
	b _0808B35A
	.align 2, 0
_0808B340: .4byte 0x03000048
_0808B344: .4byte 0x0300004A
_0808B348:
	ldr r1, _0808B390 @ =0x03000048
	adds r0, r2, r1
	strh r6, [r0]
	ldr r0, _0808B394 @ =0x0300004A
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x3c]
_0808B35A:
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r5, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, sl
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	mov r2, sb
	cmp r2, #3
	bne _0808B39C
	movs r0, #0x1c
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _0808B398 @ =0x0000020E
	b _0808B3B8
	.align 2, 0
_0808B390: .4byte 0x03000048
_0808B394: .4byte 0x0300004A
_0808B398: .4byte 0x0000020E
_0808B39C:
	mov r0, sb
	cmp r0, #5
	beq _0808B3AE
	ldr r0, _0808B3C4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x11
	bne _0808B3CC
_0808B3AE:
	movs r0, #0x1c
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _0808B3C8 @ =0x00000246
_0808B3B8:
	strh r0, [r5, #0xa]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	b _0808B3E0
	.align 2, 0
_0808B3C4: .4byte gCurrentLevel
_0808B3C8: .4byte 0x00000246
_0808B3CC:
	movs r0, #0x1c
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x87
	lsls r0, r0, #2
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r4, [r0]
_0808B3E0:
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r1, [r5, #8]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
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

	thumb_func_start Task_MovingSpringMain
Task_MovingSpringMain: @ 0x0808B428
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0808B570 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r1, _0808B574 @ =0x0300000C
	adds r7, r5, r1
	ldr r2, [r6]
	mov sb, r2
	adds r0, #0x48
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0808B480
	mov r0, sb
	ldrb r2, [r0, #5]
	lsls r2, r2, #0xb
	ldr r4, _0808B578 @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _0808B57C @ =gStageTime
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _0808B580 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x40]
_0808B480:
	ldr r2, _0808B584 @ =0x0300004A
	adds r1, r5, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0808B4B8
	mov r0, sb
	ldrb r2, [r0, #6]
	lsls r2, r2, #0xb
	ldr r4, _0808B578 @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _0808B57C @ =gStageTime
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _0808B580 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x44]
_0808B4B8:
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldrb r3, [r2, #1]
	lsls r3, r3, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r0, _0808B588 @ =gCamera
	mov r8, r0
	ldrh r2, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	subs r2, r4, r2
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r7, #0x16]
	mov r2, r8
	ldrh r1, [r2, #2]
	lsls r3, r3, #0x10
	asrs r5, r3, #0x10
	subs r1, r5, r1
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_808B7A0
	cmp r0, #0
	beq _0808B50C
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _0808B58C @ =sub_808B5AC
	str r0, [r1, #8]
_0808B50C:
	mov r2, r8
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0808B53C
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0808B53C
	mov r0, r8
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r5, r0
	bgt _0808B53C
	adds r0, r2, #0
	subs r0, #0x80
	cmp r5, r0
	bge _0808B590
_0808B53C:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808B560
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0808B560
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808B590
_0808B560:
	ldrb r0, [r6, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0808B570 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808B59C
	.align 2, 0
_0808B570: .4byte gCurTask
_0808B574: .4byte 0x0300000C
_0808B578: .4byte gSineTable
_0808B57C: .4byte gStageTime
_0808B580: .4byte 0x000003FF
_0808B584: .4byte 0x0300004A
_0808B588: .4byte gCamera
_0808B58C: .4byte sub_808B5AC
_0808B590:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0808B59C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808B5AC
sub_808B5AC: @ 0x0808B5AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0808B6B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	adds r0, #0xc
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r6]
	mov sb, r1
	ldr r2, _0808B6BC @ =0x03000048
	adds r1, r7, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0808B606
	mov r0, sb
	ldrb r2, [r0, #5]
	lsls r2, r2, #0xb
	ldr r4, _0808B6C0 @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _0808B6C4 @ =gStageTime
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _0808B6C8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x40]
_0808B606:
	ldr r2, _0808B6CC @ =0x0300004A
	adds r1, r7, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0808B63E
	mov r0, sb
	ldrb r2, [r0, #6]
	lsls r2, r2, #0xb
	ldr r4, _0808B6C0 @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _0808B6C4 @ =gStageTime
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _0808B6C8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x44]
_0808B63E:
	ldrb r4, [r6, #8]
	lsls r4, r4, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	mov r2, sb
	ldrb r5, [r2, #1]
	lsls r5, r5, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r3, r4, #0x10
	mov sl, r3
	asrs r4, r4, #0x10
	lsrs r0, r5, #0x10
	str r0, [sp]
	asrs r5, r5, #0x10
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_808B7A0
	ldr r1, _0808B6D0 @ =gCamera
	ldrh r0, [r1]
	subs r4, r4, r0
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	adds r4, r4, r0
	mov r2, r8
	strh r4, [r2, #0x16]
	ldrh r0, [r1, #2]
	subs r5, r5, r0
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	adds r5, r5, r0
	strh r5, [r2, #0x18]
	ldr r3, _0808B6D4 @ =0x0300004C
	adds r1, r7, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	bls _0808B704
	ldr r0, _0808B6D8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	asrs r0, r0, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _0808B6E0
	ldr r0, _0808B6DC @ =0x0300002C
	adds r1, r7, r0
	movs r0, #1
	b _0808B6FA
	.align 2, 0
_0808B6B8: .4byte gCurTask
_0808B6BC: .4byte 0x03000048
_0808B6C0: .4byte gSineTable
_0808B6C4: .4byte gStageTime
_0808B6C8: .4byte 0x000003FF
_0808B6CC: .4byte 0x0300004A
_0808B6D0: .4byte gCamera
_0808B6D4: .4byte 0x0300004C
_0808B6D8: .4byte gCurrentLevel
_0808B6DC: .4byte 0x0300002C
_0808B6E0:
	cmp r0, #5
	beq _0808B6E8
	cmp r1, #0x11
	bne _0808B6F4
_0808B6E8:
	ldr r2, _0808B6F0 @ =0x0300002C
	adds r1, r7, r2
	movs r0, #1
	b _0808B6FA
	.align 2, 0
_0808B6F0: .4byte 0x0300002C
_0808B6F4:
	ldr r3, _0808B774 @ =0x0300002C
	adds r1, r7, r3
	movs r0, #0
_0808B6FA:
	strb r0, [r1]
	ldr r0, _0808B778 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808B77C @ =Task_MovingSpringMain
	str r0, [r1, #8]
_0808B704:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	ldr r2, _0808B780 @ =gCamera
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r4, r0
	bgt _0808B73E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0808B73E
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	movs r3, #2
	ldrsh r1, [r2, r3]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _0808B73E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	bge _0808B784
_0808B73E:
	mov r3, r8
	ldrh r0, [r3, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808B764
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808B764
	movs r2, #0x18
	ldrsh r1, [r3, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808B784
_0808B764:
	ldrb r0, [r6, #8]
	mov r3, sb
	strb r0, [r3]
	ldr r0, _0808B778 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808B790
	.align 2, 0
_0808B774: .4byte 0x0300002C
_0808B778: .4byte gCurTask
_0808B77C: .4byte Task_MovingSpringMain
_0808B780: .4byte gCamera
_0808B784:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
_0808B790:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808B7A0
sub_808B7A0: @ 0x0808B7A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	mov sb, r1
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	movs r4, #0
	ldr r1, _0808B7CC @ =gPartner
	mov r8, r1
	ldr r7, _0808B7D0 @ =gPlayer
_0808B7C0:
	cmp r4, #0
	beq _0808B7D4
	mov r2, r8
	ldr r0, [r2, #0x10]
	b _0808B7D6
	.align 2, 0
_0808B7CC: .4byte gPartner
_0808B7D0: .4byte gPlayer
_0808B7D4:
	ldr r0, [r7, #0x10]
_0808B7D6:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808B7E0
	b _0808BB1A
_0808B7E0:
	add r2, sp, #4
	cmp r4, #0
	beq _0808B7EC
	mov r3, r8
	ldrb r0, [r3, #0xe]
	b _0808B7EE
_0808B7EC:
	ldrb r0, [r7, #0xe]
_0808B7EE:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	adds r3, r0, #0
	cmp r4, #0
	beq _0808B802
	mov r0, r8
	ldrb r1, [r0, #0xf]
	b _0808B804
_0808B802:
	ldrb r1, [r7, #0xf]
_0808B804:
	movs r0, #1
	subs r1, r0, r1
	mov r0, sp
	adds r0, #9
	strb r1, [r0]
	cmp r4, #0
	beq _0808B818
	mov r1, r8
	ldrb r0, [r1, #0xe]
	b _0808B81A
_0808B818:
	ldrb r0, [r7, #0xe]
_0808B81A:
	adds r1, r0, #5
	mov r0, sp
	adds r0, #0xa
	strb r1, [r0]
	cmp r4, #0
	beq _0808B82C
	mov r1, r8
	ldrb r0, [r1, #0xf]
	b _0808B82E
_0808B82C:
	ldrb r0, [r7, #0xf]
_0808B82E:
	subs r1, r0, #1
	mov r0, sp
	adds r0, #0xb
	strb r1, [r0]
	adds r0, r2, #0
	adds r1, r3, #0
	movs r2, #4
	bl memcpy
	mov r2, sl
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	ldr r2, [sp, #0x10]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808B87C @ =gPlayer
	cmp r4, #0
	beq _0808B862
	ldr r3, _0808B880 @ =gPartner
_0808B862:
	mov r0, sb
	bl sub_800A768
	adds r5, r0, #0
	cmp r4, #0
	beq _0808B884
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0808B88E
	b _0808B89E
	.align 2, 0
_0808B87C: .4byte gPlayer
_0808B880: .4byte gPartner
_0808B884:
	ldr r0, [r7, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0808B89E
_0808B88E:
	cmp r4, #0
	beq _0808B898
	mov r1, r8
	ldr r0, [r1, #0x28]
	b _0808B89A
_0808B898:
	ldr r0, [r7, #0x28]
_0808B89A:
	cmp r0, sb
	beq _0808B8A4
_0808B89E:
	cmp r5, #0
	bne _0808B8A4
	b _0808B9AA
_0808B8A4:
	ldr r0, _0808B8CC @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _0808B8D0 @ =gPlayer
	cmp r4, #0
	beq _0808B8B8
	ldr r0, _0808B8D4 @ =gPartner
_0808B8B8:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r4, #0
	beq _0808B8D8
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	b _0808B8E0
	.align 2, 0
_0808B8CC: .4byte gCurrentLevel
_0808B8D0: .4byte gPlayer
_0808B8D4: .4byte gPartner
_0808B8D8:
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
_0808B8E0:
	cmp r4, #0
	beq _0808B8F0
	movs r0, #0x11
	ldr r3, _0808B8EC @ =gPartner + 0x40
	strb r0, [r3]
	b _0808B8F6
	.align 2, 0
_0808B8EC: .4byte gPartner + 0x40
_0808B8F0:
	movs r0, #0x11
	ldr r1, _0808B900 @ =gPlayer + 0x40
	strb r0, [r1]
_0808B8F6:
	cmp r4, #0
	beq _0808B908
	ldr r0, _0808B904 @ =gUnknown_03005C30
	b _0808B90A
	.align 2, 0
_0808B900: .4byte gPlayer + 0x40
_0808B904: .4byte gUnknown_03005C30
_0808B908:
	ldr r0, _0808B91C @ =sa2__gUnknown_03005AF0
_0808B90A:
	adds r0, #0x2d
	movs r1, #0xff
	strb r1, [r0]
	cmp r4, #0
	beq _0808B924
	ldr r0, _0808B920 @ =0x0000F880
	mov r2, r8
	strh r0, [r2, #0xa]
	b _0808B928
	.align 2, 0
_0808B91C: .4byte sa2__gUnknown_03005AF0
_0808B920: .4byte 0x0000F880
_0808B924:
	ldr r0, _0808B938 @ =0x0000F880
	strh r0, [r7, #0xa]
_0808B928:
	cmp r5, #0
	beq _0808B96C
	cmp r4, #0
	beq _0808B93C
	mov r3, r8
	ldr r0, [r3, #0x10]
	b _0808B93E
	.align 2, 0
_0808B938: .4byte 0x0000F880
_0808B93C:
	ldr r0, [r7, #0x10]
_0808B93E:
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0808B96C
	cmp r4, #0
	beq _0808B952
	mov r1, r8
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	b _0808B956
_0808B952:
	movs r3, #0xa
	ldrsh r0, [r7, r3]
_0808B956:
	asrs r1, r0, #1
	cmp r4, #0
	beq _0808B966
	mov r2, r8
	ldrh r0, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r2, #0xa]
	b _0808B96C
_0808B966:
	ldrh r0, [r7, #0xa]
	adds r0, r0, r1
	strh r0, [r7, #0xa]
_0808B96C:
	mov r1, sl
	adds r1, #0x4c
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	cmp r6, #3
	beq _0808B98A
	cmp r6, #5
	beq _0808B98A
	ldr r0, _0808B994 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x11
	bne _0808B998
_0808B98A:
	mov r0, sb
	adds r0, #0x20
	strb r2, [r0]
	b _0808B9A0
	.align 2, 0
_0808B994: .4byte gCurrentLevel
_0808B998:
	mov r1, sb
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
_0808B9A0:
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r3, #1
	str r3, [sp, #0x14]
_0808B9AA:
	cmp r4, #0
	beq _0808B9B4
	mov r0, r8
	ldr r6, [r0]
	b _0808B9B6
_0808B9B4:
	ldr r6, [r7]
_0808B9B6:
	mov r1, sl
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	ldr r2, [sp, #0xc]
	adds r1, r2, r0
	mov r3, sl
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	ldr r3, [sp, #0x10]
	adds r2, r3, r0
	add r3, sp, #4
	cmp r4, #0
	beq _0808B9D6
	mov r0, r8
	str r0, [sp]
	b _0808B9D8
_0808B9D6:
	str r7, [sp]
_0808B9D8:
	mov r0, sb
	bl sub_808BB44
	mov r1, sl
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	ldr r2, [sp, #0xc]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	ldr r2, [sp, #0x10]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808BA1C @ =gPlayer
	cmp r4, #0
	beq _0808BA02
	ldr r3, _0808BA20 @ =gPartner
_0808BA02:
	mov r0, sb
	bl sub_80096B0
	adds r5, r0, #0
	cmp r4, #0
	beq _0808BA28
	ldr r3, _0808BA24 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0x11
	beq _0808BA32
	b _0808BA42
	.align 2, 0
_0808BA1C: .4byte gPlayer
_0808BA20: .4byte gPartner
_0808BA24: .4byte gPartner + 0x40
_0808BA28:
	ldr r1, _0808BA3C @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x11
	bne _0808BA42
_0808BA32:
	cmp r4, #0
	beq _0808BA40
	mov r2, r8
	str r6, [r2]
	b _0808BA42
	.align 2, 0
_0808BA3C: .4byte gPlayer + 0x40
_0808BA40:
	str r6, [r7]
_0808BA42:
	movs r0, #0xb8
	lsls r0, r0, #0xd
	ands r0, r5
	cmp r0, #0
	beq _0808BAB4
	bl sub_80549FC
	cmp r0, #0
	beq _0808BAB4
	ldr r0, _0808BA6C @ =gPlayer
	cmp r4, #0
	beq _0808BA5C
	ldr r0, _0808BA70 @ =gPartner
_0808BA5C:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r4, #0
	beq _0808BA78
	movs r0, #5
	ldr r3, _0808BA74 @ =gPartner + 0x40
	strb r0, [r3]
	b _0808BA7E
	.align 2, 0
_0808BA6C: .4byte gPlayer
_0808BA70: .4byte gPartner
_0808BA74: .4byte gPartner + 0x40
_0808BA78:
	movs r0, #5
	ldr r1, _0808BA90 @ =gPlayer + 0x40
	strb r0, [r1]
_0808BA7E:
	cmp r4, #0
	beq _0808BA94
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #0x10]
	b _0808BA9C
	.align 2, 0
_0808BA90: .4byte gPlayer + 0x40
_0808BA94:
	ldr r0, [r7, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x10]
_0808BA9C:
	cmp r4, #0
	beq _0808BAAC
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	b _0808BAB4
_0808BAAC:
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
_0808BAB4:
	movs r1, #0x20
	ands r5, r1
	cmp r5, #0
	bne _0808BB1A
	cmp r4, #0
	beq _0808BACC
	mov r2, r8
	ldr r0, [r2, #0x10]
	ands r0, r1
	cmp r0, #0
	bne _0808BAD4
	b _0808BB1A
_0808BACC:
	ldr r0, [r7, #0x10]
	ands r0, r1
	cmp r0, #0
	beq _0808BB1A
_0808BAD4:
	cmp r4, #0
	beq _0808BAE6
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	b _0808BAF0
_0808BAE6:
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_0808BAF0:
	ldr r0, _0808BB08 @ =gPlayer
	cmp r4, #0
	beq _0808BAF8
	ldr r0, _0808BB0C @ =gPartner
_0808BAF8:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r4, #0
	beq _0808BB14
	movs r0, #4
	ldr r1, _0808BB10 @ =gPartner + 0x40
	strb r0, [r1]
	b _0808BB1A
	.align 2, 0
_0808BB08: .4byte gPlayer
_0808BB0C: .4byte gPartner
_0808BB10: .4byte gPartner + 0x40
_0808BB14:
	movs r0, #4
	ldr r2, _0808BB3C @ =gPlayer + 0x40
	strb r0, [r2]
_0808BB1A:
	adds r4, #1
	ldr r0, _0808BB40 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _0808BB2A
	b _0808B7C0
_0808BB2A:
	ldr r0, [sp, #0x14]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808BB3C: .4byte gPlayer + 0x40
_0808BB40: .4byte gNumSingleplayerCharacters

	thumb_func_start sub_808BB44
sub_808BB44: @ 0x0808BB44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov ip, r0
	adds r7, r1, #0
	mov r8, r2
	adds r5, r3, #0
	ldr r4, [sp, #0x20]
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r7, r3
	ldr r0, [r4]
	asrs r0, r0, #8
	movs r6, #0
	ldrsb r6, [r5, r6]
	adds r1, r0, r6
	cmp r2, r1
	bgt _0808BB82
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0808BB8E
	cmp r2, r1
	blt _0808BC6C
_0808BB82:
	movs r0, #2
	ldrsb r0, [r5, r0]
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	blt _0808BC6C
_0808BB8E:
	mov r0, ip
	adds r0, #0x2d
	movs r3, #0
	ldrsb r3, [r0, r3]
	mov r0, r8
	adds r2, r0, r3
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r6, #1
	ldrsb r6, [r5, r6]
	adds r1, r0, r6
	cmp r2, r1
	bgt _0808BBBE
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0808BBCA
	cmp r2, r1
	blt _0808BC6C
_0808BBBE:
	movs r0, #3
	ldrsb r0, [r5, r0]
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	blt _0808BC6C
_0808BBCA:
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	movs r1, #2
	ldrsb r1, [r5, r1]
	subs r1, r0, r1
	adds r2, r1, #0
	adds r2, #8
	ldr r0, [r4]
	asrs r3, r0, #8
	cmp r3, r2
	bgt _0808BBEC
	lsls r1, r1, #8
	b _0808BC08
_0808BBEC:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	movs r1, #0
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	adds r2, r0, #0
	subs r2, #8
	cmp r3, r2
	blt _0808BC6C
	lsls r1, r0, #8
_0808BC08:
	str r1, [r4]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r0, #9
	asrs r1, r1, #8
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r2, [r5]
	movs r7, #0
	str r7, [sp]
	ldr r6, _0808BC68 @ =sa2__sub_801EE64
	str r6, [sp, #4]
	movs r3, #8
	bl sa2__sub_801E4E4
	cmp r0, #0
	bge _0808BC32
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_0808BC32:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrb r2, [r5]
	movs r3, #8
	rsbs r3, r3, #0
	str r7, [sp]
	str r6, [sp, #4]
	bl sa2__sub_801E4E4
	cmp r0, #0
	bge _0808BC54
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_0808BC54:
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #0x18
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #1
	b _0808BC6E
	.align 2, 0
_0808BC68: .4byte sa2__sub_801EE64
_0808BC6C:
	movs r0, #0
_0808BC6E:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_MovingSpring
TaskDestructor_MovingSpring: @ 0x0808BC7C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
