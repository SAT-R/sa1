.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateSpotLightBeams
CreateSpotLightBeams: @ 0x08017800
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r0, _0801789C @ =gPlayer
	adds r0, #0x48
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0xab
	lsls r0, r0, #3
	cmp r1, r0
	bgt _080178B0
	ldr r0, _080178A0 @ =Task_80178C0
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080178A4 @ =TaskDestructor_SpotLightMain
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r4, r4, r5
	movs r0, #0
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #8]
	bl CreateSpotlightBeamTask
	str r0, [r4]
	ldrh r0, [r0, #6]
	adds r1, r0, r5
	movs r0, #0x3c
	strh r0, [r1, #6]
	movs r6, #0xc8
	strh r6, [r1, #8]
	mov r2, r8
	strh r2, [r1]
	movs r0, #0x40
	strh r0, [r1, #2]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1, #4]
	movs r0, #2
	strb r0, [r1, #0xa]
	movs r0, #0x20
	strb r0, [r1, #0xb]
	bl CreateSpotlightBeamTask
	str r0, [r4, #4]
	ldrh r0, [r0, #6]
	adds r1, r0, r5
	strh r6, [r1, #6]
	movs r0, #0xf0
	strh r0, [r1, #8]
	mov r0, r8
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #2]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #4]
	movs r0, #3
	strb r0, [r1, #0xa]
	movs r0, #0x10
	strb r0, [r1, #0xb]
	ldr r1, _080178A8 @ =gBldRegs
	ldr r0, _080178AC @ =0x00003FDF
	strh r0, [r1]
	ldrh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #4]
	movs r0, #1
	b _080178B2
	.align 2, 0
_0801789C: .4byte gPlayer
_080178A0: .4byte Task_80178C0
_080178A4: .4byte TaskDestructor_SpotLightMain
_080178A8: .4byte gBldRegs
_080178AC: .4byte 0x00003FDF
_080178B0:
	movs r0, #0
_080178B2:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Task_80178C0
Task_80178C0: @ 0x080178C0
	push {r4, r5, lr}
	ldr r5, _0801791C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _08017920 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08017924 @ =gWinRegs
	ldr r0, _08017928 @ =0x00001F1F
	strh r0, [r1, #8]
	movs r0, #0x3f
	strh r0, [r1, #0xa]
	ldrh r0, [r4, #8]
	subs r0, #0x40
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	ldr r1, _0801792C @ =0x07FF0000
	cmp r0, r1
	bgt _080178FA
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #8]
_080178FA:
	ldr r1, _08017930 @ =gBldRegs
	ldrh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #4]
	ldr r2, _08017934 @ =gPlayer
	ldr r0, [r2]
	asrs r0, r0, #8
	movs r1, #0xab
	lsls r1, r1, #3
	cmp r0, r1
	ble _0801793C
	ldr r1, [r5]
	ldr r0, _08017938 @ =Task_801796C
	str r0, [r1, #8]
	b _08017960
	.align 2, 0
_0801791C: .4byte gCurTask
_08017920: .4byte gDispCnt
_08017924: .4byte gWinRegs
_08017928: .4byte 0x00001F1F
_0801792C: .4byte 0x07FF0000
_08017930: .4byte gBldRegs
_08017934: .4byte gPlayer
_08017938: .4byte Task_801796C
_0801793C:
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801794E
	ldr r0, _08017968 @ =gDestroySpotlights
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017960
_0801794E:
	ldr r0, [r4]
	bl TaskDestroy
	ldr r0, [r4, #4]
	bl TaskDestroy
	ldr r0, [r5]
	bl TaskDestroy
_08017960:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017968: .4byte gDestroySpotlights

@ Used to destroy spotlights
	thumb_func_start Task_801796C
Task_801796C: @ 0x0801796C
	push {r4, r5, lr}
	ldr r5, _0801799C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #8]
	subs r0, #0x40
	strh r0, [r4, #8]
	lsls r3, r0, #0x10
	cmp r3, #0
	bge _080179A0
	ldr r0, [r4]
	bl TaskDestroy
	ldr r0, [r4, #4]
	bl TaskDestroy
	ldr r0, [r5]
	bl TaskDestroy
	b _080179EA
	.align 2, 0
_0801799C: .4byte gCurTask
_080179A0:
	ldr r2, _080179D8 @ =gPlayer
	ldr r0, [r2]
	asrs r0, r0, #8
	movs r1, #0xba
	lsls r1, r1, #3
	cmp r0, r1
	bgt _080179C0
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080179C0
	ldr r0, _080179DC @ =gDestroySpotlights
	ldrb r0, [r0]
	cmp r0, #0
	beq _080179E4
_080179C0:
	ldr r0, [r4]
	bl TaskDestroy
	ldr r0, [r4, #4]
	bl TaskDestroy
	ldr r0, _080179E0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080179EA
	.align 2, 0
_080179D8: .4byte gPlayer
_080179DC: .4byte gDestroySpotlights
_080179E0: .4byte gCurTask
_080179E4:
	ldr r1, _080179F0 @ =gBldRegs
	asrs r0, r3, #0x18
	strh r0, [r1, #4]
_080179EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080179F0: .4byte gBldRegs

	thumb_func_start TaskDestructor_SpotLightMain
TaskDestructor_SpotLightMain: @ 0x080179F4
	ldr r2, _08017A1C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08017A20 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08017A24 @ =gBldRegs
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #4]
	ldr r0, _08017A28 @ =gWinRegs
	strh r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	strh r1, [r0, #6]
	ldr r2, _08017A2C @ =gFlags
	ldr r0, [r2]
	subs r1, #5
	ands r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_08017A1C: .4byte gDispCnt
_08017A20: .4byte 0x00009FFF
_08017A24: .4byte gBldRegs
_08017A28: .4byte gWinRegs
_08017A2C: .4byte gFlags
