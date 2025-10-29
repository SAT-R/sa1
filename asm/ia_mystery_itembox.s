.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ Basically the old version of we called "Mystery Item Box" in SA2.

.if 0
.endif

	thumb_func_start sub_801C3A0
sub_801C3A0: @ 0x0801C3A0
	push {r4, r5, lr}
	ldr r2, _0801C3CC @ =gCurTask
	ldr r0, [r2]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	ldr r5, [r3]
	adds r0, #0x80
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0801C3D4
	ldr r1, [r2]
	ldr r0, _0801C3D0 @ =Task_MysteryItemBox_Main1
	str r0, [r1, #8]
	b _0801C40E
	.align 2, 0
_0801C3CC: .4byte gCurTask
_0801C3D0: .4byte Task_MysteryItemBox_Main1
_0801C3D4:
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	ldr r5, _0801C414 @ =0x0300007C
	adds r3, r4, r5
	adds r1, r1, r0
	ldrh r3, [r3]
	adds r1, r1, r3
	ldr r3, _0801C418 @ =0x0300003C
	adds r0, r4, r3
	ldr r4, _0801C41C @ =gCamera
	ldrh r3, [r4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r3
	strh r2, [r0, #0x16]
	ldrh r2, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r0, #0x18]
	bl DisplaySprite
_0801C40E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C414: .4byte 0x0300007C
_0801C418: .4byte 0x0300003C
_0801C41C: .4byte gCamera

	thumb_func_start sub_801C420
sub_801C420: @ 0x0801C420
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801C474 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0x6c
	adds r5, r3, r0
	ldr r0, _0801C478 @ =gMultiplayerPseudoRandom
	ldr r1, [r0]
	movs r0, #3
	ands r1, r0
	ldr r2, _0801C47C @ =0x03000081
	adds r4, r3, r2
	movs r2, #0
	strb r1, [r4]
	ldr r7, _0801C480 @ =0x0300007E
	adds r0, r3, r7
	movs r1, #0
	strh r2, [r0]
	subs r7, #2
	adds r0, r3, r7
	strh r2, [r0]
	ldr r2, _0801C484 @ =0x03000080
	adds r0, r3, r2
	strb r1, [r0]
	subs r7, #0x40
	adds r2, r3, r7
	ldr r0, _0801C488 @ =0x000002C2
	strh r0, [r2, #0xa]
	ldr r0, _0801C48C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0801C498
	ldr r1, _0801C490 @ =gUnknown_080BB4D0
	ldrb r0, [r4]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r4, _0801C494 @ =0x0300005C
	adds r0, r3, r4
	b _0801C4A4
	.align 2, 0
_0801C474: .4byte gCurTask
_0801C478: .4byte gMultiplayerPseudoRandom
_0801C47C: .4byte 0x03000081
_0801C480: .4byte 0x0300007E
_0801C484: .4byte 0x03000080
_0801C488: .4byte 0x000002C2
_0801C48C: .4byte gGameMode
_0801C490: .4byte gUnknown_080BB4D0
_0801C494: .4byte 0x0300005C
_0801C498:
	ldr r1, _0801C4DC @ =gUnknown_080BB4D4
	ldrb r0, [r4]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r7, _0801C4E0 @ =0x0300005C
	adds r0, r3, r7
_0801C4A4:
	strb r1, [r0]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	ldr r0, [r6, #0x1c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x4c]
	orrs r0, r1
	str r0, [r6, #0x4c]
	movs r1, #0
	strh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #2]
	strh r1, [r5, #4]
	strh r1, [r5, #6]
	strh r1, [r5, #8]
	ldr r0, _0801C4E4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801C4E8 @ =sub_801C4EC
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C4DC: .4byte gUnknown_080BB4D4
_0801C4E0: .4byte 0x0300005C
_0801C4E4: .4byte gCurTask
_0801C4E8: .4byte sub_801C4EC

	thumb_func_start sub_801C4EC
sub_801C4EC: @ 0x0801C4EC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801C558 @ =gCurTask
	ldr r7, [r0]
	ldrh r4, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r2, [r5]
	adds r0, #0x6c
	adds r6, r4, r0
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0801C55C @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #6]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #8]
	ldrh r0, [r6, #4]
	adds r0, #8
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _0801C564
	ldr r0, [r5, #0x1c]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x4c]
	ands r0, r1
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #4]
	ldr r0, _0801C560 @ =Task_MysteryItemBox_Main0
	str r0, [r7, #8]
	bl _call_via_r0
	b _0801C5B0
	.align 2, 0
_0801C558: .4byte gCurTask
_0801C55C: .4byte gCamera
_0801C560: .4byte Task_MysteryItemBox_Main0
_0801C564:
	ldr r0, [r5, #0x1c]
	movs r3, #0x20
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r5, #0x1c]
	ldr r2, _0801C5B8 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	orrs r0, r1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x4c]
	ands r0, r3
	str r0, [r5, #0x4c]
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x4c]
	orrs r0, r1
	str r0, [r5, #0x4c]
	ldr r0, _0801C5BC @ =0x0300000C
	adds r5, r4, r0
	adds r0, r5, #0
	adds r1, r6, #0
	bl TransformSprite
	ldr r0, _0801C5C0 @ =0x0300003C
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl TransformSprite
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
_0801C5B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C5B8: .4byte sa2__gUnknown_030054B8
_0801C5BC: .4byte 0x0300000C
_0801C5C0: .4byte 0x0300003C

	thumb_func_start sub_801C5C4
sub_801C5C4: @ 0x0801C5C4
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801C630 @ =gCurTask
	ldr r7, [r0]
	ldrh r4, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r2, [r5]
	adds r0, #0x6c
	adds r6, r4, r0
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0801C634 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #6]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #8]
	ldrh r0, [r6, #4]
	subs r0, #8
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0801C63C
	ldr r0, [r5, #0x1c]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x4c]
	ands r0, r1
	str r0, [r5, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #4]
	ldr r0, _0801C638 @ =Task_MysteryItemBox_Main1
	str r0, [r7, #8]
	bl _call_via_r0
	b _0801C688
	.align 2, 0
_0801C630: .4byte gCurTask
_0801C634: .4byte gCamera
_0801C638: .4byte Task_MysteryItemBox_Main1
_0801C63C:
	ldr r0, [r5, #0x1c]
	movs r3, #0x20
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r5, #0x1c]
	ldr r2, _0801C690 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	orrs r0, r1
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x4c]
	ands r0, r3
	str r0, [r5, #0x4c]
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #0x4c]
	orrs r0, r1
	str r0, [r5, #0x4c]
	ldr r0, _0801C694 @ =0x0300000C
	adds r5, r4, r0
	adds r0, r5, #0
	adds r1, r6, #0
	bl TransformSprite
	ldr r0, _0801C698 @ =0x0300003C
	adds r4, r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl TransformSprite
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
_0801C688:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C690: .4byte sa2__gUnknown_030054B8
_0801C694: .4byte 0x0300000C
_0801C698: .4byte 0x0300003C

	thumb_func_start sub_801C69C
sub_801C69C: @ 0x0801C69C
	push {r4, lr}
	ldr r0, _0801C6DC @ =gCurTask
	ldr r4, [r0]
	ldrh r1, [r4, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r1, r2
	ldr r0, _0801C6E0 @ =0x0300006C
	adds r1, r1, r0
	ldr r0, [r2, #0x1c]
	movs r3, #0x20
	orrs r0, r3
	str r0, [r2, #0x1c]
	ldr r0, [r2, #0x4c]
	orrs r0, r3
	str r0, [r2, #0x4c]
	movs r2, #0
	strh r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r2, [r1, #6]
	strh r2, [r1, #8]
	ldr r0, _0801C6E4 @ =sub_801C5C4
	str r0, [r4, #8]
	bl _call_via_r0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C6DC: .4byte gCurTask
_0801C6E0: .4byte 0x0300006C
_0801C6E4: .4byte sub_801C5C4

	thumb_func_start TaskDestructor_MysteryItemBox
TaskDestructor_MysteryItemBox: @ 0x0801C6E8
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
