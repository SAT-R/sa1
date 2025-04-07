.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0     @ r4 = p
	mov sl, r1          @ sl = inPsi
	movs r0, #0xc
	add r0, sl
	mov r8, r0          @ r8 = s
	mov sb, sl          @ sb = psi
	ldr r0, _080463BC @ =gCamera
	ldrh r2, [r0]       @ r2 = camX = cam->x
	ldrh r1, [r0, #2]   @ r1 = camY = cam->y
	movs r3, #0
	mov r0, sb
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0804632E
	mov r5, r8
	ldrh r0, [r5, #0x1e]
	cmp r0, #0xff
	bne _08046330
_0804632E:
	movs r3, #1
_08046330:
	str r3, [sp]        @ sp00 = r3 = cond
	lsls r2, r2, #0x10
	str r2, [sp, #8]
	lsls r1, r1, #0x10
	str r1, [sp, #0xc]
	adds r5, r4, #0
	adds r5, #0x40
_0804633E:
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r1, [sp, #8]
	asrs r0, r1, #0x10
	subs r2, r2, r0
	mov r3, r8
	strh r2, [r3, #0x16]    @ s->x = I(p->qWorldX) - camX;
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r3, [sp, #0xc]
	asrs r1, r3, #0x10
	subs r0, r0, r1
	mov r1, r8
	strh r0, [r1, #0x18]    @ s->y = I(p->qWorldY) - camY;
	mov r3, sb
	strh r2, [r3, #6]
	strh r0, [r3, #8]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #4
	beq _08046376
	cmp r0, #0x17
	beq _08046376
	cmp r0, #0x20
	beq _08046386
	cmp r0, #0x28
	beq _08046376
	b _08046474
_08046376:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0x20
	beq _08046386
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	mov r5, sb
	strh r0, [r5]
_08046386:
	mov r0, r8
	ldr r1, [r0, #0x10]
	ldr r0, _080463C0 @ =0xFFFFF3FF
	ands r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	movs r2, #0x20
	orrs r0, r2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	orrs r1, r0
	mov r2, r8
	str r1, [r2, #0x10]
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080463C4
	movs r0, #0xff
	lsls r0, r0, #8
	mov r3, sb
	strh r0, [r3, #2]
	b _080463CC
	.align 2, 0
_080463BC: .4byte gCamera
_080463C0: .4byte 0xFFFFF3FF
_080463C4:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r5, sb
	strh r0, [r5, #2]
_080463CC:
	ldr r2, _08046418 @ =gStageFlags
	ldrh r1, [r2]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080463E2
	mov r1, sb
	ldrh r0, [r1, #2]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
_080463E2:
	mov r5, sb
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _080463F2
	ldrh r0, [r5, #6]
	subs r0, #1
	strh r0, [r5, #6]
_080463F2:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08046424
	movs r0, #0x80
	lsls r0, r0, #1
	mov r2, sb
	strh r0, [r2, #4]
	ldrh r1, [r2]
	adds r1, r1, r0
	ldr r3, _0804641C @ =0xFFFFFF00
	adds r0, r3, #0
	subs r0, r0, r1
	ldr r1, _08046420 @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
	b _0804642C
	.align 2, 0
_08046418: .4byte gStageFlags
_0804641C: .4byte 0xFFFFFF00
_08046420: .4byte 0x000003FF
_08046424:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r5, sb
	strh r0, [r5, #4]
_0804642C:
	mov r0, sb
	movs r2, #2
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	adds r0, #0x54
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r1, r0, r1
	asrs r1, r1, #8
	mov r5, sb
	movs r0, #4
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	adds r0, #0x56
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r1, [r5, #2]
	strh r0, [r5, #4]
	mov r0, r8
    bl UpdateSpriteAnimation
	ldr r0, _08046470 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08046464
	b _0804688E
_08046464:
	mov r0, r8
	mov r1, sb
	bl TransformSprite
	b _0804684E
	.align 2, 0
_08046470: .4byte gGameMode
_08046474:
	movs r0, #0
	mov r1, sb
	strh r0, [r1]
	mov r3, r8
	ldr r2, [r3, #0x10]
	subs r0, #0x40
	ands r2, r0
	str r2, [r3, #0x10]
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08046498
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	str r2, [r3, #0x10]
	b _080464A8
_08046498:
	ldr r0, _080464C4 @ =0xFFFFFBFF
	ands r2, r0
	mov r0, r8
	str r2, [r0, #0x10]
	ldrh r0, [r0, #0x16]
	adds r0, #1
	mov r1, r8
	strh r0, [r1, #0x16]
_080464A8:
	ldr r0, _080464C8 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080464CC
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r2, #0x10]
	b _080464D6
	.align 2, 0
_080464C4: .4byte 0xFFFFFBFF
_080464C8: .4byte gStageFlags
_080464CC:
	mov r3, r8
	ldr r0, [r3, #0x10]
	ldr r1, _080464F8 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r3, #0x10]
_080464D6:
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r1, r0, #0     @ r1 = acmdRes
	cmp r1, #0
	beq _080464E4
	b _0804684E
_080464E4:
	ldrb r0, [r5]
	str r0, [sp, #4]    @ sp04 = oldCharState
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #7
	bne _080464FC
	movs r0, #6
_080464F2_set_charState:
	strb r0, [r5]
	b _08046836_post_ifelse
	.align 2, 0
_080464F8: .4byte 0xFFFFF7FF
_080464FC:
	cmp r0, #3
	bne _0804650C
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0804650A
	b _0804681C_set_charState_to_WALK
_0804650A:
	b _08046510
_0804650C:
	cmp r0, #0xb
	bne _08046514
_08046510:
	strb r1, [r5]
	b _08046836_post_ifelse
_08046514:
	cmp r0, #0x16
	bne _0804651A
	b _0804681C_set_charState_to_WALK
_0804651A:
	cmp r0, #0x11
	beq _08046522
	cmp r0, #0x12
	bne _08046526
_08046522:
	movs r0, #0x13
	b _080464F2_set_charState
_08046526:
	cmp r0, #0x1b
	bne _0804652C
	b _0804681C_set_charState_to_WALK
_0804652C:
	cmp r0, #0x4a
	bne _08046594
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08046548
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r1, #3
	lsls r1, r1, #8
	ldr r0, [r4]
	subs r0, r0, r1
	b _08046554
_08046548:
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r1, #3
	lsls r1, r1, #8
	ldr r0, [r4]
	adds r0, r0, r1
_08046554:
	str r0, [r4]
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r2, #0xe
	strb r2, [r4, #0xf]
	ldr r0, _08046574 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08046578
	lsls r1, r2, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	b _0804657E
	.align 2, 0
_08046574: .4byte gStageFlags
_08046578:
	ldr r0, [r4, #4]
	ldr r3, _08046590 @ =0xFFFFF200
	adds r0, r0, r3
_0804657E:
	str r0, [r4, #4]
	movs r0, #0x4b
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08046836_post_ifelse
	.align 2, 0
_08046590: .4byte 0xFFFFF200
_08046594:
	cmp r0, #0x4b
	bne _0804659C
	strb r1, [r4, #0x14]
	b _0804673E
_0804659C:
	cmp r0, #0x2d
	beq _080465A4
	cmp r0, #0x30
	bne _08046608
_080465A4:
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xe0
	ands r0, r1
	ldr r1, _080465FC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10] @ p->moveState &= ~MOVESTATE_SPINDASH;
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r1, _08046600 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r6, r4, #0
	adds r6, #0x59
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #1
	bne _080465E0
	movs r0, #0x78
	bl m4aSongNumStop
_080465E0:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #3
	bne _080465F0
	ldr r0, [r4, #0x10]
	ldr r1, _08046604 @ =0xF9FFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_080465F0:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080465FA
	b _0804681C_set_charState_to_WALK
_080465FA:
	b _080464F2_set_charState
	.align 2, 0
_080465FC: .4byte 0xFFFFFBFF
_08046600: .4byte 0xFFFF7FFF
_08046604: .4byte 0xF9FFFFFF
_08046608:
	ldrb r0, [r5]
	movs r1, #0
	ldrsb r1, [r5, r1]
	cmp r1, #0x2e
	bne _08046704
	adds r2, r4, #0
	adds r2, #0x3f
	movs r7, #0
	ldrsb r7, [r2, r7]
	adds r3, r2, #0
	cmp r7, #1
	bne _0804664E
	ldr r0, [r4, #0x10]
	ands r0, r7
	cmp r0, #0
	beq _0804662E
	movs r0, #0xfc
	lsls r0, r0, #8
	b _08046632
_0804662E:
	movs r0, #0x80
	lsls r0, r0, #3
_08046632:
	strh r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x3e
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0
	strb r0, [r2]
	strb r1, [r3]
	movs r0, #0x2f
	strb r0, [r5]
	movs r0, #0x6f
	bl m4aSongNumStart
	b _08046836_post_ifelse
_0804664E:
	cmp r7, #2
	bne _080466F0
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xe0
	ands r0, r1
	ldr r1, _080466DC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	strb r0, [r2]
	ldr r0, [r4, #0x10]
	ldr r1, _080466E0 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r6, r4, #0
	adds r6, #0x59
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #1
	bne _0804668C
	movs r0, #0x78
	bl m4aSongNumStop
_0804668C:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #3
	bne _0804669C
	ldr r0, [r4, #0x10]
	ldr r1, _080466E4 @ =0xF9FFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_0804669C:
	ldrh r0, [r4, #8]
	rsbs r0, r0, #0
	strh r0, [r4, #8]
	ldr r0, _080466E8 @ =0x0000FB20
	strh r0, [r4, #0xa]
	ldr r0, [r4, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080466B4
	ldr r0, _080466EC @ =0x0000FD60
	strh r0, [r4, #0xa]
_080466B4:
	ldr r0, [r4, #0x10]
	orrs r0, r7
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #9
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #9
	strb r0, [r4, #0xf]
	movs r0, #0x31
	strb r0, [r5]
	movs r0, #0x74
	bl m4aSongNumStart
	b _08046836_post_ifelse
	.align 2, 0
_080466DC: .4byte 0xFFFFFBFF
_080466E0: .4byte 0xFFFF7FFF
_080466E4: .4byte 0xF9FFFFFF
_080466E8: .4byte 0x0000FB20
_080466EC: .4byte 0x0000FD60
_080466F0:
	adds r1, r4, #0
	adds r1, #0x3e
	movs r0, #0
	strb r0, [r1]
	strb r0, [r2]
	strb r0, [r5]
	adds r1, #0x1a
	strb r0, [r1]
	strh r0, [r4, #0xc]
	b _08046836_post_ifelse
_08046704:
	cmp r1, #0x36
	bne _0804670C
	movs r0, #0x35
	b _080464F2_set_charState
_0804670C:
	cmp r1, #0x3a
	bne _08046714
	movs r0, #0x39
	b _080464F2_set_charState
_08046714:
	cmp r1, #0x3c
	bne _0804673A
	adds r1, r4, #0
	adds r1, #0x3e
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0804672E
	movs r0, #4
_0804672E:
	strb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x58
	movs r0, #0
	strb r0, [r1]
	b _08046836_post_ifelse
_0804673A:
	cmp r1, #0x40
	bne _08046746
_0804673E:
	adds r0, r4, #0
	bl sa2__sub_8021BE0
	b _08046836_post_ifelse
_08046746:
	cmp r1, #0x46
	bne _0804674E
	movs r0, #0x47
	b _080464F2_set_charState
_0804674E:
	subs r0, #0x4c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080467B8
	adds r3, r4, #0
	adds r3, #0x3f
	movs r1, #0
	ldrsb r1, [r3, r1]
	cmp r1, #0
	beq _080467A6
	adds r2, r4, #0
	adds r2, #0x3e
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0
	strb r0, [r2]
	strb r1, [r3]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0x4d
	bne _08046782
	movs r0, #0x7f
	bl m4aSongNumStart
	b _08046788
_08046782:
	movs r0, #0x7e
	bl m4aSongNumStart
_08046788:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	movs r2, #0xc0
	lsls r2, r2, #2
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804679E
	rsbs r2, r2, #0
_0804679E:
	ldrh r0, [r4, #0xc]
	adds r0, r0, r2
	strh r0, [r4, #0xc]
	b _08046836_post_ifelse
_080467A6:
	adds r0, r4, #0
	adds r0, #0x3e
	strb r1, [r0]
	strb r1, [r3]
	strb r1, [r5]
	adds r0, #0x1a
	strb r1, [r0]
	strh r1, [r4, #0xc]
	b _08046836_post_ifelse
_080467B8:
	cmp r1, #0x57
	bne _08046806
	adds r2, r4, #0
	adds r2, #0x3f
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #0
	bne _080467D8
	adds r0, r4, #0
	adds r0, #0x3e
	strb r1, [r0]
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _0804681C_set_charState_to_WALK
	b _080464F2_set_charState
_080467D8:
	movs r0, #0
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x3e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x58
	strb r0, [r5]
	movs r2, #0xc0
	lsls r2, r2, #2
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080467FA
	rsbs r2, r2, #0
_080467FA:
	ldrh r0, [r4, #0xc]
	adds r0, r0, r2
	strh r0, [r4, #0xc]
	bl CreateAmyAttackHeartEffect
	b _08046836_post_ifelse
_08046806:
	cmp r1, #0x58
	bne _08046820
	adds r1, r4, #0
	adds r1, #0x3e
	movs r0, #0
	strb r0, [r1]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0804681C_set_charState_to_WALK
	b _080464F2_set_charState
_0804681C_set_charState_to_WALK:
	movs r0, #4
	b _080464F2_set_charState
_08046820:
	cmp r1, #0x5d
	bne _08046836_post_ifelse
	adds r0, r4, #0
	adds r0, #0x3e
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	strb r1, [r5]
	adds r0, #0x19
	strb r1, [r0]
_08046836_post_ifelse:
	movs r1, #0
	ldrsb r1, [r5, r1]
	ldr r2, [sp, #4]    @ r2 = sp04 = oldCharState
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _0804684E
	adds r0, r4, #0
	mov r1, sl          @ r1 = sl = inPsi
	bl sa2__sub_802486C
	b _0804633E
_0804684E:
	ldr r0, _080468E4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0804688E
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804687E
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r1, r0
	cmp r1, #0
	bne _08046884
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _0804687E
	ldr r0, _080468E8 @ =gStageTime
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08046884
_0804687E:
	mov r0, r8
	bl DisplaySprite
_08046884:
	ldr r0, _080468E4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0804688E
	b _08046AD6
_0804688E:
	ldr r5, _080468EC @ =gMultiSioSend
	ldr r2, _080468F0 @ =gMultiplayerPlayerTasks
	ldr r0, _080468F4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5]
	ldr r0, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r5, #2]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	strh r0, [r5, #4]
	mov r0, r8
	ldrh r3, [r0, #0xa]
	strh r3, [r5, #6]
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r5, #0xa]
	ldr r0, _080468E4 @ =gGameMode
	ldrb r0, [r0]
	mov ip, r2
	cmp r0, #6
	bne _080468FC
	ldr r0, _080468F8 @ =gRingCount
	ldrh r0, [r0]
	lsls r0, r0, #8
	b _08046910
	.align 2, 0
_080468E4: .4byte gGameMode
_080468E8: .4byte gStageTime
_080468EC: .4byte gMultiSioSend
_080468F0: .4byte gMultiplayerPlayerTasks
_080468F4: .4byte 0x04000128
_080468F8: .4byte gRingCount
_080468FC:
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08046914
	ldr r0, [r7, #0x5c]
	movs r1, #0xe0
	lsls r1, r1, #0xb
	ands r0, r1
	lsrs r0, r0, #4
_08046910:
	orrs r0, r3
	strh r0, [r5, #6]
_08046914:
	mov r1, r8
	adds r1, #0x20
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #3
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r5, #0xb]
	mov r0, r8
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r5, #0xc]
	mov r1, sb
	ldrh r0, [r1]
	lsrs r0, r0, #2
	strb r0, [r5, #0xd]
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08046946
	ldrh r1, [r5, #8]
	movs r0, #1
	orrs r0, r1
	b _0804694C
_08046946:
	ldrh r1, [r5, #8]
	ldr r0, _08046964 @ =0x0000FFFE
	ands r0, r1
_0804694C:
	strh r0, [r5, #8]
	ldr r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	bne _08046968
	ldrh r1, [r5, #8]
	movs r0, #2
	orrs r0, r1
	b _0804696E
	.align 2, 0
_08046964: .4byte 0x0000FFFE
_08046968:
	ldrh r1, [r5, #8]
	ldr r0, _08046984 @ =0x0000FFFD
	ands r0, r1
_0804696E:
	strh r0, [r5, #8]
	ldr r0, _08046988 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804698C
	ldrh r1, [r5, #8]
	movs r0, #8
	orrs r0, r1
	b _08046992
	.align 2, 0
_08046984: .4byte 0x0000FFFD
_08046988: .4byte gStageFlags
_0804698C:
	ldrh r1, [r5, #8]
	ldr r0, _080469B8 @ =0x0000FFF7
	ands r0, r1
_08046992:
	strh r0, [r5, #8]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _080469AE
	ldr r0, [r7, #0x5c]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080469AE
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _080469BC
_080469AE:
	ldrh r1, [r5, #8]
	movs r0, #4
	orrs r0, r1
	b _080469C2
	.align 2, 0
_080469B8: .4byte 0x0000FFF7
_080469BC:
	ldrh r1, [r5, #8]
	ldr r0, _080469DC @ =0x0000FFFB
	ands r0, r1
_080469C2:
	strh r0, [r5, #8]
	ldr r0, [r7, #0x5c]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080469E0
	ldrh r1, [r5, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r1
	b _080469E6
	.align 2, 0
_080469DC: .4byte 0x0000FFFB
_080469E0:
	ldrh r1, [r5, #8]
	ldr r0, _080469FC @ =0x0000FEFF
	ands r0, r1
_080469E6:
	strh r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _08046A00
	ldrh r1, [r5, #8]
	movs r0, #0x40
	orrs r0, r1
	b _08046A06
	.align 2, 0
_080469FC: .4byte 0x0000FEFF
_08046A00:
	ldrh r1, [r5, #8]
	ldr r0, _08046A34 @ =0x0000FFBF
	ands r0, r1
_08046A06:
	strh r0, [r5, #8]
	ldrh r0, [r5, #8]
	ldr r2, _08046A38 @ =0x0000FFCF
	ands r2, r0
	strh r2, [r5, #8]
	ldr r3, _08046A3C @ =gPlayer
	ldr r0, [r3, #0x64]
	ldr r0, [r0, #0x1c]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	lsrs r1, r0, #8
	orrs r1, r2
	strh r1, [r5, #8]
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _08046A40
	movs r0, #0x80
	orrs r1, r0
	b _08046A44
	.align 2, 0
_08046A34: .4byte 0x0000FFBF
_08046A38: .4byte 0x0000FFCF
_08046A3C: .4byte gPlayer
_08046A40:
	ldr r0, _08046A58 @ =0x0000FF7F
	ands r1, r0
_08046A44:
	strh r1, [r5, #8]
	ldr r0, [sp]
	cmp r0, #0
	beq _08046A5C
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	b _08046A62
	.align 2, 0
_08046A58: .4byte 0x0000FF7F
_08046A5C:
	ldrh r1, [r5, #8]
	ldr r0, _08046AE8 @ =0x0000F7FF
	ands r0, r1
_08046A62:
	strh r0, [r5, #8]
	ldr r6, _08046AEC @ =0x04000128
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r2, r7, #0
	adds r2, #0x64
	strb r0, [r2]
	ldr r0, [r3, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08046AC6
	movs r4, #0
	ldr r0, [r6]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #0
	beq _08046AA6
	mov r1, ip
	ldr r0, [r1]
	cmp r0, #0
	beq _08046AC6
_08046A90:
	lsls r0, r4, #2
	add r0, ip
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, [r3, #0x28]
	cmp r0, r1
	bne _08046AA6
	strb r4, [r2]
_08046AA6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bhi _08046AC6
	ldr r0, _08046AEC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r4
	beq _08046AA6
	lsls r0, r4, #2
	add r0, ip
	ldr r0, [r0]
	cmp r0, #0
	bne _08046A90
_08046AC6:
	ldrh r0, [r5, #8]
	ldr r1, _08046AF0 @ =0x0000F9FF
	ands r1, r0
	strh r1, [r5, #8]
	ldrb r0, [r2]
	lsls r0, r0, #9
	orrs r0, r1
	strh r0, [r5, #8]
_08046AD6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046AE8: .4byte 0x0000F7FF
_08046AEC: .4byte 0x04000128
_08046AF0: .4byte 0x0000F9FF

.syntax divided
