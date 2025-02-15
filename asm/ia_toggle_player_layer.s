.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_Toggle_PlayerLayer
Task_Toggle_PlayerLayer: @ 0x080238FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r3, _08023970 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r6, [r0]
	ldr r2, _08023974 @ =0x03000008
	adds r0, r1, r2
	ldrb r0, [r0]
	str r0, [sp]
	ldr r4, _08023978 @ =0x03000004
	adds r0, r1, r4
	ldrh r0, [r0]
	subs r2, #2
	adds r1, r1, r2
	ldrh r1, [r1]
	ldr r4, [sp]
	lsls r2, r4, #3
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	mov sb, r0
	str r2, [sp, #8]
	ldr r7, _0802397C @ =gPartner
	ldr r2, _08023980 @ =gPlayer
	mov r1, sb
	str r1, [sp, #4]
	movs r3, #0x27
	adds r3, r3, r7
	mov r8, r3
	movs r0, #0x27
	adds r0, r0, r2
	mov ip, r0
	movs r1, #0xfe
	mov sl, r1
_08023960:
	cmp r4, #0
	beq _08023984
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp sb, r0
	ble _0802398E
	lsls r3, r5, #0x10
	b _08023A36
	.align 2, 0
_08023970: .4byte gCurTask
_08023974: .4byte 0x03000008
_08023978: .4byte 0x03000004
_0802397C: .4byte gPartner
_08023980: .4byte gPlayer
_08023984:
	ldr r0, [r2]
	asrs r0, r0, #8
	lsls r3, r5, #0x10
	cmp sb, r0
	bgt _08023A36
_0802398E:
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	ldr r3, [sp, #4]
	adds r1, r3, r0
	cmp r4, #0
	beq _080239A6
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080239B0
	lsls r3, r5, #0x10
	b _08023A36
_080239A6:
	ldr r0, [r2]
	asrs r0, r0, #8
	lsls r3, r5, #0x10
	cmp r1, r0
	blt _08023A36
_080239B0:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r3, r0, #0
	cmp r4, #0
	beq _080239C4
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _080239CC
	b _08023A36
_080239C4:
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _08023A36
_080239CC:
	asrs r1, r3, #0x10
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r4, #0
	beq _080239E2
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080239EA
	b _08023A36
_080239E2:
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _08023A36
_080239EA:
	movs r1, #0x11
	ldr r0, _08023A0C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _080239F6
	movs r1, #0xc
_080239F6:
	ldrb r0, [r6, #2]
	cmp r1, r0
	bne _08023A1A
	cmp r4, #0
	beq _08023A10
	mov r0, r8
	ldrb r1, [r0]
	mov r0, sl
	ands r0, r1
	mov r1, r8
	b _08023A34
	.align 2, 0
_08023A0C: .4byte gGameMode
_08023A10:
	mov r0, ip
	ldrb r1, [r0]
	mov r0, sl
	ands r0, r1
	b _08023A32
_08023A1A:
	cmp r4, #0
	beq _08023A2A
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #1
	orrs r0, r1
	mov r1, r8
	b _08023A34
_08023A2A:
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #1
	orrs r0, r1
_08023A32:
	mov r1, ip
_08023A34:
	strb r0, [r1]
_08023A36:
	adds r4, #1
	ldr r1, _08023A98 @ =gNumSingleplayerCharacters
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	blt _08023960
	ldr r2, _08023A9C @ =gCamera
	ldrh r0, [r2]
	ldr r4, [sp, #8]
	asrs r1, r4, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	asrs r0, r3, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08023A7A
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08023A7A
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08023A88
_08023A7A:
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r6]
	ldr r2, _08023AA0 @ =gCurTask
	ldr r0, [r2]
	bl TaskDestroy
_08023A88:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023A98: .4byte gNumSingleplayerCharacters
_08023A9C: .4byte gCamera
_08023AA0: .4byte gCurTask

	thumb_func_start CreateEntity_Toggle_PlayerLayer
CreateEntity_Toggle_PlayerLayer: @ 0x08023AA4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08023AFC @ =Task_Toggle_PlayerLayer
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #9
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	ldr r2, _08023B00 @ =0x03000004
	adds r1, r1, r2
	strh r4, [r1]
	ldrh r1, [r0, #6]
	adds r2, #2
	adds r1, r1, r2
	strh r5, [r1]
	ldrh r1, [r0, #6]
	subs r2, #6
	adds r1, r1, r2
	str r6, [r1]
	ldrh r0, [r0, #6]
	ldr r1, _08023B04 @ =0x03000008
	adds r0, r0, r1
	ldrb r1, [r6]
	strb r1, [r0]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r6]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08023AFC: .4byte Task_Toggle_PlayerLayer
_08023B00: .4byte 0x03000004
_08023B04: .4byte 0x03000008
