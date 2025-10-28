.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of src/game/multiplayer/mp_player.c ---
.if 0
.endif

	thumb_func_start Task_CreateMultiplayerPlayer
Task_CreateMultiplayerPlayer: @ 0x08013400
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _080134CC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	adds r6, r7, #0
	adds r0, #0x38
	adds r0, r4, r0
	str r0, [sp]
	ldr r1, _080134D0 @ =0x03000056
	adds r3, r4, r1
	ldrb r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _080134D4 @ =gMultiSioRecv
	adds r0, r0, r1
	mov r8, r0
	ldr r5, _080134D8 @ =gMultiSioStatusFlags
	mov sb, r5
	movs r5, #1
	adds r1, r5, #0
	lsls r1, r2
	mov r2, sb
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08013448
	b _08013810
_08013448:
	ldr r0, _080134DC @ =0x03000061
	adds r2, r4, r0
	movs r1, #0
	mov sl, r1
	mov r0, sl
	strb r0, [r2]
	adds r1, r5, #0
	ldrb r3, [r3]
	lsls r1, r3
	mov r3, sb
	ldr r0, [r3]
	ands r0, r1
	cmp r0, #0
	bne _08013466
	b _08013810
_08013466:
	mov r5, r8
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	beq _08013474
	b _08013810
