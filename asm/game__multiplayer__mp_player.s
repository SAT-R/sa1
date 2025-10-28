.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of src/game/multiplayer/mp_player.c ---
.if 0
	thumb_func_start sa2__sub_8018300
sa2__sub_8018300: @ 0x080152C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r6, _08015380 @ =gPlayer
	ldr r0, [r6, #0x64]
	adds r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, _08015384 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r5, r4, r2
	str r5, [sp, #0x10]
	ldr r1, _08015388 @ =gMultiplayerPlayerTasks
	ldr r0, _0801538C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r0, r2
	str r0, [sp, #0xc]
	ldr r0, _08015390 @ =0x03000060
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801530C
	b _080155D4
_0801530C:
	ldr r1, _08015394 @ =0x03000050
	adds r1, r4, r1
	str r1, [sp, #0x18]
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r3, _08015398 @ =0x03000052
	adds r3, r4, r3
	str r3, [sp, #0x1c]
	movs r7, #0
	ldrsh r2, [r3, r7]
	ldr r0, _0801539C @ =0x03000066
	adds r0, r4, r0
	str r0, [sp, #0x20]
	movs r7, #0
	ldrsh r3, [r0, r7]
	mov ip, r3
	ldr r0, _080153A0 @ =0x03000068
	adds r0, r0, r4
	mov sl, r0
	movs r3, #0
	ldrsh r0, [r0, r3]
	str r0, [sp]
	ldr r7, _080153A4 @ =0x03000054
	adds r7, r7, r4
	mov sb, r7
	ldrh r0, [r7]
	lsrs r0, r0, #7
	movs r3, #1
	mov r8, r3
	ands r0, r3
	str r0, [sp, #4]
	adds r0, r5, #0
	mov r3, ip
	bl sa2__sub_800DA4C
	adds r4, r0, #0
	mov r7, r8
	ands r0, r7
	cmp r0, #0
	beq _080153F8
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080153C6
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r4
	cmp r0, #0
	beq _080153A8
	ldrh r1, [r6, #8]
	movs r2, #8
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _080153C6
	b _080153BC
	.align 2, 0
_08015380: .4byte gPlayer
_08015384: .4byte gCurTask
_08015388: .4byte gMultiplayerPlayerTasks
_0801538C: .4byte 0x04000128
_08015390: .4byte 0x03000060
_08015394: .4byte 0x03000050
_08015398: .4byte 0x03000052
_0801539C: .4byte 0x03000066
_080153A0: .4byte 0x03000068
_080153A4: .4byte 0x03000054
_080153A8:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r4
	cmp r0, #0
	beq _080153C6
	ldrh r1, [r6, #8]
	movs r3, #8
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bge _080153C6
_080153BC:
	rsbs r0, r1, #0
	strh r0, [r6, #8]
	ldrh r0, [r6, #0xc]
	rsbs r0, r0, #0
	strh r0, [r6, #0xc]
_080153C6:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r4
	cmp r0, #0
	beq _080153E0
	ldr r1, _080153F4 @ =gPlayer
	ldrh r2, [r1, #0xa]
	movs r7, #0xa
	ldrsh r0, [r1, r7]
	cmp r0, #0
	ble _080153E0
	rsbs r0, r2, #0
	strh r0, [r1, #0xa]
_080153E0:
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	bne _08015402
_080153F0:
	movs r0, #1
	b _08015654
	.align 2, 0
_080153F4: .4byte gPlayer
_080153F8:
	movs r7, #2
	ands r7, r4
	cmp r7, #0
	bne _08015402
	b _08015558
_08015402:
	ldr r0, _08015484 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801540E
	cmp r0, #5
	bne _0801545C
_0801540E:
	ldr r0, _08015488 @ =gMultiplayerCharacters
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r1, [r1]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _0801545C
	ldr r0, [sp, #0x10]
	ldrh r1, [r0, #0xa]
	movs r0, #0xae
	lsls r0, r0, #1
	cmp r1, r0
	beq _08015432
	adds r0, #5
	cmp r1, r0
	bne _0801545C
_08015432:
	ldr r2, _0801548C @ =gPlayer
	adds r3, r2, #0
	adds r3, #0x26
	ldrb r1, [r3]
	movs r0, #0x10
	orrs r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	strh r1, [r2, #0x20]
	movs r1, #0xfb
	ands r0, r1
	strb r0, [r3]
	adds r2, #0x59
	movs r0, #0
	ldrsb r0, [r2, r0]
	bl CreateItemTask_Confusion
	ldr r0, _08015490 @ =gMPlayInfo_BGM
	movs r1, #0x80
	bl m4aMPlayTempoControl
_0801545C:
	movs r6, #1
	ands r4, r6
	cmp r4, #0
	beq _080154A2
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _0801548C @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r3, r1, #0
	cmp r2, r0
	bge _08015494
	ldr r0, [r3, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _08015498
	.align 2, 0
_08015484: .4byte gGameMode
_08015488: .4byte gMultiplayerCharacters
_0801548C: .4byte gPlayer
_08015490: .4byte gMPlayInfo_BGM
_08015494:
	ldr r0, [r3, #0x10]
	orrs r0, r6
_08015498:
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl sa2__sub_800DE44
	b _080154D0
_080154A2:
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldr r1, _080154BC @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r3, r1, #0
	cmp r2, r0
	bge _080154C0
	ldr r0, [r3, #0x10]
	orrs r0, r6
	b _080154C8
	.align 2, 0
_080154BC: .4byte gPlayer
_080154C0:
	ldr r0, [r3, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080154C8:
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl sa2__sub_800DD54
_080154D0:
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
	ldr r0, _0801554C @ =gGameMode
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080154E8
	b _080153F0
_080154E8:
	ldr r4, [sp, #0xc]
	ldr r1, [r4, #0x5c]
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	bne _080154F8
	b _080153F0
_080154F8:
	movs r4, #0
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, #0
	ands r0, r2
	adds r5, #0x56
	ldr r6, _08015550 @ =gChaoTasks
	cmp r0, #0
	bne _0801551E
	adds r3, r2, #0
	adds r2, r1, #0
_0801550E:
	adds r4, #1
	cmp r4, #2
	bhi _0801551E
	adds r0, r3, #0
	lsls r0, r4
	ands r0, r2
	cmp r0, #0
	beq _0801550E
_0801551E:
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r0, r4
	bics r1, r0
	ldr r7, [sp, #0xc]
	str r1, [r7, #0x5c]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldrb r1, [r5]
	ldr r2, _08015554 @ =0x03000041
	adds r0, r0, r2
	strb r1, [r0]
	bl CreateRoomEvent
	movs r1, #9
	strb r1, [r0]
	strb r4, [r0, #1]
	ldrb r1, [r5]
	strb r1, [r0, #2]
	b _080153F0
	.align 2, 0
_0801554C: .4byte gGameMode
_08015550: .4byte gChaoTasks
_08015554: .4byte 0x03000041
_08015558:
	ldr r3, [sp, #0x14]
	ldr r1, [r3, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801559A
	ldr r0, [r5, #0x30]
	cmp r0, r1
	bne _0801559A
	ldr r4, [sp, #0x18]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r3, [sp, #0x1c]
	movs r4, #0
	ldrsh r2, [r3, r4]
	ldr r0, [sp, #0x20]
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov ip, r0
	mov r4, sl
	movs r3, #0
	ldrsh r0, [r4, r3]
	str r0, [sp]
	mov r4, sb
	ldrh r0, [r4]
	lsrs r0, r0, #7
	mov r3, r8
	ands r0, r3
	str r0, [sp, #4]
	str r7, [sp, #8]
	adds r0, r5, #0
	mov r3, ip
	b _0801561E
_0801559A:
	ldr r1, _080155D0 @ =gPlayer
	ldr r2, [r1, #0x10]
	movs r0, #8
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _080155BC
	ldr r0, [r3, #0x28]
	ldr r4, [sp, #0x10]
	cmp r0, r4
	bne _080155BC
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	movs r0, #2
	orrs r2, r0
	str r2, [r3, #0x10]
_080155BC:
	ldr r0, [r5, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015652
	ldr r0, [r3, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r3, #0x10]
	b _08015652
	.align 2, 0
_080155D0: .4byte gPlayer
_080155D4:
	subs r0, #1
	strb r0, [r1]
	ldr r0, [r6, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08015652
	ldr r0, [r6, #0x28]
	cmp r0, r5
	bne _08015652
	ldr r7, _08015664 @ =0x03000050
	adds r0, r4, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, _08015668 @ =0x03000052
	adds r0, r4, r3
	movs r7, #0
	ldrsh r2, [r0, r7]
	adds r3, #0x14
	adds r0, r4, r3
	movs r7, #0
	ldrsh r3, [r0, r7]
	ldr r7, _0801566C @ =0x03000068
	adds r0, r4, r7
	movs r7, #0
	ldrsh r0, [r0, r7]
	str r0, [sp]
	ldr r7, _08015670 @ =0x03000054
	adds r0, r4, r7
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r5, #0
_0801561E:
	bl sa2__sub_800D0A0
	adds r2, r0, #0
	ldr r0, [r5, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801563E
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0801563E
	ldr r0, [r6, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r6, #0x10]
_0801563E:
	str r2, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _08015652
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
_08015652:
	movs r0, #0
_08015654:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015664: .4byte 0x03000050
_08015668: .4byte 0x03000052
_0801566C: .4byte 0x03000068
_08015670: .4byte 0x03000054
.endif

	thumb_func_start Task_HandleLaunchPlayer
Task_HandleLaunchPlayer: @ 0x08015674
	push {r4, r5, r6, lr}
	ldr r6, _080156E0 @ =gPlayer
	ldr r2, [r6, #0x64]
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080156F4
	ldr r5, _080156E4 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r6, #0x10]
	ldr r1, _080156E8 @ =0xFFDFFFFF
	ands r0, r1
	ldr r1, _080156EC @ =0xFF7FFFFF
	ands r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _080156F0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x15
	strb r0, [r1]
	adds r1, r2, #0
	adds r1, #0x2d
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #0xe
	bl Player_HandleSpriteYOffsetChange
	movs r0, #6
	strb r0, [r6, #0xe]
	movs r0, #0xe
	strb r0, [r6, #0xf]
	movs r0, #0xaa      @ SE_SPRING
	bl m4aSongNumStart
	ldrh r0, [r4]
	strh r0, [r6, #0xa]
	ldr r0, [r5]
	bl TaskDestroy
	b _08015716
	.align 2, 0
_080156E0: .4byte gPlayer
_080156E4: .4byte gCurTask
_080156E8: .4byte 0xFFDFFFFF
_080156EC: .4byte 0xFF7FFFFF
_080156F0: .4byte 0xFFFFFEFF
_080156F4:
	adds r0, r6, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x2a
	beq _08015716
	ldr r0, [r6, #0x10]
	ldr r1, _0801571C @ =0xFFDFFFFF
	ands r0, r1
	ldr r1, _08015720 @ =0xFF7FFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08015724 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08015716:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801571C: .4byte 0xFFDFFFFF
_08015720: .4byte 0xFF7FFFFF
_08015724: .4byte gCurTask

	thumb_func_start TaskDestructor_MultiplayerPlayer
TaskDestructor_MultiplayerPlayer: @ 0x08015728
	push {lr}
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	ldr r1, _0801574C @ =gMultiplayerPlayerTasks
	ldr r3, _08015750 @ =0x03000056
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, [r2, #4]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0801574C: .4byte gMultiplayerPlayerTasks
_08015750: .4byte 0x03000056

	thumb_func_start LaunchPlayer
LaunchPlayer: @ 0x08015754
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _080157A0 @ =Task_HandleLaunchPlayer
	movs r2, #0x80
	lsls r2, r2, #6
	movs r5, #0
	str r5, [sp]
	movs r1, #2
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	ldr r2, _080157A4 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r1, r0
	strh r5, [r2, #0x38]
	adds r3, r2, #0
	adds r3, #0x40
	movs r0, #0x2a
	strb r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x10
	orrs r1, r0
	str r1, [r2, #0x10]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080157A0: .4byte Task_HandleLaunchPlayer
_080157A4: .4byte gPlayer

@ This function is higher up in SA2
	thumb_func_start sa2__sub_8018120
sa2__sub_8018120: @ 0x080157A8
	push {r4, lr}
	ldr r0, _08015808 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _0801580C @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080157E2
	ldr r0, [r2, #0x28]
	cmp r0, r4
	bne _080157E2
	ldr r1, [r4, #0x44]
	lsls r1, r1, #8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r4, #0x48]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r2, #4]
_080157E2:
	bl sa2__sub_8018300
	cmp r0, #0
	beq _08015802
	ldr r0, [r4, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015802
	ldr r2, _0801580C @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r4, #0x4c]
_08015802:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015808: .4byte gCurTask
_0801580C: .4byte gPlayer

@ -- End of src/game/multiplayer/mp_player.c ---
