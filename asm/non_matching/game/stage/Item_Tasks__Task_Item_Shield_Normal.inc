.include "constants/constants.inc"

.syntax unified
.text
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

.syntax divided
