.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_PreBossCameraPan
Task_PreBossCameraPan: @ 0x080172CC
	push {r4, r5, r6, lr}
	ldr r2, _080172F4 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _080172F8 @ =gCamera
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldrh r4, [r0, #0x14]
	movs r6, #0x14
	ldrsh r3, [r0, r6]
	adds r6, r2, #0
	adds r2, r0, #0
	cmp r1, r3
	ble _080172FC
	adds r0, r4, #1
	b _08017302
	.align 2, 0
_080172F4: .4byte gCurTask
_080172F8: .4byte gCamera
_080172FC:
	cmp r1, r3
	bge _08017304
	subs r0, r4, #1
_08017302:
	strh r0, [r2, #0x14]
_08017304:
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldrh r1, [r2, #0x16]
	movs r4, #0x16
	ldrsh r3, [r2, r4]
	cmp r0, r3
	ble _08017316
	adds r0, r1, #1
	b _0801731C
_08017316:
	cmp r0, r3
	bge _0801731E
	subs r0, r1, #1
_0801731C:
	strh r0, [r2, #0x16]
_0801731E:
	ldr r1, [r5]
	ldr r0, [r2, #0x14]
	cmp r1, r0
	bne _0801732C
	ldr r0, [r6]
	bl TaskDestroy
_0801732C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.endif

@ -> strc8
	thumb_func_start Task_8017334
Task_8017334: @ 0x08017334
	push {r4, r5, r6, r7, lr}
	ldr r0, _080173A0 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, [r6, #4]
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, _080173A4 @ =gCamera
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x78
	ble _080173A8
	ldr r3, [r2, #0x10]
	movs r7, #0x80
	lsls r7, r7, #0xe
	orrs r3, r7
	str r3, [r2, #0x10]
	movs r5, #0
	movs r0, #0x10
	strh r0, [r2, #0x38]
	adds r0, r2, #0
	adds r0, #0x3c
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #3
	movs r0, #0xc8
	subs r0, r0, r1
	cmp r0, r4
	bge _080173F6
	strh r5, [r2, #0xc]
	strh r5, [r2, #8]
	orrs r3, r7
	strh r5, [r2, #0x38]
	movs r0, #1
	orrs r3, r0
	str r3, [r2, #0x10]
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x10]
	strh r5, [r6]
	strh r5, [r6, #2]
	b _080173EE
	.align 2, 0
_080173A0: .4byte gCurTask
_080173A4: .4byte gCamera
_080173A8:
	ldr r1, [r2, #0x10]
	movs r5, #0x80
	lsls r5, r5, #0xe
	orrs r1, r5
	str r1, [r2, #0x10]
	movs r3, #0
	movs r0, #0x20
	strh r0, [r2, #0x38]
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r0, #0x28
	cmp r0, r4
	ble _080173F6
	strh r3, [r2, #0xc]
	strh r3, [r2, #8]
	orrs r1, r5
	strh r3, [r2, #0x38]
	movs r0, #1
	orrs r1, r0
	str r1, [r2, #0x10]
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x10]
	strh r3, [r6]
	strh r3, [r6, #2]
_080173EE:
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _080173FC @ =sub_8017400
	str r0, [r1, #8]
_080173F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080173FC: .4byte sub_8017400

	thumb_func_start sub_8017400
sub_8017400: @ 0x08017400
	push {r4, r5, lr}
	ldr r5, _08017490 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #4]
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08017422
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x1d
	strb r0, [r1]
_08017422:
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08017488
	ldr r0, [r2, #0x64]
	ldr r0, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801745E
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _0801745E
	ldr r0, _08017494 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08017498 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	ldr r0, [r5]
	bl TaskDestroy
_0801745E:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08017488
	ldrh r0, [r4, #2]
	adds r1, r0, #1
	strh r1, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08017488
	ldr r0, _08017494 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08017498 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	ldr r0, _08017490 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08017488:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017490: .4byte gCurTask
_08017494: .4byte gRingCount
_08017498: .4byte gCourseTime

	thumb_func_start sub_801749C
sub_801749C: @ 0x0801749C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _080174D8 @ =Task_8016B6C
	movs r2, #0x80
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	strh r4, [r1, #4]
	strh r4, [r1, #8]
	strh r5, [r1]
	strh r6, [r1, #2]
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080174D8: .4byte Task_8016B6C

@ TODO: Once this matches, remove EggWrecker TEMP_FIX!
	thumb_func_start CreatePreBossCameraPan
CreatePreBossCameraPan: @ 0x080174DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08017538 @ =Task_PreBossCameraPan
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	strh r4, [r1]
	strh r5, [r1, #2]
	ldr r3, _0801753C @ =gCamera
	ldrh r2, [r3, #2]
	strh r2, [r3, #0x14]
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r3, #0x16]
	movs r4, #2
	ldrsh r1, [r1, r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _0801752C
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r2, r1
	strh r0, [r3, #0x16]
_0801752C:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08017538: .4byte Task_PreBossCameraPan
_0801753C: .4byte gCamera

@ NOTE: Implementation in stub.c!!!
	thumb_func_start sub_8017540
sub_8017540: @ 0x08017540
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	movs r7, #0
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _08017594 @ =0x06011000
	ldr r2, _08017598 @ =0x00000263
	str r7, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl CreateNutsAndBoltsTask
	adds r7, r0, #0
	ldrh r2, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	str r5, [r2, #0x30]
	str r6, [r2, #0x34]
	str r4, [r2, #0x10]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	ldr r3, _0801759C @ =gPseudoRandom
	ldr r1, [r3]
	ldr r0, _080175A0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080175A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #4
	ands r0, r1
	orrs r0, r4
	str r0, [r2, #0x10]
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08017594: .4byte 0x06011000
_08017598: .4byte 0x00000263
_0801759C: .4byte gPseudoRandom
_080175A0: .4byte 0x00196225
_080175A4: .4byte 0x3C6EF35F

	thumb_func_start TaskDestructor_BossCapsule
TaskDestructor_BossCapsule: @ 0x080175A8
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_sub_80168F0
TaskDestructor_sub_80168F0: @ 0x080175C4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80175D8
sub_80175D8: @ 0x080175D8
	push {r4, r5, lr}
	ldr r5, _08017648 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0801764C @ =gPlayer
	ldr r0, [r0, #0x64]
	ldr r0, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08017616
	ldrh r0, [r4, #4]
	adds r1, r0, #1
	strh r1, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _08017616
	ldr r0, _08017650 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08017654 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	ldr r0, [r5]
	bl TaskDestroy
_08017616:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08017640
	ldrh r0, [r4, #6]
	adds r1, r0, #1
	strh r1, [r4, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08017640
	ldr r0, _08017650 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _08017654 @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	ldr r0, _08017648 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08017640:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017648: .4byte gCurTask
_0801764C: .4byte gPlayer
_08017650: .4byte gRingCount
_08017654: .4byte gCourseTime

	thumb_func_start TaskDestructor_sub_8017658
TaskDestructor_sub_8017658: @ 0x08017658
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_801766C
sub_801766C: @ 0x0801766C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08017698 @ =Task_8017334
	movs r2, #0x80
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	str r5, [r0, #4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017698: .4byte Task_8017334
@ --- End of Task___sub_80168F0 ---
