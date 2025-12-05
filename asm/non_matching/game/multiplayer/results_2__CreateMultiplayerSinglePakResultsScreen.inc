.include "constants/constants.inc"

.syntax unified

.text
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
	ldr r2, _0801AA4C @ =gBgSprites_Unknown1
	movs r0, #0x7f
	strb r0, [r2, #2]
	ldr r0, _0801AA50 @ =gBgSprites_Unknown2
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
_0801AA4C: .4byte gBgSprites_Unknown1
_0801AA50: .4byte gBgSprites_Unknown2
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

.syntax divided
