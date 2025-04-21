.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
	thumb_func_start Task_HalfPipeStart
Task_HalfPipeStart: @ 0x0804D178
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804D1FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0
	mov r8, r0
	ldr r1, _0804D200 @ =0xFFFF7FFF
	mov sb, r1
_0804D196:
	ldr r2, _0804D204 @ =gPlayer
	mov r7, r8
	cmp r7, #0
	beq _0804D1A0
	ldr r2, _0804D208 @ =gPartner
_0804D1A0:
	ldr r0, [r2]
	asrs r6, r0, #8
	ldr r0, [r2, #4]
	mov ip, r0
	mov r1, ip
	asrs r1, r1, #8
	mov sl, r1
	ldr r5, _0804D20C @ =gCamera
	movs r7, #0
	ldrsh r3, [r5, r7]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #4]
	cmp r1, r0
	bgt _0804D1E0
	ldr r7, _0804D210 @ =0xFFFFFCE0
	adds r0, r3, r7
	cmp r1, r0
	blt _0804D1E0
	movs r0, #2
	ldrsh r3, [r5, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _0804D1E0
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0804D214
_0804D1E0:
	ldr r0, [r2, #0x10]
	mov r7, sb
	ands r0, r7
	str r0, [r2, #0x10]
	ldr r1, [r4]
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0804D1FC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804D2F6
	.align 2, 0
_0804D1FC: .4byte gCurTask
_0804D200: .4byte 0xFFFF7FFF
_0804D204: .4byte gPlayer
_0804D208: .4byte gPartner
_0804D20C: .4byte gCamera
_0804D210: .4byte 0xFFFFFCE0
_0804D214:
	ldr r0, [r4, #0xc]
	cmp r0, r6
	bgt _0804D276
	ldr r0, [r4, #0x10]
	cmp r6, r0
	bge _0804D276
	ldr r0, [r4, #0x14]
	cmp r0, sl
	bgt _0804D276
	ldr r0, [r4, #0x18]
	cmp sl, r0
	bge _0804D276
	movs r0, #8
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #2
	cmp r1, r0
	ble _0804D26C
	ldr r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804D264
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804D264
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	add r0, ip
	str r0, [r4, #0x1c]
	b _0804D2E4
_0804D264:
	mov r7, sb
	ands r1, r7
	str r1, [r2, #0x10]
	b _0804D2E4
_0804D26C:
	ldr r0, [r2, #0x10]
	mov r1, sb
	ands r0, r1
	str r0, [r2, #0x10]
	b _0804D2E4
_0804D276:
	ldr r3, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r3
	cmp r0, #0
	beq _0804D2E4
	ldr r7, [r4, #0x10]
	cmp r7, r6
	bgt _0804D2E4
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _0804D2F6
	ldrh r5, [r2, #8]
	ldr r0, _0804D2C8 @ =0x0000023F
	mov ip, r0
	mov r1, ip
	adds r0, r5, r1
	lsls r0, r0, #0x10
	ldr r1, _0804D2CC @ =0x047E0000
	cmp r0, r1
	bls _0804D2AE
	ldr r0, _0804D2D0 @ =gPlayerControls
	ldrh r1, [r2, #0x3a]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0804D2D4
_0804D2AE:
	mov r7, sb
	ands r3, r7
	str r3, [r2, #0x10]
	adds r2, #0x40
	ldrb r0, [r2]
	subs r0, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0804D2E4
	movs r0, #4
	strb r0, [r2]
	b _0804D2E4
	.align 2, 0
_0804D2C8: .4byte 0x0000023F
_0804D2CC: .4byte 0x047E0000
_0804D2D0: .4byte gPlayerControls
_0804D2D4:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, ip
	ble _0804D2E4
	subs r0, r6, r7
	ldr r1, [r4, #0x1c]
	bl sub_804D4A0
_0804D2E4:
	movs r0, #1
	add r8, r0
	ldr r0, _0804D304 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	bge _0804D2F6
	b _0804D196
_0804D2F6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D304: .4byte gNumSingleplayerCharacters
.endif
