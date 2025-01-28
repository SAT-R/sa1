.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_803EA24
sub_803EA24: @ 0x0803EA24
	push {r4, r5, r6, lr}
	ldr r0, _0803EA4C @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x18
	adds r5, r1, r0
	ldr r6, _0803EA50 @ =gCamera
	ldr r2, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _0803EA54
	adds r0, r3, #0
	bl TaskDestroy
	b _0803EAB2
	.align 2, 0
_0803EA4C: .4byte gCurTask
_0803EA50: .4byte gCamera
_0803EA54:
	ldr r0, [r4]
	ldrh r1, [r6, #0x28]
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldr r0, [r4, #4]
	ldrh r1, [r6, #0x2a]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	ldr r0, _0803EAB8 @ =0xFFF3FFFF
	ands r2, r0
	str r2, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, [r5, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	ldr r1, _0803EABC @ =0xFFFFF3FF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r0, r4
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	eors r0, r4
	movs r1, #0x80
	lsls r1, r1, #4
	eors r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	eors r0, r4
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
_0803EAB2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803EAB8: .4byte 0xFFF3FFFF
_0803EABC: .4byte 0xFFFFF3FF
