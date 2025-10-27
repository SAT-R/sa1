.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ NOTE: This needs to be merged with extra_stage_results, it seems.
@       Both share task pointers to eachother, so they seem to be the same module after all...
@       Also this uses 0x64 Task structs, which could be equal to ExtraStageResults_64().
@       It might make sense to do this module bottom->up.

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
	ldr r0, _08065CC4 @ =Task_8066DD0_164
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
	ldr r0, _08065CE4 @ =Task_8066E58_164
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
	ldr r0, _08065CF4 @ =Task_8066F14_164
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
	ldr r0, _08065CFC @ =Task_8066A5C_164
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
	ldr r0, _08065D08 @ =Task_8067020_164
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
	ldr r0, _08065D14 @ =Task_8066C78_164
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
_08065CC4: .4byte Task_8066DD0_164
_08065CC8: .4byte 0x00002120
_08065CCC: .4byte 0x06010020
_08065CD0: .4byte gUnknown_0868B3D8
_08065CD4: .4byte gSelectedCharacter
_08065CD8: .4byte 0x03000020
_08065CDC: .4byte 0x03000022
_08065CE0: .4byte 0x03000025
_08065CE4: .4byte Task_8066E58_164
_08065CE8: .4byte 0x06017D00
_08065CEC: .4byte gUnknown_0868B3F8
_08065CF0: .4byte 0x03000021
_08065CF4: .4byte Task_8066F14_164
_08065CF8: .4byte 0x06010BA0
_08065CFC: .4byte Task_8066A5C_164
_08065D00: .4byte 0x06010940
_08065D04: .4byte 0x0300015C
_08065D08: .4byte Task_8067020_164
_08065D0C: .4byte 0x06014020
_08065D10: .4byte gUnknown_0868B3E8
_08065D14: .4byte Task_8066C78_164
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
	ldr r0, _08065E00 @ =Task_nullsub_8066DC8_164
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
_08065E00: .4byte Task_nullsub_8066DC8_164
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
	ldr r0, _08065F3C @ =Task_8065F5C_48
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
_08065F3C: .4byte Task_8065F5C_48
_08065F40: .4byte 0x03000040
_08065F44: .4byte 0x03000042
_08065F48: .4byte 0x03000044
_08065F4C: .4byte 0x03000046
_08065F50: .4byte gUnknown_086BBE34
_08065F54: .4byte gUnknown_086BBC34
_08065F58: .4byte gUnknown_086BE7B4

	thumb_func_start Task_8065F5C_48
Task_8065F5C_48: @ 0x08065F5C
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
	ldr r0, _08066198 @ =Task_8066628
	str r0, [r1, #8]
	ldr r1, [r5, #0xc]
	ldr r0, _0806619C @ =Task_nullsub_8067050
	str r0, [r1, #8]
	ldr r0, _080661A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080661A4 @ =Task_80661A8_48
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
_08066198: .4byte Task_8066628
_0806619C: .4byte Task_nullsub_8067050
_080661A0: .4byte gCurTask
_080661A4: .4byte Task_80661A8_48

	thumb_func_start Task_80661A8_48
Task_80661A8_48: @ 0x080661A8
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
	ldr r0, _080662C8 @ =Task_8066DF4
	str r0, [r1, #8]
	ldr r0, _080662A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080662CC @ =Task_80662D0_48
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
_080662C8: .4byte Task_8066DF4
_080662CC: .4byte Task_80662D0_48

.if 0
.endif
