.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_SmallFallBlock2
Task_SmallFallBlock2: @ 0x08093D88
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08093E2C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r2, [r5]
	mov sb, r2
	ldr r3, _08093E30 @ =0x0300004A
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #0x2a
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r3, sb
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r4, _08093E34 @ =gCamera
	ldrh r3, [r4]
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	subs r0, r0, r3
	strh r0, [r6, #0x16]
	ldrh r0, [r4, #2]
	lsrs r3, r1, #0x10
	mov r8, r3
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r6, #0x18]
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	strh r0, [r5, #0x3c]
	movs r4, #0
	adds r7, r2, #0
_08093DF8:
	ldr r3, _08093E38 @ =gPlayer
	cmp r4, #0
	beq _08093E00
	ldr r3, _08093E3C @ =gPartner
_08093E00:
	ldr r1, [r3, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08093E62
	ldr r0, [r3, #0x28]
	cmp r0, r6
	bne _08093E62
	ldrh r0, [r5, #0x3c]
	cmp r0, #0x20
	bls _08093E40
	movs r0, #2
	orrs r1, r0
	subs r0, #0xb
	ands r1, r0
	str r1, [r3, #0x10]
	adds r0, r5, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	b _08093E62
	.align 2, 0
_08093E2C: .4byte gCurTask
_08093E30: .4byte 0x0300004A
_08093E34: .4byte gCamera
_08093E38: .4byte gPlayer
_08093E3C: .4byte gPartner
_08093E40:
	adds r0, r5, #0
	adds r0, #0x48
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r1, r0
	str r1, [r3, #4]
_08093E62:
	ldrh r0, [r5, #0x3c]
	cmp r0, #0x1f
	bhi _08093E80
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov r1, r8
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	asrs r1, r7, #0x10
	bl sub_800B2BC
_08093E80:
	adds r4, #1
	ldr r2, _08093EC0 @ =gNumSingleplayerCharacters
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r4, r0
	blt _08093DF8
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08093EB0
	movs r3, #0x18
	ldrsh r0, [r6, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _08093EB0
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08093EC8
_08093EB0:
	ldrb r0, [r5, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08093EC4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08093F3C
	.align 2, 0
_08093EC0: .4byte gNumSingleplayerCharacters
_08093EC4: .4byte gCurTask
_08093EC8:
	ldr r1, _08093F08 @ =gPlayer
	ldr r0, [r1, #0x10]
	movs r3, #8
	ands r0, r3
	cmp r0, #0
	beq _08093EDA
	ldr r0, [r1, #0x28]
	cmp r0, r6
	beq _08093EF2
_08093EDA:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _08093F10
	ldr r1, _08093F0C @ =gPartner
	ldr r0, [r1, #0x10]
	ands r0, r3
	cmp r0, #0
	beq _08093F10
	ldr r0, [r1, #0x28]
	cmp r0, r6
	bne _08093F10
_08093EF2:
	adds r0, r5, #0
	adds r0, #0x4c
	ldrh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	beq _08093F22
	adds r0, r3, #0
	adds r0, #0x10
	b _08093F20
	.align 2, 0
_08093F08: .4byte gPlayer
_08093F0C: .4byte gPartner
_08093F10:
	adds r0, r5, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _08093F22
	adds r0, r1, #0
	subs r0, #0x10
_08093F20:
	strh r0, [r2]
_08093F22:
	ldr r1, _08093F48 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r2, [r6, #0x18]
	adds r0, r0, r2
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
_08093F3C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08093F48: .4byte gSineTable
.endif

	thumb_func_start TaskDestructor_SmallFallBlock
TaskDestructor_SmallFallBlock: @ 0x08093F4C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
