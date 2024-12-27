.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_Toggle_PlayerVisibility
Task_Toggle_PlayerVisibility: @ 0x080843B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _08084424 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	ldr r7, [r1]
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	mov r2, ip
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	mov r3, ip
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _08084428 @ =gCamera
	ldrh r0, [r3]
	lsrs r5, r1, #0x10
	mov sb, r5
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	ldrh r0, [r3, #2]
	lsrs r1, r2, #0x10
	mov r8, r1
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r5, #0
	ldr r4, _0808442C @ =gPartner
	ldr r2, _08084430 @ =gPlayer
	ldr r6, _08084434 @ =0xFFEFFFFF
_0808441A:
	cmp r5, #0
	beq _08084438
	ldr r0, [r4, #0x10]
	b _0808443A
	.align 2, 0
_08084424: .4byte gCurTask
_08084428: .4byte gCamera
_0808442C: .4byte gPartner
_08084430: .4byte gPlayer
_08084434: .4byte 0xFFEFFFFF
_08084438:
	ldr r0, [r2, #0x10]
_0808443A:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080844E8
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	adds r1, r0, #0
	cmp r5, #0
	beq _08084458
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r3, r0
	ble _08084460
	b _080844FA
_08084458:
	ldr r0, [r2]
	asrs r0, r0, #8
	cmp r3, r0
	bgt _080844FA
_08084460:
	asrs r1, r1, #0x10
	ldrb r0, [r7, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r5, #0
	beq _08084476
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808447E
	b _080844FA
_08084476:
	ldr r0, [r2]
	asrs r0, r0, #8
	cmp r1, r0
	blt _080844FA
_0808447E:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	adds r1, r0, #0
	cmp r5, #0
	beq _08084494
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r3, r0
	ble _0808449C
	b _080844FA
_08084494:
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r3, r0
	bgt _080844FA
_0808449C:
	asrs r1, r1, #0x10
	ldrb r0, [r7, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r5, #0
	beq _080844B2
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080844BA
	b _080844FA
_080844B2:
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _080844FA
_080844BA:
	mov r0, ip
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080844E2
	cmp r5, #0
	beq _080844D8
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r4, #0x10]
	b _080844FA
_080844D8:
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	b _080844F8
_080844E2:
	cmp r5, #0
	bne _080844EC
	b _080844F4
_080844E8:
	cmp r5, #0
	beq _080844F4
_080844EC:
	ldr r0, [r4, #0x10]
	ands r0, r6
	str r0, [r4, #0x10]
	b _080844FA
_080844F4:
	ldr r0, [r2, #0x10]
	ands r0, r6
_080844F8:
	str r0, [r2, #0x10]
_080844FA:
	adds r5, #1
	ldr r3, _0808454C @ =gUnknown_03005088
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r5, r0
	blt _0808441A
	mov r5, sl
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808452E
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0808452E
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r2, r0
	ble _0808453C
_0808452E:
	mov r3, ip
	ldrb r0, [r3, #8]
	strb r0, [r7]
	ldr r5, _08084550 @ =gCurTask
	ldr r0, [r5]
	bl TaskDestroy
_0808453C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808454C: .4byte gUnknown_03005088
_08084550: .4byte gCurTask

@ (data[0]: 0 = Visible, 1 = Invisible)
	thumb_func_start CreateEntity_Toggle_PlayerVisibility
CreateEntity_Toggle_PlayerVisibility: @ 0x08084554
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _080845C0 @ =Task_Toggle_PlayerVisibility
	mov r1, r8
	ldrb r2, [r1, #6]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r2, r1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	mov r3, r8
	ldrb r0, [r3, #3]
	ldr r1, _080845C4 @ =0x0300003C
	adds r2, r2, r1
	strb r0, [r2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080845C0: .4byte Task_Toggle_PlayerVisibility
_080845C4: .4byte 0x0300003C
