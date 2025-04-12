.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_TransitionSpStage
Task_TransitionSpStage: @ 0x080934F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _0809357C @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r6, r1, r0
	ldr r5, _08093580 @ =0x0300000C
	add r5, r8
	ldr r2, [r6]
	str r2, [sp]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, [sp]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08093584 @ =gCamera
	ldrh r0, [r3]
	lsrs r7, r2, #0x10
	mov sl, r7
	asrs r2, r2, #0x10
	mov ip, r2
	subs r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r2, [r3, #2]
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r3, r1, #0x10
	subs r2, r3, r2
	strh r2, [r5, #0x18]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0809356E
	movs r7, #0x18
	ldrsh r0, [r5, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _0809356E
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08093588
_0809356E:
	ldrb r0, [r6, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _080936EA
	.align 2, 0
_0809357C: .4byte gCurTask
_08093580: .4byte 0x0300000C
_08093584: .4byte gCamera
_08093588:
	ldr r0, _0809366C @ =gNumSingleplayerCharacters
	movs r7, #0
	ldrsb r7, [r0, r7]
	cmp r7, #2
	bne _080935F0
	ldr r4, _08093670 @ =gPartner
	adds r0, r5, #0
	mov r1, ip
	adds r2, r3, #0
	adds r3, r4, #0
	bl sub_80096B0
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _080935F0
	adds r0, r4, #0
	bl sa2__sub_8021BE0
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r7
	subs r1, #0xf8
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08093674 @ =0x0000F880
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x15
	strb r0, [r1]
	ldr r1, _08093678 @ =0x0300002C
	add r1, r8
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809367C @ =0x0300002D
	add r1, r8
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	movs r0, #0xaa
	bl m4aSongNumStart
_080935F0:
	ldr r4, _08093680 @ =gPlayer
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080936B8
	ldr r1, _08093684 @ =gCamera
	ldrh r0, [r6, #0x3c]
	strh r0, [r1]
	ldrh r0, [r6, #0x3e]
	strh r0, [r1, #2]
	ldr r0, [r4, #4]
	ldr r2, _08093688 @ =0xFFFFF880
	adds r0, r0, r2
	str r0, [r4, #4]
	asrs r0, r0, #8
	movs r3, #2
	ldrsh r1, [r1, r3]
	subs r0, r0, r1
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080936B0
	ldr r1, _0809368C @ =gUnknown_03005058
	adds r3, r4, #0
	adds r3, #0x48
	ldrh r0, [r3]
	strh r0, [r1]
	ldr r2, _08093690 @ =gMultiplayerUnlockedLevels
	adds r1, r4, #0
	adds r1, #0x4a
	ldrh r0, [r1]
	strh r0, [r2]
	mov r7, sl
	strh r7, [r3]
	mov r0, sb
	strh r0, [r1]
	ldr r0, _08093694 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r1, _08093698 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809369C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080936A0 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080936A4 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080936A8 @ =gVramGraphicsCopyCursor
	ldr r0, _080936AC @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateSpecialStageIntro
	b _080936EA
	.align 2, 0
_0809366C: .4byte gNumSingleplayerCharacters
_08093670: .4byte gPartner
_08093674: .4byte 0x0000F880
_08093678: .4byte 0x0300002C
_0809367C: .4byte 0x0300002D
_08093680: .4byte gPlayer
_08093684: .4byte gCamera
_08093688: .4byte 0xFFFFF880
_0809368C: .4byte gUnknown_03005058
_08093690: .4byte gMultiplayerUnlockedLevels
_08093694: .4byte gCurTask
_08093698: .4byte 0x0000FFFF
_0809369C: .4byte gBackgroundsCopyQueueCursor
_080936A0: .4byte gBackgroundsCopyQueueIndex
_080936A4: .4byte sa2__gUnknown_03005390
_080936A8: .4byte gVramGraphicsCopyCursor
_080936AC: .4byte gVramGraphicsCopyQueueIndex
_080936B0:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	b _080936E4
_080936B8:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080936E4
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x8f
	lsls r0, r0, #2
	strh r0, [r5, #0xa]
	subs r1, #1
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080936FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08093700 @ =Task_SpecialSpringMain
	str r0, [r1, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080936E4:
	adds r0, r5, #0
	bl DisplaySprite
_080936EA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080936FC: .4byte gCurTask
_08093700: .4byte Task_SpecialSpringMain

	thumb_func_start TaskDestructor_SpecialSpring
TaskDestructor_SpecialSpring: @ 0x08093704
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
.endif
