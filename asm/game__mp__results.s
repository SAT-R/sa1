.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ NOTE: Not sure whether this module is only about the result screen

	thumb_func_start sub_8018538
sub_8018538: @ 0x08018538
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080186DC @ =gMultiplayerMissingHeartbeats
	movs r5, #0
	strb r5, [r0, #3]
	strb r5, [r0, #2]
	strb r5, [r0, #1]
	strb r5, [r0]
	ldr r1, _080186E0 @ =gDispCnt
	ldr r2, _080186E4 @ =0x00001141
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080186E8 @ =gBgCntRegs
	movs r3, #0
	mov r8, r3
	ldr r0, _080186EC @ =0x00001E03
	strh r0, [r1]
	ldr r0, _080186F0 @ =gBldRegs
	strh r5, [r0]
	strh r5, [r0, #4]
	ldr r0, _080186F4 @ =sub_801874C
	movs r1, #0x87
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #6
	mov sl, r2
	str r5, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r6, r4, r6     @ r6 = struct Background*
	ldr r3, _080186F8 @ =0x03000200
	adds r0, r4, r3
	strh r5, [r0]
	ldr r1, _080186FC @ =0x03000203
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	subs r3, #4
	adds r0, r4, r3
	str r5, [r0]
	adds r1, #0x10
	adds r0, r4, r1
	strb r2, [r0]
	ldr r3, _08018700 @ =0x03000040
	adds r2, r4, r3
	movs r0, #0xe8
	strh r0, [r2, #0x16]
	movs r7, #0x40
	strh r7, [r2, #0x18]
	ldr r0, _08018704 @ =0x06010000
	str r0, [r2, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r1, _08018708 @ =gUnknown_080BB488
	ldr r3, _0801870C @ =gLoadedSaveGame
	ldrb r0, [r3, #0x19]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	ldr r1, _08018710 @ =0x03000060
	adds r0, r4, r1
	mov r3, r8
	strb r3, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _08018714 @ =0x03000061
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08018718 @ =0x03000062
	adds r0, r4, r1
	movs r3, #0x10
	mov sb, r3
	mov r1, sb
	strb r1, [r0]
	ldr r3, _0801871C @ =0x03000065
	adds r0, r4, r3
	mov r1, r8
	strb r1, [r0]
	mov r3, sl
	str r3, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, _08018720 @ =0x03000070
	adds r2, r4, r0
	strh r5, [r2, #0x16]
	strh r7, [r2, #0x18]
	ldr r0, _08018724 @ =0x060102C0
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	subs r0, #0xa4
	strh r0, [r2, #0xa]
	ldr r1, _08018728 @ =0x03000090
	adds r0, r4, r1
	mov r3, r8
	strb r3, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _0801872C @ =0x03000091
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08018730 @ =0x03000092
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, r8
	strb r3, [r0]
	mov r0, sl
	str r0, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r1, _08018734 @ =0x030001C0
	adds r2, r4, r1
	movs r0, #0x78
	strh r0, [r2, #0x16]
	movs r0, #0x50
	strh r0, [r2, #0x18]
	ldr r0, [r6, #0x74]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #4]
	movs r0, #0x80
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r0, _08018738 @ =0x00000389
	strh r0, [r2, #0xa]
	adds r1, #0x20
	adds r0, r4, r1
	mov r3, r8
	strb r3, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _0801873C @ =0x030001E1
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08018740 @ =0x030001E2
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, r8
	strb r3, [r0]
	mov r0, sl
	str r0, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r6, #4]
	strh r5, [r6, #0xa]
	ldr r0, _08018744 @ =0x0600F000
	str r0, [r6, #0xc]
	strh r5, [r6, #0x18]
	strh r5, [r6, #0x1a]
	ldr r1, _0801870C @ =gLoadedSaveGame
	ldrb r0, [r1, #0x19]
	adds r0, #0x54
	strh r0, [r6, #0x1c]
	strh r5, [r6, #0x1e]
	strh r5, [r6, #0x20]
	strh r5, [r6, #0x22]
	strh r5, [r6, #0x24]
	movs r0, #0x1e
	strh r0, [r6, #0x26]
	movs r0, #0x14
	strh r0, [r6, #0x28]
	ldr r2, _08018748 @ =0x0300002A
	adds r4, r4, r2
	mov r3, r8
	strb r3, [r4]
	strh r5, [r6, #0x2e]
	adds r0, r6, #0
	bl DrawBackground
	movs r0, #6
	bl m4aSongNumStartOrChange
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080186DC: .4byte gMultiplayerMissingHeartbeats
_080186E0: .4byte gDispCnt
_080186E4: .4byte 0x00001141
_080186E8: .4byte gBgCntRegs
_080186EC: .4byte 0x00001E03
_080186F0: .4byte gBldRegs
_080186F4: .4byte sub_801874C
_080186F8: .4byte 0x03000200
_080186FC: .4byte 0x03000203
_08018700: .4byte 0x03000040
_08018704: .4byte 0x06010000
_08018708: .4byte gUnknown_080BB488
_0801870C: .4byte gLoadedSaveGame
_08018710: .4byte 0x03000060
_08018714: .4byte 0x03000061
_08018718: .4byte 0x03000062
_0801871C: .4byte 0x03000065
_08018720: .4byte 0x03000070
_08018724: .4byte 0x060102C0
_08018728: .4byte 0x03000090
_0801872C: .4byte 0x03000091
_08018730: .4byte 0x03000092
_08018734: .4byte 0x030001C0
_08018738: .4byte 0x00000389
_0801873C: .4byte 0x030001E1
_08018740: .4byte 0x030001E2
_08018744: .4byte 0x0600F000
_08018748: .4byte 0x0300002A

	thumb_func_start sub_801874C
sub_801874C: @ 0x0801874C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080187BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _080187C0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080187FE
	movs r3, #0
	ldr r0, _080187C4 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _080187FE
	movs r5, #1
	ldr r2, _080187C8 @ =gMultiplayerMissingHeartbeats
_0801877E:
	ldr r1, _080187CC @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _080187E8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _080187EC
	movs r0, #0
	ldr r1, _080187D0 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _080187D4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080187D8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080187DC @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _080187E0 @ =gVramGraphicsCopyCursor
	ldr r0, _080187E4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _08018AC2
	.align 2, 0
_080187BC: .4byte gCurTask
_080187C0: .4byte gGameMode
_080187C4: .4byte gMultiplayerConnections
_080187C8: .4byte gMultiplayerMissingHeartbeats
_080187CC: .4byte gMultiSioStatusFlags
_080187D0: .4byte 0x0000FFFF
_080187D4: .4byte gBackgroundsCopyQueueCursor
_080187D8: .4byte gBackgroundsCopyQueueIndex
_080187DC: .4byte sa2__gUnknown_03005390
_080187E0: .4byte gVramGraphicsCopyCursor
_080187E4: .4byte gVramGraphicsCopyQueueIndex
_080187E8:
	movs r0, #0
	strb r0, [r2]
_080187EC:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _080187FE
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0801877E
_080187FE:
	ldr r5, _0801882C @ =gMultiSioRecv
	ldrh r0, [r5]
	cmp r0, #0x30
	bne _08018838
	ldr r0, _08018830 @ =0x00000203
	adds r4, r6, r0
	ldrb r0, [r4]
	ldrb r1, [r5, #2]
	cmp r0, r1
	beq _080188DC
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _08018834 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080188EA
	ldrb r0, [r5, #2]
	strb r0, [r4]
	b _080188DC
	.align 2, 0
_0801882C: .4byte gMultiSioRecv
_08018830: .4byte 0x00000203
_08018834: .4byte gMultiSioStatusFlags
_08018838:
	cmp r0, #0x31
	bne _080188DC
	ldr r3, _0801887C @ =0x00000203
	adds r4, r6, r3
	ldrb r0, [r4]
	ldrb r1, [r5, #2]
	cmp r0, r1
	beq _08018852
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrb r0, [r5, #2]
	strb r0, [r4]
_08018852:
	movs r0, #0x6a
	bl m4aSongNumStart
	ldrb r0, [r4]
	cmp r0, #0
	bne _08018894
	ldr r1, _08018880 @ =gGameMode
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08018884 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r2, _08018888 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0801888C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _08018890 @ =0x3C6EF35F
	adds r0, r0, r3
	b _080188AE
	.align 2, 0
_0801887C: .4byte 0x00000203
_08018880: .4byte gGameMode
_08018884: .4byte gCurTask
_08018888: .4byte gPseudoRandom
_0801888C: .4byte 0x00196225
_08018890: .4byte 0x3C6EF35F
_08018894:
	ldr r1, _080188C4 @ =gGameMode
	movs r0, #4
	strb r0, [r1]
	ldr r0, _080188C8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r2, _080188CC @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080188D0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080188D4 @ =0x3C6EF35F
	adds r0, r0, r1
_080188AE:
	str r0, [r2]
	ldr r1, _080188D8 @ =0x04000128
	ldr r1, [r1]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	adds r0, r0, r1
	movs r1, #3
	ands r0, r1
	bl CreateCharacterSelectionScreen
	b _08018AC2
	.align 2, 0
_080188C4: .4byte gGameMode
_080188C8: .4byte gCurTask
_080188CC: .4byte gPseudoRandom
_080188D0: .4byte 0x00196225
_080188D4: .4byte 0x3C6EF35F
_080188D8: .4byte 0x04000128
_080188DC:
	ldr r0, _08018934 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080188EA
	b _08018A08
_080188EA:
	movs r3, #1
	mov r8, r3
	movs r0, #0x30
	ldr r1, _08018938 @ =gMultiSioSend
	strh r0, [r1]
	ldr r3, _0801893C @ =0x00000213
	adds r0, r6, r3
	ldrb r5, [r0]
	cmp r5, #0
	bne _08018974
	ldr r0, _08018940 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08018948
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _08018944 @ =0x00000203
	adds r1, r6, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0801892A
	mov r3, r8
	strb r3, [r1]
_0801892A:
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r6, r1
	str r5, [r0]
	b _08018974
	.align 2, 0
_08018934: .4byte gMultiSioStatusFlags
_08018938: .4byte gMultiSioSend
_0801893C: .4byte 0x00000213
_08018940: .4byte gRepeatedKeys
_08018944: .4byte 0x00000203
_08018948:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08018974
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r3, _080189F0 @ =0x00000203
	adds r1, r6, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0801896C
	movs r0, #0
	strb r0, [r1]
_0801896C:
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r6, r1
	str r4, [r0]
_08018974:
	ldr r3, _080189F0 @ =0x00000203
	adds r0, r6, r3
	ldrb r0, [r0]
	ldr r1, _080189F4 @ =gMultiSioSend
	strb r0, [r1, #2]
	movs r4, #1
	ldr r1, _080189F8 @ =gMultiplayerConnections
	ldrb r0, [r1]
	asrs r0, r0, #1
	ands r0, r4
	adds r7, r1, #0
	adds r5, r6, #0
	adds r5, #0x40
	movs r3, #0x60
	adds r3, r3, r6
	mov sb, r3
	movs r1, #0x70
	adds r1, r1, r6
	mov sl, r1
	cmp r0, #0
	beq _080189C4
	ldr r0, _080189FC @ =gMultiSioRecv
	adds r1, r7, #0
	adds r2, r0, #0
	adds r2, #0x14
	movs r3, #1
_080189A8:
	ldrh r0, [r2]
	cmp r0, #0x30
	beq _080189B2
	movs r0, #0
	mov r8, r0
_080189B2:
	adds r2, #0x14
	adds r4, #1
	cmp r4, #3
	bhi _080189C4
	ldrb r0, [r1]
	asrs r0, r4
	ands r0, r3
	cmp r0, #0
	bne _080189A8
_080189C4:
	mov r1, r8
	cmp r1, #0
	beq _080189D6
	ldr r0, _08018A00 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080189E0
_080189D6:
	ldr r3, _08018A04 @ =0x00000213
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08018A30
_080189E0:
	ldr r1, _08018A04 @ =0x00000213
	adds r0, r6, r1
	movs r1, #1
	strb r1, [r0]
	movs r0, #0x31
	ldr r3, _080189F4 @ =gMultiSioSend
	strh r0, [r3]
	b _08018A30
	.align 2, 0
_080189F0: .4byte 0x00000203
_080189F4: .4byte gMultiSioSend
_080189F8: .4byte gMultiplayerConnections
_080189FC: .4byte gMultiSioRecv
_08018A00: .4byte gPressedKeys
_08018A04: .4byte 0x00000213
_08018A08:
	movs r0, #0x30
	ldr r1, _08018AD0 @ =gMultiSioSend
	strh r0, [r1]
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r5, r6, r3
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r5, r6, #0
	adds r5, #0x40
	movs r0, #0x60
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0x70
	adds r1, r1, r6
	mov sl, r1
_08018A30:
	ldr r1, _08018AD4 @ =gUnknown_080BB48C
	ldr r3, _08018AD8 @ =0x00000203
	adds r2, r6, r3
	ldr r0, _08018ADC @ =gLoadedSaveGame
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #1
	ldrb r3, [r2]
	adds r0, r0, r3
	adds r0, r0, r1
	ldrb r7, [r0]
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	lsls r1, r7, #8
	cmp r0, r1
	ble _08018A5A
	subs r0, r0, r1
	str r0, [r4]
_08018A5A:
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x40
	strh r0, [r5, #0x18]
	ldrb r0, [r2]
	mov r1, sb
	strb r0, [r1]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r4, r0, r7
	movs r0, #0xe8
	subs r0, r0, r4
	cmp r0, #0
	ble _08018A9E
	movs r3, #0xe8
	mov sb, r3
	movs r0, #0xe8
	mov r8, r0
_08018A88:
	mov r1, sb
	subs r0, r1, r4
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	bl DisplaySprite
	adds r4, r4, r7
	mov r3, r8
	subs r0, r3, r4
	cmp r0, #0
	bgt _08018A88
_08018A9E:
	mov r5, sl
	ldr r1, _08018AD8 @ =0x00000203
	adds r0, r6, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x36
	strh r0, [r5, #0x18]
	movs r4, #0
_08018AB2:
	lsls r0, r4, #5
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	bl DisplaySprite
	adds r4, #1
	cmp r4, #7
	bls _08018AB2
_08018AC2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018AD0: .4byte gMultiSioSend
_08018AD4: .4byte gUnknown_080BB48C
_08018AD8: .4byte 0x00000203
_08018ADC: .4byte gLoadedSaveGame

	thumb_func_start sub_8018AE0
sub_8018AE0: @ 0x08018AE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08018DF8 @ =0x06010000
	str r0, [sp, #4]
	ldr r0, _08018DFC @ =gMultiplayerMissingHeartbeats
	movs r4, #0
	strb r4, [r0, #3]
	strb r4, [r0, #2]
	strb r4, [r0, #1]
	strb r4, [r0]
	ldr r1, _08018E00 @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08018E04 @ =gBgCntRegs
	ldr r0, _08018E08 @ =0x00001E03
	strh r0, [r1]
	ldr r0, _08018E0C @ =0x00001F06
	strh r0, [r1, #2]
	ldr r0, _08018E10 @ =sub_8018ECC
	movs r1, #0x92
	lsls r1, r1, #2
	str r4, [sp]
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r8, r0
	add r8, r5
	ldr r1, _08018E14 @ =0x03000234
	adds r0, r5, r1
	strh r4, [r0]
	ldr r2, _08018E18 @ =0x03000236
	adds r0, r5, r2
	strh r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	strh r4, [r0]
	adds r2, #0x11
	adds r0, r5, r2
	movs r1, #0
	strb r1, [r0]
	subs r2, #1
	adds r0, r5, r2
	movs r1, #1
	strb r1, [r0]
	subs r2, #0x16
	adds r0, r5, r2
	str r4, [r0]
	ldr r1, _08018E1C @ =0x0300023A
	adds r0, r5, r1
	strh r4, [r0]
	adds r2, #0xc
	adds r0, r5, r2
	strh r4, [r0]
	adds r1, #4
	adds r0, r5, r1
	strh r4, [r0]
	adds r2, #4
	adds r0, r5, r2
	strh r4, [r0]
	ldr r0, _08018E20 @ =0x03000080
	adds r2, r5, r0
	strh r4, [r2, #0x16]
	movs r1, #0x19
	strh r1, [r2, #0x18]
	ldr r0, [sp, #4]
	str r0, [r2, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r2, #0x1a]
	strh r4, [r2, #8]
	subs r0, #0x42
	strh r0, [r2, #0xa]
	ldr r1, _08018E24 @ =0x030000A0
	adds r0, r5, r1
	movs r1, #2
	strb r1, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	ldr r0, _08018E28 @ =0x030000A1
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08018E2C @ =0x030000A2
	adds r0, r5, r1
	movs r1, #0x10
	mov sb, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08018E30 @ =0x030000A5
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	str r4, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xd0
	lsls r0, r0, #2
	ldr r2, [sp, #4]
	adds r2, r2, r0
	str r2, [sp, #4]
	ldr r0, _08018E34 @ =0x030000B0
	adds r2, r5, r0
	strh r4, [r2, #0x16]
	movs r0, #0xe
	strh r0, [r2, #0x18]
	ldr r1, [sp, #4]
	str r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r4, [r2, #8]
	subs r0, #0xa4
	strh r0, [r2, #0xa]
	ldr r1, _08018E38 @ =0x030000D0
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	ldr r0, _08018E3C @ =0x030000D1
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08018E40 @ =0x030000D2
	adds r0, r5, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08018E44 @ =0x030000D5
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	str r4, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r2, #0xc0
	lsls r2, r2, #1
	mov sl, r2
	ldr r0, [sp, #4]
	add r0, sl
	str r0, [sp, #4]
	ldr r1, _08018E48 @ =0x030000E0
	adds r2, r5, r1
	movs r0, #0x35
	strh r0, [r2, #0x16]
	movs r6, #0x58
	strh r6, [r2, #0x18]
	ldr r0, [sp, #4]
	str r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r2, #0x1a]
	strh r4, [r2, #8]
	ldr r7, _08018E4C @ =0x0000037B
	strh r7, [r2, #0xa]
	ldr r1, _08018E50 @ =0x03000100
	adds r0, r5, r1
	movs r1, #2
	strb r1, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	ldr r0, _08018E54 @ =0x03000101
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08018E58 @ =0x03000102
	adds r0, r5, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08018E5C @ =0x03000105
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	str r4, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r2, [sp, #4]
	add r2, sl
	str r2, [sp, #4]
	ldr r0, _08018E60 @ =0x03000110
	adds r2, r5, r0
	movs r0, #0xb7
	strh r0, [r2, #0x16]
	strh r6, [r2, #0x18]
	ldr r1, [sp, #4]
	str r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r4, [r2, #8]
	strh r7, [r2, #0xa]
	ldr r0, _08018E64 @ =0x03000130
	adds r1, r5, r0
	movs r0, #3
	strb r0, [r1]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	ldr r0, _08018E68 @ =0x03000131
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08018E6C @ =0x03000132
	adds r0, r5, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08018E70 @ =0x03000135
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	str r4, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r2, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	str r2, [sp, #4]
	ldr r1, _08018E74 @ =0x03000140
	adds r2, r5, r1
	movs r0, #0x19
	strh r0, [r2, #0x16]
	movs r0, #0x49
	strh r0, [r2, #0x18]
	ldr r1, [sp, #4]
	str r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r4, [r2, #8]
	subs r0, #0xa6
	strh r0, [r2, #0xa]
	ldr r1, _08018E78 @ =0x03000160
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	ldr r0, _08018E7C @ =0x03000161
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08018E80 @ =0x03000162
	adds r0, r5, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08018E84 @ =0x03000165
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	str r4, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r2, [sp, #4]
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #4]
	ldr r1, _08018E88 @ =0x03000200
	adds r2, r5, r1
	movs r0, #0x78
	strh r0, [r2, #0x16]
	movs r0, #0x50
	strh r0, [r2, #0x18]
	ldr r0, [sp, #4]
	str r0, [r2, #4]
	movs r0, #0x80
	strh r0, [r2, #0x1a]
	strh r4, [r2, #8]
	ldr r0, _08018E8C @ =0x00000389 @ SA1_ANIM_VS_MENU_WAIT
	strh r0, [r2, #0xa]
	adds r1, #0x20
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	ldr r0, _08018E90 @ =0x03000221
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08018E94 @ =0x03000222
	adds r0, r5, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08018E98 @ =0x03000225
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc0
	lsls r0, r0, #0x13
	mov r1, r8
	str r0, [r1, #4]
	strh r4, [r1, #0xa]
	ldr r0, _08018E9C @ =0x0600F000
	str r0, [r1, #0xc]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	movs r0, #0x51
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x24]
	movs r0, #0x1e
	strh r0, [r1, #0x26]
	movs r0, #0x14
	strh r0, [r1, #0x28]
	ldr r2, _08018EA0 @ =0x0300002A
	adds r0, r5, r2
	movs r1, #0
	strb r1, [r0]
	mov r2, r8
	strh r4, [r2, #0x2e]
	mov r0, r8
	bl DrawBackground
	ldr r1, _08018EA4 @ =0x03000040
	adds r0, r5, r1
	ldr r1, _08018EA8 @ =0x06004000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _08018EAC @ =0x0600F800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0x52
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _08018EB0 @ =0x0300006A
	adds r5, r5, r2
	movs r1, #0
	strb r1, [r5]
	movs r2, #1
	strh r2, [r0, #0x2e]
	bl DrawBackground
	movs r0, #3     @ MUS_CHARACTER_SELECTION
	bl m4aSongNumStartOrChange
	ldr r0, _08018EB4 @ =gRepeatedKeys
	strh r4, [r0]
	ldr r0, _08018EB8 @ =gPressedKeys
	strh r4, [r0]
	ldr r0, _08018EBC @ =gInput
	strh r4, [r0]
	ldr r2, _08018EC0 @ =gWinRegs
	movs r0, #0x3f
	strh r0, [r2, #0xa]
	ldr r1, _08018EC4 @ =gBldRegs
	ldr r0, _08018EC8 @ =0x00003F46
	strh r0, [r1]
	movs r0, #0xa1
	lsls r0, r0, #4
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018DF8: .4byte 0x06010000
_08018DFC: .4byte gMultiplayerMissingHeartbeats
_08018E00: .4byte gDispCnt
_08018E04: .4byte gBgCntRegs
_08018E08: .4byte 0x00001E03
_08018E0C: .4byte 0x00001F06
_08018E10: .4byte sub_8018ECC
_08018E14: .4byte 0x03000234
_08018E18: .4byte 0x03000236
_08018E1C: .4byte 0x0300023A
_08018E20: .4byte 0x03000080
_08018E24: .4byte 0x030000A0
_08018E28: .4byte 0x030000A1
_08018E2C: .4byte 0x030000A2
_08018E30: .4byte 0x030000A5
_08018E34: .4byte 0x030000B0
_08018E38: .4byte 0x030000D0
_08018E3C: .4byte 0x030000D1
_08018E40: .4byte 0x030000D2
_08018E44: .4byte 0x030000D5
_08018E48: .4byte 0x030000E0
_08018E4C: .4byte 0x0000037B
_08018E50: .4byte 0x03000100
_08018E54: .4byte 0x03000101
_08018E58: .4byte 0x03000102
_08018E5C: .4byte 0x03000105
_08018E60: .4byte 0x03000110
_08018E64: .4byte 0x03000130
_08018E68: .4byte 0x03000131
_08018E6C: .4byte 0x03000132
_08018E70: .4byte 0x03000135
_08018E74: .4byte 0x03000140
_08018E78: .4byte 0x03000160
_08018E7C: .4byte 0x03000161
_08018E80: .4byte 0x03000162
_08018E84: .4byte 0x03000165
_08018E88: .4byte 0x03000200
_08018E8C: .4byte 0x00000389
_08018E90: .4byte 0x03000221
_08018E94: .4byte 0x03000222
_08018E98: .4byte 0x03000225
_08018E9C: .4byte 0x0600F000
_08018EA0: .4byte 0x0300002A
_08018EA4: .4byte 0x03000040
_08018EA8: .4byte 0x06004000
_08018EAC: .4byte 0x0600F800
_08018EB0: .4byte 0x0300006A
_08018EB4: .4byte gRepeatedKeys
_08018EB8: .4byte gPressedKeys
_08018EBC: .4byte gInput
_08018EC0: .4byte gWinRegs
_08018EC4: .4byte gBldRegs
_08018EC8: .4byte 0x00003F46

	thumb_func_start sub_8018ECC
sub_8018ECC: @ 0x08018ECC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08018F3C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, _08018F40 @ =0x03000234
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r0, _08018F44 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08018F7C
	movs r3, #0
	ldr r0, _08018F48 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	mov ip, r0
	cmp r1, #0
	beq _08018F7C
	movs r5, #1
	ldr r2, _08018F4C @ =gMultiplayerMissingHeartbeats
_08018F08:
	ldr r1, _08018F50 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _08018F64
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _08018F68
	movs r0, #0
	ldr r1, _08018F54 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _08018F58 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08018F5C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08018F60 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	b _080190AC
	.align 2, 0
_08018F3C: .4byte gCurTask
_08018F40: .4byte 0x03000234
_08018F44: .4byte gGameMode
_08018F48: .4byte gMultiplayerConnections
_08018F4C: .4byte gMultiplayerMissingHeartbeats
_08018F50: .4byte gMultiSioStatusFlags
_08018F54: .4byte 0x0000FFFF
_08018F58: .4byte gBackgroundsCopyQueueCursor
_08018F5C: .4byte gBackgroundsCopyQueueIndex
_08018F60: .4byte sa2__gUnknown_03005390
_08018F64:
	movs r0, #0
	strb r0, [r2]
_08018F68:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _08018F7C
	mov r1, ip
	ldrb r0, [r1]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _08018F08
_08018F7C:
	ldr r6, _08018FAC @ =gMultiSioRecv
	ldrh r2, [r6]
	cmp r2, #0x34
	bne _08018FB8
	ldr r2, _08018FB0 @ =0x00000246
	adds r4, r7, r2
	ldrb r0, [r4]
	ldrb r3, [r6, #2]
	cmp r0, r3
	bne _08018F92
	b _080190D4
_08018F92:
	movs r0, #0x6c
	bl m4aSongNumStart
	ldr r0, _08018FB4 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08018FA6
	b _080190E0
_08018FA6:
	ldrb r0, [r6, #2]
	strb r0, [r4]
	b _080190D4
	.align 2, 0
_08018FAC: .4byte gMultiSioRecv
_08018FB0: .4byte 0x00000246
_08018FB4: .4byte gMultiSioStatusFlags
_08018FB8:
	cmp r2, #0x35
	bne _08019092
	movs r3, #1
	ldr r0, _08018FFC @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019004
	movs r5, #1
	ldr r1, _08019000 @ =gMultiplayerConnections
	ldrb r0, [r1]
	asrs r0, r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08019008
	adds r2, r6, #0
	adds r2, #0x14
	movs r4, #1
_08018FDE:
	ldrh r0, [r2]
	cmp r0, #0x34
	bhi _08018FE6
	movs r3, #0
_08018FE6:
	adds r2, #0x14
	adds r5, #1
	cmp r5, #3
	bgt _08019008
	ldrb r0, [r1]
	asrs r0, r5
	ands r0, r4
	cmp r0, #0
	bne _08018FDE
	b _08019008
	.align 2, 0
_08018FFC: .4byte gMultiSioStatusFlags
_08019000: .4byte gMultiplayerConnections
_08019004:
	ldr r4, _0801903C @ =gMultiSioSend
	strh r2, [r4]
_08019008:
	cmp r3, #0
	beq _080190D4
	ldr r0, _08019040 @ =0x00000246
	adds r4, r7, r0
	ldrb r0, [r4]
	ldrb r1, [r6, #2]
	cmp r0, r1
	beq _08019022
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrb r0, [r6, #2]
	strb r0, [r4]
_08019022:
	movs r0, #0x6a
	bl m4aSongNumStart
	ldrb r0, [r4]
	cmp r0, #0
	bne _08019060
	ldr r1, _08019044 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #2
	bne _08019048
	movs r0, #3
	b _0801904A
	.align 2, 0
_0801903C: .4byte gMultiSioSend
_08019040: .4byte 0x00000246
_08019044: .4byte gGameMode
_08019048:
	movs r0, #5
_0801904A:
	strb r0, [r1]
	ldr r0, _08019058 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801905C @ =sub_8019348
	str r0, [r1, #8]
	b _0801933A
	.align 2, 0
_08019058: .4byte gCurTask
_0801905C: .4byte sub_8019348
_08019060:
	ldr r1, _08019084 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #2
	beq _0801906A
	movs r0, #4
_0801906A:
	strb r0, [r1]
	ldr r0, _08019088 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _08019084 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801908C
	movs r0, #0
	bl sub_8061948
	b _0801933A
	.align 2, 0
_08019084: .4byte gGameMode
_08019088: .4byte gCurTask
_0801908C:
	bl sub_8062F90
	b _0801933A
_08019092:
	cmp r2, #0x35
	bls _080190D4
	ldr r1, _080190BC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080190C0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080190C4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080190C8 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
_080190AC:
	ldr r1, _080190CC @ =gVramGraphicsCopyCursor
	ldr r0, _080190D0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _0801933A
	.align 2, 0
_080190BC: .4byte 0x0000FFFF
_080190C0: .4byte gBackgroundsCopyQueueCursor
_080190C4: .4byte gBackgroundsCopyQueueIndex
_080190C8: .4byte sa2__gUnknown_03005390
_080190CC: .4byte gVramGraphicsCopyCursor
_080190D0: .4byte gVramGraphicsCopyQueueIndex
_080190D4:
	ldr r0, _08019108 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080191B8
_080190E0:
	movs r4, #1
	ldr r2, _0801910C @ =gMultiSioSend
	mov r8, r2
	movs r0, #0x34
	strh r0, [r2]
	ldr r3, _08019110 @ =0x00000247
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801912C
	ldr r0, _08019114 @ =gInput
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801911C
	ldr r1, _08019118 @ =0x00000246
	adds r0, r7, r1
	strb r4, [r0]
	b _0801912C
	.align 2, 0
_08019108: .4byte gMultiSioStatusFlags
_0801910C: .4byte gMultiSioSend
_08019110: .4byte 0x00000247
_08019114: .4byte gInput
_08019118: .4byte 0x00000246
_0801911C:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801912C
	ldr r2, _080191A4 @ =0x00000246
	adds r1, r7, r2
	movs r0, #0
	strb r0, [r1]
_0801912C:
	ldr r3, _080191A4 @ =0x00000246
	adds r0, r7, r3
	ldrb r0, [r0]
	mov r1, r8
	strb r0, [r1, #2]
	movs r5, #1
	ldr r1, _080191A8 @ =gMultiplayerConnections
	ldrb r0, [r1]
	asrs r0, r0, #1
	ands r0, r5
	movs r2, #0x80
	adds r2, r2, r7
	mov sb, r2
	movs r3, #0xb0
	adds r3, r3, r7
	mov sl, r3
	cmp r0, #0
	beq _08019172
	ldr r0, _080191AC @ =gMultiSioRecv
	adds r2, r0, #0
	adds r2, #0x14
	movs r3, #1
_08019158:
	ldrh r0, [r2]
	cmp r0, #0x33
	bhi _08019160
	movs r4, #0
_08019160:
	adds r2, #0x14
	adds r5, #1
	cmp r5, #3
	bgt _08019172
	ldrb r0, [r1]
	asrs r0, r5
	ands r0, r3
	cmp r0, #0
	bne _08019158
_08019172:
	cmp r4, #0
	beq _08019182
	ldr r0, _080191B0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801918C
_08019182:
	ldr r4, _080191B4 @ =0x00000247
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080191DC
_0801918C:
	movs r0, #0x35
	mov r1, r8
	strh r0, [r1]
	ldr r2, _080191A4 @ =0x00000246
	adds r0, r7, r2
	ldrb r0, [r0]
	strb r0, [r1, #2]
	ldr r3, _080191B4 @ =0x00000247
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	b _080191DC
	.align 2, 0
_080191A4: .4byte 0x00000246
_080191A8: .4byte gMultiplayerConnections
_080191AC: .4byte gMultiSioRecv
_080191B0: .4byte gPressedKeys
_080191B4: .4byte 0x00000247
_080191B8:
	ldr r4, _08019220 @ =gMultiSioSend
	movs r0, #0x34
	strh r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r6, r7, r0
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	movs r1, #0x80
	adds r1, r1, r7
	mov sb, r1
	movs r2, #0xb0
	adds r2, r2, r7
	mov sl, r2
_080191DC:
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r6, r7, r3
	ldr r4, _08019224 @ =0x00000246
	adds r3, r7, r4
	ldrb r0, [r3]
	lsls r1, r0, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r1, r1, r0
	adds r1, #0x19
	strh r1, [r6, #0x16]
	ldr r0, _08019228 @ =0x00000236
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #3
	cmp r0, r2
	ble _0801920C
	strh r2, [r1]
_0801920C:
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801922C
	movs r1, #0x8e
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r1, [r0]
	adds r1, #1
	b _08019236
	.align 2, 0
_08019220: .4byte gMultiSioSend
_08019224: .4byte 0x00000246
_08019228: .4byte 0x00000236
_0801922C:
	movs r4, #0x8e
	lsls r4, r4, #2
	adds r0, r7, r4
	ldrh r1, [r0]
	subs r1, #1
_08019236:
	ldr r3, _080192D8 @ =0x000003FF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	ldr r4, _080192DC @ =0x00000236
	adds r1, r7, r4
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r5, _080192E0 @ =gSineTable
	adds r4, #2
	adds r2, r7, r4
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	ldr r3, _080192E4 @ =0x0000023A
	adds r4, r7, r3
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r1, r0]
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r1, r0
	asrs r0, r0, #8
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r3, r7, r1
	strh r0, [r3]
	ldr r2, _080192E8 @ =0x0000023E
	adds r1, r7, r2
	ldrh r0, [r4]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r2, r7, r0
	ldrh r0, [r3]
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	ldr r3, _080192EC @ =gBgScrollRegs
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r3, #4]
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r3, #6]
	movs r4, #0x8c
	lsls r4, r4, #2
	adds r2, r7, r4
	ldr r3, [r2]
	adds r1, r3, #0
	adds r1, #0x80
	str r1, [r2]
	movs r0, #0x88
	lsls r0, r0, #8
	cmp r1, r0
	ble _080192CC
	ldr r1, _080192F0 @ =0xFFFF7880
	adds r0, r3, r1
	str r0, [r2]
_080192CC:
	mov r6, sb
	ldr r0, [r2]
	rsbs r0, r0, #0
	lsls r0, r0, #8
	lsrs r4, r0, #0x10
	b _08019304
	.align 2, 0
_080192D8: .4byte 0x000003FF
_080192DC: .4byte 0x00000236
_080192E0: .4byte gSineTable
_080192E4: .4byte 0x0000023A
_080192E8: .4byte 0x0000023E
_080192EC: .4byte gBgScrollRegs
_080192F0: .4byte 0xFFFF7880
_080192F4:
	strh r4, [r6, #0x16]
	movs r2, #0x88
	lsls r2, r2, #0x10
	adds r0, r1, r2
	lsrs r4, r0, #0x10
	adds r0, r6, #0
	bl DisplaySprite
_08019304:
	lsls r1, r4, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0xef
	ble _080192F4
	adds r4, r7, #0
	adds r4, #0xe0
	movs r5, #2
_08019312:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x30
	subs r5, #1
	cmp r5, #0
	bge _08019312
	mov r6, sl
	movs r5, #0
_0801932A:
	lsls r0, r5, #5
	strh r0, [r6, #0x16]
	adds r0, r6, #0
	bl DisplaySprite
	adds r5, #1
	cmp r5, #7
	ble _0801932A
_0801933A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8019348
sub_8019348: @ 0x08019348
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _08019634 @ =0x06010000
	ldr r1, _08019638 @ =gCurTask
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	ldr r0, _0801963C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	movs r1, #1
	ands r1, r0
	ldr r2, _08019640 @ =0x03000246
	adds r0, r4, r2
	movs r5, #0
	strb r1, [r0]
	ldr r3, _08019644 @ =0x03000247
	adds r0, r4, r3
	strb r5, [r0]
	ldr r0, _08019648 @ =0x03000080
	adds r2, r4, r0
	movs r1, #0
	mov sb, r1
	strh r5, [r2, #0x16]
	movs r0, #0x19
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r3, _0801964C @ =0x0000037E
	strh r3, [r2, #0xa]
	ldr r0, _08019650 @ =0x030000A0
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r3, _08019654 @ =0x030000A1
	adds r1, r4, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08019658 @ =0x030000A2
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
	add r6, r8
	ldr r1, _0801965C @ =0x030000B0
	adds r2, r4, r1
	strh r5, [r2, #0x16]
	movs r0, #0xe
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r3, r8
	strh r3, [r2, #0x1a]
	strh r5, [r2, #8]
	movs r0, #0xd7
	lsls r0, r0, #2
	strh r0, [r2, #0xa]
	adds r1, #0x20
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _08019660 @ =0x030000D1
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08019664 @ =0x030000D2
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r6, r6, r0
	ldr r0, _08019668 @ =0x030000E0
	adds r2, r4, r0
	movs r1, #0x2b
	mov sl, r1
	mov r3, sl
	strh r3, [r2, #0x16]
	movs r0, #0x3d
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r1, r8
	strh r1, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r3, _0801964C @ =0x0000037E
	strh r3, [r2, #0xa]
	ldr r0, _0801966C @ =0x03000100
	adds r1, r4, r0
	movs r0, #5
	strb r0, [r1]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r3, _08019670 @ =0x03000101
	adds r1, r4, r3
	subs r0, #6
	strb r0, [r1]
	ldr r1, _08019674 @ =0x03000102
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r7, #0x80
	lsls r7, r7, #1
	adds r6, r6, r7
	ldr r0, _08019678 @ =0x03000110
	adds r2, r4, r0
	mov r1, sl
	strh r1, [r2, #0x16]
	movs r0, #0x55
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r3, r8
	strh r3, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r0, _0801964C @ =0x0000037E
	strh r0, [r2, #0xa]
	ldr r3, _0801967C @ =0x03000130
	adds r1, r4, r3
	movs r0, #6
	strb r0, [r1]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _08019680 @ =0x03000131
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08019684 @ =0x03000132
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r6, r6, r7
	ldr r0, _08019688 @ =0x03000140
	adds r2, r4, r0
	mov r1, sl
	strh r1, [r2, #0x16]
	movs r0, #0x6d
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r3, r8
	strh r3, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r0, _0801964C @ =0x0000037E
	strh r0, [r2, #0xa]
	ldr r3, _0801968C @ =0x03000160
	adds r1, r4, r3
	movs r0, #7
	strb r0, [r1]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _08019690 @ =0x03000161
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08019694 @ =0x03000162
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r6, r6, r7
	ldr r0, _08019698 @ =0x03000170
	adds r2, r4, r0
	mov r1, sl
	strh r1, [r2, #0x16]
	movs r0, #0x85
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r3, r8
	strh r3, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r0, _0801964C @ =0x0000037E
	strh r0, [r2, #0xa]
	ldr r3, _0801969C @ =0x03000190
	adds r1, r4, r3
	movs r0, #8
	strb r0, [r1]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _080196A0 @ =0x03000191
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080196A4 @ =0x03000192
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r6, r6, r7
	ldr r0, _080196A8 @ =0x030001A0
	adds r2, r4, r0
	movs r0, #0x4b
	strh r0, [r2, #0x16]
	movs r0, #0x35
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r1, r8
	strh r1, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r0, _080196AC @ =0x00000359
	strh r0, [r2, #0xa]
	ldr r3, _080196B0 @ =0x030001C0
	adds r0, r4, r3
	mov r1, sb
	strb r1, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	adds r3, #1
	adds r1, r4, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080196B4 @ =0x030001C2
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r6, #0x80
	ldr r0, _080196B8 @ =0x030001D0
	adds r2, r4, r0
	movs r0, #0x67
	strh r0, [r2, #0x16]
	movs r0, #0x61
	strh r0, [r2, #0x18]
	str r6, [r2, #4]
	mov r1, r8
	strh r1, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r3, _0801964C @ =0x0000037E
	strh r3, [r2, #0xa]
	ldr r0, _080196BC @ =0x030001F0
	adds r1, r4, r0
	movs r0, #4
	strb r0, [r1]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r3, _080196C0 @ =0x030001F1
	adds r1, r4, r3
	subs r0, #5
	strb r0, [r1]
	ldr r1, _080196C4 @ =0x030001F2
	adds r0, r4, r1
	movs r3, #0x10
	strb r3, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r3, sb
	strb r3, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, _080196C8 @ =gRepeatedKeys
	strh r5, [r0]
	ldr r0, _080196CC @ =gPressedKeys
	strh r5, [r0]
	ldr r0, _080196D0 @ =gInput
	strh r5, [r0]
	ldr r1, _080196D4 @ =gBgCntRegs
	ldr r0, _080196D8 @ =0x00001F05
	strh r0, [r1, #4]
	ldr r1, _080196DC @ =gBgScrollRegs
	ldrh r2, [r1, #4]
	strh r2, [r1, #8]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xa]
	ldr r3, _080196E0 @ =0x0300023E
	adds r0, r4, r3
	strh r2, [r0]
	ldrh r2, [r1, #6]
	adds r3, #2
	adds r0, r4, r3
	strh r2, [r0]
	ldrh r2, [r1, #4]
	adds r3, #2
	adds r0, r4, r3
	strh r2, [r0]
	ldrh r0, [r1, #6]
	ldr r1, _080196E4 @ =0x03000244
	adds r4, r4, r1
	strh r0, [r4]
	ldr r2, _080196E8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x90
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080196EC @ =gWinRegs
	movs r0, #0x3d
	strh r0, [r1, #8]
	movs r0, #0x3b
	strh r0, [r1, #0xa]
	ldr r1, _080196F0 @ =gBldRegs
	ldr r0, _080196F4 @ =0x00003F46
	strh r0, [r1]
	ldr r2, _08019638 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _080196F8 @ =sub_80196FC
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019634: .4byte 0x06010000
_08019638: .4byte gCurTask
_0801963C: .4byte 0x04000128
_08019640: .4byte 0x03000246
_08019644: .4byte 0x03000247
_08019648: .4byte 0x03000080
_0801964C: .4byte 0x0000037E
_08019650: .4byte 0x030000A0
_08019654: .4byte 0x030000A1
_08019658: .4byte 0x030000A2
_0801965C: .4byte 0x030000B0
_08019660: .4byte 0x030000D1
_08019664: .4byte 0x030000D2
_08019668: .4byte 0x030000E0
_0801966C: .4byte 0x03000100
_08019670: .4byte 0x03000101
_08019674: .4byte 0x03000102
_08019678: .4byte 0x03000110
_0801967C: .4byte 0x03000130
_08019680: .4byte 0x03000131
_08019684: .4byte 0x03000132
_08019688: .4byte 0x03000140
_0801968C: .4byte 0x03000160
_08019690: .4byte 0x03000161
_08019694: .4byte 0x03000162
_08019698: .4byte 0x03000170
_0801969C: .4byte 0x03000190
_080196A0: .4byte 0x03000191
_080196A4: .4byte 0x03000192
_080196A8: .4byte 0x030001A0
_080196AC: .4byte 0x00000359
_080196B0: .4byte 0x030001C0
_080196B4: .4byte 0x030001C2
_080196B8: .4byte 0x030001D0
_080196BC: .4byte 0x030001F0
_080196C0: .4byte 0x030001F1
_080196C4: .4byte 0x030001F2
_080196C8: .4byte gRepeatedKeys
_080196CC: .4byte gPressedKeys
_080196D0: .4byte gInput
_080196D4: .4byte gBgCntRegs
_080196D8: .4byte 0x00001F05
_080196DC: .4byte gBgScrollRegs
_080196E0: .4byte 0x0300023E
_080196E4: .4byte 0x03000244
_080196E8: .4byte gDispCnt
_080196EC: .4byte gWinRegs
_080196F0: .4byte gBldRegs
_080196F4: .4byte 0x00003F46
_080196F8: .4byte sub_80196FC

	thumb_func_start sub_80196FC
sub_80196FC: @ 0x080196FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #8
	movs r1, #0
	movs r2, #2
	bl memset
	ldr r0, _08019758 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r2, _0801975C @ =0x03000247
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08019782
	ldr r0, _08019760 @ =gRepeatedKeys
	ldrh r2, [r0]
	movs r0, #0x10
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08019768
	ldr r3, _08019764 @ =0x03000246
	adds r4, r1, r3
	ldrb r0, [r4]
	cmp r0, #0
	bne _0801974E
	movs r0, #0x6c
	bl m4aSongNumStart
_0801974E:
	mov r0, sp
	ldrb r0, [r0, #0xc]
	strb r0, [r4]
	b _08019782
	.align 2, 0
_08019758: .4byte gCurTask
_0801975C: .4byte 0x03000247
_08019760: .4byte gRepeatedKeys
_08019764: .4byte 0x03000246
_08019768:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08019782
	ldr r2, _080197D0 @ =0x03000246
	adds r4, r1, r2
	ldrb r0, [r4]
	cmp r0, #1
	bne _08019780
	movs r0, #0x6c
	bl m4aSongNumStart
_08019780:
	strb r5, [r4]
_08019782:
	ldr r0, _080197D4 @ =gGameMode
	ldrb r0, [r0]
	ldr r7, _080197D8 @ =gMultiplayerConnections
	cmp r0, #1
	bls _0801980A
	movs r3, #0
	ldrb r0, [r7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801980A
	movs r5, #1
	ldr r2, _080197DC @ =gMultiplayerMissingHeartbeats
_0801979C:
	ldr r1, _080197E0 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _080197F4
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _080197F8
	movs r0, #0
	ldr r1, _080197E4 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _080197E8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080197EC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080197F0 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	b _08019B0E
	.align 2, 0
_080197D0: .4byte 0x03000246
_080197D4: .4byte gGameMode
_080197D8: .4byte gMultiplayerConnections
_080197DC: .4byte gMultiplayerMissingHeartbeats
_080197E0: .4byte gMultiSioStatusFlags
_080197E4: .4byte 0x0000FFFF
_080197E8: .4byte gBackgroundsCopyQueueCursor
_080197EC: .4byte gBackgroundsCopyQueueIndex
_080197F0: .4byte sa2__gUnknown_03005390
_080197F4:
	movs r0, #0
	strb r0, [r2]
_080197F8:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0801980A
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0801979C
_0801980A:
	movs r6, #0
	ldrb r0, [r7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080198F2
	mov sb, r7
	add r7, sp, #8
	movs r3, #0xe0
	mov sl, r3
	movs r0, #0
	str r0, [sp, #0x10]
_08019822:
	ldr r0, _08019880 @ =gMultiSioRecv
	ldr r1, [sp, #0x10]
	adds r5, r1, r0
	ldrh r1, [r5]
	adds r0, r1, #0
	subs r0, #0x40
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080198D0
	cmp r1, #0x41
	beq _080198AE
	mov r4, r8
	add r4, sl
	ldrb r0, [r5, #2]
	lsls r0, r0, #7
	adds r0, #0x2b
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl DisplaySprite
	movs r4, #0xd0
	lsls r4, r4, #1
	add r4, r8
	ldr r0, _08019884 @ =gUnknown_080BB484
	adds r0, r6, r0
	ldrb r0, [r0]
	strh r0, [r4, #0x18]
	ldrb r1, [r5, #2]
	movs r0, #0x5e
	muls r0, r1, r0
	adds r0, #0x4b
	strh r0, [r4, #0x16]
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0801988C
	ldr r0, [r4, #0x10]
	ldr r1, _08019888 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	movs r1, #0x10
	lsls r1, r6
	mov r2, sb
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	b _080198A2
	.align 2, 0
_08019880: .4byte gMultiSioRecv
_08019884: .4byte gUnknown_080BB484
_08019888: .4byte 0xFFFFFBFF
_0801988C:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x10
	lsls r0, r6
	mov r3, sb
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
_080198A2:
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0
	str r0, [sp, #0xc]
	b _080198D4
_080198AE:
	mov r4, r8
	add r4, sl
	adds r0, r4, #0
	bl DisplaySprite
	movs r1, #0x16
	ldrsh r0, [r4, r1]
	cmp r0, #0x2b
	bne _080198C8
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	b _080198D4
_080198C8:
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	b _080198D4
_080198D0:
	movs r2, #0
	str r2, [sp, #0xc]
_080198D4:
	movs r3, #0x30
	add sl, r3
	ldr r0, [sp, #0x10]
	adds r0, #0x14
	str r0, [sp, #0x10]
	adds r6, #1
	cmp r6, #3
	bgt _080198F2
	mov r1, sb
	ldrb r0, [r1]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08019822
_080198F2:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _08019952
	add r0, sp, #8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801990E
	add r0, sp, #8
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0801991C
_0801990E:
	ldr r1, _08019918 @ =0x00000247
	add r1, r8
	movs r0, #0
	strb r0, [r1]
	b _08019952
	.align 2, 0
_08019918: .4byte 0x00000247
_0801991C:
	ldr r0, _08019940 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r2, _08019944 @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r0, _08019948 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	bne _0801994C
	movs r0, #0
	bl sub_8061948
	b _08019BEA
	.align 2, 0
_08019940: .4byte gCurTask
_08019944: .4byte gFlags
_08019948: .4byte gGameMode
_0801994C:
	bl sub_8062F90
	b _08019BEA
_08019952:
	movs r0, #8
	str r0, [sp]
	movs r4, #0xf0
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0x74
	movs r2, #0
	movs r3, #0x7c
	bl sa2__sub_80064A8
	movs r0, #0x10
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0x7c
	movs r2, #8
	movs r3, #0x74
	bl sa2__sub_80064A8
	ldr r2, _08019AC0 @ =0x040000D4
	ldr r0, _08019AC4 @ =gBgOffsetsHBlank
	ldr r4, [r0]
	ldr r0, _08019AC8 @ =sa2__gUnknown_03002A80
	ldrb r3, [r0]
	lsls r0, r3, #4
	adds r1, r0, r4
	movs r7, #0x84
	lsls r7, r7, #0x18
	adds r5, r0, #0
	movs r6, #0x80
_0801998E:
	str r4, [r2]
	str r1, [r2, #4]
	lsls r0, r3, #4
	asrs r0, r0, #2
	orrs r0, r7
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r1, r1, r5
	subs r6, #0x10
	cmp r6, #0
	bge _0801998E
	movs r2, #0x8e
	lsls r2, r2, #2
	add r2, r8
	ldrh r0, [r2]
	adds r0, #1
	ldr r3, _08019ACC @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08019AD0 @ =0x00000236
	add r0, r8
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldr r3, _08019AD4 @ =gSineTable
	ldrh r1, [r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r4, #0
	muls r2, r0, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r1, r4, #0
	muls r1, r0, r1
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r3, _08019AD8 @ =0x0000023E
	add r3, r8
	ldrh r0, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	movs r4, #0x90
	lsls r4, r4, #2
	add r4, r8
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldr r5, _08019ADC @ =0x00000242
	add r5, r8
	ldrh r0, [r5]
	subs r0, r0, r2
	strh r0, [r5]
	movs r2, #0x91
	lsls r2, r2, #2
	add r2, r8
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	ldr r1, _08019AE0 @ =gBgScrollRegs
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #4]
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #6]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #8]
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r1, #0xa]
	ldr r4, _08019AE4 @ =gPressedKeys
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08019A54
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r1, _08019AE8 @ =0x00000247
	add r1, r8
	movs r0, #0
	strb r0, [r1]
_08019A54:
	ldr r0, _08019AEC @ =gInput
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08019A90
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08019A90
	ldr r0, _08019AF0 @ =0x00000246
	add r0, r8
	ldrb r2, [r0]
	cmp r2, #0
	bne _08019A80
	mov r1, sb
	subs r1, #1
	add r0, sp, #8
	ldrb r0, [r0]
	cmp r1, r0
	bne _08019A9A
_08019A80:
	cmp r2, #1
	bne _08019A90
	mov r0, sb
	subs r0, #1
	add r1, sp, #8
	ldrb r1, [r1, #1]
	cmp r0, r1
	bne _08019A9A
_08019A90:
	ldr r0, _08019AE8 @ =0x00000247
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08019B34
_08019A9A:
	ldr r4, _08019AE8 @ =0x00000247
	add r4, r8
	ldrb r0, [r4]
	cmp r0, #0
	bne _08019AAA
	movs r0, #0x6a
	bl m4aSongNumStart
_08019AAA:
	ldr r5, _08019AF4 @ =gMultiSioSend
	movs r0, #0x41
	strh r0, [r5]
	ldr r0, _08019AF0 @ =0x00000246
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r5, #2]
	movs r0, #1
	strb r0, [r4]
	b _08019B42
	.align 2, 0
_08019AC0: .4byte 0x040000D4
_08019AC4: .4byte gBgOffsetsHBlank
_08019AC8: .4byte sa2__gUnknown_03002A80
_08019ACC: .4byte 0x000003FF
_08019AD0: .4byte 0x00000236
_08019AD4: .4byte gSineTable
_08019AD8: .4byte 0x0000023E
_08019ADC: .4byte 0x00000242
_08019AE0: .4byte gBgScrollRegs
_08019AE4: .4byte gPressedKeys
_08019AE8: .4byte 0x00000247
_08019AEC: .4byte gInput
_08019AF0: .4byte 0x00000246
_08019AF4: .4byte gMultiSioSend
_08019AF8:
	ldr r1, _08019B1C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08019B20 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08019B24 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08019B28 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
_08019B0E:
	ldr r1, _08019B2C @ =gVramGraphicsCopyCursor
	ldr r0, _08019B30 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl MultiPakCommunicationError
	b _08019BEA
	.align 2, 0
_08019B1C: .4byte 0x0000FFFF
_08019B20: .4byte gBackgroundsCopyQueueCursor
_08019B24: .4byte gBackgroundsCopyQueueIndex
_08019B28: .4byte sa2__gUnknown_03005390
_08019B2C: .4byte gVramGraphicsCopyCursor
_08019B30: .4byte gVramGraphicsCopyQueueIndex
_08019B34:
	ldr r5, _08019BFC @ =gMultiSioSend
	movs r0, #0x40
	strh r0, [r5]
	ldr r0, _08019C00 @ =0x00000246
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r5, #2]
_08019B42:
	movs r6, #0
	ldr r0, _08019C04 @ =gMultiplayerConnections
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _08019B7E
	movs r2, #0
_08019B54:
	ldr r0, _08019C08 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r6
	beq _08019B6A
	ldr r0, _08019C0C @ =gMultiSioRecv
	adds r5, r2, r0
	ldrh r0, [r5]
	cmp r0, #0x41
	bhi _08019AF8
_08019B6A:
	adds r2, #0x14
	adds r6, #1
	cmp r6, #3
	bgt _08019B7E
	ldrb r0, [r7]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08019B54
_08019B7E:
	mov r4, r8
	adds r4, #0x80
	movs r2, #0x8c
	lsls r2, r2, #2
	add r2, r8
	ldr r3, [r2]
	adds r1, r3, #0
	adds r1, #0x80
	str r1, [r2]
	movs r0, #0xa4
	lsls r0, r0, #8
	cmp r1, r0
	ble _08019B9E
	ldr r1, _08019C10 @ =0xFFFF5C80
	adds r0, r3, r1
	str r0, [r2]
_08019B9E:
	ldr r0, [r2]
	rsbs r0, r0, #0
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	lsls r1, r5, #0x10
	asrs r0, r1, #0x10
	mov r6, r8
	adds r6, #0xb0
	cmp r0, #0xef
	bgt _08019BCA
_08019BB2:
	strh r5, [r4, #0x16]
	movs r2, #0xa4
	lsls r2, r2, #0x10
	adds r0, r1, r2
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	bl DisplaySprite
	lsls r1, r5, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0xef
	ble _08019BB2
_08019BCA:
	movs r4, #0xe8
	lsls r4, r4, #1
	add r4, r8
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, r6, #0
	movs r6, #0
_08019BDA:
	lsls r0, r6, #5
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl DisplaySprite
	adds r6, #1
	cmp r6, #7
	ble _08019BDA
_08019BEA:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019BFC: .4byte gMultiSioSend
_08019C00: .4byte 0x00000246
_08019C04: .4byte gMultiplayerConnections
_08019C08: .4byte 0x04000128
_08019C0C: .4byte gMultiSioRecv
_08019C10: .4byte 0xFFFF5C80

	thumb_func_start sa2__sub_8019CCC
sa2__sub_8019CCC: @ 0x08019C14
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r6, #0
	ldr r0, _08019C40 @ =sub_8019D18
	ldr r2, _08019C44 @ =0x00002010
	ldr r1, _08019C48 @ =sub_8019D9C
	str r1, [sp]
	movs r1, #0x34
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r1, _08019C4C @ =gMultiplayerPlayerTasks
	b _08019C58
	.align 2, 0
_08019C40: .4byte sub_8019D18
_08019C44: .4byte 0x00002010
_08019C48: .4byte sub_8019D9C
_08019C4C: .4byte gMultiplayerPlayerTasks
_08019C50:
	adds r1, #4
	adds r6, #1
	cmp r6, #3
	bhi _08019C5E
_08019C58:
	ldr r0, [r1]
	cmp r0, #0
	bne _08019C50
_08019C5E:
	cmp r5, #5
	bhi _08019C70
	ldr r0, _08019C6C @ =sa2__gUnknown_030054B4
	adds r0, r4, r0
	strb r5, [r0]
	b _08019C78
	.align 2, 0
_08019C6C: .4byte sa2__gUnknown_030054B4
_08019C70:
	ldr r0, _08019CA0 @ =sa2__gUnknown_030054B4
	adds r0, r4, r0
	subs r1, r6, #1
	strb r1, [r0]
_08019C78:
	adds r0, r2, #0
	adds r0, #0x30
	movs r1, #0
	strb r4, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r4, r2, #0
	strh r1, [r4, #8]
	movs r0, #0xe2
	lsls r0, r0, #2     @ SA1_ANIM_VS_RESULT
	strh r0, [r4, #0xa]
	cmp r5, #5
	bne _08019CA4
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	movs r0, #0xc
	b _08019CE2
	.align 2, 0
_08019CA0: .4byte sa2__gUnknown_030054B4
_08019CA4:
	cmp r5, #4
	bne _08019CB4
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #2
	strb r1, [r0]
	movs r0, #0xc
	b _08019CE2
_08019CB4:
	cmp r6, #2
	beq _08019CC8
	ldr r0, _08019CD4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #4
	beq _08019CC8
	cmp r0, #3
	beq _08019CC8
	cmp r0, #5
	bne _08019CD8
_08019CC8:
	adds r0, r4, #0
	adds r0, #0x20
	strb r5, [r0]
	movs r0, #0xc
	b _08019CE2
	.align 2, 0
_08019CD4: .4byte gGameMode
_08019CD8:
	adds r0, r5, #3
	adds r1, r4, #0
	adds r1, #0x20
	strb r0, [r1]
	movs r0, #8
_08019CE2:
	bl VramMalloc
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r2, #0
	movs r1, #0
	strh r1, [r4, #0x1a]
	strh r1, [r4, #0x1c]
	adds r3, r4, #0
	adds r3, #0x22
	movs r0, #0x10
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	str r1, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8019D18
sub_8019D18: @ 0x08019D18
	push {r4, lr}
	ldr r0, _08019D60 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r0, r1
	ldr r1, _08019D64 @ =gMultiplayerPlayerTasks
	ldr r2, _08019D68 @ =0x03000030
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r1, _08019D6C @ =0x03000050
	adds r0, r2, r1
	ldr r4, _08019D70 @ =gCamera
	ldrh r0, [r0]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3, #0x16]
	ldr r0, _08019D74 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08019D7C
	ldr r1, _08019D78 @ =0x03000052
	adds r0, r2, r1
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	subs r0, #0x20
	b _08019D88
	.align 2, 0
_08019D60: .4byte gCurTask
_08019D64: .4byte gMultiplayerPlayerTasks
_08019D68: .4byte 0x03000030
_08019D6C: .4byte 0x03000050
_08019D70: .4byte gCamera
_08019D74: .4byte gStageFlags
_08019D78: .4byte 0x03000052
_08019D7C:
	ldr r1, _08019D98 @ =0x03000052
	adds r0, r2, r1
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	adds r0, #0x20
_08019D88:
	strh r0, [r3, #0x18]
	adds r0, r3, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019D98: .4byte 0x03000052

	thumb_func_start sub_8019D9C
sub_8019D9C: @ 0x08019D9C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sa2__sub_8019F08
sa2__sub_8019F08: @ 0x08019DB0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	ldr r1, _08019E90 @ =gUnknown_080BB490
	add r0, sp, #4
	movs r2, #4
	bl memcpy
	add r5, sp, #8
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	bl memset
	ldr r0, _08019E94 @ =sub_801A110
	movs r2, #0x80
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	ldr r4, _08019E98 @ =gGameMode
	ldrb r0, [r4]
	mov sb, r5
	cmp r0, #6
	beq _08019E04
	ldr r0, _08019E9C @ =gMusicManagerState
	movs r1, #0xff
	strb r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #1     @ SE_VS_MULTIPAK_ROUND_OVER
	bl m4aSongNumStart
_08019E04:
	ldrb r3, [r4]
	cmp r3, #4
	bne _08019EF4
	ldr r0, _08019EA0 @ =gMultiplayerCharRings
	ldr r0, [r0]
	str r0, [sp, #8]
	movs r6, #0
	movs r0, #3
	mov ip, r0
_08019E16:
	movs r4, #0
	cmp r4, ip
	bhs _08019E64
	mov r7, sb
	mov r8, ip
_08019E20:
	adds r3, r7, r4
	adds r5, r4, #1
	adds r2, r7, r5
	ldrb r0, [r3]
	ldrb r1, [r2]
	cmp r0, r1
	bhs _08019E5E
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	strb r0, [r3]
	mov r3, sp
	adds r3, r3, r4
	adds r3, #4
	mov r2, sp
	adds r2, r2, r5
	adds r2, #4
	ldrb r1, [r3]
	ldrb r0, [r2]
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	strb r0, [r3]
_08019E5E:
	adds r4, r5, #0
	cmp r4, r8
	blo _08019E20
_08019E64:
	movs r1, #1
	rsbs r1, r1, #0
	add ip, r1
	adds r6, #1
	cmp r6, #3
	bls _08019E16
	movs r6, #0
	mov r5, sb
	ldr r3, _08019EA4 @ =sa2__gUnknown_030054B4
	add r2, sp, #4
_08019E78:
	cmp r6, #0
	beq _08019EA8
	adds r0, r5, r6
	ldrb r0, [r0]
	ldrb r4, [r5]
	cmp r0, r4
	beq _08019EB0
	ldrb r0, [r2]
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0]
	b _08019EC2
	.align 2, 0
_08019E90: .4byte gUnknown_080BB490
_08019E94: .4byte sub_801A110
_08019E98: .4byte gGameMode
_08019E9C: .4byte gMusicManagerState
_08019EA0: .4byte gMultiplayerCharRings
_08019EA4: .4byte sa2__gUnknown_030054B4
_08019EA8:
	ldrb r1, [r5, #1]
	ldrb r0, [r5]
	cmp r0, r1
	bne _08019EBA
_08019EB0:
	ldrb r0, [r2]
	adds r0, r0, r3
	movs r1, #4
	strb r1, [r0]
	b _08019EC2
_08019EBA:
	add r0, sp, #4
	ldrb r0, [r0]
	adds r0, r0, r3
	strb r6, [r0]
_08019EC2:
	adds r2, #1
	adds r6, #1
	cmp r6, #3
	bls _08019E78
	movs r6, #0
	ldr r4, _08019EEC @ =gMultiplayerPlayerTasks
_08019ECE:
	ldr r0, [r4]
	cmp r0, #0
	beq _08019EE2
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08019EF0 @ =sa2__gUnknown_030054B4
	adds r1, r6, r1
	ldrb r1, [r1]
	bl sa2__sub_8019CCC
_08019EE2:
	adds r4, #4
	adds r6, #1
	cmp r6, #3
	bls _08019ECE
	b _0801A0F6
	.align 2, 0
_08019EEC: .4byte gMultiplayerPlayerTasks
_08019EF0: .4byte sa2__gUnknown_030054B4
_08019EF4:
	cmp r3, #5
	beq _08019EFA
	b _0801A00C
_08019EFA:
	movs r6, #0
	ldr r0, _08019F90 @ =gMultiplayerPlayerTasks
	ldr r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _08019F36
	mov ip, sb
	ldr r0, _08019F94 @ =gMultiplayerConnections
	ldrb r3, [r0]
	mov r2, r8
	movs r5, #0x10
	ldr r4, _08019F98 @ =gMultiplayerCharRings
_08019F12:
	adds r1, r5, #0
	lsls r1, r6
	ands r1, r3
	adds r0, r6, #4
	asrs r1, r0
	add r1, ip
	adds r0, r6, r4
	ldrb r0, [r0]
	ldrb r7, [r1]
	adds r0, r0, r7
	strb r0, [r1]
	adds r2, #4
	adds r6, #1
	cmp r6, #3
	bhi _08019F36
	ldr r0, [r2]
	cmp r0, #0
	bne _08019F12
_08019F36:
	mov r3, sb
	ldrb r1, [r3]
	ldrb r2, [r3, #1]
	cmp r1, r2
	bhs _08019F6A
	eors r1, r2
	adds r0, r1, #0
	eors r0, r2
	strb r0, [r3, #1]
	eors r1, r0
	strb r1, [r3]
	add r3, sp, #4
	adds r0, r3, #0
	adds r2, r0, #0
	ldrb r1, [r0]
	ldrb r0, [r2, #1]
	eors r1, r0
	strb r1, [r3]
	adds r0, r2, #0
	ldrb r0, [r0, #1]
	eors r0, r1
	strb r0, [r2, #1]
	adds r1, r2, #0
	ldrb r1, [r1]
	eors r0, r1
	strb r0, [r2]
_08019F6A:
	mov r0, sb
	ldrb r1, [r0, #1]
	ldrb r0, [r0]
	cmp r0, r1
	bne _08019FA0
	movs r6, #0
	ldr r3, _08019F9C @ =sa2__gUnknown_030054B4
	movs r2, #4
	ldr r1, _08019F90 @ =gMultiplayerPlayerTasks
_08019F7C:
	ldr r0, [r1]
	cmp r0, #0
	beq _08019F86
	adds r0, r6, r3
	strb r2, [r0]
_08019F86:
	adds r1, #4
	adds r6, #1
	cmp r6, #3
	bls _08019F7C
	b _08019FE2
	.align 2, 0
_08019F90: .4byte gMultiplayerPlayerTasks
_08019F94: .4byte gMultiplayerConnections
_08019F98: .4byte gMultiplayerCharRings
_08019F9C: .4byte sa2__gUnknown_030054B4
_08019FA0:
	movs r6, #0
	ldr r2, _08019FC8 @ =sa2__gUnknown_030054B4
	ldr r3, _08019FCC @ =gMultiplayerPlayerTasks
	ldr r4, _08019FD0 @ =gMultiplayerConnections
_08019FA8:
	ldr r0, [r3]
	cmp r0, #0
	beq _08019FD8
	ldrb r1, [r4]
	movs r0, #0x10
	lsls r0, r6
	ands r1, r0
	adds r0, r6, #4
	asrs r1, r0
	add r0, sp, #4
	ldrb r0, [r0]
	cmp r1, r0
	bne _08019FD4
	movs r0, #0
	b _08019FD6
	.align 2, 0
_08019FC8: .4byte sa2__gUnknown_030054B4
_08019FCC: .4byte gMultiplayerPlayerTasks
_08019FD0: .4byte gMultiplayerConnections
_08019FD4:
	movs r0, #1
_08019FD6:
	strb r0, [r2]
_08019FD8:
	adds r2, #1
	adds r3, #4
	adds r6, #1
	cmp r6, #3
	bls _08019FA8
_08019FE2:
	movs r6, #0
	ldr r4, _0801A004 @ =gMultiplayerPlayerTasks
_08019FE6:
	ldr r0, [r4]
	cmp r0, #0
	beq _08019FFA
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0801A008 @ =sa2__gUnknown_030054B4
	adds r1, r6, r1
	ldrb r1, [r1]
	bl sa2__sub_8019CCC
_08019FFA:
	adds r4, #4
	adds r6, #1
	cmp r6, #3
	bls _08019FE6
	b _0801A0F6
	.align 2, 0
_0801A004: .4byte gMultiplayerPlayerTasks
_0801A008: .4byte sa2__gUnknown_030054B4
_0801A00C:
	cmp r3, #6
	beq _0801A0F6
	ldr r1, _0801A080 @ =gLoadedSaveGame
	movs r2, #0x85
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r0, _0801A084 @ =gRingCount
	movs r4, #0
	ldrsh r2, [r0, r4]
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _0801A088 @ =gCourseTime
	ldr r2, [r0]
	ldr r0, _0801A08C @ =0x00008CA0
	cmp r2, r0
	bhi _0801A03E
	ldr r0, _0801A090 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0801A0F6
	cmp r2, #0
	bne _0801A0F6
_0801A03E:
	movs r2, #0
	cmp r3, #3
	beq _0801A0AC
	cmp r3, #5
	beq _0801A0AC
	movs r4, #0
	ldr r0, _0801A094 @ =gMultiplayerPlayerTasks
	ldr r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _0801A078
	ldr r5, _0801A098 @ =sa2__gUnknown_030054B4
	movs r3, #1
	rsbs r3, r3, #0
	mov r1, r8
_0801A05C:
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r3
	beq _0801A06A
	adds r2, #1
_0801A06A:
	adds r1, #4
	adds r4, #1
	cmp r4, #3
	bhi _0801A078
	ldr r0, [r1]
	cmp r0, #0
	bne _0801A05C
_0801A078:
	cmp r2, #0
	bne _0801A09C
	movs r5, #4
	b _0801A0B2
	.align 2, 0
_0801A080: .4byte gLoadedSaveGame
_0801A084: .4byte gRingCount
_0801A088: .4byte gCourseTime
_0801A08C: .4byte 0x00008CA0
_0801A090: .4byte gStageFlags
_0801A094: .4byte gMultiplayerPlayerTasks
_0801A098: .4byte sa2__gUnknown_030054B4
_0801A09C:
	subs r0, r4, #1
	cmp r2, r0
	bne _0801A0A8
	lsls r0, r2, #0x18
	lsrs r5, r0, #0x18
	b _0801A0B2
_0801A0A8:
	movs r5, #5
	b _0801A0B2
_0801A0AC:
	movs r5, #4
	ldr r7, _0801A104 @ =gMultiplayerPlayerTasks
	mov r8, r7
_0801A0B2:
	movs r4, #0
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	beq _0801A0F6
	movs r6, #1
	rsbs r6, r6, #0
_0801A0C0:
	ldr r0, _0801A108 @ =sa2__gUnknown_030054B4
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r6
	beq _0801A0DA
	ldr r0, _0801A10C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801A0DA
	cmp r0, #5
	bne _0801A0E4
_0801A0DA:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	bl sa2__sub_8019CCC
_0801A0E4:
	adds r4, #1
	cmp r4, #3
	bhi _0801A0F6
	ldr r0, _0801A104 @ =gMultiplayerPlayerTasks
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0801A0C0
_0801A0F6:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A104: .4byte gMultiplayerPlayerTasks
_0801A108: .4byte sa2__gUnknown_030054B4
_0801A10C: .4byte gGameMode

	thumb_func_start sub_801A110
sub_801A110: @ 0x0801A110
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r6, _0801A17C @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0801A180 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801A12A
	movs r2, #0xf0
_0801A12A:
	ldr r0, _0801A184 @ =gRoomEventQueueWritePos
	ldr r1, _0801A188 @ =gRoomEventQueueSendPos
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801A176
	ldrh r0, [r5]
	adds r1, r0, #1
	strh r1, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r2
	bls _0801A176
	ldr r1, _0801A18C @ =gBldRegs
	movs r4, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r4, [r1, #4]
	ldr r0, _0801A190 @ =gMPlayInfo_BGM
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _0801A194 @ =gMPlayInfo_SE1
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _0801A198 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _0801A19C @ =gMPlayInfo_SE3
	movs r1, #4
	bl m4aMPlayFadeOut
	strh r4, [r5]
	ldr r1, [r6]
	ldr r0, _0801A1A0 @ =sub_801A1A4
	str r0, [r1, #8]
_0801A176:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A17C: .4byte gCurTask
_0801A180: .4byte gGameMode
_0801A184: .4byte gRoomEventQueueWritePos
_0801A188: .4byte gRoomEventQueueSendPos
_0801A18C: .4byte gBldRegs
_0801A190: .4byte gMPlayInfo_BGM
_0801A194: .4byte gMPlayInfo_SE1
_0801A198: .4byte gMPlayInfo_SE2
_0801A19C: .4byte gMPlayInfo_SE3
_0801A1A0: .4byte sub_801A1A4

	thumb_func_start sub_801A1A4
sub_801A1A4: @ 0x0801A1A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0801A290 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	ldr r2, _0801A294 @ =gBldRegs
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r2, #4]
	ldrh r1, [r1]
	ldr r0, _0801A298 @ =0x00000FFF
	cmp r1, r0
	bhi _0801A1D4
	b _0801A36E
_0801A1D4:
	movs r0, #0xbf
	strh r0, [r2]
	movs r0, #0
	strh r0, [r2, #4]
	ldr r0, _0801A29C @ =gGameMode
	ldrb r0, [r0]
	add r1, sp, #8
	mov sl, r1
	cmp r0, #6
	beq _0801A1EA
	b _0801A2EA
_0801A1EA:
	ldr r1, _0801A2A0 @ =gUnknown_080BB490
	mov r0, sp
	movs r2, #4
	bl memcpy
	add r4, sp, #4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl memset
	ldr r0, _0801A2A4 @ =gMultiplayerCharRings
	ldr r0, [r0]
	str r0, [sp, #4]
	movs r7, #0
	mov sb, r4
	movs r0, #3
	mov ip, r0
_0801A20E:
	movs r4, #0
	cmp r4, ip
	bhs _0801A256
	mov r6, sb
	mov r8, ip
_0801A218:
	adds r3, r6, r4
	adds r5, r4, #1
	adds r2, r6, r5
	ldrb r0, [r3]
	ldrb r1, [r2]
	cmp r0, r1
	bhs _0801A250
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	strb r0, [r3]
	mov r1, sp
	adds r3, r1, r4
	adds r2, r1, r5
	ldrb r1, [r3]
	ldrb r0, [r2]
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	strb r0, [r3]
_0801A250:
	adds r4, r5, #0
	cmp r4, r8
	blo _0801A218
_0801A256:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r7, #1
	cmp r7, #3
	bls _0801A20E
	movs r7, #0
	mov r4, sb
	ldr r6, _0801A2A8 @ =sa2__gUnknown_030054B4
	ldr r5, _0801A2AC @ =gMultiplayerCharacters
	mov r3, sp
	mov r2, sp
	ldr r1, _0801A2B0 @ =gMPRingCollectWins
	mov r8, r1
_0801A272:
	cmp r7, #0
	beq _0801A2B4
	adds r0, r4, r7
	ldrb r0, [r0]
	ldrb r1, [r4]
	cmp r0, r1
	beq _0801A2BC
	ldrb r0, [r2]
	adds r0, r0, r6
	strb r7, [r0]
	ldrb r0, [r2]
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
	b _0801A2E2
	.align 2, 0
_0801A290: .4byte gCurTask
_0801A294: .4byte gBldRegs
_0801A298: .4byte 0x00000FFF
_0801A29C: .4byte gGameMode
_0801A2A0: .4byte gUnknown_080BB490
_0801A2A4: .4byte gMultiplayerCharRings
_0801A2A8: .4byte sa2__gUnknown_030054B4
_0801A2AC: .4byte gMultiplayerCharacters
_0801A2B0: .4byte gMPRingCollectWins
_0801A2B4:
	ldrb r1, [r4, #1]
	ldrb r0, [r4]
	cmp r0, r1
	bne _0801A2CC
_0801A2BC:
	ldrb r0, [r2]
	adds r0, r0, r6
	strb r7, [r0]
	ldrb r0, [r2]
	adds r0, r0, r5
	movs r1, #2
	strb r1, [r0]
	b _0801A2E2
_0801A2CC:
	ldrb r0, [r3]
	adds r0, r0, r6
	strb r7, [r0]
	ldrb r1, [r3]
	add r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, r0, r5
	strb r7, [r0]
_0801A2E2:
	adds r2, #1
	adds r7, #1
	cmp r7, #3
	bls _0801A272
_0801A2EA:
	ldr r1, _0801A32C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0801A330 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801A334 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0801A338 @ =sa2__gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0801A33C @ =gVramGraphicsCopyCursor
	ldr r0, _0801A340 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801A344 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801A354
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, _0801A348 @ =0x040000D4
	mov r0, sl
	str r0, [r1]
	ldr r0, _0801A34C @ =gMultiSioSend
	str r0, [r1, #4]
	ldr r0, _0801A350 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	bl CreateChaoMessageMP
	b _0801A36E
	.align 2, 0
_0801A32C: .4byte 0x0000FFFF
_0801A330: .4byte gBackgroundsCopyQueueCursor
_0801A334: .4byte gBackgroundsCopyQueueIndex
_0801A338: .4byte sa2__gUnknown_03005390
_0801A33C: .4byte gVramGraphicsCopyCursor
_0801A340: .4byte gVramGraphicsCopyQueueIndex
_0801A344: .4byte gGameMode
_0801A348: .4byte 0x040000D4
_0801A34C: .4byte gMultiSioSend
_0801A350: .4byte 0x85000005
_0801A354:
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, _0801A380 @ =0x040000D4
	mov r0, sl
	str r0, [r1]
	ldr r0, _0801A384 @ =gMultiSioSend
	str r0, [r1, #4]
	ldr r0, _0801A388 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	bl CreateMultiplayerSinglePakResultsScreen
_0801A36E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A380: .4byte 0x040000D4
_0801A384: .4byte gMultiSioSend
_0801A388: .4byte 0x85000005

	thumb_func_start CreatePauseMenu
CreatePauseMenu: @ 0x0801A38C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0801A470 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0801A3AA
	b _0801A548
_0801A3AA:
	ldr r0, _0801A474 @ =sub_801A6B8
	ldr r2, _0801A478 @ =0x0000FFFE
	ldr r1, _0801A47C @ =sub_801A70C
	str r1, [sp]
	movs r1, #0x64
	movs r3, #4
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r6, r0
	ldr r2, _0801A480 @ =0x03000060
	adds r0, r6, r2
	movs r2, #0
	mov sb, r2
	strh r5, [r0]
	ldr r0, _0801A484 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801A4B0
	adds r7, r1, #0
	movs r0, #0x60
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x40
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _0801A488 @ =0x00000329
	strh r0, [r7, #0xa]
	ldr r1, _0801A48C @ =0x03000020
	adds r0, r6, r1
	mov r2, sb
	strb r2, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r0, _0801A490 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0801A494 @ =0x03000022
	adds r0, r6, r1
	movs r2, #0x10
	mov r8, r2
	mov r1, r8
	strb r1, [r0]
	ldr r2, _0801A498 @ =0x03000025
	adds r0, r6, r2
	mov r1, sb
	strb r1, [r0]
	movs r2, #0x78
	mov sl, r2
	mov r0, sl
	strh r0, [r7, #0x16]
	movs r4, #0x50
	strh r4, [r7, #0x18]
	str r5, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r1, _0801A49C @ =0x03000030
	adds r7, r6, r1
	movs r0, #0x40
	bl VramMalloc
	str r0, [r7, #4]
	movs r2, #0x40
	strh r2, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _0801A4A0 @ =0x000002CE
	strh r0, [r7, #0xa]
	ldr r1, _0801A4A4 @ =0x03000050
	adds r0, r6, r1
	mov r2, sb
	strb r2, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r0, _0801A4A8 @ =0x03000051
	adds r1, r6, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0801A4AC @ =0x03000052
	adds r0, r6, r1
	mov r2, r8
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	mov r2, sb
	strb r2, [r0]
	mov r0, sl
	strh r0, [r7, #0x16]
	strh r4, [r7, #0x18]
	str r5, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	b _0801A548
	.align 2, 0
_0801A470: .4byte gStageFlags
_0801A474: .4byte sub_801A6B8
_0801A478: .4byte 0x0000FFFE
_0801A47C: .4byte sub_801A70C
_0801A480: .4byte 0x03000060
_0801A484: .4byte gGameMode
_0801A488: .4byte 0x00000329
_0801A48C: .4byte 0x03000020
_0801A490: .4byte 0x03000021
_0801A494: .4byte 0x03000022
_0801A498: .4byte 0x03000025
_0801A49C: .4byte 0x03000030
_0801A4A0: .4byte 0x000002CE
_0801A4A4: .4byte 0x03000050
_0801A4A8: .4byte 0x03000051
_0801A4AC: .4byte 0x03000052
_0801A4B0:
	adds r7, r1, #0
	movs r0, #0x30
	bl VramMalloc
	str r0, [r7, #4]
	movs r1, #0x40
	strh r1, [r7, #0x1a]
	strh r5, [r7, #8]
	movs r0, #0xb4
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r2, _0801A558 @ =0x03000020
	adds r0, r6, r2
	mov r1, sb
	strb r1, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	adds r2, #1
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0801A55C @ =0x03000022
	adds r0, r6, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	mov r2, sb
	strb r2, [r0]
	movs r0, #0x78
	mov sl, r0
	mov r1, sl
	strh r1, [r7, #0x16]
	movs r4, #0x50
	strh r4, [r7, #0x18]
	str r5, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r2, _0801A560 @ =0x03000030
	adds r7, r6, r2
	movs r0, #0x14
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x40
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _0801A564 @ =0x000002CE
	strh r0, [r7, #0xa]
	ldr r1, _0801A568 @ =0x03000050
	adds r0, r6, r1
	mov r2, sb
	strb r2, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r0, _0801A56C @ =0x03000051
	adds r1, r6, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0801A570 @ =0x03000052
	adds r0, r6, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r6, r1
	mov r2, sb
	strb r2, [r0]
	mov r0, sl
	strh r0, [r7, #0x16]
	strh r4, [r7, #0x18]
	str r5, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
_0801A548:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A558: .4byte 0x03000020
_0801A55C: .4byte 0x03000022
_0801A560: .4byte 0x03000030
_0801A564: .4byte 0x000002CE
_0801A568: .4byte 0x03000050
_0801A56C: .4byte 0x03000051
_0801A570: .4byte 0x03000052

	thumb_func_start sub_801A574
sub_801A574: @ 0x0801A574
	push {r4, r5, r6, lr}
	ldr r6, _0801A5A8 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0801A5AC @ =gPressedKeys
	ldrh r2, [r0]
	movs r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0801A5B8
	ldr r2, _0801A5B0 @ =gFlags
	ldr r0, [r2]
	ldr r1, _0801A5B4 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	bl m4aMPlayAllContinue
	ldr r0, [r6]
	bl TaskDestroy
	b _0801A6B2
	.align 2, 0
_0801A5A8: .4byte gCurTask
_0801A5AC: .4byte gPressedKeys
_0801A5B0: .4byte gFlags
_0801A5B4: .4byte 0xFFFFFBFF
_0801A5B8:
	ldr r0, _0801A5FC @ =gGameMode
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #1
	bne _0801A620
	ands r1, r2
	cmp r1, #0
	beq _0801A620
	ldr r2, _0801A600 @ =gFlags
	ldr r0, [r2]
	ldr r1, _0801A604 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r1, _0801A608 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0801A60C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0801A610 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801A614 @ =sa2__gUnknown_03005390
	strb r4, [r0]
	ldr r1, _0801A618 @ =gVramGraphicsCopyCursor
	ldr r0, _0801A61C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateTimeAttackLobbyScreen
	b _0801A6B2
	.align 2, 0
_0801A5FC: .4byte gGameMode
_0801A600: .4byte gFlags
_0801A604: .4byte 0xFFFFFBFF
_0801A608: .4byte 0x0000FFFF
_0801A60C: .4byte gBackgroundsCopyQueueCursor
_0801A610: .4byte gBackgroundsCopyQueueIndex
_0801A614: .4byte sa2__gUnknown_03005390
_0801A618: .4byte gVramGraphicsCopyCursor
_0801A61C: .4byte gVramGraphicsCopyQueueIndex
_0801A620:
	ldr r0, _0801A638 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0801A63C
	ldr r0, [r5, #0x40]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x10]
	orrs r0, r1
	b _0801A648
	.align 2, 0
_0801A638: .4byte gBldRegs
_0801A63C:
	ldr r0, [r5, #0x40]
	ldr r1, _0801A684 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x10]
	ands r0, r1
_0801A648:
	str r0, [r5, #0x10]
	ldrb r0, [r3]
	adds r4, r5, #0
	adds r4, #0x30
	cmp r0, #1
	bne _0801A6A6
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r1]
	adds r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _0801A6A6
	movs r0, #0
	strh r0, [r1]
	ldrh r0, [r5, #0x3a]
	ldr r1, _0801A688 @ =0x000002CE
	cmp r0, r1
	bne _0801A694
	ldr r0, _0801A68C @ =0x0000032A
	strh r0, [r5, #0x3a]
	ldr r0, _0801A690 @ =gLoadedSaveGame
	ldrb r1, [r0, #0x19]
	adds r0, r5, #0
	adds r0, #0x50
	strb r1, [r0]
	b _0801A69C
	.align 2, 0
_0801A684: .4byte 0xFFFFFE7F
_0801A688: .4byte 0x000002CE
_0801A68C: .4byte 0x0000032A
_0801A690: .4byte gLoadedSaveGame
_0801A694:
	strh r1, [r5, #0x3a]
	adds r0, r5, #0
	adds r0, #0x50
	strb r2, [r0]
_0801A69C:
	adds r4, r5, #0
	adds r4, #0x30
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_0801A6A6:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	bl DisplaySprite
_0801A6B2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_801A6B8
sub_801A6B8: @ 0x0801A6B8
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r0, _0801A6F8 @ =gSongTable + 0x474
	ldrh r6, [r0]
	movs r5, #0
	ldr r7, _0801A6FC @ =gMPlayTable
_0801A6C4:
	cmp r4, r6
	beq _0801A6D0
	adds r0, r5, r7
	ldr r0, [r0]
	bl MPlayStop
_0801A6D0:
	adds r5, #0xc
	adds r4, #1
	cmp r4, #3
	bls _0801A6C4
	movs r0, #0x8e      @ SE_PAUSE
	bl m4aSongNumStart
	ldr r2, _0801A700 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0801A704 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801A708 @ =sub_801A574
	str r0, [r1, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A6F8: .4byte gSongTable + 0x474
_0801A6FC: .4byte gMPlayTable
_0801A700: .4byte gFlags
_0801A704: .4byte gCurTask
_0801A708: .4byte sub_801A574

	thumb_func_start sub_801A70C
sub_801A70C: @ 0x0801A70C
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, [r4, #4]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start MultiPakCommunicationError
MultiPakCommunicationError: @ 0x0801A728
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
	bl MultiPakCommunicationError
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
	bl MultiPakCommunicationError
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
	ldr r0, _0801B8BC @ =gUnknown_080BB494
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
_0801B8BC: .4byte gUnknown_080BB494
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
