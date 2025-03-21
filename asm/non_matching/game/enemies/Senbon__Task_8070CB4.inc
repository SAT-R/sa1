.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08070D84 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08070D88 @ =0x0300000C
	adds r5, r1, r0
	mov r1, r8
	ldr r1, [r1]
	mov ip, r1
	mov r4, r8
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
	asrs r4, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	mov r1, r8
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	adds r0, r4, r0
	lsls r0, r0, #0x10
	ldrh r1, [r1, #0x3c]
	adds r1, r7, r1
	lsls r1, r1, #0x10
	ldr r6, _08070D8C @ =gCamera
	ldrh r2, [r6]
	mov sl, r2
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	mov r2, sl
	subs r0, r0, r2
	strh r0, [r5, #0x16]
	ldrh r0, [r6, #2]
	lsrs r2, r1, #0x10
	mov sl, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _08070D4E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _08070D4E
	movs r4, #2
	ldrsh r2, [r6, r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r7, r0
	bgt _08070D4E
	adds r0, r2, #0
	subs r0, #0x80
	cmp r7, r0
	bge _08070D90
_08070D4E:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08070D72
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08070D72
	movs r4, #0x18
	ldrsh r1, [r5, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08070D90
_08070D72:
	mov r1, r8
	ldrb r0, [r1, #8]
	mov r2, ip
	strb r0, [r2]
	ldr r0, [r3]
	bl TaskDestroy
	b _08070E74
	.align 2, 0
_08070D84: .4byte gCurTask
_08070D88: .4byte 0x0300000C
_08070D8C: .4byte gCamera
_08070D90:
	ldr r1, [r5, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08070E40
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x2c
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r4, r0, r7
	ldr r2, _08070E84 @ =gPlayer
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _08070E88 @ =gPlayerBodyPSI
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov ip, r0
	add r1, ip
	adds r6, r3, #0
	cmp r4, r1
	bgt _08070DDC
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r4, r0
	cmp r0, r1
	bge _08070DF0
	cmp r4, r1
	blt _08070E40
_08070DDC:
	adds r0, r6, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r3, ip
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r4
	blt _08070E40
_08070DF0:
	mov r4, sl
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r3, r5, #0
	adds r3, #0x2d
	movs r4, #0
	ldrsb r4, [r3, r4]
	adds r1, r0, r4
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r3, r6, #0
	adds r3, #0x39
	movs r7, #0
	ldrsb r7, [r3, r7]
	adds r3, r0, r7
	cmp r1, r3
	bgt _08070E28
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r3
	bge _08070E3A
	cmp r1, r3
	blt _08070E40
_08070E28:
	adds r0, r6, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r3, r0
	cmp r0, r1
	blt _08070E40
_08070E3A:
	adds r0, r2, #0
	bl sa2__sub_800CBA4
_08070E40:
	mov r1, r8
	adds r1, #0x44
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08070E68
	adds r1, #2
	movs r0, #0x78
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08070E8C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08070E90 @ =Task_SenbonInit
	str r0, [r1, #8]
_08070E68:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_08070E74:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070E84: .4byte gPlayer
_08070E88: .4byte gPlayerBodyPSI
_08070E8C: .4byte gCurTask
_08070E90: .4byte Task_SenbonInit

.syntax divided
