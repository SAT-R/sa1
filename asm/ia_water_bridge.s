.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_WaterBridge
CreateEntity_WaterBridge: @ 0x0804DA7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0804DB5C @ =Task_WaterBridge
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0804DB60 @ =TaskDestructor_WaterBridge
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r6, r1
	mov r0, r8
	str r0, [r1]
	ldrb r2, [r0]
	ldr r3, _0804DB64 @ =0x03000055
	adds r0, r6, r3
	movs r7, #0
	mov sb, r7
	strb r2, [r0]
	ldr r2, _0804DB68 @ =0x03000054
	adds r0, r6, r2
	mov r3, sb
	strb r3, [r0]
	lsls r4, r4, #8
	mov r7, r8
	ldrb r0, [r7]
	lsls r0, r0, #3
	adds r4, r4, r0
	lsls r5, r5, #8
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	adds r5, r5, r0
	ldrb r3, [r7, #5]
	lsls r3, r3, #3
	ldrb r2, [r7, #6]
	lsls r2, r2, #3
	str r4, [r1, #4]
	str r5, [r1, #8]
	movs r0, #3
	ldrsb r0, [r7, r0]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r1, #0xc]
	movs r0, #4
	ldrsb r0, [r7, r0]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r1, #0x14]
	adds r4, r4, r3
	str r4, [r1, #0x10]
	adds r5, r5, r2
	str r5, [r1, #0x18]
	str r3, [r1, #0x1c]
	str r2, [r1, #0x20]
	ldr r0, _0804DB6C @ =0x03000024
	adds r4, r6, r0
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4, #4]
	movs r2, #0
	mov r1, sb
	strh r1, [r4, #8]
	movs r0, #0xed
	lsls r0, r0, #1
	strh r0, [r4, #0xa]
	ldr r3, _0804DB70 @ =0x03000044
	adds r0, r6, r3
	strb r2, [r0]
	ldr r7, _0804DB74 @ =0x03000045
	adds r1, r6, r7
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	mov r0, sb
	strh r0, [r4, #0x1c]
	adds r3, #2
	adds r1, r6, r3
	movs r0, #0x10
	strb r0, [r1]
	adds r7, #4
	adds r6, r6, r7
	strb r2, [r6]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x10]
	movs r0, #0xfe
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DB5C: .4byte Task_WaterBridge
_0804DB60: .4byte TaskDestructor_WaterBridge
_0804DB64: .4byte 0x03000055
_0804DB68: .4byte 0x03000054
_0804DB6C: .4byte 0x03000024
_0804DB70: .4byte 0x03000044
_0804DB74: .4byte 0x03000045

	thumb_func_start Task_WaterBridge
Task_WaterBridge: @ 0x0804DB78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804DBFC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r0, #0
	mov sl, r0
_0804DB92:
	ldr r5, _0804DC00 @ =gPlayer
	mov r1, sl
	cmp r1, #0
	beq _0804DB9C
	ldr r5, _0804DC04 @ =gPartner
_0804DB9C:
	ldr r0, [r5]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r5, r1]
	adds r7, r0, r1
	ldr r3, _0804DC08 @ =gCamera
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r6, #4]
	cmp r1, r0
	bgt _0804DBDE
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0804DBDE
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r6, #8]
	cmp r1, r0
	bgt _0804DBDE
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0804DC10
_0804DBDE:
	ldr r1, [r6]
	adds r0, r6, #0
	adds r0, #0x55
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	ldr r1, _0804DC0C @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _0804DBFC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804DDA6
	.align 2, 0
_0804DBFC: .4byte gCurTask
_0804DC00: .4byte gPlayer
_0804DC04: .4byte gPartner
_0804DC08: .4byte gCamera
_0804DC0C: .4byte 0xFFFF7FFF
_0804DC10:
	ldr r2, [r6, #0xc]
	cmp r2, sb
	ble _0804DC18
	b _0804DD6C
_0804DC18:
	ldr r0, [r6, #0x10]
	cmp sb, r0
	blt _0804DC20
	b _0804DD6C
_0804DC20:
	ldr r0, [r6, #0x14]
	cmp r0, r7
	ble _0804DC28
	b _0804DD6C
_0804DC28:
	ldr r4, [r6, #0x18]
	cmp r7, r4
	ble _0804DC30
	b _0804DD6C
_0804DC30:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804DC3C
	b _0804DDA6
_0804DC3C:
	mov r1, sb
	subs r0, r1, r2
	lsls r0, r0, #9
	ldr r1, [r6, #0x1c]
	bl __divsi3
	adds r2, r0, #0
	cmp r2, #0
	blt _0804DC5C
	ldr r1, _0804DC58 @ =0x000001FF
	cmp r0, r1
	ble _0804DC5E
	adds r0, r1, #0
	b _0804DC5E
	.align 2, 0
_0804DC58: .4byte 0x000001FF
_0804DC5C:
	movs r0, #0
_0804DC5E:
	adds r2, r0, #0
	ldr r3, _0804DCBC @ =gSineTable
	lsls r0, r2, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, [r6, #0x20]
	muls r1, r0, r1
	lsls r0, r4, #8
	subs r0, r0, r1
	asrs r0, r0, #8
	cmp r7, r0
	blt _0804DD6C
	adds r0, #0x20
	cmp r7, r0
	bgt _0804DD6C
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r8, r0
	ldr r0, [r5, #0x10]
	movs r4, #0x80
	lsls r4, r4, #8
	ands r0, r4
	cmp r0, #0
	bne _0804DCAA
	movs r0, #0xb1
	bl m4aSongNumStartOrChange
	ldr r0, [r5, #0x10]
	orrs r0, r4
	str r0, [r5, #0x10]
_0804DCAA:
	ldr r0, [r5, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804DCC0
	movs r2, #8
	ldrsh r1, [r5, r2]
	b _0804DCC4
	.align 2, 0
_0804DCBC: .4byte gSineTable
_0804DCC0:
	movs r0, #0xc
	ldrsh r1, [r5, r0]
_0804DCC4:
	adds r1, #0x40
	ldr r0, _0804DD00 @ =0xFFFFF800
	cmp r1, r0
	blt _0804DCD8
	adds r0, r1, #0
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	ble _0804DCD8
	adds r0, r1, #0
_0804DCD8:
	adds r1, r0, #0
	strh r1, [r5, #0xc]
	strh r1, [r5, #8]
	ldr r0, [r6, #0x20]
	rsbs r0, r0, #0
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	muls r0, r1, r0
	asrs r0, r0, #0x10
	subs r0, #0x2a
	ldr r1, _0804DD00 @ =0xFFFFF800
	cmp r0, r1
	blt _0804DD04
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	ble _0804DD06
	adds r0, r1, #0
	b _0804DD06
	.align 2, 0
_0804DD00: .4byte 0xFFFFF800
_0804DD04:
	adds r0, r1, #0
_0804DD06:
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	bl Player_TransitionCancelFlyingAndBoost
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	movs r1, #9
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #9
	strb r0, [r5, #0xf]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	strh r0, [r5, #0x3a]
	strh r0, [r5, #0x38]
	adds r4, r6, #0
	adds r4, #0x24
	ldr r1, _0804DD68 @ =gCamera
	ldrh r0, [r1]
	mov r2, sb
	subs r0, r2, r0
	strh r0, [r4, #0x16]
	movs r0, #0xe
	ldrsb r0, [r5, r0]
	subs r0, r7, r0
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _0804DD94
	.align 2, 0
_0804DD68: .4byte gCamera
_0804DD6C:
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0804DD8C
	ldr r0, _0804DDB4 @ =0xFFDFFFFF
	ands r1, r0
	str r1, [r5, #0x10]
	ldr r0, _0804DDB8 @ =gUnknown_030060E0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	ldrh r0, [r5, #0x38]
	orrs r1, r0
	strh r1, [r5, #0x38]
_0804DD8C:
	ldr r0, [r5, #0x10]
	ldr r1, _0804DDBC @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r5, #0x10]
_0804DD94:
	movs r0, #1
	add sl, r0
	ldr r0, _0804DDC0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp sl, r0
	bge _0804DDA6
	b _0804DB92
_0804DDA6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DDB4: .4byte 0xFFDFFFFF
_0804DDB8: .4byte gUnknown_030060E0
_0804DDBC: .4byte 0xFFFF7FFF
_0804DDC0: .4byte gNumSingleplayerCharacters

	thumb_func_start TaskDestructor_WaterBridge
TaskDestructor_WaterBridge: @ 0x0804DDC4
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0804DDD8 @ =0x03000024
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0804DDD8: .4byte 0x03000024
