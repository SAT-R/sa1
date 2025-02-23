.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of src/game/game_over.c ---

.if 0

@ t -> GameOverC *
	thumb_func_start Task_8056E64
Task_8056E64: @ 0x08056E64
	push {r4, r5, r6, r7, lr}
	ldr r7, _08056EB8 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r6, r0
	movs r0, #0x18
	ldrsh r4, [r6, r0]
	adds r0, r4, #0
	subs r0, #0x78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	movs r1, #0x60
	bl __divsi3
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r6, #0
	bl sub_805423C
	ldr r2, _08056EBC @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r4, #1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [r6, #0x18]
	cmp r5, #0x5f
	bls _08056EB0
	ldr r1, [r7]
	ldr r0, _08056EC0 @ =Task_DestroyGameOverC
	str r0, [r1, #8]
_08056EB0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056EB8: .4byte gCurTask
_08056EBC: .4byte gDispCnt
_08056EC0: .4byte Task_DestroyGameOverC
.endif

@ t -> GameOverC
	thumb_func_start Task_8056EC4
Task_8056EC4: @ 0x08056EC4
	push {r4, r5, lr}
	ldr r5, _08056F0C @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0x18
	ldrsh r1, [r0, r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [r0, #0x18]
	bl sub_805423C
	ldr r2, _08056F10 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0xe
	ldr r0, _08056F14 @ =0x000005C5
	cmp r4, r0
	ble _08056F04
	ldr r1, [r5]
	ldr r0, _08056F18 @ =Task_DestroyGameOverC
	str r0, [r1, #8]
_08056F04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056F0C: .4byte gCurTask
_08056F10: .4byte gDispCnt
_08056F14: .4byte 0x000005C5
_08056F18: .4byte Task_DestroyGameOverC

@ t -> GameOverC *
	thumb_func_start Task_DestroyGameOverC
Task_DestroyGameOverC: @ 0x08056F1C
	push {lr}
	ldr r0, _08056F2C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08056F2C: .4byte gCurTask

	thumb_func_start TaskDestructor_8056F30
TaskDestructor_8056F30: @ 0x08056F30
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl VramFree
	ldr r0, [r4, #0x14]
	bl VramFree
	ldr r0, [r4, #0x10]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

@ t -> GameOverB
	thumb_func_start Task_8056F54
Task_8056F54: @ 0x08056F54
	ldr r0, _08056F78 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [r2, #0x18]
	adds r0, r1, #0
	cmp r0, #0xa1
	ble _08056F76
	ldr r0, _08056F7C @ =Task_8056714
	str r0, [r3, #8]
_08056F76:
	bx lr
	.align 2, 0
_08056F78: .4byte gCurTask
_08056F7C: .4byte Task_8056714

@ t -> GameOverB
	thumb_func_start Task_8056F80
Task_8056F80: @ 0x08056F80
	push {lr}
	ldr r0, _08056F98 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, _08056F9C @ =gUnknown_086883F8
	bl sub_80530CC
	pop {r0}
	bx r0
	.align 2, 0
_08056F98: .4byte gCurTask
_08056F9C: .4byte gUnknown_086883F8

@ t -> GameOverD*
	thumb_func_start Task_8056FA0
Task_8056FA0: @ 0x08056FA0
	ldr r0, _08056FC8 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r1, #0x24
	ldrsh r0, [r2, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [r2, #0x24]
	adds r0, r1, #0
	cmp r0, #0xb5
	ble _08056FC6
	movs r0, #0
	str r0, [r2, #0x24]
	ldr r0, _08056FCC @ =Task_805676C
	str r0, [r3, #8]
_08056FC6:
	bx lr
	.align 2, 0
_08056FC8: .4byte gCurTask
_08056FCC: .4byte Task_805676C

@ t -> GameOverD*
	thumb_func_start Task_8056FD0
Task_8056FD0: @ 0x08056FD0
	push {lr}
	ldr r0, _08056FE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08056FE0: .4byte gCurTask

@ --- End of src/game/game_over.c ---
