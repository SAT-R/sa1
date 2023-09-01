.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start TasksInit
TasksInit: @ 0x080014A8
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08001540 @ =gCurTask
	movs r1, #0
	str r1, [r0]
	ldr r0, _08001544 @ =gNextTask
	str r1, [r0]
	ldr r0, _08001548 @ =gNumTasks
	str r1, [r0]
	str r1, [sp]
	ldr r1, _0800154C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _08001550 @ =gTasks
	str r2, [r1, #4]
	ldr r0, _08001554 @ =0x85000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08001558 @ =gTaskPtrs
	ldr r3, _0800155C @ =0x000009EC
	adds r2, r2, r3
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r0, r1, r3
_080014D8:
	str r2, [r0]
	subs r2, #0x14
	subs r0, #4
	cmp r0, r1
	bge _080014D8
	bl TaskGetNextSlot
	adds r4, r0, #0
	cmp r4, #0
	beq _0800157C
	ldr r0, _08001560 @ =TaskMainDummy1
	str r0, [r4, #8]
	movs r5, #0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #2]
	bl TaskGetNextSlot
	strh r0, [r4, #4]
	ldrh r1, [r4, #4]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _0800157C
	strh r4, [r1, #2]
	ldrh r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, _08001564 @ =0x080019B9
	str r0, [r4, #8]
	ldr r0, _08001568 @ =0x0000FFFF
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #4]
	ldr r1, _0800156C @ =gEmptyTask
	strh r5, [r1]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	ldr r0, _08001570 @ =gUnknown_0300642C
	ldr r0, [r0]
	strh r0, [r1, #6]
	ldr r1, _08001574 @ =gIwramHeap
	strh r5, [r1]
	ldr r0, _08001578 @ =0x00002204
	strh r0, [r1, #2]
	movs r0, #1
	b _0800157E
	.align 2, 0
_08001540: .4byte gCurTask
_08001544: .4byte gNextTask
_08001548: .4byte gNumTasks
_0800154C: .4byte 0x040000D4
_08001550: .4byte gTasks
_08001554: .4byte 0x85000080
_08001558: .4byte gTaskPtrs
_0800155C: .4byte 0x000009EC
_08001560: .4byte TaskMainDummy1
_08001564: .4byte 0x080019B9
_08001568: .4byte 0x0000FFFF
_0800156C: .4byte gEmptyTask
_08001570: .4byte gUnknown_0300642C
_08001574: .4byte gIwramHeap
_08001578: .4byte 0x00002204
_0800157C:
	movs r0, #0
_0800157E:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskCreate
TaskCreate: @ 0x08001588
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	movs r4, #0
	ldr r3, _080015B8 @ =gNumTasks
	ldr r2, [r3]
	cmp r2, #0x7f
	bgt _080015B0
	ldr r1, _080015BC @ =gTaskPtrs
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r2, #1
	str r0, [r3]
	adds r4, r1, #0
_080015B0:
	cmp r4, #0
	bne _080015D0
	ldr r0, _080015C0 @ =gEmptyTask
	b _08001612
	.align 2, 0
_080015B8: .4byte gNumTasks
_080015BC: .4byte gTaskPtrs
_080015C0: .4byte gEmptyTask
_080015C4:
	strh r4, [r1, #2]
	ldrh r0, [r2, #4]
	strh r0, [r4, #4]
	strh r2, [r4, #2]
	strh r4, [r2, #4]
	b _08001610
_080015D0:
	mov r0, ip
	str r0, [r4, #8]
	ldr r0, [sp, #0x14]
	str r0, [r4, #0xc]
	strh r5, [r4, #0x10]
	strh r6, [r4, #0x12]
	adds r0, r7, #0
	bl IwramMalloc
	strh r0, [r4, #6]
	ldr r0, _08001618 @ =gCurTask
	ldr r0, [r0]
	strh r0, [r4]
	ldr r0, _0800161C @ =gTaskPtrs
	ldr r2, [r0]
	ldrh r1, [r2, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r1, r3
	cmp r0, r3
	beq _08001610
_080015FA:
	adds r1, r1, r3
	ldrh r0, [r1, #0x10]
	cmp r0, r5
	bhi _080015C4
	adds r2, r1, #0
	ldrh r1, [r2, #4]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r0, r1, r6
	cmp r0, r3
	bne _080015FA
_08001610:
	adds r0, r4, #0
_08001612:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001618: .4byte gCurTask
_0800161C: .4byte gTaskPtrs

	thumb_func_start TaskDestroy
TaskDestroy: @ 0x08001620
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _08001696
	ldrh r0, [r4, #2]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	cmp r1, r5
	beq _08001696
	cmp r0, r5
	beq _08001696
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _08001652
	adds r0, r4, #0
	bl sub_8099B40
_08001652:
	ldr r1, _0800169C @ =gNextTask
	ldr r0, [r1]
	ldrh r2, [r4, #4]
	cmp r4, r0
	bne _08001662
	adds r0, r2, r5
	str r0, [r1]
	ldrh r2, [r4, #4]
_08001662:
	ldrh r0, [r4, #2]
	adds r1, r0, r5
	adds r0, r2, r5
	strh r0, [r1, #4]
	strh r1, [r0, #2]
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _08001678
	adds r0, r0, r5
	bl IwramFree
_08001678:
	ldr r2, _080016A0 @ =gTaskPtrs
	ldr r1, _080016A4 @ =gNumTasks
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r4, [r0]
	strh r6, [r4]
	strh r6, [r4, #2]
	ldr r0, _080016A8 @ =TaskMainDummy3
	str r0, [r4, #8]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	strh r6, [r4, #6]
_08001696:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800169C: .4byte gNextTask
_080016A0: .4byte gTaskPtrs
_080016A4: .4byte gNumTasks
_080016A8: .4byte TaskMainDummy3

	thumb_func_start TasksExec
TasksExec: @ 0x080016AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08001710 @ =gCurTask
	ldr r0, _08001714 @ =gTaskPtrs
	ldr r3, [r0]
	str r3, [r2]
	ldr r0, _08001718 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	bne _08001724
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r3, r0
	beq _08001764
	ldr r7, _0800171C @ =gNextTask
	mov r5, r8
	adds r6, r0, #0
_080016D8:
	ldr r2, [r5]
	ldrh r0, [r2, #4]
	adds r0, r0, r6
	str r0, [r7]
	ldrh r1, [r2, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080016F0
	ldr r0, [r2, #8]
	bl _call_via_r0
_080016F0:
	ldr r0, [r7]
	str r0, [r5]
	ldr r4, _08001720 @ =gExecSoundMain
	ldrb r0, [r4]
	cmp r0, #0
	beq _08001704
	bl sub_8097AD0
	movs r0, #0
	strb r0, [r4]
_08001704:
	ldr r0, [r5]
	cmp r0, r6
	bne _080016D8
	ldr r0, _08001710 @ =gCurTask
	mov r8, r0
	b _08001764
	.align 2, 0
_08001710: .4byte gCurTask
_08001714: .4byte gTaskPtrs
_08001718: .4byte gFlags
_0800171C: .4byte gNextTask
_08001720: .4byte gExecSoundMain
_08001724:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r3, r0
	beq _08001764
	ldr r7, _08001778 @ =gNextTask
	mov r5, r8
	adds r6, r0, #0
_08001732:
	ldr r2, [r5]
	ldrh r0, [r2, #4]
	adds r0, r0, r6
	str r0, [r7]
	ldrh r1, [r2, #0x12]
	movs r0, #5
	ands r0, r1
	cmp r0, #4
	bne _0800174A
	ldr r0, [r2, #8]
	bl _call_via_r0
_0800174A:
	ldr r0, [r7]
	str r0, [r5]
	ldr r4, _0800177C @ =gExecSoundMain
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800175E
	bl sub_8097AD0
	movs r0, #0
	strb r0, [r4]
_0800175E:
	ldr r0, [r5]
	cmp r0, r6
	bne _08001732
_08001764:
	movs r1, #0
	mov r0, r8
	str r1, [r0]
	ldr r0, _08001778 @ =gNextTask
	str r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001778: .4byte gNextTask
_0800177C: .4byte gExecSoundMain

	thumb_func_start IwramMalloc
IwramMalloc: @ 0x08001780
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r2, #3
	lsrs r2, r0, #2
	cmp r2, #0
	beq _080017E0
	lsls r0, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	ldr r3, _080017CC @ =gIwramHeap
_0800179A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	cmp r0, r1
	bgt _080017D0
	cmp r0, r1
	beq _080017C2
	adds r0, r2, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bgt _080017D0
	adds r1, r3, r2
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	strh r0, [r1, #2]
	strh r1, [r3]
_080017C2:
	rsbs r0, r2, #0
	strh r0, [r3, #2]
	adds r0, r3, #4
	b _080017E2
	.align 2, 0
_080017CC: .4byte gIwramHeap
_080017D0:
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _080017E0
	adds r3, r1, #0
	b _0800179A
_080017E0:
	movs r0, #0
_080017E2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start IwramFree
IwramFree: @ 0x080017E8
	push {r4, r5, lr}
	adds r2, r0, #0
	subs r2, #4
	ldr r1, _08001860 @ =gIwramHeap
	adds r3, r1, #0
	cmp r2, r1
	beq _08001804
	movs r4, #0xc0
	lsls r4, r4, #0x12
_080017FA:
	adds r1, r3, #0
	ldrh r0, [r1]
	adds r3, r0, r4
	cmp r2, r3
	bne _080017FA
_08001804:
	ldrh r4, [r2, #2]
	movs r5, #2
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08001812
	rsbs r0, r4, #0
	strh r0, [r2, #2]
_08001812:
	movs r4, #2
	ldrsh r0, [r1, r4]
	adds r0, r1, r0
	cmp r0, r2
	bne _08001832
	ldrh r4, [r1, #2]
	movs r5, #2
	ldrsh r0, [r1, r5]
	cmp r0, #0
	ble _08001832
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	adds r0, r4, r0
	strh r0, [r1, #2]
	adds r2, r1, #0
_08001832:
	movs r1, #2
	ldrsh r0, [r2, r1]
	adds r3, r2, r0
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r3, r0
	bne _08001858
	ldrh r1, [r3, #2]
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _08001858
	ldrh r5, [r2, #2]
	adds r0, r1, r5
	strh r0, [r2, #2]
	ldrh r0, [r3]
	strh r0, [r2]
_08001858:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001860: .4byte gIwramHeap

@ Should be sub_80028DC in SA2
	thumb_func_start sub_8001864
sub_8001864: @ 0x08001864
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _080018AC @ =gIwramHeap
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r0, r1
	beq _08001926
	mov r8, r1
	ldr r0, _080018B0 @ =0x040000D4
	mov ip, r0
_0800187E:
	ldrh r4, [r2, #2]
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _08001918
	ldrh r1, [r2]
	mov r3, r8
	adds r0, r1, r3
	ldrh r3, [r0, #2]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #0
	blt _080018B8
	adds r0, r4, r3
	strh r0, [r2, #2]
	adds r0, r1, #0
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	b _0800191E
	.align 2, 0
_080018AC: .4byte gIwramHeap
_080018B0: .4byte 0x040000D4
_080018B4:
	strh r6, [r1, #6]
	b _080018E4
_080018B8:
	ldr r0, _08001910 @ =0x03000004
	adds r5, r1, r0
	adds r6, r2, #4
	movs r0, #2
	ldrsh r7, [r2, r0]
	strh r3, [r2, #2]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r1, r3
	ldrh r0, [r0]
	strh r0, [r2]
	movs r3, #0
	lsls r0, r5, #0x10
	lsrs r4, r0, #0x10
	ldr r1, _08001914 @ =gTasks
_080018D6:
	ldrh r0, [r1, #6]
	cmp r0, r4
	beq _080018B4
	adds r1, #0x14
	adds r3, #1
	cmp r3, #0x7f
	ble _080018D6
_080018E4:
	mov r0, ip
	str r5, [r0]
	str r6, [r0, #4]
	movs r1, #2
	ldrsh r0, [r2, r1]
	adds r0, #4
	lsrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	mov r3, ip
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r5, #2
	ldrsh r1, [r2, r5]
	adds r1, r2, r1
	ldrh r0, [r2]
	strh r0, [r1]
	strh r7, [r1, #2]
	adds r2, r1, #0
	strh r2, [r2]
	b _0800191E
	.align 2, 0
_08001910: .4byte 0x03000004
_08001914: .4byte gTasks
_08001918:
	ldrh r0, [r2]
	mov r1, r8
	adds r2, r0, r1
_0800191E:
	ldrh r0, [r2]
	add r0, r8
	cmp r0, r8
	bne _0800187E
_08001926:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskGetNextSlot
TaskGetNextSlot: @ 0x08001930
	ldr r3, _08001948 @ =gNumTasks
	ldr r2, [r3]
	cmp r2, #0x7f
	bgt _08001950
	ldr r1, _0800194C @ =gTaskPtrs
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r2, #1
	str r1, [r3]
	b _08001952
	.align 2, 0
_08001948: .4byte gNumTasks
_0800194C: .4byte gTaskPtrs
_08001950:
	movs r0, #0
_08001952:
	bx lr

	thumb_func_start TasksDestroyInPriorityRange
TasksDestroyInPriorityRange: @ 0x08001954
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _0800199C @ =gTaskPtrs
	ldr r4, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080019AC
_08001968:
	ldrh r0, [r4, #0x10]
	cmp r0, r2
	blo _080019A0
_0800196E:
	cmp r0, r5
	bhs _080019AC
	adds r1, r4, #0
	ldrh r0, [r1, #4]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r4, r0, r2
	ldr r2, _0800199C @ =gTaskPtrs
	ldr r0, [r2]
	cmp r1, r0
	beq _08001990
	ldr r0, [r2, #4]
	cmp r1, r0
	beq _08001990
	adds r0, r1, #0
	bl TaskDestroy
_08001990:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r4, r0
	beq _080019AC
	ldrh r0, [r4, #0x10]
	b _0800196E
	.align 2, 0
_0800199C: .4byte gTaskPtrs
_080019A0:
	ldrh r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	cmp r0, #0
	bne _08001968
_080019AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskMainDummy1
TaskMainDummy1: @ 0x080019B4
	bx lr
	.align 2, 0

	thumb_func_start TaskMainDummy2
TaskMainDummy2: @ 0x080019B8
	bx lr
	.align 2, 0

	thumb_func_start TaskMainDummy3
TaskMainDummy3: @ 0x080019BC
	bx lr
	.align 2, 0
