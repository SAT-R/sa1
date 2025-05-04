.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_SlotInit
Task_SlotInit: @ 0x0806E190
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0806E27C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, #0xc
	adds r6, r4, r0
	ldr r1, [r5]
	mov sb, r1
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	ldr r3, _0806E280 @ =0x03000046
	adds r2, r4, r3
	ldrh r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0806E284 @ =gSineTable
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #5
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xc8
	lsls r1, r1, #2
	bl Div
	ldr r2, _0806E288 @ =0x03000044
	adds r4, r4, r2
	strh r0, [r4]
	ldrh r0, [r5, #0x3e]
	ldrh r3, [r5, #0x3c]
	adds r0, r0, r3
	strh r0, [r5, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r7, r0
	lsls r0, r0, #0x10
	ldrh r1, [r4]
	mov r4, r8
	subs r1, r4, r1
	lsls r1, r1, #0x10
	ldr r3, _0806E28C @ =gCamera
	ldrh r2, [r3]
	lsrs r4, r0, #0x10
	mov ip, r4
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r7, r0
	bgt _0806E250
	adds r0, r1, #0
	subs r0, #0x80
	cmp r7, r0
	blt _0806E250
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r8, r0
	bgt _0806E250
	adds r0, r2, #0
	subs r0, #0x80
	cmp r8, r0
	bge _0806E290
_0806E250:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806E274
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806E274
	movs r3, #0x18
	ldrsh r1, [r6, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806E290
_0806E274:
	ldrb r0, [r5, #8]
	mov r4, sb
	strb r0, [r4]
	b _0806E2AA
	.align 2, 0
_0806E27C: .4byte gCurTask
_0806E280: .4byte 0x03000046
_0806E284: .4byte gSineTable
_0806E288: .4byte 0x03000044
_0806E28C: .4byte gCamera
_0806E290:
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	bl Coll_Player_Enemy_Attack
	cmp r0, #0
	beq _0806E2B8
_0806E2AA:
	ldr r0, _0806E2B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806E356
	.align 2, 0
_0806E2B4: .4byte gCurTask
_0806E2B8:
	ldrh r0, [r5, #0x3c]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x18
	mov r3, sb
	movs r1, #3
	ldrsb r1, [r3, r1]
	lsls r0, r1, #3
	cmp r2, r0
	bgt _0806E2D0
	movs r0, #0xa0
	strh r0, [r5, #0x3e]
	b _0806E332
_0806E2D0:
	mov r4, sb
	ldrb r0, [r4, #5]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r2, r0
	blt _0806E2E8
	ldr r0, _0806E2E4 @ =0x0000FF60
	strh r0, [r5, #0x3e]
	b _0806E332
	.align 2, 0
_0806E2E4: .4byte 0x0000FF60
_0806E2E8:
	adds r4, r5, #0
	adds r4, #0x42
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0806E2FC
	subs r0, r1, #1
	strh r0, [r4]
	b _0806E332
_0806E2FC:
	ldr r0, _0806E364 @ =gPlayer
	ldr r0, [r0]
	asrs r1, r0, #8
	adds r0, r7, #0
	adds r0, #0x10
	cmp r1, r0
	bgt _0806E332
	subs r0, #0x20
	cmp r1, r0
	blt _0806E332
	movs r0, #0x64
	strh r0, [r4]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	mov r1, r8
	subs r1, #6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_806E4E0
	ldr r0, _0806E368 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806E36C @ =sub_806E374
	str r0, [r1, #8]
_0806E332:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r6, #0x10]
	ldr r1, _0806E370 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #0x10]
_0806E356:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E364: .4byte gPlayer
_0806E368: .4byte gCurTask
_0806E36C: .4byte sub_806E374
_0806E370: .4byte 0xFFFFFBFF

	thumb_func_start sub_806E374
sub_806E374: @ 0x0806E374
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0806E444 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r1, _0806E448 @ =0x0300000C
	adds r5, r3, r1
	ldr r2, [r6]
	mov ip, r2
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, ip
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldrh r0, [r6, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r7, r0
	lsls r0, r0, #0x10
	ldr r1, _0806E44C @ =0x03000044
	adds r3, r3, r1
	ldrh r1, [r3]
	subs r1, r4, r1
	lsls r1, r1, #0x10
	ldr r3, _0806E450 @ =gCamera
	ldrh r2, [r3]
	mov r8, r2
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	mov r2, r8
	subs r0, r0, r2
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov r8, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r7, r0
	bgt _0806E410
	adds r0, r1, #0
	subs r0, #0x80
	cmp r7, r0
	blt _0806E410
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r4, r0
	bgt _0806E410
	adds r0, r2, #0
	subs r0, #0x80
	cmp r4, r0
	bge _0806E454
_0806E410:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806E434
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806E434
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806E454
_0806E434:
	ldrb r0, [r6, #8]
	mov r1, ip
	strb r0, [r1]
	mov r2, sl
	ldr r0, [r2]
	bl TaskDestroy
	b _0806E4C4
	.align 2, 0
_0806E444: .4byte gCurTask
_0806E448: .4byte 0x0300000C
_0806E44C: .4byte 0x03000044
_0806E450: .4byte gCamera
_0806E454:
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl Coll_Player_Enemy_Attack
	adds r1, r0, #0
	cmp r1, #0
	beq _0806E47C
	ldr r0, _0806E478 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806E4C4
	.align 2, 0
_0806E478: .4byte gCurTask
_0806E47C:
	adds r3, r6, #0
	adds r3, #0x40
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0806E4A0
	strh r1, [r3]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806E4D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806E4D8 @ =Task_SlotInit
	str r0, [r1, #8]
_0806E4A0:
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
	ldr r1, _0806E4DC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
_0806E4C4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E4D4: .4byte gCurTask
_0806E4D8: .4byte Task_SlotInit
_0806E4DC: .4byte 0xFFFFFBFF

	thumb_func_start sub_806E4E0
sub_806E4E0: @ 0x0806E4E0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0806E574 @ =sub_806E590
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x90
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	lsls r1, r4, #0x10
	asrs r1, r1, #8
	str r1, [r0, #0x34]
	ldr r2, _0806E578 @ =0x0300004C
	adds r1, r3, r2
	movs r2, #0
	mov r8, r2
	strh r6, [r1]
	strh r4, [r0, #0x16]
	strh r5, [r0, #0x18]
	ldr r1, _0806E57C @ =0x06012600
	str r1, [r0, #4]
	movs r1, #0x90
	lsls r1, r1, #2
	strh r1, [r0, #0x1a]
	strh r6, [r0, #8]
	subs r1, #0x9c
	strh r1, [r0, #0xa]
	ldr r2, _0806E580 @ =0x03000020
	adds r1, r3, r2
	mov r2, r8
	strb r2, [r1]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0x1c]
	ldr r1, _0806E584 @ =0x03000021
	adds r2, r3, r1
	movs r1, #0xff
	strb r1, [r2]
	ldr r1, _0806E588 @ =0x03000022
	adds r2, r3, r1
	movs r1, #0x10
	strb r1, [r2]
	ldr r2, _0806E58C @ =0x03000025
	adds r3, r3, r2
	mov r1, r8
	strb r1, [r3]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x10]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806E574: .4byte sub_806E590
_0806E578: .4byte 0x0300004C
_0806E57C: .4byte 0x06012600
_0806E580: .4byte 0x03000020
_0806E584: .4byte 0x03000021
_0806E588: .4byte 0x03000022
_0806E58C: .4byte 0x03000025

	thumb_func_start sub_806E590
sub_806E590: @ 0x0806E590
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	ldr r0, _0806E628 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r0, [r6, #0x34]
	movs r1, #0x80
	lsls r1, r1, #1
	bl Div
	strh r0, [r6, #0x16]
	ldr r0, _0806E62C @ =0x0300004C
	adds r5, r4, r0
	ldrh r0, [r5]
	adds r0, #0x28
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r6, #0x18]
	adds r0, r0, r1
	strh r0, [r6, #0x18]
	ldrh r2, [r6, #0x18]
	str r2, [sp, #0x10]
	ldrh r0, [r6, #0x16]
	str r0, [sp, #0xc]
	movs r2, #0x16
	ldrsh r1, [r6, r2]
	mov sb, r1
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	mov sl, r0
	asrs r7, r0, #0x10
	adds r0, r6, #0
	adds r2, r7, #0
	bl Coll_Player_Projectile
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	mov r8, r1
	ldr r3, _0806E630 @ =gCamera
	ldrh r0, [r6, #0x16]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r6, #0x16]
	ldrh r2, [r6, #0x18]
	ldrh r1, [r3, #2]
	subs r2, r2, r1
	strh r2, [r6, #0x18]
	adds r0, #0x14
	lsls r0, r0, #0x10
	movs r1, #0x8a
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806E61E
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _0806E61E
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0806E634
_0806E61E:
	ldr r0, _0806E628 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806E782
	.align 2, 0
_0806E628: .4byte gCurTask
_0806E62C: .4byte 0x0300004C
_0806E630: .4byte gCamera
_0806E634:
	add r2, sp, #8
	str r2, [sp]
	ldr r0, _0806E794 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	mov sb, r0
	cmp r0, #0
	ble _0806E656
	mov r0, r8
	cmp r0, #0
	bne _0806E656
	b _0806E76A
_0806E656:
	mov r1, r8
	cmp r1, #0
	beq _0806E662
	add r1, sp, #8
	movs r0, #0
	strb r0, [r1]
_0806E662:
	ldrh r1, [r5]
	ldr r2, [r6, #0x34]
	str r2, [sp, #0x14]
	movs r0, #0x2d
	strh r0, [r6, #0x30]
	movs r7, #0
	mov r0, sl
	str r0, [sp, #0x28]
	ldr r2, _0806E798 @ =0x0300004C
	adds r2, r4, r2
	str r2, [sp, #0x18]
	ldr r0, _0806E79C @ =0x03000058
	adds r0, r4, r0
	str r0, [sp, #0x1c]
	ldr r2, _0806E7A0 @ =0x03000064
	adds r2, r4, r2
	str r2, [sp, #0x20]
	ldr r0, _0806E7A4 @ =0x03000034
	adds r0, r4, r0
	str r0, [sp, #0x38]
	ldr r2, _0806E7A8 @ =0x03000070
	adds r2, r4, r2
	str r2, [sp, #0x24]
	ldr r0, _0806E7AC @ =0x03000088
	adds r0, r4, r0
	str r0, [sp, #0x34]
	ldr r2, _0806E7B0 @ =0x03000021
	adds r2, r4, r2
	str r2, [sp, #0x30]
	ldr r0, _0806E7B4 @ =0x03000020
	adds r0, r4, r0
	str r0, [sp, #0x2c]
	ldr r2, _0806E7B8 @ =gSineTable
	mov sl, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
_0806E6AC:
	mov r0, r8
	lsls r4, r0, #2
	add r4, r8
	lsls r4, r4, #1
	ldr r2, _0806E7BC @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0806E7C0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0806E7C4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #4
	bl Mod
	adds r1, r0, #0
	adds r1, #0x10
	rsbs r0, r4, #0
	bl Div
	lsls r4, r7, #1
	ldr r2, [sp, #0x18]
	adds r5, r2, r4
	add r1, sp, #8
	ldrb r1, [r1]
	lsls r1, r1, #2
	movs r2, #0x7f
	ands r1, r2
	adds r2, #0x81
	adds r1, r1, r2
	lsls r1, r1, #1
	add r1, sl
	movs r2, #0
	ldrsh r1, [r1, r2]
	muls r0, r1, r0
	ldr r1, _0806E7C8 @ =0x00004E20
	bl __divsi3
	strh r0, [r5]
	ldr r1, [sp, #0x1c]
	adds r0, r1, r4
	mov r2, sp
	ldrh r2, [r2, #0xc]
	strh r2, [r0]
	ldr r0, [sp, #0x20]
	adds r4, r0, r4
	ldr r1, [sp, #0x28]
	asrs r0, r1, #0x10
	add r0, sb
	strh r0, [r4]
	lsls r4, r7, #2
	ldr r2, [sp, #0x38]
	adds r0, r2, r4
	ldr r1, [sp, #0x14]
	str r1, [r0]
	add r1, sp, #8
	lsls r0, r7, #3
	subs r0, #0x18
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0806E7CC @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0x1e
	bl Div
	ldr r1, [sp, #0x24]
	adds r4, r1, r4
	str r0, [r4]
	ldr r2, [sp, #0x34]
	adds r1, r2, r7
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _0806E6AC
	movs r0, #0xff
	ldr r1, [sp, #0x30]
	strb r0, [r1]
	ldr r0, _0806E7D0 @ =0x06012680
	str r0, [r6, #4]
	movs r1, #0
	ldr r0, _0806E7D4 @ =0x000001A5
	strh r0, [r6, #0xa]
	ldr r2, [sp, #0x2c]
	strb r1, [r2]
	ldr r0, _0806E7D8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806E7DC @ =sub_806E7E0
	str r0, [r1, #8]
_0806E76A:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, sp
	ldrh r0, [r0, #0xc]
	strh r0, [r6, #0x16]
	mov r1, sp
	ldrh r1, [r1, #0x10]
	strh r1, [r6, #0x18]
_0806E782:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E794: .4byte sa2__sub_801EE64
_0806E798: .4byte 0x0300004C
_0806E79C: .4byte 0x03000058
_0806E7A0: .4byte 0x03000064
_0806E7A4: .4byte 0x03000034
_0806E7A8: .4byte 0x03000070
_0806E7AC: .4byte 0x03000088
_0806E7B0: .4byte 0x03000021
_0806E7B4: .4byte 0x03000020
_0806E7B8: .4byte gSineTable
_0806E7BC: .4byte gPseudoRandom
_0806E7C0: .4byte 0x00196225
_0806E7C4: .4byte 0x3C6EF35F
_0806E7C8: .4byte 0x00004E20
_0806E7CC: .4byte 0x000003FF
_0806E7D0: .4byte 0x06012680
_0806E7D4: .4byte 0x000001A5
_0806E7D8: .4byte gCurTask
_0806E7DC: .4byte sub_806E7E0

	thumb_func_start sub_806E7E0
sub_806E7E0: @ 0x0806E7E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r6, _0806E814 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r7, r5, #0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldrh r0, [r5, #0x30]
	subs r0, #1
	strh r0, [r5, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806E818
	ldr r0, [r6]
	bl TaskDestroy
	b _0806E980
	.align 2, 0
_0806E814: .4byte gCurTask
_0806E818:
	movs r0, #0
	mov sl, r0
	ldr r1, _0806E8D8 @ =0x03000088
	adds r1, r4, r1
	str r1, [sp, #0x10]
_0806E822:
	ldr r0, [sp, #0x10]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806E82E
	b _0806E970
_0806E82E:
	mov r2, sl
	lsls r4, r2, #1
	adds r0, r7, #0
	adds r0, #0x4c
	adds r6, r0, r4
	movs r3, #0
	ldrsh r1, [r6, r3]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x30
	ldrsh r2, [r7, r1]
	ldr r1, _0806E8DC @ =0x00000415
	subs r1, r1, r2
	bl Div
	strh r0, [r6]
	mov r2, sl
	lsls r1, r2, #2
	adds r2, r7, #0
	adds r2, #0x34
	adds r2, r2, r1
	adds r0, r7, #0
	adds r0, #0x70
	adds r0, r0, r1
	mov sb, r0
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	adds r2, r7, #0
	adds r2, #0x58
	adds r2, r2, r4
	asrs r1, r1, #8
	strh r1, [r2]
	ldrh r0, [r6]
	adds r0, #0x28
	strh r0, [r6]
	adds r1, r7, #0
	adds r1, #0x64
	adds r4, r1, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	ldrh r0, [r2]
	strh r0, [r5, #0x16]
	ldrh r2, [r4]
	strh r2, [r5, #0x18]
	ldrh r0, [r5, #0x16]
	mov r8, r0
	ldrh r1, [r5, #0x18]
	str r1, [sp, #0xc]
	ldr r1, _0806E8E0 @ =gCamera
	ldrh r0, [r1]
	mov r3, r8
	subs r0, r3, r0
	strh r0, [r5, #0x16]
	ldrh r1, [r1, #2]
	subs r2, r2, r1
	strh r2, [r5, #0x18]
	adds r0, #0x14
	lsls r0, r0, #0x10
	movs r1, #0x8a
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806E8CC
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _0806E8CC
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0806E8E4
_0806E8CC:
	ldr r1, [sp, #0x10]
	add r1, sl
	movs r0, #0
	strb r0, [r1]
	b _0806E970
	.align 2, 0
_0806E8D8: .4byte 0x03000088
_0806E8DC: .4byte 0x00000415
_0806E8E0: .4byte gCamera
_0806E8E4:
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _0806E958 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	adds r1, r0, #0
	cmp r1, #0
	bgt _0806E93C
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	movs r3, #0
	ldrsh r1, [r6, r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	rsbs r0, r0, #0
	movs r1, #0x15
	bl Div
	strh r0, [r6]
	ldr r1, _0806E95C @ =gSineTable
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x1e
	bl Div
	mov r2, sb
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_0806E93C:
	ldrh r1, [r7, #0x30]
	movs r3, #0x30
	ldrsh r0, [r7, r3]
	cmp r0, #0x1d
	bgt _0806E960
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806E966
	adds r0, r5, #0
	bl DisplaySprite
	b _0806E966
	.align 2, 0
_0806E958: .4byte sa2__sub_801EE64
_0806E95C: .4byte gSineTable
_0806E960:
	adds r0, r5, #0
	bl DisplaySprite
_0806E966:
	mov r0, r8
	strh r0, [r5, #0x16]
	mov r1, sp
	ldrh r1, [r1, #0xc]
	strh r1, [r5, #0x18]
_0806E970:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #5
	bhi _0806E980
	b _0806E822
_0806E980:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
