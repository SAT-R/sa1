.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_CourseSelectInit
Task_CourseSelectInit: @ 0x08061E84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	movs r5, #0
	ldr r0, _08061EE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	mov sl, r0
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x30]
	mov r3, sl
	ldr r0, [r3, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	ldr r0, [r3, #0x18]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r7, [r3, #0x4c]
	mov r8, r7
	adds r1, #0x58
	adds r0, r2, r1
	ldrb r0, [r0]
	movs r3, #1
	add r8, r3
	mov r7, r8
	cmp r7, #0x3f
	bne _08061EE4
	cmp r0, #1
	bne _08061EE4
	subs r1, #6
	adds r0, r2, r1
	strh r5, [r0]
	adds r3, r1, #0
	adds r3, r3, r2
	mov sb, r3
	b _08061EEE
	.align 2, 0
_08061EE0: .4byte gCurTask
_08061EE4:
	mov r1, sl
	adds r1, #0x52
	movs r0, #0x14
	strh r0, [r1]
	mov sb, r1
_08061EEE:
	mov r4, sl
	adds r4, #0x50
	movs r0, #0x14
	strh r0, [r4]
	mov r7, r8
	cmp r7, #0xa
	bhi _08061F64
	add r1, sp, #0x2c
	movs r0, #0x3e
	strb r0, [r1]
	subs r1, #1
	movs r0, #0
	strb r0, [r1]
	ldr r2, _080620FC @ =gUiGraphics
	movs r1, #0xd9
	lsls r1, r1, #3
	adds r0, r2, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r3, _08062100 @ =0x000006CC
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x18]
	str r0, [sp, #0x24]
	add r1, sp, #0x28
	movs r0, #3
	strb r0, [r1]
	ldr r0, _08062104 @ =0x06010020
	str r0, [sp, #0xc]
	adds r1, #2
	movs r0, #0xc
	strb r0, [r1]
	movs r7, #0xda
	lsls r7, r7, #3
	adds r0, r2, r7
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	adds r3, #8
	adds r0, r2, r3
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r7, #8
	adds r0, r2, r7
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r3, #8
	adds r0, r2, r3
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r7, #8
	adds r2, r2, r7
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
_08061F64:
	mov r0, r8
	mov r1, sl
	str r0, [r1, #0x4c]
	movs r0, #0xb4
	lsls r0, r0, #2
	ldr r2, [sp, #0x30]
	adds r1, r2, r0
	mov r3, r8
	str r3, [r1]
	ldr r7, [sp, #0x34]
	adds r0, r7, r0
	str r3, [r0]
	str r3, [r6, #0x48]
	mov r3, sl
	adds r3, #0x55
	ldrb r2, [r3]
	ldr r0, _08062108 @ =0x000002D7
	ldr r7, [sp, #0x30]
	adds r1, r7, r0
	strb r2, [r1]
	ldrb r1, [r3]
	ldr r2, [sp, #0x34]
	adds r0, r2, r0
	strb r1, [r0]
	ldrb r0, [r3]
	adds r3, r6, #0
	adds r3, #0x4f
	strb r0, [r3]
	mov r3, sb
	movs r7, #0
	ldrsh r0, [r3, r7]
	ldrh r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0xa
	bl Div
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r3, [sp, #0x30]
	adds r2, r3, r0
	strh r1, [r2]
	ldrh r1, [r4]
	ldr r7, [sp, #0x34]
	adds r0, r7, r0
	strh r1, [r0]
	ldrh r1, [r4]
	adds r0, r6, #0
	adds r0, #0x4c
	strh r1, [r0]
	mov r0, sl
	adds r0, #0x57
	ldrb r1, [r0]
	ldr r2, _0806210C @ =0x000002D9
	adds r0, r3, r2
	strb r1, [r0]
	mov r0, sl
	bl sub_805423C
	ldr r1, _08062110 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r1, _08062114 @ =gHBlankCopyTarget
	ldr r0, _08062118 @ =0x04000010
	str r0, [r1]
	ldr r0, _0806211C @ =gHBlankCopySize
	strb r2, [r0]
	ldr r0, _08062120 @ =gBgOffsetsHBlank
	ldr r1, [r0]
	movs r2, #0
	movs r4, #0
	movs r3, #0x14
_08061FFE:
	strh r4, [r1]
	adds r1, #2
	strh r3, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r2, #0xb
	bls _08061FFE
	movs r2, #0
	cmp r5, #0x9f
	bhi _080620A4
	movs r0, #0x40
	mov r3, r8
	subs r3, r0, r3
	str r3, [sp, #0x38]
_08062024:
	movs r3, #0
	adds r6, r2, #1
	mov sb, r6
	lsls r7, r2, #1
	str r7, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	cmp r3, r0
	bhs _08062068
	cmp r5, #0x9f
	bhi _08062068
	movs r6, #0
	mov ip, r6
	ldr r0, _08062124 @ =0x000001FF
	adds r7, r0, #0
	movs r0, #0x40
	mov r6, r8
	subs r4, r0, r6
_08062046:
	mov r0, ip
	strh r0, [r1]
	adds r1, #2
	rsbs r0, r5, #0
	ands r0, r7
	strh r0, [r1]
	adds r1, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r4
	bhs _08062068
	cmp r5, #0x9f
	bls _08062046
_08062068:
	ldr r3, [sp, #0x3c]
	adds r0, r3, r2
	lsls r0, r0, #3
	subs r0, r0, r5
	adds r0, #0x20
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r2, #0
	cmp r5, #0x9f
	bhi _0806209A
	movs r4, #0
_0806207E:
	strh r4, [r1]
	adds r1, #2
	strh r3, [r1]
	adds r1, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x17
	bhi _0806209A
	cmp r5, #0x9f
	bls _0806207E
_0806209A:
	mov r6, sb
	lsls r0, r6, #0x18
	lsrs r2, r0, #0x18
	cmp r5, #0x9f
	bls _08062024
_080620A4:
	mov r7, r8
	cmp r7, #0x3f
	beq _080620B6
	ldr r0, _08062128 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080620EC
_080620B6:
	ldr r1, _0806212C @ =gBgScrollRegs
	movs r0, #0x14
	strh r0, [r1, #2]
	movs r2, #0x3f
	mov r0, sl
	str r2, [r0, #0x4c]
	movs r0, #0xb4
	lsls r0, r0, #2
	ldr r3, [sp, #0x30]
	adds r1, r3, r0
	str r2, [r1]
	ldr r6, [sp, #0x34]
	adds r0, r6, r0
	str r2, [r0]
	ldr r1, _08062130 @ =gBgCntRegs
	ldr r0, _08062134 @ =0x00009D83
	strh r0, [r1]
	ldr r2, _08062110 @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r0, _08062138 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806213C @ =sub_8062140
	str r0, [r1, #8]
_080620EC:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080620FC: .4byte gUiGraphics
_08062100: .4byte 0x000006CC
_08062104: .4byte 0x06010020
_08062108: .4byte 0x000002D7
_0806210C: .4byte 0x000002D9
_08062110: .4byte gFlags
_08062114: .4byte gHBlankCopyTarget
_08062118: .4byte 0x04000010
_0806211C: .4byte gHBlankCopySize
_08062120: .4byte gBgOffsetsHBlank
_08062124: .4byte 0x000001FF
_08062128: .4byte gPressedKeys
_0806212C: .4byte gBgScrollRegs
_08062130: .4byte gBgCntRegs
_08062134: .4byte 0x00009D83
_08062138: .4byte gCurTask
_0806213C: .4byte sub_8062140

	thumb_func_start sub_8062140
sub_8062140: @ 0x08062140
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080621CC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	ldr r0, [r7, #0x10]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r7, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r7, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, _080621D0 @ =gGameMode
	ldrb r1, [r0]
	mov sb, r0
	cmp r1, #1
	bls _08062244
	movs r5, #0
	ldr r2, _080621D4 @ =gMultiplayerConnections
	ldrb r1, [r2]
	movs r0, #1
	ands r1, r0
	mov r8, r2
	ldr r2, _080621D8 @ =gMultiSioStatusFlags
	cmp r1, #0
	beq _08062210
	movs r6, #1
	ldr r3, _080621DC @ =gMultiplayerMissingHeartbeats
_08062190:
	adds r0, r6, #0
	lsls r0, r5
	ldr r4, [r2]
	ands r4, r0
	cmp r4, #0
	bne _080621F8
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _080621FC
	movs r0, #0
	ldr r1, _080621E0 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _080621E4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080621E8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080621EC @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _080621F0 @ =gVramGraphicsCopyCursor
	ldr r0, _080621F4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _08062514
	.align 2, 0
_080621CC: .4byte gCurTask
_080621D0: .4byte gGameMode
_080621D4: .4byte gMultiplayerConnections
_080621D8: .4byte gMultiSioStatusFlags
_080621DC: .4byte gMultiplayerMissingHeartbeats
_080621E0: .4byte 0x0000FFFF
_080621E4: .4byte gBackgroundsCopyQueueCursor
_080621E8: .4byte gBackgroundsCopyQueueIndex
_080621EC: .4byte sa2__gUnknown_03005390
_080621F0: .4byte gVramGraphicsCopyCursor
_080621F4: .4byte gVramGraphicsCopyQueueIndex
_080621F8:
	movs r0, #0
	strb r0, [r3]
_080621FC:
	adds r3, #1
	adds r5, #1
	cmp r5, #3
	bhi _08062210
	mov r1, r8
	ldrb r0, [r1]
	asrs r0, r5
	ands r0, r6
	cmp r0, #0
	bne _08062190
_08062210:
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #1
	bls _08062244
	ldr r2, _08062298 @ =gMultiSioRecv
	ldr r0, _0806229C @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08062244
	ldrh r0, [r2]
	cmp r0, #0x4f
	bls _08062234
	ldrb r0, [r2, #2]
	adds r1, r7, #0
	adds r1, #0x55
	strb r0, [r1]
_08062234:
	adds r4, r7, #0
	adds r4, #0x1c
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062244:
	ldr r3, [r7, #0x4c]
	mov r8, r3
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	mov sb, r0
	movs r4, #1
	add r8, r4
	ldr r0, _0806229C @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r2, #0x80
	ands r0, r2
	cmp r0, #0
	bne _0806226C
	ldr r0, _080622A0 @ =gGameMode
	ldrb r0, [r0]
	adds r6, r7, #0
	adds r6, #0x55
	cmp r0, #1
	bhi _080622C2
_0806226C:
	adds r6, r7, #0
	adds r6, #0x55
	mov r0, sb
	cmp r0, #1
	bls _080622C2
	ldr r0, _080622A4 @ =gRepeatedKeys
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080622A8
	ldrb r1, [r6]
	mov r0, sb
	subs r0, #1
	cmp r1, r0
	bge _080622C2
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrb r0, [r6]
	adds r0, #1
	b _080622C0
	.align 2, 0
_08062298: .4byte gMultiSioRecv
_0806229C: .4byte gMultiSioStatusFlags
_080622A0: .4byte gGameMode
_080622A4: .4byte gRepeatedKeys
_080622A8:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080622C2
	ldrb r0, [r6]
	cmp r0, #1
	bls _080622C2
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrb r0, [r6]
	subs r0, #1
_080622C0:
	strb r0, [r6]
_080622C2:
	ldrb r5, [r6]
	adds r4, r7, #0
	adds r4, #0x52
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #0x18
	bl Div
	adds r0, #5
	adds r3, r4, #0
	cmp r5, r0
	ble _0806235A
	ldr r0, _08062334 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08062322
	ldr r0, _08062338 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	ble _08062322
	ldr r1, _0806233C @ =gLoadedSaveGame
	ldrb r0, [r1, #0x1d]
	cmp r0, #0x7f
	bne _08062322
	ldrh r2, [r1, #8]
	cmp r2, #0xc
	bls _08062322
	ldrh r0, [r1, #0xa]
	cmp r0, #0xc
	bls _08062322
	ldrh r0, [r1, #0xc]
	cmp r0, #0xc
	bls _08062322
	ldrh r0, [r1, #0xe]
	cmp r0, #0xc
	bls _08062322
	cmp r2, #0xf
	bne _08062344
	ldr r0, _08062340 @ =gMultiplayerCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	bne _08062344
_08062322:
	mov r2, sb
	cmp r2, #0xd
	bls _08062344
	ldrb r0, [r6]
	cmp r0, #0xd
	bne _08062344
	adds r1, r0, #0
	subs r1, #5
	b _08062382
	.align 2, 0
_08062334: .4byte gSelectedCharacter
_08062338: .4byte gCurrentLevel
_0806233C: .4byte gLoadedSaveGame
_08062340: .4byte gMultiplayerCurrentLevel
_08062344:
	ldrb r0, [r6]
	subs r0, #5
	movs r1, #0x1e
	ands r0, r1
	adds r0, #1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	subs r1, #8
	strh r1, [r3]
	b _0806238C
_0806235A:
	ldrb r4, [r6]
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r1, #0x18
	str r3, [sp, #8]
	bl Div
	ldr r3, [sp, #8]
	cmp r4, r0
	bgt _0806238C
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, #8
	cmp r0, #0x10
	ble _0806238A
	lsrs r1, r1, #1
	lsls r1, r1, #1
	subs r1, #1
_08062382:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, #8
_0806238A:
	strh r0, [r3]
_0806238C:
	mov r2, r8
	str r2, [r7, #0x4c]
	movs r0, #0xb4
	lsls r0, r0, #2
	mov r4, sl
	adds r1, r4, r0
	str r2, [r1]
	ldr r1, [sp]
	adds r0, r1, r0
	str r2, [r0]
	ldr r4, [sp, #4]
	str r2, [r4, #0x48]
	ldrb r2, [r6]
	ldr r0, _08062470 @ =0x000002D7
	mov r4, sl
	adds r1, r4, r0
	strb r2, [r1]
	ldrb r1, [r6]
	ldr r2, [sp]
	adds r0, r2, r0
	strb r1, [r0]
	ldrb r0, [r6]
	ldr r1, [sp, #4]
	adds r1, #0x4f
	strb r0, [r1]
	movs r4, #0
	ldrsh r0, [r3, r4]
	adds r4, r7, #0
	adds r4, #0x50
	ldrh r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0xa
	bl Div
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	movs r0, #0xb5
	lsls r0, r0, #2
	mov r3, sl
	adds r2, r3, r0
	strh r1, [r2]
	ldrh r1, [r4]
	ldr r2, [sp]
	adds r0, r2, r0
	strh r1, [r0]
	ldrh r1, [r4]
	ldr r0, [sp, #4]
	adds r0, #0x4c
	strh r1, [r0]
	adds r5, r7, #0
	adds r5, #0x57
	ldrb r1, [r5]
	ldr r0, _08062474 @ =0x000002D9
	add r0, sl
	strb r1, [r0]
	adds r0, r7, #0
	bl sub_805423C
	ldr r3, _08062478 @ =gGameMode
	ldrb r0, [r3]
	mov sb, r4
	cmp r0, #1
	bls _08062418
	ldr r2, _0806247C @ =gMultiSioSend
	movs r0, #0x50
	strh r0, [r2]
	ldrb r0, [r6]
	strb r0, [r2, #2]
_08062418:
	movs r4, #6
	ldrsh r1, [r7, r4]
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r1, r0
	ble _0806250C
	movs r0, #4
	ldrsh r1, [r7, r0]
	cmp r1, #2
	bne _0806250C
	ldrb r3, [r3]
	cmp r3, #1
	bhi _080624C0
	ldr r0, _08062480 @ =gPressedKeys
	ldrh r2, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq _0806248C
	cmp r3, #1
	beq _0806244A
	movs r0, #4
	bl m4aSongNumStop
_0806244A:
	mov r1, r8
	cmp r1, #0x40
	bls _0806250C
	movs r0, #1
	strb r0, [r5]
	ldr r0, _08062484 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062488 @ =sub_8062540
	str r0, [r1, #8]
	movs r0, #0x6a
	bl m4aSongNumStart
	strh r4, [r7, #4]
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	b _08062508
	.align 2, 0
_08062470: .4byte 0x000002D7
_08062474: .4byte 0x000002D9
_08062478: .4byte gGameMode
_0806247C: .4byte gMultiSioSend
_08062480: .4byte gPressedKeys
_08062484: .4byte gCurTask
_08062488: .4byte sub_8062540
_0806248C:
	ands r1, r2
	lsls r0, r1, #0x10
	cmp r0, #0
	beq _0806250C
	movs r0, #4
	bl m4aSongNumStop
	movs r0, #2
	strb r0, [r5]
	ldr r0, _080624B8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080624BC @ =sub_8062540
	str r0, [r1, #8]
	movs r0, #0x6b
	bl m4aSongNumStart
	strh r4, [r7, #4]
	ldrh r1, [r7, #6]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	b _08062508
	.align 2, 0
_080624B8: .4byte gCurTask
_080624BC: .4byte sub_8062540
_080624C0:
	ldr r0, _08062524 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080624DE
	ldr r0, _08062528 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080624DE
	ldr r2, _0806252C @ =gMultiSioSend
	movs r0, #0x51
	strh r0, [r2]
_080624DE:
	ldr r2, _08062530 @ =gMultiSioRecv
	ldrh r0, [r2]
	cmp r0, #0x51
	bne _0806250C
	movs r4, #1
	strb r4, [r5]
	ldr r0, _08062534 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062538 @ =sub_8062540
	str r0, [r1, #8]
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r0, #4
	bl m4aSongNumStop
	strh r4, [r7, #4]
	ldrh r1, [r7, #6]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r4, #0
_08062508:
	subs r0, r0, r1
	strh r0, [r7, #6]
_0806250C:
	ldr r1, _0806253C @ =gBgScrollRegs
	mov r2, sb
	ldrh r0, [r2]
	strh r0, [r1, #2]
_08062514:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062524: .4byte gMultiSioStatusFlags
_08062528: .4byte gPressedKeys
_0806252C: .4byte gMultiSioSend
_08062530: .4byte gMultiSioRecv
_08062534: .4byte gCurTask
_08062538: .4byte sub_8062540
_0806253C: .4byte gBgScrollRegs

	thumb_func_start sub_8062540
sub_8062540: @ 0x08062540
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080625C8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r6, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r6, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _080625CC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0806262E
	movs r3, #0
	ldr r0, _080625D0 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _0806260A
	movs r5, #1
	ldr r2, _080625D4 @ =gMultiplayerMissingHeartbeats
_0806258A:
	ldr r1, _080625D8 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _080625F4
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _080625F8
	movs r0, #0
	ldr r1, _080625DC @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _080625E0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080625E4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080625E8 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _080625EC @ =gVramGraphicsCopyCursor
	ldr r0, _080625F0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _08062884
	.align 2, 0
_080625C8: .4byte gCurTask
_080625CC: .4byte gGameMode
_080625D0: .4byte gMultiplayerConnections
_080625D4: .4byte gMultiplayerMissingHeartbeats
_080625D8: .4byte gMultiSioStatusFlags
_080625DC: .4byte 0x0000FFFF
_080625E0: .4byte gBackgroundsCopyQueueCursor
_080625E4: .4byte gBackgroundsCopyQueueIndex
_080625E8: .4byte sa2__gUnknown_03005390
_080625EC: .4byte gVramGraphicsCopyCursor
_080625F0: .4byte gVramGraphicsCopyQueueIndex
_080625F4:
	movs r0, #0
	strb r0, [r2]
_080625F8:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0806260A
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0806258A
_0806260A:
	ldr r0, _08062718 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0806262E
	ldr r2, _0806271C @ =gMultiSioRecv
	ldr r0, _08062720 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0806262E
	ldrh r0, [r2]
	cmp r0, #0x4f
	bls _0806262E
	ldrb r0, [r2, #2]
	adds r1, r6, #0
	adds r1, #0x55
	strb r0, [r1]
_0806262E:
	ldr r2, [r6, #0x4c]
	adds r0, r6, #0
	adds r0, #0x58
	adds r2, #1
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0x52
	cmp r0, #1
	bne _08062644
	movs r0, #0
	strh r0, [r3]
_08062644:
	str r2, [r6, #0x4c]
	movs r0, #0xb4
	lsls r0, r0, #2
	mov r4, r8
	adds r1, r4, r0
	str r2, [r1]
	add r0, sb
	str r2, [r0]
	mov r0, sl
	str r2, [r0, #0x48]
	adds r5, r6, #0
	adds r5, #0x55
	ldrb r2, [r5]
	ldr r0, _08062724 @ =0x000002D7
	adds r1, r4, r0
	strb r2, [r1]
	ldrb r1, [r5]
	add r0, sb
	strb r1, [r0]
	ldrb r0, [r5]
	mov r1, sl
	adds r1, #0x4f
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r4, r6, #0
	adds r4, #0x50
	ldrh r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0xa
	bl Div
	ldrh r2, [r4]
	adds r2, r2, r0
	movs r7, #0
	strh r2, [r4]
	movs r0, #0xb5
	lsls r0, r0, #2
	mov r3, r8
	adds r1, r3, r0
	strh r2, [r1]
	ldrh r1, [r4]
	add r0, sb
	strh r1, [r0]
	ldrh r1, [r4]
	mov r0, sl
	adds r0, #0x4c
	strh r1, [r0]
	movs r0, #0x57
	adds r0, r0, r6
	mov sb, r0
	ldrb r1, [r0]
	ldr r0, _08062728 @ =0x000002D9
	add r0, r8
	strb r1, [r0]
	adds r0, r6, #0
	bl sub_805423C
	movs r3, #6
	ldrsh r1, [r6, r3]
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r1, r0
	bgt _080626C8
	b _08062860
_080626C8:
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #1
	beq _080626D2
	b _08062860
_080626D2:
	ldr r0, _08062718 @ =gGameMode
	ldrb r3, [r0]
	adds r2, r0, #0
	cmp r3, #1
	bls _080626DE
	b _0806284C
_080626DE:
	ldr r2, _0806272C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08062730 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08062734 @ =gBldRegs
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #4]
	ldr r1, _08062738 @ =gBgCntRegs
	ldr r0, _0806273C @ =0x00009D03
	strh r0, [r1]
	ldr r0, _08062740 @ =0x00001806
	strh r0, [r1, #2]
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #1
	beq _08062704
	b _08062814
_08062704:
	cmp r3, #1
	bne _08062768
	ldrb r1, [r5]
	cmp r1, #0
	bne _0806274C
	ldr r0, _08062744 @ =gCurrentLevel
	strb r7, [r0]
	ldr r0, _08062748 @ =gMultiplayerCurrentLevel
	strb r7, [r0]
	b _0806275A
	.align 2, 0
_08062718: .4byte gGameMode
_0806271C: .4byte gMultiSioRecv
_08062720: .4byte gMultiSioStatusFlags
_08062724: .4byte 0x000002D7
_08062728: .4byte 0x000002D9
_0806272C: .4byte gDispCnt
_08062730: .4byte 0x00001FFF
_08062734: .4byte gBldRegs
_08062738: .4byte gBgCntRegs
_0806273C: .4byte 0x00009D03
_08062740: .4byte 0x00001806
_08062744: .4byte gCurrentLevel
_08062748: .4byte gMultiplayerCurrentLevel
_0806274C:
	cmp r1, #0x12
	bhi _0806275A
	ldr r0, _08062760 @ =gCurrentLevel
	subs r1, #1
	strb r1, [r0]
	ldr r0, _08062764 @ =gMultiplayerCurrentLevel
	strb r1, [r0]
_0806275A:
	bl sub_806B81C
	b _080627EA
	.align 2, 0
_08062760: .4byte gCurrentLevel
_08062764: .4byte gMultiplayerCurrentLevel
_08062768:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r0, [r0]
	cmp r0, #1
	bne _08062780
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl CreateTimeAttackRecord
	b _080627EA
_08062780:
	ldr r3, _080627C8 @ =sa2__gUnknown_03004D80
	strb r7, [r3]
	ldr r0, _080627CC @ =sa2__gUnknown_03002280
	strb r7, [r0]
	strb r7, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x20
	strb r2, [r0, #3]
	strb r7, [r3, #1]
	strb r7, [r0, #4]
	strb r7, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r7, [r3, #2]
	strb r7, [r0, #8]
	strb r7, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	strb r7, [r3, #3]
	strb r7, [r0, #0xc]
	strb r7, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r2, [r0, #0xf]
	ldrb r1, [r5]
	cmp r1, #0
	bne _080627D8
	ldr r0, _080627D0 @ =gCurrentLevel
	strb r7, [r0]
	ldr r0, _080627D4 @ =gMultiplayerCurrentLevel
	strb r7, [r0]
	bl ApplyGameStageSettings
	b _080627EA
	.align 2, 0
_080627C8: .4byte sa2__gUnknown_03004D80
_080627CC: .4byte sa2__gUnknown_03002280
_080627D0: .4byte gCurrentLevel
_080627D4: .4byte gMultiplayerCurrentLevel
_080627D8:
	cmp r1, #0x12
	bhi _080627EA
	ldr r0, _08062808 @ =gCurrentLevel
	subs r1, #1
	strb r1, [r0]
	ldr r0, _0806280C @ =gMultiplayerCurrentLevel
	strb r1, [r0]
	bl ApplyGameStageSettings
_080627EA:
	ldr r0, [r6, #0x18]
	bl TaskDestroy
	ldr r0, [r6, #0x14]
	bl TaskDestroy
	ldr r0, [r6, #0x10]
	bl TaskDestroy
	ldr r0, _08062810 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08062884
	.align 2, 0
_08062808: .4byte gCurrentLevel
_0806280C: .4byte gMultiplayerCurrentLevel
_08062810: .4byte gCurTask
_08062814:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r4, [r0]
	ldr r0, [r6, #0x18]
	bl TaskDestroy
	ldr r0, [r6, #0x14]
	bl TaskDestroy
	ldr r0, [r6, #0x10]
	bl TaskDestroy
	ldr r0, _08062840 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	cmp r4, #1
	bne _08062844
	bl CreateTimeAttackMenu
	b _08062884
	.align 2, 0
_08062840: .4byte gCurTask
_08062844:
	movs r0, #0
	bl CreateCharacterSelectionScreen
	b _08062884
_0806284C:
	ldr r0, _08062858 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806285C @ =sub_80628A4
	str r0, [r1, #8]
	b _08062868
	.align 2, 0
_08062858: .4byte gCurTask
_0806285C: .4byte sub_80628A4
_08062860:
	ldr r1, _08062894 @ =gBgScrollRegs
	ldrh r0, [r4]
	strh r0, [r1, #2]
	ldr r2, _08062898 @ =gGameMode
_08062868:
	ldrb r0, [r2]
	cmp r0, #1
	bls _08062884
	ldr r0, _0806289C @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08062884
	ldr r2, _080628A0 @ =gMultiSioSend
	movs r0, #0x51
	strh r0, [r2]
	ldrb r0, [r5]
	strb r0, [r2, #2]
_08062884:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062894: .4byte gBgScrollRegs
_08062898: .4byte gGameMode
_0806289C: .4byte gMultiSioStatusFlags
_080628A0: .4byte gMultiSioSend

	thumb_func_start sub_80628A4
sub_80628A4: @ 0x080628A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08062918 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	ldr r0, _0806291C @ =gGameMode
	ldrb r0, [r0]
	mov sb, r2
	ldr r6, _08062920 @ =gMultiSioStatusFlags
	cmp r0, #1
	bls _0806295A
	movs r5, #0
	ldr r2, _08062924 @ =gMultiplayerConnections
	ldrb r1, [r2]
	movs r0, #1
	ands r1, r0
	adds r7, r2, #0
	cmp r1, #0
	beq _0806295A
	movs r2, #1
	ldr r3, _08062928 @ =gMultiplayerMissingHeartbeats
_080628DA:
	adds r0, r2, #0
	lsls r0, r5
	ldr r4, [r6]
	ands r4, r0
	cmp r4, #0
	bne _08062944
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _08062948
	movs r0, #0
	ldr r1, _0806292C @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _08062930 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08062934 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08062938 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0806293C @ =gVramGraphicsCopyCursor
	ldr r0, _08062940 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _080629DA
	.align 2, 0
_08062918: .4byte gCurTask
_0806291C: .4byte gGameMode
_08062920: .4byte gMultiSioStatusFlags
_08062924: .4byte gMultiplayerConnections
_08062928: .4byte gMultiplayerMissingHeartbeats
_0806292C: .4byte 0x0000FFFF
_08062930: .4byte gBackgroundsCopyQueueCursor
_08062934: .4byte gBackgroundsCopyQueueIndex
_08062938: .4byte sa2__gUnknown_03005390
_0806293C: .4byte gVramGraphicsCopyCursor
_08062940: .4byte gVramGraphicsCopyQueueIndex
_08062944:
	movs r0, #0
	strb r0, [r3]
_08062948:
	adds r3, #1
	adds r5, #1
	cmp r5, #3
	bhi _0806295A
	ldrb r0, [r7]
	asrs r0, r5
	ands r0, r2
	cmp r0, #0
	bne _080628DA
_0806295A:
	ldr r4, _080629C0 @ =gMultiSioRecv
	ldrh r0, [r4]
	mov r8, r4
	cmp r0, #0x52
	bne _0806296C
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _080629C4 @ =sub_80629E8
	str r0, [r1, #8]
_0806296C:
	ldr r1, [r6]
	movs r0, #0x80
	ands r1, r0
	ldr r2, _080629C8 @ =gMultiSioSend
	mov r5, ip
	adds r5, #0x55
	cmp r1, #0
	beq _080629D0
	movs r3, #1
	ldr r1, _080629CC @ =gMultiplayerConnections
	ldrb r0, [r1]
	asrs r0, r0, #1
	ands r0, r3
	adds r7, r1, #0
	cmp r0, #0
	beq _08062992
	ldrh r0, [r4, #0x14]
	cmp r0, #0x51
	bne _080629B4
_08062992:
	adds r3, #1
	cmp r3, #3
	bhi _080629B4
	ldrb r0, [r7]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08062992
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r1, r8
	adds r4, r0, r1
	ldrh r0, [r4]
	cmp r0, #0x51
	beq _08062992
_080629B4:
	cmp r3, #4
	bne _080629D0
	adds r4, r2, #0
	movs r0, #0x52
	b _080629D4
	.align 2, 0
_080629C0: .4byte gMultiSioRecv
_080629C4: .4byte sub_80629E8
_080629C8: .4byte gMultiSioSend
_080629CC: .4byte gMultiplayerConnections
_080629D0:
	adds r4, r2, #0
	movs r0, #0x51
_080629D4:
	strh r0, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #2]
_080629DA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80629E8
sub_80629E8: @ 0x080629E8
	push {r4, lr}
	ldr r0, _08062A24 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r2, _08062A28 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08062A2C @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08062A30 @ =gBldRegs
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _08062A34 @ =0x03000055
	adds r3, r3, r0
	ldrb r0, [r3]
	adds r1, r0, #0
	cmp r1, #0
	bne _08062A40
	ldr r0, _08062A38 @ =gCurrentLevel
	strb r2, [r0]
	ldr r0, _08062A3C @ =gMultiplayerCurrentLevel
	strb r2, [r0]
	bl ApplyGameStageSettings
	b _08062A52
	.align 2, 0
_08062A24: .4byte gCurTask
_08062A28: .4byte gDispCnt
_08062A2C: .4byte 0x00001FFF
_08062A30: .4byte gBldRegs
_08062A34: .4byte 0x03000055
_08062A38: .4byte gCurrentLevel
_08062A3C: .4byte gMultiplayerCurrentLevel
_08062A40:
	cmp r1, #0x12
	bhi _08062A52
	ldr r0, _08062A74 @ =gCurrentLevel
	subs r1, #1
	strb r1, [r0]
	ldr r0, _08062A78 @ =gMultiplayerCurrentLevel
	strb r1, [r0]
	bl ApplyGameStageSettings
_08062A52:
	ldr r0, [r4, #0x18]
	bl TaskDestroy
	ldr r0, [r4, #0x14]
	bl TaskDestroy
	ldr r0, [r4, #0x10]
	bl TaskDestroy
	ldr r0, _08062A7C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062A74: .4byte gCurrentLevel
_08062A78: .4byte gMultiplayerCurrentLevel
_08062A7C: .4byte gCurTask

	thumb_func_start sub_8062A80
sub_8062A80: @ 0x08062A80
	push {r4, r5, r6, lr}
	ldr r0, _08062A98 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	movs r5, #1
	ldr r1, _08062A9C @ =0x030002DA
	adds r0, r0, r1
	b _08062B0C
	.align 2, 0
_08062A98: .4byte gCurTask
_08062A9C: .4byte 0x030002DA
_08062AA0:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r6, r0
	ldr r2, _08062AC0 @ =0x000002D7
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r5, r0
	bne _08062AC4
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x4c
	b _08062ACE
	.align 2, 0
_08062AC0: .4byte 0x000002D7
_08062AC4:
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x48
_08062ACE:
	strh r0, [r4, #0x16]
	subs r0, r5, #1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r2, [r0]
	movs r0, #0x40
	subs r0, r0, r2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, #0x10
	strh r1, [r4, #0x18]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, _08062B2C @ =0x000002DA
	adds r0, r6, r1
_08062B0C:
	ldrb r0, [r0]
	cmp r5, r0
	blo _08062AA0
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r0, #0x3f
	bne _08062B26
	ldr r0, _08062B30 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062B34 @ =sub_8062B38
	str r0, [r1, #8]
_08062B26:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062B2C: .4byte 0x000002DA
_08062B30: .4byte gCurTask
_08062B34: .4byte sub_8062B38

	thumb_func_start sub_8062B38
sub_8062B38: @ 0x08062B38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08062BB8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r2, _08062BBC @ =0x030002DB
	adds r1, r0, r2
	ldrb r1, [r1]
	mov r8, r1
	ldr r3, _08062BC0 @ =0x030002D4
	adds r0, r0, r3
	ldrh r0, [r0]
	movs r1, #0x18
	bl Div
	subs r0, #1
	lsls r0, r0, #0x18
	movs r7, #0
	lsrs r5, r0, #0x18
_08062B66:
	cmp r5, #0
	beq _08062C0E
	ldr r1, _08062BC4 @ =0x000002DA
	adds r0, r6, r1
	ldrb r0, [r0]
	subs r0, #1
	cmp r5, r0
	bgt _08062C0E
	lsls r1, r5, #1
	adds r0, r1, r5
	lsls r0, r0, #4
	adds r4, r6, r0
	adds r2, r1, #0
	mov r3, r8
	cmp r3, #1
	bne _08062B90
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #0x10]
_08062B90:
	ldr r1, _08062BC8 @ =0x000002D7
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r5, r0
	bne _08062BE4
	ldr r3, _08062BCC @ =0x000002D9
	adds r0, r6, r3
	ldrb r1, [r0]
	cmp r1, #1
	bne _08062BD6
	subs r3, #9
	adds r0, r6, r3
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08062BD0
	adds r0, r4, #0
	adds r0, #0x25
	strb r1, [r0]
	b _08062BDE
	.align 2, 0
_08062BB8: .4byte gCurTask
_08062BBC: .4byte 0x030002DB
_08062BC0: .4byte 0x030002D4
_08062BC4: .4byte 0x000002DA
_08062BC8: .4byte 0x000002D7
_08062BCC: .4byte 0x000002D9
_08062BD0:
	adds r1, r4, #0
	adds r1, #0x25
	b _08062BDC
_08062BD6:
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #1
_08062BDC:
	strb r0, [r1]
_08062BDE:
	movs r0, #0x4c
	strh r0, [r4, #0x16]
	b _08062BF0
_08062BE4:
	movs r1, #0
	movs r0, #0x48
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x25
	strb r1, [r0]
_08062BF0:
	adds r1, r2, r5
	lsls r1, r1, #3
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0xc
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062C0E:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r7, #7
	bls _08062B66
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8062C28
sub_8062C28: @ 0x08062C28
	push {r4, r5, r6, lr}
	ldr r0, _08062CA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #1
_08062C38:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	subs r0, #0x30
	adds r4, r6, r0
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xd4
	strh r0, [r4, #0x16]
	subs r1, r5, #1
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #4
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r2, [r0]
	movs r0, #0x40
	subs r0, r0, r2
	lsls r0, r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, #0x21
	strh r1, [r4, #0x18]
	ldr r1, _08062CAC @ =0x000002DA
	adds r0, r6, r1
	ldrb r0, [r0]
	adds r3, #1
	cmp r0, r3
	ble _08062C84
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062C84:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _08062C38
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r0, #0x3f
	bne _08062CA2
	ldr r0, _08062CA8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062CB0 @ =sub_8062CB4
	str r0, [r1, #8]
_08062CA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062CA8: .4byte gCurTask
_08062CAC: .4byte 0x000002DA
_08062CB0: .4byte sub_8062CB4

	thumb_func_start sub_8062CB4
sub_8062CB4: @ 0x08062CB4
	push {r4, r5, r6, r7, lr}
	ldr r0, _08062D2C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _08062D30 @ =0x030002D4
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0x2f
	bls _08062D70
	movs r1, #0x30
	bl Div
	subs r0, #1
	lsls r0, r0, #0x18
	movs r7, #1
	lsrs r5, r0, #0x18
_08062CDA:
	cmp r5, #7
	bhi _08062D58
	lsls r3, r5, #1
	adds r1, r3, r5
	lsls r1, r1, #4
	adds r4, r6, r1
	movs r2, #0
	movs r0, #0xd4
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0x37
	subs r0, r1, r0
	strh r0, [r4, #0x18]
	cmp r5, #6
	bne _08062D08
	subs r0, #0xc
	strh r0, [r4, #0x18]
_08062D08:
	cmp r5, #7
	bne _08062D12
	ldrh r0, [r4, #0x18]
	subs r0, #0x24
	strh r0, [r4, #0x18]
_08062D12:
	ldr r1, _08062D34 @ =0x000002DA
	adds r0, r6, r1
	ldrb r1, [r0]
	adds r0, r3, #1
	cmp r1, r0
	ble _08062D38
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08062D58
	.align 2, 0
_08062D2C: .4byte gCurTask
_08062D30: .4byte 0x030002D4
_08062D34: .4byte 0x000002DA
_08062D38:
	cmp r5, #7
	bne _08062D58
	ldr r0, _08062D6C @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08062D58
	cmp r1, #0xf
	bne _08062D58
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062D58:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r7, #6
	bls _08062CDA
	b _08062E0C
	.align 2, 0
_08062D6C: .4byte gSelectedCharacter
_08062D70:
	ldrh r0, [r1]
	movs r1, #0x30
	bl Div
	lsls r0, r0, #0x18
	movs r7, #1
	lsrs r5, r0, #0x18
_08062D7E:
	cmp r5, #7
	bhi _08062DFC
	lsls r3, r5, #1
	adds r1, r3, r5
	lsls r1, r1, #4
	adds r4, r6, r1
	movs r2, #0
	movs r0, #0xd4
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0x37
	subs r0, r1, r0
	strh r0, [r4, #0x18]
	cmp r5, #6
	bne _08062DAC
	subs r0, #0xc
	strh r0, [r4, #0x18]
_08062DAC:
	cmp r5, #7
	bne _08062DE4
	ldrh r0, [r4, #0x18]
	subs r0, #0x24
	strh r0, [r4, #0x18]
	ldr r0, _08062DDC @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08062DFC
	ldr r1, _08062DE0 @ =0x000002DA
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _08062DFC
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08062DFC
	.align 2, 0
_08062DDC: .4byte gSelectedCharacter
_08062DE0: .4byte 0x000002DA
_08062DE4:
	ldr r2, _08062E14 @ =0x000002DA
	adds r0, r6, r2
	ldrb r1, [r0]
	adds r0, r3, #1
	cmp r1, r0
	ble _08062DFC
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062DFC:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r7, #5
	bls _08062D7E
_08062E0C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062E14: .4byte 0x000002DA

	thumb_func_start sub_8062E18
sub_8062E18: @ 0x08062E18
	push {r4, r5, r6, r7, lr}
	ldr r0, _08062E84 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r6, r4, #0
	adds r0, #0x4c
	adds r7, r5, r0
	ldrh r3, [r7]
	cmp r3, #0x14
	beq _08062E94
	ldr r0, [r4, #0x10]
	ldr r1, _08062E88 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
	movs r6, #0x30
	strh r6, [r4, #0x16]
	movs r0, #0x18
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _08062E8C @ =0x03000051
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #6
	bls _08062ECA
	ldr r0, _08062E90 @ =gUnknown_0868B220
	ldrb r1, [r1]
	subs r1, #1
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r7]
	ldrh r1, [r1]
	cmp r0, r1
	bhs _08062ECA
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	strh r6, [r4, #0x16]
	movs r0, #0x88
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
	b _08062ECA
	.align 2, 0
_08062E84: .4byte gCurTask
_08062E88: .4byte 0xFFFFF7FF
_08062E8C: .4byte 0x03000051
_08062E90: .4byte gUnknown_0868B220
_08062E94:
	ldr r0, _08062ED0 @ =0x03000051
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #7
	bls _08062ECA
	ldr r1, _08062ED4 @ =gUnknown_0868B220
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r3, r0
	bhs _08062ECA
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x30
	strh r0, [r6, #0x16]
	movs r0, #0x88
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08062ECA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062ED0: .4byte 0x03000051
_08062ED4: .4byte gUnknown_0868B220

    thumb_func_start TaskDestructor_CourseSelect
TaskDestructor_CourseSelect: @ 0x08062ED8
    bx lr
    .align 2, 0