_08013474:
	mov r0, sl
	strb r0, [r2]
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldr r2, _080134E0 @ =0x03000050
	adds r3, r4, r2
	movs r5, #0
	ldrsh r1, [r3, r5]
	subs r0, r0, r1
	str r0, [r7, #0x44]
	mov r1, r8
	movs r2, #4
	ldrsh r0, [r1, r2]
	ldr r5, _080134E4 @ =0x03000052
	adds r2, r4, r5
	movs r5, #0
	ldrsh r1, [r2, r5]
	subs r0, r0, r1
	str r0, [r7, #0x48]
	mov r1, r8
	ldrh r0, [r1, #2]
	strh r0, [r3]
	ldrh r0, [r1, #4]
	strh r0, [r2]
	ldr r0, [r7, #0x44]
	cmp r0, #0
	bge _080134AC
	rsbs r0, r0, #0
_080134AC:
	cmp r0, #0x40
	bgt _080134BC
	ldr r0, [r7, #0x48]
	cmp r0, #0
	bge _080134B8
	rsbs r0, r0, #0
_080134B8:
	cmp r0, #0x40
	ble _080134E8
_080134BC:
	adds r0, r6, #0
	adds r0, #0x66
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	b _080134FC
	.align 2, 0
_080134CC: .4byte gCurTask
_080134D0: .4byte 0x03000056
_080134D4: .4byte gMultiSioRecv
_080134D8: .4byte gMultiSioStatusFlags
_080134DC: .4byte 0x03000061
_080134E0: .4byte 0x03000050
_080134E4: .4byte 0x03000052
_080134E8:
	ldr r0, [r7, #0x44]
	lsls r0, r0, #8
	ldr r2, _0801358C @ =0x03000066
	adds r1, r4, r2
	strh r0, [r1]
	ldr r0, [r7, #0x48]
	lsls r0, r0, #8
	ldr r3, _08013590 @ =0x03000068
	adds r1, r4, r3
	strh r0, [r1]
_080134FC:
	adds r2, r6, #0
	adds r2, #0x57
	ldrb r1, [r2]
	mov r4, r8
	ldrb r0, [r4, #0xa]
	adds r4, r0, #0
	bics r4, r1
	adds r5, r4, #0
	adds r0, r4, #0
	movs r1, #2
	ands r0, r1
	mov sl, r2
	movs r2, #0x56
	adds r2, r2, r6
	mov sb, r2
	cmp r0, #0
	beq _08013526
	movs r0, #0
	ldrsb r0, [r2, r0]
	bl CreateItemTask_Invincibility
_08013526:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08013538
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	bl CreateItemTask_Shield_Normal
_08013538:
	movs r0, #8
	ands r4, r0
	cmp r4, #0
	beq _0801354A
	mov r4, sb
	movs r0, #0
	ldrsb r0, [r4, r0]
	bl CreateItemTask_Shield_Magnetic
_0801354A:
	movs r0, #0x50
	ands r5, r0
	cmp r5, #0
	beq _0801355C
	mov r5, sb
	movs r0, #0
	ldrsb r0, [r5, r0]
	bl CreateItemTask_Confusion
_0801355C:
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r2, sl
	strb r0, [r2]
	ldrh r1, [r1, #8]
	adds r0, r6, #0
	adds r0, #0x54
	strh r1, [r0]
	ldr r3, _08013594 @ =0x04000128
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r4, sb
	ldrb r4, [r4]
	cmp r0, r4
	beq _08013598
	movs r0, #0xc0
	lsls r0, r0, #3
	ands r0, r1
	lsrs r0, r0, #9
	adds r1, r6, #0
	adds r1, #0x64
	strb r0, [r1]
	b _08013644
	.align 2, 0
_0801358C: .4byte 0x03000066
_08013590: .4byte 0x03000068
_08013594: .4byte 0x04000128
_08013598:
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	adds r4, r6, #0
	adds r4, #0x64
	ldrb r2, [r4]
	lsrs r0, r0, #0x1e
	cmp r0, r2
	beq _08013644
	ldr r1, _08013674 @ =gMultiplayerPlayerTasks
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	ldr r2, _08013678 @ =0x03000064
	adds r1, r1, r2
	lsrs r0, r0, #0x1e
	ldrb r1, [r1]
	cmp r0, r1
	bne _08013644
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r4]
	ldr r4, _0801367C @ =gPlayer
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x18
	ands r0, r1
	movs r3, #5
	rsbs r3, r3, #0
	mov sl, r3
	ands r0, r3
	adds r1, #0x10
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08013680 @ =0xFFFFFBFF
	ands r0, r1
	ldr r1, _08013684 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0xe
	bl Player_HandleSpriteYOffsetChange
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x40
	movs r1, #4
	strb r1, [r0]
	movs r0, #0x3c
	strh r0, [r4, #0x1c]
	ldr r0, [r4, #0x10]
	ldr r2, _08013688 @ =0xFFBFFFFF
	ands r0, r2
	str r0, [r4, #0x10]
	ldr r0, [r6, #0x5c]
	mov r3, sl
	ands r0, r3
	str r0, [r6, #0x5c]
	ldr r0, [r5, #0x5c]
	ands r0, r1
	cmp r0, #0
	beq _08013644
	ldr r0, [r4, #0x10]
	ands r0, r2
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x5c]
	ands r0, r3
	str r0, [r5, #0x5c]
_08013644:
	ldr r0, _0801368C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _080136D4
	mov r4, r8
	ldrh r1, [r4, #6]
	ldrb r3, [r4, #6]
	ldr r2, _08013690 @ =gMultiplayerCharRings
	mov r5, sb
	ldrb r0, [r5]
	adds r0, r0, r2
	lsrs r1, r1, #8
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x6a
	strh r3, [r0]
	ldrb r0, [r5]
	cmp r0, #3
	bne _080136A0
	cmp r3, #8
	bne _08013694
	movs r3, #0xc4
	lsls r3, r3, #1
	b _080136B2
	.align 2, 0
_08013674: .4byte gMultiplayerPlayerTasks
_08013678: .4byte 0x03000064
_0801367C: .4byte gPlayer
_08013680: .4byte 0xFFFFFBFF
_08013684: .4byte 0xFFFFFEFF
_08013688: .4byte 0xFFBFFFFF
_0801368C: .4byte gGameMode
_08013690: .4byte gMultiplayerCharRings
_08013694:
	cmp r3, #0x12
	bne _080136A0
	ldr r3, _0801369C @ =0x00000189
	b _080136B2
	.align 2, 0
_0801369C: .4byte 0x00000189
_080136A0:
	ldr r0, _080136D0 @ =gPlayerCharacterIdleAnims
	mov r5, sb
	ldrb r1, [r5]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080136B2:
	adds r5, r7, #0
	adds r5, #0x20
	adds r0, r6, #0
	adds r0, #0x58
	str r0, [sp, #0x10]
	movs r1, #0x22
	adds r1, r1, r7
	mov sl, r1
	adds r2, r6, #0
	adds r2, #0x50
	movs r4, #0x52
	adds r4, r4, r6
	mov ip, r4
	b _0801377A
	.align 2, 0
_080136D0: .4byte gPlayerCharacterIdleAnims
_080136D4:
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0801375C
	movs r5, #0
	str r5, [sp, #8]
	mov r0, r8
	ldrh r1, [r0, #6]
	ldr r3, _08013750 @ =0x000003FF
	ands r3, r1
	ldr r0, _08013754 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r2, sb
	ldrb r2, [r2]
	cmp r0, r2
	beq _08013704
	lsrs r1, r1, #0xc
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x5c]
	orrs r0, r1
	str r0, [r6, #0x5c]
_08013704:
	movs r1, #0
	adds r5, r7, #0
	adds r5, #0x20
	adds r4, r6, #0
	adds r4, #0x58
	str r4, [sp, #0x10]
	movs r0, #0x22
	adds r0, r0, r7
	mov sl, r0
	adds r2, r6, #0
	adds r2, #0x50
	movs r4, #0x52
	adds r4, r4, r6
	mov ip, r4
	ldr r4, [r6, #0x5c]
_08013722:
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08013738
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
_08013738:
	adds r1, #1
	cmp r1, #2
	bls _08013722
	mov r1, sb
	ldrb r0, [r1]
	ldr r4, _08013758 @ =gMultiplayerCharRings
	adds r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #8]
	strb r1, [r0]
	b _0801377A
	.align 2, 0
_08013750: .4byte 0x000003FF
_08013754: .4byte 0x04000128
_08013758: .4byte gMultiplayerCharRings
_0801375C:
	mov r2, r8
	ldrh r3, [r2, #6]
	adds r5, r7, #0
	adds r5, #0x20
	adds r4, r6, #0
	adds r4, #0x58
	str r4, [sp, #0x10]
	movs r0, #0x22
	adds r0, r0, r7
	mov sl, r0
	adds r2, r6, #0
	adds r2, #0x50
	movs r1, #0x52
	adds r1, r1, r6
	mov ip, r1
_0801377A:
	mov r4, r8
	ldrb r0, [r4, #0xb]
	movs r1, #7
	mov sb, r1
	mov r4, sb
	ands r4, r0
	mov sb, r4
	ldrh r0, [r7, #0xa]
	cmp r0, r3
	bne _08013794
	ldrb r0, [r5]
	cmp r0, sb
	beq _0801379C
_08013794:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	str r0, [r7, #0x30]
_0801379C:
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r1, [r0]
	movs r4, #4
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080137E4
	ldr r0, [r6, #0x5c]
	ands r0, r4
	ldr r4, _08013808 @ =gPlayer
	cmp r0, #0
	beq _080137C8
	ldr r0, [r4, #0x10]
	ldr r1, _0801380C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r6, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x5c]
_080137C8:
	ldr r1, [r4, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080137E4
	ldr r0, [r4, #0x28]
	cmp r0, r7
	bne _080137E4
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r4, #0x10]
_080137E4:
	strh r3, [r7, #0xa]
	mov r0, sb
	strb r0, [r5]
	mov r1, r8
	ldrb r0, [r1, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1b
	ldr r3, [sp, #0x10]
	strb r0, [r3]
	ldrb r0, [r1, #0xc]
	mov r4, sl
	strb r0, [r4]
	ldrb r0, [r1, #0xd]
	lsls r0, r0, #2
	ldr r5, [sp]
	strh r0, [r5]
	b _08013890
	.align 2, 0
_08013808: .4byte gPlayer
_0801380C: .4byte 0xFFBFFFFF
_08013810:
	adds r2, r6, #0
	adds r2, #0x50
	adds r0, r6, #0
	adds r0, #0x66
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r4, r6, #0
	adds r4, #0x52
	adds r0, r6, #0
	adds r0, #0x68
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	adds r3, r6, #0
	adds r3, #0x61
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r4
	cmp r0, #0x1e
	bls _08013890
	ldr r1, _08013874 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08013878 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801387C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08013880 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08013884 @ =gVramGraphicsCopyCursor
	ldr r0, _08013888 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801388C @ =gGameMode
	ldrb r0, [r0]
	bl MultiPakCommunicationError
	b _08013DB4
	.align 2, 0
_08013874: .4byte 0x0000FFFF
_08013878: .4byte gBackgroundsCopyQueueCursor
_0801387C: .4byte gBackgroundsCopyQueueIndex
_08013880: .4byte sa2__gUnknown_03005390
_08013884: .4byte gVramGraphicsCopyCursor
_08013888: .4byte gVramGraphicsCopyQueueIndex
_0801388C: .4byte gGameMode
_08013890:
	movs r3, #3
	ldr r4, _08013A60 @ =gPlayerCharacterIdleAnims
	movs r5, #6
	ldrsh r0, [r4, r5]
	ldrh r1, [r7, #0xa]
	adds r5, r6, #0
	adds r5, #0x54
	str r5, [sp, #0xc]
	ldr r5, _08013A64 @ =gCamera
	cmp r0, r1
	ble _080138C4
	mov r8, r4
_080138A8:
	lsls r0, r3, #0x18
	movs r3, #0xff
	lsls r3, r3, #0x18
	adds r0, r0, r3
	lsrs r3, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _080138C4
	lsls r0, r0, #1
	add r0, r8
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, r1
	bgt _080138A8
_080138C4:
	ldrh r0, [r2]
	ldrh r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	mov r1, ip
	ldrh r0, [r1]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldrh r0, [r2]
	ldrh r1, [r5]
	subs r0, r0, r1
	ldr r2, [sp]
	strh r0, [r2, #6]
	mov r3, ip
	ldrh r0, [r3]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r2, #8]
	ldr r4, [sp, #0xc]
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08013908
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	str r0, [r7, #0x30]
_08013908:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r3, _08013A68 @ =gMultiplayerPlayerTasks
	ldr r2, _08013A6C @ =0x04000128
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #4]
	ldr r0, _08013A70 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08013934
	cmp r0, #5
	bne _080139C6
_08013934:
	ldr r1, _08013A74 @ =sa2__gUnknown_030054B4
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080139C6
	movs r5, #1
	mov sl, r5
	movs r4, #0
	ldr r0, [r3]
	cmp r0, #0
	beq _080139B8
	ldr r0, _08013A78 @ =gMultiplayerConnections
	ldrb r0, [r0]
	mov ip, r0
	movs r0, #0x10
	mov sb, r0
	mov r8, r2
	adds r5, r3, #0
_08013964:
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	str r0, [sp, #0x14]
	mov r2, sb
	lsls r2, r4
	mov r1, ip
	ands r2, r1
	adds r0, r4, #4
	asrs r2, r0
	mov r3, r8
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r1, sb
	lsls r1, r0
	mov r0, ip
	ands r1, r0
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r1, r0
	cmp r2, r1
	bne _080139AA
	ldr r1, [sp, #0x14]
	ldr r2, _08013A7C @ =0x03000054
	adds r0, r1, r2
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080139AA
	movs r3, #0
	mov sl, r3
_080139AA:
	adds r5, #4
	adds r4, #1
	cmp r4, #3
	bhi _080139B8
	ldr r0, [r5]
	cmp r0, #0
	bne _08013964
_080139B8:
	mov r4, sl
	cmp r4, #0
	beq _080139C6
	bl CreateRoomEvent
	movs r1, #7
	strb r1, [r0]
_080139C6:
	ldr r0, _08013A80 @ =gStageFlags
	ldrh r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	ldr r4, _08013A84 @ =gPlayer
	cmp r0, #0
	bne _08013ACC
	ldr r5, [sp, #0xc]
	ldrh r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08013ACC
	ldr r0, [sp, #4]
	adds r0, #0x57
	ldrb r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08013ACC
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08013A02
	b _08013B10
_08013A02:
	adds r0, r6, #0
	adds r0, #0x57
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08013ACC
	ldr r1, [sp, #4]
	ldr r0, [r1, #0x5c]
	ands r0, r3
	cmp r0, #0
	bne _08013ACC
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _08013ACC
	ldr r0, [r4, #0x10]
	ands r0, r2
	cmp r0, #0
	bne _08013ACC
	ldr r0, _08013A70 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08013AAE
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r1, [r0]
	ldr r0, _08013A6C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bne _08013A46
	b _08013BD4
_08013A46:
	ldr r0, _08013A88 @ =gMultiplayerCharacters
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08013A9C
	cmp r0, #1
	bgt _08013A8C
	cmp r0, #0
	beq _08013A96
	b _08013BD4
	.align 2, 0
_08013A60: .4byte gPlayerCharacterIdleAnims
_08013A64: .4byte gCamera
_08013A68: .4byte gMultiplayerPlayerTasks
_08013A6C: .4byte 0x04000128
_08013A70: .4byte gGameMode
_08013A74: .4byte sa2__gUnknown_030054B4
_08013A78: .4byte gMultiplayerConnections
_08013A7C: .4byte 0x03000054
_08013A80: .4byte gStageFlags
_08013A84: .4byte gPlayer
_08013A88: .4byte gMultiplayerCharacters
_08013A8C:
	cmp r0, #2
	beq _08013AA2
	cmp r0, #3
	beq _08013AA8
	b _08013BD4
_08013A96:
	bl sub_8013DF0
	b _08013BD4
_08013A9C:
	bl sub_8014144
	b _08013BD4
_08013AA2:
	bl sub_801473C
	b _08013BD4
_08013AA8:
	bl sub_8014D0C
	b _08013BD4
_08013AAE:
	adds r1, r6, #0
	adds r1, #0x56
	ldr r0, _08013AC8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	ldrb r1, [r1]
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bne _08013AC2
	b _08013BD4
_08013AC2:
	bl sub_80157A8
	b _08013BD4
	.align 2, 0
_08013AC8: .4byte 0x04000128
_08013ACC:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08013B10
	adds r0, r6, #0
	adds r0, #0x57
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08013B10
	movs r5, #0x1c
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bne _08013B10
	ldr r0, [r4, #0x10]
	ands r0, r2
	cmp r0, #0
	bne _08013B10
	ldr r1, _08013B98 @ =sa2__gUnknown_030054B4
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08013BD4
_08013B10:
	ldr r0, _08013B9C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _08013BB0
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r1, [r4]
	ldr r0, _08013BA0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r1, r0
	beq _08013B76
	ldr r0, _08013BA4 @ =gMultiplayerCharacters
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bgt _08013B76
	cmp r0, #1
	blt _08013B76
	ldr r1, [r6, #0x5c]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08013B76
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #0x5c]
	ldr r2, _08013BA8 @ =gPlayer
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08013B66
	ldr r0, [r2, #0x10]
	ldr r1, _08013BAC @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
_08013B66:
	bl CreateRoomEvent
	movs r2, #0
	movs r1, #8
	strb r1, [r0]
	ldrb r1, [r4]
	strb r1, [r0, #1]
	strb r2, [r0, #2]
_08013B76:
	ldr r2, _08013BA8 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08013BD4
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _08013BD4
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
	b _08013BCC
	.align 2, 0
_08013B98: .4byte sa2__gUnknown_030054B4
_08013B9C: .4byte gGameMode
_08013BA0: .4byte 0x04000128
_08013BA4: .4byte gMultiplayerCharacters
_08013BA8: .4byte gPlayer
_08013BAC: .4byte 0xFFBFFFFF
_08013BB0:
	ldr r1, [r4, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08013BD4
	ldr r0, [r4, #0x28]
	cmp r0, r7
	bne _08013BD4
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r4, #0x10]
_08013BCC:
	adds r1, r6, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
_08013BD4:
	ldr r0, [sp, #0xc]
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08013C42
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r2, _08013C18 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r2, [sp, #0xc]
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08013C1C
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r3, [sp]
	strh r0, [r3, #2]
	b _08013C24
	.align 2, 0
_08013C18: .4byte sa2__gUnknown_030054B8
_08013C1C:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r4, [sp]
	strh r0, [r4, #2]
_08013C24:
	ldr r5, [sp, #0xc]
	ldrh r1, [r5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08013C38
	ldr r1, [sp]
	ldrh r0, [r1, #2]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
_08013C38:
	adds r0, r7, #0
	ldr r1, [sp]
	bl TransformSprite
	b _08013C88
_08013C42:
	ldr r2, [r7, #0x10]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r7, #0x10]
	ldr r3, [sp, #0xc]
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08013C60
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	b _08013C64
_08013C60:
	ldr r0, _08013C7C @ =0xFFFFFBFF
	ands r2, r0
_08013C64:
	str r2, [r7, #0x10]
	ldr r4, [sp, #0xc]
	ldrh r1, [r4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08013C80
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08013C86
	.align 2, 0
_08013C7C: .4byte 0xFFFFFBFF
_08013C80:
	ldr r0, [r7, #0x10]
	ldr r1, _08013DC4 @ =0xFFFFF7FF
	ands r0, r1
_08013C86:
	str r0, [r7, #0x10]
_08013C88:
	ldr r1, [r7, #0x10]
	ldr r0, _08013DC8 @ =0xFFFFCFFF
	ands r1, r0
	str r1, [r7, #0x10]
	ldr r5, [sp, #0xc]
	ldrh r2, [r5]
	movs r0, #0x30
	ands r0, r2
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r7, #0x10]
	ldrh r3, [r5]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _08013CAA
	b _08013DB4
_08013CAA:
	ldr r0, _08013DCC @ =gStageTime
	ldr r0, [r0]
	movs r4, #2
	ands r0, r4
	movs r1, #0x57
	adds r1, r1, r6
	mov sl, r1
	cmp r0, #0
	bne _08013CFE
	ldrb r1, [r1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08013CFE
	ldr r2, [r6, #0x5c]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _08013CFE
	ldr r1, _08013DD0 @ =sa2__gUnknown_030054B4
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08013CFE
	adds r0, r6, #0
	adds r0, #0x60
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013DB4
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	bne _08013DB4
	ands r2, r4
	cmp r2, #0
	bne _08013DB4
_08013CFE:
	ldr r2, [sp, #0xc]
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	cmp r0, #0
	beq _08013D16
	movs r4, #0x88
	lsls r4, r4, #3
	adds r1, r4, #0
_08013D16:
	strh r1, [r7, #0x1a]
	ldr r0, [r7, #0x10]
	ldr r1, _08013DD4 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r7, #0x10]
	mov r5, sl
	ldrb r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08013DAE
	ldr r0, _08013DD8 @ =gGameMode
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #3
	beq _08013D3A
	cmp r1, #5
	bne _08013D6A
_08013D3A:
	ldr r0, _08013DDC @ =gMultiplayerConnections
	ldrb r3, [r0]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r0
	ands r1, r3
	adds r0, #4
	asrs r1, r0
	ldr r4, _08013DE0 @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _08013D74
_08013D6A:
	ldrb r0, [r5]
	cmp r0, #3
	beq _08013DAE
	cmp r0, #5
	beq _08013DAE
_08013D74:
	adds r0, r6, #0
	adds r0, #0x60
	ldrb r0, [r0]
	cmp r0, #0
	bne _08013DAE
	adds r1, r6, #0
	adds r1, #0x56
	ldr r0, _08013DE0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	ldrb r1, [r1]
	lsrs r0, r0, #0x1e
	cmp r1, r0
	beq _08013DAE
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r2, _08013DE4 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08013DE8 @ =gWinRegs
	ldr r0, _08013DEC @ =0x0000083F
	strh r0, [r1, #0xa]
_08013DAE:
	adds r0, r7, #0
	bl DisplaySprite
_08013DB4:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013DC4: .4byte 0xFFFFF7FF
_08013DC8: .4byte 0xFFFFCFFF
_08013DCC: .4byte gStageTime
_08013DD0: .4byte sa2__gUnknown_030054B4
_08013DD4: .4byte 0xFFFFFE7F
_08013DD8: .4byte gGameMode
_08013DDC: .4byte gMultiplayerConnections
_08013DE0: .4byte 0x04000128
_08013DE4: .4byte gDispCnt
_08013DE8: .4byte gWinRegs
_08013DEC: .4byte 0x0000083F

	thumb_func_start sub_8013DF0
sub_8013DF0: @ 0x08013DF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	ldr r2, _08013E94 @ =gPlayer
	ldr r0, [r2, #0x64]
	adds r7, r0, #0
	adds r7, #0xc
	ldr r0, _08013E98 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	mov r8, r6
	ldr r0, [r2, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08013E24
	ldr r0, [r2, #0x28]
	cmp r0, r6
	bne _08013E24
	bl sub_8015024
_08013E24:
	ldr r0, _08013E9C @ =gGameMode
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #3
	beq _08013E32
	cmp r1, #5
	bne _08013E62
_08013E32:
	ldr r0, _08013EA0 @ =gMultiplayerConnections
	ldrb r3, [r0]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r0
	ands r1, r3
	adds r0, #4
	asrs r1, r0
	ldr r4, _08013EA4 @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _08013E6C
_08013E62:
	ldrb r0, [r5]
	cmp r0, #3
	beq _08013EA8
	cmp r0, #5
	beq _08013EA8
_08013E6C:
	bl sub_80152C8
	cmp r0, #0
	bne _08013E76
	b _08014132
_08013E76:
	ldr r0, [r6, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08013E82
	b _08014132
_08013E82:
	ldr r2, _08013E94 @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r6, #0x4c]
	b _08014132
	.align 2, 0
_08013E94: .4byte gPlayer
_08013E98: .4byte gCurTask
_08013E9C: .4byte gGameMode
_08013EA0: .4byte gMultiplayerConnections
_08013EA4: .4byte 0x04000128
_08013EA8:
	adds r1, r6, #0
	adds r1, #0x60
	ldrb r0, [r1]
	adds r4, r0, #0
	mov sb, r1
	cmp r4, #0
	beq _08013EB8
	b _080140CA
_08013EB8:
	bl sub_80151AC
	cmp r0, #0
	beq _08013F6E
	ldr r0, [r6, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08013ED8
	ldr r0, _08013F30 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x10]
	str r4, [r6, #0x4c]
_08013ED8:
	mov r1, r8
	ldrh r0, [r1, #0xa]
	cmp r0, #0x12
	beq _08013EE2
	b _08014132
_08013EE2:
	ldr r2, _08013F30 @ =gPlayer
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #4
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x3d
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08013F12
	ldr r0, [r2, #0x28]
	cmp r0, r8
	bne _08013F12
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_08013F12:
	ldr r0, _08013F34 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08013F38
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x52
	movs r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	ble _08013F4A
	b _08014084
	.align 2, 0
_08013F30: .4byte gPlayer
_08013F34: .4byte gStageFlags
_08013F38:
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x52
	movs r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	bge _08013F4A
	b _08014084
_08013F4A:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08013F5A
	b _080140AE
_08013F5A:
	ldr r0, [r2, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x1f
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #4
	b _080140BE
_08013F6E:
	ldr r0, [r7, #0x30]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08013F82
	mov r3, r8
	ldr r0, [r3, #0x30]
	cmp r0, r1
	beq _08013F82
	b _08014132
_08013F82:
	ldr r7, _0801406C @ =gPlayer
	adds r0, r7, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08013FA4
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08013FA4
	b _08014132
_08013FA4:
	adds r0, r6, #0
	adds r0, #0x50
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r5, r6, #0
	adds r5, #0x52
	movs r0, #0
	ldrsh r2, [r5, r0]
	adds r0, r6, #0
	adds r0, #0x66
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, r8
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r6, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08013FF6
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08013FF6
	ldr r0, [r7, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r7, #0x10]
_08013FF6:
	str r2, [r6, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _08014008
	movs r0, #0x1e
	mov r1, sb
	strb r0, [r1]
_08014008:
	ldr r0, _08014070 @ =0x00010028
	ands r0, r2
	cmp r0, #0
	bne _08014012
	b _08014132
_08014012:
	mov r2, r8
	ldrh r0, [r2, #0xa]
	cmp r0, #0x12
	beq _0801401C
	b _08014132
_0801401C:
	ldr r3, _0801406C @ =gPlayer
	adds r1, r3, #0
	adds r1, #0x40
	movs r2, #0
	movs r0, #4
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x3d
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	ldr r1, [r3, #0x10]
	movs r0, #8
	ands r0, r1
	adds r2, r3, #0
	cmp r0, #0
	beq _08014050
	ldr r0, [r2, #0x28]
	cmp r0, r8
	bne _08014050
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_08014050:
	ldr r0, _08014074 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08014078
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	movs r3, #0
	ldrsh r1, [r5, r3]
	cmp r0, r1
	ble _0801408C
	b _08014084
	.align 2, 0
_0801406C: .4byte gPlayer
_08014070: .4byte 0x00010028
_08014074: .4byte gStageFlags
_08014078:
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	movs r3, #0
	ldrsh r1, [r5, r3]
	cmp r0, r1
	bge _0801408C
_08014084:
	movs r0, #0x1e
	mov r4, sb
	strb r0, [r4]
	b _08014132
_0801408C:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080140AE
	ldr r0, [r2, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x1f
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #4
	b _080140BE
_080140AE:
	ldr r0, [r2, #0x10]
	movs r1, #1
	orrs r0, r1
	subs r1, #0x22
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xf4
	lsls r0, r0, #8
_080140BE:
	strh r0, [r2, #0xc]
	strh r0, [r2, #8]
	movs r0, #0x1e
	mov r2, sb
	strb r0, [r2]
	b _08014132
_080140CA:
	subs r0, #1
	strb r0, [r1]
	ldr r5, _08014140 @ =gPlayer
	ldr r0, [r5, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08014132
	ldr r0, [r5, #0x28]
	cmp r0, r8
	bne _08014132
	adds r0, r6, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, #2
	movs r4, #0
	ldrsh r2, [r0, r4]
	adds r0, #0x14
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	mov r0, r8
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r6, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08014130
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08014130
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
_08014130:
	str r2, [r6, #0x4c]
_08014132:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08014140: .4byte gPlayer

	thumb_func_start sub_8014144
sub_8014144: @ 0x08014144
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _080141F8 @ =gPlayer
	ldr r0, [r2, #0x64]
	adds r0, #0xc
	mov r8, r0
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r0, _080141FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	str r7, [sp, #0x10]
	ldr r1, [r2, #0x10]
	lsrs r3, r1, #5
	movs r0, #1
	ands r3, r0
	str r3, [sp, #0x18]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _0801418A
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _0801418A
	bl sub_8015024
	movs r4, #1
	str r4, [sp, #0x14]
_0801418A:
	ldr r0, _08014200 @ =gGameMode
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #3
	beq _08014198
	cmp r1, #5
	bne _080141C8
_08014198:
	ldr r0, _08014204 @ =gMultiplayerConnections
	ldrb r3, [r0]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r0
	ands r1, r3
	adds r0, #4
	asrs r1, r0
	ldr r4, _08014208 @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _080141D2
_080141C8:
	ldrb r0, [r5]
	cmp r0, #3
	beq _0801420C
	cmp r0, #5
	beq _0801420C
_080141D2:
	bl sub_80152C8
	cmp r0, #0
	bne _080141DC
	b _0801472A
_080141DC:
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080141E8
	b _0801472A
_080141E8:
	ldr r2, _080141F8 @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r7, #0x4c]
	b _0801472A
	.align 2, 0
_080141F8: .4byte gPlayer
_080141FC: .4byte gCurTask
_08014200: .4byte gGameMode
_08014204: .4byte gMultiplayerConnections
_08014208: .4byte 0x04000128
_0801420C:
	ldr r6, _08014278 @ =gPlayer
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0801422C
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0801422C
	b _0801472A
_0801422C:
	adds r1, r7, #0
	adds r1, #0x60
	ldrb r2, [r1]
	str r1, [sp, #0x24]
	cmp r2, #0
	beq _08014244
	ldr r5, [r7, #0x5c]
	movs r0, #4
	ands r5, r0
	cmp r5, #0
	bne _08014244
	b _080146C4
_08014244:
	movs r4, #0
	strb r4, [r1]
	ldr r5, [sp, #0x10]
	ldrh r0, [r5, #0xa]
	subs r0, #0x9b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _080142A0
	bl sub_80151AC
	cmp r0, #0
	beq _0801427C
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0801426A
	b _0801472A
_0801426A:
	ldr r0, [r6, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r6, #0x10]
	str r4, [r7, #0x4c]
	b _0801472A
	.align 2, 0
_08014278: .4byte gPlayer
_0801427C:
	ldr r1, [sp, #0x10]
	ldrh r0, [r1, #0xa]
	subs r0, #0x9b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _080142A0
	mov r2, r8
	ldr r0, [r2, #0x30]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080142A0
	ldr r3, [sp, #0x10]
	ldr r0, [r3, #0x30]
	cmp r0, r1
	beq _080142A0
	b _0801472A
_080142A0:
	ldr r4, _0801439C @ =gPlayer
	mov sl, r4
	ldr r0, [r4, #0x10]
	lsrs r0, r0, #1
	mov sb, r0
	movs r4, #1
	mov r5, sb
	ands r5, r4
	mov sb, r5
	movs r0, #0x50
	adds r0, r0, r7
	mov r8, r0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r6, r7, #0
	adds r6, #0x52
	movs r3, #0
	ldrsh r2, [r6, r3]
	adds r0, r7, #0
	adds r0, #0x66
	movs r5, #0
	ldrsh r3, [r0, r5]
	adds r0, #2
	movs r5, #0
	ldrsh r0, [r0, r5]
	str r0, [sp]
	adds r5, r7, #0
	adds r5, #0x54
	ldrh r0, [r5]
	lsrs r0, r0, #7
	ands r0, r4
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [sp, #0x10]
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	mov r3, r8
	str r3, [sp, #0x1c]
	str r5, [sp, #0x20]
	cmp r0, #0
	beq _0801430C
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0801430C
	mov r4, sl
	ldr r0, [r4, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r4, #0x10]
_0801430C:
	str r2, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _0801431E
	movs r0, #0x1e
	ldr r5, [sp, #0x24]
	strb r0, [r5]
_0801431E:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801432A
	b _0801445E
_0801432A:
	mov r0, sb
	cmp r0, #0
	bne _08014338
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _08014338
	b _08014452
_08014338:
	ldr r0, _080143A0 @ =0x00010028
	ands r0, r2
	cmp r0, #0
	bne _08014342
	b _08014452
_08014342:
	ldr r2, [sp, #0x10]
	ldrh r0, [r2, #0xa]
	subs r0, #0x9b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08014352
	b _08014452
_08014352:
	ldr r0, _080143A4 @ =gStageFlags
	ldrh r3, [r0]
	lsrs r2, r3, #7
	movs r1, #1
	ands r2, r1
	ldr r4, [sp, #0x20]
	ldrh r0, [r4]
	lsrs r0, r0, #3
	bics r1, r0
	cmp r2, r1
	beq _08014452
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _080143AC
	ldr r2, _0801439C @ =gPlayer
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	movs r5, #0
	ldrsh r1, [r6, r5]
	cmp r1, r0
	bge _08014380
	adds r1, r0, #0
_08014380:
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	adds r0, r1, r0
	ldr r1, [r2]
	asrs r1, r1, #8
	adds r2, #0x27
	ldrb r2, [r2]
	add r3, sp, #0xc
	str r3, [sp]
	ldr r3, _080143A8 @ =sa2__sub_801EE64
	str r3, [sp, #4]
	movs r3, #8
	b _080143D6
	.align 2, 0
_0801439C: .4byte gPlayer
_080143A0: .4byte 0x00010028
_080143A4: .4byte gStageFlags
_080143A8: .4byte sa2__sub_801EE64
_080143AC:
	ldr r2, _08014438 @ =gPlayer
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	movs r4, #0
	ldrsh r1, [r6, r4]
	cmp r1, r0
	ble _080143BC
	adds r1, r0, #0
_080143BC:
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	subs r0, r1, r0
	ldr r1, [r2]
	asrs r1, r1, #8
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	add r5, sp, #0xc
	str r5, [sp]
	ldr r4, _0801443C @ =sa2__sub_801EE64
	str r4, [sp, #4]
_080143D6:
	bl sa2__sub_801E4E4
	adds r1, r0, #0
	ldr r4, _08014438 @ =gPlayer
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	subs r0, r1, r0
	cmp r0, #0
	ble _08014452
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r7, #0x5c]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x5c]
	adds r0, r4, #0
	movs r1, #0xe
	bl Player_HandleSpriteYOffsetChange
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	bl CreateRoomEvent
	movs r1, #8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r1, [r1]
	strb r1, [r0, #1]
	movs r1, #1
	strb r1, [r0, #2]
	ldr r0, _08014440 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08014448
	ldr r0, [r7, #0x5c]
	ldr r1, _08014444 @ =0xFFFFFEFF
	ands r0, r1
	b _08014450
	.align 2, 0
_08014438: .4byte gPlayer
_0801443C: .4byte sa2__sub_801EE64
_08014440: .4byte gStageFlags
_08014444: .4byte 0xFFFFFEFF
_08014448:
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
_08014450:
	str r0, [r7, #0x5c]
_08014452:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801445E
	b _0801472A
_0801445E:
	ldr r0, _080144A0 @ =gPlayer
	mov r8, r0
	mov r1, r8
	adds r1, #0x40
	movs r2, #0
	movs r0, #0x26
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r3, #2
	mov sb, r3
	orrs r0, r3
	str r0, [r1, #0x10]
	mov r0, r8
	adds r0, #0x3d
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	mov r0, r8
	bl Player_8044250
	cmp r0, #0
	beq _080144A8
	movs r0, #0x1e
	ldr r4, [sp, #0x24]
	strb r0, [r4]
	mov r5, r8
	ldr r0, [r5, #0x10]
	ldr r1, _080144A4 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08014568
	.align 2, 0
_080144A0: .4byte gPlayer
_080144A4: .4byte 0xFFBFFFFF
_080144A8:
	ldr r1, [sp, #0x10]
	ldrh r0, [r1, #0xa]
	subs r0, #0x9b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _080144FA
	mov r2, r8
	ldr r0, [r2]
	asrs r1, r0, #8
	ldr r2, _08014544 @ =gCamera
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	cmp r1, r0
	ble _080144FA
	movs r4, #0x1a
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bge _080144FA
	ldr r0, _08014548 @ =gStageFlags
	ldrh r5, [r0]
	lsrs r0, r5, #7
	movs r4, #1
	adds r2, r4, #0
	bics r2, r0
	ldr r0, [sp, #0x20]
	ldrh r1, [r0]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bics r0, r1
	cmp r2, r0
	bne _080144FA
	ldr r3, [r7, #0x5c]
	lsrs r1, r3, #8
	adds r0, r4, #0
	bics r0, r1
	cmp r0, r2
	bne _080144FA
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _08014554
_080144FA:
	ldr r4, _0801454C @ =gPlayer
	ldr r0, [r4, #0x10]
	ldr r1, _08014550 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r7, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x5c]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08014548 @ =gStageFlags
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r3, #1
	adds r2, r3, #0
	bics r2, r0
	ldr r5, [sp, #0x20]
	ldrh r1, [r5]
	lsrs r1, r1, #3
	adds r0, r3, #0
	bics r0, r1
	cmp r2, r0
	bne _0801453E
	ldr r1, [r7, #0x5c]
	lsrs r1, r1, #8
	adds r0, r3, #0
	bics r0, r1
	cmp r0, r2
	bne _0801453E
	b _08014670
_0801453E:
	movs r0, #0x3c
	strh r0, [r4, #0x1c]
	b _08014670
	.align 2, 0
_08014544: .4byte gCamera
_08014548: .4byte gStageFlags
_0801454C: .4byte gPlayer
_08014550: .4byte 0xFFBFFFFF
_08014554:
	mov r0, r8
	ldr r1, [r0, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08014578
	ldr r0, _08014574 @ =0xFFBFFFFF
	ands r1, r0
	mov r2, r8
	str r1, [r2, #0x10]
_08014568:
	ldr r0, [r7, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x5c]
	b _08014670
	.align 2, 0
_08014574: .4byte 0xFFBFFFFF
_08014578:
	movs r0, #0x80
	ands r0, r5
	movs r1, #4
	orrs r3, r1
	str r3, [r7, #0x5c]
	ldr r3, [sp, #0x1c]
	movs r4, #0
	ldrsh r1, [r3, r4]
	lsls r5, r1, #8
	cmp r0, #0
	bne _080145E8
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r1, [sp, #0x10]
	adds r1, #0x2f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r0, #0x11
	lsls r6, r0, #8
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r1, [r2]
	asrs r1, r1, #8
	adds r2, #0x27
	ldrb r2, [r2]
	add r3, sp, #0xc
	str r3, [sp]
	ldr r3, _080145E0 @ =sa2__sub_801EE64
	str r3, [sp, #4]
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r1, r0, #0
	cmp r1, #0
	bge _08014646
	lsls r0, r1, #8
	adds r6, r6, r0
	mov r4, r8
	ldr r0, [r4, #0x10]
	ldr r1, _080145E4 @ =0xFFBFFFFF
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0801463C
	.align 2, 0
_080145E0: .4byte sa2__sub_801EE64
_080145E4: .4byte 0xFFBFFFFF
_080145E8:
	movs r2, #0
	ldrsh r0, [r6, r2]
	ldr r1, [sp, #0x10]
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	subs r0, #0x11
	lsls r6, r0, #8
	mov r3, r8
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r3, r1]
	subs r0, r0, r1
	ldr r1, [r3]
	asrs r1, r1, #8
	mov r2, r8
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	add r4, sp, #0xc
	str r4, [sp]
	ldr r4, _080146A4 @ =sa2__sub_801EE64
	str r4, [sp, #4]
	bl sa2__sub_801E4E4
	adds r1, r0, #0
	cmp r1, #0
	bge _08014646
	lsls r0, r1, #8
	subs r6, r6, r0
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _080146A8 @ =0xFFBFFFFF
	ands r0, r1
	mov r2, sb
	orrs r0, r2
	mov r3, r8
	str r0, [r3, #0x10]
_0801463C:
	ldr r0, [r7, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x5c]
_08014646:
	ldr r0, _080146AC @ =gPlayer
	str r5, [r0]
	str r6, [r0, #4]
	ldr r1, [r7, #0x5c]
	movs r2, #4
	ands r1, r2
	adds r3, r0, #0
	cmp r1, #0
	beq _0801467A
	movs r2, #0
	strh r2, [r3, #8]
	ldr r0, _080146B0 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	strh r2, [r3, #0xa]
	ldr r0, [r3, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
_08014670:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801468E
_0801467A:
	bl CreateRoomEvent
	movs r2, #0
	movs r1, #8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r1, [r1]
	strb r1, [r0, #1]
	strb r2, [r0, #2]
_0801468E:
	ldr r0, _080146B0 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080146B8
	ldr r0, [r7, #0x5c]
	ldr r1, _080146B4 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r7, #0x5c]
	b _0801472A
	.align 2, 0
_080146A4: .4byte sa2__sub_801EE64
_080146A8: .4byte 0xFFBFFFFF
_080146AC: .4byte gPlayer
_080146B0: .4byte gStageFlags
_080146B4: .4byte 0xFFFFFEFF
_080146B8:
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r7, #0x5c]
	b _0801472A
_080146C4:
	subs r0, r2, #1
	strb r0, [r1]
	ldr r0, [r6, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0801472A
	ldr r0, [r6, #0x28]
	ldr r4, [sp, #0x10]
	cmp r0, r4
	bne _0801472A
	adds r0, r7, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, #0x14
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [sp, #0x10]
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08014728
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08014728
	ldr r0, [r6, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r6, #0x10]
_08014728:
	str r2, [r7, #0x4c]
_0801472A:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801473C
sub_801473C: @ 0x0801473C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r2, _080147EC @ =gPlayer
	ldr r0, [r2, #0x64]
	adds r0, #0xc
	mov r8, r0
	ldr r0, _080147F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov sb, r7
	ldr r1, [r2, #0x10]
	lsrs r0, r1, #5
	str r0, [sp, #0x14]
	movs r0, #1
	ldr r3, [sp, #0x14]
	ands r3, r0
	str r3, [sp, #0x14]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _0801477E
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _0801477E
	bl sub_8015024
_0801477E:
	ldr r0, _080147F4 @ =gGameMode
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #3
	beq _0801478C
	cmp r1, #5
	bne _080147BC
_0801478C:
	ldr r0, _080147F8 @ =gMultiplayerConnections
	ldrb r3, [r0]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r0
	ands r1, r3
	adds r0, #4
	asrs r1, r0
	ldr r4, _080147FC @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _080147C6
_080147BC:
	ldrb r0, [r5]
	cmp r0, #3
	beq _08014800
	cmp r0, #5
	beq _08014800
_080147C6:
	bl sub_80152C8
	cmp r0, #0
	bne _080147D0
	b _08014CFC
_080147D0:
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080147DC
	b _08014CFC
_080147DC:
	ldr r2, _080147EC @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r7, #0x4c]
	b _08014CFC
	.align 2, 0
_080147EC: .4byte gPlayer
_080147F0: .4byte gCurTask
_080147F4: .4byte gGameMode
_080147F8: .4byte gMultiplayerConnections
_080147FC: .4byte 0x04000128
_08014800:
	ldr r6, _08014870 @ =gPlayer
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08014820
	adds r0, r6, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08014820
	b _08014CFC
_08014820:
	adds r1, r7, #0
	adds r1, #0x60
	ldrb r2, [r1]
	str r1, [sp, #0x20]
	cmp r2, #0
	beq _08014838
	ldr r5, [r7, #0x5c]
	movs r0, #4
	ands r5, r0
	cmp r5, #0
	bne _08014838
	b _08014C98
_08014838:
	movs r5, #0
	strb r5, [r1]
	ldr r0, _08014874 @ =0xFFFFFEFC
	adds r4, r0, #0
	mov r1, sb
	ldrh r1, [r1, #0xa]
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0801489C
	bl sub_80151AC
	cmp r0, #0
	beq _08014878
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08014862
	b _08014CFC
_08014862:
	ldr r0, [r6, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r6, #0x10]
	str r5, [r7, #0x4c]
	b _08014CFC
	.align 2, 0
_08014870: .4byte gPlayer
_08014874: .4byte 0xFFFFFEFC
_08014878:
	mov r2, sb
	ldrh r2, [r2, #0xa]
	adds r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0801489C
	mov r3, r8
	ldr r0, [r3, #0x30]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0801489C
	mov r4, sb
	ldr r0, [r4, #0x30]
	cmp r0, r1
	beq _0801489C
	b _08014CFC
_0801489C:
	ldr r0, _080149A8 @ =gPlayer
	mov sl, r0
	ldrb r4, [r0, #0xe]
	rsbs r0, r4, #0
	add r1, sp, #0x10
	strb r0, [r1]
	mov r2, sl
	ldrb r3, [r2, #0xf]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #0x11
	strb r2, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	add r0, sp, #0xc
	movs r2, #4
	bl memcpy
	movs r3, #0x50
	adds r3, r3, r7
	mov r8, r3
	movs r4, #0
	ldrsh r1, [r3, r4]
	adds r6, r7, #0
	adds r6, #0x52
	movs r0, #0
	ldrsh r2, [r6, r0]
	adds r0, r7, #0
	adds r0, #0x66
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	adds r5, r7, #0
	adds r5, #0x54
	ldrh r0, [r5]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, sb
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	mov r3, r8
	str r3, [sp, #0x18]
	str r6, [sp, #0x1c]
	mov r8, r5
	cmp r0, #0
	beq _08014922
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08014922
	mov r4, sl
	ldr r0, [r4, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r4, #0x10]
_08014922:
	str r2, [r7, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _08014934
	movs r0, #0x1e
	ldr r1, [sp, #0x20]
	strb r0, [r1]
_08014934:
	ldr r2, [sp, #0x18]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x1c]
	movs r0, #0
	ldrsh r2, [r4, r0]
	ldr r5, _080149A8 @ =gPlayer
	add r3, sp, #0xc
	str r3, [sp]
	mov r0, sb
	adds r3, r5, #0
	bl CheckRectCollision_SpritePlayer
	cmp r0, #0
	bne _08014954
	b _08014A6A
_08014954:
	mov r4, r8
	ldrh r0, [r4]
	lsls r2, r0, #0x10
	lsrs r0, r2, #0x17
	movs r4, #1
	ands r0, r4
	adds r1, r5, #0
	adds r1, #0x27
	ldrb r1, [r1]
	cmp r0, r1
	beq _0801496C
	b _08014A6A
_0801496C:
	ldr r1, _080149AC @ =0xFFFFFEFC
	adds r0, r1, #0
	mov r3, sb
	ldrh r3, [r3, #0xa]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08014A6A
	ldr r0, _080149B0 @ =gStageFlags
	ldrh r3, [r0]
	lsrs r1, r3, #7
	ands r1, r4
	lsrs r2, r2, #0x13
	adds r0, r4, #0
	bics r0, r2
	cmp r1, r0
	beq _08014A6A
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _080149B4
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r4, [sp, #0x1c]
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bgt _080149C2
	b _08014A6A
	.align 2, 0
_080149A8: .4byte gPlayer
_080149AC: .4byte 0xFFFFFEFC
_080149B0: .4byte gStageFlags
_080149B4:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r3, [sp, #0x1c]
	movs r4, #0
	ldrsh r1, [r3, r4]
	cmp r0, r1
	bge _08014A6A
_080149C2:
	ldr r4, _08014A10 @ =gPlayer
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0xe
	bl Player_HandleSpriteYOffsetChange
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r2, r4, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #0xc]
	strh r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x40
	strb r1, [r0]
	subs r0, #3
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08014A14
	ldr r0, [r2, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	b _08014A1C
	.align 2, 0
_08014A10: .4byte gPlayer
_08014A14:
	ldr r0, [r4, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x10]
_08014A1C:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08014A62
	bl CreateRoomEvent
	movs r1, #8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r1, [r1]
	strb r1, [r0, #1]
	movs r1, #1
	strb r1, [r0, #2]
	ldr r0, _08014A50 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08014A58
	ldr r0, [r7, #0x5c]
	ldr r1, _08014A54 @ =0xFFFFFEFF
	ands r0, r1
	b _08014A60
	.align 2, 0
_08014A50: .4byte gStageFlags
_08014A54: .4byte 0xFFFFFEFF
_08014A58:
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
_08014A60:
	str r0, [r7, #0x5c]
_08014A62:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x5c]
_08014A6A:
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08014A76
	b _08014CFC
_08014A76:
	ldr r6, _08014A98 @ =gPlayer
	adds r0, r6, #0
	bl Player_8044250
	cmp r0, #0
	beq _08014AA0
	movs r0, #0x1e
	ldr r2, [sp, #0x20]
	strb r0, [r2]
	ldr r0, [r6, #0x10]
	ldr r1, _08014A9C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r7, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	b _08014C7C
	.align 2, 0
_08014A98: .4byte gPlayer
_08014A9C: .4byte 0xFFBFFFFF
_08014AA0:
	ldr r3, _08014B3C @ =0xFFFFFEFC
	adds r0, r3, #0
	mov r4, sb
	ldrh r4, [r4, #0xa]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _08014B40 @ =gStageFlags
	cmp r0, #2
	bhi _08014AF4
	ldr r0, [r6]
	asrs r1, r0, #8
	ldr r2, _08014B44 @ =gCamera
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	cmp r1, r0
	ble _08014AF4
	movs r4, #0x1a
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bge _08014AF4
	ldrh r4, [r5]
	lsrs r0, r4, #7
	movs r3, #1
	adds r2, r3, #0
	bics r2, r0
	mov r1, r8
	ldrh r0, [r1]
	lsrs r0, r0, #3
	adds r1, r3, #0
	bics r1, r0
	cmp r2, r1
	bne _08014AF4
	ldr r1, [r7, #0x5c]
	lsrs r1, r1, #8
	adds r0, r3, #0
	bics r0, r1
	cmp r0, r2
	bne _08014AF4
	ldr r2, [sp, #0x14]
	cmp r2, #0
	beq _08014B50
_08014AF4:
	ldr r2, _08014B48 @ =gPlayer
	ldr r0, [r2, #0x10]
	ldr r1, _08014B4C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r7, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x5c]
	adds r2, #0x40
	movs r0, #0
	strb r0, [r2]
	ldrh r0, [r5]
	lsrs r0, r0, #7
	movs r3, #1
	adds r2, r3, #0
	bics r2, r0
	mov r4, r8
	ldrh r1, [r4]
	lsrs r1, r1, #3
	adds r0, r3, #0
	bics r0, r1
	cmp r2, r0
	bne _08014B34
	ldr r1, [r7, #0x5c]
	lsrs r1, r1, #8
	adds r0, r3, #0
	bics r0, r1
	cmp r0, r2
	bne _08014B34
	b _08014CFC
_08014B34:
	movs r0, #0x1e
	ldr r1, [sp, #0x20]
	strb r0, [r1]
	b _08014CFC
	.align 2, 0
_08014B3C: .4byte 0xFFFFFEFC
_08014B40: .4byte gStageFlags
_08014B44: .4byte gCamera
_08014B48: .4byte gPlayer
_08014B4C: .4byte 0xFFBFFFFF
_08014B50:
	movs r2, #0xf
	ldrsb r2, [r6, r2]
	movs r0, #0x80
	ands r0, r4
	ldr r3, [sp, #0x18]
	movs r4, #0
	ldrsh r1, [r3, r4]
	lsls r1, r1, #8
	mov r8, r1
	cmp r0, #0
	bne _08014BAC
	ldr r1, [sp, #0x1c]
	movs r3, #0
	ldrsh r0, [r1, r3]
	mov r1, sb
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	add r1, sp, #0xc
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	lsls r5, r0, #8
	subs r0, r0, r2
	mov r4, r8
	asrs r1, r4, #8
	adds r2, r6, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	ldr r4, _08014BA8 @ =sa2__sub_801EC3C
	str r4, [sp]
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08014BFC
	lsls r0, r0, #8
	subs r5, r5, r0
	b _08014BE8
	.align 2, 0
_08014BA8: .4byte sa2__sub_801EC3C
_08014BAC:
	ldr r1, [sp, #0x1c]
	movs r3, #0
	ldrsh r0, [r1, r3]
	mov r1, sb
	adds r1, #0x2f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	add r1, sp, #0xc
	ldrb r1, [r1, #3]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	lsls r5, r0, #8
	adds r0, r0, r2
	mov r4, r8
	asrs r1, r4, #8
	adds r2, r6, #0
	adds r2, #0x27
	ldrb r2, [r2]
	ldr r3, _08014C3C @ =sa2__sub_801EC3C
	str r3, [sp]
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08014BFC
	lsls r0, r0, #8
	adds r5, r5, r0
_08014BE8:
	ldr r0, [r6, #0x10]
	ldr r1, _08014C40 @ =0xFFBFFFFF
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r7, #0x5c]
	subs r1, #7
	ands r0, r1
	str r0, [r7, #0x5c]
_08014BFC:
	ldr r3, _08014C44 @ =gPlayer
	mov r0, r8
	str r0, [r3]
	str r5, [r3, #4]
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08014C58
	ldr r2, [r3, #0x10]
	movs r0, #8
	orrs r2, r0
	subs r0, #0xd
	ands r2, r0
	adds r0, #2
	ands r2, r0
	str r2, [r3, #0x10]
	mov r1, sb
	str r1, [r3, #0x28]
	movs r0, #0
	strh r0, [r3, #0xa]
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08014C48
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	b _08014C4C
	.align 2, 0
_08014C3C: .4byte sa2__sub_801EC3C
_08014C40: .4byte 0xFFBFFFFF
_08014C44: .4byte gPlayer
_08014C48:
	movs r0, #1
	orrs r2, r0
_08014C4C:
	str r2, [r3, #0x10]
	ldr r0, [r7, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08014C6C
_08014C58:
	bl CreateRoomEvent
	movs r2, #0
	movs r1, #8
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x56
	ldrb r1, [r1]
	strb r1, [r0, #1]
	strb r2, [r0, #2]
_08014C6C:
	ldr r0, _08014C84 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08014C8C
	ldr r0, [r7, #0x5c]
	ldr r1, _08014C88 @ =0xFFFFFEFF
_08014C7C:
	ands r0, r1
	str r0, [r7, #0x5c]
	b _08014CFC
	.align 2, 0
_08014C84: .4byte gStageFlags
_08014C88: .4byte 0xFFFFFEFF
_08014C8C:
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r7, #0x5c]
	b _08014CFC
_08014C98:
	subs r0, r2, #1
	strb r0, [r1]
	ldr r0, [r6, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08014CFC
	ldr r0, [r6, #0x28]
	cmp r0, sb
	bne _08014CFC
	adds r0, r7, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, #0x14
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, sb
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08014CFA
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08014CFA
	ldr r0, [r6, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r6, #0x10]
_08014CFA:
	str r2, [r7, #0x4c]
_08014CFC:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8014D0C
sub_8014D0C: @ 0x08014D0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08014DAC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	str r7, [sp, #0xc]
	ldr r2, _08014DB0 @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08014D3C
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _08014D3C
	bl sub_8015024
_08014D3C:
	ldr r0, _08014DB4 @ =gGameMode
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #3
	beq _08014D4A
	cmp r1, #5
	bne _08014D7A
_08014D4A:
	ldr r0, _08014DB8 @ =gMultiplayerConnections
	ldrb r3, [r0]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0x10
	adds r1, r2, #0
	lsls r1, r0
	ands r1, r3
	adds r0, #4
	asrs r1, r0
	ldr r4, _08014DBC @ =0x04000128
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r2, r0
	ands r3, r2
	ldr r0, [r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r1, r3
	bne _08014D84
_08014D7A:
	ldrb r0, [r5]
	cmp r0, #3
	beq _08014DC0
	cmp r0, #5
	beq _08014DC0
_08014D84:
	bl sub_80152C8
	cmp r0, #0
	bne _08014D8E
	b _0801500E
_08014D8E:
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08014D9A
	b _0801500E
_08014D9A:
	ldr r2, _08014DB0 @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r7, #0x4c]
	b _0801500E
	.align 2, 0
_08014DAC: .4byte gCurTask
_08014DB0: .4byte gPlayer
_08014DB4: .4byte gGameMode
_08014DB8: .4byte gMultiplayerConnections
_08014DBC: .4byte 0x04000128
_08014DC0:
	adds r1, r7, #0
	adds r1, #0x60
	ldrb r0, [r1]
	str r1, [sp, #0x14]
	cmp r0, #0
	beq _08014DCE
	b _08014FA4
_08014DCE:
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08014E30
	ldr r5, _08014E2C @ =gPlayer
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08014DFC
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08014DFC
	b _0801500E
_08014DFC:
	adds r0, r7, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, #0x14
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r6, #0
	ldrsh r0, [r0, r6]
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	str r4, [sp, #8]
	b _08014FEA
	.align 2, 0
_08014E2C: .4byte gPlayer
_08014E30:
	ldr r0, _08014EC4 @ =gPlayer
	str r0, [sp, #0x10]
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08014E52
	ldr r0, [sp, #0x10]
	adds r0, #0x59
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08014E52
	b _0801500E
_08014E52:
	movs r1, #0x50
	adds r1, r1, r7
	mov sl, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r3, #0x52
	adds r3, r3, r7
	mov sb, r3
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r5, #0x66
	adds r5, r5, r7
	mov r8, r5
	movs r6, #0
	ldrsh r3, [r5, r6]
	adds r6, r7, #0
	adds r6, #0x68
	movs r4, #0
	ldrsh r0, [r6, r4]
	str r0, [sp]
	adds r5, r7, #0
	adds r5, #0x54
	ldrh r0, [r5]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	bl sa2__sub_800DA4C
	adds r3, r0, #0
	movs r1, #2
	ands r0, r1
	mov r2, sl
	mov sl, r6
	mov ip, r5
	cmp r0, #0
	beq _08014EE4
	ldr r5, [sp, #0x10]
	ldr r0, [r5, #0x10]
	ands r0, r1
	cmp r0, #0
	bne _08014EE4
	ldrb r0, [r5, #0x14]
	cmp r0, #0
	bne _08014EE4
	ldr r6, [sp, #0xc]
	ldrh r1, [r6, #0xa]
	movs r0, #0xae
	lsls r0, r0, #1
	cmp r1, r0
	bne _08014ECC
	ldr r0, _08014EC8 @ =0xFFFFF880
	bl LaunchPlayer
	b _08014F46
	.align 2, 0
_08014EC4: .4byte gPlayer
_08014EC8: .4byte 0xFFFFF880
_08014ECC:
	ldr r0, _08014EDC @ =0x00000161
	cmp r1, r0
	bne _08014EE4
	ldr r0, _08014EE0 @ =0xFFFFF580
	bl LaunchPlayer
	b _08014F46
	.align 2, 0
_08014EDC: .4byte 0x00000161
_08014EE0: .4byte 0xFFFFF580
_08014EE4:
	movs r4, #1
	adds r0, r3, #0
	ands r0, r4
	cmp r0, #0
	beq _08014F54
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _08014F0C
	ldr r1, _08014F08 @ =gPlayer
	ldrh r2, [r1, #8]
	movs r4, #8
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _08014F2C
	b _08014F22
	.align 2, 0
_08014F08: .4byte gPlayer
_08014F0C:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _08014F2C
	ldr r1, _08014F50 @ =gPlayer
	ldrh r2, [r1, #8]
	movs r5, #8
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _08014F2C
_08014F22:
	rsbs r0, r2, #0
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xc]
	rsbs r0, r0, #0
	strh r0, [r1, #0xc]
_08014F2C:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r3
	cmp r0, #0
	beq _08014F46
	ldr r1, _08014F50 @ =gPlayer
	ldrh r2, [r1, #0xa]
	movs r6, #0xa
	ldrsh r0, [r1, r6]
	cmp r0, #0
	ble _08014F46
	rsbs r0, r2, #0
	strh r0, [r1, #0xa]
_08014F46:
	movs r0, #0x1e
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	b _0801500E
	.align 2, 0
_08014F50: .4byte gPlayer
_08014F54:
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r5, sb
	movs r6, #0
	ldrsh r2, [r5, r6]
	mov r0, r8
	movs r5, #0
	ldrsh r3, [r0, r5]
	mov r6, sl
	movs r5, #0
	ldrsh r0, [r6, r5]
	str r0, [sp]
	mov r6, ip
	ldrh r0, [r6]
	lsrs r0, r0, #7
	ands r0, r4
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [sp, #0xc]
	bl sub_80097E4
	adds r3, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801500C
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0801500C
	ldr r0, _08014FA0 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x10]
	b _0801500C
	.align 2, 0
_08014FA0: .4byte gPlayer
_08014FA4:
	subs r0, #1
	strb r0, [r1]
	ldr r5, _08015020 @ =gPlayer
	ldr r0, [r5, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0801500E
	ldr r0, [r5, #0x28]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bne _0801500E
	adds r0, r7, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, #0x14
	movs r4, #0
	ldrsh r3, [r0, r4]
	adds r0, #2
	movs r6, #0
	ldrsh r0, [r0, r6]
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x54
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
_08014FEA:
	ldr r0, [sp, #0xc]
	bl sub_80097E4
	adds r3, r0, #0
	ldr r0, [r7, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801500C
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0801500C
	ldr r0, [r5, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r5, #0x10]
_0801500C:
	str r3, [r7, #0x4c]
_0801500E:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015020: .4byte gPlayer

	thumb_func_start sub_8015024
sub_8015024: @ 0x08015024
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08015068 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6, #0x44]
	cmp r0, #0
	bge _0801503C
	rsbs r0, r0, #0
_0801503C:
	cmp r0, #0x80
	bgt _0801504C
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _08015048
	rsbs r0, r0, #0
_08015048:
	cmp r0, #0x80
	ble _08015070
_0801504C:
	ldr r2, _0801506C @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	adds r1, r6, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
	b _0801519C
	.align 2, 0
_08015068: .4byte gCurTask
_0801506C: .4byte gPlayer
_08015070:
	ldr r2, _08015094 @ =gPlayer
	ldr r1, [r6, #0x44]
	lsls r1, r1, #8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _08015098 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _0801509C
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	b _080150A0
	.align 2, 0
_08015094: .4byte gPlayer
_08015098: .4byte gStageFlags
_0801509C:
	ldr r1, [r5, #4]
	ldr r0, _080150DC @ =0xFFFFFE00
_080150A0:
	adds r1, r1, r0
	ldr r0, [r6, #0x48]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r5, #4]
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bge _080150E4
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	ldr r1, [r5]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	ldr r4, _080150E0 @ =sa2__sub_801EC3C
	str r4, [sp]
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08015128
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	subs r0, r0, r1
	b _08015110
	.align 2, 0
_080150DC: .4byte 0xFFFFFE00
_080150E0: .4byte sa2__sub_801EC3C
_080150E4:
	cmp r0, #0
	ble _08015128
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	ldr r1, [r5]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	ldr r3, _08015160 @ =sa2__sub_801EC3C
	str r3, [sp]
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _08015128
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
_08015110:
	str r0, [r5, #4]
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r1, r6, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
_08015128:
	ldr r1, [r6, #0x44]
	cmp r1, #0
	bge _0801516C
	ldr r5, _08015164 @ =gPlayer
	ldr r0, [r5]
	asrs r0, r0, #8
	movs r1, #0xe
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	ldr r4, _08015168 @ =sa2__sub_801EB44
	str r4, [sp]
	bl sa2__sub_801F100
	cmp r0, #0
	bge _0801519C
	lsls r1, r0, #8
	ldr r0, [r5]
	subs r0, r0, r1
	str r0, [r5]
	b _0801519C
	.align 2, 0
_08015160: .4byte sa2__sub_801EC3C
_08015164: .4byte gPlayer
_08015168: .4byte sa2__sub_801EB44
_0801516C:
	cmp r1, #0
	ble _0801519C
	ldr r4, _080151A4 @ =gPlayer
	ldr r0, [r4]
	asrs r0, r0, #8
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	adds r2, r4, #0
	adds r2, #0x27
	ldrb r2, [r2]
	ldr r3, _080151A8 @ =sa2__sub_801EB44
	str r3, [sp]
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _0801519C
	lsls r1, r0, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_0801519C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080151A4: .4byte gPlayer
_080151A8: .4byte sa2__sub_801EB44

	thumb_func_start sub_80151AC
sub_80151AC: @ 0x080151AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r5, _08015238 @ =gPlayer
	ldr r1, [r5, #0x64]
	ldr r0, _0801523C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	mov r8, r6
	ldr r0, [r1, #0x3c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08015298
	ldr r0, [r6, #0x30]
	cmp r0, r1
	beq _08015298
	ldr r1, _08015240 @ =0x03000050
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, _08015244 @ =0x03000052
	adds r0, r4, r3
	movs r7, #0
	ldrsh r2, [r0, r7]
	adds r3, #0x14
	adds r0, r4, r3
	movs r7, #0
	ldrsh r3, [r0, r7]
	ldr r7, _08015248 @ =0x03000068
	adds r0, r4, r7
	movs r7, #0
	ldrsh r0, [r0, r7]
	str r0, [sp]
	ldr r7, _0801524C @ =0x03000054
	adds r0, r4, r7
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sa2__sub_800DA4C
	adds r2, r0, #0
	ands r0, r4
	cmp r0, #0
	beq _08015298
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0801526E
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08015250
	ldrh r1, [r5, #8]
	movs r3, #8
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _0801526E
	b _08015264
	.align 2, 0
_08015238: .4byte gPlayer
_0801523C: .4byte gCurTask
_08015240: .4byte 0x03000050
_08015244: .4byte 0x03000052
_08015248: .4byte 0x03000068
_0801524C: .4byte 0x03000054
_08015250:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _0801526E
	ldrh r1, [r5, #8]
	movs r7, #8
	ldrsh r0, [r5, r7]
	cmp r0, #0
	bge _0801526E
_08015264:
	rsbs r0, r1, #0
	strh r0, [r5, #8]
	ldrh r0, [r5, #0xc]
	rsbs r0, r0, #0
	strh r0, [r5, #0xc]
_0801526E:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _08015288
	ldr r1, _08015294 @ =gPlayer
	ldrh r2, [r1, #0xa]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _08015288
	rsbs r0, r2, #0
	strh r0, [r1, #0xa]
_08015288:
	mov r1, r8
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #1
	b _080152B8
	.align 2, 0
_08015294: .4byte gPlayer
_08015298:
	ldr r2, _080152C4 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080152B6
	ldr r0, [r2, #0x28]
	cmp r0, r6
	bne _080152B6
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_080152B6:
	movs r0, #0
_080152B8:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080152C4: .4byte gPlayer

	thumb_func_start sub_80152C8
sub_80152C8: @ 0x080152C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r6, _08015380 @ =gPlayer
	ldr r0, [r6, #0x64]
	adds r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, _08015384 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r5, r4, r2
	str r5, [sp, #0x10]
	ldr r1, _08015388 @ =gMultiplayerPlayerTasks
	ldr r0, _0801538C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r0, r2
	str r0, [sp, #0xc]
	ldr r0, _08015390 @ =0x03000060
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801530C
	b _080155D4
_0801530C:
	ldr r1, _08015394 @ =0x03000050
	adds r1, r4, r1
	str r1, [sp, #0x18]
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r3, _08015398 @ =0x03000052
	adds r3, r4, r3
	str r3, [sp, #0x1c]
	movs r7, #0
	ldrsh r2, [r3, r7]
	ldr r0, _0801539C @ =0x03000066
	adds r0, r4, r0
	str r0, [sp, #0x20]
	movs r7, #0
	ldrsh r3, [r0, r7]
	mov ip, r3
	ldr r0, _080153A0 @ =0x03000068
	adds r0, r0, r4
	mov sl, r0
	movs r3, #0
	ldrsh r0, [r0, r3]
	str r0, [sp]
	ldr r7, _080153A4 @ =0x03000054
	adds r7, r7, r4
	mov sb, r7
	ldrh r0, [r7]
	lsrs r0, r0, #7
	movs r3, #1
	mov r8, r3
	ands r0, r3
	str r0, [sp, #4]
	adds r0, r5, #0
	mov r3, ip
	bl sa2__sub_800DA4C
	adds r4, r0, #0
	mov r7, r8
	ands r0, r7
	cmp r0, #0
	beq _080153F8
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080153C6
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r4
	cmp r0, #0
	beq _080153A8
	ldrh r1, [r6, #8]
	movs r2, #8
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _080153C6
	b _080153BC
	.align 2, 0
_08015380: .4byte gPlayer
_08015384: .4byte gCurTask
_08015388: .4byte gMultiplayerPlayerTasks
_0801538C: .4byte 0x04000128
_08015390: .4byte 0x03000060
_08015394: .4byte 0x03000050
_08015398: .4byte 0x03000052
_0801539C: .4byte 0x03000066
_080153A0: .4byte 0x03000068
_080153A4: .4byte 0x03000054
_080153A8:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r4
	cmp r0, #0
	beq _080153C6
	ldrh r1, [r6, #8]
	movs r3, #8
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bge _080153C6
_080153BC:
	rsbs r0, r1, #0
	strh r0, [r6, #8]
	ldrh r0, [r6, #0xc]
	rsbs r0, r0, #0
	strh r0, [r6, #0xc]
_080153C6:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r4
	cmp r0, #0
	beq _080153E0
	ldr r1, _080153F4 @ =gPlayer
	ldrh r2, [r1, #0xa]
	movs r7, #0xa
	ldrsh r0, [r1, r7]
	cmp r0, #0
	ble _080153E0
	rsbs r0, r2, #0
	strh r0, [r1, #0xa]
_080153E0:
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	bne _08015402
_080153F0:
	movs r0, #1
	b _08015654
	.align 2, 0
_080153F4: .4byte gPlayer
_080153F8:
	movs r7, #2
	ands r7, r4
	cmp r7, #0
	bne _08015402
	b _08015558
_08015402:
	ldr r0, _08015484 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801540E
	cmp r0, #5
	bne _0801545C
_0801540E:
	ldr r0, _08015488 @ =gMultiplayerCharacters
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r1, [r1]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _0801545C
	ldr r0, [sp, #0x10]
	ldrh r1, [r0, #0xa]
	movs r0, #0xae
	lsls r0, r0, #1
	cmp r1, r0
	beq _08015432
	adds r0, #5
	cmp r1, r0
	bne _0801545C
_08015432:
	ldr r2, _0801548C @ =gPlayer
	adds r3, r2, #0
	adds r3, #0x26
	ldrb r1, [r3]
	movs r0, #0x10
	orrs r0, r1
	movs r1, #0x96
	lsls r1, r1, #2
	strh r1, [r2, #0x20]
	movs r1, #0xfb
	ands r0, r1
	strb r0, [r3]
	adds r2, #0x59
	movs r0, #0
	ldrsb r0, [r2, r0]
	bl CreateItemTask_Confusion
	ldr r0, _08015490 @ =gMPlayInfo_BGM
	movs r1, #0x80
	bl m4aMPlayTempoControl
_0801545C:
	movs r6, #1
	ands r4, r6
	cmp r4, #0
	beq _080154A2
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _0801548C @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r3, r1, #0
	cmp r2, r0
	bge _08015494
	ldr r0, [r3, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _08015498
	.align 2, 0
_08015484: .4byte gGameMode
_08015488: .4byte gMultiplayerCharacters
_0801548C: .4byte gPlayer
_08015490: .4byte gMPlayInfo_BGM
_08015494:
	ldr r0, [r3, #0x10]
	orrs r0, r6
_08015498:
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl sa2__sub_800DE44
	b _080154D0
_080154A2:
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldr r1, _080154BC @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r3, r1, #0
	cmp r2, r0
	bge _080154C0
	ldr r0, [r3, #0x10]
	orrs r0, r6
	b _080154C8
	.align 2, 0
_080154BC: .4byte gPlayer
_080154C0:
	ldr r0, [r3, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080154C8:
	str r0, [r3, #0x10]
	adds r0, r3, #0
	bl sub_800C760
_080154D0:
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
	ldr r0, _0801554C @ =gGameMode
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080154E8
	b _080153F0
_080154E8:
	ldr r4, [sp, #0xc]
	ldr r1, [r4, #0x5c]
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	bne _080154F8
	b _080153F0
_080154F8:
	movs r4, #0
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, #0
	ands r0, r2
	adds r5, #0x56
	ldr r6, _08015550 @ =gChaoTasks
	cmp r0, #0
	bne _0801551E
	adds r3, r2, #0
	adds r2, r1, #0
_0801550E:
	adds r4, #1
	cmp r4, #2
	bhi _0801551E
	adds r0, r3, #0
	lsls r0, r4
	ands r0, r2
	cmp r0, #0
	beq _0801550E
_0801551E:
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r0, r4
	bics r1, r0
	ldr r7, [sp, #0xc]
	str r1, [r7, #0x5c]
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldrb r1, [r5]
	ldr r2, _08015554 @ =0x03000041
	adds r0, r0, r2
	strb r1, [r0]
	bl CreateRoomEvent
	movs r1, #9
	strb r1, [r0]
	strb r4, [r0, #1]
	ldrb r1, [r5]
	strb r1, [r0, #2]
	b _080153F0
	.align 2, 0
_0801554C: .4byte gGameMode
_08015550: .4byte gChaoTasks
_08015554: .4byte 0x03000041
_08015558:
	ldr r3, [sp, #0x14]
	ldr r1, [r3, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801559A
	ldr r0, [r5, #0x30]
	cmp r0, r1
	bne _0801559A
	ldr r4, [sp, #0x18]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r3, [sp, #0x1c]
	movs r4, #0
	ldrsh r2, [r3, r4]
	ldr r0, [sp, #0x20]
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov ip, r0
	mov r4, sl
	movs r3, #0
	ldrsh r0, [r4, r3]
	str r0, [sp]
	mov r4, sb
	ldrh r0, [r4]
	lsrs r0, r0, #7
	mov r3, r8
	ands r0, r3
	str r0, [sp, #4]
	str r7, [sp, #8]
	adds r0, r5, #0
	mov r3, ip
	b _0801561E
_0801559A:
	ldr r1, _080155D0 @ =gPlayer
	ldr r2, [r1, #0x10]
	movs r0, #8
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _080155BC
	ldr r0, [r3, #0x28]
	ldr r4, [sp, #0x10]
	cmp r0, r4
	bne _080155BC
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	movs r0, #2
	orrs r2, r0
	str r2, [r3, #0x10]
_080155BC:
	ldr r0, [r5, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015652
	ldr r0, [r3, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r3, #0x10]
	b _08015652
	.align 2, 0
_080155D0: .4byte gPlayer
_080155D4:
	subs r0, #1
	strb r0, [r1]
	ldr r0, [r6, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08015652
	ldr r0, [r6, #0x28]
	cmp r0, r5
	bne _08015652
	ldr r7, _08015664 @ =0x03000050
	adds r0, r4, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, _08015668 @ =0x03000052
	adds r0, r4, r3
	movs r7, #0
	ldrsh r2, [r0, r7]
	adds r3, #0x14
	adds r0, r4, r3
	movs r7, #0
	ldrsh r3, [r0, r7]
	ldr r7, _0801566C @ =0x03000068
	adds r0, r4, r7
	movs r7, #0
	ldrsh r0, [r0, r7]
	str r0, [sp]
	ldr r7, _08015670 @ =0x03000054
	adds r0, r4, r7
	ldrh r0, [r0]
	lsrs r0, r0, #7
	movs r4, #1
	ands r0, r4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r5, #0
_0801561E:
	bl sub_80097E4
	adds r2, r0, #0
	ldr r0, [r5, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801563E
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0801563E
	ldr r0, [r6, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r6, #0x10]
_0801563E:
	str r2, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r2
	cmp r0, #0
	beq _08015652
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0x1e
	strb r0, [r1]
_08015652:
	movs r0, #0
_08015654:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015664: .4byte 0x03000050
_08015668: .4byte 0x03000052
_0801566C: .4byte 0x03000068
_08015670: .4byte 0x03000054

	thumb_func_start Task_HandleLaunchPlayer
Task_HandleLaunchPlayer: @ 0x08015674
	push {r4, r5, r6, lr}
	ldr r6, _080156E0 @ =gPlayer
	ldr r2, [r6, #0x64]
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080156F4
	ldr r5, _080156E4 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r6, #0x10]
	ldr r1, _080156E8 @ =0xFFDFFFFF
	ands r0, r1
	ldr r1, _080156EC @ =0xFF7FFFFF
	ands r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _080156F0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x15
	strb r0, [r1]
	adds r1, r2, #0
	adds r1, #0x2d
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #0xe
	bl Player_HandleSpriteYOffsetChange
	movs r0, #6
	strb r0, [r6, #0xe]
	movs r0, #0xe
	strb r0, [r6, #0xf]
	movs r0, #0xaa      @ SE_SPRING
	bl m4aSongNumStart
	ldrh r0, [r4]
	strh r0, [r6, #0xa]
	ldr r0, [r5]
	bl TaskDestroy
	b _08015716
	.align 2, 0
_080156E0: .4byte gPlayer
_080156E4: .4byte gCurTask
_080156E8: .4byte 0xFFDFFFFF
_080156EC: .4byte 0xFF7FFFFF
_080156F0: .4byte 0xFFFFFEFF
_080156F4:
	adds r0, r6, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x2a
	beq _08015716
	ldr r0, [r6, #0x10]
	ldr r1, _0801571C @ =0xFFDFFFFF
	ands r0, r1
	ldr r1, _08015720 @ =0xFF7FFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08015724 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08015716:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801571C: .4byte 0xFFDFFFFF
_08015720: .4byte 0xFF7FFFFF
_08015724: .4byte gCurTask

	thumb_func_start TaskDestructor_MultiplayerPlayer
TaskDestructor_MultiplayerPlayer: @ 0x08015728
	push {lr}
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	ldr r1, _0801574C @ =gMultiplayerPlayerTasks
	ldr r3, _08015750 @ =0x03000056
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, [r2, #4]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0801574C: .4byte gMultiplayerPlayerTasks
_08015750: .4byte 0x03000056

	thumb_func_start LaunchPlayer
LaunchPlayer: @ 0x08015754
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _080157A0 @ =Task_HandleLaunchPlayer
	movs r2, #0x80
	lsls r2, r2, #6
	movs r5, #0
	str r5, [sp]
	movs r1, #2
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	ldr r2, _080157A4 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r1, r0
	strh r5, [r2, #0x38]
	adds r3, r2, #0
	adds r3, #0x40
	movs r0, #0x2a
	strb r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x10
	orrs r1, r0
	str r1, [r2, #0x10]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080157A0: .4byte Task_HandleLaunchPlayer
_080157A4: .4byte gPlayer

@ This function does not appear to be in SA2
	thumb_func_start sub_80157A8
sub_80157A8: @ 0x080157A8
	push {r4, lr}
	ldr r0, _08015808 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _0801580C @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080157E2
	ldr r0, [r2, #0x28]
	cmp r0, r4
	bne _080157E2
	ldr r1, [r4, #0x44]
	lsls r1, r1, #8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r4, #0x48]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r2, #4]
_080157E2:
	bl sub_80152C8
	cmp r0, #0
	beq _08015802
	ldr r0, [r4, #0x4c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015802
	ldr r2, _0801580C @ =gPlayer
	ldr r0, [r2, #0x10]
	subs r1, #0x41
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r4, #0x4c]
_08015802:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015808: .4byte gCurTask
_0801580C: .4byte gPlayer

@ -- End of src/game/multiplayer/mp_player.c ---
