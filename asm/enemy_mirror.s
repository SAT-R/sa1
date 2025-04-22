.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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
