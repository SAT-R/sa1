.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_BounceBlock
CreateEntity_BounceBlock: @ 0x080750C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080751B0 @ =Task_BounceBlock
	ldr r1, _080751B4 @ =TaskDestructor_BounceBlock
	str r1, [sp]
	movs r1, #0x44
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _080751B8 @ =0x0300000C
	adds r5, r2, r1
	movs r7, #0
	mov sl, r7
	movs r3, #0
	strh r4, [r0, #4]
	strh r6, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r7, r8
	strb r7, [r0, #9]
	str r3, [r0, #0x3c]
	ldr r1, _080751BC @ =0x03000040
	adds r0, r2, r1
	mov r7, sl
	strb r7, [r0]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r5, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x18]
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	strb r0, [r1]
	movs r0, #0xc
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r3, [sp, #8]
	strh r3, [r5, #8]
	ldr r1, _080751C0 @ =sBounceBlockAnims
	ldr r0, _080751C4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r2, [sp, #4]
	ldr r1, _080751C8 @ =0x0300002C
	adds r0, r2, r1
	mov r7, sl
	strb r7, [r0]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r0, _080751CC @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r7, _080751D0 @ =0x0300002E
	adds r1, r2, r7
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080751D4 @ =0x03000031
	adds r2, r2, r0
	mov r1, sl
	strb r1, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r7, #0x80
	lsls r7, r7, #6
	str r7, [r5, #0x10]
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
_080751B0: .4byte Task_BounceBlock
_080751B4: .4byte TaskDestructor_BounceBlock
_080751B8: .4byte 0x0300000C
_080751BC: .4byte 0x03000040
_080751C0: .4byte sBounceBlockAnims
_080751C4: .4byte gCurrentLevel
_080751C8: .4byte 0x0300002C
_080751CC: .4byte 0x0300002D
_080751D0: .4byte 0x0300002E
_080751D4: .4byte 0x03000031

	thumb_func_start Task_BounceBlock
Task_BounceBlock: @ 0x080751D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0807527C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r1, _08075280 @ =0x0300000C
	adds r4, r5, r1
	ldr r7, [r6]
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08075284 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_80753D0
	cmp r0, #0
	beq _08075248
	ldr r0, _08075288 @ =0x03000040
	adds r1, r5, r0
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #0
	str r0, [r6, #0x3c]
	ldr r0, _0807528C @ =0x0300002C
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08075290 @ =sub_80752A4
	str r0, [r1, #8]
	movs r0, #0xaa
	bl m4aSongNumStart
_08075248:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807526C
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0807526C
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08075294
_0807526C:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _0807527C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807529A
	.align 2, 0
_0807527C: .4byte gCurTask
_08075280: .4byte 0x0300000C
_08075284: .4byte gCamera
_08075288: .4byte 0x03000040
_0807528C: .4byte 0x0300002C
_08075290: .4byte sub_80752A4
_08075294:
	adds r0, r4, #0
	bl DisplaySprite
_0807529A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80752A4
sub_80752A4: @ 0x080752A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08075370 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r2, r8
	adds r7, r2, r0
	ldr r6, _08075374 @ =0x0300000C
	add r6, r8
	ldr r0, [r7]
	mov sl, r0
	ldrb r5, [r7, #8]
	lsls r5, r5, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	mov r1, sl
	ldrb r4, [r1, #1]
	lsls r4, r4, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _08075378 @ =gCamera
	mov sb, r2
	ldrh r0, [r2]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x16]
	ldr r2, _0807537C @ =gSineTable
	ldr r0, [r7, #0x3c]
	ldr r1, _08075380 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x80
	lsls r1, r1, #3
	bl Div
	mov r2, sb
	ldrh r1, [r2, #2]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r1, r4, r1
	adds r1, r1, r0
	strh r1, [r6, #0x18]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80753D0
	cmp r0, #0
	beq _0807533A
	ldr r1, _08075384 @ =0x03000040
	add r1, r8
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #0
	str r0, [r7, #0x3c]
	ldr r1, _08075388 @ =0x0300002C
	add r1, r8
	strb r0, [r1]
	movs r0, #0xaa
	bl m4aSongNumStart
_0807533A:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807535E
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0807535E
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807538C
_0807535E:
	ldrb r0, [r7, #8]
	mov r1, sl
	strb r0, [r1]
	ldr r0, _08075370 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080753B6
	.align 2, 0
_08075370: .4byte gCurTask
_08075374: .4byte 0x0300000C
_08075378: .4byte gCamera
_0807537C: .4byte gSineTable
_08075380: .4byte 0x000003FF
_08075384: .4byte 0x03000040
_08075388: .4byte 0x0300002C
_0807538C:
	ldr r0, [r7, #0x3c]
	adds r0, #0x5a
	str r0, [r7, #0x3c]
	ldr r1, _080753C4 @ =0x03000040
	add r1, r8
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080753AA
	ldr r2, _080753C8 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _080753CC @ =Task_BounceBlock
	str r0, [r1, #8]
_080753AA:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_080753B6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080753C4: .4byte 0x03000040
_080753C8: .4byte gCurTask
_080753CC: .4byte Task_BounceBlock

	thumb_func_start sub_80753D0
sub_80753D0: @ 0x080753D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	mov r8, r2
	movs r7, #0
	movs r4, #0
	ldr r5, _080753FC @ =gPartner
	ldr r6, _08075400 @ =gPlayer
_080753E8:
	cmp r4, #0
	beq _08075404
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080753F8
	b _080755DC
_080753F8:
	ldr r3, _08075400 @ =gPlayer
	b _08075412
	.align 2, 0
_080753FC: .4byte gPartner
_08075400: .4byte gPlayer
_08075404:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	ands r1, r0
	ldr r3, _0807544C @ =gPlayer
	cmp r1, #0
	beq _08075412
	b _080755DC
_08075412:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _08075424
	ldr r3, _08075450 @ =gPartner
_08075424:
	mov r0, sb
	bl sub_80096B0
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08075434
	b _080755DC
_08075434:
	ldr r0, _08075454 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08075440
	cmp r0, #5
	bne _0807545C
_08075440:
	cmp r4, #0
	beq _08075458
	movs r0, #0x1e
	strh r0, [r5, #0x1c]
	b _0807545C
	.align 2, 0
_0807544C: .4byte gPlayer
_08075450: .4byte gPartner
_08075454: .4byte gGameMode
_08075458:
	movs r0, #0x1e
	strh r0, [r6, #0x1c]
_0807545C:
	ldr r0, _08075478 @ =gPlayer
	cmp r4, #0
	beq _08075464
	ldr r0, _0807547C @ =gPartner
_08075464:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r4, #0
	beq _08075480
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807548A
	.align 2, 0
_08075478: .4byte gPlayer
_0807547C: .4byte gPartner
_08075480:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807548A:
	ldr r3, _0807549C @ =gPlayer
	cmp r4, #0
	beq _080754A0
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	b _080754A8
	.align 2, 0
_0807549C: .4byte gPlayer
_080754A0:
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
_080754A8:
	cmp r4, #0
	beq _080754BC
	ldr r0, [r5, #0x10]
	ldr r1, _080754B8 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _080754C4
	.align 2, 0
_080754B8: .4byte 0xFFFFFEFF
_080754BC:
	ldr r0, [r6, #0x10]
	ldr r1, _080754D4 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
_080754C4:
	cmp r4, #0
	beq _080754D8
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _080754E2
	.align 2, 0
_080754D4: .4byte 0xFFFFFEFF
_080754D8:
	ldr r0, [r6, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_080754E2:
	cmp r4, #0
	beq _080754F2
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _080754FC
_080754F2:
	ldr r0, [r6, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_080754FC:
	ldr r0, _08075518 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _08075526
	cmp r4, #0
	beq _0807551C
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08075526
	.align 2, 0
_08075518: .4byte gSelectedCharacter
_0807551C:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r6, #0x10]
_08075526:
	cmp r4, #0
	beq _08075536
	ldrh r0, [r5, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08075540
	b _08075556
_08075536:
	ldrh r0, [r3, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08075556
_08075540:
	cmp r4, #0
	beq _0807554E
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0x10]
	b _0807558A
_0807554E:
	ldr r0, [r6, #0x10]
	movs r1, #1
	orrs r0, r1
	b _08075588
_08075556:
	cmp r4, #0
	beq _08075566
	ldrh r0, [r5, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08075570
	b _0807558A
_08075566:
	ldrh r0, [r3, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807558A
_08075570:
	cmp r4, #0
	beq _08075580
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807558A
_08075580:
	ldr r0, [r6, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08075588:
	str r0, [r6, #0x10]
_0807558A:
	cmp r4, #0
	beq _08075596
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	b _0807559C
_08075596:
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r3, #0xa]
_0807559C:
	cmp r4, #0
	beq _080755AC
	movs r0, #0x17
	ldr r1, _080755A8 @ =gPartner + 0x40
	b _080755B2
	.align 2, 0
_080755A8: .4byte gPartner + 0x40
_080755AC:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x17
_080755B2:
	strb r0, [r1]
	ldr r0, _080755FC @ =gPlayer
	cmp r4, #0
	beq _080755BC
	ldr r0, _08075600 @ =gPartner
_080755BC:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _080755FC @ =gPlayer
	cmp r4, #0
	beq _080755CA
	ldr r1, _08075600 @ =gPartner
_080755CA:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _080755FC @ =gPlayer
	cmp r4, #0
	beq _080755D6
	ldr r1, _08075600 @ =gPartner
_080755D6:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r7, #1
_080755DC:
	adds r4, #1
	ldr r0, _08075604 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _080755EC
	b _080753E8
_080755EC:
	adds r0, r7, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080755FC: .4byte gPlayer
_08075600: .4byte gPartner
_08075604: .4byte gNumSingleplayerCharacters

	thumb_func_start TaskDestructor_BounceBlock
TaskDestructor_BounceBlock: @ 0x08075608
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
