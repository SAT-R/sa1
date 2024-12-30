.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateAmyAttackHeartEffect
CreateAmyAttackHeartEffect: @ 0x0803C5A8
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0803C624 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803C61C
	ldr r4, _0803C628 @ =gPlayer
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _0803C61C
	ldr r0, _0803C62C @ =Task_AmyAttackHeartEffect
	movs r1, #0x84
	lsls r1, r1, #1
	ldr r2, _0803C630 @ =0x00003001
	ldr r3, _0803C634 @ =TaskDestructor_AmyAttackHeartEffect
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r4, #0x40
	ldrb r1, [r4]
	ldr r3, _0803C638 @ =0x03000100
	adds r0, r2, r3
	movs r3, #0
	strb r1, [r0]
	ldrb r0, [r4]
	subs r0, #0x57
	ldr r4, _0803C63C @ =0x03000101
	adds r1, r2, r4
	strb r0, [r1]
	ldr r1, _0803C640 @ =0x03000102
	adds r0, r2, r1
	strh r3, [r0]
	adds r4, #3
	adds r0, r2, r4
	strh r3, [r0]
	ldr r0, _0803C644 @ =0x03000106
	adds r2, r2, r0
	strh r3, [r2]
	movs r1, #0
	movs r2, #0
_0803C60A:
	lsls r0, r1, #4
	adds r0, r5, r0
	adds r0, #0xcc
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0803C60A
_0803C61C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C624: .4byte gGameMode
_0803C628: .4byte gPlayer
_0803C62C: .4byte Task_AmyAttackHeartEffect
_0803C630: .4byte 0x00003001
_0803C634: .4byte TaskDestructor_AmyAttackHeartEffect
_0803C638: .4byte 0x03000100
_0803C63C: .4byte 0x03000101
_0803C640: .4byte 0x03000102
_0803C644: .4byte 0x03000106

	thumb_func_start Task_AmyAttackHeartEffect
Task_AmyAttackHeartEffect: @ 0x0803C648
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803C678 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _0803C67C @ =0x03000100
	adds r1, r1, r0
	ldr r0, _0803C680 @ =gPlayer
	adds r0, #0x40
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _0803C684
	adds r0, r2, #0
	bl TaskDestroy
	b _0803C76C
	.align 2, 0
_0803C678: .4byte gCurTask
_0803C67C: .4byte 0x03000100
_0803C680: .4byte gPlayer
_0803C684:
	movs r5, #0
