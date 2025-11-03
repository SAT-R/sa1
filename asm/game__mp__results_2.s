.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ Module exists in some form in SA2!

	thumb_func_start LinkCommunicationError
LinkCommunicationError: @ 0x0801A728
	push {lr}
	bl m4aMPlayAllStop
	ldr r2, _0801A774 @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r1, _0801A778 @ =gDispCnt
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _0801A77C @ =gMultiSioEnabled
	movs r0, #0
	strb r0, [r1]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	ldr r1, _0801A780 @ =gTilemapsRef
	ldr r0, _0801A784 @ =gTilemaps
	str r0, [r1]
	ldr r1, _0801A788 @ =gRefSpriteTables
	ldr r0, _0801A78C @ =gSpriteTables
	str r0, [r1]
	ldr r1, _0801A790 @ =gMultiplayerMissingHeartbeats
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	movs r0, #1
	bl CreateMultipackOutcomeScreen
	pop {r0}
	bx r0
	.align 2, 0
_0801A774: .4byte gFlags
_0801A778: .4byte gDispCnt
_0801A77C: .4byte gMultiSioEnabled
_0801A780: .4byte gTilemapsRef
_0801A784: .4byte gTilemaps
_0801A788: .4byte gRefSpriteTables
_0801A78C: .4byte gSpriteTables
_0801A790: .4byte gMultiplayerMissingHeartbeats

	thumb_func_start CreateMultiplayerSinglePakResultsScreen
