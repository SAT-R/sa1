.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
	thumb_func_start Task_RhinotankInit
Task_RhinotankInit: @ 0x0806C6D0
.endif

	thumb_func_start sub_806C9A0
sub_806C9A0: @ 0x0806C9A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r3, _0806CA68 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
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
	asrs r4, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, r4, r0
	lsls r0, r0, #0x10
	ldrh r1, [r5, #0x3c]
	add r1, ip
	lsls r1, r1, #0x10
	ldr r7, _0806CA6C @ =gCamera
	ldrh r2, [r7]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r0, r2
	strh r0, [r6, #0x16]
	ldrh r0, [r7, #2]
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0806CA36
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0806CA36
	movs r0, #2
	ldrsh r2, [r7, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _0806CA36
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _0806CA70
_0806CA36:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806CA5A
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806CA5A
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806CA70
_0806CA5A:
	ldrb r0, [r5, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r3]
	bl TaskDestroy
	b _0806CBB6
	.align 2, 0
_0806CA68: .4byte gCurTask
_0806CA6C: .4byte gCamera
_0806CA70:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r7, r0, #0x10
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl Coll_Player_Enemy_Attack
	cmp r0, #0
	beq _0806CA98
	ldr r0, _0806CA94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806CBB6
	.align 2, 0
_0806CA94: .4byte gCurTask
_0806CA98:
	add r2, sp, #8
	str r2, [sp]
	ldr r0, _0806CAFC @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	ldrh r1, [r5, #0x3c]
	adds r1, r1, r0
	strh r1, [r5, #0x3c]
	adds r0, r5, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r3, #0x40
	adds r7, r0, #0
	cmp r1, #0
	beq _0806CAC2
	movs r3, #0x20
_0806CAC2:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806CB04
	ldr r2, _0806CB00 @ =gSineTable
	adds r4, r5, #0
	adds r4, #0x44
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r3, #0
	bl Div
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	b _0806CB2E
	.align 2, 0
_0806CAFC: .4byte sa2__sub_801EE64
_0806CB00: .4byte gSineTable
_0806CB04:
	ldr r2, _0806CB6C @ =gSineTable
	adds r4, r5, #0
	adds r4, #0x44
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r3, #0
	bl Div
	ldr r1, [r5, #0x40]
	subs r1, r1, r0
_0806CB2E:
	str r1, [r5, #0x40]
	ldrh r0, [r4]
	adds r0, #1
	movs r1, #0
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	bne _0806CBAA
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, [r6, #0x10]
	movs r3, #0x80
	lsls r3, r3, #3
	ands r0, r3
	cmp r0, #0
	beq _0806CB78
	adds r2, r5, #0
	adds r2, #0x46
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r0, _0806CB70 @ =0x0000FF60
	strh r0, [r2]
	ldr r0, [r6, #0x10]
	ldr r1, _0806CB74 @ =0xFFFFFBFF
	ands r0, r1
	b _0806CB8E
	.align 2, 0
_0806CB6C: .4byte gSineTable
_0806CB70: .4byte 0x0000FF60
_0806CB74: .4byte 0xFFFFFBFF
_0806CB78:
	adds r2, r5, #0
	adds r2, #0x46
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	movs r0, #0xa0
	strh r0, [r2]
	ldr r0, [r6, #0x10]
	orrs r0, r3
_0806CB8E:
	str r0, [r6, #0x10]
	ldrb r0, [r7]
	cmp r0, #0
	beq _0806CB9E
	adds r1, r5, #0
	adds r1, #0x49
	movs r0, #0
	strb r0, [r1]
_0806CB9E:
	movs r0, #0
	strb r0, [r7]
	ldr r0, _0806CBC8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806CBCC @ =Task_RhinotankInit
	str r0, [r1, #8]
_0806CBAA:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0806CBB6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806CBC8: .4byte gCurTask
_0806CBCC: .4byte Task_RhinotankInit

	thumb_func_start Task_806CBD0
Task_806CBD0: @ 0x0806CBD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r3, _0806CC98 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r1, [r4]
	mov r8, r1
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r0, r5, r0
	lsls r0, r0, #0x10
	ldrh r1, [r4, #0x3c]
	add r1, ip
	lsls r1, r1, #0x10
	ldr r7, _0806CC9C @ =gCamera
	ldrh r2, [r7]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r0, r2
	strh r0, [r6, #0x16]
	ldrh r0, [r7, #2]
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _0806CC66
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _0806CC66
	movs r0, #2
	ldrsh r2, [r7, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _0806CC66
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _0806CCA0
_0806CC66:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806CC8A
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806CC8A
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806CCA0
_0806CC8A:
	ldrb r0, [r4, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r3]
	bl TaskDestroy
	b _0806CD10
	.align 2, 0
_0806CC98: .4byte gCurTask
_0806CC9C: .4byte gCamera
_0806CCA0:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r7, r0, #0x10
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl Coll_Player_Enemy_Attack
	cmp r0, #0
	beq _0806CCC8
	ldr r0, _0806CCC4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806CD10
	.align 2, 0
_0806CCC4: .4byte gCurTask
_0806CCC8:
	add r2, sp, #8
	str r2, [sp]
	ldr r0, _0806CD20 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	ldrh r1, [r4, #0x3c]
	adds r1, r1, r0
	strh r1, [r4, #0x3c]
	adds r1, r4, #0
	adds r1, #0x44
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x19
	bne _0806CD04
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806CD24 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806CD28 @ =Task_RhinotankInit
	str r0, [r1, #8]
_0806CD04:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0806CD10:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806CD20: .4byte sa2__sub_801EE64
_0806CD24: .4byte gCurTask
_0806CD28: .4byte Task_RhinotankInit
