.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_801D34C
Task_801D34C: @ 0x0801D34C
	push {r4, lr}
	ldr r4, _0801D39C @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	ldr r1, _0801D3A0 @ =0x03000430
	adds r2, r0, r1
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0801D3BC
	movs r0, #0
	strh r0, [r2]
	ldr r1, _0801D3A4 @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	ldr r0, _0801D3A8 @ =gMPlayInfo_BGM
	movs r1, #0
	bl m4aMPlayFadeOut
	ldr r0, _0801D3AC @ =gMPlayInfo_SE1
	movs r1, #0
	bl m4aMPlayFadeOut
	ldr r0, _0801D3B0 @ =gMPlayInfo_SE2
	movs r1, #0
	bl m4aMPlayFadeOut
	ldr r0, _0801D3B4 @ =gMPlayInfo_SE3
	movs r1, #0
	bl m4aMPlayFadeOut
	ldr r1, [r4]
	ldr r0, _0801D3B8 @ =Task_801CD80
	str r0, [r1, #8]
	bl _call_via_r0
	b _0801D3C0
	.align 2, 0
_0801D39C: .4byte gCurTask
_0801D3A0: .4byte 0x03000430
_0801D3A4: .4byte gBldRegs
_0801D3A8: .4byte gMPlayInfo_BGM
_0801D3AC: .4byte gMPlayInfo_SE1
_0801D3B0: .4byte gMPlayInfo_SE2
_0801D3B4: .4byte gMPlayInfo_SE3
_0801D3B8: .4byte Task_801CD80
_0801D3BC:
	bl sub_801CF08
_0801D3C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_801D3C8
TaskDestructor_801D3C8: @ 0x0801D3C8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x64]
	bl VramFree
	pop {r0}
	bx r0