CreateMultiplayerSinglePakResultsScreen: @ 0x0801A794
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	ldr r0, _0801AA0C @ =gMultiplayerMissingHeartbeats
	movs r5, #0
	strb r5, [r0, #3]
	strb r5, [r0, #2]
	strb r5, [r0, #1]
	strb r5, [r0]
	ldr r0, _0801AA10 @ =gWinRegs
	movs r6, #0
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0]
	strh r5, [r0, #4]
	strh r5, [r0, #2]
	strh r5, [r0, #6]
	ldr r0, _0801AA14 @ =gStageFlags
	strh r5, [r0]
	ldr r1, _0801AA18 @ =gMultiSioEnabled
	movs r0, #1
	strb r0, [r1]
	ldr r4, _0801AA1C @ =gFlags
	ldr r0, [r4]
	ldr r1, _0801AA20 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4]
	bl m4aSoundVSyncOn
	ldr r1, _0801AA24 @ =gGameMode
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4]
	ldr r1, _0801AA28 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4]
	ldr r0, _0801AA2C @ =gUnknown_087E3610
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #6
	mov sb, r2
	bl CpuFastSet
	ldr r0, _0801AA30 @ =gUnknown_087D7E80
	ldr r4, _0801AA34 @ =gUnknown_02033000
	movs r2, #0xd0
	lsls r2, r2, #6
	adds r1, r4, #0
	bl CpuFastSet
	ldr r1, _0801AA38 @ =gTilemapsRef
	ldr r0, [r4]
	str r0, [r1]
	ldr r0, _0801AA3C @ =gDispCnt
	movs r3, #0x40
	strh r3, [r0]
	ldr r1, _0801AA40 @ =gBgCntRegs
	ldr r0, _0801AA44 @ =0x00005E0B
	strh r0, [r1, #6]
	ldr r0, _0801AA48 @ =0x00001C0C
	strh r0, [r1, #4]
	ldr r2, _0801AA4C @ =sa2__gUnknown_03004D80
	movs r0, #0x7f
	strb r0, [r2, #2]
	ldr r0, _0801AA50 @ =sa2__gUnknown_03002280
	strb r6, [r0, #8]
	strb r6, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	movs r1, #0x20
	strb r1, [r0, #0xb]
	subs r1, #0x21
	strb r1, [r2, #3]
	strb r6, [r0, #0xc]
	strb r6, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r3, [r0, #0xf]
	str r5, [sp, #4]
	ldr r2, _0801AA54 @ =0x040000D4
	add r3, sp, #4
	str r3, [r2]
	ldr r0, _0801AA58 @ =0x06009FE0
	str r0, [r2, #4]
	ldr r3, _0801AA5C @ =0x85000010
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	str r5, [sp, #4]
	add r4, sp, #4
	str r4, [r2]
	movs r0, #3
	mov r8, r0
	lsls r0, r0, #0xe
	ldr r1, _0801AA60 @ =0x06000FE0
	adds r0, r0, r1
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0801AA64 @ =sa2__Task_808207C
	movs r1, #0x88
	lsls r1, r1, #3
	str r5, [sp]
	mov r2, sb
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r1, _0801AA68 @ =0x03000434
	adds r0, r4, r1
	mov r2, sl
	str r2, [r0]
	ldr r3, _0801AA6C @ =0x03000430
	adds r0, r4, r3
	strh r5, [r0]
	adds r1, #4
	adds r0, r4, r1
	strb r6, [r0]
	adds r3, #0xc
	adds r2, r4, r3
	ldr r0, _0801AA70 @ =gLoadedSaveGame
	ldr r1, _0801AA74 @ =gFrameCount
	ldr r0, [r0, #4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _0801AA78 @ =0x06008000
	str r0, [r7, #4]
	strh r5, [r7, #0xa]
	ldr r0, _0801AA7C @ =0x0600F000
	str r0, [r7, #0xc]
	strh r5, [r7, #0x18]
	strh r5, [r7, #0x1a]
	movs r0, #4
	strh r0, [r7, #0x1c]
	strh r5, [r7, #0x1e]
	strh r5, [r7, #0x20]
	strh r5, [r7, #0x22]
	strh r5, [r7, #0x24]
	movs r0, #0x1e
	strh r0, [r7, #0x26]
	movs r0, #0x19
	strh r0, [r7, #0x28]
	ldr r5, _0801AA80 @ =0x0300002A
	adds r0, r4, r5
	strb r6, [r0]
	mov r0, r8
	strh r0, [r7, #0x2e]
	adds r0, r7, #0
	bl DrawBackground
	movs r6, #0
	movs r1, #0
	mov r8, r1
	movs r3, #0
	ldr r2, _0801AA84 @ =0x03000088
	adds r5, r4, r2
	movs r2, #0x14
	ldr r0, _0801AA88 @ =0x03000080
	adds r4, r4, r0
_0801A8E0:
	movs r0, #0x78
	strh r0, [r5, #0xe]
	strh r2, [r5, #0x10]
	lsls r0, r6, #0xb
	ldr r1, _0801AA8C @ =0x06010000
	adds r0, r0, r1
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x12]
	strh r3, [r5]
	ldr r1, _0801AA90 @ =gPlayerCharacterIdleAnims
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #2]
	mov r0, r8
	strb r0, [r5, #0x18]
	strh r3, [r5, #0xc]
	strh r3, [r5, #0x14]
	movs r0, #0xff
	strb r0, [r5, #0x19]
	movs r0, #0x10
	strb r0, [r5, #0x1a]
	mov r1, r8
	strb r1, [r5, #0x1d]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	adds r0, r4, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl UpdateSpriteAnimation
	adds r5, #0x38
	ldr r2, [sp, #0x10]
	adds r2, #0x28
	adds r4, #0x38
	adds r6, #1
	ldr r3, [sp, #0x14]
	cmp r6, #3
	bls _0801A8E0
	movs r6, #0
	movs r1, #0
	movs r2, #0xb4
	lsls r2, r2, #1
	adds r4, r7, r2
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r5, r7, r3
	ldr r2, _0801AA94 @ =0x06012000
_0801A946:
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x10]
	str r2, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x12]
	strh r1, [r4]
	movs r3, #0xe0
	lsls r3, r3, #2
	mov r8, r3
	mov r0, r8
	strh r0, [r4, #2]
	adds r0, r6, #3
	strb r0, [r4, #0x18]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	mov r3, sp
	strb r0, [r3, #8]
	movs r0, #0xff
	strb r0, [r4, #0x19]
	movs r3, #0x10
	mov sb, r3
	mov r0, sb
	strb r0, [r4, #0x1a]
	movs r3, #0
	strb r3, [r4, #0x1d]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sl, r0
	str r0, [r4, #8]
	adds r0, r5, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	bl UpdateSpriteAnimation
	adds r4, #0x30
	adds r5, #0x30
	ldr r2, [sp, #0x10]
	adds r2, #0x80
	adds r6, #1
	ldr r1, [sp, #0xc]
	cmp r6, #9
	bls _0801A946
	ldr r1, _0801AA98 @ =0x00000434
	adds r0, r7, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _0801AAA0
	movs r6, #0
	movs r2, #0
	mov r8, r2
	movs r1, #0
	movs r3, #0xde
	lsls r3, r3, #2
	adds r4, r7, r3
	ldr r2, _0801AA9C @ =0x06012500
	movs r0, #0xdc
	lsls r0, r0, #2
	adds r5, r7, r0
_0801A9C0:
	str r2, [r5, #4]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x12]
	strh r1, [r4]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #2]
	strb r6, [r4, #0x18]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0x14]
	movs r0, #0xff
	strb r0, [r4, #0x19]
	movs r0, #0x10
	strb r0, [r4, #0x1a]
	mov r3, r8
	strb r3, [r4, #0x1d]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r5, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	bl UpdateSpriteAnimation
	adds r4, #0x30
	ldr r2, [sp, #0x10]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r2, r2, r0
	adds r5, #0x30
	adds r6, #1
	ldr r1, [sp, #0xc]
	cmp r6, #2
	bls _0801A9C0
	b _0801AAEE
	.align 2, 0
_0801AA0C: .4byte gMultiplayerMissingHeartbeats
_0801AA10: .4byte gWinRegs
_0801AA14: .4byte gStageFlags
_0801AA18: .4byte gMultiSioEnabled
_0801AA1C: .4byte gFlags
_0801AA20: .4byte 0xFFFFBFFF
_0801AA24: .4byte gGameMode
_0801AA28: .4byte 0xFFFF7FFF
_0801AA2C: .4byte gUnknown_087E3610
_0801AA30: .4byte gUnknown_087D7E80
_0801AA34: .4byte gUnknown_02033000
_0801AA38: .4byte gTilemapsRef
_0801AA3C: .4byte gDispCnt
_0801AA40: .4byte gBgCntRegs
_0801AA44: .4byte 0x00005E0B
_0801AA48: .4byte 0x00001C0C
_0801AA4C: .4byte sa2__gUnknown_03004D80
_0801AA50: .4byte sa2__gUnknown_03002280
_0801AA54: .4byte 0x040000D4
_0801AA58: .4byte 0x06009FE0
_0801AA5C: .4byte 0x85000010
_0801AA60: .4byte 0x06000FE0
_0801AA64: .4byte sa2__Task_808207C
_0801AA68: .4byte 0x03000434
_0801AA6C: .4byte 0x03000430
_0801AA70: .4byte gLoadedSaveGame
_0801AA74: .4byte gFrameCount
_0801AA78: .4byte 0x06008000
_0801AA7C: .4byte 0x0600F000
_0801AA80: .4byte 0x0300002A
_0801AA84: .4byte 0x03000088
_0801AA88: .4byte 0x03000080
_0801AA8C: .4byte 0x06010000
_0801AA90: .4byte gPlayerCharacterIdleAnims
_0801AA94: .4byte 0x06012000
_0801AA98: .4byte 0x00000434
_0801AA9C: .4byte 0x06012500
_0801AAA0:
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r3, #0
	strh r4, [r0, #0x16]
	strh r4, [r0, #0x18]
	ldr r1, _0801AB00 @ =0x06012500
	str r1, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x1a]
	strh r4, [r0, #8]
	mov r2, r8
	strh r2, [r0, #0xa]
	movs r5, #0xd8
	lsls r5, r5, #2
	adds r2, r7, r5
	movs r1, #0xd
	strb r1, [r2]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x1c]
	ldr r1, _0801AB04 @ =0x00000361
	adds r2, r7, r1
	ldrb r1, [r2]
	mov r4, sp
	ldrb r4, [r4, #8]
	orrs r1, r4
	strb r1, [r2]
	adds r5, #2
	adds r1, r7, r5
	mov r2, sb
	strb r2, [r1]
	ldr r4, _0801AB08 @ =0x00000365
	adds r1, r7, r4
	strb r3, [r1]
	mov r5, sl
	str r5, [r0, #0x10]
	bl UpdateSpriteAnimation
_0801AAEE:
	ldr r1, _0801AB0C @ =0x00000434
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801AB10
	movs r0, #0x36      @ MUS_VS_RESULT
	bl m4aSongNumStart
	b _0801AB16
	.align 2, 0
_0801AB00: .4byte 0x06012500
_0801AB04: .4byte 0x00000361
_0801AB08: .4byte 0x00000365
_0801AB0C: .4byte 0x00000434
_0801AB10:
	movs r0, #0x34      @ MUS_VS_SCORE_OVERVIEW
	bl m4aSongNumStart
_0801AB16:
	ldr r0, _0801AB30 @ =gBldRegs
	movs r1, #0xff
	strh r1, [r0]
	movs r1, #0x10
	strh r1, [r0, #4]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801AB30: .4byte gBldRegs

	thumb_func_start sa2__Task_808207C
sa2__Task_808207C: @ 0x0801AB34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r2, _0801ABB0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0801ABB4 @ =gMultiplayerConnections
	ldr r3, _0801ABB8 @ =gMultiSioStatusFlags
	ldr r0, [r3]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	strb r0, [r2]
	ldr r0, _0801ABBC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801ABF2
	movs r6, #0
	ldrb r0, [r2]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801ABF2
	movs r7, #1
	ldr r5, _0801ABC0 @ =gMultiplayerMissingHeartbeats
_0801AB72:
	adds r0, r7, #0
	lsls r0, r6
	ldr r4, [r3]
	ands r4, r0
	cmp r4, #0
	bne _0801ABDC
	ldrb r0, [r5]
	adds r1, r0, #1
	strb r1, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0801ABE0
	movs r0, #0
	ldr r1, _0801ABC4 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0801ABC8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801ABCC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801ABD0 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0801ABD4 @ =gVramGraphicsCopyCursor
	ldr r0, _0801ABD8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LinkCommunicationError
	b _0801AE7A
	.align 2, 0
_0801ABB0: .4byte gDispCnt
_0801ABB4: .4byte gMultiplayerConnections
_0801ABB8: .4byte gMultiSioStatusFlags
_0801ABBC: .4byte gGameMode
_0801ABC0: .4byte gMultiplayerMissingHeartbeats
_0801ABC4: .4byte 0x0000FFFF
_0801ABC8: .4byte gBackgroundsCopyQueueCursor
_0801ABCC: .4byte gBackgroundsCopyQueueIndex
_0801ABD0: .4byte sa2__gUnknown_03005390
_0801ABD4: .4byte gVramGraphicsCopyCursor
_0801ABD8: .4byte gVramGraphicsCopyQueueIndex
_0801ABDC:
	movs r0, #0
	strb r0, [r5]
_0801ABE0:
	adds r5, #1
	adds r6, #1
	cmp r6, #3
	bhi _0801ABF2
	ldrb r0, [r2]
	asrs r0, r6
	ands r0, r7
	cmp r0, #0
	bne _0801AB72
_0801ABF2:
	ldr r2, _0801AC68 @ =gMultiSioSend
	movs r0, #0x10
	strh r0, [r2]
	ldr r0, [r3]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801AC08
	ldr r0, _0801AC6C @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	strb r0, [r2, #3]
_0801AC08:
	ldr r0, _0801AC70 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov r8, r0
	ldr r1, _0801AC74 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _0801AC78 @ =0x03000430
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bhi _0801AC32
	b _0801AD78
_0801AC32:
	ldr r1, _0801AC7C @ =0x03000434
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801ACBE
	movs r6, #0
	movs r7, #0
	ldr r0, _0801AC80 @ =0x03000378
	adds r4, r3, r0
	ldr r1, _0801AC84 @ =0x06012500
	subs r0, #8
	adds r5, r3, r0
_0801AC4A:
	str r1, [r5, #4]
	strh r7, [r4, #0xe]
	strh r7, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x12]
	strh r7, [r4]
	ldr r0, _0801AC6C @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	cmp r0, #0
	bne _0801AC88
	movs r0, #0xe1
	lsls r0, r0, #2
	b _0801AC8C
	.align 2, 0
_0801AC68: .4byte gMultiSioSend
_0801AC6C: .4byte gLoadedSaveGame
_0801AC70: .4byte gCurTask
_0801AC74: .4byte gBldRegs
_0801AC78: .4byte 0x03000430
_0801AC7C: .4byte 0x03000434
_0801AC80: .4byte 0x03000378
_0801AC84: .4byte 0x06012500
_0801AC88:
	movs r0, #0xe0
	lsls r0, r0, #2
_0801AC8C:
	strh r0, [r4, #2]
	strb r6, [r4, #0x18]
	strh r7, [r4, #0xc]
	strh r7, [r4, #0x14]
	movs r0, #0xff
	strb r0, [r4, #0x19]
	movs r0, #0x10
	strb r0, [r4, #0x1a]
	strb r7, [r4, #0x1d]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r5, #0
	str r1, [sp, #4]
	bl UpdateSpriteAnimation
	adds r4, #0x30
	ldr r1, [sp, #4]
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r5, #0x30
	adds r6, #1
	cmp r6, #2
	bls _0801AC4A
_0801ACBE:
	ldr r0, _0801ACF4 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801AD54
	movs r2, #0x80
	lsls r2, r2, #3
	add r2, r8
	movs r0, #0x78
	strh r0, [r2, #0x16]
	movs r0, #0x50
	strh r0, [r2, #0x18]
	ldr r0, _0801ACF8 @ =0x00000434
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	beq _0801ACFC
	movs r0, #0xf5
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0801AD0A
	.align 2, 0
_0801ACF4: .4byte gMultiSioStatusFlags
_0801ACF8: .4byte 0x00000434
_0801ACFC:
	movs r0, #0xd1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r0, r0, r3
_0801AD0A:
	str r0, [r2, #4]
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #0x1a]
	strh r0, [r2, #8]
	ldr r0, _0801AD20 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	cmp r0, #0
	bne _0801AD28
	ldr r0, _0801AD24 @ =0x0000037D
	b _0801AD2A
	.align 2, 0
_0801AD20: .4byte gLoadedSaveGame
_0801AD24: .4byte 0x0000037D
_0801AD28:
	ldr r0, _0801AD6C @ =0x0000037A
_0801AD2A:
	strh r0, [r2, #0xa]
	adds r0, r2, #0
	adds r0, #0x20
	movs r1, #0
	strb r1, [r0]
	strh r1, [r2, #0x14]
	strh r1, [r2, #0x1c]
	adds r3, r2, #0
	adds r3, #0x21
	movs r0, #0xff
	strb r0, [r3]
	adds r3, #1
	movs r0, #0x10
	strb r0, [r3]
	adds r3, #3
	movs r0, #0xa
	strb r0, [r3]
	str r1, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
_0801AD54:
	movs r1, #0x86
	lsls r1, r1, #3
	add r1, r8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0801AD70 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801AD74 @ =sub_801AE88
	str r0, [r1, #8]
	bl _call_via_r0
	b _0801AE7A
	.align 2, 0
_0801AD6C: .4byte 0x0000037A
_0801AD70: .4byte gCurTask
_0801AD74: .4byte sub_801AE88
_0801AD78:
	movs r6, #0
	movs r0, #1
	mov r8, r0
	ldr r1, _0801ADC0 @ =0x03000430
	adds r7, r3, r1
_0801AD82:
	ldr r2, _0801ADC4 @ =gMultiSioStatusFlags
	adds r0, r6, #0
	adds r0, #8
	mov r1, r8
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0801ADFA
	ldr r0, _0801ADC8 @ =sa2__gUnknown_030054B4
	adds r0, r6, r0
	ldrb r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0801ADCC
	lsls r1, r6, #2
	adds r1, r1, r6
	lsls r5, r1, #3
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x18
	adds r4, r6, #1
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x18
	ldrh r0, [r7]
	movs r3, #0xf0
	subs r3, r3, r0
	b _0801ADE4
	.align 2, 0
_0801ADC0: .4byte 0x03000430
_0801ADC4: .4byte gMultiSioStatusFlags
_0801ADC8: .4byte sa2__gUnknown_030054B4
_0801ADCC:
	lsls r1, r6, #2
	adds r1, r1, r6
	lsls r5, r1, #3
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x18
	adds r4, r6, #1
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x18
	ldrh r3, [r7]
	subs r3, #0xf0
_0801ADE4:
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0xa0
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #3
	bl sa2__sub_80078D4
	b _0801AE72
_0801ADFA:
	ldr r0, _0801AE3C @ =sa2__gUnknown_030054B4
	adds r2, r6, r0
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0801AE40
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r1, r4, #0x1b
	lsrs r1, r1, #0x18
	adds r0, #1
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x18
	ldrh r0, [r7]
	movs r3, #0xf0
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r6, #2
	adds r0, r0, r6
	subs r0, r0, r4
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #3
	bl sa2__sub_80078D4
	b _0801AE70
	.align 2, 0
_0801AE3C: .4byte sa2__gUnknown_030054B4
_0801AE40:
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r1, r4, #0x1b
	lsrs r1, r1, #0x18
	adds r0, #1
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x18
	ldrh r3, [r7]
	subs r3, #0xf0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r6, #2
	adds r0, r0, r6
	subs r0, r0, r4
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #3
	bl sa2__sub_80078D4
_0801AE70:
	adds r4, r6, #1
_0801AE72:
	adds r6, r4, #0
	cmp r6, #3
	bhi _0801AE7A
	b _0801AD82
_0801AE7A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801AE88
sub_801AE88: @ 0x0801AE88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r7, #0
	movs r0, #0
	mov sl, r0
	ldr r1, _0801AF38 @ =gCurTask
	mov sb, r1
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	str r0, [sp]
	ldr r2, _0801AF3C @ =gMultiplayerConnections
	mov r8, r2
	ldr r6, _0801AF40 @ =gMultiSioStatusFlags
	ldr r0, [r6]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	strb r0, [r2]
	ldr r5, _0801AF44 @ =gMultiSioRecv
	ldrh r3, [r5]
	cmp r3, #0x12
	bne _0801AF88
	ldr r0, _0801AF48 @ =gSelectedCharacter
	strb r7, [r0]
	ldr r0, _0801AF4C @ =0x03000434
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	bne _0801AF10
	ldr r1, _0801AF50 @ =0x03000040
	adds r0, r4, r1
	ldr r1, _0801AF54 @ =0x0600C000
	str r1, [r0, #4]
	movs r2, #0
	strh r7, [r0, #0xa]
	ldr r1, _0801AF58 @ =0x0600E000
	str r1, [r0, #0xc]
	strh r7, [r0, #0x18]
	strh r7, [r0, #0x1a]
	movs r1, #5
	strh r1, [r0, #0x1c]
	strh r7, [r0, #0x1e]
	ldr r1, _0801AF5C @ =gLoadedSaveGame
	ldrb r1, [r1, #0x19]
	lsls r1, r1, #2
	strh r1, [r0, #0x20]
	movs r1, #6
	strh r1, [r0, #0x22]
	movs r1, #8
	strh r1, [r0, #0x24]
	strh r3, [r0, #0x26]
	movs r1, #4
	strh r1, [r0, #0x28]
	ldr r3, _0801AF60 @ =0x0300006A
	adds r1, r4, r3
	strb r2, [r1]
	movs r1, #2
	strh r1, [r0, #0x2e]
	bl DrawBackground
_0801AF10:
	ldr r2, _0801AF64 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0801AF68 @ =0x03000430
	adds r0, r4, r1
	strh r7, [r0]
	ldr r0, [r5]
	cmp r0, #0
	beq _0801AF74
	ldr r1, _0801AF6C @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	mov r2, sb
	ldr r1, [r2]
	ldr r0, _0801AF70 @ =sa2__Task_8082630
	b _0801AF7A
	.align 2, 0
_0801AF38: .4byte gCurTask
_0801AF3C: .4byte gMultiplayerConnections
_0801AF40: .4byte gMultiSioStatusFlags
_0801AF44: .4byte gMultiSioRecv
_0801AF48: .4byte gSelectedCharacter
_0801AF4C: .4byte 0x03000434
_0801AF50: .4byte 0x03000040
_0801AF54: .4byte 0x0600C000
_0801AF58: .4byte 0x0600E000
_0801AF5C: .4byte gLoadedSaveGame
_0801AF60: .4byte 0x0300006A
_0801AF64: .4byte gDispCnt
_0801AF68: .4byte 0x03000430
_0801AF6C: .4byte gBldRegs
_0801AF70: .4byte sa2__Task_8082630
_0801AF74:
	mov r3, sb
	ldr r1, [r3]
	ldr r0, _0801AF84 @ =sub_801B500
_0801AF7A:
	str r0, [r1, #8]
	bl _call_via_r0
	b _0801B04E
	.align 2, 0
_0801AF84: .4byte sub_801B500
_0801AF88:
	bl sa2__sub_8082788
	ldr r0, [r6]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801AF9E
	ldr r1, _0801AFC8 @ =0x03000400
	adds r0, r4, r1
	bl DisplaySprite
_0801AF9E:
	movs r2, #0
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #1
	ands r1, r0
	ldr r0, _0801AFCC @ =gMultiSioSend
	mov ip, r0
	cmp r1, #0
	beq _0801AFFC
	movs r3, #1
	ldr r4, [r6]
	mov sb, r5
	movs r1, #0
_0801AFB8:
	adds r0, r3, #0
	lsls r0, r2
	ands r0, r4
	cmp r0, #0
	bne _0801AFD0
	movs r5, #1
	mov sl, r5
	b _0801AFE8
	.align 2, 0
_0801AFC8: .4byte 0x03000400
_0801AFCC: .4byte gMultiSioSend
_0801AFD0:
	mov r0, sb
	adds r5, r1, r0
	ldr r0, _0801B060 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r2, r0
	beq _0801AFE6
	ldrh r0, [r5]
	cmp r0, #0x10
	bne _0801AFE8
_0801AFE6:
	adds r7, #1
_0801AFE8:
	adds r1, #0x14
	adds r2, #1
	cmp r2, #3
	bhi _0801AFFC
	mov r5, r8
	ldrb r0, [r5]
	asrs r0, r2
	ands r0, r3
	cmp r0, #0
	bne _0801AFB8
_0801AFFC:
	mov r5, ip
	movs r0, #0x10
	strh r0, [r5]
	ldr r0, [r6]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801B030
	ldr r0, _0801B064 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	strb r0, [r5, #3]
	ldr r0, [r6]
	ands r0, r1
	cmp r0, #0
	beq _0801B030
	ldr r0, _0801B068 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801B030
	mov r0, sl
	cmp r0, #0
	bne _0801B030
	cmp r7, #1
	bgt _0801B03E
_0801B030:
	ldr r1, [sp]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801B04E
_0801B03E:
	ldr r3, [sp]
	movs r1, #0x87
	lsls r1, r1, #3
	adds r0, r3, r1
	movs r1, #1
	strb r1, [r0]
	movs r0, #0x12
	strh r0, [r5]
_0801B04E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B060: .4byte 0x04000128
_0801B064: .4byte gLoadedSaveGame
_0801B068: .4byte gPressedKeys

	thumb_func_start sa2__Task_8082630
sa2__Task_8082630: @ 0x0801B06C
	push {r4, r5, lr}
	ldr r5, _0801B0A8 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	ldr r1, _0801B0AC @ =0x03000430
	adds r4, r0, r1
	ldrh r0, [r4]
	adds r0, #0x20
	strh r0, [r4]
	bl sa2__sub_8082788
	ldrh r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #5
	cmp r0, r1
	bls _0801B09A
	strh r1, [r4]
	ldr r1, _0801B0B0 @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, [r5]
	ldr r0, _0801B0B4 @ =sa2__sub_808267C
	str r0, [r1, #8]
_0801B09A:
	ldr r1, _0801B0B0 @ =gBldRegs
	ldrh r0, [r4]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B0A8: .4byte gCurTask
_0801B0AC: .4byte 0x03000430
_0801B0B0: .4byte gBldRegs
_0801B0B4: .4byte sa2__sub_808267C

	thumb_func_start sa2__sub_808267C
sa2__sub_808267C: @ 0x0801B0B8
	push {r4, r5, r6, r7, lr}
	ldr r2, _0801B110 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r3, _0801B114 @ =gMultiSioRecv
	ldrh r0, [r3]
	adds r6, r2, #0
	cmp r0, #0x80
	bne _0801B144
	ldr r1, _0801B118 @ =gMultiplayerPseudoRandom
	ldr r0, [r3, #8]
	str r0, [r1]
	movs r1, #0
	ldr r5, _0801B11C @ =gFlags
	ldr r2, _0801B120 @ =gMultiplayerCharacters
	movs r4, #0
	ldr r3, _0801B124 @ =sa2__gUnknown_030054B4
_0801B0E0:
	adds r0, r1, r2
	strb r4, [r0]
	adds r0, r1, r3
	strb r1, [r0]
	adds r1, #1
	cmp r1, #3
	bls _0801B0E0
	ldr r0, [r5]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	ldr r1, _0801B128 @ =0x00000434
	adds r0, r7, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _0801B12C
	ldr r0, [r6]
	bl TaskDestroy
	movs r0, #0
	bl CreateMultiplayerSinglePakResultsScreen
	b _0801B198
	.align 2, 0
_0801B110: .4byte gCurTask
_0801B114: .4byte gMultiSioRecv
_0801B118: .4byte gMultiplayerPseudoRandom
_0801B11C: .4byte gFlags
_0801B120: .4byte gMultiplayerCharacters
_0801B124: .4byte sa2__gUnknown_030054B4
_0801B128: .4byte 0x00000434
_0801B12C:
	ldr r0, [r6]
	bl TaskDestroy
	ldr r0, _0801B140 @ =gBldRegs
	strh r4, [r0]
	strh r4, [r0, #4]
	bl sub_800FCFC
	b _0801B198
	.align 2, 0
_0801B140: .4byte gBldRegs
_0801B144:
	bl sa2__sub_8082788
	ldr r3, _0801B1A0 @ =gMultiSioSend
	movs r1, #0
	movs r0, #0x51
	strh r0, [r3]
	strb r1, [r3, #2]
	ldr r0, _0801B1A4 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801B198
	movs r1, #0
	ldr r0, _0801B1A8 @ =gMultiplayerConnections
	ldrb r2, [r0]
	movs r5, #1
	ldr r4, _0801B1AC @ =gMultiSioRecv
_0801B168:
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r5
	cmp r0, #0
	beq _0801B180
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, r0, r4
	ldrh r0, [r3]
	cmp r0, #0x51
	bne _0801B198
_0801B180:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0801B168
	ldr r3, _0801B1A0 @ =gMultiSioSend
	movs r0, #0x80
	strh r0, [r3]
	ldr r1, _0801B1B0 @ =0x0000043C
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [r3, #8]
_0801B198:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B1A0: .4byte gMultiSioSend
_0801B1A4: .4byte gMultiSioStatusFlags
_0801B1A8: .4byte gMultiplayerConnections
_0801B1AC: .4byte gMultiSioRecv
_0801B1B0: .4byte 0x0000043C

	thumb_func_start sa2__sub_8082788
sa2__sub_8082788: @ 0x0801B1B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0801B218 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0801B256
	movs r5, #0
	ldr r2, _0801B21C @ =gMultiplayerConnections
	ldrb r1, [r2]
	movs r0, #1
	ands r1, r0
	ldr r7, _0801B220 @ =gMultiSioStatusFlags
	cmp r1, #0
	beq _0801B256
	movs r6, #1
	ldr r3, _0801B224 @ =gMultiplayerMissingHeartbeats
_0801B1DC:
	adds r0, r6, #0
	lsls r0, r5
	ldr r4, [r7]
	ands r4, r0
	cmp r4, #0
	bne _0801B240
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0801B244
	movs r0, #0
	ldr r1, _0801B228 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0801B22C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801B230 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801B234 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0801B238 @ =gVramGraphicsCopyCursor
	ldr r0, _0801B23C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LinkCommunicationError
	b _0801B4EE
	.align 2, 0
_0801B218: .4byte gGameMode
_0801B21C: .4byte gMultiplayerConnections
_0801B220: .4byte gMultiSioStatusFlags
_0801B224: .4byte gMultiplayerMissingHeartbeats
_0801B228: .4byte 0x0000FFFF
_0801B22C: .4byte gBackgroundsCopyQueueCursor
_0801B230: .4byte gBackgroundsCopyQueueIndex
_0801B234: .4byte sa2__gUnknown_03005390
_0801B238: .4byte gVramGraphicsCopyCursor
_0801B23C: .4byte gVramGraphicsCopyQueueIndex
_0801B240:
	movs r0, #0
	strb r0, [r3]
_0801B244:
	adds r3, #1
	adds r5, #1
	cmp r5, #3
	bhi _0801B256
	ldrb r0, [r2]
	asrs r0, r5
	ands r0, r6
	cmp r0, #0
	bne _0801B1DC
_0801B256:
	ldr r0, _0801B2AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	movs r6, #0
_0801B266:
	ldr r2, _0801B2B0 @ =gMultiSioStatusFlags
	adds r0, r6, #0
	adds r0, #8
	movs r3, #1
	adds r1, r3, #0
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0801B2B8
	ldr r0, _0801B2B4 @ =sa2__gUnknown_030054B4
	adds r0, r6, r0
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	lsls r1, r6, #2
	adds r1, r1, r6
	lsls r3, r1, #3
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x18
	adds r4, r6, #1
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x18
	movs r0, #0xa0
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #3
	movs r3, #0
	bl sa2__sub_80078D4
	b _0801B4E6
	.align 2, 0
_0801B2AC: .4byte gCurTask
_0801B2B0: .4byte gMultiSioStatusFlags
_0801B2B4: .4byte sa2__gUnknown_030054B4
_0801B2B8:
	ldr r0, _0801B42C @ =sa2__gUnknown_030054B4
	adds r0, r0, r6
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r3, r1, #3
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x18
	adds r0, #1
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x18
	lsls r5, r6, #2
	adds r4, r5, r6
	lsls r7, r4, #3
	subs r3, r7, r3
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	movs r0, #3
	movs r3, #0
	bl sa2__sub_80078D4
	lsls r4, r4, #2
	ldr r0, _0801B430 @ =gMultiSioRecv
	adds r4, r4, r0
	ldr r0, _0801B434 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov sl, r5
	cmp r6, r0
	beq _0801B30C
	ldrh r0, [r4]
	adds r4, r6, #1
	cmp r0, #0xf
	bhi _0801B30C
	b _0801B4E6
_0801B30C:
	ldr r0, _0801B438 @ =0x00000434
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _0801B318
	b _0801B444
_0801B318:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0x80
	mov r1, r8
	adds r5, r1, r0
	movs r0, #0x78
	strh r0, [r5, #0x16]
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0801B43C @ =gMultiplayerCharacters
	adds r0, r6, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xdc
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r1, r8
	adds r5, r1, r0
	movs r0, #0x34
	strh r0, [r5, #0x16]
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0801B440 @ =gMultiplayerCharRings
	adds r0, r6, r0
	ldrb r0, [r0]
	bl Base10DigitsToHexNibbles
	lsls r4, r0, #0x10
	lsrs r1, r4, #0x10
	mov sl, r1
	lsrs r1, r4, #0x18
	movs r3, #0xf
	ands r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r1, r8
	adds r5, r1, r0
	adds r7, r1, r2
	cmp r5, r7
	beq _0801B3C4
	movs r0, #0xa0
	strh r0, [r5, #0x16]
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl DisplaySprite
	ldr r3, [sp, #8]
	ldr r2, [sp, #4]
_0801B3C4:
	lsrs r1, r4, #0x14
	ands r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	mov r1, r8
	adds r5, r1, r0
	cmp r5, r7
	bne _0801B3DE
	mov r0, sl
	cmp r0, #0xff
	bls _0801B3F8
_0801B3DE:
	movs r0, #0xab
	strh r0, [r5, #0x16]
	mov r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
_0801B3F8:
	movs r1, #0xf
	mov r0, sl
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r1, r8
	adds r5, r1, r0
	movs r0, #0xb6
	strh r0, [r5, #0x16]
	ldr r0, _0801B42C @ =sa2__gUnknown_030054B4
	adds r0, r6, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
	b _0801B4E4
	.align 2, 0
_0801B42C: .4byte sa2__gUnknown_030054B4
_0801B430: .4byte gMultiSioRecv
_0801B434: .4byte 0x04000128
_0801B438: .4byte 0x00000434
_0801B43C: .4byte gMultiplayerCharacters
_0801B440: .4byte gMultiplayerCharRings
_0801B444:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0x80
	mov r1, r8
	adds r5, r1, r0
	movs r0, #0x78
	strh r0, [r5, #0x16]
	adds r0, r7, #0
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0801B474 @ =gMPRingCollectWins
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _0801B478
	movs r7, #0x63
	b _0801B482
	.align 2, 0
_0801B474: .4byte gMPRingCollectWins
_0801B478:
	ldrb r0, [r1]
	bl Base10DigitsToHexNibbles
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0801B482:
	lsrs r0, r7, #4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	movs r4, #0xb0
	lsls r4, r4, #1
	adds r1, r1, r4
	mov r0, r8
	adds r5, r0, r1
	adds r0, r0, r4
	cmp r5, r0
	beq _0801B4AE
	movs r0, #0xa0
	strh r0, [r5, #0x16]
	mov r1, sl
	adds r0, r1, r6
	lsls r0, r0, #3
	adds r0, #0x14
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
_0801B4AE:
	movs r1, #0xf
	ands r1, r7
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	mov r1, r8
	adds r5, r1, r0
	movs r0, #0xab
	strh r0, [r5, #0x16]
	mov r0, sl
	adds r4, r0, r6
	lsls r4, r4, #3
	adds r4, #0x14
	strh r4, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
	movs r5, #0xd0
	lsls r5, r5, #2
	add r5, r8
	movs r0, #0xc5
	strh r0, [r5, #0x16]
	strh r4, [r5, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
_0801B4E4:
	adds r4, r6, #1
_0801B4E6:
	adds r6, r4, #0
	cmp r6, #3
	bhi _0801B4EE
	b _0801B266
_0801B4EE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801B500
sub_801B500: @ 0x0801B500
	push {r4, r5, lr}
	ldr r5, _0801B554 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	bl sa2__sub_8082788
	ldr r0, _0801B558 @ =0x03000430
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0801B54E
	movs r0, #0
	strh r0, [r4]
	ldr r0, _0801B55C @ =gMPlayInfo_BGM
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r0, _0801B560 @ =gMPlayInfo_SE1
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r0, _0801B564 @ =gMPlayInfo_SE2
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r0, _0801B568 @ =gMPlayInfo_SE3
	movs r1, #8
	bl m4aMPlayFadeOut
	ldr r1, _0801B56C @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, [r5]
	ldr r0, _0801B570 @ =sa2__Task_8082630
	str r0, [r1, #8]
_0801B54E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801B554: .4byte gCurTask
_0801B558: .4byte 0x03000430
_0801B55C: .4byte gMPlayInfo_BGM
_0801B560: .4byte gMPlayInfo_SE1
_0801B564: .4byte gMPlayInfo_SE2
_0801B568: .4byte gMPlayInfo_SE3
_0801B56C: .4byte gBldRegs
_0801B570: .4byte sa2__Task_8082630

	thumb_func_start CreateMultiplayerMultiPakUI
CreateMultiplayerMultiPakUI: @ 0x0801B574
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0801B5C4 @ =sub_801B6F4
	movs r1, #0x8a
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _0801B5C8 @ =sub_801BAA0
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r7, r4, #0
	movs r6, #0
	movs r1, #0
	strh r1, [r4, #0x16]
	movs r0, #8
	strh r0, [r4, #0x18]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r1, [r4, #8]
	ldr r0, _0801B5CC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801B5D4
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4, #4]
	ldr r0, _0801B5D0 @ =0x000002CA
	b _0801B5DE
	.align 2, 0
_0801B5C4: .4byte sub_801B6F4
_0801B5C8: .4byte sub_801BAA0
_0801B5CC: .4byte gGameMode
_0801B5D0: .4byte 0x000002CA
_0801B5D4:
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #4]
	ldr r0, _0801B634 @ =0x0000025E
_0801B5DE:
	strh r0, [r4, #0xa]
	ldr r1, _0801B638 @ =0x03000020
	adds r0, r5, r1
	strb r6, [r0]
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	adds r2, #1
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x25
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r6, #0
	movs r5, #0
	mov r8, r5
	movs r0, #0x90
	lsls r0, r0, #2
	mov sl, r0
	movs r1, #0x30
	mov sb, r1
_0801B61E:
	mov r0, sb
	adds r4, r7, r0
	strh r5, [r4, #0x16]
	strh r5, [r4, #0x18]
	cmp r6, #0
	bne _0801B63C
	movs r0, #0x16
	bl VramMalloc
	b _0801B640
	.align 2, 0
_0801B634: .4byte 0x0000025E
_0801B638: .4byte 0x03000020
_0801B63C:
	ldr r0, [r7, #0x34]
	add r0, r8
_0801B640:
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r1, _0801B688 @ =0x0000038B
	strh r1, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	strb r6, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	strb r5, [r0]
	str r5, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r0, sl
	adds r4, r7, r0
	strh r5, [r4, #0x16]
	strh r5, [r4, #0x18]
	cmp r6, #0
	bne _0801B68C
	movs r0, #0x16
	bl VramMalloc
	b _0801B696
	.align 2, 0
_0801B688: .4byte 0x0000038B
_0801B68C:
	movs r1, #0x91
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	add r0, r8
_0801B696:
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r0, _0801B6F0 @ =0x0000038B
	strh r0, [r4, #0xa]
	adds r1, r6, #0
	adds r1, #0xb
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	strb r5, [r0]
	str r5, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r1, #0x40
	add r8, r1
	movs r0, #0x30
	add sl, r0
	add sb, r0
	adds r6, #1
	cmp r6, #0xa
	bls _0801B61E
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B6F0: .4byte 0x0000038B

	thumb_func_start sub_801B6F4
sub_801B6F4: @ 0x0801B6F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0801B8A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	str r0, [sp]
	ldr r0, _0801B8A4 @ =gCourseTime
	ldr r2, [r0]
	ldr r1, _0801B8A8 @ =0x00000E0F
	ldr r4, _0801B8AC @ =0x03000030
	adds r4, r4, r3
	mov sl, r4
	adds r4, r0, #0
	cmp r2, r1
	bhi _0801B72E
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0801B72E
	ldr r0, _0801B8B0 @ =0x03000240
	adds r0, r0, r3
	mov sl, r0
_0801B72E:
	ldr r0, _0801B8B4 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B754
	ldr r1, [r4]
	ldr r0, _0801B8B8 @ =0x000004AF
	cmp r1, r0
	bhi _0801B754
	adds r0, r1, #0
	movs r1, #0x3c
	bl Mod
	cmp r0, #0
	bne _0801B754
	movs r0, #0x8b      @ SE_TIMER
	bl m4aSongNumStart
_0801B754:
	movs r7, #0xf0
	lsls r7, r7, #1
	add r7, sl
	movs r1, #0x20
	mov r8, r1
	mov r4, r8
	strh r4, [r7, #0x18]
	movs r0, #0x18
	strh r0, [r7, #0x16]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0x30
	strh r0, [r7, #0x16]
	adds r0, r7, #0
	bl DisplaySprite
	ldr r4, _0801B8A4 @ =gCourseTime
	ldr r0, [r4]
	movs r1, #0x3c
	bl Div
	adds r5, r0, #0
	ldr r1, [r4]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0801B8BC @ =sa2__gUnknown_080E0234
	adds r0, r1, r0
	ldrb r4, [r0]
	movs r0, #0xf
	mov sb, r0
	lsrs r1, r4, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x38
	strh r0, [r7, #0x16]
	mov r0, r8
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	movs r6, #0xf
	adds r1, r6, #0
	ands r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x40
	strh r0, [r7, #0x16]
	mov r4, r8
	strh r4, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	adds r0, r5, #0
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	subs r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r1, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r1, #0
	bl Base10DigitsToHexNibbles
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsrs r0, r0, #0x14
	mov r1, sb
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	mov r0, sl
	adds r7, r0, r1
	mov r1, r8
	strh r1, [r7, #0x16]
	strh r1, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	adds r1, r6, #0
	ands r1, r5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x28
	strh r0, [r7, #0x16]
	mov r0, r8
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	subs r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	adds r0, r1, #0
	bl Base10DigitsToHexNibbles
	ands r6, r0
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x10
	strh r0, [r7, #0x16]
	mov r4, r8
	strh r4, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	movs r5, #0
	ldr r0, _0801B8C0 @ =gMultiplayerConnections
	ldrb r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801B876
	b _0801BA86
_0801B876:
	ldr r2, _0801B8C4 @ =gGameMode
	ldr r0, [sp]
	adds r0, #0x30
	mov sl, r0
_0801B87E:
	ldr r7, [sp]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, #8
	strh r0, [r7, #0x16]
	movs r0, #8
	strh r0, [r7, #0x18]
	ldrb r0, [r2]
	cmp r0, #6
	bne _0801B8C8
	adds r0, r7, #0
	adds r0, #0x25
	strb r5, [r0]
	adds r1, r5, #1
	mov sb, r1
	b _0801B920
	.align 2, 0
_0801B8A0: .4byte gCurTask
_0801B8A4: .4byte gCourseTime
_0801B8A8: .4byte 0x00000E0F
_0801B8AC: .4byte 0x03000030
_0801B8B0: .4byte 0x03000240
_0801B8B4: .4byte gStageFlags
_0801B8B8: .4byte 0x000004AF
_0801B8BC: .4byte sa2__gUnknown_080E0234
_0801B8C0: .4byte gMultiplayerConnections
_0801B8C4: .4byte gGameMode
_0801B8C8:
	cmp r0, #4
	bne _0801B8E4
	ldr r0, _0801B8E0 @ =gMultiplayerCharacters
	adds r0, r5, r0
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x25
	strb r0, [r1]
	adds r4, r5, #1
	mov sb, r4
	b _0801B920
	.align 2, 0
_0801B8E0: .4byte gMultiplayerCharacters
_0801B8E4:
	movs r2, #0
	ldr r3, _0801B974 @ =gMultiplayerConnections
	ldrb r1, [r3]
	movs r0, #0x10
	ands r1, r0
	asrs r1, r1, #4
	ldr r0, _0801B978 @ =gMultiplayerCharacters
	mov r8, r0
	adds r4, r7, #0
	adds r4, #0x25
	adds r0, r5, #1
	mov sb, r0
	cmp r5, r1
	beq _0801B918
	movs r6, #0x10
_0801B902:
	adds r2, #1
	cmp r2, #3
	bhi _0801B918
	ldrb r0, [r3]
	adds r1, r6, #0
	lsls r1, r2
	ands r0, r1
	adds r1, r2, #4
	asrs r0, r1
	cmp r5, r0
	bne _0801B902
_0801B918:
	mov r1, r8
	adds r0, r2, r1
	ldrb r0, [r0]
	strb r0, [r4]
_0801B920:
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _0801B97C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #5
	bne _0801B988
	movs r4, #0
	movs r2, #0
	ldr r1, _0801B980 @ =gMultiplayerPlayerTasks
	ldr r0, [r1]
	cmp r0, #0
	beq _0801B970
	ldr r0, _0801B974 @ =gMultiplayerConnections
	ldrb r3, [r0]
	mov r8, r1
	ldr r7, _0801B984 @ =gMultiplayerCharRings
	movs r6, #0x10
_0801B944:
	adds r0, r6, #0
	lsls r0, r2
	ands r0, r3
	adds r1, r2, #4
	asrs r0, r1
	cmp r5, r0
	bne _0801B95C
	adds r0, r2, r7
	ldrb r0, [r0]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0801B95C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0801B970
	lsls r0, r2, #2
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _0801B944
_0801B970:
	adds r0, r4, #0
	b _0801B98E
	.align 2, 0
_0801B974: .4byte gMultiplayerConnections
_0801B978: .4byte gMultiplayerCharacters
_0801B97C: .4byte gGameMode
_0801B980: .4byte gMultiplayerPlayerTasks
_0801B984: .4byte gMultiplayerCharRings
_0801B988:
	ldr r0, _0801B9F4 @ =gMultiplayerCharRings
	adds r0, r5, r0
	ldrb r0, [r0]
_0801B98E:
	bl Base10DigitsToHexNibbles
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xff
	bls _0801B9F8
	lsrs r1, r4, #8
	movs r0, #0xf
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #3
	strh r0, [r7, #0x16]
	movs r0, #0xe
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	lsrs r1, r4, #4
	movs r0, #0xf
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #0xb
	strh r0, [r7, #0x16]
	movs r0, #0xe
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	movs r1, #0xf
	ands r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	ldr r4, [sp]
	ldrh r0, [r4, #0x16]
	adds r0, #0x13
	b _0801BA32
	.align 2, 0
_0801B9F4: .4byte gMultiplayerCharRings
_0801B9F8:
	cmp r4, #0xf
	bls _0801BA40
	lsrs r1, r4, #4
	movs r0, #0xf
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #7
	strh r0, [r7, #0x16]
	movs r0, #0xe
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	movs r1, #0xf
	ands r1, r4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r7, r1, r0
	ldr r4, [sp]
	ldrh r0, [r4, #0x16]
	adds r0, #0xf
_0801BA32:
	strh r0, [r7, #0x16]
	movs r0, #0xe
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	b _0801BA60
_0801BA40:
	movs r0, #0xf
	ands r0, r4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	mov r4, sl
	adds r7, r4, r1
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #0xb
	strh r0, [r7, #0x16]
	movs r4, #0xe
	strh r4, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_0801BA60:
	mov r5, sb
	cmp r5, #3
	bhi _0801BA86
	ldr r0, _0801BA98 @ =gMultiplayerConnections
	ldrb r0, [r0]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801BA86
	ldr r0, _0801BA9C @ =gGameMode
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #5
	beq _0801BA80
	b _0801B87E
_0801BA80:
	cmp r5, #2
	beq _0801BA86
	b _0801B87E
_0801BA86:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801BA98: .4byte gMultiplayerConnections
_0801BA9C: .4byte gGameMode

	thumb_func_start sub_801BAA0
sub_801BAA0: @ 0x0801BAA0
	push {r4, r5, lr}
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, _0801BAC8 @ =0x03000244
	adds r5, r5, r0
	ldr r0, [r5]
	bl VramFree
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801BAC8: .4byte 0x03000244
