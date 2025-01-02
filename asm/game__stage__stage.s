.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of stage.c ? ---
	thumb_func_start GameStageStart
GameStageStart: @ 0x0803CE54
	push {r4, r5, r6, lr}
	ldr r0, _0803CE88 @ =gUnknown_0300501C
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0803CE8C @ =gUnknown_03005148
	strb r1, [r0]
	ldr r1, _0803CE90 @ =gRingCount
	movs r0, #0
	strh r0, [r1]
	ldr r6, _0803CE94 @ =gNumSingleplayerCharacters
	movs r0, #1
	strb r0, [r6]
	ldr r0, _0803CE98 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803CEA4
	ldr r0, _0803CE9C @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0803CEA0 @ =gCurrentLevel
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	b _0803CEBA
	.align 2, 0
_0803CE88: .4byte gUnknown_0300501C
_0803CE8C: .4byte gUnknown_03005148
_0803CE90: .4byte gRingCount
_0803CE94: .4byte gNumSingleplayerCharacters
_0803CE98: .4byte gGameMode
_0803CE9C: .4byte gSelectedCharacter
_0803CEA0: .4byte gCurrentLevel
_0803CEA4:
	ldr r4, _0803CEC4 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0xd
	bne _0803CED0
	ldr r0, _0803CEC8 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	ldrsb r1, [r4, r1]
_0803CEBA:
	ldr r3, _0803CECC @ =gPlayer
	movs r2, #0
	bl sub_8046CB8
	b _0803CF08
	.align 2, 0
_0803CEC4: .4byte gCurrentLevel
_0803CEC8: .4byte gSelectedCharacter
_0803CECC: .4byte gPlayer
_0803CED0:
	ldr r5, _0803CF40 @ =gSelectedCharacter
	movs r0, #0
	ldrsb r0, [r5, r0]
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r3, _0803CF44 @ =gPlayer
	movs r2, #0
	bl sub_8046CB8
	ldr r0, _0803CF48 @ =gTailsEnabled
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0803CF08
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0803CF08
	movs r0, #2
	strb r0, [r6]
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r3, _0803CF4C @ =gPartner
	movs r0, #1
	movs r2, #1
	bl sub_8046CB8
_0803CF08:
	ldr r0, _0803CF50 @ =gStageTime
	movs r3, #0
	str r3, [r0]
	ldr r2, _0803CF54 @ =gStageFlags
	ldrh r1, [r2]
	ldr r0, _0803CF58 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0803CF5C @ =gGameMode
	ldrb r0, [r2]
	cmp r0, #1
	bls _0803CF28
	ldr r0, _0803CF60 @ =gUnknown_03005038
	ldr r1, _0803CF64 @ =gFrameCount
	ldr r1, [r1]
	str r1, [r0]
_0803CF28:
	ldr r0, _0803CF68 @ =gCheckpointTime
	str r3, [r0]
	ldrb r0, [r2]
	cmp r0, #6
	beq _0803CF36
	cmp r0, #4
	bne _0803CF74
_0803CF36:
	ldr r1, _0803CF6C @ =gCourseTime
	ldr r0, _0803CF70 @ =0x00002A30
	str r0, [r1]
	b _0803CF8C
	.align 2, 0
_0803CF40: .4byte gSelectedCharacter
_0803CF44: .4byte gPlayer
_0803CF48: .4byte gTailsEnabled
_0803CF4C: .4byte gPartner
_0803CF50: .4byte gStageTime
_0803CF54: .4byte gStageFlags
_0803CF58: .4byte 0x0000FF7F
_0803CF5C: .4byte gGameMode
_0803CF60: .4byte gUnknown_03005038
_0803CF64: .4byte gFrameCount
_0803CF68: .4byte gCheckpointTime
_0803CF6C: .4byte gCourseTime
_0803CF70: .4byte 0x00002A30
_0803CF74:
	cmp r0, #5
	bne _0803CF88
	ldr r1, _0803CF80 @ =gCourseTime
	ldr r0, _0803CF84 @ =0x00004650
	str r0, [r1]
	b _0803CF8C
	.align 2, 0
_0803CF80: .4byte gCourseTime
_0803CF84: .4byte 0x00004650
_0803CF88:
	ldr r0, _0803CF98 @ =gCourseTime
	str r3, [r0]
_0803CF8C:
	bl CreateGameStage
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803CF98: .4byte gCourseTime

	thumb_func_start CreateGameStage
CreateGameStage: @ 0x0803CF9C
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0803D008 @ =Task_GameStage
	movs r2, #0xff
	lsls r2, r2, #8
	ldr r1, _0803D00C @ =sub_803DC84
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	ldr r1, _0803D010 @ =gGameStageTask
	str r0, [r1]
	ldr r0, _0803D014 @ =gActiveCollectRingEffectCount
	movs r5, #0
	strb r5, [r0]
	ldr r2, _0803D018 @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #0x21
	orrs r0, r1
	ldr r1, _0803D01C @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	bl sa2__sub_801F044
	bl CreateStageMusicManager
	ldr r4, _0803D020 @ =gGameMode
	ldrb r0, [r4]
	cmp r0, #6
	beq _0803CFE0
	bl sub_80550F8
	adds r6, r0, #0
_0803CFE0:
	ldr r0, _0803D024 @ =gUnknown_03004FE0
	strb r5, [r0]
	ldrb r0, [r4]
	cmp r0, #6
	bne _0803CFEE
	bl sub_801B574
