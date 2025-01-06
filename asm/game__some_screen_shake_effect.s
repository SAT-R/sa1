.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_80297E8
Task_80297E8: @ 0x080297E8
	push {r4, r5, lr}
	ldr r5, _08029844 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r1, [r4, #0xc]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08029806
	movs r0, #0x90
	bl m4aSongNumStart
_08029806:
	ldrh r0, [r4, #0xc]
	subs r0, #1
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0802983E
	ldr r0, _08029848 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802982C
	ldr r2, _0802984C @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08029850 @ =gCourseTime
	ldr r0, _08029854 @ =0x00004650
	str r0, [r1]
_0802982C:
	ldr r2, _08029858 @ =gPlayer
	ldr r0, [r2, #0x10]
	ldr r1, _0802985C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
	strh r3, [r2, #0x38]
	ldr r0, [r5]
	bl TaskDestroy
_0802983E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029844: .4byte gCurTask
_08029848: .4byte gGameMode
_0802984C: .4byte gStageFlags
_08029850: .4byte gCourseTime
_08029854: .4byte 0x00004650
_08029858: .4byte gPlayer
_0802985C: .4byte 0xFFDFFFFF

	thumb_func_start CreateSomeScreenShakeEffect
CreateSomeScreenShakeEffect: @ 0x08029860
	push {r4, lr}
	sub sp, #4
	ldr r0, _080298B0 @ =Task_80298C0
	movs r2, #0x80
	lsls r2, r2, #7
	movs r4, #0
	str r4, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0x3c
	strh r1, [r0, #0xc]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #8
	movs r2, #0x10
	movs r3, #0xa
	bl CreateScreenShake
	ldr r1, _080298B4 @ =gCamera
	ldr r0, _080298B8 @ =0x00000422
	strh r0, [r1, #0x18]
	ldr r2, _080298BC @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	strh r4, [r2, #0x38]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080298B0: .4byte Task_80298C0
_080298B4: .4byte gCamera
_080298B8: .4byte 0x00000422
_080298BC: .4byte gPlayer

	thumb_func_start Task_80298C0
Task_80298C0: @ 0x080298C0
	push {r4, lr}
	sub sp, #4
	ldr r4, _08029900 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #0xc]
	subs r0, #1
	strh r0, [r1, #0xc]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080298F8
	movs r3, #0x96
	lsls r3, r3, #1
	strh r3, [r1, #0xc]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r1, #0x90
	str r1, [sp]
	movs r1, #8
	movs r2, #0x10
	bl CreateScreenShake
	ldr r1, [r4]
	ldr r0, _08029904 @ =Task_80297E8
	str r0, [r1, #8]
_080298F8:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029900: .4byte gCurTask
_08029904: .4byte Task_80297E8
