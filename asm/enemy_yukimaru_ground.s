.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_8071BFC
Task_8071BFC: @ 0x08071BFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r4, _08071CF4 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	adds r0, #0xc
	adds r0, r0, r3
	mov r8, r0
	ldr r1, _08071CF8 @ =0x03000048
	adds r1, r1, r3
	mov sb, r1
	ldr r2, [r7]
	mov ip, r2
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r6, ip
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	ldr r2, _08071CFC @ =0x0300007A
	adds r0, r3, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, r5, r0
	lsls r0, r0, #0x10
	asrs r6, r1, #0x10
	str r6, [sp, #0x10]
	adds r2, #2
	adds r3, r3, r2
	ldr r6, _08071D00 @ =0xFFFA0000
	adds r1, r1, r6
	asrs r1, r1, #0x10
	ldrh r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	ldr r3, _08071D04 @ =gCamera
	ldrh r2, [r3]
	lsrs r6, r0, #0x10
	str r6, [sp, #0xc]
	asrs r0, r0, #0x10
	subs r2, r0, r2
	mov r6, r8
	strh r2, [r6, #0x16]
	ldrh r2, [r3, #2]
	lsrs r6, r1, #0x10
	mov sl, r6
	asrs r1, r1, #0x10
	subs r2, r1, r2
	mov r6, r8
	strh r2, [r6, #0x18]
	ldrh r2, [r3]
	subs r0, r0, r2
	mov r2, sb
	strh r0, [r2, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	movs r6, #0
	ldrsh r1, [r3, r6]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _08071CBC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _08071CBC
	movs r6, #2
	ldrsh r2, [r3, r6]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r6, [sp, #0x10]
	cmp r6, r0
	bgt _08071CBC
	adds r0, r2, #0
	subs r0, #0x80
	cmp r6, r0
	bge _08071D08
_08071CBC:
	mov r1, r8
	ldrh r0, [r1, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08071CE4
	mov r2, r8
	movs r6, #0x18
	ldrsh r0, [r2, r6]
	adds r0, #0x80
	cmp r0, #0
	blt _08071CE4
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08071D08
_08071CE4:
	ldrb r0, [r7, #8]
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08071DBC
	.align 2, 0
_08071CF4: .4byte gCurTask
_08071CF8: .4byte 0x03000048
_08071CFC: .4byte 0x0300007A
_08071D00: .4byte 0xFFFA0000
_08071D04: .4byte gCamera
_08071D08:
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	bl Coll_Player_Enemy_Attack
	cmp r0, #0
	beq _08071D30
	ldr r0, _08071D2C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08071DBC
	.align 2, 0
_08071D2C: .4byte gCurTask
_08071D30:
	add r2, sp, #8
	str r2, [sp]
	ldr r0, _08071DCC @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	adds r2, r7, #0
	adds r2, #0x7c
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	adds r4, r7, #0
	adds r4, #0x7e
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bne _08071D6E
	adds r1, r5, #0
	subs r1, #0x12
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_8071DDC
_08071D6E:
	movs r6, #0
	ldrsh r0, [r4, r6]
	cmp r0, #0xd
	bne _08071D8C
	mov r0, r8
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	mov r0, sb
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _08071DD0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08071DD4 @ =Task_YukimaruGroundInit
	str r0, [r1, #8]
_08071D8C:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
	mov r0, sb
	bl DisplaySprite
	mov r6, sb
	ldr r0, [r6, #0x10]
	ldr r1, _08071DD8 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #0x10]
_08071DBC:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071DCC: .4byte sa2__sub_801EE64
_08071DD0: .4byte gCurTask
_08071DD4: .4byte Task_YukimaruGroundInit
_08071DD8: .4byte 0xFFFFFBFF

	thumb_func_start sub_8071DDC
sub_8071DDC: @ 0x08071DDC
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
	ldr r0, _08071E70 @ =sub_8071E8C
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #2
	movs r1, #0
	mov r8, r1
	movs r1, #0xfb
	lsls r1, r1, #8
	strh r1, [r0, #0x34]
	strh r6, [r0, #0x32]
	strh r2, [r0, #0x30]
	subs r4, #8
	strh r4, [r0, #0x16]
	strh r5, [r0, #0x18]
	ldr r1, _08071E74 @ =0x06012580
	str r1, [r0, #4]
	movs r1, #0x40
	strh r1, [r0, #0x1a]
	strh r6, [r0, #8]
	ldr r1, _08071E78 @ =0x000001AB
	strh r1, [r0, #0xa]
	ldr r2, _08071E7C @ =0x03000020
	adds r1, r3, r2
	mov r2, r8
	strb r2, [r1]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0x1c]
	ldr r1, _08071E80 @ =0x03000021
	adds r2, r3, r1
	movs r1, #0xff
	strb r1, [r2]
	ldr r1, _08071E84 @ =0x03000022
	adds r2, r3, r1
	movs r1, #0x10
	strb r1, [r2]
	ldr r2, _08071E88 @ =0x03000025
	adds r3, r3, r2
	mov r1, r8
	strb r1, [r3]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x28]
	str r6, [r0, #0x10]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08071E70: .4byte sub_8071E8C
_08071E74: .4byte 0x06012580
_08071E78: .4byte 0x000001AB
_08071E7C: .4byte 0x03000020
_08071E80: .4byte 0x03000021
_08071E84: .4byte 0x03000022
_08071E88: .4byte 0x03000025

	thumb_func_start sub_8071E8C
sub_8071E8C: @ 0x08071E8C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08071F08 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r5, r4, #0
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08071EA6
	adds r0, #3
_08071EA6:
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x34]
	adds r0, #0x28
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	ldrh r6, [r4, #0x16]
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldrh r7, [r4, #0x18]
	movs r0, #0x18
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	bl Coll_Player_Projectile
	ldr r3, _08071F0C @ =gCamera
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
	bhi _08071EFC
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _08071EFC
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08071F10
_08071EFC:
	ldr r0, _08071F08 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08071F20
	.align 2, 0
_08071F08: .4byte gCurTask
_08071F0C: .4byte gCamera
_08071F10:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	strh r6, [r5, #0x16]
	strh r7, [r5, #0x18]
_08071F20:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_YukimaruGround
TaskDestructor_YukimaruGround: @ 0x08071F28
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x4c]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
