.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of game/multiplayer/communication_outcome.c ---

	thumb_func_start CreateMultipackOutcomeScreen
CreateMultipackOutcomeScreen: @ 0x0803C1AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, _0803C388 @ =gDispCnt
	movs r2, #0xc5
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0803C38C @ =gBgCntRegs
	movs r4, #0
	ldr r0, _0803C390 @ =0x00000803
	strh r0, [r1]
	ldr r1, _0803C394 @ =gBgScrollRegs
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	strh r4, [r1, #2]
	ldr r1, _0803C398 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x31
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	ldr r1, _0803C39C @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r0, _0803C3A0 @ =sub_803C3E0
	movs r1, #0x87
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #6
	str r4, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, _0803C3A4 @ =0x03000203
	adds r0, r1, r2
	strb r5, [r0]
	ldr r0, _0803C3A8 @ =0x03000200
	adds r2, r1, r0
	movs r0, #0x78
	strh r0, [r2]
	ldr r2, _0803C3AC @ =0x030001FC
	adds r1, r1, r2
	str r4, [r1]
	movs r1, #0
	movs r2, #0
	ldr r0, _0803C3B0 @ =gMultiplayerConnections
	ldrb r3, [r0]
	movs r4, #1
_0803C22A:
	adds r0, r3, #0
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _0803C23A
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0803C23A:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0803C22A
	ldr r1, _0803C3B4 @ =0x00000206
	adds r0, r7, r1
	movs r4, #0
	strb r2, [r0]
	adds r2, r7, #0
	adds r2, #0xa0
	movs r0, #0
	mov sb, r0
	movs r0, #0x5d
	strh r0, [r2, #0x16]
	movs r0, #0x55
	strh r0, [r2, #0x18]
	ldr r0, _0803C3B8 @ =0x06010300
	str r0, [r2, #4]
	movs r1, #0xf0
	lsls r1, r1, #2
	mov sl, r1
	mov r0, sl
	strh r0, [r2, #0x1a]
	strh r4, [r2, #8]
	ldr r0, _0803C3BC @ =gUnknown_084ADA0A
	lsls r1, r5, #1
	mov r8, r1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	ldr r0, _0803C3C0 @ =gUnknown_084ADA0E
	adds r0, r5, r0
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc0
	strb r1, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	adds r1, r7, #0
	adds r1, #0xc1
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xc2
	movs r6, #0x10
	strb r6, [r0]
	adds r0, #3
	mov r1, sb
	strb r1, [r0]
	movs r5, #0x80
	lsls r5, r5, #6
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r2, r7, #0
	adds r2, #0x40
	strh r4, [r2, #0x16]
	movs r0, #0x20
	strh r0, [r2, #0x18]
	ldr r0, _0803C3C4 @ =0x06010000
	str r0, [r2, #4]
	mov r0, sl
	strh r0, [r2, #0x1a]
	strh r4, [r2, #8]
	ldr r0, _0803C3C8 @ =0x0000037B
	strh r0, [r2, #0xa]
	ldr r1, _0803C3CC @ =0x00000203
	adds r0, r7, r1
	ldrb r0, [r0]
	adds r0, #8
	adds r1, r7, #0
	adds r1, #0x60
	strb r0, [r1]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x62
	strb r6, [r0]
	adds r0, #3
	mov r1, sb
	strb r1, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r2, r7, #0
	adds r2, #0x70
	strh r4, [r2, #0x16]
	movs r0, #0x15
	strh r0, [r2, #0x18]
	ldr r0, _0803C3D0 @ =0x06010180
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r4, [r2, #8]
	subs r0, #0xa4
	strh r0, [r2, #0xa]
	adds r0, r7, #0
	adds r0, #0x90
	mov r1, sb
	strb r1, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	adds r1, r7, #0
	adds r1, #0x91
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x92
	strb r6, [r0]
	adds r0, #3
	mov r1, sb
	strb r1, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r7, #4]
	strh r4, [r7, #0xa]
	ldr r0, _0803C3D4 @ =0x06004000
	str r0, [r7, #0xc]
	strh r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	strh r4, [r7, #0x1e]
	strh r4, [r7, #0x20]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	movs r0, #0x1e
	strh r0, [r7, #0x26]
	movs r0, #0x14
	strh r0, [r7, #0x28]
	adds r0, r7, #0
	adds r0, #0x2a
	mov r2, sb
	strb r2, [r0]
	strh r4, [r7, #0x2e]
	ldr r0, _0803C3D8 @ =gUnknown_084ADA1A
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r7, #0x1c]
	adds r0, r7, #0
	bl DrawBackground
	ldr r0, _0803C3DC @ =gUnknown_084ADA1E
	add r8, r0
	mov r1, r8
	ldrh r0, [r1]
	bl m4aSongNumStart
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C388: .4byte gDispCnt
_0803C38C: .4byte gBgCntRegs
_0803C390: .4byte 0x00000803
_0803C394: .4byte gBgScrollRegs
_0803C398: .4byte gWinRegs
_0803C39C: .4byte gBldRegs
_0803C3A0: .4byte sub_803C3E0
_0803C3A4: .4byte 0x03000203
_0803C3A8: .4byte 0x03000200
_0803C3AC: .4byte 0x030001FC
_0803C3B0: .4byte gMultiplayerConnections
_0803C3B4: .4byte 0x00000206
_0803C3B8: .4byte 0x06010300
_0803C3BC: .4byte gUnknown_084ADA0A
_0803C3C0: .4byte gUnknown_084ADA0E
_0803C3C4: .4byte 0x06010000
_0803C3C8: .4byte 0x0000037B
_0803C3CC: .4byte 0x00000203
_0803C3D0: .4byte 0x06010180
_0803C3D4: .4byte 0x06004000
_0803C3D8: .4byte gUnknown_084ADA1A
_0803C3DC: .4byte gUnknown_084ADA1E

	thumb_func_start sub_803C3E0
sub_803C3E0: @ 0x0803C3E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0803C440 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov sl, r0
	ldr r0, _0803C444 @ =0x030000A0
	adds r5, r6, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r1, _0803C448 @ =0x03000203
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C458
	adds r1, #3
	adds r0, r6, r1
	ldrb r4, [r0]
	ldr r1, _0803C44C @ =gUnknown_084ADA10
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x16]
	ldr r0, _0803C450 @ =0x03000040
	adds r7, r6, r0
	ldr r1, _0803C454 @ =0x03000070
	adds r1, r6, r1
	str r1, [sp]
	cmp r4, #0
	beq _0803C468
_0803C42C:
	adds r0, r5, #0
	bl DisplaySprite
	ldrh r0, [r5, #0x16]
	adds r0, #0x2a
	strh r0, [r5, #0x16]
	subs r4, #1
	cmp r4, #0
	bne _0803C42C
	b _0803C468
	.align 2, 0
_0803C440: .4byte gCurTask
_0803C444: .4byte 0x030000A0
_0803C448: .4byte 0x03000203
_0803C44C: .4byte gUnknown_084ADA10
_0803C450: .4byte 0x03000040
_0803C454: .4byte 0x03000070
_0803C458:
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803C4FC @ =0x03000040
	adds r7, r6, r0
	ldr r1, _0803C500 @ =0x03000070
	adds r1, r6, r1
	str r1, [sp]
_0803C468:
	ldr r1, _0803C504 @ =gUnknown_084ADA08
	ldr r0, _0803C508 @ =0x00000203
	add r0, sl
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r6, [r0]
	movs r4, #0xfe
	lsls r4, r4, #1
	add r4, sl
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	lsls r1, r6, #8
	cmp r0, r1
	ble _0803C48A
	subs r0, r0, r1
	str r0, [r4]
_0803C48A:
	adds r5, r7, #0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r4, r0, r6
	movs r0, #0xfb
	subs r0, r0, r4
	movs r1, #0xb
	rsbs r1, r1, #0
	cmp r0, r1
	ble _0803C4C4
	movs r0, #0xfb
	mov sb, r0
	movs r0, #0xfb
	mov r8, r0
	adds r7, r1, #0
_0803C4AE:
	mov r1, sb
	subs r0, r1, r4
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	bl DisplaySprite
	adds r4, r4, r6
	mov r1, r8
	subs r0, r1, r4
	cmp r0, r7
	bgt _0803C4AE
_0803C4C4:
	ldr r5, [sp]
	movs r0, #0x15
	strh r0, [r5, #0x18]
	movs r4, #0
_0803C4CC:
	lsls r0, r4, #5
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	bl DisplaySprite
	adds r4, #1
	cmp r4, #7
	bls _0803C4CC
	movs r1, #0x80
	lsls r1, r1, #2
	add r1, sl
	ldrh r0, [r1]
	adds r5, r0, #0
	cmp r5, #0
	beq _0803C510
	subs r0, #1
	strh r0, [r1]
	ldr r1, _0803C50C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0803C58A
	subs r0, #1
	strh r0, [r1, #4]
	b _0803C58A
	.align 2, 0
_0803C4FC: .4byte 0x03000040
_0803C500: .4byte 0x03000070
_0803C504: .4byte gUnknown_084ADA08
_0803C508: .4byte 0x00000203
_0803C50C: .4byte gBldRegs
_0803C510:
	ldr r1, _0803C520 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0x10
	beq _0803C524
	adds r0, #1
	strh r0, [r1, #4]
	b _0803C58A
	.align 2, 0
_0803C520: .4byte gBldRegs
_0803C524:
	ldr r0, _0803C554 @ =0x00000203
	add r0, sl
	ldrb r4, [r0]
	ldr r1, _0803C558 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803C55C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0803C560 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803C564 @ =sa2__gUnknown_03005390
	strb r5, [r0]
	ldr r1, _0803C568 @ =gVramGraphicsCopyCursor
	ldr r0, _0803C56C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	cmp r4, #0
	bne _0803C570
	movs r0, #0
	bl CreateMultiplayerResultsScreen
	b _0803C58A
	.align 2, 0
_0803C554: .4byte 0x00000203
_0803C558: .4byte 0x0000FFFF
_0803C55C: .4byte gBackgroundsCopyQueueCursor
_0803C560: .4byte gBackgroundsCopyQueueIndex
_0803C564: .4byte sa2__gUnknown_03005390
_0803C568: .4byte gVramGraphicsCopyCursor
_0803C56C: .4byte gVramGraphicsCopyQueueIndex
_0803C570:
	ldr r0, _0803C59C @ =gMultiSioEnabled
	strb r5, [r0]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	ldr r1, _0803C5A0 @ =gTilemapsRef
	ldr r0, _0803C5A4 @ =gTilemaps
	str r0, [r1]
	movs r0, #1
	bl CreateMainMenu
_0803C58A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C59C: .4byte gMultiSioEnabled
_0803C5A0: .4byte gTilemapsRef
_0803C5A4: .4byte gTilemaps
