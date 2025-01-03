.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8040648
sub_8040648: @ 0x08040648
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _080406AC @ =sub_80406CC
	ldr r2, _080406B0 @ =0x00004001
	ldr r1, _080406B4 @ =sub_80408AC
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r5, [r6, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4, #4]
	movs r3, #0
	movs r2, #0
	strh r2, [r4, #8]
	ldr r0, _080406B8 @ =0x000002EA
	strh r0, [r4, #0xa]
	ldr r1, _080406BC @ =0x03000020
	adds r0, r5, r1
	strb r3, [r0]
	ldr r0, _080406C0 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r2, [r4, #0x1c]
	ldr r0, _080406C4 @ =0x03000022
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080406C8 @ =0x03000025
	adds r5, r5, r1
	strb r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080406AC: .4byte sub_80406CC
_080406B0: .4byte 0x00004001
_080406B4: .4byte sub_80408AC
_080406B8: .4byte 0x000002EA
_080406BC: .4byte 0x03000020
_080406C0: .4byte 0x03000021
_080406C4: .4byte 0x03000022
_080406C8: .4byte 0x03000025

	thumb_func_start sub_80406CC
sub_80406CC: @ 0x080406CC
	push {r4, r5, r6, r7, lr}
	ldr r5, _080406F0 @ =gPlayer
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _080406E4
	ldr r6, [r5, #0x10]
	movs r0, #0x90
	lsls r0, r0, #3
	ands r6, r0
	subs r0, #0x80
	cmp r6, r0
	beq _080406F8
_080406E4:
	ldr r0, _080406F4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080407B0
	.align 2, 0
_080406F0: .4byte gPlayer
_080406F4: .4byte gCurTask
_080406F8:
	ldr r3, _08040764 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	movs r0, #0x16
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _0804072A
	movs r1, #0
	adds r0, #0xeb
	strh r0, [r4, #0xa]
	ldr r7, _08040768 @ =0x03000020
	adds r0, r2, r7
	strb r1, [r0]
	ldr r0, _0804076C @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, [r3]
	ldr r0, _08040770 @ =sub_80407BC
	str r0, [r1, #8]
_0804072A:
	ldr r7, _08040774 @ =gCamera
	movs r3, #0xf
	ldrsb r3, [r5, r3]
	ldr r2, _08040778 @ =gStageFlags
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804073E
	rsbs r3, r3, #0
_0804073E:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldrh r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	ldrh r1, [r7, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804077C
	ldr r0, [r4, #0x10]
	orrs r0, r6
	b _08040782
	.align 2, 0
_08040764: .4byte gCurTask
_08040768: .4byte 0x03000020
_0804076C: .4byte 0x03000021
_08040770: .4byte sub_80407BC
_08040774: .4byte gCamera
_08040778: .4byte gStageFlags
_0804077C:
	ldr r0, [r4, #0x10]
	ldr r1, _08040798 @ =0xFFFFFBFF
	ands r0, r1
_08040782:
	str r0, [r4, #0x10]
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804079C
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _080407A2
	.align 2, 0
_08040798: .4byte 0xFFFFFBFF
_0804079C:
	ldr r0, [r4, #0x10]
	ldr r1, _080407B8 @ =0xFFFFF7FF
	ands r0, r1
_080407A2:
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080407B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080407B8: .4byte 0xFFFFF7FF

	thumb_func_start sub_80407BC
sub_80407BC: @ 0x080407BC
	push {r4, r5, r6, r7, lr}
	ldr r5, _080407E0 @ =gPlayer
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _080407D4
	ldr r6, [r5, #0x10]
	movs r0, #0x90
	lsls r0, r0, #3
	ands r6, r0
	subs r0, #0x80
	cmp r6, r0
	beq _080407E8
_080407D4:
	ldr r0, _080407E4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080408A0
	.align 2, 0
_080407E0: .4byte gPlayer
_080407E4: .4byte gCurTask
_080407E8:
	ldr r3, _08040854 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	movs r0, #0x16
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bgt _0804081A
	movs r1, #0
	adds r0, #0xea
	strh r0, [r4, #0xa]
	ldr r7, _08040858 @ =0x03000020
	adds r0, r2, r7
	strb r1, [r0]
	ldr r0, _0804085C @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, [r3]
	ldr r0, _08040860 @ =sub_80406CC
	str r0, [r1, #8]
_0804081A:
	ldr r7, _08040864 @ =gCamera
	movs r3, #0xf
	ldrsb r3, [r5, r3]
	ldr r2, _08040868 @ =gStageFlags
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804082E
	rsbs r3, r3, #0
_0804082E:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldrh r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	ldrh r1, [r7, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804086C
	ldr r0, [r4, #0x10]
	orrs r0, r6
	b _08040872
	.align 2, 0
_08040854: .4byte gCurTask
_08040858: .4byte 0x03000020
_0804085C: .4byte 0x03000021
_08040860: .4byte sub_80406CC
_08040864: .4byte gCamera
_08040868: .4byte gStageFlags
_0804086C:
	ldr r0, [r4, #0x10]
	ldr r1, _08040888 @ =0xFFFFFBFF
	ands r0, r1
_08040872:
	str r0, [r4, #0x10]
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804088C
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08040892
	.align 2, 0
_08040888: .4byte 0xFFFFFBFF
_0804088C:
	ldr r0, [r4, #0x10]
	ldr r1, _080408A8 @ =0xFFFFF7FF
	ands r0, r1
_08040892:
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080408A0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080408A8: .4byte 0xFFFFF7FF

	thumb_func_start sub_80408AC
sub_80408AC: @ 0x080408AC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80408C0
sub_80408C0: @ 0x080408C0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08040924 @ =Task_8040944
	ldr r2, _08040928 @ =0x00002001
	ldr r1, _0804092C @ =TaskDestructor_80409E4
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r5, [r6, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #4]
	movs r3, #0
	movs r2, #0
	strh r2, [r4, #8]
	ldr r0, _08040930 @ =0x000002ED
	strh r0, [r4, #0xa]
	ldr r1, _08040934 @ =0x03000020
	adds r0, r5, r1
	strb r3, [r0]
	ldr r0, _08040938 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r2, [r4, #0x1c]
	ldr r0, _0804093C @ =0x03000022
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08040940 @ =0x03000025
	adds r5, r5, r1
	strb r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08040924: .4byte Task_8040944
_08040928: .4byte 0x00002001
_0804092C: .4byte TaskDestructor_80409E4
_08040930: .4byte 0x000002ED
_08040934: .4byte 0x03000020
_08040938: .4byte 0x03000021
_0804093C: .4byte 0x03000022
_08040940: .4byte 0x03000025

	thumb_func_start Task_8040944
Task_8040944: @ 0x08040944
	push {r4, r5, lr}
	ldr r3, _08040964 @ =gPlayer
	ldr r0, [r3, #0x60]
	cmp r0, #0
	beq _0804095A
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0804096C
_0804095A:
	ldr r0, _08040968 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080409D8
	.align 2, 0
_08040964: .4byte gPlayer
_08040968: .4byte gCurTask
_0804096C:
	adds r0, r3, #0
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r0, #0x2c
	bne _080409D8
	adds r0, r3, #0
	adds r0, #0x44
	ldrh r5, [r0]
	cmp r5, #1
	bne _080409D8
	ldr r0, _080409BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _080409C0 @ =gCamera
	ldr r0, [r3]
	asrs r0, r0, #8
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r1, [r3, #4]
	asrs r1, r1, #8
	movs r0, #0xf
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, [r3, #0x10]
	ands r0, r5
	cmp r0, #0
	bne _080409C4
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080409CA
	.align 2, 0
_080409BC: .4byte gCurTask
_080409C0: .4byte gCamera
_080409C4:
	ldr r0, [r4, #0x10]
	ldr r1, _080409E0 @ =0xFFFFFBFF
	ands r0, r1
_080409CA:
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080409D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080409E0: .4byte 0xFFFFFBFF

	thumb_func_start TaskDestructor_80409E4
TaskDestructor_80409E4: @ 0x080409E4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
