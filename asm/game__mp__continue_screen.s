.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_806B534
sub_806B534: @ 0x0806B534
	push {r4, r5, lr}
	ldr r5, _0806B578 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	ldr r1, _0806B57C @ =0x03000160
	adds r0, r4, r1
	bl sub_805423C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806B598
	ldr r2, _0806B580 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806B584 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0806B588 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r1, _0806B58C @ =0x0300016C
	adds r0, r4, r1
	ldrb r4, [r0]
	movs r0, #0x9b
	bl m4aSongNumStop
	ldr r0, [r5]
	bl TaskDestroy
	cmp r4, #0
	bne _0806B590
	bl sub_8018538
	b _0806B59C
	.align 2, 0
_0806B578: .4byte gCurTask
_0806B57C: .4byte 0x03000160
_0806B580: .4byte gDispCnt
_0806B584: .4byte 0x00001FFF
_0806B588: .4byte gBldRegs
_0806B58C: .4byte 0x0300016C
_0806B590:
	movs r0, #2
	bl CreateMultiplayerResultsScreen
	b _0806B59C
_0806B598:
	bl sub_806B5A4
_0806B59C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806B5A4
sub_806B5A4: @ 0x0806B5A4
	push {r4, r5, r6, r7, lr}
	ldr r0, _0806B614 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r1, _0806B618 @ =0x0300016C
	adds r0, r0, r1
	ldrb r7, [r0]
	movs r5, #0
_0806B5BA:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, #0x40
	adds r4, r6, r0
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _0806B5BA
	adds r4, r6, #0
	adds r4, #0xd0
	ldr r0, _0806B61C @ =gUnknown_0868B790
	adds r0, r7, r0
	ldrb r0, [r0]
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B614: .4byte gCurTask
_0806B618: .4byte 0x0300016C
_0806B61C: .4byte gUnknown_0868B790

	thumb_func_start TaskDestructor_MultiplayerContinueScreen
TaskDestructor_MultiplayerContinueScreen: @ 0x0806B620
	push {r4, r5, r6, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0
	adds r0, #0x44
	adds r6, r1, r0
_0806B630:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r6, r0
	ldr r0, [r0]
	bl VramFree
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0806B630
	adds r0, r5, #0
	adds r0, #0xd4
	ldr r0, [r0]
	bl VramFree
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	pop {r4, r5, r6}
	pop {r0}
	bx r0
