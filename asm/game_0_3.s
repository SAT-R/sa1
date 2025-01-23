.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8012728
sub_8012728: @ 0x08012728
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldr r0, _080127C0 @ =sub_80127DC
	movs r2, #0x80
	lsls r2, r2, #6
	mov sl, r2
	ldr r1, _080127C4 @ =TaskDestructor_80128AC
	str r1, [sp]
	movs r1, #0x34
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r7, #0
	movs r6, #0
	strh r6, [r4, #0x30]
	mov r0, r8
	strh r0, [r4, #0x16]
	mov r1, sb
	strh r1, [r4, #0x18]
	movs r0, #2
	bl VramMalloc
	str r0, [r4, #4]
	strh r6, [r4, #0x1a]
	strh r6, [r4, #8]
	ldr r0, _080127C8 @ =0x000002C5
	strh r0, [r4, #0xa]
	ldr r0, _080127CC @ =gPlayer
	adds r0, #0x58
	ldrb r1, [r0]
	ldr r2, _080127D0 @ =0x03000020
	adds r0, r5, r2
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _080127D4 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r2, #2
	adds r1, r5, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080127D8 @ =0x03000025
	adds r5, r5, r0
	strb r7, [r5]
	mov r1, sl
	str r1, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080127C0: .4byte sub_80127DC
_080127C4: .4byte TaskDestructor_80128AC
_080127C8: .4byte 0x000002C5
_080127CC: .4byte gPlayer
_080127D0: .4byte 0x03000020
_080127D4: .4byte 0x03000021
_080127D8: .4byte 0x03000025

	thumb_func_start sub_80127DC
sub_80127DC: @ 0x080127DC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801282C @ =gCurTask
	ldr r5, [r0]
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r6, [r4, #0x16]
	ldrh r7, [r4, #0x18]
	ldrh r2, [r4, #0x30]
	adds r2, #1
	strh r2, [r4, #0x30]
	ldr r3, _08012830 @ =gCamera
	ldrh r0, [r4, #0x16]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r1, [r3, #2]
	adds r1, r1, r2
	ldrh r0, [r4, #0x18]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0x3b
	ble _08012838
	ldr r0, _08012834 @ =sub_8012848
	str r0, [r5, #8]
	adds r0, r4, #0
	bl DisplaySprite
	strh r6, [r4, #0x16]
	ldrh r1, [r4, #0x30]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	movs r0, #0
	strh r0, [r4, #0x30]
	b _08012842
	.align 2, 0
_0801282C: .4byte gCurTask
_08012830: .4byte gCamera
_08012834: .4byte sub_8012848
_08012838:
	adds r0, r4, #0
	bl DisplaySprite
	strh r6, [r4, #0x16]
	strh r7, [r4, #0x18]
_08012842:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8012848
sub_8012848: @ 0x08012848
	push {r4, r5, r6, lr}
	ldr r0, _08012880 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r5, [r4, #0x16]
	ldrh r6, [r4, #0x18]
	ldr r2, _08012884 @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x30]
	adds r0, #1
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _08012888
	adds r0, r3, #0
	bl TaskDestroy
	b _080128A6
	.align 2, 0
_08012880: .4byte gCurTask
_08012884: .4byte gCamera
_08012888:
	ldrh r1, [r2]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r1, [r2, #2]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
	strh r5, [r4, #0x16]
	strh r6, [r4, #0x18]
_080128A6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_80128AC
TaskDestructor_80128AC: @ 0x080128AC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80128C0
sub_80128C0: @ 0x080128C0
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
	ldr r0, _08012A04 @ =sub_8012A38
	ldr r1, _08012A08 @ =sub_8012C70
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
_08012A04: .4byte sub_8012A38
_08012A08: .4byte sub_8012C70
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

	thumb_func_start sub_8012A38
sub_8012A38: @ 0x08012A38
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
	ldr r0, _08012AC0 @ =sub_8012C34
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
_08012AC0: .4byte sub_8012C34
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
	ldr r0, _08012B48 @ =sub_8012C34
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
_08012B48: .4byte sub_8012C34
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

	thumb_func_start sub_8012BA8
sub_8012BA8: @ 0x08012BA8
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

	thumb_func_start sub_8012C34
sub_8012C34: @ 0x08012C34
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
	ldr r0, _08012C6C @ =sub_8012BA8
	str r0, [r3, #8]
_08012C58:
	bx lr
	.align 2, 0
_08012C5C: .4byte gCurTask
_08012C60: .4byte 0x03000060
_08012C64: .4byte gBldRegs
_08012C68: .4byte 0x00000FFF
_08012C6C: .4byte sub_8012BA8

	thumb_func_start sub_8012C70
sub_8012C70: @ 0x08012C70
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

@ TODO: Is the name correct?
	thumb_func_start SaveGameExists
SaveGameExists: @ 0x08012CA8
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r7, _08012CC8 @ =gUnknown_0300508C
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	ldr r0, _08012CCC @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08012CD0
	movs r0, #0
	b _08012D8E
	.align 2, 0
_08012CC8: .4byte gUnknown_0300508C
_08012CCC: .4byte gFlags
_08012CD0:
	ldr r5, _08012D00 @ =gLoadedSaveGame
	movs r3, #0x86
	lsls r3, r3, #3
	movs r0, #0
	movs r1, #0
	adds r2, r5, #0
	bl ReadFlash
	ldr r1, [r5]
	ldr r0, _08012D04 @ =0x4F524950
	cmp r1, r0
	bne _08012D0C
	ldr r2, _08012D08 @ =0x0000042C
	adds r4, r5, r2
	adds r0, r5, #0
	bl sub_8012FC4
	ldr r1, [r4]
	cmp r1, r0
	bne _08012D0E
	movs r0, #0
	strb r0, [r7]
	b _08012D0E
	.align 2, 0
_08012D00: .4byte gLoadedSaveGame
_08012D04: .4byte 0x4F524950
_08012D08: .4byte 0x0000042C
_08012D0C:
	movs r6, #1
_08012D0E:
	lsls r1, r6, #0x18
	asrs r0, r1, #0x18
	cmp r0, #9
	bgt _08012D54
	ldr r5, _08012D68 @ =gLoadedSaveGame
	ldr r0, _08012D6C @ =0x0000042C
	adds r7, r5, r0
_08012D1C:
	asrs r4, r1, #0x18
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0x86
	lsls r3, r3, #3
	bl ReadFlash
	ldr r1, [r5]
	ldr r0, _08012D70 @ =0x4F524950
	cmp r1, r0
	bne _08012D54
	adds r0, r5, #0
	bl sub_8012FC4
	ldr r1, [r7]
	cmp r1, r0
	bne _08012D46
	ldr r0, _08012D74 @ =gUnknown_0300508C
	strb r6, [r0]
_08012D46:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r6, #0x18
	asrs r0, r1, #0x18
	cmp r0, #9
	ble _08012D1C
_08012D54:
	ldr r1, _08012D74 @ =gUnknown_0300508C
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08012D78
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	movs r0, #0
	b _08012D8E
	.align 2, 0
_08012D68: .4byte gLoadedSaveGame
_08012D6C: .4byte 0x0000042C
_08012D70: .4byte 0x4F524950
_08012D74: .4byte gUnknown_0300508C
_08012D78:
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08012D94 @ =gLoadedSaveGame
	movs r3, #0x86
	lsls r3, r3, #3
	movs r1, #0
	bl ReadFlash
	movs r0, #1
_08012D8E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08012D94: .4byte gLoadedSaveGame

	thumb_func_start sub_8012D98
sub_8012D98: @ 0x08012D98
	push {r4, r5, r6, lr}
	ldr r0, _08012DE0 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08012E0E
	ldr r6, _08012DE4 @ =gUnknown_0300508C
	movs r1, #0
	ldrsb r1, [r6, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08012E1C
	movs r4, #0x86
	lsls r4, r4, #3
	adds r0, r4, #0
	bl EwramMalloc
	adds r5, r0, #0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl ReadFlash
	movs r4, #1
	movs r2, #0
	ldr r0, _08012DE8 @ =gLoadedSaveGame
	ldrb r1, [r5]
	b _08012DFC
	.align 2, 0
_08012DE0: .4byte gFlags
_08012DE4: .4byte gUnknown_0300508C
_08012DE8: .4byte gLoadedSaveGame
_08012DEC:
	adds r2, #1
	ldr r0, _08012E14 @ =0x0000042F
	cmp r2, r0
	bhi _08012E04
	adds r1, r5, r2
	ldr r0, _08012E18 @ =gLoadedSaveGame
	adds r0, r2, r0
	ldrb r1, [r1]
_08012DFC:
	ldrb r0, [r0]
	cmp r1, r0
	beq _08012DEC
	movs r4, #0
_08012E04:
	adds r0, r5, #0
	bl EwramFree
	cmp r4, #0
	beq _08012E1C
_08012E0E:
	movs r0, #0
	b _08012E8A
	.align 2, 0
_08012E14: .4byte 0x0000042F
_08012E18: .4byte gLoadedSaveGame
_08012E1C:
	ldr r0, _08012E34 @ =gUnknown_0300508C
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	bne _08012E3C
	ldr r0, _08012E38 @ =EraseFlashSector
	ldr r1, [r0]
	movs r0, #0
	b _08012E52
	.align 2, 0
_08012E34: .4byte gUnknown_0300508C
_08012E38: .4byte EraseFlashSector
_08012E3C:
	cmp r0, #9
	ble _08012E42
	movs r5, #0
_08012E42:
	ldr r1, _08012E90 @ =EraseFlashSector
	lsls r0, r5, #0x18
	asrs r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	ldr r1, [r1]
_08012E52:
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08012E8A
	ldr r4, _08012E94 @ =gLoadedSaveGame
	ldr r0, _08012E98 @ =0x4F524950
	str r0, [r4]
	adds r0, r4, #0
	bl sub_8012FC4
	ldr r2, _08012E9C @ =0x0000042C
	adds r1, r4, r2
	str r0, [r1]
	ldr r0, _08012EA0 @ =gUnknown_0300508C
	strb r5, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, #4
	adds r1, r4, #0
	bl ProgramFlashSectorAndVerifyNBytes
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08012E8A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08012E90: .4byte EraseFlashSector
_08012E94: .4byte gLoadedSaveGame
_08012E98: .4byte 0x4F524950
_08012E9C: .4byte 0x0000042C
_08012EA0: .4byte gUnknown_0300508C

	thumb_func_start sub_8012EA4
sub_8012EA4: @ 0x08012EA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r3, r0, #0
	movs r0, #0
	mov sb, r0
	mov r8, r0
	ldr r6, _08012F44 @ =gCurrentLevel
	ldr r5, _08012F48 @ =gSelectedCharacter
	ldr r4, _08012F4C @ =gUnknown_03005180
	adds r7, r6, #0
	mov sl, r5
_08012EC0:
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	add r0, r8
	lsls r0, r0, #2
	movs r2, #0
	ldrsb r2, [r5, r2]
	movs r1, #0xd8
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r4
	ldr r1, [r0]
	cmp r3, r1
	bhs _08012F50
	adds r4, r1, #0
	str r3, [r0]
	mov r3, r8
	adds r3, #1
	cmp r3, #2
	bhi _08012F38
	mov ip, r7
	mov r7, sl
	movs r6, #0xd8
	ldr r5, _08012F4C @ =gUnknown_03005180
_08012EF2:
	lsls r2, r3, #2
	mov r0, ip
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r2, r0
	movs r1, #0
	ldrsb r1, [r7, r1]
	muls r1, r6, r1
	adds r0, r0, r1
	adds r0, r0, r5
	ldr r1, [r0]
	eors r1, r4
	str r1, [r0]
	mov r0, ip
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r0, #0
	ldrsb r0, [r7, r0]
	muls r0, r6, r0
	adds r2, r2, r0
	adds r2, r2, r5
	ldr r0, [r2]
	eors r4, r0
	eors r0, r4
	str r0, [r2]
	adds r3, #1
	cmp r3, #2
	bls _08012EF2
_08012F38:
	mov r0, r8
	cmp r0, #0
	bne _08012F5A
	movs r0, #1
	mov sb, r0
	b _08012F5A
	.align 2, 0
_08012F44: .4byte gCurrentLevel
_08012F48: .4byte gSelectedCharacter
_08012F4C: .4byte gUnknown_03005180
_08012F50:
	movs r0, #1
	add r8, r0
	mov r0, r8
	cmp r0, #2
	bls _08012EC0
_08012F5A:
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8012F6C
sub_8012F6C: @ 0x08012F6C
	push {r4, r5, lr}
	ldr r0, _08012F80 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08012F88
	b _08012FB2
	.align 2, 0
_08012F80: .4byte gFlags
_08012F84:
	adds r0, r1, #0
	b _08012FB4
_08012F88:
	movs r2, #0
	ldr r5, _08012FBC @ =EraseFlashSector
_08012F8C:
	lsls r0, r2, #0x18
	asrs r4, r0, #0x18
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r5]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08012F84
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _08012F8C
	ldr r0, _08012FC0 @ =gUnknown_0300508C
	strb r1, [r0]
_08012FB2:
	movs r0, #0
_08012FB4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08012FBC: .4byte EraseFlashSector
_08012FC0: .4byte gUnknown_0300508C

	thumb_func_start sub_8012FC4
sub_8012FC4: @ 0x08012FC4
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0
	movs r1, #0
	ldr r4, _08012FE4 @ =0x0000042B
_08012FCE:
	adds r0, r3, r1
	ldr r0, [r0]
	adds r2, r2, r0
	adds r1, #4
	cmp r1, r4
	bls _08012FCE
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08012FE4: .4byte 0x0000042B

	thumb_func_start sub_8012FE8
sub_8012FE8: @ 0x08012FE8
	push {r4, lr}
	sub sp, #8
	ldr r1, _0801304C @ =gDispCnt
	movs r2, #0x88
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08013050 @ =gBgCntRegs
	movs r4, #0
	movs r3, #0
	ldr r0, _08013054 @ =0x00001E01
	strh r0, [r1, #4]
	str r3, [sp, #4]
	ldr r1, _08013058 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0801305C @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08013060 @ =sa2__gUnknown_03004D80
	strb r4, [r0, #2]
	ldr r1, _08013064 @ =sa2__gUnknown_03002280
	strb r4, [r1, #8]
	strb r4, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x40
	strb r0, [r1, #0xb]
	ldr r0, _08013068 @ =sub_8013078
	movs r2, #0x80
	lsls r2, r2, #5
	str r3, [sp]
	movs r1, #0
	bl TaskCreate
	ldr r1, _0801306C @ =gBgPalette
	ldr r0, _08013070 @ =0x00007FFF
	strh r0, [r1, #2]
	ldr r2, _08013074 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801304C: .4byte gDispCnt
_08013050: .4byte gBgCntRegs
_08013054: .4byte 0x00001E01
_08013058: .4byte 0x040000D4
_0801305C: .4byte 0x85000010
_08013060: .4byte sa2__gUnknown_03004D80
_08013064: .4byte sa2__gUnknown_03002280
_08013068: .4byte sub_8013078
_0801306C: .4byte gBgPalette
_08013070: .4byte 0x00007FFF
_08013074: .4byte gFlags

	thumb_func_start sub_8013078
sub_8013078: @ 0x08013078
	push {lr}
	sub sp, #0xc
	ldr r0, _080130AC @ =0x06000020
	ldr r1, _080130B0 @ =gMultiBootProgram_TinyChaoGarden
	movs r2, #2
	str r2, [sp]
	ldr r2, _080130B4 @ =gUnknown_080BB3E0
	str r2, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r2, #1
	movs r3, #0xa
	bl RenderText
	ldr r0, _080130B8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080130A4
	bl sub_80130BC
_080130A4:
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_080130AC: .4byte 0x06000020
_080130B0: .4byte gMultiBootProgram_TinyChaoGarden
_080130B4: .4byte gUnknown_080BB3E0
_080130B8: .4byte gPressedKeys

	thumb_func_start sub_80130BC
sub_80130BC: @ 0x080130BC
	push {lr}
	ldr r1, _080130E4 @ =sa2__gUnknown_03004D80
	movs r0, #0
	strb r0, [r1, #2]
	ldr r1, _080130E8 @ =sa2__gUnknown_03002280
	strb r0, [r1, #8]
	strb r0, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x20
	strb r0, [r1, #0xb]
	ldr r0, _080130EC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateSegaLogo
	pop {r0}
	bx r0
	.align 2, 0
_080130E4: .4byte sa2__gUnknown_03004D80
_080130E8: .4byte sa2__gUnknown_03002280
_080130EC: .4byte gCurTask

	thumb_func_start sub_80130F0
sub_80130F0: @ 0x080130F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0801315C @ =sub_8013400
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08013160 @ =sub_8015728
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov ip, r0
	ldr r1, _08013164 @ =0x03000056
	adds r0, r3, r1
	movs r1, #0
	strb r4, [r0]
	ldr r2, _08013168 @ =0x03000054
	adds r0, r3, r2
	strh r1, [r0]
	mov r6, ip
	str r1, [r6, #0x44]
	str r1, [r6, #0x48]
	adds r2, #0x12
	adds r0, r3, r2
	strh r1, [r0]
	ldr r6, _0801316C @ =0x03000068
	adds r0, r3, r6
	strh r1, [r0]
	adds r2, #4
	adds r0, r3, r2
	strh r1, [r0]
	ldr r0, _08013170 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _08013174
	subs r6, #8
	adds r1, r3, r6
	movs r0, #0x1e
	b _0801317A
	.align 2, 0
_0801315C: .4byte sub_8013400
_08013160: .4byte sub_8015728
_08013164: .4byte 0x03000056
_08013168: .4byte 0x03000054
_0801316C: .4byte 0x03000068
_08013170: .4byte 0x04000128
_08013174:
	ldr r0, _080131E8 @ =0x03000060
	adds r1, r3, r0
	movs r0, #0
_0801317A:
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x57
	movs r3, #0
	movs r0, #0x80
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x61
	strb r3, [r0]
	mov r1, ip
	str r3, [r1, #0x5c]
	mov r2, ip
	adds r2, #0x56
	ldrb r1, [r2]
	adds r0, #3
	strb r1, [r0]
	ldr r6, _080131EC @ =gGameMode
	ldrb r0, [r6]
	str r2, [sp, #0x10]
	cmp r0, #6
	beq _080131AE
	mov r2, ip
	ldr r0, [r2, #0x5c]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x5c]
_080131AE:
	mov r4, ip
	adds r4, #0x50
	movs r1, #0
	strh r3, [r4]
	mov r5, ip
	adds r5, #0x52
	strh r3, [r5]
	ldrb r0, [r6]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	cmp r0, #3
	bhi _080131F8
	ldr r1, _080131F0 @ =gSpawnPositions
	ldr r2, _080131F4 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5]
	subs r5, #0x1a
	b _0801336C
	.align 2, 0
_080131E8: .4byte 0x03000060
_080131EC: .4byte gGameMode
_080131F0: .4byte gSpawnPositions
_080131F4: .4byte gCurrentLevel
_080131F8:
	cmp r0, #4
	bne _08013238
	ldr r0, _0801322C @ =0x04000128
	ldr r1, [r0]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	ldr r2, _08013230 @ =gSpawnPositions_Modes_4_and_5
	lsls r1, r1, #2
	ldr r3, _08013234 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r3, r0]
	subs r0, #0xe
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #0
	ldrsb r0, [r3, r0]
	subs r0, #0xe
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r2, #2
	adds r1, r1, r2
	ldrh r0, [r1]
	b _08013366
	.align 2, 0
_0801322C: .4byte 0x04000128
_08013230: .4byte gSpawnPositions_Modes_4_and_5
_08013234: .4byte gCurrentLevel
_08013238:
	cmp r0, #5
	bne _08013314
	ldr r3, _08013288 @ =0x04000128
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r6, r0, #0x1e
	ldr r0, _0801328C @ =gCurrentLevel
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r0
	cmp r1, #0x10
	bne _08013294
	ldr r2, _08013290 @ =gSpawnPositions_Modes_4_and_5
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	mov r6, sb
	movs r1, #0
	ldrsb r1, [r6, r1]
	subs r1, #0xe
	lsls r1, r1, #4
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	lsls r1, r1, #2
	movs r0, #0
	ldrsb r0, [r6, r0]
	subs r0, #0xe
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r2, #2
	adds r1, r1, r2
	ldrh r0, [r1]
	b _08013366
	.align 2, 0
_08013288: .4byte 0x04000128
_0801328C: .4byte gCurrentLevel
_08013290: .4byte gSpawnPositions_Modes_4_and_5
_08013294:
	ldr r0, _0801330C @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #0x10
	lsls r2, r6
	ands r2, r1
	adds r0, r6, #4
	asrs r2, r0
	movs r4, #0
	movs r3, #0
	ldr r0, _08013310 @ =gSpawnPositions_Modes_4_and_5
	mov sl, r0
	mov r5, ip
	adds r5, #0x38
	cmp r4, r6
	bhs _080132CE
	adds r7, r1, #0
	movs r1, #0x10
	mov r8, r1
_080132B8:
	mov r0, r8
	lsls r0, r3
	ands r0, r7
	adds r1, r3, #4
	asrs r0, r1
	cmp r0, r2
	bne _080132C8
	adds r4, #1
_080132C8:
	adds r3, #1
	cmp r3, r6
	blo _080132B8
_080132CE:
	cmp r2, #0
	bne _080132D4
	rsbs r4, r4, #0
_080132D4:
	lsls r2, r2, #2
	mov r3, sb
	movs r1, #0
	ldrsb r1, [r3, r1]
	subs r1, #0xe
	lsls r1, r1, #4
	adds r1, r2, r1
	add r1, sl
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r6, [sp, #8]
	strh r0, [r6]
	movs r0, #0
	ldrsb r0, [r3, r0]
	subs r0, #0xe
	lsls r0, r0, #4
	adds r2, r2, r0
	mov r0, sl
	adds r0, #2
	adds r2, r2, r0
	ldrh r0, [r2]
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	b _0801336C
	.align 2, 0
_0801330C: .4byte gMultiplayerConnections
_08013310: .4byte gSpawnPositions_Modes_4_and_5
_08013314:
	ldr r0, _0801332C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08013348
	cmp r0, #1
	bgt _08013330
	cmp r0, #0
	beq _0801333A
	b _08013368
	.align 2, 0
_0801332C: .4byte 0x04000128
_08013330:
	cmp r0, #2
	beq _08013358
	cmp r0, #3
	beq _08013360
	b _08013368
_0801333A:
	movs r0, #0xe8
	strh r0, [r4]
	ldr r0, _08013344 @ =0x0000033D
	b _08013366
	.align 2, 0
_08013344: .4byte 0x0000033D
_08013348:
	ldr r0, _08013350 @ =0x00000631
	strh r0, [r4]
	ldr r0, _08013354 @ =0x0000039E
	b _08013366
	.align 2, 0
_08013350: .4byte 0x00000631
_08013354: .4byte 0x0000039E
_08013358:
	movs r0, #0xe8
	strh r0, [r4]
	adds r0, #0x74
	b _08013366
_08013360:
	ldr r0, _08013388 @ =0x00000631
	strh r0, [r4]
	ldr r0, _0801338C @ =0x00000117
_08013366:
	strh r0, [r5]
_08013368:
	mov r5, ip
	adds r5, #0x38
_0801336C:
	mov r4, ip
	ldr r0, _08013390 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	ldr r2, [sp, #0x10]
	ldrb r1, [r2]
	lsrs r0, r0, #0x1e
	cmp r1, r0
	beq _08013394
	movs r0, #0x40
	bl VramMalloc
	b _08013396
	.align 2, 0
_08013388: .4byte 0x00000631
_0801338C: .4byte 0x00000117
_08013390: .4byte 0x04000128
_08013394:
	ldr r0, _080133F8 @ =0x06010000
_08013396:
	str r0, [r4, #4]
	movs r2, #0
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r1, [r4, #8]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x1c]
	adds r3, r4, #0
	adds r3, #0x21
	movs r0, #0xff
	strb r0, [r3]
	adds r3, #1
	movs r0, #0x10
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	strh r1, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	strb r2, [r0]
	strh r1, [r4, #0x16]
	strh r1, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #4]
	ldr r1, _080133FC @ =gMultiplayerPlayerTasks
	ldr r3, [sp, #0x10]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r6, [sp, #4]
	str r6, [r0]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080133F8: .4byte 0x06010000
_080133FC: .4byte gMultiplayerPlayerTasks

	thumb_func_start sub_8013400
sub_8013400: @ 0x08013400
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _080134CC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	adds r6, r7, #0
	adds r0, #0x38
	adds r0, r4, r0
	str r0, [sp]
	ldr r1, _080134D0 @ =0x03000056
	adds r3, r4, r1
	ldrb r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _080134D4 @ =gMultiSioRecv
	adds r0, r0, r1
	mov r8, r0
	ldr r5, _080134D8 @ =gMultiSioStatusFlags
	mov sb, r5
	movs r5, #1
	adds r1, r5, #0
	lsls r1, r2
	mov r2, sb
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08013448
	b _08013810
_08013448:
	ldr r0, _080134DC @ =0x03000061
	adds r2, r4, r0
	movs r1, #0
	mov sl, r1
	mov r0, sl
	strb r0, [r2]
	adds r1, r5, #0
	ldrb r3, [r3]
	lsls r1, r3
	mov r3, sb
	ldr r0, [r3]
	ands r0, r1
	cmp r0, #0
	bne _08013466
	b _08013810
_08013466:
	mov r5, r8
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	beq _08013474
	b _08013810
_08013474:
	mov r0, sl
	strb r0, [r2]
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldr r2, _080134E0 @ =0x03000050
	adds r3, r4, r2
	movs r5, #0
	ldrsh r1, [r3, r5]
	subs r0, r0, r1
	str r0, [r7, #0x44]
	mov r1, r8
	movs r2, #4
	ldrsh r0, [r1, r2]
	ldr r5, _080134E4 @ =0x03000052
	adds r2, r4, r5
	movs r5, #0
	ldrsh r1, [r2, r5]
	subs r0, r0, r1
	str r0, [r7, #0x48]
	mov r1, r8
	ldrh r0, [r1, #2]
	strh r0, [r3]
	ldrh r0, [r1, #4]
	strh r0, [r2]
	ldr r0, [r7, #0x44]
	cmp r0, #0
	bge _080134AC
	rsbs r0, r0, #0
_080134AC:
	cmp r0, #0x40
	bgt _080134BC
	ldr r0, [r7, #0x48]
	cmp r0, #0
	bge _080134B8
	rsbs r0, r0, #0
_080134B8:
	cmp r0, #0x40
	ble _080134E8
_080134BC:
	adds r0, r6, #0
	adds r0, #0x66
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _080134FC
	.align 2, 0
_080134CC: .4byte gCurTask
_080134D0: .4byte 0x03000056
_080134D4: .4byte gMultiSioRecv
_080134D8: .4byte gMultiSioStatusFlags
_080134DC: .4byte 0x03000061
_080134E0: .4byte 0x03000050
_080134E4: .4byte 0x03000052
_080134E8:
	ldr r0, [r7, #0x44]
	lsls r0, r0, #8
	ldr r2, _0801358C @ =0x03000066
	adds r1, r4, r2
	strh r0, [r1]
	ldr r0, [r7, #0x48]
	lsls r0, r0, #8
	ldr r3, _08013590 @ =0x03000068
	adds r1, r4, r3
	strh r0, [r1]
_080134FC:
	adds r2, r6, #0
	adds r2, #0x57
	ldrb r1, [r2]
	mov r4, r8
	ldrb r0, [r4, #0xa]
	adds r4, r0, #0
	bics r4, r1
	adds r5, r4, #0
	adds r0, r4, #0
	movs r1, #2
	ands r0, r1
	mov sl, r2
	movs r2, #0x56
	adds r2, r2, r6
	mov sb, r2
	cmp r0, #0
	beq _08013526
	movs r0, #0
	ldrsb r0, [r2, r0]
	bl sub_804B678
_08013526:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08013538
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	bl sub_804B5CC
_08013538:
	movs r0, #8
	ands r4, r0
	cmp r4, #0
	beq _0801354A
	mov r4, sb
	movs r0, #0
	ldrsb r0, [r4, r0]
	bl sub_804B71C
_0801354A:
	movs r0, #0x50
	ands r5, r0
	cmp r5, #0
	beq _0801355C
	mov r5, sb
	movs r0, #0
	ldrsb r0, [r5, r0]
	bl sub_804B7C8
_0801355C:
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r2, sl
	strb r0, [r2]
	ldrh r1, [r1, #8]
	adds r0, r6, #0
	adds r0, #0x54
	strh r1, [r0]
	ldr r3, _08013594 @ =0x04000128
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r4, sb
	ldrb r4, [r4]
	cmp r0, r4
	beq _08013598
	movs r0, #0xc0
	lsls r0, r0, #3
	ands r0, r1
	lsrs r0, r0, #9
	adds r1, r6, #0
	adds r1, #0x64
	strb r0, [r1]
	b _08013644
	.align 2, 0
_0801358C: .4byte 0x03000066
_08013590: .4byte 0x03000068
_08013594: .4byte 0x04000128
_08013598:
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	adds r4, r6, #0
	adds r4, #0x64
	ldrb r2, [r4]
	lsrs r0, r0, #0x1e
	cmp r0, r2
	beq _08013644
	ldr r1, _08013674 @ =gMultiplayerPlayerTasks
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	ldr r2, _08013678 @ =0x03000064
	adds r1, r1, r2
	lsrs r0, r0, #0x1e
	ldrb r1, [r1]
	cmp r0, r1
	bne _08013644
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r4]
	ldr r4, _0801367C @ =gPlayer
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x18
	ands r0, r1
	movs r3, #5
	rsbs r3, r3, #0
	mov sl, r3
	ands r0, r3
	adds r1, #0x10
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08013680 @ =0xFFFFFBFF
	ands r0, r1
	ldr r1, _08013684 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x40
	movs r1, #4
	strb r1, [r0]
	movs r0, #0x3c
	strh r0, [r4, #0x1c]
	ldr r0, [r4, #0x10]
	ldr r2, _08013688 @ =0xFFBFFFFF
	ands r0, r2
	str r0, [r4, #0x10]
	ldr r0, [r6, #0x5c]
	mov r3, sl
	ands r0, r3
	str r0, [r6, #0x5c]
	ldr r0, [r5, #0x5c]
	ands r0, r1
	cmp r0, #0
	beq _08013644
	ldr r0, [r4, #0x10]
	ands r0, r2
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x5c]
	ands r0, r3
	str r0, [r5, #0x5c]
_08013644:
	ldr r0, _0801368C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _080136D4
	mov r4, r8
	ldrh r1, [r4, #6]
	ldrb r3, [r4, #6]
	ldr r2, _08013690 @ =gMultiplayerCharRings
	mov r5, sb
	ldrb r0, [r5]
	adds r0, r0, r2
	lsrs r1, r1, #8
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x6a
	strh r3, [r0]
	ldrb r0, [r5]
	cmp r0, #3
	bne _080136A0
	cmp r3, #8
	bne _08013694
	movs r3, #0xc4
	lsls r3, r3, #1
	b _080136B2
	.align 2, 0
_08013674: .4byte gMultiplayerPlayerTasks
_08013678: .4byte 0x03000064
_0801367C: .4byte gPlayer
_08013680: .4byte 0xFFFFFBFF
_08013684: .4byte 0xFFFFFEFF
_08013688: .4byte 0xFFBFFFFF
_0801368C: .4byte gGameMode
_08013690: .4byte gMultiplayerCharRings
_08013694:
	cmp r3, #0x12
	bne _080136A0
	ldr r3, _0801369C @ =0x00000189
	b _080136B2
	.align 2, 0
_0801369C: .4byte 0x00000189
_080136A0:
	ldr r0, _080136D0 @ =gPlayerCharacterIdleAnims
	mov r5, sb
	ldrb r1, [r5]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080136B2:
	adds r5, r7, #0
	adds r5, #0x20
	adds r0, r6, #0
	adds r0, #0x58
	str r0, [sp, #0x10]
	movs r1, #0x22
	adds r1, r1, r7
	mov sl, r1
	adds r2, r6, #0
	adds r2, #0x50
	movs r4, #0x52
	adds r4, r4, r6
	mov ip, r4
	b _0801377A
	.align 2, 0
_080136D0: .4byte gPlayerCharacterIdleAnims
_080136D4:
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0801375C
	movs r5, #0
	str r5, [sp, #8]
	mov r0, r8
	ldrh r1, [r0, #6]
	ldr r3, _08013750 @ =0x000003FF
	ands r3, r1
	ldr r0, _08013754 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r2, sb
	ldrb r2, [r2]
	cmp r0, r2
	beq _08013704
	lsrs r1, r1, #0xc
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x5c]
	orrs r0, r1
	str r0, [r6, #0x5c]
_08013704:
	movs r1, #0
	adds r5, r7, #0
	adds r5, #0x20
	adds r4, r6, #0
	adds r4, #0x58
	str r4, [sp, #0x10]
	movs r0, #0x22
	adds r0, r0, r7
	mov sl, r0
	adds r2, r6, #0
	adds r2, #0x50
	movs r4, #0x52
	adds r4, r4, r6
	mov ip, r4
	ldr r4, [r6, #0x5c]
_08013722:
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08013738
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
_08013738:
	adds r1, #1
	cmp r1, #2
	bls _08013722
	mov r1, sb
	ldrb r0, [r1]
	ldr r4, _08013758 @ =gMultiplayerCharRings
	adds r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #8]
	strb r1, [r0]
	b _0801377A
	.align 2, 0
_08013750: .4byte 0x000003FF
_08013754: .4byte 0x04000128
_08013758: .4byte gMultiplayerCharRings
_0801375C:
	mov r2, r8
	ldrh r3, [r2, #6]
	adds r5, r7, #0
	adds r5, #0x20
	adds r4, r6, #0
	adds r4, #0x58
	str r4, [sp, #0x10]
	movs r0, #0x22
	adds r0, r0, r7
	mov sl, r0
	adds r2, r6, #0
	adds r2, #0x50
	movs r1, #0x52
	adds r1, r1, r6
	mov ip, r1
_0801377A:
	mov r4, r8
	ldrb r0, [r4, #0xb]
	movs r1, #7
	mov sb, r1
	mov r4, sb
	ands r4, r0
	mov sb, r4
	ldrh r0, [r7, #0xa]
	cmp r0, r3
	bne _08013794
	ldrb r0, [r5]
	cmp r0, sb
	beq _0801379C
_08013794:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	str r0, [r7, #0x30]
_0801379C:
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r1, [r0]
	movs r4, #4
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080137E4
	ldr r0, [r6, #0x5c]
	ands r0, r4
	ldr r4, _08013808 @ =gPlayer
	cmp r0, #0
	beq _080137C8
	ldr r0, [r4, #0x10]
	ldr r1, _0801380C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r6, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x5c]
_080137C8:
	ldr r1, [r4, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080137E4
	ldr r0, [r4, #0x28]
	cmp r0, r7
	bne _080137E4
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r4, #0x10]
_080137E4:
	strh r3, [r7, #0xa]
	mov r0, sb
	strb r0, [r5]
	mov r1, r8
	ldrb r0, [r1, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	ldr r3, [sp, #0x10]
	strb r0, [r3]
	ldrb r0, [r1, #0xc]
	mov r4, sl
	strb r0, [r4]
	ldrb r0, [r1, #0xd]
	lsls r0, r0, #2
	ldr r5, [sp]
	strh r0, [r5]
	b _08013890
	.align 2, 0
_08013808: .4byte gPlayer
_0801380C: .4byte 0xFFBFFFFF
_08013810:
	adds r2, r6, #0
	adds r2, #0x50
	adds r0, r6, #0
	adds r0, #0x66
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r4, r6, #0
	adds r4, #0x52
	adds r0, r6, #0
	adds r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	adds r3, r6, #0
	adds r3, #0x61
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r4
	cmp r0, #0x1e
	bls _08013890
	ldr r1, _08013874 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08013878 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801387C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08013880 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08013884 @ =gVramGraphicsCopyCursor
	ldr r0, _08013888 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801388C @ =gGameMode
	ldrb r0, [r0]
	bl MultiPakCommunicationError
	b _08013DB4
	.align 2, 0
_08013874: .4byte 0x0000FFFF
_08013878: .4byte gBackgroundsCopyQueueCursor
_0801387C: .4byte gBackgroundsCopyQueueIndex
_08013880: .4byte sa2__gUnknown_03005390
_08013884: .4byte gVramGraphicsCopyCursor
_08013888: .4byte gVramGraphicsCopyQueueIndex
_0801388C: .4byte gGameMode
_08013890:
	movs r3, #3
	ldr r4, _08013A60 @ =gPlayerCharacterIdleAnims
	movs r5, #6
	ldrsh r0, [r4, r5]
	ldrh r1, [r7, #0xa]
	adds r5, r6, #0
	adds r5, #0x54
	str r5, [sp, #0xc]
	ldr r5, _08013A64 @ =gCamera
	cmp r0, r1
	ble _080138C4
	mov r8, r4
_080138A8:
	lsls r0, r3, #0x18
	movs r3, #0xff
	lsls r3, r3, #0x18
	adds r0, r0, r3
	lsrs r3, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _080138C4
	lsls r0, r0, #1
	add r0, r8
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, r1
	bgt _080138A8
_080138C4:
	ldrh r0, [r2]
	ldrh r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	mov r1, ip
	ldrh r0, [r1]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldrh r0, [r2]
	ldrh r1, [r5]
	subs r0, r0, r1
	ldr r2, [sp]
	strh r0, [r2, #6]
	mov r3, ip
	ldrh r0, [r3]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r2, #8]
	ldr r4, [sp, #0xc]
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08013908
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	str r0, [r7, #0x30]
_08013908:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r3, _08013A68 @ =gMultiplayerPlayerTasks
	ldr r2, _08013A6C @ =0x04000128
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #4]
	ldr r0, _08013A70 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08013934
	cmp r0, #5
	bne _080139C6
_08013934:
	ldr r1, _08013A74 @ =sa2__gUnknown_030054B4
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080139C6
	movs r5, #1
	mov sl, r5
	movs r4, #0
	ldr r0, [r3]
	cmp r0, #0
	beq _080139B8
	ldr r0, _08013A78 @ =gMultiplayerConnections
	ldrb r0, [r0]
	mov ip, r0
	movs r0, #0x10
	mov sb, r0
	mov r8, r2
	adds r5, r3, #0
_08013964:
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	str r0, [sp, #0x14]
	mov r2, sb
	lsls r2, r4
	mov r1, ip
	ands r2, r1
	adds r0, r4, #4
	asrs r2, r0
	mov r3, r8
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r1, sb
	lsls r1, r0
	mov r0, ip
	ands r1, r0
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r1, r0
	cmp r2, r1
	bne _080139AA
	ldr r1, [sp, #0x14]
	ldr r2, _08013A7C @ =0x03000054
	adds r0, r1, r2
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080139AA
	movs r3, #0
	mov sl, r3
_080139AA:
	adds r5, #4
	adds r4, #1
	cmp r4, #3
	bhi _080139B8
	ldr r0, [r5]
	cmp r0, #0
	bne _08013964
_080139B8:
	mov r4, sl
	cmp r4, #0
	beq _080139C6
	bl CreateRoomEvent
	movs r1, #7
	strb r1, [r0]
_080139C6:
	ldr r0, _08013A80 @ =gStageFlags
	ldrh r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	ldr r4, _08013A84 @ =gPlayer
	cmp r0, #0
	bne _08013ACC
	ldr r5, [sp, #0xc]
	ldrh r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08013ACC
	ldr r0, [sp, #4]
	adds r0, #0x57
	ldrb r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08013ACC
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08013A02
	b _08013B10
_08013A02:
	adds r0, r6, #0
	adds r0, #0x57
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08013ACC
	ldr r1, [sp, #4]
	ldr r0, [r1, #0x5c]
	ands r0, r3
	cmp r0, #0
	bne _08013ACC
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _08013ACC
	ldr r0, [r4, #0x10]
	ands r0, r2
	cmp r0, #0
	bne _08013ACC
	ldr r0, _08013A70 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08013AAE
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r1, [r0]
	ldr r0, _08013A6C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bne _08013A46
	b _08013BD4
_08013A46:
	ldr r0, _08013A88 @ =gMultiplayerCharacters
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08013A9C
	cmp r0, #1
	bgt _08013A8C
	cmp r0, #0
	beq _08013A96
	b _08013BD4
	.align 2, 0
_08013A60: .4byte gPlayerCharacterIdleAnims
_08013A64: .4byte gCamera
_08013A68: .4byte gMultiplayerPlayerTasks
_08013A6C: .4byte 0x04000128
_08013A70: .4byte gGameMode
_08013A74: .4byte sa2__gUnknown_030054B4
_08013A78: .4byte gMultiplayerConnections
_08013A7C: .4byte 0x03000054
_08013A80: .4byte gStageFlags
_08013A84: .4byte gPlayer
_08013A88: .4byte gMultiplayerCharacters
_08013A8C:
	cmp r0, #2
	beq _08013AA2
	cmp r0, #3
	beq _08013AA8
	b _08013BD4
_08013A96:
	bl sub_8013DF0
	b _08013BD4
_08013A9C:
	bl sub_8014144
	b _08013BD4
_08013AA2:
	bl sub_801473C
	b _08013BD4
_08013AA8:
	bl sub_8014D0C
	b _08013BD4
_08013AAE:
	adds r1, r6, #0
	adds r1, #0x56
	ldr r0, _08013AC8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	ldrb r1, [r1]
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bne _08013AC2
	b _08013BD4
_08013AC2:
	bl sub_80157A8
	b _08013BD4
	.align 2, 0
_08013AC8: .4byte 0x04000128
_08013ACC:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08013B10
	adds r0, r6, #0
	adds r0, #0x57
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08013B10
	movs r5, #0x1c
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bne _08013B10
	ldr r0, [r4, #0x10]
	ands r0, r2
	cmp r0, #0
	bne _08013B10
	ldr r1, _08013B98 @ =sa2__gUnknown_030054B4
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08013BD4
_08013B10:
	ldr r0, _08013B9C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08013BB0
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r1, [r4]
	ldr r0, _08013BA0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r1, r0
	beq _08013B76
	ldr r0, _08013BA4 @ =gMultiplayerCharacters
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bgt _08013B76
	cmp r0, #1
	blt _08013B76
	ldr r1, [r6, #0x5c]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08013B76
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #0x5c]
	ldr r2, _08013BA8 @ =gPlayer
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08013B66
	ldr r0, [r2, #0x10]
	ldr r1, _08013BAC @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
_08013B66:
	bl CreateRoomEvent
	movs r2, #0
	movs r1, #8
	strb r1, [r0]
	ldrb r1, [r4]
	strb r1, [r0, #1]
	strb r2, [r0, #2]
_08013B76:
	ldr r2, _08013BA8 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08013BD4
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _08013BD4
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
	b _08013BCC
	.align 2, 0
_08013B98: .4byte sa2__gUnknown_030054B4
_08013B9C: .4byte gGameMode
_08013BA0: .4byte 0x04000128
_08013BA4: .4byte gMultiplayerCharacters
_08013BA8: .4byte gPlayer
_08013BAC: .4byte 0xFFBFFFFF
_08013BB0:
	ldr r1, [r4, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08013BD4
	ldr r0, [r4, #0x28]
	cmp r0, r7
	bne _08013BD4
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r4, #0x10]
_08013BCC:
	adds r1, r6, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
_08013BD4:
	ldr r0, [sp, #0xc]
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08013C42
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r2, _08013C18 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r2, [sp, #0xc]
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08013C1C
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r3, [sp]
	strh r0, [r3, #2]
	b _08013C24
	.align 2, 0
_08013C18: .4byte sa2__gUnknown_030054B8
_08013C1C:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r4, [sp]
	strh r0, [r4, #2]
_08013C24:
	ldr r5, [sp, #0xc]
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08013C38
	ldr r1, [sp]
	ldrh r0, [r1, #2]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
_08013C38:
	adds r0, r7, #0
	ldr r1, [sp]
	bl TransformSprite
	b _08013C88
_08013C42:
	ldr r2, [r7, #0x10]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r7, #0x10]
	ldr r3, [sp, #0xc]
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08013C60
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	b _08013C64
_08013C60:
	ldr r0, _08013C7C @ =0xFFFFFBFF
	ands r2, r0
_08013C64:
	str r2, [r7, #0x10]
	ldr r4, [sp, #0xc]
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08013C80
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08013C86
	.align 2, 0
_08013C7C: .4byte 0xFFFFFBFF
_08013C80:
	ldr r0, [r7, #0x10]
	ldr r1, _08013DC4 @ =0xFFFFF7FF
	ands r0, r1
_08013C86:
	str r0, [r7, #0x10]
_08013C88:
	ldr r1, [r7, #0x10]
	ldr r0, _08013DC8 @ =0xFFFFCFFF
	ands r1, r0
	str r1, [r7, #0x10]
	ldr r5, [sp, #0xc]
	ldrh r2, [r5]
	movs r0, #0x30
	ands r0, r2
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r7, #0x10]
	ldrh r3, [r5]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _08013CAA
	b _08013DB4
_08013CAA:
	ldr r0, _08013DCC @ =gStageTime
	ldr r0, [r0]
	movs r4, #2
	ands r0, r4
	movs r1, #0x57
	adds r1, r1, r6
	mov sl, r1
	cmp r0, #0
	bne _08013CFE
	ldrb r1, [r1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08013CFE
	ldr r2, [r6, #0x5c]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _08013CFE
	ldr r1, _08013DD0 @ =sa2__gUnknown_030054B4
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08013CFE
	adds r0, r6, #0
	adds r0, #0x60
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013DB4
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	bne _08013DB4
	ands r2, r4
	cmp r2, #0
	bne _08013DB4
_08013CFE:
	ldr r2, [sp, #0xc]
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	cmp r0, #0
	beq _08013D16
	movs r4, #0x88
	lsls r4, r4, #3
	adds r1, r4, #0
_08013D16:
	strh r1, [r7, #0x1a]
	ldr r0, [r7, #0x10]
	ldr r1, _08013DD4 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r7, #0x10]
	mov r5, sl
	ldrb r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08013DAE
	ldr r0, _08013DD8 @ =gGameMode
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #3
	beq _08013D3A
	cmp r1, #5
	bne _08013D6A
_08013D3A:
	ldr r0, _08013DDC @ =gMultiplayerConnections
	ldrb r3, [r0]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r0
	ands r1, r3
	adds r0, #4
	asrs r1, r0
	ldr r4, _08013DE0 @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _08013D74
_08013D6A:
	ldrb r0, [r5]
	cmp r0, #3
	beq _08013DAE
	cmp r0, #5
	beq _08013DAE
_08013D74:
	adds r0, r6, #0
	adds r0, #0x60
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013DAE
	adds r1, r6, #0
	adds r1, #0x56
	ldr r0, _08013DE0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	ldrb r1, [r1]
	lsrs r0, r0, #0x1e
	cmp r1, r0
	beq _08013DAE
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r2, _08013DE4 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08013DE8 @ =gWinRegs
	ldr r0, _08013DEC @ =0x0000083F
	strh r0, [r1, #0xa]
_08013DAE:
	adds r0, r7, #0
	bl DisplaySprite
_08013DB4:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013DC4: .4byte 0xFFFFF7FF
_08013DC8: .4byte 0xFFFFCFFF
_08013DCC: .4byte gStageTime
_08013DD0: .4byte sa2__gUnknown_030054B4
_08013DD4: .4byte 0xFFFFFE7F
_08013DD8: .4byte gGameMode
_08013DDC: .4byte gMultiplayerConnections
_08013DE0: .4byte 0x04000128
_08013DE4: .4byte gDispCnt
_08013DE8: .4byte gWinRegs
_08013DEC: .4byte 0x0000083F

	thumb_func_start sub_8013DF0
sub_8013DF0: @ 0x08013DF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	ldr r2, _08013E94 @ =gPlayer
	ldr r0, [r2, #0x64]
	adds r7, r0, #0
	adds r7, #0xc
	ldr r0, _08013E98 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	mov r8, r6
	ldr r0, [r2, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08013E24
	ldr r0, [r2, #0x28]
	cmp r0, r6
	bne _08013E24
	bl sub_8015024
_08013E24:
	ldr r0, _08013E9C @ =gGameMode
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #3
	beq _08013E32
	cmp r1, #5
	bne _08013E62
_08013E32:
	ldr r0, _08013EA0 @ =gMultiplayerConnections
	ldrb r3, [r0]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r0
	ands r1, r3
	adds r0, #4
	asrs r1, r0
	ldr r4, _08013EA4 @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _08013E6C
_08013E62:
	ldrb r0, [r5]
	cmp r0, #3
	beq _08013EA8
	cmp r0, #5
	beq _08013EA8
_08013E6C:
	bl sub_80152C8
	cmp r0, #0
	bne _08013E76
	b _08014132
_08013E76:
	ldr r0, [r6, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08013E82
	b _08014132
_08013E82:
	ldr r2, _08013E94 @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r6, #0x4c]
	b _08014132
	.align 2, 0
_08013E94: .4byte gPlayer
_08013E98: .4byte gCurTask
_08013E9C: .4byte gGameMode
_08013EA0: .4byte gMultiplayerConnections
_08013EA4: .4byte 0x04000128
_08013EA8:
	adds r1, r6, #0
	adds r1, #0x60
	ldrb r0, [r1]
	adds r4, r0, #0
	mov sb, r1
	cmp r4, #0
	beq _08013EB8
	b _080140CA
_08013EB8:
	bl sub_80151AC
	cmp r0, #0
	beq _08013F6E
	ldr r0, [r6, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08013ED8
	ldr r0, _08013F30 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x10]
	str r4, [r6, #0x4c]
_08013ED8:
	mov r1, r8
	ldrh r0, [r1, #0xa]
	cmp r0, #0x12
	beq _08013EE2
	b _08014132
_08013EE2:
	ldr r2, _08013F30 @ =gPlayer
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #4
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3d
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08013F12
	ldr r0, [r2, #0x28]
	cmp r0, r8
	bne _08013F12
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_08013F12:
	ldr r0, _08013F34 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08013F38
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x52
	movs r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	ble _08013F4A
	b _08014084
	.align 2, 0
_08013F30: .4byte gPlayer
_08013F34: .4byte gStageFlags
_08013F38:
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x52
	movs r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	bge _08013F4A
	b _08014084
_08013F4A:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08013F5A
	b _080140AE
_08013F5A:
	ldr r0, [r2, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x1f
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #4
	b _080140BE
_08013F6E:
	ldr r0, [r7, #0x30]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08013F82
	mov r3, r8
	ldr r0, [r3, #0x30]
	cmp r0, r1
	beq _08013F82
	b _08014132
_08013F82:
	ldr r7, _0801406C @ =gPlayer
	adds r0, r7, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08013FA4
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08013FA4
	b _08014132
_08013FA4:
	adds r0, r6, #0
	adds r0, #0x50
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r5, r6, #0
	adds r5, #0x52
	movs r0, #0
	ldrsh r2, [r5, r0]
	adds r0, r6, #0
	adds r0, #0x66
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, r8
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r6, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08013FF6
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08013FF6
	ldr r0, [r7, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r7, #0x10]
_08013FF6:
	str r2, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _08014008
	movs r0, #0x1e
	mov r1, sb
	strb r0, [r1]
_08014008:
	ldr r0, _08014070 @ =0x00010028
	ands r0, r2
	cmp r0, #0
	bne _08014012
	b _08014132
_08014012:
	mov r2, r8
	ldrh r0, [r2, #0xa]
	cmp r0, #0x12
	beq _0801401C
	b _08014132
_0801401C:
	ldr r3, _0801406C @ =gPlayer
	adds r1, r3, #0
	adds r1, #0x40
	movs r2, #0
	movs r0, #4
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3d
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	ldr r1, [r3, #0x10]
	movs r0, #8
	ands r0, r1
	adds r2, r3, #0
	cmp r0, #0
	beq _08014050
	ldr r0, [r2, #0x28]
	cmp r0, r8
	bne _08014050
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_08014050:
	ldr r0, _08014074 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08014078
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	movs r3, #0
	ldrsh r1, [r5, r3]
	cmp r0, r1
	ble _0801408C
	b _08014084
	.align 2, 0
_0801406C: .4byte gPlayer
_08014070: .4byte 0x00010028
_08014074: .4byte gStageFlags
_08014078:
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	movs r3, #0
	ldrsh r1, [r5, r3]
	cmp r0, r1
	bge _0801408C
_08014084:
	movs r0, #0x1e
	mov r4, sb
	strb r0, [r4]
	b _08014132
_0801408C:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080140AE
	ldr r0, [r2, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x1f
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #4
	b _080140BE
_080140AE:
	ldr r0, [r2, #0x10]
	movs r1, #1
	orrs r0, r1
	subs r1, #0x22
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xf4
	lsls r0, r0, #8
_080140BE:
	strh r0, [r2, #0xc]
	strh r0, [r2, #8]
	movs r0, #0x1e
	mov r2, sb
	strb r0, [r2]
	b _08014132
_080140CA:
	subs r0, #1
	strb r0, [r1]
	ldr r5, _08014140 @ =gPlayer
	ldr r0, [r5, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08014132
	ldr r0, [r5, #0x28]
	cmp r0, r8
	bne _08014132
	adds r0, r6, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, #2
	movs r4, #0
	ldrsh r2, [r0, r4]
	adds r0, #0x14
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	mov r0, r8
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r6, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08014130
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08014130
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
_08014130:
	str r2, [r6, #0x4c]
_08014132:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014140: .4byte gPlayer

	thumb_func_start sub_8014144
sub_8014144: @ 0x08014144
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _080141F8 @ =gPlayer
	ldr r0, [r2, #0x64]
	adds r0, #0xc
	mov r8, r0
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r0, _080141FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	str r7, [sp, #0x10]
	ldr r1, [r2, #0x10]
	lsrs r3, r1, #5
	movs r0, #1
	ands r3, r0
	str r3, [sp, #0x18]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _0801418A
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _0801418A
	bl sub_8015024
	movs r4, #1
	str r4, [sp, #0x14]
_0801418A:
	ldr r0, _08014200 @ =gGameMode
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #3
	beq _08014198
	cmp r1, #5
	bne _080141C8
_08014198:
	ldr r0, _08014204 @ =gMultiplayerConnections
	ldrb r3, [r0]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r0
	ands r1, r3
	adds r0, #4
	asrs r1, r0
	ldr r4, _08014208 @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _080141D2
_080141C8:
	ldrb r0, [r5]
	cmp r0, #3
	beq _0801420C
	cmp r0, #5
	beq _0801420C
_080141D2:
	bl sub_80152C8
	cmp r0, #0
	bne _080141DC
	b _0801472A
_080141DC:
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080141E8
	b _0801472A
_080141E8:
	ldr r2, _080141F8 @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r7, #0x4c]
	b _0801472A
	.align 2, 0
_080141F8: .4byte gPlayer
_080141FC: .4byte gCurTask
_08014200: .4byte gGameMode
_08014204: .4byte gMultiplayerConnections
_08014208: .4byte 0x04000128
_0801420C:
	ldr r6, _08014278 @ =gPlayer
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0801422C
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0801422C
	b _0801472A
_0801422C:
	adds r1, r7, #0
	adds r1, #0x60
	ldrb r2, [r1]
	str r1, [sp, #0x24]
	cmp r2, #0
	beq _08014244
	ldr r5, [r7, #0x5c]
	movs r0, #4
	ands r5, r0
	cmp r5, #0
	bne _08014244
	b _080146C4
_08014244:
	movs r4, #0
	strb r4, [r1]
	ldr r5, [sp, #0x10]
	ldrh r0, [r5, #0xa]
	subs r0, #0x9b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _080142A0
	bl sub_80151AC
	cmp r0, #0
	beq _0801427C
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0801426A
	b _0801472A
_0801426A:
	ldr r0, [r6, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r6, #0x10]
	str r4, [r7, #0x4c]
	b _0801472A
	.align 2, 0
_08014278: .4byte gPlayer
_0801427C:
	ldr r1, [sp, #0x10]
	ldrh r0, [r1, #0xa]
	subs r0, #0x9b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _080142A0
	mov r2, r8
	ldr r0, [r2, #0x30]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080142A0
	ldr r3, [sp, #0x10]
	ldr r0, [r3, #0x30]
	cmp r0, r1
	beq _080142A0
	b _0801472A
_080142A0:
	ldr r4, _0801439C @ =gPlayer
	mov sl, r4
	ldr r0, [r4, #0x10]
	lsrs r0, r0, #1
	mov sb, r0
	movs r4, #1
	mov r5, sb
	ands r5, r4
	mov sb, r5
	movs r0, #0x50
	adds r0, r0, r7
	mov r8, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r6, r7, #0
	adds r6, #0x52
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r0, r7, #0
	adds r0, #0x66
	movs r5, #0
	ldrsh r3, [r0, r5]
	adds r0, #2
	movs r5, #0
	ldrsh r0, [r0, r5]
	str r0, [sp]
	adds r5, r7, #0
	adds r5, #0x54
	ldrh r0, [r5]
	lsrs r0, r0, #7
	ands r0, r4
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [sp, #0x10]
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	mov r3, r8
	str r3, [sp, #0x1c]
	str r5, [sp, #0x20]
	cmp r0, #0
	beq _0801430C
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0801430C
	mov r4, sl
	ldr r0, [r4, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r4, #0x10]
_0801430C:
	str r2, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _0801431E
	movs r0, #0x1e
	ldr r5, [sp, #0x24]
	strb r0, [r5]
_0801431E:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801432A
	b _0801445E
_0801432A:
	mov r0, sb
	cmp r0, #0
	bne _08014338
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _08014338
	b _08014452
_08014338:
	ldr r0, _080143A0 @ =0x00010028
	ands r0, r2
	cmp r0, #0
	bne _08014342
	b _08014452
_08014342:
	ldr r2, [sp, #0x10]
	ldrh r0, [r2, #0xa]
	subs r0, #0x9b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08014352
	b _08014452
_08014352:
	ldr r0, _080143A4 @ =gStageFlags
	ldrh r3, [r0]
	lsrs r2, r3, #7
	movs r1, #1
	ands r2, r1
	ldr r4, [sp, #0x20]
	ldrh r0, [r4]
	lsrs r0, r0, #3
	bics r1, r0
	cmp r2, r1
	beq _08014452
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _080143AC
	ldr r2, _0801439C @ =gPlayer
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	movs r5, #0
	ldrsh r1, [r6, r5]
	cmp r1, r0
	bge _08014380
	adds r1, r0, #0
_08014380:
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	adds r0, r1, r0
	ldr r1, [r2]
	asrs r1, r1, #8
	adds r2, #0x27
	ldrb r2, [r2]
	add r3, sp, #0xc
	str r3, [sp]
	ldr r3, _080143A8 @ =sa2__sub_801EE64
	str r3, [sp, #4]
	movs r3, #8
	b _080143D6
	.align 2, 0
_0801439C: .4byte gPlayer
_080143A0: .4byte 0x00010028
_080143A4: .4byte gStageFlags
_080143A8: .4byte sa2__sub_801EE64
_080143AC:
	ldr r2, _08014438 @ =gPlayer
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	movs r4, #0
	ldrsh r1, [r6, r4]
	cmp r1, r0
	ble _080143BC
	adds r1, r0, #0
_080143BC:
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	subs r0, r1, r0
	ldr r1, [r2]
	asrs r1, r1, #8
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	add r5, sp, #0xc
	str r5, [sp]
	ldr r4, _0801443C @ =sa2__sub_801EE64
	str r4, [sp, #4]
_080143D6:
	bl sa2__sub_801E4E4
	adds r1, r0, #0
	ldr r4, _08014438 @ =gPlayer
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	subs r0, r1, r0
	cmp r0, #0
	ble _08014452
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r7, #0x5c]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x5c]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	bl CreateRoomEvent
	movs r1, #8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r1, [r1]
	strb r1, [r0, #1]
	movs r1, #1
	strb r1, [r0, #2]
	ldr r0, _08014440 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08014448
	ldr r0, [r7, #0x5c]
	ldr r1, _08014444 @ =0xFFFFFEFF
	ands r0, r1
	b _08014450
	.align 2, 0
_08014438: .4byte gPlayer
_0801443C: .4byte sa2__sub_801EE64
_08014440: .4byte gStageFlags
_08014444: .4byte 0xFFFFFEFF
_08014448:
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
_08014450:
	str r0, [r7, #0x5c]
_08014452:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801445E
	b _0801472A
_0801445E:
	ldr r0, _080144A0 @ =gPlayer
	mov r8, r0
	mov r1, r8
	adds r1, #0x40
	movs r2, #0
	movs r0, #0x26
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r3, #2
	mov sb, r3
	orrs r0, r3
	str r0, [r1, #0x10]
	mov r0, r8
	adds r0, #0x3d
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	mov r0, r8
	bl sub_8044250
	cmp r0, #0
	beq _080144A8
	movs r0, #0x1e
	ldr r4, [sp, #0x24]
	strb r0, [r4]
	mov r5, r8
	ldr r0, [r5, #0x10]
	ldr r1, _080144A4 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08014568
	.align 2, 0
_080144A0: .4byte gPlayer
_080144A4: .4byte 0xFFBFFFFF
_080144A8:
	ldr r1, [sp, #0x10]
	ldrh r0, [r1, #0xa]
	subs r0, #0x9b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _080144FA
	mov r2, r8
	ldr r0, [r2]
	asrs r1, r0, #8
	ldr r2, _08014544 @ =gCamera
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	cmp r1, r0
	ble _080144FA
	movs r4, #0x1a
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bge _080144FA
	ldr r0, _08014548 @ =gStageFlags
	ldrh r5, [r0]
	lsrs r0, r5, #7
	movs r4, #1
	adds r2, r4, #0
	bics r2, r0
	ldr r0, [sp, #0x20]
	ldrh r1, [r0]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bics r0, r1
	cmp r2, r0
	bne _080144FA
	ldr r3, [r7, #0x5c]
	lsrs r1, r3, #8
	adds r0, r4, #0
	bics r0, r1
	cmp r0, r2
	bne _080144FA
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _08014554
_080144FA:
	ldr r4, _0801454C @ =gPlayer
	ldr r0, [r4, #0x10]
	ldr r1, _08014550 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r7, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x5c]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08014548 @ =gStageFlags
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r3, #1
	adds r2, r3, #0
	bics r2, r0
	ldr r5, [sp, #0x20]
	ldrh r1, [r5]
	lsrs r1, r1, #3
	adds r0, r3, #0
	bics r0, r1
	cmp r2, r0
	bne _0801453E
	ldr r1, [r7, #0x5c]
	lsrs r1, r1, #8
	adds r0, r3, #0
	bics r0, r1
	cmp r0, r2
	bne _0801453E
	b _08014670
_0801453E:
	movs r0, #0x3c
	strh r0, [r4, #0x1c]
	b _08014670
	.align 2, 0
_08014544: .4byte gCamera
_08014548: .4byte gStageFlags
_0801454C: .4byte gPlayer
_08014550: .4byte 0xFFBFFFFF
_08014554:
	mov r0, r8
	ldr r1, [r0, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08014578
	ldr r0, _08014574 @ =0xFFBFFFFF
	ands r1, r0
	mov r2, r8
	str r1, [r2, #0x10]
_08014568:
	ldr r0, [r7, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x5c]
	b _08014670
	.align 2, 0
_08014574: .4byte 0xFFBFFFFF
_08014578:
	movs r0, #0x80
	ands r0, r5
	movs r1, #4
	orrs r3, r1
	str r3, [r7, #0x5c]
	ldr r3, [sp, #0x1c]
	movs r4, #0
	ldrsh r1, [r3, r4]
	lsls r5, r1, #8
	cmp r0, #0
	bne _080145E8
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r1, [sp, #0x10]
	adds r1, #0x2f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r0, #0x11
	lsls r6, r0, #8
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r1, [r2]
	asrs r1, r1, #8
	adds r2, #0x27
	ldrb r2, [r2]
	add r3, sp, #0xc
	str r3, [sp]
	ldr r3, _080145E0 @ =sa2__sub_801EE64
	str r3, [sp, #4]
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r1, r0, #0
	cmp r1, #0
	bge _08014646
	lsls r0, r1, #8
	adds r6, r6, r0
	mov r4, r8
	ldr r0, [r4, #0x10]
	ldr r1, _080145E4 @ =0xFFBFFFFF
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0801463C
	.align 2, 0
_080145E0: .4byte sa2__sub_801EE64
_080145E4: .4byte 0xFFBFFFFF
_080145E8:
	movs r2, #0
	ldrsh r0, [r6, r2]
	ldr r1, [sp, #0x10]
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	subs r0, #0x11
	lsls r6, r0, #8
	mov r3, r8
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r3, r1]
	subs r0, r0, r1
	ldr r1, [r3]
	asrs r1, r1, #8
	mov r2, r8
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	add r4, sp, #0xc
	str r4, [sp]
	ldr r4, _080146A4 @ =sa2__sub_801EE64
	str r4, [sp, #4]
	bl sa2__sub_801E4E4
	adds r1, r0, #0
	cmp r1, #0
	bge _08014646
	lsls r0, r1, #8
	subs r6, r6, r0
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _080146A8 @ =0xFFBFFFFF
	ands r0, r1
	mov r2, sb
	orrs r0, r2
	mov r3, r8
	str r0, [r3, #0x10]
_0801463C:
	ldr r0, [r7, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x5c]
_08014646:
	ldr r0, _080146AC @ =gPlayer
	str r5, [r0]
	str r6, [r0, #4]
	ldr r1, [r7, #0x5c]
	movs r2, #4
	ands r1, r2
	adds r3, r0, #0
	cmp r1, #0
	beq _0801467A
	movs r2, #0
	strh r2, [r3, #8]
	ldr r0, _080146B0 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	strh r2, [r3, #0xa]
	ldr r0, [r3, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
_08014670:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801468E
_0801467A:
	bl CreateRoomEvent
	movs r2, #0
	movs r1, #8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r1, [r1]
	strb r1, [r0, #1]
	strb r2, [r0, #2]
_0801468E:
	ldr r0, _080146B0 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080146B8
	ldr r0, [r7, #0x5c]
	ldr r1, _080146B4 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r7, #0x5c]
	b _0801472A
	.align 2, 0
_080146A4: .4byte sa2__sub_801EE64
_080146A8: .4byte 0xFFBFFFFF
_080146AC: .4byte gPlayer
_080146B0: .4byte gStageFlags
_080146B4: .4byte 0xFFFFFEFF
_080146B8:
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r7, #0x5c]
	b _0801472A
_080146C4:
	subs r0, r2, #1
	strb r0, [r1]
	ldr r0, [r6, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0801472A
	ldr r0, [r6, #0x28]
	ldr r4, [sp, #0x10]
	cmp r0, r4
	bne _0801472A
	adds r0, r7, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, #0x14
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [sp, #0x10]
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08014728
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08014728
	ldr r0, [r6, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r6, #0x10]
_08014728:
	str r2, [r7, #0x4c]
_0801472A:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801473C
sub_801473C: @ 0x0801473C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r2, _080147EC @ =gPlayer
	ldr r0, [r2, #0x64]
	adds r0, #0xc
	mov r8, r0
	ldr r0, _080147F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov sb, r7
	ldr r1, [r2, #0x10]
	lsrs r0, r1, #5
	str r0, [sp, #0x14]
	movs r0, #1
	ldr r3, [sp, #0x14]
	ands r3, r0
	str r3, [sp, #0x14]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _0801477E
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _0801477E
	bl sub_8015024
_0801477E:
	ldr r0, _080147F4 @ =gGameMode
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #3
	beq _0801478C
	cmp r1, #5
	bne _080147BC
_0801478C:
	ldr r0, _080147F8 @ =gMultiplayerConnections
	ldrb r3, [r0]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r0
	ands r1, r3
	adds r0, #4
	asrs r1, r0
	ldr r4, _080147FC @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _080147C6
_080147BC:
	ldrb r0, [r5]
	cmp r0, #3
	beq _08014800
	cmp r0, #5
	beq _08014800
_080147C6:
	bl sub_80152C8
	cmp r0, #0
	bne _080147D0
	b _08014CFC
_080147D0:
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080147DC
	b _08014CFC
_080147DC:
	ldr r2, _080147EC @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r7, #0x4c]
	b _08014CFC
	.align 2, 0
_080147EC: .4byte gPlayer
_080147F0: .4byte gCurTask
_080147F4: .4byte gGameMode
_080147F8: .4byte gMultiplayerConnections
_080147FC: .4byte 0x04000128
_08014800:
	ldr r6, _08014870 @ =gPlayer
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08014820
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08014820
	b _08014CFC
_08014820:
	adds r1, r7, #0
	adds r1, #0x60
	ldrb r2, [r1]
	str r1, [sp, #0x20]
	cmp r2, #0
	beq _08014838
	ldr r5, [r7, #0x5c]
	movs r0, #4
	ands r5, r0
	cmp r5, #0
	bne _08014838
	b _08014C98
_08014838:
	movs r5, #0
	strb r5, [r1]
	ldr r0, _08014874 @ =0xFFFFFEFC
	adds r4, r0, #0
	mov r1, sb
	ldrh r1, [r1, #0xa]
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0801489C
	bl sub_80151AC
	cmp r0, #0
	beq _08014878
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08014862
	b _08014CFC
_08014862:
	ldr r0, [r6, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r6, #0x10]
	str r5, [r7, #0x4c]
	b _08014CFC
	.align 2, 0
_08014870: .4byte gPlayer
_08014874: .4byte 0xFFFFFEFC
_08014878:
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0801489C
	mov r3, r8
	ldr r0, [r3, #0x30]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0801489C
	mov r4, sb
	ldr r0, [r4, #0x30]
	cmp r0, r1
	beq _0801489C
	b _08014CFC
_0801489C:
	ldr r0, _080149A8 @ =gPlayer
	mov sl, r0
	ldrb r4, [r0, #0xe]
	rsbs r0, r4, #0
	add r1, sp, #0x10
	strb r0, [r1]
	mov r2, sl
	ldrb r3, [r2, #0xf]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #0x11
	strb r2, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	add r0, sp, #0xc
	movs r2, #4
	bl memcpy
	movs r3, #0x50
	adds r3, r3, r7
	mov r8, r3
	movs r4, #0
	ldrsh r1, [r3, r4]
	adds r6, r7, #0
	adds r6, #0x52
	movs r0, #0
	ldrsh r2, [r6, r0]
	adds r0, r7, #0
	adds r0, #0x66
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	adds r5, r7, #0
	adds r5, #0x54
	ldrh r0, [r5]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, sb
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	mov r3, r8
	str r3, [sp, #0x18]
	str r6, [sp, #0x1c]
	mov r8, r5
	cmp r0, #0
	beq _08014922
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08014922
	mov r4, sl
	ldr r0, [r4, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r4, #0x10]
_08014922:
	str r2, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _08014934
	movs r0, #0x1e
	ldr r1, [sp, #0x20]
	strb r0, [r1]
_08014934:
	ldr r2, [sp, #0x18]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x1c]
	movs r0, #0
	ldrsh r2, [r4, r0]
	ldr r5, _080149A8 @ =gPlayer
	add r3, sp, #0xc
	str r3, [sp]
	mov r0, sb
	adds r3, r5, #0
	bl CheckRectCollision_SpritePlayer
	cmp r0, #0
	bne _08014954
	b _08014A6A
_08014954:
	mov r4, r8
	ldrh r0, [r4]
	lsls r2, r0, #0x10
	lsrs r0, r2, #0x17
	movs r4, #1
	ands r0, r4
	adds r1, r5, #0
	adds r1, #0x27
	ldrb r1, [r1]
	cmp r0, r1
	beq _0801496C
	b _08014A6A
_0801496C:
	ldr r1, _080149AC @ =0xFFFFFEFC
	adds r0, r1, #0
	mov r3, sb
	ldrh r3, [r3, #0xa]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08014A6A
	ldr r0, _080149B0 @ =gStageFlags
	ldrh r3, [r0]
	lsrs r1, r3, #7
	ands r1, r4
	lsrs r2, r2, #0x13
	adds r0, r4, #0
	bics r0, r2
	cmp r1, r0
	beq _08014A6A
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _080149B4
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r4, [sp, #0x1c]
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bgt _080149C2
	b _08014A6A
	.align 2, 0
_080149A8: .4byte gPlayer
_080149AC: .4byte 0xFFFFFEFC
_080149B0: .4byte gStageFlags
_080149B4:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r3, [sp, #0x1c]
	movs r4, #0
	ldrsh r1, [r3, r4]
	cmp r0, r1
	bge _08014A6A
_080149C2:
	ldr r4, _08014A10 @ =gPlayer
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #0xc]
	strh r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x40
	strb r1, [r0]
	subs r0, #3
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08014A14
	ldr r0, [r2, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	b _08014A1C
	.align 2, 0
_08014A10: .4byte gPlayer
_08014A14:
	ldr r0, [r4, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x10]
_08014A1C:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08014A62
	bl CreateRoomEvent
	movs r1, #8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r1, [r1]
	strb r1, [r0, #1]
	movs r1, #1
	strb r1, [r0, #2]
	ldr r0, _08014A50 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08014A58
	ldr r0, [r7, #0x5c]
	ldr r1, _08014A54 @ =0xFFFFFEFF
	ands r0, r1
	b _08014A60
	.align 2, 0
_08014A50: .4byte gStageFlags
_08014A54: .4byte 0xFFFFFEFF
_08014A58:
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
_08014A60:
	str r0, [r7, #0x5c]
_08014A62:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x5c]
_08014A6A:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08014A76
	b _08014CFC
_08014A76:
	ldr r6, _08014A98 @ =gPlayer
	adds r0, r6, #0
	bl sub_8044250
	cmp r0, #0
	beq _08014AA0
	movs r0, #0x1e
	ldr r2, [sp, #0x20]
	strb r0, [r2]
	ldr r0, [r6, #0x10]
	ldr r1, _08014A9C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r7, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	b _08014C7C
	.align 2, 0
_08014A98: .4byte gPlayer
_08014A9C: .4byte 0xFFBFFFFF
_08014AA0:
	ldr r3, _08014B3C @ =0xFFFFFEFC
	adds r0, r3, #0
	mov r4, sb
	ldrh r4, [r4, #0xa]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _08014B40 @ =gStageFlags
	cmp r0, #2
	bhi _08014AF4
	ldr r0, [r6]
	asrs r1, r0, #8
	ldr r2, _08014B44 @ =gCamera
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	cmp r1, r0
	ble _08014AF4
	movs r4, #0x1a
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bge _08014AF4
	ldrh r4, [r5]
	lsrs r0, r4, #7
	movs r3, #1
	adds r2, r3, #0
	bics r2, r0
	mov r1, r8
	ldrh r0, [r1]
	lsrs r0, r0, #3
	adds r1, r3, #0
	bics r1, r0
	cmp r2, r1
	bne _08014AF4
	ldr r1, [r7, #0x5c]
	lsrs r1, r1, #8
	adds r0, r3, #0
	bics r0, r1
	cmp r0, r2
	bne _08014AF4
	ldr r2, [sp, #0x14]
	cmp r2, #0
	beq _08014B50
_08014AF4:
	ldr r2, _08014B48 @ =gPlayer
	ldr r0, [r2, #0x10]
	ldr r1, _08014B4C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r7, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x5c]
	adds r2, #0x40
	movs r0, #0
	strb r0, [r2]
	ldrh r0, [r5]
	lsrs r0, r0, #7
	movs r3, #1
	adds r2, r3, #0
	bics r2, r0
	mov r4, r8
	ldrh r1, [r4]
	lsrs r1, r1, #3
	adds r0, r3, #0
	bics r0, r1
	cmp r2, r0
	bne _08014B34
	ldr r1, [r7, #0x5c]
	lsrs r1, r1, #8
	adds r0, r3, #0
	bics r0, r1
	cmp r0, r2
	bne _08014B34
	b _08014CFC
_08014B34:
	movs r0, #0x1e
	ldr r1, [sp, #0x20]
	strb r0, [r1]
	b _08014CFC
	.align 2, 0
_08014B3C: .4byte 0xFFFFFEFC
_08014B40: .4byte gStageFlags
_08014B44: .4byte gCamera
_08014B48: .4byte gPlayer
_08014B4C: .4byte 0xFFBFFFFF
_08014B50:
	movs r2, #0xf
	ldrsb r2, [r6, r2]
	movs r0, #0x80
	ands r0, r4
	ldr r3, [sp, #0x18]
	movs r4, #0
	ldrsh r1, [r3, r4]
	lsls r1, r1, #8
	mov r8, r1
	cmp r0, #0
	bne _08014BAC
	ldr r1, [sp, #0x1c]
	movs r3, #0
	ldrsh r0, [r1, r3]
	mov r1, sb
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	add r1, sp, #0xc
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	lsls r5, r0, #8
	subs r0, r0, r2
	mov r4, r8
	asrs r1, r4, #8
	adds r2, r6, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	ldr r4, _08014BA8 @ =sa2__sub_801EC3C
	str r4, [sp]
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08014BFC
	lsls r0, r0, #8
	subs r5, r5, r0
	b _08014BE8
	.align 2, 0
_08014BA8: .4byte sa2__sub_801EC3C
_08014BAC:
	ldr r1, [sp, #0x1c]
	movs r3, #0
	ldrsh r0, [r1, r3]
	mov r1, sb
	adds r1, #0x2f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	add r1, sp, #0xc
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	lsls r5, r0, #8
	adds r0, r0, r2
	mov r4, r8
	asrs r1, r4, #8
	adds r2, r6, #0
	adds r2, #0x27
	ldrb r2, [r2]
	ldr r3, _08014C3C @ =sa2__sub_801EC3C
	str r3, [sp]
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08014BFC
	lsls r0, r0, #8
	adds r5, r5, r0
_08014BE8:
	ldr r0, [r6, #0x10]
	ldr r1, _08014C40 @ =0xFFBFFFFF
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r7, #0x5c]
	subs r1, #7
	ands r0, r1
	str r0, [r7, #0x5c]
_08014BFC:
	ldr r3, _08014C44 @ =gPlayer
	mov r0, r8
	str r0, [r3]
	str r5, [r3, #4]
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08014C58
	ldr r2, [r3, #0x10]
	movs r0, #8
	orrs r2, r0
	subs r0, #0xd
	ands r2, r0
	adds r0, #2
	ands r2, r0
	str r2, [r3, #0x10]
	mov r1, sb
	str r1, [r3, #0x28]
	movs r0, #0
	strh r0, [r3, #0xa]
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08014C48
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	b _08014C4C
	.align 2, 0
_08014C3C: .4byte sa2__sub_801EC3C
_08014C40: .4byte 0xFFBFFFFF
_08014C44: .4byte gPlayer
_08014C48:
	movs r0, #1
	orrs r2, r0
_08014C4C:
	str r2, [r3, #0x10]
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08014C6C
_08014C58:
	bl CreateRoomEvent
	movs r2, #0
	movs r1, #8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r1, [r1]
	strb r1, [r0, #1]
	strb r2, [r0, #2]
_08014C6C:
	ldr r0, _08014C84 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08014C8C
	ldr r0, [r7, #0x5c]
	ldr r1, _08014C88 @ =0xFFFFFEFF
_08014C7C:
	ands r0, r1
	str r0, [r7, #0x5c]
	b _08014CFC
	.align 2, 0
_08014C84: .4byte gStageFlags
_08014C88: .4byte 0xFFFFFEFF
_08014C8C:
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r7, #0x5c]
	b _08014CFC
_08014C98:
	subs r0, r2, #1
	strb r0, [r1]
	ldr r0, [r6, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08014CFC
	ldr r0, [r6, #0x28]
	cmp r0, sb
	bne _08014CFC
	adds r0, r7, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, #0x14
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, sb
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08014CFA
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08014CFA
	ldr r0, [r6, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r6, #0x10]
_08014CFA:
	str r2, [r7, #0x4c]
_08014CFC:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8014D0C
sub_8014D0C: @ 0x08014D0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08014DAC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	str r7, [sp, #0xc]
	ldr r2, _08014DB0 @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08014D3C
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _08014D3C
	bl sub_8015024
_08014D3C:
	ldr r0, _08014DB4 @ =gGameMode
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #3
	beq _08014D4A
	cmp r1, #5
	bne _08014D7A
_08014D4A:
	ldr r0, _08014DB8 @ =gMultiplayerConnections
	ldrb r3, [r0]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r0
	ands r1, r3
	adds r0, #4
	asrs r1, r0
	ldr r4, _08014DBC @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _08014D84
_08014D7A:
	ldrb r0, [r5]
	cmp r0, #3
	beq _08014DC0
	cmp r0, #5
	beq _08014DC0
_08014D84:
	bl sub_80152C8
	cmp r0, #0
	bne _08014D8E
	b _0801500E
_08014D8E:
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08014D9A
	b _0801500E
_08014D9A:
	ldr r2, _08014DB0 @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r7, #0x4c]
	b _0801500E
	.align 2, 0
_08014DAC: .4byte gCurTask
_08014DB0: .4byte gPlayer
_08014DB4: .4byte gGameMode
_08014DB8: .4byte gMultiplayerConnections
_08014DBC: .4byte 0x04000128
_08014DC0:
	adds r1, r7, #0
	adds r1, #0x60
	ldrb r0, [r1]
	str r1, [sp, #0x14]
	cmp r0, #0
	beq _08014DCE
	b _08014FA4
_08014DCE:
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08014E30
	ldr r5, _08014E2C @ =gPlayer
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08014DFC
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08014DFC
	b _0801500E
_08014DFC:
	adds r0, r7, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, #0x14
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r6, #0
	ldrsh r0, [r0, r6]
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	str r4, [sp, #8]
	b _08014FEA
	.align 2, 0
_08014E2C: .4byte gPlayer
_08014E30:
	ldr r0, _08014EC4 @ =gPlayer
	str r0, [sp, #0x10]
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08014E52
	ldr r0, [sp, #0x10]
	adds r0, #0x59
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08014E52
	b _0801500E
_08014E52:
	movs r1, #0x50
	adds r1, r1, r7
	mov sl, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r3, #0x52
	adds r3, r3, r7
	mov sb, r3
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r5, #0x66
	adds r5, r5, r7
	mov r8, r5
	movs r6, #0
	ldrsh r3, [r5, r6]
	adds r6, r7, #0
	adds r6, #0x68
	movs r4, #0
	ldrsh r0, [r6, r4]
	str r0, [sp]
	adds r5, r7, #0
	adds r5, #0x54
	ldrh r0, [r5]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	bl sub_800A3A8
	adds r3, r0, #0
	movs r1, #2
	ands r0, r1
	mov r2, sl
	mov sl, r6
	mov ip, r5
	cmp r0, #0
	beq _08014EE4
	ldr r5, [sp, #0x10]
	ldr r0, [r5, #0x10]
	ands r0, r1
	cmp r0, #0
	bne _08014EE4
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	bne _08014EE4
	ldr r6, [sp, #0xc]
	ldrh r1, [r6, #0xa]
	movs r0, #0xae
	lsls r0, r0, #1
	cmp r1, r0
	bne _08014ECC
	ldr r0, _08014EC8 @ =0xFFFFF880
	bl sub_8015754
	b _08014F46
	.align 2, 0
_08014EC4: .4byte gPlayer
_08014EC8: .4byte 0xFFFFF880
_08014ECC:
	ldr r0, _08014EDC @ =0x00000161
	cmp r1, r0
	bne _08014EE4
	ldr r0, _08014EE0 @ =0xFFFFF580
	bl sub_8015754
	b _08014F46
	.align 2, 0
_08014EDC: .4byte 0x00000161
_08014EE0: .4byte 0xFFFFF580
_08014EE4:
	movs r4, #1
	adds r0, r3, #0
	ands r0, r4
	cmp r0, #0
	beq _08014F54
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _08014F0C
	ldr r1, _08014F08 @ =gPlayer
	ldrh r2, [r1, #8]
	movs r4, #8
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _08014F2C
	b _08014F22
	.align 2, 0
_08014F08: .4byte gPlayer
_08014F0C:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _08014F2C
	ldr r1, _08014F50 @ =gPlayer
	ldrh r2, [r1, #8]
	movs r5, #8
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _08014F2C
_08014F22:
	rsbs r0, r2, #0
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xc]
	rsbs r0, r0, #0
	strh r0, [r1, #0xc]
_08014F2C:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r3
	cmp r0, #0
	beq _08014F46
	ldr r1, _08014F50 @ =gPlayer
	ldrh r2, [r1, #0xa]
	movs r6, #0xa
	ldrsh r0, [r1, r6]
	cmp r0, #0
	ble _08014F46
	rsbs r0, r2, #0
	strh r0, [r1, #0xa]
_08014F46:
	movs r0, #0x1e
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	b _0801500E
	.align 2, 0
_08014F50: .4byte gPlayer
_08014F54:
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r5, sb
	movs r6, #0
	ldrsh r2, [r5, r6]
	mov r0, r8
	movs r5, #0
	ldrsh r3, [r0, r5]
	mov r6, sl
	movs r5, #0
	ldrsh r0, [r6, r5]
	str r0, [sp]
	mov r6, ip
	ldrh r0, [r6]
	lsrs r0, r0, #7
	ands r0, r4
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_80097E4
	adds r3, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801500C
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0801500C
	ldr r0, _08014FA0 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x10]
	b _0801500C
	.align 2, 0
_08014FA0: .4byte gPlayer
_08014FA4:
	subs r0, #1
	strb r0, [r1]
	ldr r5, _08015020 @ =gPlayer
	ldr r0, [r5, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0801500E
	ldr r0, [r5, #0x28]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bne _0801500E
	adds r0, r7, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, #0x14
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r6, #0
	ldrsh r0, [r0, r6]
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
_08014FEA:
	ldr r0, [sp, #0xc]
	bl sub_80097E4
	adds r3, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801500C
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0801500C
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
_0801500C:
	str r3, [r7, #0x4c]
_0801500E:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015020: .4byte gPlayer

	thumb_func_start sub_8015024
sub_8015024: @ 0x08015024
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08015068 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6, #0x44]
	cmp r0, #0
	bge _0801503C
	rsbs r0, r0, #0
_0801503C:
	cmp r0, #0x80
	bgt _0801504C
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _08015048
	rsbs r0, r0, #0
_08015048:
	cmp r0, #0x80
	ble _08015070
_0801504C:
	ldr r2, _0801506C @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	adds r1, r6, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
	b _0801519C
	.align 2, 0
_08015068: .4byte gCurTask
_0801506C: .4byte gPlayer
_08015070:
	ldr r2, _08015094 @ =gPlayer
	ldr r1, [r6, #0x44]
	lsls r1, r1, #8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _08015098 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _0801509C
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	b _080150A0
	.align 2, 0
_08015094: .4byte gPlayer
_08015098: .4byte gStageFlags
_0801509C:
	ldr r1, [r5, #4]
	ldr r0, _080150DC @ =0xFFFFFE00
_080150A0:
	adds r1, r1, r0
	ldr r0, [r6, #0x48]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r5, #4]
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _080150E4
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	ldr r1, [r5]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	ldr r4, _080150E0 @ =sa2__sub_801EC3C
	str r4, [sp]
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08015128
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	subs r0, r0, r1
	b _08015110
	.align 2, 0
_080150DC: .4byte 0xFFFFFE00
_080150E0: .4byte sa2__sub_801EC3C
_080150E4:
	cmp r0, #0
	ble _08015128
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	ldr r1, [r5]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	ldr r3, _08015160 @ =sa2__sub_801EC3C
	str r3, [sp]
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08015128
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
_08015110:
	str r0, [r5, #4]
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r1, r6, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
_08015128:
	ldr r1, [r6, #0x44]
	cmp r1, #0
	bge _0801516C
	ldr r5, _08015164 @ =gPlayer
	ldr r0, [r5]
	asrs r0, r0, #8
	movs r1, #0xe
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	ldr r4, _08015168 @ =sa2__sub_801EB44
	str r4, [sp]
	bl sa2__sub_801F100
	cmp r0, #0
	bge _0801519C
	lsls r1, r0, #8
	ldr r0, [r5]
	subs r0, r0, r1
	str r0, [r5]
	b _0801519C
	.align 2, 0
_08015160: .4byte sa2__sub_801EC3C
_08015164: .4byte gPlayer
_08015168: .4byte sa2__sub_801EB44
_0801516C:
	cmp r1, #0
	ble _0801519C
	ldr r4, _080151A4 @ =gPlayer
	ldr r0, [r4]
	asrs r0, r0, #8
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	adds r2, r4, #0
	adds r2, #0x27
	ldrb r2, [r2]
	ldr r3, _080151A8 @ =sa2__sub_801EB44
	str r3, [sp]
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _0801519C
	lsls r1, r0, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_0801519C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080151A4: .4byte gPlayer
_080151A8: .4byte sa2__sub_801EB44

	thumb_func_start sub_80151AC
sub_80151AC: @ 0x080151AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r5, _08015238 @ =gPlayer
	ldr r1, [r5, #0x64]
	ldr r0, _0801523C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	mov r8, r6
	ldr r0, [r1, #0x3c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08015298
	ldr r0, [r6, #0x30]
	cmp r0, r1
	beq _08015298
	ldr r1, _08015240 @ =0x03000050
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, _08015244 @ =0x03000052
	adds r0, r4, r3
	movs r7, #0
	ldrsh r2, [r0, r7]
	adds r3, #0x14
	adds r0, r4, r3
	movs r7, #0
	ldrsh r3, [r0, r7]
	ldr r7, _08015248 @ =0x03000068
	adds r0, r4, r7
	movs r7, #0
	ldrsh r0, [r0, r7]
	str r0, [sp]
	ldr r7, _0801524C @ =0x03000054
	adds r0, r4, r7
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_800A3A8
	adds r2, r0, #0
	ands r0, r4
	cmp r0, #0
	beq _08015298
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0801526E
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08015250
	ldrh r1, [r5, #8]
	movs r3, #8
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _0801526E
	b _08015264
	.align 2, 0
_08015238: .4byte gPlayer
_0801523C: .4byte gCurTask
_08015240: .4byte 0x03000050
_08015244: .4byte 0x03000052
_08015248: .4byte 0x03000068
_0801524C: .4byte 0x03000054
_08015250:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _0801526E
	ldrh r1, [r5, #8]
	movs r7, #8
	ldrsh r0, [r5, r7]
	cmp r0, #0
	bge _0801526E
_08015264:
	rsbs r0, r1, #0
	strh r0, [r5, #8]
	ldrh r0, [r5, #0xc]
	rsbs r0, r0, #0
	strh r0, [r5, #0xc]
_0801526E:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _08015288
	ldr r1, _08015294 @ =gPlayer
	ldrh r2, [r1, #0xa]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _08015288
	rsbs r0, r2, #0
	strh r0, [r1, #0xa]
_08015288:
	mov r1, r8
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #1
	b _080152B8
	.align 2, 0
_08015294: .4byte gPlayer
_08015298:
	ldr r2, _080152C4 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080152B6
	ldr r0, [r2, #0x28]
	cmp r0, r6
	bne _080152B6
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_080152B6:
	movs r0, #0
_080152B8:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080152C4: .4byte gPlayer

	thumb_func_start sub_80152C8
sub_80152C8: @ 0x080152C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r6, _08015380 @ =gPlayer
	ldr r0, [r6, #0x64]
	adds r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, _08015384 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r5, r4, r2
	str r5, [sp, #0x10]
	ldr r1, _08015388 @ =gMultiplayerPlayerTasks
	ldr r0, _0801538C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r0, r2
	str r0, [sp, #0xc]
	ldr r0, _08015390 @ =0x03000060
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801530C
	b _080155D4
_0801530C:
	ldr r1, _08015394 @ =0x03000050
	adds r1, r4, r1
	str r1, [sp, #0x18]
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r3, _08015398 @ =0x03000052
	adds r3, r4, r3
	str r3, [sp, #0x1c]
	movs r7, #0
	ldrsh r2, [r3, r7]
	ldr r0, _0801539C @ =0x03000066
	adds r0, r4, r0
	str r0, [sp, #0x20]
	movs r7, #0
	ldrsh r3, [r0, r7]
	mov ip, r3
	ldr r0, _080153A0 @ =0x03000068
	adds r0, r0, r4
	mov sl, r0
	movs r3, #0
	ldrsh r0, [r0, r3]
	str r0, [sp]
	ldr r7, _080153A4 @ =0x03000054
	adds r7, r7, r4
	mov sb, r7
	ldrh r0, [r7]
	lsrs r0, r0, #7
	movs r3, #1
	mov r8, r3
	ands r0, r3
	str r0, [sp, #4]
	adds r0, r5, #0
	mov r3, ip
	bl sub_800A3A8
	adds r4, r0, #0
	mov r7, r8
	ands r0, r7
	cmp r0, #0
	beq _080153F8
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080153C6
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r4
	cmp r0, #0
	beq _080153A8
	ldrh r1, [r6, #8]
	movs r2, #8
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _080153C6
	b _080153BC
	.align 2, 0
_08015380: .4byte gPlayer
_08015384: .4byte gCurTask
_08015388: .4byte gMultiplayerPlayerTasks
_0801538C: .4byte 0x04000128
_08015390: .4byte 0x03000060
_08015394: .4byte 0x03000050
_08015398: .4byte 0x03000052
_0801539C: .4byte 0x03000066
_080153A0: .4byte 0x03000068
_080153A4: .4byte 0x03000054
_080153A8:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r4
	cmp r0, #0
	beq _080153C6
	ldrh r1, [r6, #8]
	movs r3, #8
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bge _080153C6
_080153BC:
	rsbs r0, r1, #0
	strh r0, [r6, #8]
	ldrh r0, [r6, #0xc]
	rsbs r0, r0, #0
	strh r0, [r6, #0xc]
_080153C6:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r4
	cmp r0, #0
	beq _080153E0
	ldr r1, _080153F4 @ =gPlayer
	ldrh r2, [r1, #0xa]
	movs r7, #0xa
	ldrsh r0, [r1, r7]
	cmp r0, #0
	ble _080153E0
	rsbs r0, r2, #0
	strh r0, [r1, #0xa]
_080153E0:
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	bne _08015402
_080153F0:
	movs r0, #1
	b _08015654
	.align 2, 0
_080153F4: .4byte gPlayer
_080153F8:
	movs r7, #2
	ands r7, r4
	cmp r7, #0
	bne _08015402
	b _08015558
_08015402:
	ldr r0, _08015484 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801540E
	cmp r0, #5
	bne _0801545C
_0801540E:
	ldr r0, _08015488 @ =gMultiplayerCharacters
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r1, [r1]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _0801545C
	ldr r0, [sp, #0x10]
	ldrh r1, [r0, #0xa]
	movs r0, #0xae
	lsls r0, r0, #1
	cmp r1, r0
	beq _08015432
	adds r0, #5
	cmp r1, r0
	bne _0801545C
_08015432:
	ldr r2, _0801548C @ =gPlayer
	adds r3, r2, #0
	adds r3, #0x26
	ldrb r1, [r3]
	movs r0, #0x10
	orrs r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	strh r1, [r2, #0x20]
	movs r1, #0xfb
	ands r0, r1
	strb r0, [r3]
	adds r2, #0x59
	movs r0, #0
	ldrsb r0, [r2, r0]
	bl sub_804B7C8
	ldr r0, _08015490 @ =gMPlayInfo_BGM
	movs r1, #0x80
	bl m4aMPlayTempoControl
_0801545C:
	movs r6, #1
	ands r4, r6
	cmp r4, #0
	beq _080154A2
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _0801548C @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r3, r1, #0
	cmp r2, r0
	bge _08015494
	ldr r0, [r3, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _08015498
	.align 2, 0
_08015484: .4byte gGameMode
_08015488: .4byte gMultiplayerCharacters
_0801548C: .4byte gPlayer
_08015490: .4byte gMPlayInfo_BGM
_08015494:
	ldr r0, [r3, #0x10]
	orrs r0, r6
_08015498:
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl sa2__sub_800DE44
	b _080154D0
_080154A2:
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldr r1, _080154BC @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r3, r1, #0
	cmp r2, r0
	bge _080154C0
	ldr r0, [r3, #0x10]
	orrs r0, r6
	b _080154C8
	.align 2, 0
_080154BC: .4byte gPlayer
_080154C0:
	ldr r0, [r3, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080154C8:
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl sub_800C760
_080154D0:
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
	ldr r0, _0801554C @ =gGameMode
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080154E8
	b _080153F0
_080154E8:
	ldr r4, [sp, #0xc]
	ldr r1, [r4, #0x5c]
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	bne _080154F8
	b _080153F0
_080154F8:
	movs r4, #0
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, #0
	ands r0, r2
	adds r5, #0x56
	ldr r6, _08015550 @ =gUnknown_03004FF0
	cmp r0, #0
	bne _0801551E
	adds r3, r2, #0
	adds r2, r1, #0
_0801550E:
	adds r4, #1
	cmp r4, #2
	bhi _0801551E
	adds r0, r3, #0
	lsls r0, r4
	ands r0, r2
	cmp r0, #0
	beq _0801550E
_0801551E:
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r0, r4
	bics r1, r0
	ldr r7, [sp, #0xc]
	str r1, [r7, #0x5c]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldrb r1, [r5]
	ldr r2, _08015554 @ =0x03000041
	adds r0, r0, r2
	strb r1, [r0]
	bl CreateRoomEvent
	movs r1, #9
	strb r1, [r0]
	strb r4, [r0, #1]
	ldrb r1, [r5]
	strb r1, [r0, #2]
	b _080153F0
	.align 2, 0
_0801554C: .4byte gGameMode
_08015550: .4byte gUnknown_03004FF0
_08015554: .4byte 0x03000041
_08015558:
	ldr r3, [sp, #0x14]
	ldr r1, [r3, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801559A
	ldr r0, [r5, #0x30]
	cmp r0, r1
	bne _0801559A
	ldr r4, [sp, #0x18]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r3, [sp, #0x1c]
	movs r4, #0
	ldrsh r2, [r3, r4]
	ldr r0, [sp, #0x20]
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov ip, r0
	mov r4, sl
	movs r3, #0
	ldrsh r0, [r4, r3]
	str r0, [sp]
	mov r4, sb
	ldrh r0, [r4]
	lsrs r0, r0, #7
	mov r3, r8
	ands r0, r3
	str r0, [sp, #4]
	str r7, [sp, #8]
	adds r0, r5, #0
	mov r3, ip
	b _0801561E
_0801559A:
	ldr r1, _080155D0 @ =gPlayer
	ldr r2, [r1, #0x10]
	movs r0, #8
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _080155BC
	ldr r0, [r3, #0x28]
	ldr r4, [sp, #0x10]
	cmp r0, r4
	bne _080155BC
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	movs r0, #2
	orrs r2, r0
	str r2, [r3, #0x10]
_080155BC:
	ldr r0, [r5, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015652
	ldr r0, [r3, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r3, #0x10]
	b _08015652
	.align 2, 0
_080155D0: .4byte gPlayer
_080155D4:
	subs r0, #1
	strb r0, [r1]
	ldr r0, [r6, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08015652
	ldr r0, [r6, #0x28]
	cmp r0, r5
	bne _08015652
	ldr r7, _08015664 @ =0x03000050
	adds r0, r4, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, _08015668 @ =0x03000052
	adds r0, r4, r3
	movs r7, #0
	ldrsh r2, [r0, r7]
	adds r3, #0x14
	adds r0, r4, r3
	movs r7, #0
	ldrsh r3, [r0, r7]
	ldr r7, _0801566C @ =0x03000068
	adds r0, r4, r7
	movs r7, #0
	ldrsh r0, [r0, r7]
	str r0, [sp]
	ldr r7, _08015670 @ =0x03000054
	adds r0, r4, r7
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r5, #0
_0801561E:
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r5, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801563E
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0801563E
	ldr r0, [r6, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r6, #0x10]
_0801563E:
	str r2, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _08015652
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
_08015652:
	movs r0, #0
_08015654:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015664: .4byte 0x03000050
_08015668: .4byte 0x03000052
_0801566C: .4byte 0x03000068
_08015670: .4byte 0x03000054

	thumb_func_start sub_8015674
sub_8015674: @ 0x08015674
	push {r4, r5, r6, lr}
	ldr r6, _080156E0 @ =gPlayer
	ldr r2, [r6, #0x64]
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080156F4
	ldr r5, _080156E4 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r6, #0x10]
	ldr r1, _080156E8 @ =0xFFDFFFFF
	ands r0, r1
	ldr r1, _080156EC @ =0xFF7FFFFF
	ands r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _080156F0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x15
	strb r0, [r1]
	adds r1, r2, #0
	adds r1, #0x2d
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r6, #0xe]
	movs r0, #0xe
	strb r0, [r6, #0xf]
	movs r0, #0xaa      @ SE_SPRING
	bl m4aSongNumStart
	ldrh r0, [r4]
	strh r0, [r6, #0xa]
	ldr r0, [r5]
	bl TaskDestroy
	b _08015716
	.align 2, 0
_080156E0: .4byte gPlayer
_080156E4: .4byte gCurTask
_080156E8: .4byte 0xFFDFFFFF
_080156EC: .4byte 0xFF7FFFFF
_080156F0: .4byte 0xFFFFFEFF
_080156F4:
	adds r0, r6, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x2a
	beq _08015716
	ldr r0, [r6, #0x10]
	ldr r1, _0801571C @ =0xFFDFFFFF
	ands r0, r1
	ldr r1, _08015720 @ =0xFF7FFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08015724 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08015716:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801571C: .4byte 0xFFDFFFFF
_08015720: .4byte 0xFF7FFFFF
_08015724: .4byte gCurTask

	thumb_func_start sub_8015728
sub_8015728: @ 0x08015728
	push {lr}
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	ldr r1, _0801574C @ =gMultiplayerPlayerTasks
	ldr r3, _08015750 @ =0x03000056
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, [r2, #4]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0801574C: .4byte gMultiplayerPlayerTasks
_08015750: .4byte 0x03000056

	thumb_func_start sub_8015754
sub_8015754: @ 0x08015754
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _080157A0 @ =sub_8015674
	movs r2, #0x80
	lsls r2, r2, #6
	movs r5, #0
	str r5, [sp]
	movs r1, #2
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	ldr r2, _080157A4 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r1, r0
	strh r5, [r2, #0x38]
	adds r3, r2, #0
	adds r3, #0x40
	movs r0, #0x2a
	strb r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x10
	orrs r1, r0
	str r1, [r2, #0x10]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080157A0: .4byte sub_8015674
_080157A4: .4byte gPlayer

	thumb_func_start sub_80157A8
sub_80157A8: @ 0x080157A8
	push {r4, lr}
	ldr r0, _08015808 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _0801580C @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080157E2
	ldr r0, [r2, #0x28]
	cmp r0, r4
	bne _080157E2
	ldr r1, [r4, #0x44]
	lsls r1, r1, #8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r4, #0x48]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r2, #4]
_080157E2:
	bl sub_80152C8
	cmp r0, #0
	beq _08015802
	ldr r0, [r4, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015802
	ldr r2, _0801580C @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r4, #0x4c]
_08015802:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015808: .4byte gCurTask
_0801580C: .4byte gPlayer

	thumb_func_start sub_8015810
sub_8015810: @ 0x08015810
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08015870 @ =sub_80158D4
	ldr r2, _08015874 @ =0x00002001
	ldr r1, _08015878 @ =sub_8015C58
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	movs r1, #0
	strb r4, [r0]
	ldr r0, _0801587C @ =0x03000010
	adds r3, r2, r0
	subs r0, #0xc
	adds r5, r2, r0
	ldr r0, _08015880 @ =0x06012500
	str r0, [r3, #4]
	movs r0, #0x40
	strh r0, [r3, #0x1a]
	strh r1, [r3, #8]
	strh r1, [r3, #0x14]
	strh r1, [r3, #0x1c]
	ldr r0, _08015884 @ =0x03000031
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08015888 @ =0x03000032
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0801588C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08015898
	ldr r0, _08015890 @ =gMultiplayerCharacters
	adds r0, r4, r0
	ldrb r1, [r0]
	ldr r4, _08015894 @ =0x03000035
	adds r0, r2, r4
	strb r1, [r0]
	b _0801589E
	.align 2, 0
_08015870: .4byte sub_80158D4
_08015874: .4byte 0x00002001
_08015878: .4byte sub_8015C58
_0801587C: .4byte 0x03000010
_08015880: .4byte 0x06012500
_08015884: .4byte 0x03000031
_08015888: .4byte 0x03000032
_0801588C: .4byte gGameMode
_08015890: .4byte gMultiplayerCharacters
_08015894: .4byte 0x03000035
_08015898:
	ldr r1, _080158C8 @ =0x03000035
	adds r0, r2, r1
	strb r4, [r0]
_0801589E:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	ldr r0, _080158CC @ =0x00040060
	str r0, [r3, #0x10]
	movs r1, #0
	movs r2, #0
	ldr r0, _080158D0 @ =0x000002FF
	strh r0, [r3, #0xa]
	adds r0, r3, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	strh r2, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080158C8: .4byte 0x03000035
_080158CC: .4byte 0x00040060
_080158D0: .4byte 0x000002FF

	thumb_func_start sub_80158D4
sub_80158D4: @ 0x080158D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0801596C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r1, r3
	ldr r2, _08015970 @ =gMultiplayerPlayerTasks
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	adds r3, r4, r3
	ldr r0, _08015974 @ =0x03000010
	adds r0, r1, r0
	str r0, [sp]
	ldr r2, _08015978 @ =0x03000004
	adds r2, r2, r1
	mov sl, r2
	ldr r5, _0801597C @ =0x03000050
	adds r0, r4, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, _08015980 @ =gCamera
	movs r5, #0
	ldrsh r0, [r2, r5]
	subs r1, r1, r0
	cmp r1, #0xf0
	bhi _08015932
	ldr r1, _08015984 @ =0x03000052
	adds r0, r4, r1
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r5, #2
	ldrsh r0, [r2, r5]
	subs r0, r1, r0
	cmp r0, #0
	blt _08015932
	cmp r0, #0xa0
	bgt _08015932
	b _08015C42
_08015932:
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r0, [r0]
	subs r0, #0x78
	ldrh r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r3, #0
	adds r0, #0x52
	ldrh r0, [r0]
	subs r0, #0x50
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r6, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r5, #0x10
	lsrs r4, r2, #0x10
	ldr r7, [sp]
	adds r7, #0x22
	cmp r0, #0
	beq _080159D6
	cmp r2, #0
	beq _080159D6
	lsls r3, r4, #0x10
	b _080159BC
	.align 2, 0
_0801596C: .4byte gCurTask
_08015970: .4byte gMultiplayerPlayerTasks
_08015974: .4byte 0x03000010
_08015978: .4byte 0x03000004
_0801597C: .4byte 0x03000050
_08015980: .4byte gCamera
_08015984: .4byte 0x03000052
_08015988:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r2, r2, r0
	lsls r2, r2, #0xf
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	lsls r1, r1, #0xf
	lsrs r4, r1, #0x10
	lsrs r1, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _080159A8
	rsbs r0, r0, #0
_080159A8:
	cmp r0, #1
	ble _080159D6
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	adds r3, r0, #0
	cmp r2, #0
	bge _080159B8
	rsbs r2, r2, #0
_080159B8:
	cmp r2, #1
	ble _080159D6
_080159BC:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080159C6
	rsbs r0, r0, #0
_080159C6:
	cmp r0, #0x7f
	bgt _08015988
	asrs r0, r3, #0x10
	cmp r0, #0
	bge _080159D2
	rsbs r0, r0, #0
_080159D2:
	cmp r0, #0x7f
	bgt _08015988
_080159D6:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _080159E2
	rsbs r0, r1, #0
_080159E2:
	cmp r0, #1
	bgt _080159F6
	lsls r0, r4, #0x10
	movs r4, #0xc0
	lsls r4, r4, #2
	cmp r0, #0
	ble _08015A1A
	movs r4, #0x80
	lsls r4, r4, #1
	b _08015A1A
_080159F6:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, #0
	cmp r0, #0
	bge _08015A02
	rsbs r2, r0, #0
_08015A02:
	cmp r2, #1
	bgt _08015A12
	movs r4, #0x80
	lsls r4, r4, #2
	cmp r1, #0
	ble _08015A1A
	movs r4, #0
	b _08015A1A
_08015A12:
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08015A1A:
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r2, _08015A50 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	mov r1, sl
	strh r0, [r1]
	lsls r3, r6, #0x10
	asrs r0, r3, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	lsls r2, r5, #0x10
	asrs r0, r2, #0x10
	adds r5, r0, #0
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, r1, r0
	ldr r0, _08015A54 @ =0x0000FFFF
	adds r5, r3, #0
	str r2, [sp, #4]
	cmp r1, r0
	bgt _08015A58
	movs r0, #0x18
	b _08015A5A
	.align 2, 0
_08015A50: .4byte 0x000003FF
_08015A54: .4byte 0x0000FFFF
_08015A58:
	movs r0, #0x10
_08015A5A:
	strb r0, [r7]
	movs r2, #0xc0
	lsls r2, r2, #0x13
	cmp r1, r2
	ble _08015A68
	movs r0, #0x40
	b _08015A96
_08015A68:
	ldr r0, _08015A7C @ =0x0000FFFF
	cmp r1, r0
	bgt _08015A80
	movs r0, #0xf0
	lsls r0, r0, #1
	mov r2, sl
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	b _08015A9C
	.align 2, 0
_08015A7C: .4byte 0x0000FFFF
_08015A80:
	subs r1, r2, r1
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r1, _08015AA8 @ =0x000005FF
	bl Div
	adds r0, #0x40
_08015A96:
	mov r1, sl
	strh r0, [r1, #2]
	strh r0, [r1, #4]
_08015A9C:
	asrs r4, r4, #0x10
	cmp r4, #0
	bne _08015AAC
	movs r5, #0x50
_08015AA4:
	movs r0, #0xf0
	b _08015C0A
	.align 2, 0
_08015AA8: .4byte 0x000005FF
_08015AAC:
	movs r6, #0x80
	lsls r6, r6, #1
	cmp r4, r6
	bne _08015ABA
	movs r5, #0xa0
	movs r0, #0x78
	b _08015C0A
_08015ABA:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	bne _08015AC6
	movs r5, #0x50
	b _08015C08
_08015AC6:
	movs r2, #0xc0
	lsls r2, r2, #2
	mov sb, r2
	cmp r4, sb
	bne _08015AD6
	movs r5, #0
	movs r0, #0x78
	b _08015C0A
_08015AD6:
	cmp r5, #0
	ble _08015B3C
	ldr r7, _08015B20 @ =gSineTable
	lsls r0, r4, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r4, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #4
	subs r1, r1, r0
	asrs r1, r1, #5
	adds r1, #0x50
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _08015B28
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _08015AA4
	movs r5, #0xa0
	subs r1, r6, r4
	ldr r0, _08015B24 @ =0x000003FF
	ands r1, r0
	b _08015B8E
	.align 2, 0
_08015B20: .4byte gSineTable
_08015B24: .4byte 0x000003FF
_08015B28:
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _08015AA4
	movs r5, #0
	subs r1, r6, r4
	ldr r0, _08015B38 @ =0x000003FF
	ands r1, r0
	b _08015BD8
	.align 2, 0
_08015B38: .4byte 0x000003FF
_08015B3C:
	ldr r7, _08015BBC @ =gSineTable
	ldr r2, _08015BC0 @ =0xFFFFFE00
	adds r1, r4, r2
	ldr r5, _08015BC4 @ =0x000003FF
	mov r8, r5
	ands r1, r5
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r1, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #4
	subs r1, r1, r0
	asrs r1, r1, #5
	movs r0, #0x50
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _08015BC8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _08015C08
	movs r5, #0xa0
	mov r2, sb
	subs r1, r2, r4
	mov r4, r8
	ands r1, r4
_08015B8E:
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r1, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #4
	adds r1, #0x78
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	b _08015C0A
	.align 2, 0
_08015BBC: .4byte gSineTable
_08015BC0: .4byte 0xFFFFFE00
_08015BC4: .4byte 0x000003FF
_08015BC8:
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _08015C08
	movs r5, #0
	mov r0, sb
	subs r1, r0, r4
	mov r2, r8
	ands r1, r2
_08015BD8:
	lsls r0, r1, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	adds r1, r1, r6
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #4
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08015C0A
_08015C08:
	movs r0, #0
_08015C0A:
	mov r4, sl
	strh r0, [r4, #6]
	strh r5, [r4, #8]
	ldr r5, [sp]
	ldr r0, [r5, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r2, _08015C54 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	mov r1, sl
	bl TransformSprite
	ldr r0, [sp]
	bl DisplaySprite
_08015C42:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015C54: .4byte sa2__gUnknown_030054B8

    thumb_func_start sub_8015C58
sub_8015C58:
	bx lr
    .align 2 , 0

	thumb_func_start sub_8015C5C
sub_8015C5C: @ 0x08015C5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _08015D4C @ =sub_8015D88
	movs r7, #0x80
	lsls r7, r7, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0x6c
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	ldr r3, _08015D50 @ =0x03000060
	adds r0, r2, r3
	movs r3, #0
	mov r8, r3
	strh r5, [r0]
	ldr r3, _08015D54 @ =0x03000062
	adds r0, r2, r3
	strh r6, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r4, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r4, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r4, [r0]
	strh r5, [r1, #0x16]
	strh r6, [r1, #0x18]
	ldr r0, _08015D58 @ =0x06012580
	str r0, [r1, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r4, [r1, #8]
	ldr r0, _08015D5C @ =0x000002B5
	strh r0, [r1, #0xa]
	subs r3, #0x48
	adds r0, r2, r3
	mov r3, r8
	strb r3, [r0]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x1c]
	ldr r0, _08015D60 @ =0x03000021
	adds r3, r2, r0
	movs r0, #0xff
	strb r0, [r3]
	ldr r3, _08015D64 @ =0x03000022
	adds r0, r2, r3
	movs r3, #0x10
	mov sl, r3
	mov r3, sl
	strb r3, [r0]
	ldr r3, _08015D68 @ =0x03000025
	adds r0, r2, r3
	mov r3, r8
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	str r0, [r1, #0x28]
	str r7, [r1, #0x10]
	ldr r3, _08015D6C @ =0x03000030
	adds r1, r2, r3
	strh r5, [r1, #0x16]
	strh r6, [r1, #0x18]
	ldr r0, _08015D70 @ =0x06012E40
	str r0, [r1, #4]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r4, [r1, #8]
	ldr r0, _08015D74 @ =0x000002B6
	strh r0, [r1, #0xa]
	ldr r0, _08015D78 @ =0x03000050
	adds r3, r2, r0
	movs r0, #4
	strb r0, [r3]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x1c]
	ldr r0, _08015D7C @ =0x03000051
	adds r3, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3]
	ldr r3, _08015D80 @ =0x03000052
	adds r0, r2, r3
	mov r3, sl
	strb r3, [r0]
	ldr r0, _08015D84 @ =0x03000055
	adds r2, r2, r0
	mov r3, r8
	strb r3, [r2]
	mov r0, sb
	str r0, [r1, #0x28]
	str r7, [r1, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015D4C: .4byte sub_8015D88
_08015D50: .4byte 0x03000060
_08015D54: .4byte 0x03000062
_08015D58: .4byte 0x06012580
_08015D5C: .4byte 0x000002B5
_08015D60: .4byte 0x03000021
_08015D64: .4byte 0x03000022
_08015D68: .4byte 0x03000025
_08015D6C: .4byte 0x03000030
_08015D70: .4byte 0x06012E40
_08015D74: .4byte 0x000002B6
_08015D78: .4byte 0x03000050
_08015D7C: .4byte 0x03000051
_08015D80: .4byte 0x03000052
_08015D84: .4byte 0x03000055

	thumb_func_start sub_8015D88
sub_8015D88: @ 0x08015D88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08015E2C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _08015E30 @ =0x03000030
	adds r7, r4, r1
	adds r1, #0x30
	adds r0, r4, r1
	ldr r3, _08015E34 @ =gCamera
	ldrh r2, [r0]
	ldrh r0, [r3]
	subs r2, r2, r0
	strh r2, [r5, #0x16]
	ldr r0, _08015E38 @ =0x03000062
	adds r1, r4, r0
	adds r0, #4
	adds r6, r4, r0
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r1]
	adds r0, r0, r1
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	strh r2, [r7, #0x16]
	ldrh r0, [r5, #0x18]
	strh r0, [r7, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _08015E3C @ =0x03000068
	adds r1, r4, r0
	ldrh r0, [r1]
	cmp r0, #0x2d
	bls _08015E5C
	ldr r1, _08015E40 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08015E44 @ =0xFFFFB000
	cmp r0, r1
	bgt _08015E60
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08015E48 @ =sub_8015E6C
	str r0, [r1, #8]
	ldr r0, _08015E4C @ =0x000002B5
	strh r0, [r5, #0xa]
	ldr r0, _08015E50 @ =0x03000020
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08015E54 @ =0x000002B6
	strh r0, [r7, #0xa]
	ldr r0, _08015E58 @ =0x03000050
	adds r1, r4, r0
	movs r0, #9
	strb r0, [r1]
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r6]
	b _08015E60
	.align 2, 0
_08015E2C: .4byte gCurTask
_08015E30: .4byte 0x03000030
_08015E34: .4byte gCamera
_08015E38: .4byte 0x03000062
_08015E3C: .4byte 0x03000068
_08015E40: .4byte 0xFFFFFF00
_08015E44: .4byte 0xFFFFB000
_08015E48: .4byte sub_8015E6C
_08015E4C: .4byte 0x000002B5
_08015E50: .4byte 0x03000020
_08015E54: .4byte 0x000002B6
_08015E58: .4byte 0x03000050
_08015E5C:
	adds r0, #1
	strh r0, [r1]
_08015E60:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8015E6C
sub_8015E6C: @ 0x08015E6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08015F30 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r7, r0
	ldr r1, _08015F34 @ =0x03000030
	adds r6, r7, r1
	ldr r3, _08015F38 @ =0x03000060
	adds r3, r3, r7
	mov r8, r3
	ldr r3, _08015F3C @ =gCamera
	mov r4, r8
	ldrh r2, [r4]
	ldrh r0, [r3]
	subs r2, r2, r0
	movs r0, #0
	mov sl, r0
	strh r2, [r5, #0x16]
	ldr r4, _08015F40 @ =0x03000062
	adds r1, r7, r4
	adds r4, #4
	adds r0, r7, r4
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	strh r2, [r6, #0x16]
	ldrh r0, [r5, #0x18]
	strh r0, [r6, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	cmp r4, #0
	bne _08015F20
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _08015F44 @ =sub_8015F60
	str r0, [r1, #8]
	ldr r0, _08015F48 @ =0x000002B5
	strh r0, [r5, #0xa]
	ldr r1, _08015F4C @ =0x03000020
	adds r0, r7, r1
	mov r3, sl
	strb r3, [r0]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08015F50 @ =0x000002B6
	strh r0, [r6, #0xa]
	ldr r4, _08015F54 @ =0x03000050
	adds r2, r7, r4
	strb r3, [r2]
	ldr r0, _08015F58 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	bne _08015F20
	mov r0, r8
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _08015F5C @ =0x000007FF
	cmp r1, r0
	ble _08015F20
	movs r0, #8
	strb r0, [r2]
_08015F20:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015F30: .4byte gCurTask
_08015F34: .4byte 0x03000030
_08015F38: .4byte 0x03000060
_08015F3C: .4byte gCamera
_08015F40: .4byte 0x03000062
_08015F44: .4byte sub_8015F60
_08015F48: .4byte 0x000002B5
_08015F4C: .4byte 0x03000020
_08015F50: .4byte 0x000002B6
_08015F54: .4byte 0x03000050
_08015F58: .4byte gCurrentLevel
_08015F5C: .4byte 0x000007FF

	thumb_func_start sub_8015F60
sub_8015F60: @ 0x08015F60
	push {r4, r5, r6, r7, lr}
	ldr r0, _08015FC4 @ =gCurTask
	ldr r7, [r0]
	ldrh r2, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0x30
	adds r6, r2, r0
	ldr r3, _08015FC8 @ =0x03000064
	adds r1, r2, r3
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	subs r3, #4
	adds r1, r2, r3
	ldrh r3, [r1]
	adds r3, r3, r0
	ldr r4, _08015FCC @ =gCamera
	ldrh r0, [r4]
	subs r3, r3, r0
	strh r3, [r5, #0x16]
	ldr r0, _08015FD0 @ =0x03000062
	adds r1, r2, r0
	adds r0, #4
	adds r2, r2, r0
	ldrh r0, [r2]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	strh r3, [r6, #0x16]
	ldrh r0, [r5, #0x18]
	strh r0, [r6, #0x18]
	movs r1, #0x16
	ldrsh r0, [r5, r1]
	bl __floatsidf
	ldr r2, _08015FD4 @ =0x40768000
	ldr r3, _08015FD8 @ =0x00000000
	bl __gtdf2
	cmp r0, #0
	ble _08015FDC
	adds r0, r7, #0
	bl TaskDestroy
	b _08015FF4
	.align 2, 0
_08015FC4: .4byte gCurTask
_08015FC8: .4byte 0x03000064
_08015FCC: .4byte gCamera
_08015FD0: .4byte 0x03000062
_08015FD4: .4byte 0x40768000
_08015FD8: .4byte 0x00000000
_08015FDC:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08015FF4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateBossCapsule
CreateBossCapsule: @ 0x08015FFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldr r0, _08016114 @ =sub_801615C
	ldr r1, _08016118 @ =sub_80175A8
	str r1, [sp]
	movs r1, #0x78
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r1, _0801611C @ =0x0300006C
	adds r0, r5, r1
	movs r6, #0
	mov r1, r8
	strh r1, [r0]
	ldr r1, _08016120 @ =0x0300006E
	adds r0, r5, r1
	mov r1, sb
	strh r1, [r0]
	ldr r1, _08016124 @ =0x03000070
	adds r0, r5, r1
	strh r6, [r0]
	adds r1, #2
	adds r0, r5, r1
	strh r6, [r0]
	ldr r0, _08016128 @ =0x03000074
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1]
	mov r1, r8
	strh r1, [r4, #0x16]
	mov r0, sb
	strh r0, [r4, #0x18]
	movs r0, #0x51
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	ldr r0, _0801612C @ =0x00000242
	strh r0, [r4, #0xa]
	ldr r1, _08016130 @ =0x03000020
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _08016134 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08016138 @ =0x03000022
	adds r0, r5, r1
	movs r1, #0x10
	mov sl, r1
	mov r1, sl
	strb r1, [r0]
	ldr r1, _0801613C @ =0x03000025
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	movs r7, #1
	rsbs r7, r7, #0
	str r7, [r4, #0x28]
	ldr r0, _08016140 @ =0x00002030
	str r0, [r4, #0x10]
	ldr r0, _08016144 @ =0x03000030
	adds r4, r5, r0
	mov r1, r8
	strh r1, [r4, #0x16]
	mov r0, sb
	strh r0, [r4, #0x18]
	movs r0, #6
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	ldr r1, _08016148 @ =0x03000050
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _0801614C @ =0x03000051
	adds r1, r5, r0
	adds r0, r7, #0
	strb r0, [r1]
	ldr r1, _08016150 @ =0x03000052
	adds r0, r5, r1
	mov r1, sl
	strb r1, [r0]
	ldr r1, _08016154 @ =0x03000055
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	str r7, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	ldr r1, _08016158 @ =0x03000060
	adds r5, r5, r1
	strh r6, [r5]
	movs r0, #0x40
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016114: .4byte sub_801615C
_08016118: .4byte sub_80175A8
_0801611C: .4byte 0x0300006C
_08016120: .4byte 0x0300006E
_08016124: .4byte 0x03000070
_08016128: .4byte 0x03000074
_0801612C: .4byte 0x00000242
_08016130: .4byte 0x03000020
_08016134: .4byte 0x03000021
_08016138: .4byte 0x03000022
_0801613C: .4byte 0x03000025
_08016140: .4byte 0x00002030
_08016144: .4byte 0x03000030
_08016148: .4byte 0x03000050
_0801614C: .4byte 0x03000051
_08016150: .4byte 0x03000052
_08016154: .4byte 0x03000055
_08016158: .4byte 0x03000060

	thumb_func_start sub_801615C
sub_801615C: @ 0x0801615C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08016210 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	orrs r7, r5
	ldr r1, _08016214 @ =0x03000060
	adds r4, r5, r1
	ldr r2, _08016218 @ =0x0300006C
	adds r0, r5, r2
	ldr r2, _0801621C @ =gCamera
	ldrh r0, [r0]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #6]
	ldr r1, _08016220 @ =0x0300006E
	adds r0, r5, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	ldr r2, _08016224 @ =0x03000072
	adds r6, r5, r2
	ldrh r1, [r6]
	subs r0, r0, r1
	strh r0, [r4, #8]
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0xff
	bgt _080161A8
	adds r0, r1, #0
	adds r0, #8
	strh r0, [r4, #2]
	strh r0, [r4, #4]
_080161A8:
	ldrh r0, [r4]
	adds r0, #0x10
	strh r0, [r4]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r1, r4, #0
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _08016228 @ =0x03000074
	adds r1, r5, r0
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _08016204
	mov r2, r8
	ldr r1, [r2]
	ldr r0, _0801622C @ =Task_801623C
	str r0, [r1, #8]
	ldr r0, _08016230 @ =0x03000076
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08016234 @ =0x0000023F
	strh r0, [r7, #0xa]
	ldr r2, _08016238 @ =0x03000020
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_08016204:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016210: .4byte gCurTask
_08016214: .4byte 0x03000060
_08016218: .4byte 0x0300006C
_0801621C: .4byte gCamera
_08016220: .4byte 0x0300006E
_08016224: .4byte 0x03000072
_08016228: .4byte 0x03000074
_0801622C: .4byte Task_801623C
_08016230: .4byte 0x03000076
_08016234: .4byte 0x0000023F
_08016238: .4byte 0x03000020

	thumb_func_start Task_801623C
Task_801623C: @ 0x0801623C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _080163AC @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldr r1, _080163B0 @ =0x03000030
	adds r1, r5, r1
	str r1, [sp, #4]
	movs r2, #0x78
	strh r2, [r7, #0x16]
	ldr r3, _080163B4 @ =0x0300006E
	adds r6, r5, r3
	ldr r0, _080163B8 @ =gCamera
	mov r8, r0
	ldrh r0, [r6]
	mov r3, r8
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	ldr r1, _080163BC @ =0x03000072
	adds r4, r5, r1
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldr r3, [sp, #4]
	strh r2, [r3, #0x16]
	ldrh r0, [r7, #0x18]
	strh r0, [r3, #0x18]
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	cmp r0, #0
	blt _080162A2
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_080162A2:
	ldr r2, _080163C0 @ =0x03000074
	adds r0, r5, r2
	ldrh r1, [r0]
	subs r1, #0x10
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldrh r3, [r4]
	adds r1, r1, r3
	strh r1, [r4]
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	cmp r0, #0x5f
	bgt _080162C0
	b _08016470
_080162C0:
	mov r2, r8
	movs r3, #2
	ldrsh r0, [r2, r3]
	movs r2, #0x18
	ldrsh r1, [r7, r2]
	adds r0, r0, r1
	adds r0, #8
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r3, #0x16
	ldrsh r2, [r7, r3]
	adds r1, r1, r2
	ldr r2, _080163C4 @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	adds r2, r0, #0
	cmp r2, #0
	ble _080162EE
	b _08016470
_080162EE:
	ldrh r0, [r6]
	ldrh r1, [r4]
	subs r0, r0, r1
	adds r0, r0, r2
	strh r0, [r6]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _080163C8 @ =Task_BossCapsuleUpdate
	str r0, [r1, #8]
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #0x78
	ldr r2, _080163CC @ =0x0300006C
	adds r4, r5, r2
	strh r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	bl CreateScreenShake
	movs r0, #0x88
	bl m4aSongNumStart
	movs r3, #0
	mov r8, r3
	mov sl, r4
	ldr r0, _080163B4 @ =0x0300006E
	adds r0, r0, r5
	mov sb, r0
_08016334:
	ldr r4, _080163D0 @ =gPlayer
	mov r1, r8
	cmp r1, #0
	beq _0801633E
	ldr r4, _080163D4 @ =gPartner
_0801633E:
	mov r5, sl
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sb
	movs r0, #0
	ldrsh r2, [r3, r0]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sa2__sub_800DF38
	movs r6, #0x80
	lsls r6, r6, #0xc
	ands r0, r6
	cmp r0, #0
	bne _08016374
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r3, sb
	movs r0, #0
	ldrsh r2, [r3, r0]
	ldr r0, [sp, #4]
	adds r3, r4, #0
	bl sa2__sub_800DF38
	ands r0, r6
	cmp r0, #0
	beq _0801645E
_08016374:
	movs r0, #0x78
	strh r0, [r4, #0x1c]
	ldr r0, [r4]
	asrs r2, r0, #8
	ldr r0, _080163B8 @ =gCamera
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x78
	cmp r2, r0
	bge _080163D8
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #8]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r0, r7, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	subs r0, r1, r0
	cmp r2, r0
	ble _080163FE
	b _080163FA
	.align 2, 0
_080163AC: .4byte gCurTask
_080163B0: .4byte 0x03000030
_080163B4: .4byte 0x0300006E
_080163B8: .4byte gCamera
_080163BC: .4byte 0x03000072
_080163C0: .4byte 0x03000074
_080163C4: .4byte sa2__sub_801EC3C
_080163C8: .4byte Task_BossCapsuleUpdate
_080163CC: .4byte 0x0300006C
_080163D0: .4byte gPlayer
_080163D4: .4byte gPartner
_080163D8:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #8]
	mov r0, sl
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r7, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	adds r0, r1, r0
	cmp r2, r0
	bge _080163FE
_080163FA:
	lsls r0, r0, #8
	str r0, [r4]
_080163FE:
	ldr r1, [r4, #0x10]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08016410
	ldr r0, _0801640C @ =0x0000FD60
	b _08016412
	.align 2, 0
_0801640C: .4byte 0x0000FD60
_08016410:
	ldr r0, _08016480 @ =0x0000FB20
_08016412:
	strh r0, [r4, #0xa]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r0, r1
	ldr r1, _08016484 @ =0xFFFFFBFF
	ands r1, r0
	ldr r0, _08016488 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_0801645E:
	movs r0, #1
	add r8, r0
	ldr r0, _0801648C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	bge _08016470
	b _08016334
_08016470:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016480: .4byte 0x0000FB20
_08016484: .4byte 0xFFFFFBFF
_08016488: .4byte 0xFFFFFEFF
_0801648C: .4byte gNumSingleplayerCharacters

	thumb_func_start Task_BossCapsuleUpdate
Task_BossCapsuleUpdate: @ 0x08016490
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08016624 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	adds r2, r0, #0
	str r2, [sp]
	ldr r2, _08016628 @ =0x03000030
	adds r2, r2, r1
	mov sb, r2
	ldr r2, _0801662C @ =0x0300006C
	adds r0, r1, r2
	ldr r3, _08016630 @ =gCamera
	ldrh r2, [r0]
	ldrh r0, [r3]
	subs r2, r2, r0
	mov r0, r8
	strh r2, [r0, #0x16]
	ldr r0, _08016634 @ =0x0300006E
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r0, sb
	strh r2, [r0, #0x16]
	ldrh r0, [r1, #0x18]
	mov r1, sb
	strh r0, [r1, #0x18]
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	mov r0, sb
	bl DisplaySprite
	movs r2, #0
	mov sl, r2
_080164FC:
	ldr r6, _08016638 @ =gPlayer
	mov r0, sl
	cmp r0, #0
	beq _08016506
	ldr r6, _0801663C @ =gPartner
_08016506:
	adds r0, r6, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	beq _080165AC
	ldr r1, _08016638 @ =gPlayer
	ldr r0, [r1, #4]
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	ldr r5, [sp]
	adds r5, #0x6c
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r4, [sp]
	adds r4, #0x6e
	movs r0, #0
	ldrsh r2, [r4, r0]
	mov r0, r8
	adds r3, r6, #0
	bl sub_80096B0
	ldr r2, _08016638 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _0801657C
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r2, #4]
	asrs r2, r0, #8
	cmp r1, r2
	blt _08016554
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r2
	bge _0801657C
_08016554:
	movs r2, #0
	ldrsh r0, [r5, r2]
	mov r1, r8
	adds r1, #0x2c
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r1, #0xe
	ldrsb r1, [r6, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r6]
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #0xf
	ldrsb r1, [r6, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r6, #4]
_0801657C:
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r0, #0
	ldrsh r2, [r4, r0]
	mov r0, sb
	adds r3, r6, #0
	bl sub_80096B0
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _080165A8
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r0, #0
	ldrsh r2, [r4, r0]
	mov r0, sb
	adds r3, r6, #0
	bl sub_800A768
	cmp r0, #0
	beq _080165AC
_080165A8:
	movs r1, #1
	str r1, [sp, #4]
_080165AC:
	movs r2, #1
	add sl, r2
	ldr r0, _08016640 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp sl, r0
	blt _080164FC
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08016614
	ldr r0, _08016624 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08016644 @ =sub_8016650
	str r0, [r1, #8]
	ldr r2, _08016648 @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0801664C @ =0x0000023F
	mov r1, r8
	strh r0, [r1, #0xa]
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x89
	bl m4aSongNumStart
	movs r4, #0
	movs r5, #0
_080165EA:
	ldr r2, _08016638 @ =gPlayer
	cmp r4, #0
	beq _080165F2
	ldr r2, _0801663C @ =gPartner
_080165F2:
	strh r5, [r2, #0xc]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	strh r5, [r2, #0x38]
	adds r0, r2, #0
	bl sub_801766C
	adds r4, #1
	ldr r0, _08016640 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _080165EA
_08016614:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016624: .4byte gCurTask
_08016628: .4byte 0x03000030
_0801662C: .4byte 0x0300006C
_08016630: .4byte gCamera
_08016634: .4byte 0x0300006E
_08016638: .4byte gPlayer
_0801663C: .4byte gPartner
_08016640: .4byte gNumSingleplayerCharacters
_08016644: .4byte sub_8016650
_08016648: .4byte gStageFlags
_0801664C: .4byte 0x0000023F

	thumb_func_start sub_8016650
sub_8016650: @ 0x08016650
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08016820 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	str r7, [sp, #4]
	adds r0, #0x30
	adds r0, r0, r4
	mov r8, r0
	ldr r1, _08016824 @ =0x0300006C
	adds r0, r4, r1
	ldr r1, _08016828 @ =gCamera
	ldrh r2, [r0]
	ldrh r0, [r1]
	subs r2, r2, r0
	strh r2, [r7, #0x16]
	ldr r3, _0801682C @ =0x0300006E
	adds r0, r4, r3
	ldrh r0, [r0]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	mov r5, r8
	strh r2, [r5, #0x16]
	ldrh r0, [r7, #0x18]
	adds r0, #4
	strh r0, [r5, #0x18]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov sl, r0
	mov r0, r8
	bl UpdateSpriteAnimation
	movs r6, #0
	ldr r0, _08016824 @ =0x0300006C
	adds r0, r0, r4
	mov sb, r0
	ldr r1, _0801682C @ =0x0300006E
	adds r4, r4, r1
_080166AE:
	ldr r5, _08016830 @ =gPlayer
	cmp r6, #0
	beq _080166B6
	ldr r5, _08016834 @ =gPartner
_080166B6:
	adds r0, r5, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	beq _080166EC
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #0
	ldrsh r2, [r4, r0]
	adds r0, r7, #0
	adds r3, r5, #0
	bl sub_80096B0
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r2, [r4]
	adds r2, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	adds r3, r5, #0
	bl sub_80096B0
_080166EC:
	adds r6, #1
	ldr r5, _08016838 @ =gNumSingleplayerCharacters
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r6, r0
	blt _080166AE
	adds r0, r7, #0
	bl DisplaySprite
	mov r0, r8
	bl DisplaySprite
	mov r0, sl
	cmp r0, #0
	beq _0801670C
	b _08016810
_0801670C:
	movs r3, #0
	ldr r1, [sp, #4]
	adds r1, #0x6c
	str r1, [sp, #8]
	ldr r2, [sp, #4]
	adds r2, #0x6e
	str r2, [sp, #0xc]
	movs r0, #0x20
	adds r0, r0, r7
	mov ip, r0
	movs r1, #8
	mov sl, r1
	movs r2, #9
	rsbs r2, r2, #0
	mov sb, r2
	movs r6, #2
	adds r4, r5, #0
_0801672E:
	ldr r2, _08016830 @ =gPlayer
	cmp r3, #0
	beq _08016736
	ldr r2, _08016834 @ =gPartner
_08016736:
	ldr r1, [r2, #0x10]
	adds r0, r1, #0
	mov r5, sl
	ands r0, r5
	cmp r0, #0
	beq _08016750
	ldr r0, [r2, #0x28]
	cmp r0, r8
	bne _08016750
	mov r0, sb
	ands r1, r0
	orrs r1, r6
	str r1, [r2, #0x10]
_08016750:
	adds r3, #1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r3, r0
	blt _0801672E
	ldr r1, _08016820 @ =gCurTask
	ldr r0, [r1]
	ldr r2, _0801683C @ =sub_801685C
	str r2, [r0, #8]
	movs r5, #0
	ldr r0, _08016840 @ =0x0000023F
	strh r0, [r7, #0xa]
	movs r0, #2
	mov r3, ip
	strb r0, [r3]
	ldr r1, [sp, #8]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xc]
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r3, _08016844 @ =0x00000241
	mov sl, r3
	str r5, [sp]
	movs r2, #0x40
	bl sub_80168F0
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	ldr r2, _08016848 @ =0x03000044
	adds r0, r1, r2
	movs r7, #0xff
	lsls r7, r7, #8
	strh r7, [r0]
	ldr r3, _0801684C @ =0x03000046
	adds r0, r1, r3
	movs r2, #0xfe
	lsls r2, r2, #8
	mov sb, r2
	mov r3, sb
	strh r3, [r0]
	ldr r2, _08016850 @ =0x03000048
	adds r0, r1, r2
	strh r5, [r0]
	ldr r3, _08016854 @ =0x03000042
	adds r0, r1, r3
	movs r6, #4
	strh r6, [r0]
	ldr r0, _08016858 @ =0x03000040
	adds r1, r1, r0
	movs r2, #0x3c
	mov r8, r2
	mov r3, r8
	strh r3, [r1]
	ldr r1, [sp, #8]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xc]
	movs r2, #0
	ldrsh r1, [r3, r2]
	str r5, [sp]
	movs r2, #0x40
	mov r3, sl
	bl sub_80168F0
	ldrh r0, [r0, #6]
	adds r4, r0, r4
	ldr r3, _08016848 @ =0x03000044
	adds r2, r0, r3
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r2, _0801684C @ =0x03000046
	adds r1, r0, r2
	mov r3, sb
	strh r3, [r1]
	adds r2, #2
	adds r1, r0, r2
	strh r5, [r1]
	ldr r3, _08016854 @ =0x03000042
	adds r1, r0, r3
	strh r6, [r1]
	strh r7, [r4, #0x32]
	ldr r5, _08016858 @ =0x03000040
	adds r0, r0, r5
	mov r1, r8
	strh r1, [r0]
	ldr r2, [sp, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r5, [sp, #0xc]
	movs r2, #0
	ldrsh r1, [r5, r2]
	bl sub_801749C
_08016810:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016820: .4byte gCurTask
_08016824: .4byte 0x0300006C
_08016828: .4byte gCamera
_0801682C: .4byte 0x0300006E
_08016830: .4byte gPlayer
_08016834: .4byte gPartner
_08016838: .4byte gNumSingleplayerCharacters
_0801683C: .4byte sub_801685C
_08016840: .4byte 0x0000023F
_08016844: .4byte 0x00000241
_08016848: .4byte 0x03000044
_0801684C: .4byte 0x03000046
_08016850: .4byte 0x03000048
_08016854: .4byte 0x03000042
_08016858: .4byte 0x03000040

	thumb_func_start sub_801685C
sub_801685C: @ 0x0801685C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080168D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	adds r6, r4, #0
	ldr r1, _080168D8 @ =0x0300006C
	adds r0, r2, r1
	ldr r3, _080168DC @ =gCamera
	ldrh r0, [r0]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r7, _080168E0 @ =0x0300006E
	adds r2, r2, r7
	ldrh r0, [r2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r5, #0
_0801688E:
	ldr r3, _080168E4 @ =gPlayer
	cmp r5, #0
	beq _08016896
	ldr r3, _080168E8 @ =gPartner
_08016896:
	adds r0, r3, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	beq _080168B8
	adds r0, r6, #0
	adds r0, #0x6c
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r7, #0
	ldrsh r2, [r0, r7]
	adds r0, r4, #0
	bl sub_80096B0
_080168B8:
	adds r5, #1
	ldr r0, _080168EC @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _0801688E
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080168D4: .4byte gCurTask
_080168D8: .4byte 0x0300006C
_080168DC: .4byte gCamera
_080168E0: .4byte 0x0300006E
_080168E4: .4byte gPlayer
_080168E8: .4byte gPartner
_080168EC: .4byte gNumSingleplayerCharacters

	thumb_func_start sub_80168F0
sub_80168F0: @ 0x080168F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r2, #0
	mov sb, r3
	ldr r2, [sp, #0x34]
	mov sl, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r0, _080169EC @ =sub_8016A14
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080169F0 @ =sub_80175C4
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r4, [r7, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r0, _080169F4 @ =0x03000030
	adds r2, r4, r0
	adds r0, #0x10
	adds r1, r4, r0
	movs r3, #0
	movs r0, #0x3c
	strh r0, [r1]
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r5, #0x3c]
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r5, #0x3e]
	ldr r1, _080169F8 @ =0x03000044
	adds r0, r4, r1
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	mov r1, r8
	strh r1, [r0]
	ldr r0, _080169FC @ =0x03000046
	adds r1, r4, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r0, _08016A00 @ =0x03000048
	adds r1, r4, r0
	movs r0, #8
	strh r0, [r1]
	adds r0, r6, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r3, [sp, #0x10]
	strh r3, [r5, #8]
	mov r1, sb
	strh r1, [r5, #0xa]
	ldr r1, _08016A04 @ =0x03000020
	adds r0, r4, r1
	mov r1, sl
	strb r1, [r0]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r0, _08016A08 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08016A0C @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08016A10 @ =0x03000025
	adds r4, r4, r1
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x70
	str r0, [r5, #0x10]
	ldr r2, [sp, #0xc]
	strh r3, [r2]
	mov r1, r8
	strh r1, [r2, #2]
	strh r1, [r2, #4]
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r2, #6]
	mov r1, sp
	ldrh r1, [r1, #8]
	strh r1, [r2, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080169EC: .4byte sub_8016A14
_080169F0: .4byte sub_80175C4
_080169F4: .4byte 0x03000030
_080169F8: .4byte 0x03000044
_080169FC: .4byte 0x03000046
_08016A00: .4byte 0x03000048
_08016A04: .4byte 0x03000020
_08016A08: .4byte 0x03000021
_08016A0C: .4byte 0x03000022
_08016A10: .4byte 0x03000025

	thumb_func_start sub_8016A14
sub_8016A14: @ 0x08016A14
	push {r4, r5, r6, lr}
	ldr r0, _08016A40 @ =gCurTask
	ldr r2, [r0]
	ldrh r5, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	adds r0, #0x30
	adds r4, r5, r0
	adds r0, #0x10
	adds r1, r5, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	ldr r1, _08016A44 @ =0xFFFF0000
	cmp r0, r1
	bne _08016A48
	adds r0, r2, #0
	bl TaskDestroy
	b _08016B66
	.align 2, 0
_08016A40: .4byte gCurTask
_08016A44: .4byte 0xFFFF0000
_08016A48:
	ldr r1, _08016ABC @ =0x03000046
	adds r2, r5, r1
	ldrh r0, [r2]
	adds r0, #0x28
	strh r0, [r2]
	ldr r0, _08016AC0 @ =0x03000044
	adds r3, r5, r0
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldrh r0, [r6, #0x3c]
	adds r1, r1, r0
	strh r1, [r6, #0x3c]
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r6, #0x3e]
	adds r0, r0, r2
	strh r0, [r6, #0x3e]
	ldr r2, _08016AC4 @ =gCamera
	ldrh r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #6]
	ldrh r0, [r6, #0x3e]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #8]
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _08016AD8
	ldr r2, _08016AC8 @ =0x03000042
	adds r0, r5, r2
	ldrh r0, [r0]
	ldrh r1, [r4]
	adds r0, r0, r1
	ldr r2, _08016ACC @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4]
	ldrh r2, [r4, #2]
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, _08016AD0 @ =0xFFFFFE00
	cmp r1, r0
	ble _08016AAE
	ldr r1, _08016AD4 @ =0x03000048
	adds r0, r5, r1
	ldrh r0, [r0]
	subs r0, r2, r0
	strh r0, [r4, #2]
_08016AAE:
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08016B0A
	b _08016B20
	.align 2, 0
_08016ABC: .4byte 0x03000046
_08016AC0: .4byte 0x03000044
_08016AC4: .4byte gCamera
_08016AC8: .4byte 0x03000042
_08016ACC: .4byte 0x000003FF
_08016AD0: .4byte 0xFFFFFE00
_08016AD4: .4byte 0x03000048
_08016AD8:
	ldr r0, _08016B10 @ =0x03000042
	adds r1, r5, r0
	ldrh r0, [r4]
	ldrh r1, [r1]
	subs r0, r0, r1
	ldr r2, _08016B14 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4]
	ldrh r2, [r4, #2]
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, _08016B18 @ =0x000001FF
	cmp r1, r0
	bgt _08016B00
	ldr r1, _08016B1C @ =0x03000048
	adds r0, r5, r1
	ldrh r0, [r0]
	adds r0, r2, r0
	strh r0, [r4, #2]
_08016B00:
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _08016B20
_08016B0A:
	strh r1, [r4, #4]
	b _08016B24
	.align 2, 0
_08016B10: .4byte 0x03000042
_08016B14: .4byte 0x000003FF
_08016B18: .4byte 0x000001FF
_08016B1C: .4byte 0x03000048
_08016B20:
	rsbs r0, r1, #0
	strh r0, [r4, #4]
_08016B24:
	ldr r1, [r6, #0x10]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08016B58
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #0x10]
	ldr r2, _08016B54 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	adds r1, r4, #0
	bl TransformSprite
	b _08016B60
	.align 2, 0
_08016B54: .4byte sa2__gUnknown_030054B8
_08016B58:
	ldrh r0, [r4, #6]
	strh r0, [r6, #0x16]
	ldrh r0, [r4, #8]
	strh r0, [r6, #0x18]
_08016B60:
	adds r0, r6, #0
	bl DisplaySprite
_08016B66:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8016B6C
sub_8016B6C: @ 0x08016B6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08016D54 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r5, r0, r7
	ldrh r1, [r5, #4]
	adds r2, r1, #1
	strh r2, [r5, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08016B92
	b _08016D2E
_08016B92:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	beq _08016C00
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r4, _08016D58 @ =gUnknown_080BB43C
	ldr r2, _08016D5C @ =gCurrentLevel
	ldrb r3, [r2]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x19
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r2, [r2]
	movs r3, #0
	bl sub_8016D80
	ldrh r6, [r0, #6]
	adds r3, r6, r7
	ldr r2, _08016D60 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08016D64 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08016D68 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r4, r0, #0
	movs r1, #0xff
	ands r0, r1
	ldrh r1, [r3, #0x3e]
	adds r2, r0, r1
	strh r2, [r3, #0x3e]
	ldrh r1, [r5, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08016BEC
	rsbs r0, r2, #0
	strh r0, [r3, #0x3e]
_08016BEC:
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r4
	lsrs r0, r0, #4
	ldrh r2, [r3, #0x3c]
	adds r0, r0, r2
	strh r0, [r3, #0x3c]
	ldr r2, _08016D6C @ =0x03000040
	adds r1, r6, r2
	strh r0, [r1]
_08016C00:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r4, _08016D58 @ =gUnknown_080BB43C
	ldr r2, _08016D5C @ =gCurrentLevel
	ldrb r3, [r2]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x19
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #1
	adds r4, #2
	adds r2, r2, r4
	ldrh r2, [r2]
	movs r3, #0
	bl sub_8016D80
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r6, r0
	ldr r7, _08016D60 @ =gPseudoRandom
	ldr r0, [r7]
	ldr r2, _08016D64 @ =0x00196225
	mov sb, r2
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _08016D68 @ =0x3C6EF35F
	mov r8, r2
	add r0, r8
	str r0, [r7]
	adds r4, r0, #0
	movs r1, #0xff
	ands r0, r1
	ldrh r1, [r3, #0x3e]
	adds r2, r0, r1
	strh r2, [r3, #0x3e]
	ldrh r1, [r5, #8]
	movs r0, #1
	mov sl, r0
	ands r0, r1
	cmp r0, #0
	bne _08016C62
	rsbs r0, r2, #0
	strh r0, [r3, #0x3e]
_08016C62:
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r4
	lsrs r0, r0, #4
	ldrh r1, [r3, #0x3c]
	adds r0, r0, r1
	strh r0, [r3, #0x3c]
	ldr r2, _08016D6C @ =0x03000040
	adds r1, r6, r2
	strh r0, [r1]
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #5
	beq _08016CDA
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldrh r1, [r5, #2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	movs r3, #0
	bl sub_8016F44
	ldrh r6, [r0, #6]
	ldr r0, [r7]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, r8
	str r0, [r7]
	adds r4, r0, #0
	ldr r0, _08016D70 @ =0x03000052
	adds r2, r6, r0
	movs r1, #7
	adds r0, r4, #0
	ands r0, r1
	ldrh r1, [r2]
	adds r3, r0, r1
	strh r3, [r2]
	ldrh r1, [r5, #8]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08016CCC
	rsbs r0, r3, #0
	strh r0, [r2]
	ldr r2, _08016D74 @ =0x03000050
	adds r1, r6, r2
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
_08016CCC:
	ldr r0, _08016D78 @ =gPlayer
	ldr r0, [r0, #4]
	asrs r0, r0, #8
	subs r0, #0x20
	ldr r2, _08016D7C @ =0x0300004E
	adds r1, r6, r2
	strh r0, [r1]
_08016CDA:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #2]
	subs r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xdd
	lsls r2, r2, #1
	movs r3, #0
	bl sub_8016F44
	ldrh r3, [r0, #6]
	asrs r4, r4, #8
	ldr r0, _08016D70 @ =0x03000052
	adds r2, r3, r0
	movs r0, #7
	ands r4, r0
	ldrh r1, [r2]
	adds r4, r4, r1
	strh r4, [r2]
	ldrh r1, [r5, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08016D1A
	rsbs r0, r4, #0
	strh r0, [r2]
	ldr r2, _08016D74 @ =0x03000050
	adds r1, r3, r2
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
_08016D1A:
	ldr r0, _08016D78 @ =gPlayer
	ldr r0, [r0, #4]
	asrs r0, r0, #8
	subs r0, #0x20
	ldr r2, _08016D7C @ =0x0300004E
	adds r1, r3, r2
	strh r0, [r1]
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
_08016D2E:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0xc
	ble _08016D44
	movs r0, #0
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	ldr r0, _08016D54 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08016D44:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016D54: .4byte gCurTask
_08016D58: .4byte gUnknown_080BB43C
_08016D5C: .4byte gCurrentLevel
_08016D60: .4byte gPseudoRandom
_08016D64: .4byte 0x00196225
_08016D68: .4byte 0x3C6EF35F
_08016D6C: .4byte 0x03000040
_08016D70: .4byte 0x03000052
_08016D74: .4byte 0x03000050
_08016D78: .4byte gPlayer
_08016D7C: .4byte 0x0300004E

	thumb_func_start sub_8016D80
sub_8016D80: @ 0x08016D80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	mov sl, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	ldr r0, _08016E38 @ =sub_8016E54
	ldr r1, _08016E3C @ =sub_8017658
	str r1, [sp]
	movs r1, #0x44
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r5, [r7, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r6, #0
	mov r0, r8
	strh r0, [r4, #0x38]
	mov r1, sb
	strh r1, [r4, #0x3a]
	movs r1, #0xfc
	lsls r1, r1, #8
	strh r1, [r4, #0x3c]
	ldr r2, _08016E40 @ =0x03000040
	adds r0, r5, r2
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x3e]
	str r6, [r4, #0x34]
	str r6, [r4, #0x30]
	movs r0, #4
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	mov r0, sl
	strh r0, [r4, #0xa]
	ldr r1, _08016E44 @ =0x03000020
	adds r0, r5, r1
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _08016E48 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _08016E4C @ =0x03000022
	adds r1, r5, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08016E50 @ =0x03000025
	adds r5, r5, r0
	movs r1, #0
	strb r1, [r5]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r4, #0x10]
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08016E38: .4byte sub_8016E54
_08016E3C: .4byte sub_8017658
_08016E40: .4byte 0x03000040
_08016E44: .4byte 0x03000020
_08016E48: .4byte 0x03000021
_08016E4C: .4byte 0x03000022
_08016E50: .4byte 0x03000025

	thumb_func_start sub_8016E54
sub_8016E54: @ 0x08016E54
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08016ECC @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r5, r4, #0
	ldrh r1, [r4, #0x3c]
	adds r1, #0x28
	strh r1, [r4, #0x3c]
	movs r0, #0x3c
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r3, r0, r2
	str r3, [r4, #0x34]
	movs r0, #0x3e
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r2, r0, r2
	str r2, [r4, #0x30]
	lsls r1, r1, #0x10
	cmp r1, #0
	ble _08016EEE
	movs r1, #0x3a
	ldrsh r0, [r4, r1]
	asrs r1, r3, #8
	adds r0, r0, r1
	movs r3, #0x38
	ldrsh r1, [r4, r3]
	asrs r2, r2, #8
	adds r1, r1, r2
	ldr r2, _08016ED0 @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08016EEE
	ldr r1, _08016ED4 @ =0x03000040
	adds r0, r6, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x3c]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08016ED8
	ldrh r1, [r4, #0x3e]
	movs r2, #0x3e
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08016ED8
	rsbs r0, r1, #0
	strh r0, [r4, #0x3e]
	b _08016EEE
	.align 2, 0
_08016ECC: .4byte gCurTask
_08016ED0: .4byte sa2__sub_801EC3C
_08016ED4: .4byte 0x03000040
_08016ED8:
	ldr r0, [r5, #0x30]
	asrs r0, r0, #8
	cmp r0, #0x20
	ble _08016EEE
	ldrh r1, [r5, #0x3e]
	movs r3, #0x3e
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _08016EEE
	rsbs r0, r1, #0
	strh r0, [r5, #0x3e]
_08016EEE:
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08016F04
	ldr r0, [r4, #0x10]
	ldr r1, _08016F00 @ =0xFFFFFBFF
	ands r0, r1
	b _08016F0C
	.align 2, 0
_08016F00: .4byte 0xFFFFFBFF
_08016F04:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_08016F0C:
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x30]
	asrs r0, r0, #8
	ldrh r2, [r5, #0x38]
	adds r0, r0, r2
	ldr r2, _08016F40 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r5, #0x34]
	asrs r0, r0, #8
	ldrh r5, [r5, #0x3a]
	adds r0, r0, r5
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016F40: .4byte gCamera

	thumb_func_start sub_8016F44
sub_8016F44: @ 0x08016F44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	mov sb, r1
	mov sl, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	ldr r0, _08017024 @ =sub_8017054
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08017028 @ =sub_8017658
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #8]
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r0, _0801702C @ =0x03000030
	adds r7, r4, r0
	ldr r1, _08017030 @ =0x03000044
	adds r0, r4, r1
	movs r6, #0
	mov r2, r8
	strh r2, [r0]
	adds r1, #2
	adds r0, r4, r1
	mov r2, sb
	strh r2, [r0]
	ldr r0, _08017034 @ =0x03000048
	adds r1, r4, r0
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
	str r6, [r5, #0x40]
	str r6, [r5, #0x3c]
	ldr r1, _08017038 @ =0x0300004C
	adds r0, r4, r1
	strh r6, [r0]
	ldr r2, _0801703C @ =0x0300004E
	adds r0, r4, r2
	strh r6, [r0]
	adds r1, #4
	adds r0, r4, r1
	strh r6, [r0]
	adds r2, #4
	adds r1, r4, r2
	movs r0, #1
	strh r0, [r1]
	movs r0, #4
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	mov r0, sl
	strh r0, [r5, #0xa]
	ldr r1, _08017040 @ =0x03000020
	adds r0, r4, r1
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08017044 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _08017048 @ =0x03000022
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0801704C @ =0x03000025
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	ldr r0, _08017050 @ =0x00002070
	str r0, [r5, #0x10]
	strh r6, [r7]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #2]
	strh r0, [r7, #4]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08017024: .4byte sub_8017054
_08017028: .4byte sub_8017658
_0801702C: .4byte 0x03000030
_08017030: .4byte 0x03000044
_08017034: .4byte 0x03000048
_08017038: .4byte 0x0300004C
_0801703C: .4byte 0x0300004E
_08017040: .4byte 0x03000020
_08017044: .4byte 0x03000021
_08017048: .4byte 0x03000022
_0801704C: .4byte 0x03000025
_08017050: .4byte 0x00002070

	thumb_func_start sub_8017054
sub_8017054: @ 0x08017054
	push {r4, r5, r6, lr}
	ldr r0, _080170D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	mov ip, r5
	adds r0, #0x30
	adds r6, r1, r0
	ldr r3, _080170D4 @ =0x0300004C
	adds r2, r1, r3
	ldrh r0, [r2]
	adds r0, #0x10
	ldr r3, _080170D8 @ =0x000003FF
	adds r4, r3, #0
	ands r0, r4
	strh r0, [r2]
	ldr r0, _080170DC @ =0x03000050
	adds r3, r1, r0
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r3]
	adds r0, r0, r1
	ands r0, r4
	strh r0, [r3]
	ldr r4, _080170E0 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #2
	str r0, [r5, #0x40]
	ldrh r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [r5, #0x3c]
	ldrh r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	strh r2, [r6, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	ble _080170E4
	movs r0, #0xf0
	lsls r0, r0, #2
	b _080170E8
	.align 2, 0
_080170D0: .4byte gCurTask
_080170D4: .4byte 0x0300004C
_080170D8: .4byte 0x000003FF
_080170DC: .4byte 0x03000050
_080170E0: .4byte gSineTable
_080170E4:
	movs r0, #0x88
	lsls r0, r0, #3
_080170E8:
	strh r0, [r5, #0x1a]
	mov r0, ip
	adds r0, #0x52
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	ble _08017110
	mov r0, ip
	adds r0, #0x50
	ldrh r0, [r0]
	ldr r1, _0801710C @ =0xFFFFFF00
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0801712C
	b _08017124
	.align 2, 0
_0801710C: .4byte 0xFFFFFF00
_08017110:
	mov r0, ip
	adds r0, #0x50
	ldrh r0, [r0]
	ldr r3, _08017128 @ =0xFFFFFF00
	adds r0, r0, r3
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801712C
_08017124:
	strh r2, [r6, #2]
	b _08017134
	.align 2, 0
_08017128: .4byte 0xFFFFFF00
_0801712C:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r6, #2]
_08017134:
	mov r1, ip
	adds r1, #0x46
	mov r0, ip
	adds r0, #0x4e
	ldrh r2, [r1]
	ldrh r0, [r0]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0
	ble _08017150
	subs r0, r2, #1
	b _08017156
_08017150:
	cmp r0, #0
	bge _08017158
	adds r0, r2, #1
_08017156:
	strh r0, [r3]
_08017158:
	mov r1, ip
	adds r1, #0x44
	mov r2, ip
	ldr r0, [r2, #0x3c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r2, _080171B4 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r6, #6]
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	ldrh r3, [r3]
	adds r0, r0, r3
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r6, #8]
	ldr r0, [r5, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r2, _080171B8 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl TransformSprite
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080171B4: .4byte gCamera
_080171B8: .4byte sa2__gUnknown_030054B8

	thumb_func_start sub_80171BC
sub_80171BC: @ 0x080171BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _0801723C @ =sub_8017244
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r2, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	strh r4, [r2]
	strh r5, [r2, #2]
	strh r6, [r2, #4]
	mov r1, r8
	strh r1, [r2, #6]
	ldr r3, _08017240 @ =gCamera
	ldrh r4, [r3, #2]
	strh r4, [r3, #0x14]
	adds r1, r4, #0
	adds r1, #0xa0
	strh r1, [r3, #0x16]
	ldrh r0, [r3]
	strh r0, [r3, #0x18]
	mov r5, r8
	strh r5, [r3, #0x1a]
	movs r5, #2
	ldrsh r0, [r2, r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	ble _0801722E
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r0, [r3, #0x16]
_0801722E:
	adds r0, r7, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801723C: .4byte sub_8017244
_08017240: .4byte gCamera

	thumb_func_start sub_8017244
sub_8017244: @ 0x08017244
	push {r4, r5, r6, lr}
	ldr r2, _0801726C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _08017270 @ =gCamera
	movs r1, #0
	ldrsh r3, [r5, r1]
	ldrh r4, [r0, #0x14]
	movs r6, #0x14
	ldrsh r1, [r0, r6]
	adds r6, r2, #0
	adds r2, r0, #0
	cmp r3, r1
	ble _08017274
	adds r0, r4, #1
	b _0801727A
	.align 2, 0
_0801726C: .4byte gCurTask
_08017270: .4byte gCamera
_08017274:
	cmp r3, r1
	bge _0801727C
	subs r0, r4, #1
_0801727A:
	strh r0, [r2, #0x14]
_0801727C:
	movs r0, #2
	ldrsh r3, [r5, r0]
	ldrh r0, [r2, #0x16]
	movs r4, #0x16
	ldrsh r1, [r2, r4]
	cmp r3, r1
	ble _0801728E
	adds r0, #1
	b _08017294
_0801728E:
	cmp r3, r1
	bge _08017296
	subs r0, #1
_08017294:
	strh r0, [r2, #0x16]
_08017296:
	movs r0, #4
	ldrsh r3, [r5, r0]
	ldrh r0, [r2, #0x18]
	movs r4, #0x18
	ldrsh r1, [r2, r4]
	cmp r3, r1
	ble _080172A8
	adds r0, #1
	b _080172AE
_080172A8:
	cmp r3, r1
	bge _080172B0
	subs r0, #1
_080172AE:
	strh r0, [r2, #0x18]
_080172B0:
	ldr r1, [r5]
	ldr r0, [r2, #0x14]
	cmp r1, r0
	bne _080172C6
	ldr r1, [r5, #4]
	ldr r0, [r2, #0x18]
	cmp r1, r0
	bne _080172C6
	ldr r0, [r6]
	bl TaskDestroy
_080172C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80172CC
sub_80172CC: @ 0x080172CC
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

	thumb_func_start sub_8017334
sub_8017334: @ 0x08017334
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
	ldr r0, _080174D8 @ =sub_8016B6C
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
_080174D8: .4byte sub_8016B6C

	thumb_func_start sub_80174DC
sub_80174DC: @ 0x080174DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08017538 @ =sub_80172CC
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
_08017538: .4byte sub_80172CC
_0801753C: .4byte gCamera

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
	bl sub_801769C
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

	thumb_func_start sub_80175A8
sub_80175A8: @ 0x080175A8
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

	thumb_func_start sub_80175C4
sub_80175C4: @ 0x080175C4
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

	thumb_func_start sub_8017658
sub_8017658: @ 0x08017658
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
	ldr r0, _08017698 @ =sub_8017334
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
_08017698: .4byte sub_8017334

@ Input:
@ R0: flags 0x2000
@ R1: vram*
	thumb_func_start sub_801769C
sub_801769C: @ 0x0801769C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r4, r0, #0
	mov sl, r1
	adds r6, r2, #0
	mov r8, r3
	ldr r1, [sp, #0x20]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0801773C @ =sub_8017750
	str r1, [sp]
	movs r1, #0x44
	adds r2, r4, #0
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r5, r1
	movs r3, #0
	str r3, [r1, #0x30]
	str r3, [r1, #0x34]
	movs r2, #0
	mov sb, r2
	strh r3, [r1, #0x38]
	strh r3, [r1, #0x3a]
	strh r3, [r1, #0x3c]
	strh r3, [r1, #0x3e]
	ldr r4, _08017740 @ =0x03000040
	adds r2, r5, r4
	strh r3, [r2]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	mov r2, sl
	str r2, [r1, #4]
	strh r3, [r1, #0x1a]
	strh r3, [r1, #8]
	strh r6, [r1, #0xa]
	subs r4, #0x20
	adds r2, r5, r4
	mov r4, r8
	strb r4, [r2]
	strh r3, [r1, #0x14]
	strh r3, [r1, #0x1c]
	ldr r2, _08017744 @ =0x03000021
	adds r4, r5, r2
	movs r2, #0xff
	strb r2, [r4]
	ldr r2, _08017748 @ =0x03000022
	adds r4, r5, r2
	movs r2, #0x10
	strb r2, [r4]
	ldr r4, _0801774C @ =0x03000025
	adds r5, r5, r4
	mov r2, sb
	strb r2, [r5]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r1, #0x28]
	str r3, [r1, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801773C: .4byte sub_8017750
_08017740: .4byte 0x03000040
_08017744: .4byte 0x03000021
_08017748: .4byte 0x03000022
_0801774C: .4byte 0x03000025

	thumb_func_start sub_8017750
sub_8017750: @ 0x08017750
	push {r4, r5, r6, lr}
	ldr r6, _080177D4 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldrh r0, [r5, #0x3c]
	ldrh r1, [r5, #0x38]
	adds r0, r0, r1
	strh r0, [r5, #0x38]
	ldrh r0, [r5, #0x3e]
	ldrh r1, [r5, #0x3a]
	adds r0, r0, r1
	strh r0, [r5, #0x3a]
	movs r0, #0x38
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x30]
	adds r0, r0, r1
	str r0, [r5, #0x30]
	movs r1, #0x3a
	ldrsh r2, [r5, r1]
	ldr r1, [r5, #0x34]
	adds r1, r1, r2
	str r1, [r5, #0x34]
	asrs r0, r0, #8
	ldr r3, _080177D8 @ =gCamera
	ldrh r2, [r3]
	subs r0, r0, r2
	strh r0, [r5, #0x16]
	asrs r1, r1, #8
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	ldr r0, _080177DC @ =0x03000040
	adds r4, r4, r0
	ldrh r0, [r4]
	cmp r0, #0
	beq _080177A2
	subs r0, #1
	strh r0, [r4]
_080177A2:
	ldrh r0, [r5, #0x16]
	adds r0, #0x20
	lsls r0, r0, #0x10
	movs r1, #0x98
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080177CA
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	subs r0, #0x20
	cmp r0, #0xa0
	bgt _080177CA
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080177E0
	ldrh r0, [r4]
	cmp r0, #0
	bne _080177E0
_080177CA:
	ldr r0, [r6]
	bl TaskDestroy
	b _080177E6
	.align 2, 0
_080177D4: .4byte gCurTask
_080177D8: .4byte gCamera
_080177DC: .4byte 0x03000040
_080177E0:
	adds r0, r5, #0
	bl DisplaySprite
_080177E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80177EC
sub_80177EC: @ 0x080177EC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8017800
sub_8017800: @ 0x08017800
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
	ldr r0, _080178A0 @ =sub_80178C0
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080178A4 @ =sub_80179F4
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
_080178A0: .4byte sub_80178C0
_080178A4: .4byte sub_80179F4
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

	thumb_func_start sub_80178C0
sub_80178C0: @ 0x080178C0
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

	thumb_func_start sub_80179F4
sub_80179F4: @ 0x080179F4
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

@ --- Start of multiplayer_event_mgr.c ---

	thumb_func_start Task_MultiplayerEventMgr_Send
Task_MultiplayerEventMgr_Send: @ 0x08017A30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08017AE0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r6, r0, #0x1e
	ldr r0, _08017AE4 @ =gMultiSioSend
	mov r8, r0
	ldrh r5, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	lsls r0, r6
	ands r5, r0
	movs r4, #0
	ldr r2, _08017AE8 @ =gMultiplayerConnections
	ldrb r0, [r2]
	movs r1, #1
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	beq _08017ABA
	ldr r0, _08017AEC @ =gMultiSioStatusFlags
	movs r7, #1
	ldr r0, [r0]
	mov ip, r0
	mov sb, r3
_08017A6E:
	adds r0, r7, #0
	lsls r0, r4
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _08017B34
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08017AF0 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r1, sb
	bne _08017AA4
	movs r2, #0
	cmp r5, #0
	bne _08017A92
	movs r2, #1
_08017A92:
	movs r3, #0
	ldrh r0, [r0, #8]
	lsls r1, r6
	ands r0, r1
	cmp r0, #0
	bne _08017AA0
	movs r3, #1
_08017AA0:
	cmp r2, r3
	bne _08017B34
_08017AA4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bhi _08017ABA
	mov r2, sl
	ldrb r0, [r2]
	asrs r0, r4
	ands r0, r7
	cmp r0, #0
	bne _08017A6E
_08017ABA:
	ldr r0, _08017AF4 @ =gRoomEventQueueWritePos
	ldr r3, _08017AF8 @ =gRoomEventQueueSendPos
	ldrb r4, [r3]
	ldrb r0, [r0]
	cmp r0, r4
	bne _08017B08
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08017AFC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08017B00 @ =gMultiSioSend+0xE
	str r0, [r1, #4]
	ldr r0, _08017B04 @ =0x81000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _08017B34
	.align 2, 0
_08017AE0: .4byte 0x04000128
_08017AE4: .4byte gMultiSioSend
_08017AE8: .4byte gMultiplayerConnections
_08017AEC: .4byte gMultiSioStatusFlags
_08017AF0: .4byte gMultiSioRecv
_08017AF4: .4byte gRoomEventQueueWritePos
_08017AF8: .4byte gRoomEventQueueSendPos
_08017AFC: .4byte 0x040000D4
_08017B00: .4byte gMultiSioSend+0xE
_08017B04: .4byte 0x81000003
_08017B08:
	ldr r2, _08017B44 @ =0x040000D4
	ldrb r0, [r3]
	lsls r0, r0, #3
	ldr r1, _08017B48 @ =gRoomEventQueue
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _08017B4C @ =gMultiSioSend+0xE
	str r0, [r2, #4]
	ldr r0, _08017B50 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #5
	lsls r0, r6
	mov r2, r8
	ldrh r1, [r2, #8]
	eors r0, r1
	strh r0, [r2, #8]
_08017B34:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017B44: .4byte 0x040000D4
_08017B48: .4byte gRoomEventQueue
_08017B4C: .4byte gMultiSioSend+0xE
_08017B50: .4byte 0x80000003

	thumb_func_start Task_MultiplayerEventMgr_Receive
Task_MultiplayerEventMgr_Receive: @ 0x08017B54
	push {r4, r5, r6, r7, lr}
	ldr r0, _08017B6C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r6, r0, #0x1e
	ldr r7, _08017B70 @ =gMultiSioSend
	movs r5, #0
	cmp r5, r6
	beq _08017BD0
	ldr r0, _08017B74 @ =gMultiplayerConnections
	ldrb r0, [r0]
	b _08017BE4
	.align 2, 0
_08017B6C: .4byte 0x04000128
_08017B70: .4byte gMultiSioSend
_08017B74: .4byte gMultiplayerConnections
_08017B78:
	ldr r0, _08017BF4 @ =gMultiSioStatusFlags
	movs r1, #1
	lsls r1, r5
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08017BD0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, _08017BF8 @ =gMultiSioRecv
	adds r3, r0, r1
	ldrh r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r2, r0
	bne _08017BD0
	ldrh r1, [r3, #8]
	adds r4, r2, #0
	lsls r4, r5
	ands r1, r4
	ldrh r0, [r7, #8]
	ands r0, r4
	cmp r1, r0
	beq _08017BD0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bhi _08017BCA
	ldr r0, _08017BFC @ =gRoomEventHandlers
	ldrb r1, [r3, #0xe]
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r5, #0
	bl _call_via_r2
_08017BCA:
	ldrh r0, [r7, #8]
	eors r4, r0
	strh r4, [r7, #8]
_08017BD0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bhi _08017BEC
	cmp r5, r6
	beq _08017BD0
	ldr r0, _08017C00 @ =gMultiplayerConnections
	ldrb r0, [r0]
	asrs r0, r5
_08017BE4:
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08017B78
_08017BEC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017BF4: .4byte gMultiSioStatusFlags
_08017BF8: .4byte gMultiSioRecv
_08017BFC: .4byte gRoomEventHandlers
_08017C00: .4byte gMultiplayerConnections

@ SA2: sub_8018AD8
	thumb_func_start ReceiveRoomEvent_ItemEffect
ReceiveRoomEvent_ItemEffect: @ 0x08017C04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r2, _08017C7C @ =gMultiplayerPlayerTasks
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r3, _08017C80 @ =0x04000128
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov ip, r0
	ldr r0, [r0, #0x5c]
	movs r1, #1
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	beq _08017C42
	b _08017F02
_08017C42:
	ldr r2, _08017C84 @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08017C52
	b _08017F02
_08017C52:
	ldr r1, _08017C88 @ =sa2__gUnknown_030054B4
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08017C6A
	b _08017F02
_08017C6A:
	ldrb r0, [r7, #0xf]
	cmp r0, #5
	bls _08017C72
	b _08017F02
_08017C72:
	lsls r0, r0, #2
	ldr r1, _08017C8C @ =_08017C90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08017C7C: .4byte gMultiplayerPlayerTasks
_08017C80: .4byte 0x04000128
_08017C84: .4byte gPlayer
_08017C88: .4byte sa2__gUnknown_030054B4
_08017C8C: .4byte _08017C90
_08017C90: @ jump table
	.4byte _08017CA8 @ case 0
	.4byte _08017D10 @ case 1
	.4byte _08017F02 @ case 2
	.4byte _08017EFC @ case 3
	.4byte _08017DA8 @ case 4
	.4byte _08017E84 @ case 5
_08017CA8:
	ldr r0, _08017D04 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08017CB4
	cmp r0, #5
	bne _08017CE0
_08017CB4:
	ldr r0, _08017D08 @ =gMultiplayerConnections
	ldrb r3, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r4
	ands r1, r3
	adds r0, r4, #4
	asrs r1, r0
	ldr r4, _08017D0C @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _08017CE0
	b _08017F02
_08017CE0:
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r5, #0x22]
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_804B7C8
	b _08017F02
	.align 2, 0
_08017D04: .4byte gGameMode
_08017D08: .4byte gMultiplayerConnections
_08017D0C: .4byte 0x04000128
_08017D10:
	ldr r0, _08017D98 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08017D1C
	cmp r0, #5
	bne _08017D48
_08017D1C:
	ldr r0, _08017D9C @ =gMultiplayerConnections
	ldrb r3, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r4
	ands r1, r3
	adds r0, r4, #4
	asrs r1, r0
	ldr r4, _08017DA0 @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _08017D48
	b _08017F02
_08017D48:
	movs r4, #0
	movs r3, #0
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r6, #0x5c]
	cmp r0, #0
	beq _08017D78
	ldr r5, _08017DA4 @ =gMultiplayerCharRings
	mov r2, r8
_08017D5A:
	adds r0, r3, r5
	ldrb r0, [r0]
	adds r0, r4, r0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bhi _08017D78
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08017D5A
_08017D78:
	movs r2, #0xe0
	lsls r2, r2, #0xb
	ands r1, r2
	cmp r1, #0
	bne _08017D92
	mov r1, ip
	ldr r0, [r1, #0x5c]
	ands r0, r2
	cmp r0, #0
	bne _08017D92
	cmp r4, #0
	beq _08017D92
	b _08017F02
_08017D92:
	bl sub_801C704
	b _08017F02
	.align 2, 0
_08017D98: .4byte gGameMode
_08017D9C: .4byte gMultiplayerConnections
_08017DA0: .4byte 0x04000128
_08017DA4: .4byte gMultiplayerCharRings
_08017DA8:
	ldr r0, _08017E70 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	ldrb r1, [r7, #0x10]
	lsrs r0, r0, #0x1e
	cmp r1, r0
	beq _08017DB8
	b _08017F02
_08017DB8:
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08017DC8
	b _08017F02
_08017DC8:
	ldr r4, [r5, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #0xf
	ands r4, r0
	cmp r4, #0
	beq _08017DD6
	b _08017F02
_08017DD6:
	adds r0, r5, #0
	bl InitializePlayer
	adds r0, r6, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r5]
	adds r0, r6, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r5, #4]
	ldr r0, _08017E74 @ =gMPlayInfo_BGM
	movs r1, #0x80
	lsls r1, r1, #1
	bl m4aMPlayTempoControl
	str r4, [r5, #0x10]
	ldr r1, [r5, #0x64]
	ldr r0, [r1, #0x1c]
	ldr r3, _08017E78 @ =0xFFFFCFFF
	ands r0, r3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r1, #0x1c]
	ldr r1, [r5, #0x68]
	ldr r0, [r1, #0x1c]
	ands r0, r3
	orrs r0, r2
	str r0, [r1, #0x1c]
	ldr r2, _08017E7C @ =gCamera
	ldrh r1, [r2, #0x26]
	ldr r0, _08017E80 @ =0x0000FFFC
	ands r0, r1
	strh r0, [r2, #0x26]
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r1, #1
	ands r0, r1
	adds r1, r5, #0
	adds r1, #0x27
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r1, r6, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #0x78
	strh r0, [r5, #0x1c]
	ldr r0, [r5]
	asrs r0, r0, #8
	ldrh r1, [r2, #0xc]
	adds r0, r0, r1
	subs r0, #0x78
	strh r0, [r2]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldrh r1, [r2, #0xe]
	adds r0, r0, r1
	subs r0, #0x50
	strh r0, [r2, #2]
	b _08017F02
	.align 2, 0
_08017E70: .4byte 0x04000128
_08017E74: .4byte gMPlayInfo_BGM
_08017E78: .4byte 0xFFFFCFFF
_08017E7C: .4byte gCamera
_08017E80: .4byte 0x0000FFFC
_08017E84:
	ldr r0, _08017EEC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08017E90
	cmp r0, #5
	bne _08017EBA
_08017E90:
	ldr r0, _08017EF0 @ =gMultiplayerConnections
	ldrb r3, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r4
	ands r1, r3
	adds r0, r4, #4
	asrs r1, r0
	ldr r4, _08017EF4 @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	beq _08017F02
_08017EBA:
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r5, #0x20]
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_804B7C8
	ldr r0, _08017EF8 @ =gMPlayInfo_BGM
	movs r1, #0x80
	bl m4aMPlayTempoControl
	b _08017F02
	.align 2, 0
_08017EEC: .4byte gGameMode
_08017EF0: .4byte gMultiplayerConnections
_08017EF4: .4byte 0x04000128
_08017EF8: .4byte gMPlayInfo_BGM
_08017EFC:
	ldr r1, _08017F0C @ =sa2__gUnknown_030053E0
	movs r0, #0x1e
	strb r0, [r1]
_08017F02:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017F0C: .4byte sa2__gUnknown_030053E0

@ SA2: sub_8018E00
	thumb_func_start ReceiveRoomEvent_ReachedStageGoal
ReceiveRoomEvent_ReachedStageGoal: @ 0x08017F10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r0, #0
	mov sb, r0
	movs r1, #0
	str r1, [sp, #4]
	mov sl, r1
	movs r2, #0
	str r2, [sp, #8]
	ldr r2, _08017F80 @ =gMultiplayerPlayerTasks
	lsls r0, r7, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp]
	movs r6, #0
	ldr r0, [r2]
	cmp r0, #0
	beq _08017FD8
	ldr r0, _08017F84 @ =gGameMode
	ldrb r5, [r0]
	movs r0, #0x10
	mov ip, r0
	adds r4, r2, #0
	ldr r1, _08017F88 @ =0x04000128
	mov r8, r1
_08017F56:
	ldr r2, [sp, #4]
	adds r2, #1
	str r2, [sp, #4]
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r5, #3
	beq _08017F8C
	cmp r5, #5
	beq _08017F8C
	ldr r0, [r1, #0x5c]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08017FCA
	add sb, r1
	add sl, r1
	b _08017FCA
	.align 2, 0
_08017F80: .4byte gMultiplayerPlayerTasks
_08017F84: .4byte gGameMode
_08017F88: .4byte 0x04000128
_08017F8C:
	ldr r0, _08017FF8 @ =gMultiplayerConnections
	ldrb r3, [r0]
	mov r2, ip
	lsls r2, r6
	ands r2, r3
	adds r0, r6, #4
	asrs r2, r0
	mov r0, r8
	ldr r1, [r0]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	mov r0, ip
	lsls r0, r1
	ands r3, r0
	mov r1, r8
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r2, r3
	beq _08017FCA
	ldr r2, _08017FFC @ =sa2__gUnknown_030054B4
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08017FCA
	movs r0, #1
	mov sb, r0
_08017FCA:
	adds r4, #4
	adds r6, #1
	cmp r6, #3
	bhi _08017FD8
	ldr r0, [r4]
	cmp r0, #0
	bne _08017F56
_08017FD8:
	ldr r1, _08017FFC @ =sa2__gUnknown_030054B4
	adds r0, r7, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08018000
	mov r2, sb
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	bl sa2__sub_8019CCC
	b _08018004
	.align 2, 0
_08017FF8: .4byte gMultiplayerConnections
_08017FFC: .4byte sa2__gUnknown_030054B4
_08018000:
	movs r0, #1
	str r0, [sp, #8]
_08018004:
	ldr r0, _08018180 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801801C
	mov r1, sl
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, [sp, #4]
	subs r2, #1
	str r2, [sp, #0xc]
	cmp r0, #5
	bne _08018106
_0801801C:
	movs r6, #0
	ldr r0, _08018184 @ =gMultiplayerPlayerTasks
	ldr r0, [r0]
	mov r1, sl
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, [sp, #4]
	subs r2, #1
	str r2, [sp, #0xc]
	cmp r0, #0
	beq _08018106
	movs r0, #0x10
	mov sl, r0
	mov r8, sl
	mov r1, r8
	lsls r1, r7
	mov r8, r1
	ldr r5, _08018188 @ =gPlayer
_08018040:
	cmp r6, r7
	beq _080180F4
	ldr r0, _0801818C @ =sa2__gUnknown_030054B4
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _080180F4
	ldr r0, _08018190 @ =gMultiplayerConnections
	ldrb r2, [r0]
	mov r0, sl
	lsls r0, r6
	ands r0, r2
	adds r1, r6, #4
	asrs r0, r1
	mov r1, r8
	ands r2, r1
	adds r1, r7, #4
	asrs r2, r1
	cmp r0, r2
	bne _080180F4
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov r2, sb
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl sa2__sub_8019CCC
	ldr r0, _08018194 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r6, r0
	bne _080180F4
	adds r0, r5, #0
	bl Player_TransitionCancelFlyingAndBoost
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x18
	ands r0, r1
	adds r1, #0x1c
	ands r0, r1
	subs r1, #0xc
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08018198 @ =0xFFFFFBFF
	ands r0, r1
	ldr r1, _0801819C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r4, r5, #0
	adds r4, #0x40
	movs r0, #0xf
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	adds r0, #0x3d
	movs r2, #0
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	strh r2, [r5, #0xc]
	strh r2, [r5, #8]
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r1, r0
	strh r2, [r5, #0x38]
	movs r0, #1
	orrs r1, r0
	movs r0, #0x1d
	strb r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	orrs r1, r0
	str r1, [r5, #0x10]
_080180F4:
	adds r6, #1
	cmp r6, #3
	bhi _08018106
	ldr r0, _08018184 @ =gMultiplayerPlayerTasks
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _08018040
_08018106:
	ldr r1, [sp]
	ldr r0, [r1, #0x5c]
	movs r2, #1
	orrs r0, r2
	str r0, [r1, #0x5c]
	mov r0, sb
	cmp r0, #0
	bne _08018130
	ldr r3, _080181A0 @ =gStageFlags
	ldrh r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08018130
	movs r0, #4
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _080181A4 @ =gCourseTime
	movs r0, #0xe1
	lsls r0, r0, #4
	str r0, [r1]
_08018130:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	cmp r1, r2
	bhs _08018144
	ldr r0, _08018180 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08018144
	cmp r0, #5
	bne _080181E4
_08018144:
	movs r6, #0
	ldr r0, _08018184 @ =gMultiplayerPlayerTasks
	ldr r0, [r0]
	cmp r0, #0
	beq _080181DA
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	movs r4, #0
	ldr r5, _08018188 @ =gPlayer
_08018158:
	cmp r6, r7
	beq _080181C2
	ldr r0, _0801818C @ =sa2__gUnknown_030054B4
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _080181C2
	ldr r0, _08018180 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08018176
	cmp r0, #5
	bne _080181A8
_08018176:
	lsrs r0, r4, #0x18
	movs r1, #1
	bl sa2__sub_8019CCC
	b _080181C2
	.align 2, 0
_08018180: .4byte gGameMode
_08018184: .4byte gMultiplayerPlayerTasks
_08018188: .4byte gPlayer
_0801818C: .4byte sa2__gUnknown_030054B4
_08018190: .4byte gMultiplayerConnections
_08018194: .4byte 0x04000128
_08018198: .4byte 0xFFFFFBFF
_0801819C: .4byte 0xFFFFFEFF
_080181A0: .4byte gStageFlags
_080181A4: .4byte gCourseTime
_080181A8:
	lsrs r0, r4, #0x18
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl sa2__sub_8019CCC
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	strh r0, [r5, #0x38]
_080181C2:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r4, r4, r0
	adds r6, #1
	cmp r6, #3
	bhi _080181DA
	ldr r0, _080181F4 @ =gMultiplayerPlayerTasks
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _08018158
_080181DA:
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _080181E4
	bl sub_8019DB0
_080181E4:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080181F4: .4byte gMultiplayerPlayerTasks

.if 0
.endif
