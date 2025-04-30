.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of EggBall

	thumb_func_start sub_802EF94
sub_802EF94: @ 0x0802EF94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _0802F060 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _0802F064 @ =0x0300000C
	adds r5, r4, r0
	ldr r0, [r5, #0x10]
	ldr r1, _0802F068 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r1, _0802F06C @ =gPlayer
	mov r8, r1
	ldr r3, [r1, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _0802EFD8
	ldr r2, _0802F070 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802F074 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0802F078 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _0802F07C @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_0802EFD8:
	ldr r3, _0802F080 @ =0x0300008B
	adds r3, r3, r4
	mov sb, r3
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _0802F0BA
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	mov r3, r8
	bl Coll_Player_Boss
	mov r8, r0
	movs r1, #0
	ldr r0, _0802F084 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0802F018
	ldr r3, _0802F088 @ =gPartner
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl Coll_Player_Boss
	adds r1, r0, #0
_0802F018:
	ldr r0, _0802F08C @ =0x0300003C
	adds r2, r4, r0
	mov r3, r8
	cmp r3, #1
	beq _0802F026
	cmp r1, #1
	bne _0802F0A0
_0802F026:
	ldr r0, _0802F090 @ =0x0300008A
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x20
	mov r3, sb
	strb r0, [r3]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #4
	bne _0802F046
	ldr r0, _0802F094 @ =0x0300008C
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
_0802F046:
	ldr r3, _0802F098 @ =0x0300005C
	adds r1, r4, r3
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _0802F09C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _0802F0BA
	.align 2, 0
_0802F060: .4byte gCurTask
_0802F064: .4byte 0x0300000C
_0802F068: .4byte 0xFFFFFE7F
_0802F06C: .4byte gPlayer
_0802F070: .4byte gDispCnt
_0802F074: .4byte 0x00007FFF
_0802F078: .4byte gWinRegs
_0802F07C: .4byte gBldRegs
_0802F080: .4byte 0x0300008B
_0802F084: .4byte gNumSingleplayerCharacters
_0802F088: .4byte gPartner
_0802F08C: .4byte 0x0300003C
_0802F090: .4byte 0x0300008A
_0802F094: .4byte 0x0300008C
_0802F098: .4byte 0x0300005C
_0802F09C: .4byte 0xFFFFBFFF
_0802F0A0:
	mov r0, r8
	cmp r0, #2
	beq _0802F0AA
	cmp r1, #2
	bne _0802F0BA
_0802F0AA:
	ldr r3, _0802F0C8 @ =0x0300005C
	adds r1, r4, r3
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _0802F0CC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
_0802F0BA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F0C8: .4byte 0x0300005C
_0802F0CC: .4byte 0xFFFFBFFF

	thumb_func_start sub_802F0D0
sub_802F0D0: @ 0x0802F0D0
	push {r4, r5, lr}
	ldr r0, _0802F148 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802F14C @ =0x0300000C
	adds r3, r0, r1
	ldr r5, _0802F150 @ =0x0300003C
	adds r4, r0, r5
	adds r1, #0x7f
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0802F134
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _0802F134
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0802F134
	ldr r0, _0802F154 @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802F134
	ldr r0, [r3, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, _0802F158 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0802F15C @ =gWinRegs
	ldr r0, _0802F160 @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _0802F164 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
_0802F134:
	adds r0, r3, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802F148: .4byte gCurTask
_0802F14C: .4byte 0x0300000C
_0802F150: .4byte 0x0300003C
_0802F154: .4byte gPlayer
_0802F158: .4byte gDispCnt
_0802F15C: .4byte gWinRegs
_0802F160: .4byte 0x00003F1F
_0802F164: .4byte gBldRegs

	thumb_func_start CreateEntity_EggBall
CreateEntity_EggBall: @ 0x0802F168
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	ldr r0, _0802F198 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0802F19C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	ldr r2, [sp, #4]
	strb r0, [r2]
	b _0802F484
	.align 2, 0
_0802F198: .4byte gGameMode
_0802F19C:
	ldr r1, _0802F218 @ =gPseudoRandom
	ldr r0, _0802F21C @ =gFrameCount
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0802F220 @ =Task_EggBallMain
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0802F224 @ =TaskDestructor_EggBall
	str r1, [sp]
	movs r1, #0x9c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	ldr r4, _0802F228 @ =0x0300000C
	adds r4, r4, r3
	mov sl, r4
	movs r4, #0
	movs r2, #0
	strh r6, [r7, #4]
	mov r0, r8
	strh r0, [r7, #6]
	ldr r1, [sp, #4]
	str r1, [r7]
	ldrb r0, [r1]
	strb r0, [r7, #8]
	strb r5, [r7, #9]
	ldr r5, _0802F22C @ =0x03000084
	adds r0, r3, r5
	strh r2, [r0]
	ldr r1, _0802F230 @ =0x03000088
	adds r0, r3, r1
	strh r2, [r0]
	adds r5, #2
	adds r1, r3, r5
	ldr r0, _0802F234 @ =0x0000FFF8
	strh r0, [r1]
	ldr r1, _0802F238 @ =0x0300008B
	adds r0, r3, r1
	strb r4, [r0]
	adds r5, #6
	adds r0, r3, r5
	strb r4, [r0]
	str r2, [r7, #0x70]
	adds r1, #2
	adds r0, r3, r1
	strb r4, [r0]
	ldr r2, _0802F23C @ =0x0300008E
	adds r0, r3, r2
	strb r4, [r0]
	ldr r0, _0802F240 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _0802F248
	ldr r4, _0802F244 @ =0x0300008A
	adds r1, r3, r4
	movs r0, #2
	strb r0, [r1]
	b _0802F24E
	.align 2, 0
_0802F218: .4byte gPseudoRandom
_0802F21C: .4byte gFrameCount
_0802F220: .4byte Task_EggBallMain
_0802F224: .4byte TaskDestructor_EggBall
_0802F228: .4byte 0x0300000C
_0802F22C: .4byte 0x03000084
_0802F230: .4byte 0x03000088
_0802F234: .4byte 0x0000FFF8
_0802F238: .4byte 0x0300008B
_0802F23C: .4byte 0x0300008E
_0802F240: .4byte gLoadedSaveGame
_0802F244: .4byte 0x0300008A
_0802F248:
	ldr r5, _0802F3A8 @ =0x0300008A
	adds r0, r3, r5
	strb r4, [r0]
_0802F24E:
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	mov sb, r6
	add r0, sb
	movs r6, #0
	movs r5, #0
	mov r2, sl
	strh r0, [r2, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	mov r3, r8
	lsls r3, r3, #8
	mov r8, r3
	add r0, r8
	strh r0, [r2, #0x18]
	movs r0, #0x24
	bl VramMalloc
	mov r4, sl
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	movs r0, #0x9c
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	mov r0, sl
	adds r0, #0x20
	strb r6, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	mov r1, sl
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x22
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	strb r6, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r4, #0x28]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r4, #0x10]
	adds r4, r7, #0
	adds r4, #0x3c
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	lsls r0, r0, #3
	add r0, sb
	strh r0, [r4, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	add r0, r8
	strh r0, [r4, #0x18]
	subs r2, #1
	adds r0, r2, #0
	strb r0, [r1]
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r0, _0802F3AC @ =0x0000026E
	strh r0, [r4, #0xa]
	adds r0, r7, #0
	adds r0, #0x5c
	strb r6, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r7, #0
	adds r1, #0x5d
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5e
	movs r3, #0x10
	strb r3, [r0]
	adds r0, #3
	strb r6, [r0]
	subs r5, #1
	str r5, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	movs r6, #0
	mov r1, sb
	str r1, [sp, #8]
	mov r2, r8
	str r2, [sp, #0xc]
	mov sb, r6
_0802F318:
	ldr r0, _0802F3B0 @ =sub_8030754
	str r0, [sp]
	ldr r0, _0802F3B4 @ =sub_803053C
	movs r1, #0x4c
	movs r2, #0x88
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r2, r4, r3
	ldr r5, _0802F3B8 @ =0x03000044
	adds r0, r4, r5
	strb r6, [r0]
	ldr r0, _0802F3BC @ =0x03000045
	adds r1, r4, r0
	movs r0, #0x5a
	strb r0, [r1]
	lsls r5, r6, #3
	ldr r1, _0802F3C0 @ =gUnknown_084ACDD2
	adds r0, r5, r1
	ldrh r1, [r0]
	strh r1, [r2, #0x3c]
	ldr r3, _0802F3C4 @ =gUnknown_084ACDD4
	adds r0, r5, r3
	ldrh r3, [r0]
	strh r3, [r2, #0x3e]
	ldrh r0, [r7, #4]
	strh r0, [r2, #4]
	ldrh r0, [r7, #6]
	strh r0, [r2, #6]
	ldr r0, [r7]
	str r0, [r2]
	ldrb r0, [r7, #8]
	strb r0, [r2, #8]
	ldrb r0, [r7, #9]
	strb r0, [r2, #9]
	str r7, [r2, #0x48]
	ldr r0, _0802F3C8 @ =0x0300000C
	adds r4, r4, r0
	ldr r2, [sp, #4]
	ldrb r0, [r2]
	lsls r0, r0, #3
	ldr r2, [sp, #8]
	adds r0, r0, r2
	adds r1, r1, r0
	strh r1, [r4, #0x16]
	ldr r1, [sp, #4]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldr r2, [sp, #0xc]
	adds r0, r0, r2
	adds r3, r3, r0
	strh r3, [r4, #0x18]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r6
	cmp r0, #0
	bne _0802F3D4
	movs r0, #0x1c
	bl VramMalloc
	adds r1, r0, #0
	str r1, [r4, #4]
	cmp r6, #0
	bne _0802F3CC
	adds r0, r7, #0
	adds r0, #0x94
	str r1, [r0]
	b _0802F3EA
	.align 2, 0
_0802F3A8: .4byte 0x0300008A
_0802F3AC: .4byte 0x0000026E
_0802F3B0: .4byte sub_8030754
_0802F3B4: .4byte sub_803053C
_0802F3B8: .4byte 0x03000044
_0802F3BC: .4byte 0x03000045
_0802F3C0: .4byte gUnknown_084ACDD2
_0802F3C4: .4byte gUnknown_084ACDD4
_0802F3C8: .4byte 0x0300000C
_0802F3CC:
	adds r0, r7, #0
	adds r0, #0x98
	str r1, [r0]
	b _0802F3EA
_0802F3D4:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	bne _0802F3E2
	adds r0, r7, #0
	adds r0, #0x94
	b _0802F3E6
_0802F3E2:
	adds r0, r7, #0
	adds r0, #0x98
_0802F3E6:
	ldr r0, [r0]
	str r0, [r4, #4]
_0802F3EA:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _0802F3F8
	movs r0, #0x90
	lsls r0, r0, #3
	b _0802F3FC
_0802F3F8:
	movs r0, #0xe0
	lsls r0, r0, #2
_0802F3FC:
	strh r0, [r4, #0x1a]
	mov r3, sb
	strh r3, [r4, #8]
	ldr r0, _0802F494 @ =0x00000251
	strh r0, [r4, #0xa]
	ldr r0, _0802F498 @ =gUnknown_084ACDD2
	adds r0, #4
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	strh r3, [r4, #0x14]
	strh r3, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x22
	movs r1, #0x10
	mov r8, r1
	mov r2, r8
	strb r2, [r0]
	adds r0, #3
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	ldr r1, _0802F49C @ =gUnknown_084ACDD8
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r4, #0x10]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bhi _0802F458
	b _0802F318
_0802F458:
	mov r3, sl
	ldrh r1, [r3, #0x18]
	adds r0, r1, #0
	subs r0, #0xb8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r4, _0802F4A0 @ =0xFFFFFEE8
	adds r2, r4, #0
	ldrh r5, [r3, #0x16]
	adds r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r4, #0x16
	ldrsh r3, [r3, r4]
	bl sub_80171BC
	ldr r0, _0802F4A4 @ =gMusicManagerState
	mov r5, r8
	strb r5, [r0, #1]
_0802F484:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F494: .4byte 0x00000251
_0802F498: .4byte gUnknown_084ACDD2
_0802F49C: .4byte gUnknown_084ACDD8
_0802F4A0: .4byte 0xFFFFFEE8
_0802F4A4: .4byte gMusicManagerState

	thumb_func_start Task_EggBallMain
Task_EggBallMain: @ 0x0802F4A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0802F54C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r1, _0802F550 @ =0x03000088
	adds r7, r5, r1
	ldrh r0, [r7]
	adds r1, r0, #1
	strh r1, [r7]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bls _0802F540
	ldr r0, _0802F554 @ =0x0300000C
	adds r4, r5, r0
	ldr r1, _0802F558 @ =0x0300003C
	adds r5, r5, r1
	ldr r3, [r6]
	ldr r1, _0802F55C @ =0xFFFFAB00
	str r1, [r6, #0x70]
	movs r0, #0
	str r0, [r6, #0x74]
	ldr r0, _0802F560 @ =0xFFFFFF00
	str r0, [r6, #0x7c]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	asrs r1, r1, #8
	adds r2, r2, r1
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802F564 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	strh r2, [r5, #0x16]
	ldrh r0, [r4, #0x18]
	strh r0, [r5, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	bl DisplaySprite
	movs r0, #0x3c
	strh r0, [r7]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _0802F568 @ =sub_802F56C
	str r0, [r1, #8]
	bl _call_via_r0
_0802F540:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F54C: .4byte gCurTask
_0802F550: .4byte 0x03000088
_0802F554: .4byte 0x0300000C
_0802F558: .4byte 0x0300003C
_0802F55C: .4byte 0xFFFFAB00
_0802F560: .4byte 0xFFFFFF00
_0802F564: .4byte gCamera
_0802F568: .4byte sub_802F56C

	thumb_func_start sub_802F56C
sub_802F56C: @ 0x0802F56C
	push {r4, r5, r6, r7, lr}
	ldr r1, _0802F5B4 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r5, r2, r0
	adds r0, #0x30
	adds r7, r2, r0
	ldr r6, [r3]
	ldr r4, [r3, #0x74]
	ldr r0, _0802F5B8 @ =0xFFFFB000
	mov ip, r1
	cmp r4, r0
	bgt _0802F5C8
	ldr r1, _0802F5BC @ =0x03000088
	adds r4, r2, r1
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802F5CE
	ldr r0, _0802F5C0 @ =0x0300005C
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x3c
	strh r0, [r4]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _0802F5C4 @ =sub_802F644
	str r0, [r1, #8]
	b _0802F5CE
	.align 2, 0
_0802F5B4: .4byte gCurTask
_0802F5B8: .4byte 0xFFFFB000
_0802F5BC: .4byte 0x03000088
_0802F5C0: .4byte 0x0300005C
_0802F5C4: .4byte sub_802F644
_0802F5C8:
	ldr r1, _0802F638 @ =0xFFFFFF00
	adds r0, r4, r1
	str r0, [r3, #0x74]
_0802F5CE:
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r3, #0x70]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #0x74]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802F63C @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	mov r1, ip
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r1, _0802F640 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F638: .4byte 0xFFFFFF00
_0802F63C: .4byte gCamera
_0802F640: .4byte 0x0300000C

	thumb_func_start sub_802F644
sub_802F644: @ 0x0802F644
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0802F714 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r6, r1, r4
	ldr r0, _0802F718 @ =0x0300000C
	adds r0, r0, r1
	mov sb, r0
	ldr r2, _0802F71C @ =0x0300003C
	adds r2, r2, r1
	mov sl, r2
	ldr r0, [r6]
	str r0, [sp, #4]
	ldr r2, _0802F720 @ =0x0300005C
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802F758
	ldr r0, _0802F724 @ =0x03000088
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r7, r0, #0
	cmp r7, #0
	bne _0802F754
	ldr r0, [r6, #0x74]
	ldr r1, _0802F728 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r6, #0x74]
	ldr r1, _0802F72C @ =0xFFFF3000
	cmp r0, r1
	bgt _0802F758
	movs r0, #0
	mov r8, r0
	movs r0, #0x3c
	strh r0, [r2]
	ldr r0, _0802F730 @ =sub_802F804
	str r0, [r3, #8]
	ldr r0, _0802F734 @ =sub_8030120
	movs r2, #0xa0
	lsls r2, r2, #6
	ldr r1, _0802F738 @ =sub_8030740
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	adds r4, r5, r4
	ldr r1, [r6, #0x70]
	str r1, [r4, #0x30]
	ldr r1, [r6, #0x74]
	str r1, [r4, #0x34]
	str r7, [r4, #0x38]
	str r7, [r4, #0x3c]
	ldr r2, _0802F73C @ =0x03000042
	adds r1, r5, r2
	mov r2, r8
	strb r2, [r1]
	str r0, [r6, #0x6c]
	strh r7, [r4, #0x16]
	strh r7, [r4, #0x18]
	movs r0, #0x24
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r7, [r4, #8]
	ldr r0, _0802F740 @ =0x00000271
	strh r0, [r4, #0xa]
	ldr r1, _0802F744 @ =0x03000020
	adds r0, r5, r1
	mov r2, r8
	strb r2, [r0]
	strh r7, [r4, #0x14]
	strh r7, [r4, #0x1c]
	ldr r0, _0802F748 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _0802F74C @ =0x03000022
	adds r1, r5, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0802F750 @ =0x03000025
	adds r5, r5, r0
	mov r1, r8
	strb r1, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	b _0802F758
	.align 2, 0
_0802F714: .4byte gCurTask
_0802F718: .4byte 0x0300000C
_0802F71C: .4byte 0x0300003C
_0802F720: .4byte 0x0300005C
_0802F724: .4byte 0x03000088
_0802F728: .4byte 0xFFFFFF00
_0802F72C: .4byte 0xFFFF3000
_0802F730: .4byte sub_802F804
_0802F734: .4byte sub_8030120
_0802F738: .4byte sub_8030740
_0802F73C: .4byte 0x03000042
_0802F740: .4byte 0x00000271
_0802F744: .4byte 0x03000020
_0802F748: .4byte 0x03000021
_0802F74C: .4byte 0x03000022
_0802F750: .4byte 0x03000025
_0802F754:
	subs r0, #1
	strh r0, [r2]
_0802F758:
	mov r3, sl
	adds r3, #0x20
	ldrb r0, [r3]
	cmp r0, #1
	bne _0802F77C
	mov r2, sl
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802F77C
	adds r0, r6, #0
	adds r0, #0x88
	movs r2, #0
	movs r1, #0x3c
	strh r1, [r0]
	strb r2, [r3]
_0802F77C:
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r6, #0x70]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldr r0, [sp, #4]
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #0x74]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802F7F8 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	mov r0, sb
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r2, sb
	strh r1, [r2, #0x18]
	ldr r0, _0802F7FC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802F800 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	mov r0, sl
	bl DisplaySprite
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F7F8: .4byte gCamera
_0802F7FC: .4byte gCurTask
_0802F800: .4byte 0x0300000C

	thumb_func_start sub_802F804
sub_802F804: @ 0x0802F804
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0802F8D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	adds r0, #0xc
	adds r0, r0, r6
	mov sl, r0
	ldr r1, _0802F8DC @ =0x0300003C
	adds r1, r6, r1
	str r1, [sp]
	ldr r2, [r7]
	str r2, [sp, #4]
	ldr r3, _0802F8E0 @ =0x03000088
	adds r1, r6, r3
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802F930
	ldr r0, [r7, #0x6c]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r2, _0802F8E4 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0802F8E8 @ =0x00196225
	muls r1, r0, r1
	ldr r3, _0802F8EC @ =0x3C6EF35F
	adds r1, r1, r3
	str r1, [r2]
	movs r0, #7
	ands r0, r1
	ldr r2, _0802F8F0 @ =0x0300008E
	adds r1, r6, r2
	strb r0, [r1]
	ldr r1, _0802F8F4 @ =gUnknown_084ACEA4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r4, [r0]
	ldr r5, _0802F8F8 @ =gUnknown_084ACE24
	lsls r4, r4, #4
	adds r0, r4, r5
	ldr r0, [r0]
	mov sb, r0
	str r0, [r7, #0x70]
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [r7, #0x74]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	ldr r3, _0802F8FC @ =gUnknown_084ACDC0
	mov r8, r3
	ldr r0, _0802F900 @ =0x0300008A
	adds r6, r6, r0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldr r0, [r1]
	muls r0, r2, r0
	movs r1, #0xa
	bl __divsi3
	str r0, [r7, #0x78]
	adds r5, #0xc
	adds r4, r4, r5
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4]
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	str r0, [r7, #0x7c]
	ldr r0, _0802F904 @ =0xFFFF7400
	cmp sb, r0
	blt _0802F90C
	mov r3, sl
	ldr r0, [r3, #0x10]
	ldr r1, _0802F908 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r2, [sp]
	ldr r0, [r2, #0x10]
	ands r0, r1
	b _0802F91E
	.align 2, 0
_0802F8D8: .4byte gCurTask
_0802F8DC: .4byte 0x0300003C
_0802F8E0: .4byte 0x03000088
_0802F8E4: .4byte gPseudoRandom
_0802F8E8: .4byte 0x00196225
_0802F8EC: .4byte 0x3C6EF35F
_0802F8F0: .4byte 0x0300008E
_0802F8F4: .4byte gUnknown_084ACEA4
_0802F8F8: .4byte gUnknown_084ACE24
_0802F8FC: .4byte gUnknown_084ACDC0
_0802F900: .4byte 0x0300008A
_0802F904: .4byte 0xFFFF7400
_0802F908: .4byte 0xFFFFFBFF
_0802F90C:
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, [sp]
	ldr r0, [r2, #0x10]
	orrs r0, r1
_0802F91E:
	str r0, [r2, #0x10]
	ldr r1, [sp, #8]
	adds r1, #0x42
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0802F9DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802F9E0 @ =sub_802F9F8
	str r0, [r1, #8]
_0802F930:
	ldrb r5, [r7, #8]
	lsls r5, r5, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	ldr r0, [r7, #0x70]
	asrs r0, r0, #8
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r3, [sp, #4]
	ldrb r4, [r3, #1]
	lsls r4, r4, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	ldr r0, [r7, #0x74]
	asrs r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, r7, #0
	adds r1, #0x8b
	movs r0, #0
	strb r0, [r1]
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	ldr r0, _0802F9DC @ =gCurTask
	ldr r3, [r0]
	ldrh r0, [r3, #6]
	ldr r1, _0802F9E4 @ =0x0300000C
	adds r0, r0, r1
	ldr r2, _0802F9E8 @ =gCamera
	ldrh r1, [r2]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r5, r5, r1
	strh r5, [r0, #0x16]
	ldrh r1, [r2, #2]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, r4, r1
	strh r4, [r0, #0x18]
	ldrh r2, [r3, #6]
	ldr r3, _0802F9EC @ =0x0300003C
	adds r1, r2, r3
	ldr r0, _0802F9F0 @ =0x0300005C
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802F9B6
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802F9B6
	movs r0, #0
	strb r0, [r3]
	ldr r3, _0802F9F4 @ =0x0300005D
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
_0802F9B6:
	ldr r0, _0802F9DC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802F9E4 @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _0802F9EC @ =0x0300003C
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F9DC: .4byte gCurTask
_0802F9E0: .4byte sub_802F9F8
_0802F9E4: .4byte 0x0300000C
_0802F9E8: .4byte gCamera
_0802F9EC: .4byte 0x0300003C
_0802F9F0: .4byte 0x0300005C
_0802F9F4: .4byte 0x0300005D

	thumb_func_start sub_802F9F8
sub_802F9F8: @ 0x0802F9F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r3, _0802FAA8 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	adds r1, #0xc
	adds r7, r0, r1
	adds r1, #0x30
	adds r1, r1, r0
	mov r8, r1
	ldr r4, [r6]
	ldr r1, [r6, #0x70]
	ldr r0, [r6, #0x78]
	adds r1, r1, r0
	str r1, [r6, #0x70]
	ldr r2, [r6, #0x74]
	ldr r0, [r6, #0x7c]
	adds r2, r2, r0
	str r2, [r6, #0x74]
	movs r0, #0x9c
	lsls r0, r0, #9
	adds r1, r1, r0
	movs r0, #0xac
	lsls r0, r0, #9
	cmp r1, r0
	bhi _0802FA42
	ldr r0, _0802FAAC @ =0xFFFF3000
	cmp r2, r0
	blt _0802FA42
	movs r0, #0xa0
	lsls r0, r0, #6
	cmp r2, r0
	ble _0802FA50
_0802FA42:
	adds r1, r6, #0
	adds r1, #0x88
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, [r3]
	ldr r0, _0802FAB0 @ =sub_802F804
	str r0, [r1, #8]
_0802FA50:
	ldrb r5, [r6, #8]
	lsls r5, r5, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	ldr r0, [r6, #0x70]
	asrs r0, r0, #8
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldrb r4, [r4, #1]
	lsls r4, r4, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	ldr r0, [r6, #0x74]
	asrs r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r7, r4, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_802EF94
	adds r0, r6, #0
	adds r0, #0x8a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0802FAB4
	bl sub_802FB2C
	b _0802FB0E
	.align 2, 0
_0802FAA8: .4byte gCurTask
_0802FAAC: .4byte 0xFFFF3000
_0802FAB0: .4byte sub_802F804
_0802FAB4:
	ldr r4, _0802FB18 @ =gCurTask
	ldr r3, [r4]
	ldrh r1, [r3, #6]
	ldr r0, _0802FB1C @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _0802FB20 @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r2, [r3, #6]
	ldr r0, _0802FB24 @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r5, r2, r0
	ldrb r0, [r5]
	adds r3, r4, #0
	cmp r0, #0
	beq _0802FAF6
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802FAF6
	movs r0, #0
	strb r0, [r5]
	ldr r0, _0802FB28 @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_0802FAF6:
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	ldr r1, _0802FB1C @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_802F0D0
_0802FB0E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802FB18: .4byte gCurTask
_0802FB1C: .4byte 0x0300000C
_0802FB20: .4byte gCamera
_0802FB24: .4byte 0x0300003C
_0802FB28: .4byte 0x0300005D

	thumb_func_start sub_802FB2C
sub_802FB2C: @ 0x0802FB2C
	push {r4, r5, r6, lr}
	ldr r0, _0802FBDC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	ldr r0, _0802FBE0 @ =0x0300005C
	adds r2, r1, r0
	movs r0, #2
	strb r0, [r2]
	ldr r2, _0802FBE4 @ =0x03000090
	adds r1, r1, r2
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r1, [r4, #0x6c]
	ldr r0, _0802FBE8 @ =sub_8030364
	str r0, [r1, #8]
	ldr r0, _0802FBEC @ =0x00002010
	ldr r1, _0802FBF0 @ =0x00002011
	bl TasksDestroyInPriorityRange
	ldr r1, _0802FBF4 @ =gPlayer
	ldr r0, [r1, #0x10]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #0x10]
	ldr r1, _0802FBF8 @ =gPartner
	ldr r0, [r1, #0x10]
	ands r0, r2
	str r0, [r1, #0x10]
	ldr r4, _0802FBFC @ =gCamera
	ldrh r0, [r4]
	strh r0, [r4, #0x18]
	adds r0, #0xf0
	strh r0, [r4, #0x1a]
	ldrh r5, [r4, #0x14]
	ldrh r6, [r4, #0x16]
	adds r0, r5, #0
	adds r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x16
	ldrsh r1, [r4, r2]
	bl sub_80174DC
	strh r5, [r4, #0x14]
	strh r6, [r4, #0x16]
	ldr r1, _0802FC00 @ =gLevelScore
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _0802FC04 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _0802FBC8
	ldr r0, _0802FC08 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802FBC8
	ldr r1, _0802FC0C @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802FBC8:
	bl sub_802FC14
	ldr r0, _0802FBDC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802FC10 @ =sub_802FC14
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802FBDC: .4byte gCurTask
_0802FBE0: .4byte 0x0300005C
_0802FBE4: .4byte 0x03000090
_0802FBE8: .4byte sub_8030364
_0802FBEC: .4byte 0x00002010
_0802FBF0: .4byte 0x00002011
_0802FBF4: .4byte gPlayer
_0802FBF8: .4byte gPartner
_0802FBFC: .4byte gCamera
_0802FC00: .4byte gLevelScore
_0802FC04: .4byte 0x0000C350
_0802FC08: .4byte gGameMode
_0802FC0C: .4byte gNumLives
_0802FC10: .4byte sub_802FC14

	thumb_func_start sub_802FC14
sub_802FC14: @ 0x0802FC14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0802FE2C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _0802FE30 @ =0x0300000C
	adds r7, r1, r2
	ldr r3, _0802FE34 @ =0x0300003C
	adds r3, r1, r3
	str r3, [sp, #4]
	ldr r2, [r4]
	adds r0, #0x90
	adds r5, r1, r0
	ldrh r0, [r5]
	adds r0, #0x28
	strh r0, [r5]
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r3, [r4, #0x74]
	adds r3, r3, r0
	str r3, [r4, #0x74]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x70]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r0, r0, r2
	asrs r3, r3, #8
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x18
	lsrs r2, r1, #0x10
	mov r8, r2
	asrs r1, r1, #0x10
	ldr r2, _0802FE38 @ =sa2__sub_801EC3C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _0802FCB4
	lsls r1, r0, #8
	ldr r0, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x74]
	ldrh r1, [r5]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0802FE3C @ =0xFFFFFF00
	cmp r0, r1
	ble _0802FCB4
	movs r0, #0
	strh r0, [r5]
	mov r3, sb
	ldr r1, [r3]
	ldr r0, _0802FE40 @ =sub_802FE88
	str r0, [r1, #8]
_0802FCB4:
	ldr r0, [r7, #0x10]
	ldr r1, _0802FE44 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r0, _0802FE48 @ =gPlayer
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _0802FCDC
	ldr r2, _0802FE4C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802FE50 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0802FE54 @ =gWinRegs
	strh r3, [r0, #0xa]
	ldr r0, _0802FE58 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
_0802FCDC:
	adds r1, r4, #0
	adds r1, #0x88
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r4, #7
	ands r0, r4
	lsls r6, r6, #0x10
	str r6, [sp, #8]
	mov r1, r8
	lsls r1, r1, #0x10
	mov sl, r1
	cmp r0, #0
	bne _0802FDD6
	ldr r2, _0802FE5C @ =gPseudoRandom
	mov sb, r2
	ldr r0, [r2]
	ldr r3, _0802FE60 @ =0x00196225
	muls r0, r3, r0
	ldr r1, _0802FE64 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ands r4, r0
	ldr r0, _0802FE68 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _0802FE6C @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _0802FE70 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _0802FE74 @ =sub_80177EC
	str r0, [sp]
	adds r0, r6, #0
	bl sub_801769C
	ldrh r3, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r3, r5
	mov r2, sl
	asrs r0, r2, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	ldr r4, [sp, #8]
	asrs r1, r4, #0x10
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #0x28
	strh r2, [r5, #0x3e]
	ldr r2, _0802FE78 @ =0x03000040
	adds r3, r3, r2
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r4, _0802FE60 @ =0x00196225
	adds r6, r2, #0
	muls r6, r4, r6
	ldr r2, _0802FE64 @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _0802FE7C @ =gSineTable
	mov r8, r3
	ldr r3, _0802FE80 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	mov ip, r2
	movs r4, #0
	ldrsh r2, [r2, r4]
	mov ip, r2
	lsls r2, r2, #1
	add r2, ip
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r4, #0
	ldrsh r3, [r3, r4]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _0802FE60 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r4, _0802FE64 @ =0x3C6EF35F
	adds r3, r3, r4
	mov r2, sb
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r3, #0x20
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_0802FDD6:
	ldr r2, _0802FE84 @ =gCamera
	ldrh r1, [r2]
	mov r3, sl
	asrs r0, r3, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	ldrh r1, [r2, #2]
	ldr r4, [sp, #8]
	asrs r0, r4, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldr r0, _0802FE2C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802FE30 @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _0802FE34 @ =0x0300003C
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802FE2C: .4byte gCurTask
_0802FE30: .4byte 0x0300000C
_0802FE34: .4byte 0x0300003C
_0802FE38: .4byte sa2__sub_801EC3C
_0802FE3C: .4byte 0xFFFFFF00
_0802FE40: .4byte sub_802FE88
_0802FE44: .4byte 0xFFFFFE7F
_0802FE48: .4byte gPlayer
_0802FE4C: .4byte gDispCnt
_0802FE50: .4byte 0x00007FFF
_0802FE54: .4byte gWinRegs
_0802FE58: .4byte gBldRegs
_0802FE5C: .4byte gPseudoRandom
_0802FE60: .4byte 0x00196225
_0802FE64: .4byte 0x3C6EF35F
_0802FE68: .4byte gUnknown_080BB434
_0802FE6C: .4byte gUnknown_080BB41C
_0802FE70: .4byte gUnknown_080BB42C
_0802FE74: .4byte sub_80177EC
_0802FE78: .4byte 0x03000040
_0802FE7C: .4byte gSineTable
_0802FE80: .4byte 0x000001FF
_0802FE84: .4byte gCamera

	thumb_func_start sub_802FE88
sub_802FE88: @ 0x0802FE88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0802FF60 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r3, r2, r5
	ldr r4, _0802FF64 @ =0x0300000C
	adds r4, r4, r2
	mov sl, r4
	ldr r7, _0802FF68 @ =0x0300003C
	adds r7, r2, r7
	str r7, [sp, #4]
	ldr r4, [r3]
	ldrb r1, [r3, #8]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #0x70]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, r8
	str r0, [sp, #8]
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #0x74]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	str r7, [sp, #0xc]
	ldr r1, _0802FF6C @ =0x03000088
	adds r2, r2, r1
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bls _0802FFA8
	mov r2, r8
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r1, r7, #0x10
	asrs r5, r1, #0x10
	ldr r3, _0802FF70 @ =0xFFF80000
	adds r1, r1, r3
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8015C5C
	adds r0, r4, #0
	adds r1, r5, #0
	bl CreateBossCapsule
	ldr r1, _0802FF74 @ =gMusicManagerState
	movs r6, #0
	movs r0, #0x30
	strb r0, [r1, #1]
	ldr r3, _0802FF78 @ =0x0000026F
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x10
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r3, r2, r4
	ldr r7, _0802FF7C @ =0x03000046
	adds r1, r2, r7
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _0802FF80 @ =0x03000048
	adds r0, r2, r1
	strh r6, [r0]
	adds r4, #0x42
	adds r1, r2, r4
	movs r0, #0x80
	strh r0, [r1]
	mov r7, sl
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0802FF84
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	adds r4, #2
	adds r0, r2, r4
	strh r1, [r0]
	b _0802FF8E
	.align 2, 0
_0802FF60: .4byte gCurTask
_0802FF64: .4byte 0x0300000C
_0802FF68: .4byte 0x0300003C
_0802FF6C: .4byte 0x03000088
_0802FF70: .4byte 0xFFF80000
_0802FF74: .4byte gMusicManagerState
_0802FF78: .4byte 0x0000026F
_0802FF7C: .4byte 0x03000046
_0802FF80: .4byte 0x03000048
_0802FF84:
	ldr r7, _0802FFA0 @ =0x03000044
	adds r1, r2, r7
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
_0802FF8E:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x3c
	strh r0, [r1]
	ldr r0, _0802FFA4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080300D6
	.align 2, 0
_0802FFA0: .4byte 0x03000044
_0802FFA4: .4byte gCurTask
_0802FFA8:
	movs r4, #7
	ands r1, r4
	cmp r1, #0
	bne _0803008A
	ldr r0, _080300E8 @ =gPseudoRandom
	mov sb, r0
	ldr r0, [r0]
	ldr r1, _080300EC @ =0x00196225
	muls r0, r1, r0
	ldr r2, _080300F0 @ =0x3C6EF35F
	adds r0, r0, r2
	mov r3, sb
	str r0, [r3]
	ands r4, r0
	ldr r0, _080300F4 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _080300F8 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _080300FC @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _08030100 @ =sub_80177EC
	str r0, [sp]
	adds r0, r6, #0
	bl sub_801769C
	ldrh r3, [r0, #6]
	adds r5, r3, r5
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #0x28
	strh r2, [r5, #0x3e]
	ldr r7, _08030104 @ =0x03000040
	adds r3, r3, r7
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r4, _080300EC @ =0x00196225
	adds r6, r2, #0
	muls r6, r4, r6
	ldr r7, _080300F0 @ =0x3C6EF35F
	adds r6, r6, r7
	str r6, [r3]
	ldr r2, _08030108 @ =gSineTable
	mov r8, r2
	ldr r3, _0803010C @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	movs r7, #0
	ldrsh r4, [r2, r7]
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r4, #0
	ldrsh r3, [r3, r4]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r7, _080300EC @ =0x00196225
	adds r3, r6, #0
	muls r3, r7, r3
	ldr r2, _080300F0 @ =0x3C6EF35F
	adds r3, r3, r2
	mov r4, sb
	str r3, [r4]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r3, #0x20
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_0803008A:
	ldr r2, _08030110 @ =gCamera
	ldrh r1, [r2]
	ldr r7, [sp, #8]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	mov r1, sl
	strh r0, [r1, #0x16]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	mov r3, sl
	strh r0, [r3, #0x18]
	ldr r4, _08030114 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	ldr r7, _08030118 @ =0x0300000C
	adds r2, r0, r7
	ldr r1, _0803011C @ =0x0300003C
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_080300D6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080300E8: .4byte gPseudoRandom
_080300EC: .4byte 0x00196225
_080300F0: .4byte 0x3C6EF35F
_080300F4: .4byte gUnknown_080BB434
_080300F8: .4byte gUnknown_080BB41C
_080300FC: .4byte gUnknown_080BB42C
_08030100: .4byte sub_80177EC
_08030104: .4byte 0x03000040
_08030108: .4byte gSineTable
_0803010C: .4byte 0x000001FF
_08030110: .4byte gCamera
_08030114: .4byte gCurTask
_08030118: .4byte 0x0300000C
_0803011C: .4byte 0x0300003C

	thumb_func_start sub_8030120
sub_8030120: @ 0x08030120
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _080301C0 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r1, r2
	ldrh r0, [r0]
	adds r0, r0, r2
	ldrh r6, [r0, #6]
	ldr r0, _080301C4 @ =0x03000042
	adds r1, r1, r0
	ldrb r0, [r1]
	mov sl, r3
	cmp r0, #0
	beq _080301FA
	ldr r1, _080301C8 @ =gUnknown_084ACEA4
	adds r2, #0x8e
	adds r0, r6, r2
	ldrb r2, [r0]
	movs r0, #7
	ands r0, r2
	lsls r0, r0, #1
	adds r1, #1
	adds r0, r0, r1
	ldrb r4, [r0]
	ldr r5, _080301CC @ =gUnknown_084ACE24
	lsls r4, r4, #4
	adds r0, r4, r5
	ldr r0, [r0]
	mov sb, r0
	str r0, [r7, #0x30]
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [r7, #0x34]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	ldr r3, _080301D0 @ =gUnknown_084ACDC0
	mov r8, r3
	ldr r0, _080301D4 @ =0x0300008A
	adds r6, r6, r0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldr r0, [r1]
	muls r0, r2, r0
	movs r1, #0xa
	bl __divsi3
	str r0, [r7, #0x38]
	adds r5, #0xc
	adds r4, r4, r5
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4]
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	str r0, [r7, #0x3c]
	ldr r0, _080301D8 @ =0xFFFF7400
	cmp sb, r0
	blt _080301E0
	ldr r0, [r7, #0x10]
	ldr r1, _080301DC @ =0xFFFFFBFF
	ands r0, r1
	b _080301E8
	.align 2, 0
_080301C0: .4byte gCurTask
_080301C4: .4byte 0x03000042
_080301C8: .4byte gUnknown_084ACEA4
_080301CC: .4byte gUnknown_084ACE24
_080301D0: .4byte gUnknown_084ACDC0
_080301D4: .4byte 0x0300008A
_080301D8: .4byte 0xFFFF7400
_080301DC: .4byte 0xFFFFFBFF
_080301E0:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_080301E8:
	str r0, [r7, #0x10]
	adds r1, r7, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	mov r3, sl
	ldr r1, [r3]
	ldr r0, _08030208 @ =sub_803020C
	str r0, [r1, #8]
_080301FA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030208: .4byte sub_803020C

	thumb_func_start sub_803020C
sub_803020C: @ 0x0803020C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _080302D4 @ =gCurTask
	ldr r2, [r3]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r5, r0, r1
	adds r4, r6, #0
	ldr r7, [r5]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x38]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	movs r0, #0x9c
	lsls r0, r0, #9
	adds r1, r1, r0
	movs r0, #0xac
	lsls r0, r0, #9
	cmp r1, r0
	bhi _0803025A
	ldr r0, _080302D8 @ =0xFFFF3000
	cmp r2, r0
	blt _0803025A
	movs r0, #0xa0
	lsls r0, r0, #6
	cmp r2, r0
	ble _08030260
_0803025A:
	ldr r1, [r3]
	ldr r0, _080302DC @ =sub_8030120
	str r0, [r1, #8]
_08030260:
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #0x30]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #0x34]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _080302D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	ldr r3, _080302E0 @ =gPlayer
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	mov r8, r0
	ldr r0, _080302E4 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080302EC
	ldr r3, _080302E8 @ =gPartner
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	b _080302EE
	.align 2, 0
_080302D4: .4byte gCurTask
_080302D8: .4byte 0xFFFF3000
_080302DC: .4byte sub_8030120
_080302E0: .4byte gPlayer
_080302E4: .4byte gNumSingleplayerCharacters
_080302E8: .4byte gPartner
_080302EC:
	movs r0, #0
_080302EE:
	mov r1, r8
	cmp r1, #2
	beq _080302F8
	cmp r0, #2
	bne _08030322
_080302F8:
	ldr r0, _08030350 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r0, r0, r2
	ldrh r2, [r0, #6]
	ldr r0, _08030354 @ =0x0300003C
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08030358 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r1, _0803035C @ =0x0300005D
	adds r2, r2, r1
	movs r0, #0xff
	strb r0, [r2]
_08030322:
	ldr r2, _08030360 @ =gCamera
	ldrh r1, [r2]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r1, [r2, #2]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030350: .4byte gCurTask
_08030354: .4byte 0x0300003C
_08030358: .4byte 0xFFFFBFFF
_0803035C: .4byte 0x0300005D
_08030360: .4byte gCamera

	thumb_func_start sub_8030364
sub_8030364: @ 0x08030364
	push {r4, r5, lr}
	ldr r4, _080303C4 @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r3, [r0, #6]
	adds r3, r3, r1
	ldr r1, [r3]
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r5, #0x30]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x34]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _080303C8 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, #0x78
	cmp r2, r0
	bge _080303CC
	movs r0, #0x80
	lsls r0, r0, #2
	b _080303CE
	.align 2, 0
_080303C4: .4byte gCurTask
_080303C8: .4byte gCamera
_080303CC:
	ldr r0, _080303DC @ =0xFFFFFE00
_080303CE:
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	bne _080303E4
	ldr r0, _080303E0 @ =0xFFFFFA00
	b _080303F6
	.align 2, 0
_080303DC: .4byte 0xFFFFFE00
_080303E0: .4byte 0xFFFFFA00
_080303E4:
	cmp r0, #0
	bge _080303F0
	ldr r1, _080303EC @ =0xFFFFFD00
	b _080303F4
	.align 2, 0
_080303EC: .4byte 0xFFFFFD00
_080303F0:
	movs r1, #0xc0
	lsls r1, r1, #2
_080303F4:
	adds r0, r0, r1
_080303F6:
	str r0, [r5, #0x3c]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r4]
	ldr r0, _08030410 @ =sub_8030414
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030410: .4byte sub_8030414

	thumb_func_start sub_8030414
sub_8030414: @ 0x08030414
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08030450 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	mov r8, r5
	ldrh r0, [r3]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r7, [r6]
	ldr r0, _08030454 @ =0x03000040
	adds r2, r2, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _08030458
	adds r0, r3, #0
	bl TaskDestroy
	b _0803051A
	.align 2, 0
_08030450: .4byte gCurTask
_08030454: .4byte 0x03000040
_08030458:
	ldr r4, [r5, #0x3c]
	adds r4, #0x28
	str r4, [r5, #0x3c]
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x38]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	ldr r3, [r5, #0x34]
	adds r3, r3, r4
	str r3, [r5, #0x34]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	asrs r1, r1, #8
	adds r2, r2, r1
	lsls r2, r2, #0x10
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r3, r3, #8
	adds r1, r1, r3
	lsls r1, r1, #0x10
	ldr r3, _08030528 @ =gCamera
	ldrh r0, [r3]
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r5, #0x18]
	cmp r4, #0
	ble _080304CC
	adds r0, r1, #0
	adds r0, #0x18
	ldr r1, _0803052C @ =sa2__sub_801EC3C
	str r1, [sp]
	adds r1, r2, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _080304CC
	lsls r1, r0, #8
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	ldr r1, [r5, #0x3c]
	asrs r0, r1, #2
	subs r0, r0, r1
	str r0, [r5, #0x3c]
_080304CC:
	mov r0, r8
	adds r0, #0x40
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0803050E
	ldr r3, _08030530 @ =gPseudoRandom
	ldr r1, [r3]
	ldr r0, _08030534 @ =0x00196225
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _08030538 @ =0x3C6EF35F
	adds r2, r2, r0
	str r2, [r3]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x3f
	ands r1, r2
	adds r0, r0, r1
	subs r0, #0x20
	lsls r0, r0, #8
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r3, #0xfc
	lsls r3, r3, #0xe
	ands r2, r3
	asrs r2, r2, #0x10
	subs r2, #0x20
	subs r1, r1, r2
	lsls r1, r1, #8
	bl sub_8017540
_0803050E:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0803051A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030528: .4byte gCamera
_0803052C: .4byte sa2__sub_801EC3C
_08030530: .4byte gPseudoRandom
_08030534: .4byte 0x00196225
_08030538: .4byte 0x3C6EF35F

	thumb_func_start sub_803053C
sub_803053C: @ 0x0803053C
	push {r4, r5, r6, lr}
	ldr r5, _08030588 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	ldr r0, _0803058C @ =0x03000045
	adds r1, r4, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08030582
	ldr r2, _08030590 @ =gUnknown_084ACE12
	ldr r6, _08030594 @ =0x03000044
	adds r3, r4, r6
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r6, #4
	adds r0, r4, r6
	strh r1, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r2, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, _08030598 @ =0x03000042
	adds r0, r4, r2
	strh r1, [r0]
	ldr r1, [r5]
	ldr r0, _0803059C @ =sub_80305A0
	str r0, [r1, #8]
_08030582:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08030588: .4byte gCurTask
_0803058C: .4byte 0x03000045
_08030590: .4byte gUnknown_084ACE12
_08030594: .4byte 0x03000044
_08030598: .4byte 0x03000042
_0803059C: .4byte sub_80305A0

	thumb_func_start sub_80305A0
sub_80305A0: @ 0x080305A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08030620 @ =gCurTask
	ldr r5, [r0]
	ldrh r4, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov ip, r0
	ldr r0, [r0, #0x48]
	ldr r1, _08030624 @ =0x0300000C
	adds r6, r4, r1
	mov r2, ip
	ldr r2, [r2]
	mov r8, r2
	adds r0, #0x8a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _08030638
	ldr r2, _08030628 @ =gUnknown_084ACE12
	ldr r3, _0803062C @ =0x03000044
	adds r0, r4, r3
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r7, _08030630 @ =0x03000040
	adds r2, r4, r7
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	asrs r0, r0, #0x14
	ldrh r7, [r2]
	adds r0, r0, r7
	strh r0, [r2]
	ldr r7, _08030634 @ =0x03000042
	adds r0, r4, r7
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r7, [r0]
	adds r1, r1, r7
	strh r1, [r0]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, r3
	bne _08030678
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _08030678
	adds r0, r5, #0
	bl TaskDestroy
	b _08030700
	.align 2, 0
_08030620: .4byte gCurTask
_08030624: .4byte 0x0300000C
_08030628: .4byte gUnknown_084ACE12
_0803062C: .4byte 0x03000044
_08030630: .4byte 0x03000040
_08030634: .4byte 0x03000042
_08030638:
	ldr r0, _0803070C @ =0x03000040
	adds r1, r4, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0803064A
	adds r0, r2, #1
	strh r0, [r1]
_0803064A:
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	ble _08030658
	subs r0, r2, #1
	strh r0, [r1]
_08030658:
	ldr r0, _08030710 @ =0x03000042
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _0803066A
	adds r0, r1, #1
	strh r0, [r2]
_0803066A:
	ldrh r1, [r2]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0
	ble _08030678
	subs r0, r1, #1
	strh r0, [r2]
_08030678:
	mov r0, ip
	ldrb r1, [r0, #8]
	lsls r1, r1, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, ip
	ldrh r2, [r2, #0x3c]
	adds r1, r1, r2
	mov r0, ip
	adds r0, #0x40
	ldrh r3, [r0]
	adds r3, r3, r1
	mov r7, r8
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	mov r2, ip
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrh r7, [r2, #0x3e]
	adds r1, r1, r7
	mov r0, ip
	adds r0, #0x42
	ldrh r2, [r0]
	adds r2, r2, r1
	ldr r1, _08030714 @ =gCamera
	ldrh r0, [r1]
	lsls r3, r3, #0x10
	asrs r5, r3, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r1, #2]
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x18]
	mov r0, ip
	adds r0, #0x44
	ldrb r1, [r0]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080306F4
	ldr r3, _08030718 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80096B0
	ldr r0, _0803071C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080306F4
	ldr r3, _08030720 @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80096B0
_080306F4:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08030700:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803070C: .4byte 0x03000040
_08030710: .4byte 0x03000042
_08030714: .4byte gCamera
_08030718: .4byte gPlayer
_0803071C: .4byte gNumSingleplayerCharacters
_08030720: .4byte gPartner

	thumb_func_start TaskDestructor_EggBall
TaskDestructor_EggBall: @ 0x08030724
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8030740
sub_8030740: @ 0x08030740
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8030754
sub_8030754: @ 0x08030754
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r0, r1
	adds r1, #0x44
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	cmp r0, #0
	bne _08030774
	ldr r0, [r2, #0x10]
	bl VramFree
_08030774:
	pop {r0}
	bx r0

	thumb_func_start sub_8030778
sub_8030778: @ 0x08030778
	push {r4, r5, r6, r7, lr}
	ldr r2, _080307B8 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _080307BC @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _080307C0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080307C8
	ldr r3, _080307C4 @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _080307CA
	.align 2, 0
_080307B8: .4byte gCurTask
_080307BC: .4byte gPlayer
_080307C0: .4byte gNumSingleplayerCharacters
_080307C4: .4byte gPartner
_080307C8:
	movs r0, #0
_080307CA:
	cmp r7, #2
	beq _080307D2
	cmp r0, #2
	bne _080307FC
_080307D2:
	ldr r0, _08030804 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _08030808 @ =0x0300003C
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0803080C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08030810 @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_080307FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030804: .4byte gCurTask
_08030808: .4byte 0x0300003C
_0803080C: .4byte 0xFFFFBFFF
_08030810: .4byte 0x0300005D

	thumb_func_start sub_8030814
sub_8030814: @ 0x08030814
	ldr r0, _08030844 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _08030848 @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08030840
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08030840
	movs r0, #0
	strb r0, [r3]
	ldr r0, _0803084C @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_08030840:
	bx lr
	.align 2, 0
_08030844: .4byte gCurTask
_08030848: .4byte 0x0300003C
_0803084C: .4byte 0x0300005D

@ inline?
	thumb_func_start sub_8030850
sub_8030850: @ 0x08030850
	ldr r0, _08030868 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0803086C @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_08030868: .4byte gCurTask
_0803086C: .4byte 0x0300000C

@ inline?
	thumb_func_start sub_8030870
sub_8030870: @ 0x08030870
	push {r4, lr}
	ldr r2, _08030898 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _0803089C @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _080308A0 @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08030898: .4byte gCurTask
_0803089C: .4byte 0x0300000C
_080308A0: .4byte gCamera
