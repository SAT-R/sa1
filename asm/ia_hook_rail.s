.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_HookRail_Type0
Task_HookRail_Type0: @ 0x08086B4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _08086C98 @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r7]
	str r1, [sp]
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp]
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08086C9C @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	subs r0, r1, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	subs r0, r6, r0
	strh r0, [r5, #0x18]
	ldrh r1, [r5, #0x16]
	str r1, [sp, #4]
	ldrh r0, [r5, #0x18]
	str r0, [sp, #8]
	ldr r4, _08086CA0 @ =gPlayer
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	mov sb, r1
	ands r1, r0
	mov sb, r1
	cmp r1, #0
	bne _08086C44
	movs r1, #8
	mov sl, r1
	ands r0, r1
	cmp r0, #0
	beq _08086BC2
	ldr r0, [r4, #0x28]
	cmp r0, r5
	bne _08086C44
_08086BC2:
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	adds r3, r4, #0
	bl Coll_Player_Entity_Intersection
	cmp r0, #0
	beq _08086C44
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08086BDC
	rsbs r0, r0, #0
_08086BDC:
	rsbs r0, r0, #0
	str r0, [r7, #0x40]
	mov r0, sb
	str r0, [r7, #0x44]
	adds r0, r6, #0
	adds r0, #0x24
	lsls r0, r0, #8
	str r0, [r4, #4]
	mov r1, r8
	lsls r0, r1, #8
	str r0, [r4]
	str r0, [r7, #0x48]
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	movs r0, #0x80
	lsls r0, r0, #0xf
	str r0, [r4, #0x10]
	movs r0, #0
	strb r0, [r4, #0x14]
	mov r0, sb
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x26
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	movs r0, #0xb4
	bl m4aSongNumStart
	ldr r0, _08086C98 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08086CA4 @ =Task_HookRail_Type0_2
	str r0, [r1, #8]
	ldr r0, [r4, #0x10]
	mov r1, sl
	orrs r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x28]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
_08086C44:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08086C6C
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08086C6C
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08086CA8
_08086C6C:
	ldr r2, _08086CA0 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08086C88
	ldr r0, [r2, #0x28]
	cmp r0, r5
	bne _08086C88
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_08086C88:
	ldrb r0, [r7, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _08086C98 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08086CAE
	.align 2, 0
_08086C98: .4byte gCurTask
_08086C9C: .4byte gCamera
_08086CA0: .4byte gPlayer
_08086CA4: .4byte Task_HookRail_Type0_2
_08086CA8:
	adds r0, r5, #0
	bl DisplaySprite
_08086CAE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_HookRail_Type0_2
Task_HookRail_Type0_2: @ 0x08086CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _08086E04 @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r2, _08086E08 @ =0x0300000C
	adds r7, r6, r2
	ldr r3, [r4]
	str r3, [sp]
	ldrb r0, [r4, #8]
	lsls r0, r0, #3
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, [sp]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sb, r2
	ldr r5, _08086E0C @ =gPlayer
	ldr r0, [r5, #0x10]
	mov r8, r0
	movs r0, #0x80
	mov r1, r8
	ands r1, r0
	mov r8, r1
	cmp r1, #0
	beq _08086D14
	b _08086F10
_08086D14:
	movs r0, #0x40
	adds r0, r0, r5
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x26
	beq _08086D38
	adds r0, r5, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl Player_TransitionCancelFlyingAndBoost
	movs r0, #0x26
	mov r1, sb
	strb r0, [r1]
	ldr r3, [sp, #8]
	ldr r2, [sp, #4]
_08086D38:
	mov r0, r8
	strh r0, [r5, #0xa]
	ldr r1, _08086E10 @ =0x03000050
	adds r6, r6, r1
	ldrb r0, [r6]
	cmp r0, #0
	beq _08086E28
	ldr r0, [r4, #0x40]
	adds r0, #0x14
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x4c]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	lsls r0, r3, #0x10
	asrs r0, r0, #8
	ldr r3, _08086E14 @ =0xFFFFFA00
	adds r0, r0, r3
	adds r0, r0, r1
	str r0, [r5]
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r6, r0
	lsls r1, r1, #8
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #1
	adds r1, r1, r0
	str r1, [r5, #4]
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #9
	adds r0, r6, r0
	ldr r1, _08086E18 @ =gCamera
	mov sl, r1
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	adds r0, #0xf0
	strh r0, [r7, #0x18]
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #8
	cmp r0, #2
	ble _08086E7E
	movs r0, #0xb4
	bl m4aSongNumStop
	adds r0, r5, #0
	bl Player_TransitionCancelFlyingAndBoost
	ldr r0, [r5, #0x10]
	ldr r1, _08086E1C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #4
	mov r2, sb
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	ldr r3, _08086E04 @ =gCurTask
	ldr r1, [r3]
	ldr r0, _08086E20 @ =Task_HookRail_Shared1
	str r0, [r1, #8]
	ldr r0, [r4, #0x40]
	strh r0, [r5, #0xc]
	ldr r0, [r5, #4]
	ldr r1, _08086E24 @ =0xFFFFF600
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #9
	adds r0, r6, r0
	mov r2, sl
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	adds r0, #0x78
	strh r0, [r7, #0x18]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08086E7E
	ldr r0, [r5, #0x28]
	cmp r0, r7
	bne _08086E7E
	mov r3, r8
	str r3, [r5, #0x28]
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0x10]
	b _08086E7E
	.align 2, 0
_08086E04: .4byte gCurTask
_08086E08: .4byte 0x0300000C
_08086E0C: .4byte gPlayer
_08086E10: .4byte 0x03000050
_08086E14: .4byte 0xFFFFFA00
_08086E18: .4byte gCamera
_08086E1C: .4byte 0xFFBFFFFF
_08086E20: .4byte Task_HookRail_Shared1
_08086E24: .4byte 0xFFFFF600
_08086E28:
	ldr r0, [r4, #0x40]
	subs r0, #9
	str r0, [r4, #0x40]
	ldr r1, _08086EB4 @ =0xFFFFFA00
	cmp r0, r1
	bge _08086E36
	str r1, [r4, #0x40]
_08086E36:
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	lsls r0, r3, #0x10
	asrs r0, r0, #8
	ldr r3, _08086EB4 @ =0xFFFFFA00
	adds r0, r0, r3
	adds r0, r0, r1
	str r0, [r5]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	adds r1, #0x26
	lsls r1, r1, #8
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #1
	subs r1, r1, r0
	str r1, [r5, #4]
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #9
	subs r2, r2, r0
	ldr r0, _08086EB8 @ =gCamera
	ldrh r0, [r0, #2]
	subs r2, r2, r0
	strh r2, [r7, #0x18]
	ldr r0, [r5]
	ldr r1, [r4, #0x48]
	subs r0, r0, r1
	asrs r0, r0, #8
	movs r1, #0xf4
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08086E7E
	movs r0, #1
	strb r0, [r6]
_08086E7E:
	ldr r0, _08086EBC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08086ECC
	ldr r0, _08086EC0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08086EC4 @ =gMultiSioRecv
	adds r1, r1, r0
	ldr r3, _08086EB8 @ =gCamera
	ldrh r0, [r1, #2]
	ldrh r2, [r3]
	subs r0, r0, r2
	adds r0, #5
	strh r0, [r7, #0x16]
	ldrh r0, [r1, #4]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	subs r0, #0x24
	strh r0, [r7, #0x18]
	ldr r6, _08086EC8 @ =gPlayer
	adds r2, r3, #0
	b _08086EEA
	.align 2, 0
_08086EB4: .4byte 0xFFFFFA00
_08086EB8: .4byte gCamera
_08086EBC: .4byte gGameMode
_08086EC0: .4byte 0x04000128
_08086EC4: .4byte gMultiSioRecv
_08086EC8: .4byte gPlayer
_08086ECC:
	ldr r3, _08086F08 @ =gPlayer
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r2, _08086F0C @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	adds r0, #5
	strh r0, [r7, #0x16]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	subs r0, #0x24
	strh r0, [r7, #0x18]
	adds r6, r3, #0
_08086EEA:
	ldr r0, [r6]
	asrs r0, r0, #8
	ldrh r1, [r2]
	subs r0, r0, r1
	adds r0, #5
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	subs r0, #0x24
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08086FDA
	.align 2, 0
_08086F08: .4byte gPlayer
_08086F0C: .4byte gCamera
_08086F10:
	ldr r0, _08086F70 @ =0x03000050
	adds r6, r6, r0
	ldrb r0, [r6]
	cmp r0, #0
	beq _08086F80
	ldr r0, [r4, #0x40]
	adds r0, #0x14
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x4c]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	asrs r1, r1, #9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	ldr r1, _08086F74 @ =gCamera
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	adds r0, #0xf0
	strh r0, [r7, #0x18]
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #8
	lsls r3, r3, #0x10
	mov r8, r3
	cmp r0, #2
	ble _08086FC4
	movs r0, #0xb4
	bl m4aSongNumStop
	ldr r2, _08086F78 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _08086F7C @ =Task_HookRail_Shared1
	str r0, [r1, #8]
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08086FC4
	ldr r0, [r5, #0x28]
	cmp r0, r7
	bne _08086FC4
	movs r0, #0
	str r0, [r5, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r5, #0x10]
	b _08086FC4
	.align 2, 0
_08086F70: .4byte 0x03000050
_08086F74: .4byte gCamera
_08086F78: .4byte gCurTask
_08086F7C: .4byte Task_HookRail_Shared1
_08086F80:
	ldr r0, [r4, #0x40]
	subs r0, #9
	str r0, [r4, #0x40]
	ldr r1, _0808702C @ =0xFFFFFA00
	cmp r0, r1
	bge _08086F8E
	str r1, [r4, #0x40]
_08086F8E:
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	lsls r2, r3, #0x10
	asrs r0, r2, #8
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	subs r0, r0, r1
	asrs r0, r0, #8
	movs r1, #0xf4
	rsbs r1, r1, #0
	mov r8, r2
	cmp r0, r1
	bge _08086FB0
	movs r0, #1
	strb r0, [r6]
_08086FB0:
	ldr r1, [r4, #0x4c]
	asrs r1, r1, #9
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	ldr r1, _08087030 @ =gCamera
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r7, #0x18]
_08086FC4:
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #8
	mov r2, r8
	asrs r1, r2, #0x10
	adds r1, r1, r0
	ldr r0, _08087030 @ =gCamera
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r7, #0x16]
	ldrh r5, [r7, #0x16]
	ldrh r2, [r7, #0x18]
_08086FDA:
	lsls r0, r5, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x10
	adds r0, r0, r3
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08086FFE
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08086FFE
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808703C
_08086FFE:
	ldr r2, _08087034 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808701A
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _0808701A
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_0808701A:
	ldrb r0, [r4, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _08087038 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08087042
	.align 2, 0
_0808702C: .4byte 0xFFFFFA00
_08087030: .4byte gCamera
_08087034: .4byte gPlayer
_08087038: .4byte gCurTask
_0808703C:
	adds r0, r7, #0
	bl DisplaySprite
_08087042:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_HookRail_Shared0
Task_HookRail_Shared0: @ 0x08087054
	push {r4, r5, r6, r7, lr}
	ldr r4, _080870EC @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r6]
	mov ip, r1
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _080870F0 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	movs r7, #0xf0
	lsls r7, r7, #1
	adds r0, r2, r7
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	adds r3, r1, #0
	adds r3, #0xf0
	strh r3, [r5, #0x18]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r2, r1
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080870C2
	movs r7, #0x18
	ldrsh r0, [r5, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _080870C2
	lsls r1, r3, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080870F8
_080870C2:
	ldr r2, _080870F4 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080870DE
	ldr r0, [r2, #0x28]
	cmp r0, r5
	bne _080870DE
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_080870DE:
	ldrb r0, [r6, #8]
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _080870FE
	.align 2, 0
_080870EC: .4byte gCurTask
_080870F0: .4byte gCamera
_080870F4: .4byte gPlayer
_080870F8:
	adds r0, r5, #0
	bl DisplaySprite
_080870FE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_HookRail_Shared1
Task_HookRail_Shared1: @ 0x08087104
	push {r4, r5, r6, r7, lr}
	ldr r4, _0808718C @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r7, [r6]
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08087190 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	adds r2, #0xf0
	strh r2, [r5, #0x18]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08087164
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08087164
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08087198
_08087164:
	ldr r2, _08087194 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08087180
	ldr r0, [r2, #0x28]
	cmp r0, r5
	bne _08087180
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_08087180:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, [r4]
	bl TaskDestroy
	b _0808719E
	.align 2, 0
_0808718C: .4byte gCurTask
_08087190: .4byte gCamera
_08087194: .4byte gPlayer
_08087198:
	adds r0, r5, #0
	bl DisplaySprite
_0808719E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_HookRail_Type2
Task_HookRail_Type2: @ 0x080871A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _080872E0 @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r7]
	str r1, [sp]
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp]
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080872E4 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	subs r0, r1, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	subs r0, r6, r0
	strh r0, [r5, #0x18]
	ldr r4, _080872E8 @ =gPlayer
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	mov sb, r1
	ands r1, r0
	mov sb, r1
	cmp r1, #0
	bne _08087290
	movs r1, #8
	mov sl, r1
	ands r0, r1
	cmp r0, #0
	beq _08087212
	ldr r0, [r4, #0x28]
	cmp r0, r5
	bne _08087290
_08087212:
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	adds r3, r4, #0
	bl Coll_Player_Entity_Intersection
	cmp r0, #0
	beq _08087290
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0808722C
	rsbs r0, r0, #0
_0808722C:
	str r0, [r7, #0x40]
	mov r0, sb
	str r0, [r7, #0x44]
	adds r0, r6, #0
	adds r0, #0x26
	lsls r0, r0, #8
	str r0, [r4, #4]
	mov r1, r8
	lsls r0, r1, #8
	str r0, [r4]
	str r0, [r7, #0x48]
	movs r0, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	ldr r0, _080872EC @ =0x00400001
	str r0, [r4, #0x10]
	mov r0, sb
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x26
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	movs r0, #0xb4
	bl m4aSongNumStart
	ldr r0, _080872E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080872F0 @ =Task_HookRail_Type2_0
	str r0, [r1, #8]
	ldr r0, [r4, #0x10]
	mov r1, sl
	orrs r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x28]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
_08087290:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080872B4
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080872B4
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080872F4
_080872B4:
	ldr r2, _080872E8 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080872D0
	ldr r0, [r2, #0x28]
	cmp r0, r5
	bne _080872D0
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_080872D0:
	ldrb r0, [r7, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _080872E0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080872FA
	.align 2, 0
_080872E0: .4byte gCurTask
_080872E4: .4byte gCamera
_080872E8: .4byte gPlayer
_080872EC: .4byte 0x00400001
_080872F0: .4byte Task_HookRail_Type2_0
_080872F4:
	adds r0, r5, #0
	bl DisplaySprite
_080872FA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_HookRail_Type2_0
Task_HookRail_Type2_0: @ 0x0808730C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _080873F4 @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _080873F8 @ =0x0300000C
	adds r7, r1, r2
	ldr r6, [r5]
	str r6, [sp]
	ldrb r0, [r5, #8]
	lsls r0, r0, #3
	ldrh r1, [r5, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldrh r1, [r5, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r4, _080873FC @ =gPlayer
	ldr r6, [r4, #0x10]
	movs r0, #0x80
	ands r6, r0
	cmp r6, #0
	beq _0808735A
	b _080874D8
_0808735A:
	movs r0, #0x40
	adds r0, r0, r4
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x26
	beq _08087376
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	movs r0, #0x26
	mov r1, r8
	strb r0, [r1]
_08087376:
	strh r6, [r4, #0xa]
	ldr r0, [r5, #0x48]
	ldr r1, [r4]
	subs r0, r0, r1
	asrs r0, r0, #8
	movs r1, #0xf0
	lsls r1, r1, #1
	cmp r0, r1
	ble _0808740C
	movs r0, #0xb4
	bl m4aSongNumStop
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	ldr r0, [r4, #0x10]
	ldr r1, _08087400 @ =0xFFBFFFFF
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x10]
	movs r0, #4
	mov r2, r8
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	ldr r0, _080873F4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08087404 @ =Task_HookRail_Type2_1
	str r0, [r1, #8]
	ldr r0, [r5, #0x40]
	rsbs r0, r0, #0
	strh r0, [r4, #0xc]
	ldr r0, [r4, #4]
	ldr r1, _08087408 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08087446
	ldr r0, [r4, #0x28]
	cmp r0, r7
	bne _08087446
	str r6, [r4, #0x28]
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x10]
	b _08087446
	.align 2, 0
_080873F4: .4byte gCurTask
_080873F8: .4byte 0x0300000C
_080873FC: .4byte gPlayer
_08087400: .4byte 0xFFBFFFFF
_08087404: .4byte Task_HookRail_Type2_1
_08087408: .4byte 0xFFFFFE00
_0808740C:
	ldr r0, [r5, #0x40]
	adds r0, #0x10
	str r0, [r5, #0x40]
	ldr r1, [r5, #0x4c]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, #6
	lsls r0, r0, #8
	subs r0, r0, r1
	str r0, [r4]
	mov r6, sl
	lsls r0, r6, #0x10
	asrs r0, r0, #8
	movs r1, #0x98
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r1, [r5, #0x4c]
	asrs r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	movs r0, #0x26
	mov r2, r8
	strb r0, [r2]
_08087446:
	ldr r0, _0808747C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08087490
	ldr r0, _08087480 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08087484 @ =gMultiSioRecv
	adds r1, r1, r0
	ldr r3, _08087488 @ =gCamera
	ldrh r0, [r1, #2]
	ldrh r2, [r3]
	subs r0, r0, r2
	subs r0, #4
	strh r0, [r7, #0x16]
	ldrh r0, [r1, #4]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	subs r0, #0x24
	strh r0, [r7, #0x18]
	ldr r4, _0808748C @ =gPlayer
	adds r2, r3, #0
	b _080874AE
	.align 2, 0
_0808747C: .4byte gGameMode
_08087480: .4byte 0x04000128
_08087484: .4byte gMultiSioRecv
_08087488: .4byte gCamera
_0808748C: .4byte gPlayer
_08087490:
	ldr r3, _080874D0 @ =gPlayer
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r2, _080874D4 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	subs r0, #4
	strh r0, [r7, #0x16]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	subs r0, #0x24
	strh r0, [r7, #0x18]
	adds r4, r3, #0
_080874AE:
	ldr r0, [r4]
	asrs r0, r0, #8
	ldrh r1, [r2]
	subs r0, r0, r1
	subs r0, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	subs r0, #0x24
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _0808754A
	.align 2, 0
_080874D0: .4byte gPlayer
_080874D4: .4byte gCamera
_080874D8:
	ldr r1, [r5, #0x40]
	adds r1, #0x10
	str r1, [r5, #0x40]
	ldr r0, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	asrs r0, r0, #8
	mov r6, sb
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	ldr r3, _0808759C @ =gCamera
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	ldr r1, [r5, #0x4c]
	asrs r1, r1, #9
	mov r6, sl
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldrh r6, [r7, #0x16]
	ldrh r0, [r7, #0x18]
	mov r8, r0
	lsls r2, r2, #8
	ldr r0, [r5, #0x4c]
	subs r2, r2, r0
	ldr r0, [r5, #0x48]
	subs r0, r0, r2
	asrs r0, r0, #8
	movs r1, #0xf0
	lsls r1, r1, #1
	cmp r0, r1
	ble _0808754A
	movs r0, #0xb4
	bl m4aSongNumStop
	ldr r2, _080875A0 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _080875A4 @ =Task_HookRail_Type2_1
	str r0, [r1, #8]
	ldr r1, [r4, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808754A
	ldr r0, [r4, #0x28]
	cmp r0, r7
	bne _0808754A
	movs r0, #0
	str r0, [r4, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r4, #0x10]
_0808754A:
	lsls r0, r6, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x10
	adds r0, r0, r6
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08087570
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08087570
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080875AC
_08087570:
	ldr r2, _080875A8 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808758C
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _0808758C
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_0808758C:
	ldrb r0, [r5, #8]
	ldr r2, [sp]
	strb r0, [r2]
	ldr r0, _080875A0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080875B2
	.align 2, 0
_0808759C: .4byte gCamera
_080875A0: .4byte gCurTask
_080875A4: .4byte Task_HookRail_Type2_1
_080875A8: .4byte gPlayer
_080875AC:
	adds r0, r7, #0
	bl DisplaySprite
_080875B2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_HookRail_Type2_1
Task_HookRail_Type2_1: @ 0x080875C4
	push {r4, r5, r6, r7, lr}
	ldr r4, _08087658 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r6]
	mov ip, r1
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0808765C @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	ldr r7, _08087660 @ =0xFFFFFE20
	adds r0, r2, r7
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	adds r3, r1, #0
	adds r3, #0xf0
	strh r3, [r5, #0x18]
	ldr r1, _08087664 @ =0xFFFFFEA0
	adds r0, r2, r1
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808762E
	movs r7, #0x18
	ldrsh r0, [r5, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _0808762E
	lsls r1, r3, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0808766C
_0808762E:
	ldr r2, _08087668 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808764A
	ldr r0, [r2, #0x28]
	cmp r0, r5
	bne _0808764A
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_0808764A:
	ldrb r0, [r6, #8]
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08087672
	.align 2, 0
_08087658: .4byte gCurTask
_0808765C: .4byte gCamera
_08087660: .4byte 0xFFFFFE20
_08087664: .4byte 0xFFFFFEA0
_08087668: .4byte gPlayer
_0808766C:
	adds r0, r5, #0
	bl DisplaySprite
_08087672:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_HookRail
TaskDestructor_HookRail: @ 0x08087678
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
