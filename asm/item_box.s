.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_Itembox2
Task_Itembox2: @ 0x0801EC28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0801ECA0 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldr r4, [r7]
	adds r0, #0x6c
	adds r3, r5, r0
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	ldr r1, _0801ECA4 @ =0x03000070
	adds r0, r5, r1
	ldrb r2, [r0]
	adds r2, #1
	strb r2, [r0]
	ldrb r0, [r7, #8]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrh r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x3b
	bhi _0801EC84
	b _0801F006
_0801EC84:
	ldr r2, _0801ECA8 @ =0x03000071
	adds r0, r5, r2
	ldrb r0, [r0]
	ldr r3, _0801ECA4 @ =0x03000070
	adds r4, r5, r3
	cmp r0, #0xa
	bls _0801EC94
	b _0801EFFA
_0801EC94:
	lsls r0, r0, #2
	ldr r1, _0801ECAC @ =_0801ECB0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801ECA0: .4byte gCurTask
_0801ECA4: .4byte 0x03000070
_0801ECA8: .4byte 0x03000071
_0801ECAC: .4byte _0801ECB0
_0801ECB0: @ jump table
	.4byte _0801ECDC_case_0 @ case 0 - 1-UP
	.4byte _0801ECF4_case_1 @ case 1 - Shield
	.4byte _0801ED18_case_2 @ case 2 - Magnetic Shield
	.4byte _0801ED3C_case_3 @ case 3 - Invincibility
	.4byte _0801ED78_case_4 @ case 4 - Speed Shoes
	.4byte _0801EDBC_case_5 @ case 5 - Rings RNG
	.4byte _0801EE60_case_6 @ case 6 - Rings 5
	.4byte _0801EED0_case_7 @ case 7 - Rings 10
	.4byte _0801EF44_case_8 @ case 8 - MP 8
	.4byte _0801EFD8_case_9 @ case 9 - MP 9
	.4byte _0801EFE8_case_10 @ case 10 - MP 10
_0801ECDC_case_0:
	ldr r1, _0801ECEC @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0801ECF0 @ =gMusicManagerState
	movs r0, #0x10
	strb r0, [r1, #3]
	b _0801EFF6
	.align 2, 0
_0801ECEC: .4byte gNumLives
_0801ECF0: .4byte gMusicManagerState
_0801ECF4_case_1:
	ldr r2, _0801ED14 @ =gPlayer
	adds r3, r2, #0
	adds r3, #0x26
	ldrb r1, [r3]
	movs r0, #1
	orrs r0, r1
	movs r1, #0xf7
	ands r0, r1
	strb r0, [r3]
	adds r2, #0x3c
	movs r0, #0
	ldrsb r0, [r2, r0]
	bl CreateItemTask_Shield_Normal
	b _0801EFF6
	.align 2, 0
_0801ED14: .4byte gPlayer
_0801ED18_case_2:
	ldr r2, _0801ED38 @ =gPlayer
	adds r3, r2, #0
	adds r3, #0x26
	ldrb r1, [r3]
	movs r0, #0xfe
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
	adds r2, #0x3c
	movs r0, #0
	ldrsb r0, [r2, r0]
	bl CreateItemTask_Shield_Magnetic
	b _0801EFF6
	.align 2, 0
_0801ED38: .4byte gPlayer
_0801ED3C_case_3:
	ldr r4, _0801ED70 @ =gPlayer
	adds r5, r4, #0
	adds r5, #0x26
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801ED60
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl CreateItemTask_Invincibility
	ldr r1, _0801ED74 @ =gMusicManagerState
	movs r0, #0x10
	strb r0, [r1, #2]
_0801ED60:
	ldrb r0, [r5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r4, #0x1e]
	b _0801EFF6
	.align 2, 0
_0801ED70: .4byte gPlayer
_0801ED74: .4byte gMusicManagerState
_0801ED78_case_4:
	ldr r2, _0801EDB0 @ =gPlayer
	adds r5, r2, #0
	adds r5, #0x26
	ldrb r1, [r5]
	movs r0, #4
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r2, #0x20]
	ldr r0, _0801EDB4 @ =gMPlayInfo_BGM
	movs r1, #0x80
	lsls r1, r1, #2
	bl m4aMPlayTempoControl
	ldr r0, _0801EDB8 @ =gGameMode
	ldrb r0, [r0]
	adds r4, r7, #0
	adds r4, #0x70
	cmp r0, #1
	bhi _0801EDA4
	b _0801EFFA
_0801EDA4:
	ldrb r1, [r5]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r5]
	b _0801EFFA
	.align 2, 0
_0801EDB0: .4byte gPlayer
_0801EDB4: .4byte gMPlayInfo_BGM
_0801EDB8: .4byte gGameMode
_0801EDBC_case_5:
	ldr r4, _0801EE3C @ =ItemBox_RingAmountTable
	ldr r2, _0801EE40 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0801EE44 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801EE48 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #6
	bl __umodsi3
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0801EE4C @ =gRingCount
	ldrh r5, [r1]
	adds r0, r5, r0
	strh r0, [r1]
	ldr r0, _0801EE50 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _0801EE1E
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _0801EE1E
	ldr r0, _0801EE54 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801EE1E
	ldr r1, _0801EE58 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0801EE5C @ =gMusicManagerState
	movs r0, #0x10
	strb r0, [r1, #3]
_0801EE1E:
	ldr r0, _0801EE54 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801EE32
	ldr r1, _0801EE4C @ =gRingCount
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _0801EE32
	movs r0, #0xff
	strh r0, [r1]
_0801EE32:
	movs r0, #0x75
	bl m4aSongNumStart
	b _0801EFF6
	.align 2, 0
_0801EE3C: .4byte ItemBox_RingAmountTable
_0801EE40: .4byte gPseudoRandom
_0801EE44: .4byte 0x00196225
_0801EE48: .4byte 0x3C6EF35F
_0801EE4C: .4byte gRingCount
_0801EE50: .4byte gCurrentLevel
_0801EE54: .4byte gGameMode
_0801EE58: .4byte gNumLives
_0801EE5C: .4byte gMusicManagerState
_0801EE60_case_6:
	ldr r1, _0801EEBC @ =gRingCount
	ldrh r5, [r1]
	adds r0, r5, #5
	strh r0, [r1]
	ldr r0, _0801EEC0 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _0801EEA0
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _0801EEA0
	ldr r0, _0801EEC4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801EEA0
	ldr r1, _0801EEC8 @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0801EECC @ =gMusicManagerState
	movs r0, #0x10
	strb r0, [r1, #3]
_0801EEA0:
	ldr r0, _0801EEC4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801EEB4
	ldr r1, _0801EEBC @ =gRingCount
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _0801EEB4
	movs r0, #0xff
	strh r0, [r1]
_0801EEB4:
	movs r0, #0x75
	bl m4aSongNumStart
	b _0801EFF6
	.align 2, 0
_0801EEBC: .4byte gRingCount
_0801EEC0: .4byte gCurrentLevel
_0801EEC4: .4byte gGameMode
_0801EEC8: .4byte gNumLives
_0801EECC: .4byte gMusicManagerState
_0801EED0_case_7:
	ldr r1, _0801EF30 @ =gRingCount
	ldrh r5, [r1]
	adds r0, r5, #0
	adds r0, #0xa
	strh r0, [r1]
	ldr r0, _0801EF34 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _0801EF12
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _0801EF12
	ldr r0, _0801EF38 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801EF12
	ldr r1, _0801EF3C @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0801EF40 @ =gMusicManagerState
	movs r0, #0x10
	strb r0, [r1, #3]
_0801EF12:
	ldr r0, _0801EF38 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0801EF26
	ldr r1, _0801EF30 @ =gRingCount
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _0801EF26
	movs r0, #0xff
	strh r0, [r1]
_0801EF26:
	movs r0, #0x75
	bl m4aSongNumStart
	b _0801EFF6
	.align 2, 0
_0801EF30: .4byte gRingCount
_0801EF34: .4byte gCurrentLevel
_0801EF38: .4byte gGameMode
_0801EF3C: .4byte gNumLives
_0801EF40: .4byte gMusicManagerState
_0801EF44_case_8:
	movs r2, #0
	mov sb, r2
	mov r8, r2
	movs r5, #0
	ldr r1, _0801EFC4 @ =gMultiplayerPlayerTasks
	ldr r0, [r1]
	adds r4, r7, #0
	adds r4, #0x70
	cmp r0, #0
	beq _0801EFAE
	ldr r3, _0801EFC8 @ =gPlayer
	mov ip, r3
	adds r6, r1, #0
_0801EF5E:
	ldr r0, _0801EFCC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r5, r0
	beq _0801EFA0
	ldr r0, [r6]
	ldrh r2, [r0, #6]
	ldr r1, _0801EFD0 @ =0x03000050
	adds r0, r2, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r3, ip
	ldr r0, [r3]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r1, #0
	muls r3, r1, r3
	ldr r0, _0801EFD4 @ =0x03000052
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r2, ip
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r0, r1, #0
	muls r0, r1, r0
	adds r3, r3, r0
	cmp r8, r3
	bhs _0801EFA0
	mov r8, r3
	mov sb, r5
_0801EFA0:
	adds r6, #4
	adds r5, #1
	cmp r5, #3
	bhi _0801EFAE
	ldr r0, [r6]
	cmp r0, #0
	bne _0801EF5E
_0801EFAE:
	bl CreateRoomEvent
	adds r2, r0, #0
	movs r0, #6
	strb r0, [r2]
	movs r0, #4
	strb r0, [r2, #1]
	mov r3, sb
	strb r3, [r2, #2]
	b _0801EFFA
	.align 2, 0
_0801EFC4: .4byte gMultiplayerPlayerTasks
_0801EFC8: .4byte gPlayer
_0801EFCC: .4byte 0x04000128
_0801EFD0: .4byte 0x03000050
_0801EFD4: .4byte 0x03000052
_0801EFD8_case_9:
	bl CreateRoomEvent
	adds r2, r0, #0
	movs r1, #0
	movs r0, #6
	strb r0, [r2]
	strb r1, [r2, #1]
	b _0801EFF6
_0801EFE8_case_10:
	bl CreateRoomEvent
	adds r2, r0, #0
	movs r0, #6
	strb r0, [r2]
	movs r0, #5
	strb r0, [r2, #1]
_0801EFF6:
	adds r4, r7, #0
	adds r4, #0x70
_0801EFFA:
	ldr r0, _0801F038 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F03C @ =Task_Itembox4
	str r0, [r1, #8]
	movs r0, #0
	strb r0, [r4]
_0801F006:
	adds r0, r7, #0
	adds r0, #0x3c
	ldr r3, _0801F040 @ =gCamera
	ldrh r2, [r3]
	ldr r4, [sp]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x16]
	ldrh r2, [r3, #2]
	mov r3, sl
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x18]
	bl DisplaySprite
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F038: .4byte gCurTask
_0801F03C: .4byte Task_Itembox4
_0801F040: .4byte gCamera

	thumb_func_start Task_Itembox3
Task_Itembox3: @ 0x0801F044
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0801F0D0 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r7, r3
	ldr r5, [r3]
	ldr r1, _0801F0D4 @ =0x0300006C
	adds r4, r7, r1
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	ldr r0, _0801F0D8 @ =0x03000070
	adds r6, r7, r0
	ldrb r2, [r6]
	adds r2, #1
	strb r2, [r6]
	ldrb r0, [r3, #8]
	lsls r0, r0, #3
	ldrh r1, [r3, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	ldrh r1, [r3, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrh r4, [r4]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x3b
	bls _0801F0A4
	mov r1, r8
	ldr r0, [r1]
	ldr r1, _0801F0DC @ =Task_Itembox4
	str r1, [r0, #8]
	movs r0, #0
	strb r0, [r6]
_0801F0A4:
	ldr r5, _0801F0E0 @ =0x0300003C
	adds r0, r7, r5
	ldr r3, _0801F0E4 @ =gCamera
	ldrh r2, [r3]
	mov r5, ip
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x16]
	ldrh r2, [r3, #2]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x18]
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F0D0: .4byte gCurTask
_0801F0D4: .4byte 0x0300006C
_0801F0D8: .4byte 0x03000070
_0801F0DC: .4byte Task_Itembox4
_0801F0E0: .4byte 0x0300003C
_0801F0E4: .4byte gCamera

	thumb_func_start Task_Itembox4
Task_Itembox4: @ 0x0801F0E8
	push {r4, r5, lr}
	ldr r2, _0801F114 @ =gCurTask
	ldr r0, [r2]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	ldr r5, [r3]
	adds r0, #0x70
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0801F118
	ldr r0, [r2]
	bl TaskDestroy
	b _0801F152
	.align 2, 0
_0801F114: .4byte gCurTask
_0801F118:
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	ldr r5, _0801F158 @ =0x0300006C
	adds r3, r4, r5
	adds r1, r1, r0
	ldrh r3, [r3]
	adds r1, r1, r3
	ldr r3, _0801F15C @ =0x0300003C
	adds r0, r4, r3
	ldr r4, _0801F160 @ =gCamera
	ldrh r3, [r4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r3
	strh r2, [r0, #0x16]
	ldrh r2, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x18]
	bl DisplaySprite
_0801F152:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F158: .4byte 0x0300006C
_0801F15C: .4byte 0x0300003C
_0801F160: .4byte gCamera

	thumb_func_start TaskDestructor_ItemBox
TaskDestructor_ItemBox: @ 0x0801F164
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
