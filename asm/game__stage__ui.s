.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80543A4
sub_80543A4: @ 0x080543A4
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r1, #2
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _080543C0
	ldr r0, _080543BC @ =gDispCnt
	ldrh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r2, r4, #0
	b _080543CA
	.align 2, 0
_080543BC: .4byte gDispCnt
_080543C0:
	ldr r0, _080543E8 @ =gDispCnt
	ldrh r1, [r0]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r2, r5, #0
_080543CA:
	orrs r1, r2
	strh r1, [r0]
	ldrb r1, [r3, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080543F4
	ldr r0, _080543EC @ =gBldRegs
	ldr r1, _080543F0 @ =0x00003F3F
	strh r1, [r0]
	movs r1, #0x10
	strh r1, [r0, #2]
	adds r4, r0, #0
	b _08054404
	.align 2, 0
_080543E8: .4byte gDispCnt
_080543EC: .4byte gBldRegs
_080543F0: .4byte 0x00003F3F
_080543F4:
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	ldr r4, _08054420 @ =gBldRegs
	cmp r1, #0
	bne _08054404
	movs r0, #0xf
	strh r0, [r4]
	strh r1, [r4, #2]
_08054404:
	movs r1, #2
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _08054428
	ldr r1, _08054424 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	ldrh r2, [r1, #8]
	movs r5, #0xfc
	lsls r5, r5, #6
	adds r0, r5, #0
	b _08054436
	.align 2, 0
_08054420: .4byte gBldRegs
_08054424: .4byte gWinRegs
_08054428:
	ldr r1, _08054454 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
_08054436:
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldrh r1, [r3, #4]
	movs r0, #0xc
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _08054458
	ldrh r1, [r4]
	movs r0, #0x80
	b _0805445C
	.align 2, 0
_08054454: .4byte gWinRegs
_08054458:
	ldrh r1, [r4]
	movs r0, #0xc0
_0805445C:
	orrs r0, r1
	strh r0, [r4]
	movs r0, #5
	ands r0, r2
	cmp r0, #0
	beq _08054470
	ldrh r0, [r3, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	b _0805447A
_08054470:
	ldrh r1, [r3, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	movs r0, #0x20
	subs r0, r0, r1
_0805447A:
	strh r0, [r4, #4]
	adds r1, r4, #0
	ldrh r0, [r1, #4]
	cmp r0, #0x1f
	bls _08054488
	movs r0, #0x20
	strh r0, [r1, #4]
_08054488:
	ldrh r0, [r4, #4]
	lsrs r0, r0, #1
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8054494
sub_8054494: @ 0x08054494
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08054528 @ =sub_8054540
	movs r1, #0x80
	lsls r1, r1, #6
	mov r8, r1
	movs r5, #0
	str r5, [sp]
	movs r1, #0x3c
	mov r2, r8
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r0, [r4, #0xc]
	lsls r0, r0, #8
	str r0, [r1, #0x30]
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	str r0, [r1, #0x34]
	movs r6, #0
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r1, #0x38]
	ldr r0, _0805452C @ =0x0300003A
	adds r2, r3, r0
	movs r0, #1
	strb r0, [r2]
	ldr r0, [r4, #0xc]
	strh r0, [r1, #0x16]
	ldr r0, [r4, #0x10]
	strh r0, [r1, #0x18]
	ldr r0, [r4]
	lsls r0, r0, #5
	ldr r2, _08054530 @ =0x06010000
	adds r0, r0, r2
	str r0, [r1, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r5, [r1, #8]
	ldr r0, [r4, #4]
	strh r0, [r1, #0xa]
	ldr r2, [r4, #8]
	ldr r4, _08054534 @ =0x03000020
	adds r0, r3, r4
	strb r2, [r0]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	ldr r0, _08054538 @ =0x03000021
	adds r2, r3, r0
	movs r0, #0xff
	strb r0, [r2]
	adds r4, #2
	adds r2, r3, r4
	movs r0, #0x10
	strb r0, [r2]
	ldr r0, _0805453C @ =0x03000025
	adds r3, r3, r0
	strb r6, [r3]
	mov r2, r8
	str r2, [r1, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054528: .4byte sub_8054540
_0805452C: .4byte 0x0300003A
_08054530: .4byte 0x06010000
_08054534: .4byte 0x03000020
_08054538: .4byte 0x03000021
_0805453C: .4byte 0x03000025

	thumb_func_start sub_8054540
sub_8054540: @ 0x08054540
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0805457C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r7, r6, #0
	ldr r5, [r6, #0x30]
	ldr r0, [r6, #0x34]
	mov r8, r0
	ldr r0, _08054580 @ =0x0300003A
	adds r2, r1, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08054584
	ldrh r0, [r6, #0x38]
	adds r0, #6
	strh r0, [r6, #0x38]
	lsls r0, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #0x12
	cmp r0, r1
	ble _08054596
	movs r0, #0
	b _08054594
	.align 2, 0
_0805457C: .4byte gCurTask
_08054580: .4byte 0x0300003A
_08054584:
	ldrh r0, [r6, #0x38]
	subs r0, #6
	strh r0, [r6, #0x38]
	lsls r0, r0, #0x10
	ldr r1, _08054610 @ =0x01FF0000
	cmp r0, r1
	bgt _08054596
	movs r0, #1
_08054594:
	strb r0, [r2]
_08054596:
	ldr r1, _08054614 @ =gSineTable
	mov sb, r1
	ldrh r1, [r7, #0x38]
	ldr r4, _08054618 @ =0x000003FF
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x14
	bl Div
	adds r5, r5, r0
	ldrh r0, [r7, #0x38]
	ands r4, r0
	lsls r4, r4, #1
	add r4, sb
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #0x14
	bl Div
	add r8, r0
	str r5, [r7, #0x30]
	mov r0, r8
	str r0, [r7, #0x34]
	asrs r0, r5, #8
	ldr r3, _0805461C @ =gCamera
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r6, #0x16]
	mov r1, r8
	asrs r2, r1, #8
	ldrh r1, [r3, #2]
	subs r2, r2, r1
	strh r2, [r6, #0x18]
	adds r0, #0x20
	lsls r0, r0, #0x10
	movs r1, #0x98
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08054604
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x20
	cmp r0, #0
	blt _08054604
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	ble _08054624
_08054604:
	ldr r0, _08054620 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08054630
	.align 2, 0
_08054610: .4byte 0x01FF0000
_08054614: .4byte gSineTable
_08054618: .4byte 0x000003FF
_0805461C: .4byte gCamera
_08054620: .4byte gCurTask
_08054624:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08054630:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_805463C
sub_805463C: @ 0x0805463C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080546DC @ =sub_80546F8
	movs r1, #0x80
	lsls r1, r1, #6
	mov r8, r1
	movs r5, #0
	str r5, [sp]
	movs r1, #0x40
	mov r2, r8
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r0, [r4, #0xc]
	lsls r0, r0, #8
	str r0, [r1, #0x30]
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	str r0, [r1, #0x34]
	movs r6, #0
	movs r0, #1
	strh r0, [r1, #0x38]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1, #0x3a]
	ldr r2, _080546E0 @ =0x0300003C
	adds r0, r3, r2
	strb r6, [r0]
	ldr r0, _080546E4 @ =0x0300003D
	adds r2, r3, r0
	movs r0, #0x2a
	strb r0, [r2]
	ldr r0, [r4, #0xc]
	strh r0, [r1, #0x16]
	ldr r0, [r4, #0x10]
	strh r0, [r1, #0x18]
	ldr r0, [r4]
	lsls r0, r0, #5
	ldr r2, _080546E8 @ =0x06010000
	adds r0, r0, r2
	str r0, [r1, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r5, [r1, #8]
	ldr r0, [r4, #4]
	strh r0, [r1, #0xa]
	ldr r2, [r4, #8]
	ldr r4, _080546EC @ =0x03000020
	adds r0, r3, r4
	strb r2, [r0]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	ldr r0, _080546F0 @ =0x03000021
	adds r2, r3, r0
	movs r0, #0xff
	strb r0, [r2]
	adds r4, #2
	adds r2, r3, r4
	movs r0, #0x10
	strb r0, [r2]
	ldr r0, _080546F4 @ =0x03000025
	adds r3, r3, r0
	strb r6, [r3]
	mov r2, r8
	str r2, [r1, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080546DC: .4byte sub_80546F8
_080546E0: .4byte 0x0300003C
_080546E4: .4byte 0x0300003D
_080546E8: .4byte 0x06010000
_080546EC: .4byte 0x03000020
_080546F0: .4byte 0x03000021
_080546F4: .4byte 0x03000025

	thumb_func_start sub_80546F8
sub_80546F8: @ 0x080546F8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _08054738 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r7, r4, #0
	ldrh r0, [r4, #0x3a]
	adds r0, #0x30
	strh r0, [r4, #0x3a]
	movs r0, #0x3a
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r5, r0, r1
	str r5, [r4, #0x34]
	movs r0, #0x38
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r1, r0, r1
	str r1, [r4, #0x30]
	ldr r0, _0805473C @ =0x0300003D
	adds r3, r6, r0
	ldrb r0, [r3]
	adds r2, r0, #0
	cmp r2, #0
	beq _08054740
	subs r0, #1
	strb r0, [r3]
	b _0805477A
	.align 2, 0
_08054738: .4byte gCurTask
_0805473C: .4byte 0x0300003D
_08054740:
	asrs r0, r5, #8
	asrs r1, r1, #8
	str r2, [sp]
	ldr r2, _080547B8 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #8
	adds r1, r5, r0
	ldr r0, [r4, #0x34]
	cmp r1, r0
	bgt _0805477A
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x3a]
	str r1, [r4, #0x34]
	ldr r0, _080547BC @ =0x0300003C
	adds r1, r6, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08054776
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0x38]
_08054776:
	movs r0, #1
	strb r0, [r1]
_0805477A:
	ldr r1, [r7, #0x30]
	asrs r1, r1, #8
	ldr r2, _080547C0 @ =gCamera
	ldrh r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x16]
	ldr r0, [r7, #0x34]
	asrs r0, r0, #8
	ldrh r2, [r2, #2]
	subs r2, r0, r2
	strh r2, [r4, #0x18]
	adds r1, #0x20
	lsls r1, r1, #0x10
	movs r0, #0x98
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _080547AE
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x20
	cmp r0, #0
	blt _080547AE
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	ble _080547C8
_080547AE:
	ldr r0, _080547C4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080547D4
	.align 2, 0
_080547B8: .4byte sa2__sub_801EE64
_080547BC: .4byte 0x0300003C
_080547C0: .4byte gCamera
_080547C4: .4byte gCurTask
_080547C8:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080547D4:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80547DC
sub_80547DC: @ 0x080547DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08054874 @ =sub_805488C
	movs r1, #0x80
	lsls r1, r1, #6
	mov r8, r1
	movs r5, #0
	str r5, [sp]
	movs r1, #0x40
	mov r2, r8
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r0, [r4, #0xc]
	lsls r0, r0, #8
	str r0, [r1, #0x30]
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	str r0, [r1, #0x34]
	movs r6, #0
	strh r5, [r1, #0x38]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1, #0x3a]
	ldr r0, _08054878 @ =0x0300003C
	adds r2, r3, r0
	movs r0, #0x2a
	strb r0, [r2]
	ldr r0, [r4, #0xc]
	strh r0, [r1, #0x16]
	ldr r0, [r4, #0x10]
	strh r0, [r1, #0x18]
	ldr r0, [r4]
	lsls r0, r0, #5
	ldr r2, _0805487C @ =0x06010000
	adds r0, r0, r2
	str r0, [r1, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r5, [r1, #8]
	ldr r0, [r4, #4]
	strh r0, [r1, #0xa]
	ldr r2, [r4, #8]
	ldr r4, _08054880 @ =0x03000020
	adds r0, r3, r4
	strb r2, [r0]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	ldr r0, _08054884 @ =0x03000021
	adds r2, r3, r0
	movs r0, #0xff
	strb r0, [r2]
	adds r4, #2
	adds r2, r3, r4
	movs r0, #0x10
	strb r0, [r2]
	ldr r0, _08054888 @ =0x03000025
	adds r3, r3, r0
	strb r6, [r3]
	mov r2, r8
	str r2, [r1, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054874: .4byte sub_805488C
_08054878: .4byte 0x0300003C
_0805487C: .4byte 0x06010000
_08054880: .4byte 0x03000020
_08054884: .4byte 0x03000021
_08054888: .4byte 0x03000025

	thumb_func_start sub_805488C
sub_805488C: @ 0x0805488C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _080548CC @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	adds r7, r4, #0
	ldrh r0, [r4, #0x3a]
	adds r0, #0x30
	strh r0, [r4, #0x3a]
	movs r0, #0x3a
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r6, r0, r1
	str r6, [r4, #0x34]
	movs r0, #0x38
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r1, r0, r1
	str r1, [r4, #0x30]
	ldr r0, _080548D0 @ =0x0300003C
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r5, r0, #0
	cmp r5, #0
	beq _080548D4
	subs r0, #1
	strb r0, [r2]
	b _080548F4
	.align 2, 0
_080548CC: .4byte gCurTask
_080548D0: .4byte 0x0300003C
_080548D4:
	asrs r0, r6, #8
	asrs r1, r1, #8
	str r5, [sp]
	ldr r2, _08054934 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #8
	adds r1, r6, r0
	ldr r0, [r4, #0x34]
	cmp r1, r0
	bgt _080548F4
	strh r5, [r4, #0x3a]
	str r1, [r4, #0x34]
_080548F4:
	ldr r1, [r7, #0x30]
	asrs r1, r1, #8
	ldr r2, _08054938 @ =gCamera
	ldrh r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x16]
	ldr r0, [r7, #0x34]
	asrs r0, r0, #8
	ldrh r2, [r2, #2]
	subs r2, r0, r2
	strh r2, [r4, #0x18]
	adds r1, #0x20
	lsls r1, r1, #0x10
	movs r0, #0x98
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08054928
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x20
	cmp r0, #0
	blt _08054928
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	ble _08054940
_08054928:
	ldr r0, _0805493C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0805494C
	.align 2, 0
_08054934: .4byte sa2__sub_801EE64
_08054938: .4byte gCamera
_0805493C: .4byte gCurTask
_08054940:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0805494C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8054954
sub_8054954: @ 0x08054954
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r2, _080549D8 @ =gCurrentLevel
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	ldr r5, _080549DC @ =gUnknown_08688258
	ldr r6, _080549E0 @ =gTrappedAnimalVariant
	movs r3, #0
	ldrsb r3, [r6, r3]
	lsls r3, r3, #4
	asrs r2, r2, #0x19
	lsls r4, r2, #1
	adds r4, r4, r2
	lsls r4, r4, #4
	adds r3, r3, r4
	adds r2, r5, #0
	adds r2, #0xc
	adds r2, r3, r2
	ldrb r7, [r2]
	adds r3, r3, r5
	ldr r2, [r3]
	str r2, [sp]
	movs r2, #0
	ldrsb r2, [r6, r2]
	lsls r2, r2, #4
	adds r2, r2, r4
	adds r3, r5, #4
	adds r2, r2, r3
	ldr r2, [r2]
	str r2, [sp, #4]
	movs r2, #0
	ldrsb r2, [r6, r2]
	lsls r2, r2, #4
	adds r2, r2, r4
	adds r5, #8
	adds r2, r2, r5
	ldr r2, [r2]
	str r2, [sp, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #0x10]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _080549BE
	movs r0, #0
	strb r0, [r6]
_080549BE:
	lsls r0, r7, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	beq _080549EC
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080549E4
	mov r0, sp
	bl sub_805463C
	b _080549F2
	.align 2, 0
_080549D8: .4byte gCurrentLevel
_080549DC: .4byte gUnknown_08688258
_080549E0: .4byte gTrappedAnimalVariant
_080549E4:
	mov r0, sp
	bl sub_8054494
	b _080549F2
_080549EC:
	mov r0, sp
	bl sub_80547DC
_080549F2:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80549FC
sub_80549FC: @ 0x080549FC
	movs r1, #0
	ldr r0, _08054A20 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08054A1C
	ldr r0, _08054A24 @ =gPlayer
	adds r0, #0x40
	ldrb r0, [r0]
	subs r0, #0x46
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bhi _08054A1C
	movs r1, #1
_08054A1C:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08054A20: .4byte gSelectedCharacter
_08054A24: .4byte gPlayer

	thumb_func_start sub_8054A28
sub_8054A28: @ 0x08054A28
	movs r1, #0
	ldr r0, _08054A4C @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08054A48
	ldr r0, _08054A50 @ =gPlayer
	adds r0, #0x40
	ldrb r0, [r0]
	subs r0, #0x3e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _08054A48
	movs r1, #1
_08054A48:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08054A4C: .4byte gSelectedCharacter
_08054A50: .4byte gPlayer

	thumb_func_start sub_8054A54
sub_8054A54: @ 0x08054A54
	movs r1, #0
	ldr r0, _08054A78 @ =gSelectedCharacter
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _08054A74
	ldr r0, _08054A7C @ =gPlayer
	adds r0, #0x40
	ldrb r0, [r0]
	subs r0, #0x5b
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08054A74
	movs r1, #1
_08054A74:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08054A78: .4byte gSelectedCharacter
_08054A7C: .4byte gPlayer

	thumb_func_start sub_8054A80
sub_8054A80: @ 0x08054A80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	str r0, [sp, #0x30]
	ldr r1, _08054E10 @ =gCurrentLevel
	ldrb r0, [r1]
	movs r2, #1
	ands r2, r0
	str r2, [sp, #0x34] @ sp34 = act = (gCurrentLevel % 2u)
	ldr r1, _08054E14 @ =gSelectedCharacter
	ldrb r0, [r1]
	adds r0, #6
	add r4, sp, #0x2c
	strb r0, [r4]
	mov r2, sp
	adds r2, #0x2b
	str r2, [sp, #0x38]
	movs r0, #6
	strb r0, [r2]
	ldr r7, _08054E18 @ =gUiGraphics
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08054E1C @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	movs r2, #0x20
	str r2, [sp, #0x24]
	mov r0, sp
	adds r0, #0x28
	str r0, [sp, #0x3c]
	movs r1, #0xf
	strb r1, [r0]
	ldr r2, [sp, #0x30]
	ldr r0, [r2, #4]
	str r0, [sp, #0xc]
	mov r0, sp
	adds r0, #0x2a
	str r0, [sp, #0x40]
	movs r1, #0xd
	strb r1, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _08054E20 @ =gUiGraphics + 0x8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08054E24 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08054E28 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08054E2C @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08054E30 @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0xa
	strb r0, [r4]
	movs r0, #7
	ldr r2, [sp, #0x38]
	strb r0, [r2]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, _08054E14 @ =gSelectedCharacter
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #0xb
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	movs r2, #0x20
	str r2, [sp, #0x24]
	movs r1, #0xf
	ldr r0, [sp, #0x3c]
	strb r1, [r0]
	ldr r0, _08054E34 @ =0x06010800
	str r0, [sp, #0xc]
	movs r0, #0xd
	ldr r2, [sp, #0x40]
	strb r0, [r2]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #0x10
	strb r0, [r4]
	movs r0, #8
	ldr r1, [sp, #0x38]
	strb r0, [r1]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	adds r2, #0x40
	mov sb, r2
	str r2, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r2, #6
	ldr r1, [sp, #0x3c]
	strb r2, [r1]
	ldr r1, [sp, #0x30]
	ldr r0, [r1]
	str r0, [sp, #0xc]
	movs r0, #0xd
	ldr r2, [sp, #0x40]
	strb r0, [r2]
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #8]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #9]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xa]
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	ldr r1, _08054E10 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r1, r0]
	mov sl, r4
	cmp r0, #0xd
	ble _08054C3A
	b _08054E5C
_08054C3A:
	movs r2, #0x11
	strb r2, [r4]
	movs r0, #9
	movs r1, #0x2b
	add r1, sp
	strb r0, [r1]
	ldr r2, _08054E38 @ =gUiGraphics + ((17 * 0x1C) + 0)
	ldr r0, [r2]
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r2, _08054E3C @ =gUiGraphics + ((17 * 0x1C) + 0x4)
	ldr r0, [r2]
	str r0, [sp, #0x20]
	ldr r1, _08054E10 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, _08054E40 @ =gUnknown_08688378
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r4, #0xc
	subs r0, r4, r0
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r1, #6
	add r2, sp, #0x28
	strb r1, [r2]
	ldr r1, [sp, #0x30]
	ldr r0, [r1, #8]
	str r0, [sp, #0xc]
	movs r2, #0xd
	movs r0, #0x2a
	add r0, sp
	strb r2, [r0]
	ldr r1, _08054E44 @ =gUiGraphics + ((17 * 0x1C) + 0x8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _08054E48 @ =gUiGraphics + ((17 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r2, _08054E4C @ =gUiGraphics + ((17 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r2, _08054E50 @ =gUiGraphics + ((17 * 0x1C) + 0x14)
	ldr r0, [r2]
	strb r0, [r1, #0xa]
	ldr r2, _08054E54 @ =gUiGraphics + ((17 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r1, #0x11
	mov r0, sl
	strb r1, [r0]
	movs r2, #9
	movs r0, #0x2b
	add r0, sp
	strb r2, [r0]
	ldr r1, _08054E38 @ =gUiGraphics + ((17 * 0x1C) + 0)
	ldr r0, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [sp, #0x14]
	ldr r2, _08054E3C @ =gUiGraphics + ((17 * 0x1C) + 0x4)
	ldr r0, [r2]
	str r0, [sp, #0x20]
	movs r0, #0x80
	str r0, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r1, #6
	add r2, sp, #0x28
	strb r1, [r2]
	ldr r1, [sp, #0x30]
	ldr r0, [r1, #8]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [sp, #0xc]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldr r2, _08054E44 @ =gUiGraphics + ((17 * 0x1C) + 0x8)
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _08054E48 @ =gUiGraphics + ((17 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r2, _08054E4C @ =gUiGraphics + ((17 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r2, _08054E50 @ =gUiGraphics + ((17 * 0x1C) + 0x14)
	ldr r0, [r2]
	strb r0, [r1, #0xa]
	ldr r2, _08054E54 @ =gUiGraphics + ((17 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r1, #0x11
	mov r0, sl
	strb r1, [r0]
	movs r2, #9
	movs r0, #0x2b
	add r0, sp
	strb r2, [r0]
	ldr r1, _08054E58 @ =gUnknown_08688386
	ldr r2, _08054E10 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #5
	ldr r2, _08054E38 @ =gUiGraphics + ((17 * 0x1C) + 0)
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r1, _08054E3C @ =gUiGraphics + ((17 * 0x1C) + 0x4)
	ldr r0, [r1]
	str r0, [sp, #0x20]
	ldr r2, _08054E10 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldr r1, _08054E40 @ =gUnknown_08688378
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	str r0, [sp, #0x18]
	movs r2, #0x20
	str r2, [sp, #0x24]
	movs r0, #6
	add r1, sp, #0x28
	strb r0, [r1]
	ldr r2, _08054E10 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldr r1, _08054E40 @ =gUnknown_08688378
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r4, r4, r0
	lsls r4, r4, #5
	ldr r2, [sp, #0x30]
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [sp, #0xc]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	ldr r2, _08054E44 @ =gUiGraphics + ((17 * 0x1C) + 0x8)
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _08054E48 @ =gUiGraphics + ((17 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r2, _08054E4C @ =gUiGraphics + ((17 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r2, _08054E50 @ =gUiGraphics + ((17 * 0x1C) + 0x14)
	ldr r0, [r2]
	strb r0, [r1, #0xa]
	ldr r2, _08054E54 @ =gUiGraphics + ((17 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r1, #0x11
	mov r0, sl
	strb r1, [r0]
	movs r2, #9
	movs r0, #0x2b
	add r0, sp
	strb r2, [r0]
	ldr r1, _08054E38 @ =gUiGraphics + ((17 * 0x1C) + 0)
	ldr r0, [r1]
	adds r0, r0, r7
	str r0, [sp, #0x14]
	ldr r2, _08054E3C @ =gUiGraphics + ((17 * 0x1C) + 0x4)
	ldr r0, [r2]
	str r0, [sp, #0x20]
	movs r0, #0x20
	str r0, [sp, #0x18]
	str r0, [sp, #0x24]
	movs r1, #6
	add r2, sp, #0x28
	strb r1, [r2]
	ldr r1, [sp, #0x30]
	ldr r0, [r1, #8]
	str r0, [sp, #0xc]
	movs r2, #0xd
	movs r0, #0x2a
	add r0, sp
	strb r2, [r0]
	ldr r1, _08054E44 @ =gUiGraphics + ((17 * 0x1C) + 0x8)
	ldr r0, [r1]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _08054E48 @ =gUiGraphics + ((17 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r2, _08054E4C @ =gUiGraphics + ((17 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r2, _08054E50 @ =gUiGraphics + ((17 * 0x1C) + 0x14)
	ldr r0, [r2]
	strb r0, [r1, #0xa]
	ldr r2, _08054E54 @ =gUiGraphics + ((17 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r1, #4
	str r1, [sp, #4]
	mov r0, sp
	movs r2, #1
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	movs r1, #9
	bl sub_80535C8
	b _08054F14
	.align 2, 0
_08054E10: .4byte gCurrentLevel
_08054E14: .4byte gSelectedCharacter
_08054E18: .4byte gUiGraphics
_08054E1C: .4byte gUiGraphics + 0x4
_08054E20: .4byte gUiGraphics + 0x8
_08054E24: .4byte gUiGraphics + 0xC
_08054E28: .4byte gUiGraphics + 0x10
_08054E2C: .4byte gUiGraphics + 0x14
_08054E30: .4byte gUiGraphics + 0x18
_08054E34: .4byte 0x06010800
_08054E38: .4byte gUiGraphics + ((17 * 0x1C) + 0)
_08054E3C: .4byte gUiGraphics + ((17 * 0x1C) + 0x4)
_08054E40: .4byte gUnknown_08688378
_08054E44: .4byte gUiGraphics + ((17 * 0x1C) + 0x8)
_08054E48: .4byte gUiGraphics + ((17 * 0x1C) + 0xC)
_08054E4C: .4byte gUiGraphics + ((17 * 0x1C) + 0x10)
_08054E50: .4byte gUiGraphics + ((17 * 0x1C) + 0x14)
_08054E54: .4byte gUiGraphics + ((17 * 0x1C) + 0x18)
_08054E58: .4byte gUnknown_08688386
_08054E5C:
	movs r0, #0x12
	mov r1, sl
	strb r0, [r1]
	movs r0, #9
	movs r2, #0x2b
	add r2, sp
	strb r0, [r2]
	ldrb r1, [r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r2, _080550C4 @ =gCurrentLevel
	movs r1, #0
	ldrsb r1, [r2, r1]
	subs r1, #0xe
	lsls r1, r1, #9
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080550C8 @ =gUiGraphics + 0x4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	mov r2, sb
	str r2, [sp, #0x18]
	movs r0, #0x20
	str r0, [sp, #0x24]
	movs r1, #6
	add r2, sp, #0x28
	strb r1, [r2]
	ldr r1, [sp, #0x30]
	ldr r0, [r1, #8]
	str r0, [sp, #0xc]
	movs r2, #0xd
	movs r0, #0x2a
	add r0, sp
	strb r2, [r0]
	mov r2, sl
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080550CC @ =gUiGraphics + 0x8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080550D0 @ =gUiGraphics + 0xC
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080550D4 @ =gUiGraphics + 0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080550D8 @ =gUiGraphics + 0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080550DC @ =gUiGraphics + 0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
_08054F14:
	movs r0, #0xf
	mov r2, sl
	strb r0, [r2]
	movs r1, #0xa
	movs r2, #0x2b
	add r2, sp
	strb r1, [r2]
	ldr r7, _080550E0 @ =gUiGraphics
	movs r0, #0xd2
	lsls r0, r0, #1
	adds r6, r7, r0
	ldr r0, [r6]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	ldr r2, [sp, #0x34]
	lsls r1, r2, #7
	adds r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0x80
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x30]
	ldr r0, [r1, #0x10]
	adds r0, r0, r4
	str r0, [sp, #0xc]
	movs r0, #9
	movs r2, #0x2a
	add r2, sp
	strb r0, [r2]
	movs r0, #0xd6
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r0, [r5]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _080550E4 @ =gUiGraphics + ((15 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r2, _080550E8 @ =gUiGraphics + ((15 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r2, _080550EC @ =gUiGraphics + ((15 * 0x1C) + 0x14)
	ldr r0, [r2]
	strb r0, [r1, #0xa]
	ldr r2, _080550F0 @ =gUiGraphics + ((15 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r1, #0xf
	mov r0, sl
	strb r1, [r0]
	movs r2, #0xa
	movs r0, #0x2b
	add r0, sp
	strb r2, [r0]
	ldr r0, [r6]
	str r0, [sp, #0x14]
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	str r4, [sp, #0x18]
	ldr r2, [sp, #0x30]
	ldr r0, [r2, #0x10]
	str r0, [sp, #0xc]
	movs r0, #0x20
	mov r8, r0
	str r0, [sp, #0x24]
	movs r1, #6
	mov sb, r1
	mov r2, sb
	add r0, sp, #0x28
	strb r2, [r0]
	movs r1, #0xd
	movs r2, #0x2a
	add r2, sp
	strb r1, [r2]
	ldr r0, [r5]
	str r0, [sp, #4]
	mov r1, sp
	ldr r2, _080550E4 @ =gUiGraphics + ((15 * 0x1C) + 0xC)
	ldr r0, [r2]
	strb r0, [r1, #8]
	ldr r2, _080550E8 @ =gUiGraphics + ((15 * 0x1C) + 0x10)
	ldr r0, [r2]
	strb r0, [r1, #9]
	ldr r2, _080550EC @ =gUiGraphics + ((15 * 0x1C) + 0x14)
	ldr r0, [r2]
	strb r0, [r1, #0xa]
	ldr r2, _080550F0 @ =gUiGraphics + ((15 * 0x1C) + 0x18)
	ldr r0, [r2]
	strb r0, [r1, #0xb]
	mov r0, sp
	bl sub_80528AC
	ldr r1, _080550F4 @ =gUnknown_08688398
	ldr r0, _080550C4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, #0x13
	mov r1, sl
	strb r0, [r1]
	movs r4, #2
	movs r2, #0x2b
	add r2, sp
	strb r4, [r2]
	ldrb r1, [r1]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0xe0
	lsls r0, r0, #3
	str r0, [sp, #0x18]
	mov r2, r8
	str r2, [sp, #0x24]
	mov r0, sb
	add r1, sp, #0x28
	strb r0, [r1]
	ldr r2, [sp, #0x30]
	ldr r0, [r2, #0xc]
	str r0, [sp, #0xc]
	movs r0, #0xd
	movs r1, #0x2a
	add r1, sp
	strb r0, [r1]
	mov r2, sl
	ldrb r1, [r2]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r2, sp
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	mov r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	mov r0, sp
	bl sub_80528AC
	movs r0, #8
	str r0, [sp, #4]
	mov r0, sp
	strb r4, [r0, #8]
	mov r1, sp
	movs r0, #1
	strb r0, [r1, #9]
	movs r0, #4
	strb r0, [r1, #0xa]
	mov r0, sp
	strb r4, [r0, #0xb]
	movs r1, #2
	bl sub_80535C8
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080550C4: .4byte gCurrentLevel
_080550C8: .4byte gUiGraphics + 0x4
_080550CC: .4byte gUiGraphics + 0x8
_080550D0: .4byte gUiGraphics + 0xC
_080550D4: .4byte gUiGraphics + 0x10
_080550D8: .4byte gUiGraphics + 0x14
_080550DC: .4byte gUiGraphics + 0x18
_080550E0: .4byte gUiGraphics
_080550E4: .4byte gUiGraphics + ((15 * 0x1C) + 0xC)
_080550E8: .4byte gUiGraphics + ((15 * 0x1C) + 0x10)
_080550EC: .4byte gUiGraphics + ((15 * 0x1C) + 0x14)
_080550F0: .4byte gUiGraphics + ((15 * 0x1C) + 0x18)
_080550F4: .4byte gUnknown_08688398
