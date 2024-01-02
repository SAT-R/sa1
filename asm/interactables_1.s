.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_Interactable028
Task_Interactable028: @ 0x0804D178
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
	ldr r2, _0804D204 @ =gUnknown_03005A20
	mov r7, r8
	cmp r7, #0
	beq _0804D1A0
	ldr r2, _0804D208 @ =gUnknown_03005AB0
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
_0804D204: .4byte gUnknown_03005A20
_0804D208: .4byte gUnknown_03005AB0
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
	ldr r0, _0804D2D0 @ =gUnknown_030060E0
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
_0804D2D0: .4byte gUnknown_030060E0
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
	ldr r0, _0804D304 @ =gUnknown_03005088
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
_0804D304: .4byte gUnknown_03005088

	thumb_func_start sub_804D308
sub_804D308: @ 0x0804D308
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
	ldr r2, _0804D394 @ =gUnknown_03005A20
	mov r0, sb
	cmp r0, #0
	beq _0804D330
	ldr r2, _0804D398 @ =gUnknown_03005AB0
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
_0804D394: .4byte gUnknown_03005A20
_0804D398: .4byte gUnknown_03005AB0
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
	ldr r0, _0804D45C @ =gUnknown_030060E0
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
_0804D45C: .4byte gUnknown_030060E0
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
	ldr r0, _0804D49C @ =gUnknown_03005088
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
_0804D49C: .4byte gUnknown_03005088

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

	thumb_func_start CreateEntity_Interactable028
CreateEntity_Interactable028: @ 0x0804D600
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
	ldr r0, _0804D68C @ =Task_Interactable028
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
_0804D68C: .4byte Task_Interactable028
_0804D690: .4byte 0x03000021
_0804D694: .4byte 0x03000020

	thumb_func_start CreateEntity_Interactable029
CreateEntity_Interactable029: @ 0x0804D698
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
	ldr r0, _0804D724 @ =sub_804D308
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
_0804D724: .4byte sub_804D308
_0804D728: .4byte 0x03000021
_0804D72C: .4byte 0x03000020

	thumb_func_start sub_804D730
sub_804D730: @ 0x0804D730
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0804D7A4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r0, #0
	mov r8, r0
_0804D746:
	ldr r5, _0804D7A8 @ =gUnknown_03005A20
	mov r1, r8
	cmp r1, #0
	beq _0804D750
	ldr r5, _0804D7AC @ =gUnknown_03005AB0
