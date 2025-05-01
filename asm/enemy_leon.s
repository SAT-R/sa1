.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
	thumb_func_start Task_806ED3C
Task_806ED3C: @ 0x0806ED3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r4, _0806EE08 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0xc
	adds r7, r3, r0
	ldr r1, [r5]
	mov r8, r1
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
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, r6, r0
	lsls r0, r0, #0x10
	ldr r2, _0806EE0C @ =0x0300004C
	adds r3, r3, r2
	ldrh r1, [r3]
	add r1, ip
	lsls r1, r1, #0x10
	ldr r3, _0806EE10 @ =gCamera
	ldrh r2, [r3]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r0, r2
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r7, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	bgt _0806EDD6
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	blt _0806EDD6
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _0806EDD6
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _0806EE14
_0806EDD6:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806EDFA
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806EDFA
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806EE14
_0806EDFA:
	ldrb r0, [r5, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _0806EE88
	.align 2, 0
_0806EE08: .4byte gCurTask
_0806EE0C: .4byte 0x0300004C
_0806EE10: .4byte gCamera
_0806EE14:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl Coll_Player_Enemy_Attack
	cmp r0, #0
	beq _0806EE3C
	ldr r0, _0806EE38 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806EE88
	.align 2, 0
_0806EE38: .4byte gCurTask
_0806EE3C:
	adds r0, r4, #3
	add r2, sp, #8
	str r2, [sp]
	ldr r1, _0806EE98 @ =sa2__sub_801EE64
	str r1, [sp, #4]
	adds r1, r6, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	adds r2, r5, #0
	adds r2, #0x4c
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	adds r1, r5, #0
	adds r1, #0x4a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	bne _0806EE7C
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806EE9C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806EEA0 @ =Task_LeonInit
	str r0, [r1, #8]
_0806EE7C:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0806EE88:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806EE98: .4byte sa2__sub_801EE64
_0806EE9C: .4byte gCurTask
_0806EEA0: .4byte Task_LeonInit
.endif

	thumb_func_start Task_806EEA4
Task_806EEA4: @ 0x0806EEA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r4, _0806EF78 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sb, r0
	ldr r0, _0806EF7C @ =0x0300000C
	adds r6, r3, r0
	mov r1, sb
	ldr r1, [r1]
	mov r8, r1
	mov r5, sb
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
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	mov r1, sb
	ldr r0, [r1, #0x44]
	asrs r0, r0, #8
	adds r0, r5, r0
	lsls r0, r0, #0x10
	ldr r2, _0806EF80 @ =0x0300004C
	adds r3, r3, r2
	ldrh r1, [r3]
	adds r1, r7, r1
	lsls r1, r1, #0x10
	ldr r3, _0806EF84 @ =gCamera
	ldrh r2, [r3]
	mov sl, r2
	lsrs r2, r0, #0x10
	mov ip, r2
	asrs r0, r0, #0x10
	mov r2, sl
	subs r0, r0, r2
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov sl, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _0806EF44
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _0806EF44
	movs r5, #2
	ldrsh r2, [r3, r5]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r7, r0
	bgt _0806EF44
	adds r0, r2, #0
	subs r0, #0x80
	cmp r7, r0
	bge _0806EF88
_0806EF44:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806EF68
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806EF68
	movs r5, #0x18
	ldrsh r1, [r6, r5]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806EF88
_0806EF68:
	mov r1, sb
	ldrb r0, [r1, #8]
	mov r2, r8
	strb r0, [r2]
	ldr r0, [r4]
	bl TaskDestroy
	b _0806F0C4
	.align 2, 0
_0806EF78: .4byte gCurTask
_0806EF7C: .4byte 0x0300000C
_0806EF80: .4byte 0x0300004C
_0806EF84: .4byte gCamera
_0806EF88:
	ldr r1, [r6, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	mov r5, ip
	lsls r5, r5, #0x10
	str r5, [sp, #0xc]
	mov r2, sl
	lsls r2, r2, #0x10
	mov r8, r2
	cmp r1, r0
	beq _0806F04A
	asrs r1, r5, #0x10
	adds r0, r6, #0
	adds r0, #0x34
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r4, r1, r5
	ldr r2, _0806F06C @ =gPlayer
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _0806F070 @ =gPlayerBodyPSI
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov ip, r0
	add r1, ip
	adds r7, r3, #0
	cmp r4, r1
	bgt _0806EFDC
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r4, r0
	cmp r0, r1
	bge _0806EFF6
	cmp r4, r1
	blt _0806F04A
_0806EFDC:
	adds r0, r7, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r5, ip
	subs r0, r0, r5
	adds r0, r1, r0
	mov r1, sl
	lsls r1, r1, #0x10
	mov r8, r1
	cmp r0, r4
	blt _0806F04A
_0806EFF6:
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	adds r3, r6, #0
	adds r3, #0x35
	movs r5, #0
	ldrsb r5, [r3, r5]
	adds r4, r0, r5
	ldr r2, _0806F06C @ =gPlayer
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r3, r7, #0
	adds r3, #0x39
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r3, r0, r2
	mov r8, r1
	cmp r4, r3
	bgt _0806F032
	adds r0, r6, #0
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r4, r0
	cmp r0, r3
	bge _0806F044
	cmp r4, r3
	blt _0806F04A
_0806F032:
	adds r0, r7, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r4
	blt _0806F04A
_0806F044:
	ldr r0, _0806F06C @ =gPlayer
	bl Coll_DamagePlayer
_0806F04A:
	ldr r0, [sp, #0xc]
	asrs r5, r0, #0x10
	mov r1, r8
	asrs r4, r1, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl Coll_Player_Enemy_Attack
	cmp r0, #0
	beq _0806F078
	ldr r0, _0806F074 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806F0C4
	.align 2, 0
_0806F06C: .4byte gPlayer
_0806F070: .4byte gPlayerBodyPSI
_0806F074: .4byte gCurTask
_0806F078:
	adds r0, r4, #3
	add r2, sp, #8
	str r2, [sp]
	ldr r1, _0806F0D4 @ =sa2__sub_801EE64
	str r1, [sp, #4]
	adds r1, r5, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	mov r2, sb
	adds r2, #0x4c
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	mov r1, sb
	adds r1, #0x4a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	bne _0806F0B8
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806F0D8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806F0DC @ =Task_LeonInit
	str r0, [r1, #8]
_0806F0B8:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0806F0C4:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806F0D4: .4byte sa2__sub_801EE64
_0806F0D8: .4byte gCurTask
_0806F0DC: .4byte Task_LeonInit
