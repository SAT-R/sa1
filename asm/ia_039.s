.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

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
	ldr r0, _0804E410 @ =gPlayer
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
_0804E410: .4byte gPlayer
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
