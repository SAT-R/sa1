.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_Item_Shield_Normal
Task_Item_Shield_Normal: @ 0x0804B86C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804B8D4 @ =gCurTask
	ldr r5, [r0]
	ldrh r1, [r5, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	ldr r2, _0804B8D8 @ =0x03000030
	adds r0, r1, r2
	ldrb r2, [r0]
	orrs r4, r1
	ldr r0, _0804B8DC @ =gCamera
	mov ip, r0
	ldr r0, _0804B8E0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0804B8F4
	ldr r1, _0804B8E4 @ =gMultiplayerPlayerTasks
	lsls r2, r2, #0x18
	asrs r0, r2, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r3, r1
	adds r1, #0x57
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0804B90E
	ldr r2, _0804B8E8 @ =0x03000050
	adds r0, r3, r2
	ldrh r0, [r0]
	mov r2, ip
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r1, _0804B8EC @ =0x03000052
	adds r0, r3, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r2, [r4, #0x10]
	ldr r0, _0804B8F0 @ =0xFFFFCFFF
	ands r2, r0
	str r2, [r4, #0x10]
	ldr r0, [r7, #0x10]
	b _0804B954
	.align 2, 0
_0804B8D4: .4byte gCurTask
_0804B8D8: .4byte 0x03000030
_0804B8DC: .4byte gCamera
_0804B8E0: .4byte gGameMode
_0804B8E4: .4byte gMultiplayerPlayerTasks
_0804B8E8: .4byte 0x03000050
_0804B8EC: .4byte 0x03000052
_0804B8F0: .4byte 0xFFFFCFFF
_0804B8F4:
	lsls r0, r2, #0x18
	ldr r3, _0804B918 @ =gPlayer
	adds r6, r0, #0
	cmp r6, #0
	beq _0804B900
	ldr r3, _0804B91C @ =gPartner
_0804B900:
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804B920
_0804B90E:
	adds r0, r5, #0
	bl TaskDestroy
	b _0804B98E
	.align 2, 0
_0804B918: .4byte gPlayer
_0804B91C: .4byte gPartner
_0804B920:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804B98E
	ldr r0, [r3]
	asrs r0, r0, #8
	mov r2, ip
	ldrh r1, [r2]
	adds r2, r3, #0
	adds r2, #0x50
	subs r0, r0, r1
	ldrh r2, [r2]
	adds r0, r0, r2
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	mov r2, ip
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r2, [r4, #0x10]
	ldr r0, _0804B97C @ =0xFFFFCFFF
	ands r2, r0
	str r2, [r4, #0x10]
	ldr r0, [r3, #0x64]
	ldr r0, [r0, #0x1c]
_0804B954:
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	orrs r2, r0
	str r2, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	asrs r2, r6, #0x18
	movs r3, #1
	ands r2, r3
	ldr r0, _0804B980 @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804B984
	cmp r2, r3
	bne _0804B988
	b _0804B98E
	.align 2, 0
_0804B97C: .4byte 0xFFFFCFFF
_0804B980: .4byte gStageTime
_0804B984:
	cmp r2, #0
	beq _0804B98E
_0804B988:
	adds r0, r4, #0
	bl DisplaySprite
_0804B98E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
.endif

	thumb_func_start Task_Item_Shield_Magnetic
Task_Item_Shield_Magnetic: @ 0x0804B994
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804B9FC @ =gCurTask
	ldr r5, [r0]
	ldrh r1, [r5, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	ldr r2, _0804BA00 @ =0x03000030
	adds r0, r1, r2
	ldrb r2, [r0]
	orrs r4, r1
	ldr r0, _0804BA04 @ =gCamera
	mov ip, r0
	ldr r0, _0804BA08 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0804BA1C
	ldr r1, _0804BA0C @ =gMultiplayerPlayerTasks
	lsls r2, r2, #0x18
	asrs r0, r2, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r3, r1
	adds r1, #0x57
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0804BA36
	ldr r2, _0804BA10 @ =0x03000050
	adds r0, r3, r2
	ldrh r0, [r0]
	mov r2, ip
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r1, _0804BA14 @ =0x03000052
	adds r0, r3, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r2, [r4, #0x10]
	ldr r0, _0804BA18 @ =0xFFFFCFFF
	ands r2, r0
	str r2, [r4, #0x10]
	ldr r0, [r7, #0x10]
	b _0804BA7C
	.align 2, 0
_0804B9FC: .4byte gCurTask
_0804BA00: .4byte 0x03000030
_0804BA04: .4byte gCamera
_0804BA08: .4byte gGameMode
_0804BA0C: .4byte gMultiplayerPlayerTasks
_0804BA10: .4byte 0x03000050
_0804BA14: .4byte 0x03000052
_0804BA18: .4byte 0xFFFFCFFF
_0804BA1C:
	lsls r0, r2, #0x18
	ldr r3, _0804BA40 @ =gPlayer
	adds r6, r0, #0
	cmp r6, #0
	beq _0804BA28
	ldr r3, _0804BA44 @ =gPartner
_0804BA28:
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0804BA48
_0804BA36:
	adds r0, r5, #0
	bl TaskDestroy
	b _0804BAB6
	.align 2, 0
_0804BA40: .4byte gPlayer
_0804BA44: .4byte gPartner
_0804BA48:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804BAB6
	ldr r0, [r3]
	asrs r0, r0, #8
	mov r2, ip
	ldrh r1, [r2]
	adds r2, r3, #0
	adds r2, #0x50
	subs r0, r0, r1
	ldrh r2, [r2]
	adds r0, r0, r2
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	mov r2, ip
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r2, [r4, #0x10]
	ldr r0, _0804BAA4 @ =0xFFFFCFFF
	ands r2, r0
	str r2, [r4, #0x10]
	ldr r0, [r3, #0x64]
	ldr r0, [r0, #0x1c]
_0804BA7C:
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	orrs r2, r0
	str r2, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	asrs r2, r6, #0x18
	movs r3, #1
	ands r2, r3
	ldr r0, _0804BAA8 @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804BAAC
	cmp r2, r3
	bne _0804BAB0
	b _0804BAB6
	.align 2, 0
_0804BAA4: .4byte 0xFFFFCFFF
_0804BAA8: .4byte gStageTime
_0804BAAC:
	cmp r2, #0
	beq _0804BAB6
_0804BAB0:
	adds r0, r4, #0
	bl DisplaySprite
_0804BAB6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804BABC
sub_804BABC: @ 0x0804BABC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804BAEC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	ldr r3, _0804BAF0 @ =0x03000030
	adds r0, r1, r3
	ldrb r3, [r0]
	adds r5, r3, #0
	adds r4, r6, #0
	orrs r4, r1
	ldr r7, _0804BAF4 @ =gCamera
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804BAF8
	adds r0, r2, #0
	bl TaskDestroy
	b _0804BB84
	.align 2, 0
_0804BAEC: .4byte gCurTask
_0804BAF0: .4byte 0x03000030
_0804BAF4: .4byte gCamera
_0804BAF8:
	ldr r0, _0804BB20 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0804BB30
	ldr r1, _0804BB24 @ =gMultiplayerPlayerTasks
	lsls r0, r3, #0x18
	asrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r2, r0, r6
	ldr r3, _0804BB28 @ =0x03000050
	adds r1, r0, r3
	ldrh r5, [r1]
	ldr r1, _0804BB2C @ =0x03000052
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r2, [r2, #0x10]
	b _0804BB54
	.align 2, 0
_0804BB20: .4byte gGameMode
_0804BB24: .4byte gMultiplayerPlayerTasks
_0804BB28: .4byte 0x03000050
_0804BB2C: .4byte 0x03000052
_0804BB30:
	lsls r0, r5, #0x18
	ldr r2, _0804BB8C @ =gPlayer
	cmp r0, #0
	beq _0804BB3A
	ldr r2, _0804BB90 @ =gPartner
_0804BB3A:
	ldr r0, [r2]
	adds r1, r2, #0
	adds r1, #0x50
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [r2, #4]
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	ldr r0, [r2, #0x64]
	ldr r2, [r0, #0x1c]
_0804BB54:
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r2, r0
	ldrh r1, [r7]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r1, [r7, #2]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, [r4, #0x10]
	ldr r1, _0804BB94 @ =0xFFFFCFFF
	ands r0, r1
	orrs r0, r2
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0804BB84:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BB8C: .4byte gPlayer
_0804BB90: .4byte gPartner
_0804BB94: .4byte 0xFFFFCFFF

	thumb_func_start Task_Item_Invincibility
Task_Item_Invincibility: @ 0x0804BB98
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
	ldr r2, _0804BD48 @ =Task_StageGoalBonusPoints
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
_0804BD48: .4byte Task_StageGoalBonusPoints
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

	thumb_func_start Task_Item_Confusion
Task_Item_Confusion: @ 0x0804BD70
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804BDBC @ =gCurTask
	ldr r4, [r0]
	ldrh r1, [r4, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	ldr r2, _0804BDC0 @ =0x03000030
	adds r0, r1, r2
	ldrb r2, [r0]
	orrs r5, r1
	ldr r0, _0804BDC4 @ =gCamera
	mov ip, r0
	ldr r0, _0804BDC8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0804BE5C
	ldr r1, _0804BDCC @ =gMultiplayerPlayerTasks
	lsls r2, r2, #0x18
	asrs r0, r2, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r3, r1
	adds r1, #0x57
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x50
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	bne _0804BDD0
	adds r0, r4, #0
	bl TaskDestroy
	b _0804BE62
	.align 2, 0
_0804BDBC: .4byte gCurTask
_0804BDC0: .4byte 0x03000030
_0804BDC4: .4byte gCamera
_0804BDC8: .4byte gGameMode
_0804BDCC: .4byte gMultiplayerPlayerTasks
_0804BDD0:
	ldr r2, _0804BE14 @ =0x03000050
	adds r0, r3, r2
	ldrh r0, [r0]
	mov r2, ip
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldr r1, _0804BE18 @ =0x03000052
	adds r0, r3, r1
	ldrh r0, [r0]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	ldr r1, [r5, #0x10]
	ldr r0, _0804BE1C @ =0xFFFFCFFF
	ands r1, r0
	str r1, [r5, #0x10]
	ldr r2, [r6, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r2, r0
	orrs r2, r1
	str r2, [r5, #0x10]
	ldr r0, _0804BE20 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804BE24
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
	b _0804BE28
	.align 2, 0
_0804BE14: .4byte 0x03000050
_0804BE18: .4byte 0x03000052
_0804BE1C: .4byte 0xFFFFCFFF
_0804BE20: .4byte gStageFlags
_0804BE24:
	ldr r0, _0804BE48 @ =0xFFFFF7FF
	ands r2, r0
_0804BE28:
	str r2, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	asrs r2, r7, #0x18
	movs r3, #1
	ands r2, r3
	ldr r0, _0804BE4C @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804BE50
	cmp r2, r3
	bne _0804BE54
	b _0804BE62
	.align 2, 0
_0804BE48: .4byte 0xFFFFF7FF
_0804BE4C: .4byte gStageTime
_0804BE50:
	cmp r2, #0
	beq _0804BE62
_0804BE54:
	adds r0, r5, #0
	bl DisplaySprite
	b _0804BE62
_0804BE5C:
	adds r0, r4, #0
	bl TaskDestroy
_0804BE62:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_ItemTasks
TaskDestructor_ItemTasks: @ 0x0804BE68
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
