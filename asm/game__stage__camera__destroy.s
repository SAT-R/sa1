.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_803F644
sub_803F644: @ 0x0803F644
	push {r4, lr}
	ldr r4, _0803F658 @ =gCamera
	ldr r0, [r4, #0x30]
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #0x30]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F658: .4byte gCamera

	thumb_func_start TaskDestructor_Camera
TaskDestructor_Camera: @ 0x0803F65C
	push {r4, lr}
	ldr r1, _0803F6AC @ =gCamera
	movs r0, #0
	str r0, [r1, #0x30]
	ldr r4, _0803F6B0 @ =gCurrentLevel
	ldr r3, _0803F6B4 @ =gFlags
	movs r2, #0
	ldr r0, _0803F6B8 @ =gBgScrollRegs
	movs r1, #3
_0803F66E:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	subs r1, #1
	cmp r1, #0
	bge _0803F66E
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0xd
	bne _0803F69C
	ldr r2, [r3]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0803F69C
	ldr r1, _0803F6BC @ =gIntrTable
	ldr r0, _0803F6C0 @ =gIntrTableTemplate
	ldr r0, [r0, #0xc]
	str r0, [r1, #0xc]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3]
_0803F69C:
	ldr r0, [r3]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F6AC: .4byte gCamera
_0803F6B0: .4byte gCurrentLevel
_0803F6B4: .4byte gFlags
_0803F6B8: .4byte gBgScrollRegs
_0803F6BC: .4byte gIntrTable
_0803F6C0: .4byte gIntrTableTemplate

	thumb_func_start Task_CallUpdateCamera
Task_CallUpdateCamera: @ 0x0803F6C4
	ldr r2, _0803F6EC @ =gDispCnt
	ldrh r1, [r2]
	movs r3, #0xf0
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r1, r0
	strh r1, [r2]
	ldr r0, _0803F6F0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0803F6E0
	ldr r0, _0803F6F4 @ =0x0000DFFF
	ands r1, r0
	strh r1, [r2]
_0803F6E0:
	ldr r0, _0803F6F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803F6FC @ =Task_CallUpdateCameraInternal
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_0803F6EC: .4byte gDispCnt
_0803F6F0: .4byte gGameMode
_0803F6F4: .4byte 0x0000DFFF
_0803F6F8: .4byte gCurTask
_0803F6FC: .4byte Task_CallUpdateCameraInternal

	thumb_func_start Task_CallUpdateCameraInternal
Task_CallUpdateCameraInternal: @ 0x0803F700
	push {lr}
	bl UpdateCamera
	ldr r1, _0803F710 @ =sa2__gUnknown_030054B8
	movs r0, #4
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803F710: .4byte sa2__gUnknown_030054B8
