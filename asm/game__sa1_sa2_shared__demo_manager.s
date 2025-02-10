.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of demo_manager.c ---

.if 0
	thumb_func_start Task_DemoManagerEndFadeout
Task_DemoManagerEndFadeout: @ 0x08012BA8
	push {r4, lr}
	ldr r0, _08012BFC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _08012C00 @ =0x03000062
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x2f
	bls _08012C2E
	ldr r1, _08012C04 @ =gLoadedSaveGame
	ldr r2, _08012C08 @ =0x03000065
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1, #0x1b]
	ldr r1, _08012C0C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08012C10 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08012C14 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08012C18 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08012C1C @ =gVramGraphicsCopyCursor
	ldr r0, _08012C20 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08012C24 @ =0x03000064
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08012C28
	bl CreateSegaLogo
	b _08012C2E
	.align 2, 0
_08012BFC: .4byte gCurTask
_08012C00: .4byte 0x03000062
_08012C04: .4byte gLoadedSaveGame
_08012C08: .4byte 0x03000065
_08012C0C: .4byte 0x0000FFFF
_08012C10: .4byte gBackgroundsCopyQueueCursor
_08012C14: .4byte gBackgroundsCopyQueueIndex
_08012C18: .4byte sa2__gUnknown_03005390
_08012C1C: .4byte gVramGraphicsCopyCursor
_08012C20: .4byte gVramGraphicsCopyQueueIndex
_08012C24: .4byte 0x03000064
_08012C28:
	movs r0, #1
	bl CreateTitleScreen
_08012C2E:
	pop {r4}
	pop {r0}
	bx r0
.endif

	thumb_func_start Task_DemoManagerFadeout
Task_DemoManagerFadeout: @ 0x08012C34
	ldr r0, _08012C5C @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	ldr r0, _08012C60 @ =0x03000060
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	ldr r2, _08012C64 @ =gBldRegs
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r2, #4]
	ldrh r1, [r1]
	ldr r0, _08012C68 @ =0x00000FFF
	cmp r1, r0
	bls _08012C58
	ldr r0, _08012C6C @ =Task_DemoManagerEndFadeout
	str r0, [r3, #8]
_08012C58:
	bx lr
	.align 2, 0
_08012C5C: .4byte gCurTask
_08012C60: .4byte 0x03000060
_08012C64: .4byte gBldRegs
_08012C68: .4byte 0x00000FFF
_08012C6C: .4byte Task_DemoManagerEndFadeout

	thumb_func_start TaskDestructor_DemoManagerMain
TaskDestructor_DemoManagerMain: @ 0x08012C70
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r1, _08012C9C @ =gDestroySpotlights
	movs r0, #0
	strb r0, [r1]
	ldr r2, _08012CA0 @ =gStageFlags
	ldrh r1, [r2]
	ldr r0, _08012CA4 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012C9C: .4byte gDestroySpotlights
_08012CA0: .4byte gStageFlags
_08012CA4: .4byte 0x0000FFBF

@ SA2: CreateMusicFadeoutTask

@ SA2: Task_DemoManagerMusicFadeout

@ --- End of demo_manager.c ---