_0803CFEE:
	ldrb r0, [r4]
	cmp r0, #1
	bls _0803D030
	ldr r0, _0803D028 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0803D02C @ =gCurrentLevel
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	b _0803D046
	.align 2, 0
_0803D008: .4byte Task_GameStage
_0803D00C: .4byte sub_803DC84
_0803D010: .4byte gGameStageTask
_0803D014: .4byte gActiveCollectRingEffectCount
_0803D018: .4byte gStageFlags
_0803D01C: .4byte 0x0000FF7F
_0803D020: .4byte gGameMode
_0803D024: .4byte gUnknown_03004FE0
_0803D028: .4byte gSelectedCharacter
_0803D02C: .4byte gCurrentLevel
_0803D030:
	ldr r4, _0803D050 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0xd
	bne _0803D05C
	ldr r0, _0803D054 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	ldrsb r1, [r4, r1]
_0803D046:
	ldr r2, _0803D058 @ =gPlayer
	bl sub_804202C
	b _0803D086
	.align 2, 0
_0803D050: .4byte gCurrentLevel
_0803D054: .4byte gSelectedCharacter
_0803D058: .4byte gPlayer
_0803D05C:
	ldr r0, _0803D09C @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r2, _0803D0A0 @ =gPlayer
	bl sub_804202C
	ldr r0, _0803D0A4 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803D086
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r2, _0803D0A8 @ =gPartner
	movs r0, #1
	bl sub_804202C
_0803D086:
	ldr r0, _0803D0AC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0803D0B4
	ldr r0, _0803D0B0 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl InitCamera
	b _0803D0BA
	.align 2, 0
_0803D09C: .4byte gSelectedCharacter
_0803D0A0: .4byte gPlayer
_0803D0A4: .4byte gNumSingleplayerCharacters
_0803D0A8: .4byte gPartner
_0803D0AC: .4byte gGameMode
_0803D0B0: .4byte gCurrentLevel
_0803D0B4:
	movs r0, #0
	bl InitCamera
