
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080652CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _080652D0 @ =0x030000B4
	adds r1, r1, r0
	movs r7, #0
	movs r2, #0
	ldrsh r5, [r1, r2]
	ldr r0, _080652D4 @ =gUnknown_0868B3B8
	mov r8, r0  @ -> SA1_ANIM_INTRO_CHARACTERS
	movs r1, #2
	add r1, r8
	mov sb, r1
_08065284:
	lsls r6, r7, #1
	adds r0, r6, r7
	lsls r0, r0, #4
	mov r2, sl
	adds r4, r2, r0
	cmp r5, #0x1e
	bne _080652B4
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	lsls r1, r7, #3
	mov r2, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080652B4:
	cmp r5, #0
	ble _0806530E
	ldr r0, _080652D8 @ =0x00000161
	cmp r5, r0
	ble _080652DC
	movs r0, #0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _08065308
	.align 2, 0
_080652CC: .4byte gCurTask
_080652D0: .4byte 0x030000B4
_080652D4: .4byte gUnknown_0868B3B8
_080652D8: .4byte 0x00000161
_080652DC:
	cmp r5, #0xbd
	ble _08065308
	cmp r5, #0xbe
	bne _08065302
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r6, #1
	lsls r1, r1, #2
	mov r2, r8
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, sb
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
_08065302:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_08065308:
	adds r0, r4, #0
	bl DisplaySprite
_0806530E:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	blo _08065284
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
