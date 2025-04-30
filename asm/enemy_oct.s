.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

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
	ldr r1, _080701D0 @ =TaskDestructor_EntityShared
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
_080701D0: .4byte TaskDestructor_EntityShared
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
	bl Coll_Player_Enemy_Attack
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
	ldr r1, _0807032C @ =gPlayer
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
_0807032C: .4byte gPlayer
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
	bl Coll_Player_Enemy_Attack
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
	bl Coll_Player_Enemy_Attack
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
	bl Coll_Player_Enemy_Attack
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
