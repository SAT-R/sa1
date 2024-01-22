.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_StageGoal
CreateEntity_StageGoal: @ 0x0801F180
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #4
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _0801F1B8
	ldr r0, _0801F1B4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801F262
	b _0801F1CC
	.align 2, 0
_0801F1B4: .4byte gGameMode
_0801F1B8:
	ldr r0, _0801F274 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	bne _0801F1CC
	ldr r0, _0801F278 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0801F262
_0801F1CC:
	ldr r0, _0801F27C @ =Task_StageGoal
	ldr r1, _0801F280 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	ldr r1, _0801F284 @ =0x0300000C
	adds r4, r5, r1
	movs r6, #0
	mov r2, sl
	strh r2, [r0, #4]
	mov r1, sb
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, sl
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x24
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	ldr r0, _0801F288 @ =0x000001C5
	strh r0, [r4, #0xa]
	ldr r2, _0801F28C @ =0x0300002C
	adds r0, r5, r2
	movs r1, #0
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r2, #1
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0801F290 @ =0x0300002E
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0801F294 @ =0x03000031
	adds r5, r5, r1
	movs r2, #0
	strb r2, [r5]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_0801F262:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F274: .4byte gCurrentLevel
_0801F278: .4byte gGameMode
_0801F27C: .4byte Task_StageGoal
_0801F280: .4byte TaskDestructor_8009670
_0801F284: .4byte 0x0300000C
_0801F288: .4byte 0x000001C5
_0801F28C: .4byte 0x0300002C
_0801F290: .4byte 0x0300002E
_0801F294: .4byte 0x03000031

	thumb_func_start Task_StageGoal
Task_StageGoal: @ 0x0801F298
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0801F360 @ =gGameMode
	ldrb r1, [r0]
	cmp r1, #1
	bls _0801F2C6
	ldr r1, _0801F364 @ =gMultiplayerPlayerTasks
	ldr r0, _0801F368 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sl, r1
_0801F2C6:
	ldr r4, _0801F36C @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sb, r0
	ldr r0, _0801F370 @ =0x0300000C
	adds r0, r0, r1
	mov r8, r0
	mov r1, sb
	ldr r1, [r1]
	str r1, [sp, #4]
	mov r2, sb
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, [sp, #4]
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	mov r5, sb
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0801F374 @ =gCamera
	ldrh r0, [r3]
	lsrs r5, r1, #0x10
	str r5, [sp]
	asrs r5, r1, #0x10
	subs r0, r5, r0
	mov r1, r8
	strh r0, [r1, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	subs r0, r6, r0
	strh r0, [r1, #0x18]
	ldr r2, _0801F360 @ =gGameMode
	ldrb r7, [r2]
	cmp r7, #3
	beq _0801F324
	cmp r7, #5
	beq _0801F324
	b _0801F4D8
_0801F324:
	movs r3, #1
	str r3, [sp, #8]
	ldr r1, _0801F378 @ =gUnknown_03005A20
	ldr r0, [r1]
	asrs r3, r0, #8
	adds r4, r1, #0
	cmp r3, r5
	bgt _0801F336
	b _0801F4B8
_0801F336:
	ldr r0, _0801F37C @ =gCurrentLevel
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #7
	bne _0801F34C
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r1, r6, #0
	subs r1, #0x50
	cmp r0, r1
	bgt _0801F3D2
_0801F34C:
	cmp r7, #1
	bls _0801F380
	cmp r2, #0xa
	bne _0801F3C4
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, r6
	blt _0801F3D2
	b _0801F3C4
	.align 2, 0
_0801F360: .4byte gGameMode
_0801F364: .4byte gMultiplayerPlayerTasks
_0801F368: .4byte 0x04000128
_0801F36C: .4byte gCurTask
_0801F370: .4byte 0x0300000C
_0801F374: .4byte gCamera
_0801F378: .4byte gUnknown_03005A20
_0801F37C: .4byte gCurrentLevel
_0801F380:
	cmp r2, #0xa
	bne _0801F3C4
	ldr r1, [r4, #0x64]
	adds r0, r1, #0
	adds r0, #0x38
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r3, r3, r2
	cmp r3, r5
	bgt _0801F3C4
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r5
	blt _0801F3C4
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r5, #0x39
	ldrsb r2, [r5, r1]
	adds r3, r0, r2
	cmp r3, r6
	bgt _0801F3C4
	adds r0, r1, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r6
	bge _0801F3D2
_0801F3C4:
	ldr r1, _0801F494 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #7
	beq _0801F4B8
	cmp r0, #0xa
	beq _0801F4B8
_0801F3D2:
	mov r2, sl
	ldr r0, [r2, #0x5c]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x5c]
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x78
	ldr r5, _0801F498 @ =gCamera
	strh r0, [r5, #0x1a]
	movs r4, #0
	ldr r1, _0801F49C @ =gMultiplayerPlayerTasks
	ldr r0, [r1]
	cmp r0, #0
	beq _0801F460
	ldr r6, _0801F4A0 @ =0x04000128
	adds r7, r1, #0
	movs r0, #0x10
	mov ip, r0
	ldr r1, _0801F4A4 @ =gUnknown_03005150
	mov sl, r1
_0801F3FE:
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0801F44C
	lsls r0, r4, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	mov r2, sl
	ldrb r3, [r2]
	mov r2, ip
	lsls r2, r4
	ands r2, r3
	adds r0, r4, #4
	asrs r2, r0
	ldr r1, [r6]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	mov r0, ip
	lsls r0, r1
	ands r3, r0
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r2, r3
	bne _0801F44C
	ldr r3, _0801F4A8 @ =0x03000054
	adds r0, r5, r3
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801F44C
	movs r5, #0
	str r5, [sp, #8]
_0801F44C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bhi _0801F460
	lsls r0, r4, #2
	adds r0, r0, r7
	ldr r0, [r0]
	cmp r0, #0
	bne _0801F3FE
_0801F460:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0801F468
	b _0801F620
_0801F468:
	ldr r1, _0801F4AC @ =gUnknown_03005048
	ldr r0, _0801F4A0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801F482
	b _0801F5DA
_0801F482:
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r2, _0801F4B0 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _0801F4B4 @ =Task_StageGoal3
	b _0801F606
	.align 2, 0
_0801F494: .4byte gCurrentLevel
_0801F498: .4byte gCamera
_0801F49C: .4byte gMultiplayerPlayerTasks
_0801F4A0: .4byte 0x04000128
_0801F4A4: .4byte gUnknown_03005150
_0801F4A8: .4byte 0x03000054
_0801F4AC: .4byte gUnknown_03005048
_0801F4B0: .4byte gCurTask
_0801F4B4: .4byte Task_StageGoal3
_0801F4B8:
	ldr r0, _0801F4D0 @ =gUnknown_03005A0C
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	ldr r1, _0801F4D4 @ =gCamera
	strh r0, [r1, #0x1a]
	mov r2, sl
	ldr r0, [r2, #0x5c]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x5c]
	b _0801F620
	.align 2, 0
_0801F4D0: .4byte gUnknown_03005A0C
_0801F4D4: .4byte gCamera
_0801F4D8:
	ldr r1, _0801F510 @ =gUnknown_03005A20
	ldr r0, [r1]
	asrs r2, r0, #8
	adds r4, r1, #0
	cmp r2, r5
	bgt _0801F4E6
	b _0801F620
_0801F4E6:
	ldr r0, _0801F514 @ =gCurrentLevel
	movs r3, #0
	ldrsb r3, [r0, r3]
	cmp r3, #7
	bne _0801F4FC
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r1, r6, #0
	subs r1, #0x50
	cmp r0, r1
	bgt _0801F572
_0801F4FC:
	cmp r7, #1
	bls _0801F518
	cmp r3, #0xa
	bne _0801F564
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, r6
	blt _0801F572
	b _0801F564
	.align 2, 0
_0801F510: .4byte gUnknown_03005A20
_0801F514: .4byte gCurrentLevel
_0801F518:
	cmp r3, #0xa
	bne _0801F564
	ldr r3, [r4, #0x64]
	mov ip, r3
	mov r0, ip
	adds r0, #0x38
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r3, r2, r1
	cmp r3, r5
	bgt _0801F564
	adds r0, #2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r5
	blt _0801F564
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	mov r3, ip
	adds r3, #0x39
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r1, r0, r3
	cmp r1, r6
	bgt _0801F564
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r6
	bge _0801F572
_0801F564:
	ldr r5, _0801F594 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #7
	beq _0801F620
	cmp r0, #0xa
	beq _0801F620
_0801F572:
	ldr r1, _0801F598 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #1
	bls _0801F5A4
	ldr r1, _0801F59C @ =gUnknown_03005048
	ldr r0, _0801F5A0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801F5B2
	b _0801F5DA
	.align 2, 0
_0801F594: .4byte gCurrentLevel
_0801F598: .4byte gGameMode
_0801F59C: .4byte gUnknown_03005048
_0801F5A0: .4byte 0x04000128
_0801F5A4:
	ldr r0, _0801F5C4 @ =gUnknown_03005048
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0801F5D0
_0801F5B2:
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r2, _0801F5C8 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _0801F5CC @ =Task_StageGoal3
	b _0801F606
	.align 2, 0
_0801F5C4: .4byte gUnknown_03005048
_0801F5C8: .4byte gCurTask
_0801F5CC: .4byte Task_StageGoal3
_0801F5D0:
	ldr r0, _0801F610 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r2, #3
	orrs r1, r2
	strh r1, [r0]
_0801F5DA:
	ldr r3, _0801F614 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0xa
	beq _0801F5EA
	movs r0, #0x87
	bl m4aSongNumStart
_0801F5EA:
	movs r1, #0
	movs r0, #0
	mov r5, sb
	strh r0, [r5, #0x3c]
	mov r0, sb
	adds r0, #0x3e
	strb r1, [r0]
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0801F618 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F61C @ =Task_StageGoal2
_0801F606:
	str r0, [r1, #8]
	bl _call_via_r0
	b _0801F670
	.align 2, 0
_0801F610: .4byte gUnknown_03005004
_0801F614: .4byte gCurrentLevel
_0801F618: .4byte gCurTask
_0801F61C: .4byte Task_StageGoal2
_0801F620:
	mov r1, r8
	ldrh r0, [r1, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0801F648
	mov r2, r8
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0801F648
	movs r5, #0x18
	ldrsh r1, [r2, r5]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0801F660
_0801F648:
	mov r1, sb
	ldrb r0, [r1, #8]
	ldr r2, [sp, #4]
	strb r0, [r2]
	ldr r3, _0801F65C @ =gCurTask
	ldr r0, [r3]
	bl TaskDestroy
	b _0801F670
	.align 2, 0
_0801F65C: .4byte gCurTask
_0801F660:
	ldr r5, [sp, #4]
	movs r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _0801F670
	mov r0, r8
	bl DisplaySprite
_0801F670:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_StageGoal2
Task_StageGoal2: @ 0x0801F680
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0801F710 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r4, r0, r7
	ldr r1, _0801F714 @ =0x0300000C
	adds r6, r0, r1
	ldr r2, [r4]
	mov r8, r2
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r5, _0801F718 @ =gCamera
	ldrh r0, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x16]
	ldrh r0, [r5, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #0x18]
	ldr r0, _0801F71C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801F6D2
	b _0801F7D0
_0801F6D2:
	ldr r0, _0801F720 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _0801F728
	ldr r2, _0801F724 @ =gUnknown_03005A20
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x10
	strh r0, [r2, #0x38]
	ldrh r3, [r5, #0xe]
	movs r0, #0xe
	ldrsh r1, [r5, r0]
	movs r0, #0x38
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0801F700
	subs r0, r3, #1
	strh r0, [r5, #0xe]
_0801F700:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	movs r1, #0x90
	lsls r1, r1, #3
	cmp r0, r1
	ble _0801F73A
	strh r1, [r2, #0xc]
	b _0801F73A
	.align 2, 0
_0801F710: .4byte gCurTask
_0801F714: .4byte 0x0300000C
_0801F718: .4byte gCamera
_0801F71C: .4byte gGameMode
_0801F720: .4byte gCurrentLevel
_0801F724: .4byte gUnknown_03005A20
_0801F728:
	ldr r0, _0801F7B4 @ =gUnknown_03005A20
	ldr r1, [r0, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0xf
	orrs r1, r2
	str r1, [r0, #0x10]
	movs r0, #0x78
	bl m4aSongNumStop
_0801F73A:
	ldr r0, _0801F7B8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _0801F76C
	ldrh r0, [r4, #0x3c]
	cmp r0, #0x1e
	bls _0801F76C
	adds r1, r4, #0
	adds r1, #0x3e
	movs r3, #0
	ldrsb r3, [r1, r3]
	cmp r3, #0
	bne _0801F76C
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0801F7BC @ =Task_ShowResults
	movs r2, #0x80
	lsls r2, r2, #6
	str r3, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
_0801F76C:
	ldr r1, _0801F7C0 @ =gUnknown_03005048
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r4, #0x3c]
	adds r1, r0, #1
	strh r1, [r4, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bhi _0801F782
	b _0801FA04
_0801F782:
	ldr r0, _0801F7B4 @ =gUnknown_03005A20
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1c
	beq _0801F79E
	ldr r0, _0801F7B8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _0801F79E
	b _0801FA04
_0801F79E:
	ldr r0, _0801F7C4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _0801F7C8 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _0801F7CC @ =gCourseTime
	ldr r1, [r1]
	bl sub_80573D4
	b _0801FA1A
	.align 2, 0
_0801F7B4: .4byte gUnknown_03005A20
_0801F7B8: .4byte gCurrentLevel
_0801F7BC: .4byte Task_ShowResults
_0801F7C0: .4byte gUnknown_03005048
_0801F7C4: .4byte gCurTask
_0801F7C8: .4byte gRingCount
_0801F7CC: .4byte gCourseTime
_0801F7D0:
	cmp r0, #2
	bne _0801F8A6
	movs r5, #0
	ldr r3, _0801F880 @ =gMultiplayerPlayerTasks
	ldr r0, _0801F884 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r6, r0, r7
	ldr r2, _0801F888 @ =gUnknown_03005A20
	adds r4, r2, #0
	adds r4, #0x26
	ldrb r1, [r4]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r4]
	strh r5, [r2, #0x22]
	ldr r0, [r3]
	cmp r0, #0
	beq _0801F824
	adds r4, r7, #0
	adds r2, r3, #0
	adds r2, #0xc
	movs r1, #1
_0801F808:
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	adds r0, r0, r4
	ldr r0, [r0, #0x5c]
	ands r0, r1
	cmp r0, #0
	beq _0801F818
	adds r5, #1
_0801F818:
	adds r3, #4
	cmp r3, r2
	bhi _0801F824
	ldr r0, [r3]
	cmp r0, #0
	bne _0801F808
_0801F824:
	ldr r0, _0801F884 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_8019C14
	ldr r0, [r6, #0x5c]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #0x5c]
	cmp r5, #0
	bne _0801F852
	ldr r2, _0801F88C @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0801F890 @ =gCourseTime
	movs r0, #0xe1
	lsls r0, r0, #4
	str r0, [r1]
_0801F852:
	ldr r2, _0801F888 @ =gUnknown_03005A20
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x10
	strh r0, [r2, #0x38]
	bl sub_80182FC
	movs r1, #7
	strb r1, [r0]
	ldr r0, _0801F894 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F898 @ =Task_StageGoal4
	str r0, [r1, #8]
	ldr r2, _0801F89C @ =gCamera
	ldrh r1, [r2, #0x26]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #0x26]
	b _0801FA1A
	.align 2, 0
_0801F880: .4byte gMultiplayerPlayerTasks
_0801F884: .4byte 0x04000128
_0801F888: .4byte gUnknown_03005A20
_0801F88C: .4byte gUnknown_03005004
_0801F890: .4byte gCourseTime
_0801F894: .4byte gCurTask
_0801F898: .4byte Task_StageGoal4
_0801F89C: .4byte gCamera
_0801F8A0:
	movs r2, #1
	mov r8, r2
	b _0801F916
_0801F8A6:
	movs r0, #0
	mov r8, r0
	ldr r3, _0801F970 @ =gMultiplayerPlayerTasks
	ldr r5, _0801F974 @ =0x04000128
	ldr r0, [r5]
	ldr r2, _0801F978 @ =gUnknown_03005A20
	adds r4, r2, #0
	adds r4, #0x26
	ldrb r1, [r4]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r4]
	mov r1, r8
	strh r1, [r2, #0x22]
	movs r4, #0
	ldr r0, [r3]
	mov ip, r3
	cmp r0, #0
	beq _0801F916
	ldr r0, _0801F97C @ =gUnknown_03005150
	ldrb r3, [r0]
	movs r7, #0x10
	adds r6, r5, #0
	mov r5, ip
_0801F8D6:
	adds r2, r7, #0
	lsls r2, r4
	ands r2, r3
	adds r0, r4, #4
	asrs r2, r0
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r1, r7, #0
	lsls r1, r0
	ands r1, r3
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r1, r0
	cmp r2, r1
	beq _0801F908
	ldr r0, _0801F980 @ =gUnknown_03005048
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0801F8A0
_0801F908:
	adds r5, #4
	adds r4, #1
	cmp r4, #3
	bhi _0801F916
	ldr r0, [r5]
	cmp r0, #0
	bne _0801F8D6
_0801F916:
	movs r4, #0
	mov r2, ip
	ldr r0, [r2]
	cmp r0, #0
	beq _0801F9AC
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	movs r7, #0x10
	ldr r6, _0801F974 @ =0x04000128
	movs r5, #0
_0801F92C:
	ldr r0, _0801F980 @ =gUnknown_03005048
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, sb
	bne _0801F994
	ldr r0, _0801F97C @ =gUnknown_03005150
	ldrb r3, [r0]
	adds r2, r7, #0
	lsls r2, r4
	ands r2, r3
	adds r0, r4, #4
	asrs r2, r0
	ldr r1, [r6]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	adds r0, r7, #0
	lsls r0, r1
	ands r3, r0
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r2, r3
	bne _0801F984
	lsrs r0, r5, #0x18
	mov r2, r8
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl sub_8019C14
	b _0801F994
	.align 2, 0
_0801F970: .4byte gMultiplayerPlayerTasks
_0801F974: .4byte 0x04000128
_0801F978: .4byte gUnknown_03005A20
_0801F97C: .4byte gUnknown_03005150
_0801F980: .4byte gUnknown_03005048
_0801F984:
	lsrs r0, r5, #0x18
	movs r2, #1
	mov r1, r8
	eors r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_8019C14
_0801F994:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #3
	bhi _0801F9AC
	ldr r0, _0801F9E8 @ =gMultiplayerPlayerTasks
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0801F92C
_0801F9AC:
	ldr r1, _0801F9EC @ =gUnknown_03005004
	ldrh r0, [r1]
	movs r4, #4
	orrs r0, r4
	strh r0, [r1]
	ldr r1, _0801F9F0 @ =gCourseTime
	movs r0, #0xe1
	lsls r0, r0, #4
	str r0, [r1]
	ldr r2, _0801F9F4 @ =gUnknown_03005A20
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x10
	strh r0, [r2, #0x38]
	bl sub_80182FC
	movs r1, #7
	strb r1, [r0]
	ldr r0, _0801F9F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F9FC @ =Task_StageGoal4
	str r0, [r1, #8]
	ldr r1, _0801FA00 @ =gCamera
	ldrh r0, [r1, #0x26]
	orrs r4, r0
	strh r4, [r1, #0x26]
	b _0801FA1A
	.align 2, 0
_0801F9E8: .4byte gMultiplayerPlayerTasks
_0801F9EC: .4byte gUnknown_03005004
_0801F9F0: .4byte gCourseTime
_0801F9F4: .4byte gUnknown_03005A20
_0801F9F8: .4byte gCurTask
_0801F9FC: .4byte Task_StageGoal4
_0801FA00: .4byte gCamera
_0801FA04:
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0801FA1A
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0801FA1A:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_StageGoal3
Task_StageGoal3: @ 0x0801FA28
	push {r4, r5, r6, lr}
	ldr r0, _0801FAA0 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r6, r3
	ldr r0, _0801FAA4 @ =0x0300000C
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
	ldr r3, _0801FAA8 @ =gCamera
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
	beq _0801FA98
	ldr r0, _0801FAAC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801FA8C
	adds r1, r2, #0
	adds r1, #0x20
	ldr r0, _0801FAB0 @ =gUnknown_03005A20
	ldr r0, [r0]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _0801FA8C
	ldr r0, _0801FAB4 @ =0x0300002C
	adds r1, r6, r0
	movs r0, #2
	strb r0, [r1]
_0801FA8C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0801FA98:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801FAA0: .4byte gCurTask
_0801FAA4: .4byte 0x0300000C
_0801FAA8: .4byte gCamera
_0801FAAC: .4byte gGameMode
_0801FAB0: .4byte gUnknown_03005A20
_0801FAB4: .4byte 0x0300002C

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
	ldr r0, _0801FD3C @ =gUnknown_03005048
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
	ldr r0, _0801FD48 @ =gUnknown_03005150
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
	ldr r0, _0801FD4C @ =gUnknown_03005A20
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
	ldr r5, _0801FD4C @ =gUnknown_03005A20
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
	bl sub_8046CEC
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
	bl sub_804516C
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
	ldr r2, _0801FD4C @ =gUnknown_03005A20
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
	bl sub_8019C14
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
	bl sub_8019DB0
	b _0801FD8E
	.align 2, 0
_0801FD2C: .4byte 0x04000128
_0801FD30: .4byte gCurTask
_0801FD34: .4byte 0x0300000C
_0801FD38: .4byte gCamera
_0801FD3C: .4byte gUnknown_03005048
_0801FD40: .4byte gGameMode
_0801FD44: .4byte gMultiplayerPlayerTasks
_0801FD48: .4byte gUnknown_03005150
_0801FD4C: .4byte gUnknown_03005A20
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
	ldr r0, _0801FE7C @ =gUnknown_03005A20
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
_0801FE7C: .4byte gUnknown_03005A20
_0801FE80: .4byte 0x0300002C

	thumb_func_start Task_ShowResults
Task_ShowResults: @ 0x0801FE84
	push {r4, lr}
	ldr r4, _0801FEC4 @ =gUnknown_03005A20
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
	bl sub_8042848
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
_0801FEC4: .4byte gUnknown_03005A20
_0801FEC8: .4byte 0x0000023F
_0801FECC: .4byte gCurTask
