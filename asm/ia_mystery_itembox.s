.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ Basically the old version of we called "Mystery Item Box" in SA2.

.if 0
.endif

	thumb_func_start Task_801C4EC
Task_801C4EC: @ 0x0801C4EC
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
