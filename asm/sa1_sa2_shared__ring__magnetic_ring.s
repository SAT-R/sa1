.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateMagneticRing
CreateMagneticRing: @ 0x08024B30
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
	ldr r0, _08024BB0 @ =Task_MagneticRing
	movs r2, #0x80
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x34
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	movs r0, #0
	mov r8, r0
	strh r6, [r1, #0x30]
	strh r4, [r1, #0x16]
	strh r5, [r1, #0x18]
	ldr r0, _08024BB4 @ =0x06011D00
	str r0, [r1, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r1, #0x1a]
	strh r6, [r1, #8]
	subs r0, #0xfd
	strh r0, [r1, #0xa]
	ldr r2, _08024BB8 @ =0x03000020
	adds r0, r3, r2
	mov r2, r8
	strb r2, [r0]
	strh r6, [r1, #0x14]
	strh r6, [r1, #0x1c]
	ldr r0, _08024BBC @ =0x03000021
	adds r2, r3, r0
	movs r0, #0xff
	strb r0, [r2]
	ldr r0, _08024BC0 @ =0x03000022
	adds r2, r3, r0
	movs r0, #0x10
	strb r0, [r2]
	ldr r2, _08024BC4 @ =0x03000025
	adds r3, r3, r2
	mov r0, r8
	strb r0, [r3]
	movs r0, #0xc2
	lsls r0, r0, #0xc
	str r0, [r1, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08024BB0: .4byte Task_MagneticRing
_08024BB4: .4byte 0x06011D00
_08024BB8: .4byte 0x03000020
_08024BBC: .4byte 0x03000021
_08024BC0: .4byte 0x03000022
_08024BC4: .4byte 0x03000025

	thumb_func_start Task_MagneticRing
Task_MagneticRing: @ 0x08024BC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08024D30 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r4, _08024D34 @ =gPlayer
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrh r0, [r5, #0x16]
	subs r1, r1, r0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldrh r2, [r5, #0x18]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	ldrh r1, [r5, #0x30]
	adds r1, #0x40
	strh r1, [r5, #0x30]
	movs r1, #0x30
	ldrsh r2, [r5, r1]
	ldr r3, _08024D38 @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r0, r6
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r6, #0
	ldrsh r1, [r1, r6]
	muls r1, r2, r1
	asrs r1, r1, #0x16
	ldrh r2, [r5, #0x16]
	adds r1, r1, r2
	strh r1, [r5, #0x16]
	movs r6, #0x30
	ldrsh r1, [r5, r6]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	asrs r0, r0, #0x16
	ldrh r3, [r5, #0x18]
	adds r0, r0, r3
	strh r0, [r5, #0x18]
	ldrh r6, [r5, #0x18]
	mov r8, r6
	ldrh r0, [r5, #0x16]
	mov sl, r0
	movs r1, #0x16
	ldrsh r3, [r5, r1]
	adds r2, r3, #0
	subs r2, #8
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r6, _08024D3C @ =gUnknown_03005BE0
	adds r0, r6, #0
	adds r0, #0x38
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	cmp r2, r1
	bgt _08024C6A
	adds r0, r3, #0
	adds r0, #8
	cmp r0, r1
	bge _08024C7C
	cmp r2, r1
	blt _08024D54
_08024C6A:
	adds r0, r6, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _08024D54
_08024C7C:
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r7, r2, #0x10
	adds r4, r7, #0
	subs r4, #0x10
	ldr r1, _08024D34 @ =gPlayer
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	ldr r6, _08024D3C @ =gUnknown_03005BE0
	mov ip, r6
	mov r3, ip
	adds r3, #0x39
	movs r6, #0
	ldrsb r6, [r3, r6]
	adds r3, r0, r6
	mov sb, r2
	cmp r4, r3
	bgt _08024CA8
	cmp r7, r3
	bge _08024CBA
	cmp r4, r3
	blt _08024D54
_08024CA8:
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r3, r0
	cmp r0, r4
	blt _08024D54
_08024CBA:
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08024D26
	ldr r1, _08024D40 @ =gRingCount
	ldrh r5, [r1]
	adds r0, r5, #1
	strh r0, [r1]
	ldr r0, _08024D44 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _08024D04
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _08024D04
	ldr r0, _08024D48 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024D04
	ldr r1, _08024D4C @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08024D50 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
_08024D04:
	ldr r0, _08024D48 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08024D18
	ldr r1, _08024D40 @ =gRingCount
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _08024D18
	movs r0, #0xff
	strh r0, [r1]
_08024D18:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	asrs r1, r2, #0x10
	bl CreateCollectRingEffect
_08024D26:
	ldr r0, _08024D30 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08024D7A
	.align 2, 0
_08024D30: .4byte gCurTask
_08024D34: .4byte gPlayer
_08024D38: .4byte gSineTable
_08024D3C: .4byte gUnknown_03005BE0
_08024D40: .4byte gRingCount
_08024D44: .4byte gCurrentLevel
_08024D48: .4byte gGameMode
_08024D4C: .4byte gNumLives
_08024D50: .4byte gUnknown_03005040
_08024D54:
	ldr r2, _08024D88 @ =gCamera
	ldrh r0, [r5, #0x16]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldrh r0, [r5, #0x18]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	mov r3, sl
	strh r3, [r5, #0x16]
	mov r6, r8
	strh r6, [r5, #0x18]
_08024D7A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024D88: .4byte gCamera
