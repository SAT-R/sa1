.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Player_804A20C
Player_804A20C: @ 0x0804A20C
	push {r4, r5, lr}
	ldr r2, [r0, #0x64]
	adds r4, r2, #0
	adds r4, #0xc
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	ldr r1, _0804A250 @ =gUnknown_084AE1B0
	adds r1, r0, r1
	ldrh r3, [r1]
	ldrh r0, [r4, #0xa]
	cmp r0, r3
	bne _0804A236
	adds r0, r2, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	ldrb r5, [r1, #2]
	cmp r0, r5
	beq _0804A248
_0804A236:
	strh r3, [r4, #0xa]
	ldrb r1, [r1, #2]
	adds r0, r2, #0
	adds r0, #0x2c
	strb r1, [r0]
	adds r1, r2, #0
	adds r1, #0x2d
	movs r0, #0xff
	strb r0, [r1]
_0804A248:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A250: .4byte gUnknown_084AE1B0

	thumb_func_start Player_804A254
Player_804A254: @ 0x0804A254
	adds r3, r0, #0
	ldrh r2, [r3, #0x38]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	bne _0804A26A
	ldr r0, _0804A274 @ =gInput
	ldrh r0, [r0]
	strh r0, [r3, #0x38]
_0804A26A:
	ldrh r0, [r3, #0x38]
	eors r2, r0
	ands r2, r0
	strh r2, [r3, #0x3a]
	bx lr
	.align 2, 0
_0804A274: .4byte gInput

	thumb_func_start sub_804A278
sub_804A278: @ 0x0804A278
	push {lr}
	adds r2, r0, #0
	ldr r0, _0804A2A8 @ =gPlayerControls
	ldrh r1, [r2, #0x3a]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0804A2B0
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	adds r1, #0xfe
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r1, _0804A2AC @ =0xFFFFFBC0
	adds r0, r1, #0
	ldrh r1, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r2, #0xa]
	movs r0, #0x74
	bl m4aSongNumStart
	movs r0, #1
	b _0804A2B2
	.align 2, 0
_0804A2A8: .4byte gPlayerControls
_0804A2AC: .4byte 0xFFFFFBC0
_0804A2B0:
	movs r0, #0
_0804A2B2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_804A2B8
sub_804A2B8: @ 0x0804A2B8
	adds r2, r0, #0
	ldrh r0, [r2, #0x38]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0x10
	beq _0804A2E4
	cmp r1, #0x20
	bne _0804A2F8
	ldrh r0, [r2, #8]
	subs r0, #0x48
	strh r0, [r2, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0804A2E0 @ =0xFFFFFE00
	cmp r0, r1
	bge _0804A2F8
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r2, #8]
	b _0804A2F8
	.align 2, 0
_0804A2E0: .4byte 0xFFFFFE00
_0804A2E4:
	ldrh r0, [r2, #8]
	adds r0, #0x48
	strh r0, [r2, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _0804A2F8
	strh r1, [r2, #8]
_0804A2F8:
	bx lr
	.align 2, 0

	thumb_func_start sub_804A2FC
sub_804A2FC: @ 0x0804A2FC
	adds r2, r0, #0
	ldrh r0, [r2, #0xc]
	adds r1, r0, #0
	subs r1, #0x40
	movs r3, #0
	strh r1, [r2, #0xc]
	lsls r0, r1, #0x10
	cmp r0, #0
	bgt _0804A31C
	adds r1, r2, #0
	adds r1, #0x3e
	movs r0, #0
	strb r0, [r1]
	strh r3, [r2, #8]
	strh r3, [r2, #0xa]
	b _0804A31E
_0804A31C:
	strh r1, [r2, #8]
_0804A31E:
	bx lr

	thumb_func_start sub_804A320
sub_804A320: @ 0x0804A320
	adds r2, r0, #0
	ldr r0, _0804A34C @ =gPlayerControls
	ldrh r1, [r2, #0x38]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0804A34A
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804A34A
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	adds r3, r0, #0
	ldr r1, _0804A350 @ =0xFFFFFE80
	cmp r0, r1
	bge _0804A348
	adds r3, r1, #0
_0804A348:
	strh r3, [r2, #0xa]
_0804A34A:
	bx lr
	.align 2, 0
_0804A34C: .4byte gPlayerControls
_0804A350: .4byte 0xFFFFFE80

	thumb_func_start sub_804A354
sub_804A354: @ 0x0804A354
	ldrh r1, [r0, #0xc]
	strh r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_804A35C
sub_804A35C: @ 0x0804A35C
	movs r1, #0x14
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bge _0804A36C
	adds r1, #2
	cmp r1, #0
	ble _0804A378
	b _0804A376
_0804A36C:
	cmp r1, #0
	ble _0804A378
	subs r1, #2
	cmp r1, #0
	bge _0804A378
_0804A376:
	movs r1, #0
_0804A378:
	strb r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_804A37C
sub_804A37C: @ 0x0804A37C
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [r3]
	adds r4, r2, #0
	cmp r2, #0
	blt _0804A396
	adds r0, r2, #0
	movs r1, #0xf0
	lsls r1, r1, #9
	cmp r0, r1
	ble _0804A398
	adds r0, r1, #0
	b _0804A398
_0804A396:
	movs r0, #0
_0804A398:
	adds r2, r0, #0
	cmp r2, r4
	beq _0804A3AE
	ldr r1, [r3, #0x10]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0804A3AA
	strh r1, [r3, #0xc]
_0804A3AA:
	movs r0, #0
	strh r0, [r3, #8]
_0804A3AE:
	str r2, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804A3B8
sub_804A3B8: @ 0x0804A3B8
	ldrh r1, [r0, #0xa]
	adds r1, #0x20
	strh r1, [r0, #0xa]
	bx lr

	thumb_func_start sub_804A3C0
sub_804A3C0: @ 0x0804A3C0
	push {r4, r5, r6, lr}
	ldr r0, _0804A404 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0x18
	adds r4, r1, r0
	ldr r5, _0804A408 @ =gPlayer
	ldr r6, _0804A40C @ =gCamera
	ldr r0, [r5]
	str r0, [r3, #0x50]
	ldr r0, [r5, #4]
	str r0, [r3, #0x54]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804A3FA
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _0804A410
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804A410
_0804A3FA:
	adds r0, r2, #0
	bl TaskDestroy
	b _0804A48E
	.align 2, 0
_0804A404: .4byte gCurTask
_0804A408: .4byte gPlayer
_0804A40C: .4byte gCamera
_0804A410:
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0804A42A
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _0804A43A
_0804A42A:
	movs r0, #1
	strb r0, [r3, #2]
	movs r1, #0xc8
	lsls r1, r1, #1
	strh r1, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x20
	strb r0, [r1]
_0804A43A:
	ldr r2, [r3, #0x50]
	asrs r2, r2, #8
	movs r1, #0
	ldrsh r0, [r6, r1]
	subs r2, r2, r0
	ldr r0, [r3, #0x54]
	asrs r0, r0, #8
	movs r3, #2
	ldrsh r1, [r6, r3]
	subs r0, r0, r1
	strh r2, [r4, #0x16]
	strh r0, [r4, #0x18]
	ldr r0, _0804A46C @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804A474
	ldr r0, [r4, #0x10]
	ldr r1, _0804A470 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	b _0804A47E
	.align 2, 0
_0804A46C: .4byte gStageTime
_0804A470: .4byte 0xFFFFCFFF
_0804A474:
	ldr r0, [r4, #0x10]
	ldr r1, _0804A494 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
_0804A47E:
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0804A48E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804A494: .4byte 0xFFFFCFFF

	thumb_func_start sub_804A498
sub_804A498: @ 0x0804A498
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0804A4C8 @ =gUnknown_03005C74
	ldr r0, [r1]
	cmp r0, #0
	ble _0804A522
	subs r0, #1
	str r0, [r1]
	cmp r2, #0
	beq _0804A4D8
	ldr r1, _0804A4CC @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _0804A4D0 @ =0x00000307
	orrs r0, r1
	ldr r1, _0804A4D4 @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	b _0804A4E6
	.align 2, 0
_0804A4C8: .4byte gUnknown_03005C74
_0804A4CC: .4byte 0xFFFF0000
_0804A4D0: .4byte 0x00000307
_0804A4D4: .4byte 0xFF00FFFF
_0804A4D8:
	ldr r1, _0804A52C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _0804A530 @ =0x00000307
	orrs r0, r1
	ldr r1, _0804A534 @ =0xFF00FFFF
	ands r0, r1
_0804A4E6:
	str r0, [sp]
	movs r0, #4
	bl VramMalloc
	str r0, [sp, #4]
	ldr r1, _0804A538 @ =Task_804A54C
	ldr r2, _0804A53C @ =TaskDestructor_804A830
	mov r0, sp
	bl CreateSomeTaskManager_60_Task
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r1, r2
	str r4, [r2, #0x50]
	str r5, [r2, #0x54]
	ldr r0, _0804A540 @ =0x03000058
	adds r3, r1, r0
	movs r0, #0
	strh r0, [r3]
	ldr r0, _0804A544 @ =0x0300005C
	adds r1, r1, r0
	ldr r0, _0804A548 @ =0x0000FFC0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2, #0x32]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r2, #0x28]
_0804A522:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A52C: .4byte 0xFFFF0000
_0804A530: .4byte 0x00000307
_0804A534: .4byte 0xFF00FFFF
_0804A538: .4byte Task_804A54C
_0804A53C: .4byte TaskDestructor_804A830
_0804A540: .4byte 0x03000058
_0804A544: .4byte 0x0300005C
_0804A548: .4byte 0x0000FFC0

	thumb_func_start Task_804A54C
Task_804A54C: @ 0x0804A54C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804A594 @ =gCurTask
	ldr r0, [r0]
	mov ip, r0
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	adds r0, #0x18
	adds r4, r6, r0
	ldr r2, _0804A598 @ =gCamera
	ldr r0, [r5, #0x50]
	asrs r0, r0, #8
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r3, r0, r1
	ldr r0, [r5, #0x54]
	asrs r0, r0, #8
	movs r7, #2
	ldrsh r1, [r2, r7]
	subs r2, r0, r1
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0804A58C
	adds r1, r3, #0
	adds r1, #0x10
	ldr r0, _0804A59C @ =0x0000010F
	cmp r1, r0
	bls _0804A5A0
_0804A58C:
	mov r0, ip
	bl TaskDestroy
	b _0804A5CA
	.align 2, 0
_0804A594: .4byte gCurTask
_0804A598: .4byte gCamera
_0804A59C: .4byte 0x0000010F
_0804A5A0:
	strh r3, [r4, #0x16]
	strh r2, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _0804A5D0 @ =0x03000058
	adds r1, r6, r0
	movs r3, #0
	ldrsh r2, [r1, r3]
	ldr r0, [r5, #0x50]
	adds r0, r0, r2
	str r0, [r5, #0x50]
	ldr r7, _0804A5D4 @ =0x0300005C
	adds r0, r6, r7
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_0804A5CA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A5D0: .4byte 0x03000058
_0804A5D4: .4byte 0x0300005C

	thumb_func_start sub_804A5D8
sub_804A5D8: @ 0x0804A5D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, [sp]
	ldr r1, _0804A708 @ =0xFFFF0000
	ands r0, r1
	ldr r2, _0804A70C @ =0x000002CF
	mov sb, r2
	orrs r0, r2
	ldr r1, _0804A710 @ =0xFF00FFFF
	mov sl, r1
	ands r0, r1
	str r0, [sp]
	movs r0, #0x10
	bl VramMalloc
	str r0, [sp, #4]
	mov r0, sp
	ldr r1, _0804A714 @ =Task_804A71C
	ldr r2, _0804A718 @ =TaskDestructor_SomeTaskManager_60_Common
	bl CreateSomeTaskManager_60_Task
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	mov r8, r2
	adds r1, r0, r2
	movs r5, #0
	strh r5, [r1]
	str r7, [r1, #0x50]
	str r6, [r1, #0x54]
	strh r5, [r1, #0x32]
	str r5, [r1, #0x28]
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x10]
	ldr r0, [sp, #8]
	ldr r1, _0804A708 @ =0xFFFF0000
	ands r0, r1
	mov r2, sb
	orrs r0, r2
	mov r1, sl
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	add r0, sp, #8
	str r1, [r0, #4]
	ldr r1, _0804A714 @ =Task_804A71C
	ldr r2, _0804A718 @ =TaskDestructor_SomeTaskManager_60_Common
	bl CreateSomeTaskManager_60_Task
	ldrh r0, [r0, #6]
	mov r2, r8
	adds r1, r0, r2
	movs r0, #1
	strh r0, [r1]
	str r7, [r1, #0x50]
	str r6, [r1, #0x54]
	strh r5, [r1, #0x32]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r1, #0x28]
	ldr r0, [sp, #0x10]
	ldr r1, _0804A708 @ =0xFFFF0000
	ands r0, r1
	mov r2, sb
	orrs r0, r2
	mov r1, sl
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [sp, #0x10]
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	add r0, sp, #0x10
	str r1, [r0, #4]
	ldr r1, _0804A714 @ =Task_804A71C
	ldr r2, _0804A718 @ =TaskDestructor_SomeTaskManager_60_Common
	bl CreateSomeTaskManager_60_Task
	ldrh r0, [r0, #6]
	mov r2, r8
	adds r1, r0, r2
	movs r0, #2
	strh r0, [r1]
	str r7, [r1, #0x50]
	str r6, [r1, #0x54]
	strh r5, [r1, #0x32]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r1, #0x28]
	ldr r0, [sp, #0x18]
	ldr r1, _0804A708 @ =0xFFFF0000
	ands r0, r1
	mov r2, sb
	orrs r0, r2
	mov r1, sl
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [sp, #0x18]
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	add r0, sp, #0x18
	str r1, [r0, #4]
	ldr r1, _0804A714 @ =Task_804A71C
	ldr r2, _0804A718 @ =TaskDestructor_SomeTaskManager_60_Common
	bl CreateSomeTaskManager_60_Task
	ldrh r0, [r0, #6]
	mov r2, r8
	adds r1, r0, r2
	movs r0, #3
	strh r0, [r1]
	str r7, [r1, #0x50]
	str r6, [r1, #0x54]
	strh r5, [r1, #0x32]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r1, #0x28]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A708: .4byte 0xFFFF0000
_0804A70C: .4byte 0x000002CF
_0804A710: .4byte 0xFF00FFFF
_0804A714: .4byte Task_804A71C
_0804A718: .4byte TaskDestructor_SomeTaskManager_60_Common

	thumb_func_start Task_804A71C
Task_804A71C: @ 0x0804A71C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804A73C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x18
	adds r6, r1, r0
	ldr r0, [r5, #4]
	cmp r0, #0xbf
	ble _0804A740
	adds r0, r2, #0
	bl TaskDestroy
	b _0804A824
	.align 2, 0
_0804A73C: .4byte gCurTask
_0804A740:
	cmp r0, #0x80
	bne _0804A758
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0804A758
	ldr r0, _0804A784 @ =gExtraBossTaskData
	ldr r2, [r0]
	ldr r0, [r2, #0x58]
	ldr r1, _0804A788 @ =0xFFBFFFFF
	ands r0, r1         @ ~SER_FLAG__400000
	str r0, [r2, #0x58]
_0804A758:
	ldr r0, [r5, #0x50]
	asrs r7, r0, #8
	ldr r0, [r5, #0x54]
	asrs r3, r0, #8
	ldr r0, [r5, #4]
	movs r1, #0x1f
	ands r0, r1
	lsls r1, r0, #0xb
	cmp r1, #0
	beq _0804A7CC
	ldr r0, _0804A78C @ =0x00003FFF
	cmp r1, r0
	bgt _0804A794
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r0, _0804A790 @ =gSineTable
	lsrs r1, r1, #5
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	b _0804A7D2
	.align 2, 0
_0804A784: .4byte gExtraBossTaskData
_0804A788: .4byte 0xFFBFFFFF
_0804A78C: .4byte 0x00003FFF
_0804A790: .4byte gSineTable
_0804A794:
	ldr r0, _0804A7BC @ =0x0000DFFF
	cmp r1, r0
	ble _0804A7CC
	ldr r2, _0804A7C0 @ =0xFFFF2000
	adds r0, r1, r2
	lsls r0, r0, #1
	ldr r2, _0804A7C4 @ =gSineTable
	asrs r0, r0, #6
	ldr r1, _0804A7C8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, r1
	subs r0, r1, r0
	b _0804A7D2
	.align 2, 0
_0804A7BC: .4byte 0x0000DFFF
_0804A7C0: .4byte 0xFFFF2000
_0804A7C4: .4byte gSineTable
_0804A7C8: .4byte 0x000003FF
_0804A7CC:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r0, #0
_0804A7D2:
	cmp r2, #0
	bne _0804A7D8
	movs r2, #2
_0804A7D8:
	cmp r0, #0
	bne _0804A7DE
	movs r0, #2
_0804A7DE:
	adds r4, r5, #0
	adds r4, #0xc
	strh r7, [r4, #6]
	strh r3, [r4, #8]
	strh r2, [r4, #2]
	strh r0, [r4, #4]
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r2, _0804A82C @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x60
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r1, r4, #0
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r5, #4]
	adds r0, #1
	str r0, [r5, #4]
_0804A824:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A82C: .4byte sa2__gUnknown_030054B8

	thumb_func_start TaskDestructor_804A830
TaskDestructor_804A830: @ 0x0804A830
	push {lr}
	ldr r2, _0804A844 @ =gUnknown_03005C74
	ldr r1, [r2]
	adds r1, #1
	str r1, [r2]
	bl TaskDestructor_SomeTaskManager_60_Common
	pop {r0}
	bx r0
	.align 2, 0
_0804A844: .4byte gUnknown_03005C74

	thumb_func_start Set_3005C74_to_4
Set_3005C74_to_4: @ 0x0804A848
	ldr r1, _0804A850 @ =gUnknown_03005C74
	movs r0, #4
	str r0, [r1]
	bx lr
	.align 2, 0
_0804A850: .4byte gUnknown_03005C74

	thumb_func_start sub_804A854
sub_804A854: @ 0x0804A854
	push {lr}
	sub sp, #8
	ldr r1, _0804A898 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	movs r1, #0xc8
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, _0804A89C @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	movs r0, #0x28
	bl VramMalloc
	str r0, [sp, #4]
	ldr r1, _0804A8A0 @ =sub_804A3C0
	ldr r2, _0804A8A4 @ =TaskDestructor_SomeTaskManager_60_Common
	mov r0, sp
	bl CreateSomeTaskManager_60_Task
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1, #0x32]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r1, #0x28]
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0804A898: .4byte 0xFFFF0000
_0804A89C: .4byte 0xFF00FFFF
_0804A8A0: .4byte sub_804A3C0
_0804A8A4: .4byte TaskDestructor_SomeTaskManager_60_Common

	thumb_func_start sub_804A8A8
sub_804A8A8: @ 0x0804A8A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	cmp r2, #1
	beq _0804A8F0
	cmp r2, #1
	bgt _0804A8C6
	cmp r2, #0
	beq _0804A8CE
	b _0804A928
_0804A8C6:
	mov r0, r8
	cmp r0, #2
	beq _0804A914
	b _0804A928
_0804A8CE:
	ldr r1, _0804A8E4 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	movs r1, #0xa9
	lsls r1, r1, #2
	orrs r0, r1
	ldr r1, _0804A8E8 @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _0804A8EC @ =0x06012E80
	b _0804A926
	.align 2, 0
_0804A8E4: .4byte 0xFFFF0000
_0804A8E8: .4byte 0xFF00FFFF
_0804A8EC: .4byte 0x06012E80
_0804A8F0:
	ldr r1, _0804A904 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _0804A908 @ =0x000002A5
	orrs r0, r1
	ldr r1, _0804A90C @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _0804A910 @ =0x06013080
	b _0804A926
	.align 2, 0
_0804A904: .4byte 0xFFFF0000
_0804A908: .4byte 0x000002A5
_0804A90C: .4byte 0xFF00FFFF
_0804A910: .4byte 0x06013080
_0804A914:
	ldr r1, _0804A97C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _0804A980 @ =0x000002A6
	orrs r0, r1
	ldr r1, _0804A984 @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _0804A988 @ =0x06013100
_0804A926:
	str r0, [sp, #4]
_0804A928:
	ldr r1, _0804A98C @ =sub_804AAC4
	mov r0, sp
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov ip, r0
	mov r1, r8
	strh r1, [r0]
	str r4, [r0, #0x50]
	str r5, [r0, #0x54]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r4, r0
	bne _0804A9A0
	ldr r3, _0804A990 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r5, _0804A994 @ =0x00196225
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _0804A998 @ =0x3C6EF35F
	adds r2, r2, r4
	str r2, [r3]
	lsls r0, r2, #0xe
	lsrs r0, r0, #0x16
	rsbs r0, r0, #0
	ldr r6, _0804A99C @ =0x03000058
	adds r1, r7, r6
	strh r0, [r1]
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r3]
	movs r1, #0xff
	lsls r1, r1, #8
	ands r0, r1
	lsrs r0, r0, #8
	b _0804A9D4
	.align 2, 0
_0804A97C: .4byte 0xFFFF0000
_0804A980: .4byte 0x000002A6
_0804A984: .4byte 0xFF00FFFF
_0804A988: .4byte 0x06013100
_0804A98C: .4byte sub_804AAC4
_0804A990: .4byte gPseudoRandom
_0804A994: .4byte 0x00196225
_0804A998: .4byte 0x3C6EF35F
_0804A99C: .4byte 0x03000058
_0804A9A0:
	ldr r3, _0804AAA4 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r4, _0804AAA8 @ =0x00196225
	mov sb, r4
	mov r2, sb
	muls r2, r0, r2
	ldr r5, _0804AAAC @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r3]
	ldr r4, _0804AAB0 @ =0x0003FF00
	adds r0, r2, #0
	ands r0, r4
	lsrs r0, r0, #8
	ldr r6, _0804AAB4 @ =0xFFFFFD00
	adds r0, r0, r6
	ldr r6, _0804AAB8 @ =0x03000058
	adds r1, r7, r6
	strh r0, [r1]
	mov r0, sb
	muls r0, r2, r0
	adds r0, r0, r5
	str r0, [r3]
	ands r0, r4
	lsrs r0, r0, #8
	rsbs r0, r0, #0
	subs r0, #0x80
_0804A9D4:
	ldr r2, _0804AABC @ =0x0300005A
	adds r1, r7, r2
	strh r0, [r1]
	adds r7, r3, #0
	mov r3, r8
	cmp r3, #2
	bne _0804A9FA
	mov r0, ip
	adds r0, #0x58
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x12
	strh r1, [r0]
	mov r1, ip
	adds r1, #0x5a
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
_0804A9FA:
	mov r1, ip
	adds r1, #0x5e
	movs r0, #7
	strh r0, [r1]
	adds r4, r7, #0
	ldr r0, [r4]
	ldr r5, _0804AAA8 @ =0x00196225
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r6, _0804AAAC @ =0x3C6EF35F
	adds r1, r1, r6
	str r1, [r4]
	lsrs r2, r1, #8
	mov r0, ip
	adds r0, #0x70
	strh r2, [r0]
	adds r0, r1, #0
	muls r0, r5, r0
	adds r2, r0, r6
	str r2, [r4]
	lsls r0, r2, #0xb
	lsrs r0, r0, #0x13
	ldr r1, _0804AAC0 @ =0xFFFFF000
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x72
	strh r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #2
	mov r3, ip
	strh r0, [r3, #0x32]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #0x28]
	mov r0, r8
	cmp r0, #0
	bne _0804AA7C
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
	muls r2, r5, r2
	adds r2, r2, r6
	str r2, [r4]
	movs r0, #0xe
	ldrsh r1, [r3, r0]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r2, #0
	ands r0, r3
	lsrs r0, r0, #8
	subs r1, r1, r0
	mov r0, ip
	strh r1, [r0, #0xe]
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r6
	str r0, [r4]
	mov r2, ip
	movs r4, #0x10
	ldrsh r1, [r2, r4]
	ands r0, r3
	lsrs r0, r0, #8
	subs r1, r1, r0
	strh r1, [r2, #0x10]
_0804AA7C:
	ldr r0, [r7]
	muls r0, r5, r0
	adds r0, r0, r6
	str r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0804AA96
	mov r6, ip
	ldrh r0, [r6, #0x10]
	rsbs r0, r0, #0
	strh r0, [r6, #0x10]
_0804AA96:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AAA4: .4byte gPseudoRandom
_0804AAA8: .4byte 0x00196225
_0804AAAC: .4byte 0x3C6EF35F
_0804AAB0: .4byte 0x0003FF00
_0804AAB4: .4byte 0xFFFFFD00
_0804AAB8: .4byte 0x03000058
_0804AABC: .4byte 0x0300005A
_0804AAC0: .4byte 0xFFFFF000

	thumb_func_start sub_804AAC4
sub_804AAC4: @ 0x0804AAC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804AB18 @ =gCurTask
	ldr r3, [r0]
	ldrh r0, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	adds r1, #0x18
	adds r6, r0, r1
	subs r1, #0xc
	adds r7, r0, r1
	ldr r0, _0804AB1C @ =gExtraBossTaskData
	ldr r0, [r0]
	mov sb, r0
	ldr r0, _0804AB20 @ =gPlayer
	mov ip, r0
	ldr r1, _0804AB24 @ =gCamera
	mov r8, r1
	ldr r4, [r5, #0x50]
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r4, r0
	movs r0, #0x88
	lsls r0, r0, #0xa
	cmp r1, r0
	bhi _0804AB10
	ldr r2, [r5, #0x54]
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r2, r0
	movs r0, #0xb0
	lsls r0, r0, #9
	cmp r1, r0
	bls _0804AB28
_0804AB10:
	adds r0, r3, #0
	bl TaskDestroy
	b _0804AC38
	.align 2, 0
_0804AB18: .4byte gCurTask
_0804AB1C: .4byte gExtraBossTaskData
_0804AB20: .4byte gPlayer
_0804AB24: .4byte gCamera
_0804AB28:
	asrs r4, r4, #8
	mov r1, r8
	movs r3, #0
	ldrsh r0, [r1, r3]
	subs r0, r4, r0
	mov sl, r0
	asrs r2, r2, #8
	movs r3, #2
	ldrsh r0, [r1, r3]
	subs r0, r2, r0
	mov r8, r0
	mov r0, ip
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0804AB8C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	mov r3, ip
	bl sub_800C0E0
	cmp r0, #0
	beq _0804ABB2
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #3
	subs r4, r0, r1
_0804AB68:
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	movs r2, #2
	bl sub_804A8A8
	subs r4, #1
	cmp r4, #0
	bne _0804AB68
	movs r0, #0x7e
	bl m4aSongNumStart
	ldr r0, _0804AB88 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804AC38
	.align 2, 0
_0804AB88: .4byte gCurTask
_0804AB8C:
	mov r1, ip
	movs r3, #0x1c
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _0804ABB2
	mov r1, sb
	ldr r0, [r1, #0x58]
	movs r1, #0x80
	ands r0, r1     @ & SER_FLAG__80
	cmp r0, #0
	bne _0804ABB2
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	mov r3, ip
	bl sub_800BFEC
_0804ABB2:
	mov r3, sl
	strh r3, [r7, #6]
	mov r0, r8
	strh r0, [r7, #8]
	adds r4, r5, #0
	adds r4, #0x70
	ldrh r0, [r4]
	lsrs r0, r0, #6
	strh r0, [r7]
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r2, _0804AC48 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r1, r7, #0
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
	adds r2, r5, #0
	adds r2, #0x58
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	adds r3, r5, #0
	adds r3, #0x5a
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	adds r0, r5, #0
	adds r0, #0x72
	ldrh r0, [r0]
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
_0804AC38:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AC48: .4byte sa2__gUnknown_030054B8

	thumb_func_start sub_804AC4C
sub_804AC4C: @ 0x0804AC4C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804AC98 @ =gCurTask
	mov sb, r0
	ldr r7, [r0]
	ldrh r5, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _0804AC9C @ =0x03000018
	adds r1, r1, r5
	mov r8, r1
	ldr r3, _0804ACA0 @ =gCamera
	ldr r2, [r4, #0x50]
	asrs r1, r2, #8
	movs r6, #0
	ldrsh r0, [r3, r6]
	subs r1, r1, r0
	mov ip, r1
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	movs r6, #2
	ldrsh r1, [r3, r6]
	subs r3, r0, r1
	movs r0, #0x80
	lsls r0, r0, #6
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r2, r0
	bls _0804ACA4
	adds r0, r7, #0
	bl TaskDestroy
	b _0804ACEA
	.align 2, 0
_0804AC98: .4byte gCurTask
_0804AC9C: .4byte 0x03000018
_0804ACA0: .4byte gCamera
_0804ACA4:
	mov r0, r8
	mov r1, ip
	adds r2, r3, #0
	bl sub_804B32C
	adds r0, r4, #0
	bl sub_804CFA0
	ldr r0, [r4, #4]
	subs r0, #1
	str r0, [r4, #4]
	cmp r0, #0
	bgt _0804ACEA
	movs r2, #0
	ldr r0, _0804ACF8 @ =0x0000029E
	mov r1, r8
	strh r0, [r1, #0xa]
	ldr r6, _0804ACFC @ =0x03000038
	adds r1, r5, r6
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0804AD00 @ =0x03000039
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0804AD04 @ =0x03000058
	adds r0, r5, r1
	strh r2, [r0]
	adds r6, #0x22
	adds r0, r5, r6
	strh r2, [r0]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0804AD08 @ =sub_804AD0C
	str r0, [r1, #8]
_0804ACEA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804ACF8: .4byte 0x0000029E
_0804ACFC: .4byte 0x03000038
_0804AD00: .4byte 0x03000039
_0804AD04: .4byte 0x03000058
_0804AD08: .4byte sub_804AD0C

	thumb_func_start sub_804AD0C
sub_804AD0C: @ 0x0804AD0C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804AD5C @ =gCurTask
	ldr r6, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x18
	adds r5, r1, r0
	ldr r0, _0804AD60 @ =gExtraBossTaskData
	ldr r0, [r0]
	mov ip, r0
	ldr r1, _0804AD64 @ =gPlayer
	mov sb, r1
	ldr r3, _0804AD68 @ =gCamera
	ldr r2, [r4, #0x50]
	asrs r1, r2, #8
	movs r7, #0
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	mov r8, r1
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	movs r7, #2
	ldrsh r1, [r3, r7]
	subs r7, r0, r1
	movs r0, #0x80
	lsls r0, r0, #6
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r2, r0
	bls _0804AD6C
	adds r0, r6, #0
	bl TaskDestroy
	b _0804ADFE
	.align 2, 0
_0804AD5C: .4byte gCurTask
_0804AD60: .4byte gExtraBossTaskData
_0804AD64: .4byte gPlayer
_0804AD68: .4byte gCamera
_0804AD6C:
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, ip
	mov r3, sb
	bl sub_804B1FC
	adds r1, r0, #0
	cmp r1, #0
	beq _0804AD92
	cmp r1, #0
	bgt _0804AD8C
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0804ADFE
	b _0804ADAA
_0804AD8C:
	cmp r1, #1
	beq _0804AD9E
	b _0804ADAA
_0804AD92:
	adds r0, r5, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_804B32C
	b _0804ADAA
_0804AD9E:
	adds r0, r5, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_804B32C
	b _0804ADFE
_0804ADAA:
	adds r0, r4, #0
	bl sub_804CFA0
	mov r1, sb
	ldr r0, [r1, #4]
	ldr r1, [r4, #0x54]
	subs r3, r0, r1
	ldr r0, _0804ADCC @ =0xFFFFF800
	cmp r3, r0
	bge _0804ADD0
	adds r1, r4, #0
	adds r1, #0x5a
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _0804ADFE
	.align 2, 0
_0804ADCC: .4byte 0xFFFFF800
_0804ADD0:
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r3, r0
	ble _0804ADE4
	adds r1, r4, #0
	adds r1, #0x5a
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	b _0804ADFE
_0804ADE4:
	adds r1, r4, #0
	adds r1, #0x58
	movs r2, #0
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x5a
	strh r2, [r0]
	ldr r0, _0804AE0C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0804AE10 @ =sub_804B370
	str r0, [r1, #8]
_0804ADFE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AE0C: .4byte gCurTask
_0804AE10: .4byte sub_804B370

	thumb_func_start sub_804AE14
sub_804AE14: @ 0x0804AE14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804AE58 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	ldr r1, _0804AE5C @ =0x03000018
	adds r1, r1, r7
	mov r8, r1
	ldr r4, _0804AE60 @ =gPlayer
	ldr r3, _0804AE64 @ =gCamera
	movs r0, #0x1c
	ldrsh r5, [r4, r0]
	cmp r5, #0
	beq _0804AE6C
	ldr r0, [r4, #0x10]
	ldr r1, _0804AE68 @ =0xF7FFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x54]
	bl sub_804AFCC
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804AEE0
	.align 2, 0
_0804AE58: .4byte gCurTask
_0804AE5C: .4byte 0x03000018
_0804AE60: .4byte gPlayer
_0804AE64: .4byte gCamera
_0804AE68: .4byte 0xF7FFFFFF
_0804AE6C:
	ldr r1, [r4]
	str r1, [r6, #0x50]
	ldr r2, [r4, #4]
	str r2, [r6, #0x54]
	asrs r1, r1, #8
	mov ip, r1
	movs r1, #0
	ldrsh r0, [r3, r1]
	mov r1, ip
	subs r1, r1, r0
	mov sl, r1
	asrs r2, r2, #8
	movs r1, #2
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	mov r0, r8
	mov r1, sl
	bl sub_804B32C
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804AEE0
	movs r0, #0xf0
	str r0, [r6, #4]
	movs r0, #0
	strh r5, [r4, #0xc]
	strh r5, [r4, #8]
	strh r5, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0804AEF0 @ =0x0000029E
	mov r1, r8
	strh r0, [r1, #0xa]
	ldr r0, _0804AEF4 @ =0x03000038
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0804AEF8 @ =0x03000039
	adds r1, r7, r0
	movs r0, #0xff
	strb r0, [r1]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0804AEFC @ =sub_804AF00
	str r0, [r1, #8]
_0804AEE0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AEF0: .4byte 0x0000029E
_0804AEF4: .4byte 0x03000038
_0804AEF8: .4byte 0x03000039
_0804AEFC: .4byte sub_804AF00

	thumb_func_start sub_804AF00
sub_804AF00: @ 0x0804AF00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _0804AF50 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x18
	adds r7, r1, r0
	ldr r4, _0804AF54 @ =gPlayer
	ldr r1, _0804AF58 @ =gCamera
	mov r8, r1
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _0804AF2E
	ldr r2, [r5, #4]
	subs r0, r2, #1
	str r0, [r5, #4]
	cmp r0, #0
	bge _0804AF68
_0804AF2E:
	ldr r0, [r4, #0x10]
	ldr r1, _0804AF5C @ =0xF7FFFFFF
	ands r0, r1
	ldr r1, _0804AF60 @ =0xFFBFFFFF
	ands r0, r1
	ldr r1, _0804AF64 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x50]
	ldr r1, [r5, #0x54]
	bl sub_804AFCC
	ldr r0, [r6]
	bl TaskDestroy
	b _0804AFC2
	.align 2, 0
_0804AF50: .4byte gCurTask
_0804AF54: .4byte gPlayer
_0804AF58: .4byte gCamera
_0804AF5C: .4byte 0xF7FFFFFF
_0804AF60: .4byte 0xFFBFFFFF
_0804AF64: .4byte 0xFFEFFFFF
_0804AF68:
	ldrh r1, [r4, #0x3a]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0804AF78
	adds r0, r2, #0
	subs r0, #0x15
	str r0, [r5, #4]
_0804AF78:
	adds r0, r4, #0
	bl Player_804A0B8
	ldr r1, [r4]
	ldr r3, [r5, #0x68]
	adds r1, r1, r3
	str r1, [r5, #0x50]
	ldr r2, [r4, #4]
	str r2, [r5, #0x54]
	asrs r0, r3, #2
	subs r3, r3, r0
	str r3, [r5, #0x68]
	ldrh r4, [r4, #0x3a]
	movs r3, #0x10
	ands r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r3, r3, #1
	movs r0, #0x20
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r3, r3, r0
	lsls r3, r3, #5
	str r3, [r5, #0x68]
	asrs r1, r1, #8
	mov r4, r8
	movs r3, #0
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	asrs r2, r2, #8
	movs r3, #2
	ldrsh r0, [r4, r3]
	subs r2, r2, r0
	adds r0, r7, #0
	bl sub_804B32C
_0804AFC2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804AFCC
sub_804AFCC: @ 0x0804AFCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r1, _0804B0A4 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _0804B0A8 @ =0x0000029F
	orrs r0, r1
	ldr r1, _0804B0AC @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _0804B0B0 @ =0x06012580
	str r0, [sp, #4]
	movs r7, #0
	ldr r6, _0804B0B4 @ =gPseudoRandom
	ldr r0, _0804B0B8 @ =0x00196225
	mov sb, r0
	ldr r1, _0804B0BC @ =0x3C6EF35F
	mov r8, r1
	movs r2, #0xfe
	lsls r2, r2, #7
	mov sl, r2
_0804B002:
	mov r0, sp
	ldr r1, _0804B0C0 @ =sub_804B0D8
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r1, [sp, #8]
	str r1, [r4, #0x50]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0x54]
	ldr r0, [r6]
	mov r1, sb
	muls r1, r0, r1
	add r1, r8
	str r1, [r6]
	adds r0, r1, #0
	mov r2, sl
	ands r0, r2
	lsrs r0, r0, #8
	adds r0, #0x80
	rsbs r0, r0, #0
	ldr r2, _0804B0C4 @ =0x03000058
	adds r5, r3, r2
	strh r0, [r5]
	mov r2, sb
	muls r2, r1, r2
	add r2, r8
	str r2, [r6]
	adds r0, r2, #0
	mov r1, sl
	ands r0, r1
	lsrs r0, r0, #8
	adds r0, #0x40
	ldr r1, _0804B0C8 @ =0x0300005A
	strh r0, [r1, r3]
	ldr r0, _0804B0CC @ =0x0300005E
	adds r1, r3, r0
	movs r0, #7
	strh r0, [r1]
	mov r0, sb
	muls r0, r2, r0
	add r0, r8
	str r0, [r6]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x15
	ldr r1, _0804B0D0 @ =0xFFFFFC00
	adds r0, r0, r1
	ldr r2, _0804B0D4 @ =0x03000072
	adds r3, r3, r2
	strh r0, [r3]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _0804B080
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #0xe]
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_0804B080:
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x32]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x28]
	adds r7, #1
	cmp r7, #1
	ble _0804B002
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B0A4: .4byte 0xFFFF0000
_0804B0A8: .4byte 0x0000029F
_0804B0AC: .4byte 0xFF00FFFF
_0804B0B0: .4byte 0x06012580
_0804B0B4: .4byte gPseudoRandom
_0804B0B8: .4byte 0x00196225
_0804B0BC: .4byte 0x3C6EF35F
_0804B0C0: .4byte sub_804B0D8
_0804B0C4: .4byte 0x03000058
_0804B0C8: .4byte 0x0300005A
_0804B0CC: .4byte 0x0300005E
_0804B0D0: .4byte 0xFFFFFC00
_0804B0D4: .4byte 0x03000072

	thumb_func_start sub_804B0D8
sub_804B0D8: @ 0x0804B0D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804B13C @ =gCurTask
	ldr r0, [r0]
	mov sb, r0
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	adds r0, #0x18
	adds r5, r6, r0
	ldr r1, _0804B140 @ =0x0300000C
	adds r1, r1, r6
	mov r8, r1
	ldr r3, _0804B144 @ =gCamera
	ldr r1, [r7, #0x50]
	asrs r2, r1, #8
	movs r4, #0
	ldrsh r0, [r3, r4]
	subs r2, r2, r0
	mov ip, r2
	ldr r4, [r7, #0x54]
	asrs r0, r4, #8
	mov sl, r0
	movs r2, #2
	ldrsh r0, [r3, r2]
	mov r3, sl
	subs r2, r3, r0
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r1, r0
	movs r0, #0x88
	lsls r0, r0, #0xa
	cmp r1, r0
	bhi _0804B132
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r4, r3
	movs r0, #0xb0
	lsls r0, r0, #9
	cmp r1, r0
	bls _0804B148
_0804B132:
	mov r0, sb
	bl TaskDestroy
	b _0804B1D0
	.align 2, 0
_0804B13C: .4byte gCurTask
_0804B140: .4byte 0x0300000C
_0804B144: .4byte gCamera
_0804B148:
	mov r0, ip
	mov r4, r8
	strh r0, [r4, #6]
	strh r2, [r4, #8]
	ldr r1, _0804B1E0 @ =0x03000070
	adds r4, r6, r1
	ldrh r0, [r4]
	lsrs r0, r0, #6
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r5, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r2, _0804B1E4 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	mov r1, r8
	bl TransformSprite
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0804B1E8 @ =0x03000058
	adds r3, r6, r0
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, [r7, #0x50]
	adds r0, r0, r1
	str r0, [r7, #0x50]
	ldr r0, _0804B1EC @ =0x0300005A
	adds r2, r6, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r7, #0x54]
	adds r0, r0, r1
	str r0, [r7, #0x54]
	ldr r1, _0804B1F0 @ =0x0300005C
	adds r0, r6, r1
	ldrh r0, [r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	ldr r3, _0804B1F4 @ =0x0300005E
	adds r0, r6, r3
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldr r2, _0804B1F8 @ =0x03000072
	adds r0, r6, r2
	ldrh r0, [r0]
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
_0804B1D0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B1E0: .4byte 0x03000070
_0804B1E4: .4byte sa2__gUnknown_030054B8
_0804B1E8: .4byte 0x03000058
_0804B1EC: .4byte 0x0300005A
_0804B1F0: .4byte 0x0300005C
_0804B1F4: .4byte 0x0300005E
_0804B1F8: .4byte 0x03000072

	thumb_func_start sub_804B1FC
sub_804B1FC: @ 0x0804B1FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r5, r3, #0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x14
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	bne _0804B2B0
	ldr r1, [r4, #0x50]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r4, #0x54]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_800C0E0
	cmp r0, #0
	beq _0804B2B0
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0804B26C
	movs r0, #0x8a      @ SE_ITEM_BOX
	bl m4aSongNumStart
	ldr r0, [r4, #0x50]
	asrs r0, r0, #8
	ldr r1, [r4, #0x54]
	asrs r1, r1, #8
	movs r2, #8
	bl sub_8040C1C
	ldr r0, [r4, #0x50]
	ldr r1, [r4, #0x54]
	bl sub_804AFCC
	ldr r0, _0804B268 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	movs r0, #1
	rsbs r0, r0, #0
	b _0804B2B2
	.align 2, 0
_0804B268: .4byte gCurTask
_0804B26C:
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0804B2B0
	ldr r0, [r7, #0x58]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804B2B0
	ldr r0, _0804B2A4 @ =0x0000029E
	strh r0, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	mov r1, r8
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, _0804B2A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0804B2AC @ =sub_804AE14
	str r0, [r1, #8]
	movs r0, #1
	b _0804B2B2
	.align 2, 0
_0804B2A4: .4byte 0x0000029E
_0804B2A8: .4byte gCurTask
_0804B2AC: .4byte sub_804AE14
_0804B2B0:
	movs r0, #0
_0804B2B2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_804B2BC
sub_804B2BC: @ 0x0804B2BC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0804B314 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _0804B318 @ =0x0000029E
	orrs r0, r1
	ldr r1, _0804B31C @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	movs r0, #8
	bl VramMalloc
	str r0, [sp, #4]
	ldr r1, _0804B320 @ =sub_804AC4C
	ldr r2, _0804B324 @ =TaskDestructor_SomeTaskManager_60_Common
	mov r0, sp
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r4, [r0, #0x50]
	str r5, [r0, #0x54]
	ldr r1, _0804B328 @ =0x03000058
	adds r2, r2, r1
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r2]
	movs r1, #0x30
	str r1, [r0, #4]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #0x28]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B314: .4byte 0xFFFF0000
_0804B318: .4byte 0x0000029E
_0804B31C: .4byte 0xFF00FFFF
_0804B320: .4byte sub_804AC4C
_0804B324: .4byte TaskDestructor_SomeTaskManager_60_Common
_0804B328: .4byte 0x03000058

	thumb_func_start sub_804B32C
sub_804B32C: @ 0x0804B32C
	push {r4, lr}
	adds r4, r0, #0
	strh r1, [r4, #0x16]
	strh r2, [r4, #0x18]
	bl UpdateSpriteAnimation
	ldr r0, [r4, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	ldr r1, _0804B368 @ =0xFFF3FFFF
	ands r0, r1
	ldr r1, _0804B36C @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B368: .4byte 0xFFF3FFFF
_0804B36C: .4byte 0xFFFFF7FF

	thumb_func_start sub_804B370
sub_804B370: @ 0x0804B370
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804B3C0 @ =gCurTask
	ldr r6, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x18
	adds r4, r1, r0
	ldr r0, _0804B3C4 @ =gExtraBossTaskData
	ldr r0, [r0]
	mov ip, r0
	ldr r7, _0804B3C8 @ =gPlayer
	mov sb, r7
	ldr r3, _0804B3CC @ =gCamera
	ldr r2, [r5, #0x50]
	asrs r1, r2, #8
	movs r7, #0
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	mov r8, r1
	ldr r0, [r5, #0x54]
	asrs r0, r0, #8
	movs r7, #2
	ldrsh r1, [r3, r7]
	subs r7, r0, r1
	movs r0, #0x80
	lsls r0, r0, #6
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r2, r0
	bls _0804B3D0
	adds r0, r6, #0
	bl TaskDestroy
	b _0804B414
	.align 2, 0
_0804B3C0: .4byte gCurTask
_0804B3C4: .4byte gExtraBossTaskData
_0804B3C8: .4byte gPlayer
_0804B3CC: .4byte gCamera
_0804B3D0:
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, ip
	mov r3, sb
	bl sub_804B1FC
	adds r1, r0, #0
	cmp r1, #0
	beq _0804B3F6
	cmp r1, #0
	bgt _0804B3F0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0804B414
	b _0804B40E
_0804B3F0:
	cmp r1, #1
	beq _0804B402
	b _0804B40E
_0804B3F6:
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_804B32C
	b _0804B40E
_0804B402:
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	bl sub_804B32C
	b _0804B414
_0804B40E:
	adds r0, r5, #0
	bl sub_804CFA0
_0804B414:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_804B420
Task_804B420: @ 0x0804B420
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0804B46C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x18
	adds r5, r1, r0
	ldr r0, _0804B470 @ =gExtraBossTaskData
	ldr r0, [r0]
	mov sb, r0
	ldr r1, _0804B474 @ =gPlayer
	mov r8, r1
	ldr r6, _0804B478 @ =gCamera
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0804B464
	ldr r0, [r4, #0x50]
	movs r7, #0x80
	lsls r7, r7, #6
	adds r0, r0, r7
	movs r1, #0x88
	lsls r1, r1, #0xa
	cmp r0, r1
	bls _0804B47C
_0804B464:
	adds r0, r2, #0
	bl TaskDestroy
	b _0804B554
	.align 2, 0
_0804B46C: .4byte gCurTask
_0804B470: .4byte gExtraBossTaskData
_0804B474: .4byte gPlayer
_0804B478: .4byte gCamera
_0804B47C:
	movs r0, #0
	ldrsh r3, [r6, r0]
	ldr r0, _0804B564 @ =gStageTime
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r3, r3, r0
	adds r1, r3, #0
	subs r1, #0x48
	ldr r0, _0804B568 @ =0x00000A7F
	cmp r1, r0
	ble _0804B4A2
	adds r3, r1, #0
	movs r1, #0xa8
	lsls r1, r1, #4
	adds r0, r3, #0
	bl Mod
	adds r3, r0, #0
	adds r3, #0x48
_0804B4A2:
	movs r1, #0
	ldrsh r2, [r6, r1]
	subs r2, r3, r2
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	ldr r1, [r4, #0x50]
	asrs r1, r1, #8
	adds r1, r1, r2
	ldr r2, _0804B56C @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	lsls r0, r0, #8
	ldr r1, [r4, #0x54]
	adds r1, r1, r0
	str r1, [r4, #0x54]
	ldr r0, [r4, #0x50]
	asrs r3, r0, #8
	movs r2, #0
	ldrsh r0, [r6, r2]
	subs r0, r3, r0
	mov sl, r0
	asrs r2, r1, #8
	movs r7, #2
	ldrsh r0, [r6, r7]
	subs r6, r2, r0
	mov r0, r8
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804B50E
	mov r1, r8
	movs r7, #0x1c
	ldrsh r0, [r1, r7]
	cmp r0, #0
	bne _0804B50E
	mov r1, sb
	ldr r0, [r1, #0x58]
	movs r1, #0x80  @ SER_FLAG__80
	ands r0, r1
	cmp r0, #0
	bne _0804B50E
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	mov r3, r8
	bl sub_800BFEC
_0804B50E:
	mov r2, sl
	strh r2, [r5, #0x16]
	strh r6, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r2, r4, #0
	adds r2, #0x58
	movs r7, #0
	ldrsh r1, [r2, r7]
	ldr r0, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x50]
	adds r3, r4, #0
	adds r3, #0x5a
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r4, #0x54]
	adds r0, r0, r1
	str r0, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
_0804B554:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B564: .4byte gStageTime
_0804B568: .4byte 0x00000A7F
_0804B56C: .4byte sa2__sub_801EC3C

	thumb_func_start sub_804B570
sub_804B570: @ 0x0804B570
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0804B5BC @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	movs r1, #0xa8
	lsls r1, r1, #2
	orrs r0, r1
	ldr r1, _0804B5C0 @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	movs r0, #0x18
	bl VramMalloc
	str r0, [sp, #4]
	ldr r1, _0804B5C4 @ =Task_804B420
	ldr r2, _0804B5C8 @ =TaskDestructor_SomeTaskManager_60_Common
	mov r0, sp
	bl CreateSomeTaskManager_7C_Task
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r4, [r1, #0x50]
	str r5, [r1, #0x54]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1, #0x32]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #0x28]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B5BC: .4byte 0xFFFF0000
_0804B5C0: .4byte 0xFF00FFFF
_0804B5C4: .4byte Task_804B420
_0804B5C8: .4byte TaskDestructor_SomeTaskManager_60_Common
