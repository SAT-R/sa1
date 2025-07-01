.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_809141C
Task_809141C: @ 0x0809141C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080914C0 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r1, _080914C4 @ =0x0300000C
	adds r7, r6, r1
	ldr r2, _080914C8 @ =0x03000040
	adds r0, r6, r2
	ldr r4, _080914CC @ =gCamera
	ldrh r2, [r0]
	ldrh r0, [r4]
	subs r2, r2, r0
	ldr r3, _080914D0 @ =gSineTable
	ldrh r1, [r5, #0x3e]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r1, _080914D4 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1b
	adds r2, r2, r0
	strh r2, [r7, #0x16]
	ldr r0, _080914D8 @ =0x03000042
	adds r3, r6, r0
	ldrh r1, [r3]
	ldrh r0, [r4, #2]
	subs r1, r1, r0
	ldrh r0, [r5, #0x3e]
	lsrs r0, r0, #1
	subs r1, r1, r0
	strh r1, [r7, #0x18]
	adds r2, #0x80
	lsls r2, r2, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	mov r4, ip
	cmp r2, r0
	bhi _080914B6
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _080914B6
	lsls r1, r1, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	bgt _080914B6
	ldr r0, _080914DC @ =0x0300003D
	adds r1, r6, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _080914B6
	ldr r2, _080914E0 @ =gWater
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _080914B6
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldrh r1, [r5, #0x3e]
	lsrs r1, r1, #1
	subs r0, r0, r1
	movs r3, #2
	ldrsh r1, [r2, r3]
	cmp r0, r1
	bge _080914E4
_080914B6:
	ldr r0, [r4]
	bl TaskDestroy
	b _080914F0
	.align 2, 0
_080914C0: .4byte gCurTask
_080914C4: .4byte 0x0300000C
_080914C8: .4byte 0x03000040
_080914CC: .4byte gCamera
_080914D0: .4byte gSineTable
_080914D4: .4byte 0x000003FF
_080914D8: .4byte 0x03000042
_080914DC: .4byte 0x0300003D
_080914E0: .4byte gWater
_080914E4:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_080914F0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80914F8
sub_80914F8: @ 0x080914F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08091574 @ =sub_80915F0
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08091578 @ =TaskDestructor_AirBubbleBig
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r7, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r7, r2
	ldr r0, _0809157C @ =0x0300000C
	adds r0, r0, r7
	mov ip, r0
	movs r0, #0xf
	ands r0, r6
	ldr r3, _08091580 @ =0x0300003C
	adds r1, r7, r3
	movs r3, #0
	strb r0, [r1]
	movs r0, #0
	mov r8, r0
	strh r3, [r2, #0x3e]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	ldr r2, _08091584 @ =0x03000040
	adds r1, r7, r2
	strh r0, [r1]
	ldr r3, _08091588 @ =0x03000042
	adds r0, r7, r3
	strh r5, [r0]
	mov r0, ip
	strh r4, [r0, #0x16]
	strh r5, [r0, #0x18]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08091594
	ldr r0, _0809158C @ =0x06012AA0
	mov r1, ip
	str r0, [r1, #4]
	ldr r0, _08091590 @ =0x000002F2
	strh r0, [r1, #0xa]
	subs r2, #0x14
	b _080915A0
	.align 2, 0
_08091574: .4byte sub_80915F0
_08091578: .4byte TaskDestructor_AirBubbleBig
_0809157C: .4byte 0x0300000C
_08091580: .4byte 0x0300003C
_08091584: .4byte 0x03000040
_08091588: .4byte 0x03000042
_0809158C: .4byte 0x06012AA0
_08091590: .4byte 0x000002F2
_08091594:
	ldr r0, _080915E4 @ =0x06012A20
	mov r1, ip
	str r0, [r1, #4]
	ldr r0, _080915E8 @ =0x000002F1
	strh r0, [r1, #0xa]
	ldr r2, _080915EC @ =0x0300002C
_080915A0:
	adds r0, r7, r2
	mov r3, r8
	strb r3, [r0]
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	mov r3, ip
	strh r0, [r3, #0x1a]
	strh r1, [r3, #8]
	strh r1, [r3, #0x14]
	strh r1, [r3, #0x1c]
	mov r1, ip
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r3, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080915E4: .4byte 0x06012A20
_080915E8: .4byte 0x000002F1
_080915EC: .4byte 0x0300002C

	thumb_func_start sub_80915F0
sub_80915F0: @ 0x080915F0
	push {r4, r5, r6, r7, lr}
	ldr r0, _0809168C @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r1, _08091690 @ =0x0300000C
	adds r7, r3, r1
	ldr r2, _08091694 @ =0x03000040
	adds r0, r3, r2
	ldr r5, _08091698 @ =gCamera
	ldrh r2, [r0]
	ldrh r0, [r5]
	subs r2, r2, r0
	ldr r4, _0809169C @ =gSineTable
	ldrh r1, [r6, #0x3e]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r1, _080916A0 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1b
	ldr r4, _080916A4 @ =0x0300003C
	adds r1, r3, r4
	adds r2, r2, r0
	ldrb r1, [r1]
	adds r2, r2, r1
	strh r2, [r7, #0x16]
	ldr r0, _080916A8 @ =0x03000042
	adds r3, r3, r0
	ldrh r1, [r3]
	ldrh r0, [r5, #2]
	subs r1, r1, r0
	ldrh r0, [r6, #0x3e]
	lsrs r0, r0, #1
	subs r1, r1, r0
	strh r1, [r7, #0x18]
	adds r2, #0x80
	lsls r2, r2, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	mov r5, ip
	cmp r2, r0
	bhi _08091682
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08091682
	lsls r1, r1, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	bgt _08091682
	ldr r4, _080916AC @ =gWater
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08091682
	movs r2, #0
	ldrsh r0, [r3, r2]
	ldrh r2, [r6, #0x3e]
	lsrs r1, r2, #1
	subs r0, r0, r1
	movs r3, #2
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bge _080916B0
_08091682:
	ldr r0, [r5]
	bl TaskDestroy
	b _080916C0
	.align 2, 0
_0809168C: .4byte gCurTask
_08091690: .4byte 0x0300000C
_08091694: .4byte 0x03000040
_08091698: .4byte gCamera
_0809169C: .4byte gSineTable
_080916A0: .4byte 0x000003FF
_080916A4: .4byte 0x0300003C
_080916A8: .4byte 0x03000042
_080916AC: .4byte gWater
_080916B0:
	adds r0, r2, #1
	strh r0, [r6, #0x3e]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_080916C0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_AirBubbles
TaskDestructor_AirBubbles: @ 0x080916C8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_AirBubbleBig
TaskDestructor_AirBubbleBig: @ 0x080916DC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r2, _080916FC @ =0x0300003C
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #4
	bne _080916F6
	ldr r0, [r1, #0x10]
	bl VramFree
_080916F6:
	pop {r0}
	bx r0
	.align 2, 0
_080916FC: .4byte 0x0300003C
