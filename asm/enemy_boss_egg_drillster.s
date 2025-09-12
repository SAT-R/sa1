.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_8036B94
Task_8036B94: @ 0x08036B94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08036C2C @ =gCurTask
	ldr r7, [r0]
	ldrh r3, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r3, r1
	ldrh r0, [r7]
	adds r0, r0, r1
	ldrh r4, [r0, #6]
	mov sb, r5
	movs r0, #0x3c
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r5, r2]
	ldr r2, [r5, #0x38]
	adds r2, r2, r1
	str r2, [r5, #0x38]
	ldr r6, _08036C30 @ =0x03000040
	adds r1, r3, r6
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r1, _08036C34 @ =0x03000042
	adds r3, r3, r1
	asrs r2, r2, #8
	ldrh r3, [r3]
	adds r2, r2, r3
	ldr r3, _08036C38 @ =gCamera
	ldrh r1, [r3]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	subs r1, r6, r1
	strh r1, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x18]
	ldr r0, _08036C3C @ =0x03000086
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bgt _08036C82
	ldrh r0, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r4, r2, #0
	ldr r3, _08036C40 @ =gPlayer
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_800BF10
	mov r8, r0
	ldr r0, _08036C44 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036C4C
	ldr r3, _08036C48 @ =gPartner
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _08036C4E
	.align 2, 0
_08036C2C: .4byte gCurTask
_08036C30: .4byte 0x03000040
_08036C34: .4byte 0x03000042
_08036C38: .4byte gCamera
_08036C3C: .4byte 0x03000086
_08036C40: .4byte gPlayer
_08036C44: .4byte gNumSingleplayerCharacters
_08036C48: .4byte gPartner
_08036C4C:
	movs r0, #0
_08036C4E:
	mov r2, r8
	cmp r2, #2
	beq _08036C58
	cmp r0, #2
	bne _08036C82
_08036C58:
@ inline of sub_8036D90
	ldr r0, _08036CB4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r0, r0, r6
	ldrh r2, [r0, #6]
	ldr r0, _08036CB8 @ =0x0300003C
	adds r3, r2, r0
	adds r6, #0x5c
	adds r1, r2, r6
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08036CBC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08036CC0 @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08036C82:
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	ldr r0, [r5, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #9
	cmp r0, r1
	bls _08036CA6
	ldr r0, _08036CB4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08036CA6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036CB4: .4byte gCurTask
_08036CB8: .4byte 0x0300003C
_08036CBC: .4byte 0xFFFFBFFF
_08036CC0: .4byte 0x0300005D

	thumb_func_start TaskDestructor_EggDrillster
TaskDestructor_EggDrillster: @ 0x08036CC4
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

	thumb_func_start TaskDestructor_Drill
TaskDestructor_Drill: @ 0x08036CE0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8036CF4
sub_8036CF4: @ 0x08036CF4
	push {r4, r5, r6, r7, lr}
	ldr r2, _08036D34 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _08036D38 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _08036D3C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036D44
	ldr r3, _08036D40 @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _08036D46
	.align 2, 0
_08036D34: .4byte gCurTask
_08036D38: .4byte gPlayer
_08036D3C: .4byte gNumSingleplayerCharacters
_08036D40: .4byte gPartner
_08036D44:
	movs r0, #0
_08036D46:
	cmp r7, #2
	beq _08036D4E
	cmp r0, #2
	bne _08036D78
_08036D4E:
	ldr r0, _08036D80 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _08036D84 @ =0x0300003C
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08036D88 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08036D8C @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08036D78:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036D80: .4byte gCurTask
_08036D84: .4byte 0x0300003C
_08036D88: .4byte 0xFFFFBFFF
_08036D8C: .4byte 0x0300005D

	thumb_func_start sub_8036D90
sub_8036D90: @ 0x08036D90
	ldr r0, _08036DC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _08036DC4 @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08036DBC
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08036DBC
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08036DC8 @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_08036DBC:
	bx lr
	.align 2, 0
_08036DC0: .4byte gCurTask
_08036DC4: .4byte 0x0300003C
_08036DC8: .4byte 0x0300005D

	thumb_func_start sub_8036DCC
sub_8036DCC: @ 0x08036DCC
	ldr r0, _08036DE4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08036DE8 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_08036DE4: .4byte gCurTask
_08036DE8: .4byte 0x0300000C

	thumb_func_start sub_8036DEC
sub_8036DEC: @ 0x08036DEC
	push {r4, lr}
	ldr r2, _08036E14 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08036E18 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _08036E1C @ =gCamera
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
_08036E14: .4byte gCurTask
_08036E18: .4byte 0x0300000C
_08036E1C: .4byte gCamera
