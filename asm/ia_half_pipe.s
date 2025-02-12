.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

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

	thumb_func_start Task_HalfPipeEnd
Task_HalfPipeEnd: @ 0x0804D308
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804D38C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0
	mov sb, r0
	ldr r1, _0804D390 @ =0xFFFF7FFF
	mov sl, r1
_0804D326:
	ldr r2, _0804D394 @ =gPlayer
	mov r0, sb
	cmp r0, #0
	beq _0804D330
	ldr r2, _0804D398 @ =gPartner
_0804D330:
	ldr r0, [r2]
	asrs r7, r0, #8
	ldr r1, [r2, #4]
	mov r8, r1
	mov r0, r8
	asrs r0, r0, #8
	mov ip, r0
	ldr r5, _0804D39C @ =gCamera
	movs r1, #0
	ldrsh r3, [r5, r1]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r1, [r4, #4]
	cmp r1, r0
	bgt _0804D370
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0804D370
	movs r0, #2
	ldrsh r3, [r5, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _0804D370
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0804D3A0
_0804D370:
	ldr r0, [r2, #0x10]
	mov r1, sl
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, [r4]
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0804D38C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804D48A
	.align 2, 0
_0804D38C: .4byte gCurTask
_0804D390: .4byte 0xFFFF7FFF
_0804D394: .4byte gPlayer
_0804D398: .4byte gPartner
_0804D39C: .4byte gCamera
_0804D3A0:
	ldr r6, [r4, #0xc]
	cmp r6, r7
	bgt _0804D406
	ldr r0, [r4, #0x10]
	cmp r7, r0
	bge _0804D406
	ldr r0, [r4, #0x14]
	cmp r0, ip
	bgt _0804D406
	ldr r0, [r4, #0x18]
	cmp ip, r0
	bge _0804D406
	movs r1, #8
	ldrsh r0, [r2, r1]
	ldr r1, _0804D3F0 @ =0xFFFFFDC0
	cmp r0, r1
	bge _0804D3FC
	ldr r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804D3F4
	adds r0, r2, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804D3F4
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	add r0, r8
	str r0, [r4, #0x1c]
	b _0804D478
	.align 2, 0
_0804D3F0: .4byte 0xFFFFFDC0
_0804D3F4:
	mov r0, sl
	ands r1, r0
	str r1, [r2, #0x10]
	b _0804D478
_0804D3FC:
	ldr r0, [r2, #0x10]
	mov r1, sl
	ands r0, r1
	str r0, [r2, #0x10]
	b _0804D478
_0804D406:
	ldr r3, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r3
	cmp r0, #0
	beq _0804D478
	cmp r7, r6
	bge _0804D478
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _0804D48A
	ldrh r5, [r2, #8]
	ldr r1, _0804D454 @ =0x0000023F
	adds r0, r5, r1
	lsls r0, r0, #0x10
	ldr r1, _0804D458 @ =0x047E0000
	cmp r0, r1
	bls _0804D438
	ldr r0, _0804D45C @ =gPlayerControls
	ldrh r1, [r2, #0x3a]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0804D460
_0804D438:
	mov r0, sl
	ands r3, r0
	str r3, [r2, #0x10]
	adds r2, #0x40
	ldrb r0, [r2]
	subs r0, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0804D478
	movs r0, #4
	strb r0, [r2]
	b _0804D478
	.align 2, 0
_0804D454: .4byte 0x0000023F
_0804D458: .4byte 0x047E0000
_0804D45C: .4byte gPlayerControls
_0804D460:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0804D498 @ =0xFFFFFDC0
	cmp r0, r1
	bgt _0804D478
	subs r0, r7, r6
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r4, #0x1c]
	bl sub_804D4A0
_0804D478:
	movs r0, #1
	add sb, r0
	ldr r0, _0804D49C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp sb, r0
	bge _0804D48A
	b _0804D326
_0804D48A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D498: .4byte 0xFFFFFDC0
_0804D49C: .4byte gNumSingleplayerCharacters

	thumb_func_start sub_804D4A0
sub_804D4A0: @ 0x0804D4A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r4, r2, #0
	ldr r0, _0804D4E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	movs r6, #0
	ldr r0, _0804D4EC @ =0x0000029F
	cmp r3, r0
	bhi _0804D550
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0804D4CA
	rsbs r0, r0, #0
_0804D4CA:
	ldr r2, _0804D4F0 @ =0xFFFFFDC0
	adds r0, r0, r2
	lsls r0, r0, #0xe
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0804D4F4
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _0804D4E2
	adds r1, r2, #0
_0804D4E2:
	adds r0, r1, #0
	b _0804D4F6
	.align 2, 0
_0804D4E8: .4byte gCurTask
_0804D4EC: .4byte 0x0000029F
_0804D4F0: .4byte 0xFFFFFDC0
_0804D4F4:
	movs r0, #0
_0804D4F6:
	ldr r7, _0804D518 @ =gSineTable
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x16
	movs r5, #0x80
	lsls r5, r5, #1
	cmp r6, r5
	ble _0804D50C
	adds r6, r5, #0
_0804D50C:
	ldr r0, _0804D51C @ =0x0000014F
	cmp r3, r0
	bgt _0804D520
	lsls r0, r3, #0xf
	b _0804D526
	.align 2, 0
_0804D518: .4byte gSineTable
_0804D51C: .4byte 0x0000014F
_0804D520:
	ldr r2, _0804D58C @ =0xFFFFFD60
	adds r0, r3, r2
	lsls r0, r0, #0xf
_0804D526:
	movs r1, #0xa8
	lsls r1, r1, #1
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	rsbs r1, r1, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r0, r0, #2
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r0, r1
	muls r0, r6, r0
	asrs r0, r0, #8
	adds r6, r0, #0
_0804D550:
	ldr r0, [r4, #0x10]
	movs r3, #4
	ands r0, r3
	cmp r0, #0
	bne _0804D5B8
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804D5B8
	adds r1, r4, #0
	adds r1, #0x40
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #4
	beq _0804D582
	adds r0, r2, #0
	subs r0, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0804D5B8
_0804D582:
	ldr r0, _0804D590 @ =0x000007FF
	cmp r6, r0
	bgt _0804D594
	strb r3, [r1]
	b _0804D5B8
	.align 2, 0
_0804D58C: .4byte 0xFFFFFD60
_0804D590: .4byte 0x000007FF
_0804D594:
	ldr r0, _0804D5A0 @ =0x000017FF
	cmp r6, r0
	bgt _0804D5A4
	movs r0, #0x18
	b _0804D5B6
	.align 2, 0
_0804D5A0: .4byte 0x000017FF
_0804D5A4:
	ldr r0, _0804D5B0 @ =0x00002FFF
	cmp r6, r0
	bgt _0804D5B4
	movs r0, #0x19
	b _0804D5B6
	.align 2, 0
_0804D5B0: .4byte 0x00002FFF
_0804D5B4:
	movs r0, #0x1a
_0804D5B6:
	strb r0, [r1]
_0804D5B8:
	ldr r0, [r4, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0xa]
	mov r2, r8
	ldr r1, [r2, #0x1c]
	subs r1, r1, r6
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	subs r1, r1, r0
	ldr r0, [r4, #4]
	subs r1, r1, r0
	ldr r2, _0804D5FC @ =0xFFFFFA00
	adds r3, r0, #0
	cmp r1, r2
	blt _0804D5EA
	adds r0, r1, #0
	movs r2, #0xc0
	lsls r2, r2, #3
	cmp r0, r2
	ble _0804D5EC
_0804D5EA:
	adds r0, r2, #0
_0804D5EC:
	adds r0, r3, r0
	str r0, [r4, #4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D5FC: .4byte 0xFFFFFA00

	thumb_func_start CreateEntity_HalfPipeStart
CreateEntity_HalfPipeStart: @ 0x0804D600
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0804D68C @ =Task_HalfPipeStart
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r1, #0x24
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r1, r3
	str r6, [r3]
	ldrb r2, [r6]
	ldr r7, _0804D690 @ =0x03000021
	adds r0, r1, r7
	strb r2, [r0]
	ldr r0, _0804D694 @ =0x03000020
	adds r1, r1, r0
	mov r7, r8
	strb r7, [r1]
	lsls r4, r4, #8
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r4, r4, r0
	lsls r5, r5, #8
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r4, [r3, #4]
	str r5, [r3, #8]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r3, #0xc]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r3, #0x14]
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r3, #0x10]
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r3, #0x18]
	movs r0, #0xfe
	strb r0, [r6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D68C: .4byte Task_HalfPipeStart
_0804D690: .4byte 0x03000021
_0804D694: .4byte 0x03000020

	thumb_func_start CreateEntity_HalfPipeEnd
CreateEntity_HalfPipeEnd: @ 0x0804D698
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0804D724 @ =Task_HalfPipeEnd
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r1, #0x24
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r1, r3
	str r6, [r3]
	ldrb r2, [r6]
	ldr r7, _0804D728 @ =0x03000021
	adds r0, r1, r7
	strb r2, [r0]
	ldr r0, _0804D72C @ =0x03000020
	adds r1, r1, r0
	mov r7, r8
	strb r7, [r1]
	lsls r4, r4, #8
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r4, r4, r0
	lsls r5, r5, #8
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r4, [r3, #4]
	str r5, [r3, #8]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r3, #0xc]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r3, #0x14]
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r3, #0x10]
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r3, #0x18]
	movs r0, #0xfe
	strb r0, [r6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D724: .4byte Task_HalfPipeEnd
_0804D728: .4byte 0x03000021
_0804D72C: .4byte 0x03000020
