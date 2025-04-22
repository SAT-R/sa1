.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_806FE2C
Task_806FE2C: @ 0x0806FE2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0806FEEC @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _0806FEF0 @ =0x0300000C
	adds r7, r1, r2
	ldr r3, [r5]
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsrs r0, r1, #0x10
	mov sb, r0
	asrs r6, r1, #0x10
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #0x10
	ldr r4, _0806FEF4 @ =gCamera
	ldrh r1, [r4]
	mov sl, r1
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	mov r1, sl
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	ldrh r0, [r4, #2]
	subs r0, r6, r0
	strh r0, [r7, #0x18]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r0, r0, r1
	mov sl, r0
	cmp r2, sl
	bgt _0806FEB8
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0806FEB8
	movs r2, #2
	ldrsh r1, [r4, r2]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	bgt _0806FEB8
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	bge _0806FEF8
_0806FEB8:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806FEDC
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0806FEDC
	movs r2, #0x18
	ldrsh r1, [r7, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806FEF8
_0806FEDC:
	ldrb r0, [r5, #8]
	strb r0, [r3]
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _0806FF92
	.align 2, 0
_0806FEEC: .4byte gCurTask
_0806FEF0: .4byte 0x0300000C
_0806FEF4: .4byte gCamera
_0806FEF8:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sa2__sub_800C4FC
	cmp r0, #0
	beq _0806FF20
	ldr r0, _0806FF1C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806FF92
	.align 2, 0
_0806FF1C: .4byte gCurTask
_0806FF20:
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r5, r1, #0
	cmp r0, #0x14
	bne _0806FF6E
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806FF58
	adds r0, r4, #0
	adds r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
	bl CreateMirrorProjectile
	b _0806FF6E
_0806FF58:
	adds r0, r4, #0
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl CreateMirrorProjectile
_0806FF6E:
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0x3c
	bne _0806FF86
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806FFA0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806FFA4 @ =Task_Mirror
	str r0, [r1, #8]
_0806FF86:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0806FF92:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FFA0: .4byte gCurTask
_0806FFA4: .4byte Task_Mirror

	thumb_func_start CreateMirrorProjectile
CreateMirrorProjectile: @ 0x0806FFA8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0806FFE4 @ =Task_MirrorProjectile
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r1, r3, #0
	cmp r4, #0
	beq _0806FFE8
	strh r5, [r3, #0x16]
	movs r0, #0x80
	lsls r0, r0, #2
	b _0806FFEE
	.align 2, 0
_0806FFE4: .4byte Task_MirrorProjectile
_0806FFE8:
	strh r5, [r3, #0x16]
	movs r0, #0xfe
	lsls r0, r0, #8
_0806FFEE:
	strh r0, [r3, #0x34]
	lsls r0, r5, #0x10
	asrs r0, r0, #8
	str r0, [r1, #0x30]
	movs r2, #0
	movs r1, #0
	strh r6, [r3, #0x18]
	ldr r0, _08070040 @ =0x06012580
	str r0, [r3, #4]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r3, #0x1a]
	strh r1, [r3, #8]
	subs r0, #0x8d
	strh r0, [r3, #0xa]
	adds r0, r3, #0
	adds r0, #0x20
	strb r2, [r0]
	strh r1, [r3, #0x14]
	strh r1, [r3, #0x1c]
	adds r4, r3, #0
	adds r4, #0x21
	movs r0, #0xff
	strb r0, [r4]
	adds r4, #1
	movs r0, #0x10
	strb r0, [r4]
	adds r0, r3, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	str r1, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08070040: .4byte 0x06012580

	thumb_func_start Task_MirrorProjectile
Task_MirrorProjectile: @ 0x08070044
	push {r4, r5, r6, r7, lr}
	ldr r0, _080700B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r5, r4, #0
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x16]
	adds r6, r0, #0
	ldrh r0, [r4, #0x18]
	adds r7, r0, #0
	ldr r1, _080700B8 @ =gCamera
	ldrh r0, [r1]
	subs r0, r6, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_800B798
	ldrh r0, [r4, #0x16]
	adds r0, #0x14
	lsls r0, r0, #0x10
	movs r1, #0x8a
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080700A8
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _080700A8
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0xf0
	ble _080700BC
_080700A8:
	ldr r0, _080700B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080700CC
	.align 2, 0
_080700B4: .4byte gCurTask
_080700B8: .4byte gCamera
_080700BC:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	strh r6, [r5, #0x16]
	strh r7, [r5, #0x18]
_080700CC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
