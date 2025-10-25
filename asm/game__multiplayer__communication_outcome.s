.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of game/multiplayer/communication_outcome.c ---

.if 0
.endif

	thumb_func_start Task_MultipackOutcomeScreen
Task_MultipackOutcomeScreen: @ 0x0803C3E0
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
