.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateCongratulationsAnimation
CreateCongratulationsAnimation: @ 0x08065884
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	ldr r1, _08065C70 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08065C74 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08065C78 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08065C7C @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08065C80 @ =gVramGraphicsCopyCursor
	ldr r0, _08065C84 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r0, _08065C88 @ =gFlags
	mov sl, r0
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r2, _08065C8C @ =0x04000200
	mov r8, r2
	ldrh r0, [r2]
	str r0, [sp, #0x54]
	ldr r6, _08065C90 @ =0x04000208
	ldrh r0, [r6]
	adds r7, r0, #0
	ldr r5, _08065C94 @ =0x04000004
	ldrh r3, [r5]
	mov sb, r3
	movs r0, #0
	strh r0, [r2]
	ldrh r0, [r2]
	movs r2, #0
	strh r2, [r6]
	ldrh r0, [r6]
	strh r2, [r5]
	ldrh r0, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	mov r3, sl
	str r1, [r3]
    @ The following is SlowDmaStop etc.
    @ (like in game_over.c for example)
	ldr r1, _08065C98 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _08065C9C @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _08065CA0 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _08065CA4 @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	bl WriteSaveGame
	add r0, sp, #0x54
	ldrh r1, [r0]
	mov r0, r8
	strh r1, [r0]
	ldrh r0, [r0]
	strh r7, [r6]
	ldrh r0, [r6]
	mov r1, sb
	strh r1, [r5]
	ldrh r0, [r5]
	bl m4aSoundVSyncOn
	mov r2, sl
	ldr r0, [r2]
	ldr r1, _08065CA8 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2]
	bl sub_80535FC
	bl UiGfxStackInit
	ldr r1, _08065CAC @ =gDispCnt
	movs r3, #0x8a
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08065CB0 @ =gBgCntRegs
	movs r4, #0
	ldr r0, _08065CB4 @ =0x00009D86
	strh r0, [r1]
	ldr r0, _08065CB8 @ =0x00001B8B
	strh r0, [r1, #2]
	ldr r0, _08065CBC @ =0x00009880
	strh r0, [r1, #4]
	ldr r0, _08065CC0 @ =gBgScrollRegs
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	ldr r0, _08065CC4 @ =Task_8066DD0
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x44]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r0, _08065CCC @ =0x06010020
	str r0, [r7, #4]
	ldr r1, _08065CD0 @ =gUnknown_0868B3D8
	ldr r3, _08065CD4 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _08065CD8 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r1, #0x50
	strh r1, [r7, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08065CDC @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08065CE0 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strh r4, [r7, #0x3c]
	movs r5, #0xf0
	lsls r5, r5, #3
	str r5, [r7, #0x44]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r7, #0x40]
	str r4, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r7, #0x48]
	ldr r0, _08065CE4 @ =Task_8066E58
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x4c]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r2, r1
	ldr r0, _08065CE8 @ =0x06017D00
	str r0, [r7, #4]
	ldr r1, _08065CEC @ =gUnknown_0868B3F8
	ldr r3, _08065CD4 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _08065CD8 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x96
	lsls r0, r0, #1
	mov sl, r0
	mov r1, sl
	strh r1, [r7, #0x16]
	movs r3, #0x6c
	mov sb, r3
	mov r0, sb
	strh r0, [r7, #0x18]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r3, _08065CF0 @ =0x03000021
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08065CDC @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08065CE0 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strh r4, [r7, #0x3c]
	str r5, [r7, #0x44]
	movs r0, #0x96
	lsls r0, r0, #9
	mov r8, r0
	str r0, [r7, #0x40]
	str r4, [r7, #0x4c]
	movs r6, #0xd8
	lsls r6, r6, #7
	str r6, [r7, #0x48]
	ldr r0, _08065CF4 @ =Task_8066F14
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x48]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r1, r2
	ldr r0, _08065CF8 @ =0x06010BA0
	str r0, [r7, #4]
	movs r0, #0xb8
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r3, _08065CD8 @ =0x03000020
	adds r0, r1, r3
	movs r2, #0
	strb r2, [r0]
	mov r3, sl
	strh r3, [r7, #0x16]
	mov r0, sb
	strh r0, [r7, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r3, _08065CF0 @ =0x03000021
	adds r2, r1, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2]
	ldr r2, _08065CDC @ =0x03000022
	adds r0, r1, r2
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08065CE0 @ =0x03000025
	adds r1, r1, r0
	movs r2, #0
	strb r2, [r1]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strh r4, [r7, #0x3c]
	str r5, [r7, #0x44]
	mov r1, r8
	str r1, [r7, #0x40]
	str r4, [r7, #0x4c]
	str r6, [r7, #0x48]
	ldr r0, _08065CFC @ =sub_8066A5C
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x40]
	ldrh r5, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r5, r2
	ldr r0, _08065D00 @ =0x06010940
	str r0, [r7, #4]
	movs r0, #0xc5
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r3, _08065CD8 @ =0x03000020
	adds r0, r5, r3
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xf8
	strh r0, [r7, #0x16]
	movs r2, #0x50
	strh r2, [r7, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r3, #1
	adds r1, r5, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08065CDC @ =0x03000022
	adds r0, r5, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r3, #4
	adds r0, r5, r3
	movs r1, #0
	strb r1, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strh r4, [r7, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r7, #0x44]
	movs r0, #0xf8
	lsls r0, r0, #8
	str r0, [r7, #0x40]
	str r4, [r7, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r7, #0x48]
	ldr r1, _08065D04 @ =0x0300015C
	adds r5, r5, r1
	movs r2, #0
	strb r2, [r5]
	ldr r0, _08065D08 @ =Task_8067020
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x50]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r2, r3
	strh r4, [r7, #0x3c]
	str r4, [r7, #0x4c]
	str r4, [r7, #0x48]
	str r4, [r7, #0x44]
	str r4, [r7, #0x40]
	ldr r0, _08065D0C @ =0x06014020
	str r0, [r7, #4]
	ldr r1, _08065D10 @ =gUnknown_0868B3E8
	ldr r3, _08065CD4 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, _08065CD8 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r1, #0x50
	strh r1, [r7, #0x18]
	movs r0, #0xc0
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	subs r0, #0xc1
	strb r0, [r1]
	ldr r1, _08065CDC @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08065CE0 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, _08065D14 @ =sub_8066C78
	str r4, [sp]
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065CC8 @ =0x00002120
	movs r3, #0
	b _08065D18
	.align 2, 0
_08065C70: .4byte 0x0000FFFF
_08065C74: .4byte gBackgroundsCopyQueueCursor
_08065C78: .4byte gBackgroundsCopyQueueIndex
_08065C7C: .4byte sa2__gUnknown_03005390
_08065C80: .4byte gVramGraphicsCopyCursor
_08065C84: .4byte gVramGraphicsCopyQueueIndex
_08065C88: .4byte gFlags
_08065C8C: .4byte 0x04000200
_08065C90: .4byte 0x04000208
_08065C94: .4byte 0x04000004
_08065C98: .4byte 0x040000B0
_08065C9C: .4byte 0x0000C5FF
_08065CA0: .4byte 0x00007FFF
_08065CA4: .4byte 0x040000D4
_08065CA8: .4byte 0xFFFF7FFF
_08065CAC: .4byte gDispCnt
_08065CB0: .4byte gBgCntRegs
_08065CB4: .4byte 0x00009D86
_08065CB8: .4byte 0x00001B8B
_08065CBC: .4byte 0x00009880
_08065CC0: .4byte gBgScrollRegs
_08065CC4: .4byte Task_8066DD0
_08065CC8: .4byte 0x00002120
_08065CCC: .4byte 0x06010020
_08065CD0: .4byte gUnknown_0868B3D8
_08065CD4: .4byte gSelectedCharacter
_08065CD8: .4byte 0x03000020
_08065CDC: .4byte 0x03000022
_08065CE0: .4byte 0x03000025
_08065CE4: .4byte Task_8066E58
_08065CE8: .4byte 0x06017D00
_08065CEC: .4byte gUnknown_0868B3F8
_08065CF0: .4byte 0x03000021
_08065CF4: .4byte Task_8066F14
_08065CF8: .4byte 0x06010BA0
_08065CFC: .4byte sub_8066A5C
_08065D00: .4byte 0x06010940
_08065D04: .4byte 0x0300015C
_08065D08: .4byte Task_8067020
_08065D0C: .4byte 0x06014020
_08065D10: .4byte gUnknown_0868B3E8
_08065D14: .4byte sub_8066C78
_08065D18:
	bl TaskCreate
	mov sl, r0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	strh r4, [r7, #0x3c]
	movs r0, #0xf
	str r0, [r7, #0x4c]
	str r4, [r7, #0x48]
	str r4, [r7, #0x44]
	str r4, [r7, #0x40]
	ldr r0, _08065DE8 @ =0x060109C0
	str r0, [r7, #4]
	movs r0, #0xc2
	lsls r0, r0, #2
	strh r0, [r7, #0xa] @ palette anim?
	ldr r1, _08065DEC @ =0x03000020
	adds r0, r2, r1
	movs r3, #0
	strb r3, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r1, #0x50
	strh r1, [r7, #0x18]
	strh r4, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r3, _08065DF0 @ =0x03000021
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08065DF4 @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08065DF8 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r5, #0
	add r6, sp, #0x10
	mov r7, sp
	adds r7, #0x3c
	str r7, [sp, #0x68]
	mov r0, sp
	adds r0, #0x3b
	str r0, [sp, #0x64]
	mov r1, sp
	adds r1, #0x38
	str r1, [sp, #0x58]
	mov r2, sp
	adds r2, #0x39
	str r2, [sp, #0x5c]
	mov r3, sp
	adds r3, #0x3a
	str r3, [sp, #0x60]
	ldr r7, _08065DFC @ =0x00000311
	mov r8, r7
_08065DA6:
	str r4, [sp]
	ldr r0, _08065E00 @ =sub_8066DC8
	movs r1, #0xb2
	lsls r1, r1, #1
	ldr r2, _08065E04 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	lsls r1, r5, #2
	add r1, sp
	adds r1, #4
	str r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	strh r4, [r7, #0x3c]
	movs r0, #0xf
	str r0, [r7, #0x4c]
	str r4, [r7, #0x48]
	str r5, [r7, #0x44]
	str r4, [r7, #0x40]
	cmp r5, #0
	bne _08065E0C
	ldr r0, _08065E08 @ =0x06011AA0
	str r0, [r7, #4]
	mov r2, r8
	strh r2, [r7, #0xa]
	ldr r3, _08065DEC @ =0x03000020
	adds r0, r1, r3
	strb r4, [r0]
	b _08065E38
	.align 2, 0
_08065DE8: .4byte 0x060109C0
_08065DEC: .4byte 0x03000020
_08065DF0: .4byte 0x03000021
_08065DF4: .4byte 0x03000022
_08065DF8: .4byte 0x03000025
_08065DFC: .4byte 0x00000311
_08065E00: .4byte sub_8066DC8
_08065E04: .4byte 0x00002120
_08065E08: .4byte 0x06011AA0
_08065E0C:
	cmp r5, #1
	bne _08065E28
	ldr r0, _08065E20 @ =0x06012340
	str r0, [r7, #4]
	mov r0, r8
	strh r0, [r7, #0xa]
	ldr r2, _08065E24 @ =0x03000020
	adds r0, r1, r2
	strb r5, [r0]
	b _08065E38
	.align 2, 0
_08065E20: .4byte 0x06012340
_08065E24: .4byte 0x03000020
_08065E28:
	ldr r0, _08065F34 @ =0x06012820
	str r0, [r7, #4]
	mov r3, r8
	strh r3, [r7, #0xa]
	ldr r0, _08065F38 @ =0x03000020
	adds r1, r1, r0
	movs r0, #2
	strb r0, [r1]
_08065E38:
	movs r0, #0xb4
	strh r0, [r7, #0x16]
	movs r0, #0x50
	strh r0, [r7, #0x18]
	strh r4, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x25
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #5
	mov sb, r1
	str r1, [r7, #0x10]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08065DA6
	ldr r0, _08065F3C @ =sub_8065F5C
	movs r2, #0x84
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r3, _08065F40 @ =0x03000040
	adds r1, r2, r3
	movs r5, #0
	strh r4, [r1]
	ldr r7, _08065F44 @ =0x03000042
	adds r1, r2, r7
	movs r3, #1
	strb r3, [r1]
	ldr r1, [sp, #0x50]
	str r1, [r0, #0xc]
	ldr r1, [sp, #4]
	str r1, [r0, #0x24]
	ldr r1, [sp, #8]
	str r1, [r0, #0x28]
	ldr r1, [sp, #0xc]
	str r1, [r0, #0x2c]
	ldr r7, [sp, #0x44]
	str r7, [r0, #0x18]
	mov r1, sl
	str r1, [r0, #0x10]
	ldr r7, [sp, #0x40]
	str r7, [r0, #0x14]
	ldr r1, [sp, #0x48]
	str r1, [r0, #0x1c]
	ldr r7, [sp, #0x4c]
	str r7, [r0, #0x20]
	ldr r7, _08065F48 @ =0x03000044
	adds r1, r2, r7
	strh r4, [r1]
	ldr r1, _08065F4C @ =0x03000046
	adds r2, r2, r1
	strh r4, [r2]
	strh r4, [r0]
	movs r2, #1
	strh r3, [r0, #2]
	movs r1, #8
	strh r1, [r0, #4]
	strh r4, [r0, #6]
	movs r4, #0x80
	strh r4, [r0, #8]
	strb r2, [r0, #0xa]
	bl sub_80543A4
	ldr r2, [sp, #0x68]
	strb r4, [r2]
	ldr r3, [sp, #0x64]
	strb r5, [r3]
	ldr r0, _08065F50 @ =gUnknown_086BBE34
	str r0, [r6, #0x14]
	movs r0, #0xa6
	lsls r0, r0, #6
	str r0, [r6, #0x18]
	ldr r0, _08065F54 @ =gUnknown_086BBC34
	str r0, [r6, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r6, #0x24]
	ldr r0, _08065F58 @ =gUnknown_086BE7B4
	str r0, [r6, #0x10]
	mov r7, sb
	str r7, [r6, #0x1c]
	ldr r0, [sp, #0x58]
	strb r5, [r0]
	ldr r1, [sp, #0x5c]
	strb r5, [r1]
	movs r0, #0x15
	ldr r2, [sp, #0x60]
	strb r0, [r2]
	adds r0, r6, #0
	bl sub_80528AC
	movs r0, #0x26
	bl m4aSongNumStart
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065F34: .4byte 0x06012820
_08065F38: .4byte 0x03000020
_08065F3C: .4byte sub_8065F5C
_08065F40: .4byte 0x03000040
_08065F44: .4byte 0x03000042
_08065F48: .4byte 0x03000044
_08065F4C: .4byte 0x03000046
_08065F50: .4byte gUnknown_086BBE34
_08065F54: .4byte gUnknown_086BBC34
_08065F58: .4byte gUnknown_086BE7B4

	thumb_func_start sub_8065F5C
sub_8065F5C: @ 0x08065F5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08066008 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r4, r1
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x20]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	adds r1, #0x40
	adds r0, r4, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r7, r0, #1
	adds r0, r5, #0
	bl sub_805423C
	cmp r7, #0xb4
	beq _08065FAA
	b _0806610A
_08065FAA:
	movs r6, #0
	ldr r0, _0806600C @ =0x03000030
	adds r0, r0, r4
	mov sb, r0
	movs r4, #0
	movs r1, #0xc8
	lsls r1, r1, #8
	mov r8, r1
_08065FBA:
	str r4, [sp]
	ldr r0, _08066010 @ =sub_806844C
	movs r1, #0x64
	ldr r2, _08066014 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	lsls r2, r6, #2
	mov r1, sp
	adds r1, r1, r2
	adds r1, #4
	str r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r3, r0
	str r4, [r1, #0x3c]
	cmp r6, #0
	bne _08066028
	mov r0, r8
	str r0, [r1, #0x54]
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [r1, #0x44]
	movs r0, #0x80
	str r0, [r1, #0x48]
	ldr r0, _08066018 @ =0xFFFFFC40
	str r0, [r1, #0x58]
	ldr r0, _0806601C @ =0x06012E80
	str r0, [r1, #4]
	ldr r0, _08066020 @ =0x00000316
	strh r0, [r1, #0xa]
	ldr r0, _08066024 @ =0x03000020
	adds r3, r3, r0
	strb r4, [r3]
	movs r0, #0x98
	lsls r0, r0, #3
	b _080660C0
	.align 2, 0
_08066008: .4byte gCurTask
_0806600C: .4byte 0x03000030
_08066010: .4byte sub_806844C
_08066014: .4byte 0x00002120
_08066018: .4byte 0xFFFFFC40
_0806601C: .4byte 0x06012E80
_08066020: .4byte 0x00000316
_08066024: .4byte 0x03000020
_08066028:
	cmp r6, #1
	bne _08066060
	mov r0, r8
	str r0, [r1, #0x54]
	str r4, [r1, #0x44]
	movs r0, #0x40
	str r0, [r1, #0x48]
	ldr r0, _08066050 @ =0xFFFFFC00
	str r0, [r1, #0x58]
	ldr r0, _08066054 @ =0x06012FC0
	str r0, [r1, #4]
	ldr r0, _08066058 @ =0x00000317
	strh r0, [r1, #0xa]
	ldr r0, _0806605C @ =0x03000020
	adds r3, r3, r0
	strb r4, [r3]
	movs r0, #0x90
	lsls r0, r0, #3
	b _080660C0
	.align 2, 0
_08066050: .4byte 0xFFFFFC00
_08066054: .4byte 0x06012FC0
_08066058: .4byte 0x00000317
_0806605C: .4byte 0x03000020
_08066060:
	cmp r6, #2
	bne _0806609C
	mov r0, r8
	str r0, [r1, #0x54]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1, #0x44]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r1, #0x48]
	ldr r0, _08066090 @ =0xFFFFFC80
	str r0, [r1, #0x58]
	ldr r0, _08066094 @ =0x06013260
	str r0, [r1, #4]
	movs r0, #0xc6
	lsls r0, r0, #2
	strh r0, [r1, #0xa]
	ldr r0, _08066098 @ =0x03000020
	adds r3, r3, r0
	strb r4, [r3]
	movs r0, #0x88
	lsls r0, r0, #3
	b _080660C0
	.align 2, 0
_08066090: .4byte 0xFFFFFC80
_08066094: .4byte 0x06013260
_08066098: .4byte 0x03000020
_0806609C:
	mov r0, r8
	str r0, [r1, #0x54]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r1, #0x44]
	movs r0, #0xc0
	str r0, [r1, #0x48]
	ldr r0, _0806617C @ =0xFFFFFB80
	str r0, [r1, #0x58]
	ldr r0, _08066180 @ =0x06013620
	str r0, [r1, #4]
	ldr r0, _08066184 @ =0x00000319
	strh r0, [r1, #0xa]
	ldr r0, _08066188 @ =0x03000020
	adds r3, r3, r0
	strb r4, [r3]
	movs r0, #0x80
	lsls r0, r0, #3
_080660C0:
	strh r0, [r1, #0x1a]
	movs r0, #0xb4
	strh r0, [r1, #0x16]
	movs r0, #0x50
	strh r0, [r1, #0x18]
	strh r4, [r1, #8]
	strh r4, [r1, #0x14]
	strh r4, [r1, #0x1c]
	adds r3, r1, #0
	adds r3, #0x21
	movs r0, #0xff
	strb r0, [r3]
	adds r3, #1
	movs r0, #0x10
	strb r0, [r3]
	adds r0, r1, #0
	adds r0, #0x25
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #0x10]
	mov r0, sb
	adds r1, r0, r2
	mov r0, sp
	adds r0, r0, r2
	adds r0, #4
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bhi _0806610A
	b _08065FBA
_0806610A:
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r7, r0
	bne _08066124
	ldr r0, [r5, #0x30]
	ldr r1, _0806618C @ =sub_80684B4
	str r1, [r0, #8]
	ldr r0, [r5, #0x34]
	str r1, [r0, #8]
	ldr r0, [r5, #0x38]
	str r1, [r0, #8]
	ldr r0, [r5, #0x3c]
	str r1, [r0, #8]
_08066124:
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r7, r0
	bls _08066154
	movs r7, #0
	ldr r0, [r5, #0x10]
	bl TaskDestroy
	ldr r1, [r5, #0x20]
	ldr r0, _08066190 @ =Task_8066E5C
	str r0, [r1, #8]
	ldr r1, [r5, #0x1c]
	ldr r0, _08066194 @ =Task_8066F30
	str r0, [r1, #8]
	ldr r1, [r5, #0x18]
	ldr r0, _08066198 @ =sub_8066628
	str r0, [r1, #8]
	ldr r1, [r5, #0xc]
	ldr r0, _0806619C @ =Task_nullsub_8067050
	str r0, [r1, #8]
	ldr r0, _080661A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080661A4 @ =sub_80661A8
	str r0, [r1, #8]
_08066154:
	adds r0, r5, #0
	adds r0, #0x40
	strh r7, [r0]
	ldr r1, [sp, #0x14]
	strh r7, [r1, #0x3c]
	ldr r0, [sp, #0x18]
	strh r7, [r0, #0x3c]
	ldr r1, [sp, #0x1c]
	strh r7, [r1, #0x3c]
	mov r0, sl
	strh r7, [r0, #0x3c]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806617C: .4byte 0xFFFFFB80
_08066180: .4byte 0x06013620
_08066184: .4byte 0x00000319
_08066188: .4byte 0x03000020
_0806618C: .4byte sub_80684B4
_08066190: .4byte Task_8066E5C
_08066194: .4byte Task_8066F30
_08066198: .4byte sub_8066628
_0806619C: .4byte Task_nullsub_8067050
_080661A0: .4byte gCurTask
_080661A4: .4byte sub_80661A8

	thumb_func_start sub_80661A8
sub_80661A8: @ 0x080661A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _080662A4 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r2, r1
	ldr r0, [r6, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r6, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r6, #0x20]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r3, _080662A8 @ =0x03000040
	adds r3, r3, r2
	mov sb, r3
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r5, r0, #1
	cmp r5, #0xd0
	bne _0806625E
	ldr r2, [r6, #0x30]
	ldrh r0, [r2, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r0, r3
	ldr r0, _080662AC @ =0xFFFFE200
	mov r8, r0
	str r0, [r7, #0x44]
	ldr r1, _080662B0 @ =0xFFFF8800
	mov ip, r1
	str r1, [r7, #0x54]
	movs r0, #0x80
	str r0, [r7, #0x48]
	movs r2, #0
	str r2, [r7, #0x58]
	ldr r3, [r6, #0x34]
	mov sl, r3
	ldrh r0, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	ldr r3, _080662B4 @ =0xFFFFC400
	str r3, [r7, #0x44]
	ldr r1, _080662B8 @ =0xFFFFA600
	str r1, [r7, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #1
	str r0, [r7, #0x48]
	str r2, [r7, #0x58]
	ldr r4, [r6, #0x38]
	ldrh r7, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r7, r0
	str r1, [r7, #0x44]
	str r3, [r7, #0x54]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r7, #0x48]
	str r2, [r7, #0x58]
	ldr r1, [r6, #0x3c]
	ldrh r0, [r1, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r0, r3
	mov r0, ip
	str r0, [r7, #0x44]
	mov r3, r8
	str r3, [r7, #0x54]
	movs r0, #0xc0
	str r0, [r7, #0x48]
	str r2, [r7, #0x58]
	ldr r0, _080662BC @ =sub_80683D8
	ldr r2, [r6, #0x30]
	str r0, [r2, #8]
	mov r3, sl
	str r0, [r3, #8]
	str r0, [r4, #8]
	str r0, [r1, #8]
_0806625E:
	movs r0, #0x8c
	lsls r0, r0, #1
	cmp r5, r0
	bls _08066282
	movs r5, #0
	ldr r1, [r6, #0x20]
	ldr r0, _080662C0 @ =Task_8066EBC
	str r0, [r1, #8]
	ldr r1, [r6, #0x1c]
	ldr r0, _080662C4 @ =Task_8066F90
	str r0, [r1, #8]
	ldr r1, [r6, #0x18]
	ldr r0, _080662C8 @ =sub_8066DF4
	str r0, [r1, #8]
	ldr r0, _080662A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080662CC @ =sub_80662D0
	str r0, [r1, #8]
_08066282:
	mov r1, sb
	strh r5, [r1]
	ldr r2, [sp]
	strh r5, [r2, #0x3c]
	ldr r3, [sp, #4]
	strh r5, [r3, #0x3c]
	ldr r0, [sp, #8]
	strh r5, [r0, #0x3c]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080662A4: .4byte gCurTask
_080662A8: .4byte 0x03000040
_080662AC: .4byte 0xFFFFE200
_080662B0: .4byte 0xFFFF8800
_080662B4: .4byte 0xFFFFC400
_080662B8: .4byte 0xFFFFA600
_080662BC: .4byte sub_80683D8
_080662C0: .4byte Task_8066EBC
_080662C4: .4byte Task_8066F90
_080662C8: .4byte sub_8066DF4
_080662CC: .4byte sub_80662D0

	thumb_func_start sub_80662D0
sub_80662D0: @ 0x080662D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08066350 @ =gCurTask
	ldr r0, [r0]
	mov ip, r0
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r2, r1
	ldr r7, [r3, #0x18]
	ldrh r0, [r7, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r6, [r3, #0x1c]
	ldrh r0, [r6, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r4, [r3, #0x20]
	ldrh r0, [r4, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08066354 @ =0x03000040
	adds r5, r2, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r2, r0, #1
	cmp r2, #0x10
	bls _08066334
	movs r2, #0
	ldr r0, [r3, #0x30]
	ldr r1, _08066358 @ =Task_8068360
	str r1, [r0, #8]
	ldr r0, [r3, #0x34]
	str r1, [r0, #8]
	ldr r0, [r3, #0x38]
	str r1, [r0, #8]
	ldr r0, [r3, #0x3c]
	str r1, [r0, #8]
	ldr r0, _0806635C @ =Task_80669A0
	str r0, [r4, #8]
	ldr r0, _08066360 @ =Task_8066FDC
	str r0, [r6, #8]
	ldr r0, _08066364 @ =Task_80666E0
	str r0, [r7, #8]
	ldr r0, _08066368 @ =Task_806636C
	mov r1, ip
	str r0, [r1, #8]
_08066334:
	strh r2, [r5]
	mov r0, sl
	strh r2, [r0, #0x3c]
	mov r1, sb
	strh r2, [r1, #0x3c]
	mov r0, r8
	strh r2, [r0, #0x3c]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066350: .4byte gCurTask
_08066354: .4byte 0x03000040
_08066358: .4byte Task_8068360
_0806635C: .4byte Task_80669A0
_08066360: .4byte Task_8066FDC
_08066364: .4byte Task_80666E0
_08066368: .4byte Task_806636C

	thumb_func_start Task_806636C
Task_806636C: @ 0x0806636C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080663D8 @ =gCurTask
	ldr r6, [r0]
	ldrh r2, [r6, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov ip, r0
	ldr r0, [r4, #0x20]
	ldrh r5, [r0, #6]
	adds r7, r5, r1
	ldr r0, _080663DC @ =0x03000040
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r3, r0, #1
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r3, r0
	bls _080663B2
	movs r3, #0
	ldr r0, [r4, #0x14]
	ldr r1, _080663E0 @ =sub_8066ACC
	str r1, [r0, #8]
	ldr r0, _080663E4 @ =sub_80663EC
	str r0, [r6, #8]
_080663B2:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r3, r0
	bne _080663C2
	ldr r0, _080663E8 @ =0x03000050
	adds r1, r5, r0
	movs r0, #1
	strh r0, [r1]
_080663C2:
	strh r3, [r2]
	mov r1, r8
	strh r3, [r1, #0x3c]
	mov r0, ip
	strh r3, [r0, #0x3c]
	strh r3, [r7, #0x3c]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080663D8: .4byte gCurTask
_080663DC: .4byte 0x03000040
_080663E0: .4byte sub_8066ACC
_080663E4: .4byte sub_80663EC
_080663E8: .4byte 0x03000050

	thumb_func_start sub_80663EC
sub_80663EC: @ 0x080663EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08066464 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r5, [r4, #0x14]
	ldrh r0, [r5, #6]
	adds r0, r0, r1
	mov ip, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	ldr r0, [r4, #0x20]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	adds r1, #0x40
	adds r2, r2, r1
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r3, r0, #1
	cmp r3, #0x3c
	bne _08066430
	ldr r0, _08066468 @ =sub_8066BA4
	str r0, [r5, #8]
_08066430:
	cmp r3, #0xc8
	bls _08066444
	movs r3, #0
	ldr r1, [r4, #0xc]
	ldr r0, _0806646C @ =Task_8067054
	str r0, [r1, #8]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _08066470 @ =sub_8066478
	str r0, [r1, #8]
_08066444:
	strh r3, [r2]
	ldr r1, _08066474 @ =0x000003FF
	adds r0, r3, r1
	mov r1, r8
	strh r0, [r1, #0x3c]
	mov r0, ip
	strh r3, [r0, #0x3c]
	strh r3, [r7, #0x3c]
	strh r3, [r6, #0x3c]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066464: .4byte gCurTask
_08066468: .4byte sub_8066BA4
_0806646C: .4byte Task_8067054
_08066470: .4byte sub_8066478
_08066474: .4byte 0x000003FF

	thumb_func_start sub_8066478
sub_8066478: @ 0x08066478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08066504 @ =gCurTask
	ldr r7, [r0]
	ldrh r2, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldr r6, [r4, #0x18]
	ldrh r0, [r6, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r4, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r4, #0x20]
	ldrh r5, [r0, #6]
	adds r1, r1, r5
	mov ip, r1
	ldr r0, _08066508 @ =0x03000040
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r3, r0, #1
	cmp r3, #0xf0
	bls _080664DA
	movs r3, #0
	ldr r0, [r4, #0x24]
	ldr r1, _0806650C @ =Task_8066D64
	str r1, [r0, #8]
	ldr r0, [r4, #0x28]
	str r1, [r0, #8]
	ldr r0, [r4, #0x2c]
	str r1, [r0, #8]
	ldr r0, _08066510 @ =sub_8066768
	str r0, [r6, #8]
	ldr r1, [r4, #0xc]
	ldr r0, _08066514 @ =Task_8067084
	str r0, [r1, #8]
	ldr r0, _08066518 @ =sub_8066520
	str r0, [r7, #8]
_080664DA:
	cmp r3, #1
	bne _080664E4
	ldr r1, _0806651C @ =0x03000050
	adds r0, r5, r1
	strh r3, [r0]
_080664E4:
	strh r3, [r2]
	mov r0, sl
	strh r3, [r0, #0x3c]
	mov r1, sb
	strh r3, [r1, #0x3c]
	mov r0, r8
	strh r3, [r0, #0x3c]
	mov r1, ip
	strh r3, [r1, #0x3c]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066504: .4byte gCurTask
_08066508: .4byte 0x03000040
_0806650C: .4byte Task_8066D64
_08066510: .4byte sub_8066768
_08066514: .4byte Task_8067084
_08066518: .4byte sub_8066520
_0806651C: .4byte 0x03000050

	thumb_func_start sub_8066520
sub_8066520: @ 0x08066520
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080665AC @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r4, #0x24]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r4, #0x2c]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r4, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r4, #0x1c]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	ldr r0, [r4, #0x20]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r0, _080665B0 @ =0x03000040
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r5, r0, #1
	movs r0, #0xaf
	lsls r0, r0, #2
	cmp r5, r0
	bls _080665CC
	ldr r1, _080665B4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080665B8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080665BC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080665C0 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080665C4 @ =gVramGraphicsCopyCursor
	ldr r0, _080665C8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateStaffCredits
	b _08066614
	.align 2, 0
_080665AC: .4byte gCurTask
_080665B0: .4byte 0x03000040
_080665B4: .4byte 0x0000FFFF
_080665B8: .4byte gBackgroundsCopyQueueCursor
_080665BC: .4byte gBackgroundsCopyQueueIndex
_080665C0: .4byte sa2__gUnknown_03005390
_080665C4: .4byte gVramGraphicsCopyCursor
_080665C8: .4byte gVramGraphicsCopyQueueIndex
_080665CC:
	ldr r0, _08066624 @ =0x0000029D
	cmp r5, r0
	bls _080665F2
	adds r0, #1
	cmp r5, r0
	bne _080665EC
	movs r1, #0
	strh r1, [r4]
	movs r2, #1
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	movs r0, #0xc0
	strh r0, [r4, #8]
	strb r2, [r4, #0xa]
_080665EC:
	adds r0, r4, #0
	bl sub_805423C
_080665F2:
	adds r0, r4, #0
	adds r0, #0x40
	strh r5, [r0]
	mov r0, sl
	strh r5, [r0, #0x3c]
	ldr r0, [sp]
	strh r5, [r0, #0x3c]
	ldr r0, [sp, #4]
	strh r5, [r0, #0x3c]
	ldr r0, [sp, #8]
	strh r5, [r0, #0x3c]
	mov r1, sb
	strh r5, [r1, #0x3c]
	mov r0, r8
	strh r5, [r0, #0x3c]
	strh r5, [r7, #0x3c]
	strh r5, [r6, #0x3c]
_08066614:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066624: .4byte 0x0000029D

	thumb_func_start sub_8066628
sub_8066628: @ 0x08066628
	push {r4, r5, r6, lr}
	ldr r0, _08066644 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r4, r5, #0
	ldrh r6, [r5, #0x3c]
	cmp r6, #0xf
	bne _0806664C
	ldr r1, _08066648 @ =gUnknown_0868B418
	b _0806665E
	.align 2, 0
_08066644: .4byte gCurTask
_08066648: .4byte gUnknown_0868B418
_0806664C:
	cmp r6, #0x14
	bne _08066658
	ldr r1, _08066654 @ =gUnknown_0868B428
	b _0806665E
	.align 2, 0
_08066654: .4byte gUnknown_0868B428
_08066658:
	cmp r6, #0x1e
	bne _08066686
	ldr r1, _080666C8 @ =gUnknown_0868B438
_0806665E:
	ldr r2, _080666CC @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _080666D0 @ =0x03000020
	adds r0, r3, r2
	strb r1, [r0]
	ldr r0, _080666D4 @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_08066686:
	cmp r6, #0x14
	bls _080666B6
	ldr r0, [r4, #0x48]
	ldr r1, _080666D8 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, _080666DC @ =0xFFFFC000
	cmp r0, r1
	bge _0806669A
	str r1, [r4, #0x48]
_0806669A:
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r5, #0x18]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x40]
	cmp r0, #0
	bge _080666B0
	movs r0, #0
	str r0, [r4, #0x40]
_080666B0:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r5, #0x16]
_080666B6:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080666C8: .4byte gUnknown_0868B438
_080666CC: .4byte gSelectedCharacter
_080666D0: .4byte 0x03000020
_080666D4: .4byte 0x03000021
_080666D8: .4byte 0xFFFFF800
_080666DC: .4byte 0xFFFFC000

	thumb_func_start Task_80666E0
Task_80666E0: @ 0x080666E0
	push {r4, r5, r6, lr}
	ldr r0, _08066750 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r5, r0
	adds r6, r3, #0
	ldrh r4, [r3, #0x3c]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r4, r0
	bne _08066724
	ldr r1, _08066754 @ =gUnknown_0868B448
	ldr r2, _08066758 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _0806675C @ =0x03000020
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _08066760 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_08066724:
	ldr r1, _08066764 @ =gSineTable
	movs r0, #0xff
	ands r4, r0
	lsls r0, r4, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldr r0, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x48]
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08066750: .4byte gCurTask
_08066754: .4byte gUnknown_0868B448
_08066758: .4byte gSelectedCharacter
_0806675C: .4byte 0x03000020
_08066760: .4byte 0x03000021
_08066764: .4byte gSineTable

	thumb_func_start sub_8066768
sub_8066768: @ 0x08066768
	push {r4, r5, r6, r7, lr}
	ldr r0, _080667B0 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r6, r5, #0
	adds r0, #0x30
	adds r4, r3, r0
	ldrh r7, [r5, #0x3c]
	cmp r7, #1
	bne _080667C4
	ldr r1, _080667B4 @ =gUnknown_0868B458
	ldr r2, _080667B8 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _080667BC @ =0x03000020
	adds r0, r3, r2
	strb r1, [r0]
	ldr r0, _080667C0 @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
	b _080667F6
	.align 2, 0
_080667B0: .4byte gCurTask
_080667B4: .4byte gUnknown_0868B458
_080667B8: .4byte gSelectedCharacter
_080667BC: .4byte 0x03000020
_080667C0: .4byte 0x03000021
_080667C4:
	cmp r7, #0xf0
	bne _080667F6
	ldr r1, _08066850 @ =gUnknown_0868B468
	ldr r2, _08066854 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _08066858 @ =0x03000020
	adds r0, r3, r2
	strb r1, [r0]
	ldr r0, _0806685C @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08066860 @ =0xFFFFFC00
	str r0, [r5, #0x4c]
_080667F6:
	ldr r0, _08066864 @ =0x0000012B
	cmp r7, r0
	bls _0806686C
	adds r0, #1
	cmp r7, r0
	bne _08066846
	ldr r1, _08066868 @ =gUnknown_0868B478
	ldr r2, _08066854 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r3, #0
	strh r0, [r5, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r3, [r4]
	movs r0, #0xe0
	lsls r0, r0, #3
	movs r1, #0xa
	bl Div
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	ldrh r0, [r5, #0x16]
	strh r0, [r4, #6]
	ldrh r0, [r5, #0x18]
	strh r0, [r4, #8]
_08066846:
	ldr r1, [r6, #0x4c]
	adds r1, #0x1e
	str r1, [r6, #0x4c]
	b _0806687C
	.align 2, 0
_08066850: .4byte gUnknown_0868B468
_08066854: .4byte gSelectedCharacter
_08066858: .4byte 0x03000020
_0806685C: .4byte 0x03000021
_08066860: .4byte 0xFFFFFC00
_08066864: .4byte 0x0000012B
_08066868: .4byte gUnknown_0868B478
_0806686C:
	ldr r1, _080668C0 @ =gSineTable
	movs r0, #0xff
	ands r0, r7
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
_0806687C:
	ldr r0, [r6, #0x48]
	adds r0, r0, r1
	str r0, [r6, #0x48]
	ldr r0, [r6, #0x48]
	asrs r0, r0, #8
	strh r0, [r5, #0x18]
	ldr r0, _080668C4 @ =0x0000012B
	cmp r7, r0
	bhi _08066890
	b _08066980
_08066890:
	adds r0, #1
	cmp r7, r0
	bne _080668D0
	ldr r3, _080668C8 @ =gUnknown_0868B488
	ldr r2, _080668CC @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r4, #6]
	subs r0, r0, r1
	strh r0, [r4, #6]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrh r0, [r5, #0x18]
	subs r0, r0, r1
	b _0806693E
	.align 2, 0
_080668C0: .4byte gSineTable
_080668C4: .4byte 0x0000012B
_080668C8: .4byte gUnknown_0868B488
_080668CC: .4byte gSelectedCharacter
_080668D0:
	ldr r0, _08066910 @ =0x0000012D
	cmp r7, r0
	bne _08066920
	ldr r2, _08066914 @ =gUnknown_0868B488
	ldr r3, _08066918 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, _0806691C @ =gSineTable
	adds r0, #0x58
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	ldrh r0, [r4, #6]
	adds r1, r1, r0
	strh r1, [r4, #6]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5, #0x18]
	adds r0, r0, r1
	b _0806693E
	.align 2, 0
_08066910: .4byte 0x0000012D
_08066914: .4byte gUnknown_0868B488
_08066918: .4byte gSelectedCharacter
_0806691C: .4byte gSineTable
_08066920:
	ldr r2, _08066974 @ =gSineTable
	ldr r0, _08066978 @ =0xFFFFFED4
	adds r1, r7, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	strh r0, [r4, #6]
	ldrh r0, [r5, #0x18]
_0806693E:
	strh r0, [r4, #8]
	ldrh r0, [r4, #2]
	adds r0, #4
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _08066954
	strh r1, [r4, #2]
_08066954:
	ldrh r0, [r4, #4]
	adds r0, #4
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	ble _08066964
	strh r1, [r4, #4]
_08066964:
	ldr r0, _0806697C @ =0x00001061
	str r0, [r5, #0x10]
	adds r0, r5, #0
	adds r1, r4, #0
	bl TransformSprite
	b _08066986
	.align 2, 0
_08066974: .4byte gSineTable
_08066978: .4byte 0xFFFFFED4
_0806697C: .4byte 0x00001061
_08066980:
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #0x10]
_08066986:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r7, r0
	bhi _0806699A
	adds r0, r5, #0
	bl DisplaySprite
_0806699A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_80669A0
Task_80669A0: @ 0x080669A0
	push {r4, r5, r6, r7, lr}
	ldr r0, _080669CC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	mov ip, r5
	ldrh r6, [r5, #0x3c]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r6, r0
	bne _080669D8
	ldr r0, _080669D0 @ =0x03000050
	adds r7, r4, r0
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _08066A16
	ldr r1, _080669D4 @ =gUnknown_0868B408
	b _080669EA
	.align 2, 0
_080669CC: .4byte gCurTask
_080669D0: .4byte 0x03000050
_080669D4: .4byte gUnknown_0868B408
_080669D8:
	cmp r6, #1
	bne _08066A16
	ldr r1, _08066A44 @ =0x03000050
	adds r7, r4, r1
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #0
	beq _08066A16
	ldr r1, _08066A48 @ =gUnknown_0868B3F8
_080669EA:
	ldr r2, _08066A4C @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r3, #0
	strh r0, [r5, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _08066A50 @ =0x03000020
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08066A54 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	strh r3, [r7]
_08066A16:
	ldr r1, _08066A58 @ =gSineTable
	movs r0, #0xff
	ands r6, r0
	lsls r0, r6, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	mov r2, ip
	ldr r0, [r2, #0x48]
	adds r0, r0, r1
	str r0, [r2, #0x48]
	asrs r0, r0, #8
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066A44: .4byte 0x03000050
_08066A48: .4byte gUnknown_0868B3F8
_08066A4C: .4byte gSelectedCharacter
_08066A50: .4byte 0x03000020
_08066A54: .4byte 0x03000021
_08066A58: .4byte gSineTable

	thumb_func_start sub_8066A5C
sub_8066A5C: @ 0x08066A5C
	push {r4, r5, lr}
	ldr r0, _08066AB8 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	ldrh r1, [r0, #0x3c]
	ldr r0, _08066ABC @ =0x0300015C
	adds r4, r5, r0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3f
	ble _08066A82
	movs r0, #0
	strb r0, [r4]
_08066A82:
	adds r0, r1, #0
	movs r1, #0x40
	bl Mod
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #1
	ldr r2, _08066AC0 @ =0x03000050
	adds r3, r5, r2
	adds r3, r3, r1
	ldr r1, _08066AC4 @ =gSineTable
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x1a
	strh r2, [r3]
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #1
	ldr r3, _08066AC8 @ =0x030000D6
	adds r0, r5, r3
	adds r0, r0, r1
	strh r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08066AB8: .4byte gCurTask
_08066ABC: .4byte 0x0300015C
_08066AC0: .4byte 0x03000050
_08066AC4: .4byte gSineTable
_08066AC8: .4byte 0x030000D6

	thumb_func_start sub_8066ACC
sub_8066ACC: @ 0x08066ACC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08066B8C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	mov sl, r6
	ldrh r7, [r6, #0x3c]
	ldr r0, _08066B90 @ =0x0300015C
	adds r5, r4, r0
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3f
	ble _08066AFC
	movs r0, #0
	strb r0, [r5]
_08066AFC:
	adds r0, r7, #0
	movs r1, #0x40
	bl Mod
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r3, _08066B94 @ =0x03000050
	adds r2, r4, r3
	adds r2, r2, r1
	ldr r1, _08066B98 @ =gSineTable
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x1a
	strh r1, [r2]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	ldr r2, _08066B9C @ =0x030000D6
	adds r4, r4, r2
	adds r0, r4, r0
	strh r1, [r0]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r5, #0
	mov r8, r4
	ldr r4, _08066BA0 @ =gUnknown_0868B498
	adds r3, r4, #1
	mov sb, r3
_08066B3C:
	lsls r2, r5, #1
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0xf8
	subs r0, r0, r7
	strh r0, [r6, #0x16]
	movs r1, #0xae
	lsls r1, r1, #1
	add r1, sl
	lsls r0, r5, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #0x3f
	ands r0, r1
	add r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	adds r0, #0x50
	adds r1, r1, r0
	strh r1, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08066B3C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066B8C: .4byte gCurTask
_08066B90: .4byte 0x0300015C
_08066B94: .4byte 0x03000050
_08066B98: .4byte gSineTable
_08066B9C: .4byte 0x030000D6
_08066BA0: .4byte gUnknown_0868B498

	thumb_func_start sub_8066BA4
sub_8066BA4: @ 0x08066BA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08066C60 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	mov sb, r6
	ldrh r1, [r6, #0x3c]
	ldr r0, _08066C64 @ =0x0300015C
	adds r5, r4, r0
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3f
	ble _08066BD2
	movs r0, #0
	strb r0, [r5]
_08066BD2:
	adds r0, r1, #0
	movs r1, #0x40
	bl Mod
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #1
	ldr r3, _08066C68 @ =0x03000050
	adds r2, r4, r3
	adds r2, r2, r1
	ldr r1, _08066C6C @ =gSineTable
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x1a
	strh r1, [r2]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	ldr r2, _08066C70 @ =0x030000D6
	adds r4, r4, r2
	adds r0, r4, r0
	strh r1, [r0]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r5, #0
	adds r7, r4, #0
	ldr r4, _08066C74 @ =gUnknown_0868B498
	adds r3, r4, #1
	mov r8, r3
_08066C12:
	lsls r2, r5, #1
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0xbc
	strh r0, [r6, #0x16]
	movs r1, #0xae
	lsls r1, r1, #1
	add r1, sb
	lsls r0, r5, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	movs r1, #0x3f
	ands r0, r1
	add r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r0, r0, #1
	adds r0, r7, r0
	ldrh r0, [r0]
	adds r0, #0x50
	adds r1, r1, r0
	strh r1, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08066C12
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066C60: .4byte gCurTask
_08066C64: .4byte 0x0300015C
_08066C68: .4byte 0x03000050
_08066C6C: .4byte gSineTable
_08066C70: .4byte 0x030000D6
_08066C74: .4byte gUnknown_0868B498

	thumb_func_start sub_8066C78
sub_8066C78: @ 0x08066C78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08066CDC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r7, r6, #0
	ldrh r0, [r6, #0x3c]
	adds r0, #1
	strh r0, [r6, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, _08066CE0 @ =0x03000021
	adds r1, r1, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	mov r8, r1
	ldr r0, _08066CE4 @ =gPseudoRandom
	mov sb, r0
	ldr r1, _08066CE8 @ =0x3C6EF35F
	mov sl, r1
_08066CB8:
	ldr r0, [sp]
	add r0, r8
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08066CEC
	mov r0, r8
	lsls r2, r0, #1
	adds r3, r7, #0
	adds r3, #0xd6
	adds r1, r3, r2
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	adds r4, r2, #0
	adds r2, r7, #0
	adds r2, #0x50
	b _08066D2E
	.align 2, 0
_08066CDC: .4byte gCurTask
_08066CE0: .4byte 0x03000021
_08066CE4: .4byte gPseudoRandom
_08066CE8: .4byte 0x3C6EF35F
_08066CEC:
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _08066D60 @ =0x00196225
	muls r0, r1, r0
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r1, #0x28
	bl Mod
	mov r1, r8
	lsls r4, r1, #1
	adds r5, r7, #0
	adds r5, #0xd6
	adds r1, r5, r4
	adds r0, #0x8c
	strh r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _08066D60 @ =0x00196225
	muls r0, r1, r0
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r1, #0xdc
	bl Mod
	adds r2, r7, #0
	adds r2, #0x50
	adds r1, r2, r4
	adds r0, #0x14
	strh r0, [r1]
	adds r3, r5, #0
_08066D2E:
	adds r0, r2, r4
	ldrh r0, [r0]
	strh r0, [r6, #0x16]
	adds r0, r3, r4
	ldrh r0, [r0]
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0xe
	bls _08066CB8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066D60: .4byte 0x00196225

	thumb_func_start Task_8066D64
Task_8066D64: @ 0x08066D64
	push {r4, r5, lr}
	ldr r0, _08066DBC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r5, r3, #0
	ldrh r2, [r3, #0x3c]
	ldr r0, _08066DC0 @ =gUnknown_0868B4BE
	ldr r1, [r3, #0x44]
	lsls r4, r1, #1
	adds r0, r4, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r2, r0
	bls _08066DB6
	subs r2, r2, r0
	lsls r1, r2, #1
	adds r1, r1, r2
	movs r0, #0x78
	strh r0, [r3, #0x16]
	movs r0, #0xb4
	subs r0, r0, r1
	strh r0, [r3, #0x18]
	ldr r1, _08066DC4 @ =gUnknown_0868B4B8
	adds r1, r4, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	bge _08066DAA
	strh r2, [r3, #0x18]
_08066DAA:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_08066DB6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08066DBC: .4byte gCurTask
_08066DC0: .4byte gUnknown_0868B4BE
_08066DC4: .4byte gUnknown_0868B4B8

	thumb_func_start sub_8066DC8
sub_8066DC8: @ 0x08066DC8
	bx lr
	.align 2, 0

	thumb_func_start sub_8066DCC
sub_8066DCC: @ 0x08066DCC
	bx lr
	.align 2, 0

	thumb_func_start Task_8066DD0
Task_8066DD0: @ 0x08066DD0
	push {r4, lr}
	ldr r0, _08066DF0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066DF0: .4byte gCurTask

	thumb_func_start sub_8066DF4
sub_8066DF4: @ 0x08066DF4
	push {r4, lr}
	ldr r0, _08066E30 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r0, #0x14
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x48]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066E30: .4byte gCurTask

	thumb_func_start sub_8066E34
sub_8066E34: @ 0x08066E34
	push {r4, lr}
	ldr r0, _08066E54 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066E54: .4byte gCurTask

	thumb_func_start Task_8066E58
Task_8066E58: @ 0x08066E58
	bx lr
	.align 2, 0

	thumb_func_start Task_8066E5C
Task_8066E5C: @ 0x08066E5C
	push {r4, lr}
	ldr r0, _08066EB0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r2, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x40]
	cmp r0, #0
	bge _08066E7C
	movs r0, #0
	str r0, [r4, #0x40]
_08066E7C:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	cmp r2, #0x14
	bls _08066E9C
	ldr r0, [r4, #0x48]
	ldr r1, _08066EB4 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, _08066EB8 @ =0xFFFFE200
	cmp r0, r1
	bge _08066E96
	str r1, [r4, #0x48]
_08066E96:
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
_08066E9C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066EB0: .4byte gCurTask
_08066EB4: .4byte 0xFFFFF800
_08066EB8: .4byte 0xFFFFE200

	thumb_func_start Task_8066EBC
Task_8066EBC: @ 0x08066EBC
	push {r4, lr}
	ldr r0, _08066F0C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	adds r4, r2, #0
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	cmp r0, #0
	bge _08066EDC
	movs r0, #0
	str r0, [r2, #0x40]
_08066EDC:
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	strh r0, [r2, #0x16]
	ldr r0, [r2, #0x48]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r2, #0x48]
	ldr r1, _08066F10 @ =0xFFFFE200
	cmp r0, r1
	bge _08066EF4
	str r1, [r2, #0x48]
_08066EF4:
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066F0C: .4byte gCurTask
_08066F10: .4byte 0xFFFFE200

	thumb_func_start Task_8066F14
Task_8066F14: @ 0x08066F14
	push {lr}
	ldr r0, _08066F2C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl UpdateSpriteAnimation
	pop {r0}
	bx r0
	.align 2, 0
_08066F2C: .4byte gCurTask

	thumb_func_start Task_8066F30
Task_8066F30: @ 0x08066F30
	push {r4, lr}
	ldr r0, _08066F84 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r2, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x40]
	cmp r0, #0
	bge _08066F50
	movs r0, #0
	str r0, [r4, #0x40]
_08066F50:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	cmp r2, #0x14
	bls _08066F70
	ldr r0, [r4, #0x48]
	ldr r1, _08066F88 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r1, _08066F8C @ =0xFFFFE200
	cmp r0, r1
	bge _08066F6A
	str r1, [r4, #0x48]
_08066F6A:
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
_08066F70:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066F84: .4byte gCurTask
_08066F88: .4byte 0xFFFFF800
_08066F8C: .4byte 0xFFFFE200

	thumb_func_start Task_8066F90
Task_8066F90: @ 0x08066F90
	push {r4, lr}
	ldr r0, _08066FD8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	adds r4, r2, #0
	ldr r0, [r2, #0x40]
	ldr r1, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	cmp r0, #0
	bge _08066FB0
	movs r0, #0
	str r0, [r2, #0x40]
_08066FB0:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x48]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066FD8: .4byte gCurTask

	thumb_func_start Task_8066FDC
Task_8066FDC: @ 0x08066FDC
	push {r4, lr}
	ldr r0, _08067018 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldrh r0, [r4, #0x3c]
	ldr r2, _0806701C @ =gSineTable
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldr r0, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067018: .4byte gCurTask
_0806701C: .4byte gSineTable

	thumb_func_start Task_8067020
Task_8067020: @ 0x08067020
	push {lr}
	ldr r0, _08067048 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r0, [r0, #0x3c]
	movs r1, #2
	bl Mod
	cmp r0, #0
	bne _08067042
	ldr r1, _0806704C @ =gBgScrollRegs
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
_08067042:
	pop {r0}
	bx r0
	.align 2, 0
_08067048: .4byte gCurTask
_0806704C: .4byte gBgScrollRegs

	thumb_func_start Task_nullsub_8067050
Task_nullsub_8067050: @ 0x08067050
	bx lr
	.align 2, 0

	thumb_func_start Task_8067054
Task_8067054: @ 0x08067054
	push {r4, lr}
	ldr r0, _0806707C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _08067080 @ =0x03000021
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806707C: .4byte gCurTask
_08067080: .4byte 0x03000021

	thumb_func_start Task_8067084
Task_8067084: @ 0x08067084
	push {r4, r5, lr}
	ldr r0, _080670E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	adds r5, r3, #0
	ldrh r1, [r3, #0x3c]
	ldr r0, _080670E4 @ =0x00000167
	cmp r1, r0
	bls _080670D8
	adds r0, #1
	cmp r1, r0
	bne _080670CC
	ldr r1, _080670E8 @ =gUnknown_0868B4A8
	ldr r2, _080670EC @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r2, _080670F0 @ =0x03000020
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _080670F4 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_080670CC:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_080670D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080670E0: .4byte gCurTask
_080670E4: .4byte 0x00000167
_080670E8: .4byte gUnknown_0868B4A8
_080670EC: .4byte gSelectedCharacter
_080670F0: .4byte 0x03000020
_080670F4: .4byte 0x03000021
