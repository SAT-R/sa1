.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of src/game/game_over.c ---

.if 01
@ t -> GameOverScreen *
	thumb_func_start Task_8056218
Task_8056218: @ 0x08056218
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0805630C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0     @ r0 = screen
	ldr r1, [r0, #0x78] @ r1 = frames
	adds r6, r0, #0     @ r6 = s
	ldr r0, _08056310 @ =0x0300003C
	adds r0, r0, r2
	mov r8, r0          @ r8 = s2
	lsls r1, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	asrs r0, r1, #0x10
	str r0, [r6, #0x78]
	lsrs r0, r1, #0x10
	str r0, [sp, #0xc]
	asrs r4, r1, #0x10
	cmp r4, #0xd8
	ble _080562F2
	ldr r2, _08056314 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r3, #0xa0
	orrs r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, r8
	str r0, [r1, #0x10]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	orrs r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r6, #0x10]
	adds r1, r4, #0
	subs r1, #0xf8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x20
	subs r0, r0, r1
	mov r1, sp
	movs r2, #0
	mov sl, r2
	mov r2, sl
	strh r2, [r1]
	mov r2, sp
	ldr r1, _08056318 @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0xc
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x16
	strh r4, [r2, #2]
	adds r5, r4, #0
	cmp r5, #9
	bgt _080562AE
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_080562AE:
	mov r0, sp
	strh r7, [r0, #4]
	mov r1, sp
	movs r0, #0x7f
	strh r0, [r1, #6]
	mov r0, sp
	movs r1, #0x3c
	mov sb, r1
	mov r2, sb
	strh r2, [r0, #8]
	adds r0, r6, #0
	mov r1, sp
	bl TransformSprite
	mov r0, sp
	mov r1, sl
	strh r1, [r0]
	strh r4, [r0, #2]
	cmp r5, #9
	bgt _080562DC
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_080562DC:
	mov r0, sp
	strh r7, [r0, #4]
	mov r1, sp
	ldrh r0, [r0, #6]
	strh r0, [r1, #6]
	mov r0, sp
	mov r2, sb
	strh r2, [r0, #8]
	mov r0, r8
	bl TransformSprite
_080562F2:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe8
	ble _08056320
	cmp r0, #0xf7
	ble _08056338
	ldr r0, _0805630C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805631C @ =Task_8056AC8
	str r0, [r1, #8]
	b _08056338
	.align 2, 0
_0805630C: .4byte gCurTask
_08056310: .4byte 0x0300003C
_08056314: .4byte sa2__gUnknown_030054B8
_08056318: .4byte gSineTable
_0805631C: .4byte Task_8056AC8
_08056320:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
_08056338:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
.endif
    
@ t -> GameOverScreen *
	thumb_func_start Task_8056348
Task_8056348: @ 0x08056348
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _08056468 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	mov sl, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r3, sl
	adds r5, r3, r0
	ldr r0, [r5, #0x78]
	ldr r6, _0805646C @ =0x0300003C
	add r6, sl
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [sp, #0xc]
	ldr r3, _08056470 @ =0xFF880000
	adds r0, r0, r3
	lsrs r0, r0, #8
	lsls r2, r0, #0xc
	ldr r7, _08056474 @ =sa2__gUnknown_030054B8
	ldrb r0, [r7]
	adds r1, r0, #1
	strb r1, [r7]
	movs r1, #0x20
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0x80
	orrs r0, r3
	str r0, [r5, #0x10]
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	mov r1, sp
	ldr r0, _08056478 @ =gSineTable
	asrs r2, r2, #0x10
	adds r3, #0x80
	mov sb, r3
	add r2, sb
	lsls r2, r2, #1
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x16
	strh r4, [r1, #2]
	mov r8, r4
	cmp r4, #9
	bgt _080563B6
	movs r0, #0xa
	strh r0, [r1, #2]
_080563B6:
	mov r0, sp
	mov r1, sb
	strh r1, [r0, #4]
	mov r1, sp
	movs r0, #0x7f
	strh r0, [r1, #6]
	mov r0, sp
	movs r3, #0x3c
	strh r3, [r0, #8]
	adds r0, r5, #0
	bl TransformSprite
	ldrb r0, [r7]
	adds r1, r0, #1
	strb r1, [r7]
	movs r1, #0x20
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0x80
	orrs r0, r3
	str r0, [r6, #0x10]
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	strh r4, [r0, #2]
	mov r3, r8
	cmp r3, #9
	bgt _080563F6
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_080563F6:
	mov r0, sp
	mov r1, sb
	strh r1, [r0, #4]
	mov r1, sp
	ldrh r0, [r0, #6]
	strh r0, [r1, #6]
	mov r0, sp
	movs r3, #0x3c
	strh r3, [r0, #8]
	adds r0, r6, #0
	bl TransformSprite
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r5, #0x78]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x87
	ble _08056458
	ldr r2, _0805647C @ =0x000002CB
	strh r2, [r5, #0xa]
	ldr r1, _08056480 @ =0x03000020
	add r1, sl
	movs r0, #2
	strb r0, [r1]
	strh r2, [r6, #0xa]
	ldr r1, _08056484 @ =0x0300005C
	add r1, sl
	movs r0, #3
	strb r0, [r1]
	ldr r0, _08056468 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056488 @ =Task_805648C
	str r0, [r1, #8]
_08056458:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056468: .4byte gCurTask
_0805646C: .4byte 0x0300003C
_08056470: .4byte 0xFF880000
_08056474: .4byte sa2__gUnknown_030054B8
_08056478: .4byte gSineTable
_0805647C: .4byte 0x000002CB
_08056480: .4byte 0x03000020
_08056484: .4byte 0x0300005C
_08056488: .4byte Task_805648C

@ t -> GameOverScreen *
	thumb_func_start Task_805648C
Task_805648C: @ 0x0805648C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _080565AC @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6, #0x78]
	ldr r2, _080565B0 @ =0x0300003C
	adds r7, r1, r2
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	str r4, [sp, #0xc]
	ldr r1, _080565B4 @ =0xFF780000
	adds r0, r0, r1
	lsrs r0, r0, #8
	lsls r2, r0, #0xc
	ldr r3, _080565B8 @ =sa2__gUnknown_030054B8
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	movs r4, #0x20
	orrs r0, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x80
	mov sl, r1
	orrs r0, r1
	str r0, [r6, #0x10]
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	adds r1, #0x80
	adds r0, r1, #0
	asrs r2, r2, #0x10
	subs r0, r0, r2
	mov r2, sp
	ldr r1, _080565BC @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	mov sb, r4
	add r0, sb
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x16
	strh r5, [r2, #2]
	mov r0, sp
	adds r4, r5, #1
	strh r4, [r0, #2]
	mov r8, r4
	cmp r4, #9
	bgt _0805650C
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_0805650C:
	mov r0, sp
	mov r1, sb
	strh r1, [r0, #4]
	mov r1, sp
	movs r0, #0x7f
	strh r0, [r1, #6]
	mov r0, sp
	movs r2, #0x3c
	strh r2, [r0, #8]
	adds r0, r6, #0
	str r3, [sp, #0x10]
	bl TransformSprite
	ldr r3, [sp, #0x10]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	movs r1, #0x20
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sl
	orrs r0, r2
	str r0, [r7, #0x10]
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r4, [r0, #2]
	mov r2, r8
	cmp r2, #9
	bgt _08056552
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_08056552:
	mov r0, sp
	mov r4, sb
	strh r4, [r0, #4]
	mov r1, sl
	strh r1, [r0, #6]
	movs r2, #0x3c
	strh r2, [r0, #8]
	adds r0, r7, #0
	mov r1, sp
	bl TransformSprite
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r6, #0x78]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x97
	ble _0805659C
	ldr r4, _080565AC @ =gCurTask
	ldr r1, [r4]
	ldr r0, _080565C0 @ =Task_80565C4
	str r0, [r1, #8]
_0805659C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080565AC: .4byte gCurTask
_080565B0: .4byte 0x0300003C
_080565B4: .4byte 0xFF780000
_080565B8: .4byte sa2__gUnknown_030054B8
_080565BC: .4byte gSineTable
_080565C0: .4byte Task_80565C4

@ t -> GameOverScreen *
	thumb_func_start Task_80565C4
Task_80565C4: @ 0x080565C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080566D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, [r0, #0x78]
	adds r5, r0, #0
	ldr r0, _080566D8 @ =0x0300003C
	adds r6, r2, r0
	movs r0, #0x80
	strh r0, [r5, #0x16]
	movs r2, #0x3c
	mov sb, r2
	mov r3, sb
	strh r3, [r5, #0x18]
	str r0, [r5, #0x10]
	strh r0, [r6, #0x16]
	strh r3, [r6, #0x18]
	str r0, [r6, #0x10]
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	asrs r0, r1, #0x10
	str r0, [r5, #0x78]
	lsrs r2, r1, #0x10
	mov sl, r2
	adds r4, r0, #0
	movs r0, #0xb3
	lsls r0, r0, #3
	cmp r4, r0
	ble _080566AE
	ldr r2, _080566DC @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r3, #0xa0
	orrs r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r6, #0x10]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	orrs r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r5, #0x10]
	ldr r3, _080566E0 @ =0xFFFFFA48
	adds r1, r4, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x20
	subs r0, r0, r1
	mov r1, sp
	movs r2, #0
	strh r2, [r1]
	mov r2, sp
	ldr r1, _080566E4 @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0xc
	movs r3, #0x80
	lsls r3, r3, #1
	mov r8, r3
	add r0, r8
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x16
	strh r4, [r2, #2]
	adds r7, r4, #0
	cmp r7, #9
	bgt _0805666C
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_0805666C:
	mov r0, sp
	mov r1, r8
	strh r1, [r0, #4]
	mov r1, sp
	movs r0, #0x7f
	strh r0, [r1, #6]
	mov r0, sp
	mov r2, sb
	strh r2, [r0, #8]
	adds r0, r5, #0
	bl TransformSprite
	mov r0, sp
	movs r3, #0
	strh r3, [r0]
	strh r4, [r0, #2]
	cmp r7, #9
	bgt _08056696
	mov r1, sp
	movs r0, #0xa
	strh r0, [r1, #2]
_08056696:
	mov r0, sp
	mov r1, r8
	strh r1, [r0, #4]
	mov r1, sp
	ldrh r0, [r0, #6]
	strh r0, [r1, #6]
	mov r0, sp
	mov r2, sb
	strh r2, [r0, #8]
	adds r0, r6, #0
	bl TransformSprite
_080566AE:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	movs r0, #0xb5
	lsls r0, r0, #3
	cmp r1, r0
	ble _080566EC
	adds r0, #0xf
	cmp r1, r0
	ble _08056704
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r0, _080566D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080566E8 @ =Task_8056AC8
	str r0, [r1, #8]
	b _08056704
	.align 2, 0
_080566D4: .4byte gCurTask
_080566D8: .4byte 0x0300003C
_080566DC: .4byte sa2__gUnknown_030054B8
_080566E0: .4byte 0xFFFFFA48
_080566E4: .4byte gSineTable
_080566E8: .4byte Task_8056AC8
_080566EC:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08056704:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
    
@ t -> GameOverB
	thumb_func_start Task_8056714
Task_8056714: @ 0x08056714
	push {r4, r5, r6, r7, lr}
	ldr r7, _08056760 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r4, #0x18]
	ldrh r0, [r4, #0xa]
	adds r0, #0xc
	movs r5, #0
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08056740
	strh r5, [r4, #0xa]
_08056740:
	ldr r0, _08056764 @ =gUnknown_086883F8
	adds r1, r4, #0
	bl sub_80530CC
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb5
	ble _0805675A
	ldr r1, [r7]
	ldr r0, _08056768 @ =Task_8056F80
	str r0, [r1, #8]
	strh r5, [r4, #0xa]
	str r5, [r4, #0x18]
_0805675A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056760: .4byte gCurTask
_08056764: .4byte gUnknown_086883F8
_08056768: .4byte Task_8056F80

	thumb_func_start sub_805676C
sub_805676C: @ 0x0805676C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	ldr r0, _08056814 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrh r7, [r6, #0x24]
	mov r1, sp
	movs r0, #0
	mov r8, r0
	movs r0, #0x5b
	strh r0, [r1, #0xc]
	movs r0, #6
	strh r0, [r1, #0x12]
	mov r0, sp
	mov r1, r8
	strh r1, [r0, #8]
	mov r1, sp
	movs r0, #4
	strh r0, [r1, #0x10]
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #0xe]
	mov r0, sp
	strb r2, [r0, #0x16]
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x78
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x29
	subs r0, r0, r1
	add r5, sp, #0x18
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #0x78
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x50
	ble _0805681C
	adds r0, r1, #0
	subs r0, #0x50
	mov r4, sp
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x74
	muls r0, r1, r0
	movs r1, #0x12
	bl __divsi3
	adds r0, #0x74
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	cmp r0, #0x1f
	bls _0805689E
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r3, r8
	strh r3, [r0, #4]
	mov r3, sp
	ldr r2, _08056818 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_8052C84
	b _0805689E
	.align 2, 0
_08056814: .4byte gCurTask
_08056818: .4byte sa2__gUnknown_030054B8
_0805681C:
	cmp r1, #0x14
	ble _08056864
	subs r1, #0x14
	mov r2, sp
	lsls r1, r1, #0x10
	asrs r1, r1, #0xe
	ldr r3, _0805685C @ =0x000001F1
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2]
	mov r1, sp
	strh r0, [r1, #2]
	mov r0, sp
	mov r1, r8
	strh r1, [r0, #4]
	mov r3, sp
	ldr r2, _08056860 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	mov r1, sp
	movs r0, #0x68
	strh r0, [r1, #0xa]
	movs r0, #0x53
	strh r0, [r1, #0xc]
	adds r0, r5, #0
	bl sub_8052C84
	b _0805689E
	.align 2, 0
_0805685C: .4byte 0x000001F1
_08056860: .4byte sa2__gUnknown_030054B8
_08056864:
	mov r4, sp
	movs r0, #0x74
	muls r0, r1, r0
	movs r1, #0x14
	bl __divsi3
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	cmp r0, #0x1f
	bls _0805689E
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	mov r3, r8
	strh r3, [r0, #4]
	mov r3, sp
	ldr r2, _08056918 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_8052C84
_0805689E:
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	ldr r0, _0805691C @ =0x000004AF
	cmp r2, r0
	ble _080568B0
	ldr r0, _08056920 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056924 @ =Task_8056FD0
	str r0, [r1, #8]
_080568B0:
	ldr r5, _08056928 @ =gPressedKeys
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080568F8
	adds r0, r2, #0
	movs r1, #0x78
	bl Div
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	asrs r2, r0, #0x10
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #0x13
	lsrs r7, r1, #0x10
	ldr r4, [r6, #0x1c]
	movs r3, #0x96
	lsls r3, r3, #3
	adds r0, r2, #0
	movs r1, #0xa
	subs r1, r1, r0
	lsls r2, r1, #4
	subs r2, r2, r1
	lsls r2, r2, #3
	subs r3, r3, r2
	str r3, [r4, #0x18]
	ldr r1, [r6, #0x20]
	ldr r0, _0805692C @ =0x00000566
	subs r0, r0, r2
	str r0, [r1, #0x18]
	ldr r1, [r6, #0x18]
	str r0, [r1, #0x78]
_080568F8:
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08056934
	ldr r0, _08056920 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056930 @ =sub_8056970
	str r0, [r1, #8]
	movs r0, #0
	str r0, [r6, #0x24]
	ldr r1, [r6, #0x18]
	adds r1, #0x80
	movs r0, #1
	strb r0, [r1]
	b _08056940
	.align 2, 0
_08056918: .4byte sa2__gUnknown_030054B8
_0805691C: .4byte 0x000004AF
_08056920: .4byte gCurTask
_08056924: .4byte Task_8056FD0
_08056928: .4byte gPressedKeys
_0805692C: .4byte 0x00000566
_08056930: .4byte sub_8056970
_08056934:
	lsls r0, r7, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	asrs r0, r0, #0x10
	str r0, [r6, #0x24]
_08056940:
	ldr r0, [r6, #0x24]
	movs r1, #0x78
	bl Mod
	cmp r0, #0x3c
	bne _08056960
	ldr r4, _0805696C @ =gUnknown_086883E4
	ldr r0, [r6, #0x24]
	movs r1, #0x78
	bl Div
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	bl m4aSongNumStart
_08056960:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805696C: .4byte gUnknown_086883E4

	thumb_func_start sub_8056970
sub_8056970: @ 0x08056970
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	ldr r0, _080569FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrh r0, [r6, #0x24]
	mov r8, r0
	mov r1, sp
	movs r7, #0
	movs r0, #0x54
	strh r0, [r1, #0xc]
	movs r0, #6
	strh r0, [r1, #0x12]
	mov r0, sp
	strh r7, [r0, #8]
	movs r0, #5
	strh r0, [r1, #0x10]
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #0xe]
	mov r0, sp
	strb r2, [r0, #0x16]
	add r5, sp, #0x18
	movs r0, #0x20
	strb r0, [r5]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x50
	ble _08056A04
	adds r0, r1, #0
	subs r0, #0x50
	mov r4, sp
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x74
	muls r0, r1, r0
	movs r1, #0x12
	bl __divsi3
	adds r0, #0x74
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	cmp r0, #0x1f
	bls _08056A84
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r7, [r0, #4]
	mov r3, sp
	ldr r2, _08056A00 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_8052C84
	b _08056A84
	.align 2, 0
_080569FC: .4byte gCurTask
_08056A00: .4byte sa2__gUnknown_030054B8
_08056A04:
	cmp r1, #0x14
	ble _08056A4C
	subs r1, #0x14
	mov r2, sp
	lsls r1, r1, #0x10
	asrs r1, r1, #0xe
	ldr r3, _08056A44 @ =0x000001F1
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2]
	mov r1, sp
	strh r0, [r1, #2]
	mov r0, sp
	strh r7, [r0, #4]
	mov r3, sp
	ldr r2, _08056A48 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	mov r1, sp
	movs r0, #0x58
	strh r0, [r1, #0xa]
	movs r0, #0x44
	strh r0, [r1, #0xc]
	adds r0, r5, #0
	bl sub_8052C84
	b _08056A84
	.align 2, 0
_08056A44: .4byte 0x000001F1
_08056A48: .4byte sa2__gUnknown_030054B8
_08056A4C:
	mov r4, sp
	movs r0, #0x74
	muls r0, r1, r0
	movs r1, #0x14
	bl __divsi3
	strh r0, [r4, #0xa]
	ldrb r0, [r5]
	cmp r0, #0x1f
	bls _08056A84
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r7, [r0, #4]
	mov r3, sp
	ldr r2, _08056AB8 @ =sa2__gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r3, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_8052C84
_08056A84:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x77
	ble _08056AA2
	ldr r0, _08056ABC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056AC0 @ =Task_8056FD0
	str r0, [r1, #8]
	ldr r1, [r6, #0x20]
	ldr r0, _08056AC4 @ =0x00000566
	str r0, [r1, #0x18]
	ldr r1, [r6, #0x18]
	adds r0, #0x52
	str r0, [r1, #0x78]
_08056AA2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r6, #0x24]
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056AB8: .4byte sa2__gUnknown_030054B8
_08056ABC: .4byte gCurTask
_08056AC0: .4byte Task_8056FD0
_08056AC4: .4byte 0x00000566

@ t -> GameOverScreen *
	thumb_func_start Task_8056AC8
Task_8056AC8: @ 0x08056AC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08056C14 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	str r0, [sp]
	ldr r2, _08056C18 @ =gMPlayTable
	ldr r0, _08056C1C @ =gSongTable
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r1, _08056C20 @ =gBldRegs
	movs r4, #0
	movs r0, #0xff
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, [r2, #4]
	ldr r7, _08056C24 @ =0x0000FFFF
	adds r0, r1, #0
	ands r0, r7
	cmp r0, #0
	beq _08056B10
	cmp r1, #0
	blt _08056B10
	b _08056C8E
_08056B10:
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r2, _08056C28 @ =gFlags
	ldr r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r0, _08056C2C @ =0x04000200
	mov r8, r0
	ldrh r0, [r0]
	str r0, [sp, #4]
	ldr r6, _08056C30 @ =0x04000208
	ldrh r0, [r6]
	mov sl, r0
	ldr r5, _08056C34 @ =0x04000004
	ldrh r2, [r5]
	mov sb, r2
	mov r0, r8
	strh r4, [r0]
	ldrh r0, [r0]
	strh r4, [r6]
	ldrh r0, [r6]
	strh r4, [r5]
	ldrh r0, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	ldr r2, _08056C28 @ =gFlags
	str r1, [r2]
	ldr r1, _08056C38 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _08056C3C @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _08056C40 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _08056C44 @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	bl WriteSaveGame
	mov r0, sp
	ldrh r1, [r0, #4]
	mov r0, r8
	strh r1, [r0]
	ldrh r0, [r0]
	mov r2, sl
	strh r2, [r6]
	ldrh r0, [r6]
	mov r0, sb
	strh r0, [r5]
	ldrh r0, [r5]
	bl m4aSoundVSyncOn
	ldr r1, _08056C28 @ =gFlags
	ldr r0, [r1]
	ldr r1, _08056C48 @ =0xFFFF7FFF
	ands r0, r1
	ldr r2, _08056C28 @ =gFlags
	str r0, [r2]
	ldr r2, _08056C4C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08056C50 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, [sp]
	ldr r2, _08056C54 @ =0x03000080
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08056C6C
	movs r0, #0
	adds r1, r7, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08056C58 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08056C5C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08056C60 @ =sa2__gUnknown_03005390
	movs r1, #0
	strb r1, [r0]
	ldr r1, _08056C64 @ =gVramGraphicsCopyCursor
	ldr r0, _08056C68 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl ApplyGameStageSettings
	b _08056C8E
	.align 2, 0
_08056C14: .4byte gCurTask
_08056C18: .4byte gMPlayTable
_08056C1C: .4byte gSongTable
_08056C20: .4byte gBldRegs
_08056C24: .4byte 0x0000FFFF
_08056C28: .4byte gFlags
_08056C2C: .4byte 0x04000200
_08056C30: .4byte 0x04000208
_08056C34: .4byte 0x04000004
_08056C38: .4byte 0x040000B0
_08056C3C: .4byte 0x0000C5FF
_08056C40: .4byte 0x00007FFF
_08056C44: .4byte 0x040000D4
_08056C48: .4byte 0xFFFF7FFF
_08056C4C: .4byte gDispCnt
_08056C50: .4byte 0x00001FFF
_08056C54: .4byte 0x03000080
_08056C58: .4byte gBackgroundsCopyQueueCursor
_08056C5C: .4byte gBackgroundsCopyQueueIndex
_08056C60: .4byte sa2__gUnknown_03005390
_08056C64: .4byte gVramGraphicsCopyCursor
_08056C68: .4byte gVramGraphicsCopyQueueIndex
_08056C6C:
	movs r0, #0
	adds r1, r7, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08056CA0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08056CA4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08056CA8 @ =sa2__gUnknown_03005390
	movs r2, #0
	strb r2, [r0]
	ldr r1, _08056CAC @ =gVramGraphicsCopyCursor
	ldr r0, _08056CB0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl CreateSegaLogo
_08056C8E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056CA0: .4byte gBackgroundsCopyQueueCursor
_08056CA4: .4byte gBackgroundsCopyQueueIndex
_08056CA8: .4byte sa2__gUnknown_03005390
_08056CAC: .4byte gVramGraphicsCopyCursor
_08056CB0: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start TaskDestructor_GameOverScreen
TaskDestructor_GameOverScreen: @ 0x08056CB4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	ldr r1, _08056CDC @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056CDC: .4byte gBldRegs

@ t -> GameOverC
	thumb_func_start Task_8056CE0
Task_8056CE0: @ 0x08056CE0
	push {r4, r5, lr}
	ldr r0, _08056D20 @ =gCurTask
	ldr r4, [r0]
	ldrh r2, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [r2, #0x18]
	adds r0, r1, #0
	cmp r0, #0x77
	ble _08056D1A
	ldr r3, _08056D24 @ =gDispCnt
	ldrh r1, [r3]
	ldr r2, _08056D28 @ =0x00001FFF
	adds r0, r2, #0
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	orrs r0, r1
	ands r0, r2
	strh r0, [r3]
	ldr r0, _08056D2C @ =Task_8056D30
	str r0, [r4, #8]
_08056D1A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056D20: .4byte gCurTask
_08056D24: .4byte gDispCnt
_08056D28: .4byte 0x00001FFF
_08056D2C: .4byte Task_8056D30

@ t -> GameOverC
	thumb_func_start Task_8056D30
Task_8056D30: @ 0x08056D30
	push {r4, r5, r6, lr}
	ldr r6, _08056D74 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	ldrh r4, [r5, #0x18]
	adds r0, r5, #0
	bl sub_805423C
	ldr r2, _08056D78 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	lsls r4, r4, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	asrs r0, r4, #0x10
	str r0, [r5, #0x18]
	adds r4, r0, #0
	cmp r4, #0x87
	ble _08056D6C
	ldr r1, [r6]
	ldr r0, _08056D7C @ =Task_8056D80
	str r0, [r1, #8]
_08056D6C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056D74: .4byte gCurTask
_08056D78: .4byte gDispCnt
_08056D7C: .4byte Task_8056D80

@ t -> GameOverC
	thumb_func_start Task_8056D80
Task_8056D80: @ 0x08056D80
	push {r4, r5, r6, lr}
	ldr r6, _08056DC4 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	ldrh r4, [r5, #0x18]
	adds r0, r5, #0
	bl sub_805423C
	ldr r2, _08056DC8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	lsls r4, r4, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	asrs r0, r4, #0x10
	str r0, [r5, #0x18]
	adds r4, r0, #0
	cmp r4, #0x97
	ble _08056DBC
	ldr r1, [r6]
	ldr r0, _08056DCC @ =Task_8056DD0
	str r0, [r1, #8]
_08056DBC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056DC4: .4byte gCurTask
_08056DC8: .4byte gDispCnt
_08056DCC: .4byte Task_8056DD0

@ t -> GameOverC
	thumb_func_start Task_8056DD0
Task_8056DD0: @ 0x08056DD0
	push {r4, r5, lr}
	ldr r5, _08056E14 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0x18
	ldrsh r1, [r0, r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [r0, #0x18]
	bl sub_80543A4
	ldr r2, _08056E18 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	lsls r4, r4, #0x10
	ldr r0, _08056E1C @ =0x05650000
	cmp r4, r0
	ble _08056E0C
	ldr r1, [r5]
	ldr r0, _08056E20 @ =Task_8056EC4
	str r0, [r1, #8]
_08056E0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056E14: .4byte gCurTask
_08056E18: .4byte gDispCnt
_08056E1C: .4byte 0x05650000
_08056E20: .4byte Task_8056EC4

@ t -> GameOverC *
	thumb_func_start Task_8056E24
Task_8056E24: @ 0x08056E24
	ldr r0, _08056E54 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [r2, #0x18]
	adds r0, r1, #0
	cmp r0, #0x77
	ble _08056E50
	ldr r2, _08056E58 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08056E5C @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08056E60 @ =Task_8056E64
	str r0, [r3, #8]
_08056E50:
	bx lr
	.align 2, 0
_08056E54: .4byte gCurTask
_08056E58: .4byte gDispCnt
_08056E5C: .4byte 0x00001FFF
_08056E60: .4byte Task_8056E64

@ t -> GameOverC *
	thumb_func_start Task_8056E64
Task_8056E64: @ 0x08056E64
	push {r4, r5, r6, r7, lr}
	ldr r7, _08056EB8 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r6, r0
	movs r0, #0x18
	ldrsh r4, [r6, r0]
	adds r0, r4, #0
	subs r0, #0x78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	movs r1, #0x60
	bl __divsi3
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r6, #0
	bl sub_805423C
	ldr r2, _08056EBC @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r4, #1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [r6, #0x18]
	cmp r5, #0x5f
	bls _08056EB0
	ldr r1, [r7]
	ldr r0, _08056EC0 @ =Task_DestroyGameOverC
	str r0, [r1, #8]
_08056EB0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056EB8: .4byte gCurTask
_08056EBC: .4byte gDispCnt
_08056EC0: .4byte Task_DestroyGameOverC

	thumb_func_start Task_8056EC4
Task_8056EC4: @ 0x08056EC4
	push {r4, r5, lr}
	ldr r5, _08056F0C @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0x18
	ldrsh r1, [r0, r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [r0, #0x18]
	bl sub_805423C
	ldr r2, _08056F10 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0xe
	ldr r0, _08056F14 @ =0x000005C5
	cmp r4, r0
	ble _08056F04
	ldr r1, [r5]
	ldr r0, _08056F18 @ =Task_DestroyGameOverC
	str r0, [r1, #8]
_08056F04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056F0C: .4byte gCurTask
_08056F10: .4byte gDispCnt
_08056F14: .4byte 0x000005C5
_08056F18: .4byte Task_DestroyGameOverC

@ t -> GameOverC *
	thumb_func_start Task_DestroyGameOverC
Task_DestroyGameOverC: @ 0x08056F1C
	push {lr}
	ldr r0, _08056F2C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08056F2C: .4byte gCurTask

	thumb_func_start TaskDestructor_8056F30
TaskDestructor_8056F30: @ 0x08056F30
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl VramFree
	ldr r0, [r4, #0x14]
	bl VramFree
	ldr r0, [r4, #0x10]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

@ t -> GameOverB
	thumb_func_start Task_8056F54
Task_8056F54: @ 0x08056F54
	ldr r0, _08056F78 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [r2, #0x18]
	adds r0, r1, #0
	cmp r0, #0xa1
	ble _08056F76
	ldr r0, _08056F7C @ =Task_8056714
	str r0, [r3, #8]
_08056F76:
	bx lr
	.align 2, 0
_08056F78: .4byte gCurTask
_08056F7C: .4byte Task_8056714

@ t -> GameOverB
	thumb_func_start Task_8056F80
Task_8056F80: @ 0x08056F80
	push {lr}
	ldr r0, _08056F98 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, _08056F9C @ =gUnknown_086883F8
	bl sub_80530CC
	pop {r0}
	bx r0
	.align 2, 0
_08056F98: .4byte gCurTask
_08056F9C: .4byte gUnknown_086883F8

	thumb_func_start Task_8056FA0
Task_8056FA0: @ 0x08056FA0
	ldr r0, _08056FC8 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r1, #0x24
	ldrsh r0, [r2, r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [r2, #0x24]
	adds r0, r1, #0
	cmp r0, #0xb5
	ble _08056FC6
	movs r0, #0
	str r0, [r2, #0x24]
	ldr r0, _08056FCC @ =sub_805676C
	str r0, [r3, #8]
_08056FC6:
	bx lr
	.align 2, 0
_08056FC8: .4byte gCurTask
_08056FCC: .4byte sub_805676C

	thumb_func_start Task_8056FD0
Task_8056FD0: @ 0x08056FD0
	push {lr}
	ldr r0, _08056FE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08056FE0: .4byte gCurTask

@ --- End of src/game/game_over.c ---
