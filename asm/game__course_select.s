.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_80629E8
Task_80629E8: @ 0x080629E8
	push {r4, lr}
	ldr r0, _08062A24 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r2, _08062A28 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08062A2C @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08062A30 @ =gBldRegs
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _08062A34 @ =0x03000055
	adds r3, r3, r0
	ldrb r0, [r3]
	adds r1, r0, #0
	cmp r1, #0
	bne _08062A40
	ldr r0, _08062A38 @ =gCurrentLevel
	strb r2, [r0]
	ldr r0, _08062A3C @ =gMultiplayerCurrentLevel
	strb r2, [r0]
	bl ApplyGameStageSettings
	b _08062A52
	.align 2, 0
_08062A24: .4byte gCurTask
_08062A28: .4byte gDispCnt
_08062A2C: .4byte 0x00001FFF
_08062A30: .4byte gBldRegs
_08062A34: .4byte 0x03000055
_08062A38: .4byte gCurrentLevel
_08062A3C: .4byte gMultiplayerCurrentLevel
_08062A40:
	cmp r1, #0x12
	bhi _08062A52
	ldr r0, _08062A74 @ =gCurrentLevel
	subs r1, #1
	strb r1, [r0]
	ldr r0, _08062A78 @ =gMultiplayerCurrentLevel
	strb r1, [r0]
	bl ApplyGameStageSettings
