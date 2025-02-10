.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Checkpoint
CreateEntity_Checkpoint: @ 0x080214EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	movs r1, #3
	ldrsb r1, [r6, r1]
	ldr r0, _08021528 @ =gBossIndex
	ldrb r0, [r0]
	cmp r1, r0
	bgt _08021534
	ldr r0, _0802152C @ =Task_Checkpoint2
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08021530 @ =sa2__TaskDestructor_80095E8
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	b _08021546
	.align 2, 0
_08021528: .4byte gBossIndex
_0802152C: .4byte Task_Checkpoint2
_08021530: .4byte sa2__TaskDestructor_80095E8
_08021534:
	ldr r0, _080215B0 @ =Task_CheckpointMain
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080215B4 @ =sa2__TaskDestructor_80095E8
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
_08021546:
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r7, r0
	movs r1, #0
	mov sb, r1
	strh r4, [r0, #4]
	mov r2, r8
	strh r2, [r0, #6]
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #8]
	strb r5, [r0, #9]
	ldr r0, _080215B8 @ =0x0300000C
	adds r5, r7, r0
	ldrb r0, [r6]
	lsls r0, r0, #3
	lsls r1, r4, #8
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #0x12
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	mov r2, sb
	strh r2, [r5, #8]
	movs r0, #0xe2
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	movs r1, #3
	ldrsb r1, [r6, r1]
	ldr r0, _080215BC @ =gBossIndex
	ldrb r0, [r0]
	cmp r1, r0
	bgt _080215C4
	ldr r0, _080215C0 @ =0x0300002C
	adds r1, r7, r0
	movs r0, #2
	b _080215CA
	.align 2, 0
_080215B0: .4byte Task_CheckpointMain
_080215B4: .4byte sa2__TaskDestructor_80095E8
_080215B8: .4byte 0x0300000C
_080215BC: .4byte gBossIndex
_080215C0: .4byte 0x0300002C
_080215C4:
	ldr r2, _08021604 @ =0x0300002C
	adds r1, r7, r2
	movs r0, #0
_080215CA:
	strb r0, [r1]
	movs r1, #0
	movs r0, #0
	strh r0, [r5, #0x14]
	strh r0, [r5, #0x1c]
	adds r2, r5, #0
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	adds r2, #1
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x25
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021604: .4byte 0x0300002C

	thumb_func_start Task_CheckpointMain
Task_CheckpointMain: @ 0x08021608
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _080216DC @ =gCurTask
	ldr r0, [r4]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	ldr r0, _080216E0 @ =0x0300000C
	adds r6, r5, r0
	mov r1, r8
	ldr r1, [r1]
	mov sb, r1
	mov r3, r8
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _080216E4 @ =gCamera
	ldrh r0, [r3]
	lsrs r7, r2, #0x10
	str r7, [sp]
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r3, r1, #0x10
	mov sl, r3
	asrs r1, r1, #0x10
	mov ip, r1
	subs r0, r1, r0
	strh r0, [r6, #0x18]
	ldr r0, _080216E8 @ =gCurrentLevel
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r7, _080216EC @ =gPlayer
	cmp r1, #0xa
	beq _080216C2
	ldr r4, _080216F0 @ =0x03000038
	adds r0, r5, r4
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r2, r3
	ldr r0, [r7]
	asrs r1, r0, #8
	cmp r2, r1
	bgt _080216B8
	adds r4, #2
	adds r0, r5, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	blt _080216B8
	ldr r1, _080216F4 @ =0x03000039
	adds r0, r5, r1
	movs r3, #0
	ldrsb r3, [r0, r3]
	mov r2, ip
	adds r1, r2, r3
	ldr r0, [r7, #4]
	asrs r2, r0, #8
	cmp r1, r2
	bgt _080216B8
	adds r4, #1
	adds r0, r5, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	bge _0802170E
_080216B8:
	ldr r1, _080216E8 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0xa
	bne _080217B0
_080216C2:
	mov r2, sb
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #1
	bne _080216F8
	ldr r1, [r7]
	asrs r1, r1, #8
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _0802170E
	b _080217B0
	.align 2, 0
_080216DC: .4byte gCurTask
_080216E0: .4byte 0x0300000C
_080216E4: .4byte gCamera
_080216E8: .4byte gCurrentLevel
_080216EC: .4byte gPlayer
_080216F0: .4byte 0x03000038
_080216F4: .4byte 0x03000039
_080216F8:
	ldr r1, [r7, #4]
	asrs r1, r1, #8
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	adds r1, r1, r0
	mov r4, sl
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, #4
	cmp r1, r0
	bge _080217B0
_0802170E:
	ldr r4, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r4, r0
	cmp r4, #0
	bne _080217B0
	ldr r5, _080217E8 @ =gBossIndex
	mov r1, sb
	ldrb r0, [r1, #3]
	strb r0, [r5]
	adds r0, r7, #0
	adds r0, #0x48
	mov r2, sp
	ldrh r2, [r2]
	strh r2, [r0]
	movs r1, #0xf
	ldrsb r1, [r7, r1]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x4a
	strh r0, [r1]
	ldr r0, _080217EC @ =gCheckpointTime
	ldr r0, [r0]
	str r0, [r7, #0x4c]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080217F0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080217F4 @ =Task_Checkpoint1
	str r0, [r1, #8]
	bl _call_via_r0
	ldr r0, _080217F8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	bne _080217B0
	ldrb r0, [r5]
	cmp r0, #1
	bne _08021772
	strh r4, [r7, #8]
	strh r4, [r7, #0xc]
	bl CreateSomeScreenShakeEffect
_08021772:
	ldrb r0, [r5]
	cmp r0, #2
	bne _08021790
	ldr r0, _080217FC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802178A
	ldr r0, _08021800 @ =gStageFlags
	ldrh r1, [r0]
	movs r2, #1
	orrs r1, r2
	strh r1, [r0]
_0802178A:
	ldr r0, _08021804 @ =0x000015BF
	bl sub_8028C84
_08021790:
	ldr r0, _080217E8 @ =gBossIndex
	ldrb r0, [r0]
	cmp r0, #3
	bne _080217B0
	ldr r0, _080217FC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _080217AA
	ldr r0, _08021800 @ =gStageFlags
	ldrh r1, [r0]
	movs r2, #1
	orrs r1, r2
	strh r1, [r0]
_080217AA:
	ldr r0, _08021808 @ =0x00000CBF
	bl sub_8028C84
_080217B0:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080217D4
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080217D4
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802180C
_080217D4:
	mov r3, r8
	ldrb r0, [r3, #8]
	mov r4, sb
	strb r0, [r4]
	ldr r0, _080217F0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08021824
	.align 2, 0
_080217E8: .4byte gBossIndex
_080217EC: .4byte gCheckpointTime
_080217F0: .4byte gCurTask
_080217F4: .4byte Task_Checkpoint1
_080217F8: .4byte gCurrentLevel
_080217FC: .4byte gGameMode
_08021800: .4byte gStageFlags
_08021804: .4byte 0x000015BF
_08021808: .4byte 0x00000CBF
_0802180C:
	ldr r0, _08021834 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _08021824
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08021824:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021834: .4byte gCurrentLevel

	thumb_func_start Task_Checkpoint1
Task_Checkpoint1: @ 0x08021838
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080218AC @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r1, _080218B0 @ =0x0300000C
	adds r5, r6, r1
	ldr r7, [r4]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080218B4 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x18]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	mov r3, r8
	cmp r1, r0
	bhi _0802189E
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0802189E
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080218B8
_0802189E:
	ldrb r0, [r4, #8]
	strb r0, [r7]
	ldr r0, [r3]
	bl TaskDestroy
	b _080218F0
	.align 2, 0
_080218AC: .4byte gCurTask
_080218B0: .4byte 0x0300000C
_080218B4: .4byte gCamera
_080218B8:
	ldr r0, _080218FC @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _080218CE
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080218DE
_080218CE:
	ldr r0, _08021900 @ =0x0300002C
	adds r1, r6, r0
	movs r0, #2
	strb r0, [r1]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08021904 @ =Task_Checkpoint2
	str r0, [r1, #8]
_080218DE:
	ldr r0, _080218FC @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _080218F0
	adds r0, r5, #0
	bl DisplaySprite
_080218F0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080218FC: .4byte gCurrentLevel
_08021900: .4byte 0x0300002C
_08021904: .4byte Task_Checkpoint2

	thumb_func_start Task_Checkpoint2
Task_Checkpoint2: @ 0x08021908
	push {r4, r5, r6, r7, lr}
	ldr r4, _08021974 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r7, [r5]
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08021978 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #0x18]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08021966
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08021966
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0802197C
_08021966:
	ldrb r0, [r5, #8]
	strb r0, [r7]
	ldr r0, [r4]
	bl TaskDestroy
	b _08021994
	.align 2, 0
_08021974: .4byte gCurTask
_08021978: .4byte gCamera
_0802197C:
	ldr r0, _0802199C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _08021994
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08021994:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802199C: .4byte gCurrentLevel
