.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_Interactable109
Task_Interactable109: @ 0x0809549C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0809552C @ =gCurTask
	ldr r0, [r2]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r7, [r4]
	ldrb r0, [r4, #8]
	lsls r0, r0, #3
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r1, _08095530 @ =gPlayer
	ldr r0, [r1, #0x10]
	movs r6, #0x80
	ands r0, r6
	mov sb, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _080954E4
	b _08095616
_080954E4:
	ldr r1, _08095534 @ =0x03000041
	adds r0, r3, r1
	ldrb r2, [r0]
	cmp r2, #2
	bls _0809558C
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #3
	adds r3, r0, r1
	ldr r0, [r5]
	asrs r1, r0, #8
	cmp r3, r1
	bgt _08095582
	ldrb r0, [r7, #5]
	lsls r0, r0, #3
	adds r0, r3, r0
	cmp r0, r1
	blt _08095582
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r1, r0, #8
	ldr r0, [r4, #0x3c]
	cmp r0, r1
	ble _08095538
	ldr r0, [r5, #4]
	cmp r0, r1
	bge _08095582
	cmp r2, #3
	beq _08095546
	cmp r2, #4
	beq _08095564
	b _08095578
	.align 2, 0
_0809552C: .4byte gCurTask
_08095530: .4byte gPlayer
_08095534: .4byte 0x03000041
_08095538:
	cmp r0, r1
	bge _08095582
	ldr r0, [r5, #4]
	cmp r0, r1
	ble _08095582
	cmp r2, #3
	bne _08095560
_08095546:
	ldr r2, _0809555C @ =gUnknown_03005004
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08095568
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
	b _08095582
	.align 2, 0
_0809555C: .4byte gUnknown_03005004
_08095560:
	cmp r2, #4
	bne _08095578
_08095564:
	ldr r2, _08095570 @ =gUnknown_03005004
	ldrh r1, [r2]
_08095568:
	ldr r0, _08095574 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	b _08095582
	.align 2, 0
_08095570: .4byte gUnknown_03005004
_08095574: .4byte 0x0000FF7F
_08095578:
	ldr r0, _08095588 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
_08095582:
	ldr r0, [r5, #4]
	b _08095614
	.align 2, 0
_08095588: .4byte gUnknown_03005004
_0809558C:
	mov r3, ip
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r1, #4
	ldrsb r1, [r7, r1]
	lsls r1, r1, #3
	adds r3, r0, r1
	ldr r0, [r5, #4]
	asrs r1, r0, #8
	cmp r3, r1
	bgt _08095612
	ldrb r0, [r7, #6]
	lsls r0, r0, #3
	adds r0, r3, r0
	cmp r0, r1
	blt _08095612
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #8
	ldr r0, [r4, #0x3c]
	cmp r0, r1
	ble _080955C8
	ldr r0, [r5]
	cmp r0, r1
	bge _08095612
	cmp r2, #0
	beq _080955D6
	cmp r2, #1
	beq _080955F4
	b _08095608
_080955C8:
	cmp r0, r1
	bge _08095612
	ldr r0, [r5]
	cmp r0, r1
	ble _08095612
	cmp r2, #0
	bne _080955F0
_080955D6:
	ldr r2, _080955EC @ =gUnknown_03005004
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080955F8
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
	b _08095612
	.align 2, 0
_080955EC: .4byte gUnknown_03005004
_080955F0:
	cmp r2, #1
	bne _08095608
_080955F4:
	ldr r2, _08095600 @ =gUnknown_03005004
	ldrh r1, [r2]
_080955F8:
	ldr r0, _08095604 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	b _08095612
	.align 2, 0
_08095600: .4byte gUnknown_03005004
_08095604: .4byte 0x0000FF7F
_08095608:
	ldr r0, _08095670 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
_08095612:
	ldr r0, [r5]
_08095614:
	str r0, [r4, #0x3c]
_08095616:
	ldr r2, _08095674 @ =gCamera
	ldrh r0, [r2]
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	mov r3, ip
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08095658
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08095658
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08095664
_08095658:
	ldrb r0, [r4, #8]
	strb r0, [r7]
	mov r3, sb
	ldr r0, [r3]
	bl TaskDestroy
_08095664:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08095670: .4byte gUnknown_03005004
_08095674: .4byte gCamera

	thumb_func_start CreateEntity_Interactable109
CreateEntity_Interactable109: @ 0x08095678
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	movs r1, #0
	ldr r0, _080956D8 @ =Task_Interactable109
	movs r2, #0x80
	lsls r2, r2, #6
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	adds r1, r0, #0
	ldrh r3, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r3, r0
	movs r1, #0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	str r7, [r2]
	ldrb r0, [r7]
	strb r0, [r2, #8]
	strb r6, [r2, #9]
	ldr r4, _080956DC @ =0x03000040
	adds r0, r3, r4
	strb r1, [r0]
	ldrb r0, [r7, #5]
	ldrb r1, [r7, #6]
	cmp r0, r1
	bls _080956E4
	ldrb r1, [r7, #4]
	adds r4, #1
	adds r0, r3, r4
	strb r1, [r0]
	ldr r0, _080956E0 @ =gPlayer
	ldr r0, [r0, #4]
	b _080956F0
	.align 2, 0
_080956D8: .4byte Task_Interactable109
_080956DC: .4byte 0x03000040
_080956E0: .4byte gPlayer
_080956E4:
	ldrb r1, [r7, #3]
	ldr r4, _08095704 @ =0x03000041
	adds r0, r3, r4
	strb r1, [r0]
	ldr r0, _08095708 @ =gPlayer
	ldr r0, [r0]
_080956F0:
	str r0, [r2, #0x3c]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08095704: .4byte 0x03000041
_08095708: .4byte gPlayer
