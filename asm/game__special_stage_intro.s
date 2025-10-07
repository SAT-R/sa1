.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateSpecialStageIntro
CreateSpecialStageIntro: @ 0x08068688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _0806887C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08068880 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08068884 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08068888 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0806888C @ =gVramGraphicsCopyCursor
	ldr r0, _08068890 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_80535FC
	bl UiGfxStackInit
	ldr r1, _08068894 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08068898 @ =gBgCntRegs
	movs r4, #0
	ldr r0, _0806889C @ =0x00009D86
	strh r0, [r1]
	ldr r1, _080688A0 @ =gBgScrollRegs
	strh r4, [r1]
	movs r0, #0x94
	lsls r0, r0, #1
	strh r0, [r1, #2]
	ldr r0, _080688A4 @ =Task_SpecialStageIntroInit
	ldr r6, _080688A8 @ =0x00002120
	str r4, [sp]
	movs r1, #0xc4
	adds r2, r6, #0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #8]
	ldrh r2, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r7, r2, r5
	ldr r0, _080688AC @ =0x06010020
	str r0, [r7, #4]
	ldr r1, _080688B0 @ =gUnknown_0868B584
	ldr r3, _080688B4 @ =gSelectedCharacter
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
	ldr r3, _080688B8 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r0, #0xb4
	strh r0, [r7, #0x18]
	adds r0, #0xcc
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r0, _080688BC @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r3, #2
	adds r1, r2, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080688C0 @ =0x03000025
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
	subs r0, #2
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	str r4, [r7, #0x30]
	ldr r0, _080688C4 @ =0xFFFFFF00
	str r0, [r7, #0x3c]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r7, #0x40]
	ldr r0, _080688C8 @ =0xFFFFFC30
	str r0, [r7, #0x34]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r7, #0x38]
	ldr r0, _080688CC @ =sub_8068BB0
	str r4, [sp]
	movs r1, #0xc4
	adds r2, r6, #0
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r0, [r0, #6]
	adds r7, r0, r5
	mov r8, r7
	str r4, [r7, #0x30]
	movs r0, #0xf
	str r0, [r7, #0x34]
	str r4, [r7, #0x38]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x40]
	movs r5, #0
	ldr r6, _080688D0 @ =gPseudoRandom
	ldr r1, _080688D4 @ =0x00196225
	mov sl, r1
	ldr r2, _080688D8 @ =0x3C6EF35F
	mov sb, r2
_08068794:
	ldr r0, [r6]
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	add r0, sb
	str r0, [r6]
	movs r1, #0x28
	bl Mod
	lsls r4, r5, #2
	mov r1, r8
	adds r1, #0x84
	adds r1, r1, r4
	subs r0, #0x14
	str r0, [r1]
	ldr r0, [r6]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sb
	str r0, [r6]
	movs r1, #0xdc
	bl Mod
	mov r1, r8
	adds r1, #0x44
	adds r1, r1, r4
	adds r0, #0x14
	str r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _08068794
	ldr r0, _080688DC @ =0x06010820
	str r0, [r7, #4]
	movs r1, #0
	movs r4, #0
	movs r0, #0xc2
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r0, #0x50
	strh r0, [r7, #0x18]
	strh r4, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r2, r7, #0
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	adds r2, #1
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x25
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, _080688E0 @ =sub_8068948
	movs r2, #0x84
	lsls r2, r2, #6
	str r4, [sp]
	movs r1, #0x20
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0, #0x18]
	movs r1, #1
	strb r1, [r0, #0x1a]
	ldr r2, [sp, #8]
	str r2, [r0, #0x10]
	ldr r3, [sp, #4]
	str r3, [r0, #0xc]
	strh r4, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0]
	movs r2, #1
	strh r1, [r0, #2]
	movs r1, #2
	strh r1, [r0, #4]
	strh r4, [r0, #6]
	movs r1, #0xa8
	lsls r1, r1, #1
	strh r1, [r0, #8]
	strb r2, [r0, #0xa]
	bl sub_80543A4
	movs r0, #0x29
	bl m4aSongNumStart
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806887C: .4byte 0x0000FFFF
_08068880: .4byte gBackgroundsCopyQueueCursor
_08068884: .4byte gBackgroundsCopyQueueIndex
_08068888: .4byte sa2__gUnknown_03005390
_0806888C: .4byte gVramGraphicsCopyCursor
_08068890: .4byte gVramGraphicsCopyQueueIndex
_08068894: .4byte gDispCnt
_08068898: .4byte gBgCntRegs
_0806889C: .4byte 0x00009D86
_080688A0: .4byte gBgScrollRegs
_080688A4: .4byte Task_SpecialStageIntroInit
_080688A8: .4byte 0x00002120
_080688AC: .4byte 0x06010020
_080688B0: .4byte gUnknown_0868B584
_080688B4: .4byte gSelectedCharacter
_080688B8: .4byte 0x03000020
_080688BC: .4byte 0x03000021
_080688C0: .4byte 0x03000025
_080688C4: .4byte 0xFFFFFF00
_080688C8: .4byte 0xFFFFFC30
_080688CC: .4byte sub_8068BB0
_080688D0: .4byte gPseudoRandom
_080688D4: .4byte 0x00196225
_080688D8: .4byte 0x3C6EF35F
_080688DC: .4byte 0x06010820
_080688E0: .4byte sub_8068948

	thumb_func_start sub_80688E4
sub_80688E4: @ 0x080688E4
	push {r4, lr}
	sub sp, #0x30
	adds r4, r0, #0
	bl UiGfxStackInit
	cmp r4, #1
	bne _08068932
	add r1, sp, #0x2c
	movs r2, #0
	movs r0, #0x80
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x2b
	strb r2, [r0]
	ldr r0, _0806893C @ =gUnknown_086BBE34
	str r0, [sp, #0x14]
	movs r0, #0xa6
	lsls r0, r0, #6
	str r0, [sp, #0x18]
	ldr r0, _08068940 @ =gUnknown_086BBC34
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, _08068944 @ =gUnknown_086BE7B4
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [sp, #0x1c]
	add r0, sp, #0x28
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	subs r1, #2
	movs r0, #0x15
	strb r0, [r1]
	mov r0, sp
	bl sub_80528AC
_08068932:
	add sp, #0x30
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806893C: .4byte gUnknown_086BBE34
_08068940: .4byte gUnknown_086BBC34
_08068944: .4byte gUnknown_086BE7B4

	thumb_func_start sub_8068948
sub_8068948: @ 0x08068948
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08068A0C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r5, r0, #1
	adds r0, r6, #0
	bl sub_805423C
	adds r0, r5, #0
	bl sub_80688E4
	cmp r5, #0x5a
	bls _08068A38
	movs r5, #0
	movs r4, #0
	strh r5, [r6, #0x18]
	str r5, [r7, #0x30]
	ldr r0, _08068A10 @ =gBgScrollRegs
	strh r5, [r0, #2]
	strh r5, [r6]
	movs r1, #1
	movs r0, #1
	strh r0, [r6, #2]
	movs r0, #2
	strh r0, [r6, #4]
	strh r5, [r6, #6]
	movs r0, #0xa8
	lsls r0, r0, #1
	strh r0, [r6, #8]
	strb r1, [r6, #0xa]
	ldr r0, _08068A14 @ =Task_8068CD4
	ldr r2, _08068A18 @ =0x00002120
	str r5, [sp]
	movs r1, #0xc4
	movs r3, #0
	bl TaskCreate
	str r0, [r6, #0x14]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r2, r3
	ldr r1, _08068A1C @ =0x06010C80
	str r1, [r0, #4]
	ldr r1, _08068A20 @ =0x0000032B
	strh r1, [r0, #0xa]
	adds r3, #0x20
	adds r1, r2, r3
	strb r4, [r1]
	movs r1, #0x78
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x18]
	strh r5, [r0, #0x1a]
	strh r5, [r0, #8]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x1c]
	ldr r1, _08068A24 @ =0x03000021
	adds r3, r2, r1
	movs r1, #0xff
	strb r1, [r3]
	ldr r1, _08068A28 @ =0x03000022
	adds r3, r2, r1
	movs r1, #0x10
	strb r1, [r3]
	ldr r3, _08068A2C @ =0x03000025
	adds r2, r2, r3
	strb r4, [r2]
	subs r1, #0x11
	str r1, [r0, #0x28]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #0x10]
	bl UpdateSpriteAnimation
	ldr r0, [r6, #0xc]
	bl TaskDestroy
	ldr r1, [r6, #0x10]
	ldr r0, _08068A30 @ =sub_8068B10
	str r0, [r1, #8]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08068A34 @ =sub_8068A78
	str r0, [r1, #8]
	b _08068A6A
	.align 2, 0
_08068A0C: .4byte gCurTask
_08068A10: .4byte gBgScrollRegs
_08068A14: .4byte Task_8068CD4
_08068A18: .4byte 0x00002120
_08068A1C: .4byte 0x06010C80
_08068A20: .4byte 0x0000032B
_08068A24: .4byte 0x03000021
_08068A28: .4byte 0x03000022
_08068A2C: .4byte 0x03000025
_08068A30: .4byte sub_8068B10
_08068A34: .4byte sub_8068A78
_08068A38:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r4, #0
	bl Div
	movs r1, #0x5a
	subs r1, r1, r0
	cmp r1, r5
	bne _08068A60
	movs r0, #0
	strh r0, [r6]
	movs r2, #1
	movs r1, #1
	strh r1, [r6, #2]
	strh r1, [r6, #4]
	strh r0, [r6, #6]
	strh r4, [r6, #8]
	strb r2, [r6, #0xa]
_08068A60:
	adds r0, r6, #0
	bl sub_805423C
	strh r5, [r6, #0x18]
	str r5, [r7, #0x30]
_08068A6A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8068A78
sub_8068A78: @ 0x08068A78
	push {r4, r5, r6, r7, lr}
	ldr r0, _08068ABC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, [r4, #0x10]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r5, r0, #1
	cmp r5, #0x96
	bls _08068AD8
	ldr r1, _08068AC0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08068AC4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08068AC8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08068ACC @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08068AD0 @ =gVramGraphicsCopyCursor
	ldr r0, _08068AD4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateSpecialStage
	b _08068B0A
	.align 2, 0
_08068ABC: .4byte gCurTask
_08068AC0: .4byte 0x0000FFFF
_08068AC4: .4byte gBackgroundsCopyQueueCursor
_08068AC8: .4byte gBackgroundsCopyQueueIndex
_08068ACC: .4byte sa2__gUnknown_03005390
_08068AD0: .4byte gVramGraphicsCopyCursor
_08068AD4: .4byte gVramGraphicsCopyQueueIndex
_08068AD8:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r6, #0xa8
	lsls r6, r6, #1
	adds r1, r6, #0
	bl Div
	movs r1, #0x96
	subs r1, r1, r0
	cmp r1, r5
	bne _08068B00
	movs r0, #0
	strh r0, [r4]
	movs r2, #1
	movs r1, #1
	strh r1, [r4, #2]
	strh r1, [r4, #4]
	strh r0, [r4, #6]
	strh r6, [r4, #8]
	strb r2, [r4, #0xa]
_08068B00:
	adds r0, r4, #0
	bl sub_805423C
	strh r5, [r4, #0x18]
	str r5, [r7, #0x30]
_08068B0A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8068B10
sub_8068B10: @ 0x08068B10
	push {r4, r5, r6, lr}
	ldr r0, _08068B98 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r5, r0
	adds r4, r3, #0
	ldr r6, [r3, #0x30]
	cmp r6, #0
	bne _08068B64
	ldr r1, _08068B9C @ =gUnknown_0868B594
	ldr r2, _08068BA0 @ =gSelectedCharacter
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
	ldr r2, _08068BA4 @ =0x03000020
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _08068BA8 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r3, #0x34]
	ldr r1, _08068BAC @ =0xFFFFFB00
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r3, #0x38]
	movs r0, #0x96
	lsls r0, r0, #8
	str r0, [r3, #0x40]
_08068B64:
	cmp r6, #0x28
	bls _08068B90
	ldr r2, [r4, #0x40]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x40]
	ldr r0, [r4, #0x34]
	adds r0, #0x40
	str r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	adds r1, r1, r0
	str r1, [r4, #0x38]
	asrs r2, r2, #8
	strh r2, [r4, #0x16]
	asrs r1, r1, #8
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08068B90:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068B98: .4byte gCurTask
_08068B9C: .4byte gUnknown_0868B594
_08068BA0: .4byte gSelectedCharacter
_08068BA4: .4byte 0x03000020
_08068BA8: .4byte 0x03000021
_08068BAC: .4byte 0xFFFFFB00

	thumb_func_start sub_8068BB0
sub_8068BB0: @ 0x08068BB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08068C10 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r7, r6, #0
	ldr r0, [r6, #0x30]
	adds r0, #1
	str r0, [r6, #0x30]
	str r0, [sp]
	ldr r0, _08068C14 @ =0x03000021
	adds r1, r1, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	mov r8, r1
	ldr r0, _08068C18 @ =gPseudoRandom
	mov sb, r0
	ldr r1, _08068C1C @ =0x3C6EF35F
	mov sl, r1
_08068BEC:
	ldr r0, [sp]
	add r0, r8
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08068C20
	mov r0, r8
	lsls r2, r0, #2
	adds r3, r7, #0
	adds r3, #0x84
	adds r1, r3, r2
	ldr r0, [r1]
	adds r0, #0x10
	str r0, [r1]
	adds r4, r2, #0
	adds r2, r7, #0
	adds r2, #0x44
	b _08068C62
	.align 2, 0
_08068C10: .4byte gCurTask
_08068C14: .4byte 0x03000021
_08068C18: .4byte gPseudoRandom
_08068C1C: .4byte 0x3C6EF35F
_08068C20:
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _08068C94 @ =0x00196225
	muls r0, r1, r0
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r1, #0x28
	bl Mod
	mov r1, r8
	lsls r4, r1, #2
	adds r5, r7, #0
	adds r5, #0x84
	adds r1, r5, r4
	subs r0, #0x14
	str r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _08068C94 @ =0x00196225
	muls r0, r1, r0
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r1, #0xdc
	bl Mod
	adds r2, r7, #0
	adds r2, #0x44
	adds r1, r2, r4
	adds r0, #0x14
	str r0, [r1]
	adds r3, r5, #0
_08068C62:
	adds r0, r2, r4
	ldr r0, [r0]
	strh r0, [r6, #0x16]
	adds r0, r3, r4
	ldr r0, [r0]
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0xf
	bls _08068BEC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068C94: .4byte 0x00196225

	thumb_func_start Task_SpecialStageIntroInit
Task_SpecialStageIntroInit: @ 0x08068C98
	push {r4, lr}
	ldr r0, _08068CCC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r1, [r4, #0x38]
	ldr r0, _08068CD0 @ =0xFFFFFC30
	adds r1, r1, r0
	str r1, [r4, #0x38]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	asrs r1, r1, #8
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068CCC: .4byte gCurTask
_08068CD0: .4byte 0xFFFFFC30

	thumb_func_start Task_8068CD4
Task_8068CD4: @ 0x08068CD4
	push {r4, lr}
	ldr r0, _08068D08 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x30]
	adds r0, #1
	str r0, [r4, #0x30]
	movs r1, #0x1e
	bl Div
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _08068D02
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08068D02:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068D08: .4byte gCurTask

@ Special Stage UI ???
	thumb_func_start sub_8068D0C
sub_8068D0C: @ 0x08068D0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	bl sub_80535FC
	bl UiGfxStackInit
	ldr r1, _08068F34 @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08068F38 @ =gBgCntRegs
	movs r4, #0
	ldr r0, _08068F3C @ =0x00009D86
	strh r0, [r1]
	ldr r1, _08068F40 @ =gBgScrollRegs
	strh r4, [r1]
	movs r0, #0x94
	lsls r0, r0, #1
	strh r0, [r1, #2]
	ldr r0, _08068F44 @ =Task_nullsub_806954C
	str r4, [sp]
	movs r1, #0x44
	ldr r2, _08068F48 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x44]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r2, r3
	ldr r0, _08068F4C @ =0x06010020
	str r0, [r7, #4]
	ldr r1, _08068F50 @ =gUnknown_0868B5A4
	ldr r5, _08068F54 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r3, #0x20
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r0, #0xb4
	strh r0, [r7, #0x18]
	adds r0, #0xcc
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r0, _08068F58 @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08068F5C @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08068F60 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	str r2, [r7, #0x28]
	movs r6, #0x80
	lsls r6, r6, #5
	str r6, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	str r4, [r7, #0x30]
	str r4, [r7, #0x3c]
	movs r0, #0xaa
	lsls r0, r0, #8
	str r0, [r7, #0x40]
	movs r0, #0x94
	lsls r0, r0, #3
	str r0, [r7, #0x34]
	ldr r0, _08068F64 @ =0xFFFFE000
	str r0, [r7, #0x38]
	str r4, [sp]
	ldr r0, _08068F68 @ =Task_strc44_806959C
	movs r1, #0x44
	ldr r2, _08068F48 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x48]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r2, r3
	ldr r0, _08068F6C @ =0x06010820
	str r0, [r7, #4]
	ldr r1, _08068F70 @ =gUnknown_0868B5B4
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r3, #0x20
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r7, #0x16]
	movs r0, #0x64
	strh r0, [r7, #0x18]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r3, #1
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08068F5C @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08068F60 @ =0x03000025
	adds r2, r2, r0
	movs r1, #0
	strb r1, [r2]
	mov r2, r8
	str r2, [r7, #0x28]
	str r6, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	str r4, [r7, #0x30]
	ldr r3, _08068F74 @ =0xFFFFFF00
	mov sb, r3
	str r3, [r7, #0x3c]
	movs r0, #0xaf
	lsls r0, r0, #9
	mov sl, r0
	str r0, [r7, #0x40]
	str r4, [r7, #0x34]
	movs r5, #0xc8
	lsls r5, r5, #7
	str r5, [r7, #0x38]
	str r4, [sp]
	ldr r0, _08068F68 @ =Task_strc44_806959C
	movs r1, #0x44
	ldr r2, _08068F48 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x4c]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r1, r2
	ldr r0, _08068F78 @ =0x060112A0
	str r0, [r7, #4]
	movs r0, #0xb8
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r3, _08068F7C @ =0x03000020
	adds r0, r1, r3
	movs r2, #0
	strb r2, [r0]
	movs r0, #0xaf
	lsls r0, r0, #1
	strh r0, [r7, #0x16]
	movs r3, #0x64
	strh r3, [r7, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r0, _08068F58 @ =0x03000021
	adds r2, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2]
	ldr r2, _08068F5C @ =0x03000022
	adds r0, r1, r2
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _08068F60 @ =0x03000025
	adds r1, r1, r0
	movs r2, #0
	strb r2, [r1]
	mov r3, r8
	str r3, [r7, #0x28]
	str r6, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	str r4, [r7, #0x30]
	mov r0, sb
	str r0, [r7, #0x3c]
	mov r1, sl
	str r1, [r7, #0x40]
	str r4, [r7, #0x34]
	str r5, [r7, #0x38]
	movs r5, #0
	add r6, sp, #0x14
	add r2, sp, #0x40
	mov sl, r2
	movs r3, #0x3f
	add r3, sp
	mov sb, r3
	mov r0, sp
	adds r0, #0x3c
	str r0, [sp, #0x50]
	mov r1, sp
	adds r1, #0x3d
	str r1, [sp, #0x54]
	mov r2, sp
	adds r2, #0x3e
	str r2, [sp, #0x58]
_08068EF0:
	str r4, [sp]
	ldr r0, _08068F80 @ =sub_8068360
	movs r1, #0x64
	ldr r2, _08068F48 @ =0x00002120
	movs r3, #0
	bl TaskCreate
	lsls r1, r5, #2
	add r1, sp
	adds r1, #4
	str r0, [r1]
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r7, r1, r3
	str r4, [r7, #0x3c]
	cmp r5, #0
	bne _08068F8C
	movs r0, #0xc8
	lsls r0, r0, #6
	str r0, [r7, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r7, #0x44]
	movs r0, #0x80
	str r0, [r7, #0x48]
	str r5, [r7, #0x58]
	ldr r0, _08068F84 @ =0x06016040
	str r0, [r7, #4]
	ldr r0, _08068F88 @ =0x00000316
	strh r0, [r7, #0xa]
	ldr r2, _08068F7C @ =0x03000020
	adds r0, r1, r2
	b _08069000
	.align 2, 0
_08068F34: .4byte gDispCnt
_08068F38: .4byte gBgCntRegs
_08068F3C: .4byte 0x00009D86
_08068F40: .4byte gBgScrollRegs
_08068F44: .4byte Task_nullsub_806954C
_08068F48: .4byte 0x00002120
_08068F4C: .4byte 0x06010020
_08068F50: .4byte gUnknown_0868B5A4
_08068F54: .4byte gSelectedCharacter
_08068F58: .4byte 0x03000021
_08068F5C: .4byte 0x03000022
_08068F60: .4byte 0x03000025
_08068F64: .4byte 0xFFFFE000
_08068F68: .4byte Task_strc44_806959C
_08068F6C: .4byte 0x06010820
_08068F70: .4byte gUnknown_0868B5B4
_08068F74: .4byte 0xFFFFFF00
_08068F78: .4byte 0x060112A0
_08068F7C: .4byte 0x03000020
_08068F80: .4byte sub_8068360
_08068F84: .4byte 0x06016040
_08068F88: .4byte 0x00000316
_08068F8C:
	cmp r5, #1
	bne _08068FB4
	movs r0, #0xc8
	lsls r0, r0, #7
	str r0, [r7, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x44]
	movs r0, #0x40
	str r0, [r7, #0x48]
	str r4, [r7, #0x58]
	ldr r0, _08068FAC @ =0x06016180
	str r0, [r7, #4]
	ldr r0, _08068FB0 @ =0x00000317
	b _08068FFA
	.align 2, 0
_08068FAC: .4byte 0x06016180
_08068FB0: .4byte 0x00000317
_08068FB4:
	cmp r5, #2
	bne _08068FE0
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r7, #0x54]
	str r0, [r7, #0x44]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r7, #0x48]
	str r4, [r7, #0x58]
	ldr r0, _08068FD8 @ =0x06016420
	str r0, [r7, #4]
	movs r0, #0xc6
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r2, _08068FDC @ =0x03000020
	adds r0, r1, r2
	b _08069000
	.align 2, 0
_08068FD8: .4byte 0x06016420
_08068FDC: .4byte 0x03000020
_08068FE0:
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r7, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r7, #0x44]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [r7, #0x48]
	str r4, [r7, #0x58]
	ldr r0, _080690E0 @ =0x06017080
	str r0, [r7, #4]
	ldr r0, _080690E4 @ =0x00000319
_08068FFA:
	strh r0, [r7, #0xa]
	ldr r3, _080690E8 @ =0x03000020
	adds r0, r1, r3
_08069000:
	strb r4, [r0]
	movs r0, #0xb4
	strh r0, [r7, #0x16]
	movs r0, #0x50
	strh r0, [r7, #0x18]
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
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
	movs r0, #0x80
	lsls r0, r0, #5
	mov r8, r0
	str r0, [r7, #0x10]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bhi _08069044
	b _08068EF0
_08069044:
	ldr r0, _080690EC @ =sub_80694E8
	movs r2, #0x84
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0x28
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	movs r5, #0
	strh r4, [r0, #0x1c]
	movs r3, #1
	strb r3, [r0, #0x1e]
	ldr r2, [sp, #0x44]
	str r2, [r0, #0xc]
	ldr r2, [sp, #0x48]
	str r2, [r0, #0x18]
	ldr r2, [sp, #0x4c]
	str r2, [r0, #0x14]
	ldr r2, _080690F0 @ =0x03000024
	adds r1, r1, r2
	strb r5, [r1]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0]
	movs r2, #1
	strh r3, [r0, #2]
	movs r1, #8
	strh r1, [r0, #4]
	strh r4, [r0, #6]
	movs r1, #0x94
	lsls r1, r1, #1
	strh r1, [r0, #8]
	strb r2, [r0, #0xa]
	bl sub_805423C
	movs r0, #0x80
	mov r3, sl
	strb r0, [r3]
	mov r0, sb
	strb r5, [r0]
	ldr r0, _080690F4 @ =gUnknown_086BBE34
	str r0, [r6, #0x14]
	movs r0, #0xa6
	lsls r0, r0, #6
	str r0, [r6, #0x18]
	ldr r0, _080690F8 @ =gUnknown_086BBC34
	str r0, [r6, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r6, #0x24]
	ldr r0, _080690FC @ =gUnknown_086BE7B4
	str r0, [r6, #0x10]
	mov r1, r8
	str r1, [r6, #0x1c]
	ldr r2, [sp, #0x50]
	strb r5, [r2]
	ldr r3, [sp, #0x54]
	strb r5, [r3]
	movs r0, #0x15
	ldr r1, [sp, #0x58]
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_80528AC
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080690E0: .4byte 0x06017080
_080690E4: .4byte 0x00000319
_080690E8: .4byte 0x03000020
_080690EC: .4byte sub_80694E8
_080690F0: .4byte 0x03000024
_080690F4: .4byte gUnknown_086BBE34
_080690F8: .4byte gUnknown_086BBC34
_080690FC: .4byte gUnknown_086BE7B4

	thumb_func_start Task_8069100
Task_8069100: @ 0x08069100
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0806927C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r0, [r6, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r6, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r6, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp, #8]
	movs r1, #0x1c
	ldrsh r0, [r6, r1]
	adds r0, #1
	mov sb, r0
	cmp r0, #1
	beq _0806913E
	b _080692C0
_0806913E:
	ldr r0, _08069280 @ =Task_8069634
	ldr r7, _08069284 @ =0x00002120
	movs r2, #0
	str r2, [sp]
	movs r1, #0x44
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r4, r1, r3
	ldr r0, _08069288 @ =0x06013820
	str r0, [r4, #4]
	ldr r0, _0806928C @ =0x000002FD
	strh r0, [r4, #0xa]
	ldr r2, _08069290 @ =0x03000020
	adds r0, r1, r2
	movs r3, #0
	strb r3, [r0]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	movs r2, #0xb4
	strh r2, [r4, #0x18]
	movs r3, #0
	strh r3, [r4, #0x1a]
	strh r3, [r4, #8]
	strh r3, [r4, #0x14]
	strh r3, [r4, #0x1c]
	ldr r0, _08069294 @ =0x03000021
	adds r2, r1, r0
	movs r0, #0xff
	strb r0, [r2]
	ldr r2, _08069298 @ =0x03000022
	adds r0, r1, r2
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _0806929C @ =0x03000025
	adds r1, r1, r0
	movs r2, #0
	strb r2, [r1]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r2, _080692A0 @ =0xFFFFFF00
	str r2, [r4, #0x3c]
	mov r3, sl
	ldr r0, [r3, #0x40]
	ldr r1, _080692A4 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x40]
	movs r2, #0
	str r2, [r4, #0x34]
	ldr r0, [r3, #0x38]
	movs r3, #0xa0
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r4, #0x38]
	ldr r0, _080692A8 @ =Task_strc44_806959C
	str r2, [sp]
	movs r1, #0x44
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	str r0, [r6, #0x10]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r0, _080692AC @ =0x06010AA0
	str r0, [r7, #4]
	ldr r3, _080692B0 @ =gUnknown_0868B5C4
	ldr r5, _080692B4 @ =gSelectedCharacter
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #2
	ldr r0, _080692B8 @ =gUnknown_08487134
	mov r8, r0
	ldr r4, _080692BC @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r4, r0]
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	strh r0, [r7, #0xa]
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #2
	movs r0, #0
	ldrsb r0, [r4, r0]
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r3, #2
	adds r1, r1, r3
	ldrh r1, [r1]
	ldr r3, _08069290 @ =0x03000020
	adds r0, r2, r3
	strb r1, [r0]
	movs r0, #0x78
	strh r0, [r7, #0x16]
	movs r1, #0xb4
	strh r1, [r7, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7, #0x1a]
	movs r3, #0
	strh r3, [r7, #8]
	strh r3, [r7, #0x14]
	strh r3, [r7, #0x1c]
	ldr r0, _08069294 @ =0x03000021
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08069298 @ =0x03000022
	adds r0, r2, r1
	movs r3, #0x10
	strb r3, [r0]
	ldr r0, _0806929C @ =0x03000025
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
	movs r0, #0
	str r0, [r7, #0x30]
	ldr r1, _080692A0 @ =0xFFFFFF00
	str r1, [r7, #0x3c]
	mov r2, sl
	ldr r0, [r2, #0x40]
	str r0, [r7, #0x40]
	movs r3, #0
	str r3, [r7, #0x34]
	ldr r0, [r2, #0x38]
	str r0, [r7, #0x38]
	b _080692CA
	.align 2, 0
_0806927C: .4byte gCurTask
_08069280: .4byte Task_8069634
_08069284: .4byte 0x00002120
_08069288: .4byte 0x06013820
_0806928C: .4byte 0x000002FD
_08069290: .4byte 0x03000020
_08069294: .4byte 0x03000021
_08069298: .4byte 0x03000022
_0806929C: .4byte 0x03000025
_080692A0: .4byte 0xFFFFFF00
_080692A4: .4byte 0xFFFFF800
_080692A8: .4byte Task_strc44_806959C
_080692AC: .4byte 0x06010AA0
_080692B0: .4byte gUnknown_0868B5C4
_080692B4: .4byte gSelectedCharacter
_080692B8: .4byte gUnknown_08487134
_080692BC: .4byte gCurrentLevel
_080692C0:
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
_080692CA:
	mov r2, sb
	cmp r2, #7
	bls _080692F6
	ldr r3, [sp, #8]
	ldr r2, [r3, #0x38]
	ldr r0, _08069364 @ =0x000063FF
	cmp r2, r0
	ble _080692F6
	ldr r1, _08069368 @ =0xFFFFFF00
	adds r0, r2, r1
	str r0, [r3, #0x38]
	ldr r2, [sp, #4]
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x38]
	mov r3, sl
	ldr r0, [r3, #0x38]
	adds r0, r0, r1
	str r0, [r3, #0x38]
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
_080692F6:
	mov r0, sb
	cmp r0, #1
	bne _08069320
	ldr r1, [sp, #8]
	ldr r0, [r1, #0x38]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r2, [sp, #8]
	str r0, [r2, #0x38]
	ldr r3, [sp, #4]
	ldr r0, [r3, #0x38]
	adds r0, r0, r1
	str r0, [r3, #0x38]
	mov r2, sl
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x38]
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
_08069320:
	adds r0, r6, #0
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08069388
	movs r3, #4
	ldrsh r0, [r6, r3]
	cmp r0, #4
	bne _08069388
	adds r1, r6, #0
	adds r1, #0x24
	ldrb r0, [r1]
	cmp r0, #0xa
	bls _08069384
	ldr r1, _0806936C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08069370 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08069374 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08069378 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0806937C @ =gVramGraphicsCopyCursor
	ldr r0, _08069380 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #1
	bl sub_805D048
	b _080693BE
	.align 2, 0
_08069364: .4byte 0x000063FF
_08069368: .4byte 0xFFFFFF00
_0806936C: .4byte 0x0000FFFF
_08069370: .4byte gBackgroundsCopyQueueCursor
_08069374: .4byte gBackgroundsCopyQueueIndex
_08069378: .4byte sa2__gUnknown_03005390
_0806937C: .4byte gVramGraphicsCopyCursor
_08069380: .4byte gVramGraphicsCopyQueueIndex
_08069384:
	adds r0, #1
	strb r0, [r1]
_08069388:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r4, #0x94
	lsls r4, r4, #1
	adds r1, r4, #0
	bl Div
	movs r1, #0x96
	lsls r1, r1, #1
	subs r1, r1, r0
	cmp r1, sb
	bne _080693B4
	movs r1, #0
	strh r1, [r6]
	movs r2, #1
	movs r0, #1
	strh r0, [r6, #2]
	movs r0, #4
	strh r0, [r6, #4]
	strh r1, [r6, #6]
	strh r4, [r6, #8]
	strb r2, [r6, #0xa]
_080693B4:
	mov r0, sb
	strh r0, [r6, #0x1c]
	mov r1, sb
	mov r2, sl
	str r1, [r2, #0x30]
_080693BE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_80693D0
Task_80693D0: @ 0x080693D0
	push {r4, r5, lr}
	ldr r0, _08069448 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	adds r5, r3, #0
	ldr r0, [r3, #0x30]
	cmp r0, #0
	bne _0806941A
	ldr r1, _0806944C @ =gUnknown_0868B634
	ldr r2, _08069450 @ =gSelectedCharacter
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
	ldr r2, _08069454 @ =0x03000020
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, _08069458 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r3, #0x38]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r3, #0x38]
_0806941A:
	ldr r0, [r3, #0x40]
	ldr r2, _0806945C @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r3, #0x40]
	ldr r1, _08069460 @ =0xFFFF9C00
	cmp r0, r1
	bge _0806942A
	str r1, [r3, #0x40]
_0806942A:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	strh r0, [r5, #0x16]
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069448: .4byte gCurTask
_0806944C: .4byte gUnknown_0868B634
_08069450: .4byte gSelectedCharacter
_08069454: .4byte 0x03000020
_08069458: .4byte 0x03000021
_0806945C: .4byte 0xFFFFFF00
_08069460: .4byte 0xFFFF9C00

	thumb_func_start sub_8069464
sub_8069464: @ 0x08069464
	push {r4, r5, lr}
	ldr r0, _080694D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r5, r0
	adds r4, r3, #0
	ldr r0, [r3, #0x30]
	cmp r0, #0
	bne _080694AA
	ldr r1, _080694D8 @ =gUnknown_0868B644
	ldr r2, _080694DC @ =gSelectedCharacter
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
	ldr r2, _080694E0 @ =0x03000020
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _080694E4 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r3, #0x38]
_080694AA:
	ldr r2, [r4, #0x40]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x40]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #8
	strh r2, [r4, #0x16]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080694D4: .4byte gCurTask
_080694D8: .4byte gUnknown_0868B644
_080694DC: .4byte gSelectedCharacter
_080694E0: .4byte 0x03000020
_080694E4: .4byte 0x03000021

	thumb_func_start sub_80694E8
sub_80694E8: @ 0x080694E8
	push {r4, r5, r6, r7, lr}
	ldr r7, _08069530 @ =gCurTask
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	adds r4, r0, #1
	adds r0, r5, #0
	bl sub_805423C
	cmp r4, #0x8c
	bne _08069512
	ldr r1, [r5, #0xc]
	ldr r0, _08069534 @ =Task_8069550
	str r0, [r1, #8]
_08069512:
	cmp r4, #0xa1
	bls _08069540
	movs r0, #0x2d
	bl m4aSongNumStart
	movs r4, #0
	strh r4, [r5, #0x1c]
	str r4, [r6, #0x30]
	ldr r1, [r5, #0xc]
	ldr r0, _08069538 @ =Task_80693D0
	str r0, [r1, #8]
	ldr r1, [r7]
	ldr r0, _0806953C @ =Task_8069100
	str r0, [r1, #8]
	b _08069544
	.align 2, 0
_08069530: .4byte gCurTask
_08069534: .4byte Task_8069550
_08069538: .4byte Task_80693D0
_0806953C: .4byte Task_8069100
_08069540:
	strh r4, [r5, #0x1c]
	str r4, [r6, #0x30]
_08069544:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_nullsub_806954C
Task_nullsub_806954C: @ 0x0806954C
	bx lr
	.align 2, 0

	thumb_func_start Task_8069550
Task_8069550: @ 0x08069550
	push {r4, lr}
	ldr r0, _08069594 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	adds r4, r1, #0
	ldr r0, [r1, #0x38]
	movs r2, #0x94
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1, #0x38]
	movs r2, #0xa0
	lsls r2, r2, #7
	cmp r0, r2
	ble _08069574
	str r2, [r1, #0x38]
_08069574:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x38]
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
_08069594: .4byte gCurTask

	thumb_func_start sub_8069598
sub_8069598: @ 0x08069598
	bx lr
	.align 2, 0

	thumb_func_start Task_strc44_806959C
Task_strc44_806959C: @ 0x0806959C
	push {r4, lr}
	ldr r0, _080695DC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	adds r4, r1, #0
	ldr r0, [r1, #0x40]
	ldr r2, _080695E0 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1, #0x40]
	ldr r2, _080695E4 @ =0xFFFF9C00
	cmp r0, r2
	bge _080695BC
	str r2, [r1, #0x40]
_080695BC:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x38]
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
_080695DC: .4byte gCurTask
_080695E0: .4byte 0xFFFFFF00
_080695E4: .4byte 0xFFFF9C00

@ inline ?
	thumb_func_start sub_80695E8
sub_80695E8: @ 0x080695E8
	push {r4, lr}
	ldr r0, _08069628 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	adds r4, r1, #0
	ldr r0, [r1, #0x40]
	ldr r2, _0806962C @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1, #0x40]
	ldr r2, _08069630 @ =0xFFFF9C00
	cmp r0, r2
	bge _08069608
	str r2, [r1, #0x40]
_08069608:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x38]
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
_08069628: .4byte gCurTask
_0806962C: .4byte 0xFFFFFF00
_08069630: .4byte 0xFFFF9C00

	thumb_func_start Task_8069634
Task_8069634: @ 0x08069634
	push {r4, r5, lr}
	ldr r5, _08069660 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _08069664
	ldr r0, [r5]
	bl TaskDestroy
	b _08069682
	.align 2, 0
_08069660: .4byte gCurTask
_08069664:
	ldr r0, [r4, #0x10]
	ldr r1, _08069688 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
_08069682:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069688: .4byte 0xFFFFFBFF
