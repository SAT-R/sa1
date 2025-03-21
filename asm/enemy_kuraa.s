.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_KuraaInit
Task_KuraaInit: @ 0x08073608
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080736D0 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r1, _080736D4 @ =0x0300000C
	adds r5, r3, r1
	ldr r4, [r6]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsrs r7, r1, #0x10
	mov sb, r7
	asrs r1, r1, #0x10
	mov sl, r1
	ldr r0, _080736D8 @ =0x03000040
	adds r3, r3, r0
	movs r7, #0
	ldrsh r1, [r3, r7]
	ldr r0, [r6, #0x3c]
	adds r0, r0, r1
	str r0, [r6, #0x3c]
	asrs r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #0x10
	ldr r3, _080736DC @ =gCamera
	ldrh r1, [r3]
	lsrs r7, r0, #0x10
	mov ip, r7
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	mov r1, sl
	subs r0, r1, r0
	strh r0, [r5, #0x18]
	movs r7, #0
	ldrsh r1, [r3, r7]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r2, r0
	bgt _0807369E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0807369E
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp sl, r0
	bgt _0807369E
	adds r0, r1, #0
	subs r0, #0x80
	cmp sl, r0
	bge _080736E0
_0807369E:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080736C2
	movs r3, #0x18
	ldrsh r0, [r5, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _080736C2
	movs r7, #0x18
	ldrsh r1, [r5, r7]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080736E0
_080736C2:
	ldrb r0, [r6, #8]
	strb r0, [r4]
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
	b _0807378E
	.align 2, 0
_080736D0: .4byte gCurTask
_080736D4: .4byte 0x0300000C
_080736D8: .4byte 0x03000040
_080736DC: .4byte gCamera
_080736E0:
	mov r2, ip
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sa2__sub_800C4FC
	cmp r0, #0
	beq _08073704
	ldr r0, _08073700 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807378E
	.align 2, 0
_08073700: .4byte gCurTask
_08073704:
	ldr r0, [r6, #0x3c]
	asrs r2, r0, #8
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r0, r1, #3
	cmp r2, r0
	bgt _0807371C
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x40
	strh r0, [r1]
	b _0807376A
_0807371C:
	ldrb r0, [r4, #5]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r2, r0
	blt _08073734
	adds r1, r6, #0
	adds r1, #0x40
	ldr r0, _08073730 @ =0x0000FFC0
	strh r0, [r1]
	b _0807376A
	.align 2, 0
_08073730: .4byte 0x0000FFC0
_08073734:
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r0, [r1]
	movs r7, #0
	ldrsh r2, [r1, r7]
	cmp r2, #0
	beq _08073748
	subs r0, #1
	strh r0, [r1]
	b _0807376A
_08073748:
	adds r0, r6, #0
	adds r0, #0x42
	strh r2, [r0]
	movs r0, #0xfa
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0807379C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080737A0 @ =Task_80737A8
	str r0, [r1, #8]
_0807376A:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	ldr r1, _080737A4 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807378E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807379C: .4byte gCurTask
_080737A0: .4byte Task_80737A8
_080737A4: .4byte 0xFFFFFBFF
.endif

	thumb_func_start Task_80737A8
Task_80737A8: @ 0x080737A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08073868 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _0807386C @ =0x0300000C
	adds r4, r1, r0
	mov r1, r8
	ldr r1, [r1]
	mov ip, r1
	mov r5, r8
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsrs r7, r1, #0x10
	mov sl, r7
	asrs r6, r1, #0x10
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #0x10
	ldr r5, _08073870 @ =gCamera
	ldrh r1, [r5]
	lsrs r7, r0, #0x10
	mov sb, r7
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #2]
	subs r0, r6, r0
	strh r0, [r4, #0x18]
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r2, r0
	bgt _08073834
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08073834
	movs r0, #2
	ldrsh r1, [r5, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	bgt _08073834
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	bge _08073874
_08073834:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08073858
	movs r5, #0x18
	ldrsh r0, [r4, r5]
	adds r0, #0x80
	cmp r0, #0
	blt _08073858
	movs r7, #0x18
	ldrsh r1, [r4, r7]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08073874
_08073858:
	mov r1, r8
	ldrb r0, [r1, #8]
	mov r2, ip
	strb r0, [r2]
	ldr r0, [r3]
	bl TaskDestroy
	b _08073974
	.align 2, 0
_08073868: .4byte gCurTask
_0807386C: .4byte 0x0300000C
_08073870: .4byte gCamera
_08073874:
	ldr r1, [r4, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08073928
	mov r5, sb
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x2c
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r5, r0, r7
	ldr r2, _08073984 @ =gPlayer
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _08073988 @ =gPlayerBodyPSI
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov ip, r0
	add r1, ip
	mov sb, r2
	adds r6, r3, #0
	cmp r5, r1
	bgt _080738C2
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r5, r0
	cmp r0, r1
	bge _080738D6
	cmp r5, r1
	blt _08073928
_080738C2:
	adds r0, r6, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r7, ip
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r5
	blt _08073928
_080738D6:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r3, r4, #0
	adds r3, #0x2d
	movs r5, #0
	ldrsb r5, [r3, r5]
	adds r1, r0, r5
	mov r2, sb
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r3, r6, #0
	adds r3, #0x39
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r3, r0, r2
	cmp r1, r3
	bgt _08073910
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r3
	bge _08073922
	cmp r1, r3
	blt _08073928
_08073910:
	adds r0, r6, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r1
	blt _08073928
_08073922:
	mov r0, sb
	bl sa2__sub_800CBA4
_08073928:
	mov r1, r8
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x77
	ble _08073950
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0807398C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08073990 @ =Task_KuraaInit
	str r0, [r1, #8]
_08073950:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	ldr r1, _08073994 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
_08073974:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073984: .4byte gPlayer
_08073988: .4byte gPlayerBodyPSI
_0807398C: .4byte gCurTask
_08073990: .4byte Task_KuraaInit
_08073994: .4byte 0xFFFFFBFF
