.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8065258
sub_8065258: @ 0x08065258
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

	thumb_func_start sub_8065328
sub_8065328: @ 0x08065328
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08065374 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	str r1, [sp]
	ldr r1, _08065378 @ =0x030000B4
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r6, #0
	lsls r0, r0, #0x10
	mov sb, r0
	mov r2, sb
	asrs r2, r2, #0x10
	mov r8, r2
	ldr r0, _0806537C @ =gUnknown_0868B3C0
	mov sl, r0
_08065358:
	lsls r1, r6, #1
	adds r0, r1, r6
	lsls r0, r0, #4
	ldr r2, [sp]
	adds r5, r2, r0
	adds r7, r1, #0
	mov r0, r8
	cmp r0, #0x1e
	bne _080653B8
	cmp r6, #2
	bne _08065384
	ldr r0, _08065380 @ =0x06013280
	b _08065392
	.align 2, 0
_08065374: .4byte gCurTask
_08065378: .4byte 0x030000B4
_0806537C: .4byte gUnknown_0868B3C0
_08065380: .4byte 0x06013280
_08065384:
	cmp r6, #1
	bne _08065390
	ldr r0, _0806538C @ =0x06011980
	b _08065392
	.align 2, 0
_0806538C: .4byte 0x06011980
_08065390:
	ldr r0, _080653DC @ =0x06010080
_08065392:
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	lsls r1, r6, #3
	mov r2, sl
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r0, _080653E0 @ =gUnknown_0868B3C2
	adds r1, r1, r0
	ldrh r1, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080653B8:
	mov r1, sb
	asrs r4, r1, #0x10
	cmp r4, #0
	blt _08065426
	cmp r4, #0x1d
	bgt _080653CA
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080653CA:
	ldr r0, _080653E4 @ =0x00000161
	cmp r4, r0
	ble _080653E8
	movs r0, #0
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	b _08065416
	.align 2, 0
_080653DC: .4byte 0x06010080
_080653E0: .4byte gUnknown_0868B3C2
_080653E4: .4byte 0x00000161
_080653E8:
	cmp r4, #0xbd
	ble _08065416
	cmp r4, #0xbe
	bne _08065410
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r7, #1
	lsls r1, r1, #2
	mov r2, sl
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r0, _08065440 @ =gUnknown_0868B3C2
	adds r1, r1, r0
	ldrh r1, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
_08065410:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_08065416:
	mov r1, r8
	cmp r1, #0x1d
	bgt _08065420
	cmp r6, #0
	bne _08065426
_08065420:
	adds r0, r5, #0
	bl DisplaySprite
_08065426:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	blo _08065358
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065440: .4byte gUnknown_0868B3C2

	thumb_func_start sub_8065444
sub_8065444: @ 0x08065444
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08065480 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r0
	mov sl, r1
	ldr r1, _08065484 @ =0x030000B4
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sb, r0
	movs r5, #0
	ldr r7, _08065488 @ =gUnknown_0868B3C8
	adds r2, r7, #2
	mov r8, r2
_0806546C:
	lsls r1, r5, #1
	adds r0, r1, r5
	lsls r0, r0, #4
	mov r2, sl
	adds r4, r2, r0
	adds r3, r1, #0
	cmp r5, #2
	bne _08065490
	ldr r0, _0806548C @ =0x06013280
	b _0806549E
	.align 2, 0
_08065480: .4byte gCurTask
_08065484: .4byte 0x030000B4
_08065488: .4byte gUnknown_0868B3C8
_0806548C: .4byte 0x06013280
_08065490:
	cmp r5, #1
	bne _0806549C
	ldr r0, _08065498 @ =0x06011980
	b _0806549E
	.align 2, 0
_08065498: .4byte 0x06011980
_0806549C:
	ldr r0, _080654DC @ =0x06010080
_0806549E:
	str r0, [r4, #4]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r6, r0, #0
	cmp r2, #0x1e
	bne _080654C6
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	lsls r1, r5, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, r8
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
_080654C6:
	cmp r2, #0
	blt _0806551E
	ldr r0, _080654E0 @ =0x00000161
	cmp r2, r0
	ble _080654E4
	movs r0, #0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _08065508
	.align 2, 0
_080654DC: .4byte 0x06010080
_080654E0: .4byte 0x00000161
_080654E4:
	cmp r2, #0xea
	ble _08065508
	cmp r2, #0xeb
	bne _08065508
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r3, #1
	lsls r1, r1, #2
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	add r1, r8
	ldrh r1, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
_08065508:
	asrs r0, r6, #0x10
	cmp r0, #0x1d
	bgt _08065512
	cmp r5, #0
	bne _0806551E
_08065512:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0806551E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	blo _0806546C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8065538
sub_8065538: @ 0x08065538
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080655D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp]
	ldr r2, _080655D4 @ =0x030000B4
	adds r0, r1, r2
	ldrh r0, [r0]
	lsls r2, r0, #0x10
	movs r0, #0xcd
	lsls r0, r0, #0x11
	cmp r2, r0
	bgt _0806561C
	movs r7, #0
	str r2, [sp, #4]
	ldr r0, _080655D4 @ =0x030000B4
	adds r0, r1, r0
	str r0, [sp, #8]
	ldr r1, _080655D8 @ =0x00000161
	mov sl, r1
	ldr r2, _080655DC @ =gUnknown_0868B3D0
	mov r8, r2
	movs r0, #2
	add r0, r8
	mov sb, r0
_0806557A:
	lsls r6, r7, #1
	adds r0, r6, r7
	lsls r0, r0, #4
	ldr r1, [sp]
	adds r4, r1, r0
	ldr r2, [sp, #8]
	ldrh r0, [r2]
	cmp r0, sl
	bne _08065590
	movs r0, #0
	str r0, [r4, #0x10]
_08065590:
	ldr r0, [sp, #4]
	asrs r5, r0, #0x10
	cmp r5, #0x1e
	bne _080655BA
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
_080655BA:
	cmp r5, #0
	blt _08065612
	cmp r5, sl
	ble _080655E0
	movs r0, #0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	b _0806560C
	.align 2, 0
_080655D0: .4byte gCurTask
_080655D4: .4byte 0x030000B4
_080655D8: .4byte 0x00000161
_080655DC: .4byte gUnknown_0868B3D0
_080655E0:
	cmp r5, #0xa4
	ble _0806560C
	cmp r5, #0xa5
	bne _08065606
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
_08065606:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_0806560C:
	adds r0, r4, #0
	bl DisplaySprite
_08065612:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	blo _0806557A
_0806561C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

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