_0804D750:
	ldr r0, [r5]
	asrs r4, r0, #8
	ldr r0, [r5, #4]
	asrs r7, r0, #8
	ldr r3, _0804D7B0 @ =gCamera
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r6, #4]
	cmp r1, r0
	bgt _0804D78A
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0804D78A
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r6, #8]
	cmp r1, r0
	bgt _0804D78A
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0804D7B8
_0804D78A:
	ldr r0, [r5, #0x10]
	ldr r1, _0804D7B4 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r1, [r6]
	ldrb r0, [r6, #0x1d]
	strb r0, [r1]
	ldr r0, _0804D7A4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804D848
	.align 2, 0
_0804D7A4: .4byte gCurTask
_0804D7A8: .4byte gUnknown_03005A20
_0804D7AC: .4byte gUnknown_03005AB0
_0804D7B0: .4byte gCamera
_0804D7B4: .4byte 0xFFFF7FFF
_0804D7B8:
	ldr r0, [r6, #0xc]
	cmp r0, r4
	bgt _0804D836
	ldr r0, [r6, #0x10]
	cmp r4, r0
	bge _0804D836
	ldr r0, [r6, #0x14]
	cmp r0, r7
	bgt _0804D836
	ldr r0, [r6, #0x18]
	cmp r7, r0
	bge _0804D836
	ldr r4, [r5, #0x10]
	movs r0, #0x80
	ands r4, r0
	cmp r4, #0
	bne _0804D848
	adds r0, r5, #0
	bl sub_8046CEC
	ldr r1, [r5, #0x10]
	movs r0, #0x81
	lsls r0, r0, #2
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r1, r0
	str r1, [r5, #0x10]
	strh r4, [r5, #0x38]
	strh r4, [r5, #0x3a]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #9
	bl sub_804516C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #9
	strb r0, [r5, #0xf]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _0804D854 @ =gUnknown_03005A20
	ldr r0, [r2, #0x10]
	ldr r1, _0804D858 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	beq _0804D836
	movs r0, #0x6d
	bl m4aSongNumStartOrChange
_0804D836:
	movs r0, #1
	add r8, r0
	ldr r0, _0804D85C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	bge _0804D848
	b _0804D746
_0804D848:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D854: .4byte gUnknown_03005A20
_0804D858: .4byte 0xFFBFFFFF
_0804D85C: .4byte gUnknown_03005088

	thumb_func_start CreateEntity_Interactable034
CreateEntity_Interactable034: @ 0x0804D860
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0804D8E4 @ =sub_804D730
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r1, #0x20
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #0x1d]
	mov r0, r8
	strb r0, [r1, #0x1c]
	lsls r4, r4, #8
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r4, r4, r0
	lsls r5, r5, #8
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r4, [r1, #4]
	str r5, [r1, #8]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r1, #0xc]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r1, #0x14]
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r1, #0x10]
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r1, #0x18]
	movs r0, #0xfe
	strb r0, [r6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804D8E4: .4byte sub_804D730

	thumb_func_start sub_804D8E8
sub_804D8E8: @ 0x0804D8E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0804D964 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r7, #0
	mov sb, r2
	ldr r0, _0804D968 @ =gUnknown_03005A20
	mov r8, r0
	ldr r1, _0804D96C @ =gCamera
	mov ip, r1
_0804D908:
	mov r2, r8
	cmp r7, #0
	beq _0804D910
	ldr r2, _0804D970 @ =gUnknown_03005AB0
_0804D910:
	ldr r0, [r2]
	asrs r5, r0, #8
	ldr r0, [r2, #4]
	asrs r6, r0, #8
	mov r0, ip
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #4]
	cmp r1, r0
	bgt _0804D94C
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0804D94C
	mov r0, ip
	movs r1, #2
	ldrsh r3, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _0804D94C
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0804D978
_0804D94C:
	ldr r0, [r2, #0x10]
	ldr r1, _0804D974 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, [r4]
	ldrb r0, [r4, #0x1d]
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804D9D6
	.align 2, 0
_0804D964: .4byte gCurTask
_0804D968: .4byte gUnknown_03005A20
_0804D96C: .4byte gCamera
_0804D970: .4byte gUnknown_03005AB0
_0804D974: .4byte 0xFFFF7FFF
_0804D978:
	ldr r0, [r4, #0xc]
	cmp r0, r5
	bgt _0804D9C8
	ldr r0, [r4, #0x10]
	cmp r5, r0
	bge _0804D9C8
	ldr r0, [r4, #0x14]
	cmp r0, r6
	bgt _0804D9C8
	ldr r0, [r4, #0x18]
	cmp r6, r0
	bge _0804D9C8
	ldr r3, [r2, #0x10]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	bne _0804D9D6
	ldr r1, _0804D9E4 @ =0xFFFFFDFF
	ands r1, r3
	str r1, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0804D9BE
	ldr r0, _0804D9E8 @ =0xFFDFFFFF
	ands r1, r0
	str r1, [r2, #0x10]
	ldr r0, _0804D9EC @ =gUnknown_030060E0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	ldrh r0, [r2, #0x38]
	orrs r1, r0
	strh r1, [r2, #0x38]
_0804D9BE:
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_0804D9C8:
	adds r7, #1
	ldr r0, _0804D9F0 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	blt _0804D908
_0804D9D6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D9E4: .4byte 0xFFFFFDFF
_0804D9E8: .4byte 0xFFDFFFFF
_0804D9EC: .4byte gUnknown_030060E0
_0804D9F0: .4byte gUnknown_03005088

	thumb_func_start CreateEntity_Interactable035
CreateEntity_Interactable035: @ 0x0804D9F4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0804DA78 @ =sub_804D8E8
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r1, #0x20
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #0x1d]
	mov r0, r8
	strb r0, [r1, #0x1c]
	lsls r4, r4, #8
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r4, r4, r0
	lsls r5, r5, #8
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r4, [r1, #4]
	str r5, [r1, #8]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r1, #0xc]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r1, #0x14]
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r1, #0x10]
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r1, #0x18]
	movs r0, #0xfe
	strb r0, [r6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DA78: .4byte sub_804D8E8

	thumb_func_start CreateEntity_Interactable040
CreateEntity_Interactable040: @ 0x0804DA7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0804DB5C @ =sub_804DB78
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0804DB60 @ =sub_804DDC4
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r6, r1
	mov r0, r8
	str r0, [r1]
	ldrb r2, [r0]
	ldr r3, _0804DB64 @ =0x03000055
	adds r0, r6, r3
	movs r7, #0
	mov sb, r7
	strb r2, [r0]
	ldr r2, _0804DB68 @ =0x03000054
	adds r0, r6, r2
	mov r3, sb
	strb r3, [r0]
	lsls r4, r4, #8
	mov r7, r8
	ldrb r0, [r7]
	lsls r0, r0, #3
	adds r4, r4, r0
	lsls r5, r5, #8
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	adds r5, r5, r0
	ldrb r3, [r7, #5]
	lsls r3, r3, #3
	ldrb r2, [r7, #6]
	lsls r2, r2, #3
	str r4, [r1, #4]
	str r5, [r1, #8]
	movs r0, #3
	ldrsb r0, [r7, r0]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r1, #0xc]
	movs r0, #4
	ldrsb r0, [r7, r0]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r1, #0x14]
	adds r4, r4, r3
	str r4, [r1, #0x10]
	adds r5, r5, r2
	str r5, [r1, #0x18]
	str r3, [r1, #0x1c]
	str r2, [r1, #0x20]
	ldr r0, _0804DB6C @ =0x03000024
	adds r4, r6, r0
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4, #4]
	movs r2, #0
	mov r1, sb
	strh r1, [r4, #8]
	movs r0, #0xed
	lsls r0, r0, #1
	strh r0, [r4, #0xa]
	ldr r3, _0804DB70 @ =0x03000044
	adds r0, r6, r3
	strb r2, [r0]
	ldr r7, _0804DB74 @ =0x03000045
	adds r1, r6, r7
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	mov r0, sb
	strh r0, [r4, #0x1c]
	adds r3, #2
	adds r1, r6, r3
	movs r0, #0x10
	strb r0, [r1]
	adds r7, #4
	adds r6, r6, r7
	strb r2, [r6]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x10]
	movs r0, #0xfe
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DB5C: .4byte sub_804DB78
_0804DB60: .4byte sub_804DDC4
_0804DB64: .4byte 0x03000055
_0804DB68: .4byte 0x03000054
_0804DB6C: .4byte 0x03000024
_0804DB70: .4byte 0x03000044
_0804DB74: .4byte 0x03000045

	thumb_func_start sub_804DB78
sub_804DB78: @ 0x0804DB78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804DBFC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r0, #0
	mov sl, r0
_0804DB92:
	ldr r5, _0804DC00 @ =gUnknown_03005A20
	mov r1, sl
	cmp r1, #0
	beq _0804DB9C
	ldr r5, _0804DC04 @ =gUnknown_03005AB0
_0804DB9C:
	ldr r0, [r5]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r5, r1]
	adds r7, r0, r1
	ldr r3, _0804DC08 @ =gCamera
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r6, #4]
	cmp r1, r0
	bgt _0804DBDE
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0804DBDE
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r6, #8]
	cmp r1, r0
	bgt _0804DBDE
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0804DC10
_0804DBDE:
	ldr r1, [r6]
	adds r0, r6, #0
	adds r0, #0x55
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	ldr r1, _0804DC0C @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _0804DBFC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804DDA6
	.align 2, 0
_0804DBFC: .4byte gCurTask
_0804DC00: .4byte gUnknown_03005A20
_0804DC04: .4byte gUnknown_03005AB0
_0804DC08: .4byte gCamera
_0804DC0C: .4byte 0xFFFF7FFF
_0804DC10:
	ldr r2, [r6, #0xc]
	cmp r2, sb
	ble _0804DC18
	b _0804DD6C
_0804DC18:
	ldr r0, [r6, #0x10]
	cmp sb, r0
	blt _0804DC20
	b _0804DD6C
_0804DC20:
	ldr r0, [r6, #0x14]
	cmp r0, r7
	ble _0804DC28
	b _0804DD6C
_0804DC28:
	ldr r4, [r6, #0x18]
	cmp r7, r4
	ble _0804DC30
	b _0804DD6C
_0804DC30:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804DC3C
	b _0804DDA6
_0804DC3C:
	mov r1, sb
	subs r0, r1, r2
	lsls r0, r0, #9
	ldr r1, [r6, #0x1c]
	bl __divsi3
	adds r2, r0, #0
	cmp r2, #0
	blt _0804DC5C
	ldr r1, _0804DC58 @ =0x000001FF
	cmp r0, r1
	ble _0804DC5E
	adds r0, r1, #0
	b _0804DC5E
	.align 2, 0
_0804DC58: .4byte 0x000001FF
_0804DC5C:
	movs r0, #0
_0804DC5E:
	adds r2, r0, #0
	ldr r3, _0804DCBC @ =gSineTable
	lsls r0, r2, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, [r6, #0x20]
	muls r1, r0, r1
	lsls r0, r4, #8
	subs r0, r0, r1
	asrs r0, r0, #8
	cmp r7, r0
	blt _0804DD6C
	adds r0, #0x20
	cmp r7, r0
	bgt _0804DD6C
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r8, r0
	ldr r0, [r5, #0x10]
	movs r4, #0x80
	lsls r4, r4, #8
	ands r0, r4
	cmp r0, #0
	bne _0804DCAA
	movs r0, #0xb1
	bl m4aSongNumStartOrChange
	ldr r0, [r5, #0x10]
	orrs r0, r4
	str r0, [r5, #0x10]
_0804DCAA:
	ldr r0, [r5, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804DCC0
	movs r2, #8
	ldrsh r1, [r5, r2]
	b _0804DCC4
	.align 2, 0
_0804DCBC: .4byte gSineTable
_0804DCC0:
	movs r0, #0xc
	ldrsh r1, [r5, r0]
_0804DCC4:
	adds r1, #0x40
	ldr r0, _0804DD00 @ =0xFFFFF800
	cmp r1, r0
	blt _0804DCD8
	adds r0, r1, #0
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	ble _0804DCD8
	adds r0, r1, #0
_0804DCD8:
	adds r1, r0, #0
	strh r1, [r5, #0xc]
	strh r1, [r5, #8]
	ldr r0, [r6, #0x20]
	rsbs r0, r0, #0
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	muls r0, r1, r0
	asrs r0, r0, #0x10
	subs r0, #0x2a
	ldr r1, _0804DD00 @ =0xFFFFF800
	cmp r0, r1
	blt _0804DD04
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	ble _0804DD06
	adds r0, r1, #0
	b _0804DD06
	.align 2, 0
_0804DD00: .4byte 0xFFFFF800
_0804DD04:
	adds r0, r1, #0
_0804DD06:
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	bl sub_8046CEC
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	movs r1, #9
	bl sub_804516C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #9
	strb r0, [r5, #0xf]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r5, #0x10]
	movs r0, #0
	strh r0, [r5, #0x3a]
	strh r0, [r5, #0x38]
	adds r4, r6, #0
	adds r4, #0x24
	ldr r1, _0804DD68 @ =gCamera
	ldrh r0, [r1]
	mov r2, sb
	subs r0, r2, r0
	strh r0, [r4, #0x16]
	movs r0, #0xe
	ldrsb r0, [r5, r0]
	subs r0, r7, r0
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _0804DD94
	.align 2, 0
_0804DD68: .4byte gCamera
_0804DD6C:
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0804DD8C
	ldr r0, _0804DDB4 @ =0xFFDFFFFF
	ands r1, r0
	str r1, [r5, #0x10]
	ldr r0, _0804DDB8 @ =gUnknown_030060E0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	ldrh r0, [r5, #0x38]
	orrs r1, r0
	strh r1, [r5, #0x38]
_0804DD8C:
	ldr r0, [r5, #0x10]
	ldr r1, _0804DDBC @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r5, #0x10]
_0804DD94:
	movs r0, #1
	add sl, r0
	ldr r0, _0804DDC0 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp sl, r0
	bge _0804DDA6
	b _0804DB92
_0804DDA6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DDB4: .4byte 0xFFDFFFFF
_0804DDB8: .4byte gUnknown_030060E0
_0804DDBC: .4byte 0xFFFF7FFF
_0804DDC0: .4byte gUnknown_03005088

	thumb_func_start sub_804DDC4
sub_804DDC4: @ 0x0804DDC4
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0804DDD8 @ =0x03000024
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0804DDD8: .4byte 0x03000024

	thumb_func_start CreateEntity_Interactable043
CreateEntity_Interactable043: @ 0x0804DDDC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0804DE94 @ =sub_804DEB8
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0804DE98 @ =sub_804DF38
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r6, r1
	mov r0, sb
	str r0, [r1]
	ldrb r2, [r0]
	ldr r3, _0804DE9C @ =0x0300003D
	adds r0, r6, r3
	movs r3, #0
	mov r8, r3
	strb r2, [r0]
	ldr r2, _0804DEA0 @ =0x0300003C
	adds r0, r6, r2
	mov r3, r8
	strb r3, [r0]
	lsls r4, r4, #8
	mov r2, sb
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r4, r4, r0
	lsls r5, r5, #8
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r4, [r1, #4]
	str r5, [r1, #8]
	ldr r3, _0804DEA4 @ =0x0300000C
	adds r4, r6, r3
	movs r0, #0x31
	bl VramMalloc
	str r0, [r4, #4]
	movs r2, #0
	mov r0, r8
	strh r0, [r4, #8]
	ldr r0, _0804DEA8 @ =0x000001D9
	strh r0, [r4, #0xa]
	ldr r1, _0804DEAC @ =0x0300002C
	adds r0, r6, r1
	strb r2, [r0]
	ldr r3, _0804DEB0 @ =0x0300002D
	adds r1, r6, r3
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	mov r0, r8
	strh r0, [r4, #0x1c]
	adds r3, #1
	adds r1, r6, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0804DEB4 @ =0x03000031
	adds r6, r6, r0
	strb r2, [r6]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x10]
	movs r0, #0xfe
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804DE94: .4byte sub_804DEB8
_0804DE98: .4byte sub_804DF38
_0804DE9C: .4byte 0x0300003D
_0804DEA0: .4byte 0x0300003C
_0804DEA4: .4byte 0x0300000C
_0804DEA8: .4byte 0x000001D9
_0804DEAC: .4byte 0x0300002C
_0804DEB0: .4byte 0x0300002D
_0804DEB4: .4byte 0x03000031

	thumb_func_start sub_804DEB8
sub_804DEB8: @ 0x0804DEB8
	push {r4, r5, r6, r7, lr}
	ldr r2, _0804DF10 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r6, _0804DF14 @ =gCamera
	movs r3, #0
	ldrsh r1, [r6, r3]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	ldr r3, [r4, #4]
	adds r7, r2, #0
	cmp r3, r0
	bgt _0804DEFE
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	blt _0804DEFE
	movs r0, #2
	ldrsh r2, [r6, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _0804DEFE
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0804DF18
_0804DEFE:
	ldr r1, [r4]
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, [r7]
	bl TaskDestroy
	b _0804DF32
	.align 2, 0
_0804DF10: .4byte gCurTask
_0804DF14: .4byte gCamera
_0804DF18:
	ldrh r0, [r6]
	subs r0, r3, r0
	strh r0, [r5, #0x16]
	ldr r0, [r4, #8]
	ldrh r1, [r6, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0804DF32:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804DF38
sub_804DF38: @ 0x0804DF38
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0804DF4C @ =0x0300000C
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0804DF4C: .4byte 0x0300000C

	thumb_func_start sub_804DF50
sub_804DF50: @ 0x0804DF50
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0804DFCC @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r7, #0
	mov sb, r2
	ldr r0, _0804DFD0 @ =gUnknown_03005A20
	mov r8, r0
	ldr r1, _0804DFD4 @ =gCamera
	mov ip, r1
_0804DF70:
	mov r2, r8
	cmp r7, #0
	beq _0804DF78
	ldr r2, _0804DFD8 @ =gUnknown_03005AB0
_0804DF78:
	ldr r0, [r2]
	asrs r5, r0, #8
	ldr r0, [r2, #4]
	asrs r6, r0, #8
	mov r0, ip
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #4]
	cmp r1, r0
	bgt _0804DFB4
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0804DFB4
	mov r0, ip
	movs r1, #2
	ldrsh r3, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _0804DFB4
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0804DFE0
_0804DFB4:
	ldr r0, [r2, #0x10]
	ldr r1, _0804DFDC @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, [r4]
	ldrb r0, [r4, #0x1d]
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804E016
	.align 2, 0
_0804DFCC: .4byte gCurTask
_0804DFD0: .4byte gUnknown_03005A20
_0804DFD4: .4byte gCamera
_0804DFD8: .4byte gUnknown_03005AB0
_0804DFDC: .4byte 0xFFFF7FFF
_0804DFE0:
	ldr r0, [r4, #0xc]
	cmp r0, r5
	bgt _0804E008
	ldr r0, [r4, #0x10]
	cmp r5, r0
	bge _0804E008
	ldr r0, [r4, #0x14]
	cmp r0, r6
	bgt _0804E008
	ldr r0, [r4, #0x18]
	cmp r6, r0
	bge _0804E008
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804E008
	movs r0, #0x90
	lsls r0, r0, #4
	strh r0, [r2, #0xc]
_0804E008:
	adds r7, #1
	ldr r0, _0804E024 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	blt _0804DF70
_0804E016:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E024: .4byte gUnknown_03005088

	thumb_func_start sub_804E028
sub_804E028: @ 0x0804E028
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0804E0A8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r7, #0
	mov sb, r2
	ldr r0, _0804E0AC @ =gUnknown_03005A20
	mov r8, r0
	ldr r1, _0804E0B0 @ =gCamera
	mov ip, r1
_0804E04A:
	mov r2, r8
	cmp r7, #0
	beq _0804E052
	ldr r2, _0804E0B4 @ =gUnknown_03005AB0
_0804E052:
	ldr r0, [r2]
	asrs r5, r0, #8
	ldr r0, [r2, #4]
	asrs r6, r0, #8
	mov r1, ip
	movs r0, #0
	ldrsh r3, [r1, r0]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #4]
	cmp r1, r0
	bgt _0804E08E
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0804E08E
	mov r0, ip
	movs r1, #2
	ldrsh r3, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _0804E08E
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0804E0BC
_0804E08E:
	ldr r0, [r2, #0x10]
	ldr r1, _0804E0B8 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, [r4]
	ldrb r0, [r4, #0x1d]
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804E0F8
	.align 2, 0
_0804E0A8: .4byte gCurTask
_0804E0AC: .4byte gUnknown_03005A20
_0804E0B0: .4byte gCamera
_0804E0B4: .4byte gUnknown_03005AB0
_0804E0B8: .4byte 0xFFFF7FFF
_0804E0BC:
	ldr r0, [r4, #0xc]
	cmp r0, r5
	bgt _0804E0EA
	ldr r0, [r4, #0x10]
	cmp r5, r0
	bge _0804E0EA
	ldr r0, [r4, #0x14]
	cmp r0, r6
	bgt _0804E0EA
	ldr r0, [r4, #0x18]
	cmp r6, r0
	bge _0804E0EA
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804E0F8
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0804E0EA
	ldr r0, _0804E108 @ =0x0000F8C0
	strh r0, [r2, #0xc]
_0804E0EA:
	adds r7, #1
	ldr r0, _0804E10C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	blt _0804E04A
_0804E0F8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E108: .4byte 0x0000F8C0
_0804E10C: .4byte gUnknown_03005088

	thumb_func_start CreateEntity_Interactable036
CreateEntity_Interactable036: @ 0x0804E110
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0804E194 @ =sub_804DF50
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r1, #0x20
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #0x1d]
	mov r0, r8
	strb r0, [r1, #0x1c]
	lsls r4, r4, #8
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r4, r4, r0
	lsls r5, r5, #8
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r4, [r1, #4]
	str r5, [r1, #8]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r1, #0xc]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r1, #0x14]
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r1, #0x10]
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r1, #0x18]
	movs r0, #0xfe
	strb r0, [r6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804E194: .4byte sub_804DF50

	thumb_func_start CreateEntity_Interactable037
CreateEntity_Interactable037: @ 0x0804E198
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0804E21C @ =sub_804E028
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r1, #0x20
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #0x1d]
	mov r0, r8
	strb r0, [r1, #0x1c]
	lsls r4, r4, #8
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r4, r4, r0
	lsls r5, r5, #8
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r4, [r1, #4]
	str r5, [r1, #8]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r1, #0xc]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r1, #0x14]
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r1, #0x10]
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r1, #0x18]
	movs r0, #0xfe
	strb r0, [r6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804E21C: .4byte sub_804E028

	thumb_func_start sub_804E220
sub_804E220: @ 0x0804E220
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0804E29C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r7, #0
	mov sb, r2
	ldr r0, _0804E2A0 @ =gUnknown_03005A20
	mov r8, r0
	ldr r1, _0804E2A4 @ =gCamera
	mov ip, r1
_0804E240:
	mov r2, r8
	cmp r7, #0
	beq _0804E248
	ldr r2, _0804E2A8 @ =gUnknown_03005AB0
_0804E248:
	ldr r0, [r2]
	asrs r5, r0, #8
	ldr r0, [r2, #4]
	asrs r6, r0, #8
	mov r0, ip
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #4]
	cmp r1, r0
	bgt _0804E284
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0804E284
	mov r0, ip
	movs r1, #2
	ldrsh r3, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _0804E284
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0804E2B0
_0804E284:
	ldr r0, [r2, #0x10]
	ldr r1, _0804E2AC @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, [r4]
	ldrb r0, [r4, #0x1d]
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804E2F2
	.align 2, 0
_0804E29C: .4byte gCurTask
_0804E2A0: .4byte gUnknown_03005A20
_0804E2A4: .4byte gCamera
_0804E2A8: .4byte gUnknown_03005AB0
_0804E2AC: .4byte 0xFFFF7FFF
_0804E2B0:
	ldr r0, [r4, #0xc]
	cmp r0, r5
	bgt _0804E2E4
	ldr r0, [r4, #0x10]
	cmp r5, r0
	bge _0804E2E4
	ldr r0, [r4, #0x14]
	cmp r0, r6
	bgt _0804E2E4
	ldr r0, [r4, #0x18]
	cmp r6, r0
	bge _0804E2E4
	ldr r1, [r2, #0x10]
	movs r3, #0x80
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _0804E2F2
	strb r3, [r2, #0x14]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0804E2E4
	ldrh r0, [r2, #0xc]
	rsbs r0, r0, #0
	strh r0, [r2, #0xc]
_0804E2E4:
	adds r7, #1
	ldr r0, _0804E300 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	blt _0804E240
_0804E2F2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E300: .4byte gUnknown_03005088

	thumb_func_start CreateEntity_Interactable038
CreateEntity_Interactable038: @ 0x0804E304
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0804E388 @ =sub_804E220
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r1, #0x20
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #0x1d]
	mov r0, r8
	strb r0, [r1, #0x1c]
	lsls r4, r4, #8
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r4, r4, r0
	lsls r5, r5, #8
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r4, [r1, #4]
	str r5, [r1, #8]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r1, #0xc]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r1, #0x14]
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r1, #0x10]
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r1, #0x18]
	movs r0, #0xfe
	strb r0, [r6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804E388: .4byte sub_804E220

	thumb_func_start Task_Interactable039Main
Task_Interactable039Main: @ 0x0804E38C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0804E40C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r7, #0
	mov sb, r2
	ldr r0, _0804E410 @ =gUnknown_03005A20
	mov r8, r0
	ldr r1, _0804E414 @ =gCamera
	mov ip, r1
_0804E3AE:
	mov r2, r8
	cmp r7, #0
	beq _0804E3B6
	ldr r2, _0804E418 @ =gUnknown_03005AB0
_0804E3B6:
	ldr r0, [r2]
	asrs r5, r0, #8
	ldr r0, [r2, #4]
	asrs r6, r0, #8
	mov r1, ip
	movs r0, #0
	ldrsh r3, [r1, r0]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #4]
	cmp r1, r0
	bgt _0804E3F2
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0804E3F2
	mov r0, ip
	movs r1, #2
	ldrsh r3, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r4, #8]
	cmp r1, r0
	bgt _0804E3F2
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0804E420
_0804E3F2:
	ldr r0, [r2, #0x10]
	ldr r1, _0804E41C @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, [r4]
	ldrb r0, [r4, #0x1d]
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804E45C
	.align 2, 0
_0804E40C: .4byte gCurTask
_0804E410: .4byte gUnknown_03005A20
_0804E414: .4byte gCamera
_0804E418: .4byte gUnknown_03005AB0
_0804E41C: .4byte 0xFFFF7FFF
_0804E420:
	ldr r0, [r4, #0xc]
	cmp r0, r5
	bgt _0804E44E
	ldr r0, [r4, #0x10]
	cmp r5, r0
	bge _0804E44E
	ldr r0, [r4, #0x14]
	cmp r0, r6
	bgt _0804E44E
	ldr r0, [r4, #0x18]
	cmp r6, r0
	bge _0804E44E
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804E45C
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0804E44E
	ldr r0, _0804E46C @ =0x0000FB80
	strh r0, [r2, #0xc]
_0804E44E:
	adds r7, #1
	ldr r0, _0804E470 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	blt _0804E3AE
_0804E45C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804E46C: .4byte 0x0000FB80
_0804E470: .4byte gUnknown_03005088

	thumb_func_start CreateEntity_Interactable039
CreateEntity_Interactable039: @ 0x0804E474
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0804E4F8 @ =Task_Interactable039Main
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r1, #0x20
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #0x1d]
	mov r0, r8
	strb r0, [r1, #0x1c]
	lsls r4, r4, #8
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r4, r4, r0
	lsls r5, r5, #8
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r4, [r1, #4]
	str r5, [r1, #8]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r1, #0xc]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r1, #0x14]
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r1, #0x10]
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r5, r5, r0
	str r5, [r1, #0x18]
	movs r0, #0xfe
	strb r0, [r6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804E4F8: .4byte Task_Interactable039Main