_0803D0BA:
	ldr r3, _0803D12C @ =gStageFlags
	ldrh r0, [r3]
	ldr r2, _0803D130 @ =0x0000FFFD
	ands r2, r0
	ldr r0, _0803D134 @ =0x0000FFFB
	ands r2, r0
	strh r2, [r3]
	ldr r5, _0803D138 @ =gGameMode
	ldrb r0, [r5]
	cmp r0, #3
	bls _0803D0D8
	movs r1, #4
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
_0803D0D8:
	bl CreateStageRingsManager
	bl CreateStageEntitiesManager
	ldr r4, _0803D13C @ =gCurrentLevel
	ldrb r0, [r4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #3
	beq _0803D0F8
	movs r0, #1
	rsbs r0, r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_804C5D8
_0803D0F8:
	ldrb r0, [r5]
	cmp r0, #6
	beq _0803D148
	ldr r1, _0803D140 @ =gUnknown_084ADB18
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #2
	bne _0803D14C
	bl sub_8017800
	cmp r0, #0
	beq _0803D14C
	ldrh r0, [r6, #6]
	ldr r1, _0803D144 @ =0x03000027
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b _0803D14C
	.align 2, 0
_0803D12C: .4byte gStageFlags
_0803D130: .4byte 0x0000FFFD
_0803D134: .4byte 0x0000FFFB
_0803D138: .4byte gGameMode
_0803D13C: .4byte gCurrentLevel
_0803D140: .4byte gUnknown_084ADB18
_0803D144: .4byte 0x03000027
_0803D148:
	bl sub_803E094
_0803D14C:
	ldr r0, _0803D1F0 @ =sa2__gUnknown_03001944
	movs r4, #0
	strh r4, [r0]
	ldr r0, _0803D1F4 @ =sa2__gUnknown_030017F0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0803D1F8 @ =sa2__gUnknown_03005394
	strh r1, [r0]
	ldr r0, _0803D1FC @ =sa2__gUnknown_03002A8C
	movs r2, #0x78
	strh r2, [r0]
	ldr r0, _0803D200 @ =sa2__gUnknown_03004D58
	movs r1, #0x50
	strh r1, [r0]
	ldr r0, _0803D204 @ =sa2__gUnknown_0300194C
	strh r2, [r0]
	ldr r0, _0803D208 @ =sa2__gUnknown_03002820
	strh r1, [r0]
	ldr r1, _0803D20C @ =sa2__gUnknown_03005398
	movs r0, #0x80
	strh r0, [r1]
	ldr r0, _0803D210 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803D26C
	bl sub_801827C
	bl sub_80181F8
	ldr r0, _0803D214 @ =gUnknown_03005074
	strb r4, [r0]
	movs r4, #0
_0803D190:
	ldr r0, _0803D218 @ =gMultiplayerCharRings
	adds r0, r4, r0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0803D21C @ =gMultiplayerConnections
	ldrb r0, [r0]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803D1BE
	adds r0, r4, #0
	bl sub_80130F0
	ldr r0, _0803D220 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803D1BE
	adds r0, r4, #0
	bl sub_8015810
_0803D1BE:
	ldr r0, _0803D224 @ =sa2__gUnknown_030054B4
	adds r0, r4, r0
	movs r1, #0xff
	strb r1, [r0]
	ldr r1, _0803D210 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #6
	bne _0803D1D4
	ldr r0, _0803D228 @ =gMultiplayerCharacters
	adds r0, r4, r0
	strb r4, [r0]
_0803D1D4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803D190
	ldrb r0, [r1]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0803D24C
	movs r5, #0
	ldr r4, _0803D22C @ =gUnknown_03004FF0
	b _0803D234
	.align 2, 0
_0803D1F0: .4byte sa2__gUnknown_03001944
_0803D1F4: .4byte sa2__gUnknown_030017F0
_0803D1F8: .4byte sa2__gUnknown_03005394
_0803D1FC: .4byte sa2__gUnknown_03002A8C
_0803D200: .4byte sa2__gUnknown_03004D58
_0803D204: .4byte sa2__gUnknown_0300194C
_0803D208: .4byte sa2__gUnknown_03002820
_0803D20C: .4byte sa2__gUnknown_03005398
_0803D210: .4byte gGameMode
_0803D214: .4byte gUnknown_03005074
_0803D218: .4byte gMultiplayerCharRings
_0803D21C: .4byte gMultiplayerConnections
_0803D220: .4byte 0x04000128
_0803D224: .4byte sa2__gUnknown_030054B4
_0803D228: .4byte gMultiplayerCharacters
_0803D22C: .4byte gUnknown_03004FF0
_0803D230:
	adds r4, #4
	adds r5, #1
_0803D234:
	cmp r5, #2
	bhi _0803D24C
	ldrb r0, [r4]
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_8028034
	str r0, [r4]
	ldr r0, _0803D264 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #4
	bne _0803D230
_0803D24C:
	ldr r0, _0803D264 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0803D284
	ldr r0, _0803D268 @ =gPlayer
	adds r0, #0x26
	ldrb r2, [r0]
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r0]
	b _0803D284
	.align 2, 0
_0803D264: .4byte gGameMode
_0803D268: .4byte gPlayer
_0803D26C:
	movs r4, #0
	ldr r3, _0803D28C @ =sa2__gUnknown_030054B4
	movs r2, #0xff
_0803D272:
	adds r0, r4, r3
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803D272
_0803D284:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D28C: .4byte sa2__gUnknown_030054B4

	thumb_func_start Task_GameStage
Task_GameStage: @ 0x0803D290
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _0803D2D8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r7, r0, #0x1e
	ldr r0, _0803D2DC @ =gGameMode
	ldrb r4, [r0]
	cmp r4, #1
	bhi _0803D2EC
	ldr r0, _0803D2E0 @ =gStageFlags
	ldrh r2, [r0]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	bne _0803D2C8
	ldr r0, _0803D2E4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803D2C8
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _0803D2C8
	bl sub_801A38C
_0803D2C8:
	ldr r1, _0803D2E8 @ =gStageTime
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	mov ip, r0
	b _0803D434
	.align 2, 0
_0803D2D8: .4byte 0x04000128
_0803D2DC: .4byte gGameMode
_0803D2E0: .4byte gStageFlags
_0803D2E4: .4byte gPressedKeys
_0803D2E8: .4byte gStageTime
_0803D2EC:
	ldr r0, _0803D350 @ =gFrameCount
	ldr r1, _0803D354 @ =gUnknown_03005038
	ldr r2, [r0]
	ldr r0, [r1]
	subs r3, r2, r0
	ldr r1, _0803D358 @ =gStageTime
	ldr r0, [r1]
	subs r0, r3, r0
	mov ip, r0
	str r3, [r1]
	cmp r4, #3
	bls _0803D374
	ldr r2, _0803D35C @ =0xFFFFFE00
	adds r1, r3, #0
	ands r1, r2
	subs r4, r3, r0
	adds r0, r4, #0
	ands r0, r2
	cmp r1, r0
	beq _0803D394
	ldr r5, _0803D360 @ =gUnknown_03005010
	ldr r1, [r5]
	ldr r0, _0803D364 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0803D368 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, _0803D36C @ =0xFFFFF000
	ands r3, r0
	ands r4, r0
	ldr r6, _0803D370 @ =gUnknown_03005074
	cmp r3, r4
	beq _0803D33E
	ldrb r2, [r6]
	lsrs r1, r2, #4
	adds r1, #1
	movs r0, #0xf
	ands r0, r2
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r6]
_0803D33E:
	ldr r1, [r5]
	movs r3, #7
	ldrb r2, [r6]
	movs r0, #0xf8
	ands r0, r2
	ands r1, r3
	orrs r0, r1
	strb r0, [r6]
	b _0803D394
	.align 2, 0
_0803D350: .4byte gFrameCount
_0803D354: .4byte gUnknown_03005038
_0803D358: .4byte gStageTime
_0803D35C: .4byte 0xFFFFFE00
_0803D360: .4byte gUnknown_03005010
_0803D364: .4byte 0x00196225
_0803D368: .4byte 0x3C6EF35F
_0803D36C: .4byte 0xFFFFF000
_0803D370: .4byte gUnknown_03005074
_0803D374:
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r1, r3, #0
	ands r1, r2
	mov r4, ip
	subs r0, r3, r4
	ands r0, r2
	cmp r1, r0
	beq _0803D394
	ldr r2, _0803D3C0 @ =gUnknown_03005010
	ldr r1, [r2]
	ldr r0, _0803D3C4 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _0803D3C8 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
