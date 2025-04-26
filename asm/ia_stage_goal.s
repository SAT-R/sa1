.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_StageGoal4
Task_StageGoal4: @ 0x0801FAB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r7, _0801FD2C @ =0x04000128
	ldr r0, [r7]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov sl, r0
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _0801FD30 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp]
	ldr r3, _0801FD34 @ =0x0300000C
	adds r3, r3, r1
	mov sb, r3
	ldr r5, [r0]
	ldrb r2, [r0, #8]
	lsls r2, r2, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldr r3, [sp]
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _0801FD38 @ =gCamera
	ldrh r3, [r4]
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	subs r0, r0, r3
	mov r3, sb
	strh r0, [r3, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r3, #0x18]
	ldr r0, _0801FD3C @ =sa2__gUnknown_030054B4
	mov r1, sl
	adds r3, r1, r0
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801FB2A
	b _0801FD8E
_0801FB2A:
	adds r6, r1, #0
	ldr r0, _0801FD40 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801FB40
	mov r8, r2
	ldrb r1, [r5, #3]
	mov r3, sp
	strb r1, [r3, #8]
	cmp r0, #5
	bne _0801FB9A
_0801FB40:
	movs r3, #0
	ldr r0, _0801FD44 @ =gMultiplayerPlayerTasks
	ldr r1, [r0]
	mov r8, r2
	ldrb r5, [r5, #3]
	mov r0, sp
	strb r5, [r0, #8]
	cmp r1, #0
	beq _0801FB9A
	ldr r1, [sp, #4]
	cmp r1, sl
	beq _0801FB9A
	ldr r0, _0801FD48 @ =gMultiplayerConnections
	ldrb r4, [r0]
	movs r0, #0x10
	mov ip, r0
	ldr r5, _0801FD44 @ =gMultiplayerPlayerTasks
_0801FB62:
	mov r2, ip
	lsls r2, r3
	ands r2, r4
	adds r0, r3, #4
	asrs r2, r0
	ldr r0, [r7]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r1, ip
	lsls r1, r0
	ands r1, r4
	ldr r0, [r7]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r1, r0
	cmp r2, r1
	bne _0801FB88
	adds r6, #1
_0801FB88:
	adds r5, #4
	adds r3, #1
	cmp r3, #3
	bhi _0801FB9A
	ldr r0, [r5]
	cmp r0, #0
	beq _0801FB9A
	cmp r3, sl
	bne _0801FB62
_0801FB9A:
	adds r0, r6, #1
	lsls r0, r0, #0x15
	lsrs r4, r0, #0x10
	mov r1, sp
	ldrb r1, [r1, #8]
	cmp r1, #0
	beq _0801FBCC
	mov r3, r8
	asrs r1, r3, #0x10
	adds r1, #0x20
	ldr r0, _0801FD4C @ =gPlayer
	ldr r0, [r0]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _0801FBC0
	mov r1, sb
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
_0801FBC0:
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
_0801FBCC:
	ldr r5, _0801FD4C @ =gPlayer
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _0801FBD8
	b _0801FD74
_0801FBD8:
	movs r0, #0x10
	strh r0, [r5, #0x38]
	mov r3, r8
	asrs r1, r3, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0801FBF0
	b _0801FD8E
_0801FBF0:
	lsls r0, r1, #8
	str r0, [r5]
	adds r0, r5, #0
	bl Player_TransitionCancelFlyingAndBoost
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x18
	ands r0, r1
	adds r1, #0x1c
	ands r0, r1
	subs r1, #0xc
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _0801FD50 @ =0xFFFFFBFF
	ands r0, r1
	ldr r1, _0801FD54 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r4, r5, #0
	adds r4, #0x40
	movs r0, #0xf
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	adds r0, #0x3d
	movs r2, #0
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	strh r2, [r5, #0xc]
	strh r2, [r5, #8]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	strh r2, [r5, #0x38]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x1d
	strb r1, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r5, #0x10]
	movs r3, #0
	ldr r1, _0801FD44 @ =gMultiplayerPlayerTasks
	ldr r0, [r1]
	cmp r0, #0
	beq _0801FC94
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r1, #0
_0801FC6E:
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	ldr r1, _0801FD58 @ =0x03000054
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0801FC86
	ldr r0, [sp, #4]
	adds r0, #1
	str r0, [sp, #4]
_0801FC86:
	adds r2, #4
	adds r3, #1
	cmp r3, #3
	bhi _0801FC94
	ldr r0, [r2]
	cmp r0, #0
	bne _0801FC6E
_0801FC94:
	subs r3, #1
	mov r8, r3
	ldr r1, [sp, #4]
	cmp r1, r8
	bhs _0801FCAA
	ldr r0, _0801FD40 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801FCAA
	cmp r0, #5
	bne _0801FD60
_0801FCAA:
	movs r7, #0
	ldr r0, _0801FD44 @ =gMultiplayerPlayerTasks
	ldr r1, [r0]
	cmp r1, #0
	beq _0801FD18
	movs r3, #1
	mov sl, r3
	ldr r2, _0801FD4C @ =gPlayer
	movs r6, #0
_0801FCBC:
	ldr r1, _0801FD44 @ =gMultiplayerPlayerTasks
	adds r0, r6, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r5, r0, r3
	ldr r4, [r5, #0x5c]
	mov r0, sl
	ands r4, r0
	cmp r4, #0
	bne _0801FD06
	ldr r0, _0801FD40 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801FD06
	cmp r0, #5
	beq _0801FD06
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	mov r1, r8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r2, [sp, #0xc]
	bl sa2__sub_8019CCC
	ldr r0, [r5, #0x5c]
	mov r3, sl
	orrs r0, r3
	str r0, [r5, #0x5c]
	ldr r2, [sp, #0xc]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	strh r4, [r2, #0x38]
_0801FD06:
	adds r6, #4
	adds r7, #1
	cmp r7, #3
	bhi _0801FD18
	ldr r0, _0801FD44 @ =gMultiplayerPlayerTasks
	adds r1, r6, r0
	ldr r1, [r1]
	cmp r1, #0
	bne _0801FCBC
_0801FD18:
	movs r0, #0
	ldr r1, [sp]
	strh r0, [r1, #0x3c]
	ldr r0, _0801FD30 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801FD5C @ =Task_StageGoal6
	str r0, [r1, #8]
	bl sa2__sub_8019F08
	b _0801FD8E
	.align 2, 0
_0801FD2C: .4byte 0x04000128
_0801FD30: .4byte gCurTask
_0801FD34: .4byte 0x0300000C
_0801FD38: .4byte gCamera
_0801FD3C: .4byte sa2__gUnknown_030054B4
_0801FD40: .4byte gGameMode
_0801FD44: .4byte gMultiplayerPlayerTasks
_0801FD48: .4byte gMultiplayerConnections
_0801FD4C: .4byte gPlayer
_0801FD50: .4byte 0xFFFFFBFF
_0801FD54: .4byte 0xFFFFFEFF
_0801FD58: .4byte 0x03000054
_0801FD5C: .4byte Task_StageGoal6
_0801FD60:
	ldr r0, _0801FD6C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801FD70 @ =Task_StageGoal5
	str r0, [r1, #8]
	b _0801FD8E
	.align 2, 0
_0801FD6C: .4byte gCurTask
_0801FD70: .4byte Task_StageGoal5
_0801FD74:
	movs r0, #0x20
	strh r0, [r5, #0x38]
	mov r3, r8
	asrs r1, r3, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0801FD8E
	movs r0, #0x10
	strh r0, [r5, #0x38]
_0801FD8E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_StageGoal5
Task_StageGoal5: @ 0x0801FDA0
	push {r4, r5, lr}
	ldr r0, _0801FDF4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r0, r3
	ldr r1, _0801FDF8 @ =0x0300000C
	adds r5, r0, r1
	ldr r4, [r3]
	ldrb r1, [r3, #8]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r4, #1]
	lsls r2, r2, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0801FDFC @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x18]
	movs r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0801FDEC
	adds r0, r5, #0
	bl DisplaySprite
_0801FDEC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801FDF4: .4byte gCurTask
_0801FDF8: .4byte 0x0300000C
_0801FDFC: .4byte gCamera

	thumb_func_start Task_StageGoal6
Task_StageGoal6: @ 0x0801FE00
	push {r4, r5, r6, lr}
	ldr r0, _0801FE70 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r6, r3
	ldr r0, _0801FE74 @ =0x0300000C
	adds r5, r6, r0
	ldr r4, [r3]
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0801FE78 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0801FE68
	adds r1, r2, #0
	adds r1, #0x20
	ldr r0, _0801FE7C @ =gPlayer
	ldr r0, [r0]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _0801FE5C
	ldr r0, _0801FE80 @ =0x0300002C
	adds r1, r6, r0
	movs r0, #2
	strb r0, [r1]
_0801FE5C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0801FE68:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801FE70: .4byte gCurTask
_0801FE74: .4byte 0x0300000C
_0801FE78: .4byte gCamera
_0801FE7C: .4byte gPlayer
_0801FE80: .4byte 0x0300002C

	thumb_func_start Task_ShowResults
Task_ShowResults: @ 0x0801FE84
	push {r4, lr}
	ldr r4, _0801FEC4 @ =gPlayer
	ldr r0, [r4, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0801FEBC
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _0801FEC8 @ =0x0000023F
	cmp r1, r0
	ble _0801FEBC
	adds r0, r4, #0
	bl sa2__sub_8021BE0
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x1c
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0801FECC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0801FEBC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FEC4: .4byte gPlayer
_0801FEC8: .4byte 0x0000023F
_0801FECC: .4byte gCurTask
