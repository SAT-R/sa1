.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0806C748 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0     @ r4 = rhinotank
	adds r0, #0xc
	adds r5, r3, r0     @ r5 = s
	ldr r1, [r4]
	mov sb, r1
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0     @ r2 = worldX
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r2, #0x10  @ r7 = worldX(2?)
	asrs r2, r2, #0x10
	mov r8, r2
	lsrs r6, r1, #0x10  @ r6 = worldY
	asrs r1, r1, #0x10
	mov sl, r1          @ sl = worldY(2?)
	ldr r2, _0806C74C @ =0x03000046
	adds r0, r3, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, _0806C750 @ =0x03000049
	adds r3, r3, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0806C760
	subs r0, #1
	strb r0, [r3]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806C754
	ldrb r1, [r3]
	movs r0, #0xd
	muls r1, r0, r1
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	b _0806C75E
	.align 2, 0
_0806C748: .4byte gCurTask
_0806C74C: .4byte 0x03000046
_0806C750: .4byte 0x03000049
_0806C754:
	ldrb r1, [r3]
	movs r0, #0xd
	muls r1, r0, r1
	ldr r0, [r4, #0x40]
	subs r0, r0, r1
_0806C75E:
	str r0, [r4, #0x40]
_0806C760:
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #1
	bl Div
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0x3c]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	ldr r3, _0806C7EC @ =gCamera
	ldrh r2, [r3]
	lsrs r7, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r5, #0x16]
	ldrh r1, [r3, #2]
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r8, r0
	bgt _0806C7BE
	adds r0, r1, #0
	subs r0, #0x80
	cmp r8, r0
	blt _0806C7BE
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp sl, r0
	bgt _0806C7BE
	adds r0, r2, #0
	subs r0, #0x80
	cmp sl, r0
	bge _0806C7F0
_0806C7BE:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806C7E2
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806C7E2
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806C7F0
_0806C7E2:
	ldrb r0, [r4, #8]
	mov r1, sb
	strb r0, [r1]
	b _0806C808
	.align 2, 0
_0806C7EC: .4byte gCamera
_0806C7F0:
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl Coll_Player_Enemy_Attack
	mov r8, r0
	cmp r0, #0
	beq _0806C818
_0806C808:
	ldr r0, _0806C814 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806C986
	.align 2, 0
_0806C814: .4byte gCurTask
_0806C818:
	add r2, sp, #8
	str r2, [sp]
	ldr r0, _0806C888 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	ldrh r1, [r4, #0x3c]
	adds r1, r1, r0
	strh r1, [r4, #0x3c]
	ldr r3, [r4, #0x40]
	asrs r2, r3, #8
	mov r0, sb
	movs r1, #3
	ldrsb r1, [r0, r1]
	adds r0, r1, #1
	lsls r0, r0, #3
	cmp r2, r0
	bgt _0806C894
	ldr r0, [r5, #0x10]
	mvns r0, r0
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0806C854
	b _0806C97A
_0806C854:
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806C866
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r3, r1
	str r0, [r4, #0x40]
_0806C866:
	adds r0, r4, #0
	adds r0, #0x44
	mov r2, r8
	strh r2, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0xa0
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0806C88C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C890 @ =Task_806C9A0
	b _0806C978
	.align 2, 0
_0806C888: .4byte sa2__sub_801EE64
_0806C88C: .4byte gCurTask
_0806C890: .4byte Task_806C9A0
_0806C894:
	mov r0, sb
	ldrb r0, [r0, #5]
	mov sb, r0
	add r1, sb
	subs r0, r1, #1
	lsls r0, r0, #3
	cmp r2, r0
	blt _0806C8F0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806C97A
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806C8C0
	ldr r1, _0806C8E0 @ =0xFFFFFD00
	adds r0, r3, r1
	str r0, [r4, #0x40]
_0806C8C0:
	adds r0, r4, #0
	adds r0, #0x44
	mov r2, r8
	strh r2, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	ldr r0, _0806C8E4 @ =0x0000FF60
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0806C8E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C8EC @ =Task_806C9A0
	b _0806C978
	.align 2, 0
_0806C8E0: .4byte 0xFFFFFD00
_0806C8E4: .4byte 0x0000FF60
_0806C8E8: .4byte gCurTask
_0806C8EC: .4byte Task_806C9A0
_0806C8F0:
	adds r3, r4, #0
	adds r3, #0x48
	ldrb r0, [r3]
	mov r8, r0
	cmp r0, #0
	bne _0806C97A
	ldr r2, _0806C944 @ =gPlayer
	ldr r0, [r2, #4]
	asrs r1, r0, #8
	adds r0, r6, #0
	adds r0, #8
	cmp r1, r0
	bgt _0806C97A
	subs r0, #0x28
	cmp r0, r1
	bgt _0806C97A
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	beq _0806C948
	ldr r0, [r2]
	asrs r1, r0, #8
	cmp r1, r7
	blt _0806C97A
	adds r0, r7, #0
	adds r0, #0x50
	cmp r0, r1
	blt _0806C97A
	movs r2, #1
	strb r2, [r3]
	adds r0, r4, #0
	adds r0, #0x44
	mov r1, r8
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0xc0
	lsls r0, r0, #2
	b _0806C96A
	.align 2, 0
_0806C944: .4byte gPlayer
_0806C948:
	ldr r0, [r2]
	asrs r2, r0, #8
	cmp r2, r7
	bgt _0806C97A
	adds r0, r7, #0
	subs r0, #0x50
	cmp r0, r2
	bgt _0806C97A
	movs r2, #1
	strb r2, [r3]
	adds r0, r4, #0
	adds r0, #0x44
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0xfd
	lsls r0, r0, #8
_0806C96A:
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _0806C998 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C99C @ =Task_806CBD0
_0806C978:
	str r0, [r1, #8]
_0806C97A:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0806C986:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C998: .4byte gCurTask
_0806C99C: .4byte Task_806CBD0

.syntax divided
