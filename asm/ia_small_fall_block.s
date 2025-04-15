.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_SmallFallBlockMain
Task_SmallFallBlockMain: @ 0x080939B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08093AD4 @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0          @ r8 = block
	ldr r2, _08093AD8 @ =0x0300000C
	adds r7, r1, r2     @ r7 = s
	ldr r3, [r0]
	str r3, [sp, #4]    @ sp04 = r3 = me
	ldrb r2, [r0, #8]
	lsls r2, r2, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10  @ r2 = worldX << 16
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	mov r4, r8          @ r4 = r8 = block
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10  @ r1 = worldY << 16
	ldr r3, _08093ADC @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10  @ r4 = worldX
	mov sl, r4          @ sl = r4 = worldX
	asrs r6, r2, #0x10  @ r6 = worldX
	subs r0, r6, r0
	strh r0, [r7, #0x16] @ s->x = TO_WORLD_POS(me->x, regionX);
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	str r2, [sp]
	asrs r5, r1, #0x10  @ r5 = r1 = worldY
	subs r0, r5, r0
	strh r0, [r7, #0x18] @ s->y = TO_WORLD_POS(me->y, regionY);
	ldr r3, _08093AE0 @ =gPlayer
	mov sb, r3          @ sb = gPlayer
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800B2BC
	adds r4, r0, #0
	ldr r0, _08093AE4 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08093A30
	ldr r3, _08093AE8 @ =gPartner
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800B2BC
	orrs r4, r0
_08093A30:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _08093A4E
	mov r4, sb
	ldr r0, [r4, #0x28]
	cmp r0, r7
	bne _08093A4E
	ldr r1, _08093AD4 @ =gCurTask
	ldr r0, [r1]
	ldr r1, _08093AEC @ =Task_SmallFallBlock1
	str r1, [r0, #8]
	movs r0, #0x1e
	mov r2, r8
	strh r0, [r2, #0x3c]
_08093A4E:
	ldr r0, _08093AF0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08093A64
	movs r0, #0
	mov r3, r8
	strh r0, [r3, #0x3c]
	ldr r0, _08093AD4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08093AF4 @ =Task_SmallFallBlock2
	str r0, [r1, #8]
_08093A64:
	mov r4, sl
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08093ADC @ =gCamera
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _08093A9E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08093A9E
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r4, #2
	ldrsh r2, [r3, r4]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	cmp r1, r0
	bgt _08093A9E
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _08093AF8
_08093A9E:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08093AC2
	movs r4, #0x18
	ldrsh r0, [r7, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _08093AC2
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08093AF8
_08093AC2:
	mov r1, r8
	ldrb r0, [r1, #8]
	ldr r2, [sp, #4]
	strb r0, [r2]
	ldr r0, _08093AD4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08093B74
	.align 2, 0
_08093AD4: .4byte gCurTask
_08093AD8: .4byte 0x0300000C
_08093ADC: .4byte gCamera
_08093AE0: .4byte gPlayer
_08093AE4: .4byte gNumSingleplayerCharacters
_08093AE8: .4byte gPartner
_08093AEC: .4byte Task_SmallFallBlock1
_08093AF0: .4byte gGameMode
_08093AF4: .4byte Task_SmallFallBlock2
_08093AF8:
	ldr r1, _08093B3C @ =gPlayer
	ldr r0, [r1, #0x10]
	movs r2, #8
	ands r0, r2
	cmp r0, #0
	beq _08093B0A
	ldr r0, [r1, #0x28]
	cmp r0, r7
	beq _08093B26
_08093B0A:
	ldr r0, _08093B40 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08093B48
	ldr r1, _08093B44 @ =gPartner
	ldr r0, [r1, #0x10]
	ands r0, r2
	cmp r0, #0
	beq _08093B48
	ldr r0, [r1, #0x28]
	cmp r0, r7
	bne _08093B48
_08093B26:
	mov r0, r8
	adds r0, #0x4c
	ldrh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	beq _08093B5A
	adds r0, r3, #0
	adds r0, #0x10
	b _08093B58
	.align 2, 0
_08093B3C: .4byte gPlayer
_08093B40: .4byte gNumSingleplayerCharacters
_08093B44: .4byte gPartner
_08093B48:
	mov r0, r8
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _08093B5A
	adds r0, r1, #0
	subs r0, #0x10
_08093B58:
	strh r0, [r2]
_08093B5A:
	ldr r1, _08093B84 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r3, [r7, #0x18]
	adds r0, r0, r3
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_08093B74:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08093B84: .4byte gSineTable
.endif

	thumb_func_start Task_SmallFallBlock1
Task_SmallFallBlock1: @ 0x08093B88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08093C28 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _08093C2C @ =0x0300000C
	adds r7, r1, r2
	ldr r3, [r6]
	mov r8, r3
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08093C30 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	mov sb, r4
	asrs r5, r2, #0x10
	subs r0, r5, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	str r2, [sp]
	asrs r4, r1, #0x10
	subs r0, r4, r0
	strh r0, [r7, #0x18]
	ldr r3, _08093C34 @ =gPlayer
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	ldr r0, _08093C38 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08093C00
	ldr r3, _08093C3C @ =gPartner
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
_08093C00:
	ldr r0, _08093C40 @ =gGameMode
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #1
	bls _08093C48
	mov r3, r8
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08093C48
	movs r0, #0
	strh r0, [r6, #0x3c]
	mov r4, sl
	ldr r1, [r4]
	ldr r0, _08093C44 @ =Task_SmallFallBlock2
	str r0, [r1, #8]
	b _08093C7C
	.align 2, 0
_08093C28: .4byte gCurTask
_08093C2C: .4byte 0x0300000C
_08093C30: .4byte gCamera
_08093C34: .4byte gPlayer
_08093C38: .4byte gNumSingleplayerCharacters
_08093C3C: .4byte gPartner
_08093C40: .4byte gGameMode
_08093C44: .4byte Task_SmallFallBlock2
_08093C48:
	ldrh r0, [r6, #0x3c]
	subs r0, #1
	strh r0, [r6, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08093C7C
	strh r0, [r6, #0x3c]
	ldr r0, _08093CEC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08093CF0 @ =Task_SmallFallBlock2
	str r0, [r1, #8]
	ldrb r0, [r2]
	cmp r0, #1
	bls _08093C7C
	bl CreateRoomEvent
	movs r2, #1
	strb r2, [r0]
	ldrh r1, [r6, #4]
	strb r1, [r0, #1]
	ldrh r1, [r6, #6]
	strb r1, [r0, #2]
	ldrb r1, [r6, #9]
	strb r1, [r0, #3]
	strb r2, [r0, #4]
_08093C7C:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08093CF4 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _08093CB6
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08093CB6
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r4, #2
	ldrsh r2, [r3, r4]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	cmp r1, r0
	bgt _08093CB6
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _08093CF8
_08093CB6:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08093CDA
	movs r4, #0x18
	ldrsh r0, [r7, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _08093CDA
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08093CF8
_08093CDA:
	ldrb r0, [r6, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _08093CEC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08093D74
	.align 2, 0
_08093CEC: .4byte gCurTask
_08093CF0: .4byte Task_SmallFallBlock2
_08093CF4: .4byte gCamera
_08093CF8:
	ldr r1, _08093D3C @ =gPlayer
	ldr r0, [r1, #0x10]
	movs r2, #8
	ands r0, r2
	cmp r0, #0
	beq _08093D0A
	ldr r0, [r1, #0x28]
	cmp r0, r7
	beq _08093D26
_08093D0A:
	ldr r0, _08093D40 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08093D48
	ldr r1, _08093D44 @ =gPartner
	ldr r0, [r1, #0x10]
	ands r0, r2
	cmp r0, #0
	beq _08093D48
	ldr r0, [r1, #0x28]
	cmp r0, r7
	bne _08093D48
_08093D26:
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	beq _08093D5A
	adds r0, r3, #0
	adds r0, #0x10
	b _08093D58
	.align 2, 0
_08093D3C: .4byte gPlayer
_08093D40: .4byte gNumSingleplayerCharacters
_08093D44: .4byte gPartner
_08093D48:
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _08093D5A
	adds r0, r1, #0
	subs r0, #0x10
_08093D58:
	strh r0, [r2]
_08093D5A:
	ldr r1, _08093D84 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r2, [r7, #0x18]
	adds r0, r0, r2
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_08093D74:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08093D84: .4byte gSineTable

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
