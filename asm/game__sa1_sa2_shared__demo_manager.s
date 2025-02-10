.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of demo_manager.c ---

	thumb_func_start CreateDemoManager
CreateDemoManager: @ 0x080128C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _080129FC @ =gUnknown_080BB3DC
	add r0, sp, #4
	movs r2, #4
	bl memcpy
	ldr r0, _08012A00 @ =gBldRegs
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	str r0, [sp, #8]
	ldr r0, _08012A04 @ =Task_DemoManagerMain
	ldr r1, _08012A08 @ =TaskDestructor_DemoManagerMain
	str r1, [sp]
	movs r1, #0x68
	movs r2, #1
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	ldr r1, _08012A0C @ =0x03000060
	adds r0, r6, r1
	movs r2, #0
	mov r8, r2
	movs r7, #0
	strh r7, [r0]
	adds r1, #2
	adds r0, r6, r1
	strh r7, [r0]
	ldr r2, _08012A10 @ =0x03000064
	adds r0, r6, r2
	mov r1, r8
	strb r1, [r0]
	ldr r4, _08012A14 @ =gLoadedSaveGame
	ldrb r1, [r4, #0x1b]
	adds r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	ldr r2, _08012A18 @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	orrs r5, r6
	movs r0, #0x78
	strh r0, [r5, #0x16]
	movs r0, #0x71
	strh r0, [r5, #0x18]
	movs r0, #0x2e
	bl VramMalloc
	str r0, [r5, #4]
	strh r7, [r5, #8]
	ldrb r0, [r4, #0x19]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #4
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r1, _08012A1C @ =0x03000020
	adds r0, r6, r1
	mov r2, r8
	strb r2, [r0]
	strh r7, [r5, #0x14]
	ldr r0, _08012A20 @ =0x03000021
	adds r1, r6, r0
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	movs r0, #0xff
	strb r0, [r1]
	strh r7, [r5, #0x1c]
	ldr r1, _08012A24 @ =0x03000022
	adds r0, r6, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	mov r2, r8
	strb r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #2
	mov sl, r0
	mov r1, sl
	strh r1, [r5, #0x1a]
	movs r4, #0x80
	lsls r4, r4, #5
	str r4, [r5, #0x10]
	ldr r2, [sp, #8]
	cmp r2, #0x40
	beq _0801298A
	movs r0, #0x80
	orrs r0, r4
	str r0, [r5, #0x10]
_0801298A:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, _08012A28 @ =0x03000030
	adds r5, r6, r0
	movs r1, #0x78
	strh r1, [r5, #0x16]
	movs r0, #0x50
	strh r0, [r5, #0x18]
	movs r0, #3
	bl VramMalloc
	str r0, [r5, #4]
	strh r7, [r5, #8]
	ldr r0, _08012A2C @ =0x000002D1
	strh r0, [r5, #0xa]
	ldr r2, _08012A30 @ =0x03000050
	adds r0, r6, r2
	mov r1, r8
	strb r1, [r0]
	strh r7, [r5, #0x14]
	adds r2, #1
	adds r1, r6, r2
	ldrb r0, [r1]
	mov r2, sb
	orrs r0, r2
	strb r0, [r1]
	strh r7, [r5, #0x1c]
	ldr r1, _08012A34 @ =0x03000052
	adds r0, r6, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	mov r2, r8
	strb r2, [r0]
	mov r0, sl
	strh r0, [r5, #0x1a]
	str r4, [r5, #0x10]
	ldr r1, [sp, #8]
	cmp r1, #0x40
	beq _080129E4
	movs r0, #0x80
	orrs r0, r4
	str r0, [r5, #0x10]
_080129E4:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080129FC: .4byte gUnknown_080BB3DC
_08012A00: .4byte gBldRegs
_08012A04: .4byte Task_DemoManagerMain
_08012A08: .4byte TaskDestructor_DemoManagerMain
_08012A0C: .4byte 0x03000060
_08012A10: .4byte 0x03000064
_08012A14: .4byte gLoadedSaveGame
_08012A18: .4byte gStageFlags
_08012A1C: .4byte 0x03000020
_08012A20: .4byte 0x03000021
_08012A24: .4byte 0x03000022
_08012A28: .4byte 0x03000030
_08012A2C: .4byte 0x000002D1
_08012A30: .4byte 0x03000050
_08012A34: .4byte 0x03000052

	thumb_func_start Task_DemoManagerMain
Task_DemoManagerMain: @ 0x08012A38
	push {r4, r5, r6, lr}
	ldr r6, _08012AAC @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, _08012AB0 @ =gPhysicalInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08012ADC
	ldr r2, _08012AB4 @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r3, #0
	strh r3, [r2, #0x38]
	ldr r1, _08012AB8 @ =gDestroySpotlights
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08012ABC @ =0x03000064
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r6]
	ldr r0, _08012AC0 @ =Task_DemoManagerFadeout
	str r0, [r1, #8]
	ldr r1, _08012AC4 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r3, [r1, #4]
	ldr r1, _08012AC8 @ =gMusicManagerState
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08012ACC @ =gMPlayInfo_BGM
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08012AD0 @ =gMPlayInfo_SE1
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08012AD4 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08012AD8 @ =gMPlayInfo_SE3
	movs r1, #4
	bl m4aMPlayFadeOut
	b _08012B22
	.align 2, 0
_08012AAC: .4byte gCurTask
_08012AB0: .4byte gPhysicalInput
_08012AB4: .4byte gPlayer
_08012AB8: .4byte gDestroySpotlights
_08012ABC: .4byte 0x03000064
_08012AC0: .4byte Task_DemoManagerFadeout
_08012AC4: .4byte gBldRegs
_08012AC8: .4byte gMusicManagerState
_08012ACC: .4byte gMPlayInfo_BGM
_08012AD0: .4byte gMPlayInfo_SE1
_08012AD4: .4byte gMPlayInfo_SE2
_08012AD8: .4byte gMPlayInfo_SE3
_08012ADC:
	ldr r0, _08012B40 @ =gCheckpointTime
	ldr r1, [r0]
	movs r0, #0xe1
	lsls r0, r0, #3
	cmp r1, r0
	bls _08012B22
	ldr r1, _08012B44 @ =0x03000064
	adds r0, r4, r1
	strb r2, [r0]
	ldr r1, [r6]
	ldr r0, _08012B48 @ =Task_DemoManagerFadeout
	str r0, [r1, #8]
	ldr r1, _08012B4C @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #4]
	ldr r1, _08012B50 @ =gMusicManagerState
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08012B54 @ =gMPlayInfo_BGM
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08012B58 @ =gMPlayInfo_SE1
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08012B5C @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08012B60 @ =gMPlayInfo_SE3
	movs r1, #4
	bl m4aMPlayFadeOut
_08012B22:
	adds r2, r5, #0
	ldr r0, _08012B40 @ =gCheckpointTime
	ldr r0, [r0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08012B72
	ldr r0, _08012B4C @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _08012B64
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	b _08012B6A
	.align 2, 0
_08012B40: .4byte gCheckpointTime
_08012B44: .4byte 0x03000064
_08012B48: .4byte Task_DemoManagerFadeout
_08012B4C: .4byte gBldRegs
_08012B50: .4byte gMusicManagerState
_08012B54: .4byte gMPlayInfo_BGM
_08012B58: .4byte gMPlayInfo_SE1
_08012B5C: .4byte gMPlayInfo_SE2
_08012B60: .4byte gMPlayInfo_SE3
_08012B64:
	ldr r0, [r5, #0x10]
	ldr r1, _08012B84 @ =0xFFFFFE7F
	ands r0, r1
_08012B6A:
	str r0, [r5, #0x10]
	adds r0, r2, #0
	bl DisplaySprite
_08012B72:
	ldr r0, _08012B88 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _08012B8C
	ldr r0, [r5, #0x40]
	movs r1, #0x80
	orrs r0, r1
	b _08012B92
	.align 2, 0
_08012B84: .4byte 0xFFFFFE7F
_08012B88: .4byte gBldRegs
_08012B8C:
	ldr r0, [r5, #0x40]
	ldr r1, _08012BA4 @ =0xFFFFFE7F
	ands r0, r1
_08012B92:
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x30
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08012BA4: .4byte 0xFFFFFE7F

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
