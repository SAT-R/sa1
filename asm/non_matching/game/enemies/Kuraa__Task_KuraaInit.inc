.include "constants/constants.inc"

.syntax unified
.text
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
	adds r6, r3, r0     @ r6 = kuraa
	ldr r1, _080736D4 @ =0x0300000C
	adds r5, r3, r1     @ r5 = s
	ldr r4, [r6]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0     @ r2 = worldX
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0     @ r1 = worldY
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsrs r7, r1, #0x10
	mov sb, r7          @ sb = r7 = worldX
	asrs r1, r1, #0x10
	mov sl, r1          @ sl = r1 = worldY
	ldr r0, _080736D8 @ =0x03000040
	adds r3, r3, r0
	movs r7, #0
	ldrsh r1, [r3, r7]
	ldr r0, [r6, #0x3c]
	adds r0, r0, r1     @ kuraa->unk3C += kuraa->unk40
	str r0, [r6, #0x3c]
	asrs r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #0x10
	ldr r3, _080736DC @ =gCamera
	ldrh r1, [r3]
	lsrs r7, r0, #0x10
	mov ip, r7          @ ip = offsetWorldX = offsetWorldXworldX + I(kuraa->qUnk3C)
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	mov r1, sl
	subs r0, r1, r0
	strh r0, [r5, #0x18]    @ s->y = worldY - gCamera.y;
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
	mov r3, sb      @ r3 = sb = worldX
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl Coll_Player_Enemy_Attack
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
.syntax divided