_0803D394:
	ldr r2, _0803D3CC @ =gCamera
	ldrh r1, [r2, #0x26]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803D40E
	ldr r0, _0803D3D0 @ =gInput
	ldrh r3, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r3
	cmp r0, r1
	bne _0803D3D4
	cmp r7, #3
	beq _0803D3FA
	adds r1, r2, #0
	adds r1, #0x3a
	movs r0, #3
	strb r0, [r1]
	b _0803D414
	.align 2, 0
_0803D3C0: .4byte gUnknown_03005010
_0803D3C4: .4byte 0x00196225
_0803D3C8: .4byte 0x3C6EF35F
_0803D3CC: .4byte gCamera
_0803D3D0: .4byte gInput
_0803D3D4:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0803D3EC
	cmp r7, #0
	beq _0803D404
	adds r1, r2, #0
	adds r1, #0x3a
	movs r0, #0
	strb r0, [r1]
	b _0803D414
_0803D3EC:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0803D40E
	cmp r7, #1
	bhi _0803D404
_0803D3FA:
	adds r1, r2, #0
	adds r1, #0x3a
	movs r0, #2
	strb r0, [r1]
	b _0803D414
_0803D404:
	adds r1, r2, #0
	adds r1, #0x3a
	movs r0, #1
	strb r0, [r1]
	b _0803D414
_0803D40E:
	adds r0, r2, #0
	adds r0, #0x3a
	strb r7, [r0]
_0803D414:
	ldr r0, _0803D49C @ =gMultiplayerConnections
	ldrb r0, [r0]
	adds r2, #0x3a
	ldrb r1, [r2]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803D428
	strb r7, [r2]
_0803D428:
	ldr r1, _0803D4A0 @ =gUnknown_03004FE0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803D434
	subs r0, #1
	strb r0, [r1]
_0803D434:
	ldr r0, _0803D4A4 @ =sa2__gUnknown_0300544C
	ldr r3, _0803D4A8 @ =gStageFlags
	ldrh r2, [r3]
	strh r2, [r0]
	movs r4, #1
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0803D448
	b _0803D586
_0803D448:
	ldr r0, _0803D4AC @ =gCheckpointTime
	ldr r1, [r0]
	add r1, ip
	str r1, [r0]
	movs r0, #4
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803D50C
	ldr r1, _0803D4B0 @ =gCourseTime
	ldr r0, [r1]
	mov r5, ip
	subs r0, r0, r5
	str r0, [r1]
	cmp r0, #0
	ble _0803D46C
	b _0803D586
_0803D46C:
	ldr r0, _0803D4B4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803D500
	adds r0, r2, #0
	orrs r0, r4
	strh r0, [r3]
	ldr r0, _0803D4B8 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _0803D484
	b _0803D586
_0803D484:
	ldr r2, _0803D4BC @ =gPlayer
	adds r1, r2, #0
	adds r1, #0x26
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803D4C4
	ldr r0, _0803D4C0 @ =0x0000FD60
	b _0803D4C6
	.align 2, 0
_0803D49C: .4byte gMultiplayerConnections
_0803D4A0: .4byte gUnknown_03004FE0
_0803D4A4: .4byte sa2__gUnknown_0300544C
_0803D4A8: .4byte gStageFlags
_0803D4AC: .4byte gCheckpointTime
_0803D4B0: .4byte gCourseTime
_0803D4B4: .4byte gGameMode
_0803D4B8: .4byte gLoadedSaveGame
_0803D4BC: .4byte gPlayer
_0803D4C0: .4byte 0x0000FD60
_0803D4C4:
	ldr r0, _0803D4F4 @ =0x0000FB20
_0803D4C6:
	strh r0, [r2, #0xa]
	ldr r0, _0803D4F8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	bne _0803D4E8
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xd0
	str r1, [sp]
	movs r1, #8
	movs r2, #0x10
	bl sub_804CC14
_0803D4E8:
	ldr r0, _0803D4FC @ =gPlayer
	ldr r1, [r0, #0x10]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0, #0x10]
	b _0803D570
	.align 2, 0
_0803D4F4: .4byte 0x0000FB20
_0803D4F8: .4byte gCurrentLevel
_0803D4FC: .4byte gPlayer
_0803D500:
	adds r0, r2, #0
	orrs r0, r4
	strh r0, [r3]
	bl sub_8019DB0
	b _0803D586
_0803D50C:
	ldr r0, _0803D54C @ =gCourseTime
	ldr r1, [r0]
	add r1, ip
	str r1, [r0]
	ldr r0, _0803D550 @ =0x00008CA0
	cmp r1, r0
	bls _0803D586
	ldr r0, _0803D554 @ =gGameMode
	ldrb r1, [r0]
	cmp r1, #1
	bhi _0803D57C
	adds r0, r2, #0
	orrs r0, r4
	strh r0, [r3]
	ldr r0, _0803D558 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _0803D534
	cmp r1, #1
	bne _0803D586
_0803D534:
	ldr r0, _0803D55C @ =gPlayer
	adds r1, r0, #0
	adds r1, #0x26
	strb r5, [r1]
	ldr r1, [r0, #0x10]
	movs r2, #0x40
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _0803D564
	ldr r0, _0803D560 @ =0x0000FD60
	b _0803D566
	.align 2, 0
_0803D54C: .4byte gCourseTime
_0803D550: .4byte 0x00008CA0
_0803D554: .4byte gGameMode
_0803D558: .4byte gLoadedSaveGame
_0803D55C: .4byte gPlayer
_0803D560: .4byte 0x0000FD60
_0803D564:
	ldr r0, _0803D578 @ =0x0000FB20
_0803D566:
	strh r0, [r2, #0xa]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2, #0x10]
_0803D570:
	movs r0, #0xa6
	bl m4aSongNumStart
	b _0803D586
	.align 2, 0
_0803D578: .4byte 0x0000FB20
_0803D57C:
	adds r0, r2, #0
	orrs r0, r4
	strh r0, [r3]
	bl sub_8019DB0
_0803D586:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803D590
sub_803D590: @ 0x0803D590
	push {lr}
	ldr r3, _0803D5CC @ =gStageFlags
	ldrh r0, [r3]
	movs r1, #0x20
	adds r2, r0, #0
	orrs r2, r1
	strh r2, [r3]
	ldr r0, _0803D5D0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803D5EC
	ldr r1, _0803D5D4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D5D8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0803D5DC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0803D5E0 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0803D5E4 @ =gVramGraphicsCopyCursor
	ldr r0, _0803D5E8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_806A1A4
	b _0803D64E
	.align 2, 0
_0803D5CC: .4byte gStageFlags
_0803D5D0: .4byte gGameMode
_0803D5D4: .4byte 0x0000FFFF
_0803D5D8: .4byte gBackgroundsCopyQueueCursor
_0803D5DC: .4byte gBackgroundsCopyQueueIndex
_0803D5E0: .4byte sa2__gUnknown_03005390
_0803D5E4: .4byte gVramGraphicsCopyCursor
_0803D5E8: .4byte gVramGraphicsCopyQueueIndex
_0803D5EC:
	cmp r0, #1
	bhi _0803D62C
	ldr r1, _0803D61C @ =gNumLives
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D62C
	movs r0, #1
	orrs r2, r0
	strh r2, [r3]
	ldr r1, _0803D620 @ =sa2__gUnknown_0300543C
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _0803D624
	subs r0, r2, #1
	strb r0, [r1]
	movs r0, #1
	bl sub_8055DD0
	b _0803D64E
	.align 2, 0
_0803D61C: .4byte gNumLives
_0803D620: .4byte sa2__gUnknown_0300543C
_0803D624:
	movs r0, #2
	bl sub_8055DD0
	b _0803D64E
_0803D62C:
	ldr r1, _0803D654 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D658 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0803D65C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0803D660 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0803D664 @ =gVramGraphicsCopyCursor
	ldr r0, _0803D668 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateGameStage
_0803D64E:
	pop {r0}
	bx r0
	.align 2, 0
_0803D654: .4byte 0x0000FFFF
_0803D658: .4byte gBackgroundsCopyQueueCursor
_0803D65C: .4byte gBackgroundsCopyQueueIndex
_0803D660: .4byte sa2__gUnknown_03005390
_0803D664: .4byte gVramGraphicsCopyCursor
_0803D668: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_803D66C
sub_803D66C: @ 0x0803D66C
	push {lr}
	ldr r2, _0803D6A4 @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0803D6A8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803D6C4
	ldr r1, _0803D6AC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D6B0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0803D6B4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0803D6B8 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0803D6BC @ =gVramGraphicsCopyCursor
	ldr r0, _0803D6C0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_806A1A4
	b _0803D720
	.align 2, 0
_0803D6A4: .4byte gStageFlags
_0803D6A8: .4byte gGameMode
_0803D6AC: .4byte 0x0000FFFF
_0803D6B0: .4byte gBackgroundsCopyQueueCursor
_0803D6B4: .4byte gBackgroundsCopyQueueIndex
_0803D6B8: .4byte sa2__gUnknown_03005390
_0803D6BC: .4byte gVramGraphicsCopyCursor
_0803D6C0: .4byte gVramGraphicsCopyQueueIndex
_0803D6C4:
	ldr r1, _0803D6EC @ =gNumLives
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D71C
	ldr r1, _0803D6F0 @ =sa2__gUnknown_0300543C
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _0803D6F4
	subs r0, r2, #1
	strb r0, [r1]
	movs r0, #1
	bl sub_8055DD0
	b _0803D720
	.align 2, 0
_0803D6EC: .4byte gNumLives
_0803D6F0: .4byte sa2__gUnknown_0300543C
_0803D6F4:
	ldr r0, _0803D714 @ =gLoadedSaveGame
	movs r1, #0x84
	lsls r1, r1, #3
	adds r2, r0, r1
	ldr r0, _0803D718 @ =gLevelScore
	ldr r0, [r0]
	ldr r1, [r2]
	cmp r0, r1
	bhs _0803D708
	adds r0, r1, #0
_0803D708:
	str r0, [r2]
	movs r0, #2
	bl sub_8055DD0
	b _0803D720
	.align 2, 0
_0803D714: .4byte gLoadedSaveGame
_0803D718: .4byte gLevelScore
_0803D71C:
	bl sub_805B9E8
_0803D720:
	pop {r0}
	bx r0

	thumb_func_start sub_803D724
sub_803D724: @ 0x0803D724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _0803D830 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D834 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0803D838 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0803D83C @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0803D840 @ =gVramGraphicsCopyCursor
	ldr r0, _0803D844 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r0, _0803D848 @ =gFlags
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r2, _0803D84C @ =0x04000200
	mov r8, r2
	ldrh r0, [r2]
	mov sl, r0
	ldr r6, _0803D850 @ =0x04000208
	ldrh r0, [r6]
	adds r7, r0, #0
	ldr r5, _0803D854 @ =0x04000004
	ldrh r3, [r5]
	mov sb, r3
	movs r0, #0
	strh r0, [r2]
	ldrh r2, [r2]
	strh r0, [r6]
	ldrh r2, [r6]
	strh r0, [r5]
	ldrh r0, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	ldr r0, _0803D848 @ =gFlags
	str r1, [r0]
	ldr r1, _0803D858 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _0803D85C @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _0803D860 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _0803D864 @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	bl sub_8012D98
	mov r2, sl
	mov r1, r8
	strh r2, [r1]
	ldrh r0, [r1]
	strh r7, [r6]
	ldrh r0, [r6]
	mov r3, sb
	strh r3, [r5]
	ldrh r0, [r5]
	bl m4aSoundVSyncOn
	ldr r1, _0803D848 @ =gFlags
	ldr r0, [r1]
	ldr r1, _0803D868 @ =0xFFFF7FFF
	ands r0, r1
	ldr r2, _0803D848 @ =gFlags
	str r0, [r2]
	ldr r0, _0803D86C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803D874
	ldr r1, _0803D870 @ =gCurrentLevel
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x11
	bgt _0803D878
	bl GameStageStart
	b _0803D878
	.align 2, 0
_0803D830: .4byte 0x0000FFFF
_0803D834: .4byte gBackgroundsCopyQueueCursor
_0803D838: .4byte gBackgroundsCopyQueueIndex
_0803D83C: .4byte sa2__gUnknown_03005390
_0803D840: .4byte gVramGraphicsCopyCursor
_0803D844: .4byte gVramGraphicsCopyQueueIndex
_0803D848: .4byte gFlags
_0803D84C: .4byte 0x04000200
_0803D850: .4byte 0x04000208
_0803D854: .4byte 0x04000004
_0803D858: .4byte 0x040000B0
_0803D85C: .4byte 0x0000C5FF
_0803D860: .4byte 0x00007FFF
_0803D864: .4byte 0x040000D4
_0803D868: .4byte 0xFFFF7FFF
_0803D86C: .4byte gGameMode
_0803D870: .4byte gCurrentLevel
_0803D874:
	bl sub_806A1A4
_0803D878:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803D888
sub_803D888: @ 0x0803D888
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D928 @ =0x00000331
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D92C @ =0x00000332
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D930 @ =0x00000339
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r5, _0803D934 @ =0x0000033B
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xcf
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D938 @ =0x0000034B
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D93C @ =0x0000033A
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x10
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D928: .4byte 0x00000331
_0803D92C: .4byte 0x00000332
_0803D930: .4byte 0x00000339
_0803D934: .4byte 0x0000033B
_0803D938: .4byte 0x0000034B
_0803D93C: .4byte 0x0000033A

	thumb_func_start sub_803D940
sub_803D940: @ 0x0803D940
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D9E0 @ =0x00000331
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D9E4 @ =0x00000332
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D9E8 @ =0x00000339
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r5, _0803D9EC @ =0x0000033B
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xcf
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D9F0 @ =0x0000034B
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D9F4 @ =0x0000033A
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x11
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D9E0: .4byte 0x00000331
_0803D9E4: .4byte 0x00000332
_0803D9E8: .4byte 0x00000339
_0803D9EC: .4byte 0x0000033B
_0803D9F0: .4byte 0x0000034B
_0803D9F4: .4byte 0x0000033A

	thumb_func_start sub_803D9F8
sub_803D9F8: @ 0x0803D9F8
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DAF8 @ =0x00000347
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DAFC @ =0x00000349
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DB00 @ =0x0000034A
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x16
	bl m4aSongNumStart
	ldr r0, _0803DB04 @ =gUnknown_03005148
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803DA72
	ldr r1, _0803DB08 @ =gCamera
	ldr r0, _0803DB0C @ =0x00000422
	strh r0, [r1, #0x18]
	ldrh r2, [r1, #0x26]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1, #0x26]
	ldr r2, _0803DB10 @ =gBgCntRegs
	ldrh r1, [r2, #6]
	ldr r0, _0803DB14 @ =0x00003FFF
	ands r0, r1
	strh r0, [r2, #6]
	ldr r0, _0803DB18 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803DA72
	ldr r2, _0803DB1C @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803DB20 @ =gCourseTime
	ldr r0, _0803DB24 @ =0x00004650
	str r0, [r1]
_0803DA72:
	ldr r0, _0803DB04 @ =gUnknown_03005148
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #1
	bls _0803DAB2
	ldr r1, _0803DB08 @ =gCamera
	movs r0, #0xae
	lsls r0, r0, #5
	strh r0, [r1, #0x16]
	ldrh r2, [r1, #0x26]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r1, #0x26]
	ldr r2, _0803DB10 @ =gBgCntRegs
	ldrh r1, [r2, #6]
	ldr r0, _0803DB14 @ =0x00003FFF
	ands r0, r1
	strh r0, [r2, #6]
	ldr r0, _0803DB18 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803DAB2
	ldr r2, _0803DB1C @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803DB20 @ =gCourseTime
	ldr r0, _0803DB24 @ =0x00004650
	str r0, [r1]
_0803DAB2:
	ldrb r0, [r3]
	cmp r0, #2
	bls _0803DAF2
	ldr r2, _0803DB10 @ =gBgCntRegs
	ldrh r1, [r2, #6]
	ldr r0, _0803DB14 @ =0x00003FFF
	ands r0, r1
	strh r0, [r2, #6]
	ldr r2, _0803DB08 @ =gCamera
	ldrh r1, [r2, #0x26]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	ldr r1, _0803DB28 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x26]
	movs r0, #0xcc
	lsls r0, r0, #4
	strh r0, [r2, #0x16]
	ldr r0, _0803DB18 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803DAF2
	ldr r2, _0803DB1C @ =gStageFlags
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803DB20 @ =gCourseTime
	ldr r0, _0803DB24 @ =0x00004650
	str r0, [r1]
_0803DAF2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DAF8: .4byte 0x00000347
_0803DAFC: .4byte 0x00000349
_0803DB00: .4byte 0x0000034A
_0803DB04: .4byte gUnknown_03005148
_0803DB08: .4byte gCamera
_0803DB0C: .4byte 0x00000422
_0803DB10: .4byte gBgCntRegs
_0803DB14: .4byte 0x00003FFF
_0803DB18: .4byte gGameMode
_0803DB1C: .4byte gStageFlags
_0803DB20: .4byte gCourseTime
_0803DB24: .4byte 0x00004650
_0803DB28: .4byte 0x00007FFF

	thumb_func_start sub_803DB2C
sub_803DB2C: @ 0x0803DB2C
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DBC0 @ =0x00000331
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DBC4 @ =0x00000332
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DBC8 @ =0x00000339
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r5, _0803DBCC @ =0x0000033B
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xcf
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DBD0 @ =0x0000034B
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x10
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DBC0: .4byte 0x00000331
_0803DBC4: .4byte 0x00000332
_0803DBC8: .4byte 0x00000339
_0803DBCC: .4byte 0x0000033B
_0803DBD0: .4byte 0x0000034B

	thumb_func_start sub_803DBD4
sub_803DBD4: @ 0x0803DBD4
	push {lr}
	ldr r0, _0803DC28 @ =gLevelScore
	movs r3, #0
	str r3, [r0]
	ldr r2, _0803DC2C @ =gNumLives
	movs r0, #3
	strb r0, [r2]
	ldr r1, _0803DC30 @ =gUnknown_03005020
	ldr r0, _0803DC34 @ =gCurrentLevel
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803DC38 @ =gGameMode
	ldrb r1, [r0]
	cmp r1, #1
	bls _0803DBF6
	movs r0, #1
	strb r0, [r2]
_0803DBF6:
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0803DC0E
	ldr r0, _0803DC3C @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _0803DC40 @ =gLoadedSaveGame
	cmp r0, #0
	beq _0803DC18
_0803DC0E:
	ldr r0, _0803DC44 @ =gUnknown_03005080
	ldr r1, _0803DC40 @ =gLoadedSaveGame
	ldrb r2, [r1, #0x18]
	strb r2, [r0]
	strb r3, [r1, #0x18]
_0803DC18:
	ldrb r0, [r1, #0x1c]
	bl sub_804D02C
	bl GameStageStart
	pop {r0}
	bx r0
	.align 2, 0
_0803DC28: .4byte gLevelScore
_0803DC2C: .4byte gNumLives
_0803DC30: .4byte gUnknown_03005020
_0803DC34: .4byte gCurrentLevel
_0803DC38: .4byte gGameMode
_0803DC3C: .4byte gStageFlags
_0803DC40: .4byte gLoadedSaveGame
_0803DC44: .4byte gUnknown_03005080

	thumb_func_start sub_803DC48
sub_803DC48: @ 0x0803DC48
	push {r4, lr}
	ldr r4, _0803DC74 @ =gGameStageTask
	ldr r0, [r4]
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
	ldr r0, _0803DC78 @ =gPlayer
	bl sub_8046CC4
	ldr r0, _0803DC7C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803DC6A
	ldr r0, _0803DC80 @ =gPartner
	bl sub_8046CC4
_0803DC6A:
	bl sub_803F644
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DC74: .4byte gGameStageTask
_0803DC78: .4byte gPlayer
_0803DC7C: .4byte gGameMode
_0803DC80: .4byte gPartner

	thumb_func_start sub_803DC84
sub_803DC84: @ 0x0803DC84
	push {lr}
	ldr r0, _0803DCB8 @ =gGameMode
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0803DCA0
	ldr r0, _0803DCBC @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803DCA8
_0803DCA0:
	ldr r0, _0803DCC0 @ =gLoadedSaveGame
	ldr r1, _0803DCC4 @ =gUnknown_03005080
	ldrb r1, [r1]
	strb r1, [r0, #0x18]
_0803DCA8:
	ldr r1, _0803DCC8 @ =gGameStageTask
	movs r0, #0
	str r0, [r1]
	bl m4aMPlayAllStop
	pop {r0}
	bx r0
	.align 2, 0
_0803DCB8: .4byte gGameMode
_0803DCBC: .4byte gStageFlags
_0803DCC0: .4byte gLoadedSaveGame
_0803DCC4: .4byte gUnknown_03005080
_0803DCC8: .4byte gGameStageTask

	thumb_func_start sub_803DCCC
sub_803DCCC: @ 0x0803DCCC
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DCF8 @ =0x0000032E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DCFC @ =0x0000032F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xc
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DCF8: .4byte 0x0000032E
_0803DCFC: .4byte 0x0000032F

	thumb_func_start sub_803DD00
sub_803DD00: @ 0x0803DD00
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DD60 @ =0x0000032E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DD64 @ =0x0000032F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r5, #0xcd
	lsls r5, r5, #2
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r0, _0803DD68 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803DD52
	ldr r2, _0803DD6C @ =gCamera
	ldr r0, _0803DD70 @ =gRefCollision
	ldr r1, [r0]
	ldr r3, _0803DD74 @ =0xFFFFFD00
	adds r0, r3, #0
	ldrh r1, [r1, #0x1c]
	adds r0, r0, r1
	strh r0, [r2, #0x1a]
_0803DD52:
	movs r0, #0xd
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DD60: .4byte 0x0000032E
_0803DD64: .4byte 0x0000032F
_0803DD68: .4byte gGameMode
_0803DD6C: .4byte gCamera
_0803DD70: .4byte gRefCollision
_0803DD74: .4byte 0xFFFFFD00

	thumb_func_start sub_803DD78
sub_803DD78: @ 0x0803DD78
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DDB0 @ =0x00000333
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DDB4 @ =0x0000034D
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DDB8 @ =0x00000351
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xe
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DDB0: .4byte 0x00000333
_0803DDB4: .4byte 0x0000034D
_0803DDB8: .4byte 0x00000351

	thumb_func_start sub_803DDBC
sub_803DDBC: @ 0x0803DDBC
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DDF4 @ =0x00000333
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DDF8 @ =0x0000034D
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DDFC @ =0x00000351
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xf
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DDF4: .4byte 0x00000333
_0803DDF8: .4byte 0x0000034D
_0803DDFC: .4byte 0x00000351

	thumb_func_start sub_803DE00
sub_803DE00: @ 0x0803DE00
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DE34 @ =0x00000336
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DE38 @ =0x00000335
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r0, _0803DE3C @ =0x0000060A
	ldr r1, _0803DE40 @ =0x7F207F20
	movs r2, #0
	bl sub_804C5D8
	movs r0, #0x12
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DE34: .4byte 0x00000336
_0803DE38: .4byte 0x00000335
_0803DE3C: .4byte 0x0000060A
_0803DE40: .4byte 0x7F207F20

	thumb_func_start sub_803DE44
sub_803DE44: @ 0x0803DE44
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DE7C @ =0x00000336
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DE80 @ =0x00000335
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xd0
	lsls r0, r0, #3
	ldr r1, _0803DE84 @ =0x7F207F20
	movs r2, #0
	bl sub_804C5D8
	movs r0, #0x13
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DE7C: .4byte 0x00000336
_0803DE80: .4byte 0x00000335
_0803DE84: .4byte 0x7F207F20

	thumb_func_start sub_803DE88
sub_803DE88: @ 0x0803DE88
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #6
	ldr r1, _0803DEA4 @ =0x00000337
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x14
	bl m4aSongNumStart
	pop {r0}
	bx r0
	.align 2, 0
_0803DEA4: .4byte 0x00000337

	thumb_func_start sub_803DEA8
sub_803DEA8: @ 0x0803DEA8
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #6
	ldr r1, _0803DEC4 @ =0x00000337
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x15
	bl m4aSongNumStart
	pop {r0}
	bx r0
	.align 2, 0
_0803DEC4: .4byte 0x00000337

	thumb_func_start sub_803DEC8
sub_803DEC8: @ 0x0803DEC8
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DF3C @ =0x0000033D
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF40 @ =0x0000033E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF44 @ =0x0000033F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF48 @ =0x00000352
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF4C @ =0x00000353
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF50 @ =0x0000034E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF54 @ =0x0000034F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x17
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DF3C: .4byte 0x0000033D
_0803DF40: .4byte 0x0000033E
_0803DF44: .4byte 0x0000033F
_0803DF48: .4byte 0x00000352
_0803DF4C: .4byte 0x00000353
_0803DF50: .4byte 0x0000034E
_0803DF54: .4byte 0x0000034F

	thumb_func_start sub_803DF58
sub_803DF58: @ 0x0803DF58
	push {lr}
	movs r0, #0x18
	bl m4aSongNumStart
	pop {r0}
	bx r0

	thumb_func_start sub_803DF64
sub_803DF64: @ 0x0803DF64
	push {lr}
	movs r0, #0x1a
	bl m4aSongNumStart
	pop {r0}
	bx r0

	thumb_func_start sub_803DF70
sub_803DF70: @ 0x0803DF70
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DFB8 @ =0x0000032E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DFBC @ =0x0000032F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r5, #0xcd
	lsls r5, r5, #2
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xc
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DFB8: .4byte 0x0000032E
_0803DFBC: .4byte 0x0000032F

	thumb_func_start sub_803DFC0
sub_803DFC0: @ 0x0803DFC0
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DFF8 @ =0x00000333
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DFFC @ =0x0000034D
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E000 @ =0x00000351
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xe
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DFF8: .4byte 0x00000333
_0803DFFC: .4byte 0x0000034D
_0803E000: .4byte 0x00000351

	thumb_func_start sub_803E004
sub_803E004: @ 0x0803E004
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803E078 @ =0x0000033D
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E07C @ =0x0000033E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E080 @ =0x0000033F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E084 @ =0x00000352
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E088 @ =0x00000353
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E08C @ =0x0000034E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E090 @ =0x0000034F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x17
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E078: .4byte 0x0000033D
_0803E07C: .4byte 0x0000033E
_0803E080: .4byte 0x0000033F
_0803E084: .4byte 0x00000352
_0803E088: .4byte 0x00000353
_0803E08C: .4byte 0x0000034E
_0803E090: .4byte 0x0000034F

	thumb_func_start sub_803E094
sub_803E094: @ 0x0803E094
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803E0DC @ =0x0000032E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E0E0 @ =0x0000032F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r5, #0xcd
	lsls r5, r5, #2
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x35
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E0DC: .4byte 0x0000032E
_0803E0E0: .4byte 0x0000032F

@ --- End of stage.c ---
