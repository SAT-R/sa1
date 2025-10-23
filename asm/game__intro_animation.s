.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_806562C
Task_806562C: @ 0x0806562C
	push {r4, r5, lr}
	ldr r0, _08065698 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldrh r0, [r3, #0x30]
	adds r0, #1
	strh r0, [r3, #0x30]
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x10
	adds r0, r1, #0
	ldr r1, _0806569C @ =0x01610000
	cmp r0, r1
	bne _08065652
	movs r0, #0
	str r0, [r3, #0x10]
_08065652:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _08065690
	subs r0, #0x5a
	ldr r2, [r3, #0x34]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08065690
	ldr r0, [r3, #0x3c]
	subs r0, #0x10
	str r0, [r3, #0x3c]
	ldr r2, _080656A0 @ =gUnknown_0868B27C
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _0806567C
	str r1, [r3, #0x3c]
_0806567C:
	ldr r0, [r4, #0x3c]
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08065690:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065698: .4byte gCurTask
_0806569C: .4byte 0x01610000
_080656A0: .4byte gUnknown_0868B27C

	thumb_func_start sub_80656A4
sub_80656A4: @ 0x080656A4
	push {r4, r5, lr}
	ldr r0, _08065710 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldrh r0, [r3, #0x30]
	adds r0, #1
	strh r0, [r3, #0x30]
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x10
	adds r0, r1, #0
	ldr r1, _08065714 @ =0x01610000
	cmp r0, r1
	bne _080656CA
	movs r0, #0
	str r0, [r3, #0x10]
_080656CA:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _08065708
	subs r0, #0x5a
	ldr r2, [r3, #0x34]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08065708
	ldr r0, [r3, #0x3c]
	subs r0, #0x10
	str r0, [r3, #0x3c]
	ldr r2, _08065718 @ =gUnknown_0868B280
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _080656F4
	str r1, [r3, #0x3c]
_080656F4:
	ldr r0, [r4, #0x3c]
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08065708:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065710: .4byte gCurTask
_08065714: .4byte 0x01610000
_08065718: .4byte gUnknown_0868B280

	thumb_func_start sub_806571C
sub_806571C: @ 0x0806571C
	push {r4, r5, lr}
	ldr r0, _08065788 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldrh r0, [r3, #0x30]
	adds r0, #1
	strh r0, [r3, #0x30]
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x10
	adds r0, r1, #0
	ldr r1, _0806578C @ =0x01610000
	cmp r0, r1
	bne _08065742
	movs r0, #0
	str r0, [r3, #0x10]
_08065742:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _08065780
	subs r0, #0x5a
	ldr r2, [r3, #0x34]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08065780
	ldr r0, [r3, #0x3c]
	subs r0, #0x10
	str r0, [r3, #0x3c]
	ldr r2, _08065790 @ =gUnknown_0868B284
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _0806576C
	str r1, [r3, #0x3c]
_0806576C:
	ldr r0, [r4, #0x3c]
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08065780:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065788: .4byte gCurTask
_0806578C: .4byte 0x01610000
_08065790: .4byte gUnknown_0868B284

	thumb_func_start sub_8065794
sub_8065794: @ 0x08065794
	push {r4, r5, lr}
	ldr r0, _08065804 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r4, r3, #0
	ldrh r0, [r3, #0x30]
	adds r1, r0, #1
	strh r1, [r3, #0x30]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r0, #0xcd
	lsls r0, r0, #1
	cmp r2, r0
	bgt _080657FE
	lsls r1, r1, #0x10
	ldr r0, _08065808 @ =0x01610000
	cmp r1, r0
	bne _080657C2
	movs r0, #0
	str r0, [r3, #0x10]
_080657C2:
	cmp r2, #0x5a
	ble _080657FE
	adds r0, r2, #0
	subs r0, #0x5a
	ldr r2, [r3, #0x34]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _080657FE
	ldr r0, [r3, #0x3c]
	subs r0, #0x10
	str r0, [r3, #0x3c]
	ldr r2, _0806580C @ =gUnknown_0868B288
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _080657EA
	str r1, [r3, #0x3c]
_080657EA:
	ldr r0, [r4, #0x3c]
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080657FE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065804: .4byte gCurTask
_08065808: .4byte 0x01610000
_0806580C: .4byte gUnknown_0868B288

	thumb_func_start TaskDestructor_8065810
TaskDestructor_8065810: @ 0x08065810
	bx lr
	.align 2, 0

	thumb_func_start Task_IntroChaosEmeraldUpdate
Task_IntroChaosEmeraldUpdate: @ 0x08065814
	push {r4, r5, lr}
	ldr r0, _08065880 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r2, r4, #0
	ldrh r5, [r4, #0x30]
	movs r0, #0x30
	ldrsh r3, [r4, r0]
	adds r0, r3, #0
	subs r0, #0x5a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x8f
	bls _0806583E
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x3c]
_0806583E:
	cmp r3, #0x59
	bgt _08065850
	ldr r0, [r4, #0x40]
	subs r0, #6
	str r0, [r4, #0x40]
	cmp r0, #0
	bge _08065850
	movs r0, #0
	str r0, [r4, #0x40]
_08065850:
	cmp r5, #0xe9
	bne _0806585A
	movs r0, #0xa0
	lsls r0, r0, #1
	str r0, [r2, #0x40]
_0806585A:
	ldr r0, [r2, #0x3c]
	movs r1, #0xb4
	lsls r1, r1, #8
	cmp r0, r1
	ble _08065866
	str r1, [r2, #0x3c]
_08065866:
	ldr r0, [r2, #0x3c]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065880: .4byte gCurTask
