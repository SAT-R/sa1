.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start CreateAirContainingBubble
CreateAirContainingBubble: @ 0x08091034
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _080910F0 @ =AirContainingBubble
	movs r2, #0x80
	lsls r2, r2, #6
	mov sl, r2
	ldr r1, _080910F4 @ =TaskDestructor_AirBubbleBig
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _080910F8 @ =0x0300000C
	adds r5, r4, r1
	ldr r2, _080910FC @ =0x0300003C
	adds r1, r4, r2
	movs r2, #0
	strb r6, [r1]
	movs r6, #0
	strh r2, [r0, #0x3e]
	ldr r1, _08091100 @ =0x03000040
	adds r0, r4, r1
	mov r1, r8
	strh r1, [r0]
	ldr r1, _08091104 @ =0x03000042
	adds r0, r4, r1
	mov r1, sb
	strh r1, [r0]
	mov r0, r8
	strh r0, [r5, #0x16]
	strh r1, [r5, #0x18]
	movs r0, #9
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x85
	lsls r0, r0, #2
	strh r0, [r5, #0xa]
	ldr r1, _08091108 @ =0x0300002C
	adds r0, r4, r1
	strb r6, [r0]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	ldr r2, [sp, #4]
	strh r2, [r5, #8]
	strh r2, [r5, #0x14]
	strh r2, [r5, #0x1c]
	ldr r2, _0809110C @ =0x0300002D
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08091110 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08091114 @ =0x03000031
	adds r4, r4, r1
	strb r6, [r4]
	subs r0, #0x11
	str r0, [r5, #0x28]
	mov r2, sl
	str r2, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080910F0: .4byte AirContainingBubble
_080910F4: .4byte TaskDestructor_AirBubbleBig
_080910F8: .4byte 0x0300000C
_080910FC: .4byte 0x0300003C
_08091100: .4byte 0x03000040
_08091104: .4byte 0x03000042
_08091108: .4byte 0x0300002C
_0809110C: .4byte 0x0300002D
_08091110: .4byte 0x0300002E
_08091114: .4byte 0x03000031
.endif

	thumb_func_start AirContainingBubble
AirContainingBubble: @ 0x08091118
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r5, _080911B8 @ =gCurTask
	ldr r0, [r5]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov r8, r0
	ldr r0, _080911BC @ =0x0300000C
	adds r7, r6, r0
	ldr r1, _080911C0 @ =0x03000040
	adds r0, r6, r1
	ldr r4, _080911C4 @ =gCamera
	ldrh r2, [r0]
	ldrh r0, [r4]
	subs r2, r2, r0
	ldr r3, _080911C8 @ =gSineTable
	mov r0, r8
	ldrh r1, [r0, #0x3e]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r1, _080911CC @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1b
	adds r2, r2, r0
	strh r2, [r7, #0x16]
	ldr r1, _080911D0 @ =0x03000042
	adds r3, r6, r1
	ldrh r1, [r3]
	ldrh r0, [r4, #2]
	subs r1, r1, r0
	mov r4, r8
	ldrh r0, [r4, #0x3e]
	lsrs r0, r0, #1
	subs r1, r1, r0
	strh r1, [r7, #0x18]
	adds r2, #0x80
	lsls r2, r2, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r2, r0
	bhi _080911AE
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _080911AE
	lsls r1, r1, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	bgt _080911AE
	ldr r2, _080911D4 @ =gWater
	movs r4, #2
	ldrsh r0, [r2, r4]
	cmp r0, #0
	blt _080911AE
	movs r1, #0
	ldrsh r0, [r3, r1]
	mov r4, r8
	ldrh r3, [r4, #0x3e]
	lsrs r1, r3, #1
	subs r0, r0, r1
	movs r4, #2
	ldrsh r1, [r2, r4]
	cmp r0, r1
	bge _080911D8
_080911AE:
	ldr r0, [r5]
	bl TaskDestroy
	b _08091400
	.align 2, 0
_080911B8: .4byte gCurTask
_080911BC: .4byte 0x0300000C
_080911C0: .4byte 0x03000040
_080911C4: .4byte gCamera
_080911C8: .4byte gSineTable
_080911CC: .4byte 0x000003FF
_080911D0: .4byte 0x03000042
_080911D4: .4byte gWater
_080911D8:
	ldr r0, _080911F8 @ =0x0300003C
	adds r2, r6, r0
	ldrb r1, [r2]
	lsls r1, r1, #3
	adds r0, r3, #1
	mov r3, r8
	strh r0, [r3, #0x3e]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	ble _080911FC
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	b _0809120A
	.align 2, 0
_080911F8: .4byte 0x0300003C
_080911FC:
	ldrb r0, [r2]
	cmp r0, #4
	beq _08091204
	b _080913FA
_08091204:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
_0809120A:
	mov r0, r8
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #4
	beq _08091216
	b _080913FA
_08091216:
	mov r4, r8
	ldrh r0, [r4, #0x3e]
	cmp r0, #0x4f
	bhi _08091220
	b _080913FA
_08091220:
	movs r4, #0
	ldr r5, _08091274 @ =gPartner
	ldr r6, _08091278 @ =gPlayer
	movs r0, #0x5a
	adds r0, r0, r6
	mov sl, r0
	movs r1, #0x3c
	adds r1, r1, r6
	mov sb, r1
_08091232:
	ldr r0, _0809127C @ =gCamera
	ldrh r1, [r0]
	ldrh r2, [r7, #0x16]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r0, #2]
	ldrh r3, [r7, #0x18]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08091278 @ =gPlayer
	cmp r4, #0
	beq _08091250
	ldr r3, _08091274 @ =gPartner
_08091250:
	adds r0, r7, #0
	bl Coll_Player_Entity_Intersection
	cmp r0, #0
	bne _0809125C
	b _080913EA
_0809125C:
	ldr r0, _08091278 @ =gPlayer
	cmp r4, #0
	beq _08091264
	ldr r0, _08091274 @ =gPartner
_08091264:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r4, #0
	beq _08091284
	movs r0, #0x1b
	ldr r1, _08091280 @ =gPartner + 0x40
	strb r0, [r1]
	b _0809128A
	.align 2, 0
_08091274: .4byte gPartner
_08091278: .4byte gPlayer
_0809127C: .4byte gCamera
_08091280: .4byte gPartner + 0x40
_08091284:
	movs r0, #0x1b
	ldr r2, _0809129C @ =gPlayer + 0x40
	strb r0, [r2]
_0809128A:
	cmp r4, #0
	beq _080912A0
	ldr r0, [r5, #0x10]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080912AA
	b _0809133A
	.align 2, 0
_0809129C: .4byte gPlayer + 0x40
_080912A0:
	ldr r0, [r6, #0x10]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0809133A
_080912AA:
	cmp r4, #0
	beq _080912BA
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _080912C4
_080912BA:
	ldr r0, [r6, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_080912C4:
	ldr r2, _080912D8 @ =gPlayer
	cmp r4, #0
	beq _080912DC
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _080912E6
	.align 2, 0
_080912D8: .4byte gPlayer
_080912DC:
	ldr r0, [r6, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_080912E6:
	cmp r4, #0
	beq _080912F6
	ldr r0, [r5, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08091300
	b _08091314
_080912F6:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08091314
_08091300:
	adds r1, r2, #0
	cmp r4, #0
	beq _08091308
	ldr r1, _08091310 @ =gPartner
_08091308:
	movs r0, #6
	strb r0, [r1, #0xe]
	adds r1, r2, #0
	b _08091330
	.align 2, 0
_08091310: .4byte gPartner
_08091314:
	ldr r0, _08091344 @ =gPlayer
	cmp r4, #0
	beq _0809131C
	ldr r0, _08091348 @ =gPartner
_0809131C:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _08091344 @ =gPlayer
	cmp r4, #0
	beq _0809132A
	ldr r1, _08091348 @ =gPartner
_0809132A:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08091344 @ =gPlayer
_08091330:
	cmp r4, #0
	beq _08091336
	ldr r1, _08091348 @ =gPartner
_08091336:
	movs r0, #0xe
	strb r0, [r1, #0xf]
_0809133A:
	cmp r4, #0
	beq _0809134C
	movs r0, #0
	strh r0, [r5, #8]
	b _0809134E
	.align 2, 0
_08091344: .4byte gPlayer
_08091348: .4byte gPartner
_0809134C:
	strh r4, [r6, #8]
_0809134E:
	cmp r4, #0
	beq _08091358
	movs r0, #0
	strh r0, [r5, #0xa]
	b _0809135A
_08091358:
	strh r4, [r6, #0xa]
_0809135A:
	cmp r4, #0
	beq _08091364
	movs r0, #0
	strh r0, [r5, #0xc]
	b _08091366
_08091364:
	strh r4, [r6, #0xc]
_08091366:
	cmp r4, #0
	beq _08091376
	ldr r0, [r5, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _08091380
_08091376:
	ldr r0, [r6, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_08091380:
	cmp r4, #0
	beq _08091390
	movs r0, #0x3c
	ldr r3, _0809138C @ =gPartner + 0x5B
	strb r0, [r3]
	b _08091396
	.align 2, 0
_0809138C: .4byte gPartner + 0x5B
_08091390:
	movs r0, #0x3c
	ldr r1, _080913A4 @ =gPlayer + 0x5B
	strb r0, [r1]
_08091396:
	cmp r4, #0
	beq _080913AC
	movs r0, #0x1e
	ldr r2, _080913A8 @ =gPartner + 0x5A
	strb r0, [r2]
	b _080913B2
	.align 2, 0
_080913A4: .4byte gPlayer + 0x5B
_080913A8: .4byte gPartner + 0x5A
_080913AC:
	movs r0, #0x1e
	mov r3, sl
	strb r0, [r3]
_080913B2:
	cmp r4, #0
	beq _080913C4
	ldr r1, _080913C0 @ =gPartner + 0x3C
	movs r0, #0
	ldrsb r0, [r1, r0]
	b _080913CA
	.align 2, 0
_080913C0: .4byte gPartner + 0x3C
_080913C4:
	mov r2, sb
	movs r0, #0
	ldrsb r0, [r2, r0]
_080913CA:
	cmp r0, #0
	bne _080913D4
	movs r0, #0x1b
	bl m4aSongNumStop
_080913D4:
	movs r0, #0xbf
	bl m4aSongNumStart
	ldr r0, _08091410 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08091414 @ =sub_809141C
	str r0, [r1, #8]
	mov r1, r8
	adds r1, #0x3d
	movs r0, #0x10
	strb r0, [r1]
_080913EA:
	adds r4, #1
	ldr r0, _08091418 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _080913FA
	b _08091232
_080913FA:
	adds r0, r7, #0
	bl DisplaySprite
_08091400:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08091410: .4byte gCurTask
_08091414: .4byte sub_809141C
_08091418: .4byte gNumSingleplayerCharacters

	thumb_func_start sub_809141C
sub_809141C: @ 0x0809141C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080914C0 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r1, _080914C4 @ =0x0300000C
	adds r7, r6, r1
	ldr r2, _080914C8 @ =0x03000040
	adds r0, r6, r2
	ldr r4, _080914CC @ =gCamera
	ldrh r2, [r0]
	ldrh r0, [r4]
	subs r2, r2, r0
	ldr r3, _080914D0 @ =gSineTable
	ldrh r1, [r5, #0x3e]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r1, _080914D4 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1b
	adds r2, r2, r0
	strh r2, [r7, #0x16]
	ldr r0, _080914D8 @ =0x03000042
	adds r3, r6, r0
	ldrh r1, [r3]
	ldrh r0, [r4, #2]
	subs r1, r1, r0
	ldrh r0, [r5, #0x3e]
	lsrs r0, r0, #1
	subs r1, r1, r0
	strh r1, [r7, #0x18]
	adds r2, #0x80
	lsls r2, r2, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	mov r4, ip
	cmp r2, r0
	bhi _080914B6
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _080914B6
	lsls r1, r1, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	bgt _080914B6
	ldr r0, _080914DC @ =0x0300003D
	adds r1, r6, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _080914B6
	ldr r2, _080914E0 @ =gWater
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _080914B6
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldrh r1, [r5, #0x3e]
	lsrs r1, r1, #1
	subs r0, r0, r1
	movs r3, #2
	ldrsh r1, [r2, r3]
	cmp r0, r1
	bge _080914E4
_080914B6:
	ldr r0, [r4]
	bl TaskDestroy
	b _080914F0
	.align 2, 0
_080914C0: .4byte gCurTask
_080914C4: .4byte 0x0300000C
_080914C8: .4byte 0x03000040
_080914CC: .4byte gCamera
_080914D0: .4byte gSineTable
_080914D4: .4byte 0x000003FF
_080914D8: .4byte 0x03000042
_080914DC: .4byte 0x0300003D
_080914E0: .4byte gWater
_080914E4:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_080914F0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80914F8
sub_80914F8: @ 0x080914F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08091574 @ =sub_80915F0
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08091578 @ =TaskDestructor_AirBubbleBig
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r7, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r7, r2
	ldr r0, _0809157C @ =0x0300000C
	adds r0, r0, r7
	mov ip, r0
	movs r0, #0xf
	ands r0, r6
	ldr r3, _08091580 @ =0x0300003C
	adds r1, r7, r3
	movs r3, #0
	strb r0, [r1]
	movs r0, #0
	mov r8, r0
	strh r3, [r2, #0x3e]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, #8
	ldr r2, _08091584 @ =0x03000040
	adds r1, r7, r2
	strh r0, [r1]
	ldr r3, _08091588 @ =0x03000042
	adds r0, r7, r3
	strh r5, [r0]
	mov r0, ip
	strh r4, [r0, #0x16]
	strh r5, [r0, #0x18]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08091594
	ldr r0, _0809158C @ =0x06012AA0
	mov r1, ip
	str r0, [r1, #4]
	ldr r0, _08091590 @ =0x000002F2
	strh r0, [r1, #0xa]
	subs r2, #0x14
	b _080915A0
	.align 2, 0
_08091574: .4byte sub_80915F0
_08091578: .4byte TaskDestructor_AirBubbleBig
_0809157C: .4byte 0x0300000C
_08091580: .4byte 0x0300003C
_08091584: .4byte 0x03000040
_08091588: .4byte 0x03000042
_0809158C: .4byte 0x06012AA0
_08091590: .4byte 0x000002F2
_08091594:
	ldr r0, _080915E4 @ =0x06012A20
	mov r1, ip
	str r0, [r1, #4]
	ldr r0, _080915E8 @ =0x000002F1
	strh r0, [r1, #0xa]
	ldr r2, _080915EC @ =0x0300002C
_080915A0:
	adds r0, r7, r2
	mov r3, r8
	strb r3, [r0]
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	mov r3, ip
	strh r0, [r3, #0x1a]
	strh r1, [r3, #8]
	strh r1, [r3, #0x14]
	strh r1, [r3, #0x1c]
	mov r1, ip
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r3, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080915E4: .4byte 0x06012A20
_080915E8: .4byte 0x000002F1
_080915EC: .4byte 0x0300002C

	thumb_func_start sub_80915F0
sub_80915F0: @ 0x080915F0
	push {r4, r5, r6, r7, lr}
	ldr r0, _0809168C @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r1, _08091690 @ =0x0300000C
	adds r7, r3, r1
	ldr r2, _08091694 @ =0x03000040
	adds r0, r3, r2
	ldr r5, _08091698 @ =gCamera
	ldrh r2, [r0]
	ldrh r0, [r5]
	subs r2, r2, r0
	ldr r4, _0809169C @ =gSineTable
	ldrh r1, [r6, #0x3e]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r1, _080916A0 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1b
	ldr r4, _080916A4 @ =0x0300003C
	adds r1, r3, r4
	adds r2, r2, r0
	ldrb r1, [r1]
	adds r2, r2, r1
	strh r2, [r7, #0x16]
	ldr r0, _080916A8 @ =0x03000042
	adds r3, r3, r0
	ldrh r1, [r3]
	ldrh r0, [r5, #2]
	subs r1, r1, r0
	ldrh r0, [r6, #0x3e]
	lsrs r0, r0, #1
	subs r1, r1, r0
	strh r1, [r7, #0x18]
	adds r2, #0x80
	lsls r2, r2, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	mov r5, ip
	cmp r2, r0
	bhi _08091682
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08091682
	lsls r1, r1, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	bgt _08091682
	ldr r4, _080916AC @ =gWater
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08091682
	movs r2, #0
	ldrsh r0, [r3, r2]
	ldrh r2, [r6, #0x3e]
	lsrs r1, r2, #1
	subs r0, r0, r1
	movs r3, #2
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bge _080916B0
_08091682:
	ldr r0, [r5]
	bl TaskDestroy
	b _080916C0
	.align 2, 0
_0809168C: .4byte gCurTask
_08091690: .4byte 0x0300000C
_08091694: .4byte 0x03000040
_08091698: .4byte gCamera
_0809169C: .4byte gSineTable
_080916A0: .4byte 0x000003FF
_080916A4: .4byte 0x0300003C
_080916A8: .4byte 0x03000042
_080916AC: .4byte gWater
_080916B0:
	adds r0, r2, #1
	strh r0, [r6, #0x3e]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_080916C0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_AirBubbles
TaskDestructor_AirBubbles: @ 0x080916C8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_AirBubbleBig
TaskDestructor_AirBubbleBig: @ 0x080916DC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r2, _080916FC @ =0x0300003C
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #4
	bne _080916F6
	ldr r0, [r1, #0x10]
	bl VramFree
_080916F6:
	pop {r0}
	bx r0
	.align 2, 0
_080916FC: .4byte 0x0300003C
