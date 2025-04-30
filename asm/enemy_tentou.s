.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Tentou
CreateEntity_Tentou: @ 0x08074364
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08074498 @ =Task_TentouMain
	ldr r1, _0807449C @ =TaskDestructor_EntityShared
	str r1, [sp]
	movs r1, #0x5c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	adds r0, #0xc
	adds r0, r0, r3
	mov sl, r0
	movs r1, #0
	mov r8, r1
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r2, sb
	str r2, [r7]
	ldrb r0, [r2]
	strb r0, [r7, #8]
	strb r6, [r7, #9]
	movs r0, #0xa0
	rsbs r0, r0, #0
	str r0, [r7, #0x3c]
	str r1, [r7, #0x40]
	ldr r1, _080744A0 @ =0x03000044
	adds r0, r3, r1
	mov r2, r8
	strh r2, [r0]
	adds r1, #2
	adds r0, r3, r1
	strh r2, [r0]
	mov r2, r8
	str r2, [r7, #0x48]
	mov r0, sb
	ldrb r1, [r0, #4]
	ldr r2, _080744A4 @ =0x0300004C
	adds r0, r3, r2
	strb r1, [r0]
	mov r0, r8
	str r0, [r7, #0x50]
	str r0, [r7, #0x54]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	mov r2, sl
	strh r0, [r2, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r2, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, sb
	strb r0, [r2]
	movs r0, #6
	str r3, [sp, #4]
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #4]
	movs r0, #0xce
	lsls r0, r0, #1
	strh r0, [r1, #0xa]
	ldr r3, [sp, #4]
	ldr r2, _080744A8 @ =0x0300002C
	adds r0, r3, r2
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	mov r2, sl
	strh r0, [r2, #0x1a]
	mov r0, r8
	strh r0, [r2, #8]
	strh r0, [r2, #0x14]
	strh r0, [r2, #0x1c]
	ldr r2, _080744AC @ =0x0300002D
	adds r1, r3, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080744B0 @ =0x0300002E
	adds r1, r3, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080744B4 @ =0x03000031
	adds r0, r3, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r1, sl
	str r0, [r1, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r1, #0x10]
	ldr r0, _080744B8 @ =gPlayer
	ldr r2, [r0]
	asrs r2, r2, #8
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	cmp r2, r1
	blt _08074476
	movs r0, #0xa0
	str r0, [r7, #0x3c]
	ldr r0, [r7, #0x48]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #0x48]
_08074476:
	mov r1, sb
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080744C4
	ldr r2, _080744BC @ =0x03000058
	adds r1, r3, r2
	movs r0, #8
	strh r0, [r1]
	ldr r1, _080744C0 @ =0x0300004E
	adds r0, r3, r1
	mov r2, r8
	strh r2, [r0]
	adds r1, #0xc
	adds r0, r3, r1
	b _080744DA
	.align 2, 0
_08074498: .4byte Task_TentouMain
_0807449C: .4byte TaskDestructor_EntityShared
_080744A0: .4byte 0x03000044
_080744A4: .4byte 0x0300004C
_080744A8: .4byte 0x0300002C
_080744AC: .4byte 0x0300002D
_080744B0: .4byte 0x0300002E
_080744B4: .4byte 0x03000031
_080744B8: .4byte gPlayer
_080744BC: .4byte 0x03000058
_080744C0: .4byte 0x0300004E
_080744C4:
	ldr r2, _08074504 @ =0x03000058
	adds r1, r3, r2
	movs r0, #8
	strh r0, [r1]
	ldr r0, _08074508 @ =0x0300004E
	adds r1, r3, r0
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _0807450C @ =0x0300005A
	adds r0, r3, r1
	mov r2, r8
_080744DA:
	strh r2, [r0]
	adds r2, r7, #0
	adds r2, #0x5a
	movs r0, #0
	movs r1, #8
	strh r1, [r2]
	adds r1, r7, #0
	adds r1, #0x4e
	strh r0, [r1]
	mov r0, sl
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074504: .4byte 0x03000058
_08074508: .4byte 0x0300004E
_0807450C: .4byte 0x0300005A

	thumb_func_start Task_TentouMain
Task_TentouMain: @ 0x08074510
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _08074648 @ =gCurTask
	ldr r0, [r1]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov sb, r0
	ldr r2, _0807464C @ =0x0300000C
	adds r5, r7, r2
	ldr r3, [r0]
	str r3, [sp]
	ldrb r1, [r0, #8]
	lsls r1, r1, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov sl, r1
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	mov r4, sb
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #4]
	mov r0, sl
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r6, [r4, #0x50]
	ldrb r2, [r3, #5]
	lsls r2, r2, #0xb
	ldr r1, _08074650 @ =gSineTable
	mov r8, r1
	ldr r3, _08074654 @ =0x03000058
	adds r0, r7, r3
	movs r4, #0
	ldrsh r3, [r0, r4]
	ldr r0, _08074658 @ =0x0300004E
	adds r4, r7, r0
	ldrh r1, [r4]
	movs r0, #0x7f
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _0807465C @ =0x000003FF
	mov ip, r1
	ands r0, r1
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	mov r1, sb
	str r0, [r1, #0x50]
	subs r6, r0, r6
	str r6, [sp, #0x10]
	ldr r6, [r1, #0x54]
	ldr r3, [sp]
	ldrb r2, [r3, #6]
	lsls r2, r2, #0xb
	ldr r1, _08074660 @ =0x0300005A
	adds r0, r7, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	ldrh r1, [r4]
	movs r0, #0x3f
	ands r0, r1
	muls r0, r3, r0
	mov r3, ip
	ands r0, r3
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	mov r1, sb
	str r0, [r1, #0x54]
	subs r3, r0, r6
	ldrh r0, [r4]
	adds r0, #1
	movs r2, #0
	movs r1, #0
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x40
	beq _080745D4
	cmp r0, #0x80
	bne _080745E8
_080745D4:
	ldr r4, _08074664 @ =0x03000046
	adds r0, r7, r4
	strh r1, [r0]
	ldr r1, _08074668 @ =0x0300002C
	adds r0, r7, r1
	strb r2, [r0]
	ldr r2, _08074648 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _0807466C @ =sub_8074928
	str r0, [r1, #8]
_080745E8:
	mov r2, sb
	adds r2, #0x4e
	ldrh r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strh r0, [r2]
	ldr r7, _08074670 @ =gCamera
	ldrh r0, [r7]
	ldr r4, [sp, #8]
	subs r0, r4, r0
	ldr r1, [sp, #0x10]
	asrs r6, r1, #5
	adds r0, r0, r6
	strh r0, [r5, #0x16]
	asrs r4, r3, #4
	adds r0, r4, #0
	movs r1, #0x40
	bl Mod
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3f
	beq _08074674
	adds r0, r4, #0
	movs r1, #0x40
	bl Mod
	ldrh r1, [r7, #2]
	ldr r2, [sp, #0xc]
	subs r1, r2, r1
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	mov r3, sl
	adds r1, r3, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #4]
	subs r2, r0, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl Coll_Player_Enemy_Attack
	cmp r0, #0
	beq _08074694
	b _080746F2
	.align 2, 0
_08074648: .4byte gCurTask
_0807464C: .4byte 0x0300000C
_08074650: .4byte gSineTable
_08074654: .4byte 0x03000058
_08074658: .4byte 0x0300004E
_0807465C: .4byte 0x000003FF
_08074660: .4byte 0x0300005A
_08074664: .4byte 0x03000046
_08074668: .4byte 0x0300002C
_0807466C: .4byte sub_8074928
_08074670: .4byte gCamera
_08074674:
	mov r2, sl
	adds r1, r2, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp, #4]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl Coll_Player_Enemy_Attack
	cmp r0, #0
	bne _080746F2
	ldrh r0, [r7, #2]
	ldr r4, [sp, #0xc]
	subs r0, r4, r0
	strh r0, [r5, #0x18]
_08074694:
	ldr r2, _080746FC @ =gCamera
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	ldr r4, [sp, #8]
	cmp r4, r0
	bgt _080746C6
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _080746C6
	movs r0, #2
	ldrsh r1, [r2, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r3, [sp, #0xc]
	cmp r3, r0
	bgt _080746C6
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	bge _08074704
_080746C6:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080746EA
	movs r4, #0x18
	ldrsh r0, [r5, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _080746EA
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08074704
_080746EA:
	mov r1, sb
	ldrb r0, [r1, #8]
	ldr r2, [sp]
	strb r0, [r2]
_080746F2:
	ldr r0, _08074700 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08074728
	.align 2, 0
_080746FC: .4byte gCamera
_08074700: .4byte gCurTask
_08074704:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	ldr r1, _08074738 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
_08074728:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074738: .4byte 0xFFFFFBFF

	thumb_func_start Task_807473C
Task_807473C: @ 0x0807473C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08074880 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0xc
	adds r7, r3, r0
	ldr r1, [r5]
	str r1, [sp]
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov sb, r1
	ldr r2, [sp]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov sl, r1
	ldr r0, [r5, #0x50]
	rsbs r0, r0, #0
	str r0, [sp, #4]
	ldrb r2, [r2, #5]
	lsls r2, r2, #0xb
	ldr r1, _08074884 @ =0x03000058
	adds r0, r3, r1
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r0, _08074888 @ =0x0300004E
	adds r6, r3, r0
	ldrh r0, [r6]
	subs r0, #1
	movs r1, #0x7f
	ands r0, r1
	muls r0, r4, r0
	ldr r1, _0807488C @ =0x000003FF
	mov ip, r1
	ands r0, r1
	lsls r0, r0, #1
	ldr r1, _08074890 @ =gSineTable
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r5, #0x50]
	ldr r2, [r5, #0x54]
	mov r8, r2
	ldr r0, [sp]
	ldrb r2, [r0, #6]
	lsls r2, r2, #0xb
	ldr r1, _08074894 @ =0x0300005A
	adds r0, r3, r1
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldrh r0, [r6]
	subs r0, #1
	movs r1, #0x3f
	ands r0, r1
	muls r0, r4, r0
	mov r1, ip
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08074890 @ =gSineTable
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r5, #0x54]
	mov r2, r8
	subs r6, r0, r2
	ldr r4, _08074898 @ =gCamera
	ldrh r0, [r4]
	mov r1, sb
	subs r0, r1, r0
	ldr r1, [sp, #4]
	asrs r2, r1, #5
	adds r0, r0, r2
	strh r0, [r7, #0x16]
	ldrh r0, [r4, #2]
	mov r1, sl
	subs r0, r1, r0
	asrs r1, r6, #4
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldr r0, _0807489C @ =0x03000046
	adds r3, r3, r0
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bne _0807482A
	mov r3, sb
	adds r0, r3, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	subs r1, r2, r1
	subs r1, #5
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_8074B80
_0807482A:
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp sb, r0
	bgt _08074854
	adds r0, r1, #0
	subs r0, #0x80
	cmp sb, r0
	blt _08074854
	movs r3, #2
	ldrsh r1, [r4, r3]
	subs r2, #0x50
	adds r0, r1, r2
	cmp sl, r0
	bgt _08074854
	adds r0, r1, #0
	subs r0, #0x80
	cmp sl, r0
	bge _080748A0
_08074854:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08074878
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _08074878
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080748A0
_08074878:
	ldrb r0, [r5, #8]
	ldr r1, [sp]
	strb r0, [r1]
	b _080748BE
	.align 2, 0
_08074880: .4byte gCurTask
_08074884: .4byte 0x03000058
_08074888: .4byte 0x0300004E
_0807488C: .4byte 0x000003FF
_08074890: .4byte gSineTable
_08074894: .4byte 0x0300005A
_08074898: .4byte gCamera
_0807489C: .4byte 0x03000046
_080748A0:
	ldr r2, [sp, #4]
	asrs r1, r2, #5
	add r1, sb
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r2, r6, #4
	mov r3, sl
	subs r2, r3, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl Coll_Player_Enemy_Attack
	cmp r0, #0
	beq _080748CC
_080748BE:
	ldr r0, _080748C8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807490C
	.align 2, 0
_080748C8: .4byte gCurTask
_080748CC:
	adds r0, r5, #0
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x20
	ble _080748E8
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0807491C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08074920 @ =Task_TentouMain
	str r0, [r1, #8]
_080748E8:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [r7, #0x10]
	ldr r1, _08074924 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #0x10]
_0807490C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807491C: .4byte gCurTask
_08074920: .4byte Task_TentouMain
_08074924: .4byte 0xFFFFFBFF

	thumb_func_start sub_8074928
sub_8074928: @ 0x08074928
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _08074A64 @ =gCurTask
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sl, r0
	ldr r2, _08074A68 @ =0x0300000C
	adds r7, r3, r2
	ldr r4, [r0]
	str r4, [sp]
	ldrb r1, [r0, #8]
	lsls r1, r1, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #8]
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	mov r5, sl
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #4]
	ldr r5, [sp, #8]
	mov ip, r1
	mov r6, sl
	ldr r0, [r6, #0x50]
	rsbs r0, r0, #0
	str r0, [sp, #0xc]
	ldrb r2, [r4, #5]
	lsls r2, r2, #0xb
	ldr r1, _08074A6C @ =0x03000058
	adds r0, r3, r1
	movs r6, #0
	ldrsh r4, [r0, r6]
	ldr r0, _08074A70 @ =0x0300004E
	adds r6, r3, r0
	ldrh r0, [r6]
	subs r0, #1
	movs r1, #0x7f
	ands r0, r1
	muls r0, r4, r0
	ldr r1, _08074A74 @ =0x000003FF
	mov sb, r1
	ands r0, r1
	lsls r0, r0, #1
	ldr r4, _08074A78 @ =gSineTable
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	mov r2, sl
	str r0, [r2, #0x50]
	ldr r4, [r2, #0x54]
	mov r8, r4
	ldr r0, [sp]
	ldrb r2, [r0, #6]
	lsls r2, r2, #0xb
	ldr r1, _08074A7C @ =0x0300005A
	adds r0, r3, r1
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldrh r0, [r6]
	subs r0, #1
	movs r1, #0x3f
	ands r0, r1
	muls r0, r4, r0
	mov r4, sb
	ands r0, r4
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #1
	ldr r1, _08074A78 @ =gSineTable
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	mov r6, sl
	str r0, [r6, #0x54]
	mov r1, r8
	subs r2, r0, r1
	ldr r4, _08074A80 @ =gCamera
	ldrh r0, [r4]
	subs r0, r5, r0
	ldr r6, [sp, #0xc]
	asrs r1, r6, #5
	adds r0, r0, r1
	strh r0, [r7, #0x16]
	ldrh r0, [r4, #2]
	mov r1, ip
	subs r0, r1, r0
	asrs r1, r2, #4
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldr r6, _08074A84 @ =0x03000046
	adds r3, r3, r6
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	ldr r3, _08074A64 @ =gCurTask
	cmp r5, r0
	bgt _08074A30
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _08074A30
	movs r5, #2
	ldrsh r1, [r4, r5]
	movs r6, #0x90
	lsls r6, r6, #1
	adds r0, r1, r6
	cmp ip, r0
	bgt _08074A30
	adds r0, r1, #0
	subs r0, #0x80
	cmp ip, r0
	bge _08074A88
_08074A30:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08074A54
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08074A54
	movs r4, #0x18
	ldrsh r1, [r7, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08074A88
_08074A54:
	mov r5, sl
	ldrb r0, [r5, #8]
	ldr r6, [sp]
	strb r0, [r6]
	ldr r0, [r3]
	bl TaskDestroy
	b _08074B62
	.align 2, 0
_08074A64: .4byte gCurTask
_08074A68: .4byte 0x0300000C
_08074A6C: .4byte 0x03000058
_08074A70: .4byte 0x0300004E
_08074A74: .4byte 0x000003FF
_08074A78: .4byte gSineTable
_08074A7C: .4byte 0x0300005A
_08074A80: .4byte gCamera
_08074A84: .4byte 0x03000046
_08074A88:
	ldr r0, [sp, #0xc]
	asrs r1, r0, #5
	ldr r3, [sp, #8]
	adds r1, r3, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #4
	ldr r4, [sp, #4]
	subs r2, r4, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl Coll_Player_Enemy_Attack
	adds r4, r0, #0
	cmp r4, #0
	beq _08074AB8
	ldr r0, _08074AB4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08074B62
	.align 2, 0
_08074AB4: .4byte gCurTask
_08074AB8:
	ldr r3, _08074B0C @ =gPlayer
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r2, _08074B10 @ =gCamera
	movs r5, #0
	ldrsh r1, [r2, r5]
	subs r0, r0, r1
	movs r6, #0x16
	ldrsh r1, [r7, r6]
	subs r5, r0, r1
	adds r0, r5, #0
	muls r0, r5, r0
	adds r5, r0, #0
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	movs r3, #2
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	movs r6, #0x18
	ldrsh r1, [r7, r6]
	subs r0, r0, r1
	mov ip, r0
	adds r1, r0, #0
	mov r0, ip
	muls r0, r1, r0
	adds r0, r0, r5
	mov ip, r0
	ldr r0, _08074B14 @ =0x000018FF
	cmp ip, r0
	bgt _08074B20
	mov r0, sl
	adds r0, #0x46
	strh r4, [r0]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08074B18 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08074B1C @ =Task_807473C
	b _08074B3C
	.align 2, 0
_08074B0C: .4byte gPlayer
_08074B10: .4byte gCamera
_08074B14: .4byte 0x000018FF
_08074B18: .4byte gCurTask
_08074B1C: .4byte Task_807473C
_08074B20:
	mov r3, sl
	adds r3, #0x46
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, #0x3b
	ble _08074B3E
	strh r4, [r3]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08074B74 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08074B78 @ =Task_TentouMain
_08074B3C:
	str r0, [r1, #8]
_08074B3E:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [r7, #0x10]
	ldr r1, _08074B7C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #0x10]
_08074B62:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074B74: .4byte gCurTask
_08074B78: .4byte Task_TentouMain
_08074B7C: .4byte 0xFFFFFBFF

	thumb_func_start sub_8074B80
sub_8074B80: @ 0x08074B80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	movs r7, #0
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	movs r6, #0
	movs r0, #8
	adds r0, r0, r5
	mov r8, r0
	movs r1, #6
	rsbs r1, r1, #0
	mov sl, r1
_08074BA6:
	ldr r0, _08074BE0 @ =sub_8074CE8
	str r0, [sp]
	ldr r0, _08074BE4 @ =sub_8074C50
	movs r1, #0x3c
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	lsls r0, r5, #2
	str r0, [r4, #0x30]
	strh r6, [r4, #0x38]
	movs r0, #6
	str r0, [r4, #0x34]
	cmp r7, #0
	beq _08074BE8
	mov r1, sl
	str r1, [r4, #0x34]
	subs r0, r5, #6
	lsls r0, r0, #2
	str r0, [r4, #0x30]
	adds r0, r5, #0
	subs r0, #8
	b _08074BF0
	.align 2, 0
_08074BE0: .4byte sub_8074CE8
_08074BE4: .4byte sub_8074C50
_08074BE8:
	adds r0, r5, #6
	lsls r0, r0, #2
	str r0, [r4, #0x30]
	mov r0, r8
_08074BF0:
	strh r0, [r4, #0x16]
	mov r1, sb
	strh r1, [r4, #0x18]
	movs r0, #4
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	subs r0, #0xa6
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	strb r6, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	strb r6, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r7, #1
	cmp r7, #1
	ble _08074BA6
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8074C50
sub_8074C50: @ 0x08074C50
	push {r4, r5, r6, r7, lr}
	ldr r0, _08074CC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r5, r4, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x38]
	adds r0, #0x28
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r0, #0x16
	ldrsh r6, [r4, r0]
	movs r1, #0x18
	ldrsh r7, [r4, r1]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r0, r4, #0
	bl Coll_Player_Projectile
	ldr r3, _08074CCC @ =gCamera
	ldrh r0, [r4, #0x16]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r2, [r4, #0x18]
	ldrh r1, [r3, #2]
	subs r2, r2, r1
	strh r2, [r4, #0x18]
	adds r0, #0x14
	lsls r0, r0, #0x10
	movs r1, #0x8a
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08074CBE
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _08074CBE
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08074CD0
_08074CBE:
	ldr r0, _08074CC8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08074CE0
	.align 2, 0
_08074CC8: .4byte gCurTask
_08074CCC: .4byte gCamera
_08074CD0:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	strh r6, [r5, #0x16]
	strh r7, [r5, #0x18]
_08074CE0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8074CE8
sub_8074CE8: @ 0x08074CE8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
