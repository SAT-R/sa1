.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r0, _0804BBF4 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	ldr r2, _0804BBF8 @ =0x03000030
	adds r0, r1, r2
	ldrb r0, [r0]
	mov r8, r0
	orrs r6, r1
	ldr r5, _0804BBFC @ =gCamera
	ldr r0, _0804BC00 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0804BC10
	ldr r1, _0804BC04 @ =gMultiplayerPlayerTasks
	mov r2, r8
	lsls r0, r2, #0x18
	asrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r1, _0804BC08 @ =0x03000057
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804BC28
	ldr r3, _0804BC0C @ =0x03000050
	adds r0, r2, r3
	ldrh r1, [r0]
	adds r3, #2
	adds r0, r2, r3
	ldrh r3, [r0]
	ldr r2, [r4, #0x10]
	b _0804BC52
	.align 2, 0
_0804BBF4: .4byte gCurTask
_0804BBF8: .4byte 0x03000030
_0804BBFC: .4byte gCamera
_0804BC00: .4byte gGameMode
_0804BC04: .4byte gMultiplayerPlayerTasks
_0804BC08: .4byte 0x03000057
_0804BC0C: .4byte 0x03000050
_0804BC10:
	ldr r2, _0804BC30 @ =gPlayer
	mov r0, r8
	cmp r0, #0
	beq _0804BC1A
	ldr r2, _0804BC34 @ =gPartner
_0804BC1A:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804BC38
_0804BC28:
	adds r0, r3, #0
	bl TaskDestroy
	b _0804BD62
	.align 2, 0
_0804BC30: .4byte gPlayer
_0804BC34: .4byte gPartner
_0804BC38:
	ldr r0, [r2]
	adds r1, r2, #0
	adds r1, #0x50
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r2, #4]
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	ldr r0, [r2, #0x64]
	ldr r2, [r0, #0x1c]
_0804BC52:
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r2, r0
	ldrh r0, [r5]
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	subs r0, r7, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r5, #2]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	subs r0, r1, r0
	strh r0, [r6, #0x18]
	ldr r0, [r6, #0x10]
	ldr r1, _0804BD30 @ =0xFFFFCFFF
	ands r0, r1
	orrs r0, r2
	str r0, [r6, #0x10]
	ldr r1, _0804BD34 @ =gStageTime
	mov sb, r1
	ldr r0, [r1]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0804BD0E
	ldr r5, _0804BD38 @ =gPseudoRandom
	ldr r0, [r5]
	ldr r3, _0804BD3C @ =0x00196225
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r2, _0804BD40 @ =0x3C6EF35F
	adds r1, r1, r2
	lsrs r4, r1, #8
	movs r0, #0xf
	ands r4, r0
	muls r1, r3, r1
	adds r1, r1, r2
	str r1, [r5]
	lsrs r1, r1, #8
	movs r0, #0xff
	ldr r2, _0804BD44 @ =gSineTable
	ands r1, r0
	lsls r0, r1, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, r7, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	muls r1, r4, r1
	asrs r1, r1, #8
	add r1, ip
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _0804BD48 @ =Task_UpdateMpSpriteTaskSprite
	str r2, [sp]
	ldr r2, _0804BD4C @ =TaskDestructor_MultiplayerSpriteTask
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl CreateMultiplayerSpriteTask
	ldrh r4, [r0, #6]
	ldr r0, _0804BD50 @ =0x03000018
	adds r5, r4, r0
	movs r0, #9
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xbc
	lsls r0, r0, #2
	strh r0, [r5, #0xa]
	ldr r1, _0804BD54 @ =0x03000038
	adds r4, r4, r1
	movs r0, #1
	strb r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
_0804BD0E:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	movs r3, #1
	adds r2, r3, #0
	mov r0, r8
	bics r2, r0
	mov r1, sb
	ldr r0, [r1]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804BD58
	cmp r2, r3
	bne _0804BD5C
	b _0804BD62
	.align 2, 0
_0804BD30: .4byte 0xFFFFCFFF
_0804BD34: .4byte gStageTime
_0804BD38: .4byte gPseudoRandom
_0804BD3C: .4byte 0x00196225
_0804BD40: .4byte 0x3C6EF35F
_0804BD44: .4byte gSineTable
_0804BD48: .4byte Task_UpdateMpSpriteTaskSprite
_0804BD4C: .4byte TaskDestructor_MultiplayerSpriteTask
_0804BD50: .4byte 0x03000018
_0804BD54: .4byte 0x03000038
_0804BD58:
	cmp r2, #0
	beq _0804BD62
_0804BD5C:
	adds r0, r6, #0
	bl DisplaySprite
_0804BD62:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