_08062A52:
	ldr r0, [r4, #0x18]
	bl TaskDestroy
	ldr r0, [r4, #0x14]
	bl TaskDestroy
	ldr r0, [r4, #0x10]
	bl TaskDestroy
	ldr r0, _08062A7C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062A74: .4byte gCurrentLevel
_08062A78: .4byte gMultiplayerCurrentLevel
_08062A7C: .4byte gCurTask

	thumb_func_start Task_8062A80
Task_8062A80: @ 0x08062A80
	push {r4, r5, r6, lr}
	ldr r0, _08062A98 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	movs r5, #1
	ldr r1, _08062A9C @ =0x030002DA
	adds r0, r0, r1
	b _08062B0C
	.align 2, 0
_08062A98: .4byte gCurTask
_08062A9C: .4byte 0x030002DA
_08062AA0:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r6, r0
	ldr r2, _08062AC0 @ =0x000002D7
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r5, r0
	bne _08062AC4
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x4c
	b _08062ACE
	.align 2, 0
_08062AC0: .4byte 0x000002D7
_08062AC4:
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x48
_08062ACE:
	strh r0, [r4, #0x16]
	subs r0, r5, #1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r2, [r0]
	movs r0, #0x40
	subs r0, r0, r2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, #0x10
	strh r1, [r4, #0x18]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, _08062B2C @ =0x000002DA
	adds r0, r6, r1
_08062B0C:
	ldrb r0, [r0]
	cmp r5, r0
	blo _08062AA0
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r0, #0x3f
	bne _08062B26
	ldr r0, _08062B30 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062B34 @ =Task_8062B38
	str r0, [r1, #8]
_08062B26:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062B2C: .4byte 0x000002DA
_08062B30: .4byte gCurTask
_08062B34: .4byte Task_8062B38

	thumb_func_start Task_8062B38
Task_8062B38: @ 0x08062B38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08062BB8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r2, _08062BBC @ =0x030002DB
	adds r1, r0, r2
	ldrb r1, [r1]
	mov r8, r1
	ldr r3, _08062BC0 @ =0x030002D4
	adds r0, r0, r3
	ldrh r0, [r0]
	movs r1, #0x18
	bl Div
	subs r0, #1
	lsls r0, r0, #0x18
	movs r7, #0
	lsrs r5, r0, #0x18
_08062B66:
	cmp r5, #0
	beq _08062C0E
	ldr r1, _08062BC4 @ =0x000002DA
	adds r0, r6, r1
	ldrb r0, [r0]
	subs r0, #1
	cmp r5, r0
	bgt _08062C0E
	lsls r1, r5, #1
	adds r0, r1, r5
	lsls r0, r0, #4
	adds r4, r6, r0
	adds r2, r1, #0
	mov r3, r8
	cmp r3, #1
	bne _08062B90
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #0x10]
_08062B90:
	ldr r1, _08062BC8 @ =0x000002D7
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r5, r0
	bne _08062BE4
	ldr r3, _08062BCC @ =0x000002D9
	adds r0, r6, r3
	ldrb r1, [r0]
	cmp r1, #1
	bne _08062BD6
	subs r3, #9
	adds r0, r6, r3
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08062BD0
	adds r0, r4, #0
	adds r0, #0x25
	strb r1, [r0]
	b _08062BDE
	.align 2, 0
_08062BB8: .4byte gCurTask
_08062BBC: .4byte 0x030002DB
_08062BC0: .4byte 0x030002D4
_08062BC4: .4byte 0x000002DA
_08062BC8: .4byte 0x000002D7
_08062BCC: .4byte 0x000002D9
_08062BD0:
	adds r1, r4, #0
	adds r1, #0x25
	b _08062BDC
_08062BD6:
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #1
_08062BDC:
	strb r0, [r1]
_08062BDE:
	movs r0, #0x4c
	strh r0, [r4, #0x16]
	b _08062BF0
_08062BE4:
	movs r1, #0
	movs r0, #0x48
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x25
	strb r1, [r0]
_08062BF0:
	adds r1, r2, r5
	lsls r1, r1, #3
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0xc
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062C0E:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r7, #7
	bls _08062B66
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_8062C28
Task_8062C28: @ 0x08062C28
	push {r4, r5, r6, lr}
	ldr r0, _08062CA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #1
_08062C38:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	subs r0, #0x30
	adds r4, r6, r0
	adds r1, r4, #0
	adds r1, #0x25
	movs r0, #0
	strb r0, [r1]
	movs r0, #0xd4
	strh r0, [r4, #0x16]
	subs r1, r5, #1
	lsls r3, r1, #1
	adds r1, r3, r1
	lsls r1, r1, #4
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r2, [r0]
	movs r0, #0x40
	subs r0, r0, r2
	lsls r0, r0, #1
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, #0x21
	strh r1, [r4, #0x18]
	ldr r1, _08062CAC @ =0x000002DA
	adds r0, r6, r1
	ldrb r0, [r0]
	adds r3, #1
	cmp r0, r3
	ble _08062C84
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062C84:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _08062C38
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r0, #0x3f
	bne _08062CA2
	ldr r0, _08062CA8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062CB0 @ =Task_8062CB4
	str r0, [r1, #8]
_08062CA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062CA8: .4byte gCurTask
_08062CAC: .4byte 0x000002DA
_08062CB0: .4byte Task_8062CB4

	thumb_func_start Task_8062CB4
Task_8062CB4: @ 0x08062CB4
	push {r4, r5, r6, r7, lr}
	ldr r0, _08062D2C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _08062D30 @ =0x030002D4
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0x2f
	bls _08062D70
	movs r1, #0x30
	bl Div
	subs r0, #1
	lsls r0, r0, #0x18
	movs r7, #1
	lsrs r5, r0, #0x18
_08062CDA:
	cmp r5, #7
	bhi _08062D58
	lsls r3, r5, #1
	adds r1, r3, r5
	lsls r1, r1, #4
	adds r4, r6, r1
	movs r2, #0
	movs r0, #0xd4
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0x37
	subs r0, r1, r0
	strh r0, [r4, #0x18]
	cmp r5, #6
	bne _08062D08
	subs r0, #0xc
	strh r0, [r4, #0x18]
_08062D08:
	cmp r5, #7
	bne _08062D12
	ldrh r0, [r4, #0x18]
	subs r0, #0x24
	strh r0, [r4, #0x18]
_08062D12:
	ldr r1, _08062D34 @ =0x000002DA
	adds r0, r6, r1
	ldrb r1, [r0]
	adds r0, r3, #1
	cmp r1, r0
	ble _08062D38
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08062D58
	.align 2, 0
_08062D2C: .4byte gCurTask
_08062D30: .4byte 0x030002D4
_08062D34: .4byte 0x000002DA
_08062D38:
	cmp r5, #7
	bne _08062D58
	ldr r0, _08062D6C @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08062D58
	cmp r1, #0xf
	bne _08062D58
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062D58:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r7, #6
	bls _08062CDA
	b _08062E0C
	.align 2, 0
_08062D6C: .4byte gSelectedCharacter
_08062D70:
	ldrh r0, [r1]
	movs r1, #0x30
	bl Div
	lsls r0, r0, #0x18
	movs r7, #1
	lsrs r5, r0, #0x18
_08062D7E:
	cmp r5, #7
	bhi _08062DFC
	lsls r3, r5, #1
	adds r1, r3, r5
	lsls r1, r1, #4
	adds r4, r6, r1
	movs r2, #0
	movs r0, #0xd4
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r2, #0xb5
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0x37
	subs r0, r1, r0
	strh r0, [r4, #0x18]
	cmp r5, #6
	bne _08062DAC
	subs r0, #0xc
	strh r0, [r4, #0x18]
_08062DAC:
	cmp r5, #7
	bne _08062DE4
	ldrh r0, [r4, #0x18]
	subs r0, #0x24
	strh r0, [r4, #0x18]
	ldr r0, _08062DDC @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08062DFC
	ldr r1, _08062DE0 @ =0x000002DA
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0xf
	bhi _08062DFC
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08062DFC
	.align 2, 0
_08062DDC: .4byte gSelectedCharacter
_08062DE0: .4byte 0x000002DA
_08062DE4:
	ldr r2, _08062E14 @ =0x000002DA
	adds r0, r6, r2
	ldrb r1, [r0]
	adds r0, r3, #1
	cmp r1, r0
	ble _08062DFC
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08062DFC:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r7, #5
	bls _08062D7E
_08062E0C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062E14: .4byte 0x000002DA

	thumb_func_start Task_8062E18
Task_8062E18: @ 0x08062E18
	push {r4, r5, r6, r7, lr}
	ldr r0, _08062E84 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r6, r4, #0
	adds r0, #0x4c
	adds r7, r5, r0
	ldrh r3, [r7]
	cmp r3, #0x14
	beq _08062E94
	ldr r0, [r4, #0x10]
	ldr r1, _08062E88 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
	movs r6, #0x30
	strh r6, [r4, #0x16]
	movs r0, #0x18
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _08062E8C @ =0x03000051
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #6
	bls _08062ECA
	ldr r0, _08062E90 @ =gUnknown_0868B220
	ldrb r1, [r1]
	subs r1, #1
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r7]
	ldrh r1, [r1]
	cmp r0, r1
	bhs _08062ECA
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	strh r6, [r4, #0x16]
	movs r0, #0x88
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
	b _08062ECA
	.align 2, 0
_08062E84: .4byte gCurTask
_08062E88: .4byte 0xFFFFF7FF
_08062E8C: .4byte 0x03000051
_08062E90: .4byte gUnknown_0868B220
_08062E94:
	ldr r0, _08062ED0 @ =0x03000051
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #7
	bls _08062ECA
	ldr r1, _08062ED4 @ =gUnknown_0868B220
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r3, r0
	bhs _08062ECA
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x30
	strh r0, [r6, #0x16]
	movs r0, #0x88
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08062ECA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062ED0: .4byte 0x03000051
_08062ED4: .4byte gUnknown_0868B220

    thumb_func_start TaskDestructor_CourseSelect
TaskDestructor_CourseSelect: @ 0x08062ED8
    bx lr
    .align 2, 0
