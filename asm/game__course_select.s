.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_8062540
Task_8062540: @ 0x08062540
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080625C8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r0, [r6, #0x10]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r6, #0x14]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r6, #0x18]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _080625CC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0806262E
	movs r3, #0
	ldr r0, _080625D0 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _0806260A
	movs r5, #1
	ldr r2, _080625D4 @ =gMultiplayerMissingHeartbeats
_0806258A:
	ldr r1, _080625D8 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _080625F4
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _080625F8
	movs r0, #0
	ldr r1, _080625DC @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _080625E0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080625E4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080625E8 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _080625EC @ =gVramGraphicsCopyCursor
	ldr r0, _080625F0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _08062884
	.align 2, 0
_080625C8: .4byte gCurTask
_080625CC: .4byte gGameMode
_080625D0: .4byte gMultiplayerConnections
_080625D4: .4byte gMultiplayerMissingHeartbeats
_080625D8: .4byte gMultiSioStatusFlags
_080625DC: .4byte 0x0000FFFF
_080625E0: .4byte gBackgroundsCopyQueueCursor
_080625E4: .4byte gBackgroundsCopyQueueIndex
_080625E8: .4byte sa2__gUnknown_03005390
_080625EC: .4byte gVramGraphicsCopyCursor
_080625F0: .4byte gVramGraphicsCopyQueueIndex
_080625F4:
	movs r0, #0
	strb r0, [r2]
_080625F8:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0806260A
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0806258A
_0806260A:
	ldr r0, _08062718 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0806262E
	ldr r2, _0806271C @ =gMultiSioRecv
	ldr r0, _08062720 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0806262E
	ldrh r0, [r2]
	cmp r0, #0x4f
	bls _0806262E
	ldrb r0, [r2, #2]
	adds r1, r6, #0
	adds r1, #0x55
	strb r0, [r1]
_0806262E:
	ldr r2, [r6, #0x4c]
	adds r0, r6, #0
	adds r0, #0x58
	adds r2, #1
	ldrb r0, [r0]
	adds r3, r6, #0
	adds r3, #0x52
	cmp r0, #1
	bne _08062644
	movs r0, #0
	strh r0, [r3]
_08062644:
	str r2, [r6, #0x4c]
	movs r0, #0xb4
	lsls r0, r0, #2
	mov r4, r8
	adds r1, r4, r0
	str r2, [r1]
	add r0, sb
	str r2, [r0]
	mov r0, sl
	str r2, [r0, #0x48]
	adds r5, r6, #0
	adds r5, #0x55
	ldrb r2, [r5]
	ldr r0, _08062724 @ =0x000002D7
	adds r1, r4, r0
	strb r2, [r1]
	ldrb r1, [r5]
	add r0, sb
	strb r1, [r0]
	ldrb r0, [r5]
	mov r1, sl
	adds r1, #0x4f
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r4, r6, #0
	adds r4, #0x50
	ldrh r1, [r4]
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0xa
	bl Div
	ldrh r2, [r4]
	adds r2, r2, r0
	movs r7, #0
	strh r2, [r4]
	movs r0, #0xb5
	lsls r0, r0, #2
	mov r3, r8
	adds r1, r3, r0
	strh r2, [r1]
	ldrh r1, [r4]
	add r0, sb
	strh r1, [r0]
	ldrh r1, [r4]
	mov r0, sl
	adds r0, #0x4c
	strh r1, [r0]
	movs r0, #0x57
	adds r0, r0, r6
	mov sb, r0
	ldrb r1, [r0]
	ldr r0, _08062728 @ =0x000002D9
	add r0, r8
	strb r1, [r0]
	adds r0, r6, #0
	bl sub_805423C
	movs r3, #6
	ldrsh r1, [r6, r3]
	movs r0, #0xc0
	lsls r0, r0, #5
	cmp r1, r0
	bgt _080626C8
	b _08062860
_080626C8:
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #1
	beq _080626D2
	b _08062860
_080626D2:
	ldr r0, _08062718 @ =gGameMode
	ldrb r3, [r0]
	adds r2, r0, #0
	cmp r3, #1
	bls _080626DE
	b _0806284C
_080626DE:
	ldr r2, _0806272C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08062730 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08062734 @ =gBldRegs
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #4]
	ldr r1, _08062738 @ =gBgCntRegs
	ldr r0, _0806273C @ =0x00009D03
	strh r0, [r1]
	ldr r0, _08062740 @ =0x00001806
	strh r0, [r1, #2]
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #1
	beq _08062704
	b _08062814
_08062704:
	cmp r3, #1
	bne _08062768
	ldrb r1, [r5]
	cmp r1, #0
	bne _0806274C
	ldr r0, _08062744 @ =gCurrentLevel
	strb r7, [r0]
	ldr r0, _08062748 @ =gMultiplayerCurrentLevel
	strb r7, [r0]
	b _0806275A
	.align 2, 0
_08062718: .4byte gGameMode
_0806271C: .4byte gMultiSioRecv
_08062720: .4byte gMultiSioStatusFlags
_08062724: .4byte 0x000002D7
_08062728: .4byte 0x000002D9
_0806272C: .4byte gDispCnt
_08062730: .4byte 0x00001FFF
_08062734: .4byte gBldRegs
_08062738: .4byte gBgCntRegs
_0806273C: .4byte 0x00009D03
_08062740: .4byte 0x00001806
_08062744: .4byte gCurrentLevel
_08062748: .4byte gMultiplayerCurrentLevel
_0806274C:
	cmp r1, #0x12
	bhi _0806275A
	ldr r0, _08062760 @ =gCurrentLevel
	subs r1, #1
	strb r1, [r0]
	ldr r0, _08062764 @ =gMultiplayerCurrentLevel
	strb r1, [r0]
_0806275A:
	bl sub_806B81C
	b _080627EA
	.align 2, 0
_08062760: .4byte gCurrentLevel
_08062764: .4byte gMultiplayerCurrentLevel
_08062768:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r0, [r0]
	cmp r0, #1
	bne _08062780
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl CreateTimeAttackRecord
	b _080627EA
_08062780:
	ldr r3, _080627C8 @ =sa2__gUnknown_03004D80
	strb r7, [r3]
	ldr r0, _080627CC @ =sa2__gUnknown_03002280
	strb r7, [r0]
	strb r7, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x20
	strb r2, [r0, #3]
	strb r7, [r3, #1]
	strb r7, [r0, #4]
	strb r7, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r7, [r3, #2]
	strb r7, [r0, #8]
	strb r7, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	strb r7, [r3, #3]
	strb r7, [r0, #0xc]
	strb r7, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r2, [r0, #0xf]
	ldrb r1, [r5]
	cmp r1, #0
	bne _080627D8
	ldr r0, _080627D0 @ =gCurrentLevel
	strb r7, [r0]
	ldr r0, _080627D4 @ =gMultiplayerCurrentLevel
	strb r7, [r0]
	bl ApplyGameStageSettings
	b _080627EA
	.align 2, 0
_080627C8: .4byte sa2__gUnknown_03004D80
_080627CC: .4byte sa2__gUnknown_03002280
_080627D0: .4byte gCurrentLevel
_080627D4: .4byte gMultiplayerCurrentLevel
_080627D8:
	cmp r1, #0x12
	bhi _080627EA
	ldr r0, _08062808 @ =gCurrentLevel
	subs r1, #1
	strb r1, [r0]
	ldr r0, _0806280C @ =gMultiplayerCurrentLevel
	strb r1, [r0]
	bl ApplyGameStageSettings
_080627EA:
	ldr r0, [r6, #0x18]
	bl TaskDestroy
	ldr r0, [r6, #0x14]
	bl TaskDestroy
	ldr r0, [r6, #0x10]
	bl TaskDestroy
	ldr r0, _08062810 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08062884
	.align 2, 0
_08062808: .4byte gCurrentLevel
_0806280C: .4byte gMultiplayerCurrentLevel
_08062810: .4byte gCurTask
_08062814:
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r4, [r0]
	ldr r0, [r6, #0x18]
	bl TaskDestroy
	ldr r0, [r6, #0x14]
	bl TaskDestroy
	ldr r0, [r6, #0x10]
	bl TaskDestroy
	ldr r0, _08062840 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	cmp r4, #1
	bne _08062844
	bl CreateTimeAttackMenu
	b _08062884
	.align 2, 0
_08062840: .4byte gCurTask
_08062844:
	movs r0, #0
	bl CreateCharacterSelectionScreen
	b _08062884
_0806284C:
	ldr r0, _08062858 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806285C @ =Task_80628A4
	str r0, [r1, #8]
	b _08062868
	.align 2, 0
_08062858: .4byte gCurTask
_0806285C: .4byte Task_80628A4
_08062860:
	ldr r1, _08062894 @ =gBgScrollRegs
	ldrh r0, [r4]
	strh r0, [r1, #2]
	ldr r2, _08062898 @ =gGameMode
_08062868:
	ldrb r0, [r2]
	cmp r0, #1
	bls _08062884
	ldr r0, _0806289C @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08062884
	ldr r2, _080628A0 @ =gMultiSioSend
	movs r0, #0x51
	strh r0, [r2]
	ldrb r0, [r5]
	strb r0, [r2, #2]
_08062884:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062894: .4byte gBgScrollRegs
_08062898: .4byte gGameMode
_0806289C: .4byte gMultiSioStatusFlags
_080628A0: .4byte gMultiSioSend

	thumb_func_start Task_80628A4
Task_80628A4: @ 0x080628A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08062918 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	ldr r0, _0806291C @ =gGameMode
	ldrb r0, [r0]
	mov sb, r2
	ldr r6, _08062920 @ =gMultiSioStatusFlags
	cmp r0, #1
	bls _0806295A
	movs r5, #0
	ldr r2, _08062924 @ =gMultiplayerConnections
	ldrb r1, [r2]
	movs r0, #1
	ands r1, r0
	adds r7, r2, #0
	cmp r1, #0
	beq _0806295A
	movs r2, #1
	ldr r3, _08062928 @ =gMultiplayerMissingHeartbeats
_080628DA:
	adds r0, r2, #0
	lsls r0, r5
	ldr r4, [r6]
	ands r4, r0
	cmp r4, #0
	bne _08062944
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _08062948
	movs r0, #0
	ldr r1, _0806292C @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _08062930 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08062934 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08062938 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0806293C @ =gVramGraphicsCopyCursor
	ldr r0, _08062940 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _080629DA
	.align 2, 0
_08062918: .4byte gCurTask
_0806291C: .4byte gGameMode
_08062920: .4byte gMultiSioStatusFlags
_08062924: .4byte gMultiplayerConnections
_08062928: .4byte gMultiplayerMissingHeartbeats
_0806292C: .4byte 0x0000FFFF
_08062930: .4byte gBackgroundsCopyQueueCursor
_08062934: .4byte gBackgroundsCopyQueueIndex
_08062938: .4byte sa2__gUnknown_03005390
_0806293C: .4byte gVramGraphicsCopyCursor
_08062940: .4byte gVramGraphicsCopyQueueIndex
_08062944:
	movs r0, #0
	strb r0, [r3]
_08062948:
	adds r3, #1
	adds r5, #1
	cmp r5, #3
	bhi _0806295A
	ldrb r0, [r7]
	asrs r0, r5
	ands r0, r2
	cmp r0, #0
	bne _080628DA
_0806295A:
	ldr r4, _080629C0 @ =gMultiSioRecv
	ldrh r0, [r4]
	mov r8, r4
	cmp r0, #0x52
	bne _0806296C
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _080629C4 @ =Task_80629E8
	str r0, [r1, #8]
_0806296C:
	ldr r1, [r6]
	movs r0, #0x80
	ands r1, r0
	ldr r2, _080629C8 @ =gMultiSioSend
	mov r5, ip
	adds r5, #0x55
	cmp r1, #0
	beq _080629D0
	movs r3, #1
	ldr r1, _080629CC @ =gMultiplayerConnections
	ldrb r0, [r1]
	asrs r0, r0, #1
	ands r0, r3
	adds r7, r1, #0
	cmp r0, #0
	beq _08062992
	ldrh r0, [r4, #0x14]
	cmp r0, #0x51
	bne _080629B4
_08062992:
	adds r3, #1
	cmp r3, #3
	bhi _080629B4
	ldrb r0, [r7]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08062992
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	mov r1, r8
	adds r4, r0, r1
	ldrh r0, [r4]
	cmp r0, #0x51
	beq _08062992
_080629B4:
	cmp r3, #4
	bne _080629D0
	adds r4, r2, #0
	movs r0, #0x52
	b _080629D4
	.align 2, 0
_080629C0: .4byte gMultiSioRecv
_080629C4: .4byte Task_80629E8
_080629C8: .4byte gMultiSioSend
_080629CC: .4byte gMultiplayerConnections
_080629D0:
	adds r4, r2, #0
	movs r0, #0x51
_080629D4:
	strh r0, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #2]
_080629DA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_80629E8
Task_80629E8: @ 0x080629E8
	push {r4, lr}
	ldr r0, _08062A24 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r2, _08062A28 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08062A2C @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08062A30 @ =gBldRegs
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _08062A34 @ =0x03000055
	adds r3, r3, r0
	ldrb r0, [r3]
	adds r1, r0, #0
	cmp r1, #0
	bne _08062A40
	ldr r0, _08062A38 @ =gCurrentLevel
	strb r2, [r0]
	ldr r0, _08062A3C @ =gMultiplayerCurrentLevel
	strb r2, [r0]
	bl ApplyGameStageSettings
	b _08062A52
	.align 2, 0
_08062A24: .4byte gCurTask
_08062A28: .4byte gDispCnt
_08062A2C: .4byte 0x00001FFF
_08062A30: .4byte gBldRegs
_08062A34: .4byte 0x03000055
_08062A38: .4byte gCurrentLevel
_08062A3C: .4byte gMultiplayerCurrentLevel
_08062A40:
	cmp r1, #0x12
	bhi _08062A52
	ldr r0, _08062A74 @ =gCurrentLevel
	subs r1, #1
	strb r1, [r0]
	ldr r0, _08062A78 @ =gMultiplayerCurrentLevel
	strb r1, [r0]
	bl ApplyGameStageSettings
_08062A52:
	ldr r0, [r4, #0x18]
	bl TaskDestroy
	ldr r0, [r4, #0x14]
	bl TaskDestroy
	ldr r0, [r4, #0x10]
	bl TaskDestroy
	ldr r0, _08062A7C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062A74: .4byte gCurrentLevel
_08062A78: .4byte gMultiplayerCurrentLevel
_08062A7C: .4byte gCurTask

	thumb_func_start Task_8062A80
Task_8062A80: @ 0x08062A80
	push {r4, r5, r6, lr}
	ldr r0, _08062A98 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	movs r5, #1
	ldr r1, _08062A9C @ =0x030002DA
	adds r0, r0, r1
	b _08062B0C
	.align 2, 0
_08062A98: .4byte gCurTask
_08062A9C: .4byte 0x030002DA
_08062AA0:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r6, r0
	ldr r2, _08062AC0 @ =0x000002D7
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r5, r0
	bne _08062AC4
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x4c
	b _08062ACE
	.align 2, 0
_08062AC0: .4byte 0x000002D7
_08062AC4:
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x48
_08062ACE:
	strh r0, [r4, #0x16]
	subs r0, r5, #1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r2, [r0]
	movs r0, #0x40
	subs r0, r0, r2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, #0x10
	strh r1, [r4, #0x18]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, _08062B2C @ =0x000002DA
	adds r0, r6, r1
_08062B0C:
	ldrb r0, [r0]
	cmp r5, r0
	blo _08062AA0
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r0, #0x3f
	bne _08062B26
	ldr r0, _08062B30 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062B34 @ =Task_8062B38
	str r0, [r1, #8]
_08062B26:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062B2C: .4byte 0x000002DA
_08062B30: .4byte gCurTask
_08062B34: .4byte Task_8062B38

	thumb_func_start Task_8062B38
Task_8062B38: @ 0x08062B38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08062BB8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r2, _08062BBC @ =0x030002DB
	adds r1, r0, r2
	ldrb r1, [r1]
	mov r8, r1
	ldr r3, _08062BC0 @ =0x030002D4
	adds r0, r0, r3
	ldrh r0, [r0]
	movs r1, #0x18
	bl Div
	subs r0, #1
	lsls r0, r0, #0x18
	movs r7, #0
	lsrs r5, r0, #0x18
_08062B66:
	cmp r5, #0
	beq _08062C0E
	ldr r1, _08062BC4 @ =0x000002DA
	adds r0, r6, r1
	ldrb r0, [r0]
	subs r0, #1
	cmp r5, r0
	bgt _08062C0E
	lsls r1, r5, #1
	adds r0, r1, r5
	lsls r0, r0, #4
	adds r4, r6, r0
	adds r2, r1, #0
	mov r3, r8
	cmp r3, #1
	bne _08062B90
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #0x10]
_08062B90:
	ldr r1, _08062BC8 @ =0x000002D7
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r5, r0
	bne _08062BE4
	ldr r3, _08062BCC @ =0x000002D9
	adds r0, r6, r3
	ldrb r1, [r0]
	cmp r1, #1
	bne _08062BD6
	subs r3, #9
	adds r0, r6, r3
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08062BD0
	adds r0, r4, #0
	adds r0, #0x25
	strb r1, [r0]
	b _08062BDE
	.align 2, 0
_08062BB8: .4byte gCurTask
_08062BBC: .4byte 0x030002DB
_08062BC0: .4byte 0x030002D4
_08062BC4: .4byte 0x000002DA
_08062BC8: .4byte 0x000002D7
_08062BCC: .4byte 0x000002D9
_08062BD0:
	adds r1, r4, #0
	adds r1, #0x25
	b _08062BDC
_08062BD6:
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #1
_08062BDC:
	strb r0, [r1]
_08062BDE:
	movs r0, #0x4c
	strh r0, [r4, #0x16]
	b _08062BF0
_08062BE4:
	movs r1, #0
	movs r0, #0x48
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x25
	strb r1, [r0]
_08062BF0:
	adds r1, r2, r5
	lsls r1, r1, #3
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0xc
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062C0E:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r7, #7
	bls _08062B66
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_8062C28
Task_8062C28: @ 0x08062C28
	push {r4, r5, r6, lr}
	ldr r0, _08062CA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #1
_08062C38:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	subs r0, #0x30
	adds r4, r6, r0
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xd4
	strh r0, [r4, #0x16]
	subs r1, r5, #1
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #4
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r2, [r0]
	movs r0, #0x40
	subs r0, r0, r2
	lsls r0, r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, #0x21
	strh r1, [r4, #0x18]
	ldr r1, _08062CAC @ =0x000002DA
	adds r0, r6, r1
	ldrb r0, [r0]
	adds r3, #1
	cmp r0, r3
	ble _08062C84
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062C84:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _08062C38
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r0, #0x3f
	bne _08062CA2
	ldr r0, _08062CA8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062CB0 @ =Task_8062CB4
	str r0, [r1, #8]
_08062CA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062CA8: .4byte gCurTask
_08062CAC: .4byte 0x000002DA
_08062CB0: .4byte Task_8062CB4

	thumb_func_start Task_8062CB4
Task_8062CB4: @ 0x08062CB4
	push {r4, r5, r6, r7, lr}
	ldr r0, _08062D2C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _08062D30 @ =0x030002D4
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0x2f
	bls _08062D70
	movs r1, #0x30
	bl Div
	subs r0, #1
	lsls r0, r0, #0x18
	movs r7, #1
	lsrs r5, r0, #0x18
_08062CDA:
	cmp r5, #7
	bhi _08062D58
	lsls r3, r5, #1
	adds r1, r3, r5
	lsls r1, r1, #4
	adds r4, r6, r1
	movs r2, #0
	movs r0, #0xd4
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0x37
	subs r0, r1, r0
	strh r0, [r4, #0x18]
	cmp r5, #6
	bne _08062D08
	subs r0, #0xc
	strh r0, [r4, #0x18]
_08062D08:
	cmp r5, #7
	bne _08062D12
	ldrh r0, [r4, #0x18]
	subs r0, #0x24
	strh r0, [r4, #0x18]
_08062D12:
	ldr r1, _08062D34 @ =0x000002DA
	adds r0, r6, r1
	ldrb r1, [r0]
	adds r0, r3, #1
	cmp r1, r0
	ble _08062D38
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08062D58
	.align 2, 0
_08062D2C: .4byte gCurTask
_08062D30: .4byte 0x030002D4
_08062D34: .4byte 0x000002DA
_08062D38:
	cmp r5, #7
	bne _08062D58
	ldr r0, _08062D6C @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08062D58
	cmp r1, #0xf
	bne _08062D58
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062D58:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r7, #6
	bls _08062CDA
	b _08062E0C
	.align 2, 0
_08062D6C: .4byte gSelectedCharacter
_08062D70:
	ldrh r0, [r1]
	movs r1, #0x30
	bl Div
	lsls r0, r0, #0x18
	movs r7, #1
	lsrs r5, r0, #0x18
_08062D7E:
	cmp r5, #7
	bhi _08062DFC
	lsls r3, r5, #1
	adds r1, r3, r5
	lsls r1, r1, #4
	adds r4, r6, r1
	movs r2, #0
	movs r0, #0xd4
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0x37
	subs r0, r1, r0
	strh r0, [r4, #0x18]
	cmp r5, #6
	bne _08062DAC
	subs r0, #0xc
	strh r0, [r4, #0x18]
_08062DAC:
	cmp r5, #7
	bne _08062DE4
	ldrh r0, [r4, #0x18]
	subs r0, #0x24
	strh r0, [r4, #0x18]
	ldr r0, _08062DDC @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08062DFC
	ldr r1, _08062DE0 @ =0x000002DA
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _08062DFC
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08062DFC
	.align 2, 0
_08062DDC: .4byte gSelectedCharacter
_08062DE0: .4byte 0x000002DA
_08062DE4:
	ldr r2, _08062E14 @ =0x000002DA
	adds r0, r6, r2
	ldrb r1, [r0]
	adds r0, r3, #1
	cmp r1, r0
	ble _08062DFC
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062DFC:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r7, #5
	bls _08062D7E
_08062E0C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062E14: .4byte 0x000002DA

	thumb_func_start Task_8062E18
Task_8062E18: @ 0x08062E18
	push {r4, r5, r6, r7, lr}
	ldr r0, _08062E84 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r6, r4, #0
	adds r0, #0x4c
	adds r7, r5, r0
	ldrh r3, [r7]
	cmp r3, #0x14
	beq _08062E94
	ldr r0, [r4, #0x10]
	ldr r1, _08062E88 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
	movs r6, #0x30
	strh r6, [r4, #0x16]
	movs r0, #0x18
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _08062E8C @ =0x03000051
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #6
	bls _08062ECA
	ldr r0, _08062E90 @ =gUnknown_0868B220
	ldrb r1, [r1]
	subs r1, #1
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r7]
	ldrh r1, [r1]
	cmp r0, r1
	bhs _08062ECA
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	strh r6, [r4, #0x16]
	movs r0, #0x88
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
	b _08062ECA
	.align 2, 0
_08062E84: .4byte gCurTask
_08062E88: .4byte 0xFFFFF7FF
_08062E8C: .4byte 0x03000051
_08062E90: .4byte gUnknown_0868B220
_08062E94:
	ldr r0, _08062ED0 @ =0x03000051
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #7
	bls _08062ECA
	ldr r1, _08062ED4 @ =gUnknown_0868B220
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r3, r0
	bhs _08062ECA
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x30
	strh r0, [r6, #0x16]
	movs r0, #0x88
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08062ECA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062ED0: .4byte 0x03000051
_08062ED4: .4byte gUnknown_0868B220

    thumb_func_start TaskDestructor_CourseSelect
TaskDestructor_CourseSelect: @ 0x08062ED8
    bx lr
    .align 2, 0
