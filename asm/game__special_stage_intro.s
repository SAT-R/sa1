.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_8069100
Task_8069100: @ 0x08069100
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0806927C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r0, [r6, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r6, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r6, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #8]
	movs r1, #0x1c
	ldrsh r0, [r6, r1]
	adds r0, #1
	mov sb, r0
	cmp r0, #1
	beq _0806913E
	b _080692C0
_0806913E:
	ldr r0, _08069280 @ =Task_8069634
	ldr r7, _08069284 @ =0x00002120
	movs r2, #0
	str r2, [sp]
	movs r1, #0x44
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r4, r1, r3
	ldr r0, _08069288 @ =0x06013820
	str r0, [r4, #4]
	ldr r0, _0806928C @ =0x000002FD
	strh r0, [r4, #0xa]
	ldr r2, _08069290 @ =0x03000020
	adds r0, r1, r2
	movs r3, #0
	strb r3, [r0]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r2, #0xb4
	strh r2, [r4, #0x18]
	movs r3, #0
	strh r3, [r4, #0x1a]
	strh r3, [r4, #8]
	strh r3, [r4, #0x14]
	strh r3, [r4, #0x1c]
	ldr r0, _08069294 @ =0x03000021
	adds r2, r1, r0
	movs r0, #0xff
	strb r0, [r2]
	ldr r2, _08069298 @ =0x03000022
	adds r0, r1, r2
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _0806929C @ =0x03000025
	adds r1, r1, r0
	movs r2, #0
	strb r2, [r1]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r2, _080692A0 @ =0xFFFFFF00
	str r2, [r4, #0x3c]
	mov r3, sl
	ldr r0, [r3, #0x40]
	ldr r1, _080692A4 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x40]
	movs r2, #0
	str r2, [r4, #0x34]
	ldr r0, [r3, #0x38]
	movs r3, #0xa0
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r4, #0x38]
	ldr r0, _080692A8 @ =Task_strc44_806959C
	str r2, [sp]
	movs r1, #0x44
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	str r0, [r6, #0x10]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r0, _080692AC @ =0x06010AA0
	str r0, [r7, #4]
	ldr r3, _080692B0 @ =gUnknown_0868B5C4
	ldr r5, _080692B4 @ =gSelectedCharacter
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #2
	ldr r0, _080692B8 @ =gUnknown_08487134
	mov r8, r0
	ldr r4, _080692BC @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r4, r0]
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	strh r0, [r7, #0xa]
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #2
	movs r0, #0
	ldrsb r0, [r4, r0]
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r3, #2
	adds r1, r1, r3
	ldrh r1, [r1]
	ldr r3, _08069290 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r1, #0xb4
	strh r1, [r7, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7, #0x1a]
	movs r3, #0
	strh r3, [r7, #8]
	strh r3, [r7, #0x14]
	strh r3, [r7, #0x1c]
	ldr r0, _08069294 @ =0x03000021
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08069298 @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _0806929C @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r0, #0
	str r0, [r7, #0x30]
	ldr r1, _080692A0 @ =0xFFFFFF00
	str r1, [r7, #0x3c]
	mov r2, sl
	ldr r0, [r2, #0x40]
	str r0, [r7, #0x40]
	movs r3, #0
	str r3, [r7, #0x34]
	ldr r0, [r2, #0x38]
	str r0, [r7, #0x38]
	b _080692CA
	.align 2, 0
_0806927C: .4byte gCurTask
_08069280: .4byte Task_8069634
_08069284: .4byte 0x00002120
_08069288: .4byte 0x06013820
_0806928C: .4byte 0x000002FD
_08069290: .4byte 0x03000020
_08069294: .4byte 0x03000021
_08069298: .4byte 0x03000022
_0806929C: .4byte 0x03000025
_080692A0: .4byte 0xFFFFFF00
_080692A4: .4byte 0xFFFFF800
_080692A8: .4byte Task_strc44_806959C
_080692AC: .4byte 0x06010AA0
_080692B0: .4byte gUnknown_0868B5C4
_080692B4: .4byte gSelectedCharacter
_080692B8: .4byte gUnknown_08487134
_080692BC: .4byte gCurrentLevel
_080692C0:
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
_080692CA:
	mov r2, sb
	cmp r2, #7
	bls _080692F6
	ldr r3, [sp, #8]
	ldr r2, [r3, #0x38]
	ldr r0, _08069364 @ =0x000063FF
	cmp r2, r0
	ble _080692F6
	ldr r1, _08069368 @ =0xFFFFFF00
	adds r0, r2, r1
	str r0, [r3, #0x38]
	ldr r2, [sp, #4]
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x38]
	mov r3, sl
	ldr r0, [r3, #0x38]
	adds r0, r0, r1
	str r0, [r3, #0x38]
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
_080692F6:
	mov r0, sb
	cmp r0, #1
	bne _08069320
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r2, [sp, #8]
	str r0, [r2, #0x38]
	ldr r3, [sp, #4]
	ldr r0, [r3, #0x38]
	adds r0, r0, r1
	str r0, [r3, #0x38]
	mov r2, sl
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x38]
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
_08069320:
	adds r0, r6, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08069388
	movs r3, #4
	ldrsh r0, [r6, r3]
	cmp r0, #4
	bne _08069388
	adds r1, r6, #0
	adds r1, #0x24
	ldrb r0, [r1]
	cmp r0, #0xa
	bls _08069384
	ldr r1, _0806936C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08069370 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08069374 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08069378 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0806937C @ =gVramGraphicsCopyCursor
	ldr r0, _08069380 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #1
	bl sub_805D048
	b _080693BE
	.align 2, 0
_08069364: .4byte 0x000063FF
_08069368: .4byte 0xFFFFFF00
_0806936C: .4byte 0x0000FFFF
_08069370: .4byte gBackgroundsCopyQueueCursor
_08069374: .4byte gBackgroundsCopyQueueIndex
_08069378: .4byte sa2__gUnknown_03005390
_0806937C: .4byte gVramGraphicsCopyCursor
_08069380: .4byte gVramGraphicsCopyQueueIndex
_08069384:
	adds r0, #1
	strb r0, [r1]
_08069388:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r4, #0x94
	lsls r4, r4, #1
	adds r1, r4, #0
	bl Div
	movs r1, #0x96
	lsls r1, r1, #1
	subs r1, r1, r0
	cmp r1, sb
	bne _080693B4
	movs r1, #0
	strh r1, [r6]
	movs r2, #1
	movs r0, #1
	strh r0, [r6, #2]
	movs r0, #4
	strh r0, [r6, #4]
	strh r1, [r6, #6]
	strh r4, [r6, #8]
	strb r2, [r6, #0xa]
_080693B4:
	mov r0, sb
	strh r0, [r6, #0x1c]
	mov r1, sb
	mov r2, sl
	str r1, [r2, #0x30]
_080693BE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_80693D0
Task_80693D0: @ 0x080693D0
	push {r4, r5, lr}
	ldr r0, _08069448 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	adds r5, r3, #0
	ldr r0, [r3, #0x30]
	cmp r0, #0
	bne _0806941A
	ldr r1, _0806944C @ =gUnknown_0868B634
	ldr r2, _08069450 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _08069454 @ =0x03000020
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08069458 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r3, #0x38]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r3, #0x38]
_0806941A:
	ldr r0, [r3, #0x40]
	ldr r2, _0806945C @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r3, #0x40]
	ldr r1, _08069460 @ =0xFFFF9C00
	cmp r0, r1
	bge _0806942A
	str r1, [r3, #0x40]
_0806942A:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	strh r0, [r5, #0x16]
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069448: .4byte gCurTask
_0806944C: .4byte gUnknown_0868B634
_08069450: .4byte gSelectedCharacter
_08069454: .4byte 0x03000020
_08069458: .4byte 0x03000021
_0806945C: .4byte 0xFFFFFF00
_08069460: .4byte 0xFFFF9C00

	thumb_func_start sub_8069464
sub_8069464: @ 0x08069464
	push {r4, r5, lr}
	ldr r0, _080694D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r5, r0
	adds r4, r3, #0
	ldr r0, [r3, #0x30]
	cmp r0, #0
	bne _080694AA
	ldr r1, _080694D8 @ =gUnknown_0868B644
	ldr r2, _080694DC @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _080694E0 @ =0x03000020
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _080694E4 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r3, #0x38]
_080694AA:
	ldr r2, [r4, #0x40]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x40]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #8
	strh r2, [r4, #0x16]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080694D4: .4byte gCurTask
_080694D8: .4byte gUnknown_0868B644
_080694DC: .4byte gSelectedCharacter
_080694E0: .4byte 0x03000020
_080694E4: .4byte 0x03000021

	thumb_func_start Task_80694E8
Task_80694E8: @ 0x080694E8
	push {r4, r5, r6, r7, lr}
	ldr r7, _08069530 @ =gCurTask
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	adds r4, r0, #1
	adds r0, r5, #0
	bl sub_805423C
	cmp r4, #0x8c
	bne _08069512
	ldr r1, [r5, #0xc]
	ldr r0, _08069534 @ =Task_8069550
	str r0, [r1, #8]
_08069512:
	cmp r4, #0xa1
	bls _08069540
	movs r0, #0x2d
	bl m4aSongNumStart
	movs r4, #0
	strh r4, [r5, #0x1c]
	str r4, [r6, #0x30]
	ldr r1, [r5, #0xc]
	ldr r0, _08069538 @ =Task_80693D0
	str r0, [r1, #8]
	ldr r1, [r7]
	ldr r0, _0806953C @ =Task_8069100
	str r0, [r1, #8]
	b _08069544
	.align 2, 0
_08069530: .4byte gCurTask
_08069534: .4byte Task_8069550
_08069538: .4byte Task_80693D0
_0806953C: .4byte Task_8069100
_08069540:
	strh r4, [r5, #0x1c]
	str r4, [r6, #0x30]
_08069544:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_nullsub_806954C
Task_nullsub_806954C: @ 0x0806954C
	bx lr
	.align 2, 0

	thumb_func_start Task_8069550
Task_8069550: @ 0x08069550
	push {r4, lr}
	ldr r0, _08069594 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	adds r4, r1, #0
	ldr r0, [r1, #0x38]
	movs r2, #0x94
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1, #0x38]
	movs r2, #0xa0
	lsls r2, r2, #7
	cmp r0, r2
	ble _08069574
	str r2, [r1, #0x38]
_08069574:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08069594: .4byte gCurTask

	thumb_func_start sub_8069598
sub_8069598: @ 0x08069598
	bx lr
	.align 2, 0

	thumb_func_start Task_strc44_806959C
Task_strc44_806959C: @ 0x0806959C
	push {r4, lr}
	ldr r0, _080695DC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	adds r4, r1, #0
	ldr r0, [r1, #0x40]
	ldr r2, _080695E0 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1, #0x40]
	ldr r2, _080695E4 @ =0xFFFF9C00
	cmp r0, r2
	bge _080695BC
	str r2, [r1, #0x40]
_080695BC:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080695DC: .4byte gCurTask
_080695E0: .4byte 0xFFFFFF00
_080695E4: .4byte 0xFFFF9C00

@ inline ?
	thumb_func_start sub_80695E8
sub_80695E8: @ 0x080695E8
	push {r4, lr}
	ldr r0, _08069628 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	adds r4, r1, #0
	ldr r0, [r1, #0x40]
	ldr r2, _0806962C @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1, #0x40]
	ldr r2, _08069630 @ =0xFFFF9C00
	cmp r0, r2
	bge _08069608
	str r2, [r1, #0x40]
_08069608:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08069628: .4byte gCurTask
_0806962C: .4byte 0xFFFFFF00
_08069630: .4byte 0xFFFF9C00

	thumb_func_start Task_8069634
Task_8069634: @ 0x08069634
	push {r4, r5, lr}
	ldr r5, _08069660 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _08069664
	ldr r0, [r5]
	bl TaskDestroy
	b _08069682
	.align 2, 0
_08069660: .4byte gCurTask
_08069664:
	ldr r0, [r4, #0x10]
	ldr r1, _08069688 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
_08069682:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069688: .4byte 0xFFFFFBFF
