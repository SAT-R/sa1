.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0801F710 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r4, r0, r7     @ r4 = goal
	ldr r1, _0801F714 @ =0x0300000C
	adds r6, r0, r1     @ r6 = s
	ldr r2, [r4]
	mov r8, r2          @ r8 = r2 = me
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0     @ r1 = x (world)
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0     @ r2 = y = (world)
	ldr r5, _0801F718 @ =gCamera
	ldrh r0, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0     @ r1 = x (screen)
	strh r1, [r6, #0x16]
	ldrh r0, [r5, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0     @ r2 = y (screen)
	strh r2, [r6, #0x18]
	ldr r0, _0801F71C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801F6D2
	b _0801F7D0_mp_race
_0801F6D2:
	ldr r0, _0801F720 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _0801F728
	ldr r2, _0801F724 @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x10
	strh r0, [r2, #0x38]
	ldrh r3, [r5, #0xe]
	movs r0, #0xe
	ldrsh r1, [r5, r0]
	movs r0, #0x38
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0801F700
	subs r0, r3, #1
	strh r0, [r5, #0xe]
_0801F700:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	movs r1, #0x90
	lsls r1, r1, #3
	cmp r0, r1
	ble _0801F73A
	strh r1, [r2, #0xc]
	b _0801F73A
	.align 2, 0
_0801F710: .4byte gCurTask
_0801F714: .4byte 0x0300000C
_0801F718: .4byte gCamera
_0801F71C: .4byte gGameMode
_0801F720: .4byte gCurrentLevel
_0801F724: .4byte gPlayer
_0801F728:
	ldr r0, _0801F7B4 @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0xf
	orrs r1, r2
	str r1, [r0, #0x10]
	movs r0, #0x78
	bl m4aSongNumStop
_0801F73A:
	ldr r0, _0801F7B8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _0801F76C
	ldrh r0, [r4, #0x3c]
	cmp r0, #0x1e
	bls _0801F76C
	adds r1, r4, #0
	adds r1, #0x3e
	movs r3, #0
	ldrsb r3, [r1, r3]
	cmp r3, #0
	bne _0801F76C
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0801F7BC @ =Task_ShowResults
	movs r2, #0x80
	lsls r2, r2, #6
	str r3, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
_0801F76C:
	ldr r1, _0801F7C0 @ =sa2__gUnknown_030054B4
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r4, #0x3c]
	adds r1, r0, #1
	strh r1, [r4, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bhi _0801F782
	b _0801FA04
_0801F782:
	ldr r0, _0801F7B4 @ =gPlayer
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1c
	beq _0801F79E
	ldr r0, _0801F7B8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	beq _0801F79E
	b _0801FA04
_0801F79E:
	ldr r0, _0801F7C4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _0801F7C8 @ =gRingCount
	ldrh r0, [r0]
	ldr r1, _0801F7CC @ =gCourseTime
	ldr r1, [r1]
	bl CreateStageResults
	b _0801FA1A_return
	.align 2, 0
_0801F7B4: .4byte gPlayer
_0801F7B8: .4byte gCurrentLevel
_0801F7BC: .4byte Task_ShowResults
_0801F7C0: .4byte sa2__gUnknown_030054B4
_0801F7C4: .4byte gCurTask
_0801F7C8: .4byte gRingCount
_0801F7CC: .4byte gCourseTime
_0801F7D0_mp_race:
	cmp r0, #2
	bne _0801F8A6_mp_other
	movs r5, #0
	ldr r3, _0801F880 @ =gMultiplayerPlayerTasks
	ldr r0, _0801F884 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r6, r0, r7     @ r6 = mpp
	ldr r2, _0801F888 @ =gPlayer
	adds r4, r2, #0
	adds r4, #0x26      @ r4 = &gPlayer.itemEffect
	ldrb r1, [r4]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r4]
	strh r5, [r2, #0x22]
	ldr r0, [r3]
	cmp r0, #0
	beq _0801F824
	adds r4, r7, #0
	adds r2, r3, #0
	adds r2, #0xc
	movs r1, #1
_0801F808:
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	adds r0, r0, r4
	ldr r0, [r0, #0x5c]
	ands r0, r1
	cmp r0, #0
	beq _0801F818
	adds r5, #1
_0801F818:
	adds r3, #4
	cmp r3, r2
	bhi _0801F824
	ldr r0, [r3]
	cmp r0, #0
	bne _0801F808
_0801F824:
	ldr r0, _0801F884 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sa2__sub_8019CCC
	ldr r0, [r6, #0x5c]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #0x5c]
	cmp r5, #0
	bne _0801F852
	ldr r2, _0801F88C @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0801F890 @ =gCourseTime
	movs r0, #0xe1
	lsls r0, r0, #4
	str r0, [r1]
_0801F852:
	ldr r2, _0801F888 @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x10
	strh r0, [r2, #0x38]
	bl CreateRoomEvent
	movs r1, #7
	strb r1, [r0]
	ldr r0, _0801F894 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F898 @ =Task_StageGoal4
	str r0, [r1, #8]
	ldr r2, _0801F89C @ =gCamera
	ldrh r1, [r2, #0x26]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #0x26]
	b _0801FA1A_return
	.align 2, 0
_0801F880: .4byte gMultiplayerPlayerTasks
_0801F884: .4byte 0x04000128
_0801F888: .4byte gPlayer
_0801F88C: .4byte gStageFlags
_0801F890: .4byte gCourseTime
_0801F894: .4byte gCurTask
_0801F898: .4byte Task_StageGoal4
_0801F89C: .4byte gCamera
_0801F8A0:
	movs r2, #1
	mov r8, r2
	b _0801F916
_0801F8A6_mp_other:
	movs r0, #0
	mov r8, r0
	ldr r3, _0801F970 @ =gMultiplayerPlayerTasks
	ldr r5, _0801F974 @ =0x04000128
	ldr r0, [r5]
	ldr r2, _0801F978 @ =gPlayer
	adds r4, r2, #0
	adds r4, #0x26
	ldrb r1, [r4]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r4]
	mov r1, r8
	strh r1, [r2, #0x22]
	movs r4, #0
	ldr r0, [r3]
	mov ip, r3
	cmp r0, #0
	beq _0801F916
	ldr r0, _0801F97C @ =gMultiplayerConnections
	ldrb r3, [r0]
	movs r7, #0x10
	adds r6, r5, #0
	mov r5, ip
_0801F8D6:
	adds r2, r7, #0     @ r2 = r7 = 0x10
	lsls r2, r4         @ r2 <<= i
	ands r2, r3
	adds r0, r4, #4
	asrs r2, r0
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r1, r7, #0
	lsls r1, r0
	ands r1, r3
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r1, r0
	cmp r2, r1
	beq _0801F908
	ldr r0, _0801F980 @ =sa2__gUnknown_030054B4
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0801F8A0
_0801F908:
	adds r5, #4
	adds r4, #1
	cmp r4, #3
	bhi _0801F916
	ldr r0, [r5]
	cmp r0, #0
	bne _0801F8D6
_0801F916:
	movs r4, #0
	mov r2, ip
	ldr r0, [r2]
	cmp r0, #0
	beq _0801F9AC
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	movs r7, #0x10
	ldr r6, _0801F974 @ =0x04000128
	movs r5, #0
_0801F92C:
	ldr r0, _0801F980 @ =sa2__gUnknown_030054B4
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, sb
	bne _0801F994
	ldr r0, _0801F97C @ =gMultiplayerConnections
	ldrb r3, [r0]
	adds r2, r7, #0
	lsls r2, r4
	ands r2, r3
	adds r0, r4, #4
	asrs r2, r0
	ldr r1, [r6]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	adds r0, r7, #0
	lsls r0, r1
	ands r3, r0
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r2, r3
	bne _0801F984
	lsrs r0, r5, #0x18
	mov r2, r8
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl sa2__sub_8019CCC
	b _0801F994
	.align 2, 0
_0801F970: .4byte gMultiplayerPlayerTasks
_0801F974: .4byte 0x04000128
_0801F978: .4byte gPlayer
_0801F97C: .4byte gMultiplayerConnections
_0801F980: .4byte sa2__gUnknown_030054B4
_0801F984:
	lsrs r0, r5, #0x18
	movs r2, #1
	mov r1, r8
	eors r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sa2__sub_8019CCC
_0801F994:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #3
	bhi _0801F9AC
	ldr r0, _0801F9E8 @ =gMultiplayerPlayerTasks
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0801F92C
_0801F9AC:
	ldr r1, _0801F9EC @ =gStageFlags
	ldrh r0, [r1]
	movs r4, #4
	orrs r0, r4
	strh r0, [r1]
	ldr r1, _0801F9F0 @ =gCourseTime
	movs r0, #0xe1
	lsls r0, r0, #4
	str r0, [r1]
	ldr r2, _0801F9F4 @ =gPlayer
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x10
	strh r0, [r2, #0x38]
	bl CreateRoomEvent
	movs r1, #7
	strb r1, [r0]
	ldr r0, _0801F9F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F9FC @ =Task_StageGoal4
	str r0, [r1, #8]
	ldr r1, _0801FA00 @ =gCamera
	ldrh r0, [r1, #0x26]
	orrs r4, r0
	strh r4, [r1, #0x26]
	b _0801FA1A_return
	.align 2, 0
_0801F9E8: .4byte gMultiplayerPlayerTasks
_0801F9EC: .4byte gStageFlags
_0801F9F0: .4byte gCourseTime
_0801F9F4: .4byte gPlayer
_0801F9F8: .4byte gCurTask
_0801F9FC: .4byte Task_StageGoal4
_0801FA00: .4byte gCamera
_0801FA04:
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0801FA1A_return
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0801FA1A_return:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
