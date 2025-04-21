.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_Fireball
Task_Fireball: @ 0x08070E94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r2, _08070F14 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1     @ r7 = (FireballParent*)fireball
	ldr r3, [r7]
	mov sl, r3
	ldrb r0, [r7, #6]
	lsls r0, r0, #3
	ldrh r1, [r7, #8]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #0xa]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r6, r8
	lsls r0, r6, #0x10
	asrs r3, r0, #0x10
	ldr r5, _08070F18 @ =gCamera
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r6, #0xb8
	lsls r6, r6, #1
	adds r0, r1, r6
	cmp r3, r0
	bgt _08070F06
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	blt _08070F06
	lsls r0, r4, #0x10
	asrs r6, r0, #0x10
	movs r0, #2
	ldrsh r1, [r5, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r6, r0
	bgt _08070F06
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	bge _08070F1C
_08070F06:
	ldrb r0, [r7, #6]
	mov r6, sl
	strb r0, [r6]
	ldr r0, [r2]
	bl TaskDestroy
	b _08070FE8
	.align 2, 0
_08070F14: .4byte gCurTask
_08070F18: .4byte gCamera
_08070F1C:
	ldr r0, _08070FF8 @ =gStageTime
	movs r2, #4
	ldrsh r1, [r7, r2]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xf0
	bl Mod
	mov sb, r0
	cmp r0, #0
	bne _08070FE8
	ldr r0, _08070FFC @ =Task_807101C
	ldr r1, _08071000 @ =TaskDestructor_EntityShared
	str r1, [sp]
	movs r1, #0x48
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r1, r5, r3
	ldr r0, _08071004 @ =0x0300000C
	adds r4, r5, r0
	ldrh r0, [r7, #8]
	strh r0, [r1, #4]
	ldrh r0, [r7, #0xa]
	strh r0, [r1, #6]
	ldr r0, [r7]
	str r0, [r1]
	ldrb r0, [r7, #6]
	strb r0, [r1, #8]
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r1, #0x3c]
	mov r2, r8
	strh r2, [r1, #0x3e]
	adds r2, r6, #0
	adds r2, #0x18
	adds r3, #0x40
	adds r0, r5, r3
	strh r2, [r0]
	movs r6, #0
	ldrsh r0, [r0, r6]
	str r0, [r1, #0x44]
	mov r0, sl
	ldrb r1, [r0]
	lsls r1, r1, #3
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x16]
	mov r2, sl
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x18]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r2]
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	mov r6, sb
	strh r6, [r4, #8]
	ldr r0, _08071008 @ =0x0000019D
	strh r0, [r4, #0xa]
	ldr r1, _0807100C @ =0x0300002C
	adds r0, r5, r1
	movs r2, #0
	strb r2, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r3, _08071010 @ =0x0300002D
	adds r1, r5, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r6, _08071014 @ =0x0300002E
	adds r1, r5, r6
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08071018 @ =0x03000031
	adds r5, r5, r0
	strb r2, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_08070FE8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070FF8: .4byte gStageTime
_08070FFC: .4byte Task_807101C
_08071000: .4byte TaskDestructor_EntityShared
_08071004: .4byte 0x0300000C
_08071008: .4byte 0x0000019D
_0807100C: .4byte 0x0300002C
_08071010: .4byte 0x0300002D
_08071014: .4byte 0x0300002E
_08071018: .4byte 0x03000031

	thumb_func_start Task_807101C
Task_807101C: @ 0x0807101C
	push {r4, r5, r6, r7, lr}
	ldr r3, _080710BC @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0xc
	adds r4, r2, r0
	ldr r1, [r5]
	mov ip, r1
	ldr r6, _080710C0 @ =gCamera
	ldrh r0, [r5, #0x3e]
	ldrh r1, [r6]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0x3c]
	adds r0, #0x40
	strh r0, [r5, #0x3c]
	ldr r7, _080710C4 @ =0x03000040
	adds r2, r2, r7
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrh r1, [r6, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	movs r7, #0x3e
	ldrsh r2, [r5, r7]
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r2, r0
	bgt _08071088
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08071088
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r2, [r5, #0x44]
	cmp r2, r0
	bgt _08071088
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _080710C8
_08071088:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080710AC
	movs r7, #0x18
	ldrsh r0, [r4, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _080710AC
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080710C8
_080710AC:
	ldrb r0, [r5, #8]
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r3]
	bl TaskDestroy
	b _08071148
	.align 2, 0
_080710BC: .4byte gCurTask
_080710C0: .4byte gCamera
_080710C4: .4byte 0x03000040
_080710C8:
	ldr r6, _08071150 @ =gPlayer
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080710F2
	movs r2, #0x3e
	ldrsh r1, [r5, r2]
	adds r0, r5, #0
	adds r0, #0x40
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	adds r3, r6, #0
	bl Coll_Player_Entity_Intersection
	cmp r0, #0
	beq _080710F2
	adds r0, r6, #0
	bl Coll_DamagePlayer
_080710F2:
	movs r7, #0x3c
	ldrsh r0, [r5, r7]
	cmp r0, #0
	blt _08071124
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	adds r1, r5, #0
	adds r1, #0x40
	ldrh r1, [r1]
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl CreateFireballSparks
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08071154 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08071158 @ =Task_8071160
	str r0, [r1, #8]
_08071124:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	ldr r1, _0807115C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
_08071148:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071150: .4byte gPlayer
_08071154: .4byte gCurTask
_08071158: .4byte Task_8071160
_0807115C: .4byte 0xFFFFFBFF

	thumb_func_start Task_8071160
Task_8071160: @ 0x08071160
	push {r4, r5, r6, r7, lr}
	ldr r3, _08071200 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0xc
	adds r4, r2, r0
	ldr r1, [r5]
	mov ip, r1
	ldr r6, _08071204 @ =gCamera
	ldrh r0, [r5, #0x3e]
	ldrh r1, [r6]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #0x3c]
	adds r0, #0x40
	strh r0, [r5, #0x3c]
	ldr r7, _08071208 @ =0x03000040
	adds r2, r2, r7
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrh r1, [r6, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	movs r7, #0x3e
	ldrsh r2, [r5, r7]
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r2, r0
	bgt _080711CC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _080711CC
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r2, [r5, #0x44]
	cmp r2, r0
	bgt _080711CC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0807120C
_080711CC:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080711F0
	movs r7, #0x18
	ldrsh r0, [r4, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _080711F0
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807120C
_080711F0:
	ldrb r0, [r5, #8]
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r3]
	bl TaskDestroy
	b _0807127C
	.align 2, 0
_08071200: .4byte gCurTask
_08071204: .4byte gCamera
_08071208: .4byte 0x03000040
_0807120C:
	ldr r6, _0807124C @ =gPlayer
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08071236
	movs r2, #0x3e
	ldrsh r1, [r5, r2]
	adds r0, r5, #0
	adds r0, #0x40
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	adds r3, r6, #0
	bl Coll_Player_Entity_Intersection
	cmp r0, #0
	beq _08071236
	adds r0, r6, #0
	bl Coll_DamagePlayer
_08071236:
	movs r7, #0x3c
	ldrsh r1, [r5, r7]
	ldr r0, _08071250 @ =0x000001FF
	cmp r1, r0
	ble _08071258
	ldr r0, _08071254 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807127C
	.align 2, 0
_0807124C: .4byte gPlayer
_08071250: .4byte 0x000001FF
_08071254: .4byte gCurTask
_08071258:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	ldr r1, _08071284 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
_0807127C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08071284: .4byte 0xFFFFFBFF

.if 0
.endif
