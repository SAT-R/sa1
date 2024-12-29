.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of unused_level_select.c ---
@ It is referenced in SA1.
	thumb_func_start CreateUnusedLevelSelect
CreateUnusedLevelSelect: @ 0x0800E0C4
	push {r4, lr}
	sub sp, #4
	ldr r0, _0800E110 @ =Task_UnusedLevelSelectInit
	movs r2, #0x80
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	ldr r1, _0800E114 @ =gMultiplayerMissingHeartbeats
	strb r4, [r1, #3]
	strb r4, [r1, #2]
	strb r4, [r1, #1]
	strb r4, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldr r1, _0800E118 @ =gDispCnt
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _0800E11C @ =gBgCntRegs
	movs r3, #0
	ldr r0, _0800E120 @ =0x00001F06
	strh r0, [r1]
	strh r4, [r2, #4]
	strb r3, [r2, #6]
	ldr r0, _0800E124 @ =0x06004020
	str r0, [r2]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E110: .4byte Task_UnusedLevelSelectInit
_0800E114: .4byte gMultiplayerMissingHeartbeats
_0800E118: .4byte gDispCnt
_0800E11C: .4byte gBgCntRegs
_0800E120: .4byte 0x00001F06
_0800E124: .4byte 0x06004020

	thumb_func_start Task_Poll
Task_Poll: @ 0x0800E128
	push {r4, r5, r6, lr}
	sub sp, #0x14
	ldr r6, _0800E174 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0     @ r4 = levelSelect
	ldr r0, _0800E178 @ =gPressedKeys
	ldrh r1, [r0]
	movs r5, #9
	ands r5, r1
	cmp r5, #0
	beq _0800E198
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r0, #3         @ MUS_CHARACTER_SELECTION
	bl m4aSongNumStop
	ldr r1, _0800E17C @ =sa2__gUnknown_03004D80
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0800E180 @ =sa2__gUnknown_03002280
	strb r0, [r1]
	strb r0, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x20
	strb r0, [r1, #3]
	ldr r0, _0800E184 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0800E18C
	ldr r1, [r6]
	ldr r0, _0800E188 @ =sub_800E220
	str r0, [r1, #8]
	b _0800E214
	.align 2, 0
_0800E174: .4byte gCurTask
_0800E178: .4byte gPressedKeys
_0800E17C: .4byte sa2__gUnknown_03004D80
_0800E180: .4byte sa2__gUnknown_03002280
_0800E184: .4byte gGameMode
_0800E188: .4byte sub_800E220
_0800E18C:
	ldr r1, [r6]
	ldr r0, _0800E194 @ =sub_800E34C
	str r0, [r1, #8]
	b _0800E214
	.align 2, 0
_0800E194: .4byte sub_800E34C
_0800E198:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800E1D0
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r0, [r6]
	bl TaskDestroy
	movs r0, #0
	bl CreateCharacterSelectionScreen
	ldr r0, _0800E1C8 @ =sa2__gUnknown_03004D80
	strb r5, [r0]
	ldr r1, _0800E1CC @ =sa2__gUnknown_03002280
	strb r5, [r1]
	strb r5, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x20
	strb r0, [r1, #3]
	b _0800E214
	.align 2, 0
_0800E1C8: .4byte sa2__gUnknown_03004D80
_0800E1CC: .4byte sa2__gUnknown_03002280
_0800E1D0:
	ldr r0, _0800E1E4 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800E1E8
	ldrb r0, [r4, #6]
	adds r0, #1
	b _0800E1F4
	.align 2, 0
_0800E1E4: .4byte gRepeatedKeys
_0800E1E8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800E1F6
	ldrb r0, [r4, #6]
	subs r0, #1
_0800E1F4:
	strb r0, [r4, #6]
_0800E1F6:
	ldrb r1, [r4, #6]
	add r0, sp, #0xc
	bl numToASCII
	ldr r0, [r4]
	ldr r1, _0800E21C @ =Tileset_Language
	movs r2, #0
	str r2, [sp]
	add r3, sp, #0xc
	str r3, [sp, #4]
	str r2, [sp, #8]
	movs r2, #0xc
	movs r3, #0xe
	bl RenderText
_0800E214:
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E21C: .4byte Tileset_Language

	thumb_func_start sub_800E220
sub_800E220: @ 0x0800E220
	push {r4, r5, r6, r7, lr}
	ldr r2, _0800E28C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, _0800E290 @ =gGameMode
	ldrb r0, [r0]
	mov ip, r2
	cmp r0, #1
	bls _0800E2CE
	movs r3, #0
	ldr r0, _0800E294 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _0800E2CE
	movs r5, #1
	ldr r2, _0800E298 @ =gMultiplayerMissingHeartbeats
_0800E24C:
	ldr r1, _0800E29C @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0800E2B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0800E2BC
	movs r0, #0
	ldr r1, _0800E2A0 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0800E2A4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0800E2A8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0800E2AC @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0800E2B0 @ =gVramGraphicsCopyCursor
	ldr r0, _0800E2B4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0800E334
	.align 2, 0
_0800E28C: .4byte gCurTask
_0800E290: .4byte gGameMode
_0800E294: .4byte gMultiplayerConnections
_0800E298: .4byte gMultiplayerMissingHeartbeats
_0800E29C: .4byte gMultiSioStatusFlags
_0800E2A0: .4byte 0x0000FFFF
_0800E2A4: .4byte gBackgroundsCopyQueueCursor
_0800E2A8: .4byte gBackgroundsCopyQueueIndex
_0800E2AC: .4byte sa2__gUnknown_03005390
_0800E2B0: .4byte gVramGraphicsCopyCursor
_0800E2B4: .4byte gVramGraphicsCopyQueueIndex
_0800E2B8:
	movs r0, #0
	strb r0, [r2]
_0800E2BC:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0800E2CE
	ldrb r0, [r6]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0800E24C
_0800E2CE:
	ldr r2, _0800E2E4 @ =gMultiSioRecv
	ldrh r0, [r2]
	cmp r0, #0x52
	bne _0800E2EC
	ldrb r0, [r2, #2]
	strb r0, [r7, #6]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _0800E2E8 @ =sub_800E34C
	str r0, [r1, #8]
	b _0800E334
	.align 2, 0
_0800E2E4: .4byte gMultiSioRecv
_0800E2E8: .4byte sub_800E34C
_0800E2EC:
	ldr r2, _0800E33C @ =gMultiSioSend
	movs r0, #0x51
	strh r0, [r2]
	ldrb r0, [r7, #6]
	strb r0, [r2, #2]
	ldr r0, _0800E340 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _0800E334
	movs r1, #0
	ldr r6, _0800E344 @ =gMultiplayerConnections
	ldrb r3, [r6]
	movs r5, #1
	ldr r4, _0800E348 @ =gMultiSioRecv
_0800E30E:
	adds r0, r3, #0
	asrs r0, r1
	ands r0, r5
	cmp r0, #0
	beq _0800E326
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r4
	ldrh r0, [r2]
	cmp r0, #0x51
	bne _0800E334
_0800E326:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0800E30E
	movs r0, #0x52
	strh r0, [r7]
_0800E334:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E33C: .4byte gMultiSioSend
_0800E340: .4byte gMultiSioStatusFlags
_0800E344: .4byte gMultiplayerConnections
_0800E348: .4byte gMultiSioRecv

	thumb_func_start sub_800E34C
sub_800E34C: @ 0x0800E34C
	push {r4, r5, lr}
	ldr r0, _0800E370 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	ldrb r4, [r1, #6]
	adds r5, r4, #0
	bl TaskDestroy
	cmp r4, #0
	bne _0800E378
	ldr r0, _0800E374 @ =gCurrentLevel
	strb r4, [r0]
	bl sub_803DBD4
	b _0800E3FC
	.align 2, 0
_0800E370: .4byte gCurTask
_0800E374: .4byte gCurrentLevel
_0800E378:
	cmp r4, #0xff
	bne _0800E382
	bl CreateStaffCredits
	b _0800E3FC
_0800E382:
	cmp r4, #0xfe
	bne _0800E38C
	bl sub_8065884
	b _0800E3FC
_0800E38C:
	cmp r4, #0xfd
	bne _0800E396
	bl sub_80670F8
	b _0800E3FC
_0800E396:
	cmp r4, #0xfc
	bne _0800E3A2
	movs r0, #0
	bl sub_803A950
	b _0800E3FC
_0800E3A2:
	cmp r4, #0xfb
	bne _0800E3AE
	movs r0, #1
	bl sub_803A950
	b _0800E3FC
_0800E3AE:
	cmp r4, #0xfa
	bne _0800E3BA
	movs r0, #2
	bl sub_803A950
	b _0800E3FC
_0800E3BA:
	cmp r4, #0xf9
	bne _0800E3C6
	movs r0, #0
	bl CreateMultipackOutcomeScreen
	b _0800E3FC
_0800E3C6:
	cmp r4, #0xf8
	bne _0800E3D2
	movs r0, #1
	bl CreateMultipackOutcomeScreen
	b _0800E3FC
_0800E3D2:
	cmp r5, #0x12
	bhi _0800E3FC
	ldr r1, _0800E3F0 @ =gCurrentLevel
	subs r0, r5, #1
	strb r0, [r1]
	ldr r0, _0800E3F4 @ =gInput
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800E3F8
	bl sub_803DBD4
	b _0800E3FC
	.align 2, 0
_0800E3F0: .4byte gCurrentLevel
_0800E3F4: .4byte gInput
_0800E3F8:
	bl sub_8029908
_0800E3FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_UnusedLevelSelectInit
Task_UnusedLevelSelectInit: @ 0x0800E404
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r5, _0800E454 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r1, _0800E458 @ =gBgPalette
	movs r3, #0
	ldr r0, _0800E45C @ =0x00007FFF
	strh r0, [r1, #2]
	ldr r2, _0800E460 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, [r4]
	ldr r1, _0800E464 @ =Tileset_Language
	str r3, [sp]
	ldr r2, _0800E468 @ =gUnknown_080BB340
	str r2, [sp, #4]
	str r3, [sp, #8]
	movs r2, #6
	movs r3, #0xe
	bl RenderText
	ldr r1, [r4]
	adds r1, r1, r0
	str r1, [r4]
	ldr r1, [r5]
	ldr r0, _0800E46C @ =Task_Poll
	str r0, [r1, #8]
	bl _call_via_r0
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E454: .4byte gCurTask
_0800E458: .4byte gBgPalette
_0800E45C: .4byte 0x00007FFF
_0800E460: .4byte gFlags
_0800E464: .4byte Tileset_Language
_0800E468: .4byte gUnknown_080BB340
_0800E46C: .4byte Task_Poll