_0803C686:
	lsls r0, r5, #4
	adds r0, r6, r0
	adds r2, r0, #0
	adds r2, #0xcc
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803C6B2
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r6, r0
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0803C6B2
	movs r0, #0
	strb r0, [r2]
	ldr r0, [r4, #4]
	bl VramFree
_0803C6B2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0803C686
	ldr r3, _0803C774 @ =sHeartOffsets
	movs r2, #0x82
	lsls r2, r2, #1
	adds r5, r6, r2
	ldrh r0, [r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	subs r2, #3
	adds r0, r6, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x14
	lsrs r2, r0, #0x10
	ldr r7, _0803C778 @ =0x0000FFFF
	cmp r2, r7
	beq _0803C71A
	movs r0, #0x81
	lsls r0, r0, #1
	adds r4, r6, r0
	ldrh r1, [r4]
	ldr r0, _0803C77C @ =gPlayer
	ldr r0, [r0, #0x64]
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r0, r1, r0
	strh r0, [r4]
	cmp r1, r2
	blo _0803C71A
	ldrh r0, [r5]
	bl sub_803C784
	ldrh r0, [r5]
	adds r0, #1
	ands r0, r7
	movs r1, #7
	ands r0, r1
	strh r0, [r5]
	cmp r0, #0
	bne _0803C71A
	strh r0, [r4]
_0803C71A:
	movs r5, #0
	ldr r7, _0803C780 @ =gCamera
_0803C71E:
	lsls r2, r5, #4
	adds r0, r6, r2
	adds r0, #0xcc
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C762
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r6, r0
	adds r0, r6, #0
	adds r0, #0xc0
	adds r0, r0, r2
	ldr r1, [r0]
	lsls r1, r1, #8
	adds r0, r6, #0
	adds r0, #0xc4
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #8
	ldrh r2, [r7]
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r4, #0x16]
	ldrh r1, [r7, #2]
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0803C762:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0803C71E
_0803C76C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C774: .4byte sHeartOffsets
_0803C778: .4byte 0x0000FFFF
_0803C77C: .4byte gPlayer
_0803C780: .4byte gCamera

	thumb_func_start sub_803C784
sub_803C784: @ 0x0803C784
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, _0803C7A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	movs r3, #0
	adds r1, #0xcc
	adds r0, r0, r1
	b _0803C7BE
	.align 2, 0
_0803C7A8: .4byte gCurTask
_0803C7AC:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0803C7B8
	b _0803C922
_0803C7B8:
	lsls r0, r3, #4
	adds r0, r5, r0
	adds r0, #0xcc
_0803C7BE:
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C7AC
	cmp r3, #3
	bls _0803C7CA
	b _0803C922
_0803C7CA:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r6, r5, r0
	lsls r3, r3, #4
	adds r0, r5, r3
	adds r0, #0xcc
	movs r1, #0xff
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xc0
	adds r7, r0, r3
	ldr r1, _0803C82C @ =gPlayer
	ldr r0, [r1]
	str r0, [r7]
	adds r4, r5, #0
	adds r4, #0xc4
	adds r2, r4, r3
	ldr r0, [r1, #4]
	str r0, [r2]
	ldr r1, [r1, #0x10]
	movs r0, #1
	ands r1, r0
	mov r8, r3
	mov sb, r4
	cmp r1, #0
	beq _0803C838
	ldr r3, _0803C830 @ =sHeartOffsets
	mov r2, ip
	lsls r4, r2, #1
	adds r1, r4, r2
	lsls r1, r1, #1
	ldr r2, _0803C834 @ =0x00000101
	adds r0, r5, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r3, #2
	adds r1, r1, r0
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r1, r1, #8
	ldr r0, [r7]
	subs r0, r0, r1
	b _0803C860
	.align 2, 0
_0803C82C: .4byte gPlayer
_0803C830: .4byte sHeartOffsets
_0803C834: .4byte 0x00000101
_0803C838:
	ldr r3, _0803C89C @ =sHeartOffsets
	mov r1, ip
	lsls r4, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #1
	ldr r2, _0803C8A0 @ =0x00000101
	adds r0, r5, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r3, #2
	adds r1, r1, r0
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r1, r1, #8
	ldr r0, [r7]
	adds r0, r0, r1
_0803C860:
	str r0, [r7]
	adds r7, r3, #0
	ldr r0, _0803C8A4 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803C8A8
	mov r3, sb
	add r3, r8
	mov r2, ip
	adds r1, r4, r2
	lsls r1, r1, #1
	ldr r2, _0803C8A0 @ =0x00000101
	adds r0, r5, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r7, #4
	adds r1, r1, r0
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r1, r1, #8
	ldr r0, [r3]
	subs r0, r0, r1
	b _0803C8D0
	.align 2, 0
_0803C89C: .4byte sHeartOffsets
_0803C8A0: .4byte 0x00000101
_0803C8A4: .4byte gStageFlags
_0803C8A8:
	mov r3, sb
	add r3, r8
	mov r2, ip
	adds r1, r4, r2
	lsls r1, r1, #1
	ldr r2, _0803C930 @ =0x00000101
	adds r0, r5, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r7, #4
	adds r1, r1, r0
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r1, r1, #8
	ldr r0, [r3]
	adds r0, r0, r1
_0803C8D0:
	str r0, [r3]
	mov r1, r8
	adds r0, r5, r1
	adds r1, r0, #0
	adds r1, #0xc8
	movs r5, #0
	movs r4, #0
	strh r4, [r1]
	adds r0, #0xca
	strh r4, [r0]
	movs r0, #4
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r4, [r6, #8]
	ldr r0, _0803C934 @ =0x000002F7
	strh r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	strb r5, [r0]
	strh r4, [r6, #0x14]
	strh r4, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0803C938 @ =gPlayer
	ldr r0, [r0, #0x64]
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	strb r5, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
_0803C922:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C930: .4byte 0x00000101
_0803C934: .4byte 0x000002F7
_0803C938: .4byte gPlayer

	thumb_func_start TaskDestructor_AmyAttackHeartEffect
TaskDestructor_AmyAttackHeartEffect: @ 0x0803C93C
	push {r4, r5, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0
_0803C948:
	lsls r0, r4, #4
	adds r0, r5, r0
	adds r0, #0xcc
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C962
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r5, r0
	ldr r0, [r0, #4]
	bl VramFree
_0803C962:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803C948
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
