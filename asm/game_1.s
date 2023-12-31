.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8028034
sub_8028034: @ 0x08028034
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r0, _080280A8 @ =sub_802816C
	movs r7, #0x80
	lsls r7, r7, #6
	ldr r1, _080280AC @ =sub_8028C70
	str r1, [sp]
	movs r1, #0x44
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	mov sb, r0
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r3, r6, #0
	str r7, [r6, #0x10]
	ldr r1, _080280B0 @ =gUnknown_080BB568
	lsls r5, r4, #2
	ldr r2, _080280B4 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r2, r0]
	subs r0, #0xe
	lsls r0, r0, #5
	adds r0, r5, r0
	adds r0, r0, r1
	ldrh r0, [r0]
	mov ip, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0x11
	bne _080280B8
	cmp r4, #4
	bls _080280B8
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r7
	str r0, [r6, #0x10]
	movs r0, #0
	ldrsb r0, [r2, r0]
	subs r0, #0xe
	lsls r0, r0, #5
	adds r0, r5, r0
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x10
	b _080280D2
	.align 2, 0
_080280A8: .4byte sub_802816C
_080280AC: .4byte sub_8028C70
_080280B0: .4byte gUnknown_080BB568
_080280B4: .4byte gCurrentLevel
_080280B8:
	ldr r2, _08028160 @ =gUnknown_080BB568
	lsls r1, r4, #2
	ldr r0, _08028164 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0xe
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r2, #2
	adds r1, r1, r2
	ldrh r0, [r1]
	subs r0, #0x10
_080280D2:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r3, #0
	adds r0, #0x40
	movs r4, #0
	mov r1, r8
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x41
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	mov r0, ip
	lsls r1, r0, #0x10
	asrs r1, r1, #8
	str r1, [r3, #0x30]
	lsls r0, r2, #0x10
	asrs r0, r0, #8
	str r0, [r3, #0x34]
	movs r5, #0
	strh r4, [r3, #0x38]
	strh r4, [r3, #0x3e]
	asrs r1, r1, #8
	ldr r2, _08028168 @ =gCamera
	ldrh r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x16]
	ldr r0, [r3, #0x34]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r6, #0x18]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r6, #4]
	movs r1, #0x10
	mov r2, r8
	subs r0, r1, r2
	lsls r0, r0, #6
	strh r0, [r6, #0x1a]
	strh r4, [r6, #8]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	strb r5, [r0]
	strh r4, [r6, #0x14]
	strh r4, [r6, #0x1c]
	adds r2, r6, #0
	adds r2, #0x21
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x22
	strb r1, [r0]
	adds r0, #3
	strb r5, [r0]
	mov r0, sb
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08028160: .4byte gUnknown_080BB568
_08028164: .4byte gCurrentLevel
_08028168: .4byte gCamera

	thumb_func_start sub_802816C
sub_802816C: @ 0x0802816C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r5, _080281C0 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	mov sb, r6
	movs r1, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r6, #0xa]
	ldr r2, _080281C4 @ =0x03000020
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	ldr r1, _080281C8 @ =0x03000041
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080281F4
	ldr r2, _080281CC @ =0x03000042
	adds r0, r4, r2
	strb r1, [r0]
	ldr r1, _080281D0 @ =0x03000040
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080281D8
	ldr r1, [r5]
	ldr r0, _080281D4 @ =sub_8028388
	str r0, [r1, #8]
	b _08028354
	.align 2, 0
_080281C0: .4byte gCurTask
_080281C4: .4byte 0x03000020
_080281C8: .4byte 0x03000041
_080281CC: .4byte 0x03000042
_080281D0: .4byte 0x03000040
_080281D4: .4byte sub_8028388
_080281D8:
	cmp r0, #1
	bne _080281E8
	ldr r1, [r5]
	ldr r0, _080281E4 @ =sub_8028518
	str r0, [r1, #8]
	b _08028354
	.align 2, 0
_080281E4: .4byte sub_8028518
_080281E8:
	ldr r1, [r5]
	ldr r0, _080281F0 @ =sub_80286B0
	str r0, [r1, #8]
	b _08028354
	.align 2, 0
_080281F0: .4byte sub_80286B0
_080281F4:
	movs r2, #0
	mov r8, r2
	ldr r1, _080282F4 @ =gUnknown_03005130
	ldr r0, [r1]
	ldr r2, [r6, #0x30]
	str r2, [sp]
	cmp r0, #0
	bne _08028206
	b _08028354
_08028206:
	ldr r0, _080282F8 @ =0x03000040
	adds r0, r0, r4
	mov sl, r0
	adds r7, r1, #0
_0802820E:
	ldr r0, [r7]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r3
	mov ip, r1
	ldr r2, _080282FC @ =0x03000054
	adds r0, r3, r2
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802822A
	b _08028340
_0802822A:
	ldr r4, [sp]
	asrs r1, r4, #8
	adds r0, r6, #0
	adds r0, #0x2c
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r2, r1, r4
	ldr r5, _08028300 @ =0x03000050
	adds r0, r3, r5
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r5, _08028304 @ =0x0300002C
	adds r0, r3, r5
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r1, r1, r5
	cmp r2, r1
	bgt _08028264
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _08028276
	cmp r2, r1
	blt _08028340
_08028264:
	ldr r4, _08028308 @ =0x0300002E
	adds r0, r3, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _08028340
_08028276:
	mov r5, sb
	ldr r0, [r5, #0x34]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x2d
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	mov r0, ip
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, ip
	adds r1, #0x2d
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _080282B2
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _080282C4
	cmp r2, r1
	blt _08028340
_080282B2:
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _08028340
_080282C4:
	movs r1, #0x80
	lsls r1, r1, #9
	mov r2, sl
	ldrb r2, [r2]
	lsls r1, r2
	mov r4, ip
	ldr r0, [r4, #0x5c]
	orrs r0, r1
	str r0, [r4, #0x5c]
	mov r0, sb
	adds r0, #0x41
	mov r5, r8
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08028314
	ldr r2, _0802830C @ =gCurTask
	ldr r1, [r2]
	ldr r0, _08028310 @ =sub_8028388
	b _0802832E
	.align 2, 0
_080282F4: .4byte gUnknown_03005130
_080282F8: .4byte 0x03000040
_080282FC: .4byte 0x03000054
_08028300: .4byte 0x03000050
_08028304: .4byte 0x0300002C
_08028308: .4byte 0x0300002E
_0802830C: .4byte gCurTask
_08028310: .4byte sub_8028388
_08028314:
	cmp r0, #1
	bne _08028328
	ldr r4, _08028320 @ =gCurTask
	ldr r1, [r4]
	ldr r0, _08028324 @ =sub_8028518
	b _0802832E
	.align 2, 0
_08028320: .4byte gCurTask
_08028324: .4byte sub_8028518
_08028328:
	ldr r5, _08028338 @ =gCurTask
	ldr r1, [r5]
	ldr r0, _0802833C @ =sub_80286B0
_0802832E:
	str r0, [r1, #8]
	movs r0, #0xa3
	bl m4aSongNumStart
	b _08028354
	.align 2, 0
_08028338: .4byte gCurTask
_0802833C: .4byte sub_80286B0
_08028340:
	adds r7, #4
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #3
	bhi _08028354
	ldr r0, [r7]
	cmp r0, #0
	beq _08028354
	b _0802820E
_08028354:
	mov r2, sb
	ldr r0, [r2, #0x30]
	asrs r0, r0, #8
	ldr r2, _08028384 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r6, #0x16]
	mov r4, sb
	ldr r0, [r4, #0x34]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028384: .4byte gCamera

	thumb_func_start sub_8028388
sub_8028388: @ 0x08028388
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080283B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	adds r1, #0x41
	adds r2, r0, r1
	ldr r3, _080283B8 @ =0x03000042
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r3, [r0]
	cmp r1, r3
	beq _080283BC
	strb r1, [r0]
	bl sub_802888C
	b _08028500
	.align 2, 0
_080283B4: .4byte gCurTask
_080283B8: .4byte 0x03000042
_080283BC:
	strb r1, [r0]
	ldr r1, _0802840C @ =gUnknown_03005130
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov ip, r0
	adds r4, r6, #0
	ldr r0, _08028410 @ =gUnknown_03005120
	ldr r0, [r0]
	lsls r3, r0, #4
	strh r3, [r4, #0x3e]
	mov r1, ip
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0802841C
	ldr r0, [r4, #0x10]
	orrs r0, r1
	str r0, [r4, #0x10]
	ldr r1, _08028414 @ =0x03000052
	adds r0, r2, r1
	ldrh r0, [r0]
	adds r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r5, r3, r2
	ldr r3, _08028418 @ =0x000003FF
	adds r0, r3, #0
	ands r5, r0
	b _08028436
	.align 2, 0
_0802840C: .4byte gUnknown_03005130
_08028410: .4byte gUnknown_03005120
_08028414: .4byte 0x03000052
_08028418: .4byte 0x000003FF
_0802841C:
	ldr r0, [r4, #0x10]
	ldr r1, _08028450 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r1, _08028454 @ =0x03000052
	adds r0, r2, r1
	ldrh r0, [r0]
	subs r0, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r5, _08028458 @ =0x000003FF
	ands r5, r3
_08028436:
	mov r2, ip
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0802845C
	mov r0, ip
	adds r0, #0x50
	ldrh r0, [r0]
	subs r0, #0x14
	b _08028464
	.align 2, 0
_08028450: .4byte 0xFFFFF7FF
_08028454: .4byte 0x03000052
_08028458: .4byte 0x000003FF
_0802845C:
	mov r0, ip
	adds r0, #0x50
	ldrh r0, [r0]
	adds r0, #0x14
_08028464:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r1, [r6, #0x30]
	asrs r1, r1, #8
	adds r7, r0, #0
	cmp r2, r1
	bne _080284B8
	mov r3, ip
	ldrh r1, [r3, #0xa]
	ldr r3, _080284A0 @ =gUnknown_084AE008
	ldr r2, _080284A4 @ =gUnknown_03005090
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	cmp r1, #1
	bne _080284AC
	movs r0, #0
	ldr r1, _080284A8 @ =0x000002BF
	b _080284BC
	.align 2, 0
_080284A0: .4byte gUnknown_084AE008
_080284A4: .4byte gUnknown_03005090
_080284A8: .4byte 0x000002BF
_080284AC:
	movs r0, #0
	ldr r1, _080284B4 @ =0x000002BE
	b _080284BC
	.align 2, 0
_080284B4: .4byte 0x000002BE
_080284B8:
	movs r0, #0
	ldr r1, _0802850C @ =0x000002BB
_080284BC:
	strh r1, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x20
	strb r0, [r1]
	asrs r0, r7, #0x10
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	bl sub_8028AAC
	ldr r0, [r6, #0x30]
	asrs r0, r0, #8
	ldr r3, _08028510 @ =gCamera
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r1, [r6, #0x34]
	asrs r1, r1, #8
	ldr r2, _08028514 @ =gSineTable
	lsls r0, r5, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #0xb
	subs r1, r1, r0
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08028500:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802850C: .4byte 0x000002BB
_08028510: .4byte gCamera
_08028514: .4byte gSineTable

	thumb_func_start sub_8028518
sub_8028518: @ 0x08028518
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08028544 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	adds r1, #0x41
	adds r2, r0, r1
	ldr r3, _08028548 @ =0x03000042
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r3, [r0]
	cmp r1, r3
	beq _0802854C
	strb r1, [r0]
	bl sub_802888C
	b _0802869C
	.align 2, 0
_08028544: .4byte gCurTask
_08028548: .4byte 0x03000042
_0802854C:
	strb r1, [r0]
	ldr r1, _0802858C @ =gUnknown_03005130
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r4, r6, #0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08028594
	ldr r0, [r4, #0x10]
	orrs r0, r1
	str r0, [r4, #0x10]
	ldr r3, _08028590 @ =0x03000052
	adds r1, r2, r3
	subs r3, #0x23
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r0, #0x10
	b _080285B0
	.align 2, 0
_0802858C: .4byte gUnknown_03005130
_08028590: .4byte 0x03000052
_08028594:
	ldr r0, [r4, #0x10]
	ldr r1, _080285F8 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, _080285FC @ =0x03000052
	adds r1, r2, r0
	ldr r3, _08028600 @ =0x0300002D
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1]
	adds r0, r0, r1
	subs r0, #0x10
_080285B0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldrh r0, [r4, #0x3e]
	ldr r7, _08028604 @ =0x000003FF
	ands r7, r0
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r1, [r0]
	mov r8, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r6, #0x30]
	asrs r0, r0, #8
	cmp r1, r0
	bne _08028620
	ldrh r1, [r5, #0xa]
	ldr r3, _08028608 @ =gUnknown_084AE008
	ldr r2, _0802860C @ =gUnknown_03005090
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	cmp r1, #1
	bne _08028614
	movs r0, #0
	ldr r1, _08028610 @ =0x000002BF
	b _08028624
	.align 2, 0
_080285F8: .4byte 0xFFFFF7FF
_080285FC: .4byte 0x03000052
_08028600: .4byte 0x0300002D
_08028604: .4byte 0x000003FF
_08028608: .4byte gUnknown_084AE008
_0802860C: .4byte gUnknown_03005090
_08028610: .4byte 0x000002BF
_08028614:
	movs r0, #0
	ldr r1, _0802861C @ =0x000002BE
	b _08028624
	.align 2, 0
_0802861C: .4byte 0x000002BE
_08028620:
	movs r0, #0
	ldr r1, _08028664 @ =0x000002BB
_08028624:
	strh r1, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x20
	strb r0, [r1]
	adds r5, r1, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_8028AAC
	cmp r0, #0
	beq _0802866C
	movs r1, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	strb r1, [r5]
	ldr r0, [r6, #0x30]
	asrs r0, r0, #8
	ldr r2, _08028668 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r6, #0x34]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	b _08028690
	.align 2, 0
_08028664: .4byte 0x000002BB
_08028668: .4byte gCamera
_0802866C:
	ldr r0, [r6, #0x30]
	asrs r0, r0, #8
	ldr r3, _080286A8 @ =gCamera
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r1, [r6, #0x34]
	asrs r1, r1, #8
	ldr r2, _080286AC @ =gSineTable
	lsls r0, r7, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #0xb
	subs r1, r1, r0
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	strh r1, [r4, #0x18]
_08028690:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0802869C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080286A8: .4byte gCamera
_080286AC: .4byte gSineTable

	thumb_func_start sub_80286B0
sub_80286B0: @ 0x080286B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080286E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _080286E4 @ =0x03000041
	adds r2, r0, r1
	ldr r3, _080286E8 @ =0x03000042
	adds r0, r0, r3
	ldrb r1, [r2]
	ldrb r3, [r0]
	cmp r1, r3
	beq _080286EC
	strb r1, [r0]
	bl sub_802888C
	b _08028878
	.align 2, 0
_080286E0: .4byte gCurTask
_080286E4: .4byte 0x03000041
_080286E8: .4byte 0x03000042
_080286EC:
	strb r1, [r0]
	ldr r1, _08028738 @ =gUnknown_03005130
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	mov r4, r8
	ldr r0, _0802873C @ =gUnknown_03005120
	ldr r0, [r0]
	lsls r3, r0, #4
	strh r3, [r4, #0x3e]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08028748
	ldr r0, [r4, #0x10]
	orrs r0, r1
	str r0, [r4, #0x10]
	ldr r1, _08028740 @ =0x03000052
	adds r0, r2, r1
	ldrh r0, [r0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r6, r3, r2
	ldr r3, _08028744 @ =0x000003FF
	adds r0, r3, #0
	ands r6, r0
	b _08028762
	.align 2, 0
_08028738: .4byte gUnknown_03005130
_0802873C: .4byte gUnknown_03005120
_08028740: .4byte 0x03000052
_08028744: .4byte 0x000003FF
_08028748:
	ldr r0, [r4, #0x10]
	ldr r1, _08028778 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r1, _0802877C @ =0x03000052
	adds r0, r2, r1
	ldrh r0, [r0]
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r6, _08028780 @ =0x000003FF
	ands r6, r3
_08028762:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08028784
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r0, [r0]
	subs r0, #0x14
	b _0802878C
	.align 2, 0
_08028778: .4byte 0xFFFFF7FF
_0802877C: .4byte 0x03000052
_08028780: .4byte 0x000003FF
_08028784:
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r0, [r0]
	adds r0, #0x14
_0802878C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	mov r3, r8
	ldr r1, [r3, #0x30]
	asrs r1, r1, #8
	mov ip, r0
	cmp r2, r1
	bne _080287E0
	ldrh r1, [r5, #0xa]
	ldr r3, _080287C8 @ =gUnknown_084AE008
	ldr r2, _080287CC @ =gUnknown_03005090
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	cmp r1, #1
	bne _080287D4
	movs r0, #0
	ldr r1, _080287D0 @ =0x000002BF
	b _080287E4
	.align 2, 0
_080287C8: .4byte gUnknown_084AE008
_080287CC: .4byte gUnknown_03005090
_080287D0: .4byte 0x000002BF
_080287D4:
	movs r0, #0
	ldr r1, _080287DC @ =0x000002BE
	b _080287E4
	.align 2, 0
_080287DC: .4byte 0x000002BE
_080287E0:
	movs r0, #0
	ldr r1, _08028834 @ =0x000002BB
_080287E4:
	strh r1, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x20
	strb r0, [r1]
	adds r5, r1, #0
	ldr r0, _08028838 @ =gUnknown_03004FF0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	mov r3, ip
	asrs r0, r3, #0x10
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_8028AAC
	cmp r0, #0
	beq _08028844
	ldr r3, _0802883C @ =0x03000041
	adds r0, r7, r3
	mov r1, r8
	adds r1, #0x41
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08028844
	movs r1, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	strb r1, [r5]
	mov r1, r8
	ldr r0, [r1, #0x30]
	asrs r0, r0, #8
	ldr r3, _08028840 @ =gCamera
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	mov r2, r8
	ldr r1, [r2, #0x34]
	b _08028856
	.align 2, 0
_08028834: .4byte 0x000002BB
_08028838: .4byte gUnknown_03004FF0
_0802883C: .4byte 0x03000041
_08028840: .4byte gCamera
_08028844:
	mov r3, r8
	ldr r0, [r3, #0x30]
	asrs r0, r0, #8
	ldr r3, _08028884 @ =gCamera
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	mov r0, r8
	ldr r1, [r0, #0x34]
_08028856:
	asrs r1, r1, #8
	ldr r2, _08028888 @ =gSineTable
	lsls r0, r6, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #0xb
	subs r1, r1, r0
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08028878:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028884: .4byte gCamera
_08028888: .4byte gSineTable

	thumb_func_start sub_802888C
sub_802888C: @ 0x0802888C
	push {r4, r5, r6, lr}
	ldr r3, _080288C0 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r4, r0, r2
	adds r5, r4, #0
	ldr r1, _080288C4 @ =gUnknown_03005130
	ldr r6, _080288C8 @ =0x03000041
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r2, r0, r2
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080288D0
	ldr r0, _080288CC @ =0x0000FE80
	b _080288D4
	.align 2, 0
_080288C0: .4byte gCurTask
_080288C4: .4byte gUnknown_03005130
_080288C8: .4byte 0x03000041
_080288CC: .4byte 0x0000FE80
_080288D0:
	movs r0, #0xc0
	lsls r0, r0, #1
_080288D4:
	strh r0, [r4, #0x3a]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080288E8
	movs r0, #0xc0
	lsls r0, r0, #2
	b _080288EC
_080288E8:
	movs r0, #0xfd
	lsls r0, r0, #8
_080288EC:
	strh r0, [r5, #0x3c]
	movs r1, #0
	ldr r0, _08028908 @ =0x000002BA
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r1, [r3]
	ldr r0, _0802890C @ =sub_8028910
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08028908: .4byte 0x000002BA
_0802890C: .4byte sub_8028910

	thumb_func_start sub_8028910
sub_8028910: @ 0x08028910
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08028948 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r5, r0, r2
	adds r6, r5, #0
	ldr r1, _0802894C @ =gUnknown_03005130
	ldr r3, _08028950 @ =0x03000041
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r2, r0, r2
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08028954
	ldrh r0, [r5, #0x3c]
	subs r0, #0x28
	b _08028958
	.align 2, 0
_08028948: .4byte gCurTask
_0802894C: .4byte gUnknown_03005130
_08028950: .4byte 0x03000041
_08028954:
	ldrh r0, [r5, #0x3c]
	adds r0, #0x28
_08028958:
	strh r0, [r5, #0x3c]
	movs r0, #0x3a
	ldrsh r1, [r6, r0]
	ldr r0, [r6, #0x30]
	adds r4, r0, r1
	str r4, [r6, #0x30]
	movs r3, #0x3c
	ldrsh r1, [r6, r3]
	ldr r0, [r6, #0x34]
	adds r3, r0, r1
	str r3, [r6, #0x34]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080289A4
	asrs r0, r3, #8
	asrs r1, r4, #8
	adds r2, #0x54
	ldrh r2, [r2]
	lsrs r2, r2, #7
	movs r3, #1
	ands r2, r3
	subs r3, #9
	ldr r4, _080289A0 @ =sub_803FD5C
	str r4, [sp]
	bl sub_804021C
	cmp r0, #0
	bge _080289DC
	lsls r1, r0, #8
	ldr r0, [r6, #0x34]
	subs r0, r0, r1
	b _080289C6
	.align 2, 0
_080289A0: .4byte sub_803FD5C
_080289A4:
	asrs r0, r3, #8
	asrs r1, r4, #8
	adds r2, #0x54
	ldrh r2, [r2]
	lsrs r2, r2, #7
	movs r3, #1
	ands r2, r3
	ldr r3, _08028A08 @ =sub_803FD5C
	str r3, [sp]
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _080289DC
	lsls r1, r0, #8
	ldr r0, [r6, #0x34]
	adds r0, r0, r1
_080289C6:
	str r0, [r6, #0x34]
	ldr r0, _08028A0C @ =0x000002BA
	strh r0, [r5, #0xa]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08028A10 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08028A14 @ =sub_8028A1C
	str r0, [r1, #8]
_080289DC:
	ldr r0, [r6, #0x30]
	asrs r0, r0, #8
	ldr r2, _08028A18 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldr r0, [r6, #0x34]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08028A08: .4byte sub_803FD5C
_08028A0C: .4byte 0x000002BA
_08028A10: .4byte gCurTask
_08028A14: .4byte sub_8028A1C
_08028A18: .4byte gCamera

	thumb_func_start sub_8028A1C
sub_8028A1C: @ 0x08028A1C
	push {r4, r5, r6, lr}
	ldr r6, _08028A64 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	ldr r2, _08028A68 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x34]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _08028A96
	ldr r1, _08028A6C @ =0x03000041
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08028A90
	subs r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028A74
	ldr r1, [r6]
	ldr r0, _08028A70 @ =sub_8028388
	b _08028A94
	.align 2, 0
_08028A64: .4byte gCurTask
_08028A68: .4byte gCamera
_08028A6C: .4byte 0x03000041
_08028A70: .4byte sub_8028388
_08028A74:
	cmp r0, #1
	bne _08028A84
	ldr r1, [r6]
	ldr r0, _08028A80 @ =sub_8028518
	b _08028A94
	.align 2, 0
_08028A80: .4byte sub_8028518
_08028A84:
	ldr r1, [r6]
	ldr r0, _08028A8C @ =sub_80286B0
	b _08028A94
	.align 2, 0
_08028A8C: .4byte sub_80286B0
_08028A90:
	ldr r1, [r6]
	ldr r0, _08028AA8 @ =sub_802816C
_08028A94:
	str r0, [r1, #8]
_08028A96:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08028AA8: .4byte sub_802816C

	thumb_func_start sub_8028AAC
sub_8028AAC: @ 0x08028AAC
	push {r4, r5, r6, r7, lr}
	ldr r2, _08028B0C @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r5, r2, r4
	ldr r3, _08028B10 @ =gUnknown_03005130
	ldr r6, _08028B14 @ =0x03000041
	adds r2, r2, r6
	ldrb r2, [r2]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	adds r4, r2, r4
	adds r3, r5, #0
	ldr r2, [r5, #0x30]
	asrs r2, r2, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	ldr r2, [r5, #0x34]
	asrs r2, r2, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bgt _08028B00
	cmp r0, #0
	bne _08028B18
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08028B18
_08028B00:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08028B20
	.align 2, 0
_08028B0C: .4byte gCurTask
_08028B10: .4byte gUnknown_03005130
_08028B14: .4byte 0x03000041
_08028B18:
	ldr r0, [r3, #0x10]
	ldr r1, _08028B34 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r3, #0x10]
_08028B20:
	lsls r0, r6, #0x10
	adds r6, r0, #0
	lsls r7, r2, #0x10
	cmp r6, #0
	bne _08028B38
	cmp r7, #0
	bne _08028B38
	movs r0, #1
	b _08028C64
	.align 2, 0
_08028B34: .4byte 0xFFFFFBFF
_08028B38:
	lsrs r3, r6, #0x10
	lsrs r1, r7, #0x10
	cmp r6, #0
	beq _08028B96
	cmp r7, #0
	beq _08028B96
	lsls r4, r1, #0x10
	b _08028B7C
_08028B48:
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r2, r2, r0
	lsls r2, r2, #0xf
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	lsls r1, r1, #0xf
	lsrs r1, r1, #0x10
	lsrs r3, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _08028B68
	rsbs r0, r0, #0
_08028B68:
	cmp r0, #1
	ble _08028B96
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r4, r0, #0
	cmp r2, #0
	bge _08028B78
	rsbs r2, r2, #0
_08028B78:
	cmp r2, #1
	ble _08028B96
_08028B7C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08028B86
	rsbs r0, r0, #0
_08028B86:
	cmp r0, #0x7f
	bgt _08028B48
	asrs r0, r4, #0x10
	cmp r0, #0
	bge _08028B92
	rsbs r0, r0, #0
_08028B92:
	cmp r0, #0x7f
	bgt _08028B48
_08028B96:
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	adds r2, r0, #0
	cmp r3, #0
	bge _08028BA2
	rsbs r3, r3, #0
_08028BA2:
	lsls r4, r1, #0x10
	cmp r3, #1
	bgt _08028BC4
	asrs r0, r4, #0x10
	adds r3, r0, #0
	cmp r0, #0
	bge _08028BB2
	rsbs r3, r0, #0
_08028BB2:
	cmp r3, #1
	ble _08028BC4
	movs r4, #0xc0
	lsls r4, r4, #2
	cmp r0, #0
	ble _08028BF6
	movs r4, #0x80
	lsls r4, r4, #1
	b _08028BF6
_08028BC4:
	asrs r0, r4, #0x10
	cmp r0, #0
	bge _08028BCC
	rsbs r0, r0, #0
_08028BCC:
	cmp r0, #1
	bgt _08028BEA
	asrs r0, r2, #0x10
	adds r3, r0, #0
	cmp r0, #0
	bge _08028BDA
	rsbs r3, r0, #0
_08028BDA:
	cmp r3, #1
	ble _08028BEA
	movs r4, #0x80
	lsls r4, r4, #2
	cmp r0, #0
	ble _08028BF6
	movs r4, #0
	b _08028BF6
_08028BEA:
	asrs r0, r4, #0x10
	asrs r1, r2, #0x10
	bl sub_800338C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08028BF6:
	asrs r0, r6, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r1, r7, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _08028C1C
	adds r0, r1, #0
	b _08028C22
_08028C1C:
	cmp r0, #0
	bne _08028C22
	movs r0, #1
_08028C22:
	strh r0, [r5, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08028C62
	movs r3, #0x38
	ldrsh r1, [r5, r3]
	ldr r3, _08028C6C @ =gSineTable
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r2, r4
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r6, #0
	ldrsh r0, [r0, r6]
	muls r1, r0, r1
	asrs r1, r1, #0xe
	ldr r0, [r5, #0x30]
	adds r0, r0, r1
	str r0, [r5, #0x30]
	movs r0, #0x38
	ldrsh r1, [r5, r0]
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r0, [r2, r3]
	muls r1, r0, r1
	asrs r1, r1, #0xe
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
_08028C62:
	movs r0, #0
_08028C64:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08028C6C: .4byte gSineTable

	thumb_func_start sub_8028C70
sub_8028C70: @ 0x08028C70
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8028C84
sub_8028C84: @ 0x08028C84
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08028CD8 @ =sub_8028CE4
	movs r2, #0x80
	lsls r2, r2, #7
	movs r5, #0
	str r5, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0xa]
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	ldr r2, _08028CDC @ =gUnknown_03005A20
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	strh r5, [r2, #0x38]
	strh r5, [r2, #8]
	strh r5, [r2, #0xc]
	ldr r0, _08028CE0 @ =gCamera
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0xa0
	strh r4, [r0, #0x16]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08028CD8: .4byte sub_8028CE4
_08028CDC: .4byte gUnknown_03005A20
_08028CE0: .4byte gCamera

	thumb_func_start sub_8028CE4
sub_8028CE4: @ 0x08028CE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _08028EEC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #4]
	ldr r3, _08028EF0 @ =gCamera
	ldrh r0, [r3, #0xe]
	adds r0, #1
	strh r0, [r3, #0xe]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #4
	ldrsh r1, [r1, r2]
	movs r4, #2
	ldrsh r2, [r3, r4]
	subs r1, r1, r2
	adds r1, #0x50
	cmp r0, r1
	bge _08028D1C
	b _08028EDC
_08028D1C:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r6, #0
	ldr r5, _08028EF4 @ =gUnknown_03004C58
	ldr r0, _08028EF8 @ =0x00196225
	mov r8, r0
	ldr r7, _08028EFC @ =0x3C6EF35F
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	str r2, [sp, #0xc]
	ldr r3, _08028F00 @ =gSineTable
	mov sl, r3
	str r1, [sp, #0x10]
_08028D3E:
	ldr r0, [r5]
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r0, r0, r7
	str r0, [r5]
	movs r4, #7
	ands r4, r0
	ldr r0, _08028F04 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	ldr r2, _08028F08 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08028F0C @ =gUnknown_080BB42C
	adds r0, r4, r0
	ldrb r3, [r0]
	ldr r0, _08028F10 @ =sub_80177EC
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_801769C
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r0, [r5]
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r7
	str r1, [r5]
	movs r0, #0xff
	ands r0, r1
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	lsls r0, r0, #8
	str r0, [r4, #0x30]
	ldr r0, [sp, #8]
	lsls r3, r0, #0x10
	asrs r0, r3, #8
	str r0, [r4, #0x34]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r0, #0x28
	strh r0, [r4, #0x3e]
	ldr r0, _08028F14 @ =0x03000040
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2]
	mov r0, r8
	muls r0, r1, r0
	adds r0, r0, r7
	str r0, [r5]
	ldr r1, _08028F18 @ =0x000001FF
	ands r1, r0
	lsls r0, r1, #1
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #6
	strh r0, [r4, #0x3a]
	movs r2, #0x3a
	ldrsh r0, [r4, r2]
	mov sb, r3
	cmp r0, #0
	bge _08028DD8
	rsbs r0, r0, #0
_08028DD8:
	strh r0, [r4, #0x3a]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r4, #0x38]
	adds r6, #1
	cmp r6, #2
	bls _08028D3E
	movs r6, #0
	ldr r5, _08028EF4 @ =gUnknown_03004C58
	ldr r2, _08028EF8 @ =0x00196225
	mov r8, r2
	ldr r7, _08028EFC @ =0x3C6EF35F
	ldr r3, _08028F00 @ =gSineTable
	mov sl, r3
_08028E04:
	ldr r0, [r5]
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r0, r0, r7
	str r0, [r5]
	movs r4, #7
	ands r4, r0
	ldr r0, _08028F04 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	ldr r2, _08028F08 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08028F0C @ =gUnknown_080BB42C
	adds r0, r4, r0
	ldrb r3, [r0]
	ldr r0, _08028F10 @ =sub_80177EC
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_801769C
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r0, [r5]
	mov r2, r8
	muls r2, r0, r2
	adds r2, r2, r7
	str r2, [r5]
	ldr r0, [sp, #0x10]
	asrs r1, r0, #0x10
	movs r0, #0xff
	ands r0, r2
	adds r1, r1, r0
	lsls r1, r1, #8
	str r1, [r4, #0x30]
	mov r1, sb
	asrs r0, r1, #8
	str r0, [r4, #0x34]
	movs r0, #0
	str r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r0, #0x28
	strh r0, [r4, #0x3e]
	ldr r0, _08028F14 @ =0x03000040
	adds r3, r3, r0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r3]
	mov r0, r8
	muls r0, r2, r0
	adds r0, r0, r7
	str r0, [r5]
	adds r1, #0xff
	ands r1, r0
	lsls r0, r1, #1
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #5
	strh r0, [r4, #0x3a]
	movs r3, #0x3a
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _08028E9A
	rsbs r0, r0, #0
_08028E9A:
	strh r0, [r4, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	add r0, sl
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r4, #0x38]
	adds r6, #1
	cmp r6, #2
	bls _08028E04
	movs r0, #0x80
	lsls r0, r0, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #8
	movs r2, #0x10
	movs r3, #0xa
	bl sub_804CC14
	ldr r4, [sp, #4]
	str r0, [r4]
	movs r0, #0xad
	bl m4aSongNumStart
	ldr r0, _08028EEC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08028F1C @ =sub_8028F20
	str r0, [r1, #8]
_08028EDC:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028EEC: .4byte gCurTask
_08028EF0: .4byte gCamera
_08028EF4: .4byte gUnknown_03004C58
_08028EF8: .4byte 0x00196225
_08028EFC: .4byte 0x3C6EF35F
_08028F00: .4byte gSineTable
_08028F04: .4byte gUnknown_080BB434
_08028F08: .4byte gUnknown_080BB41C
_08028F0C: .4byte gUnknown_080BB42C
_08028F10: .4byte sub_80177EC
_08028F14: .4byte 0x03000040
_08028F18: .4byte 0x000001FF
_08028F1C: .4byte sub_8028F20

	thumb_func_start sub_8028F20
sub_8028F20: @ 0x08028F20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08028FA4 @ =gCurTask
	ldr r0, [r0]
	mov r8, r0
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrh r3, [r6, #6]
	adds r3, #8
	strh r3, [r6, #6]
	ldrh r2, [r6, #8]
	adds r2, #0x10
	strh r2, [r6, #8]
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x18
	ldrh r1, [r6, #4]
	adds r0, r1, r0
	ldr r5, _08028FA8 @ =gCamera
	ldrh r4, [r5, #2]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x18
	adds r1, r1, r2
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _08028FAC @ =0x03FF0000
	cmp r3, r0
	bls _08028FC0
	ldr r3, _08028FB0 @ =gUnknown_03005148
	ldrb r0, [r3]
	cmp r0, #2
	beq _08028F82
	ldr r0, _08028FB4 @ =gUnknown_03005120
	ldr r0, [r0]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	ldr r1, _08028FB8 @ =0x000001FF
	ands r0, r1
	subs r1, #0xfd
	cmp r0, r1
	bne _08028FC0
_08028F82:
	ldr r2, _08028FBC @ =sub_8029070
	mov r0, r8
	str r2, [r0, #8]
	movs r0, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r3]
	cmp r0, #3
	bne _08028F9E
	ldrh r0, [r5, #0x26]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r5, #0x26]
_08028F9E:
	bl _call_via_r2
	b _08029060
	.align 2, 0
_08028FA4: .4byte gCurTask
_08028FA8: .4byte gCamera
_08028FAC: .4byte 0x03FF0000
_08028FB0: .4byte gUnknown_03005148
_08028FB4: .4byte gUnknown_03005120
_08028FB8: .4byte 0x000001FF
_08028FBC: .4byte sub_8029070
_08028FC0:
	mov r1, ip
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _08029054
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	bgt _08029054
	movs r2, #4
	ldrsh r0, [r6, r2]
	movs r3, #2
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	cmp r0, #0
	ble _0802901C
	ldrb r2, [r6, #4]
	ldrb r0, [r5, #2]
	subs r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r4, _08029018 @ =gUnknown_030020D0
	ldrh r3, [r4, #8]
	ldrh r0, [r4, #0xa]
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	bl sub_800681C
	ldrb r1, [r6, #4]
	ldrb r0, [r5, #2]
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r5, r7, #0x18
	lsrs r2, r5, #0x18
	ldrh r3, [r4, #8]
	movs r0, #0xf0
	str r0, [sp]
	movs r0, #2
	bl sub_80067A0
	adds r4, r5, #0
	b _08029030
	.align 2, 0
_08029018: .4byte gUnknown_030020D0
_0802901C:
	lsls r4, r7, #0x18
	lsrs r2, r4, #0x18
	ldr r0, _08029050 @ =gUnknown_030020D0
	ldrh r3, [r0, #8]
	movs r0, #0xf0
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	bl sub_80067A0
_08029030:
	lsrs r1, r4, #0x18
	ldr r0, _08029050 @ =gUnknown_030020D0
	ldrh r3, [r0, #8]
	ldrh r2, [r6, #8]
	lsrs r2, r2, #8
	ldrh r0, [r0, #0xa]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #2
	movs r2, #0xa0
	bl sub_800681C
	b _08029060
	.align 2, 0
_08029050: .4byte gUnknown_030020D0
_08029054:
	ldr r0, _0802906C @ =gFlags
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
_08029060:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802906C: .4byte gFlags

	thumb_func_start sub_8029070
sub_8029070: @ 0x08029070
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080290E0 @ =gCurTask
	ldr r0, [r0]
	mov ip, r0
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrh r0, [r6, #6]
	adds r0, #8
	strh r0, [r6, #6]
	ldrh r1, [r6, #8]
	adds r1, #0x10
	strh r1, [r6, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	ldrh r3, [r6, #4]
	adds r0, r3, r0
	ldr r7, _080290E4 @ =gCamera
	ldrh r2, [r7, #2]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	adds r1, r3, r1
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldrh r0, [r6, #0xc]
	adds r1, r0, #1
	strh r1, [r6, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x28
	bls _080290EC
	ldr r4, _080290E8 @ =sub_8029194
	mov r0, ip
	str r4, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xd0
	str r1, [sp]
	movs r1, #8
	movs r2, #0x10
	bl sub_804CC14
	str r0, [r6]
	movs r0, #0
	strh r0, [r6, #0xc]
	bl _call_via_r4
	b _08029188
	.align 2, 0
_080290E0: .4byte gCurTask
_080290E4: .4byte gCamera
_080290E8: .4byte sub_8029194
_080290EC:
	lsls r0, r4, #0x10
	cmp r0, #0
	ble _0802917C
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	bgt _0802917C
	movs r1, #4
	ldrsh r0, [r6, r1]
	movs r2, #2
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	cmp r0, #0
	ble _08029144
	ldrb r2, [r7, #2]
	subs r2, r3, r2
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r4, _08029140 @ =gUnknown_030020D0
	ldrh r3, [r4, #8]
	ldrh r0, [r4, #0xa]
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	bl sub_800681C
	ldrb r1, [r6, #4]
	ldrb r0, [r7, #2]
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r5, r5, #0x18
	lsrs r2, r5, #0x18
	ldrh r3, [r4, #8]
	movs r0, #0xf0
	str r0, [sp]
	movs r0, #2
	bl sub_80067A0
	adds r4, r5, #0
	b _08029158
	.align 2, 0
_08029140: .4byte gUnknown_030020D0
_08029144:
	lsls r4, r5, #0x18
	lsrs r2, r4, #0x18
	ldr r0, _08029178 @ =gUnknown_030020D0
	ldrh r3, [r0, #8]
	movs r0, #0xf0
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	bl sub_80067A0
_08029158:
	lsrs r1, r4, #0x18
	ldr r0, _08029178 @ =gUnknown_030020D0
	ldrh r3, [r0, #8]
	ldrh r2, [r6, #8]
	lsrs r2, r2, #8
	ldrh r0, [r0, #0xa]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #2
	movs r2, #0xa0
	bl sub_800681C
	b _08029188
	.align 2, 0
_08029178: .4byte gUnknown_030020D0
_0802917C:
	ldr r0, _08029190 @ =gFlags
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
_08029188:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029190: .4byte gFlags

	thumb_func_start sub_8029194
sub_8029194: @ 0x08029194
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _080293BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r0, #0
	ldrh r1, [r6, #8]
	adds r2, r2, r1
	strh r2, [r6, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	ldrh r0, [r6, #6]
	adds r1, r1, r0
	strh r1, [r6, #6]
	ldrh r0, [r6, #0xa]
	subs r0, #1
	strh r0, [r6, #0xa]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	ldrh r0, [r6, #4]
	adds r1, r0, r1
	ldr r4, _080293C0 @ =gCamera
	ldrh r3, [r4, #2]
	subs r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x18
	adds r0, r0, r2
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrh r1, [r6, #0xc]
	adds r0, r1, #1
	strh r0, [r6, #0xc]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080291FC
	b _080293A2
_080291FC:
	ldrh r1, [r4]
	ldrh r0, [r4, #2]
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	movs r7, #0
	ldr r5, _080293C4 @ =gUnknown_03004C58
	ldr r2, _080293C8 @ =0x00196225
	mov sb, r2
	ldr r3, _080293CC @ =0x3C6EF35F
	mov r8, r3
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
_0802921C:
	ldr r0, [r5]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, r8
	str r0, [r5]
	movs r4, #7
	ands r4, r0
	ldr r0, _080293D0 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	ldr r2, _080293D4 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _080293D8 @ =gUnknown_080BB42C
	adds r0, r4, r0
	ldrb r3, [r0]
	ldr r0, _080293DC @ =sub_80177EC
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_801769C
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r4, r2, r3
	ldr r0, [r5]
	mov r1, sb
	muls r1, r0, r1
	add r1, r8
	str r1, [r5]
	movs r0, #0xff
	ands r0, r1
	ldr r3, [sp, #0x10]
	adds r0, r3, r0
	lsls r0, r0, #8
	str r0, [r4, #0x30]
	ldr r0, [sp, #0xc]
	lsls r3, r0, #0x10
	asrs r0, r3, #8
	str r0, [r4, #0x34]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r0, #0x28
	strh r0, [r4, #0x3e]
	ldr r0, _080293E0 @ =0x03000040
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2]
	mov r0, sb
	muls r0, r1, r0
	add r0, r8
	str r0, [r5]
	ldr r1, _080293E4 @ =0x000001FF
	ands r1, r0
	lsls r0, r1, #1
	ldr r2, _080293E8 @ =gSineTable
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #6
	strh r0, [r4, #0x3a]
	movs r2, #0x3a
	ldrsh r0, [r4, r2]
	mov sl, r3
	cmp r0, #0
	bge _080292B8
	rsbs r0, r0, #0
_080292B8:
	strh r0, [r4, #0x3a]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	ldr r1, _080293E8 @ =gSineTable
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r4, #0x38]
	adds r7, #1
	cmp r7, #2
	bls _0802921C
	movs r7, #0
	ldr r5, _080293C4 @ =gUnknown_03004C58
	ldr r3, _080293C8 @ =0x00196225
	mov sb, r3
	ldr r0, _080293CC @ =0x3C6EF35F
	mov r8, r0
_080292E4:
	ldr r0, [r5]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, r8
	str r0, [r5]
	movs r4, #7
	ands r4, r0
	ldr r0, _080293D0 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	ldr r2, _080293D4 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _080293D8 @ =gUnknown_080BB42C
	adds r0, r4, r0
	ldrb r3, [r0]
	ldr r0, _080293DC @ =sub_80177EC
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_801769C
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r4, r3, r2
	ldr r0, [r5]
	mov r2, sb
	muls r2, r0, r2
	add r2, r8
	str r2, [r5]
	ldr r0, [sp, #0x14]
	asrs r1, r0, #0x10
	movs r0, #0xff
	ands r0, r2
	adds r1, r1, r0
	lsls r1, r1, #8
	str r1, [r4, #0x30]
	mov r1, sl
	asrs r0, r1, #8
	str r0, [r4, #0x34]
	movs r0, #0
	str r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r0, #0x28
	strh r0, [r4, #0x3e]
	ldr r0, _080293E0 @ =0x03000040
	adds r3, r3, r0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r3]
	mov r0, sb
	muls r0, r2, r0
	add r0, r8
	str r0, [r5]
	adds r1, #0xff
	ands r1, r0
	lsls r0, r1, #1
	ldr r2, _080293E8 @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	asrs r0, r0, #5
	strh r0, [r4, #0x3a]
	movs r2, #0x3a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _0802937C
	rsbs r0, r0, #0
_0802937C:
	strh r0, [r4, #0x3a]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	ldr r1, _080293E8 @ =gSineTable
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r4, #0x38]
	adds r7, #1
	cmp r7, #2
	bls _080292E4
	movs r0, #0x90
	bl m4aSongNumStart
_080293A2:
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0xa0
	ble _080293F0
	ldr r0, _080293BC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080293EC @ =sub_80294A8
	str r0, [r1, #8]
	bl _call_via_r0
	b _08029494
	.align 2, 0
_080293BC: .4byte gCurTask
_080293C0: .4byte gCamera
_080293C4: .4byte gUnknown_03004C58
_080293C8: .4byte 0x00196225
_080293CC: .4byte 0x3C6EF35F
_080293D0: .4byte gUnknown_080BB434
_080293D4: .4byte gUnknown_080BB41C
_080293D8: .4byte gUnknown_080BB42C
_080293DC: .4byte sub_80177EC
_080293E0: .4byte 0x03000040
_080293E4: .4byte 0x000001FF
_080293E8: .4byte gSineTable
_080293EC: .4byte sub_80294A8
_080293F0:
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	cmp r0, #0
	ble _08029488
	cmp r1, #0x9f
	bgt _08029488
	movs r3, #4
	ldrsh r0, [r6, r3]
	ldr r5, _08029448 @ =gCamera
	movs r2, #2
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	cmp r0, #0
	ble _08029450
	ldrb r2, [r6, #4]
	ldrb r0, [r5, #2]
	subs r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r4, _0802944C @ =gUnknown_030020D0
	ldrh r3, [r4, #8]
	ldrh r0, [r4, #0xa]
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	bl sub_800681C
	ldrb r1, [r6, #4]
	ldrb r0, [r5, #2]
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, [sp, #8]
	lsls r5, r3, #0x18
	lsrs r2, r5, #0x18
	ldrh r3, [r4, #8]
	movs r0, #0xf0
	str r0, [sp]
	movs r0, #2
	bl sub_80067A0
	adds r4, r5, #0
	b _08029466
	.align 2, 0
_08029448: .4byte gCamera
_0802944C: .4byte gUnknown_030020D0
_08029450:
	ldr r0, [sp, #8]
	lsls r4, r0, #0x18
	lsrs r2, r4, #0x18
	ldr r0, _08029484 @ =gUnknown_030020D0
	ldrh r3, [r0, #8]
	movs r0, #0xf0
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	bl sub_80067A0
_08029466:
	lsrs r1, r4, #0x18
	ldr r0, _08029484 @ =gUnknown_030020D0
	ldrh r3, [r0, #8]
	ldrh r2, [r6, #8]
	lsrs r2, r2, #8
	ldrh r0, [r0, #0xa]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #2
	movs r2, #0xa0
	bl sub_800681C
	b _08029494
	.align 2, 0
_08029484: .4byte gUnknown_030020D0
_08029488:
	ldr r0, _080294A4 @ =gFlags
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
_08029494:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080294A4: .4byte gFlags

	thumb_func_start sub_80294A8
sub_80294A8: @ 0x080294A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _08029724 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #4]
	ldr r2, _08029728 @ =gCamera
	ldrh r0, [r2, #0xe]
	subs r0, #1
	strh r0, [r2, #0xe]
	ldrh r1, [r1, #0xc]
	adds r0, r1, #1
	ldr r3, [sp, #4]
	strh r0, [r3, #0xc]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080294DC
	b _0802967E
_080294DC:
	ldrh r1, [r2]
	ldrh r0, [r2, #2]
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r6, #0
	ldr r5, _0802972C @ =gUnknown_03004C58
	ldr r0, _08029730 @ =0x00196225
	mov r8, r0
	ldr r7, _08029734 @ =0x3C6EF35F
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	str r2, [sp, #0xc]
	ldr r3, _08029738 @ =gSineTable
	mov sl, r3
	str r1, [sp, #0x10]
_080294FE:
	ldr r0, [r5]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r7
	str r0, [r5]
	movs r4, #7
	ands r4, r0
	ldr r0, _0802973C @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	ldr r2, _08029740 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08029744 @ =gUnknown_080BB42C
	adds r0, r4, r0
	ldrb r3, [r0]
	ldr r0, _08029748 @ =sub_80177EC
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_801769C
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r4, r2, r3
	ldr r0, [r5]
	mov r1, r8
	muls r1, r0, r1
	adds r1, r1, r7
	str r1, [r5]
	movs r0, #0xff
	ands r0, r1
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	lsls r0, r0, #8
	str r0, [r4, #0x30]
	ldr r0, [sp, #8]
	lsls r3, r0, #0x10
	asrs r0, r3, #8
	str r0, [r4, #0x34]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r0, #0x28
	strh r0, [r4, #0x3e]
	ldr r0, _0802974C @ =0x03000040
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2]
	mov r0, r8
	muls r0, r1, r0
	adds r0, r0, r7
	str r0, [r5]
	ldr r1, _08029750 @ =0x000001FF
	ands r1, r0
	lsls r0, r1, #1
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #6
	strh r0, [r4, #0x3a]
	movs r2, #0x3a
	ldrsh r0, [r4, r2]
	mov sb, r3
	cmp r0, #0
	bge _08029598
	rsbs r0, r0, #0
_08029598:
	strh r0, [r4, #0x3a]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r4, #0x38]
	adds r6, #1
	cmp r6, #2
	bls _080294FE
	movs r6, #0
	ldr r5, _0802972C @ =gUnknown_03004C58
	ldr r2, _08029730 @ =0x00196225
	mov r8, r2
	ldr r7, _08029734 @ =0x3C6EF35F
	ldr r3, _08029738 @ =gSineTable
	mov sl, r3
_080295C4:
	ldr r0, [r5]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r7
	str r0, [r5]
	movs r4, #7
	ands r4, r0
	ldr r0, _0802973C @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	ldr r2, _08029740 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08029744 @ =gUnknown_080BB42C
	adds r0, r4, r0
	ldrb r3, [r0]
	ldr r0, _08029748 @ =sub_80177EC
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_801769C
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r4, r3, r2
	ldr r0, [r5]
	mov r2, r8
	muls r2, r0, r2
	adds r2, r2, r7
	str r2, [r5]
	ldr r0, [sp, #0x10]
	asrs r1, r0, #0x10
	movs r0, #0xff
	ands r0, r2
	adds r1, r1, r0
	lsls r1, r1, #8
	str r1, [r4, #0x30]
	mov r1, sb
	asrs r0, r1, #8
	str r0, [r4, #0x34]
	movs r0, #0
	str r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r0, #0x28
	strh r0, [r4, #0x3e]
	ldr r0, _0802974C @ =0x03000040
	adds r3, r3, r0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r3]
	mov r0, r8
	muls r0, r2, r0
	adds r0, r0, r7
	str r0, [r5]
	adds r1, #0xff
	ands r1, r0
	lsls r0, r1, #1
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r0, #5
	strh r0, [r4, #0x3a]
	movs r3, #0x3a
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0802965A
	rsbs r0, r0, #0
_0802965A:
	strh r0, [r4, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	add r0, sl
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r4, #0x38]
	adds r6, #1
	cmp r6, #2
	bls _080295C4
	movs r0, #0x90
	bl m4aSongNumStart
_0802967E:
	ldr r5, _08029728 @ =gCamera
	movs r0, #2
	ldrsh r2, [r5, r0]
	ldr r3, [sp, #4]
	movs r0, #4
	ldrsh r1, [r3, r0]
	adds r0, r1, #0
	subs r0, #0xa0
	adds r6, r5, #0
	cmp r2, r0
	bgt _0802977C
	movs r0, #0
	strh r0, [r5, #0xe]
	ldr r0, _08029754 @ =gUnknown_03005148
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #1
	bls _080296C8
	movs r0, #0xae
	lsls r0, r0, #5
	strh r0, [r5, #0x16]
	ldr r3, _08029758 @ =gUnknown_03005004
	ldrh r0, [r3]
	ldr r2, _0802975C @ =0x0000FFFE
	ands r2, r0
	strh r2, [r3]
	ldr r0, _08029760 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _080296C8
	movs r1, #4
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08029764 @ =gUnknown_03005034
	ldr r0, _08029768 @ =0x00004650
	str r0, [r1]
_080296C8:
	ldrb r0, [r4]
	cmp r0, #2
	bls _080296F4
	movs r0, #0xcc
	lsls r0, r0, #4
	strh r0, [r6, #0x16]
	ldr r3, _08029758 @ =gUnknown_03005004
	ldrh r0, [r3]
	ldr r2, _0802975C @ =0x0000FFFE
	ands r2, r0
	strh r2, [r3]
	ldr r0, _08029760 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _080296F4
	movs r1, #4
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08029764 @ =gUnknown_03005034
	ldr r0, _08029768 @ =0x00004650
	str r0, [r1]
_080296F4:
	ldr r2, _0802976C @ =gUnknown_03005A20
	ldr r0, [r2, #0x10]
	ldr r1, _08029770 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	strh r0, [r2, #0x38]
	ldr r0, _08029724 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r2, _08029774 @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r2, _08029728 @ =gCamera
	ldrh r1, [r2, #0x26]
	ldr r0, _08029778 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x26]
	b _080297D2
	.align 2, 0
_08029724: .4byte gCurTask
_08029728: .4byte gCamera
_0802972C: .4byte gUnknown_03004C58
_08029730: .4byte 0x00196225
_08029734: .4byte 0x3C6EF35F
_08029738: .4byte gSineTable
_0802973C: .4byte gUnknown_080BB434
_08029740: .4byte gUnknown_080BB41C
_08029744: .4byte gUnknown_080BB42C
_08029748: .4byte sub_80177EC
_0802974C: .4byte 0x03000040
_08029750: .4byte 0x000001FF
_08029754: .4byte gUnknown_03005148
_08029758: .4byte gUnknown_03005004
_0802975C: .4byte 0x0000FFFE
_08029760: .4byte gGameMode
_08029764: .4byte gUnknown_03005034
_08029768: .4byte 0x00004650
_0802976C: .4byte gUnknown_03005A20
_08029770: .4byte 0xFFDFFFFF
_08029774: .4byte gFlags
_08029778: .4byte 0x00007FFF
_0802977C:
	subs r0, r1, r2
	cmp r0, #0
	ble _080297C0
	ldr r1, [sp, #4]
	ldrb r2, [r1, #4]
	ldrb r0, [r5, #2]
	subs r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r4, _080297BC @ =gUnknown_030020D0
	ldrh r3, [r4, #8]
	ldrh r0, [r4, #0xa]
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	bl sub_800681C
	ldr r2, [sp, #4]
	ldrb r1, [r2, #4]
	ldrb r0, [r5, #2]
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r3, [r4, #8]
	movs r0, #0xf0
	str r0, [sp]
	movs r0, #2
	movs r2, #0xa0
	bl sub_80067A0
	b _080297D2
	.align 2, 0
_080297BC: .4byte gUnknown_030020D0
_080297C0:
	ldr r0, _080297E4 @ =gUnknown_030020D0
	ldrh r3, [r0, #8]
	movs r0, #0xf0
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	movs r2, #0xa0
	bl sub_80067A0
_080297D2:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080297E4: .4byte gUnknown_030020D0

	thumb_func_start sub_80297E8
sub_80297E8: @ 0x080297E8
	push {r4, r5, lr}
	ldr r5, _08029844 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r1, [r4, #0xc]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08029806
	movs r0, #0x90
	bl m4aSongNumStart
_08029806:
	ldrh r0, [r4, #0xc]
	subs r0, #1
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0802983E
	ldr r0, _08029848 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802982C
	ldr r2, _0802984C @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08029850 @ =gUnknown_03005034
	ldr r0, _08029854 @ =0x00004650
	str r0, [r1]
_0802982C:
	ldr r2, _08029858 @ =gUnknown_03005A20
	ldr r0, [r2, #0x10]
	ldr r1, _0802985C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
	strh r3, [r2, #0x38]
	ldr r0, [r5]
	bl TaskDestroy
_0802983E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029844: .4byte gCurTask
_08029848: .4byte gGameMode
_0802984C: .4byte gUnknown_03005004
_08029850: .4byte gUnknown_03005034
_08029854: .4byte 0x00004650
_08029858: .4byte gUnknown_03005A20
_0802985C: .4byte 0xFFDFFFFF

	thumb_func_start sub_8029860
sub_8029860: @ 0x08029860
	push {r4, lr}
	sub sp, #4
	ldr r0, _080298B0 @ =sub_80298C0
	movs r2, #0x80
	lsls r2, r2, #7
	movs r4, #0
	str r4, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0x3c
	strh r1, [r0, #0xc]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r1, #0x80
	str r1, [sp]
	movs r1, #8
	movs r2, #0x10
	movs r3, #0xa
	bl sub_804CC14
	ldr r1, _080298B4 @ =gCamera
	ldr r0, _080298B8 @ =0x00000422
	strh r0, [r1, #0x18]
	ldr r2, _080298BC @ =gUnknown_03005A20
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	strh r4, [r2, #0x38]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080298B0: .4byte sub_80298C0
_080298B4: .4byte gCamera
_080298B8: .4byte 0x00000422
_080298BC: .4byte gUnknown_03005A20

	thumb_func_start sub_80298C0
sub_80298C0: @ 0x080298C0
	push {r4, lr}
	sub sp, #4
	ldr r4, _08029900 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #0xc]
	subs r0, #1
	strh r0, [r1, #0xc]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080298F8
	movs r3, #0x96
	lsls r3, r3, #1
	strh r3, [r1, #0xc]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r1, #0x90
	str r1, [sp]
	movs r1, #8
	movs r2, #0x10
	bl sub_804CC14
	ldr r1, [r4]
	ldr r0, _08029904 @ =sub_80297E8
	str r0, [r1, #8]
_080298F8:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029900: .4byte gCurTask
_08029904: .4byte sub_80297E8

	thumb_func_start sub_8029908
sub_8029908: @ 0x08029908
	push {r4, r5, lr}
	bl sub_8040160
	ldr r1, _08029984 @ =gUnknown_03005730
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08029988 @ =gUnknown_0300507C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0802998C @ =gUnknown_03005078
	strh r1, [r0]
	ldr r5, _08029990 @ =gUnknown_03005028
	ldr r1, _08029994 @ =gUnknown_08487140
	ldr r3, _08029998 @ =gUnknown_08487134
	ldr r2, _0802999C @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r4, [r0]
	strh r4, [r5]
	ldr r5, _080299A0 @ =gUnknown_03005070
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r0, _080299A4 @ =gUnknown_03005154
	strh r4, [r0]
	ldr r1, _080299A8 @ =gUnknown_03005A20
	adds r1, #0x26
	ldrb r2, [r1]
	movs r0, #0xfb
	ands r0, r2
	strb r0, [r1]
	ldr r0, _080299AC @ =gUnknown_03005160
	ldrb r0, [r0, #0x1c]
	bl sub_804D02C
	bl sub_802D158
	bl sub_802D190
	bl sub_802D1D8
	bl sub_8029B74
	bl sub_802C934
	movs r0, #1
	bl sub_805C448
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029984: .4byte gUnknown_03005730
_08029988: .4byte gUnknown_0300507C
_0802998C: .4byte gUnknown_03005078
_08029990: .4byte gUnknown_03005028
_08029994: .4byte gUnknown_08487140
_08029998: .4byte gUnknown_08487134
_0802999C: .4byte gCurrentLevel
_080299A0: .4byte gUnknown_03005070
_080299A4: .4byte gUnknown_03005154
_080299A8: .4byte gUnknown_03005A20
_080299AC: .4byte gUnknown_03005160

	thumb_func_start sub_80299B0
sub_80299B0: @ 0x080299B0
	push {r4, r5, lr}
	ldr r4, _08029A30 @ =gUnknown_03005690
	ldr r5, _08029A34 @ =gUnknown_030055E0
	ldrb r0, [r5]
	cmp r0, #2
	bne _080299F0
	movs r0, #0xd2
	lsls r0, r0, #1
	strh r0, [r5, #2]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2a
	movs r0, #0x40
	strb r0, [r1]
	ldr r0, _08029A38 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08029A3C @ =sub_8029A50
	str r0, [r1, #8]
	ldr r0, _08029A40 @ =gUnknown_03005028
	ldr r1, _08029A44 @ =gUnknown_03005078
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bls _080299F0
	movs r0, #2
	bl sub_802C56C
_080299F0:
	ldrb r0, [r5]
	cmp r0, #1
	bne _08029A2A
	movs r0, #0xd2
	lsls r0, r0, #1
	strh r0, [r5, #2]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x2a
	movs r0, #0x80
	strb r0, [r1]
	ldr r0, _08029A38 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08029A48 @ =sub_802D274
	str r0, [r1, #8]
	ldr r0, _08029A4C @ =gUnknown_03005070
	ldr r1, _08029A44 @ =gUnknown_03005078
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bls _08029A2A
	movs r0, #2
	bl sub_802C56C
_08029A2A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029A30: .4byte gUnknown_03005690
_08029A34: .4byte gUnknown_030055E0
_08029A38: .4byte gCurTask
_08029A3C: .4byte sub_8029A50
_08029A40: .4byte gUnknown_03005028
_08029A44: .4byte gUnknown_03005078
_08029A48: .4byte sub_802D274
_08029A4C: .4byte gUnknown_03005070

	thumb_func_start sub_8029A50
sub_8029A50: @ 0x08029A50
	push {lr}
	ldr r2, _08029A88 @ =gUnknown_03005690
	ldr r3, _08029A8C @ =gUnknown_030055E0
	ldrh r0, [r3, #2]
	subs r0, #1
	strh r0, [r3, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08029AB2
	ldr r0, _08029A90 @ =gUnknown_03005028
	ldr r1, _08029A94 @ =gUnknown_03005078
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bhi _08029AA0
	movs r0, #0
	strb r0, [r3]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	bl sub_802D560
	ldr r0, _08029A98 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08029A9C @ =sub_80299B0
	b _08029AB0
	.align 2, 0
_08029A88: .4byte gUnknown_03005690
_08029A8C: .4byte gUnknown_030055E0
_08029A90: .4byte gUnknown_03005028
_08029A94: .4byte gUnknown_03005078
_08029A98: .4byte gCurTask
_08029A9C: .4byte sub_80299B0
_08029AA0:
	ldr r2, _08029AB8 @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08029ABC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08029AC0 @ =sub_8029AC4
_08029AB0:
	str r0, [r1, #8]
_08029AB2:
	pop {r0}
	bx r0
	.align 2, 0
_08029AB8: .4byte gUnknown_03005004
_08029ABC: .4byte gCurTask
_08029AC0: .4byte sub_8029AC4

	thumb_func_start sub_8029AC4
sub_8029AC4: @ 0x08029AC4
	push {r4, r5, lr}
	ldr r5, _08029B20 @ =gUnknown_030055E0
	ldrh r0, [r5, #4]
	adds r0, #0x40
	movs r2, #0
	strh r0, [r5, #4]
	ldr r4, _08029B24 @ =gUnknown_030011A8
	ldr r1, _08029B28 @ =0x00003F9F
	strh r1, [r4]
	strh r2, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x18
	strh r1, [r4, #4]
	ldr r1, _08029B2C @ =0x0FFF0000
	cmp r0, r1
	bls _08029B6E
	movs r0, #0x10
	strh r0, [r4, #2]
	ldr r1, _08029B30 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08029B34 @ =gUnknown_03002384
	ldr r0, _08029B38 @ =gUnknown_0300211C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08029B3C @ =gUnknown_03004C30
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08029B40 @ =gUnknown_030045F8
	ldr r0, _08029B44 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrh r0, [r4]
	ldr r2, _08029B48 @ =0x00003F1F
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r5]
	cmp r0, #2
	bne _08029B4C
	movs r0, #0
	bl sub_805D048
	b _08029B6E
	.align 2, 0
_08029B20: .4byte gUnknown_030055E0
_08029B24: .4byte gUnknown_030011A8
_08029B28: .4byte 0x00003F9F
_08029B2C: .4byte 0x0FFF0000
_08029B30: .4byte 0x0000FFFF
_08029B34: .4byte gUnknown_03002384
_08029B38: .4byte gUnknown_0300211C
_08029B3C: .4byte gUnknown_03004C30
_08029B40: .4byte gUnknown_030045F8
_08029B44: .4byte gVramGraphicsCopyQueueIndex
_08029B48: .4byte 0x00003F1F
_08029B4C:
	ldr r0, _08029B60 @ =gUnknown_03005154
	ldr r1, _08029B64 @ =gUnknown_03005078
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bhi _08029B68
	bl sub_8068D0C
	b _08029B6E
	.align 2, 0
_08029B60: .4byte gUnknown_03005154
_08029B64: .4byte gUnknown_03005078
_08029B68:
	movs r0, #0
	bl sub_805D048
_08029B6E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8029B74
sub_8029B74: @ 0x08029B74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r2, _08029C8C @ =gUnknown_03005780
	ldr r1, _08029C90 @ =gDispCnt
	movs r3, #0xe2
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08029C94 @ =gUnknown_03001B70
	movs r7, #0
	ldr r0, _08029C98 @ =0x00000201
	strh r0, [r1, #2]
	ldr r0, _08029C9C @ =0x00005806
	strh r0, [r1, #4]
	ldr r0, _08029CA0 @ =0x00001C0B
	strh r0, [r1, #6]
	movs r4, #0x88
	strh r4, [r2]
	movs r5, #0x20
	strh r5, [r2, #2]
	strh r7, [r2, #0xe]
	strh r7, [r2, #4]
	strh r7, [r2, #0x10]
	strh r7, [r2, #6]
	strh r7, [r2, #8]
	strh r7, [r2, #0xc]
	ldr r3, _08029CA4 @ =gUnknown_030020D0
	movs r1, #4
	ldrsh r0, [r2, r1]
	subs r0, r4, r0
	cmp r0, #0
	bge _08029BBC
	adds r0, #7
_08029BBC:
	asrs r0, r0, #3
	strh r0, [r3, #0xc]
	movs r0, #6
	ldrsh r1, [r2, r0]
	adds r0, r1, #0
	adds r0, #0x20
	cmp r0, #0
	bge _08029BCE
	adds r0, #7
_08029BCE:
	asrs r0, r0, #3
	strh r0, [r3, #0xe]
	strh r4, [r3, #8]
	strh r5, [r3, #0xa]
	ldr r1, _08029CA8 @ =gUnknown_03005630
	mov sb, r1
	ldr r1, _08029CAC @ =gUnknown_08487034
	mov r0, sb
	movs r2, #0x40
	bl memcpy
	ldr r3, _08029CB0 @ =gUnknown_030055A0
	mov r8, r3
	ldr r1, _08029CB4 @ =gUnknown_08487074
	mov r0, r8
	movs r2, #0x40
	bl memcpy
	ldr r6, _08029CB8 @ =gUnknown_03005740
	ldr r1, _08029CBC @ =gUnknown_084870B4
	adds r0, r6, #0
	movs r2, #0x40
	bl memcpy
	ldr r5, _08029CC0 @ =gUnknown_03005800
	ldr r1, _08029CC4 @ =gUnknown_084870F4
	adds r0, r5, #0
	movs r2, #0x40
	bl memcpy
	ldr r4, _08029CC8 @ =gUnknown_030057A0
	ldr r1, _08029CCC @ =gUnknown_08486FF4
	adds r0, r4, #0
	movs r2, #0x40
	bl memcpy
	mov r0, sb
	bl DrawBackground
	mov r0, r8
	bl DrawBackground
	adds r0, r6, #0
	bl DrawBackground
	adds r0, r5, #0
	bl DrawBackground
	adds r0, r4, #0
	bl DrawBackground
	ldr r0, _08029CD0 @ =sub_802D2BC
	movs r2, #0x90
	lsls r2, r2, #5
	str r7, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	ldr r6, _08029CD4 @ =gUnknown_08487134
	ldr r5, _08029CD8 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r6
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r4, r1, #0
	ldrb r0, [r0]
	adds r1, r4, r0
	mov r0, r8
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r6
	ldrb r0, [r0]
	adds r4, r4, r0
	mov r0, r8
	adds r1, r4, #0
	movs r2, #1
	movs r3, #0
	bl CreatePaletteLoaderTask
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029C8C: .4byte gUnknown_03005780
_08029C90: .4byte gDispCnt
_08029C94: .4byte gUnknown_03001B70
_08029C98: .4byte 0x00000201
_08029C9C: .4byte 0x00005806
_08029CA0: .4byte 0x00001C0B
_08029CA4: .4byte gUnknown_030020D0
_08029CA8: .4byte gUnknown_03005630
_08029CAC: .4byte gUnknown_08487034
_08029CB0: .4byte gUnknown_030055A0
_08029CB4: .4byte gUnknown_08487074
_08029CB8: .4byte gUnknown_03005740
_08029CBC: .4byte gUnknown_084870B4
_08029CC0: .4byte gUnknown_03005800
_08029CC4: .4byte gUnknown_084870F4
_08029CC8: .4byte gUnknown_030057A0
_08029CCC: .4byte gUnknown_08486FF4
_08029CD0: .4byte sub_802D2BC
_08029CD4: .4byte gUnknown_08487134
_08029CD8: .4byte gCurrentLevel

	thumb_func_start sub_8029CDC
sub_8029CDC: @ 0x08029CDC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _08029DE8 @ =gUnknown_03005780
	ldr r6, _08029DEC @ =gUnknown_03005630
	ldr r7, _08029DF0 @ =gUnknown_030055A0
	ldr r0, _08029DF4 @ =gUnknown_03005740
	mov r8, r0
	ldr r1, _08029DF8 @ =gUnknown_03005800
	mov sb, r1
	ldr r5, _08029DFC @ =gUnknown_03005690
	ldr r0, [r5]
	movs r1, #0x86
	bl __divsi3
	lsls r0, r0, #5
	rsbs r0, r0, #0
	asrs r0, r0, #8
	strh r0, [r4, #4]
	ldr r0, [r5, #4]
	movs r1, #0x5e
	bl __divsi3
	lsls r0, r0, #5
	rsbs r0, r0, #0
	asrs r0, r0, #8
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08029D24
	ldr r0, _08029E00 @ =0x0000FFE0
	strh r0, [r4, #6]
_08029D24:
	movs r2, #6
	ldrsh r0, [r4, r2]
	cmp r0, #0x20
	ble _08029D30
	movs r0, #0x20
	strh r0, [r4, #6]
_08029D30:
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r1
	bge _08029D3A
	strh r1, [r4, #4]
_08029D3A:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x20
	ble _08029D46
	movs r0, #0x20
	strh r0, [r4, #4]
_08029D46:
	ldr r2, _08029E04 @ =gUnknown_030020D0
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r3, #4
	ldrsh r0, [r4, r3]
	subs r0, r1, r0
	cmp r0, #0
	bge _08029D58
	adds r0, #7
_08029D58:
	asrs r0, r0, #3
	strh r0, [r2, #0xc]
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r3, #6
	ldrsh r0, [r4, r3]
	adds r0, r1, r0
	cmp r0, #0
	bge _08029D6C
	adds r0, #7
_08029D6C:
	asrs r0, r0, #3
	strh r0, [r2, #0xe]
	ldrh r0, [r4]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r4, #6]
	ldrh r1, [r4, #2]
	adds r0, r0, r1
	strh r0, [r2, #0xa]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x19
	ldrb r2, [r4, #0x12]
	adds r0, r0, r2
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r4, #0x12]
	movs r0, #0x12
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08029D9A
	adds r0, #3
_08029D9A:
	asrs r0, r0, #2
	adds r0, #0x37
	strh r0, [r6, #0x1c]
	movs r0, #0x12
	ldrsb r0, [r4, r0]
	adds r2, r0, #0
	adds r1, r0, #0
	cmp r1, #0
	bge _08029DAE
	adds r0, r1, #3
_08029DAE:
	asrs r0, r0, #2
	adds r0, #0x37
	strh r0, [r7, #0x1c]
	mov r3, r8
	strh r0, [r3, #0x1c]
	mov r1, sb
	strh r0, [r1, #0x1c]
	ldrh r1, [r6, #0x2e]
	ldr r0, _08029E08 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r6, #0x2e]
	adds r0, r6, #0
	bl DrawBackground
	adds r0, r7, #0
	bl DrawBackground
	mov r0, r8
	bl DrawBackground
	mov r0, sb
	bl DrawBackground
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029DE8: .4byte gUnknown_03005780
_08029DEC: .4byte gUnknown_03005630
_08029DF0: .4byte gUnknown_030055A0
_08029DF4: .4byte gUnknown_03005740
_08029DF8: .4byte gUnknown_03005800
_08029DFC: .4byte gUnknown_03005690
_08029E00: .4byte 0x0000FFE0
_08029E04: .4byte gUnknown_030020D0
_08029E08: .4byte 0x0000FFF7

	thumb_func_start sub_8029E0C
sub_8029E0C: @ 0x08029E0C
	push {r4, lr}
	ldr r1, _08029E9C @ =gUnknown_03005690
	mov ip, r1
	mov r4, ip
	adds r4, #0x4c
	movs r2, #0
	strb r0, [r4]
	mov r0, ip
	str r2, [r0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	movs r3, #0
	ldr r0, _08029EA0 @ =0x0000FFCC
	strh r0, [r1, #0x10]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1, #0x18]
	strh r2, [r1, #0x1a]
	mov r0, ip
	adds r0, #0x2b
	strb r3, [r0]
	subs r0, #3
	strb r3, [r0]
	adds r0, #1
	movs r1, #1
	strb r1, [r0]
	adds r0, #1
	strb r3, [r0]
	mov r0, ip
	strh r2, [r0, #0x2e]
	adds r0, #0x30
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #0xf
	strb r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r1, _08029EA4 @ =gUnknown_084AE008
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x1b
	mov r1, ip
	adds r1, #0x48
	strh r0, [r1]
	adds r1, #2
	movs r0, #4
	strh r0, [r1]
	mov r1, ip
	strh r2, [r1, #0x34]
	mov r0, ip
	adds r0, #0x3f
	strb r3, [r0]
	adds r0, #0x11
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	subs r0, #0x15
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	strh r2, [r1, #0x32]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029E9C: .4byte gUnknown_03005690
_08029EA0: .4byte 0x0000FFCC
_08029EA4: .4byte gUnknown_084AE008

	thumb_func_start sub_8029EA8
sub_8029EA8: @ 0x08029EA8
	push {r4, lr}
	ldr r4, _08029F20 @ =gUnknown_03005690
	ldr r0, _08029F24 @ =gUnknown_030055FC
	mov ip, r0
	ldr r0, _08029F28 @ =0x06010000
	mov r1, ip
	str r0, [r1, #4]
	movs r3, #0
	movs r2, #0
	strh r2, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x48
	ldrh r0, [r0]
	strh r0, [r1, #0xa]
	adds r0, r4, #0
	adds r0, #0x4a
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x20
	strb r1, [r0]
	mov r1, ip
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #0x78
	mov r1, ip
	strh r0, [r1, #0x16]
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	movs r0, #0x50
	subs r0, r0, r1
	mov r1, ip
	strh r0, [r1, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	adds r1, #0x22
	movs r0, #0x10
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	strb r3, [r0]
	ldr r0, _08029F2C @ =0x00002020
	mov r1, ip
	str r0, [r1, #0x10]
	mov r0, ip
	subs r0, #0xc
	strh r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029F20: .4byte gUnknown_03005690
_08029F24: .4byte gUnknown_030055FC
_08029F28: .4byte 0x06010000
_08029F2C: .4byte 0x00002020

	thumb_func_start sub_8029F30
sub_8029F30: @ 0x08029F30
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08029F9A
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08029F64
	adds r1, r2, #0
	adds r1, #0x28
	movs r0, #2
	strb r0, [r1]
	ldrb r1, [r3]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r3]
	bl sub_802A988
	movs r0, #1
	b _08029F9C
_08029F64:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08029F9A
	movs r0, #0x52
	adds r0, r0, r2
	mov ip, r0
	adds r4, r2, #0
	adds r4, #0x50
	ldrh r0, [r0]
	ldrh r1, [r4]
	cmp r0, r1
	beq _08029F9A
	adds r0, r2, #0
	adds r0, #0x28
	strb r5, [r0]
	ldrb r1, [r3]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r3]
	ldrh r0, [r4]
	mov r1, ip
	strh r0, [r1]
	bl sub_802A688
	movs r0, #1
	b _08029F9C
_08029F9A:
	movs r0, #0
_08029F9C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8029FA4
sub_8029FA4: @ 0x08029FA4
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x3e
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08029FC4
	subs r0, r1, #1
	movs r1, #0
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x3d
	strb r1, [r0]
	b _0802A060
_08029FC4:
	adds r1, r3, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0802A01C
	subs r0, r2, #1
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x44
	ldr r1, _0802A010 @ =gUnknown_030060E0
	ldrh r2, [r0]
	ldrh r0, [r1, #2]
	ands r0, r2
	cmp r0, #0
	beq _0802A060
	bl sub_802ACF0
	ldr r2, _0802A014 @ =gMPlayTable
	ldr r0, _0802A018 @ =gSongTable
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl MPlayStop
	movs r0, #0x2b
	movs r1, #0x2a
	bl sub_8025980
	movs r0, #1
	b _0802A062
	.align 2, 0
_0802A010: .4byte gUnknown_030060E0
_0802A014: .4byte gMPlayTable
_0802A018: .4byte gSongTable
_0802A01C:
	adds r0, r3, #0
	adds r0, #0x44
	ldr r1, _0802A04C @ =gUnknown_030060E0
	ldrh r2, [r0]
	ldrh r0, [r1, #2]
	ands r0, r2
	cmp r0, #0
	beq _0802A060
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r0, [r0]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _0802A060
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0802A050
	adds r0, r3, #0
	adds r0, #0x3c
	strb r1, [r0]
	b _0802A058
	.align 2, 0
_0802A04C: .4byte gUnknown_030060E0
_0802A050:
	adds r1, r3, #0
	adds r1, #0x3c
	movs r0, #0xff
	strb r0, [r1]
_0802A058:
	bl sub_802ABA0
	movs r0, #1
	b _0802A062
_0802A060:
	movs r0, #0
_0802A062:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_802A068
sub_802A068: @ 0x0802A068
	adds r2, r0, #0
	adds r0, #0x42
	ldrh r3, [r0]
	movs r0, #0xc0
	ands r0, r3
	cmp r0, #0
	beq _0802A0B4
	ldr r0, _0802A0B0 @ =gUnknown_084871C4
	movs r1, #0xf0
	ands r1, r3
	lsrs r1, r1, #2
	adds r0, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	strh r1, [r2, #0x1e]
	movs r3, #0x16
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _0802A098
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _0802A098
	movs r0, #0
	strh r0, [r2, #0x16]
_0802A098:
	movs r1, #0x16
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0802A0CE
	movs r3, #0x1e
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _0802A0CE
	movs r0, #0
	strh r0, [r2, #0x16]
	b _0802A0CE
	.align 2, 0
_0802A0B0: .4byte gUnknown_084871C4
_0802A0B4:
	movs r1, #0x16
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0802A0BE
	adds r0, #3
_0802A0BE:
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r2, #0x1e]
	cmp r0, #0
	bne _0802A0CE
	ldrh r0, [r2, #0x16]
	rsbs r0, r0, #0
	strh r0, [r2, #0x1e]
_0802A0CE:
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r3, [r0]
	movs r0, #0x30
	ands r0, r3
	cmp r0, #0
	beq _0802A118
	ldr r0, _0802A114 @ =gUnknown_084871C4
	movs r1, #0xf0
	ands r1, r3
	lsrs r1, r1, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	strh r1, [r2, #0x1c]
	movs r3, #0x14
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _0802A0FC
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _0802A0FC
	movs r0, #0
	strh r0, [r2, #0x14]
_0802A0FC:
	movs r1, #0x14
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0802A132
	movs r3, #0x1c
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _0802A132
	movs r0, #0
	strh r0, [r2, #0x14]
	b _0802A132
	.align 2, 0
_0802A114: .4byte gUnknown_084871C4
_0802A118:
	movs r1, #0x14
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0802A122
	adds r0, #3
_0802A122:
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r2, #0x1c]
	cmp r0, #0
	bne _0802A132
	ldrh r0, [r2, #0x14]
	rsbs r0, r0, #0
	strh r0, [r2, #0x1c]
_0802A132:
	bx lr

	thumb_func_start sub_802A134
sub_802A134: @ 0x0802A134
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, _0802A174 @ =gUnknown_030055FC
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802A1A0
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0xc0
	lsls r0, r0, #4
	cmp r1, r0
	bgt _0802A17C
	ldr r1, _0802A178 @ =gUnknown_084AE008
	adds r0, r5, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x1d
	adds r2, r5, #0
	adds r2, #0x48
	movs r1, #0
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x4a
	strh r1, [r0]
	adds r1, r0, #0
	b _0802A218
	.align 2, 0
_0802A174: .4byte gUnknown_030055FC
_0802A178: .4byte gUnknown_084AE008
_0802A17C:
	ldr r1, _0802A19C @ =gUnknown_084AE008
	adds r0, r5, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x1d
	adds r2, r5, #0
	adds r2, #0x48
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0x4a
	movs r0, #1
	strh r0, [r1]
	b _0802A218
	.align 2, 0
_0802A19C: .4byte gUnknown_084AE008
_0802A1A0:
	adds r4, r5, #0
	adds r4, #0x42
	ldrh r1, [r4]
	movs r6, #0xf0
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A1E4
	ldr r2, _0802A1DC @ =gUnknown_08487184
	lsrs r1, r0, #0x12
	adds r1, r1, r2
	ldr r3, _0802A1E0 @ =gUnknown_084AE008
	adds r0, r5, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r3, r5, #0
	adds r3, #0x48
	strh r0, [r3]
	ldrh r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	lsrs r0, r0, #2
	b _0802A20A
	.align 2, 0
_0802A1DC: .4byte gUnknown_08487184
_0802A1E0: .4byte gUnknown_084AE008
_0802A1E4:
	adds r0, r5, #0
	bl sub_802D2F4
	lsls r0, r0, #0x10
	ldr r2, _0802A240 @ =gUnknown_0848715C
	lsrs r0, r0, #0xe
	adds r4, r0, r2
	ldr r3, _0802A244 @ =gUnknown_084AE008
	adds r1, r5, #0
	adds r1, #0x4c
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	ldrh r4, [r4]
	adds r1, r1, r4
	adds r3, r5, #0
	adds r3, #0x48
	strh r1, [r3]
_0802A20A:
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x4a
	strh r0, [r1]
	adds r2, r3, #0
_0802A218:
	ldrh r2, [r2]
	ldrh r0, [r7, #0xa]
	adds r4, r7, #0
	adds r4, #0x20
	cmp r0, r2
	bne _0802A22C
	ldrb r0, [r4]
	ldrh r3, [r1]
	cmp r0, r3
	beq _0802A23A
_0802A22C:
	strh r2, [r7, #0xa]
	ldrh r0, [r1]
	strb r0, [r4]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
_0802A23A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A240: .4byte gUnknown_0848715C
_0802A244: .4byte gUnknown_084AE008

	thumb_func_start sub_802A248
sub_802A248: @ 0x0802A248
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6]
	mov ip, r0
	ldr r2, [r6, #4]
	ldrh r4, [r6, #0x1c]
	ldrh r1, [r6, #0x14]
	adds r3, r4, r1
	strh r3, [r6, #0x14]
	ldrh r5, [r6, #0x1e]
	ldrh r7, [r6, #0x16]
	adds r1, r5, r7
	strh r1, [r6, #0x16]
	ldrh r0, [r6, #0x20]
	ldrh r7, [r6, #0x18]
	adds r0, r0, r7
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	bne _0802A276
	b _0802A37E
_0802A276:
	cmp r0, #1
	bgt _0802A280
	cmp r0, #0
	beq _0802A286
	b _0802A486
_0802A280:
	cmp r0, #5
	ble _0802A286
	b _0802A486
_0802A286:
	movs r0, #0x14
	ldrsh r1, [r6, r0]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bgt _0802A298
	ldr r0, _0802A2DC @ =0xFFFFFC00
	cmp r1, r0
	bge _0802A29A
_0802A298:
	strh r0, [r6, #0x14]
_0802A29A:
	movs r7, #0x16
	ldrsh r1, [r6, r7]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bgt _0802A2AC
	ldr r0, _0802A2DC @ =0xFFFFFC00
	cmp r1, r0
	bge _0802A2AE
_0802A2AC:
	strh r0, [r6, #0x16]
_0802A2AE:
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0xc0
	lsls r0, r0, #4
	cmp r1, r0
	bgt _0802A2C2
	ldr r0, _0802A2E0 @ =0x000007FF
	cmp r1, r0
	bgt _0802A2C4
	adds r0, #1
_0802A2C2:
	strh r0, [r6, #0x18]
_0802A2C4:
	movs r7, #0x18
	ldrsh r1, [r6, r7]
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bne _0802A2E4
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0xfd
	ands r1, r2
	b _0802A2EE
	.align 2, 0
_0802A2DC: .4byte 0xFFFFFC00
_0802A2E0: .4byte 0x000007FF
_0802A2E4:
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #2
	orrs r1, r2
_0802A2EE:
	strb r1, [r0]
	adds r7, r0, #0
	ldrb r1, [r7]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802A358
	ldr r0, [r6, #4]
	asrs r2, r0, #5
	cmp r2, #0
	blt _0802A30E
	movs r1, #0x16
	ldrsh r0, [r6, r1]
	cmp r2, r0
	bge _0802A318
	b _0802A316
_0802A30E:
	movs r1, #0x16
	ldrsh r0, [r6, r1]
	cmp r2, r0
	ble _0802A318
_0802A316:
	strh r2, [r6, #0x16]
_0802A318:
	ldrb r1, [r7]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802A358
	movs r1, #0x14
	ldrsh r0, [r6, r1]
	lsls r0, r0, #3
	ldrh r5, [r6, #0x18]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x18
	adds r1, r5, #0
	bl __divsi3
	ldr r4, [r6]
	adds r4, r4, r0
	str r4, [r6]
	movs r1, #0x16
	ldrsh r0, [r6, r1]
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	ldr r1, [r6, #4]
	adds r1, r1, r0
	asrs r0, r4, #5
	subs r4, r4, r0
	str r4, [r6]
	asrs r0, r1, #5
	subs r1, r1, r0
	str r1, [r6, #4]
	b _0802A36C
_0802A358:
	movs r0, #0x14
	ldrsh r1, [r6, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	movs r0, #0x16
	ldrsh r1, [r6, r0]
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
_0802A36C:
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802A378
	b _0802A486
_0802A378:
	movs r7, #0x18
	ldrsh r1, [r6, r7]
	b _0802A480
_0802A37E:
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r0, [r0]
	cmp r0, #4
	beq _0802A39C
	cmp r0, #5
	beq _0802A408
	movs r1, #0x14
	ldrsh r0, [r6, r1]
	add r0, ip
	str r0, [r6]
	movs r7, #0x16
	ldrsh r0, [r6, r7]
	adds r0, r2, r0
	b _0802A46C
_0802A39C:
	adds r0, r3, r4
	strh r0, [r6, #0x14]
	adds r1, r1, r5
	strh r1, [r6, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	bgt _0802A3B6
	ldr r1, _0802A404 @ =0xFFFFFC00
	cmp r0, r1
	bge _0802A3B8
_0802A3B6:
	strh r1, [r6, #0x14]
_0802A3B8:
	movs r0, #0x16
	ldrsh r1, [r6, r0]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bgt _0802A3CA
	ldr r0, _0802A404 @ =0xFFFFFC00
	cmp r1, r0
	bge _0802A3CC
_0802A3CA:
	strh r0, [r6, #0x16]
_0802A3CC:
	movs r7, #0x14
	ldrsh r1, [r6, r7]
	ldrh r0, [r6, #0x18]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x18
	adds r0, r1, #0
	muls r0, r2, r0
	cmp r0, #0
	bge _0802A3E0
	adds r0, #7
_0802A3E0:
	asrs r0, r0, #3
	strh r0, [r6, #0x14]
	movs r1, #0x16
	ldrsh r0, [r6, r1]
	muls r0, r2, r0
	cmp r0, #0
	bge _0802A3F0
	adds r0, #7
_0802A3F0:
	asrs r0, r0, #3
	strh r0, [r6, #0x16]
	movs r7, #0x14
	ldrsh r1, [r6, r7]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	movs r0, #0x16
	ldrsh r1, [r6, r0]
	b _0802A468
	.align 2, 0
_0802A404: .4byte 0xFFFFFC00
_0802A408:
	adds r0, r3, r4
	strh r0, [r6, #0x14]
	adds r1, r1, r5
	strh r1, [r6, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	bgt _0802A422
	ldr r1, _0802A4B8 @ =0xFFFFFC00
	cmp r0, r1
	bge _0802A424
_0802A422:
	strh r1, [r6, #0x14]
_0802A424:
	movs r7, #0x16
	ldrsh r1, [r6, r7]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bgt _0802A436
	ldr r0, _0802A4B8 @ =0xFFFFFC00
	cmp r1, r0
	bge _0802A438
_0802A436:
	strh r0, [r6, #0x16]
_0802A438:
	movs r1, #0x14
	ldrsh r0, [r6, r1]
	lsls r0, r0, #3
	ldrh r4, [r6, #0x18]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x18
	adds r1, r4, #0
	bl __divsi3
	strh r0, [r6, #0x14]
	movs r7, #0x16
	ldrsh r0, [r6, r7]
	lsls r0, r0, #3
	adds r1, r4, #0
	bl __divsi3
	strh r0, [r6, #0x16]
	movs r0, #0x14
	ldrsh r1, [r6, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	movs r7, #0x16
	ldrsh r1, [r6, r7]
_0802A468:
	ldr r0, [r6, #4]
	adds r0, r0, r1
_0802A46C:
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0802A486
	movs r0, #0x18
	ldrsh r1, [r6, r0]
_0802A480:
	ldr r0, [r6, #8]
	adds r0, r0, r1
	str r0, [r6, #8]
_0802A486:
	ldr r0, [r6]
	ldr r1, _0802A4BC @ =0xFFFF7A00
	cmp r0, r1
	bge _0802A490
	str r1, [r6]
_0802A490:
	ldr r0, [r6]
	movs r1, #0x86
	lsls r1, r1, #8
	cmp r0, r1
	ble _0802A49C
	str r1, [r6]
_0802A49C:
	ldr r0, [r6, #4]
	ldr r1, _0802A4C0 @ =0xFFFFA200
	cmp r0, r1
	bge _0802A4A6
	str r1, [r6, #4]
_0802A4A6:
	ldr r0, [r6, #4]
	movs r1, #0xbc
	lsls r1, r1, #7
	cmp r0, r1
	ble _0802A4B2
	str r1, [r6, #4]
_0802A4B2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A4B8: .4byte 0xFFFFFC00
_0802A4BC: .4byte 0xFFFF7A00
_0802A4C0: .4byte 0xFFFFA200

	thumb_func_start sub_802A4C4
sub_802A4C4: @ 0x0802A4C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, _0802A554 @ =gUnknown_030055FC
	mov sl, r0
	mov r7, sl
	subs r7, #0xc
	movs r3, #0x10
	ldrsh r1, [r6, r3]
	mov r8, r1
	movs r5, #0x90
	lsls r5, r5, #2
	adds r1, r1, r5
	mov sb, r1
	ldr r0, [r6]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r5, #0
	bl __divsi3
	adds r4, r0, #0
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	ldr r0, [r6, #4]
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r5, #0
	bl __divsi3
	lsls r0, r0, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r2, #0
	movs r1, #0x50
	asrs r0, r0, #0x10
	subs r1, r1, r0
	adds r4, #0x78
	ldr r0, _0802A558 @ =gUnknown_03005780
	ldrh r0, [r0, #4]
	adds r4, r4, r0
	strh r4, [r6, #0xc]
	ldr r3, _0802A558 @ =gUnknown_03005780
	ldrh r0, [r3, #6]
	subs r1, r1, r0
	strh r1, [r6, #0xe]
	mov r0, sl
	strh r4, [r0, #0x16]
	strh r1, [r0, #0x18]
	strh r4, [r7, #6]
	strh r1, [r7, #8]
	strh r2, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	add r8, r1
	mov r3, r8
	strh r3, [r7, #2]
	strh r3, [r7, #4]
	ldr r0, _0802A55C @ =0x00002020
	mov r1, sl
	str r0, [r1, #0x10]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A554: .4byte gUnknown_030055FC
_0802A558: .4byte gUnknown_03005780
_0802A55C: .4byte 0x00002020

	thumb_func_start sub_802A560
sub_802A560: @ 0x0802A560
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _0802A5C4 @ =gUnknown_03005690
	ldr r5, _0802A5C8 @ =gUnknown_030055FC
	movs r0, #0xc
	rsbs r0, r0, #0
	adds r0, r0, r5
	mov r8, r0
	ldr r0, _0802A5CC @ =gInput
	ldrh r0, [r0]
	adds r7, r4, #0
	adds r7, #0x42
	movs r6, #0
	strh r0, [r7]
	ldr r0, _0802A5D0 @ =gPressedKeys
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x44
	strh r1, [r0]
	subs r0, #0x1a
	ldrb r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0802A5DC
	movs r0, #0x78
	strh r0, [r4, #0x32]
	ldr r0, [r4]
	rsbs r0, r0, #0
	movs r1, #0x78
	bl __divsi3
	strh r0, [r4, #0x14]
	ldr r0, [r4, #4]
	rsbs r0, r0, #0
	movs r1, #0x78
	bl __divsi3
	strh r0, [r4, #0x16]
	strh r6, [r4, #0x1c]
	strh r6, [r4, #0x1e]
	ldr r0, _0802A5D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802A5D8 @ =sub_802AE40
	str r0, [r1, #8]
	bl _call_via_r0
	b _0802A67C
	.align 2, 0
_0802A5C4: .4byte gUnknown_03005690
_0802A5C8: .4byte gUnknown_030055FC
_0802A5CC: .4byte gInput
_0802A5D0: .4byte gPressedKeys
_0802A5D4: .4byte gCurTask
_0802A5D8: .4byte sub_802AE40
_0802A5DC:
	adds r0, r4, #0
	bl sub_8029F30
	cmp r0, #0
	bne _0802A67C
	adds r0, r4, #0
	bl sub_8029FA4
	cmp r0, #0
	bne _0802A67C
	ldrh r0, [r4, #0x12]
	adds r0, #0x10
	ldr r2, _0802A630 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x12]
	ldr r1, _0802A634 @ =gSineTable
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1a
	strh r0, [r4, #0x10]
	ldr r0, _0802A638 @ =gUnknown_030060E0
	ldrh r1, [r7]
	ldrh r0, [r0]
	ands r0, r1
	adds r2, r4, #0
	adds r2, #0x29
	cmp r0, #0
	beq _0802A63C
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0802A63C
	movs r0, #0x80
	lsls r0, r0, #1
	b _0802A64E
	.align 2, 0
_0802A630: .4byte 0x000003FF
_0802A634: .4byte gSineTable
_0802A638: .4byte gUnknown_030060E0
_0802A63C:
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802A64E
	movs r0, #0xff
	lsls r0, r0, #8
_0802A64E:
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_802A068
	adds r0, r4, #0
	bl sub_802A134
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	mov r1, r8
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
_0802A67C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_802A688
sub_802A688: @ 0x0802A688
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _0802A738 @ =gUnknown_03005690
	ldr r0, _0802A73C @ =gUnknown_030055FC
	mov r8, r0
	movs r1, #0xc
	rsbs r1, r1, #0
	add r1, r8
	mov sb, r1
	adds r0, r7, #0
	adds r0, #0x54
	ldrh r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, _0802A740 @ =gUnknown_08487214
	lsls r3, r6, #2
	adds r4, r3, r2
	ldr r1, _0802A744 @ =gUnknown_084AE008
	adds r0, r7, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r4, [r4]
	adds r1, r1, r4
	adds r0, r7, #0
	adds r0, #0x48
	strh r1, [r0]
	adds r2, #2
	adds r3, r3, r2
	ldrh r2, [r3]
	adds r0, #2
	strh r2, [r0]
	mov r0, r8
	strh r1, [r0, #0xa]
	adds r0, #0x20
	strb r2, [r0]
	mov r1, r8
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802A74C
	lsls r5, r6, #1
	adds r4, r5, r6
	lsls r4, r4, #1
	ldr r1, _0802A748 @ =gUnknown_0848722C
	adds r0, r4, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #2
	movs r1, #3
	bl __divsi3
	strh r0, [r7, #0x14]
	ldr r0, _0802A748 @ =gUnknown_0848722C
	adds r0, #2
	adds r0, r4, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #2
	movs r1, #3
	bl __divsi3
	strh r0, [r7, #0x16]
	ldr r0, _0802A748 @ =gUnknown_0848722C
	adds r0, #4
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	movs r1, #3
	bl __divsi3
	strh r0, [r7, #0x18]
	ldr r2, _0802A748 @ =gUnknown_0848722C
	adds r3, r5, #0
	b _0802A76A
	.align 2, 0
_0802A738: .4byte gUnknown_03005690
_0802A73C: .4byte gUnknown_030055FC
_0802A740: .4byte gUnknown_08487214
_0802A744: .4byte gUnknown_084AE008
_0802A748: .4byte gUnknown_0848722C
_0802A74C:
	ldr r2, _0802A808 @ =gUnknown_0848722C
	lsls r3, r6, #1
	adds r1, r3, r6
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrh r0, [r0]
	strh r0, [r7, #0x14]
	adds r0, r2, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r7, #0x16]
	adds r0, r2, #4
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7, #0x18]
_0802A76A:
	cmp r6, #0
	beq _0802A820
	cmp r6, #1
	beq _0802A828
	adds r1, r3, r6
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	rsbs r0, r0, #0
	strh r0, [r7, #0x1c]
	adds r0, r2, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	rsbs r0, r0, #0
	strh r0, [r7, #0x1e]
	ldr r0, _0802A80C @ =0x0000FFE0
	strh r0, [r7, #0x20]
	movs r1, #0x14
	ldrsh r0, [r7, r1]
	bl __floatsidf
	ldr r2, _0802A810 @ =0x3FF80000
	ldr r3, _0802A814 @ =0x00000000
	bl __muldf3
	bl __fixdfsi
	strh r0, [r7, #0x14]
	movs r1, #0x16
	ldrsh r0, [r7, r1]
	bl __floatsidf
	ldr r2, _0802A810 @ =0x3FF80000
	ldr r3, _0802A814 @ =0x00000000
	bl __muldf3
	bl __fixdfsi
	strh r0, [r7, #0x16]
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	bl __floatsidf
	ldr r2, _0802A810 @ =0x3FF80000
	ldr r3, _0802A814 @ =0x00000000
	bl __muldf3
	bl __fixdfsi
	strh r0, [r7, #0x18]
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	bl __floatsidf
	ldr r2, _0802A818 @ =0x40080000
	ldr r3, _0802A81C @ =0x00000000
	bl __muldf3
	bl __fixdfsi
	strh r0, [r7, #0x1c]
	movs r1, #0x1e
	ldrsh r0, [r7, r1]
	bl __floatsidf
	ldr r2, _0802A818 @ =0x40080000
	ldr r3, _0802A81C @ =0x00000000
	bl __muldf3
	bl __fixdfsi
	strh r0, [r7, #0x1e]
	movs r0, #0x60
	rsbs r0, r0, #0
	b _0802A830
	.align 2, 0
_0802A808: .4byte gUnknown_0848722C
_0802A80C: .4byte 0x0000FFE0
_0802A810: .4byte 0x3FF80000
_0802A814: .4byte 0x00000000
_0802A818: .4byte 0x40080000
_0802A81C: .4byte 0x00000000
_0802A820:
	strh r6, [r7, #0x1c]
	strh r6, [r7, #0x1e]
	movs r0, #0x40
	b _0802A830
_0802A828:
	movs r0, #0
	strh r0, [r7, #0x1c]
	strh r0, [r7, #0x1e]
	ldr r0, _0802A880 @ =0x0000FFC0
_0802A830:
	strh r0, [r7, #0x20]
	ldr r0, _0802A884 @ =gUnknown_03005730
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A840
	movs r0, #0x94
	bl m4aSongNumStart
_0802A840:
	adds r2, r7, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0xf9
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	bl sub_802A248
	adds r0, r7, #0
	bl sub_802A4C4
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	mov r1, sb
	bl sub_802BE0C
	mov r0, r8
	bl DisplaySprite
	ldr r0, _0802A888 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802A88C @ =sub_802A890
	str r0, [r1, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A880: .4byte 0x0000FFC0
_0802A884: .4byte gUnknown_03005730
_0802A888: .4byte gCurTask
_0802A88C: .4byte sub_802A890

	thumb_func_start sub_802A890
sub_802A890: @ 0x0802A890
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _0802A8DC @ =gUnknown_03005690
	ldr r5, _0802A8E0 @ =gUnknown_030055FC
	movs r0, #0xc
	rsbs r0, r0, #0
	adds r0, r0, r5
	mov r8, r0
	movs r7, #0
	ldr r0, _0802A8E4 @ =gInput
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, _0802A8E8 @ =gPressedKeys
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x44
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0802A8CA
	subs r0, r2, #1
	strb r0, [r1]
_0802A8CA:
	adds r0, r4, #0
	adds r0, #0x54
	ldrh r1, [r0]
	adds r6, r0, #0
	cmp r1, #4
	beq _0802A8EC
	cmp r1, #5
	beq _0802A8FC
	b _0802A902
	.align 2, 0
_0802A8DC: .4byte gUnknown_03005690
_0802A8E0: .4byte gUnknown_030055FC
_0802A8E4: .4byte gInput
_0802A8E8: .4byte gPressedKeys
_0802A8EC:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0802A902
	adds r0, r4, #0
	bl sub_802A068
	b _0802A902
_0802A8FC:
	adds r0, r4, #0
	bl sub_802A068
_0802A902:
	adds r0, r4, #0
	bl sub_8029F30
	cmp r0, #0
	bne _0802A976
	ldrh r0, [r6]
	cmp r0, #4
	bne _0802A924
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, _0802A920 @ =0x000007FF
	cmp r1, r0
	ble _0802A932
	b _0802A936
	.align 2, 0
_0802A920: .4byte 0x000007FF
_0802A924:
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bgt _0802A932
	movs r7, #1
_0802A932:
	cmp r7, #0
	beq _0802A956
_0802A936:
	ldr r0, _0802A980 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802A984 @ =sub_802A560
	str r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x28
	movs r1, #0
	strb r1, [r0]
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #0x18]
	strh r1, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x3e
	strb r2, [r0]
_0802A956:
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	mov r1, r8
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
_0802A976:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A980: .4byte gCurTask
_0802A984: .4byte sub_802A560

	thumb_func_start sub_802A988
sub_802A988: @ 0x0802A988
	push {r4, r5, r6, lr}
	ldr r4, _0802AA2C @ =gUnknown_03005690
	ldr r5, _0802AA30 @ =gUnknown_030055FC
	adds r6, r5, #0
	subs r6, #0xc
	ldr r0, _0802AA34 @ =gUnknown_03005078
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802A9AC
	bl sub_802AAF0
	ldr r0, _0802AA38 @ =gUnknown_03005730
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A9AC
	movs r0, #0x76
	bl m4aSongNumStart
_0802A9AC:
	ldr r1, _0802AA3C @ =gUnknown_084AE008
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x20
	adds r1, r4, #0
	adds r1, #0x48
	movs r2, #0
	strh r0, [r1]
	adds r3, r4, #0
	adds r3, #0x4a
	strh r2, [r3]
	ldrh r0, [r1]
	strh r0, [r5, #0xa]
	ldrh r1, [r3]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0x16]
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4, #0x18]
	strh r2, [r4, #0x1c]
	strh r2, [r4, #0x1e]
	strh r2, [r4, #0x20]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x3c
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0802AA40 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802AA44 @ =sub_802AA48
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AA2C: .4byte gUnknown_03005690
_0802AA30: .4byte gUnknown_030055FC
_0802AA34: .4byte gUnknown_03005078
_0802AA38: .4byte gUnknown_03005730
_0802AA3C: .4byte gUnknown_084AE008
_0802AA40: .4byte gCurTask
_0802AA44: .4byte sub_802AA48

	thumb_func_start sub_802AA48
sub_802AA48: @ 0x0802AA48
	push {r4, r5, r6, lr}
	ldr r4, _0802AAD8 @ =gUnknown_03005690
	ldr r5, _0802AADC @ =gUnknown_030055FC
	adds r6, r5, #0
	subs r6, #0xc
	ldr r0, _0802AAE0 @ =gInput
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	ldr r0, _0802AAE4 @ =gPressedKeys
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x44
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0802AA7A
	subs r0, r2, #1
	strb r0, [r1]
_0802AA7A:
	ldrh r0, [r4, #0x34]
	subs r0, #1
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802AA98
	ldr r0, _0802AAE8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802AAEC @ =sub_802A560
	str r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x28
	strb r3, [r0]
	adds r0, #0x16
	strb r3, [r0]
_0802AA98:
	movs r1, #0x34
	ldrsh r0, [r4, r1]
	cmp r0, #0x1e
	bgt _0802AAA6
	adds r0, r4, #0
	bl sub_802A068
_0802AAA6:
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	ldrh r1, [r4, #0x34]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802AAD0
	adds r0, r5, #0
	bl DisplaySprite
_0802AAD0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AAD8: .4byte gUnknown_03005690
_0802AADC: .4byte gUnknown_030055FC
_0802AAE0: .4byte gInput
_0802AAE4: .4byte gPressedKeys
_0802AAE8: .4byte gCurTask
_0802AAEC: .4byte sub_802A560

	thumb_func_start sub_802AAF0
sub_802AAF0: @ 0x0802AAF0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, _0802AB04 @ =gUnknown_03005690
	ldr r1, _0802AB08 @ =gUnknown_03005078
	ldrh r0, [r1]
	cmp r0, #9
	bls _0802AB0C
	movs r5, #0xa
	subs r0, #0xa
	b _0802AB10
	.align 2, 0
_0802AB04: .4byte gUnknown_03005690
_0802AB08: .4byte gUnknown_03005078
_0802AB0C:
	ldrh r5, [r1]
	movs r0, #0
_0802AB10:
	strh r0, [r1]
	adds r7, r5, #0
	cmp r5, #0
	beq _0802AB86
	movs r4, #0
_0802AB1A:
	str r4, [sp]
	ldr r0, _0802AB90 @ =sub_802C6C4
	movs r1, #0x74
	movs r2, #0xa8
	lsls r2, r2, #5
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	subs r3, r5, #1
	ldr r5, _0802AB94 @ =0x0300006A
	adds r0, r1, r5
	strb r3, [r0]
	adds r5, #1
	adds r0, r1, r5
	strb r7, [r0]
	ldr r0, [r6]
	str r0, [r2, #0x3c]
	ldr r0, [r6, #4]
	str r0, [r2, #0x40]
	ldr r0, [r6, #8]
	str r0, [r2, #0x44]
	ldr r2, _0802AB98 @ =0x03000052
	adds r0, r1, r2
	strh r4, [r0]
	subs r5, #0x17
	adds r0, r1, r5
	strh r4, [r0]
	adds r2, #4
	adds r0, r1, r2
	strh r4, [r0]
	adds r5, #4
	adds r0, r1, r5
	strh r4, [r0]
	adds r2, #4
	adds r0, r1, r2
	strh r4, [r0]
	adds r5, #4
	adds r0, r1, r5
	strh r4, [r0]
	adds r2, #6
	adds r0, r1, r2
	strh r4, [r0]
	adds r5, #0xc
	adds r1, r1, r5
	ldr r0, _0802AB9C @ =0x0000FFFF
	strh r0, [r1]
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	cmp r5, #0
	bne _0802AB1A
_0802AB86:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802AB90: .4byte sub_802C6C4
_0802AB94: .4byte 0x0300006A
_0802AB98: .4byte 0x03000052
_0802AB9C: .4byte 0x0000FFFF

	thumb_func_start sub_802ABA0
sub_802ABA0: @ 0x0802ABA0
	push {r4, r5, r6, lr}
	ldr r4, _0802AC38 @ =gUnknown_03005690
	ldr r5, _0802AC3C @ =gUnknown_030055FC
	adds r6, r5, #0
	subs r6, #0xc
	ldr r1, _0802AC40 @ =gUnknown_084AE008
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x1e
	adds r1, r4, #0
	adds r1, #0x48
	movs r2, #0
	strh r0, [r1]
	adds r1, #2
	strh r2, [r1]
	strh r0, [r5, #0xa]
	movs r1, #0
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0x16]
	strh r2, [r4, #0x1c]
	strh r2, [r4, #0x1e]
	strh r2, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #3
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x2d
	strh r0, [r4, #0x3a]
	ldr r0, _0802AC44 @ =gUnknown_03005730
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802AC08
	movs r0, #0x95
	bl m4aSongNumStart
_0802AC08:
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0802AC48 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802AC4C @ =sub_802AC50
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AC38: .4byte gUnknown_03005690
_0802AC3C: .4byte gUnknown_030055FC
_0802AC40: .4byte gUnknown_084AE008
_0802AC44: .4byte gUnknown_03005730
_0802AC48: .4byte gCurTask
_0802AC4C: .4byte sub_802AC50

	thumb_func_start sub_802AC50
sub_802AC50: @ 0x0802AC50
	push {r4, r5, r6, lr}
	ldr r4, _0802ACDC @ =gUnknown_03005690
	ldr r5, _0802ACE0 @ =gUnknown_030055FC
	adds r6, r5, #0
	subs r6, #0xc
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0802AC6C
	subs r0, r2, #1
	strb r0, [r1]
_0802AC6C:
	adds r0, r4, #0
	bl sub_8029F30
	cmp r0, #0
	bne _0802ACD6
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802AC8A
	ldr r0, _0802ACE4 @ =0x0000FF80
_0802AC8A:
	strh r0, [r4, #0x20]
	ldrh r0, [r4, #0x3a]
	subs r0, #1
	strh r0, [r4, #0x3a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802ACB6
	ldr r0, _0802ACE8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802ACEC @ =sub_802A560
	str r0, [r1, #8]
	ldrb r1, [r2]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x16
	movs r0, #0xc
	strb r0, [r1]
_0802ACB6:
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
_0802ACD6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802ACDC: .4byte gUnknown_03005690
_0802ACE0: .4byte gUnknown_030055FC
_0802ACE4: .4byte 0x0000FF80
_0802ACE8: .4byte gCurTask
_0802ACEC: .4byte sub_802A560

	thumb_func_start sub_802ACF0
sub_802ACF0: @ 0x0802ACF0
	push {r4, r5, r6, lr}
	ldr r4, _0802AD84 @ =gUnknown_03005690
	ldr r5, _0802AD88 @ =gUnknown_030055FC
	adds r6, r5, #0
	subs r6, #0xc
	ldr r1, _0802AD8C @ =gUnknown_084AE008
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x1f
	adds r1, r4, #0
	adds r1, #0x48
	movs r2, #0
	strh r0, [r1]
	adds r1, #2
	strh r2, [r1]
	strh r0, [r5, #0xa]
	movs r1, #0
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0x16]
	strh r2, [r4, #0x1c]
	strh r2, [r4, #0x1e]
	strh r2, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #4
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0802AD90 @ =gUnknown_03005730
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802AD54
	movs r0, #0x95
	bl m4aSongNumStart
_0802AD54:
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0802AD94 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802AD98 @ =sub_802AD9C
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AD84: .4byte gUnknown_03005690
_0802AD88: .4byte gUnknown_030055FC
_0802AD8C: .4byte gUnknown_084AE008
_0802AD90: .4byte gUnknown_03005730
_0802AD94: .4byte gCurTask
_0802AD98: .4byte sub_802AD9C

	thumb_func_start sub_802AD9C
sub_802AD9C: @ 0x0802AD9C
	push {r4, r5, r6, lr}
	ldr r4, _0802AE2C @ =gUnknown_03005690
	ldr r5, _0802AE30 @ =gUnknown_030055FC
	adds r6, r5, #0
	subs r6, #0xc
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0802ADB8
	subs r0, r2, #1
	strb r0, [r1]
_0802ADB8:
	adds r0, r4, #0
	bl sub_8029F30
	cmp r0, #0
	bne _0802AE24
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802ADD6
	ldr r0, _0802AE34 @ =0x0000FF80
_0802ADD6:
	strh r0, [r4, #0x20]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802AE04
	ldr r0, _0802AE38 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802AE3C @ =sub_802A560
	str r0, [r1, #8]
	ldrb r1, [r2]
	movs r0, #0xdf
	ands r0, r1
	movs r1, #0
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x28
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x3e
	movs r0, #0xc
	strb r0, [r1]
_0802AE04:
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
_0802AE24:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AE2C: .4byte gUnknown_03005690
_0802AE30: .4byte gUnknown_030055FC
_0802AE34: .4byte 0x0000FF80
_0802AE38: .4byte gCurTask
_0802AE3C: .4byte sub_802A560

	thumb_func_start sub_802AE40
sub_802AE40: @ 0x0802AE40
	push {r4, r5, r6, lr}
	ldr r4, _0802AF04 @ =gUnknown_03005690
	ldr r6, _0802AF08 @ =gUnknown_030055FC
	adds r5, r6, #0
	subs r5, #0xc
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r0, [r4, #0x12]
	adds r0, #0x10
	ldr r2, _0802AF0C @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x12]
	ldr r1, _0802AF10 @ =gSineTable
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1a
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802AE8A
	movs r0, #0xff
	lsls r0, r0, #8
_0802AE8A:
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_802A134
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_802BE0C
	adds r0, r6, #0
	bl DisplaySprite
	ldrh r0, [r4, #0x32]
	subs r0, #1
	strh r0, [r4, #0x32]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _0802AEC2
	b _0802AFF6
_0802AEC2:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0x40
	bne _0802AF64
	ldr r0, _0802AF14 @ =gUnknown_03005028
	ldr r1, _0802AF18 @ =gUnknown_03005078
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bhi _0802AF28
	movs r0, #0xa5
	lsls r0, r0, #1
	strh r0, [r4, #0x32]
	ldr r1, _0802AF1C @ =gUnknown_084AE008
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x21
	adds r5, r4, #0
	adds r5, #0x48
	strh r0, [r5]
	adds r4, #0x4a
	strh r2, [r4]
	ldr r0, _0802AF20 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802AF24 @ =sub_802B07C
	str r0, [r1, #8]
	b _0802AF98
	.align 2, 0
_0802AF04: .4byte gUnknown_03005690
_0802AF08: .4byte gUnknown_030055FC
_0802AF0C: .4byte 0x000003FF
_0802AF10: .4byte gSineTable
_0802AF14: .4byte gUnknown_03005028
_0802AF18: .4byte gUnknown_03005078
_0802AF1C: .4byte gUnknown_084AE008
_0802AF20: .4byte gCurTask
_0802AF24: .4byte sub_802B07C
_0802AF28:
	strh r2, [r4, #0x32]
	ldr r1, _0802AF58 @ =gUnknown_084AE008
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x22
	adds r5, r4, #0
	adds r5, #0x48
	strh r0, [r5]
	adds r4, #0x4a
	strh r2, [r4]
	ldr r0, _0802AF5C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802AF60 @ =sub_802B008
	str r0, [r1, #8]
	bl sub_802B214
	movs r0, #1
	bl sub_802C56C
	b _0802AFE2
	.align 2, 0
_0802AF58: .4byte gUnknown_084AE008
_0802AF5C: .4byte gCurTask
_0802AF60: .4byte sub_802B008
_0802AF64:
	ldr r0, _0802AFA0 @ =gUnknown_03005070
	ldr r1, _0802AFA4 @ =gUnknown_03005078
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bhi _0802AFB4
	ldr r1, _0802AFA8 @ =gUnknown_084AE008
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x21
	adds r5, r4, #0
	adds r5, #0x48
	strh r0, [r5]
	adds r4, #0x4a
	strh r2, [r4]
	ldr r0, _0802AFAC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802AFB0 @ =sub_802B18C
	str r0, [r1, #8]
	movs r0, #0x2c
	bl m4aSongNumStart
_0802AF98:
	movs r0, #0
	bl sub_802C56C
	b _0802AFE2
	.align 2, 0
_0802AFA0: .4byte gUnknown_03005070
_0802AFA4: .4byte gUnknown_03005078
_0802AFA8: .4byte gUnknown_084AE008
_0802AFAC: .4byte gCurTask
_0802AFB0: .4byte sub_802B18C
_0802AFB4:
	strh r2, [r4, #0x32]
	ldr r1, _0802AFFC @ =gUnknown_084AE008
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x22
	adds r5, r4, #0
	adds r5, #0x48
	strh r0, [r5]
	adds r4, #0x4a
	strh r2, [r4]
	ldr r0, _0802B000 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802B004 @ =sub_802B008
	str r0, [r1, #8]
	bl sub_802B214
	movs r0, #1
	bl sub_802C56C
_0802AFE2:
	ldrh r0, [r5]
	strh r0, [r6, #0xa]
	ldrh r1, [r4]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
_0802AFF6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AFFC: .4byte gUnknown_084AE008
_0802B000: .4byte gCurTask
_0802B004: .4byte sub_802B008

	thumb_func_start sub_802B008
sub_802B008: @ 0x0802B008
	push {r4, r5, r6, lr}
	ldr r4, _0802B074 @ =gUnknown_03005690
	ldr r5, _0802B078 @ =gUnknown_030055FC
	adds r6, r5, #0
	subs r6, #0xc
	ldrh r2, [r4, #0x32]
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r0, #0x78
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0802B06E
	subs r0, r2, #1
	movs r1, #0
	strh r0, [r4, #0x32]
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	subs r0, #0x1b
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802B046
	movs r0, #0xff
	lsls r0, r0, #8
_0802B046:
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_802A068
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
_0802B06E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802B074: .4byte gUnknown_03005690
_0802B078: .4byte gUnknown_030055FC

	thumb_func_start sub_802B07C
sub_802B07C: @ 0x0802B07C
	push {r4, r5, r6, r7, lr}
	ldr r4, _0802B168 @ =gUnknown_03005690
	ldr r5, _0802B16C @ =gUnknown_030055FC
	adds r7, r5, #0
	subs r7, #0xc
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r0, [r4, #0x12]
	adds r0, #0x10
	ldr r2, _0802B170 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x12]
	ldr r1, _0802B174 @ =gSineTable
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1a
	strh r0, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0
	beq _0802B0C8
	movs r0, #0xff
	lsls r0, r0, #8
_0802B0C8:
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_802A068
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0xb4
	bne _0802B110
	ldr r1, _0802B178 @ =gUnknown_03005154
	ldr r0, _0802B17C @ =gUnknown_03005070
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0x8c
	lsls r0, r0, #5
	ldr r1, _0802B180 @ =0x00001181
	bl TasksDestroyInPriorityRange
	movs r0, #0
	bl sub_805C448
_0802B110:
	ldrh r1, [r4, #0x32]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0802B13C
	subs r0, r1, #1
	strh r0, [r4, #0x32]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802B13C
	adds r2, r4, #0
	adds r2, #0x4a
	movs r1, #1
	movs r0, #1
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
_0802B13C:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802B160
	ldr r0, _0802B184 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802B188 @ =sub_802A560
	str r0, [r1, #8]
	movs r0, #0
	strb r0, [r6]
	adds r1, r4, #0
	adds r1, #0x2a
	strb r0, [r1]
	adds r1, #0x14
	movs r0, #0xc
	strb r0, [r1]
_0802B160:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B168: .4byte gUnknown_03005690
_0802B16C: .4byte gUnknown_030055FC
_0802B170: .4byte 0x000003FF
_0802B174: .4byte gSineTable
_0802B178: .4byte gUnknown_03005154
_0802B17C: .4byte gUnknown_03005070
_0802B180: .4byte 0x00001181
_0802B184: .4byte gCurTask
_0802B188: .4byte sub_802A560

	thumb_func_start sub_802B18C
sub_802B18C: @ 0x0802B18C
	push {r4, r5, r6, lr}
	ldr r4, _0802B204 @ =gUnknown_03005690
	ldr r5, _0802B208 @ =gUnknown_030055FC
	adds r6, r5, #0
	subs r6, #0xc
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r0, [r4, #0x12]
	adds r0, #0x10
	ldr r2, _0802B20C @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x12]
	ldr r1, _0802B210 @ =gSineTable
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1a
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802B1D6
	movs r0, #0xff
	lsls r0, r0, #8
_0802B1D6:
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	bl sub_802A068
	adds r0, r4, #0
	bl sub_802A248
	adds r0, r4, #0
	bl sub_802A4C4
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802B204: .4byte gUnknown_03005690
_0802B208: .4byte gUnknown_030055FC
_0802B20C: .4byte 0x000003FF
_0802B210: .4byte gSineTable

	thumb_func_start sub_802B214
sub_802B214: @ 0x0802B214
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0802B380 @ =gUnknown_03005690
	mov sb, r0
	ldr r0, _0802B384 @ =sub_802D508
	ldr r2, _0802B388 @ =0x000010FF
	movs r1, #0
	mov r8, r1
	str r1, [sp]
	movs r1, #0x74
	movs r3, #0
	bl TaskCreate
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r7, r0
	mov r2, sb
	ldr r0, [r2]
	str r0, [r5, #0x3c]
	ldr r0, [r2, #4]
	str r0, [r5, #0x40]
	ldr r0, [r2, #8]
	ldr r3, _0802B38C @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r5, #0x44]
	ldrh r1, [r2, #0x10]
	ldr r4, _0802B390 @ =0x03000050
	adds r0, r7, r4
	strh r1, [r0]
	ldr r1, _0802B394 @ =0x03000052
	adds r0, r7, r1
	mov r2, r8
	strh r2, [r0]
	ldr r3, _0802B398 @ =0x03000054
	adds r0, r7, r3
	strh r2, [r0]
	adds r4, #6
	adds r0, r7, r4
	strh r2, [r0]
	ldr r3, _0802B39C @ =gUnknown_03004C58
	ldr r1, [r3]
	ldr r0, _0802B3A0 @ =0x00196225
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _0802B3A4 @ =0x3C6EF35F
	adds r2, r2, r0
	str r2, [r3]
	movs r1, #0xf
	adds r0, r2, #0
	ands r0, r1
	ldr r1, _0802B3A8 @ =0x03000058
	adds r3, r7, r1
	strh r0, [r3]
	movs r0, #0x70
	ands r0, r2
	asrs r0, r0, #4
	rsbs r0, r0, #0
	adds r4, #4
	adds r1, r7, r4
	strh r0, [r1]
	ldr r0, _0802B3AC @ =0x0300005C
	adds r1, r7, r0
	ldr r0, _0802B3B0 @ =0x0000FFF0
	strh r0, [r1]
	movs r0, #0x80
	ands r2, r0
	cmp r2, #0
	beq _0802B2AC
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_0802B2AC:
	ldr r1, _0802B3B4 @ =0x0300006E
	adds r0, r7, r1
	mov r2, r8
	strh r2, [r0]
	ldr r3, _0802B3B8 @ =0x03000060
	adds r1, r7, r3
	movs r0, #0xe
	strh r0, [r1]
	ldr r1, _0802B3BC @ =gUnknown_084AE008
	mov r0, sb
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x22
	ldr r4, _0802B3C0 @ =0x03000062
	adds r1, r7, r4
	strh r0, [r1]
	ldr r0, _0802B3C4 @ =0x03000064
	adds r2, r7, r0
	movs r0, #1
	strh r0, [r2]
	adds r3, #7
	adds r0, r7, r3
	movs r4, #0
	strb r4, [r0]
	ldr r0, _0802B3C8 @ =0x0300000C
	adds r4, r7, r0
	ldr r0, _0802B3CC @ =0x06011400
	str r0, [r4, #4]
	mov r3, r8
	strh r3, [r4, #8]
	ldrh r0, [r1]
	strh r0, [r4, #0xa]
	ldrh r1, [r2]
	ldr r2, _0802B3D0 @ =0x0300002C
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, _0802B3D4 @ =0x0300002D
	adds r1, r7, r3
	movs r0, #0xff
	strb r0, [r1]
	mov r0, r8
	strh r0, [r4, #0x1c]
	ldr r1, _0802B3D8 @ =0x0300002E
	adds r6, r7, r1
	movs r2, #0x10
	mov sl, r2
	mov r3, sl
	strb r3, [r6]
	mov r1, sb
	ldr r0, [r1, #8]
	asrs r0, r0, #8
	ldr r1, [r5, #0x44]
	asrs r1, r1, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_802D58C
	ldr r3, _0802B3DC @ =0x03000066
	adds r2, r7, r3
	strb r0, [r2]
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r4, #0x16]
	ldr r1, [r5, #0x40]
	asrs r1, r1, #8
	movs r0, #0x50
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	mov r0, r8
	strh r0, [r4, #0x1c]
	mov r1, sl
	strb r1, [r6]
	subs r3, #0x35
	adds r0, r7, r3
	movs r1, #0
	strb r1, [r0]
	ldrb r0, [r2]
	ldr r1, _0802B3E0 @ =0x00002020
	orrs r0, r1
	str r0, [r4, #0x10]
	mov r2, r8
	strh r2, [r5]
	movs r0, #0x40
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	ldrh r0, [r4, #0x16]
	strh r0, [r5, #6]
	ldrh r0, [r4, #0x18]
	strh r0, [r5, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B380: .4byte gUnknown_03005690
_0802B384: .4byte sub_802D508
_0802B388: .4byte 0x000010FF
_0802B38C: .4byte 0xFFFFFF00
_0802B390: .4byte 0x03000050
_0802B394: .4byte 0x03000052
_0802B398: .4byte 0x03000054
_0802B39C: .4byte gUnknown_03004C58
_0802B3A0: .4byte 0x00196225
_0802B3A4: .4byte 0x3C6EF35F
_0802B3A8: .4byte 0x03000058
_0802B3AC: .4byte 0x0300005C
_0802B3B0: .4byte 0x0000FFF0
_0802B3B4: .4byte 0x0300006E
_0802B3B8: .4byte 0x03000060
_0802B3BC: .4byte gUnknown_084AE008
_0802B3C0: .4byte 0x03000062
_0802B3C4: .4byte 0x03000064
_0802B3C8: .4byte 0x0300000C
_0802B3CC: .4byte 0x06011400
_0802B3D0: .4byte 0x0300002C
_0802B3D4: .4byte 0x0300002D
_0802B3D8: .4byte 0x0300002E
_0802B3DC: .4byte 0x03000066
_0802B3E0: .4byte 0x00002020

	thumb_func_start sub_802B3E4
sub_802B3E4: @ 0x0802B3E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0802B4A4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0802B4A8 @ =gUnknown_03005690
	mov sb, r0
	ldr r3, _0802B4AC @ =gUnknown_030055E0
	ldr r2, _0802B4B0 @ =gUnknown_087BF8DC
	ldr r1, _0802B4B4 @ =gUnknown_08487134
	ldr r0, _0802B4B8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r5, [r0]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0802B41E
	b _0802B5BA
_0802B41E:
	ldrb r0, [r3]
	cmp r0, #1
	bne _0802B426
	b _0802B5BA
_0802B426:
	ldrh r2, [r4, #2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r3, sb
	ldr r1, [r3, #8]
	asrs r1, r1, #8
	movs r7, #0xc0
	lsls r7, r7, #2
	adds r1, r1, r7
	ldr r0, [r0, #4]
	cmp r0, r1
	blt _0802B444
	b _0802B5BA
_0802B444:
	movs r6, #0
	movs r0, #1
	mov r8, r0
_0802B44A:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r1, [r0, #8]
	ldr r0, _0802B4BC @ =0x0000FFFF
	cmp r1, r0
	bne _0802B4C8
	str r6, [sp]
	ldr r0, _0802B4C0 @ =sub_802D33C
	movs r1, #0x74
	movs r2, #0xf8
	lsls r2, r2, #5
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r3, r1, r7
	ldr r0, _0802B4C4 @ =0x03000060
	adds r1, r1, r0
	movs r0, #1
	strh r0, [r1]
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #4]
	lsls r0, r0, #8
	str r0, [r3, #0x44]
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #4]
	strh r0, [r4, #4]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	mov r1, r8
	strb r1, [r4, #6]
	b _0802B5BA
	.align 2, 0
_0802B4A4: .4byte gCurTask
_0802B4A8: .4byte gUnknown_03005690
_0802B4AC: .4byte gUnknown_030055E0
_0802B4B0: .4byte gUnknown_087BF8DC
_0802B4B4: .4byte gUnknown_08487134
_0802B4B8: .4byte gCurrentLevel
_0802B4BC: .4byte 0x0000FFFF
_0802B4C0: .4byte sub_802D33C
_0802B4C4: .4byte 0x03000060
_0802B4C8:
	ldr r0, _0802B500 @ =0x00007FFF
	cmp r1, r0
	bne _0802B50C
	str r6, [sp]
	ldr r0, _0802B504 @ =sub_802D33C
	movs r1, #0x74
	movs r2, #0xf8
	lsls r2, r2, #5
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r3, r1, r7
	ldr r0, _0802B508 @ =0x03000060
	adds r1, r1, r0
	movs r0, #2
	strh r0, [r1]
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #4]
	lsls r0, r0, #8
	str r0, [r3, #0x44]
	b _0802B588
	.align 2, 0
_0802B500: .4byte 0x00007FFF
_0802B504: .4byte sub_802D33C
_0802B508: .4byte 0x03000060
_0802B50C:
	cmp r1, #0
	bne _0802B514
	adds r0, r2, #1
	b _0802B59A
_0802B514:
	str r6, [sp]
	ldr r0, _0802B5C8 @ =sub_802BEDC
	movs r1, #0x74
	movs r2, #0xa8
	lsls r2, r2, #5
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r2, r1
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r1, [r0, #8]
	ldr r7, _0802B5CC @ =0x03000060
	adds r0, r2, r7
	strh r1, [r0]
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r3, #0x3c]
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r7, #2
	ldrsh r0, [r0, r7]
	lsls r0, r0, #8
	str r0, [r3, #0x40]
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #4]
	lsls r0, r0, #8
	str r0, [r3, #0x44]
	ldrh r1, [r4, #2]
	ldr r3, _0802B5D0 @ =0x03000068
	adds r0, r2, r3
	strh r1, [r0]
	ldr r7, _0802B5D4 @ =0x0300006D
	adds r1, r2, r7
	movs r0, #0xb
	strb r0, [r1]
	ldr r0, _0802B5D8 @ =0x03000070
	adds r2, r2, r0
	strh r6, [r2]
_0802B588:
	ldrh r1, [r4, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #4]
	strh r0, [r4, #4]
	ldrh r0, [r4, #2]
	adds r0, #1
_0802B59A:
	strh r0, [r4, #2]
	ldrh r2, [r4, #2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r3, sb
	ldr r1, [r3, #8]
	asrs r1, r1, #8
	movs r7, #0xc0
	lsls r7, r7, #2
	adds r1, r1, r7
	ldr r0, [r0, #4]
	cmp r0, r1
	bge _0802B5BA
	b _0802B44A
_0802B5BA:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B5C8: .4byte sub_802BEDC
_0802B5CC: .4byte 0x03000060
_0802B5D0: .4byte 0x03000068
_0802B5D4: .4byte 0x0300006D
_0802B5D8: .4byte 0x03000070

	thumb_func_start sub_802B5DC
sub_802B5DC: @ 0x0802B5DC
	push {r4, r5, r6, lr}
	mov ip, r0
	ldrh r3, [r0, #0xa]
	adds r1, r3, #0
	ldr r0, _0802B628 @ =0x0000031D
	cmp r1, r0
	bne _0802B5F4
	mov r0, ip
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B666
_0802B5F4:
	movs r2, #0
	adds r6, r3, #0
	ldr r4, _0802B62C @ =gUnknown_030056F0
	adds r5, r1, #0
	adds r3, r4, #0
_0802B5FE:
	lsls r1, r2, #2
	ldrh r0, [r3]
	cmp r0, r5
	bne _0802B630
	adds r0, r4, #2
	adds r0, r1, r0
	mov r1, ip
	adds r1, #0x20
	ldrh r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0802B630
	mov r1, ip
	ldr r0, [r1, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #0x10]
	b _0802B666
	.align 2, 0
_0802B628: .4byte 0x0000031D
_0802B62C: .4byte gUnknown_030056F0
_0802B630:
	adds r3, #4
	adds r2, #1
	cmp r2, #0xf
	ble _0802B5FE
	movs r2, #0
	ldr r3, _0802B658 @ =gUnknown_030056F0
	adds r5, r6, #0
	adds r1, r4, #2
_0802B640:
	ldrh r0, [r3]
	cmp r0, #0
	bne _0802B65C
	ldrh r0, [r1]
	cmp r0, #0
	bne _0802B65C
	strh r5, [r3]
	mov r0, ip
	adds r0, #0x20
	ldrb r0, [r0]
	strh r0, [r1]
	b _0802B666
	.align 2, 0
_0802B658: .4byte gUnknown_030056F0
_0802B65C:
	adds r3, #4
	adds r1, #4
	adds r2, #1
	cmp r2, #0xf
	ble _0802B640
_0802B666:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_802B66C
sub_802B66C: @ 0x0802B66C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldr r5, _0802B750 @ =gUnknown_030055FC
	ldr r1, [r1, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802B68E
	b _0802B878
_0802B68E:
	ldr r0, _0802B754 @ =gUnknown_03005690
	ldr r3, [r6, #0x44]
	ldr r2, _0802B758 @ =0xFFFFC000
	adds r1, r3, r2
	ldr r2, [r0, #8]
	adds r7, r0, #0
	cmp r2, r1
	bge _0802B6A0
	b _0802B878
_0802B6A0:
	cmp r2, r3
	ble _0802B6A6
	b _0802B878
_0802B6A6:
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, #4
	bge _0802B6B2
	b _0802B7E0
_0802B6B2:
	cmp r0, #9
	ble _0802B6BC
	cmp r0, #0xb
	beq _0802B6BC
	b _0802B7E0
_0802B6BC:
	adds r0, r7, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802B760
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	adds r1, #0x2c
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r3, r0, r4
	ldr r0, [r7]
	asrs r0, r0, #8
	ldr r1, _0802B75C @ =gUnknown_0848720C
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r2, r0, r5
	adds r6, r1, #0
	cmp r3, r2
	bgt _0802B702
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r2
	bge _0802B710
	cmp r3, r2
	bge _0802B702
	b _0802B878
_0802B702:
	movs r1, #4
	ldrsh r0, [r6, r1]
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	bge _0802B710
	b _0802B878
_0802B710:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	adds r2, #0x2d
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r3, r0, r1
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	movs r2, #2
	ldrsh r4, [r6, r2]
	adds r2, r0, r4
	cmp r3, r2
	bgt _0802B748
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	blt _0802B742
	b _0802B874
_0802B742:
	cmp r3, r2
	bge _0802B748
	b _0802B878
_0802B748:
	movs r1, #6
	ldrsh r0, [r6, r1]
	b _0802B86C
	.align 2, 0
_0802B750: .4byte gUnknown_030055FC
_0802B754: .4byte gUnknown_03005690
_0802B758: .4byte 0xFFFFC000
_0802B75C: .4byte gUnknown_0848720C
_0802B760:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	adds r1, #0x2c
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r3, r0, r4
	ldr r0, [r7]
	asrs r0, r0, #8
	ldr r1, _0802B7DC @ =gUnknown_08487204
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r2, r0, r5
	adds r6, r1, #0
	cmp r3, r2
	bgt _0802B796
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r2
	bge _0802B7A2
	cmp r3, r2
	blt _0802B878
_0802B796:
	movs r1, #4
	ldrsh r0, [r6, r1]
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	blt _0802B878
_0802B7A2:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	adds r2, #0x2d
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r3, r0, r1
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	movs r2, #2
	ldrsh r4, [r6, r2]
	adds r2, r0, r4
	cmp r3, r2
	bgt _0802B7D6
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _0802B874
	cmp r3, r2
	blt _0802B878
_0802B7D6:
	movs r1, #6
	ldrsh r0, [r6, r1]
	b _0802B86C
	.align 2, 0
_0802B7DC: .4byte gUnknown_08487204
_0802B7E0:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	adds r1, #0x2c
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r0, [r7]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0x2c
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0802B816
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0802B828
	cmp r2, r1
	blt _0802B878
_0802B816:
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0802B878
_0802B828:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r3, r0, r1
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	adds r2, r5, #0
	adds r2, #0x2d
	movs r4, #0
	ldrsb r4, [r2, r4]
	adds r2, r0, r4
	cmp r3, r2
	bgt _0802B862
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _0802B874
	cmp r3, r2
	blt _0802B878
_0802B862:
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_0802B86C:
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r3
	blt _0802B878
_0802B874:
	movs r0, #1
	b _0802B87A
_0802B878:
	movs r0, #0
_0802B87A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_802B884
sub_802B884: @ 0x0802B884
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0802B900 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, #0xc
	adds r6, r4, r0
	ldr r7, _0802B904 @ =gUnknown_03005690
	ldr r1, _0802B908 @ =0x03000067
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0802B8AE
	b _0802BBCC
_0802B8AE:
	adds r2, r7, #0
	adds r2, #0x29
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	beq _0802B8C0
	b _0802BBCC
_0802B8C0:
	adds r0, r7, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802B8CC
	b _0802BBCC
_0802B8CC:
	ldr r1, _0802B90C @ =0x03000048
	adds r0, r4, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _0802B910 @ =0x0300004A
	adds r0, r4, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802B66C
	cmp r0, #0
	bne _0802B8EA
	b _0802BBCC
_0802B8EA:
	ldr r1, _0802B914 @ =0x03000060
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, #0xb
	bls _0802B8F6
	b _0802BBCC
_0802B8F6:
	lsls r0, r0, #2
	ldr r1, _0802B918 @ =_0802B91C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802B900: .4byte gCurTask
_0802B904: .4byte gUnknown_03005690
_0802B908: .4byte 0x03000067
_0802B90C: .4byte 0x03000048
_0802B910: .4byte 0x0300004A
_0802B914: .4byte 0x03000060
_0802B918: .4byte _0802B91C
_0802B91C: @ jump table
	.4byte _0802B94C @ case 0
	.4byte _0802BBCC @ case 1
	.4byte _0802BA8C @ case 2
	.4byte _0802B9E8 @ case 3
	.4byte _0802BAD8 @ case 4
	.4byte _0802BAD8 @ case 5
	.4byte _0802BAD8 @ case 6
	.4byte _0802BAD8 @ case 7
	.4byte _0802BAD8 @ case 8
	.4byte _0802BAD8 @ case 9
	.4byte _0802BAFE @ case 10
	.4byte _0802BB2C @ case 11
_0802B94C:
	adds r3, r5, #0
	adds r3, #0x60
	movs r2, #0
	movs r0, #1
	strh r0, [r3]
	ldr r1, _0802B9D8 @ =gUnknown_0848728C
	ldrh r0, [r1, #4]
	adds r7, r5, #0
	adds r7, #0x62
	strh r0, [r7]
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r5, #0
	adds r4, #0x64
	strh r0, [r4]
	movs r0, #0x67
	adds r0, r0, r5
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #1
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r1, _0802B9DC @ =gUnknown_084872C4
	ldrh r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802B9E0 @ =0x06010000
	adds r0, r0, r1
	str r0, [r6, #4]
	strh r2, [r6, #8]
	ldrh r0, [r7]
	strh r0, [r6, #0xa]
	ldrh r1, [r4]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r6, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0802B9E4 @ =gUnknown_03005078
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_802D5EC
	b _0802BBC4
	.align 2, 0
_0802B9D8: .4byte gUnknown_0848728C
_0802B9DC: .4byte gUnknown_084872C4
_0802B9E0: .4byte 0x06010000
_0802B9E4: .4byte gUnknown_03005078
_0802B9E8:
	adds r3, r5, #0
	adds r3, #0x60
	movs r2, #0
	movs r0, #1
	strh r0, [r3]
	ldr r1, _0802BA74 @ =gUnknown_0848728C
	ldrh r0, [r1, #4]
	adds r7, r5, #0
	adds r7, #0x62
	strh r0, [r7]
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r5, #0
	adds r4, #0x64
	strh r0, [r4]
	movs r0, #0x67
	adds r0, r0, r5
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #1
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r1, _0802BA78 @ =gUnknown_084872C4
	ldrh r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802BA7C @ =0x06010000
	adds r0, r0, r1
	str r0, [r6, #4]
	strh r2, [r6, #8]
	ldrh r0, [r7]
	strh r0, [r6, #0xa]
	ldrh r1, [r4]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r6, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0802BA80 @ =gUnknown_03005078
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_802D5EC
	ldr r0, _0802BA84 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802BA88 @ =sub_802C224
	b _0802BBCA
	.align 2, 0
_0802BA74: .4byte gUnknown_0848728C
_0802BA78: .4byte gUnknown_084872C4
_0802BA7C: .4byte 0x06010000
_0802BA80: .4byte gUnknown_03005078
_0802BA84: .4byte gCurTask
_0802BA88: .4byte sub_802C224
_0802BA8C:
	adds r2, r5, #0
	adds r2, #0x67
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0802BACC @ =gUnknown_03005730
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802BAA6
	movs r0, #0x96
	bl m4aSongNumStart
_0802BAA6:
	adds r0, r5, #0
	bl sub_802C2DC
	adds r0, r5, #0
	bl sub_802C04C
	ldr r0, _0802BAD0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802BAD4 @ =sub_802C488
	str r0, [r1, #8]
	adds r1, r7, #0
	adds r1, #0x3d
	movs r0, #0xa
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x6d
	movs r0, #0xb
	strb r0, [r1]
	b _0802BBCC
	.align 2, 0
_0802BACC: .4byte gUnknown_03005730
_0802BAD0: .4byte gCurTask
_0802BAD4: .4byte sub_802C488
_0802BAD8:
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #4
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x54
	strh r1, [r0]
	b _0802BBCC
_0802BAFE:
	ldr r0, _0802BB20 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _0802BB24 @ =gUnknown_03005730
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802BB14
	movs r0, #0x97
	bl m4aSongNumStart
_0802BB14:
	ldr r1, _0802BB28 @ =gUnknown_0300507C
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0802BBCC
	.align 2, 0
_0802BB20: .4byte gCurTask
_0802BB24: .4byte gUnknown_03005730
_0802BB28: .4byte gUnknown_0300507C
_0802BB2C:
	adds r3, r5, #0
	adds r3, #0x60
	movs r2, #0
	movs r0, #0xc
	strh r0, [r3]
	ldr r1, _0802BBD8 @ =gUnknown_0848728C
	ldrh r0, [r1, #0x30]
	adds r7, r5, #0
	adds r7, #0x62
	strh r0, [r7]
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r5, #0
	adds r4, #0x64
	strh r0, [r4]
	movs r0, #0x67
	adds r0, r0, r5
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #1
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r1, _0802BBDC @ =gUnknown_084872C4
	ldrh r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802BBE0 @ =0x06010000
	adds r0, r0, r1
	str r0, [r6, #4]
	strh r2, [r6, #8]
	ldrh r0, [r7]
	strh r0, [r6, #0xa]
	ldrh r1, [r4]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r6, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #8
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	ldr r0, _0802BBE4 @ =gUnknown_03005730
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802BBC4
	movs r0, #0x90
	bl m4aSongNumStart
_0802BBC4:
	ldr r0, _0802BBE8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802BBEC @ =sub_802D3E4
_0802BBCA:
	str r0, [r1, #8]
_0802BBCC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BBD8: .4byte gUnknown_0848728C
_0802BBDC: .4byte gUnknown_084872C4
_0802BBE0: .4byte 0x06010000
_0802BBE4: .4byte gUnknown_03005730
_0802BBE8: .4byte gCurTask
_0802BBEC: .4byte sub_802D3E4

	thumb_func_start sub_802BBF0
sub_802BBF0: @ 0x0802BBF0
	push {r4, r5, lr}
	ldr r0, _0802BC54 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r1, r2
	ldr r0, _0802BC58 @ =0x03000052
	adds r5, r1, r0
	ldr r3, _0802BC5C @ =0x03000058
	adds r0, r1, r3
	ldrh r0, [r0]
	ldrh r3, [r5]
	adds r0, r0, r3
	strh r0, [r5]
	ldr r0, _0802BC60 @ =0x03000054
	adds r4, r1, r0
	ldr r3, _0802BC64 @ =0x0300005A
	adds r0, r1, r3
	ldrh r0, [r0]
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	ldr r0, _0802BC68 @ =0x03000056
	adds r3, r1, r0
	adds r0, #6
	adds r1, r1, r0
	ldrh r0, [r1]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, [r2, #0x3c]
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r2, #0x44]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802BC54: .4byte gCurTask
_0802BC58: .4byte 0x03000052
_0802BC5C: .4byte 0x03000058
_0802BC60: .4byte 0x03000054
_0802BC64: .4byte 0x0300005A
_0802BC68: .4byte 0x03000056

	thumb_func_start sub_802BC6C
sub_802BC6C: @ 0x0802BC6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _0802BCC0 @ =gUnknown_03005690
	ldr r0, _0802BCC4 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov r8, r0
	ldr r0, _0802BCC8 @ =0x0300000C
	adds r0, r0, r2
	mov sl, r0
	mov sb, r8
	ldr r0, [r1, #8]
	mov r4, sb
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	asrs r1, r0, #8
	ldr r4, _0802BCCC @ =0x03000050
	adds r0, r2, r4
	strh r1, [r0]
	ldr r0, _0802BCD0 @ =0x03000060
	adds r2, r2, r0
	ldrh r0, [r2]
	cmp r0, #3
	beq _0802BCD4
	lsls r1, r1, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x12
	cmp r1, r0
	ble _0802BCD4
	adds r0, r3, #0
	bl TaskDestroy
_0802BCBA:
	movs r0, #0
	b _0802BDE8
	.align 2, 0
_0802BCC0: .4byte gUnknown_03005690
_0802BCC4: .4byte gCurTask
_0802BCC8: .4byte 0x0300000C
_0802BCCC: .4byte 0x03000050
_0802BCD0: .4byte 0x03000060
_0802BCD4:
	mov r1, r8
	adds r1, #0x50
	str r1, [sp]
	movs r2, #0
	ldrsh r1, [r1, r2]
	cmp r1, #0xc0
	bgt _0802BCBA
	ldr r0, _0802BDF8 @ =0xFFFFFD00
	cmp r1, r0
	blt _0802BCBA
	ldr r3, [sp]
	movs r4, #0
	ldrsh r0, [r3, r4]
	bl sub_802D58C
	mov r1, r8
	adds r1, #0x66
	str r1, [sp, #4]
	strb r0, [r1]
	ldr r2, [sp]
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r7, r0, r4
	asrs r7, r7, #3
	cmp r7, #0
	bne _0802BD0E
	movs r7, #1
_0802BD0E:
	adds r0, r7, #0
	muls r0, r7, r0
	muls r0, r7, r0
	muls r7, r0, r7
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r7, #0
	bl __divsi3
	adds r7, r0, #0
	adds r4, r7, #0
	cmp r7, #0
	bge _0802BD2C
	ldr r0, _0802BDFC @ =0x000001FF
	adds r4, r7, r0
_0802BD2C:
	asrs r4, r4, #9
	adds r4, #0x38
	mov r1, r8
	ldr r0, [r1, #0x3c]
	muls r0, r4, r0
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r1, r5, #0
	bl __divsi3
	asrs r0, r0, #8
	mov r6, r8
	adds r6, #0x48
	strh r0, [r6]
	mov r2, r8
	ldr r0, [r2, #0x40]
	muls r0, r4, r0
	adds r1, r5, #0
	bl __divsi3
	asrs r0, r0, #8
	mov r1, r8
	adds r1, #0x4a
	strh r0, [r1]
	ldrh r0, [r6]
	adds r0, #0x78
	mov r3, r8
	adds r3, #0x4c
	strh r0, [r3]
	ldrh r1, [r1]
	movs r0, #0x50
	subs r0, r0, r1
	mov r2, r8
	adds r2, #0x4e
	strh r0, [r2]
	ldr r4, _0802BE00 @ =gUnknown_03005780
	ldrh r0, [r4, #4]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	ldrh r0, [r2]
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	strh r0, [r2]
	ldrh r1, [r3]
	mov r3, sl
	strh r1, [r3, #0x16]
	ldrh r0, [r2]
	strh r0, [r3, #0x18]
	mov r4, sb
	strh r1, [r4, #6]
	ldrh r0, [r3, #0x18]
	strh r0, [r4, #8]
	adds r0, r7, #0
	cmp r7, #0
	bge _0802BDA0
	ldr r1, _0802BE04 @ =0x000003FF
	adds r0, r7, r1
_0802BDA0:
	asrs r0, r0, #0xa
	adds r0, #0x40
	mov r2, sb
	strh r0, [r2, #2]
	mov r3, sb
	strh r0, [r3, #4]
	ldr r4, [sp, #4]
	ldrb r2, [r4]
	ldr r0, _0802BE08 @ =0x00002020
	orrs r2, r0
	mov r0, sl
	str r2, [r0, #0x10]
	movs r4, #2
	ldrsh r1, [r3, r4]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802BDCC
	movs r0, #0x40
	orrs r2, r0
	mov r0, sl
	str r2, [r0, #0x10]
_0802BDCC:
	ldr r2, [sp]
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r1, #0
	subs r0, #0xc0
	cmp r0, #0
	bge _0802BDDC
	adds r0, #0x1f
_0802BDDC:
	asrs r0, r0, #5
	rsbs r0, r0, #0
	lsls r0, r0, #6
	mov r4, sl
	strh r0, [r4, #0x1a]
	movs r0, #1
_0802BDE8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802BDF8: .4byte 0xFFFFFD00
_0802BDFC: .4byte 0x000001FF
_0802BE00: .4byte gUnknown_03005780
_0802BE04: .4byte 0x000003FF
_0802BE08: .4byte 0x00002020

	thumb_func_start sub_802BE0C
sub_802BE0C: @ 0x0802BE0C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	mov sb, r0
	adds r6, r1, #0
	ldr r0, [r0, #0xc]
	mov r8, r0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r8, r0
	beq _0802BEC6
	mov r1, sp
	ldrh r0, [r6, #2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r6, #4]
	strh r0, [r1]
	add r4, sp, #0xc
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r4]
	ldr r1, _0802BED4 @ =gUnknown_030057E0
	ldrh r0, [r4]
	adds r0, r0, r1
	movs r7, #0
	ldrsb r7, [r0, r7]
	cmp r7, #0
	bne _0802BE7C
	ldrh r0, [r4]
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	ldrh r4, [r4]
	lsls r4, r4, #5
	ldr r0, _0802BED8 @ =gUnknown_03004636
	adds r4, r4, r0
	movs r5, #0x80
	lsls r5, r5, #9
	movs r0, #2
	ldrsh r1, [r6, r0]
	adds r0, r5, #0
	bl Div
	strh r0, [r4]
	strh r7, [r4, #8]
	strh r7, [r4, #0x10]
	movs r0, #4
	ldrsh r1, [r6, r0]
	adds r0, r5, #0
	bl Div
	strh r0, [r4, #0x18]
_0802BE7C:
	movs r1, #6
	ldrsh r2, [r6, r1]
	movs r4, #2
	ldrsh r3, [r6, r4]
	mov r1, r8
	movs r4, #8
	ldrsh r0, [r1, r4]
	ldrh r1, [r1, #4]
	lsrs r1, r1, #1
	subs r0, r0, r1
	muls r0, r3, r0
	lsls r1, r1, #8
	adds r0, r0, r1
	asrs r0, r0, #8
	subs r2, r2, r0
	str r2, [sp, #4]
	movs r0, #8
	ldrsh r2, [r6, r0]
	movs r1, #4
	ldrsh r3, [r6, r1]
	mov r4, r8
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	ldrh r1, [r4, #6]
	lsrs r1, r1, #1
	subs r0, r0, r1
	muls r0, r3, r0
	lsls r1, r1, #8
	adds r0, r0, r1
	asrs r0, r0, #8
	subs r2, r2, r0
	str r2, [sp, #8]
	ldr r0, [sp, #4]
	mov r4, sb
	strh r0, [r4, #0x16]
	ldr r0, [sp, #8]
	strh r0, [r4, #0x18]
_0802BEC6:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BED4: .4byte gUnknown_030057E0
_0802BED8: .4byte gUnknown_03004636

	thumb_func_start sub_802BEDC
sub_802BEDC: @ 0x0802BEDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r7, _0802C008 @ =gCurTask
	ldr r0, [r7]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r8, r0
	add r8, r4
	ldr r1, _0802C00C @ =0x03000050
	adds r0, r4, r1
	movs r2, #0
	mov sl, r2
	movs r6, #0
	strh r6, [r0]
	ldr r3, _0802C010 @ =0x03000052
	adds r0, r4, r3
	strh r6, [r0]
	adds r1, #4
	adds r0, r4, r1
	strh r6, [r0]
	ldr r2, _0802C014 @ =0x03000056
	adds r0, r4, r2
	strh r6, [r0]
	adds r3, #6
	adds r0, r4, r3
	strh r6, [r0]
	adds r1, #6
	adds r0, r4, r1
	strh r6, [r0]
	adds r2, #6
	adds r0, r4, r2
	strh r6, [r0]
	ldr r1, _0802C018 @ =gUnknown_0848728C
	adds r3, #8
	adds r2, r4, r3
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, #2
	adds r3, r3, r4
	mov sb, r3
	strh r0, [r3]
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0802C01C @ =0x03000064
	adds r3, r4, r1
	strh r0, [r3]
	adds r1, #3
	adds r0, r4, r1
	mov r1, sl
	strb r1, [r0]
	ldr r0, _0802C020 @ =0x0300000C
	adds r5, r4, r0
	ldr r1, _0802C024 @ =gUnknown_084872C4
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802C028 @ =0x06010000
	adds r0, r0, r1
	str r0, [r5, #4]
	strh r6, [r5, #8]
	mov r2, sb
	ldrh r0, [r2]
	strh r0, [r5, #0xa]
	ldrh r1, [r3]
	ldr r3, _0802C02C @ =0x0300002C
	adds r0, r4, r3
	strb r1, [r0]
	ldr r0, _0802C030 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	strh r6, [r5, #0x1c]
	ldr r2, _0802C034 @ =0x0300002E
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0802C038 @ =gUnknown_03005690
	ldr r0, [r0, #8]
	asrs r0, r0, #8
	mov r3, r8
	ldr r1, [r3, #0x44]
	asrs r1, r1, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_802D58C
	ldr r1, _0802C03C @ =0x03000066
	adds r2, r4, r1
	strb r0, [r2]
	mov r3, r8
	ldr r0, [r3, #0x3c]
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r5, #0x16]
	ldr r1, [r3, #0x40]
	asrs r1, r1, #8
	movs r0, #0x50
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r0, _0802C040 @ =0x03000031
	adds r4, r4, r0
	mov r1, sl
	strb r1, [r4]
	ldrb r0, [r2]
	ldr r1, _0802C044 @ =0x00002020
	orrs r0, r1
	str r0, [r5, #0x10]
	strh r6, [r3]
	movs r0, #0x40
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	ldrh r0, [r5, #0x16]
	strh r0, [r3, #6]
	ldrh r0, [r5, #0x18]
	strh r0, [r3, #8]
	ldr r1, [r7]
	ldr r0, _0802C048 @ =sub_802D37C
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_802B5DC
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	mov r1, r8
	bl sub_802BE0C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C008: .4byte gCurTask
_0802C00C: .4byte 0x03000050
_0802C010: .4byte 0x03000052
_0802C014: .4byte 0x03000056
_0802C018: .4byte gUnknown_0848728C
_0802C01C: .4byte 0x03000064
_0802C020: .4byte 0x0300000C
_0802C024: .4byte gUnknown_084872C4
_0802C028: .4byte 0x06010000
_0802C02C: .4byte 0x0300002C
_0802C030: .4byte 0x0300002D
_0802C034: .4byte 0x0300002E
_0802C038: .4byte gUnknown_03005690
_0802C03C: .4byte 0x03000066
_0802C040: .4byte 0x03000031
_0802C044: .4byte 0x00002020
_0802C048: .4byte sub_802D37C

	thumb_func_start sub_802C04C
sub_802C04C: @ 0x0802C04C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, _0802C0B8 @ =gUnknown_084872E0
	movs r6, #0xb
_0802C056:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0802C0BC @ =sub_802BEDC
	movs r1, #0x74
	ldr r2, _0802C0C0 @ =0x00001510
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0x60
	adds r1, r2, r0
	movs r0, #3
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #6
	ldr r0, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r3, #0x3c]
	movs r0, #2
	ldrsh r1, [r5, r0]
	lsls r1, r1, #6
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r3, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r3, #0x44]
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r1, [r0]
	ldr r3, _0802C0C4 @ =0x03000068
	adds r0, r2, r3
	strh r1, [r0]
	ldr r0, _0802C0C8 @ =0x03000070
	adds r2, r2, r0
	movs r0, #0xf
	strh r0, [r2]
	adds r5, #4
	subs r6, #1
	cmp r6, #0
	bge _0802C056
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802C0B8: .4byte gUnknown_084872E0
_0802C0BC: .4byte sub_802BEDC
_0802C0C0: .4byte 0x00001510
_0802C0C4: .4byte 0x03000068
_0802C0C8: .4byte 0x03000070

	thumb_func_start sub_802C0CC
sub_802C0CC: @ 0x0802C0CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0802C188 @ =gUnknown_03005690
	mov sb, r0
	ldr r0, _0802C18C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, _0802C190 @ =0x0300000C
	adds r1, r1, r4
	mov r8, r1
	adds r7, r6, #0
	ldr r2, _0802C194 @ =0x0300004C
	adds r0, r4, r2
	mov r3, sb
	ldrh r1, [r3, #0xc]
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r5, _0802C198 @ =0x0300004E
	adds r2, r4, r5
	ldrh r0, [r3, #0xe]
	ldrh r2, [r2]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_800338C
	ldr r1, _0802C19C @ =0x03000052
	adds r2, r4, r1
	ldrh r1, [r2]
	adds r1, #0x15
	strh r1, [r2]
	movs r5, #0
	ldrsh r3, [r2, r5]
	mov ip, r3
	ldr r3, _0802C1A0 @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r0, r5
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r5, #0
	ldrsh r1, [r1, r5]
	mov r5, ip
	muls r5, r1, r5
	adds r1, r5, #0
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r5, #0
	ldrsh r3, [r0, r5]
	asrs r1, r1, #0xe
	ldr r0, [r7, #0x3c]
	adds r0, r0, r1
	str r0, [r7, #0x3c]
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r1, r0, #0
	muls r1, r3, r1
	asrs r1, r1, #0xe
	ldr r0, [r7, #0x40]
	subs r0, r0, r1
	str r0, [r7, #0x40]
	mov r2, sb
	ldr r1, [r2, #8]
	ldr r0, [r7, #0x44]
	subs r1, r1, r0
	asrs r1, r1, #8
	ldr r3, _0802C1A4 @ =0x0300005C
	adds r0, r4, r3
	strh r1, [r0]
	ldr r5, _0802C1A8 @ =0x03000056
	adds r4, r4, r5
	ldrh r0, [r4]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0802C1AC
	movs r0, #0xe0
	lsls r0, r0, #4
	cmp r1, r0
	ble _0802C1B6
	adds r2, r0, #0
	b _0802C1B6
	.align 2, 0
_0802C188: .4byte gUnknown_03005690
_0802C18C: .4byte gCurTask
_0802C190: .4byte 0x0300000C
_0802C194: .4byte 0x0300004C
_0802C198: .4byte 0x0300004E
_0802C19C: .4byte 0x03000052
_0802C1A0: .4byte gSineTable
_0802C1A4: .4byte 0x0300005C
_0802C1A8: .4byte 0x03000056
_0802C1AC:
	ldr r0, _0802C1F4 @ =0xFFFFF200
	cmp r1, r0
	bge _0802C1B6
	movs r2, #0xf2
	lsls r2, r2, #8
_0802C1B6:
	adds r0, r6, #0
	adds r0, #0x56
	strh r2, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r6, #0x44]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	mov r3, sb
	ldr r2, [r3, #8]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r2, r5
	cmp r0, r1
	bge _0802C1D6
	str r2, [r6, #0x44]
_0802C1D6:
	bl sub_802BC6C
	cmp r0, #0
	beq _0802C216
	adds r4, r6, #0
	adds r4, #0x70
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0802C1F8
	subs r0, r1, #1
	strh r0, [r4]
	b _0802C1FC
	.align 2, 0
_0802C1F4: .4byte 0xFFFFF200
_0802C1F8:
	bl sub_802B884
_0802C1FC:
	mov r0, r8
	bl sub_802B5DC
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	adds r1, r7, #0
	bl sub_802BE0C
	mov r0, r8
	bl DisplaySprite
_0802C216:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_802C224
sub_802C224: @ 0x0802C224
	push {r4, r5, r6, r7, lr}
	ldr r7, _0802C24C @ =gUnknown_03005690
	ldr r0, _0802C250 @ =gCurTask
	ldr r4, [r0]
	ldrh r2, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r5, r2, r0
	adds r6, r3, #0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802C258
	ldr r0, _0802C254 @ =sub_802D450
	str r0, [r4, #8]
	b _0802C2D2
	.align 2, 0
_0802C24C: .4byte gUnknown_03005690
_0802C250: .4byte gCurTask
_0802C254: .4byte sub_802D450
_0802C258:
	ldr r1, [r7, #8]
	ldr r0, [r6, #0x44]
	subs r1, r1, r0
	asrs r1, r1, #8
	ldr r4, _0802C284 @ =0x0300005C
	adds r0, r2, r4
	strh r1, [r0]
	subs r4, #6
	adds r0, r2, r4
	ldrh r0, [r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0802C288
	movs r0, #0xe0
	lsls r0, r0, #4
	cmp r1, r0
	ble _0802C292
	adds r2, r0, #0
	b _0802C292
	.align 2, 0
_0802C284: .4byte 0x0300005C
_0802C288:
	ldr r0, _0802C2D8 @ =0xFFFFF200
	cmp r1, r0
	bge _0802C292
	movs r2, #0xf2
	lsls r2, r2, #8
_0802C292:
	adds r0, r3, #0
	adds r0, #0x56
	strh r2, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r3, #0x44]
	adds r1, r1, r0
	str r1, [r3, #0x44]
	ldr r2, [r7, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r2, r4
	cmp r0, r1
	bge _0802C2B0
	str r2, [r3, #0x44]
_0802C2B0:
	bl sub_802BC6C
	cmp r0, #0
	beq _0802C2D2
	adds r0, r5, #0
	bl sub_802B5DC
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
_0802C2D2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C2D8: .4byte 0xFFFFF200

	thumb_func_start sub_802C2DC
sub_802C2DC: @ 0x0802C2DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	movs r0, #0
	mov sb, r0
	ldr r1, _0802C434 @ =gUnknown_08487310
	mov sl, r1
	movs r2, #7
	str r2, [sp, #4]
_0802C2F6:
	mov r3, sb
	str r3, [sp]
	ldr r0, _0802C438 @ =sub_802D3E4
	movs r1, #0x74
	ldr r2, _0802C43C @ =0x00001510
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r6, r0
	ldr r1, _0802C440 @ =0x03000060
	adds r7, r6, r1
	movs r0, #0xd
	strh r0, [r7]
	mov r3, sl
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	mov r3, r8
	ldr r0, [r3, #0x3c]
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	mov r0, sl
	movs r3, #2
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	mov r3, r8
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	ldr r0, [r3, #0x44]
	str r0, [r2, #0x44]
	ldr r1, _0802C444 @ =0x03000050
	adds r0, r6, r1
	mov r2, sb
	strh r2, [r0]
	mov r3, sl
	ldrh r0, [r3]
	lsls r0, r0, #3
	ldr r2, _0802C448 @ =0x03000052
	adds r1, r6, r2
	strh r0, [r1]
	ldrh r0, [r3, #2]
	lsls r0, r0, #3
	ldr r3, _0802C44C @ =0x03000054
	adds r2, r6, r3
	strh r0, [r2]
	adds r3, #2
	adds r0, r6, r3
	mov r3, sb
	strh r3, [r0]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0802C36A
	adds r0, #0x1f
_0802C36A:
	asrs r0, r0, #5
	rsbs r0, r0, #0
	ldr r3, _0802C450 @ =0x03000058
	adds r1, r6, r3
	strh r0, [r1]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0802C37E
	adds r0, #0x1f
_0802C37E:
	asrs r0, r0, #5
	rsbs r0, r0, #0
	ldr r2, _0802C454 @ =0x0300005A
	adds r1, r6, r2
	strh r0, [r1]
	ldr r3, _0802C458 @ =0x0300005C
	adds r0, r6, r3
	mov r1, sb
	strh r1, [r0]
	ldrh r0, [r7]
	lsls r0, r0, #2
	ldr r2, _0802C45C @ =gUnknown_0848728C
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r3, #6
	adds r4, r6, r3
	strh r0, [r4]
	ldrh r0, [r7]
	lsls r0, r0, #2
	ldr r1, _0802C460 @ =gUnknown_0848728E
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r2, _0802C464 @ =0x03000064
	adds r3, r6, r2
	strh r0, [r3]
	mov r0, r8
	adds r0, #0x66
	ldrb r0, [r0]
	ldr r1, _0802C468 @ =0x03000066
	adds r5, r6, r1
	strb r0, [r5]
	adds r2, #3
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802C46C @ =0x0300000C
	adds r2, r6, r0
	ldr r1, _0802C470 @ =gUnknown_084872C4
	ldrh r0, [r7]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802C474 @ =0x06010000
	adds r0, r0, r1
	str r0, [r2, #4]
	mov r0, sb
	strh r0, [r2, #8]
	ldrh r0, [r4]
	strh r0, [r2, #0xa]
	ldrh r1, [r3]
	ldr r3, _0802C478 @ =0x0300002C
	adds r0, r6, r3
	strb r1, [r0]
	ldr r0, _0802C47C @ =0x0300002D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	mov r1, sb
	strh r1, [r2, #0x1c]
	adds r3, #2
	adds r1, r6, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0802C480 @ =0x03000031
	adds r0, r6, r1
	mov r3, sb
	strb r3, [r0]
	ldrb r0, [r5]
	ldr r1, _0802C484 @ =0x00002020
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	movs r0, #4
	add sl, r0
	ldr r1, [sp, #4]
	subs r1, #1
	str r1, [sp, #4]
	cmp r1, #0
	blt _0802C424
	b _0802C2F6
_0802C424:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C434: .4byte gUnknown_08487310
_0802C438: .4byte sub_802D3E4
_0802C43C: .4byte 0x00001510
_0802C440: .4byte 0x03000060
_0802C444: .4byte 0x03000050
_0802C448: .4byte 0x03000052
_0802C44C: .4byte 0x03000054
_0802C450: .4byte 0x03000058
_0802C454: .4byte 0x0300005A
_0802C458: .4byte 0x0300005C
_0802C45C: .4byte gUnknown_0848728C
_0802C460: .4byte gUnknown_0848728E
_0802C464: .4byte 0x03000064
_0802C468: .4byte 0x03000066
_0802C46C: .4byte 0x0300000C
_0802C470: .4byte gUnknown_084872C4
_0802C474: .4byte 0x06010000
_0802C478: .4byte 0x0300002C
_0802C47C: .4byte 0x0300002D
_0802C480: .4byte 0x03000031
_0802C484: .4byte 0x00002020

	thumb_func_start sub_802C488
sub_802C488: @ 0x0802C488
	push {r4, r5, lr}
	ldr r1, _0802C4D0 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	adds r0, #0xc
	adds r0, r0, r2
	mov ip, r0
	ldr r0, _0802C4D4 @ =0x0300006D
	adds r3, r2, r0
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	adds r5, r1, #0
	cmp r0, #0
	bne _0802C552
	movs r0, #0x3c
	strb r0, [r3]
	ldr r0, _0802C4D8 @ =gUnknown_03005690
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #4
	bne _0802C4E4
	ldr r0, _0802C4DC @ =0x03000062
	adds r1, r2, r0
	movs r0, #0xcb
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, _0802C4E0 @ =0x03000064
	adds r1, r2, r0
	movs r0, #1
	b _0802C4F4
	.align 2, 0
_0802C4D0: .4byte gCurTask
_0802C4D4: .4byte 0x0300006D
_0802C4D8: .4byte gUnknown_03005690
_0802C4DC: .4byte 0x03000062
_0802C4E0: .4byte 0x03000064
_0802C4E4:
	ldr r0, _0802C558 @ =0x03000062
	adds r1, r2, r0
	movs r0, #0xcb
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, _0802C55C @ =0x03000064
	adds r1, r2, r0
	movs r0, #2
_0802C4F4:
	strh r0, [r1]
	ldr r1, _0802C560 @ =gUnknown_084872C4
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802C564 @ =0x06010000
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1, #4]
	movs r2, #0
	strh r2, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r1, #0xa]
	adds r0, r4, #0
	adds r0, #0x64
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x20
	strb r1, [r0]
	mov r1, ip
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	mov r0, ip
	strh r2, [r0, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #0x78
	mov r1, ip
	strh r0, [r1, #0x16]
	movs r0, #0x28
	strh r0, [r1, #0x18]
	movs r0, #0x40
	strh r0, [r1, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #0x10]
	ldr r1, [r5]
	ldr r0, _0802C568 @ =sub_802D4C4
	str r0, [r1, #8]
_0802C552:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802C558: .4byte 0x03000062
_0802C55C: .4byte 0x03000064
_0802C560: .4byte gUnknown_084872C4
_0802C564: .4byte 0x06010000
_0802C568: .4byte sub_802D4C4

	thumb_func_start sub_802C56C
sub_802C56C: @ 0x0802C56C
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0802C5A4 @ =sub_802D4C4
	movs r2, #0xa8
	lsls r2, r2, #5
	movs r6, #0
	str r6, [sp]
	movs r1, #0x74
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0xc
	adds r0, r0, r2
	mov ip, r0
	cmp r4, #1
	beq _0802C5E8
	cmp r4, #1
	bgt _0802C5A8
	cmp r4, #0
	beq _0802C5AE
	b _0802C644
	.align 2, 0
_0802C5A4: .4byte sub_802D4C4
_0802C5A8:
	cmp r4, #2
	beq _0802C620
	b _0802C644
_0802C5AE:
	movs r0, #0x28
	mov r1, ip
	strh r0, [r1, #0x18]
	ldr r0, _0802C5D4 @ =0x03000062
	adds r1, r2, r0
	ldr r0, _0802C5D8 @ =0x0000032D
	strh r0, [r1]
	ldr r1, _0802C5DC @ =0x03000064
	adds r0, r2, r1
	strh r4, [r0]
	ldr r0, _0802C5E0 @ =0x03000060
	adds r1, r2, r0
	movs r0, #5
	strh r0, [r1]
	ldr r0, _0802C5E4 @ =0x0300006D
	adds r1, r2, r0
	movs r0, #0xb4
	b _0802C642
	.align 2, 0
_0802C5D4: .4byte 0x03000062
_0802C5D8: .4byte 0x0000032D
_0802C5DC: .4byte 0x03000064
_0802C5E0: .4byte 0x03000060
_0802C5E4: .4byte 0x0300006D
_0802C5E8:
	movs r0, #0x28
	mov r1, ip
	strh r0, [r1, #0x18]
	ldr r0, _0802C60C @ =0x03000062
	adds r1, r2, r0
	ldr r0, _0802C610 @ =0x0000032D
	strh r0, [r1]
	ldr r1, _0802C614 @ =0x03000064
	adds r0, r2, r1
	strh r4, [r0]
	ldr r0, _0802C618 @ =0x03000060
	adds r1, r2, r0
	movs r0, #5
	strh r0, [r1]
	ldr r0, _0802C61C @ =0x0300006D
	adds r1, r2, r0
	movs r0, #0xb4
	b _0802C642
	.align 2, 0
_0802C60C: .4byte 0x03000062
_0802C610: .4byte 0x0000032D
_0802C614: .4byte 0x03000064
_0802C618: .4byte 0x03000060
_0802C61C: .4byte 0x0300006D
_0802C620:
	movs r0, #0x88
	mov r1, ip
	strh r0, [r1, #0x18]
	ldr r0, _0802C6B0 @ =0x03000062
	adds r1, r2, r0
	movs r0, #0xcb
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r1, _0802C6B4 @ =0x03000064
	adds r0, r2, r1
	strh r6, [r0]
	subs r1, #4
	adds r0, r2, r1
	strh r4, [r0]
	ldr r0, _0802C6B8 @ =0x0300006D
	adds r1, r2, r0
	movs r0, #0x78
_0802C642:
	strb r0, [r1]
_0802C644:
	ldr r1, _0802C6BC @ =gUnknown_084872C4
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802C6C0 @ =0x06010000
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1, #4]
	movs r3, #0
	movs r2, #0
	strh r2, [r1, #8]
	adds r0, r5, #0
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r1, #0xa]
	adds r0, r5, #0
	adds r0, #0x64
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x20
	strb r1, [r0]
	mov r1, ip
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	mov r0, ip
	strh r2, [r0, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	movs r0, #0x78
	mov r1, ip
	strh r0, [r1, #0x16]
	movs r0, #0x40
	strh r0, [r1, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #0x10]
	mov r0, ip
	adds r0, #0x25
	strb r3, [r0]
	strh r2, [r1, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x28]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802C6B0: .4byte 0x03000062
_0802C6B4: .4byte 0x03000064
_0802C6B8: .4byte 0x0300006D
_0802C6BC: .4byte gUnknown_084872C4
_0802C6C0: .4byte 0x06010000

	thumb_func_start sub_802C6C4
sub_802C6C4: @ 0x0802C6C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _0802C83C @ =gCurTask
	ldr r0, [r1]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov sb, r0
	ldr r2, _0802C840 @ =0x03000050
	adds r0, r7, r2
	movs r3, #0
	mov sl, r3
	mov r4, sl
	strh r4, [r0]
	ldr r1, _0802C844 @ =gUnknown_08487330
	ldr r0, _0802C848 @ =0x0300006A
	adds r2, r7, r0
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r4, _0802C84C @ =0x03000052
	adds r3, r7, r4
	strh r0, [r3]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0802C850 @ =0x03000054
	adds r2, r7, r1
	strh r0, [r2]
	ldr r0, _0802C854 @ =0x03000056
	adds r4, r7, r0
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r4]
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _0802C720
	adds r0, #0x1f
_0802C720:
	asrs r0, r0, #5
	rsbs r0, r0, #0
	ldr r3, _0802C858 @ =0x03000058
	adds r1, r7, r3
	strh r0, [r1]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0802C734
	adds r0, #0x1f
_0802C734:
	asrs r0, r0, #5
	rsbs r0, r0, #0
	ldr r2, _0802C85C @ =0x0300005A
	adds r1, r7, r2
	strh r0, [r1]
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0802C748
	adds r0, #0x3f
_0802C748:
	asrs r0, r0, #6
	rsbs r0, r0, #0
	ldr r4, _0802C860 @ =0x0300005C
	adds r1, r7, r4
	strh r0, [r1]
	ldr r1, _0802C864 @ =gUnknown_0848728C
	ldrh r0, [r1]
	ldr r2, _0802C868 @ =0x03000062
	adds r6, r7, r2
	strh r0, [r6]
	ldrh r0, [r1, #2]
	ldr r3, _0802C86C @ =0x03000064
	adds r5, r7, r3
	strh r0, [r5]
	adds r4, #0xb
	adds r0, r7, r4
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0802C870 @ =gUnknown_03005690
	ldr r0, [r0, #8]
	asrs r0, r0, #8
	mov r2, sb
	ldr r1, [r2, #0x44]
	asrs r1, r1, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_802D58C
	ldr r3, _0802C874 @ =0x03000066
	adds r3, r3, r7
	mov r8, r3
	strb r0, [r3]
	ldr r0, _0802C878 @ =0x0300000C
	adds r4, r7, r0
	ldr r1, _0802C87C @ =gUnknown_084872C4
	ldr r2, _0802C880 @ =0x03000060
	adds r0, r7, r2
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r3, _0802C884 @ =0x06010000
	adds r0, r0, r3
	str r0, [r4, #4]
	mov r0, sl
	strh r0, [r4, #8]
	ldrh r0, [r6]
	strh r0, [r4, #0xa]
	ldrh r1, [r5]
	subs r2, #0x34
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, _0802C888 @ =0x0300002D
	adds r1, r7, r3
	movs r0, #0xff
	strb r0, [r1]
	mov r0, sl
	strh r0, [r4, #0x1c]
	ldr r1, _0802C88C @ =0x0300002E
	adds r3, r7, r1
	movs r2, #0x10
	strb r2, [r3]
	mov r1, sb
	ldr r0, [r1, #0x3c]
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r4, #0x16]
	ldr r1, [r1, #0x40]
	asrs r1, r1, #8
	movs r0, #0x50
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	mov r0, sl
	strh r0, [r4, #0x1c]
	strb r2, [r3]
	ldr r1, _0802C890 @ =0x03000031
	adds r0, r7, r1
	movs r2, #0
	strb r2, [r0]
	mov r3, r8
	ldrb r0, [r3]
	ldr r1, _0802C894 @ =0x00002020
	orrs r0, r1
	str r0, [r4, #0x10]
	mov r1, sl
	mov r0, sb
	strh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	mov r2, sb
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	ldrh r0, [r4, #0x16]
	strh r0, [r2, #6]
	ldrh r0, [r4, #0x18]
	strh r0, [r2, #8]
	ldr r3, _0802C83C @ =gCurTask
	ldr r1, [r3]
	ldr r0, _0802C898 @ =sub_802C89C
	str r0, [r1, #8]
	adds r0, r4, #0
	bl sub_802B5DC
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	mov r1, sb
	bl sub_802BE0C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C83C: .4byte gCurTask
_0802C840: .4byte 0x03000050
_0802C844: .4byte gUnknown_08487330
_0802C848: .4byte 0x0300006A
_0802C84C: .4byte 0x03000052
_0802C850: .4byte 0x03000054
_0802C854: .4byte 0x03000056
_0802C858: .4byte 0x03000058
_0802C85C: .4byte 0x0300005A
_0802C860: .4byte 0x0300005C
_0802C864: .4byte gUnknown_0848728C
_0802C868: .4byte 0x03000062
_0802C86C: .4byte 0x03000064
_0802C870: .4byte gUnknown_03005690
_0802C874: .4byte 0x03000066
_0802C878: .4byte 0x0300000C
_0802C87C: .4byte gUnknown_084872C4
_0802C880: .4byte 0x03000060
_0802C884: .4byte 0x06010000
_0802C888: .4byte 0x0300002D
_0802C88C: .4byte 0x0300002E
_0802C890: .4byte 0x03000031
_0802C894: .4byte 0x00002020
_0802C898: .4byte sub_802C89C

	thumb_func_start sub_802C89C
sub_802C89C: @ 0x0802C89C
	push {r4, r5, r6, lr}
	ldr r0, _0802C91C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	adds r0, #0xc
	adds r5, r4, r0
	ldr r1, _0802C920 @ =0x03000052
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0802C8BC
	adds r0, #0x1f
_0802C8BC:
	asrs r0, r0, #5
	rsbs r0, r0, #0
	ldr r2, _0802C924 @ =0x03000058
	adds r1, r4, r2
	strh r0, [r1]
	ldr r1, _0802C928 @ =0x03000054
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0802C8D4
	adds r0, #0x1f
_0802C8D4:
	asrs r0, r0, #5
	rsbs r0, r0, #0
	ldr r2, _0802C92C @ =0x0300005A
	adds r1, r4, r2
	strh r0, [r1]
	bl sub_802BBF0
	bl sub_802BC6C
	cmp r0, #0
	beq _0802C916
	adds r0, r5, #0
	bl sub_802B5DC
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	ldr r0, _0802C930 @ =0x0300006C
	adds r1, r4, r0
	ldrb r2, [r1]
	adds r0, r2, #1
	strb r0, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0802C916
	adds r0, r5, #0
	bl DisplaySprite
_0802C916:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802C91C: .4byte gCurTask
_0802C920: .4byte 0x03000052
_0802C924: .4byte 0x03000058
_0802C928: .4byte 0x03000054
_0802C92C: .4byte 0x0300005A
_0802C930: .4byte 0x0300006C

	thumb_func_start sub_802C934
sub_802C934: @ 0x0802C934
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _0802CA4C @ =gUnknown_087BF8DC
	ldr r1, _0802CA50 @ =gUnknown_08487134
	ldr r0, _0802CA54 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov ip, r0
	movs r4, #0
	movs r2, #0
	ldr r0, _0802CA58 @ =0x0000FFFF
	mov sb, r0
	ldr r1, _0802CA5C @ =gUnknown_03005840
	mov r8, r1
_0802C964:
	lsls r3, r2, #0xc
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	mov r5, ip
	adds r1, r0, r5
	ldr r0, [r1, #4]
	movs r5, #0xc0
	lsls r5, r5, #2
	adds r0, r0, r5
	lsls r6, r2, #1
	adds r2, #1
	mov sl, r2
	cmp r3, r0
	bls _0802C9AA
	ldrh r0, [r1, #8]
	cmp r0, sb
	beq _0802C9AA
	adds r2, r3, #0
	ldr r3, _0802CA58 @ =0x0000FFFF
_0802C98C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	mov r7, ip
	adds r1, r0, r7
	ldr r0, [r1, #4]
	adds r0, r0, r5
	cmp r2, r0
	bls _0802C9AA
	ldrh r0, [r1, #8]
	cmp r0, r3
	bne _0802C98C
_0802C9AA:
	mov r1, r8
	adds r0, r6, r1
	strh r4, [r0]
	mov r3, sl
	lsls r0, r3, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bls _0802C964
	lsrs r4, r4, #3
	adds r4, #4
	ldr r0, _0802CA60 @ =0x0000FFFC
	ands r4, r0
	adds r0, r4, #0
	bl EwramMalloc
	adds r6, r0, #0
	movs r5, #0
	str r5, [sp, #4]
	ldr r1, _0802CA64 @ =0x040000D4
	add r7, sp, #4
	str r7, [r1]
	str r6, [r1, #4]
	lsrs r4, r4, #2
	movs r0, #0x85
	lsls r0, r0, #0x18
	orrs r4, r0
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0802CA68 @ =sub_802CA90
	movs r2, #0x98
	lsls r2, r2, #5
	ldr r1, _0802CA6C @ =sub_802D578
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r6, [r0, #0x3c]
	ldr r0, _0802CA70 @ =0x0300000C
	adds r1, r2, r0
	movs r4, #0
	strh r5, [r1, #0x16]
	strh r5, [r1, #0x18]
	ldr r0, _0802CA74 @ =0x06010800
	str r0, [r1, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r5, [r1, #8]
	ldr r0, _0802CA78 @ =0x0000031B
	strh r0, [r1, #0xa]
	ldr r3, _0802CA7C @ =0x0300002C
	adds r0, r2, r3
	strb r4, [r0]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	ldr r5, _0802CA80 @ =0x0300002D
	adds r3, r2, r5
	movs r0, #0xff
	strb r0, [r3]
	ldr r7, _0802CA84 @ =0x0300002E
	adds r3, r2, r7
	movs r0, #0x10
	strb r0, [r3]
	ldr r0, _0802CA88 @ =0x03000031
	adds r2, r2, r0
	strb r4, [r2]
	ldr r0, _0802CA8C @ =0x00002030
	str r0, [r1, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CA4C: .4byte gUnknown_087BF8DC
_0802CA50: .4byte gUnknown_08487134
_0802CA54: .4byte gCurrentLevel
_0802CA58: .4byte 0x0000FFFF
_0802CA5C: .4byte gUnknown_03005840
_0802CA60: .4byte 0x0000FFFC
_0802CA64: .4byte 0x040000D4
_0802CA68: .4byte sub_802CA90
_0802CA6C: .4byte sub_802D578
_0802CA70: .4byte 0x0300000C
_0802CA74: .4byte 0x06010800
_0802CA78: .4byte 0x0000031B
_0802CA7C: .4byte 0x0300002C
_0802CA80: .4byte 0x0300002D
_0802CA84: .4byte 0x0300002E
_0802CA88: .4byte 0x03000031
_0802CA8C: .4byte 0x00002030

	thumb_func_start sub_802CA90
sub_802CA90: @ 0x0802CA90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	ldr r0, _0802CB88 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	str r0, [sp, #0x14]
	ldr r2, _0802CB8C @ =gUnknown_087BF8DC
	ldr r1, _0802CB90 @ =gUnknown_08487134
	ldr r0, _0802CB94 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r1, _0802CB98 @ =gUnknown_03005690
	str r1, [sp, #0xc]
	ldr r2, _0802CB9C @ =gUnknown_030055FC
	str r2, [sp, #0x10]
	ldr r4, _0802CBA0 @ =0x0300000C
	adds r4, r4, r3
	mov r8, r4
	ldr r5, [sp, #0x14]
	orrs r5, r3
	str r5, [sp, #0x14]
	movs r6, #0
	str r6, [sp, #0x20]
	mov r2, sp
	adds r2, #6
	ldr r7, _0802CBA4 @ =0x00007FFF
	adds r0, r7, #0
	strh r0, [r2]
	ldr r0, _0802CBA8 @ =0x040000D4
	str r2, [r0]
	ldr r1, _0802CBAC @ =gUnknown_03005670
	str r1, [r0, #4]
	ldr r1, _0802CBB0 @ =0x81000010
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	strh r6, [r2]
	str r2, [r0]
	ldr r1, _0802CBB4 @ =gUnknown_030057E0
	str r1, [r0, #4]
	ldr r1, _0802CBB8 @ =0x81000008
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, [r5, #0x3c]
	str r2, [sp, #0x1c]
	mov r0, r8
	bl UpdateSpriteAnimation
	ldr r3, [r4, #0xc]
	str r3, [sp, #0x18]
	ldr r4, [sp, #0xc]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	movs r5, #0xc0
	lsls r5, r5, #2
	adds r3, r1, r5
	asrs r0, r3, #0xc
	lsls r0, r0, #0x18
	ldr r2, _0802CBBC @ =gUnknown_03005840
	lsrs r0, r0, #0x17
	adds r0, r0, r2
	ldrh r0, [r0]
	mov sb, r0
	subs r1, #0xc0
	str r1, [sp, #0x34]
	str r3, [sp, #0x38]
	lsls r0, r0, #1
	add r0, sb
	lsls r0, r0, #2
	ldr r6, [sp, #8]
	adds r0, r0, r6
	ldr r0, [r0, #4]
	cmp r0, r3
	blt _0802CB3E
	b _0802D12A
_0802CB3E:
	mov r7, sp
	adds r7, #4
	str r7, [sp, #0x3c]
_0802CB44:
	mov r1, sb
	lsls r0, r1, #1
	add r0, sb
	lsls r0, r0, #2
	ldr r2, [sp, #8]
	adds r3, r0, r2
	ldrh r1, [r3, #8]
	ldr r0, _0802CBC0 @ =0x0000FFFF
	cmp r1, r0
	bne _0802CB5A
	b _0802D12A
_0802CB5A:
	cmp r1, #0
	bne _0802CB80
	ldr r4, [r3, #4]
	ldr r5, [sp, #0x34]
	cmp r4, r5
	blt _0802CB80
	mov r6, sb
	lsrs r2, r6, #3
	ldr r7, [sp, #0x1c]
	adds r0, r7, r2
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r6
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	str r2, [sp, #0x40]
	cmp r1, #0
	beq _0802CBC4
_0802CB80:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	b _0802CE5C
	.align 2, 0
_0802CB88: .4byte gCurTask
_0802CB8C: .4byte gUnknown_087BF8DC
_0802CB90: .4byte gUnknown_08487134
_0802CB94: .4byte gCurrentLevel
_0802CB98: .4byte gUnknown_03005690
_0802CB9C: .4byte gUnknown_030055FC
_0802CBA0: .4byte 0x0300000C
_0802CBA4: .4byte 0x00007FFF
_0802CBA8: .4byte 0x040000D4
_0802CBAC: .4byte gUnknown_03005670
_0802CBB0: .4byte 0x81000010
_0802CBB4: .4byte gUnknown_030057E0
_0802CBB8: .4byte 0x81000008
_0802CBBC: .4byte gUnknown_03005840
_0802CBC0: .4byte 0x0000FFFF
_0802CBC4:
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsls r0, r0, #8
	str r0, [sp, #0x24]
	movs r2, #2
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	str r0, [sp, #0x28]
	lsls r3, r4, #8
	str r3, [sp, #0x2c]
	ldr r5, [sp, #0xc]
	ldr r0, [r5, #8]
	asrs r7, r0, #8
	subs r0, r7, r4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	str r6, [sp, #0x30]
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r6, r0, r1
	asrs r6, r6, #3
	cmp r6, #0
	bne _0802CBF6
	movs r6, #1
_0802CBF6:
	adds r0, r6, #0
	muls r0, r6, r0
	muls r0, r6, r0
	muls r6, r0, r6
	adds r0, r6, #0
	movs r1, #0xcc
	lsls r1, r1, #1
	bl __divsi3
	adds r6, r0, #0
	adds r4, r6, #0
	cmp r6, #0
	bge _0802CC14
	ldr r2, _0802CE64 @ =0x000001FF
	adds r4, r6, r2
_0802CC14:
	asrs r4, r4, #9
	adds r4, #0x38
	ldr r3, [sp, #0x24]
	adds r0, r3, #0
	muls r0, r4, r0
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r1, r5, #0
	bl __divsi3
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r1, [sp, #0x28]
	adds r0, r1, #0
	muls r0, r4, r0
	adds r1, r5, #0
	bl __divsi3
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [sp, #0xc]
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802CC50
	b _0802CEA0
_0802CC50:
	ldr r0, [sp, #0xc]
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802CC5C
	b _0802CEA0
_0802CC5C:
	ldr r2, [sp, #0x2c]
	asrs r1, r2, #8
	adds r0, r1, #0
	subs r0, #0x20
	cmp r7, r0
	bge _0802CC6A
	b _0802CEA0
_0802CC6A:
	cmp r7, r1
	ble _0802CC70
	b _0802CEA0
_0802CC70:
	mov r3, sl
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r1, r3
	ldr r4, [sp, #0xc]
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r0, [sp, #0x10]
	adds r0, #0x2c
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	cmp r2, r1
	bgt _0802CCAC
	mov r0, r8
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0802CCC0
	cmp r2, r1
	bge _0802CCAC
	b _0802CEA0
_0802CCAC:
	ldr r0, [sp, #0x10]
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	bge _0802CCC0
	b _0802CEA0
_0802CCC0:
	mov r5, ip
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	adds r1, #0x2d
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	ldr r7, [sp, #0xc]
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	ldr r1, [sp, #0x10]
	adds r1, #0x2d
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _0802CCFC
	mov r0, r8
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0802CD10
	cmp r2, r1
	bge _0802CCFC
	b _0802CEA0
_0802CCFC:
	ldr r0, [sp, #0x10]
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	bge _0802CD10
	b _0802CEA0
_0802CD10:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0802CE68 @ =sub_802D3E4
	movs r1, #0x74
	movs r2, #0xa8
	lsls r2, r2, #5
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	ldr r3, _0802CE6C @ =0x03000060
	adds r4, r2, r3
	movs r6, #1
	strh r6, [r4]
	ldr r7, [sp, #0x24]
	str r7, [r5, #0x3c]
	ldr r0, [sp, #0x28]
	str r0, [r5, #0x40]
	ldr r1, [sp, #0x2c]
	str r1, [r5, #0x44]
	subs r3, #0x10
	adds r0, r2, r3
	movs r6, #0
	strh r6, [r0]
	ldr r7, _0802CE70 @ =0x03000052
	adds r0, r2, r7
	strh r6, [r0]
	ldr r1, _0802CE74 @ =0x03000054
	adds r0, r2, r1
	strh r6, [r0]
	adds r3, #6
	adds r0, r2, r3
	strh r6, [r0]
	ldr r6, _0802CE78 @ =0x03000058
	adds r0, r2, r6
	movs r7, #0
	strh r7, [r0]
	adds r1, #6
	adds r0, r2, r1
	movs r3, #0
	strh r3, [r0]
	adds r6, #4
	adds r0, r2, r6
	strh r3, [r0]
	ldr r3, _0802CE7C @ =gUnknown_0848728C
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r1, [r0]
	ldr r7, _0802CE80 @ =0x03000062
	adds r0, r2, r7
	strh r1, [r0]
	ldrh r0, [r4]
	lsls r0, r0, #2
	adds r3, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	ldr r1, _0802CE84 @ =0x03000064
	adds r2, r2, r1
	strh r0, [r2]
	ldr r2, [sp, #0x30]
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	movs r2, #0
	ldr r1, _0802CE88 @ =gUnknown_03005670
	movs r4, #0
	ldrsh r0, [r1, r4]
	mov r4, sb
	adds r4, #1
	ldr r6, _0802CE8C @ =0x00007FFF
	cmp r0, r6
	beq _0802CDCC
_0802CDA6:
	ldr r1, _0802CE88 @ =gUnknown_03005670
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, r3
	beq _0802CDCE
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bhi _0802CDCE
	lsls r0, r2, #1
	adds r1, r0, r1
	movs r6, #0
	ldrsh r0, [r1, r6]
	ldr r7, _0802CE8C @ =0x00007FFF
	cmp r0, r7
	bne _0802CDA6
_0802CDCC:
	strh r3, [r1]
_0802CDCE:
	adds r0, r2, #1
	adds r3, r5, #0
	adds r3, #0x66
	strb r0, [r3]
	adds r0, r5, #0
	adds r0, #0x67
	movs r1, #1
	strb r1, [r0]
	adds r2, r5, #0
	adds r2, #0xc
	ldr r1, _0802CE90 @ =gUnknown_084872C4
	subs r0, #7
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r6, _0802CE94 @ =0x06010000
	adds r0, r0, r6
	str r0, [r2, #4]
	movs r7, #0
	strh r7, [r2, #8]
	adds r0, r5, #0
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	adds r0, r5, #0
	adds r0, #0x64
	ldrh r1, [r0]
	subs r0, #0x38
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x2d
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0
	strh r0, [r2, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	movs r6, #0
	strh r6, [r2, #0x1c]
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x31
	strb r7, [r0]
	ldrb r0, [r3]
	ldr r1, _0802CE98 @ =0x00002020
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	ldr r1, _0802CE9C @ =gUnknown_03005078
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_802D5EC
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x40]
	adds r2, r0, r1
	movs r0, #7
	mov r3, sb
	ands r3, r0
	movs r0, #1
	lsls r0, r3
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	lsls r0, r4, #0x10
_0802CE5C:
	lsrs r0, r0, #0x10
	mov sb, r0
	b _0802D114
	.align 2, 0
_0802CE64: .4byte 0x000001FF
_0802CE68: .4byte sub_802D3E4
_0802CE6C: .4byte 0x03000060
_0802CE70: .4byte 0x03000052
_0802CE74: .4byte 0x03000054
_0802CE78: .4byte 0x03000058
_0802CE7C: .4byte gUnknown_0848728C
_0802CE80: .4byte 0x03000062
_0802CE84: .4byte 0x03000064
_0802CE88: .4byte gUnknown_03005670
_0802CE8C: .4byte 0x00007FFF
_0802CE90: .4byte gUnknown_084872C4
_0802CE94: .4byte 0x06010000
_0802CE98: .4byte 0x00002020
_0802CE9C: .4byte gUnknown_03005078
_0802CEA0:
	ldr r4, [sp, #0x30]
	lsls r0, r4, #0x10
	asrs r3, r0, #0x10
	movs r2, #0
	ldr r0, _0802CECC @ =gUnknown_03005670
	movs r5, #0
	ldrsh r1, [r0, r5]
	adds r4, r0, #0
	mov r7, sl
	lsls r5, r7, #0x10
	mov r0, ip
	lsls r0, r0, #0x10
	mov ip, r0
	movs r7, #0x23
	add r7, r8
	mov sl, r7
	ldr r0, _0802CED0 @ =0x00007FFF
	cmp r1, r0
	bne _0802CED4
	strh r3, [r4]
	b _0802CEFA
	.align 2, 0
_0802CECC: .4byte gUnknown_03005670
_0802CED0: .4byte 0x00007FFF
_0802CED4:
	lsls r0, r2, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r3
	beq _0802CEFA
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bhi _0802CEFA
	lsls r0, r2, #1
	adds r1, r0, r4
	movs r7, #0
	ldrsh r0, [r1, r7]
	ldr r7, _0802D008 @ =0x00007FFF
	cmp r0, r7
	bne _0802CED4
	strh r3, [r1]
_0802CEFA:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	asrs r0, r5, #0x10
	ldr r1, _0802D00C @ =gUnknown_03005780
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	adds r0, #0x78
	ldr r2, [sp, #0x14]
	strh r0, [r2, #6]
	ldr r4, _0802D00C @ =gUnknown_03005780
	ldrh r1, [r4, #6]
	movs r0, #0x50
	subs r0, r0, r1
	mov r5, ip
	asrs r1, r5, #0x10
	subs r0, r0, r1
	strh r0, [r2, #8]
	adds r0, r6, #0
	cmp r0, #0
	bge _0802CF28
	ldr r6, _0802D010 @ =0x000003FF
	adds r0, r0, r6
_0802CF28:
	asrs r0, r0, #0xa
	adds r0, #0x40
	ldr r7, [sp, #0x14]
	strh r0, [r7, #2]
	strh r0, [r7, #4]
	ldr r2, _0802D014 @ =0x00002020
	orrs r2, r3
	mov r0, r8
	str r2, [r0, #0x10]
	movs r3, #2
	ldrsh r1, [r7, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802CF4E
	movs r0, #0x40
	orrs r2, r0
	mov r4, r8
	str r2, [r4, #0x10]
_0802CF4E:
	ldr r5, [sp, #0x14]
	movs r6, #2
	ldrsh r2, [r5, r6]
	ldr r7, [sp, #0x18]
	movs r0, #8
	ldrsh r1, [r7, r0]
	ldrh r0, [r7, #4]
	lsrs r0, r0, #1
	subs r1, r1, r0
	muls r1, r2, r1
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	ldrh r0, [r5, #6]
	subs r3, r0, r1
	mov r1, r8
	strh r3, [r1, #0x16]
	movs r4, #4
	ldrsh r2, [r5, r4]
	movs r5, #0xa
	ldrsh r1, [r7, r5]
	ldrh r0, [r7, #6]
	lsrs r0, r0, #1
	subs r1, r1, r0
	muls r1, r2, r1
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r6, [sp, #0x14]
	ldrh r0, [r6, #8]
	subs r2, r0, r1
	mov r7, r8
	strh r2, [r7, #0x18]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0802CF9E
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0802D020
_0802CF9E:
	movs r3, #1
	rsbs r3, r3, #0
	adds r2, r3, #0
	movs r0, #0xff
	mov r4, sl
	strb r0, [r4]
	mov r5, r8
	ldr r0, [r5, #0x10]
	movs r1, #0x1f
	ands r0, r1
	ldr r6, [sp, #0x3c]
	strh r0, [r6]
	ldrh r0, [r6]
	ldr r7, _0802D018 @ =gUnknown_030057E0
	adds r0, r0, r7
	movs r6, #0
	ldrsb r6, [r0, r6]
	cmp r6, #0
	bne _0802CFFE
	ldr r0, [sp, #0x3c]
	ldrh r1, [r0]
	adds r1, r1, r7
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r1, [sp, #0x3c]
	ldrh r0, [r1]
	lsls r0, r0, #5
	ldr r1, _0802D01C @ =gUnknown_03004636
	adds r5, r0, r1
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r2, [sp, #0x14]
	movs r3, #2
	ldrsh r1, [r2, r3]
	adds r0, r4, #0
	bl Div
	strh r0, [r5]
	strh r6, [r5, #8]
	strh r6, [r5, #0x10]
	ldr r6, [sp, #0x14]
	movs r7, #4
	ldrsh r1, [r6, r7]
	adds r0, r4, #0
	bl Div
	strh r0, [r5, #0x18]
_0802CFFE:
	mov r0, r8
	bl DisplaySprite
	b _0802D100
	.align 2, 0
_0802D008: .4byte 0x00007FFF
_0802D00C: .4byte gUnknown_03005780
_0802D010: .4byte 0x000003FF
_0802D014: .4byte 0x00002020
_0802D018: .4byte gUnknown_030057E0
_0802D01C: .4byte gUnknown_03004636
_0802D020:
	mov r0, r8
	ldr r1, [r0, #0x10]
	adds r0, r1, #0
	movs r4, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0802D042
	ldr r5, [sp, #0x18]
	ldrh r0, [r5, #4]
	lsrs r0, r0, #1
	subs r0, r3, r0
	mov r6, r8
	strh r0, [r6, #0x16]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #1
	subs r0, r2, r0
	strh r0, [r6, #0x18]
_0802D042:
	movs r7, #0x1f
	ands r1, r7
	ldr r0, [sp, #0x3c]
	strh r1, [r0]
	ldrh r0, [r0]
	ldr r1, _0802D13C @ =gUnknown_030057E0
	adds r0, r0, r1
	movs r6, #0
	ldrsb r6, [r0, r6]
	cmp r6, #0
	bne _0802D08E
	ldr r2, [sp, #0x3c]
	ldrh r0, [r2]
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	ldrh r0, [r2]
	lsls r0, r0, #5
	ldr r1, _0802D140 @ =gUnknown_03004636
	adds r5, r0, r1
	movs r4, #0x80
	lsls r4, r4, #9
	ldr r3, [sp, #0x14]
	movs r0, #2
	ldrsh r1, [r3, r0]
	adds r0, r4, #0
	bl Div
	strh r0, [r5]
	strh r6, [r5, #8]
	strh r6, [r5, #0x10]
	ldr r2, [sp, #0x14]
	movs r3, #4
	ldrsh r1, [r2, r3]
	adds r0, r4, #0
	bl Div
	strh r0, [r5, #0x18]
_0802D08E:
	mov r4, sl
	ldrb r0, [r4]
	lsls r0, r0, #3
	ldr r1, _0802D144 @ =gUnknown_03001B80
	adds r5, r0, r1
	mov r6, r8
	ldrh r0, [r6, #0x1a]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _0802D148 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r4
	beq _0802D12A
	ldr r1, _0802D14C @ =0x040000D4
	str r5, [r1]
	str r4, [r1, #4]
	ldr r0, _0802D150 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r4]
	movs r3, #0xfd
	lsls r3, r3, #8
	adds r0, r3, #0
	ands r2, r0
	strh r2, [r4]
	ldrh r3, [r4, #2]
	movs r5, #0xc0
	lsls r5, r5, #8
	adds r0, r5, #0
	ands r3, r0
	strh r3, [r4, #2]
	ldrb r1, [r6, #0x18]
	ldr r0, [r6, #0x10]
	movs r6, #0x40
	ands r0, r6
	lsls r0, r0, #3
	orrs r1, r0
	orrs r1, r2
	strh r1, [r4]
	mov r0, r8
	ldrh r1, [r0, #0x16]
	ldr r2, _0802D154 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	mov r5, r8
	ldr r0, [r5, #0x10]
	ands r0, r7
	lsls r0, r0, #9
	orrs r1, r0
	orrs r1, r3
	strh r1, [r4, #2]
_0802D100:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, [sp, #0x20]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x20]
_0802D114:
	mov r6, sb
	lsls r0, r6, #1
	add r0, sb
	lsls r0, r0, #2
	ldr r7, [sp, #8]
	adds r0, r0, r7
	ldr r0, [r0, #4]
	ldr r1, [sp, #0x38]
	cmp r0, r1
	bge _0802D12A
	b _0802CB44
_0802D12A:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D13C: .4byte gUnknown_030057E0
_0802D140: .4byte gUnknown_03004636
_0802D144: .4byte gUnknown_03001B80
_0802D148: .4byte iwram_end
_0802D14C: .4byte 0x040000D4
_0802D150: .4byte 0x80000003
_0802D154: .4byte 0x000001FF

	thumb_func_start sub_802D158
sub_802D158: @ 0x0802D158
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0802D188 @ =sub_802D20C
	movs r5, #0x80
	lsls r5, r5, #5
	movs r4, #0
	str r4, [sp]
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl TaskCreate
	ldr r0, _0802D18C @ =sub_802D680
	str r4, [sp]
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl TaskCreate
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D188: .4byte sub_802D20C
_0802D18C: .4byte sub_802D680

	thumb_func_start sub_802D190
sub_802D190: @ 0x0802D190
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0802D1D0 @ =gUnknown_03005084
	movs r4, #0
	ldrsb r4, [r0, r4]
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_8029E0C
	adds r0, r4, #0
	bl sub_8029EA8
	ldr r0, _0802D1D4 @ =sub_802A560
	movs r2, #0x88
	lsls r2, r2, #5
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strb r5, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D1D0: .4byte gUnknown_03005084
_0802D1D4: .4byte sub_802A560

	thumb_func_start sub_802D1D8
sub_802D1D8: @ 0x0802D1D8
	push {r4, lr}
	sub sp, #4
	ldr r0, _0802D208 @ =sub_802B3E4
	movs r2, #0xa0
	lsls r2, r2, #5
	movs r4, #0
	str r4, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strb r1, [r0, #6]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D208: .4byte sub_802B3E4

	thumb_func_start sub_802D20C
sub_802D20C: @ 0x0802D20C
	push {lr}
	ldr r1, _0802D22C @ =gUnknown_030055E0
	movs r2, #0
	strb r2, [r1]
	movs r0, #0xf0
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	ldr r0, _0802D230 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D234 @ =sub_802D238
	str r0, [r1, #8]
	movs r0, #0x2a
	bl m4aSongNumStart
	pop {r0}
	bx r0
	.align 2, 0
_0802D22C: .4byte gUnknown_030055E0
_0802D230: .4byte gCurTask
_0802D234: .4byte sub_802D238

	thumb_func_start sub_802D238
sub_802D238: @ 0x0802D238
	push {lr}
	ldr r2, _0802D264 @ =gUnknown_03005690
	ldr r1, _0802D268 @ =gUnknown_030055E0
	ldrh r0, [r1, #2]
	subs r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0802D260
	ldr r0, _0802D26C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D270 @ =sub_80299B0
	str r0, [r1, #8]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	bl sub_802D560
_0802D260:
	pop {r0}
	bx r0
	.align 2, 0
_0802D264: .4byte gUnknown_03005690
_0802D268: .4byte gUnknown_030055E0
_0802D26C: .4byte gCurTask
_0802D270: .4byte sub_80299B0

	thumb_func_start sub_802D274
sub_802D274: @ 0x0802D274
	ldr r1, _0802D298 @ =gUnknown_030055E0
	ldrh r0, [r1, #2]
	subs r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0802D294
	ldr r2, _0802D29C @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0802D2A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D2A4 @ =sub_8029AC4
	str r0, [r1, #8]
_0802D294:
	bx lr
	.align 2, 0
_0802D298: .4byte gUnknown_030055E0
_0802D29C: .4byte gUnknown_03005004
_0802D2A0: .4byte gCurTask
_0802D2A4: .4byte sub_8029AC4

	thumb_func_start sub_802D2A8
sub_802D2A8: @ 0x0802D2A8
	ldr r0, _0802D2B8 @ =gDispCnt
	ldrh r1, [r0]
	movs r3, #0xf0
	lsls r3, r3, #5
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
_0802D2B8: .4byte gDispCnt

	thumb_func_start sub_802D2BC
sub_802D2BC: @ 0x0802D2BC
	push {lr}
	ldr r3, _0802D2E0 @ =gUnknown_03005780
	ldr r1, _0802D2E4 @ =gUnknown_030011A8
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	strb r2, [r3, #0x12]
	movs r0, #8
	strb r0, [r3, #0x13]
	bl sub_8029CDC
	ldr r0, _0802D2E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802D2EC @ =sub_8029CDC
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0802D2E0: .4byte gUnknown_03005780
_0802D2E4: .4byte gUnknown_030011A8
_0802D2E8: .4byte gCurTask
_0802D2EC: .4byte sub_8029CDC
_0802D2F0:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_802D2F4
sub_802D2F4: @ 0x0802D2F4
	adds r3, r0, #0
	ldr r2, [r3]
	ldr r0, _0802D304 @ =0xFFFFD800
	cmp r2, r0
	bge _0802D308
	movs r1, #1
	b _0802D314
	.align 2, 0
_0802D304: .4byte 0xFFFFD800
_0802D308:
	movs r0, #0xa0
	lsls r0, r0, #6
	movs r1, #3
	cmp r2, r0
	bgt _0802D314
	movs r1, #2
_0802D314:
	ldr r2, [r3, #4]
	ldr r0, _0802D328 @ =0x00001DFF
	cmp r2, r0
	bgt _0802D336
	ldr r0, _0802D32C @ =0xFFFFE200
	cmp r2, r0
	ble _0802D330
	adds r0, r1, #3
	b _0802D332
	.align 2, 0
_0802D328: .4byte 0x00001DFF
_0802D32C: .4byte 0xFFFFE200
_0802D330:
	adds r0, r1, #6
_0802D332:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0802D336:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_802D33C
sub_802D33C: @ 0x0802D33C
	push {r4, lr}
	ldr r1, _0802D36C @ =gUnknown_03005690
	ldr r4, _0802D370 @ =gUnknown_030055E0
	ldr r0, _0802D374 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, [r1, #8]
	ldr r0, [r0, #0x44]
	cmp r1, r0
	blt _0802D364
	ldr r1, _0802D378 @ =0x03000060
	adds r0, r2, r1
	ldrh r0, [r0]
	strb r0, [r4]
	adds r0, r3, #0
	bl TaskDestroy
_0802D364:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D36C: .4byte gUnknown_03005690
_0802D370: .4byte gUnknown_030055E0
_0802D374: .4byte gCurTask
_0802D378: .4byte 0x03000060

	thumb_func_start sub_802D37C
sub_802D37C: @ 0x0802D37C
	push {r4, r5, r6, lr}
	ldr r0, _0802D3B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	ldr r0, _0802D3B8 @ =0x0300000C
	adds r5, r4, r0
	orrs r6, r4
	bl sub_802D464
	bl sub_802BBF0
	bl sub_802BC6C
	cmp r0, #0
	beq _0802D3DE
	ldr r3, _0802D3BC @ =0x03000070
	adds r1, r4, r3
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0802D3C0
	subs r0, r2, #1
	strh r0, [r1]
	b _0802D3C4
	.align 2, 0
_0802D3B4: .4byte gCurTask
_0802D3B8: .4byte 0x0300000C
_0802D3BC: .4byte 0x03000070
_0802D3C0:
	bl sub_802B884
_0802D3C4:
	adds r0, r5, #0
	bl sub_802B5DC
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r5, #0
	bl DisplaySprite
_0802D3DE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_802D3E4
sub_802D3E4: @ 0x0802D3E4
	push {r4, r5, r6, lr}
	ldr r5, _0802D418 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	bl sub_802BBF0
	bl sub_802BC6C
	cmp r0, #0
	beq _0802D444
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802D420
	ldr r1, [r5]
	ldr r0, _0802D41C @ =sub_802D450
	str r0, [r1, #8]
	b _0802D444
	.align 2, 0
_0802D418: .4byte gCurTask
_0802D41C: .4byte sub_802D450
_0802D420:
	adds r0, r4, #0
	bl sub_802B5DC
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0802D436
	ldr r1, [r5]
	ldr r0, _0802D44C @ =sub_802D450
	str r0, [r1, #8]
_0802D436:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_802BE0C
	adds r0, r4, #0
	bl DisplaySprite
_0802D444:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D44C: .4byte sub_802D450

	thumb_func_start sub_802D450
sub_802D450: @ 0x0802D450
	push {lr}
	ldr r0, _0802D460 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802D460: .4byte gCurTask

	thumb_func_start sub_802D464
sub_802D464: @ 0x0802D464
	push {r4, r5, lr}
	ldr r0, _0802D4A4 @ =gCurTask
	ldr r2, [r0]
	ldrh r4, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r1, [r0, #6]
	ldr r0, _0802D4A8 @ =0x03000060
	adds r3, r4, r0
	ldrh r0, [r3]
	cmp r0, #3
	bne _0802D4BE
	ldr r5, _0802D4AC @ =0x0300006D
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D4BC
	ldr r0, _0802D4B0 @ =gUnknown_03005690
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #4
	bne _0802D4BE
	ldr r0, _0802D4B4 @ =sub_802C0CC
	str r0, [r2, #8]
	ldr r0, _0802D4B8 @ =0x03000052
	adds r1, r4, r0
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r1]
	b _0802D4BE
	.align 2, 0
_0802D4A4: .4byte gCurTask
_0802D4A8: .4byte 0x03000060
_0802D4AC: .4byte 0x0300006D
_0802D4B0: .4byte gUnknown_03005690
_0802D4B4: .4byte sub_802C0CC
_0802D4B8: .4byte 0x03000052
_0802D4BC:
	strh r0, [r3]
_0802D4BE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_802D4C4
sub_802D4C4: @ 0x0802D4C4
	push {r4, r5, r6, lr}
	ldr r6, _0802D4F8 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	ldr r0, _0802D4FC @ =0x0300000C
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0802D500 @ =0x0300006D
	adds r4, r4, r0
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802D4F2
	ldr r1, [r6]
	ldr r0, _0802D504 @ =sub_802D66C
	str r0, [r1, #8]
_0802D4F2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D4F8: .4byte gCurTask
_0802D4FC: .4byte 0x0300000C
_0802D500: .4byte 0x0300006D
_0802D504: .4byte sub_802D66C

	thumb_func_start sub_802D508
sub_802D508: @ 0x0802D508
	push {r4, r5, lr}
	ldr r0, _0802D55C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	adds r1, #0xc
	adds r4, r0, r1
	adds r1, #0x62
	adds r2, r0, r1
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0xa0
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0802D556
	subs r0, r3, #1
	strh r0, [r2]
	bl sub_802BBF0
	bl sub_802BC6C
	cmp r0, #0
	beq _0802D556
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_802BE0C
	adds r0, r4, #0
	bl DisplaySprite
_0802D556:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D55C: .4byte gCurTask

	thumb_func_start sub_802D560
sub_802D560: @ 0x0802D560
	movs r2, #0
	ldr r0, _0802D574 @ =gUnknown_030056F0
	movs r1, #0xf
_0802D566:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	subs r1, #1
	cmp r1, #0
	bge _0802D566
	bx lr
	.align 2, 0
_0802D574: .4byte gUnknown_030056F0

	thumb_func_start sub_802D578
sub_802D578: @ 0x0802D578
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x3c]
	bl EwramFree
	pop {r0}
	bx r0

	thumb_func_start sub_802D58C
sub_802D58C: @ 0x0802D58C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0
	ldr r0, _0802D5A8 @ =gUnknown_03005670
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, _0802D5AC @ =0x00007FFF
	adds r5, r0, #0
	cmp r2, r1
	bne _0802D5B0
	strh r4, [r5]
	b _0802D5DA
	.align 2, 0
_0802D5A8: .4byte gUnknown_03005670
_0802D5AC: .4byte 0x00007FFF
_0802D5B0:
	lsls r0, r3, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	beq _0802D5DA
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xf
	bhi _0802D5DA
	lsls r0, r3, #1
	adds r2, r0, r5
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _0802D5E8 @ =0x00007FFF
	cmp r1, r0
	bne _0802D5B0
	strh r4, [r2]
_0802D5DA:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802D5E8: .4byte 0x00007FFF

	thumb_func_start sub_802D5EC
sub_802D5EC: @ 0x0802D5EC
	push {r4, r5, lr}
	ldr r0, _0802D624 @ =gUnknown_03005078
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802D634
	ldr r4, _0802D628 @ =gMPlayInfo_SE2
	ldr r1, _0802D62C @ =0x87BC790
	adds r0, r4, #0
	bl MPlayStart
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r5, _0802D630 @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl m4aMPlayVolumeControl
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl m4aMPlayPanpotControl
	b _0802D65A
	.align 2, 0
_0802D624: .4byte gUnknown_03005078
_0802D628: .4byte gMPlayInfo_SE2
_0802D62C: .4byte 0x87BC790
_0802D630: .4byte 0x0000FFFF
_0802D634:
	ldr r4, _0802D660 @ =gMPlayInfo_SE1
	ldr r1, _0802D664 @ =0x87BC790
	adds r0, r4, #0
	bl MPlayStart
	adds r0, r4, #0
	bl m4aMPlayImmInit
	ldr r5, _0802D668 @ =0x0000FFFF
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl m4aMPlayVolumeControl
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl m4aMPlayPanpotControl
_0802D65A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D660: .4byte gMPlayInfo_SE1
_0802D664: .4byte 0x87BC790
_0802D668: .4byte 0x0000FFFF

	thumb_func_start sub_802D66C
sub_802D66C: @ 0x0802D66C
	push {lr}
	ldr r0, _0802D67C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802D67C: .4byte gCurTask

	thumb_func_start sub_802D680
sub_802D680: @ 0x0802D680
	push {lr}
	ldr r0, _0802D6AC @ =gUnknown_03005004
	ldrh r2, [r0]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	bne _0802D6A6
	ldr r0, _0802D6B0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802D6A6
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _0802D6A6
	bl sub_801A38C
_0802D6A6:
	pop {r0}
	bx r0
	.align 2, 0
_0802D6AC: .4byte gUnknown_03005004
_0802D6B0: .4byte gPressedKeys

	thumb_func_start sub_802D6B4
sub_802D6B4: @ 0x0802D6B4
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x42
	ldr r0, _0802D6DC @ =gUnknown_030060E0
	ldrh r1, [r1]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0802D6E0
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0802D6E0
	movs r0, #0x80
	lsls r0, r0, #1
	b _0802D6F6
	.align 2, 0
_0802D6DC: .4byte gUnknown_030060E0
_0802D6E0:
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802D6F6
	movs r0, #0xff
	lsls r0, r0, #8
_0802D6F6:
	strh r0, [r2, #0x20]
	bx lr
	.align 2, 0

	thumb_func_start sub_802D6FC
sub_802D6FC: @ 0x0802D6FC
	mov ip, r0
	adds r3, r1, #0
	ldr r1, _0802D740 @ =gUnknown_084872C4
	adds r0, #0x60
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0802D744 @ =0x06010000
	adds r0, r0, r1
	str r0, [r3, #4]
	movs r2, #0
	strh r2, [r3, #8]
	mov r0, ip
	adds r0, #0x62
	ldrh r0, [r0]
	strh r0, [r3, #0xa]
	mov r0, ip
	adds r0, #0x64
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r3, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	bx lr
	.align 2, 0
_0802D740: .4byte gUnknown_084872C4
_0802D744: .4byte 0x06010000

	thumb_func_start sub_802D748
sub_802D748: @ 0x0802D748
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r0, _0802D7D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	adds r0, #0xc
	adds r5, r4, r0
	ldr r0, [r5, #0x10]
	ldr r1, _0802D7D8 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r1, _0802D7DC @ =gUnknown_03005A20
	mov ip, r1
	ldr r3, [r1, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _0802D792
	ldr r2, _0802D7E0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802D7E4 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0802D7E8 @ =gUnknown_03001B30
	strh r3, [r0, #0xa]
	ldr r0, _0802D7EC @ =gUnknown_030011A8
	strh r3, [r0]
	strh r3, [r0, #4]
_0802D792:
	ldr r1, _0802D7F0 @ =0x030000AF
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0802D862
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	mov r3, ip
	bl sub_800BCBC
	mov r8, r0
	ldr r0, _0802D7F4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0802D7FC
	ldr r3, _0802D7F8 @ =gUnknown_03005AB0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_800BCBC
	b _0802D7FE
	.align 2, 0
_0802D7D4: .4byte gCurTask
_0802D7D8: .4byte 0xFFFFFE7F
_0802D7DC: .4byte gUnknown_03005A20
_0802D7E0: .4byte gDispCnt
_0802D7E4: .4byte 0x00007FFF
_0802D7E8: .4byte gUnknown_03001B30
_0802D7EC: .4byte gUnknown_030011A8
_0802D7F0: .4byte 0x030000AF
_0802D7F4: .4byte gUnknown_03005088
_0802D7F8: .4byte gUnknown_03005AB0
_0802D7FC:
	movs r0, #0
_0802D7FE:
	adds r3, r6, #0
	adds r3, #0x4c
	mov r1, r8
	cmp r1, #1
	beq _0802D80C
	cmp r0, #1
	bne _0802D848
_0802D80C:
	adds r1, r6, #0
	adds r1, #0xae
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0xaf
	movs r0, #0x20
	strb r0, [r2]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #4
	bne _0802D82C
	adds r1, #2
	movs r0, #1
	strb r0, [r1]
_0802D82C:
	adds r1, r6, #0
	adds r1, #0x6c
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0802D844 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _0802D862
	.align 2, 0
_0802D844: .4byte 0xFFFFBFFF
_0802D848:
	mov r1, r8
	cmp r1, #2
	beq _0802D852
	cmp r0, #2
	bne _0802D862
_0802D852:
	adds r1, r6, #0
	adds r1, #0x6c
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0802D86C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
_0802D862:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D86C: .4byte 0xFFFFBFFF

	thumb_func_start sub_802D870
sub_802D870: @ 0x0802D870
	push {r4, r5, lr}
	ldr r0, _0802D8E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802D8EC @ =0x0300000C
	adds r3, r0, r1
	ldr r5, _0802D8F0 @ =0x0300004C
	adds r4, r0, r5
	adds r1, #0xa3
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0802D8D4
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _0802D8D4
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0802D8D4
	ldr r0, _0802D8F4 @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802D8D4
	ldr r0, [r3, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, _0802D8F8 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0802D8FC @ =gUnknown_03001B30
	ldr r0, _0802D900 @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _0802D904 @ =gUnknown_030011A8
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
_0802D8D4:
	adds r0, r3, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D8E8: .4byte gCurTask
_0802D8EC: .4byte 0x0300000C
_0802D8F0: .4byte 0x0300004C
_0802D8F4: .4byte gUnknown_03005A20
_0802D8F8: .4byte gDispCnt
_0802D8FC: .4byte gUnknown_03001B30
_0802D900: .4byte 0x00003F1F
_0802D904: .4byte gUnknown_030011A8

	thumb_func_start sub_802D908
sub_802D908: @ 0x0802D908
	push {r4, r5, lr}
	ldr r0, _0802D948 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802D94C @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x40
	adds r4, r0, r1
	ldrh r0, [r2, #0x16]
	strh r0, [r4, #0x16]
	ldrh r5, [r2, #0x18]
	strh r5, [r4, #0x18]
	ldrh r1, [r2, #0xa]
	movs r0, #0x9b
	lsls r0, r0, #2
	cmp r1, r0
	bne _0802D954
	ldr r0, [r2, #0xc]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #5
	bl __divsi3
	ldr r1, _0802D950 @ =gUnknown_084ACDA0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r5, r0
	b _0802D958
	.align 2, 0
_0802D948: .4byte gCurTask
_0802D94C: .4byte 0x0300000C
_0802D950: .4byte gUnknown_084ACDA0
_0802D954:
	adds r0, r5, #0
	adds r0, #0x2e
_0802D958:
	strh r0, [r4, #0x18]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Enemy023
CreateEntity_Enemy023: @ 0x0802D960
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	ldr r0, _0802D990 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0802D994
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	b _0802DB2C
	.align 2, 0
_0802D990: .4byte gGameMode
_0802D994:
	ldr r0, _0802DA08 @ =sub_802DB4C
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0802DA0C @ =sub_802EF08
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sl, r0
	ldr r0, _0802DA10 @ =0x0300000C
	adds r7, r3, r0
	movs r4, #0
	movs r2, #0
	mov r0, r8
	mov r1, sl
	strh r0, [r1, #4]
	mov r0, sb
	strh r0, [r1, #6]
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #8]
	strb r5, [r1, #9]
	ldr r1, _0802DA14 @ =0x030000A8
	adds r0, r3, r1
	strh r2, [r0]
	adds r1, #4
	adds r0, r3, r1
	strh r2, [r0]
	ldr r0, _0802DA18 @ =0x030000AA
	adds r1, r3, r0
	ldr r0, _0802DA1C @ =0x0000FFF8
	strh r0, [r1]
	ldr r1, _0802DA20 @ =0x030000AF
	adds r0, r3, r1
	strb r4, [r0]
	adds r1, #1
	adds r0, r3, r1
	strb r4, [r0]
	subs r1, #0x1c
	adds r0, r3, r1
	str r2, [r0]
	adds r1, #0x1d
	adds r0, r3, r1
	strb r4, [r0]
	ldr r0, _0802DA24 @ =gUnknown_03005160
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _0802DA2C
	ldr r0, _0802DA28 @ =0x030000AE
	adds r1, r3, r0
	movs r0, #2
	strb r0, [r1]
	b _0802DA32
	.align 2, 0
_0802DA08: .4byte sub_802DB4C
_0802DA0C: .4byte sub_802EF08
_0802DA10: .4byte 0x0300000C
_0802DA14: .4byte 0x030000A8
_0802DA18: .4byte 0x030000AA
_0802DA1C: .4byte 0x0000FFF8
_0802DA20: .4byte 0x030000AF
_0802DA24: .4byte gUnknown_03005160
_0802DA28: .4byte 0x030000AE
_0802DA2C:
	ldr r1, _0802DB3C @ =0x030000AE
	adds r0, r3, r1
	strb r4, [r0]
_0802DA32:
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov r8, r1
	add r0, r8
	movs r5, #0
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r1, sb
	lsls r1, r1, #8
	mov sb, r1
	add r0, sb
	strh r0, [r7, #0x18]
	movs r0, #0x36
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	movs r0, #0x9b
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x22
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	mov r4, sl
	adds r4, #0x4c
	ldrb r0, [r6]
	lsls r0, r0, #3
	add r0, r8
	strh r0, [r4, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	add r0, sb
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r0, _0802DB40 @ =0x0000026A
	strh r0, [r4, #0xa]
	mov r0, sl
	adds r0, #0x6c
	movs r1, #0
	strb r1, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	mov r1, sl
	adds r1, #0x6d
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x6e
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	ldrh r4, [r7, #0x18]
	adds r5, r4, #0
	subs r5, #0x90
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r4, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0x16
	ldrsh r7, [r7, r0]
	adds r0, r7, #0
	bl __floatsisf
	ldr r1, _0802DB44 @ =0x43960000
	bl __subsf3
	bl __fixsfsi
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_80171BC
	ldr r0, _0802DB48 @ =gUnknown_03005040
	movs r1, #0x10
	strb r1, [r0, #1]
_0802DB2C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DB3C: .4byte 0x030000AE
_0802DB40: .4byte 0x0000026A
_0802DB44: .4byte 0x43960000
_0802DB48: .4byte gUnknown_03005040

	thumb_func_start sub_802DB4C
sub_802DB4C: @ 0x0802DB4C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0802DC10 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	ldr r1, _0802DC14 @ =0x030000AC
	adds r2, r7, r1
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bls _0802DC00
	ldr r0, _0802DC18 @ =0x0300000C
	adds r4, r7, r0
	ldr r1, _0802DC1C @ =0x0300004C
	adds r1, r7, r1
	str r1, [sp]
	ldr r0, [r6]
	mov r8, r0
	ldr r1, _0802DC20 @ =0x03000094
	adds r3, r7, r1
	ldr r0, _0802DC24 @ =0xFFFFC400
	str r0, [r3]
	ldr r0, _0802DC28 @ =0x03000098
	adds r5, r7, r0
	ldr r0, _0802DC2C @ =0xFFFF7000
	str r0, [r5]
	ldr r0, _0802DC30 @ =0x030000A0
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r3]
	asrs r0, r0, #8
	adds r2, r2, r0
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802DC34 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	ldr r1, [sp]
	strh r2, [r1, #0x16]
	ldrh r0, [r4, #0x18]
	strh r0, [r1, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [sp]
	bl DisplaySprite
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0802DC38 @ =sub_802DC3C
	str r0, [r1, #8]
	bl _call_via_r0
_0802DC00:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DC10: .4byte gCurTask
_0802DC14: .4byte 0x030000AC
_0802DC18: .4byte 0x0300000C
_0802DC1C: .4byte 0x0300004C
_0802DC20: .4byte 0x03000094
_0802DC24: .4byte 0xFFFFC400
_0802DC28: .4byte 0x03000098
_0802DC2C: .4byte 0xFFFF7000
_0802DC30: .4byte 0x030000A0
_0802DC34: .4byte gCamera
_0802DC38: .4byte sub_802DC3C

	thumb_func_start sub_802DC3C
sub_802DC3C: @ 0x0802DC3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802DCFC @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _0802DD00 @ =0x0300000C
	adds r6, r4, r1
	adds r0, #0x4c
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r5]
	mov sb, r1
	ldr r0, _0802DD04 @ =0x03000098
	adds r7, r4, r0
	ldr r0, [r7]
	cmp r0, #0
	beq _0802DD1C
	ldr r1, _0802DD08 @ =0x030000A0
	adds r0, r4, r1
	ldr r1, [r0]
	adds r1, #0x20
	str r1, [r0]
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	cmp r0, #0
	blt _0802DCAC
	movs r0, #0
	str r0, [r7]
	movs r0, #0x9b
	lsls r0, r0, #2
	strh r0, [r6, #0xa]
	ldr r0, _0802DD0C @ =0x0300002C
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802DD10 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	movs r0, #0x91
	bl m4aSongNumStart
_0802DCAC:
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r1, _0802DD14 @ =0x03000094
	adds r0, r4, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802DD18 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	bl sub_802D908
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	bl DisplaySprite
	b _0802DDA6
	.align 2, 0
_0802DCFC: .4byte gCurTask
_0802DD00: .4byte 0x0300000C
_0802DD04: .4byte 0x03000098
_0802DD08: .4byte 0x030000A0
_0802DD0C: .4byte 0x0300002C
_0802DD10: .4byte 0x0300002D
_0802DD14: .4byte 0x03000094
_0802DD18: .4byte gCamera
_0802DD1C:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r1, _0802DDB4 @ =0x03000094
	adds r0, r4, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802DDB8 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	bl sub_802D908
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	bl DisplaySprite
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802DDA6
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _0802DDBC @ =sub_802DDCC
	str r0, [r1, #8]
	movs r0, #0x9b
	lsls r0, r0, #2
	strh r0, [r6, #0xa]
	ldr r0, _0802DDC0 @ =0x0300002C
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0802DDC4 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0802DDC8 @ =0x030000AC
	adds r1, r4, r0
	movs r0, #0x78
	strh r0, [r1]
_0802DDA6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DDB4: .4byte 0x03000094
_0802DDB8: .4byte gCamera
_0802DDBC: .4byte sub_802DDCC
_0802DDC0: .4byte 0x0300002C
_0802DDC4: .4byte 0x0300002D
_0802DDC8: .4byte 0x030000AC

	thumb_func_start sub_802DDCC
sub_802DDCC: @ 0x0802DDCC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0802DE50 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r1, _0802DE54 @ =0x0300000C
	adds r6, r2, r1
	adds r0, #0x4c
	adds r7, r2, r0
	ldr r1, [r5]
	mov r8, r1
	adds r0, #0x20
	adds r4, r2, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0802DE74
	ldr r1, _0802DE58 @ =0x030000AC
	adds r3, r2, r1
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bne _0802DE14
	movs r0, #1
	strb r0, [r4]
	ldr r0, _0802DE5C @ =0x0300006D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_0802DE14:
	ldrh r3, [r3]
	cmp r3, #0
	bne _0802DE8C
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _0802DE60 @ =sub_802DEFC
	str r0, [r1, #8]
	ldr r1, _0802DE64 @ =0x030000A0
	adds r0, r2, r1
	str r3, [r0]
	movs r0, #0x9b
	lsls r0, r0, #2
	strh r0, [r6, #0xa]
	ldr r0, _0802DE68 @ =0x0300002C
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802DE6C @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0802DE70 @ =0x0000026A
	strh r0, [r7, #0xa]
	movs r0, #0
	strb r0, [r4]
	ldr r0, _0802DE5C @ =0x0300006D
	adds r1, r2, r0
	movs r0, #1
	rsbs r0, r0, #0
	b _0802DE8A
	.align 2, 0
_0802DE50: .4byte gCurTask
_0802DE54: .4byte 0x0300000C
_0802DE58: .4byte 0x030000AC
_0802DE5C: .4byte 0x0300006D
_0802DE60: .4byte sub_802DEFC
_0802DE64: .4byte 0x030000A0
_0802DE68: .4byte 0x0300002C
_0802DE6C: .4byte 0x0300002D
_0802DE70: .4byte 0x0000026A
_0802DE74:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802DE8C
	movs r0, #0
	strb r0, [r4]
	ldr r0, _0802DEF4 @ =0x0300006D
	adds r1, r2, r0
	movs r0, #0xff
_0802DE8A:
	strb r0, [r1]
_0802DE8C:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802DEF8 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	bl sub_802D908
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DEF4: .4byte 0x0300006D
_0802DEF8: .4byte gCamera

	thumb_func_start sub_802DEFC
sub_802DEFC: @ 0x0802DEFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0802DF74 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r1, _0802DF78 @ =0x0300000C
	adds r1, r1, r4
	mov sl, r1
	ldr r2, _0802DF7C @ =0x0300004C
	adds r2, r4, r2
	str r2, [sp]
	ldr r1, [r7]
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0802DF80 @ =0x03000094
	adds r0, r4, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r3, #4
	adds r0, r4, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsrs r0, r2, #0x10
	str r0, [sp, #4]
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802D748
	ldr r1, _0802DF84 @ =0x030000AE
	adds r4, r4, r1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #7
	ble _0802DF88
	bl sub_802E868
	b _0802E116
	.align 2, 0
_0802DF74: .4byte gCurTask
_0802DF78: .4byte 0x0300000C
_0802DF7C: .4byte 0x0300004C
_0802DF80: .4byte 0x03000094
_0802DF84: .4byte 0x030000AE
_0802DF88:
	mov r2, r8
	ldr r3, [r2]
	ldrh r1, [r3, #6]
	ldr r0, _0802E014 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _0802E018 @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r6, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r2, _0802E01C @ =0x0300004C
	adds r1, r3, r2
	ldr r0, _0802E020 @ =0x0300006C
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802DFC8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802DFC8
	movs r0, #0
	strb r0, [r2]
	ldr r2, _0802E024 @ =0x0300006D
	adds r1, r3, r2
	movs r0, #0xff
	strb r0, [r1]
_0802DFC8:
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	bl sub_802D908
	bl sub_802D870
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0802DFEC
	b _0802E116
_0802DFEC:
	adds r2, r7, #0
	adds r2, #0xb0
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	str r2, [sp, #8]
	cmp r0, #1
	bne _0802E034
	adds r1, r7, #0
	adds r1, #0x9c
	movs r0, #0
	str r0, [r1]
	adds r1, #4
	ldr r0, _0802E028 @ =0xFFFFF600
	str r0, [r1]
	ldr r0, _0802E02C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802E030 @ =sub_802E500
	b _0802E100
	.align 2, 0
_0802E014: .4byte 0x0300000C
_0802E018: .4byte gCamera
_0802E01C: .4byte 0x0300004C
_0802E020: .4byte 0x0300006C
_0802E024: .4byte 0x0300006D
_0802E028: .4byte 0xFFFFF600
_0802E02C: .4byte gCurTask
_0802E030: .4byte sub_802E500
_0802E034:
	movs r0, #0x9c
	adds r0, r0, r7
	mov sb, r0
	ldr r0, _0802E0D4 @ =gUnknown_03005A20
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r1, r1, #8
	ldr r0, [r0]
	subs r0, r0, r1
	movs r1, #0x48
	bl __divsi3
	mov r3, sb
	str r0, [r3]
	adds r6, r7, #0
	adds r6, #0xa0
	ldr r0, _0802E0D8 @ =0xFFFFFB80
	str r0, [r6]
	movs r0, #0xa4
	adds r0, r0, r7
	mov r8, r0
	movs r0, #0x20
	mov r1, r8
	str r0, [r1]
	ldr r5, _0802E0DC @ =gUnknown_084ACDAC
	adds r4, r7, #0
	adds r4, #0xae
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r3]
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	mov r3, sb
	str r0, [r3]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r6]
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	str r0, [r6]
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r2, r8
	ldr r0, [r2]
	muls r0, r1, r0
	muls r0, r1, r0
	movs r1, #0x64
	bl __divsi3
	mov r3, r8
	str r0, [r3]
	mov r1, sb
	ldr r0, [r1]
	cmp r0, #0
	bge _0802E0E4
	mov r2, sl
	ldr r0, [r2, #0x10]
	ldr r1, _0802E0E0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r3, [sp]
	ldr r0, [r3, #0x10]
	ands r0, r1
	b _0802E0F8
	.align 2, 0
_0802E0D4: .4byte gUnknown_03005A20
_0802E0D8: .4byte 0xFFFFFB80
_0802E0DC: .4byte gUnknown_084ACDAC
_0802E0E0: .4byte 0xFFFFFBFF
_0802E0E4:
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	mov r2, sl
	str r0, [r2, #0x10]
	ldr r3, [sp]
	ldr r0, [r3, #0x10]
	orrs r0, r1
_0802E0F8:
	str r0, [r3, #0x10]
	ldr r0, _0802E128 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802E12C @ =sub_802E130
_0802E100:
	str r0, [r1, #8]
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0802E116
	adds r0, r1, #1
	ldr r1, [sp, #8]
	strb r0, [r1]
_0802E116:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E128: .4byte gCurTask
_0802E12C: .4byte sub_802E130

	thumb_func_start sub_802E130
sub_802E130: @ 0x0802E130
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802E200 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r1, _0802E204 @ =0x0300000C
	adds r1, r1, r4
	mov ip, r1
	adds r0, #0x4c
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r7]
	mov sl, r1
	ldr r0, _0802E208 @ =0x030000A0
	adds r2, r4, r0
	adds r0, #4
	adds r1, r4, r0
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _0802E20C @ =0x03000094
	adds r6, r4, r1
	ldr r0, _0802E210 @ =0x0300009C
	adds r3, r4, r0
	ldr r0, [r6]
	ldr r1, [r3]
	adds r0, r0, r1
	str r0, [r6]
	ldr r1, _0802E214 @ =0x03000098
	adds r5, r4, r1
	ldr r0, [r5]
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r5]
	cmp r0, #0
	blt _0802E1BA
	movs r0, #0
	str r0, [r5]
	str r0, [r3]
	str r0, [r2]
	ldr r0, _0802E218 @ =0x0300002C
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802E21C @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	mov r0, ip
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0802E220 @ =sub_802E290
	str r0, [r1, #8]
	movs r0, #0x91
	bl m4aSongNumStart
_0802E1BA:
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r2, r2, r0
	mov r0, sl
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_802D748
	ldr r1, _0802E224 @ =0x030000AE
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0802E228
	bl sub_802E868
	b _0802E270
	.align 2, 0
_0802E200: .4byte gCurTask
_0802E204: .4byte 0x0300000C
_0802E208: .4byte 0x030000A0
_0802E20C: .4byte 0x03000094
_0802E210: .4byte 0x0300009C
_0802E214: .4byte 0x03000098
_0802E218: .4byte 0x0300002C
_0802E21C: .4byte 0x0300002D
_0802E220: .4byte sub_802E290
_0802E224: .4byte 0x030000AE
_0802E228:
	mov r0, sb
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	ldr r0, _0802E280 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _0802E284 @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r6, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r0, _0802E288 @ =0x0300004C
	adds r1, r3, r0
	adds r0, #0x20
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802E268
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802E268
	movs r0, #0
	strb r0, [r2]
	ldr r0, _0802E28C @ =0x0300006D
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_0802E268:
	bl sub_802D908
	bl sub_802D870
_0802E270:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E280: .4byte 0x0300000C
_0802E284: .4byte gCamera
_0802E288: .4byte 0x0300004C
_0802E28C: .4byte 0x0300006D

	thumb_func_start sub_802E290
sub_802E290: @ 0x0802E290
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802E300 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, _0802E304 @ =0x0300000C
	adds r1, r1, r4
	mov r8, r1
	ldr r2, _0802E308 @ =0x0300004C
	adds r2, r2, r4
	mov sl, r2
	ldr r1, [r6]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0802E30C @ =0x03000094
	adds r0, r4, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r3, #4
	adds r0, r4, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_802D748
	ldr r0, _0802E310 @ =0x030000AE
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #7
	ble _0802E314
	bl sub_802E868
	b _0802E3B2
	.align 2, 0
_0802E300: .4byte gCurTask
_0802E304: .4byte 0x0300000C
_0802E308: .4byte 0x0300004C
_0802E30C: .4byte 0x03000094
_0802E310: .4byte 0x030000AE
_0802E314:
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r3, #6]
	ldr r2, _0802E3C0 @ =0x0300000C
	adds r1, r1, r2
	ldr r2, _0802E3C4 @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r0, _0802E3C8 @ =0x0300004C
	adds r1, r3, r0
	adds r0, #0x20
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802E354
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802E354
	movs r0, #0
	strb r0, [r2]
	ldr r2, _0802E3CC @ =0x0300006D
	adds r1, r3, r2
	movs r0, #0xff
	strb r0, [r1]
_0802E354:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sl
	bl UpdateSpriteAnimation
	bl sub_802D908
	bl sub_802D870
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802E3B2
	mov r1, r8
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r4, r6, #0
	adds r4, #0xac
	movs r0, #0x1e
	strh r0, [r4]
	movs r0, #0x96
	lsls r0, r0, #1
	ldr r2, _0802E3D0 @ =gUnknown_084ACDAC
	adds r1, r6, #0
	adds r1, #0xae
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl __divsi3
	strh r0, [r4]
	ldr r0, _0802E3D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802E3D8 @ =sub_802E3DC
	str r0, [r1, #8]
_0802E3B2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E3C0: .4byte 0x0300000C
_0802E3C4: .4byte gCamera
_0802E3C8: .4byte 0x0300004C
_0802E3CC: .4byte 0x0300006D
_0802E3D0: .4byte gUnknown_084ACDAC
_0802E3D4: .4byte gCurTask
_0802E3D8: .4byte sub_802E3DC

	thumb_func_start sub_802E3DC
sub_802E3DC: @ 0x0802E3DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802E44C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, _0802E450 @ =0x0300000C
	adds r1, r1, r4
	mov r8, r1
	ldr r3, _0802E454 @ =0x0300004C
	adds r3, r3, r4
	mov sl, r3
	ldr r1, [r6]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0802E458 @ =0x03000094
	adds r0, r4, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r3, #4
	adds r0, r4, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_802D748
	ldr r0, _0802E45C @ =0x030000AE
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #7
	ble _0802E460
	bl sub_802E868
	b _0802E4DA
	.align 2, 0
_0802E44C: .4byte gCurTask
_0802E450: .4byte 0x0300000C
_0802E454: .4byte 0x0300004C
_0802E458: .4byte 0x03000094
_0802E45C: .4byte 0x030000AE
_0802E460:
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r3, #6]
	ldr r0, _0802E4E8 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _0802E4EC @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r0, _0802E4F0 @ =0x0300004C
	adds r1, r3, r0
	adds r0, #0x20
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802E4A0
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802E4A0
	movs r0, #0
	strb r0, [r2]
	ldr r0, _0802E4F4 @ =0x0300006D
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_0802E4A0:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sl
	bl UpdateSpriteAnimation
	bl sub_802D908
	bl sub_802D870
	adds r1, r6, #0
	adds r1, #0xac
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802E4DA
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0802E4F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802E4FC @ =sub_802DEFC
	str r0, [r1, #8]
_0802E4DA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E4E8: .4byte 0x0300000C
_0802E4EC: .4byte gCamera
_0802E4F0: .4byte 0x0300004C
_0802E4F4: .4byte 0x0300006D
_0802E4F8: .4byte gCurTask
_0802E4FC: .4byte sub_802DEFC

	thumb_func_start sub_802E500
sub_802E500: @ 0x0802E500
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0802E670 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldr r1, _0802E674 @ =0x0300004C
	adds r1, r1, r5
	mov r8, r1
	ldr r0, [r7]
	mov sb, r0
	ldr r1, _0802E678 @ =0x030000A0
	adds r6, r5, r1
	ldr r1, [r6]
	adds r1, #0x20
	str r1, [r6]
	ldr r0, _0802E67C @ =0x03000098
	adds r4, r5, r0
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, _0802E680 @ =0xFFFF3800
	cmp r0, r1
	bge _0802E554
	ldr r1, _0802E684 @ =0x03000094
	adds r3, r5, r1
	ldr r2, _0802E688 @ =gUnknown_03005A20
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r3]
_0802E554:
	ldr r0, [r4]
	cmp r0, #0
	blt _0802E620
	movs r0, #0
	str r0, [r4]
	str r0, [r6]
	ldr r0, _0802E68C @ =0x030000AC
	adds r1, r5, r0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _0802E690 @ =0x0300002C
	adds r0, r5, r1
	movs r4, #2
	strb r4, [r0]
	ldr r0, _0802E694 @ =0x0300002D
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _0802E698 @ =sub_802E714
	str r0, [r1, #8]
	movs r0, #0x91
	bl m4aSongNumStart
	movs r0, #0x80
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x80
	str r1, [sp]
	movs r1, #0x40
	bl sub_804CC14
	ldr r2, _0802E688 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _0802E5D8
	adds r0, r2, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x41
	beq _0802E5D8
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	beq _0802E5F2
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r1, [r0]
	movs r0, #0xbb
	lsls r0, r0, #1
	cmp r1, r0
	bne _0802E5D8
	adds r0, r2, #0
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802E5F2
_0802E5D8:
	ldr r0, _0802E688 @ =gUnknown_03005A20
	bl sub_800C558
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _0802E69C @ =0xFFFFBFFF
	ands r0, r1
	mov r1, r8
	str r0, [r1, #0x10]
_0802E5F2:
	ldr r0, _0802E6A0 @ =gUnknown_03005088
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #2
	bne _0802E620
	ldr r0, _0802E6A4 @ =gUnknown_03005AB0
	ldr r0, [r0, #0x10]
	ands r0, r1
	cmp r0, #0
	bne _0802E620
	ldr r0, _0802E688 @ =gUnknown_03005A20
	bl sub_800C558
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _0802E69C @ =0xFFFFBFFF
	ands r0, r1
	mov r1, r8
	str r0, [r1, #0x10]
_0802E620:
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x98
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_802D748
	adds r0, r7, #0
	adds r0, #0xae
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0802E6A8
	bl sub_802E868
	b _0802E6F0
	.align 2, 0
_0802E670: .4byte gCurTask
_0802E674: .4byte 0x0300004C
_0802E678: .4byte 0x030000A0
_0802E67C: .4byte 0x03000098
_0802E680: .4byte 0xFFFF3800
_0802E684: .4byte 0x03000094
_0802E688: .4byte gUnknown_03005A20
_0802E68C: .4byte 0x030000AC
_0802E690: .4byte 0x0300002C
_0802E694: .4byte 0x0300002D
_0802E698: .4byte sub_802E714
_0802E69C: .4byte 0xFFFFBFFF
_0802E6A0: .4byte gUnknown_03005088
_0802E6A4: .4byte gUnknown_03005AB0
_0802E6A8:
	ldr r0, _0802E700 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	ldr r0, _0802E704 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _0802E708 @ =gCamera
	ldrh r0, [r2]
	subs r0, r4, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r5, r0
	strh r0, [r1, #0x18]
	ldrh r2, [r3, #6]
	ldr r0, _0802E70C @ =0x0300004C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802E6E8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802E6E8
	movs r0, #0
	strb r0, [r3]
	ldr r0, _0802E710 @ =0x0300006D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_0802E6E8:
	bl sub_802D908
	bl sub_802D870
_0802E6F0:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E700: .4byte gCurTask
_0802E704: .4byte 0x0300000C
_0802E708: .4byte gCamera
_0802E70C: .4byte 0x0300004C
_0802E710: .4byte 0x0300006D

	thumb_func_start sub_802E714
sub_802E714: @ 0x0802E714
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802E784 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, _0802E788 @ =0x0300000C
	adds r1, r1, r4
	mov r8, r1
	ldr r3, _0802E78C @ =0x0300004C
	adds r3, r3, r4
	mov sl, r3
	ldr r1, [r6]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0802E790 @ =0x03000094
	adds r0, r4, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r3, #4
	adds r0, r4, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_802D748
	ldr r0, _0802E794 @ =0x030000AE
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #7
	ble _0802E798
	bl sub_802E868
	b _0802E850
	.align 2, 0
_0802E784: .4byte gCurTask
_0802E788: .4byte 0x0300000C
_0802E78C: .4byte 0x0300004C
_0802E790: .4byte 0x03000094
_0802E794: .4byte 0x030000AE
_0802E798:
	mov r1, sb
	ldr r3, [r1]
	ldrh r1, [r3, #6]
	ldr r0, _0802E814 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _0802E818 @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r0, _0802E81C @ =0x0300004C
	adds r1, r3, r0
	adds r0, #0x20
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802E7D8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802E7D8
	movs r0, #0
	strb r0, [r2]
	ldr r0, _0802E820 @ =0x0300006D
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_0802E7D8:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sl
	bl UpdateSpriteAnimation
	bl sub_802D908
	bl sub_802D870
	mov r2, r8
	adds r2, #0x20
	ldrb r0, [r2]
	cmp r0, #2
	bne _0802E824
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802E850
	movs r0, #0
	strb r0, [r2]
	mov r1, r8
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	b _0802E850
	.align 2, 0
_0802E814: .4byte 0x0300000C
_0802E818: .4byte gCamera
_0802E81C: .4byte 0x0300004C
_0802E820: .4byte 0x0300006D
_0802E824:
	adds r1, r6, #0
	adds r1, #0xac
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802E850
	movs r0, #0x9b
	lsls r0, r0, #2
	mov r3, r8
	strh r0, [r3, #0xa]
	movs r0, #1
	strb r0, [r2]
	mov r1, r8
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0802E860 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802E864 @ =sub_802DEFC
	str r0, [r1, #8]
_0802E850:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E860: .4byte gCurTask
_0802E864: .4byte sub_802DEFC

	thumb_func_start sub_802E868
sub_802E868: @ 0x0802E868
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0802E948 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	ldr r1, _0802E94C @ =0x0300000C
	adds r7, r4, r1
	ldr r5, [r3]
	ldr r2, _0802E950 @ =0x03000098
	adds r0, r4, r2
	ldr r2, [r0]
	ldr r6, _0802E954 @ =0xFFFFD000
	adds r2, r2, r6
	str r2, [r0]
	ldrb r1, [r3, #8]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r6, _0802E958 @ =0x03000094
	adds r0, r4, r6
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	ldr r0, _0802E95C @ =0x0300006C
	adds r1, r4, r0
	movs r5, #0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _0802E960 @ =0x030000B2
	adds r0, r4, r1
	movs r6, #0
	movs r2, #0xfe
	lsls r2, r2, #8
	mov r8, r2
	mov r1, r8
	strh r1, [r0]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r2, _0802E964 @ =0x030000AC
	adds r0, r4, r2
	strh r5, [r0]
	ldr r0, _0802E968 @ =0x0000026D
	strh r0, [r7, #0xa]
	ldr r1, _0802E96C @ =0x0300002C
	adds r0, r4, r1
	strb r6, [r0]
	subs r2, #0x7f
	adds r4, r4, r2
	movs r0, #0xff
	strb r0, [r4]
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r6, sl
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	ldr r3, _0802E970 @ =0x0000026B
	str r5, [sp]
	movs r2, #8
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	ldr r1, _0802E974 @ =0x03000046
	adds r0, r2, r1
	mov r4, r8
	strh r4, [r0]
	ldr r6, _0802E978 @ =0x03000048
	adds r0, r2, r6
	strh r5, [r0]
	ldr r0, _0802E97C @ =0x03000042
	adds r1, r2, r0
	movs r0, #0x80
	strh r0, [r1]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0802E984
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r4, _0802E980 @ =0x03000044
	adds r0, r2, r4
	strh r1, [r0]
	b _0802E98E
	.align 2, 0
_0802E948: .4byte gCurTask
_0802E94C: .4byte 0x0300000C
_0802E950: .4byte 0x03000098
_0802E954: .4byte 0xFFFFD000
_0802E958: .4byte 0x03000094
_0802E95C: .4byte 0x0300006C
_0802E960: .4byte 0x030000B2
_0802E964: .4byte 0x030000AC
_0802E968: .4byte 0x0000026D
_0802E96C: .4byte 0x0300002C
_0802E970: .4byte 0x0000026B
_0802E974: .4byte 0x03000046
_0802E978: .4byte 0x03000048
_0802E97C: .4byte 0x03000042
_0802E980: .4byte 0x03000044
_0802E984:
	ldr r6, _0802E9F0 @ =0x03000044
	adds r1, r2, r6
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
_0802E98E:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	lsls r1, r2, #0x10
	movs r6, #0x80
	lsls r6, r6, #0xe
	adds r1, r1, r6
	asrs r1, r1, #0x10
	ldr r3, _0802E9F4 @ =0x00000269
	str r4, [sp]
	movs r2, #8
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0x46
	adds r1, r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _0802E9F8 @ =0x03000048
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _0802E9FC @ =0x03000042
	adds r1, r2, r4
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0802EA00
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r6, _0802E9F0 @ =0x03000044
	adds r0, r2, r6
	strh r1, [r0]
	b _0802EA0A
	.align 2, 0
_0802E9F0: .4byte 0x03000044
_0802E9F4: .4byte 0x00000269
_0802E9F8: .4byte 0x03000048
_0802E9FC: .4byte 0x03000042
_0802EA00:
	ldr r0, _0802EA6C @ =0x03000044
	adds r1, r2, r0
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
_0802EA0A:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _0802EA70 @ =gCamera
	ldrh r0, [r1]
	strh r0, [r1, #0x18]
	adds r0, #0xf0
	strh r0, [r1, #0x1a]
	ldr r1, _0802EA74 @ =gUnknown_03005030
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _0802EA78 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _0802EA4E
	ldr r0, _0802EA7C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802EA4E
	ldr r1, _0802EA80 @ =gUnknown_03005024
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802EA4E:
	bl sub_802EA8C
	ldr r0, _0802EA84 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802EA88 @ =sub_802EA8C
	str r0, [r1, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EA6C: .4byte 0x03000044
_0802EA70: .4byte gCamera
_0802EA74: .4byte gUnknown_03005030
_0802EA78: .4byte 0x0000C350
_0802EA7C: .4byte gGameMode
_0802EA80: .4byte gUnknown_03005024
_0802EA84: .4byte gCurTask
_0802EA88: .4byte sub_802EA8C

	thumb_func_start sub_802EA8C
sub_802EA8C: @ 0x0802EA8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0802EC98 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r3, _0802EC9C @ =0x0300000C
	adds r3, r3, r2
	mov sl, r3
	adds r0, #0x4c
	adds r0, r2, r0
	str r0, [sp, #4]
	ldr r4, [r7]
	ldr r1, _0802ECA0 @ =0x030000B2
	adds r6, r2, r1
	ldrh r0, [r6]
	adds r0, #0x28
	strh r0, [r6]
	ldr r3, _0802ECA4 @ =0x03000098
	adds r5, r2, r3
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r3, [r5]
	adds r3, r3, r0
	str r3, [r5]
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, _0802ECA8 @ =0x03000094
	adds r2, r2, r0
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r0, r0, r2
	asrs r3, r3, #8
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r8, r2
	asrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r1, r1, #0x10
	ldr r2, _0802ECAC @ =sub_803FD5C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _0802EB36
	lsls r1, r0, #8
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	ldrh r1, [r6]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0802ECB0 @ =0xFFFFFF00
	cmp r0, r1
	ble _0802EB36
	movs r0, #0
	strh r0, [r6]
	ldr r0, _0802EC98 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802ECB4 @ =sub_802ECFC
	str r0, [r1, #8]
_0802EB36:
	mov r1, sl
	ldr r0, [r1, #0x10]
	ldr r1, _0802ECB8 @ =0xFFFFFE7F
	ands r0, r1
	mov r2, sl
	str r0, [r2, #0x10]
	ldr r0, _0802ECBC @ =gUnknown_03005A20
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _0802EB62
	ldr r2, _0802ECC0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802ECC4 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0802ECC8 @ =gUnknown_03001B30
	strh r3, [r0, #0xa]
	ldr r0, _0802ECCC @ =gUnknown_030011A8
	strh r3, [r0]
	strh r3, [r0, #4]
_0802EB62:
	adds r1, r7, #0
	adds r1, #0xac
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r4, #7
	ands r0, r4
	mov r3, r8
	lsls r3, r3, #0x10
	str r3, [sp, #0xc]
	mov r7, sb
	lsls r7, r7, #0x10
	str r7, [sp, #8]
	cmp r0, #0
	bne _0802EC54
	ldr r0, _0802ECD0 @ =gUnknown_03004C58
	mov sb, r0
	ldr r0, [r0]
	ldr r1, _0802ECD4 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _0802ECD8 @ =0x3C6EF35F
	adds r0, r0, r2
	mov r3, sb
	str r0, [r3]
	ands r4, r0
	ldr r0, _0802ECDC @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _0802ECE0 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _0802ECE4 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _0802ECE8 @ =sub_80177EC
	str r0, [sp]
	adds r0, r6, #0
	bl sub_801769C
	ldrh r3, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r3, r5
	asrs r0, r7, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	ldr r7, [sp, #0xc]
	asrs r1, r7, #0x10
	lsls r2, r1, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #0x28
	strh r2, [r5, #0x3e]
	ldr r2, _0802ECEC @ =0x03000040
	adds r3, r3, r2
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r7, _0802ECD4 @ =0x00196225
	adds r6, r2, #0
	muls r6, r7, r6
	ldr r2, _0802ECD8 @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _0802ECF0 @ =gSineTable
	mov r8, r3
	ldr r3, _0802ECF4 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	movs r7, #0
	ldrsh r4, [r2, r7]
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r7, #0
	ldrsh r3, [r3, r7]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _0802ECD4 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r7, _0802ECD8 @ =0x3C6EF35F
	adds r3, r3, r7
	mov r2, sb
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_0802EC54:
	ldr r2, _0802ECF8 @ =gCamera
	ldrh r1, [r2]
	ldr r3, [sp, #8]
	asrs r0, r3, #0x10
	subs r0, r0, r1
	mov r7, sl
	strh r0, [r7, #0x16]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #0xc]
	asrs r0, r2, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	bl sub_802D908
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EC98: .4byte gCurTask
_0802EC9C: .4byte 0x0300000C
_0802ECA0: .4byte 0x030000B2
_0802ECA4: .4byte 0x03000098
_0802ECA8: .4byte 0x03000094
_0802ECAC: .4byte sub_803FD5C
_0802ECB0: .4byte 0xFFFFFF00
_0802ECB4: .4byte sub_802ECFC
_0802ECB8: .4byte 0xFFFFFE7F
_0802ECBC: .4byte gUnknown_03005A20
_0802ECC0: .4byte gDispCnt
_0802ECC4: .4byte 0x00007FFF
_0802ECC8: .4byte gUnknown_03001B30
_0802ECCC: .4byte gUnknown_030011A8
_0802ECD0: .4byte gUnknown_03004C58
_0802ECD4: .4byte 0x00196225
_0802ECD8: .4byte 0x3C6EF35F
_0802ECDC: .4byte gUnknown_080BB434
_0802ECE0: .4byte gUnknown_080BB41C
_0802ECE4: .4byte gUnknown_080BB42C
_0802ECE8: .4byte sub_80177EC
_0802ECEC: .4byte 0x03000040
_0802ECF0: .4byte gSineTable
_0802ECF4: .4byte 0x000001FF
_0802ECF8: .4byte gCamera

	thumb_func_start sub_802ECFC
sub_802ECFC: @ 0x0802ECFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r6, _0802ED98 @ =gCurTask
	ldr r0, [r6]
	ldrh r2, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r3, r2, r5
	ldr r0, _0802ED9C @ =0x0300000C
	adds r0, r0, r2
	mov sl, r0
	ldr r1, _0802EDA0 @ =0x0300004C
	adds r1, r2, r1
	str r1, [sp, #4]
	ldr r4, [r3]
	ldrb r1, [r3, #8]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r7, _0802EDA4 @ =0x03000094
	adds r0, r2, r7
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, r8
	str r0, [sp, #8]
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802EDA8 @ =0x03000098
	adds r0, r2, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	str r7, [sp, #0xc]
	ldr r0, _0802EDAC @ =0x030000AC
	adds r2, r2, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bls _0802EDB8
	mov r1, r8
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	lsls r1, r7, #0x10
	asrs r5, r1, #0x10
	ldr r2, _0802EDB0 @ =0xFFFC0000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8015C5C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8015FFC
	ldr r1, _0802EDB4 @ =gUnknown_03005040
	movs r0, #0x30
	strb r0, [r1, #1]
	ldr r0, [r6]
	bl TaskDestroy
	b _0802EECA
	.align 2, 0
_0802ED98: .4byte gCurTask
_0802ED9C: .4byte 0x0300000C
_0802EDA0: .4byte 0x0300004C
_0802EDA4: .4byte 0x03000094
_0802EDA8: .4byte 0x03000098
_0802EDAC: .4byte 0x030000AC
_0802EDB0: .4byte 0xFFFC0000
_0802EDB4: .4byte gUnknown_03005040
_0802EDB8:
	movs r4, #7
	ands r1, r4
	cmp r1, #0
	bne _0802EE92
	ldr r3, _0802EEDC @ =gUnknown_03004C58
	mov sb, r3
	ldr r0, [r3]
	ldr r1, _0802EEE0 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _0802EEE4 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	ands r4, r0
	ldr r0, _0802EEE8 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _0802EEEC @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _0802EEF0 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _0802EEF4 @ =sub_80177EC
	str r0, [sp]
	adds r0, r6, #0
	bl sub_801769C
	ldrh r3, [r0, #6]
	adds r5, r3, r5
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #0x28
	strh r2, [r5, #0x3e]
	ldr r2, _0802EEF8 @ =0x03000040
	adds r3, r3, r2
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r7, _0802EEE0 @ =0x00196225
	adds r6, r2, #0
	muls r6, r7, r6
	ldr r2, _0802EEE4 @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _0802EEFC @ =gSineTable
	mov r8, r3
	ldr r3, _0802EF00 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	movs r7, #0
	ldrsh r4, [r2, r7]
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r7, #0
	ldrsh r3, [r3, r7]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _0802EEE0 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r7, _0802EEE4 @ =0x3C6EF35F
	adds r3, r3, r7
	mov r2, sb
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_0802EE92:
	ldr r2, _0802EF04 @ =gCamera
	ldrh r1, [r2]
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	mov r7, sl
	strh r0, [r7, #0x16]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	bl sub_802D908
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_0802EECA:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802EEDC: .4byte gUnknown_03004C58
_0802EEE0: .4byte 0x00196225
_0802EEE4: .4byte 0x3C6EF35F
_0802EEE8: .4byte gUnknown_080BB434
_0802EEEC: .4byte gUnknown_080BB41C
_0802EEF0: .4byte gUnknown_080BB42C
_0802EEF4: .4byte sub_80177EC
_0802EEF8: .4byte 0x03000040
_0802EEFC: .4byte gSineTable
_0802EF00: .4byte 0x000001FF
_0802EF04: .4byte gCamera

	thumb_func_start sub_802EF08
sub_802EF08: @ 0x0802EF08
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x50]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_802EF24
sub_802EF24: @ 0x0802EF24
	ldr r0, _0802EF54 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _0802EF58 @ =0x0300004C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802EF50
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802EF50
	movs r0, #0
	strb r0, [r3]
	ldr r0, _0802EF5C @ =0x0300006D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_0802EF50:
	bx lr
	.align 2, 0
_0802EF54: .4byte gCurTask
_0802EF58: .4byte 0x0300004C
_0802EF5C: .4byte 0x0300006D

	thumb_func_start sub_802EF60
sub_802EF60: @ 0x0802EF60
	push {r4, lr}
	ldr r2, _0802EF88 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _0802EF8C @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _0802EF90 @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802EF88: .4byte gCurTask
_0802EF8C: .4byte 0x0300000C
_0802EF90: .4byte gCamera

	thumb_func_start sub_802EF94
sub_802EF94: @ 0x0802EF94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _0802F060 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _0802F064 @ =0x0300000C
	adds r5, r4, r0
	ldr r0, [r5, #0x10]
	ldr r1, _0802F068 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r1, _0802F06C @ =gUnknown_03005A20
	mov r8, r1
	ldr r3, [r1, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _0802EFD8
	ldr r2, _0802F070 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802F074 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0802F078 @ =gUnknown_03001B30
	strh r3, [r0, #0xa]
	ldr r0, _0802F07C @ =gUnknown_030011A8
	strh r3, [r0]
	strh r3, [r0, #4]
_0802EFD8:
	ldr r3, _0802F080 @ =0x0300008B
	adds r3, r3, r4
	mov sb, r3
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _0802F0BA
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_800B8B4
	mov r8, r0
	movs r1, #0
	ldr r0, _0802F084 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0802F018
	ldr r3, _0802F088 @ =gUnknown_03005AB0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800B8B4
	adds r1, r0, #0
_0802F018:
	ldr r0, _0802F08C @ =0x0300003C
	adds r2, r4, r0
	mov r3, r8
	cmp r3, #1
	beq _0802F026
	cmp r1, #1
	bne _0802F0A0
_0802F026:
	ldr r0, _0802F090 @ =0x0300008A
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x20
	mov r3, sb
	strb r0, [r3]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #4
	bne _0802F046
	ldr r0, _0802F094 @ =0x0300008C
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
_0802F046:
	ldr r3, _0802F098 @ =0x0300005C
	adds r1, r4, r3
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _0802F09C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _0802F0BA
	.align 2, 0
_0802F060: .4byte gCurTask
_0802F064: .4byte 0x0300000C
_0802F068: .4byte 0xFFFFFE7F
_0802F06C: .4byte gUnknown_03005A20
_0802F070: .4byte gDispCnt
_0802F074: .4byte 0x00007FFF
_0802F078: .4byte gUnknown_03001B30
_0802F07C: .4byte gUnknown_030011A8
_0802F080: .4byte 0x0300008B
_0802F084: .4byte gUnknown_03005088
_0802F088: .4byte gUnknown_03005AB0
_0802F08C: .4byte 0x0300003C
_0802F090: .4byte 0x0300008A
_0802F094: .4byte 0x0300008C
_0802F098: .4byte 0x0300005C
_0802F09C: .4byte 0xFFFFBFFF
_0802F0A0:
	mov r0, r8
	cmp r0, #2
	beq _0802F0AA
	cmp r1, #2
	bne _0802F0BA
_0802F0AA:
	ldr r3, _0802F0C8 @ =0x0300005C
	adds r1, r4, r3
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _0802F0CC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
_0802F0BA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F0C8: .4byte 0x0300005C
_0802F0CC: .4byte 0xFFFFBFFF

	thumb_func_start sub_802F0D0
sub_802F0D0: @ 0x0802F0D0
	push {r4, r5, lr}
	ldr r0, _0802F148 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802F14C @ =0x0300000C
	adds r3, r0, r1
	ldr r5, _0802F150 @ =0x0300003C
	adds r4, r0, r5
	adds r1, #0x7f
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0802F134
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _0802F134
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _0802F134
	ldr r0, _0802F154 @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0802F134
	ldr r0, [r3, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, _0802F158 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0802F15C @ =gUnknown_03001B30
	ldr r0, _0802F160 @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _0802F164 @ =gUnknown_030011A8
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
_0802F134:
	adds r0, r3, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802F148: .4byte gCurTask
_0802F14C: .4byte 0x0300000C
_0802F150: .4byte 0x0300003C
_0802F154: .4byte gUnknown_03005A20
_0802F158: .4byte gDispCnt
_0802F15C: .4byte gUnknown_03001B30
_0802F160: .4byte 0x00003F1F
_0802F164: .4byte gUnknown_030011A8

	thumb_func_start CreateEntity_Enemy024
CreateEntity_Enemy024: @ 0x0802F168
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	ldr r0, _0802F198 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0802F19C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	ldr r2, [sp, #4]
	strb r0, [r2]
	b _0802F484
	.align 2, 0
_0802F198: .4byte gGameMode
_0802F19C:
	ldr r1, _0802F218 @ =gUnknown_03004C58
	ldr r0, _0802F21C @ =gUnknown_03001B24
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0802F220 @ =sub_802F4A8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0802F224 @ =sub_8030724
	str r1, [sp]
	movs r1, #0x9c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	ldr r4, _0802F228 @ =0x0300000C
	adds r4, r4, r3
	mov sl, r4
	movs r4, #0
	movs r2, #0
	strh r6, [r7, #4]
	mov r0, r8
	strh r0, [r7, #6]
	ldr r1, [sp, #4]
	str r1, [r7]
	ldrb r0, [r1]
	strb r0, [r7, #8]
	strb r5, [r7, #9]
	ldr r5, _0802F22C @ =0x03000084
	adds r0, r3, r5
	strh r2, [r0]
	ldr r1, _0802F230 @ =0x03000088
	adds r0, r3, r1
	strh r2, [r0]
	adds r5, #2
	adds r1, r3, r5
	ldr r0, _0802F234 @ =0x0000FFF8
	strh r0, [r1]
	ldr r1, _0802F238 @ =0x0300008B
	adds r0, r3, r1
	strb r4, [r0]
	adds r5, #6
	adds r0, r3, r5
	strb r4, [r0]
	str r2, [r7, #0x70]
	adds r1, #2
	adds r0, r3, r1
	strb r4, [r0]
	ldr r2, _0802F23C @ =0x0300008E
	adds r0, r3, r2
	strb r4, [r0]
	ldr r0, _0802F240 @ =gUnknown_03005160
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _0802F248
	ldr r4, _0802F244 @ =0x0300008A
	adds r1, r3, r4
	movs r0, #2
	strb r0, [r1]
	b _0802F24E
	.align 2, 0
_0802F218: .4byte gUnknown_03004C58
_0802F21C: .4byte gUnknown_03001B24
_0802F220: .4byte sub_802F4A8
_0802F224: .4byte sub_8030724
_0802F228: .4byte 0x0300000C
_0802F22C: .4byte 0x03000084
_0802F230: .4byte 0x03000088
_0802F234: .4byte 0x0000FFF8
_0802F238: .4byte 0x0300008B
_0802F23C: .4byte 0x0300008E
_0802F240: .4byte gUnknown_03005160
_0802F244: .4byte 0x0300008A
_0802F248:
	ldr r5, _0802F3A8 @ =0x0300008A
	adds r0, r3, r5
	strb r4, [r0]
_0802F24E:
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	mov sb, r6
	add r0, sb
	movs r6, #0
	movs r5, #0
	mov r2, sl
	strh r0, [r2, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	mov r3, r8
	lsls r3, r3, #8
	mov r8, r3
	add r0, r8
	strh r0, [r2, #0x18]
	movs r0, #0x24
	bl VramMalloc
	mov r4, sl
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	movs r0, #0x9c
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	mov r0, sl
	adds r0, #0x20
	strb r6, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	mov r1, sl
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x22
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	strb r6, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r4, #0x28]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r4, #0x10]
	adds r4, r7, #0
	adds r4, #0x3c
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	lsls r0, r0, #3
	add r0, sb
	strh r0, [r4, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	add r0, r8
	strh r0, [r4, #0x18]
	subs r2, #1
	adds r0, r2, #0
	strb r0, [r1]
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r0, _0802F3AC @ =0x0000026E
	strh r0, [r4, #0xa]
	adds r0, r7, #0
	adds r0, #0x5c
	strb r6, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r7, #0
	adds r1, #0x5d
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5e
	movs r3, #0x10
	strb r3, [r0]
	adds r0, #3
	strb r6, [r0]
	subs r5, #1
	str r5, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	movs r6, #0
	mov r1, sb
	str r1, [sp, #8]
	mov r2, r8
	str r2, [sp, #0xc]
	mov sb, r6
_0802F318:
	ldr r0, _0802F3B0 @ =sub_8030754
	str r0, [sp]
	ldr r0, _0802F3B4 @ =sub_803053C
	movs r1, #0x4c
	movs r2, #0x88
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r2, r4, r3
	ldr r5, _0802F3B8 @ =0x03000044
	adds r0, r4, r5
	strb r6, [r0]
	ldr r0, _0802F3BC @ =0x03000045
	adds r1, r4, r0
	movs r0, #0x5a
	strb r0, [r1]
	lsls r5, r6, #3
	ldr r1, _0802F3C0 @ =gUnknown_084ACDD2
	adds r0, r5, r1
	ldrh r1, [r0]
	strh r1, [r2, #0x3c]
	ldr r3, _0802F3C4 @ =gUnknown_084ACDD4
	adds r0, r5, r3
	ldrh r3, [r0]
	strh r3, [r2, #0x3e]
	ldrh r0, [r7, #4]
	strh r0, [r2, #4]
	ldrh r0, [r7, #6]
	strh r0, [r2, #6]
	ldr r0, [r7]
	str r0, [r2]
	ldrb r0, [r7, #8]
	strb r0, [r2, #8]
	ldrb r0, [r7, #9]
	strb r0, [r2, #9]
	str r7, [r2, #0x48]
	ldr r0, _0802F3C8 @ =0x0300000C
	adds r4, r4, r0
	ldr r2, [sp, #4]
	ldrb r0, [r2]
	lsls r0, r0, #3
	ldr r2, [sp, #8]
	adds r0, r0, r2
	adds r1, r1, r0
	strh r1, [r4, #0x16]
	ldr r1, [sp, #4]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldr r2, [sp, #0xc]
	adds r0, r0, r2
	adds r3, r3, r0
	strh r3, [r4, #0x18]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r6
	cmp r0, #0
	bne _0802F3D4
	movs r0, #0x1c
	bl VramMalloc
	adds r1, r0, #0
	str r1, [r4, #4]
	cmp r6, #0
	bne _0802F3CC
	adds r0, r7, #0
	adds r0, #0x94
	str r1, [r0]
	b _0802F3EA
	.align 2, 0
_0802F3A8: .4byte 0x0300008A
_0802F3AC: .4byte 0x0000026E
_0802F3B0: .4byte sub_8030754
_0802F3B4: .4byte sub_803053C
_0802F3B8: .4byte 0x03000044
_0802F3BC: .4byte 0x03000045
_0802F3C0: .4byte gUnknown_084ACDD2
_0802F3C4: .4byte gUnknown_084ACDD4
_0802F3C8: .4byte 0x0300000C
_0802F3CC:
	adds r0, r7, #0
	adds r0, #0x98
	str r1, [r0]
	b _0802F3EA
_0802F3D4:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	bne _0802F3E2
	adds r0, r7, #0
	adds r0, #0x94
	b _0802F3E6
_0802F3E2:
	adds r0, r7, #0
	adds r0, #0x98
_0802F3E6:
	ldr r0, [r0]
	str r0, [r4, #4]
_0802F3EA:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _0802F3F8
	movs r0, #0x90
	lsls r0, r0, #3
	b _0802F3FC
_0802F3F8:
	movs r0, #0xe0
	lsls r0, r0, #2
_0802F3FC:
	strh r0, [r4, #0x1a]
	mov r3, sb
	strh r3, [r4, #8]
	ldr r0, _0802F494 @ =0x00000251
	strh r0, [r4, #0xa]
	ldr r0, _0802F498 @ =gUnknown_084ACDD2
	adds r0, #4
	adds r0, r5, r0
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	strh r3, [r4, #0x14]
	strh r3, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x22
	movs r1, #0x10
	mov r8, r1
	mov r2, r8
	strb r2, [r0]
	adds r0, #3
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	ldr r1, _0802F49C @ =gUnknown_084ACDD8
	adds r0, r5, r1
	ldrh r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r4, #0x10]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bhi _0802F458
	b _0802F318
_0802F458:
	mov r3, sl
	ldrh r1, [r3, #0x18]
	adds r0, r1, #0
	subs r0, #0xb8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r4, _0802F4A0 @ =0xFFFFFEE8
	adds r2, r4, #0
	ldrh r5, [r3, #0x16]
	adds r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r4, #0x16
	ldrsh r3, [r3, r4]
	bl sub_80171BC
	ldr r0, _0802F4A4 @ =gUnknown_03005040
	mov r5, r8
	strb r5, [r0, #1]
_0802F484:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F494: .4byte 0x00000251
_0802F498: .4byte gUnknown_084ACDD2
_0802F49C: .4byte gUnknown_084ACDD8
_0802F4A0: .4byte 0xFFFFFEE8
_0802F4A4: .4byte gUnknown_03005040

	thumb_func_start sub_802F4A8
sub_802F4A8: @ 0x0802F4A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0802F54C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r1, _0802F550 @ =0x03000088
	adds r7, r5, r1
	ldrh r0, [r7]
	adds r1, r0, #1
	strh r1, [r7]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bls _0802F540
	ldr r0, _0802F554 @ =0x0300000C
	adds r4, r5, r0
	ldr r1, _0802F558 @ =0x0300003C
	adds r5, r5, r1
	ldr r3, [r6]
	ldr r1, _0802F55C @ =0xFFFFAB00
	str r1, [r6, #0x70]
	movs r0, #0
	str r0, [r6, #0x74]
	ldr r0, _0802F560 @ =0xFFFFFF00
	str r0, [r6, #0x7c]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	asrs r1, r1, #8
	adds r2, r2, r1
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802F564 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	strh r2, [r5, #0x16]
	ldrh r0, [r4, #0x18]
	strh r0, [r5, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	bl DisplaySprite
	movs r0, #0x3c
	strh r0, [r7]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _0802F568 @ =sub_802F56C
	str r0, [r1, #8]
	bl _call_via_r0
_0802F540:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F54C: .4byte gCurTask
_0802F550: .4byte 0x03000088
_0802F554: .4byte 0x0300000C
_0802F558: .4byte 0x0300003C
_0802F55C: .4byte 0xFFFFAB00
_0802F560: .4byte 0xFFFFFF00
_0802F564: .4byte gCamera
_0802F568: .4byte sub_802F56C

	thumb_func_start sub_802F56C
sub_802F56C: @ 0x0802F56C
	push {r4, r5, r6, r7, lr}
	ldr r1, _0802F5B4 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r5, r2, r0
	adds r0, #0x30
	adds r7, r2, r0
	ldr r6, [r3]
	ldr r4, [r3, #0x74]
	ldr r0, _0802F5B8 @ =0xFFFFB000
	mov ip, r1
	cmp r4, r0
	bgt _0802F5C8
	ldr r1, _0802F5BC @ =0x03000088
	adds r4, r2, r1
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802F5CE
	ldr r0, _0802F5C0 @ =0x0300005C
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x3c
	strh r0, [r4]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _0802F5C4 @ =sub_802F644
	str r0, [r1, #8]
	b _0802F5CE
	.align 2, 0
_0802F5B4: .4byte gCurTask
_0802F5B8: .4byte 0xFFFFB000
_0802F5BC: .4byte 0x03000088
_0802F5C0: .4byte 0x0300005C
_0802F5C4: .4byte sub_802F644
_0802F5C8:
	ldr r1, _0802F638 @ =0xFFFFFF00
	adds r0, r4, r1
	str r0, [r3, #0x74]
_0802F5CE:
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r3, #0x70]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #0x74]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802F63C @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	mov r1, ip
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r1, _0802F640 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F638: .4byte 0xFFFFFF00
_0802F63C: .4byte gCamera
_0802F640: .4byte 0x0300000C

	thumb_func_start sub_802F644
sub_802F644: @ 0x0802F644
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0802F714 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r6, r1, r4
	ldr r0, _0802F718 @ =0x0300000C
	adds r0, r0, r1
	mov sb, r0
	ldr r2, _0802F71C @ =0x0300003C
	adds r2, r2, r1
	mov sl, r2
	ldr r0, [r6]
	str r0, [sp, #4]
	ldr r2, _0802F720 @ =0x0300005C
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802F758
	ldr r0, _0802F724 @ =0x03000088
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r7, r0, #0
	cmp r7, #0
	bne _0802F754
	ldr r0, [r6, #0x74]
	ldr r1, _0802F728 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r6, #0x74]
	ldr r1, _0802F72C @ =0xFFFF3000
	cmp r0, r1
	bgt _0802F758
	movs r0, #0
	mov r8, r0
	movs r0, #0x3c
	strh r0, [r2]
	ldr r0, _0802F730 @ =sub_802F804
	str r0, [r3, #8]
	ldr r0, _0802F734 @ =sub_8030120
	movs r2, #0xa0
	lsls r2, r2, #6
	ldr r1, _0802F738 @ =sub_8030740
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	adds r4, r5, r4
	ldr r1, [r6, #0x70]
	str r1, [r4, #0x30]
	ldr r1, [r6, #0x74]
	str r1, [r4, #0x34]
	str r7, [r4, #0x38]
	str r7, [r4, #0x3c]
	ldr r2, _0802F73C @ =0x03000042
	adds r1, r5, r2
	mov r2, r8
	strb r2, [r1]
	str r0, [r6, #0x6c]
	strh r7, [r4, #0x16]
	strh r7, [r4, #0x18]
	movs r0, #0x24
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r7, [r4, #8]
	ldr r0, _0802F740 @ =0x00000271
	strh r0, [r4, #0xa]
	ldr r1, _0802F744 @ =0x03000020
	adds r0, r5, r1
	mov r2, r8
	strb r2, [r0]
	strh r7, [r4, #0x14]
	strh r7, [r4, #0x1c]
	ldr r0, _0802F748 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _0802F74C @ =0x03000022
	adds r1, r5, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0802F750 @ =0x03000025
	adds r5, r5, r0
	mov r1, r8
	strb r1, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	b _0802F758
	.align 2, 0
_0802F714: .4byte gCurTask
_0802F718: .4byte 0x0300000C
_0802F71C: .4byte 0x0300003C
_0802F720: .4byte 0x0300005C
_0802F724: .4byte 0x03000088
_0802F728: .4byte 0xFFFFFF00
_0802F72C: .4byte 0xFFFF3000
_0802F730: .4byte sub_802F804
_0802F734: .4byte sub_8030120
_0802F738: .4byte sub_8030740
_0802F73C: .4byte 0x03000042
_0802F740: .4byte 0x00000271
_0802F744: .4byte 0x03000020
_0802F748: .4byte 0x03000021
_0802F74C: .4byte 0x03000022
_0802F750: .4byte 0x03000025
_0802F754:
	subs r0, #1
	strh r0, [r2]
_0802F758:
	mov r3, sl
	adds r3, #0x20
	ldrb r0, [r3]
	cmp r0, #1
	bne _0802F77C
	mov r2, sl
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802F77C
	adds r0, r6, #0
	adds r0, #0x88
	movs r2, #0
	movs r1, #0x3c
	strh r1, [r0]
	strb r2, [r3]
_0802F77C:
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r6, #0x70]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldr r0, [sp, #4]
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #0x74]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0802F7F8 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	mov r0, sb
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r2, sb
	strh r1, [r2, #0x18]
	ldr r0, _0802F7FC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802F800 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	mov r0, sl
	bl DisplaySprite
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F7F8: .4byte gCamera
_0802F7FC: .4byte gCurTask
_0802F800: .4byte 0x0300000C

	thumb_func_start sub_802F804
sub_802F804: @ 0x0802F804
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0802F8D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	adds r0, #0xc
	adds r0, r0, r6
	mov sl, r0
	ldr r1, _0802F8DC @ =0x0300003C
	adds r1, r6, r1
	str r1, [sp]
	ldr r2, [r7]
	str r2, [sp, #4]
	ldr r3, _0802F8E0 @ =0x03000088
	adds r1, r6, r3
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802F930
	ldr r0, [r7, #0x6c]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r2, _0802F8E4 @ =gUnknown_03004C58
	ldr r1, [r2]
	ldr r0, _0802F8E8 @ =0x00196225
	muls r1, r0, r1
	ldr r3, _0802F8EC @ =0x3C6EF35F
	adds r1, r1, r3
	str r1, [r2]
	movs r0, #7
	ands r0, r1
	ldr r2, _0802F8F0 @ =0x0300008E
	adds r1, r6, r2
	strb r0, [r1]
	ldr r1, _0802F8F4 @ =gUnknown_084ACEA4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r4, [r0]
	ldr r5, _0802F8F8 @ =gUnknown_084ACE24
	lsls r4, r4, #4
	adds r0, r4, r5
	ldr r0, [r0]
	mov sb, r0
	str r0, [r7, #0x70]
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [r7, #0x74]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	ldr r3, _0802F8FC @ =gUnknown_084ACDC0
	mov r8, r3
	ldr r0, _0802F900 @ =0x0300008A
	adds r6, r6, r0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldr r0, [r1]
	muls r0, r2, r0
	movs r1, #0xa
	bl __divsi3
	str r0, [r7, #0x78]
	adds r5, #0xc
	adds r4, r4, r5
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4]
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	str r0, [r7, #0x7c]
	ldr r0, _0802F904 @ =0xFFFF7400
	cmp sb, r0
	blt _0802F90C
	mov r3, sl
	ldr r0, [r3, #0x10]
	ldr r1, _0802F908 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r2, [sp]
	ldr r0, [r2, #0x10]
	ands r0, r1
	b _0802F91E
	.align 2, 0
_0802F8D8: .4byte gCurTask
_0802F8DC: .4byte 0x0300003C
_0802F8E0: .4byte 0x03000088
_0802F8E4: .4byte gUnknown_03004C58
_0802F8E8: .4byte 0x00196225
_0802F8EC: .4byte 0x3C6EF35F
_0802F8F0: .4byte 0x0300008E
_0802F8F4: .4byte gUnknown_084ACEA4
_0802F8F8: .4byte gUnknown_084ACE24
_0802F8FC: .4byte gUnknown_084ACDC0
_0802F900: .4byte 0x0300008A
_0802F904: .4byte 0xFFFF7400
_0802F908: .4byte 0xFFFFFBFF
_0802F90C:
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, [sp]
	ldr r0, [r2, #0x10]
	orrs r0, r1
_0802F91E:
	str r0, [r2, #0x10]
	ldr r1, [sp, #8]
	adds r1, #0x42
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0802F9DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802F9E0 @ =sub_802F9F8
	str r0, [r1, #8]
_0802F930:
	ldrb r5, [r7, #8]
	lsls r5, r5, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	ldr r0, [r7, #0x70]
	asrs r0, r0, #8
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r3, [sp, #4]
	ldrb r4, [r3, #1]
	lsls r4, r4, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	ldr r0, [r7, #0x74]
	asrs r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, r7, #0
	adds r1, #0x8b
	movs r0, #0
	strb r0, [r1]
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	ldr r0, _0802F9DC @ =gCurTask
	ldr r3, [r0]
	ldrh r0, [r3, #6]
	ldr r1, _0802F9E4 @ =0x0300000C
	adds r0, r0, r1
	ldr r2, _0802F9E8 @ =gCamera
	ldrh r1, [r2]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r5, r5, r1
	strh r5, [r0, #0x16]
	ldrh r1, [r2, #2]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, r4, r1
	strh r4, [r0, #0x18]
	ldrh r2, [r3, #6]
	ldr r3, _0802F9EC @ =0x0300003C
	adds r1, r2, r3
	ldr r0, _0802F9F0 @ =0x0300005C
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802F9B6
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802F9B6
	movs r0, #0
	strb r0, [r3]
	ldr r3, _0802F9F4 @ =0x0300005D
	adds r1, r2, r3
	movs r0, #0xff
	strb r0, [r1]
_0802F9B6:
	ldr r0, _0802F9DC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802F9E4 @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _0802F9EC @ =0x0300003C
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F9DC: .4byte gCurTask
_0802F9E0: .4byte sub_802F9F8
_0802F9E4: .4byte 0x0300000C
_0802F9E8: .4byte gCamera
_0802F9EC: .4byte 0x0300003C
_0802F9F0: .4byte 0x0300005C
_0802F9F4: .4byte 0x0300005D

	thumb_func_start sub_802F9F8
sub_802F9F8: @ 0x0802F9F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r3, _0802FAA8 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	adds r1, #0xc
	adds r7, r0, r1
	adds r1, #0x30
	adds r1, r1, r0
	mov r8, r1
	ldr r4, [r6]
	ldr r1, [r6, #0x70]
	ldr r0, [r6, #0x78]
	adds r1, r1, r0
	str r1, [r6, #0x70]
	ldr r2, [r6, #0x74]
	ldr r0, [r6, #0x7c]
	adds r2, r2, r0
	str r2, [r6, #0x74]
	movs r0, #0x9c
	lsls r0, r0, #9
	adds r1, r1, r0
	movs r0, #0xac
	lsls r0, r0, #9
	cmp r1, r0
	bhi _0802FA42
	ldr r0, _0802FAAC @ =0xFFFF3000
	cmp r2, r0
	blt _0802FA42
	movs r0, #0xa0
	lsls r0, r0, #6
	cmp r2, r0
	ble _0802FA50
_0802FA42:
	adds r1, r6, #0
	adds r1, #0x88
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, [r3]
	ldr r0, _0802FAB0 @ =sub_802F804
	str r0, [r1, #8]
_0802FA50:
	ldrb r5, [r6, #8]
	lsls r5, r5, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	ldr r0, [r6, #0x70]
	asrs r0, r0, #8
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldrb r4, [r4, #1]
	lsls r4, r4, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	ldr r0, [r6, #0x74]
	asrs r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r7, r4, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_802EF94
	adds r0, r6, #0
	adds r0, #0x8a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0802FAB4
	bl sub_802FB2C
	b _0802FB0E
	.align 2, 0
_0802FAA8: .4byte gCurTask
_0802FAAC: .4byte 0xFFFF3000
_0802FAB0: .4byte sub_802F804
_0802FAB4:
	ldr r4, _0802FB18 @ =gCurTask
	ldr r3, [r4]
	ldrh r1, [r3, #6]
	ldr r0, _0802FB1C @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _0802FB20 @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r2, [r3, #6]
	ldr r0, _0802FB24 @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r5, r2, r0
	ldrb r0, [r5]
	adds r3, r4, #0
	cmp r0, #0
	beq _0802FAF6
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0802FAF6
	movs r0, #0
	strb r0, [r5]
	ldr r0, _0802FB28 @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_0802FAF6:
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	ldr r1, _0802FB1C @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_802F0D0
_0802FB0E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802FB18: .4byte gCurTask
_0802FB1C: .4byte 0x0300000C
_0802FB20: .4byte gCamera
_0802FB24: .4byte 0x0300003C
_0802FB28: .4byte 0x0300005D

	thumb_func_start sub_802FB2C
sub_802FB2C: @ 0x0802FB2C
	push {r4, r5, r6, lr}
	ldr r0, _0802FBDC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	ldr r0, _0802FBE0 @ =0x0300005C
	adds r2, r1, r0
	movs r0, #2
	strb r0, [r2]
	ldr r2, _0802FBE4 @ =0x03000090
	adds r1, r1, r2
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r1, [r4, #0x6c]
	ldr r0, _0802FBE8 @ =sub_8030364
	str r0, [r1, #8]
	ldr r0, _0802FBEC @ =0x00002010
	ldr r1, _0802FBF0 @ =0x00002011
	bl TasksDestroyInPriorityRange
	ldr r1, _0802FBF4 @ =gUnknown_03005A20
	ldr r0, [r1, #0x10]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #0x10]
	ldr r1, _0802FBF8 @ =gUnknown_03005AB0
	ldr r0, [r1, #0x10]
	ands r0, r2
	str r0, [r1, #0x10]
	ldr r4, _0802FBFC @ =gCamera
	ldrh r0, [r4]
	strh r0, [r4, #0x18]
	adds r0, #0xf0
	strh r0, [r4, #0x1a]
	ldrh r5, [r4, #0x14]
	ldrh r6, [r4, #0x16]
	adds r0, r5, #0
	adds r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x16
	ldrsh r1, [r4, r2]
	bl sub_80174DC
	strh r5, [r4, #0x14]
	strh r6, [r4, #0x16]
	ldr r1, _0802FC00 @ =gUnknown_03005030
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _0802FC04 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _0802FBC8
	ldr r0, _0802FC08 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802FBC8
	ldr r1, _0802FC0C @ =gUnknown_03005024
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0802FBC8:
	bl sub_802FC14
	ldr r0, _0802FBDC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802FC10 @ =sub_802FC14
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802FBDC: .4byte gCurTask
_0802FBE0: .4byte 0x0300005C
_0802FBE4: .4byte 0x03000090
_0802FBE8: .4byte sub_8030364
_0802FBEC: .4byte 0x00002010
_0802FBF0: .4byte 0x00002011
_0802FBF4: .4byte gUnknown_03005A20
_0802FBF8: .4byte gUnknown_03005AB0
_0802FBFC: .4byte gCamera
_0802FC00: .4byte gUnknown_03005030
_0802FC04: .4byte 0x0000C350
_0802FC08: .4byte gGameMode
_0802FC0C: .4byte gUnknown_03005024
_0802FC10: .4byte sub_802FC14

	thumb_func_start sub_802FC14
sub_802FC14: @ 0x0802FC14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0802FE2C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _0802FE30 @ =0x0300000C
	adds r7, r1, r2
	ldr r3, _0802FE34 @ =0x0300003C
	adds r3, r1, r3
	str r3, [sp, #4]
	ldr r2, [r4]
	adds r0, #0x90
	adds r5, r1, r0
	ldrh r0, [r5]
	adds r0, #0x28
	strh r0, [r5]
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r3, [r4, #0x74]
	adds r3, r3, r0
	str r3, [r4, #0x74]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x70]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r0, r0, r2
	asrs r3, r3, #8
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x18
	lsrs r2, r1, #0x10
	mov r8, r2
	asrs r1, r1, #0x10
	ldr r2, _0802FE38 @ =sub_803FD5C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _0802FCB4
	lsls r1, r0, #8
	ldr r0, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x74]
	ldrh r1, [r5]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0802FE3C @ =0xFFFFFF00
	cmp r0, r1
	ble _0802FCB4
	movs r0, #0
	strh r0, [r5]
	mov r3, sb
	ldr r1, [r3]
	ldr r0, _0802FE40 @ =sub_802FE88
	str r0, [r1, #8]
_0802FCB4:
	ldr r0, [r7, #0x10]
	ldr r1, _0802FE44 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r0, _0802FE48 @ =gUnknown_03005A20
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _0802FCDC
	ldr r2, _0802FE4C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0802FE50 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0802FE54 @ =gUnknown_03001B30
	strh r3, [r0, #0xa]
	ldr r0, _0802FE58 @ =gUnknown_030011A8
	strh r3, [r0]
	strh r3, [r0, #4]
_0802FCDC:
	adds r1, r4, #0
	adds r1, #0x88
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r4, #7
	ands r0, r4
	lsls r6, r6, #0x10
	str r6, [sp, #8]
	mov r1, r8
	lsls r1, r1, #0x10
	mov sl, r1
	cmp r0, #0
	bne _0802FDD6
	ldr r2, _0802FE5C @ =gUnknown_03004C58
	mov sb, r2
	ldr r0, [r2]
	ldr r3, _0802FE60 @ =0x00196225
	muls r0, r3, r0
	ldr r1, _0802FE64 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ands r4, r0
	ldr r0, _0802FE68 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _0802FE6C @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _0802FE70 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _0802FE74 @ =sub_80177EC
	str r0, [sp]
	adds r0, r6, #0
	bl sub_801769C
	ldrh r3, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r3, r5
	mov r2, sl
	asrs r0, r2, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	ldr r4, [sp, #8]
	asrs r1, r4, #0x10
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #0x28
	strh r2, [r5, #0x3e]
	ldr r2, _0802FE78 @ =0x03000040
	adds r3, r3, r2
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r4, _0802FE60 @ =0x00196225
	adds r6, r2, #0
	muls r6, r4, r6
	ldr r2, _0802FE64 @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _0802FE7C @ =gSineTable
	mov r8, r3
	ldr r3, _0802FE80 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	mov ip, r2
	movs r4, #0
	ldrsh r2, [r2, r4]
	mov ip, r2
	lsls r2, r2, #1
	add r2, ip
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r4, #0
	ldrsh r3, [r3, r4]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _0802FE60 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r4, _0802FE64 @ =0x3C6EF35F
	adds r3, r3, r4
	mov r2, sb
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r3, #0x20
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_0802FDD6:
	ldr r2, _0802FE84 @ =gCamera
	ldrh r1, [r2]
	mov r3, sl
	asrs r0, r3, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	ldrh r1, [r2, #2]
	ldr r4, [sp, #8]
	asrs r0, r4, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldr r0, _0802FE2C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802FE30 @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _0802FE34 @ =0x0300003C
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802FE2C: .4byte gCurTask
_0802FE30: .4byte 0x0300000C
_0802FE34: .4byte 0x0300003C
_0802FE38: .4byte sub_803FD5C
_0802FE3C: .4byte 0xFFFFFF00
_0802FE40: .4byte sub_802FE88
_0802FE44: .4byte 0xFFFFFE7F
_0802FE48: .4byte gUnknown_03005A20
_0802FE4C: .4byte gDispCnt
_0802FE50: .4byte 0x00007FFF
_0802FE54: .4byte gUnknown_03001B30
_0802FE58: .4byte gUnknown_030011A8
_0802FE5C: .4byte gUnknown_03004C58
_0802FE60: .4byte 0x00196225
_0802FE64: .4byte 0x3C6EF35F
_0802FE68: .4byte gUnknown_080BB434
_0802FE6C: .4byte gUnknown_080BB41C
_0802FE70: .4byte gUnknown_080BB42C
_0802FE74: .4byte sub_80177EC
_0802FE78: .4byte 0x03000040
_0802FE7C: .4byte gSineTable
_0802FE80: .4byte 0x000001FF
_0802FE84: .4byte gCamera

	thumb_func_start sub_802FE88
sub_802FE88: @ 0x0802FE88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0802FF60 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r3, r2, r5
	ldr r4, _0802FF64 @ =0x0300000C
	adds r4, r4, r2
	mov sl, r4
	ldr r7, _0802FF68 @ =0x0300003C
	adds r7, r2, r7
	str r7, [sp, #4]
	ldr r4, [r3]
	ldrb r1, [r3, #8]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #0x70]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, r8
	str r0, [sp, #8]
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #0x74]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	str r7, [sp, #0xc]
	ldr r1, _0802FF6C @ =0x03000088
	adds r2, r2, r1
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bls _0802FFA8
	mov r2, r8
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r1, r7, #0x10
	asrs r5, r1, #0x10
	ldr r3, _0802FF70 @ =0xFFF80000
	adds r1, r1, r3
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8015C5C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8015FFC
	ldr r1, _0802FF74 @ =gUnknown_03005040
	movs r6, #0
	movs r0, #0x30
	strb r0, [r1, #1]
	ldr r3, _0802FF78 @ =0x0000026F
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x10
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r3, r2, r4
	ldr r7, _0802FF7C @ =0x03000046
	adds r1, r2, r7
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _0802FF80 @ =0x03000048
	adds r0, r2, r1
	strh r6, [r0]
	adds r4, #0x42
	adds r1, r2, r4
	movs r0, #0x80
	strh r0, [r1]
	mov r7, sl
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0802FF84
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	adds r4, #2
	adds r0, r2, r4
	strh r1, [r0]
	b _0802FF8E
	.align 2, 0
_0802FF60: .4byte gCurTask
_0802FF64: .4byte 0x0300000C
_0802FF68: .4byte 0x0300003C
_0802FF6C: .4byte 0x03000088
_0802FF70: .4byte 0xFFF80000
_0802FF74: .4byte gUnknown_03005040
_0802FF78: .4byte 0x0000026F
_0802FF7C: .4byte 0x03000046
_0802FF80: .4byte 0x03000048
_0802FF84:
	ldr r7, _0802FFA0 @ =0x03000044
	adds r1, r2, r7
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
_0802FF8E:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x3c
	strh r0, [r1]
	ldr r0, _0802FFA4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080300D6
	.align 2, 0
_0802FFA0: .4byte 0x03000044
_0802FFA4: .4byte gCurTask
_0802FFA8:
	movs r4, #7
	ands r1, r4
	cmp r1, #0
	bne _0803008A
	ldr r0, _080300E8 @ =gUnknown_03004C58
	mov sb, r0
	ldr r0, [r0]
	ldr r1, _080300EC @ =0x00196225
	muls r0, r1, r0
	ldr r2, _080300F0 @ =0x3C6EF35F
	adds r0, r0, r2
	mov r3, sb
	str r0, [r3]
	ands r4, r0
	ldr r0, _080300F4 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _080300F8 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _080300FC @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _08030100 @ =sub_80177EC
	str r0, [sp]
	adds r0, r6, #0
	bl sub_801769C
	ldrh r3, [r0, #6]
	adds r5, r3, r5
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #0x28
	strh r2, [r5, #0x3e]
	ldr r7, _08030104 @ =0x03000040
	adds r3, r3, r7
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r4, _080300EC @ =0x00196225
	adds r6, r2, #0
	muls r6, r4, r6
	ldr r7, _080300F0 @ =0x3C6EF35F
	adds r6, r6, r7
	str r6, [r3]
	ldr r2, _08030108 @ =gSineTable
	mov r8, r2
	ldr r3, _0803010C @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	movs r7, #0
	ldrsh r4, [r2, r7]
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r4, #0
	ldrsh r3, [r3, r4]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r7, _080300EC @ =0x00196225
	adds r3, r6, #0
	muls r3, r7, r3
	ldr r2, _080300F0 @ =0x3C6EF35F
	adds r3, r3, r2
	mov r4, sb
	str r3, [r4]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r3, #0x20
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_0803008A:
	ldr r2, _08030110 @ =gCamera
	ldrh r1, [r2]
	ldr r7, [sp, #8]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	mov r1, sl
	strh r0, [r1, #0x16]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	mov r3, sl
	strh r0, [r3, #0x18]
	ldr r4, _08030114 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	ldr r7, _08030118 @ =0x0300000C
	adds r2, r0, r7
	ldr r1, _0803011C @ =0x0300003C
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_080300D6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080300E8: .4byte gUnknown_03004C58
_080300EC: .4byte 0x00196225
_080300F0: .4byte 0x3C6EF35F
_080300F4: .4byte gUnknown_080BB434
_080300F8: .4byte gUnknown_080BB41C
_080300FC: .4byte gUnknown_080BB42C
_08030100: .4byte sub_80177EC
_08030104: .4byte 0x03000040
_08030108: .4byte gSineTable
_0803010C: .4byte 0x000001FF
_08030110: .4byte gCamera
_08030114: .4byte gCurTask
_08030118: .4byte 0x0300000C
_0803011C: .4byte 0x0300003C

	thumb_func_start sub_8030120
sub_8030120: @ 0x08030120
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _080301C0 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r1, r2
	ldrh r0, [r0]
	adds r0, r0, r2
	ldrh r6, [r0, #6]
	ldr r0, _080301C4 @ =0x03000042
	adds r1, r1, r0
	ldrb r0, [r1]
	mov sl, r3
	cmp r0, #0
	beq _080301FA
	ldr r1, _080301C8 @ =gUnknown_084ACEA4
	adds r2, #0x8e
	adds r0, r6, r2
	ldrb r2, [r0]
	movs r0, #7
	ands r0, r2
	lsls r0, r0, #1
	adds r1, #1
	adds r0, r0, r1
	ldrb r4, [r0]
	ldr r5, _080301CC @ =gUnknown_084ACE24
	lsls r4, r4, #4
	adds r0, r4, r5
	ldr r0, [r0]
	mov sb, r0
	str r0, [r7, #0x30]
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [r7, #0x34]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	ldr r3, _080301D0 @ =gUnknown_084ACDC0
	mov r8, r3
	ldr r0, _080301D4 @ =0x0300008A
	adds r6, r6, r0
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldr r0, [r1]
	muls r0, r2, r0
	movs r1, #0xa
	bl __divsi3
	str r0, [r7, #0x38]
	adds r5, #0xc
	adds r4, r4, r5
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4]
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	str r0, [r7, #0x3c]
	ldr r0, _080301D8 @ =0xFFFF7400
	cmp sb, r0
	blt _080301E0
	ldr r0, [r7, #0x10]
	ldr r1, _080301DC @ =0xFFFFFBFF
	ands r0, r1
	b _080301E8
	.align 2, 0
_080301C0: .4byte gCurTask
_080301C4: .4byte 0x03000042
_080301C8: .4byte gUnknown_084ACEA4
_080301CC: .4byte gUnknown_084ACE24
_080301D0: .4byte gUnknown_084ACDC0
_080301D4: .4byte 0x0300008A
_080301D8: .4byte 0xFFFF7400
_080301DC: .4byte 0xFFFFFBFF
_080301E0:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_080301E8:
	str r0, [r7, #0x10]
	adds r1, r7, #0
	adds r1, #0x42
	movs r0, #0
	strb r0, [r1]
	mov r3, sl
	ldr r1, [r3]
	ldr r0, _08030208 @ =sub_803020C
	str r0, [r1, #8]
_080301FA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030208: .4byte sub_803020C

	thumb_func_start sub_803020C
sub_803020C: @ 0x0803020C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _080302D4 @ =gCurTask
	ldr r2, [r3]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r5, r0, r1
	adds r4, r6, #0
	ldr r7, [r5]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x38]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	movs r0, #0x9c
	lsls r0, r0, #9
	adds r1, r1, r0
	movs r0, #0xac
	lsls r0, r0, #9
	cmp r1, r0
	bhi _0803025A
	ldr r0, _080302D8 @ =0xFFFF3000
	cmp r2, r0
	blt _0803025A
	movs r0, #0xa0
	lsls r0, r0, #6
	cmp r2, r0
	ble _08030260
_0803025A:
	ldr r1, [r3]
	ldr r0, _080302DC @ =sub_8030120
	str r0, [r1, #8]
_08030260:
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #0x30]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #0x34]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _080302D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	ldr r3, _080302E0 @ =gUnknown_03005A20
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	mov r8, r0
	ldr r0, _080302E4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080302EC
	ldr r3, _080302E8 @ =gUnknown_03005AB0
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	b _080302EE
	.align 2, 0
_080302D4: .4byte gCurTask
_080302D8: .4byte 0xFFFF3000
_080302DC: .4byte sub_8030120
_080302E0: .4byte gUnknown_03005A20
_080302E4: .4byte gUnknown_03005088
_080302E8: .4byte gUnknown_03005AB0
_080302EC:
	movs r0, #0
_080302EE:
	mov r1, r8
	cmp r1, #2
	beq _080302F8
	cmp r0, #2
	bne _08030322
_080302F8:
	ldr r0, _08030350 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r0, r0, r2
	ldrh r2, [r0, #6]
	ldr r0, _08030354 @ =0x0300003C
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08030358 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r1, _0803035C @ =0x0300005D
	adds r2, r2, r1
	movs r0, #0xff
	strb r0, [r2]
_08030322:
	ldr r2, _08030360 @ =gCamera
	ldrh r1, [r2]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r1, [r2, #2]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030350: .4byte gCurTask
_08030354: .4byte 0x0300003C
_08030358: .4byte 0xFFFFBFFF
_0803035C: .4byte 0x0300005D
_08030360: .4byte gCamera

	thumb_func_start sub_8030364
sub_8030364: @ 0x08030364
	push {r4, r5, lr}
	ldr r4, _080303C4 @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r3, [r0, #6]
	adds r3, r3, r1
	ldr r1, [r3]
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r5, #0x30]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x34]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _080303C8 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, #0x78
	cmp r2, r0
	bge _080303CC
	movs r0, #0x80
	lsls r0, r0, #2
	b _080303CE
	.align 2, 0
_080303C4: .4byte gCurTask
_080303C8: .4byte gCamera
_080303CC:
	ldr r0, _080303DC @ =0xFFFFFE00
_080303CE:
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	bne _080303E4
	ldr r0, _080303E0 @ =0xFFFFFA00
	b _080303F6
	.align 2, 0
_080303DC: .4byte 0xFFFFFE00
_080303E0: .4byte 0xFFFFFA00
_080303E4:
	cmp r0, #0
	bge _080303F0
	ldr r1, _080303EC @ =0xFFFFFD00
	b _080303F4
	.align 2, 0
_080303EC: .4byte 0xFFFFFD00
_080303F0:
	movs r1, #0xc0
	lsls r1, r1, #2
_080303F4:
	adds r0, r0, r1
_080303F6:
	str r0, [r5, #0x3c]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r4]
	ldr r0, _08030410 @ =sub_8030414
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030410: .4byte sub_8030414

	thumb_func_start sub_8030414
sub_8030414: @ 0x08030414
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08030450 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	mov r8, r5
	ldrh r0, [r3]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r7, [r6]
	ldr r0, _08030454 @ =0x03000040
	adds r2, r2, r0
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _08030458
	adds r0, r3, #0
	bl TaskDestroy
	b _0803051A
	.align 2, 0
_08030450: .4byte gCurTask
_08030454: .4byte 0x03000040
_08030458:
	ldr r4, [r5, #0x3c]
	adds r4, #0x28
	str r4, [r5, #0x3c]
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x38]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	ldr r3, [r5, #0x34]
	adds r3, r3, r4
	str r3, [r5, #0x34]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	asrs r1, r1, #8
	adds r2, r2, r1
	lsls r2, r2, #0x10
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r3, r3, #8
	adds r1, r1, r3
	lsls r1, r1, #0x10
	ldr r3, _08030528 @ =gCamera
	ldrh r0, [r3]
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r5, #0x18]
	cmp r4, #0
	ble _080304CC
	adds r0, r1, #0
	adds r0, #0x18
	ldr r1, _0803052C @ =sub_803FD5C
	str r1, [sp]
	adds r1, r2, #0
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _080304CC
	lsls r1, r0, #8
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	ldr r1, [r5, #0x3c]
	asrs r0, r1, #2
	subs r0, r0, r1
	str r0, [r5, #0x3c]
_080304CC:
	mov r0, r8
	adds r0, #0x40
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0803050E
	ldr r3, _08030530 @ =gUnknown_03004C58
	ldr r1, [r3]
	ldr r0, _08030534 @ =0x00196225
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _08030538 @ =0x3C6EF35F
	adds r2, r2, r0
	str r2, [r3]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x3f
	ands r1, r2
	adds r0, r0, r1
	subs r0, #0x20
	lsls r0, r0, #8
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r3, #0xfc
	lsls r3, r3, #0xe
	ands r2, r3
	asrs r2, r2, #0x10
	subs r2, #0x20
	subs r1, r1, r2
	lsls r1, r1, #8
	bl sub_8017540
_0803050E:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0803051A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030528: .4byte gCamera
_0803052C: .4byte sub_803FD5C
_08030530: .4byte gUnknown_03004C58
_08030534: .4byte 0x00196225
_08030538: .4byte 0x3C6EF35F

	thumb_func_start sub_803053C
sub_803053C: @ 0x0803053C
	push {r4, r5, r6, lr}
	ldr r5, _08030588 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	ldr r0, _0803058C @ =0x03000045
	adds r1, r4, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08030582
	ldr r2, _08030590 @ =gUnknown_084ACE12
	ldr r6, _08030594 @ =0x03000044
	adds r3, r4, r6
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	subs r6, #4
	adds r0, r4, r6
	strh r1, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r2, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, _08030598 @ =0x03000042
	adds r0, r4, r2
	strh r1, [r0]
	ldr r1, [r5]
	ldr r0, _0803059C @ =sub_80305A0
	str r0, [r1, #8]
_08030582:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08030588: .4byte gCurTask
_0803058C: .4byte 0x03000045
_08030590: .4byte gUnknown_084ACE12
_08030594: .4byte 0x03000044
_08030598: .4byte 0x03000042
_0803059C: .4byte sub_80305A0

	thumb_func_start sub_80305A0
sub_80305A0: @ 0x080305A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08030620 @ =gCurTask
	ldr r5, [r0]
	ldrh r4, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov ip, r0
	ldr r0, [r0, #0x48]
	ldr r1, _08030624 @ =0x0300000C
	adds r6, r4, r1
	mov r2, ip
	ldr r2, [r2]
	mov r8, r2
	adds r0, #0x8a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _08030638
	ldr r2, _08030628 @ =gUnknown_084ACE12
	ldr r3, _0803062C @ =0x03000044
	adds r0, r4, r3
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r7, _08030630 @ =0x03000040
	adds r2, r4, r7
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	asrs r0, r0, #0x14
	ldrh r7, [r2]
	adds r0, r0, r7
	strh r0, [r2]
	ldr r7, _08030634 @ =0x03000042
	adds r0, r4, r7
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r7, [r0]
	adds r1, r1, r7
	strh r1, [r0]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, r3
	bne _08030678
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _08030678
	adds r0, r5, #0
	bl TaskDestroy
	b _08030700
	.align 2, 0
_08030620: .4byte gCurTask
_08030624: .4byte 0x0300000C
_08030628: .4byte gUnknown_084ACE12
_0803062C: .4byte 0x03000044
_08030630: .4byte 0x03000040
_08030634: .4byte 0x03000042
_08030638:
	ldr r0, _0803070C @ =0x03000040
	adds r1, r4, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0803064A
	adds r0, r2, #1
	strh r0, [r1]
_0803064A:
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	ble _08030658
	subs r0, r2, #1
	strh r0, [r1]
_08030658:
	ldr r0, _08030710 @ =0x03000042
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _0803066A
	adds r0, r1, #1
	strh r0, [r2]
_0803066A:
	ldrh r1, [r2]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0
	ble _08030678
	subs r0, r1, #1
	strh r0, [r2]
_08030678:
	mov r0, ip
	ldrb r1, [r0, #8]
	lsls r1, r1, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, ip
	ldrh r2, [r2, #0x3c]
	adds r1, r1, r2
	mov r0, ip
	adds r0, #0x40
	ldrh r3, [r0]
	adds r3, r3, r1
	mov r7, r8
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	mov r2, ip
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrh r7, [r2, #0x3e]
	adds r1, r1, r7
	mov r0, ip
	adds r0, #0x42
	ldrh r2, [r0]
	adds r2, r2, r1
	ldr r1, _08030714 @ =gCamera
	ldrh r0, [r1]
	lsls r3, r3, #0x10
	asrs r5, r3, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r1, #2]
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x18]
	mov r0, ip
	adds r0, #0x44
	ldrb r1, [r0]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080306F4
	ldr r3, _08030718 @ =gUnknown_03005A20
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80096B0
	ldr r0, _0803071C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080306F4
	ldr r3, _08030720 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80096B0
_080306F4:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08030700:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803070C: .4byte 0x03000040
_08030710: .4byte 0x03000042
_08030714: .4byte gCamera
_08030718: .4byte gUnknown_03005A20
_0803071C: .4byte gUnknown_03005088
_08030720: .4byte gUnknown_03005AB0

	thumb_func_start sub_8030724
sub_8030724: @ 0x08030724
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

	thumb_func_start sub_8030740
sub_8030740: @ 0x08030740
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8030754
sub_8030754: @ 0x08030754
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r0, r1
	adds r1, #0x44
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	cmp r0, #0
	bne _08030774
	ldr r0, [r2, #0x10]
	bl VramFree
_08030774:
	pop {r0}
	bx r0

	thumb_func_start sub_8030778
sub_8030778: @ 0x08030778
	push {r4, r5, r6, r7, lr}
	ldr r2, _080307B8 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _080307BC @ =gUnknown_03005A20
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _080307C0 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080307C8
	ldr r3, _080307C4 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _080307CA
	.align 2, 0
_080307B8: .4byte gCurTask
_080307BC: .4byte gUnknown_03005A20
_080307C0: .4byte gUnknown_03005088
_080307C4: .4byte gUnknown_03005AB0
_080307C8:
	movs r0, #0
_080307CA:
	cmp r7, #2
	beq _080307D2
	cmp r0, #2
	bne _080307FC
_080307D2:
	ldr r0, _08030804 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _08030808 @ =0x0300003C
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0803080C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08030810 @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_080307FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030804: .4byte gCurTask
_08030808: .4byte 0x0300003C
_0803080C: .4byte 0xFFFFBFFF
_08030810: .4byte 0x0300005D

	thumb_func_start sub_8030814
sub_8030814: @ 0x08030814
	ldr r0, _08030844 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _08030848 @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08030840
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08030840
	movs r0, #0
	strb r0, [r3]
	ldr r0, _0803084C @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_08030840:
	bx lr
	.align 2, 0
_08030844: .4byte gCurTask
_08030848: .4byte 0x0300003C
_0803084C: .4byte 0x0300005D

	thumb_func_start sub_8030850
sub_8030850: @ 0x08030850
	ldr r0, _08030868 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0803086C @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_08030868: .4byte gCurTask
_0803086C: .4byte 0x0300000C

	thumb_func_start sub_8030870
sub_8030870: @ 0x08030870
	push {r4, lr}
	ldr r2, _08030898 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _0803089C @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _080308A0 @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08030898: .4byte gCurTask
_0803089C: .4byte 0x0300000C
_080308A0: .4byte gCamera

	thumb_func_start sub_80308A4
sub_80308A4: @ 0x080308A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _08030960 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	ldr r0, _08030964 @ =0x0300000C
	adds r4, r5, r0
	ldr r0, [r4, #0x10]
	ldr r1, _08030968 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r1, _0803096C @ =gUnknown_03005A20
	mov r8, r1
	ldr r3, [r1, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _080308E8
	ldr r2, _08030970 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08030974 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08030978 @ =gUnknown_03001B30
	strh r3, [r0, #0xa]
	ldr r0, _0803097C @ =gUnknown_030011A8
	strh r3, [r0]
	strh r3, [r0, #4]
_080308E8:
	ldr r0, _08030980 @ =0x03000087
	adds r0, r0, r5
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080309B6
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_800B8B4
	mov r8, r0
	movs r1, #0
	ldr r0, _08030984 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803092A
	ldr r3, _08030988 @ =gUnknown_03005AB0
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800B8B4
	adds r1, r0, #0
_0803092A:
	ldr r0, _0803098C @ =0x0300003C
	adds r2, r5, r0
	mov r0, r8
	cmp r0, #1
	beq _08030938
	cmp r1, #1
	bne _0803099C
_08030938:
	ldr r0, _08030990 @ =0x03000086
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x78
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08030994 @ =0x0300005C
	adds r1, r5, r0
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _08030998 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _080309B6
	.align 2, 0
_08030960: .4byte gCurTask
_08030964: .4byte 0x0300000C
_08030968: .4byte 0xFFFFFE7F
_0803096C: .4byte gUnknown_03005A20
_08030970: .4byte gDispCnt
_08030974: .4byte 0x00007FFF
_08030978: .4byte gUnknown_03001B30
_0803097C: .4byte gUnknown_030011A8
_08030980: .4byte 0x03000087
_08030984: .4byte gUnknown_03005088
_08030988: .4byte gUnknown_03005AB0
_0803098C: .4byte 0x0300003C
_08030990: .4byte 0x03000086
_08030994: .4byte 0x0300005C
_08030998: .4byte 0xFFFFBFFF
_0803099C:
	mov r0, r8
	cmp r0, #2
	beq _080309A6
	cmp r1, #2
	bne _080309B6
_080309A6:
	ldr r0, _080309C4 @ =0x0300005C
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _080309C8 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
_080309B6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080309C4: .4byte 0x0300005C
_080309C8: .4byte 0xFFFFBFFF

	thumb_func_start sub_80309CC
sub_80309CC: @ 0x080309CC
	push {r4, r5, lr}
	ldr r0, _08030A40 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08030A44 @ =0x0300000C
	adds r3, r0, r1
	ldr r5, _08030A48 @ =0x0300003C
	adds r4, r0, r5
	adds r1, #0x7b
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08030A2E
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	cmp r0, #0
	ble _08030A2E
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08030A2E
	ldr r0, _08030A4C @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08030A2E
	ldr r0, [r3, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, _08030A50 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08030A54 @ =gUnknown_03001B30
	ldr r0, _08030A58 @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _08030A5C @ =gUnknown_030011A8
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
_08030A2E:
	adds r0, r3, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030A40: .4byte gCurTask
_08030A44: .4byte 0x0300000C
_08030A48: .4byte 0x0300003C
_08030A4C: .4byte gUnknown_03005A20
_08030A50: .4byte gDispCnt
_08030A54: .4byte gUnknown_03001B30
_08030A58: .4byte 0x00003F1F
_08030A5C: .4byte gUnknown_030011A8

	thumb_func_start CreateEntity_Enemy025
CreateEntity_Enemy025: @ 0x08030A60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	ldr r0, _08030A94 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08030A98
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	b _08030C88
	.align 2, 0
_08030A94: .4byte gGameMode
_08030A98:
	ldr r0, _08030B18 @ =sub_8030CA4
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08030B1C @ =sub_8031CB4
	str r1, [sp]
	movs r1, #0x90
	movs r3, #0
	bl TaskCreate
	adds r5, r0, #0
	ldr r0, _08030B20 @ =sub_804C40C
	ldr r2, _08030B24 @ =0x0000FFFD
	movs r4, #0
	str r4, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r7, r2, r0
	movs r5, #0
	mov r1, sb
	strh r1, [r3, #4]
	mov r0, sl
	strh r0, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #8]
	mov r1, r8
	strb r1, [r3, #9]
	ldr r0, _08030B28 @ =0x03000084
	adds r1, r2, r0
	movs r0, #0x78
	strh r0, [r1]
	ldr r1, _08030B2C @ =0x03000087
	adds r0, r2, r1
	strb r5, [r0]
	adds r1, #3
	adds r0, r2, r1
	strh r4, [r0]
	adds r1, #2
	adds r0, r2, r1
	strb r5, [r0]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r3, #0x6c]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #0x70]
	str r4, [r3, #0x74]
	str r4, [r3, #0x78]
	ldr r0, _08030B30 @ =gUnknown_03005160
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _08030B38
	ldr r4, _08030B34 @ =0x03000086
	adds r1, r2, r4
	movs r0, #2
	strb r0, [r1]
	b _08030B3E
	.align 2, 0
_08030B18: .4byte sub_8030CA4
_08030B1C: .4byte sub_8031CB4
_08030B20: .4byte sub_804C40C
_08030B24: .4byte 0x0000FFFD
_08030B28: .4byte 0x03000084
_08030B2C: .4byte 0x03000087
_08030B30: .4byte gUnknown_03005160
_08030B34: .4byte 0x03000086
_08030B38:
	ldr r1, _08030C58 @ =0x03000086
	adds r0, r2, r1
	strb r5, [r0]
_08030B3E:
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r4, sb
	lsls r4, r4, #8
	mov sb, r4
	add r0, sb
	movs r5, #0
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r1, sl
	lsls r1, r1, #8
	mov sl, r1
	add r0, sl
	strh r0, [r7, #0x18]
	movs r0, #0x40
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	movs r0, #0x9d
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x22
	movs r4, #0x10
	strb r4, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	str r0, [r7, #0x10]
	ldr r3, [sp, #4]
	adds r4, r3, #0
	adds r4, #0x3c
	ldrb r0, [r6]
	lsls r0, r0, #3
	add r0, sb
	strh r0, [r4, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	add r0, sl
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #8
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r0, _08030C5C @ =0x00000275
	strh r0, [r4, #0xa]
	ldr r3, [sp, #4]
	adds r0, r3, #0
	adds r0, #0x5c
	movs r1, #0
	strb r1, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r3, #0
	adds r1, #0x5d
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x5e
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r3, #0
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	mov r1, r8
	str r1, [r4, #0x10]
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	ldrh r1, [r7, #0x18]
	adds r1, #0xc0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r4, _08030C60 @ =0xFFFFFEC0
	adds r2, r4, #0
	ldrh r3, [r7, #0x16]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r4, #0x16
	ldrsh r3, [r7, r4]
	bl sub_80171BC
	ldr r2, _08030C64 @ =gUnknown_03005A20
	strh r5, [r2, #0xc]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r2, #0x10]
	adds r0, r2, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08030C6C
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r1, [r0]
	ldr r0, _08030C68 @ =0x0000010D
	cmp r1, r0
	beq _08030C52
	cmp r1, #0xcf
	bne _08030C6C
_08030C52:
	movs r0, #0x80
	strh r0, [r2, #0x38]
	b _08030C72
	.align 2, 0
_08030C58: .4byte 0x03000086
_08030C5C: .4byte 0x00000275
_08030C60: .4byte 0xFFFFFEC0
_08030C64: .4byte gUnknown_03005A20
_08030C68: .4byte 0x0000010D
_08030C6C:
	ldr r1, _08030C98 @ =gUnknown_03005A20
	movs r0, #0
	strh r0, [r1, #0x38]
_08030C72:
	ldr r0, _08030C9C @ =gUnknown_03005A18
	ldr r0, [r0]
	cmp r0, #0
	beq _08030C88
	ldrh r0, [r0, #6]
	ldr r1, _08030CA0 @ =0x03000336
	adds r0, r0, r1
	ldrh r2, [r0]
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
_08030C88:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030C98: .4byte gUnknown_03005A20
_08030C9C: .4byte gUnknown_03005A18
_08030CA0: .4byte 0x03000336

	thumb_func_start sub_8030CA4
sub_8030CA4: @ 0x08030CA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08030D6C @ =gCurTask
	mov sl, r0
	ldr r5, [r0]
	ldrh r6, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r1, _08030D70 @ =0x0300000C
	adds r1, r1, r6
	mov sb, r1
	ldr r3, _08030D74 @ =0x0300003C
	adds r3, r3, r6
	mov r8, r3
	ldr r4, [r7]
	ldr r1, [r7, #0x6c]
	ldr r0, [r7, #0x74]
	adds r1, r1, r0
	str r1, [r7, #0x6c]
	ldr r3, [r7, #0x70]
	ldr r0, [r7, #0x78]
	adds r3, r3, r0
	str r3, [r7, #0x70]
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	asrs r1, r1, #8
	adds r2, r2, r1
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r3, r3, #8
	adds r1, r1, r3
	ldrh r0, [r5, #6]
	ldr r3, _08030D70 @ =0x0300000C
	adds r0, r0, r3
	ldr r4, _08030D78 @ =gCamera
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
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r1, sl
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r3, _08030D70 @ =0x0300000C
	adds r2, r0, r3
	ldr r1, _08030D74 @ =0x0300003C
	adds r3, r0, r1
	ldrh r0, [r2, #0x16]
	strh r0, [r3, #0x16]
	ldrh r4, [r2, #0x18]
	strh r4, [r3, #0x18]
	ldrh r1, [r2, #0xa]
	movs r0, #0x9d
	lsls r0, r0, #2
	cmp r1, r0
	bne _08030D52
	ldr r0, [r2, #0xc]
	ldr r1, _08030D7C @ =gUnknown_084ACED8
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r4, r0
	strh r0, [r3, #0x18]
_08030D52:
	bl sub_80309CC
	ldr r3, _08030D80 @ =0x0300008C
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #4
	bls _08030D62
	b _08030EBC
_08030D62:
	lsls r0, r0, #2
	ldr r1, _08030D84 @ =_08030D88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08030D6C: .4byte gCurTask
_08030D70: .4byte 0x0300000C
_08030D74: .4byte 0x0300003C
_08030D78: .4byte gCamera
_08030D7C: .4byte gUnknown_084ACED8
_08030D80: .4byte 0x0300008C
_08030D84: .4byte _08030D88
_08030D88: @ jump table
	.4byte _08030D9C @ case 0
	.4byte _08030DF0 @ case 1
	.4byte _08030E34 @ case 2
	.4byte _08030E52 @ case 3
	.4byte _08030E7A @ case 4
_08030D9C:
	adds r1, r7, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08030DC8
	ldr r1, _08030DE4 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #1]
	mov r1, sb
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08030DE8 @ =0xFFFFFF00
	str r0, [r7, #0x74]
	adds r1, r7, #0
	adds r1, #0x8c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08030DC8:
	ldr r1, _08030DEC @ =gUnknown_03005A20
	adds r0, r1, #0
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r0, #0xd1
	bne _08030EBC
	adds r0, r1, #0
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, #2
	bne _08030EBC
	movs r0, #0
	strh r0, [r1, #0x38]
	b _08030EBC
	.align 2, 0
_08030DE4: .4byte gUnknown_03005040
_08030DE8: .4byte 0xFFFFFF00
_08030DEC: .4byte gUnknown_03005A20
_08030DF0:
	ldr r0, [r7, #0x6c]
	ldr r3, _08030E2C @ =0xFFFF8800
	cmp r0, r3
	bgt _08030E16
	mov r1, sb
	adds r1, #0x20
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	str r3, [r7, #0x6c]
	str r2, [r7, #0x74]
	adds r1, r7, #0
	adds r1, #0x84
	movs r0, #0x3c
	strh r0, [r1]
	adds r1, #8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08030E16:
	ldr r2, _08030E30 @ =gCamera
	ldrh r3, [r2, #0xe]
	movs r0, #0xe
	ldrsh r1, [r2, r0]
	movs r0, #0x60
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08030EBC
	subs r0, r3, #1
	strh r0, [r2, #0xe]
	b _08030EBC
	.align 2, 0
_08030E2C: .4byte 0xFFFF8800
_08030E30: .4byte gCamera
_08030E34:
	adds r1, r7, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08030EBC
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x8c
	b _08030E72
_08030E52:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08030EBC
	mov r1, r8
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x84
	movs r0, #0x3c
	strh r0, [r1]
	adds r1, #8
_08030E72:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08030EBC
_08030E7A:
	adds r3, r7, #0
	adds r3, #0x84
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08030EBC
	ldr r0, _08030ECC @ =gCamera
	strh r1, [r0, #0xe]
	ldr r2, _08030ED0 @ =gUnknown_03005A20
	ldr r0, [r2, #0x10]
	ldr r1, _08030ED4 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, _08030ED8 @ =gUnknown_030060E0
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	orrs r0, r1
	ldrh r1, [r2, #0x38]
	orrs r0, r1
	strh r0, [r2, #0x38]
	adds r1, r7, #0
	adds r1, #0x8c
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x1e
	strh r0, [r3]
	ldr r0, _08030EDC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08030EE0 @ =sub_8030EE4
	str r0, [r1, #8]
_08030EBC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030ECC: .4byte gCamera
_08030ED0: .4byte gUnknown_03005A20
_08030ED4: .4byte 0xFFDFFFFF
_08030ED8: .4byte gUnknown_030060E0
_08030EDC: .4byte gCurTask
_08030EE0: .4byte sub_8030EE4

	thumb_func_start sub_8030EE4
sub_8030EE4: @ 0x08030EE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _08030F60 @ =gCurTask
	mov sb, r1
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r2, _08030F64 @ =0x0300000C
	adds r2, r2, r4
	mov r8, r2
	adds r0, #0x3c
	adds r0, r0, r4
	mov sl, r0
	ldr r5, [r6]
	ldr r1, [r6, #0x6c]
	ldr r0, [r6, #0x74]
	adds r1, r1, r0
	str r1, [r6, #0x6c]
	ldr r3, [r6, #0x70]
	ldr r0, [r6, #0x78]
	adds r3, r3, r0
	str r3, [r6, #0x70]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	asrs r1, r1, #8
	adds r2, r2, r1
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r3, r3, #8
	adds r1, r1, r3
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_80308A4
	ldr r1, _08030F68 @ =0x03000086
	adds r4, r4, r1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #7
	ble _08030F6C
	bl sub_80311D4
	b _080311BA
	.align 2, 0
_08030F60: .4byte gCurTask
_08030F64: .4byte 0x0300000C
_08030F68: .4byte 0x03000086
_08030F6C:
	mov r2, sb
	ldr r3, [r2]
	ldrh r1, [r3, #6]
	ldr r0, _08031018 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _0803101C @ =gCamera
	ldrh r0, [r2]
	subs r0, r5, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r2, _08031020 @ =0x0300003C
	adds r1, r3, r2
	ldr r0, _08031024 @ =0x0300005C
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08030FAC
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08030FAC
	movs r0, #0
	strb r0, [r2]
	ldr r2, _08031028 @ =0x0300005D
	adds r1, r3, r2
	movs r0, #0xff
	strb r0, [r1]
_08030FAC:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, _0803102C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08031018 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r3, r0, r1
	ldrh r0, [r2, #0x16]
	movs r7, #0
	strh r0, [r3, #0x16]
	ldrh r4, [r2, #0x18]
	strh r4, [r3, #0x18]
	ldrh r1, [r2, #0xa]
	movs r0, #0x9d
	lsls r0, r0, #2
	cmp r1, r0
	bne _08030FEE
	ldr r0, [r2, #0xc]
	ldr r1, _08031030 @ =gUnknown_084ACED8
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r4, r0
	strh r0, [r3, #0x18]
_08030FEE:
	bl sub_80309CC
	adds r2, r6, #0
	adds r2, #0x8a
	ldrh r0, [r2]
	cmp r0, #0
	beq _08031000
	subs r0, #1
	strh r0, [r2]
_08031000:
	adds r5, r6, #0
	adds r5, #0x8c
	ldrb r0, [r5]
	adds r3, r5, #0
	cmp r0, #1
	beq _080310C8
	cmp r0, #1
	bgt _08031034
	cmp r0, #0
	beq _08031040
	b _080311BA
	.align 2, 0
_08031018: .4byte 0x0300000C
_0803101C: .4byte gCamera
_08031020: .4byte 0x0300003C
_08031024: .4byte 0x0300005C
_08031028: .4byte 0x0300005D
_0803102C: .4byte gCurTask
_08031030: .4byte gUnknown_084ACED8
_08031034:
	cmp r0, #2
	beq _0803110E
	cmp r0, #3
	bne _0803103E
	b _08031160
_0803103E:
	b _080311BA
_08031040:
	adds r1, r6, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08031052
	b _080311BA
_08031052:
	mov r0, r8
	adds r0, #0x20
	strb r7, [r0]
	ldr r2, _080310A8 @ =gUnknown_03004C58
	ldr r1, [r2]
	ldr r0, _080310AC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080310B0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #9
	bl __umodsi3
	adds r2, r0, #0
	adds r4, r6, #0
	adds r4, #0x80
	ldr r7, _080310B4 @ =gUnknown_084ACEC6
	lsls r0, r2, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r4]
	ldr r1, [r6, #0x6c]
	cmp r1, r0
	bne _0803109A
	adds r0, r2, #5
	movs r1, #9
	bl __modsi3
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	str r0, [r4]
_0803109A:
	ldr r1, [r6, #0x6c]
	ldr r0, [r4]
	cmp r1, r0
	bgt _080310B8
	movs r0, #0x80
	lsls r0, r0, #1
	b _080310BA
	.align 2, 0
_080310A8: .4byte gUnknown_03004C58
_080310AC: .4byte 0x00196225
_080310B0: .4byte 0x3C6EF35F
_080310B4: .4byte gUnknown_084ACEC6
_080310B8:
	ldr r0, _080310C4 @ =0xFFFFFF00
_080310BA:
	str r0, [r6, #0x74]
	movs r0, #1
	strb r0, [r5]
	b _080311BA
	.align 2, 0
_080310C4: .4byte 0xFFFFFF00
_080310C8:
	ldr r0, [r6, #0x74]
	cmp r0, #0
	ble _080310DC
	adds r0, r6, #0
	adds r0, #0x80
	ldr r2, [r6, #0x6c]
	ldr r1, [r0]
	cmp r2, r1
	ble _080310EC
	b _080310F2
_080310DC:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r2, [r6, #0x6c]
	ldr r1, [r0]
	cmp r2, r1
	bge _080310EC
	movs r1, #0xff
	str r1, [sp, #4]
_080310EC:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _080311BA
_080310F2:
	ldr r0, [r0]
	str r0, [r6, #0x6c]
	movs r0, #0
	str r0, [r6, #0x74]
	adds r1, r6, #0
	adds r1, #0x84
	movs r0, #0x1e
	strh r0, [r1]
	movs r1, #2
	strb r1, [r3]
	mov r0, r8
	adds r0, #0x20
	strb r1, [r0]
	b _080311BA
_0803110E:
	adds r1, r6, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080311BA
	ldrh r0, [r2]
	cmp r0, #0
	beq _0803112C
	movs r0, #0x1e
	strh r0, [r1]
	strb r7, [r5]
	b _080311BA
_0803112C:
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #3
	strb r0, [r5]
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0803115C @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080311BA
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #1
	str r1, [sp]
	movs r1, #0
	movs r3, #0x78
	bl sub_804CC14
	b _080311BA
	.align 2, 0
_0803115C: .4byte gUnknown_03005A20
_08031160:
	adds r1, r6, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08031184
	movs r0, #0x1e
	strh r0, [r1]
	strb r7, [r5]
	movs r0, #0x78
	strh r0, [r2]
	mov r1, r8
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	b _080311BA
_08031184:
	ldrh r0, [r1]
	ldr r2, _080311CC @ =gUnknown_084ACEB4
	adds r1, r6, #0
	adds r1, #0x86
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl __modsi3
	cmp r0, #0
	bne _080311BA
	ldr r0, _080311D0 @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080311BA
	adds r0, r6, #0
	bl sub_8031998
	movs r0, #0x91
	bl m4aSongNumStart
_080311BA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080311CC: .4byte gUnknown_084ACEB4
_080311D0: .4byte gUnknown_03005A20

	thumb_func_start sub_80311D4
sub_80311D4: @ 0x080311D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080312A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r8, r0
	adds r2, r4, r0
	ldr r1, _080312A4 @ =0x0300000C
	adds r1, r1, r4
	mov sl, r1
	ldr r3, [r2]
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #0x6c]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #0x70]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r2, _080312A8 @ =0x0300005C
	adds r1, r4, r2
	movs r5, #0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _080312AC @ =0x03000088
	adds r0, r4, r1
	movs r6, #0
	strh r5, [r0]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r2, _080312B0 @ =0x03000084
	adds r0, r4, r2
	strh r5, [r0]
	ldr r0, _080312B4 @ =0x00000272
	mov r1, sl
	strh r0, [r1, #0xa]
	subs r2, #0x58
	adds r0, r4, r2
	strb r6, [r0]
	ldr r0, _080312B8 @ =0x0300002D
	adds r4, r4, r0
	movs r0, #0xff
	strb r0, [r4]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r3, _080312BC @ =0x00000273
	str r5, [sp]
	movs r2, #0x10
	bl sub_80168F0
	ldrh r2, [r0, #6]
	mov r4, r8
	adds r3, r2, r4
	ldr r1, _080312C0 @ =0x03000046
	adds r0, r2, r1
	strh r5, [r0]
	ldr r4, _080312C4 @ =0x03000048
	adds r0, r2, r4
	strh r5, [r0]
	ldr r0, _080312C8 @ =0x03000042
	adds r1, r2, r0
	movs r0, #0x80
	strh r0, [r1]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080312CC
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	subs r4, #4
	adds r1, r2, r4
	movs r0, #0x80
	lsls r0, r0, #1
	b _080312D4
	.align 2, 0
_080312A0: .4byte gCurTask
_080312A4: .4byte 0x0300000C
_080312A8: .4byte 0x0300005C
_080312AC: .4byte 0x03000088
_080312B0: .4byte 0x03000084
_080312B4: .4byte 0x00000272
_080312B8: .4byte 0x0300002D
_080312BC: .4byte 0x00000273
_080312C0: .4byte 0x03000046
_080312C4: .4byte 0x03000048
_080312C8: .4byte 0x03000042
_080312CC:
	ldr r0, _08031338 @ =0x03000044
	adds r1, r2, r0
	movs r0, #0xff
	lsls r0, r0, #8
_080312D4:
	strh r0, [r1]
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	mov r1, sb
	lsls r6, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r0, r6, r2
	asrs r0, r0, #0x10
	lsls r5, r7, #0x10
	adds r1, r5, r2
	asrs r1, r1, #0x10
	ldr r3, _0803133C @ =0x00000273
	movs r2, #1
	str r2, [sp]
	movs r2, #0xc
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	ldr r1, _08031340 @ =0x03000046
	adds r0, r2, r1
	strh r4, [r0]
	adds r1, #2
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _08031344 @ =0x03000042
	adds r1, r2, r4
	movs r0, #0x80
	strh r0, [r1]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08031348
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	adds r4, #2
	adds r0, r2, r4
	strh r1, [r0]
	b _08031352
	.align 2, 0
_08031338: .4byte 0x03000044
_0803133C: .4byte 0x00000273
_08031340: .4byte 0x03000046
_08031344: .4byte 0x03000042
_08031348:
	ldr r0, _080313BC @ =0x03000044
	adds r1, r2, r0
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
_08031352:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _080313C0 @ =0xFFF00000
	adds r0, r6, r1
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r1, r5, r2
	asrs r1, r1, #0x10
	ldr r3, _080313C4 @ =0x00000273
	movs r2, #1
	str r2, [sp]
	movs r2, #0xc
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	ldr r1, _080313C8 @ =0x03000046
	adds r0, r2, r1
	strh r4, [r0]
	adds r1, #2
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _080313CC @ =0x03000042
	adds r1, r2, r4
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0x10]
	mov r4, sl
	ldr r0, [r4, #0x10]
	ands r0, r1
	cmp r0, #0
	beq _080313D0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r0, _080313BC @ =0x03000044
	adds r1, r2, r0
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
	b _080313D6
	.align 2, 0
_080313BC: .4byte 0x03000044
_080313C0: .4byte 0xFFF00000
_080313C4: .4byte 0x00000273
_080313C8: .4byte 0x03000046
_080313CC: .4byte 0x03000042
_080313D0:
	ldr r4, _0803145C @ =0x03000044
	adds r0, r2, r4
	strh r1, [r0]
_080313D6:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, _08031460 @ =gCamera
	ldrh r0, [r4]
	strh r0, [r4, #0x18]
	adds r0, #0xf0
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x14]
	mov sb, r0
	ldrh r7, [r4, #0x16]
	adds r0, r7, #0
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x16
	ldrsh r1, [r4, r2]
	bl sub_80174DC
	mov r0, sb
	strh r0, [r4, #0x14]
	strh r7, [r4, #0x16]
	ldr r1, _08031464 @ =gUnknown_03006080
	ldrh r0, [r1, #4]
	adds r0, #0xa0
	strh r0, [r1, #4]
	ldr r1, _08031468 @ =gUnknown_03005030
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _0803146C @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _0803143E
	ldr r0, _08031470 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803143E
	ldr r1, _08031474 @ =gUnknown_03005024
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0803143E:
	bl sub_8031480
	ldr r0, _08031478 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803147C @ =sub_8031480
	str r0, [r1, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803145C: .4byte 0x03000044
_08031460: .4byte gCamera
_08031464: .4byte gUnknown_03006080
_08031468: .4byte gUnknown_03005030
_0803146C: .4byte 0x0000C350
_08031470: .4byte gGameMode
_08031474: .4byte gUnknown_03005024
_08031478: .4byte gCurTask
_0803147C: .4byte sub_8031480

	thumb_func_start sub_8031480
sub_8031480: @ 0x08031480
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080316A8 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _080316AC @ =0x0300000C
	adds r7, r4, r1
	ldr r2, _080316B0 @ =0x0300003C
	adds r2, r4, r2
	str r2, [sp, #4]
	ldr r2, [r5]
	ldr r3, _080316B4 @ =0x03000088
	adds r6, r4, r3
	ldrh r0, [r6]
	adds r0, #2
	strh r0, [r6]
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r3, [r5, #0x70]
	adds r3, r3, r0
	str r3, [r5, #0x70]
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x6c]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r2, [r5, #6]
	lsls r2, r2, #8
	adds r0, r0, r2
	asrs r3, r3, #8
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r8, r2
	asrs r0, r0, #0x10
	adds r0, #0x38
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r1, r1, #0x10
	ldr r2, _080316B8 @ =sub_803FD5C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	adds r1, r0, #0
	ldr r0, _080316BC @ =0x03000084
	adds r4, r4, r0
	ldrh r0, [r4]
	cmp r0, #0x78
	bls _08031512
	cmp r1, #0
	bge _08031512
	movs r0, #0
	strh r0, [r6]
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _080316C0 @ =sub_803170C
	str r0, [r1, #8]
_08031512:
	ldr r0, [r7, #0x10]
	ldr r1, _080316C4 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r0, _080316C8 @ =gUnknown_03005A20
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _0803153A
	ldr r2, _080316CC @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080316D0 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080316D4 @ =gUnknown_03001B30
	strh r3, [r0, #0xa]
	ldr r0, _080316D8 @ =gUnknown_030011A8
	strh r3, [r0]
	strh r3, [r0, #4]
_0803153A:
	adds r1, r5, #0
	adds r1, #0x84
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r4, #7
	ands r0, r4
	mov r3, r8
	lsls r3, r3, #0x10
	str r3, [sp, #8]
	mov r1, sb
	lsls r1, r1, #0x10
	mov sl, r1
	cmp r0, #0
	bne _08031636
	ldr r2, _080316DC @ =gUnknown_03004C58
	mov sb, r2
	ldr r0, [r2]
	ldr r3, _080316E0 @ =0x00196225
	muls r0, r3, r0
	ldr r1, _080316E4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ands r4, r0
	ldr r0, _080316E8 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _080316EC @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _080316F0 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _080316F4 @ =sub_80177EC
	str r0, [sp]
	adds r0, r6, #0
	bl sub_801769C
	ldrh r3, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r3, r5
	mov r2, sl
	asrs r0, r2, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	ldr r4, [sp, #8]
	asrs r1, r4, #0x10
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #5
	strh r2, [r5, #0x3e]
	ldr r2, _080316F8 @ =0x03000040
	adds r3, r3, r2
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r4, _080316E0 @ =0x00196225
	adds r6, r2, #0
	muls r6, r4, r6
	ldr r2, _080316E4 @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _080316FC @ =gSineTable
	mov r8, r3
	ldr r3, _08031700 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	mov ip, r2
	movs r4, #0
	ldrsh r2, [r2, r4]
	mov ip, r2
	lsls r2, r2, #1
	add r2, ip
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r4, #0
	ldrsh r3, [r3, r4]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _080316E0 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r4, _080316E4 @ =0x3C6EF35F
	adds r3, r3, r4
	mov r2, sb
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r3, #0x20
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_08031636:
	ldr r2, _08031704 @ =gCamera
	ldrh r1, [r2]
	mov r3, sl
	asrs r0, r3, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	ldrh r1, [r2, #2]
	ldr r4, [sp, #8]
	asrs r0, r4, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldr r0, _080316A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _080316AC @ =0x0300000C
	adds r2, r0, r1
	ldr r4, _080316B0 @ =0x0300003C
	adds r3, r0, r4
	ldrh r0, [r2, #0x16]
	strh r0, [r3, #0x16]
	ldrh r4, [r2, #0x18]
	strh r4, [r3, #0x18]
	ldrh r1, [r2, #0xa]
	movs r0, #0x9d
	lsls r0, r0, #2
	cmp r1, r0
	bne _08031680
	ldr r0, [r2, #0xc]
	ldr r1, _08031708 @ =gUnknown_084ACED8
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r4, r0
	strh r0, [r3, #0x18]
_08031680:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080316A8: .4byte gCurTask
_080316AC: .4byte 0x0300000C
_080316B0: .4byte 0x0300003C
_080316B4: .4byte 0x03000088
_080316B8: .4byte sub_803FD5C
_080316BC: .4byte 0x03000084
_080316C0: .4byte sub_803170C
_080316C4: .4byte 0xFFFFFE7F
_080316C8: .4byte gUnknown_03005A20
_080316CC: .4byte gDispCnt
_080316D0: .4byte 0x00007FFF
_080316D4: .4byte gUnknown_03001B30
_080316D8: .4byte gUnknown_030011A8
_080316DC: .4byte gUnknown_03004C58
_080316E0: .4byte 0x00196225
_080316E4: .4byte 0x3C6EF35F
_080316E8: .4byte gUnknown_080BB434
_080316EC: .4byte gUnknown_080BB41C
_080316F0: .4byte gUnknown_080BB42C
_080316F4: .4byte sub_80177EC
_080316F8: .4byte 0x03000040
_080316FC: .4byte gSineTable
_08031700: .4byte 0x000001FF
_08031704: .4byte gCamera
_08031708: .4byte gUnknown_084ACED8

	thumb_func_start sub_803170C
sub_803170C: @ 0x0803170C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _080317C8 @ =gCurTask
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r2, r4, r5
	ldr r3, _080317CC @ =0x0300000C
	adds r3, r3, r4
	mov sl, r3
	ldr r7, _080317D0 @ =0x0300003C
	adds r7, r4, r7
	str r7, [sp, #4]
	ldr r3, [r2]
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #0x6c]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, r8
	str r0, [sp, #8]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #0x70]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	str r7, [sp, #0xc]
	ldr r0, _080317D4 @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08031784
	ldr r2, _080317D8 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080317DC @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	mov r1, sl
	ldr r0, [r1, #0x10]
	ldr r1, _080317E0 @ =0xFFFFFE7F
	ands r0, r1
	mov r2, sl
	str r0, [r2, #0x10]
_08031784:
	ldr r3, _080317E4 @ =0x03000084
	adds r0, r4, r3
	ldrh r1, [r0]
	adds r3, r1, #1
	strh r3, [r0]
	lsls r1, r1, #0x10
	movs r0, #0x96
	lsls r0, r0, #0x11
	cmp r1, r0
	bls _080317EC
	mov r0, r8
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r1, r7, #0x10
	asrs r5, r1, #0x10
	movs r2, #0xa0
	lsls r2, r2, #0xe
	adds r1, r1, r2
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8015C5C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8015FFC
	ldr r1, _080317E8 @ =gUnknown_03005040
	movs r0, #0x30
	strb r0, [r1, #1]
	ldr r3, _080317C8 @ =gCurTask
	ldr r0, [r3]
	bl TaskDestroy
	b _08031942
	.align 2, 0
_080317C8: .4byte gCurTask
_080317CC: .4byte 0x0300000C
_080317D0: .4byte 0x0300003C
_080317D4: .4byte gUnknown_03005A20
_080317D8: .4byte gDispCnt
_080317DC: .4byte 0x00007FFF
_080317E0: .4byte 0xFFFFFE7F
_080317E4: .4byte 0x03000084
_080317E8: .4byte gUnknown_03005040
_080317EC:
	movs r4, #7
	ands r3, r4
	cmp r3, #0
	bne _080318CE
	ldr r0, _08031954 @ =gUnknown_03004C58
	mov sb, r0
	ldr r0, [r0]
	ldr r1, _08031958 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _0803195C @ =0x3C6EF35F
	adds r0, r0, r2
	mov r3, sb
	str r0, [r3]
	ands r4, r0
	ldr r0, _08031960 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r6, #0x80
	lsls r6, r6, #6
	ldr r2, _08031964 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08031968 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _0803196C @ =sub_80177EC
	str r0, [sp]
	adds r0, r6, #0
	bl sub_801769C
	ldrh r3, [r0, #6]
	adds r5, r3, r5
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #8
	str r1, [r5, #0x30]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #8
	str r2, [r5, #0x34]
	str r6, [r5, #0x10]
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r5, #0x1a]
	movs r2, #5
	strh r2, [r5, #0x3e]
	ldr r2, _08031970 @ =0x03000040
	adds r3, r3, r2
	movs r2, #0x20
	strh r2, [r3]
	mov r3, sb
	ldr r2, [r3]
	ldr r7, _08031958 @ =0x00196225
	adds r6, r2, #0
	muls r6, r7, r6
	ldr r2, _0803195C @ =0x3C6EF35F
	adds r6, r6, r2
	str r6, [r3]
	ldr r3, _08031974 @ =gSineTable
	mov r8, r3
	ldr r3, _08031978 @ =0x000001FF
	ands r3, r6
	lsls r2, r3, #1
	add r2, r8
	movs r7, #0
	ldrsh r4, [r2, r7]
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x3a]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r3, r2
	lsls r3, r3, #1
	add r3, r8
	movs r7, #0
	ldrsh r3, [r3, r7]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #9
	rsbs r2, r2, #0
	asrs r2, r2, #0xe
	strh r2, [r5, #0x38]
	ldr r2, _08031958 @ =0x00196225
	adds r3, r6, #0
	muls r3, r2, r3
	ldr r7, _0803195C @ =0x3C6EF35F
	adds r3, r3, r7
	mov r2, sb
	str r3, [r2]
	movs r2, #0x3f
	ands r2, r3
	adds r0, r0, r2
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r3, r2
	asrs r3, r3, #0x10
	subs r3, #0x20
	subs r1, r1, r3
	lsls r1, r1, #8
	bl sub_8017540
_080318CE:
	ldr r1, _0803197C @ =gUnknown_03001B30
	movs r0, #0
	strh r0, [r1, #0xa]
	ldr r1, _08031980 @ =gUnknown_030011A8
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r2, _08031984 @ =gCamera
	ldrh r1, [r2]
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	mov r7, sl
	strh r0, [r7, #0x16]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldr r3, _08031988 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	ldr r7, _0803198C @ =0x0300000C
	adds r2, r0, r7
	ldr r1, _08031990 @ =0x0300003C
	adds r3, r0, r1
	ldrh r0, [r2, #0x16]
	strh r0, [r3, #0x16]
	ldrh r4, [r2, #0x18]
	strh r4, [r3, #0x18]
	ldrh r1, [r2, #0xa]
	movs r0, #0x9d
	lsls r0, r0, #2
	cmp r1, r0
	bne _0803192A
	ldr r0, [r2, #0xc]
	ldr r1, _08031994 @ =gUnknown_084ACED8
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r4, r0
	strh r0, [r3, #0x18]
_0803192A:
	mov r0, sl
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_08031942:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031954: .4byte gUnknown_03004C58
_08031958: .4byte 0x00196225
_0803195C: .4byte 0x3C6EF35F
_08031960: .4byte gUnknown_080BB434
_08031964: .4byte gUnknown_080BB41C
_08031968: .4byte gUnknown_080BB42C
_0803196C: .4byte sub_80177EC
_08031970: .4byte 0x03000040
_08031974: .4byte gSineTable
_08031978: .4byte 0x000001FF
_0803197C: .4byte gUnknown_03001B30
_08031980: .4byte gUnknown_030011A8
_08031984: .4byte gCamera
_08031988: .4byte gCurTask
_0803198C: .4byte 0x0300000C
_08031990: .4byte 0x0300003C
_08031994: .4byte gUnknown_084ACED8

	thumb_func_start sub_8031998
sub_8031998: @ 0x08031998
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4]
	ldr r0, _08031A84 @ =sub_8031AB4
	movs r2, #0x88
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r7, _08031A88 @ =0x03000044
	adds r0, r3, r7
	movs r7, #0
	mov sl, r7
	strh r1, [r0]
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _08031A8C @ =0x03000046
	adds r0, r3, r4
	strh r1, [r0]
	ldr r7, _08031A90 @ =gUnknown_03004C58
	mov r8, r7
	mov r1, r8
	ldr r0, [r1]
	ldr r5, _08031A94 @ =0x00196225
	adds r1, r0, #0
	muls r1, r5, r1
	ldr r4, _08031A98 @ =0x3C6EF35F
	adds r1, r1, r4
	str r1, [r7]
	lsrs r7, r1, #1
	movs r0, #0xf
	mov sb, r0
	ands r7, r0
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	rsbs r0, r0, #0
	subs r0, #0xa
	lsls r0, r0, #8
	str r0, [r2, #0x4c]
	ldr r0, _08031A9C @ =0xFFFFE000
	str r0, [r2, #0x50]
	str r6, [r2, #0x54]
	movs r0, #0xa
	str r0, [r2, #0x58]
	adds r0, r1, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	mov r1, r8
	str r0, [r1]
	mov r4, sb
	ands r0, r4
	adds r0, #0xa
	str r0, [r2, #0x58]
	strh r6, [r2, #0x16]
	strh r6, [r2, #0x18]
	ldr r0, _08031AA0 @ =0x06012720
	str r0, [r2, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r6, [r2, #8]
	ldr r0, _08031AA4 @ =0x00000276
	strh r0, [r2, #0xa]
	ldr r7, _08031AA8 @ =0x03000020
	adds r0, r3, r7
	mov r1, sl
	strb r1, [r0]
	strh r6, [r2, #0x14]
	strh r6, [r2, #0x1c]
	ldr r4, _08031AAC @ =0x03000021
	adds r1, r3, r4
	movs r0, #0xff
	strb r0, [r1]
	adds r7, #2
	adds r1, r3, r7
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08031AB0 @ =0x03000025
	adds r3, r3, r0
	mov r1, sl
	strb r1, [r3]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031A84: .4byte sub_8031AB4
_08031A88: .4byte 0x03000044
_08031A8C: .4byte 0x03000046
_08031A90: .4byte gUnknown_03004C58
_08031A94: .4byte 0x00196225
_08031A98: .4byte 0x3C6EF35F
_08031A9C: .4byte 0xFFFFE000
_08031AA0: .4byte 0x06012720
_08031AA4: .4byte 0x00000276
_08031AA8: .4byte 0x03000020
_08031AAC: .4byte 0x03000021
_08031AB0: .4byte 0x03000025

	thumb_func_start sub_8031AB4
sub_8031AB4: @ 0x08031AB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r3, _08031B08 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r5, [r0, #6]
	adds r1, r5, r1
	str r1, [sp]
	adds r4, r7, #0
	ldr r1, _08031B0C @ =0x03000046
	adds r2, r2, r1
	movs r6, #0
	ldrsh r1, [r2, r6]
	ldr r2, [r4, #0x50]
	asrs r0, r2, #8
	adds r1, r1, r0
	subs r1, #0x11
	ldr r0, _08031B10 @ =gUnknown_03006080
	movs r6, #2
	ldrsh r0, [r0, r6]
	cmp r1, r0
	bge _08031B14
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x54]
	adds r1, r2, r0
	str r1, [r4, #0x50]
	mov sl, r0
	b _08031B54
	.align 2, 0
_08031B08: .4byte gCurTask
_08031B0C: .4byte 0x03000046
_08031B10: .4byte gUnknown_03006080
_08031B14:
	movs r0, #1
	str r0, [sp, #4]
	ldr r1, _08031B2C @ =0x03000086
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _08031B30
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	b _08031B3C
	.align 2, 0
_08031B2C: .4byte 0x03000086
_08031B30:
	ldr r1, [r4, #0x58]
	cmp r1, #0
	bge _08031B38
	adds r1, #7
_08031B38:
	asrs r1, r1, #3
	ldr r0, [r4, #0x54]
_08031B3C:
	adds r0, r0, r1
	str r0, [r4, #0x54]
	ldr r1, [r7, #0x54]
	adds r0, r1, #0
	cmp r1, #0
	bge _08031B4A
	adds r0, r1, #7
_08031B4A:
	asrs r2, r0, #3
	ldr r0, [r7, #0x50]
	adds r0, r0, r2
	str r0, [r7, #0x50]
	mov sl, r2
_08031B54:
	ldr r2, [r7, #0x50]
	movs r0, #0xd0
	lsls r0, r0, #8
	cmp r2, r0
	ble _08031B66
	ldr r0, [r3]
	bl TaskDestroy
	b _08031CA2
_08031B66:
	adds r1, r7, #0
	adds r1, #0x44
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r1, r7, #0
	adds r1, #0x46
	asrs r0, r2, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r2, _08031C24 @ =gCamera
	ldrh r0, [r2]
	mov r3, sb
	lsls r1, r3, #0x10
	asrs r6, r1, #0x10
	subs r0, r6, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r4, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	ldr r3, [sp]
	cmp r3, r0
	beq _08031BE4
	adds r0, r3, #0
	adds r0, #0x86
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	bgt _08031BE4
	ldr r3, _08031C28 @ =gUnknown_03005A20
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BFEC
	ldr r0, _08031C2C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08031BE4
	ldr r3, _08031C30 @ =gUnknown_03005AB0
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BFEC
_08031BE4:
	ldr r6, [sp, #4]
	cmp r6, #0
	beq _08031BFE
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	ldr r3, _08031C28 @ =gUnknown_03005A20
	adds r0, r4, #0
	bl sub_800B2BC
_08031BFE:
	ldr r3, _08031C28 @ =gUnknown_03005A20
	ldr r2, [r3, #0x10]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08031C40
	ldr r0, [r3, #0x28]
	cmp r0, r4
	bne _08031C40
	ldr r1, [r7, #0x50]
	movs r0, #0xc4
	lsls r0, r0, #8
	cmp r1, r0
	ble _08031C34
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #0x10]
	b _08031C40
	.align 2, 0
_08031C24: .4byte gCamera
_08031C28: .4byte gUnknown_03005A20
_08031C2C: .4byte gUnknown_03005088
_08031C30: .4byte gUnknown_03005AB0
_08031C34:
	ldr r0, [r3, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	add r0, sl
	str r0, [r3, #4]
_08031C40:
	ldr r0, _08031C88 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08031C9C
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	ldr r5, _08031C8C @ =gUnknown_03005AB0
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_800B2BC
	ldr r3, [r5, #0x10]
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _08031C9C
	ldr r0, [r5, #0x28]
	cmp r0, r4
	bne _08031C9C
	ldr r1, [r7, #0x50]
	movs r0, #0xc4
	lsls r0, r0, #8
	cmp r1, r0
	ble _08031C90
	movs r0, #9
	rsbs r0, r0, #0
	ands r3, r0
	str r3, [r5, #0x10]
	b _08031C9C
	.align 2, 0
_08031C88: .4byte gUnknown_03005088
_08031C8C: .4byte gUnknown_03005AB0
_08031C90:
	ldr r0, [r5, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	add r0, sl
	str r0, [r5, #4]
_08031C9C:
	adds r0, r4, #0
	bl DisplaySprite
_08031CA2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8031CB4
sub_8031CB4: @ 0x08031CB4
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

	thumb_func_start sub_8031CD0
sub_8031CD0: @ 0x08031CD0
	ldr r0, _08031D00 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _08031D04 @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08031CFC
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08031CFC
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08031D08 @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_08031CFC:
	bx lr
	.align 2, 0
_08031D00: .4byte gCurTask
_08031D04: .4byte 0x0300003C
_08031D08: .4byte 0x0300005D

	thumb_func_start sub_8031D0C
sub_8031D0C: @ 0x08031D0C
	push {r4, lr}
	ldr r0, _08031D48 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08031D4C @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r3, r0, r1
	ldrh r0, [r2, #0x16]
	strh r0, [r3, #0x16]
	ldrh r4, [r2, #0x18]
	strh r4, [r3, #0x18]
	ldrh r1, [r2, #0xa]
	movs r0, #0x9d
	lsls r0, r0, #2
	cmp r1, r0
	bne _08031D42
	ldr r0, [r2, #0xc]
	ldr r1, _08031D50 @ =gUnknown_084ACED8
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r4, r0
	strh r0, [r3, #0x18]
_08031D42:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031D48: .4byte gCurTask
_08031D4C: .4byte 0x0300000C
_08031D50: .4byte gUnknown_084ACED8

	thumb_func_start sub_8031D54
sub_8031D54: @ 0x08031D54
	push {r4, lr}
	ldr r2, _08031D7C @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08031D80 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _08031D84 @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031D7C: .4byte gCurTask
_08031D80: .4byte 0x0300000C
_08031D84: .4byte gCamera

	thumb_func_start sub_8031D88
sub_8031D88: @ 0x08031D88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r0, _08031E14 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, #0xc
	adds r6, r4, r0
	ldr r0, [r6, #0x10]
	ldr r1, _08031E18 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r1, _08031E1C @ =gUnknown_03005A20
	mov ip, r1
	ldr r3, [r1, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _08031DD2
	ldr r2, _08031E20 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08031E24 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08031E28 @ =gUnknown_03001B30
	strh r3, [r0, #0xa]
	ldr r0, _08031E2C @ =gUnknown_030011A8
	strh r3, [r0]
	strh r3, [r0, #4]
_08031DD2:
	ldr r1, _08031E30 @ =0x0300009C
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08031EC2
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	mov r3, ip
	bl sub_800BCBC
	mov r8, r0
	ldr r0, _08031E34 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08031E3C
	ldr r3, _08031E38 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_800BCBC
	b _08031E3E
	.align 2, 0
_08031E14: .4byte gCurTask
_08031E18: .4byte 0xFFFFFE7F
_08031E1C: .4byte gUnknown_03005A20
_08031E20: .4byte gDispCnt
_08031E24: .4byte 0x00007FFF
_08031E28: .4byte gUnknown_03001B30
_08031E2C: .4byte gUnknown_030011A8
_08031E30: .4byte 0x0300009C
_08031E34: .4byte gUnknown_03005088
_08031E38: .4byte gUnknown_03005AB0
_08031E3C:
	movs r0, #0
_08031E3E:
	adds r3, r5, #0
	adds r3, #0x44
	mov r1, r8
	cmp r1, #1
	beq _08031E4C
	cmp r0, #1
	bne _08031E90
_08031E4C:
	adds r1, r5, #0
	adds r1, #0x9a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #2
	movs r0, #0x20
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0x20
	ldrb r1, [r2]
	cmp r1, #2
	bne _08031E6C
	adds r0, r5, #0
	adds r0, #0x64
	strb r1, [r0]
_08031E6C:
	ldrb r0, [r2]
	cmp r0, #3
	bne _08031E7A
	adds r1, r5, #0
	adds r1, #0x64
	movs r0, #5
	strb r0, [r1]
_08031E7A:
	ldr r0, [r3, #0x10]
	ldr r1, _08031E8C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _08031EC2
	.align 2, 0
_08031E8C: .4byte 0xFFFFBFFF
_08031E90:
	mov r1, r8
	cmp r1, #2
	beq _08031E9A
	cmp r0, #2
	bne _08031EC2
_08031E9A:
	adds r2, r6, #0
	adds r2, #0x20
	ldrb r0, [r2]
	cmp r0, #2
	bne _08031EAC
	adds r1, r5, #0
	adds r1, #0x64
	movs r0, #1
	strb r0, [r1]
_08031EAC:
	ldrb r0, [r2]
	cmp r0, #3
	bne _08031EBA
	adds r1, r5, #0
	adds r1, #0x64
	movs r0, #4
	strb r0, [r1]
_08031EBA:
	ldr r0, [r3, #0x10]
	ldr r1, _08031ECC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
_08031EC2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031ECC: .4byte 0xFFFFBFFF

	thumb_func_start sub_8031ED0
sub_8031ED0: @ 0x08031ED0
	push {r4, r5, r6, lr}
	ldr r0, _08031F58 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xc
	adds r3, r0, r1
	ldr r6, _08031F5C @ =0x03000044
	adds r5, r0, r6
	adds r1, #0x90
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08031F3A
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _08031F3A
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08031F3A
	ldr r0, _08031F60 @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08031F3A
	ldr r0, [r3, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, _08031F64 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #8
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08031F68 @ =gUnknown_03001B30
	ldr r0, _08031F6C @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _08031F70 @ =gUnknown_030011A8
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
_08031F3A:
	adds r0, r3, #0
	bl DisplaySprite
	adds r0, r4, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08031F50
	adds r0, r5, #0
	bl DisplaySprite
_08031F50:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08031F58: .4byte gCurTask
_08031F5C: .4byte 0x03000044
_08031F60: .4byte gUnknown_03005A20
_08031F64: .4byte gDispCnt
_08031F68: .4byte gUnknown_03001B30
_08031F6C: .4byte 0x00003F1F
_08031F70: .4byte gUnknown_030011A8

	thumb_func_start sub_8031F74
sub_8031F74: @ 0x08031F74
	ldr r0, _08031FB8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _08031FBC @ =0x03000044
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08031FB6
	cmp r0, #3
	beq _08031FB6
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08031FB6
	ldr r0, _08031FC0 @ =0x0300002C
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #2
	bne _08031FA6
	movs r0, #0
	strb r0, [r3]
_08031FA6:
	ldrb r0, [r1]
	cmp r0, #3
	bne _08031FAE
	strb r0, [r3]
_08031FAE:
	ldr r0, _08031FC4 @ =0x03000065
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_08031FB6:
	bx lr
	.align 2, 0
_08031FB8: .4byte gCurTask
_08031FBC: .4byte 0x03000044
_08031FC0: .4byte 0x0300002C
_08031FC4: .4byte 0x03000065

	thumb_func_start CreateEntity_Enemy027
CreateEntity_Enemy027: @ 0x08031FC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	ldr r0, _08031FF8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08031FFC
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	b _080321A8
	.align 2, 0
_08031FF8: .4byte gGameMode
_08031FFC:
	ldr r0, _08032090 @ =sub_80321C0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08032094 @ =sub_8034208
	str r1, [sp]
	movs r1, #0xac
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sl, r0
	ldr r0, _08032098 @ =0x0300000C
	adds r7, r3, r0
	movs r4, #0
	movs r2, #0
	mov r0, r8
	mov r1, sl
	strh r0, [r1, #4]
	mov r0, sb
	strh r0, [r1, #6]
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #8]
	strb r5, [r1, #9]
	ldr r0, _0803209C @ =0x03000098
	adds r1, r3, r0
	movs r0, #0x78
	strh r0, [r1]
	ldr r1, _080320A0 @ =0x0300009C
	adds r0, r3, r1
	strb r4, [r0]
	adds r1, #0xd
	adds r0, r3, r1
	strb r4, [r0]
	subs r1, #1
	adds r0, r3, r1
	strb r4, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	mov r1, sl
	str r0, [r1, #0x78]
	str r2, [r1, #0x7c]
	ldr r1, _080320A4 @ =0x03000080
	adds r0, r3, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r3, r1
	str r2, [r0]
	adds r1, #0x1c
	adds r0, r3, r1
	strh r2, [r0]
	ldr r0, _080320A8 @ =0x030000A2
	adds r1, r3, r0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r1, _080320AC @ =0x030000A4
	adds r0, r3, r1
	strh r2, [r0]
	adds r1, #6
	adds r0, r3, r1
	strb r4, [r0]
	ldr r0, _080320B0 @ =gUnknown_03005160
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _080320B8
	ldr r0, _080320B4 @ =0x0300009A
	adds r1, r3, r0
	movs r0, #2
	strb r0, [r1]
	b _080320BE
	.align 2, 0
_08032090: .4byte sub_80321C0
_08032094: .4byte sub_8034208
_08032098: .4byte 0x0300000C
_0803209C: .4byte 0x03000098
_080320A0: .4byte 0x0300009C
_080320A4: .4byte 0x03000080
_080320A8: .4byte 0x030000A2
_080320AC: .4byte 0x030000A4
_080320B0: .4byte gUnknown_03005160
_080320B4: .4byte 0x0300009A
_080320B8:
	ldr r1, _080321B8 @ =0x0300009A
	adds r0, r3, r1
	strb r4, [r0]
_080320BE:
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r1, r8
	lsls r5, r1, #8
	adds r0, r0, r5
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r1, sb
	lsls r1, r1, #8
	mov sb, r1
	add r0, sb
	strh r0, [r7, #0x18]
	movs r0, #0x30
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	movs r0, #0
	strh r0, [r7, #8]
	ldr r0, _080321BC @ =0x00000296
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	movs r1, #3
	strb r1, [r0]
	movs r0, #0
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x22
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	mov r8, r1
	str r1, [r7, #0x10]
	mov r4, sl
	adds r4, #0x44
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r5
	strh r0, [r4, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	add r0, sb
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #8
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r0, #0
	strh r0, [r4, #8]
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	mov r0, sl
	adds r0, #0x64
	movs r1, #3
	strb r1, [r0]
	movs r0, #0
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x1c]
	mov r1, sl
	adds r1, #0x65
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x66
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	mov r1, r8
	str r1, [r4, #0x10]
	ldrh r1, [r7, #0x18]
	adds r0, r1, #0
	subs r0, #0x80
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r7, #0x16]
	adds r2, r3, #0
	subs r2, #0x90
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r3, #0xb0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	bl sub_80171BC
_080321A8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080321B8: .4byte 0x0300009A
_080321BC: .4byte 0x00000296

	thumb_func_start sub_80321C0
sub_80321C0: @ 0x080321C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080322B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0xc
	adds r0, r0, r2
	mov r8, r0
	ldr r1, _080322BC @ =0x03000044
	adds r6, r2, r1
	ldr r4, [r5]
	ldr r3, _080322C0 @ =0x03000098
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r0, #0x78
	bne _080321FC
	adds r1, #0x65
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080321FC
	bl sub_8033878
	bl sub_803330C
_080321FC:
	ldr r1, _080322C4 @ =gSineTable
	adds r0, r5, #0
	adds r0, #0xa0
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r2, [r0, r3]
	lsls r0, r2, #4
	subs r0, r0, r2
	asrs r2, r0, #0xb
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x78]
	asrs r0, r0, #8
	adds r1, r1, r0
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	adds r0, r2, #0
	adds r0, #0x90
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _0803223A
	adds r2, #0x1f
_0803223A:
	ldr r0, _080322C8 @ =gUnknown_03005870
	asrs r2, r2, #5
	lsls r2, r2, #1
	adds r2, r2, r0
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x7c]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r0, #0
	ldrsh r2, [r2, r0]
	adds r2, r2, r1
	ldr r7, _080322B8 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	ldr r3, _080322CC @ =0x0300000C
	adds r1, r1, r3
	ldr r4, _080322D0 @ =gCamera
	ldrh r0, [r4]
	mov sb, r0
	mov r3, ip
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r3, sb
	subs r0, r0, r3
	strh r0, [r1, #0x16]
	ldrh r0, [r4, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r1, #0x18]
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r1, _080322CC @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _080322BC @ =0x03000044
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_8031ED0
	adds r3, r5, #0
	adds r3, #0xa9
	ldrb r0, [r3]
	cmp r0, #1
	beq _08032300
	cmp r0, #1
	bgt _080322D4
	cmp r0, #0
	beq _080322DE
	b _0803235E
	.align 2, 0
_080322B8: .4byte gCurTask
_080322BC: .4byte 0x03000044
_080322C0: .4byte 0x03000098
_080322C4: .4byte gSineTable
_080322C8: .4byte gUnknown_03005870
_080322CC: .4byte 0x0300000C
_080322D0: .4byte gCamera
_080322D4:
	cmp r0, #2
	beq _0803231A
	cmp r0, #3
	beq _0803233E
	b _0803235E
_080322DE:
	adds r2, r5, #0
	adds r2, #0x98
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803235E
	ldr r1, _080322FC @ =gUnknown_03005040
	movs r0, #0x13
	strb r0, [r1, #1]
	movs r0, #0x3c
	strh r0, [r2]
	b _08032336
	.align 2, 0
_080322FC: .4byte gUnknown_03005040
_08032300:
	adds r1, r5, #0
	adds r1, #0x98
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803235E
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	b _08032336
_0803231A:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0803235E
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x98
	movs r0, #0x3c
	strh r0, [r1]
_08032336:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _0803235E
_0803233E:
	adds r1, r5, #0
	adds r1, #0x98
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803235E
	adds r1, #0x10
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0
	strb r0, [r3]
	ldr r1, [r7]
	ldr r0, _0803236C @ =sub_8032370
	str r0, [r1, #8]
_0803235E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803236C: .4byte sub_8032370

	thumb_func_start sub_8032370
sub_8032370: @ 0x08032370
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _0803247C @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r6, r1
	ldr r2, _08032480 @ =0x0300000C
	adds r2, r2, r6
	mov r8, r2
	ldr r3, _08032484 @ =0x03000044
	adds r3, r3, r6
	mov sl, r3
	ldr r4, [r5]
	mov ip, r4
	ldr r0, [r5, #0x74]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r0, _08032488 @ =0x030000A2
	adds r1, r6, r0
	ldr r2, _0803248C @ =0x030000A4
	adds r0, r6, r2
	ldrh r0, [r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldr r4, _08032490 @ =0x030000A0
	adds r2, r6, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r2]
	subs r1, r1, r0
	ldr r0, _08032494 @ =0x000003FF
	ands r1, r0
	strh r1, [r2]
	ldr r1, _08032498 @ =gSineTable
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r7, [r0, r4]
	lsls r0, r7, #4
	subs r0, r0, r7
	asrs r7, r0, #0xb
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x78]
	asrs r0, r0, #8
	adds r1, r1, r0
	adds r1, r1, r7
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	adds r0, r7, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r1, r3, #0
	cmp r3, #0
	bge _080323FE
	adds r1, #0x1f
_080323FE:
	asrs r1, r1, #5
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #5
	subs r1, r3, r1
	ldr r3, _0803249C @ =gUnknown_03005870
	lsls r2, r4, #1
	adds r2, r2, r3
	adds r0, r4, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r4, #0
	ldrsh r3, [r2, r4]
	subs r0, r0, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	muls r0, r1, r0
	cmp r0, #0
	bge _0803242A
	adds r0, #0x1f
_0803242A:
	asrs r2, r0, #5
	adds r2, r3, r2
	lsls r2, r2, #0x10
	mov r0, ip
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x7c]
	asrs r0, r0, #8
	adds r1, r1, r0
	lsrs r3, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r1
	ldr r1, _080324A0 @ =0x03000090
	adds r0, r6, r1
	strh r7, [r0]
	ldr r4, _080324A4 @ =0x03000092
	adds r0, r6, r4
	strh r3, [r0]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov sb, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_8031D88
	ldr r2, _080324A8 @ =0x0300009A
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _080324AC
	bl sub_80327C4
	b _080327B0
	.align 2, 0
_0803247C: .4byte gCurTask
_08032480: .4byte 0x0300000C
_08032484: .4byte 0x03000044
_08032488: .4byte 0x030000A2
_0803248C: .4byte 0x030000A4
_08032490: .4byte 0x030000A0
_08032494: .4byte 0x000003FF
_08032498: .4byte gSineTable
_0803249C: .4byte gUnknown_03005870
_080324A0: .4byte 0x03000090
_080324A4: .4byte 0x03000092
_080324A8: .4byte 0x0300009A
_080324AC:
	ldr r3, _08032510 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r0, _08032514 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _08032518 @ =gCamera
	ldrh r0, [r2]
	subs r0, r4, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	mov r2, sb
	subs r0, r2, r0
	strh r0, [r1, #0x18]
	bl sub_8031F74
	mov r0, r8
	bl UpdateSpriteAnimation
	ldr r3, _0803251C @ =0x030000AA
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _080324E0
	mov r0, sl
	bl UpdateSpriteAnimation
_080324E0:
	ldr r4, _08032510 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	ldr r1, _08032514 @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _08032520 @ =0x03000044
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_8031ED0
	ldr r4, _08032524 @ =0x030000A9
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #5
	bls _08032506
	b _080327B0
_08032506:
	lsls r0, r0, #2
	ldr r1, _08032528 @ =_0803252C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08032510: .4byte gCurTask
_08032514: .4byte 0x0300000C
_08032518: .4byte gCamera
_0803251C: .4byte 0x030000AA
_08032520: .4byte 0x03000044
_08032524: .4byte 0x030000A9
_08032528: .4byte _0803252C
_0803252C: @ jump table
	.4byte _08032544 @ case 0
	.4byte _080325CC @ case 1
	.4byte _08032670 @ case 2
	.4byte _080326CE @ case 3
	.4byte _0803274C @ case 4
	.4byte _08032790 @ case 5
_08032544:
	adds r6, r5, #0
	adds r6, #0xa2
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, _080325C8 @ =0x000001FF
	cmp r1, r0
	bgt _08032560
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r6]
	adds r1, r5, #0
	adds r1, #0xa4
	strh r0, [r1]
_08032560:
	adds r0, r7, #0
	adds r0, #0x90
	cmp r0, #0
	bge _0803256A
	adds r0, #0x1f
_0803256A:
	asrs r0, r0, #5
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08032576
	b _080327B0
_08032576:
	cmp r4, #8
	bne _0803257C
	b _080327B0
_0803257C:
	ldr r0, [sp]
	adds r0, #0x55
	ldrb r2, [r0]
	adds r0, r2, #0
	cmp r0, #0
	bne _0803258A
	b _080327B0
_0803258A:
	cmp r0, #8
	bne _08032590
	b _080327B0
_08032590:
	subs r0, r2, #2
	lsls r1, r4, #0x18
	lsls r0, r0, #0x18
	asrs r3, r1, #0x18
	cmp r1, r0
	bge _0803259E
	b _080327B0
_0803259E:
	adds r0, r2, #2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r3, r0
	ble _080325AA
	b _080327B0
_080325AA:
	ldr r0, [sp]
	adds r0, #0x57
	ldrb r0, [r0]
	cmp r0, #0
	bne _080325B6
	b _080327B0
_080325B6:
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6]
	adds r0, r5, #0
	adds r0, #0xa4
	strh r1, [r0]
	b _08032740
	.align 2, 0
_080325C8: .4byte 0x000001FF
_080325CC:
	mov r3, r8
	adds r3, #0x20
	ldrb r0, [r3]
	cmp r0, #1
	beq _080325FC
	ldr r0, [sp]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _080325E4
	b _080327B0
_080325E4:
	movs r0, #1
	strb r0, [r3]
	mov r1, r8
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0xaa
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	b _080327B0
_080325FC:
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0803260C
	b _080327B0
_0803260C:
	movs r2, #0
	movs r0, #2
	strb r0, [r3]
	mov r0, sl
	adds r0, #0x20
	strb r2, [r0]
	mov r1, r8
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xaa
	strb r2, [r0]
	ldr r3, _0803265C @ =gUnknown_084ACF08
	ldr r2, _08032660 @ =gUnknown_03004C58
	ldr r1, [r2]
	ldr r0, _08032664 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08032668 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	ldr r1, _0803266C @ =gUnknown_03005120
	ldr r1, [r1]
	adds r0, r0, r1
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x98
	strh r1, [r0]
	adds r0, #2
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x9b
	strb r0, [r1]
	adds r1, #0xe
	b _08032744
	.align 2, 0
_0803265C: .4byte gUnknown_084ACF08
_08032660: .4byte gUnknown_03004C58
_08032664: .4byte 0x00196225
_08032668: .4byte 0x3C6EF35F
_0803266C: .4byte gUnknown_03005120
_08032670:
	adds r0, r5, #0
	adds r0, #0x9c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080326A0
	cmp r0, #0x10
	ble _08032684
	b _080327B0
_08032684:
	mov r1, r8
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0xaa
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	subs r1, #1
	b _08032744
_080326A0:
	adds r1, r5, #0
	adds r1, #0x98
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080326B2
	b _080327B0
_080326B2:
	mov r1, r8
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0xaa
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	subs r1, #1
	b _08032744
_080326CE:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080327B0
	mov r0, r8
	adds r0, #0x20
	movs r2, #0
	movs r1, #3
	strb r1, [r0]
	mov r0, sl
	adds r0, #0x20
	strb r1, [r0]
	mov r1, r8
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xaa
	strb r2, [r0]
	adds r1, r5, #0
	adds r1, #0xa4
	movs r0, #0x40
	strh r0, [r1]
	ldr r1, _0803273C @ =gUnknown_084ACEE4
	adds r2, r5, #0
	adds r2, #0x9a
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	subs r1, #0xe
	movs r0, #0x78
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x9b
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _08032740
	adds r1, r5, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	b _080327B0
	.align 2, 0
_0803273C: .4byte gUnknown_084ACEE4
_08032740:
	adds r1, r5, #0
	adds r1, #0xa9
_08032744:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _080327B0
_0803274C:
	adds r2, r5, #0
	adds r2, #0xa2
	adds r0, r5, #0
	adds r0, #0xa6
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	blt _0803276C
	movs r1, #0
	strh r3, [r2]
	adds r0, r5, #0
	adds r0, #0xa4
	strh r1, [r0]
_0803276C:
	adds r1, r5, #0
	adds r1, #0x98
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080327B0
	adds r1, #0xc
	ldr r0, _0803278C @ =0x0000FFC0
	strh r0, [r1]
	adds r1, #5
	movs r0, #0
	strb r0, [r1]
	b _080327B0
	.align 2, 0
_0803278C: .4byte 0x0000FFC0
_08032790:
	adds r3, r5, #0
	adds r3, #0xa2
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, _080327C0 @ =0x000001FF
	cmp r1, r0
	ble _080327B0
	movs r2, #0
	movs r1, #0
	adds r0, #1
	strh r0, [r3]
	adds r0, r5, #0
	adds r0, #0xa4
	strh r1, [r0]
	adds r0, #5
	strb r2, [r0]
_080327B0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080327C0: .4byte 0x000001FF

	thumb_func_start sub_80327C4
sub_80327C4: @ 0x080327C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08032894 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r8, r0
	adds r2, r5, r0
	ldr r1, _08032898 @ =0x0300000C
	adds r1, r1, r5
	mov sl, r1
	ldr r6, [r2]
	ldr r4, _0803289C @ =0x03000090
	adds r0, r5, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	ldr r3, [r2, #0x78]
	adds r3, r3, r0
	str r3, [r2, #0x78]
	adds r4, #2
	adds r0, r5, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	ldr r4, [r2, #0x7c]
	adds r4, r4, r0
	str r4, [r2, #0x7c]
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r3, r3, #8
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r4, r4, #8
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r2, _080328A0 @ =0x03000064
	adds r1, r5, r2
	movs r4, #0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080328A4 @ =0x0300009E
	adds r5, r5, r0
	ldr r0, _080328A8 @ =0x0000FF80
	strh r0, [r5]
	movs r0, #0x90
	bl m4aSongNumStart
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r3, _080328AC @ =0x00000295
	str r4, [sp]
	movs r2, #4
	bl sub_80168F0
	ldrh r2, [r0, #6]
	mov r0, r8
	adds r3, r2, r0
	ldr r0, _080328B0 @ =0x03000046
	adds r1, r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _080328B4 @ =0x03000048
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _080328B8 @ =0x03000042
	adds r0, r2, r4
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r0]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080328C0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r1, _080328BC @ =0x03000044
	adds r0, r2, r1
	strh r4, [r0]
	b _080328CA
	.align 2, 0
_08032894: .4byte gCurTask
_08032898: .4byte 0x0300000C
_0803289C: .4byte 0x03000090
_080328A0: .4byte 0x03000064
_080328A4: .4byte 0x0300009E
_080328A8: .4byte 0x0000FF80
_080328AC: .4byte 0x00000295
_080328B0: .4byte 0x03000046
_080328B4: .4byte 0x03000048
_080328B8: .4byte 0x03000042
_080328BC: .4byte 0x03000044
_080328C0:
	ldr r4, _08032930 @ =0x03000044
	adds r1, r2, r4
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
_080328CA:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	mov r0, sb
	lsls r6, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r6, r1
	asrs r0, r0, #0x10
	lsls r5, r7, #0x10
	adds r1, r5, r1
	asrs r1, r1, #0x10
	ldr r3, _08032934 @ =0x00000295
	str r4, [sp]
	movs r2, #4
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0x46
	adds r1, r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _08032938 @ =0x03000048
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _0803293C @ =0x03000042
	adds r1, r2, r4
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	adds r7, r5, #0
	cmp r0, #0
	beq _08032940
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	adds r4, #2
	adds r0, r2, r4
	strh r1, [r0]
	b _0803294A
	.align 2, 0
_08032930: .4byte 0x03000044
_08032934: .4byte 0x00000295
_08032938: .4byte 0x03000048
_0803293C: .4byte 0x03000042
_08032940:
	ldr r0, _080329B0 @ =0x03000044
	adds r1, r2, r0
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
_0803294A:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _080329B4 @ =0xFFF00000
	adds r0, r6, r1
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r1, r7, r2
	asrs r1, r1, #0x10
	ldr r3, _080329B8 @ =0x00000295
	str r4, [sp]
	movs r2, #4
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	ldr r1, _080329BC @ =0x03000046
	adds r0, r2, r1
	movs r5, #0xfe
	lsls r5, r5, #8
	strh r5, [r0]
	adds r1, #2
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _080329C0 @ =0x03000042
	adds r1, r2, r4
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0x10]
	mov r4, sl
	ldr r0, [r4, #0x10]
	ands r0, r1
	cmp r0, #0
	beq _080329C4
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r1, _080329B0 @ =0x03000044
	adds r0, r2, r1
	strh r5, [r0]
	b _080329CE
	.align 2, 0
_080329B0: .4byte 0x03000044
_080329B4: .4byte 0xFFF00000
_080329B8: .4byte 0x00000295
_080329BC: .4byte 0x03000046
_080329C0: .4byte 0x03000042
_080329C4:
	ldr r4, _08032A34 @ =0x03000044
	adds r1, r2, r4
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
_080329CE:
	adds r1, r3, #0
	adds r1, #0x40
	movs r4, #0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _08032A38 @ =0xFFF00000
	adds r0, r6, r1
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xd
	adds r1, r7, r2
	asrs r1, r1, #0x10
	ldr r3, _08032A3C @ =0x00000295
	str r4, [sp]
	movs r2, #4
	bl sub_80168F0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0x46
	adds r1, r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _08032A40 @ =0x03000048
	adds r0, r2, r1
	strh r4, [r0]
	ldr r4, _08032A44 @ =0x03000042
	adds r1, r2, r4
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0x10]
	mov r4, sl
	ldr r0, [r4, #0x10]
	ands r0, r1
	cmp r0, #0
	beq _08032A4C
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3, #0x32]
	ldr r0, _08032A34 @ =0x03000044
	adds r1, r2, r0
	ldr r0, _08032A48 @ =0x0000FF80
	b _08032A52
	.align 2, 0
_08032A34: .4byte 0x03000044
_08032A38: .4byte 0xFFF00000
_08032A3C: .4byte 0x00000295
_08032A40: .4byte 0x03000048
_08032A44: .4byte 0x03000042
_08032A48: .4byte 0x0000FF80
_08032A4C:
	ldr r4, _08032AD4 @ =0x03000044
	adds r1, r2, r4
	movs r0, #0x80
_08032A52:
	strh r0, [r1]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _08032AD8 @ =gCamera
	ldrh r0, [r1]
	strh r0, [r1, #0x18]
	adds r0, #0xf0
	strh r0, [r1, #0x1a]
	ldrh r1, [r1, #0x16]
	adds r0, r1, #0
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0xa0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80174DC
	ldr r2, _08032ADC @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08032AE0 @ =gUnknown_03005030
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _08032AE4 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _08032AB6
	ldr r0, _08032AE8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08032AB6
	ldr r1, _08032AEC @ =gUnknown_03005024
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08032AB6:
	bl sub_8032AF8
	ldr r0, _08032AF0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032AF4 @ =sub_8032AF8
	str r0, [r1, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032AD4: .4byte 0x03000044
_08032AD8: .4byte gCamera
_08032ADC: .4byte gUnknown_03005004
_08032AE0: .4byte gUnknown_03005030
_08032AE4: .4byte 0x0000C350
_08032AE8: .4byte gGameMode
_08032AEC: .4byte gUnknown_03005024
_08032AF0: .4byte gCurTask
_08032AF4: .4byte sub_8032AF8

	thumb_func_start sub_8032AF8
sub_8032AF8: @ 0x08032AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08032B80 @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r3, r6, r2
	ldr r5, _08032B84 @ =0x0300000C
	adds r7, r6, r5
	ldr r0, _08032B88 @ =0x03000044
	adds r0, r6, r0
	str r0, [sp, #4]
	ldr r5, [r3]
	adds r2, #0x9e
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #5
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r4, [r3, #0x7c]
	adds r4, r4, r0
	str r4, [r3, #0x7c]
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r3, #0x78]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r4, r4, #8
	adds r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov sl, r2
	ldr r0, _08032B8C @ =sub_803FD5C
	str r0, [sp]
	mov r0, sb
	mov r1, sl
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _08032B98
	ldr r5, _08032B90 @ =0x03000098
	adds r1, r6, r5
	movs r0, #0x3c
	strh r0, [r1]
	ldr r0, _08032B80 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032B94 @ =sub_8032D44
	str r0, [r1, #8]
	b _08032CE0
	.align 2, 0
_08032B80: .4byte gCurTask
_08032B84: .4byte 0x0300000C
_08032B88: .4byte 0x03000044
_08032B8C: .4byte sub_803FD5C
_08032B90: .4byte 0x03000098
_08032B94: .4byte sub_8032D44
_08032B98:
	ldr r0, [r7, #0x10]
	ldr r1, _08032CF0 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r0, _08032CF4 @ =gUnknown_03005A20
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _08032BC0
	ldr r2, _08032CF8 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08032CFC @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08032D00 @ =gUnknown_03001B30
	strh r3, [r0, #0xa]
	ldr r0, _08032D04 @ =gUnknown_030011A8
	strh r3, [r0]
	strh r3, [r0, #4]
_08032BC0:
	ldr r2, _08032D08 @ =0x03000098
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r4, #7
	ands r0, r4
	cmp r0, #0
	bne _08032CA0
	ldr r6, _08032D0C @ =gUnknown_03004C58
	ldr r0, [r6]
	ldr r5, _08032D10 @ =0x00196225
	muls r0, r5, r0
	ldr r1, _08032D14 @ =0x3C6EF35F
	mov r8, r1
	add r0, r8
	str r0, [r6]
	ands r4, r0
	ldr r0, _08032D18 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r5, #0x80
	lsls r5, r5, #6
	ldr r2, _08032D1C @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08032D20 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _08032D24 @ =sub_80177EC
	str r0, [sp]
	adds r0, r5, #0
	bl sub_801769C
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r3, r1, r2
	mov r2, sl
	lsls r0, r2, #8
	str r0, [r3, #0x30]
	mov r0, sb
	adds r0, #0x20
	lsls r0, r0, #8
	str r0, [r3, #0x34]
	str r5, [r3, #0x10]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r3, #0x1a]
	movs r0, #5
	strh r0, [r3, #0x3e]
	ldr r5, _08032D28 @ =0x03000040
	adds r1, r1, r5
	movs r0, #0x20
	strh r0, [r1]
	ldr r0, [r6]
	ldr r1, _08032D10 @ =0x00196225
	adds r4, r0, #0
	muls r4, r1, r4
	add r4, r8
	str r4, [r6]
	ldr r2, _08032D2C @ =gSineTable
	mov ip, r2
	ldr r1, _08032D30 @ =0x000001FF
	ands r1, r4
	lsls r0, r1, #1
	add r0, ip
	movs r5, #0
	ldrsh r2, [r0, r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x3a]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	add r1, ip
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x38]
	ldr r5, _08032D10 @ =0x00196225
	adds r1, r4, #0
	muls r1, r5, r1
	add r1, r8
	str r1, [r6]
	movs r0, #0x3f
	ands r0, r1
	add r0, sl
	subs r0, #0x20
	lsls r0, r0, #8
	movs r2, #0xfc
	lsls r2, r2, #0xe
	ands r1, r2
	asrs r1, r1, #0x10
	subs r1, #0x20
	mov r2, sb
	subs r1, r2, r1
	lsls r1, r1, #8
	bl sub_8017540
_08032CA0:
	ldr r1, _08032D34 @ =gCamera
	ldrh r0, [r1]
	mov r5, sl
	subs r0, r5, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r1, #2]
	mov r1, sb
	subs r0, r1, r0
	strh r0, [r7, #0x18]
	ldr r2, _08032D38 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	ldr r5, _08032D3C @ =0x0300000C
	adds r2, r0, r5
	ldr r1, _08032D40 @ =0x03000044
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_08032CE0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032CF0: .4byte 0xFFFFFE7F
_08032CF4: .4byte gUnknown_03005A20
_08032CF8: .4byte gDispCnt
_08032CFC: .4byte 0x00007FFF
_08032D00: .4byte gUnknown_03001B30
_08032D04: .4byte gUnknown_030011A8
_08032D08: .4byte 0x03000098
_08032D0C: .4byte gUnknown_03004C58
_08032D10: .4byte 0x00196225
_08032D14: .4byte 0x3C6EF35F
_08032D18: .4byte gUnknown_080BB434
_08032D1C: .4byte gUnknown_080BB41C
_08032D20: .4byte gUnknown_080BB42C
_08032D24: .4byte sub_80177EC
_08032D28: .4byte 0x03000040
_08032D2C: .4byte gSineTable
_08032D30: .4byte 0x000001FF
_08032D34: .4byte gCamera
_08032D38: .4byte gCurTask
_08032D3C: .4byte 0x0300000C
_08032D40: .4byte 0x03000044

	thumb_func_start sub_8032D44
sub_8032D44: @ 0x08032D44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08032E94 @ =gCurTask
	ldr r0, [r0]
	mov ip, r0
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r7, r0
	ldr r1, _08032E98 @ =0x0300000C
	adds r5, r7, r1
	ldr r2, _08032E9C @ =0x03000044
	adds r2, r2, r7
	mov r8, r2
	ldr r3, [r4]
	adds r0, #0x98
	adds r1, r7, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08032D7C
	b _08032EE0
_08032D7C:
	ldr r0, [r4, #0x74]
	ldrh r0, [r0, #6]
	ldr r1, _08032EA0 @ =0x03000058
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	ldr r2, _08032EA4 @ =gUnknown_03005A20
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r1, _08032EA8 @ =gCamera
	movs r0, #0x94
	lsls r0, r0, #4
	strh r0, [r1, #0x16]
	ldr r1, _08032EAC @ =gUnknown_03005040
	movs r0, #0x33
	strb r0, [r1, #1]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08032EB0 @ =0x03000094
	adds r0, r7, r2
	strh r1, [r0]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x7c]
	asrs r0, r0, #8
	adds r1, r1, r0
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	str r6, [r4, #0x78]
	str r6, [r4, #0x7c]
	ldr r1, _08032EB4 @ =0x03000080
	adds r0, r7, r1
	str r6, [r0]
	subs r2, #0x12
	adds r1, r7, r2
	movs r0, #0x80
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r1, _08032EB8 @ =0x030000A9
	adds r0, r7, r1
	movs r2, #0
	strb r2, [r0]
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x48]
	bl VramFree
	movs r0, #0x1e
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _08032EBC @ =0x000002B5
	strh r0, [r5, #0xa]
	ldr r1, _08032EC0 @ =0x0300002C
	adds r0, r7, r1
	movs r2, #0
	strb r2, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08032EC4 @ =0x0300002D
	adds r1, r7, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08032EC8 @ =0x0300002E
	adds r0, r7, r1
	movs r2, #0x10
	mov sl, r2
	mov r1, sl
	strb r1, [r0]
	ldr r2, _08032ECC @ =0x03000031
	adds r0, r7, r2
	movs r1, #0
	strb r1, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	str r2, [r5, #0x28]
	movs r4, #0x80
	lsls r4, r4, #6
	str r4, [r5, #0x10]
	movs r0, #0xc
	bl VramMalloc
	mov r1, r8
	str r0, [r1, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r6, [r1, #8]
	ldr r0, _08032ED0 @ =0x000002B6
	strh r0, [r1, #0xa]
	ldr r2, _08032ED4 @ =0x03000064
	adds r1, r7, r2
	movs r0, #4
	strb r0, [r1]
	mov r0, r8
	strh r6, [r0, #0x14]
	strh r6, [r0, #0x1c]
	adds r2, #1
	adds r1, r7, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08032ED8 @ =0x03000066
	adds r0, r7, r1
	mov r2, sl
	strb r2, [r0]
	adds r1, #3
	adds r0, r7, r1
	movs r2, #0
	strb r2, [r0]
	mov r0, sb
	mov r1, r8
	str r0, [r1, #0x28]
	str r4, [r1, #0x10]
	ldr r2, _08032E94 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _08032EDC @ =sub_8032F58
	str r0, [r1, #8]
	b _08032F42
	.align 2, 0
_08032E94: .4byte gCurTask
_08032E98: .4byte 0x0300000C
_08032E9C: .4byte 0x03000044
_08032EA0: .4byte 0x03000058
_08032EA4: .4byte gUnknown_03005A20
_08032EA8: .4byte gCamera
_08032EAC: .4byte gUnknown_03005040
_08032EB0: .4byte 0x03000094
_08032EB4: .4byte 0x03000080
_08032EB8: .4byte 0x030000A9
_08032EBC: .4byte 0x000002B5
_08032EC0: .4byte 0x0300002C
_08032EC4: .4byte 0x0300002D
_08032EC8: .4byte 0x0300002E
_08032ECC: .4byte 0x03000031
_08032ED0: .4byte 0x000002B6
_08032ED4: .4byte 0x03000064
_08032ED8: .4byte 0x03000066
_08032EDC: .4byte sub_8032F58
_08032EE0:
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x7c]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08032F50 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	mov r1, ip
	ldrh r0, [r1, #6]
	ldr r1, _08032F54 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	mov r0, r8
	bl DisplaySprite
_08032F42:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032F50: .4byte gCamera
_08032F54: .4byte 0x0300000C

	thumb_func_start sub_8032F58
sub_8032F58: @ 0x08032F58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08033024 @ =gCurTask
	mov sl, r0
	ldr r1, [r0]
	mov ip, r1
	ldrh r3, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r2, _08033028 @ =0x0300000C
	adds r5, r3, r2
	ldr r7, _0803302C @ =0x03000044
	adds r4, r3, r7
	adds r0, #0x80
	adds r1, r3, r0
	ldr r0, [r6, #0x78]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r6, #0x78]
	ldr r1, _08033030 @ =0x03000084
	adds r2, r3, r1
	ldr r1, [r6, #0x7c]
	ldr r2, [r2]
	adds r1, r1, r2
	str r1, [r6, #0x7c]
	adds r7, #0x50
	adds r2, r3, r7
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, _08033034 @ =0x03000096
	adds r0, r3, r2
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	adds r7, #0x15
	adds r7, r7, r3
	mov sb, r7
	ldrb r0, [r7]
	cmp r0, #4
	bhi _08033010
	mov r0, ip
	ldrh r1, [r0, #6]
	subs r2, #0x8a
	adds r1, r1, r2
	ldr r3, _08033038 @ =gCamera
	ldrh r2, [r3]
	mov r7, r8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x16]
	ldrh r2, [r3, #2]
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r7, sl
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r1, _08033028 @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _0803302C @ =0x03000044
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
_08033010:
	mov r7, sb
	ldrb r0, [r7]
	cmp r0, #5
	bls _0803301A
	b _080332EA
_0803301A:
	lsls r0, r0, #2
	ldr r1, _0803303C @ =_08033040
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033024: .4byte gCurTask
_08033028: .4byte 0x0300000C
_0803302C: .4byte 0x03000044
_08033030: .4byte 0x03000084
_08033034: .4byte 0x03000096
_08033038: .4byte gCamera
_0803303C: .4byte _08033040
_08033040: @ jump table
	.4byte _08033058 @ case 0
	.4byte _08033108 @ case 1
	.4byte _08033142 @ case 2
	.4byte _080331A0 @ case 3
	.4byte _080331F6 @ case 4
	.4byte _0803328C @ case 5
_08033058:
	ldr r0, _08033090 @ =gUnknown_03005A20
	ldr r2, [r0, #0x10]
	movs r1, #0xa
	ands r1, r2
	adds r3, r0, #0
	cmp r1, #0
	bne _080330B2
	movs r7, #0x80
	lsls r7, r7, #0xe
	adds r0, r2, #0
	ands r0, r7
	cmp r0, #0
	bne _080330B0
	strh r1, [r3, #8]
	strh r1, [r3, #0xa]
	strh r1, [r3, #0xc]
	orrs r2, r7
	str r2, [r3, #0x10]
	strh r1, [r3, #0x38]
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08033094
	movs r0, #0x10
	b _08033096
	.align 2, 0
_08033090: .4byte gUnknown_03005A20
_08033094:
	movs r0, #0x20
_08033096:
	strh r0, [r3, #0x38]
	ldr r1, _080330AC @ =gCamera
	movs r0, #0
	strh r0, [r1, #4]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r7, [r1]
	adds r0, r0, r7
	strh r0, [r1, #0x1a]
	b _080330B2
	.align 2, 0
_080330AC: .4byte gCamera
_080330B0:
	strh r1, [r3, #0x38]
_080330B2:
	ldr r0, [r6, #0x7c]
	ldr r2, _08033104 @ =0xFFFFA600
	adds r1, r6, #0
	adds r1, #0x84
	cmp r0, r2
	bge _080330C4
	str r2, [r6, #0x7c]
	movs r0, #0
	str r0, [r1]
_080330C4:
	ldr r0, [r1]
	cmp r0, #0
	beq _080330CC
	b _080332EA
_080330CC:
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	bne _080330DA
	b _080332EA
_080330DA:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08033172
	adds r1, r6, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #7
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	b _080332EA
	.align 2, 0
_08033104: .4byte 0xFFFFA600
_08033108:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08033116
	b _080332EA
_08033116:
	adds r1, r6, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #1
	movs r2, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x20
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #7
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x10]
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0803318C
_08033142:
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08033150
	b _080332EA
_08033150:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	beq _08033172
	adds r1, r6, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #6
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	b _080331E8
_08033172:
	adds r1, r6, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #9
	strb r0, [r1]
_0803318C:
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	b _080332EA
_080331A0:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080331AE
	b _080332EA
_080331AE:
	adds r2, r6, #0
	adds r2, #0xa9
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r4, #0x10]
	orrs r0, r1
	str r0, [r4, #0x10]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #1
	rsbs r0, r0, #0
_080331E8:
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x80
	movs r0, #0xa0
	lsls r0, r0, #2
	str r0, [r1]
	b _080332EA
_080331F6:
	ldr r5, _08033278 @ =gUnknown_03005A20
	ldr r0, [r5]
	asrs r0, r0, #8
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r7, r1, #0x10
	adds r1, r7, #0
	subs r1, #0x60
	cmp r0, r1
	bge _0803320E
	movs r0, #0x10
	strh r0, [r5, #0x38]
_0803320E:
	ldr r0, [r5]
	asrs r0, r0, #8
	bl __floatsisf
	adds r4, r0, #0
	ldr r3, _0803327C @ =gCamera
	mov r8, r3
	movs r1, #0
	ldrsh r0, [r3, r1]
	bl __floatsisf
	ldr r2, _08033280 @ =0x43B40000
	mov sb, r2
	mov r1, sb
	bl __addsf3
	adds r1, r0, #0
	adds r0, r4, #0
	bl __gtsf2
	cmp r0, #0
	ble _08033244
	movs r0, #0
	strh r0, [r5, #8]
	strh r0, [r5, #0xa]
	strh r0, [r5, #0xc]
	strh r0, [r5, #0x38]
_08033244:
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	subs r0, r7, r0
	bl __floatsisf
	mov r1, sb
	bl __gtsf2
	cmp r0, #0
	ble _080332EA
	adds r1, r6, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	subs r1, #0x11
	movs r0, #0xb4
	strh r0, [r1]
	ldr r0, _08033284 @ =gUnknown_03004FEC
	ldrh r0, [r0]
	ldr r1, _08033288 @ =gUnknown_03005034
	ldr r1, [r1]
	bl sub_80573D4
	b _080332EA
	.align 2, 0
_08033278: .4byte gUnknown_03005A20
_0803327C: .4byte gCamera
_08033280: .4byte 0x43B40000
_08033284: .4byte gUnknown_03004FEC
_08033288: .4byte gUnknown_03005034
_0803328C:
	ldr r5, _080332FC @ =gUnknown_03005A20
	ldr r1, [r5]
	asrs r1, r1, #8
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x60
	cmp r1, r0
	bge _080332A2
	movs r0, #0x10
	strh r0, [r5, #0x38]
_080332A2:
	ldr r0, [r5]
	asrs r0, r0, #8
	bl __floatsisf
	adds r4, r0, #0
	ldr r0, _08033300 @ =gCamera
	movs r3, #0
	ldrsh r0, [r0, r3]
	bl __floatsisf
	ldr r1, _08033304 @ =0x43B40000
	bl __addsf3
	adds r1, r0, #0
	adds r0, r4, #0
	bl __gtsf2
	cmp r0, #0
	ble _080332D2
	movs r0, #0
	strh r0, [r5, #8]
	strh r0, [r5, #0xa]
	strh r0, [r5, #0xc]
	strh r0, [r5, #0x38]
_080332D2:
	adds r1, r6, #0
	adds r1, #0x98
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080332EA
	ldr r0, _08033308 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080332EA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080332FC: .4byte gUnknown_03005A20
_08033300: .4byte gCamera
_08033304: .4byte 0x43B40000
_08033308: .4byte gCurTask

	thumb_func_start sub_803330C
sub_803330C: @ 0x0803330C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	movs r4, #0xc0
	lsls r4, r4, #0x12
	ldr r0, _080333E8 @ =sub_8033480
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _080333EC @ =sub_8034224
	str r1, [sp]
	movs r1, #0x74
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	adds r4, r6, r4
	ldr r0, _080333F0 @ =0x03000060
	adds r1, r6, r0
	movs r3, #0
	movs r5, #0
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r1, _080333F4 @ =0x03000062
	adds r0, r6, r1
	strh r5, [r0]
	strh r5, [r4, #0x16]
	strh r5, [r4, #0x18]
	movs r0, #6
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r2, #0xa8
	lsls r2, r2, #3
	mov sl, r2
	mov r0, sl
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r2, _080333F8 @ =0x00000297
	strh r2, [r4, #0xa]
	ldr r1, _080333FC @ =0x03000020
	adds r0, r6, r1
	ldr r3, [sp, #4]
	strb r3, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	ldr r0, _08033400 @ =0x03000021
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08033404 @ =0x03000022
	adds r0, r6, r1
	movs r1, #0x10
	mov sb, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08033408 @ =0x03000025
	adds r0, r6, r1
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	ldr r4, _0803340C @ =0x03000030
	adds r1, r6, r4
	strh r5, [r1, #0x16]
	strh r5, [r1, #0x18]
	str r0, [r1, #4]
	mov r0, sl
	strh r0, [r1, #0x1a]
	strh r5, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r2, _08033410 @ =0x03000050
	adds r0, r6, r2
	strb r3, [r0]
	strh r5, [r1, #0x14]
	strh r5, [r1, #0x1c]
	adds r4, #0x21
	adds r2, r6, r4
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2]
	ldr r2, _08033414 @ =0x03000052
	adds r0, r6, r2
	mov r4, sb
	strb r4, [r0]
	ldr r0, _08033418 @ =0x03000055
	adds r6, r6, r0
	strb r3, [r6]
	mov r2, r8
	str r2, [r1, #0x28]
	movs r0, #0xc2
	lsls r0, r0, #0xc
	str r0, [r1, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080333E8: .4byte sub_8033480
_080333EC: .4byte sub_8034224
_080333F0: .4byte 0x03000060
_080333F4: .4byte 0x03000062
_080333F8: .4byte 0x00000297
_080333FC: .4byte 0x03000020
_08033400: .4byte 0x03000021
_08033404: .4byte 0x03000022
_08033408: .4byte 0x03000025
_0803340C: .4byte 0x03000030
_08033410: .4byte 0x03000050
_08033414: .4byte 0x03000052
_08033418: .4byte 0x03000055

	thumb_func_start sub_803341C
sub_803341C: @ 0x0803341C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08033478 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	mov r8, r1
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov r2, r8
	adds r4, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r1, #0xc
	adds r7, r0, r1
	ldrh r5, [r7, #0x16]
	ldrh r6, [r7, #0x18]
	strh r5, [r4, #0x16]
	strh r6, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r7, _0803347C @ =0x03000030
	add r7, r8
	strh r5, [r7, #0x16]
	strh r6, [r7, #0x18]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033478: .4byte gCurTask
_0803347C: .4byte 0x03000030

	thumb_func_start sub_8033480
sub_8033480: @ 0x08033480
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080334B4 @ =gCurTask
	ldr r2, [r0]
	ldrh r4, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r4, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r5, [r0, #6]
	ldr r0, _080334B8 @ =0x03000030
	adds r6, r4, r0
	adds r1, #0x9a
	adds r1, r1, r5
	mov r8, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #7
	ble _080334BC
	adds r0, r2, #0
	bl TaskDestroy
	b _080335B4
	.align 2, 0
_080334B4: .4byte gCurTask
_080334B8: .4byte 0x03000030
_080334BC:
	ldr r1, _08033538 @ =0x030000A8
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080335B4
	ldr r0, _0803353C @ =0x03000060
	adds r7, r4, r0
	ldrh r0, [r7]
	mov ip, r0
	cmp r0, #0
	beq _0803355E
	subs r0, #1
	strh r0, [r7]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080335B4
	ldr r0, [r3, #0x10]
	ldr r1, _08033540 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r6, #0x10]
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r1, _08033544 @ =0x0300002C
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08033508
	cmp r0, #3
	bne _08033558
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
_08033508:
	ldr r0, _08033548 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0803354C @ =0x03000051
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08033550 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r6, #0x10]
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r3, _08033554 @ =0x03000062
	adds r1, r4, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_80335C0
	b _080335B4
	.align 2, 0
_08033538: .4byte 0x030000A8
_0803353C: .4byte 0x03000060
_08033540: .4byte 0xFFFFF7FF
_08033544: .4byte 0x0300002C
_08033548: .4byte 0x03000021
_0803354C: .4byte 0x03000051
_08033550: .4byte 0xFFFFBFFF
_08033554: .4byte 0x03000062
_08033558:
	movs r0, #1
	strh r0, [r7]
	b _080335B4
_0803355E:
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0803357A
	ldr r1, _0803358C @ =0x0300002C
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080335B0
_0803357A:
	ldr r3, _08033590 @ =0x03000062
	adds r2, r4, r3
	ldrh r0, [r2]
	cmp r0, #3
	beq _08033594
	movs r0, #0x3c
	strh r0, [r7]
	b _080335B4
	.align 2, 0
_0803358C: .4byte 0x0300002C
_08033590: .4byte 0x03000062
_08033594:
	ldr r0, _080335AC @ =gUnknown_084ACEF6
	mov r3, r8
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7]
	mov r0, ip
	strh r0, [r2]
	b _080335B4
	.align 2, 0
_080335AC: .4byte gUnknown_084ACEF6
_080335B0:
	bl sub_803341C
_080335B4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80335C0
sub_80335C0: @ 0x080335C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08033700 @ =gCurTask
	mov r8, r0
	movs r4, #0xc0
	lsls r4, r4, #0x12
	ldr r0, _08033704 @ =sub_8033730
	movs r2, #0x8c
	lsls r2, r2, #6
	ldr r1, _08033708 @ =sub_8034224
	str r1, [sp]
	movs r1, #0x74
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	adds r5, r6, r4
	mov r1, r8
	ldr r0, [r1]
	ldrh r0, [r0]
	adds r0, r0, r4
	ldrh r2, [r0, #6]
	adds r4, r2, r4
	ldr r3, [r4]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r7, _0803370C @ =0x03000070
	adds r7, r7, r6
	mov sb, r7
	movs r0, #0
	mov sl, r0
	movs r7, #0
	mov r8, r7
	mov r0, sb
	strh r1, [r0]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08033710 @ =0x03000072
	adds r4, r6, r3
	strh r1, [r4]
	ldr r7, _08033714 @ =0x03000090
	adds r0, r2, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x10
	lsls r0, r0, #8
	str r0, [r5, #0x64]
	adds r3, #0x20
	adds r2, r2, r3
	movs r7, #0
	ldrsh r2, [r2, r7]
	lsls r2, r2, #8
	str r2, [r5, #0x68]
	ldr r1, _08033718 @ =gUnknown_03005A20
	ldr r3, [r1]
	asrs r3, r3, #8
	mov ip, r3
	asrs r0, r0, #8
	mov r3, sb
	ldrh r3, [r3]
	adds r0, r0, r3
	mov r7, ip
	subs r3, r7, r0
	ldr r1, [r1, #4]
	asrs r1, r1, #8
	asrs r2, r2, #8
	ldrh r4, [r4]
	adds r2, r2, r4
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	lsrs r3, r3, #0x1f
	adds r1, r1, r3
	asrs r1, r1, #1
	bl sub_800338C
	ldr r3, _0803371C @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r0, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r4, _08033720 @ =0x0300006C
	adds r2, r6, r4
	strh r1, [r2]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r7, _08033724 @ =0x0300006E
	adds r1, r6, r7
	strh r0, [r1]
	mov r0, r8
	strh r0, [r5, #0x16]
	strh r0, [r5, #0x18]
	movs r0, #4
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	mov r1, r8
	strh r1, [r5, #8]
	movs r0, #0xa6
	lsls r0, r0, #2
	strh r0, [r5, #0xa]
	ldr r2, _08033728 @ =0x03000020
	adds r0, r6, r2
	mov r3, sl
	strb r3, [r0]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	subs r4, #0x4b
	adds r1, r6, r4
	movs r0, #0xff
	strb r0, [r1]
	subs r7, #0x4c
	adds r1, r6, r7
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0803372C @ =0x03000025
	adds r6, r6, r0
	strb r3, [r6]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033700: .4byte gCurTask
_08033704: .4byte sub_8033730
_08033708: .4byte sub_8034224
_0803370C: .4byte 0x03000070
_08033710: .4byte 0x03000072
_08033714: .4byte 0x03000090
_08033718: .4byte gUnknown_03005A20
_0803371C: .4byte gSineTable
_08033720: .4byte 0x0300006C
_08033724: .4byte 0x0300006E
_08033728: .4byte 0x03000020
_0803372C: .4byte 0x03000025

	thumb_func_start sub_8033730
sub_8033730: @ 0x08033730
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080337C0 @ =gCurTask
	ldr r5, [r0]
	ldrh r3, [r5, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	ldrh r0, [r5]
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	adds r4, r3, #0
	orrs r4, r1
	ldr r0, _080337C4 @ =0x0300006C
	adds r0, r0, r3
	mov r8, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r4, #0x64]
	adds r1, r1, r0
	str r1, [r4, #0x64]
	ldr r2, _080337C8 @ =0x0300006E
	adds r0, r3, r2
	movs r7, #0
	ldrsh r2, [r0, r7]
	ldr r0, [r4, #0x68]
	adds r0, r0, r2
	str r0, [r4, #0x68]
	ldr r7, _080337CC @ =0x03000070
	adds r2, r3, r7
	asrs r1, r1, #8
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r2, _080337D0 @ =0x03000072
	adds r3, r3, r2
	asrs r0, r0, #8
	ldrh r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	ldr r3, _080337D4 @ =gCamera
	ldrh r2, [r3]
	lsrs r7, r1, #0x10
	mov ip, r7
	asrs r1, r1, #0x10
	subs r2, r1, r2
	strh r2, [r4, #0x16]
	ldrh r1, [r3, #2]
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xd0
	bls _080337EC
	mov r1, r8
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	blt _080337D8
	lsls r1, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080337EC
	b _080337E4
	.align 2, 0
_080337C0: .4byte gCurTask
_080337C4: .4byte 0x0300006C
_080337C8: .4byte 0x0300006E
_080337CC: .4byte 0x03000070
_080337D0: .4byte 0x03000072
_080337D4: .4byte gCamera
_080337D8:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080337EC
_080337E4:
	adds r0, r5, #0
	bl TaskDestroy
	b _0803386C
_080337EC:
	adds r0, r6, #0
	adds r0, #0x9a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	bgt _08033844
	mov r0, ip
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_800B798
	cmp r0, #0
	beq _08033860
	ldrh r3, [r6, #0x16]
	ldr r0, _08033840 @ =0x00000296
	cmp r3, r0
	bne _08033860
	adds r2, r6, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	cmp r0, #2
	bne _08033828
	adds r1, r6, #0
	adds r1, #0x64
	movs r0, #1
	strb r0, [r1]
_08033828:
	ldrh r0, [r6, #0x16]
	cmp r0, r3
	bne _08033860
	ldrb r0, [r2]
	cmp r0, #3
	bne _08033860
	adds r1, r6, #0
	adds r1, #0x64
	movs r0, #4
	strb r0, [r1]
	b _08033860
	.align 2, 0
_08033840: .4byte 0x00000296
_08033844:
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r0, r0, #8
	lsls r1, r3, #0x10
	asrs r1, r1, #8
	bl sub_8017540
	ldr r0, _0803385C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803386C
	.align 2, 0
_0803385C: .4byte gCurTask
_08033860:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0803386C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8033878
sub_8033878: @ 0x08033878
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	ldr r0, _08033904 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r5, r5, r4
	ldr r0, _08033908 @ =sub_8033924
	movs r1, #0x80
	lsls r1, r1, #6
	mov sb, r1
	ldr r1, _0803390C @ =sub_8034238
	str r1, [sp]
	movs r1, #0x60
	mov r2, sb
	movs r3, #0
	bl TaskCreate
	str r0, [r5, #0x74]
	ldrh r5, [r0, #6]
	adds r4, r5, r4
	movs r0, #0
	mov r8, r0
	movs r6, #0
	strh r6, [r4, #0x16]
	strh r6, [r4, #0x18]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r6, [r4, #8]
	ldr r0, _08033910 @ =0x00000293
	strh r0, [r4, #0xa]
	ldr r1, _08033914 @ =0x03000020
	adds r0, r5, r1
	mov r1, r8
	strb r1, [r0]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _08033918 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0803391C @ =0x03000022
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08033920 @ =0x03000025
	adds r5, r5, r1
	mov r0, r8
	strb r0, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	mov r1, sb
	str r1, [r4, #0x10]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08033904: .4byte gCurTask
_08033908: .4byte sub_8033924
_0803390C: .4byte sub_8034238
_08033910: .4byte 0x00000293
_08033914: .4byte 0x03000020
_08033918: .4byte 0x03000021
_0803391C: .4byte 0x03000022
_08033920: .4byte 0x03000025

	thumb_func_start sub_8033924
sub_8033924: @ 0x08033924
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _08033998 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r2, _0803399C @ =0x03000054
	adds r1, r0, r2
	movs r3, #0
	strb r3, [r1]
	adds r2, #3
	adds r1, r0, r2
	strb r3, [r1]
	subs r2, #2
	adds r1, r0, r2
	strb r3, [r1]
	adds r2, #1
	adds r1, r0, r2
	strb r3, [r1]
	ldr r1, _080339A0 @ =0x03000058
	adds r0, r0, r1
	strb r3, [r0]
	ldr r2, _080339A4 @ =gUnknown_03005860
	ldr r1, _080339A8 @ =gUnknown_03005A20
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	ldrh r0, [r1, #8]
	strh r0, [r2, #8]
	ldrh r0, [r1, #0xa]
	strh r0, [r2, #0xa]
	ldr r0, [r1, #0x10]
	str r0, [r2, #0xc]
	mov r0, sp
	strh r3, [r0]
	ldr r1, _080339AC @ =0x040000D4
	str r0, [r1]
	ldr r0, _080339B0 @ =gUnknown_03005870
	str r0, [r1, #4]
	ldr r0, _080339B4 @ =0x81000009
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r1, [r5]
	ldr r0, _080339B8 @ =sub_8033AA0
	str r0, [r1, #8]
	adds r0, r4, #0
	bl sub_80339BC
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033998: .4byte gCurTask
_0803399C: .4byte 0x03000054
_080339A0: .4byte 0x03000058
_080339A4: .4byte gUnknown_03005860
_080339A8: .4byte gUnknown_03005A20
_080339AC: .4byte 0x040000D4
_080339B0: .4byte gUnknown_03005870
_080339B4: .4byte 0x81000009
_080339B8: .4byte sub_8033AA0

	thumb_func_start sub_80339BC
sub_80339BC: @ 0x080339BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r0, _08033A84 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r5, r0, r1
	ldr r0, [r5]
	mov sb, r0
	mov r4, r8
	movs r6, #0
	movs r7, #0
_080339E2:
	ldr r1, _08033A88 @ =0x00002001
	adds r2, r6, r1
	str r7, [sp]
	ldr r0, _08033A8C @ =sub_8034098
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	lsls r2, r6, #2
	mov r1, r8
	adds r1, #0x30
	adds r1, r1, r2
	str r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r3, r0
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #0x30]
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #0x32]
	lsls r0, r6, #0xd
	ldr r1, _08033A90 @ =0xFFFF9000
	adds r0, r0, r1
	str r0, [r2, #0x38]
	str r7, [r2, #0x3c]
	str r7, [r2, #0x40]
	str r7, [r2, #0x44]
	ldr r1, _08033A94 @ =0x03000048
	adds r0, r3, r1
	strh r7, [r0]
	adds r1, #0xa
	adds r0, r3, r1
	strb r6, [r0]
	ldr r0, [r4, #0x28]
	str r0, [r2, #0x28]
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	ldr r2, _08033A98 @ =0x0300002C
	adds r0, r3, r2
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r1, [r0]
	adds r2, #1
	adds r0, r3, r2
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r1, [r0]
	adds r2, #1
	adds r0, r3, r2
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	ldr r1, _08033A9C @ =0x0300002F
	adds r3, r3, r1
	strb r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #8
	bls _080339E2
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033A84: .4byte gCurTask
_08033A88: .4byte 0x00002001
_08033A8C: .4byte sub_8034098
_08033A90: .4byte 0xFFFF9000
_08033A94: .4byte 0x03000048
_08033A98: .4byte 0x0300002C
_08033A9C: .4byte 0x0300002F

	thumb_func_start sub_8033AA0
sub_8033AA0: @ 0x08033AA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	mov sb, r0
	ldr r0, _08033B48 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov sl, r0
	movs r1, #0
	str r1, [sp]
	ldr r1, _08033B4C @ =0x040000D4
	ldr r0, _08033B50 @ =gUnknown_03005870
	str r0, [r1]
	ldr r0, _08033B54 @ =gUnknown_03005890
	str r0, [r1, #4]
	ldr r0, _08033B58 @ =0x80000009
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _08033B5C @ =0x0300005E
	adds r1, r2, r4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r5, _08033B60 @ =0x03000058
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _08033B7C
	movs r5, #0
	ldr r7, _08033B64 @ =0x03000030
	adds r6, r2, r7
	ldr r0, _08033B68 @ =0x03000054
	adds r0, r0, r2
	mov r8, r0
	ldr r7, _08033B6C @ =gCamera
_08033AF4:
	lsls r0, r5, #2
	adds r0, r6, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrh r2, [r4, #0x30]
	adds r1, r1, r2
	ldr r3, [r4, #0x3c]
	asrs r3, r3, #8
	ldrh r0, [r4, #0x32]
	adds r3, r3, r0
	ldr r2, _08033B50 @ =gUnknown_03005870
	lsls r0, r5, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r2, r2, r3
	ldrh r0, [r7]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r7, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	ldr r3, _08033B70 @ =gUnknown_03005A20
	bl sub_800B2BC
	cmp r0, #0
	bne _08033B74
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033AF4
	b _08033B94
	.align 2, 0
_08033B48: .4byte gCurTask
_08033B4C: .4byte 0x040000D4
_08033B50: .4byte gUnknown_03005870
_08033B54: .4byte gUnknown_03005890
_08033B58: .4byte 0x80000009
_08033B5C: .4byte 0x0300005E
_08033B60: .4byte 0x03000058
_08033B64: .4byte 0x03000030
_08033B68: .4byte 0x03000054
_08033B6C: .4byte gCamera
_08033B70: .4byte gUnknown_03005A20
_08033B74:
	movs r1, #0xff
	str r1, [sp]
	mov sb, r5
	b _08033B94
_08033B7C:
	ldr r0, _08033BB4 @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r1, #0xa
	ands r0, r1
	ldr r4, _08033BB8 @ =0x03000054
	adds r4, r4, r2
	mov r8, r4
	cmp r0, #0
	bne _08033B94
	adds r0, r3, #0
	bl TaskDestroy
_08033B94:
	ldr r5, [sp]
	cmp r5, #0
	bne _08033B9C
	b _08033E30
_08033B9C:
	mov r0, sl
	adds r0, #0x56
	mov r6, sb
	strb r6, [r0]
	mov r7, sb
	cmp r7, #0
	beq _08033BAE
	cmp r7, #8
	bne _08033BBC
_08033BAE:
	movs r6, #8
	b _08033BBE
	.align 2, 0
_08033BB4: .4byte gUnknown_03005A20
_08033BB8: .4byte 0x03000054
_08033BBC:
	movs r6, #0x10
_08033BBE:
	ldr r1, _08033C38 @ =gUnknown_03005860
	ldr r0, [r1, #0xc]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	beq _08033C58
	adds r0, r1, #0
	movs r3, #0xa
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	ble _08033C58
	mov r4, r8
	strb r2, [r4]
	mov r0, sl
	adds r0, #0x55
	mov r5, sb
	strb r5, [r0]
	mov r1, sl
	adds r1, #0x57
	movs r0, #0xff
	strb r0, [r1]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	beq _08033BF8
	lsls r0, r0, #0x11
	lsrs r6, r0, #0x10
_08033BF8:
	mov r0, sl
	adds r0, #0x5a
	strh r6, [r0]
	movs r5, #0
	ldr r7, _08033C3C @ =gUnknown_03005890
	mov r8, r7
	mov r0, sb
	lsls r0, r0, #1
	str r0, [sp, #4]
	ldr r3, _08033C40 @ =gUnknown_03005870
	lsls r0, r6, #0x10
	asrs r4, r0, #0x10
_08033C10:
	cmp r5, sb
	bne _08033C44
	ldr r2, _08033C38 @ =gUnknown_03005860
	ldrh r1, [r2, #0xa]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	mov r0, sl
	adds r0, #0x5c
	strh r1, [r0]
	lsls r0, r5, #1
	adds r2, r0, r3
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	ble _08033C4C
	strh r6, [r2]
	b _08033C4C
	.align 2, 0
_08033C38: .4byte gUnknown_03005860
_08033C3C: .4byte gUnknown_03005890
_08033C40: .4byte gUnknown_03005870
_08033C44:
	lsls r0, r5, #1
	adds r0, r0, r3
	movs r1, #0
	strh r1, [r0]
_08033C4C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033C10
	b _08033DFC
_08033C58:
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #2
	bne _08033D2C
	ldr r2, _08033D24 @ =gUnknown_03005870
	mov r4, sb
	lsls r3, r4, #1
	adds r6, r3, r2
	mov r5, sl
	adds r5, #0x5c
	ldrh r0, [r5]
	ldrh r7, [r6]
	adds r0, r0, r7
	strh r0, [r6]
	mov r4, sl
	adds r4, #0x5a
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4]
	mov ip, r1
	movs r7, #0
	ldrsh r1, [r4, r7]
	str r3, [sp, #4]
	cmp r0, r1
	blt _08033C9E
	mov r0, ip
	strh r0, [r6]
	ldrh r0, [r5]
	movs r1, #1
	subs r1, r1, r0
	strh r1, [r5]
	mov r1, sl
	adds r1, #0x57
	movs r0, #0
	strb r0, [r1]
_08033C9E:
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	cmn r0, r1
	bgt _08033CBA
	rsbs r0, r1, #0
	strh r0, [r6]
	movs r0, #1
	mov r3, r8
	strb r0, [r3]
_08033CBA:
	movs r5, #0
	ldr r4, _08033D28 @ =gUnknown_03005890
	mov r8, r4
	ldr r7, _08033D24 @ =gUnknown_03005870
	adds r4, r6, #0
_08033CC4:
	cmp r5, sb
	beq _08033CFA
	mov r6, sb
	subs r0, r6, r5
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08033CDC
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08033CDC:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	cmp r1, #2
	bgt _08033CFA
	movs r2, #0
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	movs r1, #3
	bl __divsi3
	ldrh r1, [r4]
	subs r1, r1, r0
	lsls r0, r5, #1
	adds r0, r0, r7
	strh r1, [r0]
_08033CFA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033CC4
	ldr r3, _08033D24 @ =gUnknown_03005870
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #8
	ble _08033D12
	movs r0, #8
	strh r0, [r3]
_08033D12:
	ldr r5, _08033D24 @ =gUnknown_03005870
	movs r6, #0x10
	ldrsh r0, [r5, r6]
	cmp r0, #8
	ble _08033DFC
	movs r0, #8
	strh r0, [r5, #0x10]
	b _08033DFC
	.align 2, 0
_08033D24: .4byte gUnknown_03005870
_08033D28: .4byte gUnknown_03005890
_08033D2C:
	movs r0, #1
	mov r7, r8
	strb r0, [r7]
	ldr r1, _08033D4C @ =gUnknown_03005870
	mov r0, sb
	lsls r2, r0, #1
	adds r4, r2, r1
	ldrh r3, [r4]
	movs r5, #0
	ldrsh r0, [r4, r5]
	str r2, [sp, #4]
	cmp r0, #0
	bge _08033D50
	adds r0, r3, #2
	b _08033D52
	.align 2, 0
_08033D4C: .4byte gUnknown_03005870
_08033D50:
	adds r0, r3, #1
_08033D52:
	strh r0, [r4]
	ldr r7, [sp, #4]
	ldr r0, _08033E24 @ =gUnknown_03005870
	adds r2, r7, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08033D68
	strh r6, [r2]
_08033D68:
	movs r5, #0
	ldr r4, _08033E28 @ =gUnknown_03005890
	mov r8, r4
	ldr r6, _08033E24 @ =gUnknown_03005870
	adds r4, r2, #0
_08033D72:
	cmp r5, sb
	beq _08033DD6
	mov r7, sb
	subs r1, r7, r5
	lsls r1, r1, #0x18
	lsls r0, r7, #0x18
	lsrs r2, r0, #0x18
	lsrs r3, r1, #0x18
	asrs r0, r1, #0x18
	cmp r0, #0
	bge _08033D96
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #8
	subs r0, r0, r7
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08033D96:
	lsls r1, r2, #0x18
	movs r0, #0
	ldrsh r2, [r4, r0]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	muls r0, r2, r0
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r1, r1, r2
	asrs r1, r1, #0x18
	bl __divsi3
	ldrh r1, [r4]
	subs r1, r1, r0
	lsls r0, r5, #1
	adds r2, r0, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r2]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r1, r0
	ble _08033DC8
	adds r0, r3, #1
	strh r0, [r2]
_08033DC8:
	ldrh r3, [r2]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r1, r0
	bge _08033DD6
	subs r0, r3, #1
	strh r0, [r2]
_08033DD6:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033D72
	ldr r1, _08033E24 @ =gUnknown_03005870
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #8
	ble _08033DEE
	movs r0, #8
	strh r0, [r1]
_08033DEE:
	ldr r3, _08033E24 @ =gUnknown_03005870
	movs r4, #0x10
	ldrsh r0, [r3, r4]
	cmp r0, #8
	ble _08033DFC
	movs r0, #8
	strh r0, [r3, #0x10]
_08033DFC:
	ldr r5, _08033E2C @ =gUnknown_03005A20
	ldr r2, [r5, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r2, r2, r6
	ldr r7, [sp, #4]
	ldr r1, _08033E24 @ =gUnknown_03005870
	adds r0, r7, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r7, #0
	add r1, r8
	movs r4, #0
	ldrsh r1, [r1, r4]
	subs r0, r0, r1
	lsls r0, r0, #8
	adds r2, r2, r0
	str r2, [r5, #4]
	b _08033FFA
	.align 2, 0
_08033E24: .4byte gUnknown_03005870
_08033E28: .4byte gUnknown_03005890
_08033E2C: .4byte gUnknown_03005A20
_08033E30:
	mov r5, r8
	ldrb r0, [r5]
	cmp r0, #2
	bne _08033F1C
	ldr r2, _08033F18 @ =gUnknown_03005870
	mov r7, sl
	adds r7, #0x55
	ldrb r1, [r7]
	lsls r1, r1, #1
	adds r1, r1, r2
	mov r5, sl
	adds r5, #0x5c
	ldrh r0, [r5]
	ldrh r6, [r1]
	adds r0, r0, r6
	movs r3, #0
	mov sb, r3
	strh r0, [r1]
	ldrb r0, [r7]
	lsls r0, r0, #1
	adds r4, r0, r2
	mov r3, sl
	adds r3, #0x5a
	movs r6, #0
	ldrsh r1, [r4, r6]
	ldrh r0, [r3]
	mov ip, r0
	movs r6, #0
	ldrsh r0, [r3, r6]
	adds r2, r7, #0
	cmp r1, r0
	blt _08033E84
	mov r0, ip
	strh r0, [r4]
	ldrh r1, [r5]
	movs r0, #1
	subs r0, r0, r1
	strh r0, [r5]
	mov r0, sl
	adds r0, #0x57
	mov r1, sb
	strb r1, [r0]
_08033E84:
	ldrb r0, [r2]
	lsls r0, r0, #1
	ldr r2, _08033F18 @ =gUnknown_03005870
	adds r4, r0, r2
	movs r6, #0
	ldrsh r2, [r4, r6]
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	cmn r2, r0
	bgt _08033EAE
	rsbs r0, r0, #0
	strh r0, [r4]
	mov r2, sp
	ldrh r2, [r2]
	strh r2, [r5]
	mov r4, sb
	mov r3, r8
	strb r4, [r3]
_08033EAE:
	movs r5, #0
	adds r6, r7, #0
	ldr r7, _08033F18 @ =gUnknown_03005870
_08033EB4:
	ldrb r0, [r6]
	cmp r5, r0
	beq _08033EF0
	subs r0, r0, r5
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08033ECC
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08033ECC:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	cmp r1, #2
	bgt _08033EF0
	ldrb r4, [r6]
	lsls r4, r4, #1
	adds r4, r4, r7
	movs r2, #0
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	movs r1, #3
	bl __divsi3
	ldrh r1, [r4]
	subs r1, r1, r0
	lsls r0, r5, #1
	adds r0, r0, r7
	strh r1, [r0]
_08033EF0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033EB4
	ldr r3, _08033F18 @ =gUnknown_03005870
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #8
	ble _08033F08
	movs r0, #8
	strh r0, [r3]
_08033F08:
	ldr r5, _08033F18 @ =gUnknown_03005870
	movs r6, #0x10
	ldrsh r0, [r5, r6]
	cmp r0, #8
	ble _08033FFA
	movs r0, #8
	strh r0, [r5, #0x10]
	b _08033FFA
	.align 2, 0
_08033F18: .4byte gUnknown_03005870
_08033F1C:
	mov r7, sp
	ldrb r0, [r7]
	mov r7, r8
	strb r0, [r7]
	ldr r1, _08034084 @ =gUnknown_03005870
	mov r2, sl
	adds r2, #0x56
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r3, r0, r1
	ldrh r4, [r3]
	movs r5, #0
	ldrsh r0, [r3, r5]
	adds r7, r2, #0
	cmp r0, #0
	ble _08033F40
	subs r0, r4, #1
	strh r0, [r3]
_08033F40:
	ldrb r0, [r7]
	lsls r0, r0, #1
	ldr r6, _08034084 @ =gUnknown_03005870
	adds r1, r0, r6
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08033F6A
	adds r0, r2, #2
	strh r0, [r1]
	ldrb r0, [r7]
	lsls r0, r0, #1
	adds r1, r0, r6
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _08033F6A
	mov r5, sp
	ldrh r5, [r5]
	strh r5, [r1]
_08033F6A:
	movs r5, #0
_08033F6C:
	ldrb r0, [r7]
	cmp r5, r0
	beq _08033FF0
	subs r0, r0, r5
	lsls r0, r0, #0x18
	ldrb r1, [r7]
	adds r4, r1, #0
	lsrs r3, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08033F90
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #8
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08033F90:
	lsls r1, r1, #0x18
	ldr r6, _08034084 @ =gUnknown_03005870
	lsls r4, r4, #1
	adds r4, r4, r6
	movs r0, #0
	ldrsh r2, [r4, r0]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	muls r0, r2, r0
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r1, r1, r2
	asrs r1, r1, #0x18
	bl __divsi3
	ldrh r1, [r4]
	subs r1, r1, r0
	lsls r0, r5, #1
	adds r2, r0, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r2]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r1, r0
	ble _08033FC8
	adds r0, r3, #1
	strh r0, [r2]
_08033FC8:
	ldrh r3, [r2]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bge _08033FD6
	subs r0, r3, #1
	strh r0, [r2]
_08033FD6:
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #8
	ble _08033FE2
	movs r0, #8
	strh r0, [r6]
_08033FE2:
	ldr r2, _08034084 @ =gUnknown_03005870
	movs r3, #0x10
	ldrsh r0, [r2, r3]
	cmp r0, #8
	ble _08033FF0
	movs r0, #8
	strh r0, [r2, #0x10]
_08033FF0:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _08033F6C
_08033FFA:
	ldr r4, _08034088 @ =gUnknown_03005A20
	ldr r0, [r4]
	ldr r5, _0803408C @ =gUnknown_03005860
	str r0, [r5]
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldrh r0, [r4, #8]
	strh r0, [r5, #8]
	ldrh r0, [r4, #0xa]
	strh r0, [r5, #0xa]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0xc]
	ldr r6, _08034090 @ =gUnknown_03005088
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #2
	bne _08034072
	mov r0, sl
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034072
	movs r5, #0
	mov r6, sl
	adds r6, #0x30
_0803402C:
	lsls r0, r5, #2
	adds r0, r6, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r4, r0, r7
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x30]
	adds r1, r1, r0
	ldr r3, [r4, #0x3c]
	asrs r3, r3, #8
	ldrh r2, [r4, #0x32]
	adds r3, r3, r2
	ldr r2, _08034084 @ =gUnknown_03005870
	lsls r0, r5, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r2, r2, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	ldr r3, _08034094 @ =gUnknown_03005AB0
	bl sub_800B2BC
	cmp r0, #0
	bne _08034072
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #8
	bls _0803402C
_08034072:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034084: .4byte gUnknown_03005870
_08034088: .4byte gUnknown_03005A20
_0803408C: .4byte gUnknown_03005860
_08034090: .4byte gUnknown_03005088
_08034094: .4byte gUnknown_03005AB0

	thumb_func_start sub_8034098
sub_8034098: @ 0x08034098
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08034108 @ =gCurTask
	ldr r5, [r0]
	ldrh r3, [r5, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r3, r1
	ldrh r0, [r5]
	adds r0, r0, r1
	ldrh r4, [r0, #6]
	adds r6, r4, r1
	ldr r0, [r6, #0xc]
	str r0, [sp]
	ldr r0, [r2, #0x38]
	asrs r0, r0, #8
	ldrh r1, [r2, #0x30]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	ldrh r2, [r2, #0x32]
	adds r1, r1, r2
	ldr r2, _0803410C @ =gUnknown_03005870
	ldr r0, _08034110 @ =0x03000052
	adds r3, r3, r0
	ldrb r3, [r3]
	mov r8, r3
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldr r1, _08034114 @ =gCamera
	mov sb, r1
	movs r2, #2
	ldrsh r0, [r1, r2]
	subs r0, r7, r0
	bl __floatsisf
	ldr r1, _08034118 @ =0xC3700000
	bl __ltsf2
	cmp r0, #0
	bge _0803411C
	adds r0, r5, #0
	bl TaskDestroy
	b _080341E2
	.align 2, 0
_08034108: .4byte gCurTask
_0803410C: .4byte gUnknown_03005870
_08034110: .4byte 0x03000052
_08034114: .4byte gCamera
_08034118: .4byte 0xC3700000
_0803411C:
	ldr r3, _08034168 @ =0x03000058
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034134
	ldr r5, _0803416C @ =0x0300005E
	adds r0, r4, r5
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080341E2
_08034134:
	ldr r0, _08034170 @ =0x03000023
	adds r2, r4, r0
	mov r1, r8
	cmp r1, #0
	beq _08034146
	adds r1, r2, #0
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08034174
_08034146:
	movs r0, #0xff
	strb r0, [r2]
	mov r2, sb
	ldrh r1, [r2]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	b _080341E2
	.align 2, 0
_08034168: .4byte 0x03000058
_0803416C: .4byte 0x0300005E
_08034170: .4byte 0x03000023
_08034174:
	ldrb r0, [r1]
	lsls r0, r0, #3
	ldr r1, _080341F4 @ =gUnknown_03001B80
	adds r5, r0, r1
	ldrh r1, [r6, #0x1a]
	movs r0, #0xf8
	lsls r0, r0, #3
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _080341F8 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r4
	beq _080341E2
	ldr r0, _080341FC @ =0x040000D4
	str r5, [r0]
	str r4, [r0, #4]
	ldr r1, _08034200 @ =0x80000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r4, #2]
	movs r3, #0xfe
	lsls r3, r3, #8
	ands r3, r0
	strh r3, [r4, #2]
	ldrh r0, [r4]
	movs r2, #0xff
	lsls r2, r2, #8
	ands r2, r0
	strh r2, [r4]
	mov r5, sb
	ldrh r0, [r5, #2]
	subs r0, r7, r0
	ldr r5, [sp]
	ldrh r1, [r5, #0xa]
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r4]
	mov r0, sb
	ldrh r1, [r0]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	ldr r5, _08034204 @ =0x000001FF
	adds r1, r5, #0
	ands r0, r1
	adds r3, r3, r0
	strh r3, [r4, #2]
_080341E2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080341F4: .4byte gUnknown_03001B80
_080341F8: .4byte iwram_end
_080341FC: .4byte 0x040000D4
_08034200: .4byte 0x80000003
_08034204: .4byte 0x000001FF

	thumb_func_start sub_8034208
sub_8034208: @ 0x08034208
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x48]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8034224
sub_8034224: @ 0x08034224
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8034238
sub_8034238: @ 0x08034238
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803424C
sub_803424C: @ 0x0803424C
	ldr r0, _08034264 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08034268 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_08034264: .4byte gCurTask
_08034268: .4byte 0x0300000C

	thumb_func_start sub_803426C
sub_803426C: @ 0x0803426C
	push {r4, lr}
	ldr r2, _08034294 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08034298 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _0803429C @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08034294: .4byte gCurTask
_08034298: .4byte 0x0300000C
_0803429C: .4byte gCamera

	thumb_func_start sub_80342A0
sub_80342A0: @ 0x080342A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _08034364 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _08034368 @ =0x0300000C
	adds r5, r4, r0
	ldr r0, [r5, #0x10]
	ldr r1, _0803436C @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r1, _08034370 @ =gUnknown_03005A20
	mov r8, r1
	ldr r3, [r1, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _080342E4
	ldr r2, _08034374 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08034378 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0803437C @ =gUnknown_03001B30
	strh r3, [r0, #0xa]
	ldr r0, _08034380 @ =gUnknown_030011A8
	strh r3, [r0]
	strh r3, [r0, #4]
_080342E4:
	ldr r0, _08034384 @ =0x03000087
	adds r0, r0, r4
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080343C6
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_800B8B4
	mov r8, r0
	movs r1, #0
	ldr r0, _08034388 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08034326
	ldr r3, _0803438C @ =gUnknown_03005AB0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800B8B4
	adds r1, r0, #0
_08034326:
	ldr r0, _08034390 @ =0x0300003C
	adds r2, r4, r0
	mov r0, r8
	cmp r0, #1
	beq _08034334
	cmp r1, #1
	bne _080343A4
_08034334:
	ldr r0, _08034394 @ =0x03000086
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x20
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08034398 @ =0x0300005C
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0803439C @ =0x0300005D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _080343A0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _080343C6
	.align 2, 0
_08034364: .4byte gCurTask
_08034368: .4byte 0x0300000C
_0803436C: .4byte 0xFFFFFE7F
_08034370: .4byte gUnknown_03005A20
_08034374: .4byte gDispCnt
_08034378: .4byte 0x00007FFF
_0803437C: .4byte gUnknown_03001B30
_08034380: .4byte gUnknown_030011A8
_08034384: .4byte 0x03000087
_08034388: .4byte gUnknown_03005088
_0803438C: .4byte gUnknown_03005AB0
_08034390: .4byte 0x0300003C
_08034394: .4byte 0x03000086
_08034398: .4byte 0x0300005C
_0803439C: .4byte 0x0300005D
_080343A0: .4byte 0xFFFFBFFF
_080343A4:
	mov r0, r8
	cmp r0, #2
	beq _080343AE
	cmp r1, #2
	bne _080343C6
_080343AE:
	ldr r0, _080343D4 @ =0x0300005C
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080343D8 @ =0x0300005D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _080343DC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
_080343C6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080343D4: .4byte 0x0300005C
_080343D8: .4byte 0x0300005D
_080343DC: .4byte 0xFFFFBFFF

	thumb_func_start sub_80343E0
sub_80343E0: @ 0x080343E0
	push {r4, r5, lr}
	ldr r0, _08034458 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0803445C @ =0x0300000C
	adds r3, r0, r1
	ldr r5, _08034460 @ =0x0300003C
	adds r4, r0, r5
	adds r1, #0x7b
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08034444
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _08034444
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08034444
	ldr r0, _08034464 @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08034444
	ldr r0, [r3, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, _08034468 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803446C @ =gUnknown_03001B30
	ldr r0, _08034470 @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _08034474 @ =gUnknown_030011A8
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
_08034444:
	adds r0, r3, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034458: .4byte gCurTask
_0803445C: .4byte 0x0300000C
_08034460: .4byte 0x0300003C
_08034464: .4byte gUnknown_03005A20
_08034468: .4byte gDispCnt
_0803446C: .4byte gUnknown_03001B30
_08034470: .4byte 0x00003F1F
_08034474: .4byte gUnknown_030011A8

	thumb_func_start CreateEntity_Enemy028
CreateEntity_Enemy028: @ 0x08034478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x18
	ldr r0, _080344A8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080344AC
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	b _080345F4
	.align 2, 0
_080344A8: .4byte gGameMode
_080344AC:
	ldr r0, _08034604 @ =sub_8034644
	ldr r1, _08034608 @ =sub_80357FC
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r5, r1
	movs r3, #0
	mov r2, r8
	strh r2, [r1, #4]
	mov r0, sb
	strh r0, [r1, #6]
	str r7, [r1]
	ldrb r0, [r7]
	strb r0, [r1, #8]
	strb r4, [r1, #9]
	ldr r4, _0803460C @ =0x03000084
	adds r2, r5, r4
	movs r0, #0x78
	strh r0, [r2]
	ldr r2, _08034610 @ =0x03000086
	adds r0, r5, r2
	strb r3, [r0]
	adds r4, #3
	adds r0, r5, r4
	strb r3, [r0]
	adds r2, #7
	adds r0, r5, r2
	strb r3, [r0]
	adds r4, #5
	adds r0, r5, r4
	strb r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r1, #0x6c]
	ldr r0, _08034614 @ =0xFFFFA000
	str r0, [r1, #0x70]
	movs r0, #0
	str r0, [r1, #0x74]
	str r0, [r1, #0x78]
	ldr r1, _08034618 @ =0x03000088
	adds r0, r5, r1
	movs r2, #0
	strh r2, [r0]
	subs r4, #2
	adds r0, r5, r4
	strh r2, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r1, r8
	lsls r6, r1, #8
	adds r0, r0, r6
	subs r4, #0xe
	adds r2, r5, r4
	strh r0, [r2]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r1, sb
	lsls r1, r1, #8
	mov sl, r1
	add r0, sl
	adds r4, #2
	adds r1, r5, r4
	strh r0, [r1]
	ldr r0, _0803461C @ =0x0300000C
	adds r4, r5, r0
	ldrh r0, [r2]
	strh r0, [r4, #0x16]
	ldrh r0, [r1]
	strh r0, [r4, #0x18]
	movs r0, #0x1e
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r1, #0
	strh r1, [r4, #8]
	movs r0, #0xab
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	ldr r2, _08034620 @ =0x0300002C
	adds r0, r5, r2
	ldr r3, [sp, #4]
	strb r3, [r0]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x1c]
	ldr r0, _08034624 @ =0x0300002D
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08034628 @ =0x0300002E
	adds r0, r5, r1
	movs r2, #0x10
	mov sb, r2
	mov r1, sb
	strb r1, [r0]
	ldr r2, _0803462C @ =0x03000031
	adds r0, r5, r2
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	adds r2, #0xb
	adds r4, r5, r2
	ldrb r0, [r7]
	lsls r0, r0, #3
	adds r0, r0, r6
	strh r0, [r4, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	add r0, sl
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #8
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	movs r2, #0
	strh r2, [r4, #8]
	ldr r0, _08034630 @ =0x000002AE
	strh r0, [r4, #0xa]
	ldr r1, _08034634 @ =0x0300005C
	adds r0, r5, r1
	ldr r3, [sp, #4]
	strb r3, [r0]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0x1c]
	ldr r2, _08034638 @ =0x0300005D
	adds r1, r5, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0803463C @ =0x0300005E
	adds r0, r5, r1
	mov r2, sb
	strb r2, [r0]
	ldr r0, _08034640 @ =0x03000061
	adds r5, r5, r0
	strb r3, [r5]
	mov r1, r8
	str r1, [r4, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r4, #0x10]
_080345F4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034604: .4byte sub_8034644
_08034608: .4byte sub_80357FC
_0803460C: .4byte 0x03000084
_08034610: .4byte 0x03000086
_08034614: .4byte 0xFFFFA000
_08034618: .4byte 0x03000088
_0803461C: .4byte 0x0300000C
_08034620: .4byte 0x0300002C
_08034624: .4byte 0x0300002D
_08034628: .4byte 0x0300002E
_0803462C: .4byte 0x03000031
_08034630: .4byte 0x000002AE
_08034634: .4byte 0x0300005C
_08034638: .4byte 0x0300005D
_0803463C: .4byte 0x0300005E
_08034640: .4byte 0x03000061

	thumb_func_start sub_8034644
sub_8034644: @ 0x08034644
	push {r4, r5, r6, lr}
	ldr r0, _08034664 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x8d
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _08034668
	cmp r0, #1
	beq _08034694
	b _080346BC
	.align 2, 0
_08034664: .4byte gCurTask
_08034668:
	ldr r2, _0803468C @ =0x0300007C
	adds r3, r1, r2
	movs r6, #0
	ldrsh r0, [r3, r6]
	subs r0, #0x78
	ldr r2, _08034690 @ =gCamera
	movs r6, #0
	ldrsh r1, [r2, r6]
	cmp r0, r1
	bgt _080346BC
	ldrh r0, [r3]
	adds r1, r0, #0
	subs r1, #0x78
	strh r1, [r2, #0x18]
	adds r0, #0x78
	strh r0, [r2, #0x1a]
	movs r0, #1
	b _080346BA
	.align 2, 0
_0803468C: .4byte 0x0300007C
_08034690: .4byte gCamera
_08034694:
	ldr r0, _08034704 @ =0x0300007E
	adds r2, r1, r0
	movs r1, #0
	ldrsh r3, [r2, r1]
	adds r0, r3, #0
	subs r0, #0x40
	ldr r1, _08034708 @ =gCamera
	movs r6, #2
	ldrsh r1, [r1, r6]
	cmp r0, r1
	bgt _080346BC
	ldrh r1, [r2]
	adds r1, #0xa0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r3, #0
	bl sub_80174DC
	movs r0, #2
_080346BA:
	strb r0, [r4]
_080346BC:
	ldr r2, _08034708 @ =gCamera
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	adds r0, r5, #0
	adds r0, #0x7c
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r0, #0x78
	cmp r1, r0
	bne _080346FE
	movs r6, #0x16
	ldrsh r1, [r2, r6]
	adds r0, r5, #0
	adds r0, #0x7e
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0xa0
	cmp r1, r0
	bne _080346FE
	adds r1, r5, #0
	adds r1, #0x8d
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r5, #0x78]
	ldr r0, _0803470C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08034710 @ =sub_8034718
	str r0, [r1, #8]
	ldr r1, _08034714 @ =gUnknown_03005040
	movs r0, #0x14
	strb r0, [r1, #1]
_080346FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034704: .4byte 0x0300007E
_08034708: .4byte gCamera
_0803470C: .4byte gCurTask
_08034710: .4byte sub_8034718
_08034714: .4byte gUnknown_03005040

	thumb_func_start sub_8034718
sub_8034718: @ 0x08034718
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080347DC @ =gCurTask
	mov sl, r0
	ldr r4, [r0]
	ldrh r5, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r1, _080347E0 @ =0x0300000C
	adds r0, r5, r1
	ldr r2, _080347E4 @ =0x0300003C
	adds r2, r2, r5
	mov sb, r2
	ldr r1, [r6, #0x6c]
	ldr r2, [r6, #0x74]
	adds r1, r1, r2
	str r1, [r6, #0x6c]
	ldr r2, [r6, #0x70]
	ldr r3, [r6, #0x78]
	adds r2, r2, r3
	str r2, [r6, #0x70]
	ldr r7, _080347E8 @ =0x0300007C
	adds r3, r5, r7
	asrs r1, r1, #8
	ldrh r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r7, #2
	adds r3, r5, r7
	asrs r2, r2, #8
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r7, #2
	adds r3, r5, r7
	strh r1, [r3]
	ldr r3, _080347EC @ =0x03000082
	strh r2, [r3, r5]
	ldrh r3, [r4, #6]
	ldr r4, _080347E0 @ =0x0300000C
	adds r3, r3, r4
	ldr r7, _080347F0 @ =gCamera
	mov r8, r7
	mov r4, r8
	ldrh r4, [r4]
	mov ip, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r7, ip
	subs r1, r1, r7
	strh r1, [r3, #0x16]
	mov r4, r8
	ldrh r1, [r4, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r1
	strh r2, [r3, #0x18]
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r7, sl
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r2, _080347E0 @ =0x0300000C
	adds r1, r0, r2
	ldr r3, _080347E4 @ =0x0300003C
	adds r2, r0, r3
	ldrh r0, [r1, #0x16]
	strh r0, [r2, #0x16]
	ldrh r3, [r1, #0x18]
	strh r3, [r2, #0x18]
	ldrh r1, [r2, #0xa]
	ldr r0, _080347F4 @ =0x000002B6
	cmp r1, r0
	bne _080347C2
	subs r0, r3, #3
	strh r0, [r2, #0x18]
_080347C2:
	bl sub_80343E0
	ldr r7, _080347F8 @ =0x0300008D
	adds r4, r5, r7
	ldrb r0, [r4]
	cmp r0, #1
	beq _08034824
	cmp r0, #1
	bgt _080347FC
	cmp r0, #0
	beq _08034806
	b _080348FC
	.align 2, 0
_080347DC: .4byte gCurTask
_080347E0: .4byte 0x0300000C
_080347E4: .4byte 0x0300003C
_080347E8: .4byte 0x0300007C
_080347EC: .4byte 0x03000082
_080347F0: .4byte gCamera
_080347F4: .4byte 0x000002B6
_080347F8: .4byte 0x0300008D
_080347FC:
	cmp r0, #2
	beq _08034848
	cmp r0, #3
	beq _08034898
	b _080348FC
_08034806:
	ldr r1, [r6, #0x70]
	ldr r0, _0803481C @ =0x00001FFF
	cmp r1, r0
	ble _080348FC
	adds r0, #1
	str r0, [r6, #0x70]
	ldr r0, _08034820 @ =0xFFFFFF00
	str r0, [r6, #0x74]
	adds r0, #0xf0
	str r0, [r6, #0x78]
	b _0803483A
	.align 2, 0
_0803481C: .4byte 0x00001FFF
_08034820: .4byte 0xFFFFFF00
_08034824:
	ldr r0, [r6, #0x6c]
	cmp r0, #0
	bgt _080348FC
	movs r0, #0
	str r0, [r6, #0x6c]
	str r0, [r6, #0x74]
	str r0, [r6, #0x78]
	ldr r2, _08034844 @ =0x03000084
	adds r1, r5, r2
	movs r0, #4
	strh r0, [r1]
_0803483A:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _080348FC
	.align 2, 0
_08034844: .4byte 0x03000084
_08034848:
	ldr r3, _08034888 @ =0x03000084
	adds r2, r5, r3
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080348FC
	ldr r7, _0803488C @ =0x0300005C
	adds r1, r5, r7
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08034890 @ =0x0300005D
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08034894 @ =0x03000088
	adds r0, r5, r1
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r3, #6
	adds r0, r5, r3
	strh r1, [r0]
	movs r0, #0x40
	strh r0, [r2]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	bl sub_8035010
	b _080348FC
	.align 2, 0
_08034888: .4byte 0x03000084
_0803488C: .4byte 0x0300005C
_08034890: .4byte 0x0300005D
_08034894: .4byte 0x03000088
_08034898:
	ldr r7, _0803490C @ =0x03000084
	adds r2, r5, r7
	ldrh r0, [r2]
	cmp r0, #0
	beq _080348A6
	subs r0, #1
	strh r0, [r2]
_080348A6:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	ldr r7, _08034910 @ =0x0300005C
	adds r3, r5, r7
	cmp r0, #0
	beq _080348C4
	movs r0, #0
	strb r0, [r3]
	adds r7, #1
	adds r1, r5, r7
	movs r0, #0xff
	strb r0, [r1]
_080348C4:
	ldrb r0, [r3]
	cmp r0, #0
	bne _080348FC
	ldrh r0, [r2]
	cmp r0, #0
	bne _080348FC
	movs r0, #0x30
	rsbs r0, r0, #0
	str r0, [r6, #0x74]
	ldr r0, _08034914 @ =0x0300008C
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0
	strb r1, [r4]
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _08034918 @ =sub_803491C
	str r0, [r1, #8]
	mov r3, r8
	ldrh r0, [r3, #0x14]
	subs r0, #0x50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x16
	ldrsh r1, [r3, r4]
	bl sub_80174DC
_080348FC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803490C: .4byte 0x03000084
_08034910: .4byte 0x0300005C
_08034914: .4byte 0x0300008C
_08034918: .4byte sub_803491C

	thumb_func_start sub_803491C
sub_803491C: @ 0x0803491C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08034A1C @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08034A20 @ =0x0300000C
	adds r1, r1, r5
	mov r8, r1
	ldr r2, _08034A24 @ =0x0300003C
	adds r2, r2, r5
	mov sb, r2
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x70]
	ldr r1, [r4, #0x78]
	adds r0, r0, r1
	str r0, [r4, #0x70]
	ldr r3, _08034A28 @ =0x03000088
	adds r6, r5, r3
	ldrh r1, [r6]
	subs r1, #4
	ldr r2, _08034A2C @ =0x000003FF
	ands r1, r2
	strh r1, [r6]
	ldr r0, _08034A30 @ =0x000001FF
	ands r0, r1
	movs r7, #0x80
	lsls r7, r7, #1
	cmp r0, r7
	bne _08034980
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	mov r3, r8
	str r0, [r3, #0x10]
	mov r3, sb
	ldr r0, [r3, #0x10]
	eors r0, r1
	str r0, [r3, #0x10]
_08034980:
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r0, r0, r7
	lsls r0, r0, #1
	ldr r3, _08034A34 @ =gSineTable
	ands r0, r2
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08034A38 @ =0x0300007C
	adds r2, r5, r0
	ldr r0, [r4, #0x6c]
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, _08034A3C @ =0x0300007E
	adds r2, r5, r0
	ldr r0, [r4, #0x70]
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	asrs r1, r1, #0x1d
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r1, _08034A40 @ =0x03000080
	adds r0, r5, r1
	mov r1, ip
	strh r1, [r0]
	ldr r1, _08034A44 @ =0x03000082
	adds r0, r5, r1
	strh r2, [r0]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080349E6
	movs r1, #0xff
_080349E6:
	lsls r0, r1, #0x10
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	lsrs r1, r0, #0x10
	adds r3, #0x8a
	adds r0, r5, r3
	strh r1, [r0]
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	lsls r0, r2, #0x10
	asrs r7, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_80342A0
	ldr r2, _08034A48 @ =0x03000086
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08034A4C
	bl sub_8034B7C
	b _08034B6C
	.align 2, 0
_08034A1C: .4byte gCurTask
_08034A20: .4byte 0x0300000C
_08034A24: .4byte 0x0300003C
_08034A28: .4byte 0x03000088
_08034A2C: .4byte 0x000003FF
_08034A30: .4byte 0x000001FF
_08034A34: .4byte gSineTable
_08034A38: .4byte 0x0300007C
_08034A3C: .4byte 0x0300007E
_08034A40: .4byte 0x03000080
_08034A44: .4byte 0x03000082
_08034A48: .4byte 0x03000086
_08034A4C:
	mov r0, sl
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	ldr r2, _08034AD4 @ =0x0300000C
	adds r1, r1, r2
	ldr r2, _08034AD8 @ =gCamera
	ldrh r0, [r2]
	subs r0, r6, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r0, _08034ADC @ =0x0300003C
	adds r1, r3, r0
	adds r0, #0x20
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08034A8C
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08034A8C
	movs r0, #0
	strb r0, [r2]
	ldr r2, _08034AE0 @ =0x0300005D
	adds r1, r3, r2
	movs r0, #0xff
	strb r0, [r1]
_08034A8C:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	ldr r0, _08034AE4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r3, _08034AD4 @ =0x0300000C
	adds r1, r0, r3
	adds r3, #0x30
	adds r2, r0, r3
	ldrh r0, [r1, #0x16]
	movs r5, #0
	strh r0, [r2, #0x16]
	ldrh r3, [r1, #0x18]
	strh r3, [r2, #0x18]
	ldrh r1, [r2, #0xa]
	ldr r0, _08034AE8 @ =0x000002B6
	cmp r1, r0
	bne _08034ABC
	subs r0, r3, #3
	strh r0, [r2, #0x18]
_08034ABC:
	bl sub_80343E0
	adds r2, r4, #0
	adds r2, #0x8d
	ldrb r0, [r2]
	cmp r0, #1
	beq _08034B1C
	cmp r0, #1
	bgt _08034AEC
	cmp r0, #0
	beq _08034AF6
	b _08034B6C
	.align 2, 0
_08034AD4: .4byte 0x0300000C
_08034AD8: .4byte gCamera
_08034ADC: .4byte 0x0300003C
_08034AE0: .4byte 0x0300005D
_08034AE4: .4byte gCurTask
_08034AE8: .4byte 0x000002B6
_08034AEC:
	cmp r0, #2
	beq _08034B36
	cmp r0, #3
	beq _08034B4E
	b _08034B6C
_08034AF6:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r3, _08034B14 @ =0xFFFFFEFF
	adds r1, r3, #0
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _08034B18 @ =0x01FF0000
	cmp r1, r0
	bhi _08034B6C
	str r5, [r4, #0x74]
	ldrb r0, [r2]
	adds r0, #1
	b _08034B6A
	.align 2, 0
_08034B14: .4byte 0xFFFFFEFF
_08034B18: .4byte 0x01FF0000
_08034B1C:
	adds r0, r4, #0
	adds r0, #0x88
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bgt _08034B6C
	movs r0, #0xc0
	str r0, [r4, #0x74]
	ldrb r0, [r2]
	adds r0, #1
	b _08034B6A
_08034B36:
	adds r0, r4, #0
	adds r0, #0x88
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bgt _08034B6C
	str r5, [r4, #0x74]
	ldrb r0, [r2]
	adds r0, #1
	b _08034B6A
_08034B4E:
	adds r0, r4, #0
	adds r0, #0x88
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r1, #0
	beq _08034B62
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _08034B6C
_08034B62:
	movs r0, #0xc0
	rsbs r0, r0, #0
	str r0, [r4, #0x74]
	movs r0, #0
_08034B6A:
	strb r0, [r2]
_08034B6C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8034B7C
sub_8034B7C: @ 0x08034B7C
	push {r4, r5, r6, lr}
	ldr r0, _08034C50 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r3, r4
	ldr r0, _08034C54 @ =0x0300000C
	adds r6, r3, r0
	ldr r1, _08034C58 @ =0x0300008D
	adds r0, r3, r1
	movs r1, #0
	strb r1, [r0]
	ldr r5, _08034C5C @ =0x03000084
	adds r2, r3, r5
	movs r0, #0x3c
	strh r0, [r2]
	str r1, [r4, #0x74]
	str r1, [r4, #0x78]
	ldr r1, _08034C60 @ =0x03000088
	adds r0, r3, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r5, _08034C64 @ =0x000003FF
	adds r1, r5, #0
	ldr r5, _08034C68 @ =gSineTable
	ands r0, r1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1d
	lsls r0, r0, #8
	ldr r1, [r4, #0x70]
	adds r1, r1, r0
	str r1, [r4, #0x70]
	ldr r0, _08034C6C @ =0x0300005C
	adds r1, r3, r0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08034C70 @ =0x0300005D
	adds r3, r3, r1
	movs r0, #0xff
	strb r0, [r3]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r0, [r6, #0x10]
	ldr r1, _08034C74 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08034C78 @ =gUnknown_03005A20
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _08034C0C
	ldr r2, _08034C7C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08034C80 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08034C84 @ =gUnknown_03001B30
	strh r3, [r0, #0xa]
	ldr r0, _08034C88 @ =gUnknown_030011A8
	strh r3, [r0]
	strh r3, [r0, #4]
_08034C0C:
	ldr r1, _08034C8C @ =gUnknown_03005030
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _08034C90 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _08034C3E
	ldr r0, _08034C94 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08034C3E
	ldr r1, _08034C98 @ =gUnknown_03005024
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08034C3E:
	bl sub_8034CA0
	ldr r0, _08034C50 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08034C9C @ =sub_8034CA0
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034C50: .4byte gCurTask
_08034C54: .4byte 0x0300000C
_08034C58: .4byte 0x0300008D
_08034C5C: .4byte 0x03000084
_08034C60: .4byte 0x03000088
_08034C64: .4byte 0x000003FF
_08034C68: .4byte gSineTable
_08034C6C: .4byte 0x0300005C
_08034C70: .4byte 0x0300005D
_08034C74: .4byte 0xFFFFFE7F
_08034C78: .4byte gUnknown_03005A20
_08034C7C: .4byte gDispCnt
_08034C80: .4byte 0x00007FFF
_08034C84: .4byte gUnknown_03001B30
_08034C88: .4byte gUnknown_030011A8
_08034C8C: .4byte gUnknown_03005030
_08034C90: .4byte 0x0000C350
_08034C94: .4byte gGameMode
_08034C98: .4byte gUnknown_03005024
_08034C9C: .4byte sub_8034CA0

	thumb_func_start sub_8034CA0
sub_8034CA0: @ 0x08034CA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _08034D94 @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r2, _08034D98 @ =0x0300000C
	adds r2, r2, r6
	mov sb, r2
	ldr r3, _08034D9C @ =0x0300003C
	adds r7, r6, r3
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, [r4, #0x70]
	ldr r2, [r4, #0x78]
	adds r1, r1, r2
	str r1, [r4, #0x70]
	adds r3, #0x40
	adds r2, r6, r3
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp]
	ldr r2, _08034DA0 @ =0x0300007E
	adds r0, r6, r2
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	mov sl, r2
	ldr r1, _08034DA4 @ =0x03000080
	adds r0, r6, r1
	strh r3, [r0]
	adds r1, #2
	adds r0, r6, r1
	strh r2, [r0]
	ldr r0, _08034DA8 @ =0x03000084
	adds r5, r6, r0
	ldrh r1, [r5]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08034D18
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_8034EE0
_08034D18:
	mov r0, sb
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r1, _08034D94 @ =gCurTask
	ldr r3, [r1]
	ldrh r1, [r3, #6]
	ldr r2, _08034D98 @ =0x0300000C
	adds r1, r1, r2
	ldr r0, _08034DAC @ =gCamera
	mov r8, r0
	ldrh r2, [r0]
	mov ip, r2
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	subs r0, r0, r2
	strh r0, [r1, #0x16]
	mov r0, r8
	ldrh r0, [r0, #2]
	mov ip, r0
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	subs r0, r0, r2
	strh r0, [r1, #0x18]
	ldrh r0, [r3, #6]
	ldr r3, _08034D98 @ =0x0300000C
	adds r1, r0, r3
	adds r3, #0x30
	adds r2, r0, r3
	ldrh r0, [r1, #0x16]
	strh r0, [r2, #0x16]
	ldrh r1, [r1, #0x18]
	strh r1, [r2, #0x18]
	ldrh r0, [r2, #0xa]
	ldr r3, _08034DB0 @ =0x000002B6
	mov sl, r3
	cmp r0, sl
	bne _08034D74
	subs r0, r1, #3
	strh r0, [r2, #0x18]
_08034D74:
	mov r0, sb
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _08034DB4 @ =0x0300008D
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #1
	beq _08034E0C
	cmp r0, #1
	bgt _08034DB8
	cmp r0, #0
	beq _08034DC2
	b _08034EBA
	.align 2, 0
_08034D94: .4byte gCurTask
_08034D98: .4byte 0x0300000C
_08034D9C: .4byte 0x0300003C
_08034DA0: .4byte 0x0300007E
_08034DA4: .4byte 0x03000080
_08034DA8: .4byte 0x03000084
_08034DAC: .4byte gCamera
_08034DB0: .4byte 0x000002B6
_08034DB4: .4byte 0x0300008D
_08034DB8:
	cmp r0, #2
	beq _08034E2A
	cmp r0, #3
	beq _08034E80
	b _08034EBA
_08034DC2:
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08034EBA
	movs r0, #0x5a
	strh r0, [r5]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x40]
	bl VramFree
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7, #4]
	mov r1, sl
	strh r1, [r7, #0xa]
	ldr r2, _08034E04 @ =0x0300005C
	adds r1, r6, r2
	movs r0, #4
	strb r0, [r1]
	ldr r3, _08034E08 @ =0x0300005D
	adds r1, r6, r3
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	b _08034EBA
	.align 2, 0
_08034E04: .4byte 0x0300005C
_08034E08: .4byte 0x0300005D
_08034E0C:
	ldr r0, [r4, #0x78]
	adds r0, #3
	str r0, [r4, #0x78]
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08034EBA
	movs r0, #0x1e
	strh r0, [r5]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08034EBA
_08034E2A:
	ldr r0, [r4, #0x78]
	subs r0, #0x18
	str r0, [r4, #0x78]
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08034EBA
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0x74]
	movs r0, #0x40
	rsbs r0, r0, #0
	str r0, [r4, #0x78]
	movs r0, #1
	strh r0, [r5]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08034E78 @ =0x0300005C
	adds r1, r6, r0
	movs r0, #6
	strb r0, [r1]
	ldr r2, _08034E7C @ =0x0300005D
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	mov r3, sb
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08034EBA
	.align 2, 0
_08034E78: .4byte 0x0300005C
_08034E7C: .4byte 0x0300005D
_08034E80:
	ldr r1, [r4, #0x6c]
	movs r0, #0x98
	lsls r0, r0, #9
	cmp r1, r0
	ble _08034EBA
	ldr r2, _08034ECC @ =gUnknown_03005A0C
	ldr r1, _08034ED0 @ =gUnknown_084ADEA8
	ldr r0, _08034ED4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2]
	movs r0, #0
	mov r2, r8
	strh r0, [r2, #0x14]
	ldrh r0, [r1, #0x1e]
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #0x1c]
	strh r0, [r2, #0x1a]
	ldr r1, _08034ED8 @ =gUnknown_03005040
	movs r0, #0x34
	strb r0, [r1, #1]
	ldr r3, _08034EDC @ =gCurTask
	ldr r0, [r3]
	bl TaskDestroy
_08034EBA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034ECC: .4byte gUnknown_03005A0C
_08034ED0: .4byte gUnknown_084ADEA8
_08034ED4: .4byte gCurrentLevel
_08034ED8: .4byte gUnknown_03005040
_08034EDC: .4byte gCurTask

	thumb_func_start sub_8034EE0
sub_8034EE0: @ 0x08034EE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _08034FE8 @ =gUnknown_03004C58
	mov sb, r0
	ldr r0, [r0]
	ldr r7, _08034FEC @ =0x00196225
	muls r0, r7, r0
	ldr r1, _08034FF0 @ =0x3C6EF35F
	mov sl, r1
	add r0, sl
	mov r2, sb
	str r0, [r2]
	movs r4, #7
	ands r4, r0
	ldr r0, _08034FF4 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	ldr r2, _08034FF8 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08034FFC @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _08035000 @ =sub_80177EC
	str r0, [sp]
	mov r0, r8
	bl sub_801769C
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r1, r3
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r0, r5, #8
	str r0, [r3, #0x30]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov ip, r6
	lsls r0, r6, #8
	str r0, [r3, #0x34]
	mov r2, r8
	str r2, [r3, #0x10]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r3, #0x1a]
	movs r0, #5
	strh r0, [r3, #0x3e]
	ldr r6, _08035004 @ =0x03000040
	adds r1, r1, r6
	movs r0, #0x20
	strh r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	adds r4, r0, #0
	muls r4, r7, r4
	add r4, sl
	str r4, [r1]
	ldr r2, _08035008 @ =gSineTable
	mov r8, r2
	ldr r1, _0803500C @ =0x000001FF
	ands r1, r4
	lsls r0, r1, #1
	add r0, r8
	movs r6, #0
	ldrsh r2, [r0, r6]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x3a]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	add r1, r8
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x38]
	adds r1, r4, #0
	muls r1, r7, r1
	add r1, sl
	mov r6, sb
	str r1, [r6]
	movs r0, #0x3f
	ands r0, r1
	adds r5, r5, r0
	subs r5, #0x20
	lsls r5, r5, #8
	movs r0, #0xfc
	lsls r0, r0, #0xe
	ands r1, r0
	asrs r1, r1, #0x10
	mov r0, ip
	subs r6, r0, r1
	lsls r6, r6, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8017540
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034FE8: .4byte gUnknown_03004C58
_08034FEC: .4byte 0x00196225
_08034FF0: .4byte 0x3C6EF35F
_08034FF4: .4byte gUnknown_080BB434
_08034FF8: .4byte gUnknown_080BB41C
_08034FFC: .4byte gUnknown_080BB42C
_08035000: .4byte sub_80177EC
_08035004: .4byte 0x03000040
_08035008: .4byte gSineTable
_0803500C: .4byte 0x000001FF

	thumb_func_start sub_8035010
sub_8035010: @ 0x08035010
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803527C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov sl, r0
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r0, r0, r5
	mov sb, r0
	ldr r0, _08035280 @ =sub_80352C0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08035284 @ =sub_8035818
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	adds r2, r4, r5
	ldr r1, _08035288 @ =0x0300007C
	add r1, sl
	mov r3, sb
	ldr r0, [r3, #0x6c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	movs r5, #0
	strh r0, [r2, #0x3c]
	ldr r1, _0803528C @ =0x0300007E
	add r1, sl
	ldr r0, [r3, #0x70]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x3e]
	movs r0, #0x40
	strh r0, [r2, #0x30]
	adds r7, r2, #0
	movs r0, #2
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _08035290 @ =0x000002AB
	strh r0, [r7, #0xa]
	ldr r0, _08035294 @ =0x03000020
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r2, _08035298 @ =0x03000021
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _0803529C @ =0x03000022
	adds r1, r4, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080352A0 @ =0x03000025
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	movs r6, #0
	movs r2, #0
	mov r8, r2
	adds r3, #0x5a
	add r3, sl
	str r3, [sp, #4]
	ldr r0, _0803528C @ =0x0300007E
	add r0, sl
	str r0, [sp, #8]
_080350BE:
	movs r1, #0x84
	lsls r1, r1, #6
	adds r0, r1, #0
	adds r2, r6, #0
	orrs r2, r0
	ldr r3, _08035284 @ =sub_8035818
	str r3, [sp]
	ldr r0, _080352A4 @ =sub_8035354
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r4, r0
	mov r1, sb
	adds r1, #0x7c
	mov r3, sb
	ldr r0, [r3, #0x6c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x3c]
	mov r1, sb
	adds r1, #0x7e
	ldr r0, [r3, #0x70]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x3e]
	strh r5, [r2, #0x34]
	strh r5, [r2, #0x36]
	ldr r1, _080352A8 @ =0x03000040
	adds r0, r4, r1
	strb r6, [r0]
	movs r3, #0x40
	strh r3, [r2, #0x30]
	adds r7, r2, #0
	movs r0, #4
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _08035290 @ =0x000002AB
	strh r0, [r7, #0xa]
	ldr r2, _08035294 @ =0x03000020
	adds r1, r4, r2
	movs r0, #2
	strb r0, [r1]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r3, _08035298 @ =0x03000021
	adds r1, r4, r3
	subs r0, #3
	mov sl, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0803529C @ =0x03000022
	adds r0, r4, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r3, #4
	adds r4, r4, r3
	mov r0, r8
	strb r0, [r4]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r7, #0x10]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _080350BE
	ldr r0, _080352AC @ =sub_80354F4
	ldr r2, _080352B0 @ =0x00002104
	ldr r3, _08035284 @ =sub_8035818
	str r3, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r4, r0
	mov r1, sb
	ldr r0, [r1, #0x6c]
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	ldrh r3, [r3]
	adds r0, r0, r3
	movs r1, #0
	mov r8, r1
	movs r5, #0
	strh r0, [r2, #0x3c]
	mov r3, sb
	ldr r0, [r3, #0x70]
	asrs r0, r0, #8
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x3e]
	strh r5, [r2, #0x34]
	strh r5, [r2, #0x36]
	movs r3, #0x40
	strh r3, [r2, #0x30]
	adds r7, r2, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _080352B4 @ =0x000002AD
	strh r0, [r7, #0xa]
	ldr r1, _08035294 @ =0x03000020
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r3, _08035298 @ =0x03000021
	adds r1, r4, r3
	ldrb r0, [r1]
	mov r2, sl
	orrs r0, r2
	strb r0, [r1]
	adds r3, #1
	adds r0, r4, r3
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, _080352A0 @ =0x03000025
	adds r4, r4, r2
	mov r3, r8
	strb r3, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	ldr r0, _080352B8 @ =sub_8035768
	ldr r2, _080352BC @ =0x00002105
	ldr r3, _08035284 @ =sub_8035818
	str r3, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r4, r0
	mov r1, sb
	ldr r0, [r1, #0x6c]
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	ldrh r3, [r3]
	adds r0, r0, r3
	strh r0, [r2, #0x3c]
	ldr r0, [r1, #0x70]
	asrs r0, r0, #8
	ldr r1, [sp, #8]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x3e]
	movs r3, #0x40
	strh r3, [r2, #0x30]
	adds r7, r2, #0
	movs r0, #4
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r5, [r7, #8]
	ldr r0, _08035290 @ =0x000002AB
	strh r0, [r7, #0xa]
	ldr r1, _08035294 @ =0x03000020
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x1c]
	ldr r3, _08035298 @ =0x03000021
	adds r1, r4, r3
	ldrb r0, [r1]
	mov r2, sl
	orrs r0, r2
	strb r0, [r1]
	adds r3, #1
	adds r0, r4, r3
	movs r1, #0x10
	strb r1, [r0]
	ldr r2, _080352A0 @ =0x03000025
	adds r4, r4, r2
	mov r3, r8
	strb r3, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803527C: .4byte gCurTask
_08035280: .4byte sub_80352C0
_08035284: .4byte sub_8035818
_08035288: .4byte 0x0300007C
_0803528C: .4byte 0x0300007E
_08035290: .4byte 0x000002AB
_08035294: .4byte 0x03000020
_08035298: .4byte 0x03000021
_0803529C: .4byte 0x03000022
_080352A0: .4byte 0x03000025
_080352A4: .4byte sub_8035354
_080352A8: .4byte 0x03000040
_080352AC: .4byte sub_80354F4
_080352B0: .4byte 0x00002104
_080352B4: .4byte 0x000002AD
_080352B8: .4byte sub_8035768
_080352BC: .4byte 0x00002105

	thumb_func_start sub_80352C0
sub_80352C0: @ 0x080352C0
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r0, _0803534C @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	adds r4, r3, #0
	ldrh r0, [r4, #0x30]
	cmp r0, #0
	beq _080352EA
	subs r0, #1
	strh r0, [r4, #0x30]
	ldrh r0, [r4, #0x30]
	lsls r0, r0, #8
	lsrs r5, r0, #0xb
_080352EA:
	lsls r1, r5, #0x10
	rsbs r1, r1, #0
	adds r0, r7, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r3, #0x3c]
	adds r0, r7, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r3, #0x3e]
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldr r2, _08035350 @ =gCamera
	ldrh r0, [r2]
	movs r5, #0x3c
	ldrsh r6, [r3, r5]
	subs r0, r6, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r2, #2]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #0
	adds r0, #0x86
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08035346
	lsls r0, r6, #8
	adds r1, r5, #0
	adds r1, #0x14
	lsls r1, r1, #8
	bl sub_8017540
	ldr r0, _0803534C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08035346:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803534C: .4byte gCurTask
_08035350: .4byte gCamera

	thumb_func_start sub_8035354
sub_8035354: @ 0x08035354
	push {r4, r5, r6, lr}
	ldr r0, _080353A0 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	ldrh r0, [r3]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	adds r4, r5, #0
	ldrh r0, [r4, #0x30]
	subs r0, #1
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080353A4
	adds r1, #0x40
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r2, r0, #1
	adds r1, r2, #0
	adds r1, #0x15
	ldrh r0, [r4, #0x30]
	lsls r0, r0, #8
	asrs r0, r0, #6
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	subs r0, #0x23
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _080353C0
	.align 2, 0
_080353A0: .4byte gCurTask
_080353A4:
	ldr r1, _08035400 @ =0x03000040
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r1, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x11
	movs r2, #0x8c
	lsls r2, r2, #0xe
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	adds r1, #8
	strh r1, [r4, #0x30]
	ldr r0, _08035404 @ =sub_803540C
	str r0, [r3, #8]
_080353C0:
	adds r0, r6, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r5, #0x3c]
	adds r0, r6, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r5, #0x3e]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldr r3, _08035408 @ =gCamera
	ldrh r2, [r3]
	movs r6, #0x3c
	ldrsh r0, [r5, r6]
	subs r0, r0, r2
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035400: .4byte 0x03000040
_08035404: .4byte sub_803540C
_08035408: .4byte gCamera

	thumb_func_start sub_803540C
sub_803540C: @ 0x0803540C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080354D8 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r1, r2
	ldrh r0, [r0]
	adds r0, r0, r2
	ldrh r4, [r0, #6]
	adds r2, #0x40
	adds r1, r1, r2
	ldrb r0, [r1]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #0x11
	movs r3, #0xd0
	lsls r3, r3, #0xc
	adds r1, r1, r3
	asrs r1, r1, #0x10
	ldr r5, _080354DC @ =gSineTable
	ldr r0, _080354E0 @ =0x0300008A
	adds r3, r4, r0
	movs r2, #0
	ldrsh r0, [r3, r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r1, #0
	muls r2, r0, r2
	lsls r2, r2, #2
	ldrh r3, [r3]
	ldr r0, _080354E4 @ =0x000001FF
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	lsls r0, r0, #2
	ldr r5, _080354E8 @ =0x03000080
	adds r1, r4, r5
	ldrh r3, [r1]
	strh r3, [r6, #0x3c]
	adds r5, #2
	adds r1, r4, r5
	ldrh r1, [r1]
	strh r1, [r6, #0x3e]
	asrs r2, r2, #0x10
	adds r2, r2, r3
	asrs r0, r0, #0x10
	adds r0, #0x16
	adds r1, r1, r0
	ldr r3, _080354EC @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	subs r0, r7, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, _080354F0 @ =0x03000086
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #3
	ble _080354CE
	ldrh r0, [r6, #0x30]
	subs r0, #1
	strh r0, [r6, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080354CE
	lsls r0, r7, #8
	lsls r1, r5, #8
	bl sub_8017540
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
_080354CE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080354D8: .4byte gCurTask
_080354DC: .4byte gSineTable
_080354E0: .4byte 0x0300008A
_080354E4: .4byte 0x000001FF
_080354E8: .4byte 0x03000080
_080354EC: .4byte gCamera
_080354F0: .4byte 0x03000086

	thumb_func_start sub_80354F4
sub_80354F4: @ 0x080354F4
	push {r4, r5, r6, lr}
	ldr r0, _08035534 @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r3, r0, r1
	adds r4, r5, #0
	ldrh r0, [r4, #0x30]
	subs r0, #1
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08035538
	ldrh r0, [r4, #0x30]
	lsls r0, r0, #8
	asrs r0, r0, #6
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #8
	movs r1, #0x63
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	b _08035542
	.align 2, 0
_08035534: .4byte gCurTask
_08035538:
	movs r1, #0x63
	movs r0, #0x3c
	strh r0, [r4, #0x30]
	ldr r0, _08035580 @ =sub_8035588
	str r0, [r2, #8]
_08035542:
	adds r0, r3, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r5, #0x3c]
	adds r0, r3, #0
	adds r0, #0x82
	ldrh r0, [r0]
	strh r0, [r5, #0x3e]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldr r3, _08035584 @ =gCamera
	ldrh r2, [r3]
	movs r6, #0x3c
	ldrsh r0, [r5, r6]
	subs r0, r0, r2
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035580: .4byte sub_8035588
_08035584: .4byte gCamera

	thumb_func_start sub_8035588
sub_8035588: @ 0x08035588
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08035654 @ =gCurTask
	ldr r5, [r0]
	ldrh r0, [r5, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldrh r0, [r5]
	adds r0, r0, r1
	ldrh r3, [r0, #6]
	adds r1, r3, r1
	str r1, [sp]
	mov sb, r8
	movs r0, #0x4d
	mov sl, r0
	ldr r4, _08035658 @ =gSineTable
	ldr r1, _0803565C @ =0x0300008A
	adds r2, r3, r1
	movs r6, #0
	ldrsh r0, [r2, r6]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	mov r1, sl
	muls r1, r0, r1
	ldrh r2, [r2]
	ldr r0, _08035660 @ =0x000001FF
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r2, sl
	muls r2, r0, r2
	ldr r4, _08035664 @ =0x03000080
	adds r0, r3, r4
	ldrh r4, [r0]
	mov r6, r8
	strh r4, [r6, #0x3c]
	ldr r6, _08035668 @ =0x03000082
	adds r0, r3, r6
	ldrh r0, [r0]
	mov r6, r8
	strh r0, [r6, #0x3e]
	asrs r1, r1, #0xe
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	asrs r2, r2, #0xe
	adds r2, #0x16
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, _0803566C @ =0x03000086
	adds r3, r3, r0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	bgt _080356B0
	ldrh r0, [r5, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	ldr r3, _08035670 @ =gUnknown_03005A20
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _08035674 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803567C
	ldr r3, _08035678 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803567E
	.align 2, 0
_08035654: .4byte gCurTask
_08035658: .4byte gSineTable
_0803565C: .4byte 0x0300008A
_08035660: .4byte 0x000001FF
_08035664: .4byte 0x03000080
_08035668: .4byte 0x03000082
_0803566C: .4byte 0x03000086
_08035670: .4byte gUnknown_03005A20
_08035674: .4byte gUnknown_03005088
_08035678: .4byte gUnknown_03005AB0
_0803567C:
	movs r0, #0
_0803567E:
	cmp r7, #2
	beq _08035686
	cmp r0, #2
	bne _080356B0
_08035686:
	ldr r0, _08035744 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r0, r0, r4
	ldrh r1, [r0, #6]
	ldr r6, _08035748 @ =0x0300003C
	adds r3, r1, r6
	ldr r0, _0803574C @ =0x0300005C
	adds r2, r1, r0
	movs r0, #1
	strb r0, [r2]
	ldr r2, _08035750 @ =0x0300005D
	adds r1, r1, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08035754 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
_080356B0:
	ldr r2, _08035758 @ =gCamera
	ldrh r0, [r2]
	ldr r3, [sp, #4]
	lsls r1, r3, #0x10
	asrs r4, r1, #0x10
	subs r0, r4, r0
	mov r6, sb
	strh r0, [r6, #0x16]
	ldrh r0, [r2, #2]
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x18]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	ldr r0, [sp]
	adds r0, #0x86
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08035732
	mov r3, r8
	ldrh r1, [r3, #0x30]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0803571C
	ldr r2, _0803575C @ =gUnknown_03004C58
	ldr r1, [r2]
	ldr r0, _08035760 @ =0x00196225
	muls r1, r0, r1
	ldr r6, _08035764 @ =0x3C6EF35F
	adds r1, r1, r6
	str r1, [r2]
	movs r0, #0x1f
	ands r0, r1
	adds r0, r4, r0
	subs r0, #0xf
	lsls r0, r0, #8
	movs r2, #0xf8
	lsls r2, r2, #0xd
	ands r1, r2
	asrs r1, r1, #0x10
	adds r1, r5, r1
	subs r1, #0xf
	lsls r1, r1, #8
	bl sub_8017540
_0803571C:
	mov r1, r8
	ldrh r0, [r1, #0x30]
	subs r0, #1
	strh r0, [r1, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08035732
	ldr r0, _08035744 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08035732:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035744: .4byte gCurTask
_08035748: .4byte 0x0300003C
_0803574C: .4byte 0x0300005C
_08035750: .4byte 0x0300005D
_08035754: .4byte 0xFFFFBFFF
_08035758: .4byte gCamera
_0803575C: .4byte gUnknown_03004C58
_08035760: .4byte 0x00196225
_08035764: .4byte 0x3C6EF35F

	thumb_func_start sub_8035768
sub_8035768: @ 0x08035768
	push {r4, r5, r6, lr}
	ldr r0, _080357A0 @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldrh r0, [r2]
	adds r0, r0, r1
	ldrh r6, [r0, #6]
	adds r3, r6, r1
	adds r1, #0x8c
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080357E4
	ldr r0, [r3, #0x74]
	cmp r0, #0
	beq _080357E4
	ldr r1, [r3, #0x6c]
	movs r0, #0x96
	lsls r0, r0, #9
	cmp r1, r0
	ble _080357A4
	adds r0, r2, #0
	bl TaskDestroy
	b _080357E4
	.align 2, 0
_080357A0: .4byte gCurTask
_080357A4:
	ldr r2, [r5, #0x10]
	ldr r0, _080357EC @ =0xFFFFFBFF
	ands r2, r0
	str r2, [r5, #0x10]
	ldr r0, [r3, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	orrs r2, r0
	str r2, [r5, #0x10]
	ldr r0, _080357F0 @ =0x03000080
	adds r4, r6, r0
	ldr r1, _080357F4 @ =0x03000082
	adds r0, r6, r1
	ldrh r1, [r0]
	ldr r3, _080357F8 @ =gCamera
	ldrh r2, [r3]
	movs r6, #0
	ldrsh r0, [r4, r6]
	subs r0, r0, r2
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_080357E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080357EC: .4byte 0xFFFFFBFF
_080357F0: .4byte 0x03000080
_080357F4: .4byte 0x03000082
_080357F8: .4byte gCamera

	thumb_func_start sub_80357FC
sub_80357FC: @ 0x080357FC
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

	thumb_func_start sub_8035818
sub_8035818: @ 0x08035818
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803582C
sub_803582C: @ 0x0803582C
	push {r4, r5, r6, r7, lr}
	ldr r2, _0803586C @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _08035870 @ =gUnknown_03005A20
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _08035874 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803587C
	ldr r3, _08035878 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803587E
	.align 2, 0
_0803586C: .4byte gCurTask
_08035870: .4byte gUnknown_03005A20
_08035874: .4byte gUnknown_03005088
_08035878: .4byte gUnknown_03005AB0
_0803587C:
	movs r0, #0
_0803587E:
	cmp r7, #2
	beq _08035886
	cmp r0, #2
	bne _080358B0
_08035886:
	ldr r0, _080358B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r1, [r0, #6]
	ldr r0, _080358BC @ =0x0300003C
	adds r3, r1, r0
	adds r0, #0x20
	adds r2, r1, r0
	movs r0, #1
	strb r0, [r2]
	ldr r0, _080358C0 @ =0x0300005D
	adds r1, r1, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _080358C4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
_080358B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080358B8: .4byte gCurTask
_080358BC: .4byte 0x0300003C
_080358C0: .4byte 0x0300005D
_080358C4: .4byte 0xFFFFBFFF

	thumb_func_start sub_80358C8
sub_80358C8: @ 0x080358C8
	ldr r0, _080358F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _080358FC @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _080358F4
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080358F4
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08035900 @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_080358F4:
	bx lr
	.align 2, 0
_080358F8: .4byte gCurTask
_080358FC: .4byte 0x0300003C
_08035900: .4byte 0x0300005D

	thumb_func_start sub_8035904
sub_8035904: @ 0x08035904
	ldr r0, _08035928 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r2, _0803592C @ =0x0300000C
	adds r1, r0, r2
	ldr r3, _08035930 @ =0x0300003C
	adds r2, r0, r3
	ldrh r0, [r1, #0x16]
	strh r0, [r2, #0x16]
	ldrh r3, [r1, #0x18]
	strh r3, [r2, #0x18]
	ldrh r1, [r2, #0xa]
	ldr r0, _08035934 @ =0x000002B6
	cmp r1, r0
	bne _08035926
	subs r0, r3, #3
	strh r0, [r2, #0x18]
_08035926:
	bx lr
	.align 2, 0
_08035928: .4byte gCurTask
_0803592C: .4byte 0x0300000C
_08035930: .4byte 0x0300003C
_08035934: .4byte 0x000002B6

	thumb_func_start sub_8035938
sub_8035938: @ 0x08035938
	push {r4, lr}
	ldr r2, _08035960 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08035964 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _08035968 @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035960: .4byte gCurTask
_08035964: .4byte 0x0300000C
_08035968: .4byte gCamera

	thumb_func_start sub_803596C
sub_803596C: @ 0x0803596C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _08035A30 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _08035A34 @ =0x0300000C
	adds r5, r4, r0
	ldr r0, [r5, #0x10]
	ldr r1, _08035A38 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r1, _08035A3C @ =gUnknown_03005A20
	mov r8, r1
	ldr r3, [r1, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _080359B0
	ldr r2, _08035A40 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08035A44 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08035A48 @ =gUnknown_03001B30
	strh r3, [r0, #0xa]
	ldr r0, _08035A4C @ =gUnknown_030011A8
	strh r3, [r0]
	strh r3, [r0, #4]
_080359B0:
	ldr r0, _08035A50 @ =0x03000087
	adds r0, r0, r4
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08035A92
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_800B8B4
	mov r8, r0
	movs r1, #0
	ldr r0, _08035A54 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080359F2
	ldr r3, _08035A58 @ =gUnknown_03005AB0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800B8B4
	adds r1, r0, #0
_080359F2:
	ldr r0, _08035A5C @ =0x0300003C
	adds r2, r4, r0
	mov r0, r8
	cmp r0, #1
	beq _08035A00
	cmp r1, #1
	bne _08035A70
_08035A00:
	ldr r0, _08035A60 @ =0x03000086
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x20
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08035A64 @ =0x0300005C
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08035A68 @ =0x0300005D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _08035A6C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _08035A92
	.align 2, 0
_08035A30: .4byte gCurTask
_08035A34: .4byte 0x0300000C
_08035A38: .4byte 0xFFFFFE7F
_08035A3C: .4byte gUnknown_03005A20
_08035A40: .4byte gDispCnt
_08035A44: .4byte 0x00007FFF
_08035A48: .4byte gUnknown_03001B30
_08035A4C: .4byte gUnknown_030011A8
_08035A50: .4byte 0x03000087
_08035A54: .4byte gUnknown_03005088
_08035A58: .4byte gUnknown_03005AB0
_08035A5C: .4byte 0x0300003C
_08035A60: .4byte 0x03000086
_08035A64: .4byte 0x0300005C
_08035A68: .4byte 0x0300005D
_08035A6C: .4byte 0xFFFFBFFF
_08035A70:
	mov r0, r8
	cmp r0, #2
	beq _08035A7A
	cmp r1, #2
	bne _08035A92
_08035A7A:
	ldr r0, _08035AA0 @ =0x0300005C
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08035AA4 @ =0x0300005D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	ldr r1, _08035AA8 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x10]
_08035A92:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035AA0: .4byte 0x0300005C
_08035AA4: .4byte 0x0300005D
_08035AA8: .4byte 0xFFFFBFFF

	thumb_func_start sub_8035AAC
sub_8035AAC: @ 0x08035AAC
	push {r4, r5, lr}
	ldr r0, _08035B24 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08035B28 @ =0x0300000C
	adds r3, r0, r1
	ldr r5, _08035B2C @ =0x0300003C
	adds r4, r0, r5
	adds r1, #0x7b
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08035B10
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _08035B10
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _08035B10
	ldr r0, _08035B30 @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08035B10
	ldr r0, [r3, #0x10]
	adds r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, _08035B34 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08035B38 @ =gUnknown_03001B30
	ldr r0, _08035B3C @ =0x00003F1F
	strh r0, [r1, #0xa]
	ldr r1, _08035B40 @ =gUnknown_030011A8
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
_08035B10:
	adds r0, r3, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08035B24: .4byte gCurTask
_08035B28: .4byte 0x0300000C
_08035B2C: .4byte 0x0300003C
_08035B30: .4byte gUnknown_03005A20
_08035B34: .4byte gDispCnt
_08035B38: .4byte gUnknown_03001B30
_08035B3C: .4byte 0x00003F1F
_08035B40: .4byte gUnknown_030011A8

	thumb_func_start CreateEntity_Enemy029
CreateEntity_Enemy029: @ 0x08035B44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x18
	ldr r0, _08035B80 @ =gUnknown_03005148
	ldrb r7, [r0]
	cmp r7, #0
	beq _08035B6C
	b _08035CC2
_08035B6C:
	ldr r0, _08035B84 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08035B88
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	b _08035CC2
	.align 2, 0
_08035B80: .4byte gUnknown_03005148
_08035B84: .4byte gGameMode
_08035B88:
	ldr r0, _08035CD4 @ =sub_8035D18
	ldr r1, _08035CD8 @ =sub_8036CC4
	str r1, [sp]
	movs r1, #0x90
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r5, r1
	movs r3, #0
	mov r2, r8
	strh r2, [r1, #4]
	mov r0, sl
	strh r0, [r1, #6]
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #8]
	strb r4, [r1, #9]
	ldr r4, _08035CDC @ =0x03000084
	adds r2, r5, r4
	movs r0, #0x78
	strh r0, [r2]
	ldr r2, _08035CE0 @ =0x03000086
	adds r0, r5, r2
	strb r3, [r0]
	adds r4, #3
	adds r0, r5, r4
	strb r3, [r0]
	adds r2, #7
	adds r0, r5, r2
	strb r3, [r0]
	adds r4, #5
	adds r0, r5, r4
	strb r3, [r0]
	ldr r0, _08035CE4 @ =0x0000C020
	str r0, [r1, #0x6c]
	ldr r0, _08035CE8 @ =0xFFFFD800
	str r0, [r1, #0x70]
	str r7, [r1, #0x74]
	str r7, [r1, #0x78]
	ldr r1, _08035CEC @ =0x03000088
	adds r0, r5, r1
	strh r7, [r0]
	subs r2, #3
	adds r0, r5, r2
	strh r7, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r4, r8
	lsls r4, r4, #8
	mov sb, r4
	add r0, sb
	subs r1, #0xc
	adds r2, r5, r1
	strh r0, [r2]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r4, sl
	lsls r4, r4, #8
	mov sl, r4
	add r0, sl
	ldr r4, _08035CF0 @ =0x0300007E
	adds r1, r5, r4
	strh r0, [r1]
	ldr r0, _08035CF4 @ =0x0300000C
	adds r4, r5, r0
	ldrh r0, [r2]
	strh r0, [r4, #0x16]
	ldrh r0, [r1]
	strh r0, [r4, #0x18]
	movs r0, #0x36
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r7, [r4, #8]
	ldr r0, _08035CF8 @ =0x000002AA
	strh r0, [r4, #0xa]
	ldr r1, _08035CFC @ =0x0300002C
	adds r0, r5, r1
	ldr r3, [sp, #4]
	strb r3, [r0]
	strh r7, [r4, #0x14]
	strh r7, [r4, #0x1c]
	ldr r2, _08035D00 @ =0x0300002D
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08035D04 @ =0x0300002E
	adds r0, r5, r1
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #3
	adds r0, r5, r1
	strb r3, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	str r2, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r1, #0xb
	adds r4, r5, r1
	ldrb r0, [r6]
	lsls r0, r0, #3
	add r0, sb
	strh r0, [r4, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	add r0, sl
	strh r0, [r4, #0x18]
	subs r2, #1
	adds r0, r2, #0
	strb r0, [r6]
	movs r0, #8
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r7, [r4, #8]
	movs r0, #0xaa
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	ldr r1, _08035D08 @ =0x0300005C
	adds r0, r5, r1
	ldr r3, [sp, #4]
	strb r3, [r0]
	strh r7, [r4, #0x14]
	strh r7, [r4, #0x1c]
	ldr r2, _08035D0C @ =0x0300005D
	adds r1, r5, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08035D10 @ =0x0300005E
	adds r0, r5, r1
	movs r2, #0x10
	strb r2, [r0]
	ldr r0, _08035D14 @ =0x03000061
	adds r5, r5, r0
	strb r3, [r5]
	mov r1, r8
	str r1, [r4, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r4, #0x10]
_08035CC2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035CD4: .4byte sub_8035D18
_08035CD8: .4byte sub_8036CC4
_08035CDC: .4byte 0x03000084
_08035CE0: .4byte 0x03000086
_08035CE4: .4byte 0x0000C020
_08035CE8: .4byte 0xFFFFD800
_08035CEC: .4byte 0x03000088
_08035CF0: .4byte 0x0300007E
_08035CF4: .4byte 0x0300000C
_08035CF8: .4byte 0x000002AA
_08035CFC: .4byte 0x0300002C
_08035D00: .4byte 0x0300002D
_08035D04: .4byte 0x0300002E
_08035D08: .4byte 0x0300005C
_08035D0C: .4byte 0x0300005D
_08035D10: .4byte 0x0300005E
_08035D14: .4byte 0x03000061

	thumb_func_start sub_8035D18
sub_8035D18: @ 0x08035D18
	push {r4, r5, r6, lr}
	ldr r0, _08035D38 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x8d
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _08035D3C
	cmp r0, #1
	beq _08035D68
	b _08035D90
	.align 2, 0
_08035D38: .4byte gCurTask
_08035D3C:
	ldr r6, _08035D60 @ =0x0300007C
	adds r2, r1, r6
	movs r1, #0
	ldrsh r0, [r2, r1]
	subs r0, #0x78
	ldr r3, _08035D64 @ =gCamera
	movs r6, #0
	ldrsh r1, [r3, r6]
	cmp r0, r1
	bgt _08035D90
	ldrh r0, [r2]
	subs r0, #0x98
	strh r0, [r3, #0x18]
	ldrh r0, [r2]
	adds r0, #0x98
	strh r0, [r3, #0x1a]
	movs r0, #1
	b _08035D8E
	.align 2, 0
_08035D60: .4byte 0x0300007C
_08035D64: .4byte gCamera
_08035D68:
	ldr r0, _08035DBC @ =0x0300007E
	adds r2, r1, r0
	movs r1, #0
	ldrsh r3, [r2, r1]
	adds r0, r3, #0
	subs r0, #0xe0
	ldr r1, _08035DC0 @ =gCamera
	movs r6, #2
	ldrsh r1, [r1, r6]
	cmp r0, r1
	bgt _08035D90
	ldrh r0, [r2]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, #0
	bl sub_80174DC
	movs r0, #2
_08035D8E:
	strb r0, [r4]
_08035D90:
	adds r1, r5, #0
	adds r1, #0x8d
	ldrb r0, [r1]
	cmp r0, #2
	bne _08035DB4
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08035DC4 @ =0xFFFFFE80
	str r0, [r5, #0x74]
	bl sub_80365AC
	ldr r0, _08035DC8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08035DCC @ =sub_8035DD4
	str r0, [r1, #8]
	ldr r1, _08035DD0 @ =gUnknown_03005040
	movs r0, #0x15
	strb r0, [r1, #1]
_08035DB4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035DBC: .4byte 0x0300007E
_08035DC0: .4byte gCamera
_08035DC4: .4byte 0xFFFFFE80
_08035DC8: .4byte gCurTask
_08035DCC: .4byte sub_8035DD4
_08035DD0: .4byte gUnknown_03005040

	thumb_func_start sub_8035DD4
sub_8035DD4: @ 0x08035DD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08035E88 @ =gCurTask
	mov sb, r0
	ldr r4, [r0]
	ldrh r6, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r1, _08035E8C @ =0x0300000C
	adds r0, r6, r1
	ldr r5, _08035E90 @ =0x0300003C
	adds r5, r5, r6
	mov r8, r5
	ldr r1, [r7, #0x6c]
	ldr r2, [r7, #0x74]
	adds r1, r1, r2
	str r1, [r7, #0x6c]
	ldr r2, [r7, #0x70]
	ldr r3, [r7, #0x78]
	adds r2, r2, r3
	str r2, [r7, #0x70]
	ldr r5, _08035E94 @ =0x0300007C
	adds r3, r6, r5
	asrs r1, r1, #8
	ldrh r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r5, #2
	adds r3, r6, r5
	asrs r2, r2, #8
	ldrh r3, [r3]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, #2
	adds r3, r6, r5
	movs r5, #0
	mov sl, r5
	strh r1, [r3]
	ldr r5, _08035E98 @ =0x03000082
	adds r3, r6, r5
	strh r2, [r3]
	ldrh r3, [r4, #6]
	ldr r4, _08035E8C @ =0x0300000C
	adds r3, r3, r4
	ldr r5, _08035E9C @ =gCamera
	ldrh r4, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r4
	strh r1, [r3, #0x16]
	ldrh r1, [r5, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r1
	strh r2, [r3, #0x18]
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r5, sb
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	ldr r1, _08035E8C @ =0x0300000C
	adds r2, r0, r1
	ldr r4, _08035E90 @ =0x0300003C
	adds r0, r0, r4
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_8035AAC
	ldr r5, _08035EA0 @ =0x0300008D
	adds r3, r6, r5
	ldrb r2, [r3]
	cmp r2, #1
	beq _08035EC4
	cmp r2, #1
	bgt _08035EA4
	cmp r2, #0
	beq _08035EAE
	b _08035F50
	.align 2, 0
_08035E88: .4byte gCurTask
_08035E8C: .4byte 0x0300000C
_08035E90: .4byte 0x0300003C
_08035E94: .4byte 0x0300007C
_08035E98: .4byte 0x03000082
_08035E9C: .4byte gCamera
_08035EA0: .4byte 0x0300008D
_08035EA4:
	cmp r2, #2
	beq _08035EF0
	cmp r2, #3
	beq _08035F28
	b _08035F50
_08035EAE:
	ldr r0, [r7, #0x6c]
	cmp r0, #0
	bgt _08035F50
	str r2, [r7, #0x6c]
	str r2, [r7, #0x74]
	str r2, [r7, #0x78]
	ldr r0, _08035EC0 @ =0x03000084
	adds r1, r6, r0
	b _08035F12
	.align 2, 0
_08035EC0: .4byte 0x03000084
_08035EC4:
	ldr r4, _08035EE4 @ =0x03000084
	adds r1, r6, r4
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08035F50
	ldr r5, _08035EE8 @ =0x0300005C
	adds r0, r6, r5
	strb r2, [r0]
	ldr r0, _08035EEC @ =0x0300005D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	b _08035F16
	.align 2, 0
_08035EE4: .4byte 0x03000084
_08035EE8: .4byte 0x0300005C
_08035EEC: .4byte 0x0300005D
_08035EF0:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08035F50
	ldr r4, _08035F20 @ =0x0300005C
	adds r0, r6, r4
	mov r5, sl
	strb r5, [r0]
	ldr r0, _08035F24 @ =0x0300005D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r4, #0x28
	adds r1, r6, r4
_08035F12:
	movs r0, #0xf
	strh r0, [r1]
_08035F16:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _08035F50
	.align 2, 0
_08035F20: .4byte 0x0300005C
_08035F24: .4byte 0x0300005D
_08035F28:
	ldr r5, _08035F60 @ =0x03000084
	adds r1, r6, r5
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08035F50
	ldr r0, _08035F64 @ =0xFFFFFE00
	str r0, [r7, #0x74]
	ldr r0, _08035F68 @ =0x0300008C
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	mov r1, sl
	strb r1, [r3]
	mov r4, sb
	ldr r1, [r4]
	ldr r0, _08035F6C @ =sub_8035F70
	str r0, [r1, #8]
_08035F50:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035F60: .4byte 0x03000084
_08035F64: .4byte 0xFFFFFE00
_08035F68: .4byte 0x0300008C
_08035F6C: .4byte sub_8035F70

	thumb_func_start sub_8035F70
sub_8035F70: @ 0x08035F70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08035FF0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _08035FF4 @ =0x0300000C
	adds r1, r1, r4
	mov r8, r1
	ldr r3, _08035FF8 @ =0x0300003C
	adds r3, r3, r4
	mov sb, r3
	ldr r1, [r5, #0x6c]
	ldr r0, [r5, #0x74]
	adds r1, r1, r0
	str r1, [r5, #0x6c]
	ldr r0, [r5, #0x70]
	ldr r2, [r5, #0x78]
	adds r0, r0, r2
	str r0, [r5, #0x70]
	ldr r3, _08035FFC @ =0x0300007C
	adds r2, r4, r3
	asrs r1, r1, #8
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, #2
	adds r2, r4, r3
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, #2
	adds r2, r4, r3
	strh r1, [r2]
	adds r3, #2
	adds r2, r4, r3
	strh r0, [r2]
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_803596C
	ldr r0, _08036000 @ =0x03000086
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #3
	ble _08036004
	bl sub_8036150
	b _08036138
	.align 2, 0
_08035FF0: .4byte gCurTask
_08035FF4: .4byte 0x0300000C
_08035FF8: .4byte 0x0300003C
_08035FFC: .4byte 0x0300007C
_08036000: .4byte 0x03000086
_08036004:
	mov r1, sl
	ldr r3, [r1]
	ldrh r1, [r3, #6]
	ldr r0, _08036080 @ =0x0300000C
	adds r1, r1, r0
	ldr r2, _08036084 @ =gCamera
	ldrh r0, [r2]
	subs r0, r6, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	subs r0, r7, r0
	strh r0, [r1, #0x18]
	ldrh r3, [r3, #6]
	ldr r0, _08036088 @ =0x0300003C
	adds r1, r3, r0
	adds r0, #0x20
	adds r2, r3, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08036044
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08036044
	movs r0, #0
	strb r0, [r2]
	ldr r0, _0803608C @ =0x0300005D
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_08036044:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	ldr r0, _08036090 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	ldr r3, _08036080 @ =0x0300000C
	adds r2, r1, r3
	ldr r0, _08036088 @ =0x0300003C
	adds r1, r1, r0
	ldrh r0, [r2, #0x16]
	movs r4, #0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #0x18]
	strh r0, [r1, #0x18]
	bl sub_8035AAC
	adds r2, r5, #0
	adds r2, #0x8d
	ldrb r0, [r2]
	cmp r0, #1
	beq _080360BC
	cmp r0, #1
	bgt _08036094
	cmp r0, #0
	beq _0803609E
	b _08036138
	.align 2, 0
_08036080: .4byte 0x0300000C
_08036084: .4byte gCamera
_08036088: .4byte 0x0300003C
_0803608C: .4byte 0x0300005D
_08036090: .4byte gCurTask
_08036094:
	cmp r0, #2
	beq _080360EE
	cmp r0, #3
	beq _0803610C
	b _08036138
_0803609E:
	ldr r1, [r5, #0x6c]
	ldr r0, _080360B8 @ =0xFFFF4000
	cmp r1, r0
	bgt _08036138
	str r4, [r5, #0x74]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #0x1e
	strh r0, [r1]
	ldrb r0, [r2]
	adds r0, #1
	b _08036136
	.align 2, 0
_080360B8: .4byte 0xFFFF4000
_080360BC:
	adds r1, r5, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08036138
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r5, #0x74]
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	mov r3, r8
	str r0, [r3, #0x10]
	mov r3, sb
	ldr r0, [r3, #0x10]
	orrs r0, r1
	str r0, [r3, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	b _08036136
_080360EE:
	ldr r1, [r5, #0x6c]
	ldr r0, _08036108 @ =0x0000BFFF
	cmp r1, r0
	ble _08036138
	str r4, [r5, #0x74]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #0x1e
	strh r0, [r1]
	ldrb r0, [r2]
	adds r0, #1
	b _08036136
	.align 2, 0
_08036108: .4byte 0x0000BFFF
_0803610C:
	adds r1, r5, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08036138
	ldr r0, _08036148 @ =0xFFFFFE00
	str r0, [r5, #0x74]
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _0803614C @ =0xFFFFFBFF
	ands r0, r1
	mov r3, r8
	str r0, [r3, #0x10]
	mov r3, sb
	ldr r0, [r3, #0x10]
	ands r0, r1
	str r0, [r3, #0x10]
	movs r0, #0
_08036136:
	strb r0, [r2]
_08036138:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036148: .4byte 0xFFFFFE00
_0803614C: .4byte 0xFFFFFBFF

	thumb_func_start sub_8036150
sub_8036150: @ 0x08036150
	push {r4, r5, r6, lr}
	ldr r0, _080361FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r1, r2
	ldr r0, _08036200 @ =0x0300000C
	adds r4, r1, r0
	adds r0, #0x81
	adds r3, r1, r0
	movs r0, #0
	strb r0, [r3]
	str r0, [r2, #0x74]
	str r0, [r2, #0x78]
	ldr r0, _08036204 @ =0x0300005C
	adds r2, r1, r0
	movs r0, #2
	strb r0, [r2]
	ldr r2, _08036208 @ =0x0300005D
	adds r1, r1, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0803620C @ =gCamera
	ldrh r0, [r1]
	strh r0, [r1, #0x18]
	adds r0, #0xf0
	strh r0, [r1, #0x1a]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r0, [r4, #0x10]
	ldr r1, _08036210 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08036214 @ =gUnknown_03005A20
	ldr r3, [r0, #0x10]
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	bne _080361B6
	ldr r2, _08036218 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0803621C @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08036220 @ =gUnknown_03001B30
	strh r3, [r0, #0xa]
	ldr r0, _08036224 @ =gUnknown_030011A8
	strh r3, [r0]
	strh r3, [r0, #4]
_080361B6:
	ldr r1, _08036228 @ =gUnknown_03005030
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _0803622C @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _080361E8
	ldr r0, _08036230 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _080361E8
	ldr r1, _08036234 @ =gUnknown_03005024
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080361E8:
	bl sub_803623C
	ldr r0, _080361FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08036238 @ =sub_803623C
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080361FC: .4byte gCurTask
_08036200: .4byte 0x0300000C
_08036204: .4byte 0x0300005C
_08036208: .4byte 0x0300005D
_0803620C: .4byte gCamera
_08036210: .4byte 0xFFFFFE7F
_08036214: .4byte gUnknown_03005A20
_08036218: .4byte gDispCnt
_0803621C: .4byte 0x00007FFF
_08036220: .4byte gUnknown_03001B30
_08036224: .4byte gUnknown_030011A8
_08036228: .4byte gUnknown_03005030
_0803622C: .4byte 0x0000C350
_08036230: .4byte gGameMode
_08036234: .4byte gUnknown_03005024
_08036238: .4byte sub_803623C

	thumb_func_start sub_803623C
sub_803623C: @ 0x0803623C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _08036334 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0xc
	adds r6, r3, r0
	ldr r1, _08036338 @ =0x0300003C
	adds r1, r1, r3
	mov r8, r1
	ldr r2, _0803633C @ =0x0300008D
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803631C
	cmp r0, #0
	bne _08036272
	ldr r0, [r5, #0x78]
	adds r0, #0x10
	str r0, [r5, #0x78]
_08036272:
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x74]
	adds r0, r0, r1
	str r0, [r5, #0x6c]
	ldr r1, [r5, #0x70]
	ldr r2, [r5, #0x78]
	adds r1, r1, r2
	str r1, [r5, #0x70]
	ldr r7, _08036340 @ =0x0300007C
	adds r2, r3, r7
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r2, _08036344 @ =0x0300007E
	adds r0, r3, r2
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	adds r7, #4
	adds r0, r3, r7
	mov r1, sl
	strh r1, [r0]
	adds r2, #4
	adds r0, r3, r2
	mov r7, sb
	strh r7, [r0]
	ldr r1, _08036348 @ =0x03000084
	adds r0, r3, r1
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080362D0
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r3, sb
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	bl sub_8036478
_080362D0:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	bl UpdateSpriteAnimation
	ldr r4, [r4]
	ldrh r1, [r4, #6]
	ldr r7, _0803634C @ =0x0300000C
	adds r1, r1, r7
	ldr r3, _08036350 @ =gCamera
	ldrh r2, [r3]
	mov r7, sl
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x16]
	ldrh r2, [r3, #2]
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x18]
	ldrh r0, [r4, #6]
	ldr r7, _0803634C @ =0x0300000C
	adds r2, r0, r7
	ldr r1, _08036338 @ =0x0300003C
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	bl DisplaySprite
_0803631C:
	movs r2, #0x8d
	adds r2, r2, r5
	mov r8, r2
	ldrb r4, [r2]
	cmp r4, #1
	beq _080363A0
	cmp r4, #1
	bgt _08036354
	cmp r4, #0
	beq _0803635A
	b _08036452
	.align 2, 0
_08036334: .4byte gCurTask
_08036338: .4byte 0x0300003C
_0803633C: .4byte 0x0300008D
_08036340: .4byte 0x0300007C
_08036344: .4byte 0x0300007E
_08036348: .4byte 0x03000084
_0803634C: .4byte 0x0300000C
_08036350: .4byte gCamera
_08036354:
	cmp r4, #2
	beq _08036418
	b _08036452
_0803635A:
	adds r6, r5, #0
	adds r6, #0x84
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x14
	mov r7, sl
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r2, _0803639C @ =sub_803FD5C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _08036452
	lsls r1, r0, #8
	ldr r0, [r5, #0x70]
	adds r0, r0, r1
	str r0, [r5, #0x70]
	str r4, [r5, #0x78]
	movs r0, #0xf0
	strh r0, [r6]
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08036452
	.align 2, 0
_0803639C: .4byte sub_803FD5C
_080363A0:
	adds r7, r5, #0
	adds r7, #0x84
	ldrh r0, [r7]
	subs r0, #1
	strh r0, [r7]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08036452
	mov r2, sl
	lsls r5, r2, #0x10
	asrs r5, r5, #0x10
	mov r3, sb
	lsls r6, r3, #0x10
	asrs r6, r6, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8015C5C
	ldr r1, _08036414 @ =gUnknown_03005040
	movs r0, #0x35
	strb r0, [r1, #1]
	adds r0, r5, #0
	adds r0, #0x10
	lsls r0, r0, #8
	adds r4, r6, #0
	subs r4, #0x10
	lsls r4, r4, #8
	adds r1, r4, #0
	bl sub_8017540
	adds r0, r5, #0
	subs r0, #0x10
	lsls r0, r0, #8
	adds r1, r4, #0
	bl sub_8017540
	adds r0, r5, #0
	adds r0, #0x14
	lsls r0, r0, #8
	adds r6, #0x10
	lsls r6, r6, #8
	adds r1, r6, #0
	bl sub_8017540
	subs r5, #0x14
	lsls r5, r5, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8017540
	movs r0, #0xf0
	strh r0, [r7]
	mov r7, r8
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	b _08036452
	.align 2, 0
_08036414: .4byte gUnknown_03005040
_08036418:
	adds r1, r5, #0
	adds r1, #0x84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08036452
	ldr r3, _08036464 @ =gUnknown_03005A0C
	ldr r1, _08036468 @ =gUnknown_084ADEA8
	ldr r0, _0803646C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	str r2, [r3]
	ldr r1, _08036470 @ =gCamera
	strh r4, [r1, #0x14]
	ldrh r0, [r2, #0x1e]
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #0x1c]
	strh r0, [r1, #0x1a]
	ldr r0, _08036474 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08036452:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036464: .4byte gUnknown_03005A0C
_08036468: .4byte gUnknown_084ADEA8
_0803646C: .4byte gCurrentLevel
_08036470: .4byte gCamera
_08036474: .4byte gCurTask

	thumb_func_start sub_8036478
sub_8036478: @ 0x08036478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _08036584 @ =gUnknown_03004C58
	mov sb, r0
	ldr r0, [r0]
	ldr r7, _08036588 @ =0x00196225
	muls r0, r7, r0
	ldr r1, _0803658C @ =0x3C6EF35F
	mov sl, r1
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r4, #7
	ands r4, r0
	ldr r0, _08036590 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	ldr r2, _08036594 @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08036598 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _0803659C @ =sub_80177EC
	str r0, [sp]
	mov r0, r8
	bl sub_801769C
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r1, r3
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r0, r5, #8
	str r0, [r3, #0x30]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov ip, r6
	mov r0, ip
	adds r0, #0x10
	lsls r0, r0, #8
	str r0, [r3, #0x34]
	mov r6, r8
	str r6, [r3, #0x10]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r3, #0x1a]
	movs r0, #5
	strh r0, [r3, #0x3e]
	ldr r0, _080365A0 @ =0x03000040
	adds r1, r1, r0
	movs r0, #0x20
	strh r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	adds r4, r0, #0
	muls r4, r7, r4
	add r4, sl
	str r4, [r1]
	ldr r6, _080365A4 @ =gSineTable
	mov r8, r6
	ldr r1, _080365A8 @ =0x000001FF
	ands r1, r4
	lsls r0, r1, #1
	add r0, r8
	movs r6, #0
	ldrsh r2, [r0, r6]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x3a]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	add r1, r8
	movs r6, #0
	ldrsh r1, [r1, r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x38]
	adds r1, r4, #0
	muls r1, r7, r1
	add r1, sl
	mov r0, sb
	str r1, [r0]
	movs r0, #0x3f
	ands r0, r1
	adds r5, r5, r0
	subs r5, #0x20
	lsls r5, r5, #8
	movs r0, #0xfc
	lsls r0, r0, #0xe
	ands r1, r0
	asrs r1, r1, #0x10
	subs r1, #0x20
	mov r0, ip
	subs r6, r0, r1
	lsls r6, r6, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8017540
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036584: .4byte gUnknown_03004C58
_08036588: .4byte 0x00196225
_0803658C: .4byte 0x3C6EF35F
_08036590: .4byte gUnknown_080BB434
_08036594: .4byte gUnknown_080BB41C
_08036598: .4byte gUnknown_080BB42C
_0803659C: .4byte sub_80177EC
_080365A0: .4byte 0x03000040
_080365A4: .4byte gSineTable
_080365A8: .4byte 0x000001FF

	thumb_func_start sub_80365AC
sub_80365AC: @ 0x080365AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080366B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r7, r5, r6
	ldr r0, _080366B8 @ =sub_8036994
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080366BC @ =sub_8036CE0
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	adds r3, r4, r6
	ldr r0, _080366C0 @ =0x0300007C
	adds r1, r5, r0
	ldr r0, [r7, #0x6c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r2, _080366C4 @ =0x03000040
	adds r1, r4, r2
	movs r2, #0
	mov r8, r2
	movs r6, #0
	strh r0, [r1]
	ldr r0, _080366C8 @ =0x0300007E
	adds r5, r5, r0
	ldr r0, [r7, #0x70]
	asrs r0, r0, #8
	ldrh r5, [r5]
	adds r0, r0, r5
	ldr r2, _080366CC @ =0x03000042
	adds r1, r4, r2
	strh r0, [r1]
	movs r0, #0x3c
	strh r0, [r3, #0x30]
	adds r5, r3, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _080366D0 @ =0x000002A7
	strh r0, [r5, #0xa]
	ldr r1, _080366D4 @ =0x03000020
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _080366D8 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _080366DC @ =0x03000022
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080366E0 @ =0x03000025
	adds r4, r4, r0
	mov r1, r8
	strb r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	movs r4, #0
_0803664C:
	movs r2, #0x84
	lsls r2, r2, #6
	adds r0, r2, #0
	adds r2, r4, #0
	orrs r2, r0
	ldr r0, _080366BC @ =sub_8036CE0
	str r0, [sp]
	ldr r0, _080366E4 @ =sub_803673C
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r3, r2, r5
	adds r1, r7, #0
	adds r1, #0x7c
	ldr r0, [r7, #0x6c]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r5, #0x40
	adds r1, r2, r5
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x7e
	ldr r0, [r7, #0x70]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r5, #2
	adds r1, r2, r5
	strh r0, [r1]
	str r6, [r3, #0x34]
	str r6, [r3, #0x38]
	ldr r0, _080366E8 @ =0x03000044
	adds r2, r2, r0
	strb r4, [r2]
	adds r5, r3, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080366EC
	movs r0, #0xb8
	lsls r0, r0, #3
	b _080366F0
	.align 2, 0
_080366B4: .4byte gCurTask
_080366B8: .4byte sub_8036994
_080366BC: .4byte sub_8036CE0
_080366C0: .4byte 0x0300007C
_080366C4: .4byte 0x03000040
_080366C8: .4byte 0x0300007E
_080366CC: .4byte 0x03000042
_080366D0: .4byte 0x000002A7
_080366D4: .4byte 0x03000020
_080366D8: .4byte 0x03000021
_080366DC: .4byte 0x03000022
_080366E0: .4byte 0x03000025
_080366E4: .4byte sub_803673C
_080366E8: .4byte 0x03000044
_080366EC:
	movs r0, #0x98
	lsls r0, r0, #3
_080366F0:
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _08036738 @ =0x000002A9
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r4, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	strb r6, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803664C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036738: .4byte 0x000002A9

	thumb_func_start sub_803673C
sub_803673C: @ 0x0803673C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080367EC @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	mov r8, r2
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r5, r2, r4
	ldrh r0, [r0]
	adds r0, r0, r4
	ldrh r6, [r0, #6]
	adds r4, r6, r4
	ldr r2, [r5, #0x10]
	ldr r0, _080367F0 @ =0xFFFFFA7F
	ands r2, r0
	str r2, [r5, #0x10]
	ldr r0, [r4, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #3
	ands r0, r1
	orrs r2, r0
	str r2, [r5, #0x10]
	ldr r7, _080367F4 @ =0x03000080
	adds r7, r7, r6
	mov sb, r7
	ldr r0, _080367F8 @ =0x03000082
	adds r0, r0, r6
	mov sl, r0
	ldrh r1, [r0]
	ldr r3, _080367FC @ =gCamera
	ldrh r2, [r3]
	mov ip, r2
	movs r2, #0
	ldrsh r0, [r7, r2]
	mov r7, ip
	subs r0, r0, r7
	movs r7, #0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _080367A6
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_080367A6:
	adds r0, r5, #0
	bl DisplaySprite
	ldr r1, _08036800 @ =0x03000086
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _080367DE
	mov r2, sb
	ldrh r1, [r2]
	ldr r0, _08036804 @ =0x03000040
	add r0, r8
	strh r1, [r0]
	mov r0, sl
	ldrh r1, [r0]
	ldr r0, _08036808 @ =0x03000042
	add r0, r8
	strh r1, [r0]
	str r7, [r5, #0x34]
	str r7, [r5, #0x38]
	strh r7, [r5, #0x3c]
	strh r7, [r5, #0x3e]
	ldr r2, _080367EC @ =gCurTask
	ldr r1, [r2]
	ldr r0, _0803680C @ =sub_8036810
	str r0, [r1, #8]
_080367DE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080367EC: .4byte gCurTask
_080367F0: .4byte 0xFFFFFA7F
_080367F4: .4byte 0x03000080
_080367F8: .4byte 0x03000082
_080367FC: .4byte gCamera
_08036800: .4byte 0x03000086
_08036804: .4byte 0x03000040
_08036808: .4byte 0x03000042
_0803680C: .4byte sub_8036810

	thumb_func_start sub_8036810
sub_8036810: @ 0x08036810
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08036860 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	adds r5, r4, #0
	adds r1, #0x8d
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803683A
	b _08036948
_0803683A:
	movs r3, #0x3c
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bne _080368B6
	movs r3, #0
	movs r1, #0xff
	lsls r1, r1, #8
	strh r1, [r5, #0x3e]
	ldr r7, _08036864 @ =0x03000044
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, #1
	beq _08036880
	cmp r0, #1
	bgt _08036868
	cmp r0, #0
	beq _08036872
	b _080368A4
	.align 2, 0
_08036860: .4byte gCurTask
_08036864: .4byte 0x03000044
_08036868:
	cmp r0, #2
	beq _0803688C
	cmp r0, #3
	beq _0803689C
	b _080368A4
_08036872:
	ldr r0, _0803687C @ =0x0000FF40
	strh r0, [r5, #0x3c]
	subs r0, #0xf0
	b _080368A2
	.align 2, 0
_0803687C: .4byte 0x0000FF40
_08036880:
	strh r1, [r5, #0x3c]
	ldr r0, _08036888 @ =0x0000FE80
	b _080368A2
	.align 2, 0
_08036888: .4byte 0x0000FE80
_0803688C:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x3c]
	ldr r0, _08036898 @ =0x0000FE70
	b _080368A2
	.align 2, 0
_08036898: .4byte 0x0000FE70
_0803689C:
	movs r0, #0xe0
	strh r0, [r5, #0x3c]
	ldr r0, _08036938 @ =0x0000FE60
_080368A2:
	strh r0, [r5, #0x3e]
_080368A4:
	ldr r0, [r6, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080368B6
	ldrh r0, [r4, #0x3c]
	rsbs r0, r0, #0
	strh r0, [r4, #0x3c]
_080368B6:
	ldrh r0, [r4, #0x3e]
	adds r0, #0x18
	strh r0, [r4, #0x3e]
	movs r1, #0x3c
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0x34]
	adds r1, r1, r0
	str r1, [r4, #0x34]
	movs r3, #0x3e
	ldrsh r2, [r4, r3]
	ldr r0, [r4, #0x38]
	adds r0, r0, r2
	str r0, [r4, #0x38]
	adds r2, r4, #0
	adds r2, #0x40
	asrs r1, r1, #8
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	adds r2, r4, #0
	adds r2, #0x42
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x1e
	lsrs r2, r1, #0x10
	mov r8, r2
	asrs r6, r1, #0x10
	ldr r1, _0803693C @ =sub_803FD5C
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _08036956
	lsls r1, r0, #8
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldrh r0, [r4, #0x3e]
	rsbs r0, r0, #0
	adds r0, #4
	strh r0, [r4, #0x3e]
	ldr r0, _08036940 @ =gCamera
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r1, #0
	subs r0, #0x20
	cmp r6, r0
	blt _0803692E
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	ble _08036956
_0803692E:
	ldr r0, _08036944 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803697A
	.align 2, 0
_08036938: .4byte 0x0000FE60
_0803693C: .4byte sub_803FD5C
_08036940: .4byte gCamera
_08036944: .4byte gCurTask
_08036948:
	ldr r3, _08036988 @ =0x03000040
	adds r0, r2, r3
	ldrh r0, [r0]
	mov r8, r0
	ldr r7, _0803698C @ =0x03000042
	adds r0, r2, r7
	ldrh r7, [r0]
_08036956:
	ldr r2, _08036990 @ =gCamera
	ldrh r1, [r2]
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldrh r1, [r2, #2]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0803697A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036988: .4byte 0x03000040
_0803698C: .4byte 0x03000042
_08036990: .4byte gCamera

	thumb_func_start sub_8036994
sub_8036994: @ 0x08036994
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08036A44 @ =gCurTask
	ldr r6, [r0]
	ldrh r0, [r6, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldrh r0, [r6]
	adds r0, r0, r1
	ldrh r5, [r0, #6]
	adds r1, r1, r5
	mov sb, r1
	mov sl, r4
	ldr r2, [r4, #0x10]
	ldr r0, _08036A48 @ =0xFFFFFA7F
	ands r2, r0
	str r2, [r4, #0x10]
	ldr r0, [r1, #0x1c]
	movs r1, #0xb0
	lsls r1, r1, #3
	ands r0, r1
	orrs r2, r0
	str r2, [r4, #0x10]
	ldr r1, _08036A4C @ =0x03000080
	adds r2, r5, r1
	ldr r7, _08036A50 @ =0x03000082
	adds r0, r5, r7
	ldrh r0, [r0]
	mov r8, r0
	ldr r3, _08036A54 @ =gCamera
	ldrh r0, [r3]
	ldrh r1, [r2]
	str r1, [sp]
	movs r1, #0
	ldrsh r7, [r2, r1]
	mov ip, r7
	subs r0, r7, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	subs r0, r2, r0
	strh r0, [r4, #0x18]
	ldr r7, _08036A58 @ =0x0300008C
	adds r0, r5, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036AA2
	ldr r1, _08036A5C @ =0x03000086
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bgt _08036AA2
	ldrh r0, [r6, #6]
	subs r1, #0x86
	adds r7, r0, r1
	mov r6, ip
	adds r5, r2, #0
	ldr r3, _08036A60 @ =gUnknown_03005A20
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_800BF10
	mov r8, r0
	ldr r0, _08036A64 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036A6C
	ldr r3, _08036A68 @ =gUnknown_03005AB0
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	b _08036A6E
	.align 2, 0
_08036A44: .4byte gCurTask
_08036A48: .4byte 0xFFFFFA7F
_08036A4C: .4byte 0x03000080
_08036A50: .4byte 0x03000082
_08036A54: .4byte gCamera
_08036A58: .4byte 0x0300008C
_08036A5C: .4byte 0x03000086
_08036A60: .4byte gUnknown_03005A20
_08036A64: .4byte gUnknown_03005088
_08036A68: .4byte gUnknown_03005AB0
_08036A6C:
	movs r0, #0
_08036A6E:
	mov r2, r8
	cmp r2, #2
	beq _08036A78
	cmp r0, #2
	bne _08036AA2
_08036A78:
	ldr r0, _08036AC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r7, #0xc0
	lsls r7, r7, #0x12
	adds r0, r0, r7
	ldrh r2, [r0, #6]
	ldr r0, _08036ACC @ =0x0300003C
	adds r3, r2, r0
	adds r7, #0x5c
	adds r1, r2, r7
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08036AD0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08036AD4 @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08036AA2:
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	mov r0, sb
	adds r0, #0x86
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r2, r0, #0
	cmp r1, #2
	ble _08036B7A
	ldrh r0, [r4, #0x30]
	cmp r0, #0
	beq _08036AD8
	subs r0, #1
	strh r0, [r4, #0x30]
	b _08036B1A
	.align 2, 0
_08036AC8: .4byte gCurTask
_08036ACC: .4byte 0x0300003C
_08036AD0: .4byte 0xFFFFBFFF
_08036AD4: .4byte 0x0300005D
_08036AD8:
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08036B04
	ldr r7, [sp]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x10
	ldr r1, _08036B00 @ =gUnknown_03005A20
	ldr r1, [r1]
	asrs r1, r1, #8
	cmp r0, r1
	bge _08036B1A
	movs r0, #1
	str r0, [sp, #4]
	b _08036B1A
	.align 2, 0
_08036B00: .4byte gUnknown_03005A20
_08036B04:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x10
	ldr r1, _08036B68 @ =gUnknown_03005A20
	ldr r1, [r1]
	asrs r1, r1, #8
	cmp r0, r1
	ble _08036B1A
	movs r7, #1
	str r7, [sp, #4]
_08036B1A:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	ble _08036B26
	movs r0, #1
	str r0, [sp, #4]
_08036B26:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _08036B7A
	mov r2, sb
	ldr r0, [r2, #0x6c]
	str r0, [r4, #0x34]
	ldr r0, [r2, #0x70]
	str r0, [r4, #0x38]
	mov r0, sb
	adds r0, #0x7c
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x40
	movs r2, #0
	strh r1, [r0]
	mov r0, sb
	adds r0, #0x7e
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	strh r2, [r4, #0x3e]
	mov r7, sl
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08036B6C
	movs r0, #0xc0
	lsls r0, r0, #2
	b _08036B70
	.align 2, 0
_08036B68: .4byte gUnknown_03005A20
_08036B6C:
	movs r0, #0xfd
	lsls r0, r0, #8
_08036B70:
	strh r0, [r4, #0x3c]
	ldr r0, _08036B8C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08036B90 @ =sub_8036B94
	str r0, [r1, #8]
_08036B7A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036B8C: .4byte gCurTask
_08036B90: .4byte sub_8036B94

	thumb_func_start sub_8036B94
sub_8036B94: @ 0x08036B94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08036C2C @ =gCurTask
	ldr r7, [r0]
	ldrh r3, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r3, r1
	ldrh r0, [r7]
	adds r0, r0, r1
	ldrh r4, [r0, #6]
	mov sb, r5
	movs r0, #0x3c
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r5, r2]
	ldr r2, [r5, #0x38]
	adds r2, r2, r1
	str r2, [r5, #0x38]
	ldr r6, _08036C30 @ =0x03000040
	adds r1, r3, r6
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r1, _08036C34 @ =0x03000042
	adds r3, r3, r1
	asrs r2, r2, #8
	ldrh r3, [r3]
	adds r2, r2, r3
	ldr r3, _08036C38 @ =gCamera
	ldrh r1, [r3]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	subs r1, r6, r1
	strh r1, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x18]
	ldr r0, _08036C3C @ =0x03000086
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bgt _08036C82
	ldrh r0, [r7, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r4, r2, #0
	ldr r3, _08036C40 @ =gUnknown_03005A20
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_800BF10
	mov r8, r0
	ldr r0, _08036C44 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036C4C
	ldr r3, _08036C48 @ =gUnknown_03005AB0
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _08036C4E
	.align 2, 0
_08036C2C: .4byte gCurTask
_08036C30: .4byte 0x03000040
_08036C34: .4byte 0x03000042
_08036C38: .4byte gCamera
_08036C3C: .4byte 0x03000086
_08036C40: .4byte gUnknown_03005A20
_08036C44: .4byte gUnknown_03005088
_08036C48: .4byte gUnknown_03005AB0
_08036C4C:
	movs r0, #0
_08036C4E:
	mov r2, r8
	cmp r2, #2
	beq _08036C58
	cmp r0, #2
	bne _08036C82
_08036C58:
	ldr r0, _08036CB4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r0, r0, r6
	ldrh r2, [r0, #6]
	ldr r0, _08036CB8 @ =0x0300003C
	adds r3, r2, r0
	adds r6, #0x5c
	adds r1, r2, r6
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08036CBC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08036CC0 @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08036C82:
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	ldr r0, [r5, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #9
	cmp r0, r1
	bls _08036CA6
	ldr r0, _08036CB4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08036CA6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036CB4: .4byte gCurTask
_08036CB8: .4byte 0x0300003C
_08036CBC: .4byte 0xFFFFBFFF
_08036CC0: .4byte 0x0300005D

	thumb_func_start sub_8036CC4
sub_8036CC4: @ 0x08036CC4
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

	thumb_func_start sub_8036CE0
sub_8036CE0: @ 0x08036CE0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8036CF4
sub_8036CF4: @ 0x08036CF4
	push {r4, r5, r6, r7, lr}
	ldr r2, _08036D34 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _08036D38 @ =gUnknown_03005A20
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _08036D3C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036D44
	ldr r3, _08036D40 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _08036D46
	.align 2, 0
_08036D34: .4byte gCurTask
_08036D38: .4byte gUnknown_03005A20
_08036D3C: .4byte gUnknown_03005088
_08036D40: .4byte gUnknown_03005AB0
_08036D44:
	movs r0, #0
_08036D46:
	cmp r7, #2
	beq _08036D4E
	cmp r0, #2
	bne _08036D78
_08036D4E:
	ldr r0, _08036D80 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _08036D84 @ =0x0300003C
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08036D88 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08036D8C @ =0x0300005D
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08036D78:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036D80: .4byte gCurTask
_08036D84: .4byte 0x0300003C
_08036D88: .4byte 0xFFFFBFFF
_08036D8C: .4byte 0x0300005D

	thumb_func_start sub_8036D90
sub_8036D90: @ 0x08036D90
	ldr r0, _08036DC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _08036DC4 @ =0x0300003C
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08036DBC
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08036DBC
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08036DC8 @ =0x0300005D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_08036DBC:
	bx lr
	.align 2, 0
_08036DC0: .4byte gCurTask
_08036DC4: .4byte 0x0300003C
_08036DC8: .4byte 0x0300005D

	thumb_func_start sub_8036DCC
sub_8036DCC: @ 0x08036DCC
	ldr r0, _08036DE4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08036DE8 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_08036DE4: .4byte gCurTask
_08036DE8: .4byte 0x0300000C

	thumb_func_start sub_8036DEC
sub_8036DEC: @ 0x08036DEC
	push {r4, lr}
	ldr r2, _08036E14 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _08036E18 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _08036E1C @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08036E14: .4byte gCurTask
_08036E18: .4byte 0x0300000C
_08036E1C: .4byte gCamera

	thumb_func_start sub_8036E20
sub_8036E20: @ 0x08036E20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	str r6, [sp]
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	str r5, [sp, #4]
	ldr r0, _08036F3C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r0, [sp, #8]
	ldr r0, _08036F40 @ =0x0300000C
	adds r7, r2, r0
	ldr r1, _08036F44 @ =gUnknown_03005A20
	mov sl, r1
	ldr r1, [r1, #0x10]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _08036E5E
	ldr r3, _08036F48 @ =0x03000031
	adds r0, r2, r3
	strb r1, [r0]
_08036E5E:
	ldr r1, _08036F4C @ =0x03000095
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08036E6E
	b _08036F86
_08036E6E:
	movs r3, #0
	mov sb, r3
	mov r8, r3
	ldr r0, _08036F50 @ =0x03000044
	adds r4, r2, r0
	adds r1, #7
	adds r0, r2, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r3, _08036F54 @ =0x0300007A
	adds r3, r0, r3
	str r3, [sp, #0xc]
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08036EA2
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	mov r3, sl
	bl sub_800B8B4
	mov sb, r0
_08036EA2:
	mov r0, sb
	cmp r0, #0
	bne _08036EBA
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	mov r3, sl
	bl sub_800BFEC
	mov sb, r0
_08036EBA:
	ldr r0, _08036F58 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08036F00
	ldr r3, [sp, #0xc]
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08036EE4
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	ldr r3, _08036F5C @ =gUnknown_03005AB0
	adds r0, r7, #0
	bl sub_800B8B4
	mov r8, r0
_08036EE4:
	mov r0, r8
	cmp r0, #0
	bne _08036F00
	ldr r3, [sp]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #4]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	ldr r3, _08036F5C @ =gUnknown_03005AB0
	adds r0, r7, #0
	bl sub_800BFEC
	mov r8, r0
_08036F00:
	mov r1, sb
	cmp r1, #1
	beq _08036F0C
	mov r3, r8
	cmp r3, #1
	bne _08036F64
_08036F0C:
	ldr r1, [sp, #8]
	adds r1, #0x94
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [sp, #8]
	adds r1, #0x95
	movs r0, #0x20
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r1, _08036F60 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x8f
	bl m4aSongNumStart
	b _08036F86
	.align 2, 0
_08036F3C: .4byte gCurTask
_08036F40: .4byte 0x0300000C
_08036F44: .4byte gUnknown_03005A20
_08036F48: .4byte 0x03000031
_08036F4C: .4byte 0x03000095
_08036F50: .4byte 0x03000044
_08036F54: .4byte 0x0300007A
_08036F58: .4byte gUnknown_03005088
_08036F5C: .4byte gUnknown_03005AB0
_08036F60: .4byte 0xFFFFBFFF
_08036F64:
	mov r0, sb
	cmp r0, #2
	beq _08036F70
	mov r1, r8
	cmp r1, #2
	bne _08036F86
_08036F70:
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r1, _08036F98 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #0x10]
_08036F86:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036F98: .4byte 0xFFFFBFFF

	thumb_func_start sub_8036F9C
sub_8036F9C: @ 0x08036F9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r0, _08036FF4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r7, r4, #0
	cmp r2, #0
	bne _08037004
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	lsls r0, r5, #0x10
	asrs r6, r0, #0x10
	ldr r3, _08036FF8 @ =gUnknown_03005A20
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800BF10
	adds r5, r0, #0
	ldr r0, _08036FFC @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08037040
	ldr r3, _08037000 @ =gUnknown_03005AB0
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800BF10
	b _08037042
	.align 2, 0
_08036FF4: .4byte gCurTask
_08036FF8: .4byte gUnknown_03005A20
_08036FFC: .4byte gUnknown_03005088
_08037000: .4byte gUnknown_03005AB0
_08037004:
	lsls r0, r3, #0x10
	asrs r6, r0, #0x10
	lsls r0, r5, #0x10
	asrs r4, r0, #0x10
	ldr r3, _08037034 @ =gUnknown_03005A20
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800C2B8
	adds r5, r0, #0
	ldr r0, _08037038 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08037040
	ldr r3, _0803703C @ =gUnknown_03005AB0
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _08037042
	.align 2, 0
_08037034: .4byte gUnknown_03005A20
_08037038: .4byte gUnknown_03005088
_0803703C: .4byte gUnknown_03005AB0
_08037040:
	movs r0, #0
_08037042:
	cmp r5, #2
	beq _0803704A
	cmp r0, #2
	bne _08037074
_0803704A:
	ldr r0, _0803709C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _080370A0 @ =0x03000044
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _080370A4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _080370A8 @ =0x03000065
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_08037074:
	mov r0, r8
	cmp r0, #0
	beq _0803708E
	cmp r5, #2
	bne _0803708E
	ldr r0, _080370AC @ =gUnknown_03004FEC
	ldrh r0, [r0]
	cmp r0, #0
	bne _0803708E
	ldr r0, _080370B0 @ =gUnknown_03005A20
	bl sub_800C558
	movs r5, #0
_0803708E:
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803709C: .4byte gCurTask
_080370A0: .4byte 0x03000044
_080370A4: .4byte 0xFFFFBFFF
_080370A8: .4byte 0x03000065
_080370AC: .4byte gUnknown_03004FEC
_080370B0: .4byte gUnknown_03005A20

	thumb_func_start sub_80370B4
sub_80370B4: @ 0x080370B4
	push {r4, r5, lr}
	ldr r0, _0803710C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	ldr r0, _08037110 @ =0x0300000C
	adds r4, r3, r0
	adds r0, #0x38
	adds r5, r3, r0
	adds r0, #0x51
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _080370FA
	subs r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _080370FA
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	bne _080370FA
	ldr r0, _08037114 @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080370FA
	ldr r0, _08037118 @ =0x03000031
	adds r1, r3, r0
	movs r0, #0xfd
	strb r0, [r1]
_080370FA:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803710C: .4byte gCurTask
_08037110: .4byte 0x0300000C
_08037114: .4byte gUnknown_03005A20
_08037118: .4byte 0x03000031

	thumb_func_start sub_803711C
sub_803711C: @ 0x0803711C
	push {r4, lr}
	ldr r3, _08037154 @ =gUnknown_03005A20
	ldr r1, [r3]
	asrs r1, r1, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _0803713A
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0803713A:
	ldr r0, [r3, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08037160
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r4, _08037158 @ =gUnknown_084ACF24
	cmp r0, #0x78
	ble _0803716C
	ldr r4, _0803715C @ =gUnknown_084ACF34
	b _0803716C
	.align 2, 0
_08037154: .4byte gUnknown_03005A20
_08037158: .4byte gUnknown_084ACF24
_0803715C: .4byte gUnknown_084ACF34
_08037160:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r4, _0803718C @ =gUnknown_084ACF1C
	cmp r0, #0x78
	ble _0803716C
	ldr r4, _08037190 @ =gUnknown_084ACF2C
_0803716C:
	ldr r2, _08037194 @ =gUnknown_03004C58
	ldr r1, [r2]
	ldr r0, _08037198 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0803719C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x64
	bl __umodsi3
	adds r1, r0, #0
	movs r2, #0
	movs r3, #0
	ldrsh r0, [r4, r3]
	b _080371B2
	.align 2, 0
_0803718C: .4byte gUnknown_084ACF1C
_08037190: .4byte gUnknown_084ACF2C
_08037194: .4byte gUnknown_03004C58
_08037198: .4byte 0x00196225
_0803719C: .4byte 0x3C6EF35F
_080371A0:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _080371B8
	lsls r0, r2, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
_080371B2:
	subs r1, r1, r0
	cmp r1, #0
	bgt _080371A0
_080371B8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start CreateEntity_Enemy030
CreateEntity_Enemy030: @ 0x080371C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r0, _080371F8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080371FC
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r4]
	b _080373B8
	.align 2, 0
_080371F8: .4byte gGameMode
_080371FC:
	ldr r0, _08037278 @ =sub_80373FC
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0803727C @ =sub_803A530
	str r1, [sp]
	movs r1, #0xa0
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	movs r5, #0
	movs r2, #0
	mov r0, r8
	strh r0, [r7, #4]
	mov r1, sb
	strh r1, [r7, #6]
	str r4, [r7]
	ldrb r0, [r4]
	strb r0, [r7, #8]
	strb r6, [r7, #9]
	ldr r0, _08037280 @ =0x03000092
	adds r1, r3, r0
	movs r0, #0x78
	strh r0, [r1]
	ldr r1, _08037284 @ =0x03000095
	adds r0, r3, r1
	strb r5, [r0]
	adds r1, #4
	adds r0, r3, r1
	strb r5, [r0]
	subs r1, #1
	adds r0, r3, r1
	strb r5, [r0]
	movs r0, #0xe8
	lsls r0, r0, #7
	str r0, [r7, #0x74]
	movs r0, #0xe8
	lsls r0, r0, #8
	str r0, [r7, #0x78]
	str r2, [r7, #0x7c]
	subs r1, #0x18
	adds r0, r3, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r3, r1
	str r2, [r0]
	adds r1, #0x12
	adds r0, r3, r1
	strh r2, [r0]
	ldr r0, _08037288 @ =gUnknown_03005160
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _08037290
	ldr r2, _0803728C @ =0x03000094
	adds r1, r3, r2
	movs r0, #2
	strb r0, [r1]
	b _08037296
	.align 2, 0
_08037278: .4byte sub_80373FC
_0803727C: .4byte sub_803A530
_08037280: .4byte 0x03000092
_08037284: .4byte 0x03000095
_08037288: .4byte gUnknown_03005160
_0803728C: .4byte 0x03000094
_08037290:
	ldr r1, _080373C8 @ =0x03000094
	adds r0, r3, r1
	strb r5, [r0]
_08037296:
	ldrb r1, [r4]
	lsls r1, r1, #3
	mov r2, r8
	lsls r0, r2, #8
	adds r1, r1, r0
	adds r6, r7, #0
	adds r6, #0x88
	movs r5, #0
	strh r1, [r6]
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r1, #0x8a
	adds r1, r1, r7
	mov sl, r1
	strh r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r4]
	adds r4, r7, #0
	adds r4, #0xc
	ldrh r0, [r6]
	strh r0, [r4, #0x16]
	ldrh r0, [r1]
	strh r0, [r4, #0x18]
	movs r0, #0x2a
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r0, _080373CC @ =0x000002AF
	strh r0, [r4, #0xa]
	adds r0, r7, #0
	adds r0, #0x2c
	movs r1, #0
	strb r1, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r7, #0
	adds r1, #0x2d
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x2e
	movs r2, #0x10
	mov sb, r2
	mov r1, sb
	strb r1, [r0]
	adds r0, #3
	movs r2, #0
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	adds r4, #0x38
	ldrh r0, [r6]
	strh r0, [r4, #0x16]
	mov r2, sl
	ldrh r0, [r2]
	strh r0, [r4, #0x18]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r5, [r4, #8]
	ldr r0, _080373D0 @ =0x000002B3
	strh r0, [r4, #0xa]
	adds r0, r7, #0
	adds r0, #0x64
	movs r1, #0
	strb r1, [r0]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r7, #0
	adds r1, #0x65
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x66
	mov r2, sb
	strb r2, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	mov r2, r8
	str r2, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	ldr r0, _080373D4 @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08037396
	ldr r1, _080373D8 @ =gUnknown_03001B30
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldr r0, _080373DC @ =0x00001F1F
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	ldr r1, _080373E0 @ =gUnknown_030011A8
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0xc
	strh r0, [r1, #4]
	ldr r2, _080373E4 @ =gDispCnt
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r1
	strh r0, [r2]
_08037396:
	add r1, sp, #4
	ldr r2, _080373E8 @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080373EC @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _080373F0 @ =gUnknown_03001AA0
	str r0, [r1, #4]
	ldr r0, _080373F4 @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _080373F8 @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_080373B8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080373C8: .4byte 0x03000094
_080373CC: .4byte 0x000002AF
_080373D0: .4byte 0x000002B3
_080373D4: .4byte gUnknown_03005A20
_080373D8: .4byte gUnknown_03001B30
_080373DC: .4byte 0x00001F1F
_080373E0: .4byte gUnknown_030011A8
_080373E4: .4byte gDispCnt
_080373E8: .4byte 0x00007FFF
_080373EC: .4byte 0x040000D4
_080373F0: .4byte gUnknown_03001AA0
_080373F4: .4byte 0x81000010
_080373F8: .4byte gFlags

	thumb_func_start sub_80373FC
sub_80373FC: @ 0x080373FC
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _08037420 @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0x99
	adds r4, r2, r0
	ldrb r0, [r4]
	cmp r0, #1
	beq _0803745C
	cmp r0, #1
	bgt _08037424
	cmp r0, #0
	beq _0803742E
	b _08037518
	.align 2, 0
_08037420: .4byte gCurTask
_08037424:
	cmp r0, #2
	beq _08037494
	cmp r0, #3
	beq _080374C4
	b _08037518
_0803742E:
	ldr r1, _08037454 @ =0x03000088
	adds r2, r2, r1
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r0, #0x78
	ldr r3, _08037458 @ =gCamera
	movs r5, #0
	ldrsh r1, [r3, r5]
	cmp r0, r1
	bgt _08037518
	ldrh r0, [r2]
	subs r0, #0x90
	strh r0, [r3, #0x18]
	ldrh r0, [r2]
	adds r0, #0x90
	strh r0, [r3, #0x1a]
	movs r0, #1
	strb r0, [r4]
	b _08037518
	.align 2, 0
_08037454: .4byte 0x03000088
_08037458: .4byte gCamera
_0803745C:
	ldr r0, _0803748C @ =0x0300008A
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	subs r0, #0x28
	ldr r1, _08037490 @ =gCamera
	movs r3, #2
	ldrsh r1, [r1, r3]
	cmp r0, r1
	bgt _08037518
	ldrh r1, [r2]
	adds r0, r1, #0
	subs r0, #0x28
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0xa0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80174DC
	movs r0, #2
	strb r0, [r4]
	b _08037518
	.align 2, 0
_0803748C: .4byte 0x0300008A
_08037490: .4byte gCamera
_08037494:
	ldr r3, _080374BC @ =gCamera
	movs r5, #0x14
	ldrsh r0, [r3, r5]
	ldr r5, _080374C0 @ =0x0300008A
	adds r1, r2, r5
	movs r5, #0
	ldrsh r2, [r1, r5]
	adds r1, r2, #0
	subs r1, #0x28
	cmp r0, r1
	bne _08037518
	movs r0, #0x16
	ldrsh r1, [r3, r0]
	adds r0, r2, #0
	adds r0, #0xa0
	cmp r1, r0
	bne _08037518
	movs r0, #3
	strb r0, [r4]
	b _08037518
	.align 2, 0
_080374BC: .4byte gCamera
_080374C0: .4byte 0x0300008A
_080374C4:
	movs r0, #0
	strb r0, [r4]
	ldr r4, _08037520 @ =0x03000080
	adds r1, r2, r4
	ldr r0, _08037524 @ =0xFFFFFF00
	str r0, [r1]
	ldr r0, _08037528 @ =0x03000088
	adds r1, r2, r0
	ldr r0, [r3, #0x74]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r4, #0xc
	adds r1, r2, r4
	strh r0, [r1]
	ldr r0, _0803752C @ =0x0300008A
	adds r1, r2, r0
	ldr r0, [r3, #0x78]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r3, _08037530 @ =0x0300008E
	adds r1, r2, r3
	strh r0, [r1]
	bl sub_8038F04
	ldr r1, [r5]
	ldr r0, _08037534 @ =sub_803753C
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0x80
	str r1, [sp]
	movs r1, #4
	movs r3, #0x7a
	bl sub_804CC14
	ldr r1, _08037538 @ =gUnknown_03005040
	movs r0, #0x16
	strb r0, [r1, #1]
_08037518:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08037520: .4byte 0x03000080
_08037524: .4byte 0xFFFFFF00
_08037528: .4byte 0x03000088
_0803752C: .4byte 0x0300008A
_08037530: .4byte 0x0300008E
_08037534: .4byte sub_803753C
_08037538: .4byte gUnknown_03005040

	thumb_func_start sub_803753C
sub_803753C: @ 0x0803753C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080375D0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r5, r1
	ldr r2, _080375D4 @ =0x0300009C
	adds r0, r5, r2
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r7, _080375D8 @ =0x0300000C
	adds r7, r7, r5
	mov sl, r7
	ldr r0, _080375DC @ =0x03000044
	adds r4, r5, r0
	ldr r0, [r6, #0x74]
	ldr r1, [r6, #0x7c]
	adds r0, r0, r1
	str r0, [r6, #0x74]
	ldr r1, _080375E0 @ =0x03000080
	adds r3, r5, r1
	ldr r1, [r6, #0x78]
	ldr r2, [r3]
	adds r1, r1, r2
	str r1, [r6, #0x78]
	ldr r7, _080375E4 @ =0x03000088
	adds r2, r5, r7
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r2, _080375E8 @ =0x0300008A
	adds r0, r5, r2
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, [r3]
	cmp r0, #0
	bne _080375F8
	ldr r0, _080375EC @ =0x03000090
	adds r2, r5, r0
	ldrh r0, [r2]
	adds r0, #8
	ldr r1, _080375F0 @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _080375F4 @ =gSineTable
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x1c
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _08037600
	.align 2, 0
_080375D0: .4byte gCurTask
_080375D4: .4byte 0x0300009C
_080375D8: .4byte 0x0300000C
_080375DC: .4byte 0x03000044
_080375E0: .4byte 0x03000080
_080375E4: .4byte 0x03000088
_080375E8: .4byte 0x0300008A
_080375EC: .4byte 0x03000090
_080375F0: .4byte 0x000003FF
_080375F4: .4byte gSineTable
_080375F8:
	ldr r0, _0803766C @ =0x03000090
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
_08037600:
	adds r0, r6, #0
	adds r0, #0x8c
	mov r1, ip
	strh r1, [r0]
	adds r0, #2
	strh r7, [r0]
	mov r2, sb
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	ldr r5, _08037670 @ =0x0300000C
	adds r1, r1, r5
	ldr r3, _08037674 @ =gCamera
	ldrh r2, [r3]
	mov r5, ip
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x16]
	ldrh r2, [r3, #2]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x18]
	mov r0, sl
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r7, sb
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r1, _08037670 @ =0x0300000C
	adds r2, r0, r1
	ldr r5, _08037678 @ =0x03000044
	adds r0, r0, r5
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_80370B4
	adds r0, r6, #0
	adds r0, #0x99
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #5
	bhi _08037746
	lsls r0, r1, #2
	ldr r1, _0803767C @ =_08037680
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803766C: .4byte 0x03000090
_08037670: .4byte 0x0300000C
_08037674: .4byte gCamera
_08037678: .4byte 0x03000044
_0803767C: .4byte _08037680
_08037680: @ jump table
	.4byte _08037698 @ case 0
	.4byte _080376B0 @ case 1
	.4byte _080376CA @ case 2
	.4byte _080376E4 @ case 3
	.4byte _0803770A @ case 4
	.4byte _08037724 @ case 5
_08037698:
	ldr r0, [r6, #0x78]
	movs r1, #0xdc
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08037746
	str r1, [r6, #0x78]
	movs r1, #0
	str r1, [r6, #0x7c]
	adds r0, r6, #0
	adds r0, #0x80
	str r1, [r0]
	b _08037714
_080376B0:
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037746
	mov r1, r8
	adds r1, #0x79
	movs r0, #1
	strb r0, [r1]
	b _0803771C
_080376CA:
	mov r0, r8
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #4
	bne _08037746
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	b _0803771C
_080376E4:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08037746
	mov r1, r8
	adds r1, #0x79
	movs r2, #0
	movs r0, #5
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x20
	strb r2, [r0]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	b _0803771C
_0803770A:
	mov r0, r8
	adds r0, #0x79
	ldrb r0, [r0]
	cmp r0, #7
	bne _08037746
_08037714:
	adds r1, r6, #0
	adds r1, #0x92
	movs r0, #0xf
	strh r0, [r1]
_0803771C:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _08037746
_08037724:
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08037746
	adds r1, #6
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08037754 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08037758 @ =sub_803775C
	str r0, [r1, #8]
_08037746:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037754: .4byte gCurTask
_08037758: .4byte sub_803775C

	thumb_func_start sub_803775C
sub_803775C: @ 0x0803775C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _080377AC @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r2, r1
	ldr r3, _080377B0 @ =0x0300009C
	adds r0, r2, r3
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov sl, r0
	ldr r4, _080377B4 @ =0x0300000C
	adds r7, r2, r4
	ldr r0, _080377B8 @ =0x03000044
	adds r0, r2, r0
	str r0, [sp, #4]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080377C0
	ldr r1, _080377BC @ =0x03000084
	adds r0, r2, r1
	ldr r1, [r6, #0x7c]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r6, #0x7c]
	ldr r0, [r6, #0x74]
	subs r0, r0, r1
	b _080377D0
	.align 2, 0
_080377AC: .4byte gCurTask
_080377B0: .4byte 0x0300009C
_080377B4: .4byte 0x0300000C
_080377B8: .4byte 0x03000044
_080377BC: .4byte 0x03000084
_080377C0:
	ldr r3, _08037830 @ =0x03000084
	adds r0, r2, r3
	ldr r1, [r6, #0x7c]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r6, #0x7c]
	ldr r0, [r6, #0x74]
	adds r0, r0, r1
_080377D0:
	str r0, [r6, #0x74]
	adds r3, r6, #0
	adds r3, #0x80
	ldr r1, [r6, #0x78]
	ldr r0, [r3]
	adds r1, r1, r0
	str r1, [r6, #0x78]
	adds r2, r6, #0
	adds r2, #0x88
	ldr r0, [r6, #0x74]
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
	adds r0, #0x8a
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, [r3]
	cmp r0, #0
	bne _0803783C
	adds r2, r6, #0
	adds r2, #0x90
	ldrh r0, [r2]
	adds r0, #8
	ldr r1, _08037834 @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08037838 @ =gSineTable
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x1c
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08037844
	.align 2, 0
_08037830: .4byte 0x03000084
_08037834: .4byte 0x000003FF
_08037838: .4byte gSineTable
_0803783C:
	adds r1, r6, #0
	adds r1, #0x90
	movs r0, #0
	strh r0, [r1]
_08037844:
	adds r0, r6, #0
	adds r0, #0x8c
	strh r5, [r0]
	adds r0, #2
	strh r4, [r0]
	lsls r5, r5, #0x10
	asrs r3, r5, #0x10
	mov r8, r3
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	mov sb, r0
	mov r0, r8
	mov r1, sb
	bl sub_8036E20
	adds r0, r6, #0
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r4, [sp, #0x20]
	str r5, [sp, #0x1c]
	cmp r0, #7
	ble _0803787A
	bl sub_803803C
	b _0803802A
_0803787A:
	ldr r0, _080378FC @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	ldr r2, _08037900 @ =0x0300000C
	adds r1, r1, r2
	ldr r2, _08037904 @ =gCamera
	ldrh r0, [r2]
	mov r4, r8
	subs r0, r4, r0
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	mov r2, sb
	subs r0, r2, r0
	strh r0, [r1, #0x18]
	ldrh r2, [r3, #6]
	ldr r3, _08037908 @ =0x03000044
	adds r1, r2, r3
	ldr r4, _0803790C @ =0x03000064
	adds r3, r2, r4
	ldrb r0, [r3]
	cmp r0, #0
	beq _080378BE
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080378BE
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08037910 @ =0x03000065
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_080378BE:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r0, _080378FC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08037900 @ =0x0300000C
	adds r2, r0, r1
	ldr r3, _08037908 @ =0x03000044
	adds r0, r0, r3
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bl sub_80370B4
	adds r0, r6, #0
	adds r0, #0x99
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x42
	bls _080378F2
	b _0803802A
_080378F2:
	lsls r0, r1, #2
	ldr r1, _08037914 @ =_08037918
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080378FC: .4byte gCurTask
_08037900: .4byte 0x0300000C
_08037904: .4byte gCamera
_08037908: .4byte 0x03000044
_0803790C: .4byte 0x03000064
_08037910: .4byte 0x03000065
_08037914: .4byte _08037918
_08037918: @ jump table
	.4byte _08037A24 @ case 0
	.4byte _08037A88 @ case 1
	.4byte _08037ACA @ case 2
	.4byte _08037B02 @ case 3
	.4byte _08037B54 @ case 4
	.4byte _08038018 @ case 5
	.4byte _0803802A @ case 6
	.4byte _0803802A @ case 7
	.4byte _0803802A @ case 8
	.4byte _0803802A @ case 9
	.4byte _0803802A @ case 10
	.4byte _0803802A @ case 11
	.4byte _0803802A @ case 12
	.4byte _0803802A @ case 13
	.4byte _0803802A @ case 14
	.4byte _0803802A @ case 15
	.4byte _08037B6A @ case 16
	.4byte _08037B8C @ case 17
	.4byte _0803802A @ case 18
	.4byte _0803802A @ case 19
	.4byte _0803802A @ case 20
	.4byte _0803802A @ case 21
	.4byte _0803802A @ case 22
	.4byte _0803802A @ case 23
	.4byte _0803802A @ case 24
	.4byte _0803802A @ case 25
	.4byte _0803802A @ case 26
	.4byte _0803802A @ case 27
	.4byte _0803802A @ case 28
	.4byte _0803802A @ case 29
	.4byte _0803802A @ case 30
	.4byte _0803802A @ case 31
	.4byte _08037BF2 @ case 32
	.4byte _0803802A @ case 33
	.4byte _0803802A @ case 34
	.4byte _0803802A @ case 35
	.4byte _0803802A @ case 36
	.4byte _0803802A @ case 37
	.4byte _0803802A @ case 38
	.4byte _0803802A @ case 39
	.4byte _0803802A @ case 40
	.4byte _0803802A @ case 41
	.4byte _0803802A @ case 42
	.4byte _0803802A @ case 43
	.4byte _0803802A @ case 44
	.4byte _0803802A @ case 45
	.4byte _0803802A @ case 46
	.4byte _0803802A @ case 47
	.4byte _08037E88 @ case 48
	.4byte _0803802A @ case 49
	.4byte _08037E92 @ case 50
	.4byte _08037E96 @ case 51
	.4byte _08037EAC @ case 52
	.4byte _08037F18 @ case 53
	.4byte _0803802A @ case 54
	.4byte _0803802A @ case 55
	.4byte _0803802A @ case 56
	.4byte _0803802A @ case 57
	.4byte _0803802A @ case 58
	.4byte _0803802A @ case 59
	.4byte _0803802A @ case 60
	.4byte _0803802A @ case 61
	.4byte _0803802A @ case 62
	.4byte _0803802A @ case 63
	.4byte _08037F54 @ case 64
	.4byte _08037F80 @ case 65
	.4byte _08037FE4 @ case 66
_08037A24:
	adds r1, r6, #0
	adds r1, #0x9a
	movs r0, #0
	strb r0, [r1]
	mov r1, sl
	adds r1, #0x79
	movs r0, #8
	strb r0, [r1]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldr r2, _08037A5C @ =gUnknown_03004C58
	ldr r1, [r2]
	ldr r0, _08037A60 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08037A64 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	movs r1, #0x30
	ands r0, r1
	lsrs r0, r0, #4
	cmp r0, #1
	beq _08037A78
	cmp r0, #1
	bgt _08037A68
	cmp r0, #0
	beq _08037A70
	b _08037A88
	.align 2, 0
_08037A5C: .4byte gUnknown_03004C58
_08037A60: .4byte 0x00196225
_08037A64: .4byte 0x3C6EF35F
_08037A68:
	cmp r0, #2
	beq _08037A80
	cmp r0, #3
	bne _08037A88
_08037A70:
	adds r1, r6, #0
	adds r1, #0x92
	movs r0, #0x5a
	b _08037A86
_08037A78:
	adds r1, r6, #0
	adds r1, #0x92
	movs r0, #0xb4
	b _08037A86
_08037A80:
	adds r1, r6, #0
	adds r1, #0x92
	movs r0, #0xf0
_08037A86:
	strh r0, [r1]
_08037A88:
	adds r4, r6, #0
	adds r4, #0x92
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08037A9A
	b _0803802A
_08037A9A:
	ldr r7, [sp, #0x1c]
	asrs r0, r7, #0x10
	bl sub_803711C
	adds r1, r6, #0
	adds r1, #0x9a
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	beq _08037ABA
	movs r0, #0xa
	strh r0, [r4]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
_08037ABA:
	mov r1, sl
	adds r1, #0x79
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0x14
	strh r0, [r4]
	movs r0, #0x40
	b _08038028
_08037ACA:
	mov r2, sl
	adds r2, #0x7a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	strb r0, [r2]
	cmp r0, #0
	bne _08037ADC
	b _0803802A
_08037ADC:
	adds r2, r6, #0
	adds r2, #0x92
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08037AEE
	b _0803802A
_08037AEE:
	movs r1, #0xa
	movs r0, #0xa
	strh r0, [r2]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	mov r0, sl
	adds r0, #0x79
	strb r1, [r0]
	b _0803802A
_08037B02:
	mov r0, sl
	adds r0, #0x7a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08037B12
	b _0803802A
_08037B12:
	adds r2, r6, #0
	adds r2, #0x92
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08037B26
	b _0803802A
_08037B26:
	mov r1, sl
	adds r1, #0x79
	movs r0, #0xd
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0x9a
	ldrb r0, [r1]
	lsls r0, r0, #4
	strb r0, [r5]
	ldrb r0, [r1]
	cmp r0, #2
	bne _08037B4A
	movs r0, #0x1e
	strh r0, [r2]
	movs r0, #0xac
	bl m4aSongNumStart
	b _0803802A
_08037B4A:
	cmp r0, #1
	beq _08037B50
	b _0803802A
_08037B50:
	strh r3, [r2]
	b _0803802A
_08037B54:
	mov r1, sl
	adds r1, #0x79
	movs r2, #0
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x9a
	strb r2, [r0]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
_08037B6A:
	bl sub_803967C
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r6, #0x7c]
	subs r1, #0xe
	movs r0, #0x40
	rsbs r0, r0, #0
	str r0, [r1]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
_08037B8C:
	movs r2, #0
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	bgt _08037BA8
	adds r3, r6, #0
	adds r3, #0x84
	ldr r1, [r3]
	adds r0, r1, #0
	cmp r1, #0
	bge _08037BA2
	adds r0, r1, #3
_08037BA2:
	asrs r0, r0, #2
	subs r0, r1, r0
	str r0, [r3]
_08037BA8:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08037BC4
	ldr r0, [r6, #0x74]
	ldr r1, _08037BC0 @ =0xFFFF8C00
	cmp r0, r1
	blt _08037BD2
	str r1, [r6, #0x74]
	b _08037BD8
	.align 2, 0
_08037BC0: .4byte 0xFFFF8C00
_08037BC4:
	ldr r0, [r6, #0x74]
	movs r1, #0xe8
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08037BD2
	str r1, [r6, #0x74]
	movs r2, #0xff
_08037BD2:
	cmp r2, #0
	bne _08037BD8
	b _0803802A
_08037BD8:
	movs r1, #0
	str r1, [r6, #0x7c]
	adds r0, r6, #0
	adds r0, #0x84
	str r1, [r0]
	adds r0, #0xe
	ldrh r0, [r0]
	cmp r0, #0
	beq _08037BEE
	movs r0, #4
	b _08038028
_08037BEE:
	movs r0, #0x10
	b _08038028
_08037BF2:
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	subs r0, #1
	movs r4, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0
	bne _08037C40
	movs r0, #4
	strb r0, [r5]
	ldr r0, _08037C30 @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08037C20
	ldr r0, _08037C34 @ =gUnknown_03005024
	ldrb r0, [r0]
	cmp r0, #0
	bne _08037C20
	b _0803802A
_08037C20:
	ldr r1, _08037C38 @ =gUnknown_03001B30
	ldr r0, _08037C3C @ =0x00001F1F
	strh r0, [r1, #8]
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	b _0803802A
	.align 2, 0
_08037C30: .4byte gUnknown_03005A20
_08037C34: .4byte gUnknown_03005024
_08037C38: .4byte gUnknown_03001B30
_08037C3C: .4byte 0x00001F1F
_08037C40:
	ldr r0, _08037D54 @ =gUnknown_03005A20
	ldr r1, [r0, #0x10]
	movs r2, #0x80
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _08037C56
	ldr r0, _08037D58 @ =gUnknown_03005024
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037C5C
_08037C56:
	ldr r1, _08037D5C @ =gUnknown_03001B30
	ldr r0, _08037D60 @ =0x00003F3F
	strh r0, [r1, #8]
_08037C5C:
	movs r1, #0
	ldrsh r0, [r3, r1]
	subs r0, #0xf
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08037C72
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08037C72:
	movs r0, #0xf
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb
	ble _08037C8C
	movs r1, #0xc
	movs r4, #0xb
_08037C8C:
	ldrh r0, [r7, #0x18]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r2, r0, r1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xa0
	ble _08037CA6
	movs r3, #0xa0
_08037CA6:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08037D80
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08037CC4
	ldr r0, _08037D58 @ =gUnknown_03005024
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037CDE
_08037CC4:
	ldr r2, _08037D5C @ =gUnknown_03001B30
	ldrh r0, [r7, #0x16]
	adds r0, #0x20
	lsls r0, r0, #8
	movs r1, #0xf0
	orrs r0, r1
	strh r0, [r2]
	lsls r1, r5, #0x10
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2, #4]
_08037CDE:
	ldr r0, _08037D64 @ =gCamera
	ldrh r5, [r0]
	adds r5, #0x78
	ldrh r0, [r7, #0x16]
	subs r0, #0x58
	lsls r4, r4, #0x10
	rsbs r3, r4, #0
	asrs r3, r3, #0x10
	movs r2, #0
	str r2, [sp, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08037D68 @ =0xFFFFFF00
	ldr r7, [sp, #0x10]
	ands r1, r7
	orrs r1, r0
	str r1, [sp, #0x10]
	movs r0, #0xf0
	lsls r0, r0, #0xf
	ldr r2, _08037D6C @ =0xFF00FFFF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x10]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x10
	ldr r0, _08037D70 @ =0xFFFF00FF
	ands r0, r2
	orrs r0, r3
	str r0, [sp, #0x10]
	lsls r4, r4, #8
	ldr r1, _08037D74 @ =0x00FFFFFF
	ands r0, r1
	orrs r0, r4
	str r0, [sp, #0x10]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldr r0, [sp, #0x20]
	asrs r4, r0, #0x10
	str r6, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_800C1E8
	adds r6, r0, #0
	ldr r0, _08037D78 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08037D48
	b _08037E44
_08037D48:
	ldr r0, _08037D7C @ =gUnknown_03005AB0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	b _08037E14
	.align 2, 0
_08037D54: .4byte gUnknown_03005A20
_08037D58: .4byte gUnknown_03005024
_08037D5C: .4byte gUnknown_03001B30
_08037D60: .4byte 0x00003F3F
_08037D64: .4byte gCamera
_08037D68: .4byte 0xFFFFFF00
_08037D6C: .4byte 0xFF00FFFF
_08037D70: .4byte 0xFFFF00FF
_08037D74: .4byte 0x00FFFFFF
_08037D78: .4byte gUnknown_03005088
_08037D7C: .4byte gUnknown_03005AB0
_08037D80:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08037D92
	ldr r0, _08037E20 @ =gUnknown_03005024
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037DA6
_08037D92:
	ldr r2, _08037E24 @ =gUnknown_03001B30
	ldrh r0, [r7, #0x16]
	subs r0, #0x20
	strh r0, [r2]
	lsls r1, r5, #0x10
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2, #4]
_08037DA6:
	ldr r0, _08037E28 @ =gCamera
	ldrh r5, [r0]
	adds r5, #0x78
	ldrh r2, [r7, #0x16]
	subs r2, #0x98
	lsls r4, r4, #0x10
	rsbs r3, r4, #0
	asrs r3, r3, #0x10
	movs r0, #0
	str r0, [sp, #0x14]
	movs r1, #0x88
	ldr r0, _08037E2C @ =0xFFFFFF00
	ldr r7, [sp, #0x18]
	ands r0, r7
	orrs r0, r1
	str r0, [sp, #0x18]
	lsls r2, r2, #0x18
	lsrs r2, r2, #8
	ldr r1, _08037E30 @ =0xFF00FFFF
	ands r1, r0
	orrs r1, r2
	str r1, [sp, #0x18]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x10
	ldr r0, _08037E34 @ =0xFFFF00FF
	ands r0, r1
	orrs r0, r3
	str r0, [sp, #0x18]
	lsls r4, r4, #8
	ldr r1, _08037E38 @ =0x00FFFFFF
	ands r0, r1
	orrs r0, r4
	str r0, [sp, #0x18]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldr r0, [sp, #0x20]
	asrs r4, r0, #0x10
	str r6, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_800C1E8
	adds r6, r0, #0
	ldr r0, _08037E3C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08037E44
	ldr r0, _08037E40 @ =gUnknown_03005AB0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
_08037E14:
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_800C1E8
	b _08037E46
	.align 2, 0
_08037E20: .4byte gUnknown_03005024
_08037E24: .4byte gUnknown_03001B30
_08037E28: .4byte gCamera
_08037E2C: .4byte 0xFFFFFF00
_08037E30: .4byte 0xFF00FFFF
_08037E34: .4byte 0xFFFF00FF
_08037E38: .4byte 0x00FFFFFF
_08037E3C: .4byte gUnknown_03005088
_08037E40: .4byte gUnknown_03005AB0
_08037E44:
	movs r0, #0
_08037E46:
	orrs r6, r0
	cmp r6, #2
	beq _08037E4E
	b _0803802A
_08037E4E:
	ldr r0, _08037E74 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r1, _08037E78 @ =0x03000044
	adds r3, r2, r1
	ldr r4, _08037E7C @ =0x03000064
	adds r1, r2, r4
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08037E80 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r7, _08037E84 @ =0x03000065
	adds r2, r2, r7
	movs r0, #0xff
	strb r0, [r2]
	b _0803802A
	.align 2, 0
_08037E74: .4byte gCurTask
_08037E78: .4byte 0x03000044
_08037E7C: .4byte 0x03000064
_08037E80: .4byte 0xFFFFBFFF
_08037E84: .4byte 0x03000065
_08037E88:
	bl sub_8039940
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
_08037E92:
	movs r0, #4
	b _08038028
_08037E96:
	ldr r0, _08037EA8 @ =0xFFFFFE00
	str r0, [r6, #0x7c]
	adds r1, r6, #0
	adds r1, #0x92
	movs r0, #0
	strh r0, [r1]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
	.align 2, 0
_08037EA8: .4byte 0xFFFFFE00
_08037EAC:
	adds r3, r6, #0
	adds r3, #0x92
	ldrh r0, [r3]
	cmp r0, #0
	beq _08037EC2
	mov r0, sl
	adds r0, #0x79
	movs r2, #0
	movs r1, #0xf
	strb r1, [r0]
	strh r2, [r3]
_08037EC2:
	movs r2, #0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08037EE4
	ldr r1, [r6, #0x74]
	ldr r0, _08037EE0 @ =0x0000CFFF
	cmp r1, r0
	ble _08037EF0
	adds r0, #1
	str r0, [sp, #8]
	b _08037EF6
	.align 2, 0
_08037EE0: .4byte 0x0000CFFF
_08037EE4:
	ldr r0, [r6, #0x74]
	ldr r1, _08037F14 @ =0xFFFF3000
	cmp r0, r1
	bgt _08037EF0
	str r1, [sp, #8]
	movs r2, #0xff
_08037EF0:
	cmp r2, #0
	bne _08037EF6
	b _0803802A
_08037EF6:
	ldr r1, [sp, #8]
	str r1, [r6, #0x74]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	str r0, [r7, #0x10]
	ldr r2, [sp, #4]
	ldr r0, [r2, #0x10]
	eors r0, r1
	str r0, [r2, #0x10]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
	.align 2, 0
_08037F14: .4byte 0xFFFF3000
_08037F18:
	movs r2, #0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08037F38
	ldr r0, [r6, #0x74]
	ldr r1, _08037F34 @ =0xFFFF8C00
	cmp r0, r1
	blt _08037F46
	str r1, [sp, #8]
	b _08037F4A
	.align 2, 0
_08037F34: .4byte 0xFFFF8C00
_08037F38:
	ldr r0, [r6, #0x74]
	movs r1, #0xe8
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08037F46
	str r1, [sp, #8]
	movs r2, #0xff
_08037F46:
	cmp r2, #0
	beq _0803802A
_08037F4A:
	ldr r3, [sp, #8]
	str r3, [r6, #0x74]
	movs r0, #0
	str r0, [r6, #0x7c]
	b _08038028
_08037F54:
	mov r0, sl
	adds r0, #0x7a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803802A
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803802A
	ldr r0, _08037F7C @ =0xFFFFFD00
	str r0, [r6, #0x7c]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
	.align 2, 0
_08037F7C: .4byte 0xFFFFFD00
_08037F80:
	movs r2, #0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08037FA4
	ldr r1, [r6, #0x74]
	ldr r0, _08037FA0 @ =0x0000CFFF
	cmp r1, r0
	ble _08037FB0
	movs r4, #0xd0
	lsls r4, r4, #8
	str r4, [sp, #8]
	b _08037FB4
	.align 2, 0
_08037FA0: .4byte 0x0000CFFF
_08037FA4:
	ldr r0, [r6, #0x74]
	ldr r1, _08037FDC @ =0xFFFF3000
	cmp r0, r1
	bgt _08037FB0
	str r1, [sp, #8]
	movs r2, #0xff
_08037FB0:
	cmp r2, #0
	beq _0803802A
_08037FB4:
	ldr r0, _08037FE0 @ =0xFFFFFE00
	str r0, [r6, #0x7c]
	mov r1, sl
	adds r1, #0x79
	movs r0, #0x13
	strb r0, [r1]
	ldr r0, [sp, #8]
	str r0, [r6, #0x74]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	str r0, [r7, #0x10]
	ldr r2, [sp, #4]
	ldr r0, [r2, #0x10]
	eors r0, r1
	str r0, [r2, #0x10]
	ldrb r0, [r5]
	adds r0, #1
	b _08038028
	.align 2, 0
_08037FDC: .4byte 0xFFFF3000
_08037FE0: .4byte 0xFFFFFE00
_08037FE4:
	movs r2, #0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08038004
	ldr r0, [r6, #0x74]
	ldr r1, _08038000 @ =0xFFFF8C00
	cmp r0, r1
	blt _08038014
	str r1, [r6, #0x74]
	str r2, [r6, #0x7c]
	b _08038018
	.align 2, 0
_08038000: .4byte 0xFFFF8C00
_08038004:
	ldr r0, [r6, #0x74]
	movs r1, #0xe8
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08038014
	str r1, [r6, #0x74]
	str r2, [r6, #0x7c]
	movs r2, #0xff
_08038014:
	cmp r2, #0
	beq _0803802A
_08038018:
	mov r0, sl
	adds r0, #0x7a
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803802A
	movs r0, #0
_08038028:
	strb r0, [r5]
_0803802A:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803803C
sub_803803C: @ 0x0803803C
	push {r4, r5, r6, lr}
	ldr r0, _08038108 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r2, _0803810C @ =0x0300000C
	adds r4, r1, r2
	ldr r3, _08038110 @ =0x03000099
	adds r2, r1, r3
	movs r5, #0
	strb r5, [r2]
	str r5, [r0, #0x7c]
	ldr r2, _08038114 @ =0x03000080
	adds r0, r1, r2
	str r5, [r0]
	subs r3, #0x35
	adds r2, r1, r3
	movs r0, #2
	strb r0, [r2]
	ldr r0, _08038118 @ =0x03000065
	adds r1, r1, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0803811C @ =gCamera
	ldrh r0, [r1]
	strh r0, [r1, #0x18]
	adds r0, #0xf0
	strh r0, [r1, #0x1a]
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r0, [r4, #0x10]
	ldr r1, _08038120 @ =0xFFFFFE7F
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r3, _08038124 @ =gUnknown_03005A20
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080380AA
	ldr r2, _08038128 @ =gDispCnt
	ldrh r0, [r2]
	ldr r1, _0803812C @ =0x00007FFF
	ands r1, r0
	ldr r0, _08038130 @ =gUnknown_03001B30
	strh r5, [r0, #0xa]
	ldr r0, _08038134 @ =gUnknown_030011A8
	strh r5, [r0]
	strh r5, [r0, #4]
	ldr r0, _08038138 @ =0x00001FFF
	ands r1, r0
	strh r1, [r2]
_080380AA:
	strh r5, [r3, #0xc]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r3, #0x10]
	strh r5, [r3, #0x38]
	strh r5, [r3, #0x3a]
	ldr r2, _0803813C @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08038140 @ =gUnknown_03005030
	ldr r6, [r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r6, r2
	str r0, [r1]
	ldr r4, _08038144 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _080380F6
	ldr r0, _08038148 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _080380F6
	ldr r1, _0803814C @ =gUnknown_03005024
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080380F6:
	bl sub_8038154
	ldr r0, _08038108 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08038150 @ =sub_8038154
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038108: .4byte gCurTask
_0803810C: .4byte 0x0300000C
_08038110: .4byte 0x03000099
_08038114: .4byte 0x03000080
_08038118: .4byte 0x03000065
_0803811C: .4byte gCamera
_08038120: .4byte 0xFFFFFE7F
_08038124: .4byte gUnknown_03005A20
_08038128: .4byte gDispCnt
_0803812C: .4byte 0x00007FFF
_08038130: .4byte gUnknown_03001B30
_08038134: .4byte gUnknown_030011A8
_08038138: .4byte 0x00001FFF
_0803813C: .4byte gUnknown_03005004
_08038140: .4byte gUnknown_03005030
_08038144: .4byte 0x0000C350
_08038148: .4byte gGameMode
_0803814C: .4byte gUnknown_03005024
_08038150: .4byte sub_8038154

	thumb_func_start sub_8038154
sub_8038154: @ 0x08038154
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r5, #0
	movs r7, #0
	ldr r4, _08038244 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0xc
	adds r0, r0, r3
	mov r8, r0
	ldr r1, _08038248 @ =0x03000044
	adds r1, r1, r3
	mov sb, r1
	ldr r2, _0803824C @ =0x03000099
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803822C
	ldr r5, _08038250 @ =0x03000080
	adds r2, r3, r5
	cmp r0, #0
	bne _08038192
	ldr r0, [r2]
	adds r0, #0x10
	str r0, [r2]
_08038192:
	ldr r0, [r6, #0x74]
	ldr r1, [r6, #0x7c]
	adds r0, r0, r1
	str r0, [r6, #0x74]
	ldr r1, [r6, #0x78]
	ldr r2, [r2]
	adds r1, r1, r2
	str r1, [r6, #0x78]
	ldr r5, _08038254 @ =0x03000088
	adds r2, r3, r5
	asrs r0, r0, #8
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _08038258 @ =0x0300008A
	adds r0, r3, r2
	asrs r1, r1, #8
	ldrh r0, [r0]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r1, _0803825C @ =0x0300008C
	adds r0, r3, r1
	strh r5, [r0]
	adds r2, #4
	adds r0, r3, r2
	strh r7, [r0]
	adds r1, #6
	adds r0, r3, r1
	ldrh r1, [r0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080381E4
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_8038420
_080381E4:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	ldr r4, [r4]
	ldrh r1, [r4, #6]
	ldr r2, _08038260 @ =0x0300000C
	adds r1, r1, r2
	ldr r3, _08038264 @ =gCamera
	ldrh r2, [r3]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x16]
	ldrh r2, [r3, #2]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x18]
	ldrh r0, [r4, #6]
	ldr r1, _08038260 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	mov r0, r8
	bl DisplaySprite
	mov r0, sb
	bl DisplaySprite
_0803822C:
	adds r0, r6, #0
	adds r0, #0x99
	ldrb r4, [r0]
	mov sb, r0
	cmp r4, #1
	beq _08038332
	cmp r4, #1
	bgt _08038268
	cmp r4, #0
	beq _08038270
	b _0803840C
	.align 2, 0
_08038244: .4byte gCurTask
_08038248: .4byte 0x03000044
_0803824C: .4byte 0x03000099
_08038250: .4byte 0x03000080
_08038254: .4byte 0x03000088
_08038258: .4byte 0x0300008A
_0803825C: .4byte 0x0300008C
_08038260: .4byte 0x0300000C
_08038264: .4byte gCamera
_08038268:
	cmp r4, #2
	bne _0803826E
	b _08038404
_0803826E:
	b _0803840C
_08038270:
	movs r2, #0x92
	adds r2, r2, r6
	mov r8, r2
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x14
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08038314 @ =sub_803FD5C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	blt _08038298
	b _0803840C
_08038298:
	lsls r1, r0, #8
	ldr r0, [r6, #0x78]
	adds r0, r0, r1
	str r0, [r6, #0x78]
	adds r2, r6, #0
	adds r2, #0x80
	ldr r1, [r2]
	asrs r0, r1, #2
	subs r0, r0, r1
	str r0, [r2]
	ldr r1, _08038318 @ =0xFFFFFF00
	cmp r0, r1
	bgt _080382B4
	b _0803840C
_080382B4:
	str r4, [r2]
	movs r0, #0xf0
	mov r5, r8
	strh r0, [r5]
	mov r1, sb
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _0803831C @ =gUnknown_03005084
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803832C
	ldr r0, _08038320 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	ble _0803832C
	ldr r1, _08038324 @ =gUnknown_03005160
	ldrb r0, [r1, #0x1d]
	cmp r0, #0x7f
	bne _0803832C
	ldrh r2, [r1, #8]
	cmp r2, #0xc
	bls _0803832C
	ldrh r0, [r1, #0xa]
	cmp r0, #0xc
	bls _0803832C
	ldrh r0, [r1, #0xc]
	cmp r0, #0xc
	bls _0803832C
	ldrh r0, [r1, #0xe]
	cmp r0, #0xc
	bls _0803832C
	cmp r2, #0xf
	bne _0803830C
	ldr r0, _08038328 @ =gUnknown_03005124
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	beq _0803832C
_0803830C:
	bl sub_803A54C
	b _0803840C
	.align 2, 0
_08038314: .4byte sub_803FD5C
_08038318: .4byte 0xFFFFFF00
_0803831C: .4byte gUnknown_03005084
_08038320: .4byte gCurrentLevel
_08038324: .4byte gUnknown_03005160
_08038328: .4byte gUnknown_03005124
_0803832C:
	bl sub_803A594
	b _0803840C
_08038332:
	adds r1, r6, #0
	adds r1, #0x92
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803840C
	ldr r0, _080383EC @ =gUnknown_03005084
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r6, r5, #0x10
	lsls r2, r7, #0x10
	cmp r0, #0
	bne _080383A2
	ldr r0, _080383F0 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	ble _080383A2
	ldr r1, _080383F4 @ =gUnknown_03005160
	ldrb r0, [r1, #0x1d]
	cmp r0, #0x7f
	bne _080383A2
	ldrh r3, [r1, #8]
	cmp r3, #0xc
	bls _080383A2
	ldrh r0, [r1, #0xa]
	cmp r0, #0xc
	bls _080383A2
	ldrh r0, [r1, #0xc]
	cmp r0, #0xc
	bls _080383A2
	ldrh r0, [r1, #0xe]
	cmp r0, #0xc
	bls _080383A2
	cmp r3, #0xf
	bne _0803838E
	ldr r0, _080383F8 @ =gUnknown_03005124
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	beq _080383A2
_0803838E:
	lsls r5, r5, #0x10
	asrs r0, r5, #0x10
	lsls r4, r7, #0x10
	ldr r2, _080383FC @ =0xFFF80000
	adds r1, r4, r2
	asrs r1, r1, #0x10
	bl sub_8015C5C
	adds r6, r5, #0
	adds r2, r4, #0
_080383A2:
	ldr r1, _08038400 @ =gUnknown_03005040
	movs r0, #0x36
	strb r0, [r1, #1]
	asrs r4, r6, #0x10
	lsls r5, r4, #8
	mov r8, r5
	asrs r5, r2, #0x10
	adds r1, r5, #0
	subs r1, #0x18
	lsls r1, r1, #8
	mov r0, r8
	bl sub_8017540
	adds r0, r4, #0
	subs r0, #0x10
	lsls r0, r0, #8
	lsls r6, r5, #8
	adds r1, r6, #0
	bl sub_8017540
	adds r4, #0x10
	lsls r4, r4, #8
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_8017540
	adds r5, #0x18
	lsls r5, r5, #8
	mov r0, r8
	adds r1, r5, #0
	bl sub_8017540
	mov r1, sb
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0803840C
	.align 2, 0
_080383EC: .4byte gUnknown_03005084
_080383F0: .4byte gCurrentLevel
_080383F4: .4byte gUnknown_03005160
_080383F8: .4byte gUnknown_03005124
_080383FC: .4byte 0xFFF80000
_08038400: .4byte gUnknown_03005040
_08038404:
	ldr r0, _0803841C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0803840C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803841C: .4byte gCurTask

	thumb_func_start sub_8038420
sub_8038420: @ 0x08038420
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _0803852C @ =gUnknown_03004C58
	mov sb, r0
	ldr r0, [r0]
	ldr r7, _08038530 @ =0x00196225
	muls r0, r7, r0
	ldr r1, _08038534 @ =0x3C6EF35F
	mov sl, r1
	add r0, sl
	mov r1, sb
	str r0, [r1]
	movs r4, #7
	ands r4, r0
	ldr r0, _08038538 @ =gUnknown_080BB434
	adds r0, r4, r0
	ldrb r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	ldr r2, _0803853C @ =gUnknown_080BB41C
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, _08038540 @ =gUnknown_080BB42C
	adds r4, r4, r0
	ldrb r3, [r4]
	ldr r0, _08038544 @ =sub_80177EC
	str r0, [sp]
	mov r0, r8
	bl sub_801769C
	ldrh r1, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r1, r3
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r0, r5, #8
	str r0, [r3, #0x30]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov ip, r6
	mov r0, ip
	adds r0, #0x10
	lsls r0, r0, #8
	str r0, [r3, #0x34]
	mov r6, r8
	str r6, [r3, #0x10]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r3, #0x1a]
	movs r0, #5
	strh r0, [r3, #0x3e]
	ldr r0, _08038548 @ =0x03000040
	adds r1, r1, r0
	movs r0, #0x20
	strh r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	adds r4, r0, #0
	muls r4, r7, r4
	add r4, sl
	str r4, [r1]
	ldr r6, _0803854C @ =gSineTable
	mov r8, r6
	ldr r1, _08038550 @ =0x000001FF
	ands r1, r4
	lsls r0, r1, #1
	add r0, r8
	movs r6, #0
	ldrsh r2, [r0, r6]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x3a]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	add r1, r8
	movs r6, #0
	ldrsh r1, [r1, r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #9
	rsbs r0, r0, #0
	asrs r0, r0, #0xe
	strh r0, [r3, #0x38]
	adds r1, r4, #0
	muls r1, r7, r1
	add r1, sl
	mov r0, sb
	str r1, [r0]
	movs r0, #0x3f
	ands r0, r1
	adds r5, r5, r0
	subs r5, #0x20
	lsls r5, r5, #8
	movs r0, #0xfc
	lsls r0, r0, #0xe
	ands r1, r0
	asrs r1, r1, #0x10
	subs r1, #0x20
	mov r0, ip
	subs r6, r0, r1
	lsls r6, r6, #8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8017540
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803852C: .4byte gUnknown_03004C58
_08038530: .4byte 0x00196225
_08038534: .4byte 0x3C6EF35F
_08038538: .4byte gUnknown_080BB434
_0803853C: .4byte gUnknown_080BB41C
_08038540: .4byte gUnknown_080BB42C
_08038544: .4byte sub_80177EC
_08038548: .4byte 0x03000040
_0803854C: .4byte gSineTable
_08038550: .4byte 0x000001FF

	thumb_func_start sub_8038554
sub_8038554: @ 0x08038554
	push {r4, r5, lr}
	ldr r0, _08038574 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #8]
	cmp r0, #8
	bls _0803856A
	b _08038858
_0803856A:
	lsls r0, r0, #2
	ldr r1, _08038578 @ =_0803857C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08038574: .4byte gCurTask
_08038578: .4byte _0803857C
_0803857C: @ jump table
	.4byte _080385A0 @ case 0
	.4byte _080385F0 @ case 1
	.4byte _08038638 @ case 2
	.4byte _08038668 @ case 3
	.4byte _08038690 @ case 4
	.4byte _080386D4 @ case 5
	.4byte _08038788 @ case 6
	.4byte _080387CC @ case 7
	.4byte _08038820 @ case 8
_080385A0:
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _080385AC
	subs r0, #1
	strh r0, [r4, #6]
	b _08038858
_080385AC:
	ldr r2, _080385DC @ =gUnknown_03005A20
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080385BA
	b _08038858
_080385BA:
	movs r0, #0x10
	strh r0, [r2, #0x38]
	ldr r2, _080385E0 @ =gUnknown_03005A0C
	ldr r1, _080385E4 @ =gUnknown_084ADEA8
	ldr r0, _080385E8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r1, _080385EC @ =gCamera
	ldrh r0, [r0, #0x1c]
	strh r0, [r1, #0x1a]
	b _08038804
	.align 2, 0
_080385DC: .4byte gUnknown_03005A20
_080385E0: .4byte gUnknown_03005A0C
_080385E4: .4byte gUnknown_084ADEA8
_080385E8: .4byte gCurrentLevel
_080385EC: .4byte gCamera
_080385F0:
	ldr r5, _0803862C @ =gUnknown_03005A20
	ldr r1, [r5]
	ldr r0, _08038630 @ =0x000E5FFF
	cmp r1, r0
	bgt _080385FC
	b _08038858
_080385FC:
	movs r0, #0x20
	strh r0, [r5, #0x38]
	movs r0, #0xc
	strh r0, [r4, #6]
	bl sub_8038C20
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	ldr r3, _08038634 @ =gCamera
	movs r1, #0x14
	ldrsh r0, [r3, r1]
	movs r2, #0x16
	ldrsh r1, [r3, r2]
	ldr r2, [r5]
	asrs r2, r2, #8
	subs r2, #0x60
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r5, #0x1a
	ldrsh r3, [r3, r5]
	bl sub_80171BC
	b _08038858
	.align 2, 0
_0803862C: .4byte gUnknown_03005A20
_08038630: .4byte 0x000E5FFF
_08038634: .4byte gCamera
_08038638:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08038648
	b _08038858
_08038648:
	ldr r2, _08038664 @ =gUnknown_03005A20
	strh r0, [r2, #0x38]
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x34
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x3c
	strh r0, [r4, #6]
	b _08038804
	.align 2, 0
_08038664: .4byte gUnknown_03005A20
_08038668:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08038676
	b _08038858
_08038676:
	ldr r0, _08038688 @ =gUnknown_03004FEC
	ldrh r0, [r0]
	ldr r1, _0803868C @ =gUnknown_03005034
	ldr r1, [r1]
	bl sub_80573D4
	strh r0, [r4, #6]
	b _08038804
	.align 2, 0
_08038688: .4byte gUnknown_03004FEC
_0803868C: .4byte gUnknown_03005034
_08038690:
	ldr r3, _080386CC @ =gUnknown_03005A20
	adds r1, r3, #0
	adds r1, #0x46
	movs r0, #0x3c
	strh r0, [r1]
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080386AA
	b _08038858
_080386AA:
	subs r1, #6
	movs r0, #0x32
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r3, #4]
	ldr r1, _080386D0 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r3, #4]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0xc]
	strh r2, [r4, #6]
	b _08038804
	.align 2, 0
_080386CC: .4byte gUnknown_03005A20
_080386D0: .4byte 0xFFFFF000
_080386D4:
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x22
	bne _080386E6
	bl sub_8038B38
_080386E6:
	ldrh r0, [r4, #6]
	cmp r0, #0x99
	bls _08038704
	ldr r0, _08038700 @ =gUnknown_03005A20
	adds r0, #0x40
	movs r1, #0x33
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0xc]
	movs r0, #0x78
	strh r0, [r4, #6]
	b _08038804
	.align 2, 0
_08038700: .4byte gUnknown_03005A20
_08038704:
	cmp r0, #0x21
	bls _0803873C
	ldrh r0, [r4, #0xe]
	adds r0, #0x10
	ldr r1, _08038730 @ =0x000003FF
	ands r0, r1
	strh r0, [r4, #0xe]
	ldr r1, _08038734 @ =gSineTable
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _08038738 @ =gUnknown_03005A20
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	asrs r1, r1, #0x1b
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r2, #4]
	b _08038858
	.align 2, 0
_08038730: .4byte 0x000003FF
_08038734: .4byte gSineTable
_08038738: .4byte gUnknown_03005A20
_0803873C:
	cmp r0, #0x1f
	bls _08038764
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	ldrh r1, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldr r2, _08038760 @ =gUnknown_03005A20
	movs r3, #0xc
	ldrsh r1, [r4, r3]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	asrs r0, r0, #8
	strh r0, [r4, #0xa]
	b _08038858
	.align 2, 0
_08038760: .4byte gUnknown_03005A20
_08038764:
	cmp r0, #0x19
	bls _08038858
	ldr r5, _08038780 @ =0xFFFFFE80
	adds r0, r5, #0
	ldrh r1, [r4, #0xc]
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	ldr r2, _08038784 @ =gUnknown_03005A20
	movs r3, #0xc
	ldrsh r1, [r4, r3]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	b _08038858
	.align 2, 0
_08038780: .4byte 0xFFFFFE80
_08038784: .4byte gUnknown_03005A20
_08038788:
	ldr r2, _080387A8 @ =gUnknown_03005A20
	ldr r1, [r2]
	movs r0, #0xf2
	lsls r0, r0, #0xc
	cmp r1, r0
	bgt _080387AC
	ldrh r0, [r4, #0xc]
	adds r0, #0x80
	strh r0, [r4, #0xc]
	movs r5, #0xc
	ldrsh r1, [r4, r5]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	b _080387B6
	.align 2, 0
_080387A8: .4byte gUnknown_03005A20
_080387AC:
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r2, #0x10]
_080387B6:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08038858
	bl sub_8038D2C
	movs r0, #0xb4
	strh r0, [r4, #6]
	b _08038804
_080387CC:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08038858
	ldr r1, _0803880C @ =gUnknown_03001B30
	ldr r0, _08038810 @ =0x00003F3F
	strh r0, [r1, #8]
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldr r1, _08038814 @ =gUnknown_030011A8
	movs r0, #0xbf
	strh r0, [r1]
	strh r3, [r1, #4]
	ldr r2, _08038818 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	orrs r0, r1
	ldr r1, _0803881C @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	strh r3, [r4, #6]
_08038804:
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	b _08038858
	.align 2, 0
_0803880C: .4byte gUnknown_03001B30
_08038810: .4byte 0x00003F3F
_08038814: .4byte gUnknown_030011A8
_08038818: .4byte gDispCnt
_0803881C: .4byte 0x0000BFFF
_08038820:
	ldrh r0, [r4, #6]
	adds r2, r0, #1
	strh r2, [r4, #6]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x80
	bls _08038850
	movs r0, #0x80
	lsls r0, r0, #6
	ldr r1, _08038848 @ =0x00002FFF
	bl TasksDestroyInPriorityRange
	ldr r0, _0803884C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_803D724
	b _08038858
	.align 2, 0
_08038848: .4byte 0x00002FFF
_0803884C: .4byte gCurTask
_08038850:
	ldr r1, _08038880 @ =gUnknown_030011A8
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x13
	strh r0, [r1, #4]
_08038858:
	ldr r0, _08038884 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08038912
	ldrb r0, [r4, #8]
	cmp r0, #0
	blt _08038900
	cmp r0, #4
	bgt _08038900
	ldrb r2, [r4, #9]
	cmp r2, #1
	beq _080388B8
	cmp r2, #1
	bgt _08038888
	cmp r2, #0
	beq _08038892
	b _08038912
	.align 2, 0
_08038880: .4byte gUnknown_030011A8
_08038884: .4byte gUnknown_03005088
_08038888:
	cmp r2, #2
	beq _080388D4
	cmp r2, #3
	beq _080388F4
	b _08038912
_08038892:
	ldr r3, _080388B0 @ =gUnknown_03005AB0
	ldr r1, [r3]
	ldr r0, _080388B4 @ =0x000E2FFF
	cmp r1, r0
	ble _08038912
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r3, #0x10]
	strh r2, [r3, #0x3a]
	movs r0, #0x20
	strh r0, [r3, #0x38]
	b _080388C6
	.align 2, 0
_080388B0: .4byte gUnknown_03005AB0
_080388B4: .4byte 0x000E2FFF
_080388B8:
	ldr r1, _080388D0 @ =gUnknown_03005AB0
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	cmp r0, #0x80
	bgt _08038912
	movs r0, #0
	strh r0, [r1, #0x38]
_080388C6:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	b _08038912
	.align 2, 0
_080388D0: .4byte gUnknown_03005AB0
_080388D4:
	ldr r2, _080388FC @ =gUnknown_03005AB0
	adds r0, r2, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080388F4
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r2, #0x10]
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
_080388F4:
	ldr r0, _080388FC @ =gUnknown_03005AB0
	bl sub_80472AC
	b _08038912
	.align 2, 0
_080388FC: .4byte gUnknown_03005AB0
_08038900:
	ldr r0, _08038918 @ =gUnknown_03005AB0
	adds r1, r0, #0
	adds r1, #0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x3d
	beq _08038912
	movs r0, #0x3d
	strb r0, [r1]
_08038912:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038918: .4byte gUnknown_03005AB0

	thumb_func_start sub_803891C
sub_803891C: @ 0x0803891C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080389D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	ldr r1, _080389DC @ =0x0000FFFF
	ands r0, r1
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803898C
	ldr r5, _080389E0 @ =gUnknown_03004C58
	ldr r0, [r5]
	ldr r2, _080389E4 @ =0x00196225
	mov sb, r2
	mov r4, sb
	muls r4, r0, r4
	ldr r0, _080389E8 @ =0x3C6EF35F
	mov r8, r0
	add r4, r8
	str r4, [r5]
	adds r0, r4, #0
	movs r1, #0xf0
	bl __modsi3
	ldr r6, _080389EC @ =gCamera
	ldrh r1, [r6]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	mov r0, sb
	muls r0, r4, r0
	add r0, r8
	str r0, [r5]
	movs r1, #0xa0
	bl __modsi3
	ldrh r1, [r6, #2]
	adds r1, r1, r0
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_8038420
_0803898C:
	ldrh r0, [r7, #2]
	adds r0, #1
	strh r0, [r7, #2]
	ldrh r1, [r7]
	ldr r4, _080389DC @ =0x0000FFFF
	ands r0, r4
	cmp r0, r1
	blo _080389C6
	movs r0, #0
	strh r0, [r7, #2]
	subs r0, r1, #2
	strh r0, [r7]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _080389B0
	movs r0, #4
	strh r0, [r7]
_080389B0:
	ldr r1, _080389F0 @ =gUnknown_03005A20
	ldr r0, [r1]
	asrs r0, r0, #8
	subs r0, #0x30
	ldr r1, [r1, #4]
	lsls r1, r1, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl sub_8038420
_080389C6:
	ldrb r0, [r7, #8]
	cmp r0, #1
	beq _08038A48
	cmp r0, #1
	bgt _080389F4
	cmp r0, #0
	beq _080389FA
	b _08038B22
	.align 2, 0
_080389D8: .4byte gCurTask
_080389DC: .4byte 0x0000FFFF
_080389E0: .4byte gUnknown_03004C58
_080389E4: .4byte 0x00196225
_080389E8: .4byte 0x3C6EF35F
_080389EC: .4byte gCamera
_080389F0: .4byte gUnknown_03005A20
_080389F4:
	cmp r0, #2
	beq _08038AA4
	b _08038B22
_080389FA:
	ldrh r0, [r7, #6]
	cmp r0, #0
	beq _08038A06
	subs r0, #1
	strh r0, [r7, #6]
	b _08038B22
_08038A06:
	ldr r2, _08038A34 @ =gUnknown_03005A20
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08038A14
	b _08038B22
_08038A14:
	movs r0, #0x10
	strh r0, [r2, #0x38]
	ldr r2, _08038A38 @ =gUnknown_03005A0C
	ldr r1, _08038A3C @ =gUnknown_084ADEA8
	ldr r0, _08038A40 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r1, _08038A44 @ =gCamera
	ldrh r0, [r0, #0x1c]
	strh r0, [r1, #0x1a]
	b _08038A7E
	.align 2, 0
_08038A34: .4byte gUnknown_03005A20
_08038A38: .4byte gUnknown_03005A0C
_08038A3C: .4byte gUnknown_084ADEA8
_08038A40: .4byte gCurrentLevel
_08038A44: .4byte gCamera
_08038A48:
	ldr r0, _08038A88 @ =gUnknown_03005A20
	ldr r1, [r0]
	ldr r0, _08038A8C @ =0x000BFFFF
	cmp r1, r0
	ble _08038B22
	ldr r1, _08038A90 @ =gUnknown_03001B30
	movs r3, #0
	ldr r0, _08038A94 @ =0x00003F3F
	strh r0, [r1, #8]
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldr r1, _08038A98 @ =gUnknown_030011A8
	movs r0, #0xbf
	strh r0, [r1]
	strh r3, [r1, #4]
	ldr r2, _08038A9C @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	ldr r1, _08038AA0 @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	strh r3, [r7, #6]
_08038A7E:
	ldrb r0, [r7, #8]
	adds r0, #1
	strb r0, [r7, #8]
	b _08038B22
	.align 2, 0
_08038A88: .4byte gUnknown_03005A20
_08038A8C: .4byte 0x000BFFFF
_08038A90: .4byte gUnknown_03001B30
_08038A94: .4byte 0x00003F3F
_08038A98: .4byte gUnknown_030011A8
_08038A9C: .4byte gDispCnt
_08038AA0: .4byte 0x0000BFFF
_08038AA4:
	ldrh r0, [r7, #6]
	adds r2, r0, #1
	movs r1, #0
	strh r2, [r7, #6]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x80
	bls _08038B10
	ldr r2, _08038AF4 @ =gUnknown_03005A20
	strh r1, [r2, #0x38]
	strh r1, [r2, #8]
	strh r1, [r2, #0xa]
	strh r1, [r2, #0xc]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #6
	ldr r1, _08038AF8 @ =0x00002FFF
	bl TasksDestroyInPriorityRange
	ldr r0, _08038AFC @ =gUnknown_03004FEC
	ldrh r0, [r0]
	ldr r1, _08038B00 @ =gUnknown_03005034
	ldr r1, [r1]
	bl sub_80573D4
	ldr r0, _08038B04 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r2, _08038B08 @ =gUnknown_030011A8
	ldrh r1, [r2]
	ldr r0, _08038B0C @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	b _08038B22
	.align 2, 0
_08038AF4: .4byte gUnknown_03005A20
_08038AF8: .4byte 0x00002FFF
_08038AFC: .4byte gUnknown_03004FEC
_08038B00: .4byte gUnknown_03005034
_08038B04: .4byte gCurTask
_08038B08: .4byte gUnknown_030011A8
_08038B0C: .4byte 0x0000FFEF
_08038B10:
	ldr r1, _08038B30 @ =gUnknown_030011A8
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x13
	strh r0, [r1, #4]
	ldr r1, _08038B34 @ =gCamera
	ldrh r0, [r7, #6]
	lsrs r0, r0, #1
	rsbs r0, r0, #0
	strh r0, [r1, #0xc]
_08038B22:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038B30: .4byte gUnknown_030011A8
_08038B34: .4byte gCamera

	thumb_func_start sub_8038B38
sub_8038B38: @ 0x08038B38
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	movs r5, #0xc0
	lsls r5, r5, #0x12
	ldr r0, _08038BB0 @ =sub_8038BC8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08038BB4 @ =sub_803A5EC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	adds r5, r4, r5
	movs r0, #0
	mov r8, r0
	movs r6, #0
	movs r0, #0xf
	strh r0, [r5, #0x30]
	movs r0, #0x38
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	movs r0, #0xc7
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	ldr r0, _08038BB8 @ =0x03000020
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08038BBC @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08038BC0 @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08038BC4 @ =0x03000025
	adds r4, r4, r0
	mov r0, r8
	strb r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038BB0: .4byte sub_8038BC8
_08038BB4: .4byte sub_803A5EC
_08038BB8: .4byte 0x03000020
_08038BBC: .4byte 0x03000021
_08038BC0: .4byte 0x03000022
_08038BC4: .4byte 0x03000025

	thumb_func_start sub_8038BC8
sub_8038BC8: @ 0x08038BC8
	push {r4, r5, lr}
	ldr r5, _08038C14 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r3, _08038C18 @ =gUnknown_03005A20
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r2, _08038C1C @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrh r0, [r4, #0x30]
	subs r0, #1
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08038C0C
	ldr r0, [r5]
	bl TaskDestroy
_08038C0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038C14: .4byte gCurTask
_08038C18: .4byte gUnknown_03005A20
_08038C1C: .4byte gCamera

	thumb_func_start sub_8038C20
sub_8038C20: @ 0x08038C20
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r0, _08038CE4 @ =sub_8038E34
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08038CE8 @ =sub_803A600
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r0, _08038CEC @ =0x03000050
	adds r1, r4, r0
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r0, _08038CF0 @ =0x00000EF4
	strh r0, [r1]
	ldr r0, _08038CF4 @ =0x03000052
	adds r1, r4, r0
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r1]
	str r6, [r5, #0x54]
	str r6, [r5, #0x58]
	ldr r0, _08038CF8 @ =0x0300005C
	adds r1, r4, r0
	ldr r0, _08038CFC @ =0x0000FFF8
	strh r0, [r1]
	ldr r0, _08038D00 @ =0x0300005E
	adds r1, r4, r0
	movs r0, #4
	strh r0, [r1]
	ldr r0, _08038D04 @ =0x0300004A
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, _08038D08 @ =0x0300004C
	adds r1, r4, r0
	ldr r0, _08038D0C @ =0x0000FFFF
	strh r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r5, #0x3c]
	movs r0, #4
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _08038D10 @ =0x000002DB
	strh r0, [r5, #0xa]
	ldr r1, _08038D14 @ =0x03000020
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08038D18 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08038D1C @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08038D20 @ =0x03000025
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	ldr r0, _08038D24 @ =0x00002030
	str r0, [r5, #0x10]
	ldr r0, _08038D28 @ =0x03000030
	adds r4, r4, r0
	strh r6, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038CE4: .4byte sub_8038E34
_08038CE8: .4byte sub_803A600
_08038CEC: .4byte 0x03000050
_08038CF0: .4byte 0x00000EF4
_08038CF4: .4byte 0x03000052
_08038CF8: .4byte 0x0300005C
_08038CFC: .4byte 0x0000FFF8
_08038D00: .4byte 0x0300005E
_08038D04: .4byte 0x0300004A
_08038D08: .4byte 0x0300004C
_08038D0C: .4byte 0x0000FFFF
_08038D10: .4byte 0x000002DB
_08038D14: .4byte 0x03000020
_08038D18: .4byte 0x03000021
_08038D1C: .4byte 0x03000022
_08038D20: .4byte 0x03000025
_08038D24: .4byte 0x00002030
_08038D28: .4byte 0x03000030

	thumb_func_start sub_8038D2C
sub_8038D2C: @ 0x08038D2C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r0, _08038DF0 @ =sub_8038E34
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08038DF4 @ =sub_803A600
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	ldr r0, _08038DF8 @ =0x03000050
	adds r1, r4, r0
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r0, _08038DFC @ =0x00000EF4
	strh r0, [r1]
	ldr r0, _08038E00 @ =0x03000052
	adds r1, r4, r0
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r1]
	str r6, [r5, #0x54]
	str r6, [r5, #0x58]
	ldr r0, _08038E04 @ =0x0300005C
	adds r1, r4, r0
	ldr r0, _08038E08 @ =0x0000FFF4
	strh r0, [r1]
	ldr r0, _08038E0C @ =0x0300005E
	adds r1, r4, r0
	movs r0, #6
	strh r0, [r1]
	ldr r0, _08038E10 @ =0x0300004A
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r0, _08038E14 @ =0x0300004C
	adds r1, r4, r0
	ldr r0, _08038E18 @ =0x0000FFFF
	strh r0, [r1]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r5, #0x3c]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	movs r0, #0xb7
	lsls r0, r0, #2
	strh r0, [r5, #0xa]
	ldr r1, _08038E1C @ =0x03000020
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08038E20 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08038E24 @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08038E28 @ =0x03000025
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	ldr r0, _08038E2C @ =0x00002030
	str r0, [r5, #0x10]
	ldr r0, _08038E30 @ =0x03000030
	adds r4, r4, r0
	strh r6, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038DF0: .4byte sub_8038E34
_08038DF4: .4byte sub_803A600
_08038DF8: .4byte 0x03000050
_08038DFC: .4byte 0x00000EF4
_08038E00: .4byte 0x03000052
_08038E04: .4byte 0x0300005C
_08038E08: .4byte 0x0000FFF4
_08038E0C: .4byte 0x0300005E
_08038E10: .4byte 0x0300004A
_08038E14: .4byte 0x0300004C
_08038E18: .4byte 0x0000FFFF
_08038E1C: .4byte 0x03000020
_08038E20: .4byte 0x03000021
_08038E24: .4byte 0x03000022
_08038E28: .4byte 0x03000025
_08038E2C: .4byte 0x00002030
_08038E30: .4byte 0x03000030

	thumb_func_start sub_8038E34
sub_8038E34: @ 0x08038E34
	push {r4, r5, r6, r7, lr}
	ldr r7, _08038EE8 @ =gCurTask
	ldr r0, [r7]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0x30
	adds r6, r2, r0
	ldr r1, _08038EEC @ =0x0300005C
	adds r0, r2, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r5, #0x54]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	ldr r4, _08038EF0 @ =0x0300005E
	adds r1, r2, r4
	movs r4, #0
	ldrsh r3, [r1, r4]
	ldr r1, [r5, #0x58]
	adds r1, r1, r3
	str r1, [r5, #0x58]
	ldr r4, _08038EF4 @ =0x03000050
	adds r3, r2, r4
	asrs r0, r0, #8
	ldrh r3, [r3]
	adds r0, r0, r3
	adds r4, #2
	adds r3, r2, r4
	asrs r1, r1, #8
	ldrh r3, [r3]
	adds r1, r1, r3
	ldr r4, _08038EF8 @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r6, #6]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #8]
	ldr r0, _08038EFC @ =0x0300004A
	adds r1, r2, r0
	ldr r3, _08038F00 @ =0x0300004C
	adds r2, r2, r3
	ldrh r0, [r2]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #4
	cmp r0, r2
	bgt _08038EAA
	strh r2, [r1]
_08038EAA:
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r6, #2]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r6, #4]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_80037D0
	adds r0, r5, #0
	bl DisplaySprite
	ldrh r0, [r5, #0x3c]
	subs r0, #1
	strh r0, [r5, #0x3c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08038EE0
	ldr r0, [r7]
	bl TaskDestroy
_08038EE0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08038EE8: .4byte gCurTask
_08038EEC: .4byte 0x0300005C
_08038EF0: .4byte 0x0300005E
_08038EF4: .4byte 0x03000050
_08038EF8: .4byte gCamera
_08038EFC: .4byte 0x0300004A
_08038F00: .4byte 0x0300004C

	thumb_func_start sub_8038F04
sub_8038F04: @ 0x08038F04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08039028 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r0, r0, r4
	mov sl, r0
	ldr r0, _0803902C @ =sub_8039264
	ldr r2, _08039030 @ =0x00002001
	ldr r1, _08039034 @ =sub_803A5D0
	str r1, [sp]
	movs r1, #0x7c
	movs r3, #0
	bl TaskCreate
	ldr r1, _08039038 @ =0x0300009C
	add r1, r8
	str r0, [r1]
	ldrh r5, [r0, #6]
	adds r4, r5, r4
	ldr r1, _0803903C @ =0x03000088
	add r1, r8
	mov r2, sl
	ldr r0, [r2, #0x74]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r2, _08039040 @ =0x03000074
	adds r1, r5, r2
	movs r6, #0
	strh r0, [r1]
	ldr r0, _08039044 @ =0x0300008A
	add r8, r0
	mov r1, sl
	ldr r0, [r1, #0x78]
	asrs r0, r0, #8
	mov r2, r8
	ldrh r2, [r2]
	adds r0, r0, r2
	ldr r2, _08039048 @ =0x03000076
	adds r1, r5, r2
	strh r0, [r1]
	str r6, [r4, #0x64]
	ldr r0, _0803904C @ =0xFFFFE900
	str r0, [r4, #0x68]
	str r6, [r4, #0x6c]
	str r6, [r4, #0x70]
	ldr r1, _08039050 @ =0x03000078
	adds r0, r5, r1
	movs r2, #0
	strb r2, [r0]
	adds r1, #1
	adds r0, r5, r1
	strb r2, [r0]
	ldr r2, _08039054 @ =0x0300007A
	adds r0, r5, r2
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4, #4]
	movs r2, #0xa0
	lsls r2, r2, #3
	strh r2, [r4, #0x1a]
	strh r6, [r4, #8]
	movs r0, #0xac
	lsls r0, r0, #2
	mov sb, r0
	mov r1, sb
	strh r1, [r4, #0xa]
	ldr r2, _08039058 @ =0x03000020
	adds r1, r5, r2
	movs r0, #8
	strb r0, [r1]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _0803905C @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08039060 @ =0x03000022
	adds r0, r5, r1
	movs r7, #0x10
	strb r7, [r0]
	adds r2, #5
	adds r0, r5, r2
	movs r1, #0
	strb r1, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	mov sl, r2
	str r2, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	str r0, [r4, #0x10]
	ldr r1, _08039064 @ =0x03000030
	adds r4, r5, r1
	movs r0, #0xc
	bl VramMalloc
	str r0, [r4, #4]
	movs r2, #0xa0
	lsls r2, r2, #3
	strh r2, [r4, #0x1a]
	strh r6, [r4, #8]
	mov r0, sb
	strh r0, [r4, #0xa]
	ldr r2, _08039068 @ =0x03000050
	adds r1, r5, r2
	movs r0, #0xb
	strb r0, [r1]
	strh r6, [r4, #0x14]
	strh r6, [r4, #0x1c]
	ldr r0, _0803906C @ =0x03000051
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08039070 @ =0x03000052
	adds r0, r5, r1
	strb r7, [r0]
	adds r2, #5
	adds r5, r5, r2
	movs r0, #0
	strb r0, [r5]
	mov r1, sl
	str r1, [r4, #0x28]
	mov r2, r8
	str r2, [r4, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039028: .4byte gCurTask
_0803902C: .4byte sub_8039264
_08039030: .4byte 0x00002001
_08039034: .4byte sub_803A5D0
_08039038: .4byte 0x0300009C
_0803903C: .4byte 0x03000088
_08039040: .4byte 0x03000074
_08039044: .4byte 0x0300008A
_08039048: .4byte 0x03000076
_0803904C: .4byte 0xFFFFE900
_08039050: .4byte 0x03000078
_08039054: .4byte 0x0300007A
_08039058: .4byte 0x03000020
_0803905C: .4byte 0x03000021
_08039060: .4byte 0x03000022
_08039064: .4byte 0x03000030
_08039068: .4byte 0x03000050
_0803906C: .4byte 0x03000051
_08039070: .4byte 0x03000052

	thumb_func_start sub_8039074
sub_8039074: @ 0x08039074
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _0803908C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	cmp r2, #2
	beq _080390B0
	cmp r2, #2
	bgt _08039090
	cmp r2, #1
	beq _08039096
	b _080390F0
	.align 2, 0
_0803908C: .4byte gCurTask
_08039090:
	cmp r2, #3
	beq _080390C8
	b _080390F0
_08039096:
	ldr r1, _080390A8 @ =0x03000020
	adds r0, r3, r1
	movs r2, #4
	strb r2, [r0]
	ldr r0, _080390AC @ =0x03000050
	adds r1, r3, r0
	movs r0, #5
	b _080390D6
	.align 2, 0
_080390A8: .4byte 0x03000020
_080390AC: .4byte 0x03000050
_080390B0:
	ldr r1, _080390C0 @ =0x03000020
	adds r0, r3, r1
	strb r2, [r0]
	ldr r0, _080390C4 @ =0x03000050
	adds r1, r3, r0
	movs r0, #3
	b _080390D6
	.align 2, 0
_080390C0: .4byte 0x03000020
_080390C4: .4byte 0x03000050
_080390C8:
	ldr r1, _080390F4 @ =0x03000020
	adds r0, r3, r1
	movs r2, #6
	strb r2, [r0]
	ldr r0, _080390F8 @ =0x03000050
	adds r1, r3, r0
	movs r0, #7
_080390D6:
	strb r0, [r1]
	ldr r0, _080390FC @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08039100 @ =0x03000051
	adds r1, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08039104 @ =0x03000078
	adds r0, r3, r1
	strb r2, [r0]
_080390F0:
	bx lr
	.align 2, 0
_080390F4: .4byte 0x03000020
_080390F8: .4byte 0x03000050
_080390FC: .4byte 0x03000021
_08039100: .4byte 0x03000051
_08039104: .4byte 0x03000078

	thumb_func_start sub_8039108
sub_8039108: @ 0x08039108
	ldr r0, _08039124 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	ldr r0, _08039128 @ =0x03000020
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #4
	beq _08039132
	cmp r0, #4
	bgt _0803912C
	cmp r0, #2
	beq _08039144
	b _08039178
	.align 2, 0
_08039124: .4byte gCurTask
_08039128: .4byte 0x03000020
_0803912C:
	cmp r0, #6
	beq _08039154
	b _08039178
_08039132:
	movs r2, #0xe
	strb r2, [r1]
	ldr r0, _08039140 @ =0x03000050
	adds r1, r3, r0
	movs r0, #0x11
	b _0803915E
	.align 2, 0
_08039140: .4byte 0x03000050
_08039144:
	movs r2, #0xf
	strb r2, [r1]
	ldr r0, _08039150 @ =0x03000050
	adds r1, r3, r0
	movs r0, #0x12
	b _0803915E
	.align 2, 0
_08039150: .4byte 0x03000050
_08039154:
	movs r2, #0x10
	strb r2, [r1]
	ldr r0, _0803917C @ =0x03000050
	adds r1, r3, r0
	movs r0, #0x13
_0803915E:
	strb r0, [r1]
	ldr r0, _08039180 @ =0x03000021
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08039184 @ =0x03000051
	adds r1, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08039188 @ =0x03000078
	adds r0, r3, r1
	strb r2, [r0]
_08039178:
	bx lr
	.align 2, 0
_0803917C: .4byte 0x03000050
_08039180: .4byte 0x03000021
_08039184: .4byte 0x03000051
_08039188: .4byte 0x03000078

	thumb_func_start sub_803918C
sub_803918C: @ 0x0803918C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _080391C8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	adds r3, r4, #0
	adds r0, #0x30
	adds r0, r0, r2
	mov ip, r0
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08039252
	ldr r0, _080391CC @ =0x03000020
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, r5
	bne _080391D4
	ldr r0, _080391D0 @ =0x0300007A
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _0803925C
	.align 2, 0
_080391C8: .4byte gCurTask
_080391CC: .4byte 0x03000020
_080391D0: .4byte 0x0300007A
_080391D4:
	ldrb r0, [r1]
	subs r0, #8
	cmp r0, #8
	bhi _08039240
	lsls r0, r0, #2
	ldr r1, _080391E8 @ =_080391EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080391E8: .4byte _080391EC
_080391EC: @ jump table
	.4byte _08039210 @ case 0
	.4byte _08039220 @ case 1
	.4byte _08039230 @ case 2
	.4byte _08039240 @ case 3
	.4byte _08039240 @ case 4
	.4byte _08039240 @ case 5
	.4byte _08039210 @ case 6
	.4byte _08039220 @ case 7
	.4byte _08039230 @ case 8
_08039210:
	adds r1, r3, #0
	adds r1, #0x20
	movs r0, #0xa
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x20
	movs r0, #0xd
	b _0803923E
_08039220:
	adds r1, r3, #0
	adds r1, #0x20
	movs r0, #8
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x20
	movs r0, #0xb
	b _0803923E
_08039230:
	adds r1, r3, #0
	adds r1, #0x20
	movs r0, #9
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x20
	movs r0, #0xc
_0803923E:
	strb r0, [r1]
_08039240:
	adds r1, r3, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x21
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
_08039252:
	adds r2, r4, #0
	adds r2, #0x7a
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_0803925C:
	strb r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8039264
sub_8039264: @ 0x08039264
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r3, _080392C4 @ =gCurTask
	ldr r0, [r3]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r4, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	adds r6, r2, r1
	mov r8, r5
	ldr r0, _080392C8 @ =0x03000030
	adds r0, r0, r4
	mov sb, r0
	ldr r0, [r5, #0x10]
	ldr r1, _080392CC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
	mov r7, sb
	ldr r0, [r7, #0x10]
	ands r0, r1
	str r0, [r7, #0x10]
	ldr r1, [r6, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r7, #0x10]
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r0, _080392D0 @ =0x03000031
	adds r2, r2, r0
	ldrb r1, [r2]
	adds r7, r3, #0
	cmp r1, #0
	beq _080392D8
	ldr r1, _080392D4 @ =0x03000025
	adds r0, r4, r1
	movs r1, #0xfe
	b _080392DC
	.align 2, 0
_080392C4: .4byte gCurTask
_080392C8: .4byte 0x03000030
_080392CC: .4byte 0xFFFFFBFF
_080392D0: .4byte 0x03000031
_080392D4: .4byte 0x03000025
_080392D8:
	ldr r3, _08039348 @ =0x03000025
	adds r0, r4, r3
_080392DC:
	strb r1, [r0]
	ldr r2, _0803934C @ =0x03000055
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x8c
	ldrh r0, [r0]
	adds r3, r5, #0
	adds r3, #0x74
	strh r0, [r3]
	adds r0, r6, #0
	adds r0, #0x8e
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x76
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x94
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov sl, r3
	str r1, [sp]
	str r0, [sp, #4]
	cmp r2, #7
	ble _08039354
	adds r4, r5, #0
	adds r4, #0x79
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803932A
	mov r0, r8
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #6
	beq _08039326
	bl sub_8039108
_08039326:
	movs r0, #0
	strb r0, [r4]
_0803932A:
	movs r0, #0
	str r0, [r5, #0x6c]
	str r0, [r5, #0x70]
	adds r0, r6, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803933C
	b _08039514
_0803933C:
	ldr r0, _08039350 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08039658
	.align 2, 0
_08039348: .4byte 0x03000025
_0803934C: .4byte 0x03000055
_08039350: .4byte gCurTask
_08039354:
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0x16
	bls _08039362
	b _08039514
_08039362:
	lsls r0, r1, #2
	ldr r1, _0803936C @ =_08039370
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803936C: .4byte _08039370
_08039370: @ jump table
	.4byte _08039514 @ case 0
	.4byte _080393CC @ case 1
	.4byte _080393F8 @ case 2
	.4byte _08039410 @ case 3
	.4byte _08039514 @ case 4
	.4byte _08039422 @ case 5
	.4byte _080394FC @ case 6
	.4byte _08039514 @ case 7
	.4byte _0803942C @ case 8
	.4byte _0803943E @ case 9
	.4byte _08039498 @ case 10
	.4byte _080394A4 @ case 11
	.4byte _08039514 @ case 12
	.4byte _080394B4 @ case 13
	.4byte _08039514 @ case 14
	.4byte _080394C0 @ case 15
	.4byte _080394D2 @ case 16
	.4byte _080394FC @ case 17
	.4byte _08039514 @ case 18
	.4byte _080394EC @ case 19
	.4byte _08039514 @ case 20
	.4byte _080394FC @ case 21
	.4byte _08039514 @ case 22
_080393CC:
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	ldr r3, _080393F4 @ =0x03000078
	adds r0, r0, r3
	movs r1, #8
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x7a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080393E8
	b _08039514
_080393E8:
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0x1e
	strh r0, [r1]
	b _0803950E
	.align 2, 0
_080393F4: .4byte 0x03000078
_080393F8:
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803940A
	b _08039514
_0803940A:
	movs r0, #0x80
	lsls r0, r0, #1
	b _0803950C
_08039410:
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x70]
	adds r0, r0, r1
	cmp r0, #0
	bge _0803941C
	b _08039514
_0803941C:
	movs r0, #0
	str r0, [r5, #0x68]
	b _0803950C
_08039422:
	ldr r0, _08039428 @ =0xFFFFFF00
	b _0803950C
	.align 2, 0
_08039428: .4byte 0xFFFFFF00
_0803942C:
	ldr r0, _08039460 @ =0xFFFFE900
	str r0, [r5, #0x68]
	adds r1, r5, #0
	adds r1, #0x78
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_0803943E:
	adds r1, r6, #0
	adds r1, #0x9a
	ldrb r0, [r1]
	cmp r0, #0
	beq _08039514
	adds r2, r0, #0
	adds r1, r2, #0
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	cmp r2, #2
	beq _08039478
	cmp r2, #2
	bgt _08039464
	cmp r2, #1
	beq _0803946A
	b _08039514
	.align 2, 0
_08039460: .4byte 0xFFFFE900
_08039464:
	cmp r1, #3
	beq _08039488
	b _08039514
_0803946A:
	ldr r7, _08039474 @ =0x03000078
	adds r1, r0, r7
	movs r0, #8
	strb r0, [r1]
	b _08039514
	.align 2, 0
_08039474: .4byte 0x03000078
_08039478:
	ldr r2, _08039484 @ =0x03000078
	adds r1, r0, r2
	movs r0, #9
	strb r0, [r1]
	b _08039514
	.align 2, 0
_08039484: .4byte 0x03000078
_08039488:
	ldr r3, _08039494 @ =0x03000078
	adds r1, r0, r3
	movs r0, #0xa
	strb r0, [r1]
	b _08039514
	.align 2, 0
_08039494: .4byte 0x03000078
_08039498:
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r5, #0x70]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080394A4:
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x70]
	adds r0, r0, r1
	cmp r0, #0
	blt _08039514
	movs r0, #0
	str r0, [r5, #0x68]
	b _0803950C
_080394B4:
	adds r0, r6, #0
	adds r0, #0x9a
	ldrb r0, [r0]
	bl sub_8039074
	b _0803950E
_080394C0:
	bl sub_8039108
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #0xa
	strh r0, [r1]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080394D2:
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08039514
	ldr r0, _080394E8 @ =0xFFFFFE00
	b _0803950C
	.align 2, 0
_080394E8: .4byte 0xFFFFFE00
_080394EC:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldr r0, _080394F8 @ =0xFFFFFE00
	b _0803950C
	.align 2, 0
_080394F8: .4byte 0xFFFFFE00
_080394FC:
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x70]
	adds r0, r0, r1
	ldr r1, _08039538 @ =0xFFFFE900
	cmp r0, r1
	bgt _08039514
	str r1, [r5, #0x68]
	movs r0, #0
_0803950C:
	str r0, [r5, #0x70]
_0803950E:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_08039514:
	ldr r0, [r5, #0x64]
	ldr r1, [r5, #0x6c]
	adds r0, r0, r1
	str r0, [r5, #0x64]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x70]
	adds r0, r0, r1
	str r0, [r5, #0x68]
	ldr r1, _08039538 @ =0xFFFFE900
	cmp r0, r1
	bgt _0803953C
	adds r0, r5, #0
	adds r0, #0x7a
	ldrb r2, [r0]
	movs r1, #4
	orrs r1, r2
	b _08039546
	.align 2, 0
_08039538: .4byte 0xFFFFE900
_0803953C:
	adds r0, r5, #0
	adds r0, #0x7a
	ldrb r2, [r0]
	movs r1, #0xfb
	ands r1, r2
_08039546:
	strb r1, [r0]
	adds r2, r0, #0
	ldr r0, [r5, #0x68]
	cmp r0, #0
	blt _08039558
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _0803955E
_08039558:
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_0803955E:
	strb r0, [r2]
	ldr r0, [r5, #0x64]
	asrs r0, r0, #8
	mov r7, sl
	ldrh r7, [r7]
	adds r0, r0, r7
	ldr r1, [r5, #0x68]
	asrs r1, r1, #8
	ldr r2, [sp]
	ldrh r2, [r2]
	adds r1, r1, r2
	ldr r3, _080395F8 @ =gCamera
	ldrh r2, [r3]
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	subs r2, r7, r2
	mov r0, r8
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	subs r0, r4, r0
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r3, sb
	strh r2, [r3, #0x16]
	ldrh r0, [r1, #0x18]
	strh r0, [r3, #0x18]
	adds r0, r5, #0
	adds r0, #0x78
	ldrb r0, [r0]
	bl sub_803918C
	adds r0, r6, #0
	adds r0, #0x98
	ldrb r0, [r0]
	cmp r0, #0
	beq _08039640
	adds r0, r6, #0
	adds r0, #0x95
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08039640
	ldr r1, [sp, #4]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #7
	bgt _08039640
	ldr r0, _080395FC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r0, r2
	adds r5, r7, #0
	ldr r3, _08039600 @ =gUnknown_03005A20
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _08039604 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803960C
	ldr r3, _08039608 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803960E
	.align 2, 0
_080395F8: .4byte gCamera
_080395FC: .4byte gCurTask
_08039600: .4byte gUnknown_03005A20
_08039604: .4byte gUnknown_03005088
_08039608: .4byte gUnknown_03005AB0
_0803960C:
	movs r0, #0
_0803960E:
	cmp r7, #2
	beq _08039616
	cmp r0, #2
	bne _08039640
_08039616:
	ldr r0, _08039668 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	ldrh r2, [r0, #6]
	ldr r7, _0803966C @ =0x03000044
	adds r3, r2, r7
	ldr r0, _08039670 @ =0x03000064
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08039674 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r1, _08039678 @ =0x03000065
	adds r2, r2, r1
	movs r0, #0xff
	strb r0, [r2]
_08039640:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	mov r0, sb
	bl DisplaySprite
_08039658:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039668: .4byte gCurTask
_0803966C: .4byte 0x03000044
_08039670: .4byte 0x03000064
_08039674: .4byte 0xFFFFBFFF
_08039678: .4byte 0x03000065

	thumb_func_start sub_803967C
sub_803967C: @ 0x0803967C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r2, _080396F0 @ =gUnknown_03004C58
	ldr r1, [r2]
	ldr r0, _080396F4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080396F8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #4
	ands r5, r0
	ldr r0, _080396FC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r7, r4, r6
	ldr r0, _08039700 @ =sub_80397A8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08039704 @ =sub_803A5EC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	adds r6, r2, r6
	ldr r3, _08039708 @ =0x03000088
	adds r0, r4, r3
	ldrh r1, [r0]
	subs r3, #0x48
	adds r0, r2, r3
	strh r1, [r0]
	ldr r0, _0803970C @ =0x0300008A
	adds r4, r4, r0
	ldrh r1, [r4]
	adds r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	ldr r0, [r7, #0x74]
	str r0, [r6, #0x34]
	ldr r0, [r7, #0x78]
	str r0, [r6, #0x38]
	cmp r5, #0
	beq _08039714
	ldr r1, _08039710 @ =0x03000044
	adds r0, r2, r1
	movs r1, #0x28
	strh r1, [r0]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r6, #0x3e]
	movs r2, #0xc0
	lsls r2, r2, #2
	b _08039726
	.align 2, 0
_080396F0: .4byte gUnknown_03004C58
_080396F4: .4byte 0x00196225
_080396F8: .4byte 0x3C6EF35F
_080396FC: .4byte gCurTask
_08039700: .4byte sub_80397A8
_08039704: .4byte sub_803A5EC
_08039708: .4byte 0x03000088
_0803970C: .4byte 0x0300008A
_08039710: .4byte 0x03000044
_08039714:
	ldr r3, _08039740 @ =0x03000044
	adds r0, r2, r3
	movs r1, #0x30
	strh r1, [r0]
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r6, #0x3e]
	movs r2, #0xc0
	lsls r2, r2, #1
_08039726:
	ldr r0, [r7, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08039744
	ldr r0, [r6, #0x34]
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r6, #0x34]
	strh r2, [r6, #0x3c]
	b _08039750
	.align 2, 0
_08039740: .4byte 0x03000044
_08039744:
	ldr r0, [r6, #0x34]
	ldr r3, _080397A0 @ =0xFFFFEC00
	adds r0, r0, r3
	str r0, [r6, #0x34]
	rsbs r0, r2, #0
	strh r0, [r6, #0x3c]
_08039750:
	movs r0, #4
	bl VramMalloc
	str r0, [r6, #4]
	movs r3, #0
	movs r2, #0
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r2, [r6, #8]
	ldr r0, _080397A4 @ =0x000002B2
	strh r0, [r6, #0xa]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	strh r2, [r6, #0x14]
	strh r2, [r6, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	movs r0, #0x91
	bl m4aSongNumStart
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080397A0: .4byte 0xFFFFEC00
_080397A4: .4byte 0x000002B2

	thumb_func_start sub_80397A8
sub_80397A8: @ 0x080397A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08039888 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r3, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	mov sb, r4
	adds r1, #0x44
	adds r0, r3, r1
	ldrh r0, [r0]
	ldrh r2, [r4, #0x3e]
	adds r0, r0, r2
	strh r0, [r4, #0x3e]
	movs r5, #0x3c
	ldrsh r0, [r4, r5]
	ldr r1, [r4, #0x34]
	adds r1, r1, r0
	str r1, [r4, #0x34]
	movs r0, #0x3e
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r2
	str r0, [r4, #0x38]
	ldr r5, _0803988C @ =0x03000040
	adds r2, r3, r5
	asrs r1, r1, #8
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r2, _08039890 @ =0x03000042
	adds r3, r3, r2
	asrs r0, r0, #8
	ldrh r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #8
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08039894 @ =sub_803FD5C
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _08039838
	lsls r0, r0, #8
	ldr r1, [r4, #0x38]
	adds r1, r1, r0
	str r1, [r4, #0x38]
	ldrh r0, [r4, #0x3e]
	rsbs r1, r0, #0
	movs r3, #0x3e
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _08039832
	adds r0, #3
_08039832:
	asrs r0, r0, #2
	adds r0, r1, r0
	strh r0, [r4, #0x3e]
_08039838:
	adds r0, r7, #0
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r5, r5, #0x10
	str r5, [sp, #4]
	lsls r6, r6, #0x10
	mov sl, r6
	cmp r0, #7
	bgt _080398DA
	ldr r0, _08039888 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r7, r0, r5
	asrs r6, r6, #0x10
	ldr r0, [sp, #4]
	asrs r5, r0, #0x10
	ldr r3, _08039898 @ =gUnknown_03005A20
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	mov r8, r0
	ldr r0, _0803989C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080398A4
	ldr r3, _080398A0 @ =gUnknown_03005AB0
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_800BF10
	b _080398A6
	.align 2, 0
_08039888: .4byte gCurTask
_0803988C: .4byte 0x03000040
_08039890: .4byte 0x03000042
_08039894: .4byte sub_803FD5C
_08039898: .4byte gUnknown_03005A20
_0803989C: .4byte gUnknown_03005088
_080398A0: .4byte gUnknown_03005AB0
_080398A4:
	movs r0, #0
_080398A6:
	mov r1, r8
	cmp r1, #2
	beq _080398B0
	cmp r0, #2
	bne _080398DA
_080398B0:
	ldr r0, _08039928 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r0, r0, r2
	ldrh r2, [r0, #6]
	ldr r5, _0803992C @ =0x03000044
	adds r3, r2, r5
	ldr r0, _08039930 @ =0x03000064
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _08039934 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r1, _08039938 @ =0x03000065
	adds r2, r2, r1
	movs r0, #0xff
	strb r0, [r2]
_080398DA:
	ldr r2, _0803993C @ =gCamera
	ldrh r1, [r2]
	mov r3, sl
	asrs r0, r3, #0x10
	subs r0, r0, r1
	mov r5, sb
	strh r0, [r5, #0x16]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #4]
	asrs r0, r2, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	ldr r0, [r4, #0x34]
	movs r3, #0xd0
	lsls r3, r3, #8
	adds r0, r0, r3
	movs r1, #0xd0
	lsls r1, r1, #9
	cmp r0, r1
	bls _08039916
	ldr r0, _08039928 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08039916:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039928: .4byte gCurTask
_0803992C: .4byte 0x03000044
_08039930: .4byte 0x03000064
_08039934: .4byte 0xFFFFBFFF
_08039938: .4byte 0x03000065
_0803993C: .4byte gCamera

	thumb_func_start sub_8039940
sub_8039940: @ 0x08039940
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080399B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r7, r4, r5
	ldr r0, _080399B8 @ =sub_8039A64
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080399BC @ =sub_803A600
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	adds r6, r2, r5
	ldr r0, _080399C0 @ =0x03000088
	adds r1, r4, r0
	ldr r0, [r7, #0x74]
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r1, _080399C4 @ =0x03000050
	adds r5, r2, r1
	movs r3, #0
	strh r0, [r5]
	ldr r0, _080399C8 @ =0x0300008A
	adds r4, r4, r0
	ldr r0, [r7, #0x78]
	asrs r0, r0, #8
	ldrh r4, [r4]
	adds r0, r0, r4
	ldr r4, _080399CC @ =0x03000052
	adds r1, r2, r4
	strh r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #4
	str r0, [r6, #0x40]
	ldr r0, _080399D0 @ =0x03000048
	adds r1, r2, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r1, _080399D4 @ =0x0300004A
	adds r2, r2, r1
	strh r3, [r2]
	ldr r0, [r7, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080399D8
	ldrh r0, [r5]
	adds r0, #0x1a
	b _080399DC
	.align 2, 0
_080399B4: .4byte gCurTask
_080399B8: .4byte sub_8039A64
_080399BC: .4byte sub_803A600
_080399C0: .4byte 0x03000088
_080399C4: .4byte 0x03000050
_080399C8: .4byte 0x0300008A
_080399CC: .4byte 0x03000052
_080399D0: .4byte 0x03000048
_080399D4: .4byte 0x0300004A
_080399D8:
	ldrh r0, [r5]
	subs r0, #0x1a
_080399DC:
	strh r0, [r5]
	movs r4, #0
	movs r5, #0
	movs r0, #0x11
	strh r0, [r6, #0x3c]
	adds r0, r6, #0
	adds r0, #0x61
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	movs r0, #0x40
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r5, [r6, #8]
	ldr r0, _08039A48 @ =0x000002B1
	strh r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	strb r4, [r0]
	strh r5, [r6, #0x14]
	strh r5, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	ldr r0, [r7, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	ldr r1, _08039A4C @ =0x00002030
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x30
	strh r5, [r6, #0x30]
	ands r0, r2
	cmp r0, #0
	beq _08039A50
	movs r0, #0xff
	lsls r0, r0, #8
	b _08039A54
	.align 2, 0
_08039A48: .4byte 0x000002B1
_08039A4C: .4byte 0x00002030
_08039A50:
	movs r0, #0x80
	lsls r0, r0, #1
_08039A54:
	strh r0, [r1, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #4]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8039A64
sub_8039A64: @ 0x08039A64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _08039AD0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r4, r1
	mov r8, r2
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r3, [r0, #6]
	adds r1, r3, r1
	str r1, [sp]
	mov sl, r8
	ldr r0, _08039AD4 @ =0x03000030
	adds r0, r4, r0
	str r0, [sp, #4]
	ldr r1, _08039AD8 @ =0x03000094
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	bgt _08039AEA
	ldr r2, _08039ADC @ =0x0300008C
	adds r0, r3, r2
	ldrh r0, [r0]
	subs r1, #0x44
	adds r2, r4, r1
	strh r0, [r2]
	adds r1, #0x3e
	adds r0, r3, r1
	ldrh r1, [r0]
	ldr r3, _08039AE0 @ =0x03000052
	adds r0, r4, r3
	strh r1, [r0]
	mov r4, sl
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08039AE4
	ldrh r0, [r2]
	adds r0, #0x1a
	b _08039AE8
	.align 2, 0
_08039AD0: .4byte gCurTask
_08039AD4: .4byte 0x03000030
_08039AD8: .4byte 0x03000094
_08039ADC: .4byte 0x0300008C
_08039AE0: .4byte 0x03000052
_08039AE4:
	ldrh r0, [r2]
	subs r0, #0x1a
_08039AE8:
	strh r0, [r2]
_08039AEA:
	mov r3, r8
	adds r3, #0x48
	movs r0, #0
	ldrsh r1, [r3, r0]
	mov r2, r8
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	adds r2, #0x4a
	ldrh r0, [r2]
	mov r1, r8
	adds r1, #0x4e
	strh r0, [r1]
	ldrh r6, [r2]
	mov ip, r6
	mov r4, sl
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	str r3, [sp, #0xc]
	mov sb, r2
	cmp r1, #0
	beq _08039B38
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r2, _08039BD4 @ =0xFFFFFE00
	adds r1, r2, #0
	subs r6, r1, r0
	ldr r1, _08039BD8 @ =0x000003FF
	ands r6, r1
	mov r3, ip
	lsls r0, r3, #0x10
	rsbs r0, r0, #0
	asrs r0, r0, #0x10
	mov ip, r0
	mov r4, ip
	ands r4, r1
	mov ip, r4
_08039B38:
	ldr r2, _08039BDC @ =gSineTable
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r6, [r0, r4]
	asrs r6, r6, #6
	mov r3, r8
	ldr r0, [r3, #0x40]
	muls r6, r0, r6
	asrs r6, r6, #0x10
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r4, #0
	ldrsh r7, [r1, r4]
	asrs r7, r7, #6
	muls r7, r0, r7
	asrs r7, r7, #0x10
	mov r5, r8
	adds r5, #0x50
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r6, r6, r0
	mov r4, r8
	adds r4, #0x52
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r7, r7, r0
	ldr r1, _08039BE0 @ =gCamera
	ldrh r0, [r1]
	subs r0, r6, r0
	ldr r3, [sp, #4]
	strh r0, [r3, #6]
	ldrh r0, [r1, #2]
	subs r0, r7, r0
	strh r0, [r3, #8]
	mov r0, ip
	strh r0, [r3]
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	ldr r1, [sp, #4]
	bl sub_80037D0
	mov r0, sl
	bl DisplaySprite
	ldr r0, [sp]
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _08039BEC
	movs r0, #0
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	lsls r0, r6, #8
	mov r2, r8
	str r0, [r2, #0x54]
	lsls r0, r7, #8
	str r0, [r2, #0x58]
	movs r0, #0xb8
	lsls r0, r0, #3
	mov r3, sl
	strh r0, [r3, #0x1a]
	movs r0, #0x50
	strh r0, [r2, #0x3c]
	ldr r0, _08039BE4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08039BE8 @ =sub_803A46C
	str r0, [r1, #8]
	b _0803A14A
	.align 2, 0
_08039BD4: .4byte 0xFFFFFE00
_08039BD8: .4byte 0x000003FF
_08039BDC: .4byte gSineTable
_08039BE0: .4byte gCamera
_08039BE4: .4byte gCurTask
_08039BE8: .4byte sub_803A46C
_08039BEC:
	mov r0, r8
	adds r0, #0x61
	ldrb r1, [r0]
	str r0, [sp, #0x10]
	cmp r1, #0
	blt _08039C1E
	cmp r1, #1
	ble _08039C02
	cmp r1, #2
	beq _08039C0E
	b _08039C1E
_08039C02:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	b _08039C18
_08039C0E:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
_08039C18:
	bl sub_8036F9C
	str r0, [sp, #8]
_08039C1E:
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	cmp r0, #9
	bls _08039C28
	b _0803A14A
_08039C28:
	lsls r0, r0, #2
	ldr r1, _08039C34 @ =_08039C38
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08039C34: .4byte _08039C38
_08039C38: @ jump table
	.4byte _08039C60 @ case 0
	.4byte _08039CDE @ case 1
	.4byte _08039E08 @ case 2
	.4byte _08039EE2 @ case 3
	.4byte _08039EFC @ case 4
	.4byte _08039F30 @ case 5
	.4byte _08039F94 @ case 6
	.4byte _08039FD4 @ case 7
	.4byte _0803A026 @ case 8
	.4byte _0803A084 @ case 9
_08039C60:
	mov r2, r8
	ldrh r0, [r2, #0x3c]
	subs r0, #1
	strh r0, [r2, #0x3c]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08039C72
	b _0803A14A
_08039C72:
	ldr r2, _08039CA8 @ =gUnknown_03004C58
	ldr r1, [r2]
	ldr r0, _08039CAC @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08039CB0 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	adds r1, r0, #0
	ldr r0, [sp, #0xc]
	strh r3, [r0]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r1, #0
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	subs r1, #0x23
	cmp r1, #0
	bgt _08039CB4
	movs r0, #0xb4
	mov r3, r8
	strh r0, [r3, #0x3c]
	b _0803A14A
	.align 2, 0
_08039CA8: .4byte gUnknown_03004C58
_08039CAC: .4byte 0x00196225
_08039CB0: .4byte 0x3C6EF35F
_08039CB4:
	adds r1, r0, #0
	subs r1, #0x46
	cmp r1, #0
	bgt _08039CC4
	movs r0, #0x3c
	mov r4, r8
	strh r0, [r4, #0x3c]
	b _0803A14A
_08039CC4:
	adds r1, r0, #0
	subs r1, #0x5a
	cmp r1, #0
	bgt _08039CD4
	movs r0, #0x12
	mov r1, r8
	strh r0, [r1, #0x3c]
	b _0803A14A
_08039CD4:
	movs r0, #0x96
	lsls r0, r0, #1
	mov r2, r8
	strh r0, [r2, #0x3c]
	b _0803A14A
_08039CDE:
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r2, _08039D48 @ =gUnknown_03005A20
	ldr r0, [r2]
	asrs r0, r0, #8
	subs r6, r1, r0
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	subs r7, r1, r0
	cmp r6, #0
	bge _08039CFA
	rsbs r6, r6, #0
_08039CFA:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_800338C
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, _08039D4C @ =0xFF1F0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	movs r1, #0x8f
	lsls r1, r1, #1
	cmp r0, r1
	bhi _08039D1A
	movs r6, #0xe0
_08039D1A:
	lsls r0, r6, #0x10
	ldr r2, _08039D50 @ =0xFDFF0000
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	cmp r0, r1
	bhi _08039D2A
	movs r6, #0xc8
	lsls r6, r6, #2
_08039D2A:
	mov r3, sb
	ldrh r2, [r3]
	lsls r0, r2, #0x16
	asrs r1, r0, #0x10
	lsls r0, r6, #0x16
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08039D54
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r0, r3
	cmp r1, r0
	blt _08039D60
	subs r0, r2, #6
	b _08039D6E
	.align 2, 0
_08039D48: .4byte gUnknown_03005A20
_08039D4C: .4byte 0xFF1F0000
_08039D50: .4byte 0xFDFF0000
_08039D54:
	cmp r1, r0
	bge _08039D72
	ldr r3, _08039D68 @ =0xFFFFFE80
	adds r0, r0, r3
	cmp r1, r0
	ble _08039D6C
_08039D60:
	mov r0, sb
	strh r6, [r0]
	b _08039D72
	.align 2, 0
_08039D68: .4byte 0xFFFFFE80
_08039D6C:
	adds r0, r2, #6
_08039D6E:
	mov r1, sb
	strh r0, [r1]
_08039D72:
	mov r2, sb
	ldrh r0, [r2]
	ldr r1, _08039DFC @ =0x000003FF
	ands r1, r0
	strh r1, [r2]
	mov r3, r8
	ldrh r0, [r3, #0x3c]
	subs r0, #1
	strh r0, [r3, #0x3c]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08039D8C
	b _0803A14A
_08039D8C:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r3, _08039E00 @ =gUnknown_03005A20
	ldr r1, [r3]
	asrs r1, r1, #8
	subs r0, r0, r1
	movs r1, #0
	ldrsh r2, [r4, r1]
	ldr r1, [r3, #4]
	asrs r1, r1, #8
	subs r2, r2, r1
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	adds r4, r2, #0
	muls r4, r2, r4
	adds r2, r4, #0
	lsls r0, r0, #8
	lsls r2, r2, #8
	adds r0, r0, r2
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xc
	ldr r1, _08039E04 @ =0xFFFFF000
	subs r1, r1, r0
	mov r0, r8
	str r1, [r0, #0x44]
	movs r0, #0xfa
	lsls r0, r0, #8
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x60
	movs r0, #0
	strb r0, [r1]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0xf0
	lsls r0, r0, #2
	mov r3, sl
	strh r0, [r3, #0x1a]
	mov r1, sl
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb3
	bl m4aSongNumStart
	b _0803A14A
	.align 2, 0
_08039DFC: .4byte 0x000003FF
_08039E00: .4byte gUnknown_03005A20
_08039E04: .4byte 0xFFFFF000
_08039E08:
	mov r4, r8
	ldr r0, [r4, #0x40]
	rsbs r0, r0, #0
	asrs r0, r0, #8
	subs r0, #0x14
	asrs r0, r0, #4
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	mov r1, r8
	adds r1, #0x60
	ldrb r0, [r1]
	cmp r0, r2
	bhs _08039E2A
	strb r2, [r1]
	bl sub_803A1D8
_08039E2A:
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _08039EB8
	mov r1, r8
	adds r1, #0x62
	movs r0, #0xff
	strb r0, [r1]
	movs r4, #0
	ldr r1, [sp, #0xc]
	strh r4, [r1]
	movs r0, #7
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	mov r0, sl
	adds r0, #0x20
	mov r3, sp
	ldrb r3, [r3, #8]
	strb r3, [r0]
	mov r1, sl
	adds r1, #0x21
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r5, _08039E90 @ =gUnknown_03005A20
	adds r0, r5, #0
	bl sub_8046CEC
	lsls r0, r6, #8
	str r0, [r5]
	lsls r0, r7, #8
	str r0, [r5, #4]
	strh r4, [r5, #8]
	strh r4, [r5, #0xa]
	strh r4, [r5, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, _08039E94 @ =0x00E00100
	orrs r0, r1
	str r0, [r5, #0x10]
	mov r4, sl
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08039E98
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	b _08039E9E
	.align 2, 0
_08039E90: .4byte gUnknown_03005A20
_08039E94: .4byte 0x00E00100
_08039E98:
	mov r3, sb
	ldrh r0, [r3]
	lsrs r0, r0, #2
_08039E9E:
	strb r0, [r5, #0x14]
	ldr r1, _08039EB4 @ =gUnknown_03005A20
	adds r3, r1, #0
	adds r3, #0x40
	movs r2, #0
	movs r0, #0x28
	strb r0, [r3]
	strh r2, [r1, #0x38]
	strh r2, [r1, #0x3a]
	b _0803A14A
	.align 2, 0
_08039EB4: .4byte gUnknown_03005A20
_08039EB8:
	mov r4, r8
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x44]
	cmp r1, r0
	ble _08039EC4
	b _0803A14A
_08039EC4:
	movs r0, #0
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	mov r1, sl
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	b _0803A14A
_08039EE2:
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08039EF2
	b _0803A14A
_08039EF2:
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r4, [sp, #0xc]
	strh r0, [r4]
	b _0803A076
_08039EFC:
	mov r2, r8
	ldr r0, [r2, #0x40]
	ldr r1, _08039F2C @ =0xFFFFEC00
	cmp r0, r1
	bge _08039F08
	b _0803A14A
_08039F08:
	str r1, [r2, #0x40]
	movs r1, #0
	movs r0, #0
	ldr r3, [sp, #0xc]
	strh r0, [r3]
	movs r0, #0xb8
	lsls r0, r0, #3
	mov r4, sl
	strh r0, [r4, #0x1a]
	mov r0, sl
	adds r0, #0x20
	strb r1, [r0]
	mov r1, sl
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	b _0803A076
	.align 2, 0
_08039F2C: .4byte 0xFFFFEC00
_08039F30:
	mov r2, sb
	ldrh r0, [r2]
	movs r3, #0
	ldrsh r1, [r2, r3]
	cmp r1, #0
	bne _08039F56
	movs r0, #0xb8
	lsls r0, r0, #3
	mov r4, sl
	strh r0, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [sp, #0xc]
	strh r0, [r1]
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	b _0803A14A
_08039F56:
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r1, r2
	ble _08039F78
	adds r0, #6
	ldr r3, _08039F74 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	mov r4, sb
	strh r0, [r4]
	cmp r0, #6
	ble _08039F70
	b _0803A14A
_08039F70:
	b _08039F8A
	.align 2, 0
_08039F74: .4byte 0x000003FF
_08039F78:
	subs r0, #6
	ldr r3, _08039F90 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	mov r4, sb
	strh r0, [r4]
	cmp r0, r2
	bgt _08039F8A
	b _0803A14A
_08039F8A:
	movs r0, #0
	strh r0, [r4]
	b _0803A14A
	.align 2, 0
_08039F90: .4byte 0x000003FF
_08039F94:
	mov r0, r8
	ldr r1, [r0, #0x40]
	ldr r0, _08039FB8 @ =0x00000DFF
	cmp r1, r0
	bgt _08039FA0
	b _0803A14A
_08039FA0:
	mov r0, r8
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _08039FBC
	ldr r1, [sp]
	adds r1, #0x99
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08039FC4
	.align 2, 0
_08039FB8: .4byte 0x00000DFF
_08039FBC:
	ldr r1, [sp]
	adds r1, #0x92
	movs r0, #1
	strh r0, [r1]
_08039FC4:
	ldr r0, _08039FD0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803A14A
	.align 2, 0
_08039FD0: .4byte gCurTask
_08039FD4:
	ldr r2, _08039FF8 @ =gUnknown_03005A20
	lsls r0, r6, #8
	str r0, [r2]
	lsls r0, r7, #8
	str r0, [r2, #4]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08039FFC
	mov r3, sb
	movs r4, #0
	ldrsh r0, [r3, r4]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	b _0803A002
	.align 2, 0
_08039FF8: .4byte gUnknown_03005A20
_08039FFC:
	mov r1, sb
	ldrh r0, [r1]
	lsrs r0, r0, #2
_0803A002:
	strb r0, [r2, #0x14]
	mov r2, sl
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0803A014
	b _0803A14A
_0803A014:
	movs r0, #0xc0
	lsls r0, r0, #3
	ldr r3, [sp, #0xc]
	strh r0, [r3]
	ldr r4, [sp, #0x10]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _0803A14A
_0803A026:
	ldr r2, _0803A04C @ =gUnknown_03005A20
	lsls r0, r6, #8
	str r0, [r2]
	lsls r0, r7, #8
	str r0, [r2, #4]
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A050
	mov r3, sb
	movs r4, #0
	ldrsh r0, [r3, r4]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	b _0803A056
	.align 2, 0
_0803A04C: .4byte gUnknown_03005A20
_0803A050:
	mov r1, sb
	ldrh r0, [r1]
	lsrs r0, r0, #2
_0803A056:
	strb r0, [r2, #0x14]
	mov r2, r8
	ldr r0, [r2, #0x40]
	ldr r1, _0803A080 @ =0xFFFFDC00
	cmp r0, r1
	blt _0803A14A
	str r1, [r2, #0x40]
	movs r2, #0
	ldr r3, [sp, #0xc]
	strh r2, [r3]
	mov r1, r8
	adds r1, #0x4c
	movs r0, #0x10
	strh r0, [r1]
	mov r4, r8
	strh r2, [r4, #0x3c]
_0803A076:
	ldr r1, [sp, #0x10]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0803A14A
	.align 2, 0
_0803A080: .4byte 0xFFFFDC00
_0803A084:
	ldr r2, _0803A0AC @ =gUnknown_03005A20
	lsls r0, r6, #8
	str r0, [r2]
	lsls r0, r7, #8
	str r0, [r2, #4]
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	adds r3, r2, #0
	cmp r0, #0
	beq _0803A0B0
	mov r4, sb
	movs r1, #0
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	b _0803A0B6
	.align 2, 0
_0803A0AC: .4byte gUnknown_03005A20
_0803A0B0:
	mov r2, sb
	ldrh r0, [r2]
	lsrs r0, r0, #2
_0803A0B6:
	strb r0, [r3, #0x14]
	mov r2, r8
	adds r2, #0x4c
	ldrh r0, [r2]
	mov r4, sb
	ldrh r4, [r4]
	adds r0, r0, r4
	ldr r1, _0803A15C @ =0x000003FF
	ands r0, r1
	mov r1, sb
	strh r0, [r1]
	ldr r1, _0803A160 @ =0x000001FF
	adds r5, r2, #0
	cmp r0, r1
	ble _0803A102
	ldr r6, _0803A164 @ =gUnknown_03004FEC
	ldrh r4, [r6]
	cmp r4, #0
	beq _0803A0FE
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _0803A0FE
	cmp r4, #5
	bls _0803A0EA
	movs r4, #5
_0803A0EA:
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	asrs r1, r1, #8
	adds r2, r4, #0
	bl sub_8040B10
	ldrh r0, [r6]
	subs r0, r0, r4
	strh r0, [r6]
_0803A0FE:
	movs r0, #0x10
	strh r0, [r5]
_0803A102:
	ldr r3, _0803A168 @ =0xFFFFFF00
	adds r0, r3, #0
	mov r4, sb
	ldrh r4, [r4]
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bhi _0803A14A
	ldr r0, _0803A16C @ =0x0000FFF0
	strh r0, [r5]
	mov r1, r8
	ldrh r0, [r1, #0x3c]
	adds r0, #1
	strh r0, [r1, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bne _0803A130
	ldr r1, [sp]
	adds r1, #0x99
	movs r0, #0x33
	strb r0, [r1]
_0803A130:
	mov r2, r8
	ldrh r4, [r2, #0x3c]
	cmp r4, #5
	bne _0803A14A
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	bl sub_803A170
	ldr r0, [sp, #0x10]
	strb r4, [r0]
_0803A14A:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A15C: .4byte 0x000003FF
_0803A160: .4byte 0x000001FF
_0803A164: .4byte gUnknown_03004FEC
_0803A168: .4byte 0xFFFFFF00
_0803A16C: .4byte 0x0000FFF0

	thumb_func_start sub_803A170
sub_803A170: @ 0x0803A170
	push {r4, r5, lr}
	ldr r2, _0803A184 @ =gUnknown_03005A20
	movs r1, #0x78
	strh r1, [r2, #0x1c]
	adds r5, r2, #0
	cmp r0, #0
	beq _0803A188
	movs r0, #0xfe
	lsls r0, r0, #8
	b _0803A18C
	.align 2, 0
_0803A184: .4byte gUnknown_03005A20
_0803A188:
	movs r0, #0x80
	lsls r0, r0, #2
_0803A18C:
	strh r0, [r5, #8]
	movs r4, #0
	ldr r0, _0803A1D0 @ =0x0000FA20
	strh r0, [r5, #0xa]
	strb r4, [r5, #0x14]
	ldr r0, [r5, #0x10]
	ldr r1, _0803A1D4 @ =0xFF1FFAC3
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0xf
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3e
	strb r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803A1D0: .4byte 0x0000FA20
_0803A1D4: .4byte 0xFF1FFAC3

	thumb_func_start sub_803A1D8
sub_803A1D8: @ 0x0803A1D8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	ldr r0, _0803A2A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r0, r4, r6
	mov sb, r0
	ldr r0, _0803A2A4 @ =sub_803A2F8
	ldr r2, _0803A2A8 @ =0x00002101
	ldr r1, _0803A2AC @ =sub_803A600
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	adds r6, r5, r6
	ldr r1, _0803A2B0 @ =0x03000050
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _0803A2B0 @ =0x03000050
	adds r0, r5, r2
	movs r2, #0
	mov r8, r2
	movs r3, #0
	strh r1, [r0]
	ldr r1, _0803A2B4 @ =0x03000052
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _0803A2B4 @ =0x03000052
	adds r0, r5, r2
	strh r1, [r0]
	ldr r1, _0803A2B8 @ =0x0300004E
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r2, #8
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _0803A2BC @ =0x03000060
	adds r4, r4, r0
	ldrb r1, [r4]
	adds r0, r5, r0
	strb r1, [r0]
	movs r0, #4
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	ldr r3, [sp, #4]
	strh r3, [r6, #8]
	ldr r0, _0803A2C0 @ =0x000002B2
	strh r0, [r6, #0xa]
	ldr r1, _0803A2C4 @ =0x03000020
	adds r0, r5, r1
	mov r2, r8
	strb r2, [r0]
	strh r3, [r6, #0x14]
	strh r3, [r6, #0x1c]
	ldr r0, _0803A2C8 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _0803A2CC @ =0x03000022
	adds r1, r5, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0803A2D0 @ =0x03000025
	adds r0, r5, r1
	mov r2, r8
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	ldr r1, _0803A2D4 @ =0x00002030
	orrs r0, r1
	str r0, [r6, #0x10]
	ldr r0, _0803A2D8 @ =0x03000030
	adds r5, r5, r0
	strh r3, [r5]
	ldr r0, [r6, #0x10]
	ands r0, r2
	cmp r0, #0
	beq _0803A2DC
	movs r0, #0xff
	lsls r0, r0, #8
	b _0803A2E0
	.align 2, 0
_0803A2A0: .4byte gCurTask
_0803A2A4: .4byte sub_803A2F8
_0803A2A8: .4byte 0x00002101
_0803A2AC: .4byte sub_803A600
_0803A2B0: .4byte 0x03000050
_0803A2B4: .4byte 0x03000052
_0803A2B8: .4byte 0x0300004E
_0803A2BC: .4byte 0x03000060
_0803A2C0: .4byte 0x000002B2
_0803A2C4: .4byte 0x03000020
_0803A2C8: .4byte 0x03000021
_0803A2CC: .4byte 0x03000022
_0803A2D0: .4byte 0x03000025
_0803A2D4: .4byte 0x00002030
_0803A2D8: .4byte 0x03000030
_0803A2DC:
	movs r0, #0x80
	lsls r0, r0, #1
_0803A2E0:
	strh r0, [r5, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #4]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803A2F8
sub_803A2F8: @ 0x0803A2F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _0803A43C @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r2, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r3, [r0, #6]
	mov r8, r3
	adds r3, r3, r1
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	str r0, [sp]
	ldr r4, _0803A440 @ =0x03000030
	adds r4, r4, r2
	mov sb, r4
	ldr r0, _0803A444 @ =0x03000050
	add r0, r8
	ldrh r0, [r0]
	adds r1, #0x50
	adds r1, r1, r2
	mov sl, r1
	strh r0, [r1]
	ldr r0, _0803A448 @ =0x03000052
	add r0, r8
	ldrh r0, [r0]
	ldr r4, _0803A448 @ =0x03000052
	adds r4, r4, r2
	mov ip, r4
	strh r0, [r4]
	ldr r0, _0803A44C @ =0x0300004E
	add r0, r8
	ldrh r6, [r0]
	adds r4, r6, #0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0803A36C
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	ldr r1, _0803A450 @ =0xFFFFFE00
	adds r4, r0, r1
	ldr r1, _0803A454 @ =0x000003FF
	ands r4, r1
	adds r6, r1, #0
	ands r6, r0
_0803A36C:
	ldr r1, _0803A458 @ =0x03000060
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, #8
	lsls r0, r0, #8
	ldr r2, [r3, #0x40]
	adds r2, r2, r0
	str r2, [r7, #0x40]
	ldr r3, _0803A45C @ =gSineTable
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r1, r4
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r5, [r0, r4]
	asrs r5, r5, #6
	muls r5, r2, r5
	asrs r5, r5, #0x10
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r0, #0
	ldrsh r4, [r1, r0]
	asrs r4, r4, #6
	muls r4, r2, r4
	asrs r4, r4, #0x10
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	mov r3, ip
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r4, r4, r0
	ldr r1, _0803A460 @ =gCamera
	ldrh r0, [r1]
	subs r0, r5, r0
	mov r2, sb
	strh r0, [r2, #6]
	ldrh r0, [r1, #2]
	subs r0, r4, r0
	strh r0, [r2, #8]
	strh r6, [r2]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	mov r1, sb
	bl sub_80037D0
	adds r0, r7, #0
	bl DisplaySprite
	ldr r1, [r7, #0x40]
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bgt _0803A3F0
	ldr r0, _0803A464 @ =0x03000061
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #6
	bne _0803A3F8
_0803A3F0:
	ldr r3, _0803A43C @ =gCurTask
	ldr r0, [r3]
	bl TaskDestroy
_0803A3F8:
	ldr r0, [sp]
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0803A42C
	adds r1, r7, #0
	adds r1, #0x48
	movs r0, #0
	strh r0, [r1]
	lsls r0, r5, #8
	str r0, [r7, #0x54]
	lsls r0, r4, #8
	str r0, [r7, #0x58]
	ldr r0, _0803A43C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803A468 @ =sub_803A46C
	str r0, [r1, #8]
	adds r0, r7, #0
	adds r0, #0x60
	ldrb r1, [r0]
	lsls r1, r1, #2
	movs r0, #0x50
	subs r0, r0, r1
	strh r0, [r7, #0x3c]
_0803A42C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A43C: .4byte gCurTask
_0803A440: .4byte 0x03000030
_0803A444: .4byte 0x03000050
_0803A448: .4byte 0x03000052
_0803A44C: .4byte 0x0300004E
_0803A450: .4byte 0xFFFFFE00
_0803A454: .4byte 0x000003FF
_0803A458: .4byte 0x03000060
_0803A45C: .4byte gSineTable
_0803A460: .4byte gCamera
_0803A464: .4byte 0x03000061
_0803A468: .4byte sub_803A46C

	thumb_func_start sub_803A46C
sub_803A46C: @ 0x0803A46C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0803A520 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0x30
	adds r1, r1, r0
	mov r8, r1
	ldr r2, _0803A524 @ =0x03000048
	adds r5, r0, r2
	ldrh r0, [r5]
	adds r0, #0x20
	strh r0, [r5]
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x58]
	ldr r1, [r4, #0x54]
	lsls r1, r1, #8
	lsls r0, r0, #8
	asrs r7, r0, #0x10
	adds r0, r7, #0
	adds r0, #8
	asrs r6, r1, #0x10
	ldr r1, _0803A528 @ =sub_803FD5C
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #1
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _0803A4D0
	lsls r1, r0, #8
	ldr r0, [r4, #0x58]
	adds r0, r0, r1
	str r0, [r4, #0x58]
	ldrh r1, [r5]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5]
_0803A4D0:
	ldr r1, _0803A52C @ =gCamera
	ldrh r0, [r1]
	subs r0, r6, r0
	mov r2, r8
	strh r0, [r2, #6]
	ldrh r0, [r1, #2]
	subs r0, r7, r0
	strh r0, [r2, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	mov r1, r8
	bl sub_80037D0
	adds r0, r4, #0
	bl DisplaySprite
	ldrh r0, [r4, #0x3c]
	subs r0, #1
	strh r0, [r4, #0x3c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803A510
	lsls r0, r6, #8
	lsls r1, r7, #8
	bl sub_8017540
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
_0803A510:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A520: .4byte gCurTask
_0803A524: .4byte 0x03000048
_0803A528: .4byte sub_803FD5C
_0803A52C: .4byte gCamera

	thumb_func_start sub_803A530
sub_803A530: @ 0x0803A530
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x48]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_803A54C
sub_803A54C: @ 0x0803A54C
	push {r4, lr}
	sub sp, #4
	ldr r2, _0803A588 @ =gUnknown_03005160
	ldrh r0, [r2, #8]
	cmp r0, #0xd
	bhi _0803A55A
	movs r0, #0xe
_0803A55A:
	movs r4, #0
	movs r1, #0
	strh r0, [r2, #8]
	ldr r0, _0803A58C @ =sub_8038554
	ldr r2, _0803A590 @ =0x00001FFF
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0xd2
	lsls r1, r1, #1
	strh r1, [r0, #6]
	strb r4, [r0, #9]
	strb r4, [r0, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A588: .4byte gUnknown_03005160
_0803A58C: .4byte sub_8038554
_0803A590: .4byte 0x00001FFF

	thumb_func_start sub_803A594
sub_803A594: @ 0x0803A594
	push {r4, lr}
	sub sp, #4
	ldr r0, _0803A5C8 @ =sub_803891C
	ldr r2, _0803A5CC @ =0x00001FFF
	movs r4, #0
	str r4, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x20
	strh r1, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	movs r1, #0x78
	strh r1, [r0, #6]
	strb r2, [r0, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A5C8: .4byte sub_803891C
_0803A5CC: .4byte 0x00001FFF

	thumb_func_start sub_803A5D0
sub_803A5D0: @ 0x0803A5D0
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_803A5EC
sub_803A5EC: @ 0x0803A5EC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803A600
sub_803A600: @ 0x0803A600
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803A614
sub_803A614: @ 0x0803A614
	sub sp, #4
	mov r1, sp
	ldr r2, _0803A63C @ =0x00007FFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0803A640 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0803A644 @ =gUnknown_03001AA0
	str r0, [r1, #4]
	ldr r0, _0803A648 @ =0x81000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0803A64C @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	bx lr
	.align 2, 0
_0803A63C: .4byte 0x00007FFF
_0803A640: .4byte 0x040000D4
_0803A644: .4byte gUnknown_03001AA0
_0803A648: .4byte 0x81000010
_0803A64C: .4byte gFlags

	thumb_func_start sub_803A650
sub_803A650: @ 0x0803A650
	push {r4, r5, r6, r7, lr}
	ldr r2, _0803A690 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _0803A694 @ =gUnknown_03005A20
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _0803A698 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803A6A0
	ldr r3, _0803A69C @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803A6A2
	.align 2, 0
_0803A690: .4byte gCurTask
_0803A694: .4byte gUnknown_03005A20
_0803A698: .4byte gUnknown_03005088
_0803A69C: .4byte gUnknown_03005AB0
_0803A6A0:
	movs r0, #0
_0803A6A2:
	cmp r7, #2
	beq _0803A6AA
	cmp r0, #2
	bne _0803A6D4
_0803A6AA:
	ldr r0, _0803A6DC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _0803A6E0 @ =0x03000044
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0803A6E4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _0803A6E8 @ =0x03000065
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_0803A6D4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A6DC: .4byte gCurTask
_0803A6E0: .4byte 0x03000044
_0803A6E4: .4byte 0xFFFFBFFF
_0803A6E8: .4byte 0x03000065

	thumb_func_start sub_803A6EC
sub_803A6EC: @ 0x0803A6EC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r6, [sp, #0x20]
	ldr r4, [sp, #0x24]
	mov r8, r4
	movs r5, #0
	str r5, [sp, #4]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r4, _0803A76C @ =0xFFFFFF00
	ldr r5, [sp, #8]
	ands r4, r5
	orrs r4, r2
	str r4, [sp, #8]
	lsls r3, r3, #0x18
	lsrs r3, r3, #8
	ldr r5, _0803A770 @ =0xFF00FFFF
	ands r5, r4
	orrs r5, r3
	str r5, [sp, #8]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x10
	ldr r2, _0803A774 @ =0xFFFF00FF
	ands r2, r5
	orrs r2, r6
	str r2, [sp, #8]
	mov r3, r8
	lsls r3, r3, #0x18
	mov r8, r3
	ldr r3, _0803A778 @ =0x00FFFFFF
	ands r2, r3
	mov r4, r8
	orrs r4, r2
	str r4, [sp, #8]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	ldr r0, _0803A77C @ =gUnknown_03005A20
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_800C1E8
	adds r4, r0, #0
	ldr r0, _0803A780 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803A788
	ldr r0, _0803A784 @ =gUnknown_03005AB0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_800C1E8
	b _0803A78A
	.align 2, 0
_0803A76C: .4byte 0xFFFFFF00
_0803A770: .4byte 0xFF00FFFF
_0803A774: .4byte 0xFFFF00FF
_0803A778: .4byte 0x00FFFFFF
_0803A77C: .4byte gUnknown_03005A20
_0803A780: .4byte gUnknown_03005088
_0803A784: .4byte gUnknown_03005AB0
_0803A788:
	movs r0, #0
_0803A78A:
	orrs r4, r0
	cmp r4, #2
	bne _0803A7B2
	ldr r0, _0803A7C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r5, _0803A7C4 @ =0x03000044
	adds r3, r2, r5
	ldr r0, _0803A7C8 @ =0x03000064
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0803A7CC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r3, _0803A7D0 @ =0x03000065
	adds r2, r2, r3
	movs r0, #0xff
	strb r0, [r2]
_0803A7B2:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803A7C0: .4byte gCurTask
_0803A7C4: .4byte 0x03000044
_0803A7C8: .4byte 0x03000064
_0803A7CC: .4byte 0xFFFFBFFF
_0803A7D0: .4byte 0x03000065

	thumb_func_start sub_803A7D4
sub_803A7D4: @ 0x0803A7D4
	push {r4, r5, r6, r7, lr}
	ldr r2, _0803A814 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r6, r3, r2
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r3, _0803A818 @ =gUnknown_03005A20
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _0803A81C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803A824
	ldr r3, _0803A820 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803A826
	.align 2, 0
_0803A814: .4byte gCurTask
_0803A818: .4byte gUnknown_03005A20
_0803A81C: .4byte gUnknown_03005088
_0803A820: .4byte gUnknown_03005AB0
_0803A824:
	movs r0, #0
_0803A826:
	cmp r7, #2
	beq _0803A82E
	cmp r0, #2
	bne _0803A858
_0803A82E:
	ldr r0, _0803A860 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldrh r2, [r0, #6]
	ldr r0, _0803A864 @ =0x03000044
	adds r3, r2, r0
	adds r0, #0x20
	adds r1, r2, r0
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	ldr r1, _0803A868 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r0, _0803A86C @ =0x03000065
	adds r2, r2, r0
	movs r0, #0xff
	strb r0, [r2]
_0803A858:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803A860: .4byte gCurTask
_0803A864: .4byte 0x03000044
_0803A868: .4byte 0xFFFFBFFF
_0803A86C: .4byte 0x03000065

	thumb_func_start sub_803A870
sub_803A870: @ 0x0803A870
	ldr r0, _0803A8A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r0, _0803A8A4 @ =0x03000044
	adds r1, r2, r0
	adds r0, #0x20
	adds r3, r2, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0803A89C
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0803A89C
	movs r0, #0
	strb r0, [r3]
	ldr r0, _0803A8A8 @ =0x03000065
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
_0803A89C:
	bx lr
	.align 2, 0
_0803A8A0: .4byte gCurTask
_0803A8A4: .4byte 0x03000044
_0803A8A8: .4byte 0x03000065

	thumb_func_start sub_803A8AC
sub_803A8AC: @ 0x0803A8AC
	ldr r0, _0803A8C4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0803A8C8 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x16]
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0x18]
	bx lr
	.align 2, 0
_0803A8C4: .4byte gCurTask
_0803A8C8: .4byte 0x0300000C

	thumb_func_start sub_803A8CC
sub_803A8CC: @ 0x0803A8CC
	push {r4, lr}
	ldr r2, _0803A8F4 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	ldr r3, _0803A8F8 @ =0x0300000C
	adds r2, r2, r3
	ldr r4, _0803A8FC @ =gCamera
	ldrh r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	strh r0, [r2, #0x16]
	ldrh r0, [r4, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803A8F4: .4byte gCurTask
_0803A8F8: .4byte 0x0300000C
_0803A8FC: .4byte gCamera

	thumb_func_start sub_803A900
sub_803A900: @ 0x0803A900
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, r2, #0
	ldr r0, _0803A91C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	cmp r2, #2
	beq _0803A934
	cmp r2, #2
	bgt _0803A920
	cmp r2, #1
	beq _0803A926
	b _0803A948
	.align 2, 0
_0803A91C: .4byte gCurTask
_0803A920:
	cmp r3, #3
	beq _0803A940
	b _0803A948
_0803A926:
	ldr r0, _0803A930 @ =0x03000078
	adds r1, r1, r0
	movs r0, #8
	b _0803A946
	.align 2, 0
_0803A930: .4byte 0x03000078
_0803A934:
	ldr r0, _0803A93C @ =0x03000078
	adds r1, r1, r0
	movs r0, #9
	b _0803A946
	.align 2, 0
_0803A93C: .4byte 0x03000078
_0803A940:
	ldr r0, _0803A94C @ =0x03000078
	adds r1, r1, r0
	movs r0, #0xa
_0803A946:
	strb r0, [r1]
_0803A948:
	bx lr
	.align 2, 0
_0803A94C: .4byte 0x03000078

	thumb_func_start sub_803A950
sub_803A950: @ 0x0803A950
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _0803AAA4 @ =gUnknown_030058B8
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	ldr r1, _0803AAA8 @ =gUnknown_03005060
	strb r0, [r1, #3]
	strb r0, [r1, #2]
	strb r0, [r1, #1]
	strb r0, [r1]
	ldr r1, _0803AAAC @ =gUnknown_030058B4
	strb r0, [r1]
	movs r2, #0
	ldr r6, _0803AAB0 @ =sub_803B570
	ldr r0, _0803AAB4 @ =gUnknown_03005150
	ldrb r3, [r0]
	movs r4, #1
_0803A984:
	adds r0, r3, #0
	asrs r0, r2
	ands r0, r4
	cmp r0, #0
	beq _0803A994
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0803A994:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0803A984
	movs r2, #0x80
	lsls r2, r2, #6
	movs r5, #0
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r7, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r7, r4
	ldr r0, _0803AAB8 @ =0x03000055
	adds r0, r0, r7
	mov sb, r0
	mov r1, r8
	strb r1, [r0]
	ldr r0, _0803AAAC @ =gUnknown_030058B4
	ldrb r1, [r0]
	ldr r2, _0803AABC @ =0x03000054
	adds r0, r7, r2
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_803AB60
	ldr r6, _0803AAC0 @ =0x03000048
	adds r0, r7, r6
	movs r3, #0
	ldr r1, _0803AAC4 @ =0x0000FF10
	strh r1, [r0]
	ldr r2, _0803AAC8 @ =0x0300004A
	adds r0, r7, r2
	movs r2, #0xf0
	strh r2, [r0]
	adds r6, #4
	adds r0, r7, r6
	strh r1, [r0]
	ldr r1, _0803AACC @ =0x0300004E
	adds r0, r7, r1
	strh r2, [r0]
	ldr r1, _0803AAD0 @ =gDispCnt
	movs r6, #0xc5
	lsls r6, r6, #6
	adds r0, r6, #0
	strh r0, [r1]
	ldr r1, _0803AAD4 @ =gUnknown_03001B70
	ldr r0, _0803AAD8 @ =0x00004803
	strh r0, [r1]
	ldr r1, _0803AADC @ =gUnknown_030020D0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	strh r5, [r1, #2]
	ldr r1, _0803AAE0 @ =gUnknown_03001B30
	strh r2, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x31
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	ldr r1, _0803AAE4 @ =gUnknown_030011A8
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	str r5, [sp, #4]
	ldr r1, _0803AAE8 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _0803AAEC @ =0x06001FE0
	str r0, [r1, #4]
	ldr r0, _0803AAF0 @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0803AAF4 @ =gUnknown_03004620
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0803AAF8 @ =gUnknown_03001B40
	strb r3, [r1]
	strb r3, [r1, #1]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #2]
	movs r0, #0x40
	strb r0, [r1, #3]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r4, #4]
	movs r0, #0xff
	strh r0, [r4, #0xa]
	ldr r0, _0803AAFC @ =0x06004000
	str r0, [r4, #0xc]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	movs r0, #0x58
	strh r0, [r4, #0x1c]
	strh r5, [r4, #0x1e]
	strh r5, [r4, #0x20]
	strh r5, [r4, #0x22]
	strh r5, [r4, #0x24]
	movs r0, #0x1e
	strh r0, [r4, #0x26]
	movs r0, #0x14
	strh r0, [r4, #0x28]
	ldr r1, _0803AB00 @ =0x0300002A
	adds r0, r7, r1
	strb r3, [r0]
	strh r5, [r4, #0x2e]
	adds r0, r4, #0
	bl DrawBackground
	ldr r1, _0803AB04 @ =gUnknown_03002120
	ldr r2, _0803AB08 @ =0x00007B60
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0803AB0C @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	mov r6, sb
	ldrb r0, [r6]
	cmp r0, #1
	beq _0803AB1E
	cmp r0, #1
	bgt _0803AB10
	cmp r0, #0
	beq _0803AB16
	b _0803AB4E
	.align 2, 0
_0803AAA4: .4byte gUnknown_030058B8
_0803AAA8: .4byte gUnknown_03005060
_0803AAAC: .4byte gUnknown_030058B4
_0803AAB0: .4byte sub_803B570
_0803AAB4: .4byte gUnknown_03005150
_0803AAB8: .4byte 0x03000055
_0803AABC: .4byte 0x03000054
_0803AAC0: .4byte 0x03000048
_0803AAC4: .4byte 0x0000FF10
_0803AAC8: .4byte 0x0300004A
_0803AACC: .4byte 0x0300004E
_0803AAD0: .4byte gDispCnt
_0803AAD4: .4byte gUnknown_03001B70
_0803AAD8: .4byte 0x00004803
_0803AADC: .4byte gUnknown_030020D0
_0803AAE0: .4byte gUnknown_03001B30
_0803AAE4: .4byte gUnknown_030011A8
_0803AAE8: .4byte 0x040000D4
_0803AAEC: .4byte 0x06001FE0
_0803AAF0: .4byte 0x85000010
_0803AAF4: .4byte gUnknown_03004620
_0803AAF8: .4byte gUnknown_03001B40
_0803AAFC: .4byte 0x06004000
_0803AB00: .4byte 0x0300002A
_0803AB04: .4byte gUnknown_03002120
_0803AB08: .4byte 0x00007B60
_0803AB0C: .4byte gFlags
_0803AB10:
	cmp r0, #2
	beq _0803AB48
	b _0803AB4E
_0803AB16:
	movs r0, #6
	bl m4aSongNumStart
	b _0803AB4E
_0803AB1E:
	ldr r1, _0803AB30 @ =0x03000056
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803AB34
	movs r0, #7
	bl m4aSongNumStart
	b _0803AB4E
	.align 2, 0
_0803AB30: .4byte 0x03000056
_0803AB34:
	cmp r0, #1
	bne _0803AB40
	movs r0, #8
	bl m4aSongNumStart
	b _0803AB4E
_0803AB40:
	movs r0, #9
	bl m4aSongNumStart
	b _0803AB4E
_0803AB48:
	ldr r0, _0803AB5C @ =0x0000012F
	bl m4aSongNumStart
_0803AB4E:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AB5C: .4byte 0x0000012F

	thumb_func_start sub_803AB60
sub_803AB60: @ 0x0803AB60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov ip, r0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0803ABA8
	lsls r0, r0, #2
	ldr r1, _0803AB80 @ =_0803AB84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803AB80: .4byte _0803AB84
_0803AB84: @ jump table
	.4byte _0803ABA8 @ case 0
	.4byte _0803ABA8 @ case 1
	.4byte _0803AB98 @ case 2
	.4byte _0803ABA0 @ case 3
	.4byte _0803ABA8 @ case 4
_0803AB98:
	mov r1, ip
	adds r1, #0x50
	movs r0, #0x28
	b _0803ABAE
_0803ABA0:
	mov r1, ip
	adds r1, #0x50
	movs r0, #0x14
	b _0803ABAE
_0803ABA8:
	mov r1, ip
	adds r1, #0x50
	movs r0, #0
_0803ABAE:
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x55
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803ABBC
	b _0803AD28
_0803ABBC:
	cmp r0, #1
	bgt _0803ABC8
	cmp r0, #0
	beq _0803ABD4
	bl _0803B55E
_0803ABC8:
	cmp r0, #2
	bne _0803ABD0
	bl sub_803B534
_0803ABD0:
	bl _0803B55E
_0803ABD4:
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r4, #0
	mov r0, ip
	adds r0, #0x54
	mov r8, r0
	movs r2, #0x44
	add r2, ip
	mov sb, r2
	mov r3, ip
	adds r3, #0x40
	str r3, [sp, #8]
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0803ACBE
	ldr r1, _0803AC44 @ =gUnknown_030058A8
	mov ip, r1
	movs r2, #1
	add r2, ip
	mov sl, r2
	movs r7, #0
	mov r6, sb
	adds r5, r3, #0
_0803AC06:
	ldr r3, _0803AC48 @ =gUnknown_03005008
	adds r0, r4, r3
	ldrb r1, [r0]
	ldr r0, _0803AC4C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803ACB0
	cmp r1, #9
	bhi _0803AC58
	lsls r3, r4, #1
	mov r0, ip
	adds r0, r3, r0
	str r0, [sp, #0x10]
	lsls r1, r1, #4
	ldr r2, _0803AC50 @ =gUnknown_03005160
	adds r1, r1, r2
	movs r2, #0xe3
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrb r0, [r0]
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	mov r0, sl
	adds r2, r3, r0
	ldr r0, _0803AC54 @ =0x0000038D
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	b _0803AC68
	.align 2, 0
_0803AC44: .4byte gUnknown_030058A8
_0803AC48: .4byte gUnknown_03005008
_0803AC4C: .4byte 0x04000128
_0803AC50: .4byte gUnknown_03005160
_0803AC54: .4byte 0x0000038D
_0803AC58:
	lsls r0, r4, #1
	mov r2, ip
	adds r1, r0, r2
	strb r7, [r1]
	mov r3, sl
	adds r1, r0, r3
	strb r7, [r1]
	adds r3, r0, #0
_0803AC68:
	mov r1, ip
	adds r0, r3, r1
	mov r2, sl
	adds r1, r3, r2
	ldrb r2, [r0]
	ldrb r0, [r1]
	cmp r2, r0
	bls _0803AC8E
	adds r0, r6, r4
	movs r1, #6
	strb r1, [r0]
	adds r0, r5, r4
	strb r1, [r0]
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	b _0803ACB0
_0803AC8E:
	cmp r2, r0
	bhs _0803ACA8
	adds r0, r6, r4
	movs r1, #1
	strb r1, [r0]
	adds r0, r5, r4
	strb r1, [r0]
	ldr r0, [sp, #4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	b _0803ACB0
_0803ACA8:
	adds r0, r6, r4
	strb r7, [r0]
	adds r0, r5, r4
	strb r7, [r0]
_0803ACB0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r3, r8
	ldrb r3, [r3]
	cmp r4, r3
	blo _0803AC06
_0803ACBE:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	cmp r0, r1
	bls _0803ACD8
	ldr r2, _0803ACD4 @ =0x04000128
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	add r0, sb
	movs r1, #1
	b _0803ACEC
	.align 2, 0
_0803ACD4: .4byte 0x04000128
_0803ACD8:
	ldr r3, [sp]
	ldr r0, [sp, #4]
	cmp r3, r0
	bhs _0803AD04
	ldr r2, _0803AD00 @ =0x04000128
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	add r0, sb
	movs r1, #6
_0803ACEC:
	strb r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r2, [sp, #8]
	adds r0, r2, r0
	strb r1, [r0]
	bl _0803B55E
	.align 2, 0
_0803AD00: .4byte 0x04000128
_0803AD04:
	ldr r2, _0803AD24 @ =0x04000128
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	add r0, sb
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r3, [sp, #8]
	adds r0, r3, r0
	strb r1, [r0]
	bl _0803B55E
	.align 2, 0
_0803AD24: .4byte 0x04000128
_0803AD28:
	ldr r0, _0803AD78 @ =gUnknown_030058B4
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803AD3E
	ldr r0, _0803AD7C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0803AD3E
	cmp r0, #5
	beq _0803AD3E
	b _0803AF88
_0803AD3E:
	movs r4, #0
	mov r0, ip
	adds r0, #0x54
	mov r8, r0
	adds r0, #2
	str r0, [sp, #0xc]
	mov r1, r8
	ldrb r1, [r1]
	cmp r4, r1
	blo _0803AD54
	b _0803AF08
_0803AD54:
	ldr r6, _0803AD80 @ =gUnknown_03005160
	ldr r2, _0803AD84 @ =gUnknown_03005008
	mov sl, r2
	ldr r7, _0803AD88 @ =0x0000038E
	movs r3, #0x63
	mov sb, r3
_0803AD60:
	ldr r1, _0803AD8C @ =gUnknown_03005048
	adds r0, r4, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #1
	beq _0803AE10
	cmp r1, #1
	bgt _0803AD90
	cmp r1, #0
	beq _0803AD96
	b _0803AE10
	.align 2, 0
_0803AD78: .4byte gUnknown_030058B4
_0803AD7C: .4byte gGameMode
_0803AD80: .4byte gUnknown_03005160
_0803AD84: .4byte gUnknown_03005008
_0803AD88: .4byte 0x0000038E
_0803AD8C: .4byte gUnknown_03005048
_0803AD90:
	cmp r1, #4
	beq _0803AE84
	b _0803AE10
_0803AD96:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #2
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	strb r1, [r0]
	ldr r1, _0803ADE0 @ =0x04000128
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	bne _0803ADB6
	b _0803AEF8
_0803ADB6:
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r2, _0803ADE4 @ =gUnknown_03005048
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803ADEC
	ldr r3, _0803ADE8 @ =gGameMode
	ldrb r0, [r3]
	cmp r0, #3
	bne _0803ADD4
	b _0803AEF8
_0803ADD4:
	cmp r0, #5
	bne _0803ADDA
	b _0803AEF8
_0803ADDA:
	mov r0, sl
	adds r2, r4, r0
	b _0803AED8
	.align 2, 0
_0803ADE0: .4byte 0x04000128
_0803ADE4: .4byte gUnknown_03005048
_0803ADE8: .4byte gGameMode
_0803ADEC:
	mov r0, sl
	adds r3, r4, r0
	ldrb r1, [r3]
	lsls r1, r1, #4
	adds r1, r1, r6
	ldr r2, _0803AE0C @ =0x0000038D
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r6
	adds r1, r0, r2
	b _0803AEEE
	.align 2, 0
_0803AE0C: .4byte 0x0000038D
_0803AE10:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #3
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	strb r1, [r0]
	ldr r1, _0803AE64 @ =0x04000128
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803AEF8
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r3, _0803AE68 @ =gUnknown_03005048
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803AE6C
	mov r0, sl
	adds r3, r4, r0
	ldrb r1, [r3]
	lsls r1, r1, #4
	adds r1, r1, r6
	movs r2, #0xe3
	lsls r2, r2, #2
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r6
	adds r1, r0, r2
	b _0803AEEE
	.align 2, 0
_0803AE64: .4byte 0x04000128
_0803AE68: .4byte gUnknown_03005048
_0803AE6C:
	ldr r3, _0803AE80 @ =gGameMode
	ldrb r0, [r3]
	cmp r0, #3
	beq _0803AEF8
	cmp r0, #5
	beq _0803AEF8
	mov r0, sl
	adds r2, r4, r0
	b _0803AED8
	.align 2, 0
_0803AE80: .4byte gGameMode
_0803AE84:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	strb r1, [r0]
	ldr r5, _0803AF28 @ =0x04000128
	ldr r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803AEF8
	ldr r3, _0803AF2C @ =gGameMode
	ldrb r0, [r3]
	cmp r0, #3
	beq _0803AEAC
	cmp r0, #5
	bne _0803AED4
_0803AEAC:
	ldr r0, _0803AF30 @ =gUnknown_03005150
	ldrb r3, [r0]
	movs r2, #0x10
	lsls r2, r4
	ands r2, r3
	adds r0, r4, #4
	asrs r2, r0
	ldr r1, [r5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #0x10
	lsls r0, r1
	ands r3, r0
	ldr r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	adds r0, #4
	asrs r3, r0
	cmp r2, r3
	beq _0803AEF8
_0803AED4:
	mov r1, sl
	adds r2, r4, r1
_0803AED8:
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r6
	adds r0, r0, r7
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r6
	adds r1, r0, r7
_0803AEEE:
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _0803AEF8
	mov r2, sb
	strb r2, [r1]
_0803AEF8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r3, r8
	ldrb r3, [r3]
	cmp r4, r3
	bhs _0803AF08
	b _0803AD60
_0803AF08:
	ldr r1, _0803AF28 @ =0x04000128
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r2, _0803AF34 @ =gUnknown_03005048
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803AF40
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	ldr r0, _0803AF38 @ =gUnknown_03005160
	ldr r2, _0803AF3C @ =0x00000425
	b _0803B516
	.align 2, 0
_0803AF28: .4byte 0x04000128
_0803AF2C: .4byte gGameMode
_0803AF30: .4byte gUnknown_03005150
_0803AF34: .4byte gUnknown_03005048
_0803AF38: .4byte gUnknown_03005160
_0803AF3C: .4byte 0x00000425
_0803AF40:
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r3, _0803AF64 @ =gUnknown_03005048
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bne _0803AF70
	movs r0, #2
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r2, _0803AF68 @ =gUnknown_03005160
	ldr r3, _0803AF6C @ =0x00000427
	adds r1, r2, r3
	b _0803B518
	.align 2, 0
_0803AF64: .4byte gUnknown_03005048
_0803AF68: .4byte gUnknown_03005160
_0803AF6C: .4byte 0x00000427
_0803AF70:
	movs r0, #1
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r2, _0803AF80 @ =gUnknown_03005160
	ldr r3, _0803AF84 @ =0x00000426
	adds r1, r2, r3
	b _0803B518
	.align 2, 0
_0803AF80: .4byte gUnknown_03005160
_0803AF84: .4byte 0x00000426
_0803AF88:
	cmp r0, #4
	beq _0803AF8E
	b _0803B2C8
_0803AF8E:
	movs r4, #0
	movs r2, #0
	mov r0, ip
	adds r0, #0x54
	ldrb r1, [r0]
	mov r8, r0
	adds r0, #2
	str r0, [sp, #0xc]
	cmp r4, r1
	bhs _0803AFC0
	ldr r3, _0803B028 @ =gUnknown_03005048
_0803AFA4:
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803AFB6
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0803AFB6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r1
	blo _0803AFA4
_0803AFC0:
	cmp r2, #1
	beq _0803AFC6
	b _0803B0E4
_0803AFC6:
	movs r4, #0
	mov r1, r8
	ldrb r1, [r1]
	cmp r4, r1
	bhs _0803B098
	ldr r2, _0803B028 @ =gUnknown_03005048
	mov sl, r2
	ldr r3, _0803B02C @ =gUnknown_03005160
	ldr r0, _0803B030 @ =0x0000038D
	mov sb, r0
	movs r7, #0xe3
	lsls r7, r7, #2
	ldr r6, _0803B034 @ =gUnknown_03005008
	mov r5, ip
	adds r5, #0x44
_0803AFE4:
	mov r1, sl
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803B03C
	adds r0, r5, r4
	movs r1, #2
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	strb r1, [r0]
	ldr r0, _0803B038 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803B08A
	adds r2, r4, r6
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	add r0, sb
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	mov r2, sb
	adds r1, r0, r2
	b _0803B080
	.align 2, 0
_0803B028: .4byte gUnknown_03005048
_0803B02C: .4byte gUnknown_03005160
_0803B030: .4byte 0x0000038D
_0803B034: .4byte gUnknown_03005008
_0803B038: .4byte 0x04000128
_0803B03C:
	adds r0, r5, r4
	movs r1, #3
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	strb r1, [r0]
	ldr r1, _0803B0BC @ =0x04000128
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803B08A
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	add r0, sl
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803B08A
	adds r2, r4, r6
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, r0, r7
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r1, r0, r7
_0803B080:
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _0803B08A
	movs r0, #0x63
	strb r0, [r1]
_0803B08A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r0, r8
	ldrb r0, [r0]
	cmp r4, r0
	blo _0803AFE4
_0803B098:
	ldr r0, _0803B0BC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r1, _0803B0C0 @ =gUnknown_03005048
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803B0CC
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	ldr r3, _0803B0C4 @ =gUnknown_03005160
	ldr r0, _0803B0C8 @ =0x00000425
	adds r1, r3, r0
	b _0803B518
	.align 2, 0
_0803B0BC: .4byte 0x04000128
_0803B0C0: .4byte gUnknown_03005048
_0803B0C4: .4byte gUnknown_03005160
_0803B0C8: .4byte 0x00000425
_0803B0CC:
	movs r0, #1
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r2, _0803B0DC @ =gUnknown_03005160
	ldr r3, _0803B0E0 @ =0x00000426
	adds r1, r2, r3
	b _0803B518
	.align 2, 0
_0803B0DC: .4byte gUnknown_03005160
_0803B0E0: .4byte 0x00000426
_0803B0E4:
	cmp r2, #0
	bne _0803B168
	movs r4, #0
	mov r0, r8
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0803B146
	movs r6, #4
	ldr r5, _0803B154 @ =gUnknown_03005160
	ldr r3, _0803B158 @ =0x0000038E
	ldr r7, _0803B15C @ =gUnknown_03005008
_0803B0FA:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	strb r6, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	strb r6, [r0]
	ldr r0, _0803B160 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803B138
	adds r2, r4, r7
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _0803B138
	movs r0, #0x63
	strb r0, [r1]
_0803B138:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r1, r8
	ldrb r1, [r1]
	cmp r4, r1
	blo _0803B0FA
_0803B146:
	movs r0, #2
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	ldr r3, _0803B154 @ =gUnknown_03005160
	ldr r0, _0803B164 @ =0x00000427
	adds r1, r3, r0
	b _0803B518
	.align 2, 0
_0803B154: .4byte gUnknown_03005160
_0803B158: .4byte 0x0000038E
_0803B15C: .4byte gUnknown_03005008
_0803B160: .4byte 0x04000128
_0803B164: .4byte 0x00000427
_0803B168:
	movs r4, #0
	mov r1, r8
	ldrb r1, [r1]
	cmp r4, r1
	blo _0803B174
	b _0803B27A
_0803B174:
	ldr r2, _0803B1E4 @ =gUnknown_03005048
	mov sb, r2
	ldr r3, _0803B1E8 @ =gUnknown_03005160
	ldr r7, _0803B1EC @ =gUnknown_03005008
	ldr r6, _0803B1F0 @ =0x0000038E
	movs r5, #0x63
	movs r0, #0xe3
	lsls r0, r0, #2
	mov sl, r0
_0803B186:
	mov r1, sb
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803B1FC
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #4
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	strb r1, [r0]
	ldr r1, _0803B1F4 @ =0x04000128
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803B26C
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0803B24C
	adds r2, r4, r7
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r1, _0803B1F8 @ =0x0000038D
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r2, _0803B1F8 @ =0x0000038D
	adds r1, r0, r2
	b _0803B264
	.align 2, 0
_0803B1E4: .4byte gUnknown_03005048
_0803B1E8: .4byte gUnknown_03005160
_0803B1EC: .4byte gUnknown_03005008
_0803B1F0: .4byte 0x0000038E
_0803B1F4: .4byte 0x04000128
_0803B1F8: .4byte 0x0000038D
_0803B1FC:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #3
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	strb r1, [r0]
	ldr r1, _0803B248 @ =0x04000128
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803B26C
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803B24C
	adds r2, r4, r7
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	add r0, sl
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	mov r2, sl
	adds r1, r0, r2
	b _0803B264
	.align 2, 0
_0803B248: .4byte 0x04000128
_0803B24C:
	adds r2, r4, r7
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, r0, r6
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r1, r0, r6
_0803B264:
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _0803B26C
	strb r5, [r1]
_0803B26C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r0, r8
	ldrb r0, [r0]
	cmp r4, r0
	blo _0803B186
_0803B27A:
	ldr r0, _0803B2A0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r1, _0803B2A4 @ =gUnknown_03005048
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803B2B0
	movs r0, #2
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	ldr r3, _0803B2A8 @ =gUnknown_03005160
	ldr r0, _0803B2AC @ =0x00000427
	adds r1, r3, r0
	b _0803B518
	.align 2, 0
_0803B2A0: .4byte 0x04000128
_0803B2A4: .4byte gUnknown_03005048
_0803B2A8: .4byte gUnknown_03005160
_0803B2AC: .4byte 0x00000427
_0803B2B0:
	movs r0, #1
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r2, _0803B2C0 @ =gUnknown_03005160
	ldr r3, _0803B2C4 @ =0x00000426
	adds r1, r2, r3
	b _0803B518
	.align 2, 0
_0803B2C0: .4byte gUnknown_03005160
_0803B2C4: .4byte 0x00000426
_0803B2C8:
	movs r6, #0
	movs r4, #0
	mov r0, ip
	adds r0, #0x54
	ldrb r1, [r0]
	mov r8, r0
	adds r0, #2
	str r0, [sp, #0xc]
	cmp r4, r1
	bhs _0803B2FA
	ldr r2, _0803B32C @ =gUnknown_03005048
_0803B2DE:
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bne _0803B2F0
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803B2F0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r1
	blo _0803B2DE
_0803B2FA:
	mov r5, r8
	ldrb r0, [r5]
	cmp r6, r0
	bne _0803B330
	movs r4, #0
	cmp r4, r6
	blo _0803B30A
	b _0803B49E
_0803B30A:
	mov r3, ip
	adds r3, #0x44
	movs r2, #4
	mov r1, ip
	adds r1, #0x40
_0803B314:
	adds r0, r3, r4
	strb r2, [r0]
	adds r0, r1, r4
	strb r2, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5]
	cmp r4, r0
	blo _0803B314
	b _0803B49E
	.align 2, 0
_0803B32C: .4byte gUnknown_03005048
_0803B330:
	movs r4, #0
	cmp r4, r0
	blo _0803B338
	b _0803B49E
_0803B338:
	ldr r1, _0803B350 @ =gUnknown_03005048
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bhi _0803B3E4
	lsls r0, r0, #2
	ldr r1, _0803B354 @ =_0803B358
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803B350: .4byte gUnknown_03005048
_0803B354: .4byte _0803B358
_0803B358: @ jump table
	.4byte _0803B370 @ case 0
	.4byte _0803B384 @ case 1
	.4byte _0803B398 @ case 2
	.4byte _0803B3BE @ case 3
	.4byte _0803B3D2 @ case 4
	.4byte _0803B3D2 @ case 5
_0803B370:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #7
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	movs r1, #2
	b _0803B3E2
_0803B384:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #8
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	movs r1, #4
	b _0803B3E2
_0803B398:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #9
	strb r1, [r0]
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #3
	bne _0803B3B4
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	movs r1, #3
	b _0803B3E2
_0803B3B4:
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	movs r1, #4
	b _0803B3E2
_0803B3BE:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #0xa
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
	movs r1, #3
	b _0803B3E2
_0803B3D2:
	mov r0, ip
	adds r0, #0x44
	adds r0, r0, r4
	movs r1, #3
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r4
_0803B3E2:
	strb r1, [r0]
_0803B3E4:
	ldr r2, _0803B420 @ =0x04000128
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803B48E
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r3, _0803B424 @ =gUnknown_03005048
	adds r0, r0, r3
	adds r1, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	bge _0803B430
	ldr r2, _0803B428 @ =gUnknown_03005008
	adds r2, r4, r2
	ldrb r1, [r2]
	lsls r1, r1, #4
	ldr r0, _0803B42C @ =gUnknown_03005160
	adds r1, r1, r0
	movs r3, #0xe3
	lsls r3, r3, #2
	b _0803B472
	.align 2, 0
_0803B420: .4byte 0x04000128
_0803B424: .4byte gUnknown_03005048
_0803B428: .4byte gUnknown_03005008
_0803B42C: .4byte gUnknown_03005160
_0803B430:
	ldr r0, [r2]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r2, _0803B454 @ =gUnknown_03005048
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r1
	bne _0803B464
	ldr r2, _0803B458 @ =gUnknown_03005008
	adds r2, r4, r2
	ldrb r1, [r2]
	lsls r1, r1, #4
	ldr r3, _0803B45C @ =gUnknown_03005160
	adds r1, r1, r3
	ldr r3, _0803B460 @ =0x0000038E
	b _0803B472
	.align 2, 0
_0803B454: .4byte gUnknown_03005048
_0803B458: .4byte gUnknown_03005008
_0803B45C: .4byte gUnknown_03005160
_0803B460: .4byte 0x0000038E
_0803B464:
	ldr r2, _0803B4C0 @ =gUnknown_03005008
	adds r2, r4, r2
	ldrb r1, [r2]
	lsls r1, r1, #4
	ldr r3, _0803B4C4 @ =gUnknown_03005160
	adds r1, r1, r3
	ldr r3, _0803B4C8 @ =0x0000038D
_0803B472:
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r1, _0803B4C4 @ =gUnknown_03005160
	adds r0, r0, r1
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0x63
	bls _0803B48E
	movs r0, #0x63
	strb r0, [r1]
_0803B48E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r2, r8
	ldrb r2, [r2]
	cmp r4, r2
	bhs _0803B49E
	b _0803B338
_0803B49E:
	ldr r1, _0803B4CC @ =0x04000128
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r3, _0803B4D0 @ =gUnknown_03005048
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0803B4D8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r2, _0803B4C4 @ =gUnknown_03005160
	ldr r3, _0803B4D4 @ =0x00000425
	adds r1, r2, r3
	b _0803B518
	.align 2, 0
_0803B4C0: .4byte gUnknown_03005008
_0803B4C4: .4byte gUnknown_03005160
_0803B4C8: .4byte 0x0000038D
_0803B4CC: .4byte 0x04000128
_0803B4D0: .4byte gUnknown_03005048
_0803B4D4: .4byte 0x00000425
_0803B4D8:
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldr r1, _0803B500 @ =gUnknown_03005048
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bne _0803B4F4
	mov r2, r8
	ldrb r2, [r2]
	cmp r6, r2
	beq _0803B50C
_0803B4F4:
	movs r0, #1
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	ldr r0, _0803B504 @ =gUnknown_03005160
	ldr r2, _0803B508 @ =0x00000426
	b _0803B516
	.align 2, 0
_0803B500: .4byte gUnknown_03005048
_0803B504: .4byte gUnknown_03005160
_0803B508: .4byte 0x00000426
_0803B50C:
	movs r0, #2
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	ldr r0, _0803B52C @ =gUnknown_03005160
	ldr r2, _0803B530 @ =0x00000427
_0803B516:
	adds r1, r0, r2
_0803B518:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	bls _0803B55E
	movs r0, #0x63
	strb r0, [r1]
	b _0803B55E
	.align 2, 0
_0803B52C: .4byte gUnknown_03005160
_0803B530: .4byte 0x00000427

	thumb_func_start sub_803B534
sub_803B534: @ 0x0803B534
	movs r4, #0
	mov r2, ip
	adds r2, #0x54
	ldrb r3, [r2]
	cmp r4, r3
	bhs _0803B55E
	mov r5, ip
	adds r5, #0x44
	movs r3, #5
	mov r1, ip
	adds r1, #0x40
_0803B54A:
	adds r0, r5, r4
	strb r3, [r0]
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r2]
	cmp r4, r0
	blo _0803B54A
_0803B55E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803B570
sub_803B570: @ 0x0803B570
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0803B5D8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803B616
	movs r3, #0
	ldr r0, _0803B5DC @ =gUnknown_03005150
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _0803B616
	movs r5, #1
	ldr r2, _0803B5E0 @ =gUnknown_03005060
_0803B598:
	ldr r1, _0803B5E4 @ =gUnknown_03001210
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0803B600
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0803B604
	movs r0, #0
	ldr r1, _0803B5E8 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0803B5EC @ =gUnknown_03002384
	ldr r0, _0803B5F0 @ =gUnknown_0300211C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803B5F4 @ =gUnknown_03004C30
	strb r4, [r0]
	ldr r1, _0803B5F8 @ =gUnknown_030045F8
	ldr r0, _0803B5FC @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_801A728
	b _0803B790
	.align 2, 0
_0803B5D8: .4byte gGameMode
_0803B5DC: .4byte gUnknown_03005150
_0803B5E0: .4byte gUnknown_03005060
_0803B5E4: .4byte gUnknown_03001210
_0803B5E8: .4byte 0x0000FFFF
_0803B5EC: .4byte gUnknown_03002384
_0803B5F0: .4byte gUnknown_0300211C
_0803B5F4: .4byte gUnknown_03004C30
_0803B5F8: .4byte gUnknown_030045F8
_0803B5FC: .4byte gVramGraphicsCopyQueueIndex
_0803B600:
	movs r0, #0
	strb r0, [r2]
_0803B604:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0803B616
	ldrb r0, [r6]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0803B598
_0803B616:
	ldr r0, _0803B6F4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r0, r1
	mov r8, r2
	movs r7, #0
	ldr r2, _0803B6F8 @ =0x03000054
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r7, r0
	blo _0803B632
	b _0803B774
_0803B632:
	movs r0, #0
	mov sl, r0
	movs r1, #0
	mov sb, r1
_0803B63A:
	ldr r2, _0803B6FC @ =sub_803C184
	str r2, [sp]
	ldr r0, _0803B700 @ =sub_803C130
	movs r1, #0x38
	movs r2, #0x84
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r4, r0
	movs r0, #0x2d
	strh r0, [r2, #0x30]
	lsls r5, r7, #2
	adds r5, r5, r7
	lsls r5, r5, #3
	adds r0, r5, #2
	strh r0, [r2, #0x32]
	ldr r1, _0803B704 @ =0x03000034
	adds r0, r4, r1
	strb r7, [r0]
	adds r6, r2, #0
	movs r0, #0x28
	bl VramMalloc
	str r0, [r6, #4]
	ldr r0, _0803B708 @ =0x00000377
	strh r0, [r6, #0xa]
	mov r0, r8
	adds r0, #0x40
	adds r0, r0, r7
	ldrb r1, [r0]
	ldr r2, _0803B70C @ =0x03000020
	adds r0, r4, r2
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	mov r0, sb
	strh r0, [r6, #8]
	strh r0, [r6, #0x14]
	strh r0, [r6, #0x1c]
	adds r2, #1
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0803B710 @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0803B714 @ =0x03000025
	adds r4, r4, r1
	mov r2, sl
	strb r2, [r4]
	subs r0, #0x11
	str r0, [r6, #0x28]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	ldr r0, _0803B6FC @ =sub_803C184
	str r0, [sp]
	ldr r0, _0803B700 @ =sub_803C130
	movs r1, #0x38
	movs r2, #0x84
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r0, #0xa9
	strh r0, [r2, #0x30]
	adds r5, #0x14
	strh r5, [r2, #0x32]
	ldr r0, _0803B704 @ =0x03000034
	adds r1, r1, r0
	strb r7, [r1]
	adds r6, r2, #0
	movs r0, #0x1a
	bl VramMalloc
	str r0, [r6, #4]
	ldr r0, _0803B718 @ =gUnknown_03005160
	ldrb r0, [r0, #0x19]
	cmp r0, #0
	bne _0803B720
	ldr r0, _0803B71C @ =0x00000383
	b _0803B722
	.align 2, 0
_0803B6F4: .4byte gCurTask
_0803B6F8: .4byte 0x03000054
_0803B6FC: .4byte sub_803C184
_0803B700: .4byte sub_803C130
_0803B704: .4byte 0x03000034
_0803B708: .4byte 0x00000377
_0803B70C: .4byte 0x03000020
_0803B710: .4byte 0x03000022
_0803B714: .4byte 0x03000025
_0803B718: .4byte gUnknown_03005160
_0803B71C: .4byte 0x00000383
_0803B720:
	ldr r0, _0803B7A0 @ =0x00000375
_0803B722:
	strh r0, [r6, #0xa]
	mov r0, r8
	adds r0, #0x44
	adds r0, r0, r7
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	mov r1, sb
	strh r1, [r6, #8]
	strh r1, [r6, #0x14]
	strh r1, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	mov r2, sl
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r0, r8
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r7, r0
	bhs _0803B774
	b _0803B63A
_0803B774:
	bl sub_80535FC
	bl sub_803BEB8
	mov r1, r8
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0803B7A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803B7A8 @ =sub_803B7AC
	str r0, [r1, #8]
	bl _call_via_r0
_0803B790:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B7A0: .4byte 0x00000375
_0803B7A4: .4byte gCurTask
_0803B7A8: .4byte sub_803B7AC

	thumb_func_start sub_803B7AC
sub_803B7AC: @ 0x0803B7AC
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r0, _0803B80C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803B84A
	movs r3, #0
	ldr r0, _0803B810 @ =gUnknown_03005150
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _0803B84A
	movs r5, #1
	ldr r2, _0803B814 @ =gUnknown_03005060
_0803B7CC:
	ldr r1, _0803B818 @ =gUnknown_03001210
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0803B834
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0803B838
	movs r0, #0
	ldr r1, _0803B81C @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0803B820 @ =gUnknown_03002384
	ldr r0, _0803B824 @ =gUnknown_0300211C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803B828 @ =gUnknown_03004C30
	strb r4, [r0]
	ldr r1, _0803B82C @ =gUnknown_030045F8
	ldr r0, _0803B830 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_801A728
	b _0803B936
	.align 2, 0
_0803B80C: .4byte gGameMode
_0803B810: .4byte gUnknown_03005150
_0803B814: .4byte gUnknown_03005060
_0803B818: .4byte gUnknown_03001210
_0803B81C: .4byte 0x0000FFFF
_0803B820: .4byte gUnknown_03002384
_0803B824: .4byte gUnknown_0300211C
_0803B828: .4byte gUnknown_03004C30
_0803B82C: .4byte gUnknown_030045F8
_0803B830: .4byte gVramGraphicsCopyQueueIndex
_0803B834:
	movs r0, #0
	strb r0, [r2]
_0803B838:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0803B84A
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0803B7CC
_0803B84A:
	ldr r2, _0803B894 @ =gCurTask
	ldr r0, [r2]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0x52
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r4, r0, #1
	strh r4, [r1]
	ldr r1, _0803B898 @ =0x03000054
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803B8CC
	cmp r0, #2
	ble _0803B916
	cmp r0, #3
	beq _0803B8A6
	cmp r0, #4
	bne _0803B916
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0803B8A6
	ldr r4, _0803B89C @ =0x0300004E
	adds r1, r3, r4
	ldrh r3, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	beq _0803B8A0
	adds r0, r3, #0
	subs r0, #0x10
	strh r0, [r1]
	b _0803B8A6
	.align 2, 0
_0803B894: .4byte gCurTask
_0803B898: .4byte 0x03000054
_0803B89C: .4byte 0x0300004E
_0803B8A0:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803B8A6:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r0, [r0]
	cmp r0, #0xa
	bls _0803B8CC
	adds r1, r5, #0
	adds r1, #0x4c
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _0803B8C6
	adds r0, r3, #0
	adds r0, #0x10
	strh r0, [r1]
	b _0803B8CC
_0803B8C6:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803B8CC:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r1, [r0]
	adds r4, r0, #0
	cmp r1, #5
	bls _0803B8F4
	adds r1, r5, #0
	adds r1, #0x4a
	ldrh r3, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	beq _0803B8EE
	adds r0, r3, #0
	subs r0, #0x10
	strh r0, [r1]
	b _0803B8F4
_0803B8EE:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803B8F4:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0803B916
	adds r1, r5, #0
	adds r1, #0x48
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _0803B910
	adds r0, r3, #0
	adds r0, #0x10
	strh r0, [r1]
	b _0803B916
_0803B910:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803B916:
	adds r0, r5, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r6, r0
	bne _0803B926
	ldr r1, [r2]
	ldr r0, _0803B93C @ =sub_803B944
	str r0, [r1, #8]
_0803B926:
	ldr r1, _0803B940 @ =gUnknown_030011A8
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0803B932
	subs r0, #1
	strh r0, [r1, #4]
_0803B932:
	bl sub_803BE0C
_0803B936:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B93C: .4byte sub_803B944
_0803B940: .4byte gUnknown_030011A8

	thumb_func_start sub_803B944
sub_803B944: @ 0x0803B944
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r0, _0803B9A4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803B9E2
	movs r3, #0
	ldr r0, _0803B9A8 @ =gUnknown_03005150
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _0803B9E2
	movs r5, #1
	ldr r2, _0803B9AC @ =gUnknown_03005060
_0803B964:
	ldr r1, _0803B9B0 @ =gUnknown_03001210
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0803B9CC
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0803B9D0
	movs r0, #0
	ldr r1, _0803B9B4 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0803B9B8 @ =gUnknown_03002384
	ldr r0, _0803B9BC @ =gUnknown_0300211C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803B9C0 @ =gUnknown_03004C30
	strb r4, [r0]
	ldr r1, _0803B9C4 @ =gUnknown_030045F8
	ldr r0, _0803B9C8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_801A728
	b _0803BACE
	.align 2, 0
_0803B9A4: .4byte gGameMode
_0803B9A8: .4byte gUnknown_03005150
_0803B9AC: .4byte gUnknown_03005060
_0803B9B0: .4byte gUnknown_03001210
_0803B9B4: .4byte 0x0000FFFF
_0803B9B8: .4byte gUnknown_03002384
_0803B9BC: .4byte gUnknown_0300211C
_0803B9C0: .4byte gUnknown_03004C30
_0803B9C4: .4byte gUnknown_030045F8
_0803B9C8: .4byte gVramGraphicsCopyQueueIndex
_0803B9CC:
	movs r0, #0
	strb r0, [r2]
_0803B9D0:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0803B9E2
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0803B964
_0803B9E2:
	ldr r0, _0803BA28 @ =gCurTask
	ldr r3, [r0]
	ldrh r2, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	adds r1, #0x55
	adds r4, r2, r1
	ldrb r1, [r4]
	adds r7, r0, #0
	cmp r1, #1
	beq _0803BA3C
	ldr r0, _0803BA2C @ =0x03000052
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xef
	bls _0803BA14
	ldr r0, _0803BA30 @ =sub_803BAD4
	str r0, [r3, #8]
	movs r0, #0
	strh r0, [r1]
_0803BA14:
	ldrh r0, [r1]
	cmp r0, #0x2d
	bne _0803BACA
	ldrb r0, [r4]
	cmp r0, #0
	bne _0803BA34
	movs r0, #0x9c
	bl m4aSongNumStart
	b _0803BACA
	.align 2, 0
_0803BA28: .4byte gCurTask
_0803BA2C: .4byte 0x03000052
_0803BA30: .4byte sub_803BAD4
_0803BA34:
	movs r0, #0xa0
	bl m4aSongNumStart
	b _0803BACA
_0803BA3C:
	ldr r0, _0803BAA0 @ =0x03000052
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r2, #0
	ldr r4, _0803BAA4 @ =gPressedKeys
	adds r3, r1, #0
	ldr r1, _0803BAA8 @ =gUnknown_03001150
_0803BA4E:
	ldrh r0, [r1]
	cmp r0, #0xb0
	bne _0803BA56
	movs r6, #1
_0803BA56:
	adds r1, #0x14
	adds r2, #1
	cmp r2, #3
	bls _0803BA4E
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0803BA74
	ldrh r1, [r3]
	ldr r0, _0803BAAC @ =0x00000707
	cmp r1, r0
	bhi _0803BA74
	cmp r6, #0
	beq _0803BA88
_0803BA74:
	ldr r0, [r7]
	ldr r1, _0803BAB0 @ =sub_803BAD4
	str r1, [r0, #8]
	movs r0, #0
	strh r0, [r3]
	cmp r6, #0
	bne _0803BA88
	ldr r1, _0803BAB4 @ =gUnknown_03002100
	movs r0, #0xb0
	strh r0, [r1]
_0803BA88:
	ldrh r0, [r3]
	cmp r0, #0x2d
	bne _0803BACA
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803BAB8
	movs r0, #0x9d
	bl m4aSongNumStart
	b _0803BACA
	.align 2, 0
_0803BAA0: .4byte 0x03000052
_0803BAA4: .4byte gPressedKeys
_0803BAA8: .4byte gUnknown_03001150
_0803BAAC: .4byte 0x00000707
_0803BAB0: .4byte sub_803BAD4
_0803BAB4: .4byte gUnknown_03002100
_0803BAB8:
	cmp r0, #1
	bne _0803BAC4
	movs r0, #0x9e
	bl m4aSongNumStart
	b _0803BACA
_0803BAC4:
	movs r0, #0x9f
	bl m4aSongNumStart
_0803BACA:
	bl sub_803BE0C
_0803BACE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803BAD4
sub_803BAD4: @ 0x0803BAD4
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r0, _0803BB34 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803BB72
	movs r3, #0
	ldr r0, _0803BB38 @ =gUnknown_03005150
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _0803BB72
	movs r5, #1
	ldr r2, _0803BB3C @ =gUnknown_03005060
_0803BAF4:
	ldr r1, _0803BB40 @ =gUnknown_03001210
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _0803BB5C
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _0803BB60
	movs r0, #0
	ldr r1, _0803BB44 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0803BB48 @ =gUnknown_03002384
	ldr r0, _0803BB4C @ =gUnknown_0300211C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803BB50 @ =gUnknown_03004C30
	strb r4, [r0]
	ldr r1, _0803BB54 @ =gUnknown_030045F8
	ldr r0, _0803BB58 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_801A728
	b _0803BC5A
	.align 2, 0
_0803BB34: .4byte gGameMode
_0803BB38: .4byte gUnknown_03005150
_0803BB3C: .4byte gUnknown_03005060
_0803BB40: .4byte gUnknown_03001210
_0803BB44: .4byte 0x0000FFFF
_0803BB48: .4byte gUnknown_03002384
_0803BB4C: .4byte gUnknown_0300211C
_0803BB50: .4byte gUnknown_03004C30
_0803BB54: .4byte gUnknown_030045F8
_0803BB58: .4byte gVramGraphicsCopyQueueIndex
_0803BB5C:
	movs r0, #0
	strb r0, [r2]
_0803BB60:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _0803BB72
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0803BAF4
_0803BB72:
	ldr r2, _0803BBBC @ =gCurTask
	ldr r0, [r2]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0x52
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r4, r0, #1
	strh r4, [r1]
	ldr r1, _0803BBC0 @ =0x03000054
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803BBF8
	cmp r0, #2
	ble _0803BC46
	cmp r0, #3
	beq _0803BBCE
	cmp r0, #4
	bne _0803BC46
	lsls r0, r4, #0x10
	cmp r0, #0
	beq _0803BBCE
	ldr r4, _0803BBC4 @ =0x0300004E
	adds r1, r3, r4
	ldrh r3, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0xf0
	beq _0803BBC8
	adds r0, r3, #0
	adds r0, #0x10
	strh r0, [r1]
	b _0803BBCE
	.align 2, 0
_0803BBBC: .4byte gCurTask
_0803BBC0: .4byte 0x03000054
_0803BBC4: .4byte 0x0300004E
_0803BBC8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803BBCE:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r0, [r0]
	cmp r0, #5
	bls _0803BBF8
	adds r3, r5, #0
	adds r3, #0x4c
	ldrh r4, [r3]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r0, #0xf0
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803BBF2
	adds r0, r4, #0
	subs r0, #0x10
	strh r0, [r3]
	b _0803BBF8
_0803BBF2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803BBF8:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r1, [r0]
	adds r4, r0, #0
	cmp r1, #0xa
	bls _0803BC20
	adds r1, r5, #0
	adds r1, #0x4a
	ldrh r3, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0xf0
	beq _0803BC1A
	adds r0, r3, #0
	adds r0, #0x10
	strh r0, [r1]
	b _0803BC20
_0803BC1A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803BC20:
	ldrh r0, [r4]
	cmp r0, #0xf
	bls _0803BC46
	adds r3, r5, #0
	adds r3, #0x48
	ldrh r4, [r3]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r0, #0xf0
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0803BC40
	adds r0, r4, #0
	subs r0, #0x10
	strh r0, [r3]
	b _0803BC46
_0803BC40:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0803BC46:
	adds r0, r5, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r6, r0
	bne _0803BC56
	ldr r1, [r2]
	ldr r0, _0803BC60 @ =sub_803BC64
	str r0, [r1, #8]
_0803BC56:
	bl sub_803BE0C
_0803BC5A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BC60: .4byte sub_803BC64

	thumb_func_start sub_803BC64
sub_803BC64: @ 0x0803BC64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803BC8C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	ldr r3, _0803BC90 @ =gUnknown_030011A8
	ldrh r1, [r3, #4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0xf
	bhi _0803BC94
	adds r0, r1, #1
	strh r0, [r3, #4]
	bl sub_803BE0C
	b _0803BDF4
	.align 2, 0
_0803BC8C: .4byte gCurTask
_0803BC90: .4byte gUnknown_030011A8
_0803BC94:
	ldr r0, _0803BCC4 @ =0x03000055
	adds r5, r2, r0
	ldrb r4, [r5]
	ldr r1, _0803BCC8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803BCCC @ =gUnknown_03002384
	ldr r0, _0803BCD0 @ =gUnknown_0300211C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803BCD4 @ =gUnknown_03004C30
	movs r2, #0
	strb r2, [r0]
	ldr r1, _0803BCD8 @ =gUnknown_030045F8
	ldr r0, _0803BCDC @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	cmp r4, #0
	bne _0803BCE0
	bl sub_8018538
	b _0803BDE8
	.align 2, 0
_0803BCC4: .4byte 0x03000055
_0803BCC8: .4byte 0x0000FFFF
_0803BCCC: .4byte gUnknown_03002384
_0803BCD0: .4byte gUnknown_0300211C
_0803BCD4: .4byte gUnknown_03004C30
_0803BCD8: .4byte gUnknown_030045F8
_0803BCDC: .4byte gVramGraphicsCopyQueueIndex
_0803BCE0:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0803BDD4
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r2, _0803BDB0 @ =gFlags
	ldr r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r3, _0803BDB4 @ =0x04000200
	mov r8, r3
	ldrh r0, [r3]
	mov sl, r0
	ldr r6, _0803BDB8 @ =0x04000208
	ldrh r0, [r6]
	adds r7, r0, #0
	ldr r5, _0803BDBC @ =0x04000004
	ldrh r0, [r5]
	mov sb, r0
	movs r0, #0
	strh r0, [r3]
	ldrh r2, [r3]
	strh r0, [r6]
	ldrh r2, [r6]
	strh r0, [r5]
	ldrh r0, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	ldr r2, _0803BDB0 @ =gFlags
	str r1, [r2]
	ldr r1, _0803BDC0 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _0803BDC4 @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _0803BDC8 @ =0x00007FFF
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
	ldr r0, _0803BDCC @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	bl sub_8012D98
	mov r0, sl
	mov r3, r8
	strh r0, [r3]
	ldrh r0, [r3]
	strh r7, [r6]
	ldrh r0, [r6]
	mov r1, sb
	strh r1, [r5]
	ldrh r0, [r5]
	bl m4aSoundVSyncOn
	ldr r2, _0803BDB0 @ =gFlags
	ldr r0, [r2]
	ldr r1, _0803BDD0 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r2]
	bl sub_806AFA4
	b _0803BDE8
	.align 2, 0
_0803BDB0: .4byte gFlags
_0803BDB4: .4byte 0x04000200
_0803BDB8: .4byte 0x04000208
_0803BDBC: .4byte 0x04000004
_0803BDC0: .4byte 0x040000B0
_0803BDC4: .4byte 0x0000C5FF
_0803BDC8: .4byte 0x00007FFF
_0803BDCC: .4byte 0x040000D4
_0803BDD0: .4byte 0xFFFF7FFF
_0803BDD4:
	ldr r0, _0803BE04 @ =gUnknown_03001214
	strb r2, [r0]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	movs r0, #1
	bl sub_800D4E0
_0803BDE8:
	ldr r0, _0803BE08 @ =gFlags
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
_0803BDF4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BE04: .4byte gUnknown_03001214
_0803BE08: .4byte gFlags

	thumb_func_start sub_803BE0C
sub_803BE0C: @ 0x0803BE0C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _0803BEA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldr r1, _0803BEAC @ =0x03000050
	adds r0, r5, r1
	ldrh r4, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0803BE3A
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r3, #0xf0
	bl sub_800681C
_0803BE3A:
	movs r6, #0
	ldr r1, _0803BEB0 @ =0x03000054
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r6, r0
	bhs _0803BE88
	ldr r5, _0803BEB4 @ =0x000001FF
_0803BE48:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x28
	lsls r0, r2, #0x10
	lsrs r4, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r6, #1
	adds r0, r7, #0
	adds r0, #0x48
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r3, r5, #0
	bics r3, r0
	adds r0, r7, #0
	adds r0, #0x50
	ldrh r0, [r0]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	bl sub_800681C
	adds r6, #1
	adds r0, r7, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r6, r0
	blo _0803BE48
_0803BE88:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	bgt _0803BEA0
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	str r0, [sp]
	movs r2, #0xa0
	movs r3, #0xf0
	bl sub_800681C
_0803BEA0:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BEA8: .4byte gCurTask
_0803BEAC: .4byte 0x03000050
_0803BEB0: .4byte 0x03000054
_0803BEB4: .4byte 0x000001FF

	thumb_func_start sub_803BEB8
sub_803BEB8: @ 0x0803BEB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	ldr r0, _0803BFD0 @ =sub_803BFE8
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _0803BFD4 @ =sub_803C198
	str r1, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	add r4, sp, #0x30
	movs r0, #0
	strb r0, [r4]
	mov r0, sp
	adds r0, #0x2f
	movs r6, #1
	strb r6, [r0]
	ldr r7, _0803BFD8 @ =gUnknown_08687B3C
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [sp, #0x18]
	ldr r1, _0803BFDC @ =0x00000694
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [sp, #0x24]
	movs r0, #0xe0
	bl VramMalloc
	str r0, [sp, #0x10]
	movs r0, #0xe0
	lsls r0, r0, #5
	str r0, [sp, #0x1c]
	movs r0, #0x20
	str r0, [sp, #0x28]
	add r0, sp, #0x2c
	strb r6, [r0]
	mov r1, sp
	adds r1, #0x2e
	movs r0, #0xd
	strb r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	add r2, sp, #4
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #8]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #9]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xa]
	ldrb r1, [r4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r2, #0xb]
	adds r0, r2, #0
	bl sub_80528AC
	ldr r0, [sp, #0x10]
	mov r1, r8
	str r0, [r1, #0x64]
	ldr r0, _0803BFE0 @ =0x03000060
	adds r1, r5, r0
	movs r0, #0xa
	strh r0, [r1]
	ldr r1, _0803BFE4 @ =0x03000062
	adds r5, r5, r1
	movs r0, #0x14
	strh r0, [r5]
	movs r1, #0
	movs r6, #0
	movs r5, #0xa
	movs r4, #1
	movs r2, #1
	movs r3, #0x14
_0803BFA4:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	strh r5, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strb r4, [r0, #0x16]
	strh r6, [r0, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0803BFA4
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BFD0: .4byte sub_803BFE8
_0803BFD4: .4byte sub_803C198
_0803BFD8: .4byte gUnknown_08687B3C
_0803BFDC: .4byte 0x00000694
_0803BFE0: .4byte 0x03000060
_0803BFE4: .4byte 0x03000062

	thumb_func_start sub_803BFE8
sub_803BFE8: @ 0x0803BFE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r0, _0803C0AC @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r2, r1
	str r3, [sp]
	ldrh r0, [r0]
	adds r0, r0, r1
	ldrh r1, [r0, #6]
	movs r6, #0
	ldr r4, _0803C0B0 @ =0x03000054
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r6, r0
	blo _0803C016
	b _0803C11C
_0803C016:
	ldr r7, _0803C0B4 @ =0x03000048
	adds r7, r1, r7
	str r7, [sp, #0x14]
	ldr r0, _0803C0B8 @ =0x03000060
	adds r0, r2, r0
	str r0, [sp, #8]
	ldr r3, _0803C0BC @ =0x03000050
	adds r3, r1, r3
	str r3, [sp, #0x18]
	adds r4, #0xe
	adds r4, r2, r4
	str r4, [sp, #0xc]
	ldr r7, _0803C0B0 @ =0x03000054
	adds r7, r1, r7
	str r7, [sp, #0x1c]
	ldr r0, _0803C0C0 @ =gUnknown_03005160
	str r0, [sp, #4]
_0803C038:
	movs r5, #0
	lsls r0, r6, #2
	lsls r1, r6, #0x10
	mov sl, r1
	adds r2, r6, #1
	str r2, [sp, #0x10]
	lsls r3, r6, #1
	str r3, [sp, #0x20]
	ldr r4, [sp, #0x14]
	adds r4, r4, r3
	mov sb, r4
	adds r0, r0, r6
	lsls r0, r0, #3
	mov r8, r0
_0803C054:
	ldr r7, [sp, #0x20]
	adds r0, r7, r6
	lsls r0, r0, #3
	ldr r1, [sp]
	adds r2, r1, r0
	ldr r3, [sp, #8]
	ldrh r0, [r3]
	mov r4, sb
	ldrh r4, [r4]
	adds r0, r0, r4
	lsls r1, r5, #3
	adds r0, r0, r1
	strh r0, [r2, #0xa]
	ldr r7, [sp, #0x18]
	ldrh r0, [r7]
	add r0, r8
	ldr r1, [sp, #0xc]
	ldrh r1, [r1]
	adds r3, r0, r1
	strh r3, [r2, #0xc]
	ldr r0, _0803C0C4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	mov r4, sl
	lsrs r1, r4, #0x10
	cmp r0, r1
	bne _0803C0CC
	ldr r7, _0803C0C8 @ =gUnknown_03005170
	adds r1, r5, r7
	ldrb r0, [r1]
	subs r0, #0x70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _0803C0A2
	adds r0, r3, #0
	adds r0, #8
	strh r0, [r2, #0xc]
_0803C0A2:
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_8052F78
	b _0803C104
	.align 2, 0
_0803C0AC: .4byte gCurTask
_0803C0B0: .4byte 0x03000054
_0803C0B4: .4byte 0x03000048
_0803C0B8: .4byte 0x03000060
_0803C0BC: .4byte 0x03000050
_0803C0C0: .4byte gUnknown_03005160
_0803C0C4: .4byte 0x04000128
_0803C0C8: .4byte gUnknown_03005170
_0803C0CC:
	ldr r0, _0803C12C @ =gUnknown_03005008
	adds r1, r6, r0
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r5
	mov ip, r0
	ldr r0, [sp, #4]
	movs r7, #0xe1
	lsls r7, r7, #2
	adds r4, r0, r7
	mov r7, ip
	adds r0, r7, r4
	ldrb r0, [r0]
	subs r0, #0x70
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _0803C0F6
	adds r0, r3, #0
	adds r0, #8
	strh r0, [r2, #0xc]
_0803C0F6:
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, r0, r5
	adds r1, r2, #0
	bl sub_8052F78
_0803C104:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _0803C054
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	ldr r2, [sp, #0x1c]
	ldrb r2, [r2]
	cmp r6, r2
	blo _0803C038
_0803C11C:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C12C: .4byte gUnknown_03005008

	thumb_func_start sub_803C130
sub_803C130: @ 0x0803C130
	push {r4, lr}
	ldr r0, _0803C178 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r4, r1, r2
	ldrh r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0, #6]
	ldr r0, _0803C17C @ =0x03000034
	adds r1, r1, r0
	ldrb r1, [r1]
	lsls r1, r1, #1
	ldr r3, _0803C180 @ =0x03000048
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r4, #0x30]
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	adds r3, #8
	adds r2, r2, r3
	ldrh r0, [r2]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803C178: .4byte gCurTask
_0803C17C: .4byte 0x03000034
_0803C180: .4byte 0x03000048

	thumb_func_start sub_803C184
sub_803C184: @ 0x0803C184
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803C198
sub_803C198: @ 0x0803C198
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x64]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803C1AC
sub_803C1AC: @ 0x0803C1AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, _0803C388 @ =gDispCnt
	movs r2, #0xc5
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0803C38C @ =gUnknown_03001B70
	movs r4, #0
	ldr r0, _0803C390 @ =0x00000803
	strh r0, [r1]
	ldr r1, _0803C394 @ =gUnknown_030020D0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	strh r4, [r1, #2]
	ldr r1, _0803C398 @ =gUnknown_03001B30
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x31
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	ldr r1, _0803C39C @ =gUnknown_030011A8
	movs r0, #0xbf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r0, _0803C3A0 @ =sub_803C3E0
	movs r1, #0x87
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #6
	str r4, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, _0803C3A4 @ =0x03000203
	adds r0, r1, r2
	strb r5, [r0]
	ldr r0, _0803C3A8 @ =0x03000200
	adds r2, r1, r0
	movs r0, #0x78
	strh r0, [r2]
	ldr r2, _0803C3AC @ =0x030001FC
	adds r1, r1, r2
	str r4, [r1]
	movs r1, #0
	movs r2, #0
	ldr r0, _0803C3B0 @ =gUnknown_03005150
	ldrb r3, [r0]
	movs r4, #1
_0803C22A:
	adds r0, r3, #0
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _0803C23A
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0803C23A:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0803C22A
	ldr r1, _0803C3B4 @ =0x00000206
	adds r0, r7, r1
	movs r4, #0
	strb r2, [r0]
	adds r2, r7, #0
	adds r2, #0xa0
	movs r0, #0
	mov sb, r0
	movs r0, #0x5d
	strh r0, [r2, #0x16]
	movs r0, #0x55
	strh r0, [r2, #0x18]
	ldr r0, _0803C3B8 @ =0x06010300
	str r0, [r2, #4]
	movs r1, #0xf0
	lsls r1, r1, #2
	mov sl, r1
	mov r0, sl
	strh r0, [r2, #0x1a]
	strh r4, [r2, #8]
	ldr r0, _0803C3BC @ =gUnknown_084ADA0A
	lsls r1, r5, #1
	mov r8, r1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	ldr r0, _0803C3C0 @ =gUnknown_084ADA0E
	adds r0, r5, r0
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc0
	strb r1, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	adds r1, r7, #0
	adds r1, #0xc1
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xc2
	movs r6, #0x10
	strb r6, [r0]
	adds r0, #3
	mov r1, sb
	strb r1, [r0]
	movs r5, #0x80
	lsls r5, r5, #6
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r2, r7, #0
	adds r2, #0x40
	strh r4, [r2, #0x16]
	movs r0, #0x20
	strh r0, [r2, #0x18]
	ldr r0, _0803C3C4 @ =0x06010000
	str r0, [r2, #4]
	mov r0, sl
	strh r0, [r2, #0x1a]
	strh r4, [r2, #8]
	ldr r0, _0803C3C8 @ =0x0000037B
	strh r0, [r2, #0xa]
	ldr r1, _0803C3CC @ =0x00000203
	adds r0, r7, r1
	ldrb r0, [r0]
	adds r0, #8
	adds r1, r7, #0
	adds r1, #0x60
	strb r0, [r1]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x62
	strb r6, [r0]
	adds r0, #3
	mov r1, sb
	strb r1, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r2, r7, #0
	adds r2, #0x70
	strh r4, [r2, #0x16]
	movs r0, #0x15
	strh r0, [r2, #0x18]
	ldr r0, _0803C3D0 @ =0x06010180
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r4, [r2, #8]
	subs r0, #0xa4
	strh r0, [r2, #0xa]
	adds r0, r7, #0
	adds r0, #0x90
	mov r1, sb
	strb r1, [r0]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0x1c]
	adds r1, r7, #0
	adds r1, #0x91
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x92
	strb r6, [r0]
	adds r0, #3
	mov r1, sb
	strb r1, [r0]
	str r5, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r7, #4]
	strh r4, [r7, #0xa]
	ldr r0, _0803C3D4 @ =0x06004000
	str r0, [r7, #0xc]
	strh r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	strh r4, [r7, #0x1e]
	strh r4, [r7, #0x20]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	movs r0, #0x1e
	strh r0, [r7, #0x26]
	movs r0, #0x14
	strh r0, [r7, #0x28]
	adds r0, r7, #0
	adds r0, #0x2a
	mov r2, sb
	strb r2, [r0]
	strh r4, [r7, #0x2e]
	ldr r0, _0803C3D8 @ =gUnknown_084ADA1A
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r7, #0x1c]
	adds r0, r7, #0
	bl DrawBackground
	ldr r0, _0803C3DC @ =gUnknown_084ADA1E
	add r8, r0
	mov r1, r8
	ldrh r0, [r1]
	bl m4aSongNumStart
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C388: .4byte gDispCnt
_0803C38C: .4byte gUnknown_03001B70
_0803C390: .4byte 0x00000803
_0803C394: .4byte gUnknown_030020D0
_0803C398: .4byte gUnknown_03001B30
_0803C39C: .4byte gUnknown_030011A8
_0803C3A0: .4byte sub_803C3E0
_0803C3A4: .4byte 0x03000203
_0803C3A8: .4byte 0x03000200
_0803C3AC: .4byte 0x030001FC
_0803C3B0: .4byte gUnknown_03005150
_0803C3B4: .4byte 0x00000206
_0803C3B8: .4byte 0x06010300
_0803C3BC: .4byte gUnknown_084ADA0A
_0803C3C0: .4byte gUnknown_084ADA0E
_0803C3C4: .4byte 0x06010000
_0803C3C8: .4byte 0x0000037B
_0803C3CC: .4byte 0x00000203
_0803C3D0: .4byte 0x06010180
_0803C3D4: .4byte 0x06004000
_0803C3D8: .4byte gUnknown_084ADA1A
_0803C3DC: .4byte gUnknown_084ADA1E

	thumb_func_start sub_803C3E0
sub_803C3E0: @ 0x0803C3E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0803C440 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov sl, r0
	ldr r0, _0803C444 @ =0x030000A0
	adds r5, r6, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r1, _0803C448 @ =0x03000203
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C458
	adds r1, #3
	adds r0, r6, r1
	ldrb r4, [r0]
	ldr r1, _0803C44C @ =gUnknown_084ADA10
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x16]
	ldr r0, _0803C450 @ =0x03000040
	adds r7, r6, r0
	ldr r1, _0803C454 @ =0x03000070
	adds r1, r6, r1
	str r1, [sp]
	cmp r4, #0
	beq _0803C468
_0803C42C:
	adds r0, r5, #0
	bl DisplaySprite
	ldrh r0, [r5, #0x16]
	adds r0, #0x2a
	strh r0, [r5, #0x16]
	subs r4, #1
	cmp r4, #0
	bne _0803C42C
	b _0803C468
	.align 2, 0
_0803C440: .4byte gCurTask
_0803C444: .4byte 0x030000A0
_0803C448: .4byte 0x03000203
_0803C44C: .4byte gUnknown_084ADA10
_0803C450: .4byte 0x03000040
_0803C454: .4byte 0x03000070
_0803C458:
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803C4FC @ =0x03000040
	adds r7, r6, r0
	ldr r1, _0803C500 @ =0x03000070
	adds r1, r6, r1
	str r1, [sp]
_0803C468:
	ldr r1, _0803C504 @ =gUnknown_084ADA08
	ldr r0, _0803C508 @ =0x00000203
	add r0, sl
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r6, [r0]
	movs r4, #0xfe
	lsls r4, r4, #1
	add r4, sl
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	lsls r1, r6, #8
	cmp r0, r1
	ble _0803C48A
	subs r0, r0, r1
	str r0, [r4]
_0803C48A:
	adds r5, r7, #0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r4, r0, r6
	movs r0, #0xfb
	subs r0, r0, r4
	movs r1, #0xb
	rsbs r1, r1, #0
	cmp r0, r1
	ble _0803C4C4
	movs r0, #0xfb
	mov sb, r0
	movs r0, #0xfb
	mov r8, r0
	adds r7, r1, #0
_0803C4AE:
	mov r1, sb
	subs r0, r1, r4
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	bl DisplaySprite
	adds r4, r4, r6
	mov r1, r8
	subs r0, r1, r4
	cmp r0, r7
	bgt _0803C4AE
_0803C4C4:
	ldr r5, [sp]
	movs r0, #0x15
	strh r0, [r5, #0x18]
	movs r4, #0
_0803C4CC:
	lsls r0, r4, #5
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	bl DisplaySprite
	adds r4, #1
	cmp r4, #7
	bls _0803C4CC
	movs r1, #0x80
	lsls r1, r1, #2
	add r1, sl
	ldrh r0, [r1]
	adds r5, r0, #0
	cmp r5, #0
	beq _0803C510
	subs r0, #1
	strh r0, [r1]
	ldr r1, _0803C50C @ =gUnknown_030011A8
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0803C58A
	subs r0, #1
	strh r0, [r1, #4]
	b _0803C58A
	.align 2, 0
_0803C4FC: .4byte 0x03000040
_0803C500: .4byte 0x03000070
_0803C504: .4byte gUnknown_084ADA08
_0803C508: .4byte 0x00000203
_0803C50C: .4byte gUnknown_030011A8
_0803C510:
	ldr r1, _0803C520 @ =gUnknown_030011A8
	ldrh r0, [r1, #4]
	cmp r0, #0x10
	beq _0803C524
	adds r0, #1
	strh r0, [r1, #4]
	b _0803C58A
	.align 2, 0
_0803C520: .4byte gUnknown_030011A8
_0803C524:
	ldr r0, _0803C554 @ =0x00000203
	add r0, sl
	ldrb r4, [r0]
	ldr r1, _0803C558 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803C55C @ =gUnknown_03002384
	ldr r0, _0803C560 @ =gUnknown_0300211C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803C564 @ =gUnknown_03004C30
	strb r5, [r0]
	ldr r1, _0803C568 @ =gUnknown_030045F8
	ldr r0, _0803C56C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	cmp r4, #0
	bne _0803C570
	movs r0, #0
	bl sub_803A950
	b _0803C58A
	.align 2, 0
_0803C554: .4byte 0x00000203
_0803C558: .4byte 0x0000FFFF
_0803C55C: .4byte gUnknown_03002384
_0803C560: .4byte gUnknown_0300211C
_0803C564: .4byte gUnknown_03004C30
_0803C568: .4byte gUnknown_030045F8
_0803C56C: .4byte gVramGraphicsCopyQueueIndex
_0803C570:
	ldr r0, _0803C59C @ =gUnknown_03001214
	strb r5, [r0]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	ldr r1, _0803C5A0 @ =gUnknown_03001B20
	ldr r0, _0803C5A4 @ =gTilemaps
	str r0, [r1]
	movs r0, #1
	bl sub_800D8FC
_0803C58A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C59C: .4byte gUnknown_03001214
_0803C5A0: .4byte gUnknown_03001B20
_0803C5A4: .4byte gTilemaps

	thumb_func_start sub_803C5A8
sub_803C5A8: @ 0x0803C5A8
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0803C624 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803C61C
	ldr r4, _0803C628 @ =gUnknown_03005A20
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _0803C61C
	ldr r0, _0803C62C @ =sub_803C648
	movs r1, #0x84
	lsls r1, r1, #1
	ldr r2, _0803C630 @ =0x00003001
	ldr r3, _0803C634 @ =sub_803C93C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r4, #0x40
	ldrb r1, [r4]
	ldr r3, _0803C638 @ =0x03000100
	adds r0, r2, r3
	movs r3, #0
	strb r1, [r0]
	ldrb r0, [r4]
	subs r0, #0x57
	ldr r4, _0803C63C @ =0x03000101
	adds r1, r2, r4
	strb r0, [r1]
	ldr r1, _0803C640 @ =0x03000102
	adds r0, r2, r1
	strh r3, [r0]
	adds r4, #3
	adds r0, r2, r4
	strh r3, [r0]
	ldr r0, _0803C644 @ =0x03000106
	adds r2, r2, r0
	strh r3, [r2]
	movs r1, #0
	movs r2, #0
_0803C60A:
	lsls r0, r1, #4
	adds r0, r5, r0
	adds r0, #0xcc
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0803C60A
_0803C61C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C624: .4byte gGameMode
_0803C628: .4byte gUnknown_03005A20
_0803C62C: .4byte sub_803C648
_0803C630: .4byte 0x00003001
_0803C634: .4byte sub_803C93C
_0803C638: .4byte 0x03000100
_0803C63C: .4byte 0x03000101
_0803C640: .4byte 0x03000102
_0803C644: .4byte 0x03000106

	thumb_func_start sub_803C648
sub_803C648: @ 0x0803C648
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803C678 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _0803C67C @ =0x03000100
	adds r1, r1, r0
	ldr r0, _0803C680 @ =gUnknown_03005A20
	adds r0, #0x40
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _0803C684
	adds r0, r2, #0
	bl TaskDestroy
	b _0803C76C
	.align 2, 0
_0803C678: .4byte gCurTask
_0803C67C: .4byte 0x03000100
_0803C680: .4byte gUnknown_03005A20
_0803C684:
	movs r5, #0
_0803C686:
	lsls r0, r5, #4
	adds r0, r6, r0
	adds r2, r0, #0
	adds r2, #0xcc
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803C6B2
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r6, r0
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0803C6B2
	movs r0, #0
	strb r0, [r2]
	ldr r0, [r4, #4]
	bl VramFree
_0803C6B2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0803C686
	ldr r3, _0803C774 @ =gUnknown_084ADA24
	movs r2, #0x82
	lsls r2, r2, #1
	adds r5, r6, r2
	ldrh r0, [r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	subs r2, #3
	adds r0, r6, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x14
	lsrs r2, r0, #0x10
	ldr r7, _0803C778 @ =0x0000FFFF
	cmp r2, r7
	beq _0803C71A
	movs r0, #0x81
	lsls r0, r0, #1
	adds r4, r6, r0
	ldrh r1, [r4]
	ldr r0, _0803C77C @ =gUnknown_03005A20
	ldr r0, [r0, #0x64]
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r0, r1, r0
	strh r0, [r4]
	cmp r1, r2
	blo _0803C71A
	ldrh r0, [r5]
	bl sub_803C784
	ldrh r0, [r5]
	adds r0, #1
	ands r0, r7
	movs r1, #7
	ands r0, r1
	strh r0, [r5]
	cmp r0, #0
	bne _0803C71A
	strh r0, [r4]
_0803C71A:
	movs r5, #0
	ldr r7, _0803C780 @ =gCamera
_0803C71E:
	lsls r2, r5, #4
	adds r0, r6, r2
	adds r0, #0xcc
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C762
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r4, r6, r0
	adds r0, r6, #0
	adds r0, #0xc0
	adds r0, r0, r2
	ldr r1, [r0]
	lsls r1, r1, #8
	adds r0, r6, #0
	adds r0, #0xc4
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #8
	ldrh r2, [r7]
	asrs r1, r1, #0x10
	subs r1, r1, r2
	strh r1, [r4, #0x16]
	ldrh r1, [r7, #2]
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0803C762:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0803C71E
_0803C76C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C774: .4byte gUnknown_084ADA24
_0803C778: .4byte 0x0000FFFF
_0803C77C: .4byte gUnknown_03005A20
_0803C780: .4byte gCamera

	thumb_func_start sub_803C784
sub_803C784: @ 0x0803C784
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, _0803C7A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	movs r3, #0
	adds r1, #0xcc
	adds r0, r0, r1
	b _0803C7BE
	.align 2, 0
_0803C7A8: .4byte gCurTask
_0803C7AC:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0803C7B8
	b _0803C922
_0803C7B8:
	lsls r0, r3, #4
	adds r0, r5, r0
	adds r0, #0xcc
_0803C7BE:
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803C7AC
	cmp r3, #3
	bls _0803C7CA
	b _0803C922
_0803C7CA:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r6, r5, r0
	lsls r3, r3, #4
	adds r0, r5, r3
	adds r0, #0xcc
	movs r1, #0xff
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xc0
	adds r7, r0, r3
	ldr r1, _0803C82C @ =gUnknown_03005A20
	ldr r0, [r1]
	str r0, [r7]
	adds r4, r5, #0
	adds r4, #0xc4
	adds r2, r4, r3
	ldr r0, [r1, #4]
	str r0, [r2]
	ldr r1, [r1, #0x10]
	movs r0, #1
	ands r1, r0
	mov r8, r3
	mov sb, r4
	cmp r1, #0
	beq _0803C838
	ldr r3, _0803C830 @ =gUnknown_084ADA24
	mov r2, ip
	lsls r4, r2, #1
	adds r1, r4, r2
	lsls r1, r1, #1
	ldr r2, _0803C834 @ =0x00000101
	adds r0, r5, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r3, #2
	adds r1, r1, r0
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r1, r1, #8
	ldr r0, [r7]
	subs r0, r0, r1
	b _0803C860
	.align 2, 0
_0803C82C: .4byte gUnknown_03005A20
_0803C830: .4byte gUnknown_084ADA24
_0803C834: .4byte 0x00000101
_0803C838:
	ldr r3, _0803C89C @ =gUnknown_084ADA24
	mov r1, ip
	lsls r4, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #1
	ldr r2, _0803C8A0 @ =0x00000101
	adds r0, r5, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r3, #2
	adds r1, r1, r0
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r1, r1, #8
	ldr r0, [r7]
	adds r0, r0, r1
_0803C860:
	str r0, [r7]
	adds r7, r3, #0
	ldr r0, _0803C8A4 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803C8A8
	mov r3, sb
	add r3, r8
	mov r2, ip
	adds r1, r4, r2
	lsls r1, r1, #1
	ldr r2, _0803C8A0 @ =0x00000101
	adds r0, r5, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r7, #4
	adds r1, r1, r0
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r1, r1, #8
	ldr r0, [r3]
	subs r0, r0, r1
	b _0803C8D0
	.align 2, 0
_0803C89C: .4byte gUnknown_084ADA24
_0803C8A0: .4byte 0x00000101
_0803C8A4: .4byte gUnknown_03005004
_0803C8A8:
	mov r3, sb
	add r3, r8
	mov r2, ip
	adds r1, r4, r2
	lsls r1, r1, #1
	ldr r2, _0803C930 @ =0x00000101
	adds r0, r5, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r7, #4
	adds r1, r1, r0
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r1, r1, #8
	ldr r0, [r3]
	adds r0, r0, r1
_0803C8D0:
	str r0, [r3]
	mov r1, r8
	adds r0, r5, r1
	adds r1, r0, #0
	adds r1, #0xc8
	movs r5, #0
	movs r4, #0
	strh r4, [r1]
	adds r0, #0xca
	strh r4, [r0]
	movs r0, #4
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r4, [r6, #8]
	ldr r0, _0803C934 @ =0x000002F7
	strh r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	strb r5, [r0]
	strh r4, [r6, #0x14]
	strh r4, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0803C938 @ =gUnknown_03005A20
	ldr r0, [r0, #0x64]
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	strb r5, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
_0803C922:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C930: .4byte 0x00000101
_0803C934: .4byte 0x000002F7
_0803C938: .4byte gUnknown_03005A20

	thumb_func_start sub_803C93C
sub_803C93C: @ 0x0803C93C
	push {r4, r5, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0
_0803C948:
	lsls r0, r4, #4
	adds r0, r5, r0
	adds r0, #0xcc
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803C962
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r5, r0
	ldr r0, [r0, #4]
	bl VramFree
_0803C962:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803C948
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803C974
sub_803C974: @ 0x0803C974
	push {r4, r5, r6, lr}
	ldr r0, _0803C9C0 @ =gMPlayTable
	ldr r0, [r0]
	ldr r3, [r0]
	ldr r0, _0803C9C4 @ =gUnknown_03005040
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _0803C988
	b _0803CB38
_0803C988:
	ldr r0, _0803C9C8 @ =gUnknown_03005A20
	ldr r1, [r0, #0x10]
	movs r2, #0x80
	ands r1, r2
	adds r4, r0, #0
	cmp r1, #0
	beq _0803C998
	b _0803CB38
_0803C998:
	ldr r0, _0803C9CC @ =gSongTable
	adds r1, r0, #0
	adds r1, #0xd8
	ldr r1, [r1]
	adds r2, r0, #0
	cmp r3, r1
	bne _0803C9D4
	ldr r0, _0803C9D0 @ =gMPlayInfo_BGM
	ldr r1, [r0, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0803C9D4
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _0803C9D4
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	b _0803CB38
	.align 2, 0
_0803C9C0: .4byte gMPlayTable
_0803C9C4: .4byte gUnknown_03005040
_0803C9C8: .4byte gUnknown_03005A20
_0803C9CC: .4byte gSongTable
_0803C9D0: .4byte gMPlayInfo_BGM
_0803C9D4:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _0803C9E6
	movs r0, #0
	strb r0, [r5, #4]
	movs r0, #0x1b
	bl m4aSongNumStart
	b _0803CB38
_0803C9E6:
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0]
	cmp r3, r0
	bne _0803CA18
	ldr r0, _0803CA14 @ =gMPlayInfo_BGM
	ldr r1, [r0, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0803CA18
	cmp r1, #0
	blt _0803CA18
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0803CA18
	movs r0, #0x1c
	bl m4aSongNumStop
	b _0803CB38
	.align 2, 0
_0803CA14: .4byte gMPlayInfo_BGM
_0803CA18:
	ldr r1, _0803CA48 @ =0x00000998
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r3, r0
	beq _0803CA4C
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0]
	cmp r3, r0
	beq _0803CA4C
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803CA4C
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0803CA54
	strb r0, [r5, #2]
	movs r0, #0x1c
	b _0803CB0E
	.align 2, 0
_0803CA48: .4byte 0x00000998
_0803CA4C:
	adds r4, r5, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0803CA60
_0803CA54:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #0x1c
	bl m4aSongNumStart
	b _0803CB38
_0803CA60:
	ldrb r6, [r4, #3]
	cmp r6, #0
	beq _0803CA74
	strb r0, [r4, #3]
	ldr r0, _0803CA70 @ =0x00000133
	bl m4aSongNumStart
	b _0803CB38
	.align 2, 0
_0803CA70: .4byte 0x00000133
_0803CA74:
	ldrb r2, [r4, #1]
	movs r1, #0xf0
	ands r1, r2
	cmp r1, #0x10
	bne _0803CAA0
	movs r0, #0xf
	ands r0, r2
	strb r0, [r4, #1]
	ldr r1, _0803CA9C @ =gUnknown_084ADB08
	ldrb r0, [r4, #1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldrb r1, [r4, #1]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #1]
	b _0803CB38
	.align 2, 0
_0803CA9C: .4byte gUnknown_084ADB08
_0803CAA0:
	cmp r1, #0x30
	bne _0803CAF0
	movs r0, #0xf
	ands r0, r2
	strb r0, [r4, #1]
	ldr r1, _0803CAE4 @ =gUnknown_084ADB08
	ldrb r0, [r4, #1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStop
	ldr r1, _0803CAE8 @ =gUnknown_084ADAE4
	ldr r0, _0803CAEC @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	bl sub_803CB7C
	ldrb r0, [r4, #1]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0803CAE0
	movs r0, #0xff
	strb r0, [r4]
_0803CAE0:
	strb r6, [r5, #1]
	b _0803CB38
	.align 2, 0
_0803CAE4: .4byte gUnknown_084ADB08
_0803CAE8: .4byte gUnknown_084ADAE4
_0803CAEC: .4byte gCurrentLevel
_0803CAF0:
	ldr r0, _0803CB18 @ =gMPlayInfo_BGM
	ldr r3, [r0, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0803CAFE
	cmp r3, #0
	bge _0803CB38
_0803CAFE:
	cmp r1, #0x20
	bne _0803CB20
	ldr r0, _0803CB1C @ =gUnknown_084ADB08
	movs r1, #0xf
	ands r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
_0803CB0E:
	bl m4aSongNumStart
	bl sub_803CB7C
	b _0803CB38
	.align 2, 0
_0803CB18: .4byte gMPlayInfo_BGM
_0803CB1C: .4byte gUnknown_084ADB08
_0803CB20:
	ldr r1, _0803CB40 @ =gUnknown_084ADAE4
	ldr r0, _0803CB44 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	bl sub_803CB7C
_0803CB38:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803CB40: .4byte gUnknown_084ADAE4
_0803CB44: .4byte gCurrentLevel

	thumb_func_start sub_803CB48
sub_803CB48: @ 0x0803CB48
	push {r4, lr}
	sub sp, #4
	ldr r0, _0803CB74 @ =sub_803C974
	movs r2, #0x80
	lsls r2, r2, #7
	movs r4, #0
	str r4, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	ldr r0, _0803CB78 @ =gUnknown_03005040
	strb r4, [r0]
	strb r4, [r0, #1]
	strb r4, [r0, #2]
	strb r4, [r0, #3]
	strb r4, [r0, #4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803CB74: .4byte sub_803C974
_0803CB78: .4byte gUnknown_03005040

	thumb_func_start sub_803CB7C
sub_803CB7C: @ 0x0803CB7C
	push {r4, lr}
	ldr r4, _0803CBB8 @ =gMPlayInfo_BGM
	adds r0, r4, #0
	bl m4aMPlayImmInit
	adds r0, r4, #0
	movs r1, #0xff
	movs r2, #4
	bl m4aMPlayVolumeControl
	adds r0, r4, #0
	movs r1, #4
	bl m4aMPlayFadeIn
	ldr r0, _0803CBBC @ =gUnknown_03005A20
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803CBB0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r4, #0
	bl m4aMPlayTempoControl
_0803CBB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803CBB8: .4byte gMPlayInfo_BGM
_0803CBBC: .4byte gUnknown_03005A20

	thumb_func_start GameStart
GameStart: @ 0x0803CBC0
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r1, _0803CC68 @ =gUnknown_03001B20
	ldr r0, _0803CC6C @ =gTilemaps
	str r0, [r1]
	ldr r1, _0803CC70 @ =gUnknown_03002034
	ldr r0, _0803CC74 @ =gUnknown_080DC170
	str r0, [r1]
	ldr r1, _0803CC78 @ =gUnknown_03005004
	ldr r0, _0803CC7C @ =gUnknown_0300502C
	movs r2, #0
	strh r4, [r0]
	strh r4, [r1]
	ldr r0, _0803CC80 @ =gUnknown_03005050
	strb r2, [r0]
	ldr r0, _0803CC84 @ =gUnknown_03005A18
	str r4, [r0]
	ldr r0, _0803CC88 @ =gUnknown_030058BC
	str r4, [r0]
	ldr r0, _0803CC8C @ =gUnknown_030058C0
	str r4, [r0]
	ldr r0, _0803CC90 @ =gUnknown_03005A20
	str r4, [r0, #0x60]
	ldr r0, _0803CC94 @ =gUnknown_03005AB0
	str r4, [r0, #0x60]
	ldr r0, _0803CC98 @ =gCamera
	str r4, [r0, #0x30]
	ldr r0, _0803CC9C @ =gUnknown_03005A10
	str r4, [r0, #4]
	ldr r0, _0803CCA0 @ =gUnknown_03006080
	str r4, [r0, #0x10]
	ldr r0, _0803CCA4 @ =gUnknown_03005018
	strb r2, [r0]
	ldr r0, _0803CCA8 @ =gGameMode
	strb r2, [r0]
	ldr r0, _0803CCAC @ =gEntitiesManagerTask
	str r4, [r0]
	ldr r0, _0803CCB0 @ =gUnknown_03005C78
	strb r2, [r0]
	ldr r0, _0803CCB4 @ =gUnknown_03005054
	strb r2, [r0]
	ldr r0, _0803CCB8 @ =gUnknown_0300506C
	strb r2, [r0]
	movs r1, #0
	ldr r3, _0803CCBC @ =gUnknown_03006240
	movs r0, #0
	ldr r2, _0803CCC0 @ =gUnknown_03005130
_0803CC1E:
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #3
	bls _0803CC1E
	movs r0, #0
	str r0, [r3]
	movs r1, #0
	ldr r6, _0803CCC4 @ =gUnknown_03005090
	movs r2, #0
	ldr r5, _0803CCC8 @ =gUnknown_03005048
	ldr r3, _0803CCCC @ =gUnknown_03005060
_0803CC34:
	adds r0, r1, r6
	strb r2, [r0]
	adds r0, r1, r5
	strb r2, [r0]
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #3
	bls _0803CC34
	bl sub_8012CA8
	cmp r0, #1
	beq _0803CC54
	bl sub_803CD34
	movs r4, #1
_0803CC54:
	ldr r5, _0803CCD0 @ =gFlags
	ldr r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803CCD4
	bl sub_800FEB0
	b _0803CD2C
	.align 2, 0
_0803CC68: .4byte gUnknown_03001B20
_0803CC6C: .4byte gTilemaps
_0803CC70: .4byte gUnknown_03002034
_0803CC74: .4byte gUnknown_080DC170
_0803CC78: .4byte gUnknown_03005004
_0803CC7C: .4byte gUnknown_0300502C
_0803CC80: .4byte gUnknown_03005050
_0803CC84: .4byte gUnknown_03005A18
_0803CC88: .4byte gUnknown_030058BC
_0803CC8C: .4byte gUnknown_030058C0
_0803CC90: .4byte gUnknown_03005A20
_0803CC94: .4byte gUnknown_03005AB0
_0803CC98: .4byte gCamera
_0803CC9C: .4byte gUnknown_03005A10
_0803CCA0: .4byte gUnknown_03006080
_0803CCA4: .4byte gUnknown_03005018
_0803CCA8: .4byte gGameMode
_0803CCAC: .4byte gEntitiesManagerTask
_0803CCB0: .4byte gUnknown_03005C78
_0803CCB4: .4byte gUnknown_03005054
_0803CCB8: .4byte gUnknown_0300506C
_0803CCBC: .4byte gUnknown_03006240
_0803CCC0: .4byte gUnknown_03005130
_0803CCC4: .4byte gUnknown_03005090
_0803CCC8: .4byte gUnknown_03005048
_0803CCCC: .4byte gUnknown_03005060
_0803CCD0: .4byte gFlags
_0803CCD4:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803CCFC
	bl sub_800CFB8
	movs r1, #0
	ldr r0, _0803CCF8 @ =gUnknown_03005160
	movs r2, #0xf
	adds r0, #8
_0803CCEA:
	strh r2, [r0]
	adds r0, #2
	adds r1, #1
	cmp r1, #3
	bls _0803CCEA
	b _0803CD2C
	.align 2, 0
_0803CCF8: .4byte gUnknown_03005160
_0803CCFC:
	cmp r4, #0
	beq _0803CD08
	movs r0, #1
	bl sub_806A6DC
	b _0803CD2C
_0803CD08:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0803CD28
	movs r0, #1
	bl sub_800D4E0
	ldr r0, [r5]
	ldr r1, _0803CD24 @ =0xFFFFEFFF
	ands r0, r1
	str r0, [r5]
	b _0803CD2C
	.align 2, 0
_0803CD24: .4byte 0xFFFFEFFF
_0803CD28:
	bl sub_800CFB8
_0803CD2C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803CD34
sub_803CD34: @ 0x0803CD34
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r3, #0
	str r3, [sp]
	ldr r1, _0803CDE8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _0803CDEC @ =gUnknown_03005160
	str r2, [r1, #4]
	ldr r0, _0803CDF0 @ =0x8500010C
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r3, [r2, #4]
	movs r7, #0x84
	lsls r7, r7, #3
	adds r1, r2, r7
	ldr r0, _0803CDF4 @ =0x0000C350
	str r0, [r1]
	strb r3, [r2, #0x18]
	adds r6, r2, #0
	adds r6, #0x20
	movs r0, #0
	adds r2, #8
_0803CD68:
	strh r0, [r2]
	adds r2, #2
	adds r3, #1
	cmp r3, #3
	bls _0803CD68
	movs r3, #0
	ldr r5, _0803CDEC @ =gUnknown_03005160
	movs r4, #0x20
	movs r0, #0xe3
	lsls r0, r0, #2
	mov r8, r0
	movs r1, #0xff
	mov ip, r1
	movs r2, #0xe1
	lsls r2, r2, #2
	adds r2, r2, r5
	mov sb, r2
_0803CD8A:
	lsls r2, r3, #4
	adds r1, r2, r5
	add r1, r8
	ldrb r0, [r1]
	mov r7, ip
	orrs r0, r7
	strb r0, [r1]
	movs r0, #0
	adds r1, r3, #1
	add r2, sb
_0803CD9E:
	strb r4, [r2]
	adds r2, #1
	adds r0, #1
	cmp r0, #7
	bls _0803CD9E
	adds r3, r1, #0
	cmp r3, #9
	bls _0803CD8A
	ldr r0, _0803CDF8 @ =0x00008CA0
	str r0, [sp]
	ldr r0, _0803CDE8 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r6, [r0, #4]
	ldr r1, _0803CDFC @ =0x850000D8
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	adds r2, r6, #0
	subs r2, #0x20
	movs r1, #0
	movs r0, #1
	strb r0, [r2, #0x19]
	strb r0, [r2, #0x1a]
	strb r1, [r2, #0x1b]
	strb r1, [r2, #0x1c]
	movs r2, #0x81
	lsls r2, r2, #3
	adds r0, r6, r2
	str r1, [r0]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CDE8: .4byte 0x040000D4
_0803CDEC: .4byte gUnknown_03005160
_0803CDF0: .4byte 0x8500010C
_0803CDF4: .4byte 0x0000C350
_0803CDF8: .4byte 0x00008CA0
_0803CDFC: .4byte 0x850000D8

	thumb_func_start sub_803CE00
sub_803CE00: @ 0x0803CE00
	push {lr}
	sub sp, #4
	ldr r0, _0803CE20 @ =sub_803CE44
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _0803CE24 @ =sub_803CE48
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	ldr r1, _0803CE28 @ =gUnknown_030058BC
	str r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0803CE20: .4byte sub_803CE44
_0803CE24: .4byte sub_803CE48
_0803CE28: .4byte gUnknown_030058BC

	thumb_func_start sub_803CE2C
sub_803CE2C: @ 0x0803CE2C
	push {r4, lr}
	ldr r4, _0803CE40 @ =gUnknown_030058BC
	ldr r0, [r4]
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803CE40: .4byte gUnknown_030058BC

	thumb_func_start sub_803CE44
sub_803CE44: @ 0x0803CE44
	bx lr
	.align 2, 0

	thumb_func_start sub_803CE48
sub_803CE48: @ 0x0803CE48
	ldr r1, _0803CE50 @ =gUnknown_030058BC
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0803CE50: .4byte gUnknown_030058BC

	thumb_func_start sub_803CE54
sub_803CE54: @ 0x0803CE54
	push {r4, r5, r6, lr}
	ldr r0, _0803CE88 @ =gUnknown_0300501C
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0803CE8C @ =gUnknown_03005148
	strb r1, [r0]
	ldr r1, _0803CE90 @ =gUnknown_03004FEC
	movs r0, #0
	strh r0, [r1]
	ldr r6, _0803CE94 @ =gUnknown_03005088
	movs r0, #1
	strb r0, [r6]
	ldr r0, _0803CE98 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803CEA4
	ldr r0, _0803CE9C @ =gUnknown_03005084
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0803CEA0 @ =gCurrentLevel
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	b _0803CEBA
	.align 2, 0
_0803CE88: .4byte gUnknown_0300501C
_0803CE8C: .4byte gUnknown_03005148
_0803CE90: .4byte gUnknown_03004FEC
_0803CE94: .4byte gUnknown_03005088
_0803CE98: .4byte gGameMode
_0803CE9C: .4byte gUnknown_03005084
_0803CEA0: .4byte gCurrentLevel
_0803CEA4:
	ldr r4, _0803CEC4 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0xd
	bne _0803CED0
	ldr r0, _0803CEC8 @ =gUnknown_03005084
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	ldrsb r1, [r4, r1]
_0803CEBA:
	ldr r3, _0803CECC @ =gUnknown_03005A20
	movs r2, #0
	bl sub_8046CB8
	b _0803CF08
	.align 2, 0
_0803CEC4: .4byte gCurrentLevel
_0803CEC8: .4byte gUnknown_03005084
_0803CECC: .4byte gUnknown_03005A20
_0803CED0:
	ldr r5, _0803CF40 @ =gUnknown_03005084
	movs r0, #0
	ldrsb r0, [r5, r0]
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r3, _0803CF44 @ =gUnknown_03005A20
	movs r2, #0
	bl sub_8046CB8
	ldr r0, _0803CF48 @ =gUnknown_03005050
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0803CF08
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0803CF08
	movs r0, #2
	strb r0, [r6]
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r3, _0803CF4C @ =gUnknown_03005AB0
	movs r0, #1
	movs r2, #1
	bl sub_8046CB8
_0803CF08:
	ldr r0, _0803CF50 @ =gUnknown_03005120
	movs r3, #0
	str r3, [r0]
	ldr r2, _0803CF54 @ =gUnknown_03005004
	ldrh r1, [r2]
	ldr r0, _0803CF58 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0803CF5C @ =gGameMode
	ldrb r0, [r2]
	cmp r0, #1
	bls _0803CF28
	ldr r0, _0803CF60 @ =gUnknown_03005038
	ldr r1, _0803CF64 @ =gUnknown_03001B24
	ldr r1, [r1]
	str r1, [r0]
_0803CF28:
	ldr r0, _0803CF68 @ =gUnknown_03004FE4
	str r3, [r0]
	ldrb r0, [r2]
	cmp r0, #6
	beq _0803CF36
	cmp r0, #4
	bne _0803CF74
_0803CF36:
	ldr r1, _0803CF6C @ =gUnknown_03005034
	ldr r0, _0803CF70 @ =0x00002A30
	str r0, [r1]
	b _0803CF8C
	.align 2, 0
_0803CF40: .4byte gUnknown_03005084
_0803CF44: .4byte gUnknown_03005A20
_0803CF48: .4byte gUnknown_03005050
_0803CF4C: .4byte gUnknown_03005AB0
_0803CF50: .4byte gUnknown_03005120
_0803CF54: .4byte gUnknown_03005004
_0803CF58: .4byte 0x0000FF7F
_0803CF5C: .4byte gGameMode
_0803CF60: .4byte gUnknown_03005038
_0803CF64: .4byte gUnknown_03001B24
_0803CF68: .4byte gUnknown_03004FE4
_0803CF6C: .4byte gUnknown_03005034
_0803CF70: .4byte 0x00002A30
_0803CF74:
	cmp r0, #5
	bne _0803CF88
	ldr r1, _0803CF80 @ =gUnknown_03005034
	ldr r0, _0803CF84 @ =0x00004650
	str r0, [r1]
	b _0803CF8C
	.align 2, 0
_0803CF80: .4byte gUnknown_03005034
_0803CF84: .4byte 0x00004650
_0803CF88:
	ldr r0, _0803CF98 @ =gUnknown_03005034
	str r3, [r0]
_0803CF8C:
	bl sub_803CF9C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803CF98: .4byte gUnknown_03005034

	thumb_func_start sub_803CF9C
sub_803CF9C: @ 0x0803CF9C
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0803D008 @ =sub_803D290
	movs r2, #0xff
	lsls r2, r2, #8
	ldr r1, _0803D00C @ =sub_803DC84
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	ldr r1, _0803D010 @ =gUnknown_030058C0
	str r0, [r1]
	ldr r0, _0803D014 @ =gUnknown_03004FFC
	movs r5, #0
	strb r5, [r0]
	ldr r2, _0803D018 @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #0x21
	orrs r0, r1
	ldr r1, _0803D01C @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	bl sub_8040160
	bl sub_803CB48
	ldr r4, _0803D020 @ =gGameMode
	ldrb r0, [r4]
	cmp r0, #6
	beq _0803CFE0
	bl sub_80550F8
	adds r6, r0, #0
_0803CFE0:
	ldr r0, _0803D024 @ =gUnknown_03004FE0
	strb r5, [r0]
	ldrb r0, [r4]
	cmp r0, #6
	bne _0803CFEE
	bl sub_801B574
_0803CFEE:
	ldrb r0, [r4]
	cmp r0, #1
	bls _0803D030
	ldr r0, _0803D028 @ =gUnknown_03005084
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0803D02C @ =gCurrentLevel
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	b _0803D046
	.align 2, 0
_0803D008: .4byte sub_803D290
_0803D00C: .4byte sub_803DC84
_0803D010: .4byte gUnknown_030058C0
_0803D014: .4byte gUnknown_03004FFC
_0803D018: .4byte gUnknown_03005004
_0803D01C: .4byte 0x0000FF7F
_0803D020: .4byte gGameMode
_0803D024: .4byte gUnknown_03004FE0
_0803D028: .4byte gUnknown_03005084
_0803D02C: .4byte gCurrentLevel
_0803D030:
	ldr r4, _0803D050 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0xd
	bne _0803D05C
	ldr r0, _0803D054 @ =gUnknown_03005084
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	ldrsb r1, [r4, r1]
_0803D046:
	ldr r2, _0803D058 @ =gUnknown_03005A20
	bl sub_804202C
	b _0803D086
	.align 2, 0
_0803D050: .4byte gCurrentLevel
_0803D054: .4byte gUnknown_03005084
_0803D058: .4byte gUnknown_03005A20
_0803D05C:
	ldr r0, _0803D09C @ =gUnknown_03005084
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r2, _0803D0A0 @ =gUnknown_03005A20
	bl sub_804202C
	ldr r0, _0803D0A4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803D086
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldr r2, _0803D0A8 @ =gUnknown_03005AB0
	movs r0, #1
	bl sub_804202C
_0803D086:
	ldr r0, _0803D0AC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0803D0B4
	ldr r0, _0803D0B0 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_803E0E4
	b _0803D0BA
	.align 2, 0
_0803D09C: .4byte gUnknown_03005084
_0803D0A0: .4byte gUnknown_03005A20
_0803D0A4: .4byte gUnknown_03005088
_0803D0A8: .4byte gUnknown_03005AB0
_0803D0AC: .4byte gGameMode
_0803D0B0: .4byte gCurrentLevel
_0803D0B4:
	movs r0, #0
	bl sub_803E0E4
_0803D0BA:
	ldr r3, _0803D12C @ =gUnknown_03005004
	ldrh r0, [r3]
	ldr r2, _0803D130 @ =0x0000FFFD
	ands r2, r0
	ldr r0, _0803D134 @ =0x0000FFFB
	ands r2, r0
	strh r2, [r3]
	ldr r5, _0803D138 @ =gGameMode
	ldrb r0, [r5]
	cmp r0, #3
	bls _0803D0D8
	movs r1, #4
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
_0803D0D8:
	bl CreateStageRingsManager
	bl CreateStageEntitiesManager
	ldr r4, _0803D13C @ =gCurrentLevel
	ldrb r0, [r4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #3
	beq _0803D0F8
	movs r0, #1
	rsbs r0, r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_804C5D8
_0803D0F8:
	ldrb r0, [r5]
	cmp r0, #6
	beq _0803D148
	ldr r1, _0803D140 @ =gUnknown_084ADB18
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #2
	bne _0803D14C
	bl sub_8017800
	cmp r0, #0
	beq _0803D14C
	ldrh r0, [r6, #6]
	ldr r1, _0803D144 @ =0x03000027
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b _0803D14C
	.align 2, 0
_0803D12C: .4byte gUnknown_03005004
_0803D130: .4byte 0x0000FFFD
_0803D134: .4byte 0x0000FFFB
_0803D138: .4byte gGameMode
_0803D13C: .4byte gCurrentLevel
_0803D140: .4byte gUnknown_084ADB18
_0803D144: .4byte 0x03000027
_0803D148:
	bl sub_803E094
_0803D14C:
	ldr r0, _0803D1F0 @ =gUnknown_03001204
	movs r4, #0
	strh r4, [r0]
	ldr r0, _0803D1F4 @ =gUnknown_030010B0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0803D1F8 @ =gUnknown_03004C34
	strh r1, [r0]
	ldr r0, _0803D1FC @ =gUnknown_0300232C
	movs r2, #0x78
	strh r2, [r0]
	ldr r0, _0803D200 @ =gUnknown_030045F4
	movs r1, #0x50
	strh r1, [r0]
	ldr r0, _0803D204 @ =gUnknown_0300120C
	strh r2, [r0]
	ldr r0, _0803D208 @ =gUnknown_030020C0
	strh r1, [r0]
	ldr r1, _0803D20C @ =gUnknown_03004C38
	movs r0, #0x80
	strh r0, [r1]
	ldr r0, _0803D210 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803D26C
	bl sub_801827C
	bl sub_80181F8
	ldr r0, _0803D214 @ =gUnknown_03005074
	strb r4, [r0]
	movs r4, #0
_0803D190:
	ldr r0, _0803D218 @ =gUnknown_03004FE8
	adds r0, r4, r0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0803D21C @ =gUnknown_03005150
	ldrb r0, [r0]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803D1BE
	adds r0, r4, #0
	bl sub_80130F0
	ldr r0, _0803D220 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r4, r0
	beq _0803D1BE
	adds r0, r4, #0
	bl sub_8015810
_0803D1BE:
	ldr r0, _0803D224 @ =gUnknown_03005048
	adds r0, r4, r0
	movs r1, #0xff
	strb r1, [r0]
	ldr r1, _0803D210 @ =gGameMode
	ldrb r0, [r1]
	cmp r0, #6
	bne _0803D1D4
	ldr r0, _0803D228 @ =gUnknown_03005090
	adds r0, r4, r0
	strb r4, [r0]
_0803D1D4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803D190
	ldrb r0, [r1]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0803D24C
	movs r5, #0
	ldr r4, _0803D22C @ =gUnknown_03004FF0
	b _0803D234
	.align 2, 0
_0803D1F0: .4byte gUnknown_03001204
_0803D1F4: .4byte gUnknown_030010B0
_0803D1F8: .4byte gUnknown_03004C34
_0803D1FC: .4byte gUnknown_0300232C
_0803D200: .4byte gUnknown_030045F4
_0803D204: .4byte gUnknown_0300120C
_0803D208: .4byte gUnknown_030020C0
_0803D20C: .4byte gUnknown_03004C38
_0803D210: .4byte gGameMode
_0803D214: .4byte gUnknown_03005074
_0803D218: .4byte gUnknown_03004FE8
_0803D21C: .4byte gUnknown_03005150
_0803D220: .4byte 0x04000128
_0803D224: .4byte gUnknown_03005048
_0803D228: .4byte gUnknown_03005090
_0803D22C: .4byte gUnknown_03004FF0
_0803D230:
	adds r4, #4
	adds r5, #1
_0803D234:
	cmp r5, #2
	bhi _0803D24C
	ldrb r0, [r4]
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_8028034
	str r0, [r4]
	ldr r0, _0803D264 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #4
	bne _0803D230
_0803D24C:
	ldr r0, _0803D264 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0803D284
	ldr r0, _0803D268 @ =gUnknown_03005A20
	adds r0, #0x26
	ldrb r2, [r0]
	movs r1, #0x80
	orrs r1, r2
	strb r1, [r0]
	b _0803D284
	.align 2, 0
_0803D264: .4byte gGameMode
_0803D268: .4byte gUnknown_03005A20
_0803D26C:
	movs r4, #0
	ldr r3, _0803D28C @ =gUnknown_03005048
	movs r2, #0xff
_0803D272:
	adds r0, r4, r3
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803D272
_0803D284:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D28C: .4byte gUnknown_03005048

	thumb_func_start sub_803D290
sub_803D290: @ 0x0803D290
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _0803D2D8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r7, r0, #0x1e
	ldr r0, _0803D2DC @ =gGameMode
	ldrb r4, [r0]
	cmp r4, #1
	bhi _0803D2EC
	ldr r0, _0803D2E0 @ =gUnknown_03005004
	ldrh r2, [r0]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	bne _0803D2C8
	ldr r0, _0803D2E4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803D2C8
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _0803D2C8
	bl sub_801A38C
_0803D2C8:
	ldr r1, _0803D2E8 @ =gUnknown_03005120
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	mov ip, r0
	b _0803D434
	.align 2, 0
_0803D2D8: .4byte 0x04000128
_0803D2DC: .4byte gGameMode
_0803D2E0: .4byte gUnknown_03005004
_0803D2E4: .4byte gPressedKeys
_0803D2E8: .4byte gUnknown_03005120
_0803D2EC:
	ldr r0, _0803D350 @ =gUnknown_03001B24
	ldr r1, _0803D354 @ =gUnknown_03005038
	ldr r2, [r0]
	ldr r0, [r1]
	subs r3, r2, r0
	ldr r1, _0803D358 @ =gUnknown_03005120
	ldr r0, [r1]
	subs r0, r3, r0
	mov ip, r0
	str r3, [r1]
	cmp r4, #3
	bls _0803D374
	ldr r2, _0803D35C @ =0xFFFFFE00
	adds r1, r3, #0
	ands r1, r2
	subs r4, r3, r0
	adds r0, r4, #0
	ands r0, r2
	cmp r1, r0
	beq _0803D394
	ldr r5, _0803D360 @ =gUnknown_03005010
	ldr r1, [r5]
	ldr r0, _0803D364 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0803D368 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, _0803D36C @ =0xFFFFF000
	ands r3, r0
	ands r4, r0
	ldr r6, _0803D370 @ =gUnknown_03005074
	cmp r3, r4
	beq _0803D33E
	ldrb r2, [r6]
	lsrs r1, r2, #4
	adds r1, #1
	movs r0, #0xf
	ands r0, r2
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r6]
_0803D33E:
	ldr r1, [r5]
	movs r3, #7
	ldrb r2, [r6]
	movs r0, #0xf8
	ands r0, r2
	ands r1, r3
	orrs r0, r1
	strb r0, [r6]
	b _0803D394
	.align 2, 0
_0803D350: .4byte gUnknown_03001B24
_0803D354: .4byte gUnknown_03005038
_0803D358: .4byte gUnknown_03005120
_0803D35C: .4byte 0xFFFFFE00
_0803D360: .4byte gUnknown_03005010
_0803D364: .4byte 0x00196225
_0803D368: .4byte 0x3C6EF35F
_0803D36C: .4byte 0xFFFFF000
_0803D370: .4byte gUnknown_03005074
_0803D374:
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r1, r3, #0
	ands r1, r2
	mov r4, ip
	subs r0, r3, r4
	ands r0, r2
	cmp r1, r0
	beq _0803D394
	ldr r2, _0803D3C0 @ =gUnknown_03005010
	ldr r1, [r2]
	ldr r0, _0803D3C4 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _0803D3C8 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
_0803D394:
	ldr r2, _0803D3CC @ =gCamera
	ldrh r1, [r2, #0x26]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803D40E
	ldr r0, _0803D3D0 @ =gInput
	ldrh r3, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r3
	cmp r0, r1
	bne _0803D3D4
	cmp r7, #3
	beq _0803D3FA
	adds r1, r2, #0
	adds r1, #0x3a
	movs r0, #3
	strb r0, [r1]
	b _0803D414
	.align 2, 0
_0803D3C0: .4byte gUnknown_03005010
_0803D3C4: .4byte 0x00196225
_0803D3C8: .4byte 0x3C6EF35F
_0803D3CC: .4byte gCamera
_0803D3D0: .4byte gInput
_0803D3D4:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	beq _0803D3EC
	cmp r7, #0
	beq _0803D404
	adds r1, r2, #0
	adds r1, #0x3a
	movs r0, #0
	strb r0, [r1]
	b _0803D414
_0803D3EC:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0803D40E
	cmp r7, #1
	bhi _0803D404
_0803D3FA:
	adds r1, r2, #0
	adds r1, #0x3a
	movs r0, #2
	strb r0, [r1]
	b _0803D414
_0803D404:
	adds r1, r2, #0
	adds r1, #0x3a
	movs r0, #1
	strb r0, [r1]
	b _0803D414
_0803D40E:
	adds r0, r2, #0
	adds r0, #0x3a
	strb r7, [r0]
_0803D414:
	ldr r0, _0803D49C @ =gUnknown_03005150
	ldrb r0, [r0]
	adds r2, #0x3a
	ldrb r1, [r2]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803D428
	strb r7, [r2]
_0803D428:
	ldr r1, _0803D4A0 @ =gUnknown_03004FE0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803D434
	subs r0, #1
	strb r0, [r1]
_0803D434:
	ldr r0, _0803D4A4 @ =gUnknown_0300502C
	ldr r3, _0803D4A8 @ =gUnknown_03005004
	ldrh r2, [r3]
	strh r2, [r0]
	movs r4, #1
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0803D448
	b _0803D586
_0803D448:
	ldr r0, _0803D4AC @ =gUnknown_03004FE4
	ldr r1, [r0]
	add r1, ip
	str r1, [r0]
	movs r0, #4
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803D50C
	ldr r1, _0803D4B0 @ =gUnknown_03005034
	ldr r0, [r1]
	mov r5, ip
	subs r0, r0, r5
	str r0, [r1]
	cmp r0, #0
	ble _0803D46C
	b _0803D586
_0803D46C:
	ldr r0, _0803D4B4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803D500
	adds r0, r2, #0
	orrs r0, r4
	strh r0, [r3]
	ldr r0, _0803D4B8 @ =gUnknown_03005160
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _0803D484
	b _0803D586
_0803D484:
	ldr r2, _0803D4BC @ =gUnknown_03005A20
	adds r1, r2, #0
	adds r1, #0x26
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803D4C4
	ldr r0, _0803D4C0 @ =0x0000FD60
	b _0803D4C6
	.align 2, 0
_0803D49C: .4byte gUnknown_03005150
_0803D4A0: .4byte gUnknown_03004FE0
_0803D4A4: .4byte gUnknown_0300502C
_0803D4A8: .4byte gUnknown_03005004
_0803D4AC: .4byte gUnknown_03004FE4
_0803D4B0: .4byte gUnknown_03005034
_0803D4B4: .4byte gGameMode
_0803D4B8: .4byte gUnknown_03005160
_0803D4BC: .4byte gUnknown_03005A20
_0803D4C0: .4byte 0x0000FD60
_0803D4C4:
	ldr r0, _0803D4F4 @ =0x0000FB20
_0803D4C6:
	strh r0, [r2, #0xa]
	ldr r0, _0803D4F8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xa
	bne _0803D4E8
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xd0
	str r1, [sp]
	movs r1, #8
	movs r2, #0x10
	bl sub_804CC14
_0803D4E8:
	ldr r0, _0803D4FC @ =gUnknown_03005A20
	ldr r1, [r0, #0x10]
	movs r2, #0x80
	orrs r1, r2
	str r1, [r0, #0x10]
	b _0803D570
	.align 2, 0
_0803D4F4: .4byte 0x0000FB20
_0803D4F8: .4byte gCurrentLevel
_0803D4FC: .4byte gUnknown_03005A20
_0803D500:
	adds r0, r2, #0
	orrs r0, r4
	strh r0, [r3]
	bl sub_8019DB0
	b _0803D586
_0803D50C:
	ldr r0, _0803D54C @ =gUnknown_03005034
	ldr r1, [r0]
	add r1, ip
	str r1, [r0]
	ldr r0, _0803D550 @ =0x00008CA0
	cmp r1, r0
	bls _0803D586
	ldr r0, _0803D554 @ =gGameMode
	ldrb r1, [r0]
	cmp r1, #1
	bhi _0803D57C
	adds r0, r2, #0
	orrs r0, r4
	strh r0, [r3]
	ldr r0, _0803D558 @ =gUnknown_03005160
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _0803D534
	cmp r1, #1
	bne _0803D586
_0803D534:
	ldr r0, _0803D55C @ =gUnknown_03005A20
	adds r1, r0, #0
	adds r1, #0x26
	strb r5, [r1]
	ldr r1, [r0, #0x10]
	movs r2, #0x40
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _0803D564
	ldr r0, _0803D560 @ =0x0000FD60
	b _0803D566
	.align 2, 0
_0803D54C: .4byte gUnknown_03005034
_0803D550: .4byte 0x00008CA0
_0803D554: .4byte gGameMode
_0803D558: .4byte gUnknown_03005160
_0803D55C: .4byte gUnknown_03005A20
_0803D560: .4byte 0x0000FD60
_0803D564:
	ldr r0, _0803D578 @ =0x0000FB20
_0803D566:
	strh r0, [r2, #0xa]
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2, #0x10]
_0803D570:
	movs r0, #0xa6
	bl m4aSongNumStart
	b _0803D586
	.align 2, 0
_0803D578: .4byte 0x0000FB20
_0803D57C:
	adds r0, r2, #0
	orrs r0, r4
	strh r0, [r3]
	bl sub_8019DB0
_0803D586:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803D590
sub_803D590: @ 0x0803D590
	push {lr}
	ldr r3, _0803D5CC @ =gUnknown_03005004
	ldrh r0, [r3]
	movs r1, #0x20
	adds r2, r0, #0
	orrs r2, r1
	strh r2, [r3]
	ldr r0, _0803D5D0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803D5EC
	ldr r1, _0803D5D4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D5D8 @ =gUnknown_03002384
	ldr r0, _0803D5DC @ =gUnknown_0300211C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0803D5E0 @ =gUnknown_03004C30
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0803D5E4 @ =gUnknown_030045F8
	ldr r0, _0803D5E8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_806A1A4
	b _0803D64E
	.align 2, 0
_0803D5CC: .4byte gUnknown_03005004
_0803D5D0: .4byte gGameMode
_0803D5D4: .4byte 0x0000FFFF
_0803D5D8: .4byte gUnknown_03002384
_0803D5DC: .4byte gUnknown_0300211C
_0803D5E0: .4byte gUnknown_03004C30
_0803D5E4: .4byte gUnknown_030045F8
_0803D5E8: .4byte gVramGraphicsCopyQueueIndex
_0803D5EC:
	cmp r0, #1
	bhi _0803D62C
	ldr r1, _0803D61C @ =gUnknown_03005024
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D62C
	movs r0, #1
	orrs r2, r0
	strh r2, [r3]
	ldr r1, _0803D620 @ =gUnknown_03005018
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _0803D624
	subs r0, r2, #1
	strb r0, [r1]
	movs r0, #1
	bl sub_8055DD0
	b _0803D64E
	.align 2, 0
_0803D61C: .4byte gUnknown_03005024
_0803D620: .4byte gUnknown_03005018
_0803D624:
	movs r0, #2
	bl sub_8055DD0
	b _0803D64E
_0803D62C:
	ldr r1, _0803D654 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D658 @ =gUnknown_03002384
	ldr r0, _0803D65C @ =gUnknown_0300211C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0803D660 @ =gUnknown_03004C30
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0803D664 @ =gUnknown_030045F8
	ldr r0, _0803D668 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_803CF9C
_0803D64E:
	pop {r0}
	bx r0
	.align 2, 0
_0803D654: .4byte 0x0000FFFF
_0803D658: .4byte gUnknown_03002384
_0803D65C: .4byte gUnknown_0300211C
_0803D660: .4byte gUnknown_03004C30
_0803D664: .4byte gUnknown_030045F8
_0803D668: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_803D66C
sub_803D66C: @ 0x0803D66C
	push {lr}
	ldr r2, _0803D6A4 @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0803D6A8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bne _0803D6C4
	ldr r1, _0803D6AC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D6B0 @ =gUnknown_03002384
	ldr r0, _0803D6B4 @ =gUnknown_0300211C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0803D6B8 @ =gUnknown_03004C30
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0803D6BC @ =gUnknown_030045F8
	ldr r0, _0803D6C0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_806A1A4
	b _0803D720
	.align 2, 0
_0803D6A4: .4byte gUnknown_03005004
_0803D6A8: .4byte gGameMode
_0803D6AC: .4byte 0x0000FFFF
_0803D6B0: .4byte gUnknown_03002384
_0803D6B4: .4byte gUnknown_0300211C
_0803D6B8: .4byte gUnknown_03004C30
_0803D6BC: .4byte gUnknown_030045F8
_0803D6C0: .4byte gVramGraphicsCopyQueueIndex
_0803D6C4:
	ldr r1, _0803D6EC @ =gUnknown_03005024
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D71C
	ldr r1, _0803D6F0 @ =gUnknown_03005018
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _0803D6F4
	subs r0, r2, #1
	strb r0, [r1]
	movs r0, #1
	bl sub_8055DD0
	b _0803D720
	.align 2, 0
_0803D6EC: .4byte gUnknown_03005024
_0803D6F0: .4byte gUnknown_03005018
_0803D6F4:
	ldr r0, _0803D714 @ =gUnknown_03005160
	movs r1, #0x84
	lsls r1, r1, #3
	adds r2, r0, r1
	ldr r0, _0803D718 @ =gUnknown_03005030
	ldr r0, [r0]
	ldr r1, [r2]
	cmp r0, r1
	bhs _0803D708
	adds r0, r1, #0
_0803D708:
	str r0, [r2]
	movs r0, #2
	bl sub_8055DD0
	b _0803D720
	.align 2, 0
_0803D714: .4byte gUnknown_03005160
_0803D718: .4byte gUnknown_03005030
_0803D71C:
	bl sub_805B9E8
_0803D720:
	pop {r0}
	bx r0

	thumb_func_start sub_803D724
sub_803D724: @ 0x0803D724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _0803D830 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D834 @ =gUnknown_03002384
	ldr r0, _0803D838 @ =gUnknown_0300211C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0803D83C @ =gUnknown_03004C30
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0803D840 @ =gUnknown_030045F8
	ldr r0, _0803D844 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r0, _0803D848 @ =gFlags
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	ldr r2, _0803D84C @ =0x04000200
	mov r8, r2
	ldrh r0, [r2]
	mov sl, r0
	ldr r6, _0803D850 @ =0x04000208
	ldrh r0, [r6]
	adds r7, r0, #0
	ldr r5, _0803D854 @ =0x04000004
	ldrh r3, [r5]
	mov sb, r3
	movs r0, #0
	strh r0, [r2]
	ldrh r2, [r2]
	strh r0, [r6]
	ldrh r2, [r6]
	strh r0, [r5]
	ldrh r0, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	ldr r0, _0803D848 @ =gFlags
	str r1, [r0]
	ldr r1, _0803D858 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _0803D85C @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _0803D860 @ =0x00007FFF
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
	ldr r0, _0803D864 @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	bl sub_8012D98
	mov r2, sl
	mov r1, r8
	strh r2, [r1]
	ldrh r0, [r1]
	strh r7, [r6]
	ldrh r0, [r6]
	mov r3, sb
	strh r3, [r5]
	ldrh r0, [r5]
	bl m4aSoundVSyncOn
	ldr r1, _0803D848 @ =gFlags
	ldr r0, [r1]
	ldr r1, _0803D868 @ =0xFFFF7FFF
	ands r0, r1
	ldr r2, _0803D848 @ =gFlags
	str r0, [r2]
	ldr r0, _0803D86C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	beq _0803D874
	ldr r1, _0803D870 @ =gCurrentLevel
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x11
	bgt _0803D878
	bl sub_803CE54
	b _0803D878
	.align 2, 0
_0803D830: .4byte 0x0000FFFF
_0803D834: .4byte gUnknown_03002384
_0803D838: .4byte gUnknown_0300211C
_0803D83C: .4byte gUnknown_03004C30
_0803D840: .4byte gUnknown_030045F8
_0803D844: .4byte gVramGraphicsCopyQueueIndex
_0803D848: .4byte gFlags
_0803D84C: .4byte 0x04000200
_0803D850: .4byte 0x04000208
_0803D854: .4byte 0x04000004
_0803D858: .4byte 0x040000B0
_0803D85C: .4byte 0x0000C5FF
_0803D860: .4byte 0x00007FFF
_0803D864: .4byte 0x040000D4
_0803D868: .4byte 0xFFFF7FFF
_0803D86C: .4byte gGameMode
_0803D870: .4byte gCurrentLevel
_0803D874:
	bl sub_806A1A4
_0803D878:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803D888
sub_803D888: @ 0x0803D888
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D928 @ =0x00000331
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D92C @ =0x00000332
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D930 @ =0x00000339
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r5, _0803D934 @ =0x0000033B
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xcf
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D938 @ =0x0000034B
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D93C @ =0x0000033A
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x10
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D928: .4byte 0x00000331
_0803D92C: .4byte 0x00000332
_0803D930: .4byte 0x00000339
_0803D934: .4byte 0x0000033B
_0803D938: .4byte 0x0000034B
_0803D93C: .4byte 0x0000033A

	thumb_func_start sub_803D940
sub_803D940: @ 0x0803D940
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D9E0 @ =0x00000331
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D9E4 @ =0x00000332
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D9E8 @ =0x00000339
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r5, _0803D9EC @ =0x0000033B
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xcf
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D9F0 @ =0x0000034B
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803D9F4 @ =0x0000033A
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x11
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D9E0: .4byte 0x00000331
_0803D9E4: .4byte 0x00000332
_0803D9E8: .4byte 0x00000339
_0803D9EC: .4byte 0x0000033B
_0803D9F0: .4byte 0x0000034B
_0803D9F4: .4byte 0x0000033A

	thumb_func_start sub_803D9F8
sub_803D9F8: @ 0x0803D9F8
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DAF8 @ =0x00000347
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DAFC @ =0x00000349
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DB00 @ =0x0000034A
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x16
	bl m4aSongNumStart
	ldr r0, _0803DB04 @ =gUnknown_03005148
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803DA72
	ldr r1, _0803DB08 @ =gCamera
	ldr r0, _0803DB0C @ =0x00000422
	strh r0, [r1, #0x18]
	ldrh r2, [r1, #0x26]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1, #0x26]
	ldr r2, _0803DB10 @ =gUnknown_03001B70
	ldrh r1, [r2, #6]
	ldr r0, _0803DB14 @ =0x00003FFF
	ands r0, r1
	strh r0, [r2, #6]
	ldr r0, _0803DB18 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803DA72
	ldr r2, _0803DB1C @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803DB20 @ =gUnknown_03005034
	ldr r0, _0803DB24 @ =0x00004650
	str r0, [r1]
_0803DA72:
	ldr r0, _0803DB04 @ =gUnknown_03005148
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #1
	bls _0803DAB2
	ldr r1, _0803DB08 @ =gCamera
	movs r0, #0xae
	lsls r0, r0, #5
	strh r0, [r1, #0x16]
	ldrh r2, [r1, #0x26]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r1, #0x26]
	ldr r2, _0803DB10 @ =gUnknown_03001B70
	ldrh r1, [r2, #6]
	ldr r0, _0803DB14 @ =0x00003FFF
	ands r0, r1
	strh r0, [r2, #6]
	ldr r0, _0803DB18 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803DAB2
	ldr r2, _0803DB1C @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803DB20 @ =gUnknown_03005034
	ldr r0, _0803DB24 @ =0x00004650
	str r0, [r1]
_0803DAB2:
	ldrb r0, [r3]
	cmp r0, #2
	bls _0803DAF2
	ldr r2, _0803DB10 @ =gUnknown_03001B70
	ldrh r1, [r2, #6]
	ldr r0, _0803DB14 @ =0x00003FFF
	ands r0, r1
	strh r0, [r2, #6]
	ldr r2, _0803DB08 @ =gCamera
	ldrh r1, [r2, #0x26]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	ldr r1, _0803DB28 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x26]
	movs r0, #0xcc
	lsls r0, r0, #4
	strh r0, [r2, #0x16]
	ldr r0, _0803DB18 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803DAF2
	ldr r2, _0803DB1C @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803DB20 @ =gUnknown_03005034
	ldr r0, _0803DB24 @ =0x00004650
	str r0, [r1]
_0803DAF2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DAF8: .4byte 0x00000347
_0803DAFC: .4byte 0x00000349
_0803DB00: .4byte 0x0000034A
_0803DB04: .4byte gUnknown_03005148
_0803DB08: .4byte gCamera
_0803DB0C: .4byte 0x00000422
_0803DB10: .4byte gUnknown_03001B70
_0803DB14: .4byte 0x00003FFF
_0803DB18: .4byte gGameMode
_0803DB1C: .4byte gUnknown_03005004
_0803DB20: .4byte gUnknown_03005034
_0803DB24: .4byte 0x00004650
_0803DB28: .4byte 0x00007FFF

	thumb_func_start sub_803DB2C
sub_803DB2C: @ 0x0803DB2C
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DBC0 @ =0x00000331
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DBC4 @ =0x00000332
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DBC8 @ =0x00000339
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r5, _0803DBCC @ =0x0000033B
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xcf
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DBD0 @ =0x0000034B
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x10
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DBC0: .4byte 0x00000331
_0803DBC4: .4byte 0x00000332
_0803DBC8: .4byte 0x00000339
_0803DBCC: .4byte 0x0000033B
_0803DBD0: .4byte 0x0000034B

	thumb_func_start sub_803DBD4
sub_803DBD4: @ 0x0803DBD4
	push {lr}
	ldr r0, _0803DC28 @ =gUnknown_03005030
	movs r3, #0
	str r3, [r0]
	ldr r2, _0803DC2C @ =gUnknown_03005024
	movs r0, #3
	strb r0, [r2]
	ldr r1, _0803DC30 @ =gUnknown_03005020
	ldr r0, _0803DC34 @ =gCurrentLevel
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803DC38 @ =gGameMode
	ldrb r1, [r0]
	cmp r1, #1
	bls _0803DBF6
	movs r0, #1
	strb r0, [r2]
_0803DBF6:
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0803DC0E
	ldr r0, _0803DC3C @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldr r1, _0803DC40 @ =gUnknown_03005160
	cmp r0, #0
	beq _0803DC18
_0803DC0E:
	ldr r0, _0803DC44 @ =gUnknown_03005080
	ldr r1, _0803DC40 @ =gUnknown_03005160
	ldrb r2, [r1, #0x18]
	strb r2, [r0]
	strb r3, [r1, #0x18]
_0803DC18:
	ldrb r0, [r1, #0x1c]
	bl sub_804D02C
	bl sub_803CE54
	pop {r0}
	bx r0
	.align 2, 0
_0803DC28: .4byte gUnknown_03005030
_0803DC2C: .4byte gUnknown_03005024
_0803DC30: .4byte gUnknown_03005020
_0803DC34: .4byte gCurrentLevel
_0803DC38: .4byte gGameMode
_0803DC3C: .4byte gUnknown_03005004
_0803DC40: .4byte gUnknown_03005160
_0803DC44: .4byte gUnknown_03005080

	thumb_func_start sub_803DC48
sub_803DC48: @ 0x0803DC48
	push {r4, lr}
	ldr r4, _0803DC74 @ =gUnknown_030058C0
	ldr r0, [r4]
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
	ldr r0, _0803DC78 @ =gUnknown_03005A20
	bl sub_8046CC4
	ldr r0, _0803DC7C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803DC6A
	ldr r0, _0803DC80 @ =gUnknown_03005AB0
	bl sub_8046CC4
_0803DC6A:
	bl sub_803F644
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DC74: .4byte gUnknown_030058C0
_0803DC78: .4byte gUnknown_03005A20
_0803DC7C: .4byte gGameMode
_0803DC80: .4byte gUnknown_03005AB0

	thumb_func_start sub_803DC84
sub_803DC84: @ 0x0803DC84
	push {lr}
	ldr r0, _0803DCB8 @ =gGameMode
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0803DCA0
	ldr r0, _0803DCBC @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803DCA8
_0803DCA0:
	ldr r0, _0803DCC0 @ =gUnknown_03005160
	ldr r1, _0803DCC4 @ =gUnknown_03005080
	ldrb r1, [r1]
	strb r1, [r0, #0x18]
_0803DCA8:
	ldr r1, _0803DCC8 @ =gUnknown_030058C0
	movs r0, #0
	str r0, [r1]
	bl m4aMPlayAllStop
	pop {r0}
	bx r0
	.align 2, 0
_0803DCB8: .4byte gGameMode
_0803DCBC: .4byte gUnknown_03005004
_0803DCC0: .4byte gUnknown_03005160
_0803DCC4: .4byte gUnknown_03005080
_0803DCC8: .4byte gUnknown_030058C0

	thumb_func_start sub_803DCCC
sub_803DCCC: @ 0x0803DCCC
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DCF8 @ =0x0000032E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DCFC @ =0x0000032F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xc
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DCF8: .4byte 0x0000032E
_0803DCFC: .4byte 0x0000032F

	thumb_func_start sub_803DD00
sub_803DD00: @ 0x0803DD00
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DD60 @ =0x0000032E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DD64 @ =0x0000032F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r5, #0xcd
	lsls r5, r5, #2
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r0, _0803DD68 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803DD52
	ldr r2, _0803DD6C @ =gCamera
	ldr r0, _0803DD70 @ =gUnknown_03005A0C
	ldr r1, [r0]
	ldr r3, _0803DD74 @ =0xFFFFFD00
	adds r0, r3, #0
	ldrh r1, [r1, #0x1c]
	adds r0, r0, r1
	strh r0, [r2, #0x1a]
_0803DD52:
	movs r0, #0xd
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DD60: .4byte 0x0000032E
_0803DD64: .4byte 0x0000032F
_0803DD68: .4byte gGameMode
_0803DD6C: .4byte gCamera
_0803DD70: .4byte gUnknown_03005A0C
_0803DD74: .4byte 0xFFFFFD00

	thumb_func_start sub_803DD78
sub_803DD78: @ 0x0803DD78
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DDB0 @ =0x00000333
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DDB4 @ =0x0000034D
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DDB8 @ =0x00000351
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xe
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DDB0: .4byte 0x00000333
_0803DDB4: .4byte 0x0000034D
_0803DDB8: .4byte 0x00000351

	thumb_func_start sub_803DDBC
sub_803DDBC: @ 0x0803DDBC
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DDF4 @ =0x00000333
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DDF8 @ =0x0000034D
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DDFC @ =0x00000351
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xf
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DDF4: .4byte 0x00000333
_0803DDF8: .4byte 0x0000034D
_0803DDFC: .4byte 0x00000351

	thumb_func_start sub_803DE00
sub_803DE00: @ 0x0803DE00
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DE34 @ =0x00000336
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DE38 @ =0x00000335
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r0, _0803DE3C @ =0x0000060A
	ldr r1, _0803DE40 @ =0x7F207F20
	movs r2, #0
	bl sub_804C5D8
	movs r0, #0x12
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DE34: .4byte 0x00000336
_0803DE38: .4byte 0x00000335
_0803DE3C: .4byte 0x0000060A
_0803DE40: .4byte 0x7F207F20

	thumb_func_start sub_803DE44
sub_803DE44: @ 0x0803DE44
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DE7C @ =0x00000336
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DE80 @ =0x00000335
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xd0
	lsls r0, r0, #3
	ldr r1, _0803DE84 @ =0x7F207F20
	movs r2, #0
	bl sub_804C5D8
	movs r0, #0x13
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DE7C: .4byte 0x00000336
_0803DE80: .4byte 0x00000335
_0803DE84: .4byte 0x7F207F20

	thumb_func_start sub_803DE88
sub_803DE88: @ 0x0803DE88
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #6
	ldr r1, _0803DEA4 @ =0x00000337
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x14
	bl m4aSongNumStart
	pop {r0}
	bx r0
	.align 2, 0
_0803DEA4: .4byte 0x00000337

	thumb_func_start sub_803DEA8
sub_803DEA8: @ 0x0803DEA8
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #6
	ldr r1, _0803DEC4 @ =0x00000337
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x15
	bl m4aSongNumStart
	pop {r0}
	bx r0
	.align 2, 0
_0803DEC4: .4byte 0x00000337

	thumb_func_start sub_803DEC8
sub_803DEC8: @ 0x0803DEC8
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DF3C @ =0x0000033D
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF40 @ =0x0000033E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF44 @ =0x0000033F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF48 @ =0x00000352
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF4C @ =0x00000353
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF50 @ =0x0000034E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DF54 @ =0x0000034F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x17
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DF3C: .4byte 0x0000033D
_0803DF40: .4byte 0x0000033E
_0803DF44: .4byte 0x0000033F
_0803DF48: .4byte 0x00000352
_0803DF4C: .4byte 0x00000353
_0803DF50: .4byte 0x0000034E
_0803DF54: .4byte 0x0000034F

	thumb_func_start sub_803DF58
sub_803DF58: @ 0x0803DF58
	push {lr}
	movs r0, #0x18
	bl m4aSongNumStart
	pop {r0}
	bx r0

	thumb_func_start sub_803DF64
sub_803DF64: @ 0x0803DF64
	push {lr}
	movs r0, #0x1a
	bl m4aSongNumStart
	pop {r0}
	bx r0

	thumb_func_start sub_803DF70
sub_803DF70: @ 0x0803DF70
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DFB8 @ =0x0000032E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DFBC @ =0x0000032F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r5, #0xcd
	lsls r5, r5, #2
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xc
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803DFB8: .4byte 0x0000032E
_0803DFBC: .4byte 0x0000032F

	thumb_func_start sub_803DFC0
sub_803DFC0: @ 0x0803DFC0
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803DFF8 @ =0x00000333
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803DFFC @ =0x0000034D
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E000 @ =0x00000351
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0xe
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803DFF8: .4byte 0x00000333
_0803DFFC: .4byte 0x0000034D
_0803E000: .4byte 0x00000351

	thumb_func_start sub_803E004
sub_803E004: @ 0x0803E004
	push {r4, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803E078 @ =0x0000033D
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E07C @ =0x0000033E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E080 @ =0x0000033F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E084 @ =0x00000352
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E088 @ =0x00000353
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E08C @ =0x0000034E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E090 @ =0x0000034F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x17
	bl m4aSongNumStart
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E078: .4byte 0x0000033D
_0803E07C: .4byte 0x0000033E
_0803E080: .4byte 0x0000033F
_0803E084: .4byte 0x00000352
_0803E088: .4byte 0x00000353
_0803E08C: .4byte 0x0000034E
_0803E090: .4byte 0x0000034F

	thumb_func_start sub_803E094
sub_803E094: @ 0x0803E094
	push {r4, r5, lr}
	movs r4, #0x80
	lsls r4, r4, #6
	ldr r1, _0803E0DC @ =0x0000032E
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	ldr r1, _0803E0E0 @ =0x0000032F
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r5, #0xcd
	lsls r5, r5, #2
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #0
	bl CreatePaletteLoaderTask
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl CreatePaletteLoaderTask
	movs r0, #0x35
	bl m4aSongNumStart
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E0DC: .4byte 0x0000032E
_0803E0E0: .4byte 0x0000032F

	thumb_func_start sub_803E0E4
sub_803E0E4: @ 0x0803E0E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r7, _0803E2C4 @ =gCamera
	lsls r0, r0, #2
	ldr r1, _0803E2C8 @ =gUnknown_084ADCF0
	adds r6, r0, r1
	ldr r1, _0803E2CC @ =gDispCnt
	movs r2, #0xf9
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	mov r3, r8
	cmp r3, #0xd
	bne _0803E110
	ldr r2, _0803E2D0 @ =0x00003741
	adds r0, r2, #0
	strh r0, [r1]
_0803E110:
	ldr r3, _0803E2D4 @ =gUnknown_03001B70
	mov sl, r3
	ldr r0, _0803E2D8 @ =0x00001E01
	strh r0, [r3, #2]
	ldr r3, _0803E2DC @ =0x00001F02
	mov r0, sl
	strh r3, [r0, #4]
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r1, #0x1f
	asrs r1, r1, #6
	movs r0, #1
	ldrsb r0, [r6, r0]
	adds r0, #0x1f
	asrs r0, r0, #6
	lsls r0, r0, #1
	orrs r1, r0
	lsls r1, r1, #0xe
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #8
	movs r2, #3
	orrs r0, r2
	orrs r1, r0
	movs r0, #2
	ldrsb r0, [r6, r0]
	lsls r0, r0, #2
	orrs r1, r0
	mov r0, sl
	strh r1, [r0, #6]
	mov r1, r8
	cmp r1, #0xd
	bne _0803E180
	strh r3, [r0]
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r1, #0x1f
	asrs r1, r1, #6
	movs r0, #1
	ldrsb r0, [r6, r0]
	adds r0, #0x1f
	asrs r0, r0, #6
	lsls r0, r0, #1
	orrs r1, r0
	lsls r1, r1, #0xe
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #8
	orrs r0, r2
	orrs r1, r0
	movs r0, #2
	ldrsb r0, [r6, r0]
	lsls r0, r0, #2
	orrs r1, r0
	mov r2, sl
	strh r1, [r2, #2]
_0803E180:
	ldr r4, _0803E2E0 @ =gUnknown_030058D0
	ldr r3, _0803E2E4 @ =gUnknown_084ADB60
	mov sb, r3
	ldr r0, _0803E2E8 @ =gUnknown_03005910
	mov r1, sb
	movs r2, #0x40
	bl memcpy
	mov r1, r8
	lsls r0, r1, #1
	adds r5, r0, r1
	adds r0, r4, #0
	adds r0, #0x5c
	strh r5, [r0]
	mov r1, sb
	adds r1, #0x40
	ldr r0, _0803E2EC @ =gUnknown_03005950
	movs r2, #0x40
	bl memcpy
	adds r1, r5, #1
	adds r0, r4, #0
	adds r0, #0x9c
	strh r1, [r0]
	mov r2, r8
	cmp r2, #0xd
	bne _0803E1C2
	adds r2, r4, #0
	adds r2, #0xae
	ldrh r1, [r2]
	ldr r0, _0803E2F0 @ =0x0000FFFC
	ands r0, r1
	strh r0, [r2]
_0803E1C2:
	mov r1, sb
	adds r1, #0x80
	ldr r0, _0803E2F4 @ =gUnknown_03005990
	movs r2, #0x40
	bl memcpy
	adds r1, r5, #2
	adds r0, r4, #0
	adds r0, #0xdc
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0xc4
	movs r0, #2
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xe
	movs r3, #0xc0
	lsls r3, r3, #0x13
	mov sb, r3
	add r0, sb
	str r0, [r1]
	adds r5, r4, #0
	adds r5, #0xcc
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	add r0, sb
	str r0, [r5]
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r1, #0x22
	strh r0, [r1]
	movs r1, #1
	ldrsb r1, [r6, r1]
	adds r0, r4, #0
	adds r0, #0xe8
	strh r1, [r0]
	mov r0, r8
	cmp r0, #0xd
	bne _0803E220
	adds r2, r4, #0
	adds r2, #0xee
	ldrh r0, [r2]
	ldr r1, _0803E2F0 @ =0x0000FFFC
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strh r1, [r2]
_0803E220:
	ldr r3, _0803E2F8 @ =gUnknown_03004620
	movs r1, #0
	strb r1, [r3, #1]
	ldr r0, _0803E2FC @ =gUnknown_03001B40
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	movs r1, #0xff
	strb r1, [r0, #6]
	movs r2, #0x20
	strb r2, [r0, #7]
	movs r1, #0
	strb r1, [r3, #2]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	mov r2, r8
	cmp r2, #0xa
	bne _0803E28E
	ldr r0, _0803E2F4 @ =gUnknown_03005990
	bl DrawBackground
	ldr r1, _0803E300 @ =0x040000D4
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _0803E304 @ =0x80000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r3, sl
	ldrh r0, [r3, #6]
	ldr r1, _0803E308 @ =0x0000E0FF
	ands r1, r0
	strh r1, [r3, #6]
	movs r0, #3
	ldrsb r0, [r6, r0]
	adds r0, #2
	lsls r0, r0, #8
	orrs r0, r1
	strh r0, [r3, #6]
	movs r0, #3
	ldrsb r0, [r6, r0]
	adds r0, #2
	lsls r0, r0, #0xb
	add r0, sb
	str r0, [r5]
	adds r1, r4, #0
	adds r1, #0xe0
	movs r0, #0x40
	strh r0, [r1]
_0803E28E:
	ldr r0, _0803E30C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0803E2AE
	adds r1, r4, #0
	adds r1, #0x6e
	ldrh r0, [r1]
	movs r3, #0x82
	lsls r3, r3, #2
	adds r2, r3, #0
	orrs r0, r2
	strh r0, [r1]
	adds r1, #0x40
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
_0803E2AE:
	mov r0, r8
	cmp r0, #0xd
	bne _0803E310
	ldr r0, _0803E2EC @ =gUnknown_03005950
	bl DrawBackground
	ldr r0, _0803E2F4 @ =gUnknown_03005990
	bl DrawBackground
	b _0803E322
	.align 2, 0
_0803E2C4: .4byte gCamera
_0803E2C8: .4byte gUnknown_084ADCF0
_0803E2CC: .4byte gDispCnt
_0803E2D0: .4byte 0x00003741
_0803E2D4: .4byte gUnknown_03001B70
_0803E2D8: .4byte 0x00001E01
_0803E2DC: .4byte 0x00001F02
_0803E2E0: .4byte gUnknown_030058D0
_0803E2E4: .4byte gUnknown_084ADB60
_0803E2E8: .4byte gUnknown_03005910
_0803E2EC: .4byte gUnknown_03005950
_0803E2F0: .4byte 0x0000FFFC
_0803E2F4: .4byte gUnknown_03005990
_0803E2F8: .4byte gUnknown_03004620
_0803E2FC: .4byte gUnknown_03001B40
_0803E300: .4byte 0x040000D4
_0803E304: .4byte 0x80000800
_0803E308: .4byte 0x0000E0FF
_0803E30C: .4byte gGameMode
_0803E310:
	ldr r0, _0803E340 @ =gUnknown_03005910
	bl DrawBackground
	ldr r0, _0803E344 @ =gUnknown_03005950
	bl DrawBackground
	ldr r0, _0803E348 @ =gUnknown_03005990
	bl DrawBackground
_0803E322:
	ldr r0, _0803E34C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0803E358
	ldr r2, _0803E350 @ =gUnknown_03005A0C
	ldr r0, _0803E354 @ =gUnknown_084ADEA8
	mov r3, r8
	lsls r1, r3, #2
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r2]
	adds r4, r1, #0
	adds r0, r2, #0
	b _0803E364
	.align 2, 0
_0803E340: .4byte gUnknown_03005910
_0803E344: .4byte gUnknown_03005950
_0803E348: .4byte gUnknown_03005990
_0803E34C: .4byte gGameMode
_0803E350: .4byte gUnknown_03005A0C
_0803E354: .4byte gUnknown_084ADEA8
_0803E358:
	ldr r0, _0803E3F4 @ =gUnknown_03005A0C
	ldr r1, _0803E3F8 @ =gUnknown_02033004
	ldr r1, [r1]
	str r1, [r0]
	mov r1, r8
	lsls r4, r1, #2
_0803E364:
	movs r1, #0
	strh r1, [r7, #0x14]
	ldr r2, [r0]
	ldrh r0, [r2, #0x1e]
	strh r0, [r7, #0x16]
	strh r1, [r7, #0x18]
	ldrh r0, [r2, #0x1c]
	strh r0, [r7, #0x1a]
	ldr r2, _0803E3FC @ =gUnknown_03005A20
	ldr r0, [r2]
	asrs r0, r0, #8
	subs r0, #0x78
	strh r0, [r7, #8]
	strh r0, [r7]
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	ldrh r3, [r7, #0x22]
	adds r0, r0, r3
	subs r0, #0x54
	strh r0, [r7, #0xa]
	strh r0, [r7, #2]
	movs r0, #0x10
	strh r0, [r7, #4]
	movs r0, #0xc
	strh r0, [r7, #6]
	strh r1, [r7, #0xc]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x10]
	strh r1, [r7, #0x12]
	strh r1, [r7, #0x1c]
	movs r0, #8
	strh r0, [r7, #0x1e]
	strh r1, [r7, #0x20]
	strh r1, [r7, #0x22]
	strh r1, [r7, #0x26]
	strh r1, [r7, #0x28]
	strh r1, [r7, #0x2a]
	strh r1, [r7, #0x34]
	strh r1, [r7, #0x36]
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	subs r0, #4
	strh r0, [r7, #0x38]
	ldr r0, _0803E400 @ =sub_803F6C4
	movs r2, #0xf0
	lsls r2, r2, #4
	ldr r1, _0803E404 @ =sub_803F65C
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	str r0, [r7, #0x30]
	ldr r0, _0803E408 @ =gUnknown_084ADCA8
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [r7, #0x2c]
	ldr r0, _0803E40C @ =gUnknown_084ADC60
	adds r0, r4, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0803E3E4
	bl _call_via_r0
_0803E3E4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E3F4: .4byte gUnknown_03005A0C
_0803E3F8: .4byte gUnknown_02033004
_0803E3FC: .4byte gUnknown_03005A20
_0803E400: .4byte sub_803F6C4
_0803E404: .4byte sub_803F65C
_0803E408: .4byte gUnknown_084ADCA8
_0803E40C: .4byte gUnknown_084ADC60

	thumb_func_start sub_803E410
sub_803E410: @ 0x0803E410
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0803E468 @ =gUnknown_03005A20
	mov r8, r0
	ldr r4, _0803E46C @ =gCamera
	movs r1, #0
	ldrsh r6, [r4, r1]
	movs r2, #2
	ldrsh r7, [r4, r2]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r6, r0
	blt _0803E43C
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	adds r1, r0, #0
	subs r1, #0xf1
	adds r0, r6, #0
	cmp r0, r1
	ble _0803E43C
	adds r0, r1, #0
_0803E43C:
	adds r6, r0, #0
	movs r1, #0x14
	ldrsh r0, [r4, r1]
	cmp r7, r0
	blt _0803E452
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	subs r0, #0xa1
	adds r1, r7, #0
	cmp r1, r0
	ble _0803E454
_0803E452:
	adds r1, r0, #0
_0803E454:
	adds r7, r1, #0
	ldrh r1, [r4, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0803E470
	subs r0, r1, #1
	strh r0, [r4, #0x1c]
	b _0803E57E
	.align 2, 0
_0803E468: .4byte gUnknown_03005A20
_0803E46C: .4byte gCamera
_0803E470:
	ldr r0, _0803E4E0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0803E510
	ldr r1, _0803E4E4 @ =gUnknown_03005130
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov ip, r0
	ldrh r1, [r4, #0x26]
	movs r0, #1
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	bne _0803E4AA
	ldr r0, _0803E4E8 @ =0x03000050
	adds r1, r5, r0
	ldrh r0, [r4, #0xc]
	ldrh r1, [r1]
	adds r0, r0, r1
	subs r0, #0x78
	strh r0, [r4, #8]
_0803E4AA:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0803E57E
	movs r1, #0x38
	ldrsh r3, [r4, r1]
	ldr r2, _0803E4EC @ =0x03000058
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r2, r0, #4
	ldr r0, _0803E4F0 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803E4D0
	rsbs r2, r2, #0
_0803E4D0:
	cmp r3, r2
	beq _0803E4FE
	cmp r3, r2
	bge _0803E4F4
	adds r3, #5
	cmp r3, r2
	ble _0803E4FC
	b _0803E4FA
	.align 2, 0
_0803E4E0: .4byte gGameMode
_0803E4E4: .4byte gUnknown_03005130
_0803E4E8: .4byte 0x03000050
_0803E4EC: .4byte 0x03000058
_0803E4F0: .4byte gUnknown_03005004
_0803E4F4:
	subs r3, #5
	cmp r3, r2
	bge _0803E4FC
_0803E4FA:
	adds r3, r2, #0
_0803E4FC:
	strh r3, [r4, #0x38]
_0803E4FE:
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r4, #0xe]
	ldrh r1, [r1]
	adds r0, r0, r1
	subs r0, #0x50
	ldrh r1, [r4, #0x22]
	adds r0, r0, r1
	b _0803E57A
_0803E510:
	ldrh r1, [r4, #0x26]
	movs r0, #1
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	bne _0803E52A
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	ldrh r1, [r4, #0xc]
	adds r0, r0, r1
	subs r0, #0x78
	strh r0, [r4, #8]
_0803E52A:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0803E57E
	movs r2, #0x38
	ldrsh r3, [r4, r2]
	mov r1, r8
	movs r0, #0xf
	ldrsb r0, [r1, r0]
	subs r2, r0, #4
	ldr r0, _0803E55C @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803E54C
	rsbs r2, r2, #0
_0803E54C:
	cmp r3, r2
	beq _0803E56A
	cmp r3, r2
	bge _0803E560
	adds r3, #5
	cmp r3, r2
	ble _0803E568
	b _0803E566
	.align 2, 0
_0803E55C: .4byte gUnknown_03005004
_0803E560:
	subs r3, #5
	cmp r3, r2
	bge _0803E568
_0803E566:
	adds r3, r2, #0
_0803E568:
	strh r3, [r4, #0x38]
_0803E56A:
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	ldrh r1, [r4, #0xe]
	adds r0, r0, r1
	subs r0, #0x50
	ldrh r2, [r4, #0x22]
	adds r0, r0, r2
_0803E57A:
	adds r0, r0, r3
	strh r0, [r4, #0xa]
_0803E57E:
	movs r1, #8
	ldrsh r0, [r4, r1]
	subs r1, r0, r6
	movs r2, #0x1e
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _0803E59C
	subs r0, r1, r0
	movs r2, #4
	ldrsh r1, [r4, r2]
	cmp r1, r0
	ble _0803E598
	adds r1, r0, #0
_0803E598:
	adds r6, r6, r1
	b _0803E5B0
_0803E59C:
	cmn r1, r0
	bge _0803E5B0
	adds r1, r1, r0
	movs r2, #4
	ldrsh r0, [r4, r2]
	rsbs r0, r0, #0
	cmp r0, r1
	bge _0803E5AE
	adds r0, r1, #0
_0803E5AE:
	adds r6, r6, r0
_0803E5B0:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r6, r0
	blt _0803E5C8
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	adds r1, r0, #0
	subs r1, #0xf0
	adds r0, r6, #0
	cmp r0, r1
	ble _0803E5C8
	adds r0, r1, #0
_0803E5C8:
	adds r6, r0, #0
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0803E606
	mov r0, r8
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803E5F2
	mov r0, r8
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	beq _0803E606
_0803E5F2:
	ldrh r0, [r4, #0x20]
	adds r0, #4
	strh r0, [r4, #0x20]
	adds r1, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _0803E616
	movs r1, #0x18
	b _0803E616
_0803E606:
	ldrh r0, [r4, #0x20]
	subs r0, #4
	strh r0, [r4, #0x20]
	adds r1, r0, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0803E616
	movs r1, #0
_0803E616:
	strh r1, [r4, #0x20]
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	subs r1, r0, r7
	movs r2, #0x20
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _0803E636
	subs r0, r1, r0
	movs r2, #6
	ldrsh r1, [r4, r2]
	cmp r1, r0
	ble _0803E632
	adds r1, r0, #0
_0803E632:
	adds r7, r7, r1
	b _0803E64A
_0803E636:
	cmn r1, r0
	bge _0803E64A
	adds r1, r1, r0
	movs r2, #6
	ldrsh r0, [r4, r2]
	rsbs r0, r0, #0
	cmp r0, r1
	bge _0803E648
	adds r0, r1, #0
_0803E648:
	adds r7, r7, r0
_0803E64A:
	movs r1, #0x14
	ldrsh r0, [r4, r1]
	cmp r7, r0
	blt _0803E65E
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	subs r0, #0xa0
	adds r1, r7, #0
	cmp r1, r0
	ble _0803E660
_0803E65E:
	adds r1, r0, #0
_0803E660:
	adds r7, r1, #0
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r6, r0
	blt _0803E67A
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	adds r1, r0, #0
	subs r1, #0xf0
	adds r0, r6, #0
	cmp r0, r1
	ble _0803E67A
	adds r0, r1, #0
_0803E67A:
	adds r6, r0, #0
	movs r1, #0x14
	ldrsh r0, [r4, r1]
	cmp r7, r0
	blt _0803E690
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	subs r0, #0xa0
	adds r1, r7, #0
	cmp r1, r0
	ble _0803E692
_0803E690:
	adds r1, r0, #0
_0803E692:
	movs r2, #0x34
	ldrsh r0, [r4, r2]
	adds r6, r6, r0
	movs r2, #0x36
	ldrsh r0, [r4, r2]
	adds r7, r1, r0
	strh r6, [r4]
	strh r7, [r4, #2]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_803E6C4
	ldr r2, [r4, #0x2c]
	cmp r2, #0
	beq _0803E6B8
	adds r0, r6, #0
	adds r1, r7, #0
	bl _call_via_r2
_0803E6B8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803E6C4
sub_803E6C4: @ 0x0803E6C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	ldr r4, _0803E728 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0xd
	bne _0803E73C
	ldr r0, _0803E72C @ =gUnknown_03005120
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r5, r6, r0
	adds r1, r5, #0
	subs r1, #0x48
	ldr r0, _0803E730 @ =0x00000A7F
	cmp r1, r0
	ble _0803E6FC
	adds r5, r1, #0
	movs r1, #0xa8
	lsls r1, r1, #4
	adds r0, r5, #0
	bl Mod
	adds r5, r0, #0
	adds r5, #0x48
_0803E6FC:
	adds r6, r5, #0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0xd
	bne _0803E73C
	ldr r7, _0803E734 @ =gUnknown_03005950
	ldr r2, _0803E738 @ =gUnknown_030020D0
	movs r1, #7
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r2]
	mov r0, sb
	ands r0, r1
	strh r0, [r2, #2]
	strh r6, [r7, #0x30]
	mov r0, sb
	strh r0, [r7, #0x32]
	adds r0, r7, #0
	bl DrawBackground
	b _0803E776
	.align 2, 0
_0803E728: .4byte gCurrentLevel
_0803E72C: .4byte gUnknown_03005120
_0803E730: .4byte 0x00000A7F
_0803E734: .4byte gUnknown_03005950
_0803E738: .4byte gUnknown_030020D0
_0803E73C:
	ldr r7, _0803E784 @ =gUnknown_03005910
	ldr r1, _0803E788 @ =gUnknown_030020D0
	mov r8, r1
	movs r0, #7
	adds r5, r6, #0
	ands r5, r0
	strh r5, [r1, #4]
	mov r4, sb
	ands r4, r0
	strh r4, [r1, #6]
	strh r6, [r7, #0x30]
	mov r0, sb
	strh r0, [r7, #0x32]
	adds r0, r7, #0
	bl DrawBackground
	adds r0, r7, #0
	bl UpdateBgAnimationTiles
	adds r7, #0x40
	mov r1, r8
	strh r5, [r1, #8]
	strh r4, [r1, #0xa]
	strh r6, [r7, #0x30]
	mov r0, sb
	strh r0, [r7, #0x32]
	adds r0, r7, #0
	bl DrawBackground
_0803E776:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E784: .4byte gUnknown_03005910
_0803E788: .4byte gUnknown_030020D0

	thumb_func_start sub_803E78C
sub_803E78C: @ 0x0803E78C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _0803E854 @ =gCamera
	movs r1, #0x10
	ldrsh r0, [r2, r1]
	subs r4, r4, r0
	ldr r0, _0803E858 @ =gUnknown_03005990
	ldr r3, _0803E85C @ =gUnknown_030020D0
	movs r1, #0
	strh r1, [r2, #0x28]
	strh r1, [r3, #0xc]
	strh r1, [r2, #0x2a]
	strh r1, [r3, #0xe]
	strh r1, [r0, #0x30]
	strh r1, [r0, #0x32]
	bl DrawBackground
	ldr r1, _0803E860 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r1, _0803E864 @ =gUnknown_03002118
	ldr r0, _0803E868 @ =0x0400001C
	str r0, [r1]
	ldr r0, _0803E86C @ =gUnknown_03002320
	strb r2, [r0]
	ldr r0, _0803E870 @ =gUnknown_03001144
	ldr r1, [r0]
	ldr r6, _0803E874 @ =gUnknown_03005120
	movs r5, #0xff
	movs r3, #0
	movs r2, #7
_0803E7CE:
	ldr r0, [r6]
	lsrs r0, r0, #4
	ands r0, r5
	strh r0, [r1]
	adds r1, #2
	strh r3, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _0803E7CE
	ldr r6, _0803E874 @ =gUnknown_03005120
	movs r5, #0xff
	movs r3, #0
	movs r2, #0xf
_0803E7EA:
	ldr r0, [r6]
	lsrs r0, r0, #5
	ands r0, r5
	strh r0, [r1]
	adds r1, #2
	strh r3, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _0803E7EA
	movs r2, #0x18
	ldr r6, _0803E874 @ =gUnknown_03005120
	movs r5, #0xff
	movs r3, #0
_0803E806:
	ldr r0, [r6]
	lsrs r0, r0, #6
	ands r0, r5
	strh r0, [r1]
	adds r1, #2
	strh r3, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x27
	ble _0803E806
	cmp r2, #0x57
	bgt _0803E82E
	movs r0, #0
_0803E820:
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x57
	ble _0803E820
_0803E82E:
	cmp r2, #0x9f
	bgt _0803E84E
	movs r5, #0
	adds r0, r2, #0
	subs r0, #0x56
	adds r3, r0, #0
	muls r3, r4, r3
_0803E83C:
	asrs r0, r3, #8
	strh r0, [r1]
	adds r1, #2
	strh r5, [r1]
	adds r1, #2
	adds r3, r3, r4
	adds r2, #1
	cmp r2, #0x9f
	ble _0803E83C
_0803E84E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803E854: .4byte gCamera
_0803E858: .4byte gUnknown_03005990
_0803E85C: .4byte gUnknown_030020D0
_0803E860: .4byte gFlags
_0803E864: .4byte gUnknown_03002118
_0803E868: .4byte 0x0400001C
_0803E86C: .4byte gUnknown_03002320
_0803E870: .4byte gUnknown_03001144
_0803E874: .4byte gUnknown_03005120

	thumb_func_start sub_803E878
sub_803E878: @ 0x0803E878
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov ip, r0
	mov r8, r1
	ldr r1, _0803EA08 @ =gCamera
	ldr r2, _0803EA0C @ =gUnknown_030020D0
	asrs r7, r0, #2
	movs r0, #0xff
	ands r7, r0
	strh r7, [r1, #0x28]
	strh r7, [r2, #0xc]
	mov r4, r8
	asrs r3, r4, #2
	ands r3, r0
	strh r3, [r1, #0x2a]
	strh r3, [r2, #0xe]
	ldr r1, _0803EA10 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r1, _0803EA14 @ =gUnknown_03002118
	ldr r0, _0803EA18 @ =0x0400001C
	str r0, [r1]
	ldr r0, _0803EA1C @ =gUnknown_03002320
	strb r2, [r0]
	ldr r0, _0803EA20 @ =gUnknown_03001144
	ldr r5, [r0]
	movs r6, #0x3f
	ands r6, r3
	movs r4, #0
	lsls r3, r6, #0x10
	orrs r3, r7
	rsbs r2, r6, #0
	adds r1, r2, #0
	adds r1, #0x40
	cmp r2, r1
	bge _0803E8DA
	adds r0, r1, #0
_0803E8CE:
	cmp r2, #0
	blt _0803E8D4
	stm r5!, {r3}
_0803E8D4:
	adds r2, #1
	cmp r2, r0
	blt _0803E8CE
_0803E8DA:
	adds r4, #0x40
	subs r0, r6, r4
	lsls r3, r0, #0x10
	orrs r3, r7
	rsbs r1, r6, #0
	adds r0, r4, #0
	adds r0, #0x40
	adds r0, r1, r0
	mov sb, r1
	mov r1, ip
	asrs r1, r1, #1
	mov sl, r1
	mov r1, r8
	asrs r1, r1, #1
	str r1, [sp, #8]
	mov r1, ip
	lsls r1, r1, #1
	str r1, [sp]
	mov r1, r8
	lsls r1, r1, #1
	str r1, [sp, #4]
	cmp r2, r0
	bge _0803E916
	adds r1, r0, #0
	subs r2, r1, r2
_0803E90C:
	stm r5!, {r3}
	subs r2, #1
	cmp r2, #0
	bne _0803E90C
	adds r2, r1, #0
_0803E916:
	adds r4, #0x40
	subs r0, r6, r4
	lsls r3, r0, #0x10
	orrs r3, r7
	adds r0, r4, #0
	adds r0, #0x40
	add r0, sb
	cmp r2, r0
	bge _0803E934
_0803E928:
	cmp r2, #0x9f
	bgt _0803E92E
	stm r5!, {r3}
_0803E92E:
	adds r2, #1
	cmp r2, r0
	blt _0803E928
_0803E934:
	adds r4, #0x40
	subs r0, r6, r4
	lsls r3, r0, #0x10
	orrs r3, r7
	adds r0, r4, #0
	adds r0, #0x40
	add r0, sb
	cmp r2, r0
	bge _0803E952
_0803E946:
	cmp r2, #0x9f
	bgt _0803E94C
	stm r5!, {r3}
_0803E94C:
	adds r2, #1
	cmp r2, r0
	blt _0803E946
_0803E952:
	movs r3, #0
	mov sb, sl
	movs r4, #0xff
	mov ip, r4
	ldr r0, [sp, #8]
	mov r8, r0
	ldr r0, _0803EA20 @ =gUnknown_03001144
	ldr r5, [r0]
_0803E962:
	lsls r0, r3, #5
	mov r1, sb
	adds r7, r1, r0
	mov r4, ip
	ands r7, r4
	lsls r0, r3, #6
	add r0, r8
	ands r0, r4
	rsbs r1, r0, #0
	ands r1, r4
	adds r2, r1, #0
	subs r2, #0x10
	adds r6, r3, #1
	cmp r2, r1
	bge _0803E9A0
	movs r0, #0x50
	subs r0, r0, r1
	lsls r4, r0, #0x10
	lsls r0, r2, #2
	adds r0, r0, r5
_0803E98A:
	cmp r2, #0
	blt _0803E998
	cmp r2, #0x9f
	bgt _0803E998
	adds r3, r4, #0
	orrs r3, r7
	str r3, [r0]
_0803E998:
	adds r0, #4
	adds r2, #1
	cmp r2, r1
	blt _0803E98A
_0803E9A0:
	adds r3, r6, #0
	cmp r6, #2
	ble _0803E962
	ldr r0, [sp]
	movs r1, #3
	bl __divsi3
	lsls r5, r6, #5
	adds r7, r0, r5
	movs r4, #0xff
	ands r7, r4
	ldr r0, [sp, #4]
	movs r1, #3
	bl __divsi3
	lsls r1, r6, #6
	adds r0, r0, r1
	adds r0, r0, r5
	ands r0, r4
	rsbs r1, r0, #0
	ands r1, r4
	ldr r0, _0803EA20 @ =gUnknown_03001144
	ldr r5, [r0]
	adds r2, r1, #0
	subs r2, #0x18
	cmp r2, r1
	bge _0803E9F6
	movs r0, #0x68
	subs r0, r0, r1
	lsls r4, r0, #0x10
	lsls r0, r2, #2
	adds r0, r0, r5
_0803E9E0:
	cmp r2, #0
	blt _0803E9EE
	cmp r2, #0x9f
	bgt _0803E9EE
	adds r3, r4, #0
	orrs r3, r7
	str r3, [r0]
_0803E9EE:
	adds r0, #4
	adds r2, #1
	cmp r2, r1
	blt _0803E9E0
_0803E9F6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EA08: .4byte gCamera
_0803EA0C: .4byte gUnknown_030020D0
_0803EA10: .4byte gFlags
_0803EA14: .4byte gUnknown_03002118
_0803EA18: .4byte 0x0400001C
_0803EA1C: .4byte gUnknown_03002320
_0803EA20: .4byte gUnknown_03001144

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

	thumb_func_start sub_803EAC0
sub_803EAC0: @ 0x0803EAC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	adds r4, r1, #0
	ldr r5, _0803ED34 @ =gCamera
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	subs r7, r7, r0
	movs r2, #0x12
	ldrsh r0, [r5, r2]
	subs r4, r4, r0
	ldr r0, _0803ED38 @ =gUnknown_03005A0C
	ldr r0, [r0]
	mov r8, r0
	lsls r0, r7, #4
	mov r3, r8
	ldrh r1, [r3, #0x1c]
	subs r1, #0xf0
	bl Div
	ldr r6, _0803ED3C @ =gUnknown_030020D0
	mov sb, r0
	mov r0, sb
	strh r0, [r5, #0x28]
	strh r0, [r6, #0xc]
	lsls r0, r4, #6
	lsls r4, r4, #5
	adds r0, r0, r4
	mov r2, r8
	ldrh r1, [r2, #0x1e]
	subs r1, #0xa0
	bl Div
	mov r8, r0
	mov r3, r8
	strh r3, [r5, #0x2a]
	strh r3, [r6, #0xe]
	mov r5, r8
	lsls r3, r5, #0x10
	adds r4, r3, #0
	mov r0, sb
	orrs r4, r0
	ldr r1, _0803ED40 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r1, _0803ED44 @ =gUnknown_03002118
	ldr r0, _0803ED48 @ =0x0400001C
	str r0, [r1]
	ldr r0, _0803ED4C @ =gUnknown_03002320
	strb r2, [r0]
	ldr r0, _0803ED50 @ =gUnknown_03001144
	ldr r6, [r0]
	str r4, [sp, #8]
	ldr r0, _0803ED54 @ =0x040000D4
	add r1, sp, #8
	str r1, [r0]
	str r6, [r0, #4]
	ldr r1, _0803ED58 @ =0x850000A0
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	asrs r0, r7, #6
	mov r2, sb
	adds r4, r2, r0
	movs r0, #0xff
	ands r4, r0
	orrs r4, r3
	movs r0, #0x86
	subs r3, r0, r5
	lsls r0, r3, #2
	adds r6, r6, r0
	movs r5, #0
	cmp r3, #0
	blt _0803EB64
	cmp r3, #0x9f
	bgt _0803EB74
_0803EB62:
	stm r6!, {r4}
_0803EB64:
	adds r5, #1
	cmp r5, #5
	bgt _0803EB74
	adds r0, r3, r5
	cmp r0, #0
	blt _0803EB64
	cmp r0, #0x9f
	ble _0803EB62
_0803EB74:
	ldr r2, _0803ED50 @ =gUnknown_03001144
	ldr r6, [r2]
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r0, r7, #5
	mov r5, sb
	adds r4, r5, r0
	movs r0, #0xff
	ands r4, r0
	orrs r4, r1
	movs r0, #0x86
	subs r3, r0, r3
	lsls r0, r3, #2
	adds r6, r6, r0
	movs r5, #0
	mov ip, r2
	asrs r2, r7, #4
	asrs r0, r7, #3
	mov sl, r0
	asrs r0, r7, #2
	str r0, [sp, #0xc]
	asrs r7, r7, #1
	cmp r3, #0
	blt _0803EBAA
	cmp r3, #0x9f
	bgt _0803EBBA
_0803EBA8:
	stm r6!, {r4}
_0803EBAA:
	adds r5, #1
	cmp r5, #5
	bgt _0803EBBA
	adds r0, r3, r5
	cmp r0, #0
	blt _0803EBAA
	cmp r0, #0x9f
	ble _0803EBA8
_0803EBBA:
	mov r3, ip
	ldr r6, [r3]
	mov r5, sb
	adds r4, r5, r2
	movs r0, #0xff
	ands r4, r0
	orrs r4, r1
	movs r0, #0x8c
	mov r2, r8
	subs r3, r0, r2
	lsls r0, r3, #2
	adds r6, r6, r0
	movs r5, #0
	cmp r3, #0
	blt _0803EBDE
	cmp r3, #0x9f
	bgt _0803EBEE
_0803EBDC:
	stm r6!, {r4}
_0803EBDE:
	adds r5, #1
	cmp r5, #0xb
	bgt _0803EBEE
	adds r0, r3, r5
	cmp r0, #0
	blt _0803EBDE
	cmp r0, #0x9f
	ble _0803EBDC
_0803EBEE:
	mov r3, ip
	ldr r6, [r3]
	mov r4, sb
	add r4, sl
	movs r0, #0xff
	ands r4, r0
	orrs r4, r1
	movs r0, #0x98
	mov r5, r8
	subs r3, r0, r5
	lsls r0, r3, #2
	adds r6, r6, r0
	movs r5, #0
	cmp r3, #0
	blt _0803EC12
	cmp r3, #0x9f
	bgt _0803EC22
_0803EC10:
	stm r6!, {r4}
_0803EC12:
	adds r5, #1
	cmp r5, #0xf
	bgt _0803EC22
	adds r0, r3, r5
	cmp r0, #0
	blt _0803EC12
	cmp r0, #0x9f
	ble _0803EC10
_0803EC22:
	mov r0, ip
	ldr r6, [r0]
	ldr r4, [sp, #0xc]
	add r4, sb
	movs r0, #0xff
	ands r4, r0
	orrs r4, r1
	movs r0, #0xa8
	mov r2, r8
	subs r3, r0, r2
	lsls r0, r3, #2
	adds r6, r6, r0
	movs r5, #0
	cmp r3, #0
	blt _0803EC46
	cmp r3, #0x9f
	bgt _0803EC56
_0803EC44:
	stm r6!, {r4}
_0803EC46:
	adds r5, #1
	cmp r5, #0x17
	bgt _0803EC56
	adds r0, r3, r5
	cmp r0, #0
	blt _0803EC46
	cmp r0, #0x9f
	ble _0803EC44
_0803EC56:
	mov r3, ip
	ldr r6, [r3]
	mov r5, sb
	adds r4, r5, r7
	movs r0, #0xff
	ands r4, r0
	orrs r4, r1
	movs r0, #0xc0
	mov r1, r8
	subs r3, r0, r1
	lsls r0, r3, #2
	adds r6, r6, r0
	movs r5, #0
	cmp r3, #0
	blt _0803EC7A
	cmp r3, #0x9f
	bgt _0803EC8A
_0803EC78:
	stm r6!, {r4}
_0803EC7A:
	adds r5, #1
	cmp r5, #0x3f
	bgt _0803EC8A
	adds r0, r3, r5
	cmp r0, #0
	blt _0803EC7A
	cmp r0, #0x9f
	ble _0803EC78
_0803EC8A:
	ldr r2, _0803ED5C @ =gUnknown_03005120
	ldr r0, [r2]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803ED22
	ldr r5, _0803ED60 @ =gUnknown_03004C58
	ldr r0, [r5]
	ldr r3, _0803ED64 @ =0x00196225
	muls r0, r3, r0
	ldr r2, _0803ED68 @ =0x3C6EF35F
	adds r1, r0, r2
	str r1, [r5]
	movs r0, #0xe0
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0803ED22
	muls r1, r3, r1
	adds r1, r1, r2
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	lsls r0, r0, #8
	adds r2, r1, #0
	muls r2, r3, r2
	ldr r1, _0803ED68 @ =0x3C6EF35F
	adds r2, r2, r1
	movs r1, #0xfe
	lsls r1, r1, #7
	ands r1, r2
	lsrs r1, r1, #8
	subs r1, #0x20
	adds r4, r2, #0
	muls r4, r3, r4
	ldr r2, _0803ED68 @ =0x3C6EF35F
	adds r4, r4, r2
	str r4, [r5]
	movs r2, #0x80
	lsls r2, r2, #1
	ands r4, r2
	lsrs r4, r4, #6
	ldr r2, _0803ED6C @ =gUnknown_084ADD38
	adds r4, r4, r2
	ldr r3, _0803ED70 @ =0xFFF80000
	adds r0, r0, r3
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _0803ED74 @ =sub_803EA24
	str r2, [sp]
	ldr r2, _0803ED78 @ =sub_8040488
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl sub_80403DC
	ldrh r5, [r0, #6]
	ldr r0, _0803ED7C @ =0x03000018
	adds r6, r5, r0
	ldrb r0, [r4, #3]
	bl VramMalloc
	str r0, [r6, #4]
	ldrh r0, [r4]
	strh r0, [r6, #0xa]
	ldrb r0, [r4, #2]
	ldr r1, _0803ED80 @ =0x03000038
	adds r5, r5, r1
	strb r0, [r5]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r6, #0x10]
_0803ED22:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803ED34: .4byte gCamera
_0803ED38: .4byte gUnknown_03005A0C
_0803ED3C: .4byte gUnknown_030020D0
_0803ED40: .4byte gFlags
_0803ED44: .4byte gUnknown_03002118
_0803ED48: .4byte 0x0400001C
_0803ED4C: .4byte gUnknown_03002320
_0803ED50: .4byte gUnknown_03001144
_0803ED54: .4byte 0x040000D4
_0803ED58: .4byte 0x850000A0
_0803ED5C: .4byte gUnknown_03005120
_0803ED60: .4byte gUnknown_03004C58
_0803ED64: .4byte 0x00196225
_0803ED68: .4byte 0x3C6EF35F
_0803ED6C: .4byte gUnknown_084ADD38
_0803ED70: .4byte 0xFFF80000
_0803ED74: .4byte sub_803EA24
_0803ED78: .4byte sub_8040488
_0803ED7C: .4byte 0x03000018
_0803ED80: .4byte 0x03000038

	thumb_func_start sub_803ED84
sub_803ED84: @ 0x0803ED84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0803EE24 @ =gCamera
	mov sb, r0
	ldr r1, _0803EE28 @ =gUnknown_030011A8
	ldr r0, _0803EE2C @ =0x00003F41
	strh r0, [r1]
	ldr r0, _0803EE30 @ =0x00001010
	strh r0, [r1, #2]
	mov r1, sb
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	subs r4, r4, r0
	movs r2, #0x12
	ldrsh r0, [r1, r2]
	subs r5, r5, r0
	ldr r0, _0803EE34 @ =gUnknown_030058D0
	mov r8, r0
	ldr r6, _0803EE38 @ =gUnknown_030020D0
	asrs r0, r4, #2
	adds r0, r4, r0
	ldr r1, _0803EE3C @ =gUnknown_03005120
	ldr r2, [r1]
	lsrs r1, r2, #2
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	strh r0, [r6]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r7, r0, #0
	adds r0, r5, r7
	subs r0, r0, r2
	ands r0, r1
	strh r0, [r6, #2]
	mov r0, r8
	bl DrawBackground
	mov r0, r8
	bl UpdateBgAnimationTiles
	ldr r0, _0803EE40 @ =gUnknown_03005A0C
	ldr r0, [r0]
	mov r8, r0
	lsls r4, r4, #4
	ldrh r1, [r0, #0x1c]
	subs r1, #0xf0
	adds r0, r4, #0
	bl Div
	mov r1, sb
	strh r0, [r1, #0x28]
	strh r0, [r6, #0xc]
	lsls r0, r5, #8
	lsls r1, r5, #6
	adds r0, r0, r1
	lsls r5, r5, #5
	adds r0, r0, r5
	mov r2, r8
	ldrh r1, [r2, #0x1e]
	subs r1, #0xa0
	bl Div
	mov r1, sb
	strh r0, [r1, #0x2a]
	strh r0, [r6, #0xe]
	ldr r0, _0803EE44 @ =gUnknown_03006080
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EE50
	ldr r2, _0803EE48 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0803EE4C @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	b _0803EE58
	.align 2, 0
_0803EE24: .4byte gCamera
_0803EE28: .4byte gUnknown_030011A8
_0803EE2C: .4byte 0x00003F41
_0803EE30: .4byte 0x00001010
_0803EE34: .4byte gUnknown_030058D0
_0803EE38: .4byte gUnknown_030020D0
_0803EE3C: .4byte gUnknown_03005120
_0803EE40: .4byte gUnknown_03005A0C
_0803EE44: .4byte gUnknown_03006080
_0803EE48: .4byte gDispCnt
_0803EE4C: .4byte 0x0000FEFF
_0803EE50:
	ldr r1, _0803EE78 @ =gDispCnt
	ldrh r0, [r1]
	orrs r0, r7
	strh r0, [r1]
_0803EE58:
	ldr r0, _0803EE7C @ =gUnknown_03006080
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EE6C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0803EE80 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
_0803EE6C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EE78: .4byte gDispCnt
_0803EE7C: .4byte gUnknown_03006080
_0803EE80: .4byte 0x0000FEFF

	thumb_func_start sub_803EE84
sub_803EE84: @ 0x0803EE84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r3, r0, #0
	ldr r0, _0803EEF4 @ =gCamera
	mov r8, r0
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	subs r3, r3, r0
	mov r2, r8
	ldrh r4, [r2, #0x26]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _0803EEB0
	b _0803F3F0
_0803EEB0:
	ldr r0, _0803EEF8 @ =gUnknown_03005148
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EF0C
	ldr r2, _0803EEFC @ =gUnknown_03001B70
	ldrh r1, [r2, #6]
	ldr r0, _0803EF00 @ =0x00003FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	orrs r0, r1
	ldr r1, _0803EF04 @ =0x0000E0FF
	ands r0, r1
	movs r5, #0xe0
	lsls r5, r5, #5
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r0, r3, #4
	movs r1, #0xcc
	lsls r1, r1, #2
	bl Div
	ldr r1, _0803EF08 @ =gUnknown_030020D0
	mov r6, r8
	strh r0, [r6, #0x28]
	strh r0, [r1, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x2a]
	strh r0, [r1, #0xe]
	b _0803F3F0
	.align 2, 0
_0803EEF4: .4byte gCamera
_0803EEF8: .4byte gUnknown_03005148
_0803EEFC: .4byte gUnknown_03001B70
_0803EF00: .4byte 0x00003FFF
_0803EF04: .4byte 0x0000E0FF
_0803EF08: .4byte gUnknown_030020D0
_0803EF0C:
	cmp r0, #2
	bhi _0803EFFC
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r5, #0
	ands r0, r4
	cmp r0, #0
	bne _0803EF80
	ldr r2, _0803EF68 @ =gUnknown_03001B70
	ldrh r1, [r2, #6]
	ldr r0, _0803EF6C @ =0x00003FFF
	ands r0, r1
	orrs r0, r5
	ldr r1, _0803EF70 @ =0x0000E0FF
	ands r0, r1
	movs r4, #0xe0
	lsls r4, r4, #5
	adds r1, r4, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r0, r3, #4
	movs r1, #0xcc
	lsls r1, r1, #2
	bl Div
	ldr r2, _0803EF74 @ =gUnknown_030020D0
	mov r6, r8
	strh r0, [r6, #0x28]
	strh r0, [r2, #0xc]
	ldr r0, _0803EF78 @ =gUnknown_03005120
	ldr r0, [r0]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	ldr r1, _0803EF7C @ =0x000001FF
	ands r0, r1
	movs r3, #0xe
	ldrsh r1, [r2, r3]
	cmp r0, r1
	beq _0803EF5E
	b _0803F3F0
_0803EF5E:
	ldrh r1, [r6, #0x26]
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r6, #0x26]
	b _0803F3F0
	.align 2, 0
_0803EF68: .4byte gUnknown_03001B70
_0803EF6C: .4byte 0x00003FFF
_0803EF70: .4byte 0x0000E0FF
_0803EF74: .4byte gUnknown_030020D0
_0803EF78: .4byte gUnknown_03005120
_0803EF7C: .4byte 0x000001FF
_0803EF80:
	ldr r3, _0803EFD4 @ =gUnknown_03005120
	ldr r0, [r3]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	ldr r4, _0803EFD8 @ =0x000001FF
	ands r0, r4
	ldr r5, _0803EFDC @ =gUnknown_03001B70
	mov ip, r5
	cmp r0, #0
	bne _0803EF9C
	ldrh r1, [r5, #6]
	ldr r0, _0803EFE0 @ =0x00003FFF
	ands r0, r1
	strh r0, [r5, #6]
_0803EF9C:
	mov r6, ip
	ldrh r1, [r6, #6]
	ldr r0, _0803EFE4 @ =0x0000E0FF
	ands r0, r1
	movs r2, #0xe0
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
	ldr r2, _0803EFE8 @ =gUnknown_030020D0
	mov r5, r8
	strh r7, [r5, #0x28]
	strh r7, [r2, #0xc]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0803EFEC
	ldr r0, [r3]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	movs r1, #0xff
	ands r0, r1
	strh r0, [r5, #0x2a]
	strh r0, [r2, #0xe]
	b _0803F3F0
	.align 2, 0
_0803EFD4: .4byte gUnknown_03005120
_0803EFD8: .4byte 0x000001FF
_0803EFDC: .4byte gUnknown_03001B70
_0803EFE0: .4byte 0x00003FFF
_0803EFE4: .4byte 0x0000E0FF
_0803EFE8: .4byte gUnknown_030020D0
_0803EFEC:
	ldr r0, [r3]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	ands r0, r4
	mov r6, r8
	strh r0, [r6, #0x2a]
	strh r0, [r2, #0xe]
	b _0803F3F0
_0803EFFC:
	cmp r0, #3
	beq _0803F002
	b _0803F3F0
_0803F002:
	ldr r0, _0803F078 @ =gUnknown_03001B70
	mov sb, r0
	ldrh r5, [r0, #6]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r5
	movs r0, #0xe0
	lsls r0, r0, #5
	mov ip, sb
	cmp r1, r0
	bne _0803F090
	ldr r3, _0803F07C @ =gUnknown_030020D0
	mov r1, r8
	strh r7, [r1, #0x28]
	strh r7, [r3, #0xc]
	ldr r0, _0803F080 @ =gUnknown_03005120
	ldr r1, [r0]
	lsls r1, r1, #1
	rsbs r1, r1, #0
	movs r2, #0xff
	adds r0, r1, #0
	ands r0, r2
	mov r2, r8
	strh r0, [r2, #0x2a]
	strh r0, [r3, #0xe]
	ldr r2, _0803F084 @ =0x000001FF
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	beq _0803F042
	b _0803F3F0
_0803F042:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	bne _0803F04E
	b _0803F3F0
_0803F04E:
	mov r4, r8
	strh r2, [r4, #0x2a]
	strh r2, [r3, #0xe]
	ldr r0, _0803F088 @ =0x00003FFF
	ands r0, r5
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	orrs r0, r1
	movs r1, #0
	orrs r0, r1
	ldr r1, _0803F08C @ =0x0000E0FF
	ands r0, r1
	movs r6, #0xd8
	lsls r6, r6, #5
	adds r1, r6, #0
	orrs r0, r1
	mov r1, sb
	strh r0, [r1, #6]
	b _0803F3F0
	.align 2, 0
_0803F078: .4byte gUnknown_03001B70
_0803F07C: .4byte gUnknown_030020D0
_0803F080: .4byte gUnknown_03005120
_0803F084: .4byte 0x000001FF
_0803F088: .4byte 0x00003FFF
_0803F08C: .4byte 0x0000E0FF
_0803F090:
	movs r0, #0xd8
	lsls r0, r0, #5
	cmp r1, r0
	bne _0803F104
	ldr r4, _0803F0F0 @ =gUnknown_030020D0
	mov r2, r8
	strh r7, [r2, #0x28]
	strh r7, [r4, #0xc]
	ldr r0, _0803F0F4 @ =gUnknown_03005120
	ldr r0, [r0]
	lsls r3, r0, #1
	rsbs r1, r3, #0
	ldr r6, _0803F0F8 @ =0x000001FF
	adds r2, r6, #0
	adds r0, r1, #0
	ands r0, r2
	mov r2, r8
	strh r0, [r2, #0x2a]
	strh r0, [r4, #0xe]
	adds r2, r6, #0
	ands r1, r2
	cmp r1, #0
	beq _0803F0C0
	b _0803F3F0
_0803F0C0:
	subs r6, #0xff
	adds r0, r3, r6
	rsbs r0, r0, #0
	ands r0, r2
	mov r1, r8
	strh r0, [r1, #0x2a]
	strh r0, [r4, #0xe]
	ldr r0, _0803F0FC @ =0x00003FFF
	ands r0, r5
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	orrs r0, r1
	movs r1, #0
	orrs r0, r1
	ldr r1, _0803F100 @ =0x0000E0FF
	ands r0, r1
	movs r3, #0xd0
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	mov r4, sb
	strh r0, [r4, #6]
	b _0803F3F0
	.align 2, 0
_0803F0F0: .4byte gUnknown_030020D0
_0803F0F4: .4byte gUnknown_03005120
_0803F0F8: .4byte 0x000001FF
_0803F0FC: .4byte 0x00003FFF
_0803F100: .4byte 0x0000E0FF
_0803F104:
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r5
	movs r6, #0x80
	lsls r6, r6, #8
	cmp r0, r6
	beq _0803F114
	b _0803F2A2
_0803F114:
	ldr r2, _0803F1A4 @ =gUnknown_030020D0
	mov r0, r8
	strh r7, [r0, #0x28]
	strh r7, [r2, #0xc]
	ldr r3, _0803F1A8 @ =gUnknown_03005120
	ldr r4, [r3]
	lsls r0, r4, #1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	rsbs r0, r0, #0
	ldr r6, _0803F1AC @ =0x000001FF
	adds r1, r6, #0
	ands r0, r1
	mov r1, r8
	strh r0, [r1, #0x2a]
	strh r0, [r2, #0xe]
	mov sl, r2
	cmp r0, #0x9f
	bgt _0803F1EA
	ldr r1, _0803F1B0 @ =gDispCnt
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r2, _0803F1B4 @ =0x00003FFF
	adds r0, r2, #0
	ands r0, r5
	ldr r1, _0803F1B8 @ =0x0000E0FF
	ands r0, r1
	movs r3, #0xd0
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	mov r5, sb
	strh r0, [r5]
	mov r6, r8
	strh r7, [r6, #0x28]
	mov r0, sl
	strh r7, [r0]
	lsrs r0, r4, #3
	movs r1, #0xff
	ands r0, r1
	strh r0, [r6, #0x2a]
	mov r1, sl
	strh r0, [r1, #2]
	ldr r1, _0803F1BC @ =gUnknown_030011A8
	movs r0, #0x81
	strh r0, [r1]
	strh r7, [r1, #4]
	ldr r0, _0803F1C0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803F1D4
	ldr r3, _0803F1C4 @ =gUnknown_03001F80
	ldr r2, _0803F1C8 @ =gUnknown_0300114C
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0803F1CC @ =sub_803FA1C
	str r1, [r0]
	ldr r2, _0803F1D0 @ =gFlags
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	b _0803F1EA
	.align 2, 0
_0803F1A4: .4byte gUnknown_030020D0
_0803F1A8: .4byte gUnknown_03005120
_0803F1AC: .4byte 0x000001FF
_0803F1B0: .4byte gDispCnt
_0803F1B4: .4byte 0x00003FFF
_0803F1B8: .4byte 0x0000E0FF
_0803F1BC: .4byte gUnknown_030011A8
_0803F1C0: .4byte gGameMode
_0803F1C4: .4byte gUnknown_03001F80
_0803F1C8: .4byte gUnknown_0300114C
_0803F1CC: .4byte sub_803FA1C
_0803F1D0: .4byte gFlags
_0803F1D4:
	mov r3, sb
	ldrh r0, [r3]
	adds r1, r2, #0
	ands r1, r0
	movs r4, #0x80
	lsls r4, r4, #8
	orrs r1, r4
	strh r1, [r3]
	movs r0, #0xa0
	mov r5, sl
	strh r0, [r5, #2]
_0803F1EA:
	mov r6, sl
	movs r0, #0xe
	ldrsh r4, [r6, r0]
	cmp r4, #0
	beq _0803F1F6
	b _0803F3F0
_0803F1F6:
	ldr r1, _0803F264 @ =gUnknown_03005120
	ldr r2, [r1]
	lsls r0, r2, #1
	rsbs r0, r0, #0
	movs r3, #0xff
	ands r0, r3
	mov r5, r8
	strh r0, [r5, #0x2a]
	strh r0, [r6, #0xe]
	mov r6, ip
	ldrh r1, [r6, #6]
	ldr r6, _0803F268 @ =0x00003FFF
	adds r0, r6, #0
	ands r0, r1
	ldr r1, _0803F26C @ =0x0000E0FF
	ands r0, r1
	movs r5, #0xd0
	lsls r5, r5, #5
	adds r1, r5, #0
	movs r5, #0
	orrs r0, r1
	mov r1, ip
	strh r0, [r1, #6]
	mov r0, r8
	strh r4, [r0, #0x28]
	mov r1, sl
	strh r4, [r1]
	lsrs r2, r2, #1
	ands r2, r3
	strh r2, [r0, #0x2a]
	strh r2, [r1, #2]
	ldr r1, _0803F270 @ =gUnknown_030011A8
	movs r0, #0x81
	strh r0, [r1]
	strh r4, [r1, #4]
	ldr r0, _0803F274 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803F288
	ldr r3, _0803F278 @ =gUnknown_03001F80
	ldr r2, _0803F27C @ =gUnknown_0300114C
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0803F280 @ =sub_803FA1C
	str r1, [r0]
	ldr r2, _0803F284 @ =gFlags
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	b _0803F3F0
	.align 2, 0
_0803F264: .4byte gUnknown_03005120
_0803F268: .4byte 0x00003FFF
_0803F26C: .4byte 0x0000E0FF
_0803F270: .4byte gUnknown_030011A8
_0803F274: .4byte gGameMode
_0803F278: .4byte gUnknown_03001F80
_0803F27C: .4byte gUnknown_0300114C
_0803F280: .4byte sub_803FA1C
_0803F284: .4byte gFlags
_0803F288:
	mov r2, ip
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xa0
	mov r4, sl
	strh r0, [r4, #2]
	b _0803F3F0
_0803F2A2:
	ldr r6, _0803F31C @ =0x00003FFF
	mov ip, r6
	mov r0, ip
	ands r0, r5
	ldr r5, _0803F320 @ =0x0000E0FF
	ands r0, r5
	movs r1, #0xd0
	lsls r1, r1, #5
	adds r4, r1, #0
	orrs r0, r4
	mov r2, sb
	strh r0, [r2, #6]
	ldr r2, _0803F324 @ =gUnknown_030020D0
	strh r7, [r2, #0xc]
	ldr r0, _0803F328 @ =gUnknown_03005120
	ldr r1, [r0]
	lsrs r0, r1, #6
	movs r3, #0xff
	ands r0, r3
	strh r0, [r2, #0xe]
	mov r6, sb
	ldrh r0, [r6]
	mov r6, ip
	ands r6, r0
	ands r6, r5
	orrs r6, r4
	mov r0, sb
	strh r6, [r0]
	movs r0, #0x74
	mov r4, r8
	strh r0, [r4, #0x28]
	strh r0, [r2]
	lsrs r1, r1, #3
	ands r1, r3
	strh r1, [r4, #0x2a]
	strh r1, [r2, #2]
	ldr r1, _0803F32C @ =gUnknown_030011A8
	movs r0, #0x81
	strh r0, [r1]
	strh r7, [r1, #4]
	ldr r0, _0803F330 @ =gGameMode
	ldrb r0, [r0]
	mov sl, r2
	cmp r0, #1
	bhi _0803F344
	ldr r3, _0803F334 @ =gUnknown_03001F80
	ldr r2, _0803F338 @ =gUnknown_0300114C
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0803F33C @ =sub_803FA1C
	str r1, [r0]
	ldr r2, _0803F340 @ =gFlags
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	b _0803F358
	.align 2, 0
_0803F31C: .4byte 0x00003FFF
_0803F320: .4byte 0x0000E0FF
_0803F324: .4byte gUnknown_030020D0
_0803F328: .4byte gUnknown_03005120
_0803F32C: .4byte gUnknown_030011A8
_0803F330: .4byte gGameMode
_0803F334: .4byte gUnknown_03001F80
_0803F338: .4byte gUnknown_0300114C
_0803F33C: .4byte sub_803FA1C
_0803F340: .4byte gFlags
_0803F344:
	mov r5, ip
	ands r6, r5
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r6, r0
	mov r1, sb
	strh r6, [r1]
	movs r0, #0xa0
	mov r2, sl
	strh r0, [r2, #2]
_0803F358:
	mov r3, r8
	ldrh r1, [r3, #0x26]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0803F3F0
	mov r4, sl
	ldrh r3, [r4]
	ldrh r0, [r4, #2]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x64
	bl sub_800681C
	movs r0, #0xa0
	str r0, [sp]
	movs r0, #0
	movs r1, #0x64
	movs r2, #0x68
	movs r3, #0
	bl sub_800681C
	ldr r6, _0803F3B4 @ =gUnknown_03005120
	ldr r0, [r6]
	lsrs r2, r0, #5
	movs r1, #0x7f
	ands r1, r2
	movs r0, #0x80
	subs r0, r0, r1
	cmp r0, #0x38
	bls _0803F3B8
	movs r0, #0x7f
	ands r2, r0
	adds r0, r2, #0
	adds r0, #0xa0
	str r0, [sp]
	movs r0, #0
	movs r1, #0x68
	movs r2, #0xa0
	movs r3, #0
	bl sub_800681C
	b _0803F3F0
	.align 2, 0
_0803F3B4: .4byte gUnknown_03005120
_0803F3B8:
	movs r5, #0x7f
	adds r0, r2, #0
	ands r0, r5
	movs r4, #0xe8
	subs r2, r4, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, #0xa0
	str r0, [sp]
	movs r0, #0
	movs r1, #0x68
	movs r3, #0
	bl sub_800681C
	ldr r0, [r6]
	lsrs r0, r0, #5
	ands r0, r5
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, #0x20
	str r0, [sp]
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0xa0
	movs r3, #0
	bl sub_800681C
_0803F3F0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803F400
sub_803F400: @ 0x0803F400
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r5, _0803F4FC @ =gCamera
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	subs r4, r4, r0
	ldr r0, _0803F500 @ =gUnknown_03005A0C
	ldr r0, [r0]
	mov r8, r0
	lsls r0, r2, #8
	lsls r2, r2, #4
	adds r0, r0, r2
	mov r2, r8
	ldrh r1, [r2, #0x1c]
	subs r1, #0xf0
	bl Div
	ldr r6, _0803F504 @ =gUnknown_030020D0
	mov sb, r0
	mov r0, sb
	strh r0, [r5, #0x28]
	strh r0, [r6, #0xc]
	lsls r0, r4, #6
	lsls r4, r4, #3
	adds r0, r0, r4
	mov r2, r8
	ldrh r1, [r2, #0x1e]
	subs r1, #0xa0
	bl Div
	adds r7, r0, #0
	strh r7, [r5, #0x2a]
	strh r7, [r6, #0xe]
	lsls r3, r7, #0x10
	adds r4, r3, #0
	mov r0, sb
	orrs r4, r0
	ldr r1, _0803F508 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r1, _0803F50C @ =gUnknown_03002118
	ldr r0, _0803F510 @ =0x0400001C
	str r0, [r1]
	ldr r0, _0803F514 @ =gUnknown_03002320
	strb r2, [r0]
	ldr r0, _0803F518 @ =gUnknown_03001144
	ldr r5, [r0]
	str r4, [sp]
	ldr r0, _0803F51C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _0803F520 @ =0x850000A0
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _0803F524 @ =gUnknown_03005120
	ldr r0, [r0]
	lsrs r0, r0, #1
	mov r2, sb
	subs r4, r2, r0
	ldr r0, _0803F528 @ =0x000001FF
	ands r4, r0
	orrs r4, r3
	movs r0, #0x78
	subs r2, r0, r7
	lsls r0, r2, #2
	adds r5, r5, r0
	movs r1, #0
	cmp r2, #0
	blt _0803F4A6
	cmp r2, #0x9f
	bgt _0803F4B6
_0803F4A4:
	stm r5!, {r4}
_0803F4A6:
	adds r1, #1
	cmp r1, #0xf
	bgt _0803F4B6
	adds r0, r2, r1
	cmp r0, #0
	blt _0803F4A6
	cmp r0, #0x9f
	ble _0803F4A4
_0803F4B6:
	ldr r0, _0803F518 @ =gUnknown_03001144
	ldr r5, [r0]
	lsls r4, r7, #0x10
	ldr r0, _0803F524 @ =gUnknown_03005120
	ldr r0, [r0]
	lsrs r0, r0, #1
	add r0, sb
	ldr r1, _0803F528 @ =0x000001FF
	ands r0, r1
	orrs r4, r0
	movs r0, #0xb0
	subs r2, r0, r7
	lsls r0, r2, #2
	adds r5, r5, r0
	movs r1, #0
	cmp r2, #0
	blt _0803F4DE
	cmp r2, #0x9f
	bgt _0803F4EE
_0803F4DC:
	stm r5!, {r4}
_0803F4DE:
	adds r1, #1
	cmp r1, #0xf
	bgt _0803F4EE
	adds r0, r2, r1
	cmp r0, #0
	blt _0803F4DE
	cmp r0, #0x9f
	ble _0803F4DC
_0803F4EE:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F4FC: .4byte gCamera
_0803F500: .4byte gUnknown_03005A0C
_0803F504: .4byte gUnknown_030020D0
_0803F508: .4byte gFlags
_0803F50C: .4byte gUnknown_03002118
_0803F510: .4byte 0x0400001C
_0803F514: .4byte gUnknown_03002320
_0803F518: .4byte gUnknown_03001144
_0803F51C: .4byte 0x040000D4
_0803F520: .4byte 0x850000A0
_0803F524: .4byte gUnknown_03005120
_0803F528: .4byte 0x000001FF

	thumb_func_start sub_803F52C
sub_803F52C: @ 0x0803F52C
	push {r4, r5, lr}
	sub sp, #4
	ldr r3, _0803F600 @ =gCamera
	ldr r0, _0803F604 @ =gUnknown_03005990
	ldr r2, _0803F608 @ =gUnknown_030020D0
	movs r1, #0
	strh r1, [r3, #0x28]
	strh r1, [r2, #4]
	strh r1, [r3, #0x2a]
	strh r1, [r2, #6]
	strh r1, [r0, #0x30]
	strh r1, [r0, #0x32]
	bl DrawBackground
	ldr r0, _0803F60C @ =gUnknown_03001144
	ldr r5, [r0]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r5, r5, r0
	ldr r4, _0803F610 @ =gUnknown_03005120
	ldr r2, [r4]
	lsrs r0, r2, #6
	movs r3, #0xff
	ands r0, r3
	str r0, [sp]
	ldr r1, _0803F614 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _0803F618 @ =0x8500000A
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #0x28
	lsrs r0, r2, #5
	ands r0, r3
	str r0, [sp]
	mov r0, sp
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _0803F61C @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #0x14
	lsrs r0, r2, #4
	ands r0, r3
	str r0, [sp]
	mov r0, sp
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _0803F620 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #0x20
	lsrs r2, r2, #3
	ands r2, r3
	str r2, [sp]
	mov r0, sp
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _0803F624 @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #0x40
	movs r2, #1
_0803F5AC:
	ldr r0, [r4]
	lsrs r1, r0, #3
	muls r0, r2, r0
	lsrs r0, r0, #5
	adds r1, r1, r0
	ands r1, r3
	stm r5!, {r1}
	adds r2, #1
	cmp r2, #0x1f
	ble _0803F5AC
	ldr r3, _0803F628 @ =gUnknown_03001F80
	ldr r2, _0803F62C @ =gUnknown_0300114C
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0803F630 @ =sub_803F92C
	str r1, [r0]
	ldr r5, _0803F634 @ =gFlags
	ldr r3, [r5]
	movs r0, #8
	orrs r3, r0
	ldr r4, _0803F638 @ =gUnknown_03001130
	ldr r2, _0803F63C @ =gUnknown_030045F0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, _0803F640 @ =sub_803F920
	str r1, [r0]
	movs r0, #0x10
	orrs r3, r0
	str r3, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803F600: .4byte gCamera
_0803F604: .4byte gUnknown_03005990
_0803F608: .4byte gUnknown_030020D0
_0803F60C: .4byte gUnknown_03001144
_0803F610: .4byte gUnknown_03005120
_0803F614: .4byte 0x040000D4
_0803F618: .4byte 0x8500000A
_0803F61C: .4byte 0x85000005
_0803F620: .4byte 0x85000008
_0803F624: .4byte 0x85000010
_0803F628: .4byte gUnknown_03001F80
_0803F62C: .4byte gUnknown_0300114C
_0803F630: .4byte sub_803F92C
_0803F634: .4byte gFlags
_0803F638: .4byte gUnknown_03001130
_0803F63C: .4byte gUnknown_030045F0
_0803F640: .4byte sub_803F920

	thumb_func_start sub_803F644
sub_803F644: @ 0x0803F644
	push {r4, lr}
	ldr r4, _0803F658 @ =gCamera
	ldr r0, [r4, #0x30]
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #0x30]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F658: .4byte gCamera

	thumb_func_start sub_803F65C
sub_803F65C: @ 0x0803F65C
	push {r4, lr}
	ldr r1, _0803F6AC @ =gCamera
	movs r0, #0
	str r0, [r1, #0x30]
	ldr r4, _0803F6B0 @ =gCurrentLevel
	ldr r3, _0803F6B4 @ =gFlags
	movs r2, #0
	ldr r0, _0803F6B8 @ =gUnknown_030020D0
	movs r1, #3
_0803F66E:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	subs r1, #1
	cmp r1, #0
	bge _0803F66E
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0xd
	bne _0803F69C
	ldr r2, [r3]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0803F69C
	ldr r1, _0803F6BC @ =gIntrTable
	ldr r0, _0803F6C0 @ =gIntrTableTemplate
	ldr r0, [r0, #0xc]
	str r0, [r1, #0xc]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3]
_0803F69C:
	ldr r0, [r3]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F6AC: .4byte gCamera
_0803F6B0: .4byte gCurrentLevel
_0803F6B4: .4byte gFlags
_0803F6B8: .4byte gUnknown_030020D0
_0803F6BC: .4byte gIntrTable
_0803F6C0: .4byte gIntrTableTemplate

	thumb_func_start sub_803F6C4
sub_803F6C4: @ 0x0803F6C4
	ldr r2, _0803F6EC @ =gDispCnt
	ldrh r1, [r2]
	movs r3, #0xf0
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r1, r0
	strh r1, [r2]
	ldr r0, _0803F6F0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0803F6E0
	ldr r0, _0803F6F4 @ =0x0000DFFF
	ands r1, r0
	strh r1, [r2]
_0803F6E0:
	ldr r0, _0803F6F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803F6FC @ =sub_803F700
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_0803F6EC: .4byte gDispCnt
_0803F6F0: .4byte gGameMode
_0803F6F4: .4byte 0x0000DFFF
_0803F6F8: .4byte gCurTask
_0803F6FC: .4byte sub_803F700

	thumb_func_start sub_803F700
sub_803F700: @ 0x0803F700
	push {lr}
	bl sub_803E410
	ldr r1, _0803F710 @ =gUnknown_0300504C
	movs r0, #4
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803F710: .4byte gUnknown_0300504C

	thumb_func_start sub_803F714
sub_803F714: @ 0x0803F714
	push {r4, lr}
	ldr r4, _0803F750 @ =gUnknown_030058D0
	ldr r1, _0803F754 @ =gUnknown_030011A8
	ldr r0, _0803F758 @ =0x00001010
	strh r0, [r1, #2]
	ldr r1, _0803F75C @ =gUnknown_03001B70
	ldr r0, _0803F760 @ =0x00001B0C
	strh r0, [r1]
	ldr r1, _0803F764 @ =gUnknown_084ADB60
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #0x40
	bl memcpy
	movs r0, #0x47
	strh r0, [r4, #0x1c]
	ldr r0, _0803F768 @ =0x0600C000
	str r0, [r4, #4]
	ldr r0, _0803F76C @ =0x0600D800
	str r0, [r4, #0xc]
	movs r0, #0x20
	strh r0, [r4, #0x26]
	strh r0, [r4, #0x28]
	adds r0, r4, #0
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F750: .4byte gUnknown_030058D0
_0803F754: .4byte gUnknown_030011A8
_0803F758: .4byte 0x00001010
_0803F75C: .4byte gUnknown_03001B70
_0803F760: .4byte 0x00001B0C
_0803F764: .4byte gUnknown_084ADB60
_0803F768: .4byte 0x0600C000
_0803F76C: .4byte 0x0600D800

	thumb_func_start sub_803F770
sub_803F770: @ 0x0803F770
	push {r4, lr}
	ldr r4, _0803F798 @ =gUnknown_030058D0
	ldr r1, _0803F79C @ =gUnknown_03001B70
	ldr r0, _0803F7A0 @ =0x00001C0F
	strh r0, [r1]
	ldr r1, _0803F7A4 @ =gUnknown_084ADB60
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #0x40
	bl memcpy
	movs r0, #0x48
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F798: .4byte gUnknown_030058D0
_0803F79C: .4byte gUnknown_03001B70
_0803F7A0: .4byte 0x00001C0F
_0803F7A4: .4byte gUnknown_084ADB60

	thumb_func_start sub_803F7A8
sub_803F7A8: @ 0x0803F7A8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r5, _0803F7FC @ =gCamera
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	subs r4, r4, r0
	ldr r0, _0803F800 @ =gUnknown_03005A0C
	ldr r0, [r0]
	mov r8, r0
	lsls r0, r2, #6
	lsls r2, r2, #3
	subs r0, r0, r2
	mov r2, r8
	ldrh r1, [r2, #0x1c]
	subs r1, #0xf0
	bl Div
	ldr r6, _0803F804 @ =gUnknown_030020D0
	strh r0, [r5, #0x28]
	strh r0, [r6, #0xc]
	lsls r0, r4, #4
	lsls r4, r4, #3
	adds r0, r0, r4
	mov r2, r8
	ldrh r1, [r2, #0x1e]
	subs r1, #0xa0
	bl Div
	strh r0, [r5, #0x2a]
	strh r0, [r6, #0xe]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803F7FC: .4byte gCamera
_0803F800: .4byte gUnknown_03005A0C
_0803F804: .4byte gUnknown_030020D0

	thumb_func_start sub_803F808
sub_803F808: @ 0x0803F808
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _0803F838 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0803F83C @ =0x06004000
	str r1, [r0, #4]
	ldr r1, _0803F840 @ =0x85001000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _0803F844 @ =0x0600E000
	str r1, [r0, #4]
	ldr r1, _0803F848 @ =0x85000200
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _0803F84C @ =gUnknown_03001B70
	ldr r0, _0803F850 @ =0x00005C85
	strh r0, [r1, #4]
	add sp, #4
	bx lr
	.align 2, 0
_0803F838: .4byte 0x040000D4
_0803F83C: .4byte 0x06004000
_0803F840: .4byte 0x85001000
_0803F844: .4byte 0x0600E000
_0803F848: .4byte 0x85000200
_0803F84C: .4byte gUnknown_03001B70
_0803F850: .4byte 0x00005C85

	thumb_func_start sub_803F854
sub_803F854: @ 0x0803F854
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, _0803F888 @ =gCamera
	movs r3, #0x10
	ldrsh r0, [r4, r3]
	subs r2, r2, r0
	movs r3, #0x12
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	ldr r0, _0803F88C @ =0x000005CF
	cmp r2, r0
	bgt _0803F894
	lsls r0, r2, #4
	movs r1, #0x9c
	lsls r1, r1, #3
	bl Div
	ldr r1, _0803F890 @ =gUnknown_030020D0
	strh r0, [r4, #0x28]
	strh r0, [r1, #0xc]
	movs r0, #0xb0
	lsls r0, r0, #1
	strh r0, [r4, #0x2a]
	strh r0, [r1, #0xe]
	b _0803F89A
	.align 2, 0
_0803F888: .4byte gCamera
_0803F88C: .4byte 0x000005CF
_0803F890: .4byte gUnknown_030020D0
_0803F894:
	adds r0, r2, #0
	bl sub_803E878
_0803F89A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_803F8A0
sub_803F8A0: @ 0x0803F8A0
	push {r4, lr}
	ldr r3, _0803F8BC @ =gCamera
	movs r4, #0x10
	ldrsh r2, [r3, r4]
	subs r0, r0, r2
	movs r4, #0x12
	ldrsh r2, [r3, r4]
	subs r1, r1, r2
	bl sub_803E878
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F8BC: .4byte gCamera

	thumb_func_start sub_803F8C0
sub_803F8C0: @ 0x0803F8C0
	push {r4, lr}
	ldr r2, _0803F904 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0803F908 @ =gUnknown_030011A8
	movs r3, #0
	ldr r0, _0803F90C @ =0x00003F41
	strh r0, [r2]
	ldr r0, _0803F910 @ =0x0000100C
	strh r0, [r2, #2]
	ldr r4, _0803F914 @ =gUnknown_030058D0
	ldr r2, _0803F918 @ =gUnknown_030020D0
	ldr r0, _0803F91C @ =gUnknown_03005120
	ldr r0, [r0]
	lsrs r0, r0, #2
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	strh r1, [r2]
	strh r3, [r2, #2]
	adds r0, r4, #0
	bl DrawBackground
	adds r0, r4, #0
	bl UpdateBgAnimationTiles
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F904: .4byte gDispCnt
_0803F908: .4byte gUnknown_030011A8
_0803F90C: .4byte 0x00003F41
_0803F910: .4byte 0x0000100C
_0803F914: .4byte gUnknown_030058D0
_0803F918: .4byte gUnknown_030020D0
_0803F91C: .4byte gUnknown_03005120

	thumb_func_start sub_803F920
sub_803F920: @ 0x0803F920
	ldr r1, _0803F928 @ =0x04000014
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0803F928: .4byte 0x04000014

	thumb_func_start sub_803F92C
sub_803F92C: @ 0x0803F92C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r0, #0
	subs r3, #0x5a
	cmp r3, #0
	blt _0803F95C
	cmp r0, #0x9f
	beq _0803F95C
	ldr r0, _0803F954 @ =gUnknown_03001B6C
	ldr r1, [r0]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r2, _0803F958 @ =0x04000014
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	b _0803F962
	.align 2, 0
_0803F954: .4byte gUnknown_03001B6C
_0803F958: .4byte 0x04000014
_0803F95C:
	ldr r1, _0803F964 @ =0x04000014
	movs r0, #0
	str r0, [r1]
_0803F962:
	bx lr
	.align 2, 0
_0803F964: .4byte 0x04000014

	thumb_func_start sub_803F968
sub_803F968: @ 0x0803F968
	ldr r3, _0803F994 @ =gCamera
	ldr r0, _0803F998 @ =gUnknown_03005120
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803F990
	ldr r2, _0803F99C @ =gUnknown_03004C58
	ldr r1, [r2]
	ldr r0, _0803F9A0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0803F9A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xe0
	lsls r1, r1, #0xb
	ands r0, r1
	lsrs r0, r0, #0x10
	subs r0, #8
	strh r0, [r3, #0xe]
_0803F990:
	bx lr
	.align 2, 0
_0803F994: .4byte gCamera
_0803F998: .4byte gUnknown_03005120
_0803F99C: .4byte gUnknown_03004C58
_0803F9A0: .4byte 0x00196225
_0803F9A4: .4byte 0x3C6EF35F

	thumb_func_start sub_803F9A8
sub_803F9A8: @ 0x0803F9A8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	movs r4, #1
	ands r4, r2
	lsls r4, r4, #2
	ldr r2, _0803FA08 @ =gUnknown_084ADD38
	adds r4, r4, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _0803FA0C @ =sub_803EA24
	str r2, [sp]
	ldr r2, _0803FA10 @ =sub_8040488
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl sub_80403DC
	mov r8, r0
	ldrh r5, [r0, #6]
	ldr r0, _0803FA14 @ =0x03000018
	adds r6, r5, r0
	ldrb r0, [r4, #3]
	bl VramMalloc
	str r0, [r6, #4]
	ldrh r0, [r4]
	strh r0, [r6, #0xa]
	ldrb r0, [r4, #2]
	ldr r1, _0803FA18 @ =0x03000038
	adds r5, r5, r1
	strb r0, [r5]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	mov r0, r8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803FA08: .4byte gUnknown_084ADD38
_0803FA0C: .4byte sub_803EA24
_0803FA10: .4byte sub_8040488
_0803FA14: .4byte 0x03000018
_0803FA18: .4byte 0x03000038

	thumb_func_start sub_803FA1C
sub_803FA1C: @ 0x0803FA1C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r1, #0x64
	bne _0803FA54
	ldr r2, _0803FA48 @ =0x04000008
	ldrh r1, [r2]
	ldr r0, _0803FA4C @ =0x00003FFF
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803FA50 @ =0x04000010
	movs r0, #0xa0
	lsls r0, r0, #0x10
	str r0, [r1]
	b _0803FA6C
	.align 2, 0
_0803FA48: .4byte 0x04000008
_0803FA4C: .4byte 0x00003FFF
_0803FA50: .4byte 0x04000010
_0803FA54:
	adds r0, r1, #0
	subs r0, #0x66
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bhi _0803FA6C
	ldr r2, _0803FA70 @ =0x04000054
	subs r1, #0x65
	asrs r1, r1, #1
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r2]
_0803FA6C:
	bx lr
	.align 2, 0
_0803FA70: .4byte 0x04000054

	thumb_func_start sub_803FA74
sub_803FA74: @ 0x0803FA74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov sb, r1
	mov sl, r2
	mov r8, r3
	ldr r7, [sp, #0x28]
	cmp r7, #0
	bne _0803FA90
	mov r7, sp
_0803FA90:
	mov r4, sp
	adds r4, #1
	adds r0, r6, #0
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	ldr r5, [sp, #0x2c]
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #0
	bne _0803FB6A
	mov r1, r8
	adds r0, r6, r1
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #0
	bne _0803FB2C
	mov r5, r8
	lsls r5, r5, #1
	adds r0, r6, r5
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	ldr r5, [sp, #0x2c]
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #0
	bne _0803FAEC
	mov r0, r8
	cmp r0, #0
	ble _0803FAE4
	movs r0, #7
	ands r0, r6
	movs r1, #0x18
	subs r0, r1, r0
	b _0803FC54
_0803FAE4:
	movs r0, #7
	ands r0, r6
	adds r0, #0x11
	b _0803FC54
_0803FAEC:
	cmp r1, #8
	bne _0803FB0C
	ldrb r0, [r4]
	strb r0, [r7]
	mov r1, r8
	cmp r1, #0
	ble _0803FB04
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #0x10
	b _0803FC54
_0803FB04:
	movs r0, #7
	ands r0, r6
	adds r0, #8
	b _0803FC54
_0803FB0C:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _0803FB22
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x10
	b _0803FC54
_0803FB22:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #0x10
	b _0803FC54
_0803FB2C:
	cmp r1, #8
	bne _0803FB4A
	ldrb r0, [r4]
	strb r0, [r7]
	mov r5, r8
	cmp r5, #0
	ble _0803FB44
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #8
	b _0803FC54
_0803FB44:
	movs r0, #7
	ands r0, r6
	b _0803FC54
_0803FB4A:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _0803FB60
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #8
	b _0803FC54
_0803FB60:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #8
	b _0803FC54
_0803FB6A:
	cmp r1, #8
	bne _0803FC3C
	ldrb r0, [r4]
	strb r0, [r7]
	mov r0, r8
	rsbs r0, r0, #0
	str r0, [sp, #4]
	adds r0, r6, r0
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	ldr r5, [sp, #0x2c]
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #8
	bne _0803FC02
	ldrb r0, [r4]
	strb r0, [r7]
	ldr r0, [sp, #4]
	mov r1, r8
	subs r0, r0, r1
	adds r0, r6, r0
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #8
	bne _0803FBC4
	ldrb r0, [r4]
	strb r0, [r7]
	mov r5, r8
	cmp r5, #0
	ble _0803FBBC
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	subs r0, #0x10
	b _0803FC54
_0803FBBC:
	movs r0, #7
	ands r0, r6
	subs r0, #0x18
	b _0803FC54
_0803FBC4:
	cmp r1, #0
	bne _0803FBE2
	mov r0, r8
	cmp r0, #0
	ble _0803FBDA
	movs r0, #7
	ands r0, r6
	movs r1, #9
	rsbs r1, r1, #0
	subs r0, r1, r0
	b _0803FC54
_0803FBDA:
	movs r0, #7
	ands r0, r6
	subs r0, #0x10
	b _0803FC54
_0803FBE2:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _0803FBF8
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #0x10
	b _0803FC54
_0803FBF8:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #0x10
	b _0803FC54
_0803FC02:
	cmp r1, #0
	bne _0803FC1C
	mov r1, r8
	cmp r1, #0
	ble _0803FC14
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	b _0803FC54
_0803FC14:
	movs r0, #8
	rsbs r0, r0, #0
	orrs r0, r6
	b _0803FC54
_0803FC1C:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _0803FC32
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #8
	b _0803FC54
_0803FC32:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #8
	b _0803FC54
_0803FC3C:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _0803FC4E
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r0, r1, r0
	b _0803FC54
_0803FC4E:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
_0803FC54:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_803FC64
sub_803FC64: @ 0x0803FC64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	cmp r3, #0
	blt _0803FC8C
	ldr r0, _0803FC88 @ =gUnknown_03005A0C
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r3, #0
	cmp r0, r1
	ble _0803FC8E
	adds r0, r1, #0
	b _0803FC8E
	.align 2, 0
_0803FC88: .4byte gUnknown_03005A0C
_0803FC8C:
	movs r0, #0
_0803FC8E:
	adds r3, r0, #0
	cmp r4, #0
	blt _0803FCAC
	ldr r0, _0803FCA8 @ =gUnknown_03005A0C
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	subs r0, #1
	adds r1, r4, #0
	cmp r1, r0
	ble _0803FCAE
	adds r1, r0, #0
	b _0803FCAE
	.align 2, 0
_0803FCA8: .4byte gUnknown_03005A0C
_0803FCAC:
	movs r1, #0
_0803FCAE:
	adds r4, r1, #0
	movs r0, #1
	mov r8, r0
	adds r2, r7, #0
	ands r2, r0
	adds r0, r3, #0
	bl sub_80400B4
	adds r5, r0, #0
	ldr r3, _0803FD44 @ =0x000003FF
	ands r3, r5
	movs r6, #7
	adds r2, r6, #0
	ands r2, r4
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r5
	cmp r0, #0
	beq _0803FCD6
	subs r2, r6, r2
_0803FCD6:
	ldr r0, _0803FD48 @ =gUnknown_03005A0C
	ldr r4, [r0]
	lsls r0, r3, #3
	ldr r1, [r4]
	adds r0, r0, r2
	adds r1, r1, r0
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r0, #0xf
	ands r2, r0
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0803FCF8
	movs r0, #0x10
	rsbs r0, r0, #0
	orrs r2, r0
_0803FCF8:
	movs r0, #8
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0803FD02
	movs r2, #8
_0803FD02:
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _0803FD24
	lsrs r0, r3, #3
	ldr r1, [r4, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ands r3, r6
	lsls r1, r3, #1
	asrs r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0803FD24
	movs r2, #0
_0803FD24:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _0803FD50
	cmp r2, #8
	beq _0803FD4C
	cmp r2, #0
	beq _0803FD4C
	adds r0, r2, #0
	adds r0, #8
	cmp r2, #0
	ble _0803FD4E
	subs r0, #0x10
	b _0803FD4E
	.align 2, 0
_0803FD44: .4byte 0x000003FF
_0803FD48: .4byte gUnknown_03005A0C
_0803FD4C:
	adds r0, r2, #0
_0803FD4E:
	adds r2, r0, #0
_0803FD50:
	adds r0, r2, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_803FD5C
sub_803FD5C: @ 0x0803FD5C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	cmp r4, #0
	blt _0803FD84
	ldr r0, _0803FD80 @ =gUnknown_03005A0C
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r4, #0
	cmp r0, r1
	ble _0803FD86
	adds r0, r1, #0
	b _0803FD86
	.align 2, 0
_0803FD80: .4byte gUnknown_03005A0C
_0803FD84:
	movs r0, #0
_0803FD86:
	adds r4, r0, #0
	cmp r3, #0
	blt _0803FDA4
	ldr r0, _0803FDA0 @ =gUnknown_03005A0C
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	subs r1, r0, #1
	adds r0, r3, #0
	cmp r0, r1
	ble _0803FDA6
	adds r0, r1, #0
	b _0803FDA6
	.align 2, 0
_0803FDA0: .4byte gUnknown_03005A0C
_0803FDA4:
	movs r0, #0
_0803FDA6:
	adds r3, r0, #0
	movs r0, #1
	mov r8, r0
	adds r2, r7, #0
	ands r2, r0
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_80400B4
	adds r5, r0, #0
	ldr r3, _0803FE2C @ =0x000003FF
	ands r3, r5
	movs r6, #7
	adds r2, r6, #0
	ands r2, r4
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _0803FDD0
	subs r2, r6, r2
_0803FDD0:
	ldr r0, _0803FE30 @ =gUnknown_03005A0C
	ldr r4, [r0]
	lsls r0, r3, #3
	ldr r1, [r4]
	adds r0, r0, r2
	adds r1, r1, r0
	movs r2, #0
	ldrsb r2, [r1, r2]
	asrs r2, r2, #4
	movs r0, #8
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0803FDEC
	movs r2, #8
_0803FDEC:
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _0803FE0E
	lsrs r0, r3, #3
	ldr r1, [r4, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ands r3, r6
	lsls r1, r3, #1
	asrs r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0803FE0E
	movs r2, #0
_0803FE0E:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r5
	cmp r0, #0
	beq _0803FE38
	cmp r2, #8
	beq _0803FE34
	cmp r2, #0
	beq _0803FE34
	adds r0, r2, #0
	adds r0, #8
	cmp r2, #0
	ble _0803FE36
	subs r0, #0x10
	b _0803FE36
	.align 2, 0
_0803FE2C: .4byte 0x000003FF
_0803FE30: .4byte gUnknown_03005A0C
_0803FE34:
	adds r0, r2, #0
_0803FE36:
	adds r2, r0, #0
_0803FE38:
	adds r0, r2, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_803FE44
sub_803FE44: @ 0x0803FE44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sl, r3
	cmp r4, #0
	blt _0803FE70
	ldr r0, _0803FE6C @ =gUnknown_03005A0C
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r4, #0
	cmp r0, r1
	ble _0803FE72
	adds r0, r1, #0
	b _0803FE72
	.align 2, 0
_0803FE6C: .4byte gUnknown_03005A0C
_0803FE70:
	movs r0, #0
_0803FE72:
	adds r4, r0, #0
	cmp r5, #0
	blt _0803FE90
	ldr r0, _0803FE8C @ =gUnknown_03005A0C
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	subs r0, #1
	adds r1, r5, #0
	cmp r1, r0
	ble _0803FE92
	adds r1, r0, #0
	b _0803FE92
	.align 2, 0
_0803FE8C: .4byte gUnknown_03005A0C
_0803FE90:
	movs r1, #0
_0803FE92:
	adds r5, r1, #0
	movs r0, #1
	mov sb, r0
	mov r2, r8
	ands r2, r0
	adds r0, r4, #0
	bl sub_80400B4
	adds r4, r0, #0
	ldr r6, _0803FF2C @ =0x000003FF
	ands r6, r4
	movs r7, #7
	adds r3, r7, #0
	ands r3, r5
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0803FEBA
	subs r3, r7, r3
_0803FEBA:
	ldr r2, _0803FF30 @ =gUnknown_03005A0C
	ldr r5, [r2]
	lsls r0, r6, #3
	ldr r1, [r5]
	adds r0, r0, r3
	adds r1, r1, r0
	movs r3, #0
	ldrsb r3, [r1, r3]
	movs r0, #0xf
	ands r3, r0
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _0803FEDC
	movs r0, #0x10
	rsbs r0, r0, #0
	orrs r3, r0
_0803FEDC:
	movs r0, #8
	rsbs r0, r0, #0
	cmp r3, r0
	bne _0803FEE6
	movs r3, #8
_0803FEE6:
	movs r0, #0x80
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0803FF0C
	lsrs r0, r6, #3
	ldr r1, [r5, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r7
	lsls r0, r0, #1
	asrs r1, r0
	mov r0, sb
	ands r1, r0
	cmp r1, #0
	beq _0803FF0C
	movs r3, #0
_0803FF0C:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _0803FF38
	cmp r3, #8
	beq _0803FF34
	cmp r3, #0
	beq _0803FF34
	adds r0, r3, #0
	adds r0, #8
	cmp r3, #0
	ble _0803FF36
	subs r0, #0x10
	b _0803FF36
	.align 2, 0
_0803FF2C: .4byte 0x000003FF
_0803FF30: .4byte gUnknown_03005A0C
_0803FF34:
	adds r0, r3, #0
_0803FF36:
	adds r3, r0, #0
_0803FF38:
	ldr r0, [r2]
	ldr r0, [r0, #4]
	adds r0, r0, r6
	ldrb r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0803FF54
	movs r0, #0x80
	rsbs r0, r0, #0
	subs r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0803FF54:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _0803FF6E
	cmp r3, #0
	beq _0803FF6A
	rsbs r0, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0803FF6C
_0803FF6A:
	adds r0, r2, #0
_0803FF6C:
	adds r2, r0, #0
_0803FF6E:
	mov r1, sl
	strb r2, [r1]
	adds r0, r3, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_803FF84
sub_803FF84: @ 0x0803FF84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sl, r3
	cmp r5, #0
	blt _0803FFB0
	ldr r0, _0803FFAC @ =gUnknown_03005A0C
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r5, #0
	cmp r0, r1
	ble _0803FFB2
	adds r0, r1, #0
	b _0803FFB2
	.align 2, 0
_0803FFAC: .4byte gUnknown_03005A0C
_0803FFB0:
	movs r0, #0
_0803FFB2:
	adds r5, r0, #0
	cmp r4, #0
	blt _0803FFD0
	ldr r0, _0803FFCC @ =gUnknown_03005A0C
	ldr r0, [r0]
	ldrh r0, [r0, #0x1e]
	subs r1, r0, #1
	adds r0, r4, #0
	cmp r0, r1
	ble _0803FFD2
	adds r0, r1, #0
	b _0803FFD2
	.align 2, 0
_0803FFCC: .4byte gUnknown_03005A0C
_0803FFD0:
	movs r0, #0
_0803FFD2:
	adds r4, r0, #0
	movs r0, #1
	mov sb, r0
	mov r2, r8
	ands r2, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80400B4
	adds r4, r0, #0
	ldr r7, _0804005C @ =0x000003FF
	ands r7, r4
	movs r6, #7
	adds r3, r6, #0
	ands r3, r5
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _0803FFFC
	subs r3, r6, r3
_0803FFFC:
	ldr r2, _08040060 @ =gUnknown_03005A0C
	ldr r5, [r2]
	lsls r0, r7, #3
	ldr r1, [r5]
	adds r0, r0, r3
	adds r1, r1, r0
	movs r3, #0
	ldrsb r3, [r1, r3]
	asrs r3, r3, #4
	movs r0, #8
	rsbs r0, r0, #0
	cmp r3, r0
	bne _08040018
	movs r3, #8
_08040018:
	movs r0, #0x80
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0804003E
	lsrs r0, r7, #3
	ldr r1, [r5, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r7, #0
	ands r0, r6
	lsls r0, r0, #1
	asrs r1, r0
	mov r0, sb
	ands r1, r0
	cmp r1, #0
	beq _0804003E
	movs r3, #0
_0804003E:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08040068
	cmp r3, #8
	beq _08040064
	cmp r3, #0
	beq _08040064
	adds r0, r3, #0
	adds r0, #8
	cmp r3, #0
	ble _08040066
	subs r0, #0x10
	b _08040066
	.align 2, 0
_0804005C: .4byte 0x000003FF
_08040060: .4byte gUnknown_03005A0C
_08040064:
	adds r0, r3, #0
_08040066:
	adds r3, r0, #0
_08040068:
	ldr r0, [r2]
	ldr r0, [r0, #4]
	adds r0, r0, r7
	ldrb r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08040080
	rsbs r0, r2, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08040080:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0804009E
	cmp r3, #0
	beq _0804009A
	movs r0, #0x80
	rsbs r0, r0, #0
	subs r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0804009C
_0804009A:
	adds r0, r2, #0
_0804009C:
	adds r2, r0, #0
_0804009E:
	mov r1, sl
	strb r2, [r1]
	adds r0, r3, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80400B4
sub_80400B4: @ 0x080400B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r1, #0
	mov sb, r2
	asrs r4, r0, #3
	ldr r5, _080400D0 @ =0x03000408
	ldr r0, [r5]
	cmp r0, r4
	bne _080400D4
	ldr r7, [r5, #8]
	ldr r0, [r5, #4]
	b _080400EC
	.align 2, 0
_080400D0: .4byte 0x03000408
_080400D4:
	adds r0, r4, #0
	movs r1, #0xc
	bl Div
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r1, r4, r1
	str r4, [r5]
	str r0, [r5, #4]
	str r1, [r5, #8]
	adds r7, r1, #0
_080400EC:
	mov r8, r0
	asrs r4, r6, #3
	ldr r6, _08040100 @ =0x03000418
	ldr r0, [r6]
	cmp r0, r4
	bne _08040104
	ldr r5, [r6, #8]
	ldr r3, [r6, #4]
	b _0804011E
	.align 2, 0
_08040100: .4byte 0x03000418
_08040104:
	adds r0, r4, #0
	movs r1, #0xc
	bl Div
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r1, r4, r1
	adds r3, r0, #0
	str r4, [r6]
	str r3, [r6, #4]
	str r1, [r6, #8]
	adds r5, r1, #0
_0804011E:
	ldr r0, _0804015C @ =gUnknown_03005A0C
	ldr r4, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r4, #0
	adds r1, #0xc
	adds r1, r1, r0
	ldrh r0, [r4, #0x18]
	muls r0, r3, r0
	ldr r1, [r1]
	add r0, r8
	adds r1, r1, r0
	ldrb r2, [r1]
	lsls r1, r5, #3
	lsls r0, r5, #2
	adds r1, r1, r0
	adds r1, r1, r7
	lsls r3, r2, #8
	lsls r2, r2, #5
	lsls r1, r1, #1
	ldr r0, [r4, #8]
	adds r0, r0, r3
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804015C: .4byte gUnknown_03005A0C

	thumb_func_start sub_8040160
sub_8040160: @ 0x08040160
	sub sp, #4
	movs r3, #0
	str r3, [sp]
	ldr r0, _08040188 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0804018C @ =0x03000408
	str r1, [r0, #4]
	ldr r2, _08040190 @ =0x85000003
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08040194 @ =0x03000418
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08040188: .4byte 0x040000D4
_0804018C: .4byte 0x03000408
_08040190: .4byte 0x85000003
_08040194: .4byte 0x03000418

	thumb_func_start sub_8040198
sub_8040198: @ 0x08040198
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r3
	ldr r6, [sp, #0x1c]
	cmp r6, #0
	bne _080401AC
	mov r6, sp
_080401AC:
	mov r4, sp
	adds r4, #1
	adds r0, r5, #0
	adds r3, r4, #0
	ldr r7, [sp, #0x20]
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #0
	bne _080401D8
	mov r0, r8
	cmp r0, #0
	ble _080401D0
	movs r0, #7
	ands r0, r5
	movs r1, #8
	subs r0, r1, r0
	b _0804020E
_080401D0:
	movs r0, #7
	ands r0, r5
	adds r0, #1
	b _0804020E
_080401D8:
	cmp r1, #8
	bne _080401F6
	ldrb r0, [r4]
	strb r0, [r6]
	mov r7, r8
	cmp r7, #0
	ble _080401EE
	movs r0, #7
	ands r0, r5
	mvns r0, r0
	b _0804020E
_080401EE:
	movs r0, #8
	rsbs r0, r0, #0
	orrs r0, r5
	b _0804020E
_080401F6:
	ldrb r0, [r4]
	strb r0, [r6]
	cmp r1, #0
	ble _08040208
	subs r1, #1
	movs r0, #7
	ands r0, r5
	subs r0, r1, r0
	b _0804020E
_08040208:
	movs r0, #7
	ands r0, r5
	adds r0, r1, r0
_0804020E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_804021C
sub_804021C: @ 0x0804021C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	ldr r3, [sp, #0xc]
	bl _call_via_r3
	adds r1, r0, #0
	cmp r1, #0
	bne _08040244
	cmp r5, #0
	ble _0804023C
	movs r0, #7
	ands r0, r4
	movs r1, #8
	subs r0, r1, r0
	b _08040270
_0804023C:
	movs r0, #7
	ands r0, r4
	adds r0, #1
	b _08040270
_08040244:
	cmp r1, #8
	bne _0804025C
	cmp r5, #0
	ble _08040254
	movs r0, #7
	ands r0, r4
	mvns r0, r0
	b _08040270
_08040254:
	movs r0, #8
	rsbs r0, r0, #0
	orrs r0, r4
	b _08040270
_0804025C:
	cmp r1, #0
	ble _0804026A
	subs r1, #1
	movs r0, #7
	ands r0, r4
	subs r0, r1, r0
	b _08040270
_0804026A:
	movs r0, #7
	ands r0, r4
	adds r0, r1, r0
_08040270:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8040278
sub_8040278: @ 0x08040278
	push {r4, lr}
	ldr r0, _080402A0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0x18
	adds r4, r1, r0
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080402A4
	adds r0, r2, #0
	bl TaskDestroy
	b _080403D0
	.align 2, 0
_080402A0: .4byte gCurTask
_080402A4:
	ldrh r1, [r3, #0x14]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	beq _08040344
	cmp r0, #1
	bgt _080402B8
	cmp r0, #0
	beq _080402BE
	b _08040364
_080402B8:
	cmp r0, #2
	beq _0804035C
	b _08040364
_080402BE:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x10
	beq _08040320
	cmp r0, #0x20
	bne _08040328
	ldrb r2, [r3, #0x16]
	ldr r0, _080402F4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08040304
	ldr r1, _080402F8 @ =gUnknown_03005130
	lsls r0, r2, #0x18
	asrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r2, _080402FC @ =0x03000050
	adds r1, r0, r2
	ldrh r1, [r1]
	strh r1, [r4, #0x16]
	ldr r1, _08040300 @ =0x03000052
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x18]
	b _08040328
	.align 2, 0
_080402F4: .4byte gGameMode
_080402F8: .4byte gUnknown_03005130
_080402FC: .4byte 0x03000050
_08040300: .4byte 0x03000052
_08040304:
	ldr r1, _08040318 @ =gUnknown_03005A20
	cmp r2, #0
	beq _0804030C
	ldr r1, _0804031C @ =gUnknown_03005AB0
_0804030C:
	ldr r0, [r1]
	asrs r0, r0, #8
	str r0, [r3]
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	b _08040326
	.align 2, 0
_08040318: .4byte gUnknown_03005A20
_0804031C: .4byte gUnknown_03005AB0
_08040320:
	ldr r0, _0804033C @ =gUnknown_03006080
	movs r2, #2
	ldrsh r0, [r0, r2]
_08040326:
	str r0, [r3, #4]
_08040328:
	ldr r2, _08040340 @ =gCamera
	ldr r0, [r3]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	b _08040362
	.align 2, 0
_0804033C: .4byte gUnknown_03006080
_08040340: .4byte gCamera
_08040344:
	ldr r2, _08040358 @ =gCamera
	ldr r0, [r3]
	ldrh r1, [r2, #0x28]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	ldrh r1, [r2, #0x2a]
	subs r0, r0, r1
	b _08040362
	.align 2, 0
_08040358: .4byte gCamera
_0804035C:
	ldr r0, [r3]
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
_08040362:
	strh r0, [r4, #0x18]
_08040364:
	ldrh r1, [r3, #0x14]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08040390
	ldr r0, _08040384 @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08040388
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0804038E
	.align 2, 0
_08040384: .4byte gUnknown_03005A20
_08040388:
	ldr r0, [r4, #0x10]
	ldr r1, _080403B4 @ =0xFFFFFBFF
	ands r0, r1
_0804038E:
	str r0, [r4, #0x10]
_08040390:
	ldrh r1, [r3, #0x14]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080403C4
	ldr r0, _080403B8 @ =gUnknown_03005004
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080403BC
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _080403C2
	.align 2, 0
_080403B4: .4byte 0xFFFFFBFF
_080403B8: .4byte gUnknown_03005004
_080403BC:
	ldr r0, [r4, #0x10]
	ldr r1, _080403D8 @ =0xFFFFF7FF
	ands r0, r1
_080403C2:
	str r0, [r4, #0x10]
_080403C4:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080403D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080403D8: .4byte 0xFFFFF7FF

	thumb_func_start sub_80403DC
sub_80403DC: @ 0x080403DC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	mov r2, sb
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	ldr r2, _08040470 @ =0x00004001
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, _08040474 @ =0x03000018
	adds r6, r3, r2
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [r1]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	str r5, [r1, #4]
	movs r5, #0
	movs r4, #0
	mov r2, r8
	strh r2, [r1, #0x14]
	mov r2, sb
	strb r2, [r1, #0x16]
	str r4, [r6, #4]
	strh r4, [r6, #8]
	strh r4, [r6, #0xa]
	ldr r2, _08040478 @ =0x03000038
	adds r1, r3, r2
	strb r5, [r1]
	ldr r1, _0804047C @ =0x03000039
	adds r2, r3, r1
	movs r1, #0xff
	strb r1, [r2]
	strh r4, [r6, #0x1a]
	strh r4, [r6, #0x1c]
	ldr r1, _08040480 @ =0x0300003A
	adds r2, r3, r1
	movs r1, #0x10
	strb r1, [r2]
	ldr r2, _08040484 @ =0x0300003D
	adds r3, r3, r2
	strb r5, [r3]
	str r4, [r6, #0x10]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08040470: .4byte 0x00004001
_08040474: .4byte 0x03000018
_08040478: .4byte 0x03000038
_0804047C: .4byte 0x03000039
_08040480: .4byte 0x0300003A
_08040484: .4byte 0x0300003D

	thumb_func_start sub_8040488
sub_8040488: @ 0x08040488
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0804049C @ =0x03000018
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0804049C: .4byte 0x03000018

	thumb_func_start sub_80404A0
sub_80404A0: @ 0x080404A0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r1, _080404C0 @ =gUnknown_03005A10
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _080404BA
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080404C4
_080404BA:
	movs r0, #0
	b _0804053C
	.align 2, 0
_080404C0: .4byte gUnknown_03005A10
_080404C4:
	subs r0, r2, #1
	movs r5, #0
	strb r0, [r1]
	ldr r0, _08040544 @ =sub_8040570
	ldr r2, _08040548 @ =0x00004001
	str r5, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	movs r6, #0
	strh r4, [r1]
	strh r7, [r1, #2]
	strh r5, [r1, #4]
	strh r5, [r1, #6]
	ldr r1, _0804054C @ =0x03000008
	adds r4, r2, r1
	ldr r1, _08040550 @ =0x06012100
	str r1, [r4, #4]
	strh r5, [r4, #8]
	movs r1, #0xbb
	lsls r1, r1, #2
	strh r1, [r4, #0xa]
	ldr r3, _08040554 @ =0x03000028
	adds r1, r2, r3
	strb r6, [r1]
	ldr r1, _08040558 @ =0x03000029
	adds r3, r2, r1
	movs r1, #0xff
	strb r1, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r4, #0x1a]
	strh r5, [r4, #0x1c]
	ldr r1, _0804055C @ =0x0300002A
	adds r3, r2, r1
	movs r1, #0x10
	strb r1, [r3]
	ldr r3, _08040560 @ =0x0300002D
	adds r2, r2, r3
	strb r6, [r2]
	movs r5, #0x80
	lsls r5, r5, #6
	str r5, [r4, #0x10]
	ldr r3, _08040564 @ =gUnknown_03004C58
	ldr r2, [r3]
	ldr r1, _08040568 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _0804056C @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	movs r2, #0xc0
	lsls r2, r2, #4
	ands r1, r2
	orrs r1, r5
	str r1, [r4, #0x10]
_0804053C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08040544: .4byte sub_8040570
_08040548: .4byte 0x00004001
_0804054C: .4byte 0x03000008
_08040550: .4byte 0x06012100
_08040554: .4byte 0x03000028
_08040558: .4byte 0x03000029
_0804055C: .4byte 0x0300002A
_08040560: .4byte 0x0300002D
_08040564: .4byte gUnknown_03004C58
_08040568: .4byte 0x00196225
_0804056C: .4byte 0x3C6EF35F

	thumb_func_start sub_8040570
sub_8040570: @ 0x08040570
	push {r4, r5, lr}
	ldr r2, _080405A4 @ =gUnknown_03005A10
	ldr r0, _080405A8 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #8
	adds r5, r1, r0
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _08040596
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080405AC
_08040596:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r0, r3, #0
	bl TaskDestroy
	b _080405DA
	.align 2, 0
_080405A4: .4byte gUnknown_03005A10
_080405A8: .4byte gCurTask
_080405AC:
	ldr r2, _080405E0 @ =gCamera
	ldrh r0, [r4]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldrh r0, [r4, #2]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldrh r0, [r4, #4]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r0, [r4, #6]
	ldrh r1, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
_080405DA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080405E0: .4byte gCamera

	thumb_func_start sub_80405E4
sub_80405E4: @ 0x080405E4
	push {r4, lr}
	sub sp, #4
	ldr r4, _08040610 @ =gUnknown_03005A10
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _08040608
	ldr r0, _08040614 @ =0x08040645
	movs r2, #0x80
	lsls r2, r2, #7
	ldr r1, _08040618 @ =sub_8040638
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	str r0, [r4, #4]
	movs r0, #0x14
	strb r0, [r4]
_08040608:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040610: .4byte gUnknown_03005A10
_08040614: .4byte 0x08040645
_08040618: .4byte sub_8040638

	thumb_func_start sub_804061C
sub_804061C: @ 0x0804061C
	push {r4, lr}
	ldr r4, _08040634 @ =gUnknown_03005A10
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0804062E
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #4]
_0804062E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040634: .4byte gUnknown_03005A10

	thumb_func_start sub_8040638
sub_8040638: @ 0x08040638
	ldr r1, _08040640 @ =gUnknown_03005A10
	movs r0, #0
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_08040640: .4byte gUnknown_03005A10
_08040644:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_8040648
sub_8040648: @ 0x08040648
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _080406AC @ =sub_80406CC
	ldr r2, _080406B0 @ =0x00004001
	ldr r1, _080406B4 @ =sub_80408AC
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r5, [r6, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4, #4]
	movs r3, #0
	movs r2, #0
	strh r2, [r4, #8]
	ldr r0, _080406B8 @ =0x000002EA
	strh r0, [r4, #0xa]
	ldr r1, _080406BC @ =0x03000020
	adds r0, r5, r1
	strb r3, [r0]
	ldr r0, _080406C0 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r2, [r4, #0x1c]
	ldr r0, _080406C4 @ =0x03000022
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080406C8 @ =0x03000025
	adds r5, r5, r1
	strb r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080406AC: .4byte sub_80406CC
_080406B0: .4byte 0x00004001
_080406B4: .4byte sub_80408AC
_080406B8: .4byte 0x000002EA
_080406BC: .4byte 0x03000020
_080406C0: .4byte 0x03000021
_080406C4: .4byte 0x03000022
_080406C8: .4byte 0x03000025

	thumb_func_start sub_80406CC
sub_80406CC: @ 0x080406CC
	push {r4, r5, r6, r7, lr}
	ldr r5, _080406F0 @ =gUnknown_03005A20
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _080406E4
	ldr r6, [r5, #0x10]
	movs r0, #0x90
	lsls r0, r0, #3
	ands r6, r0
	subs r0, #0x80
	cmp r6, r0
	beq _080406F8
_080406E4:
	ldr r0, _080406F4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080407B0
	.align 2, 0
_080406F0: .4byte gUnknown_03005A20
_080406F4: .4byte gCurTask
_080406F8:
	ldr r3, _08040764 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	movs r0, #0x16
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _0804072A
	movs r1, #0
	adds r0, #0xeb
	strh r0, [r4, #0xa]
	ldr r7, _08040768 @ =0x03000020
	adds r0, r2, r7
	strb r1, [r0]
	ldr r0, _0804076C @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, [r3]
	ldr r0, _08040770 @ =sub_80407BC
	str r0, [r1, #8]
_0804072A:
	ldr r7, _08040774 @ =gCamera
	movs r3, #0xf
	ldrsb r3, [r5, r3]
	ldr r2, _08040778 @ =gUnknown_03005004
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804073E
	rsbs r3, r3, #0
_0804073E:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldrh r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	ldrh r1, [r7, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804077C
	ldr r0, [r4, #0x10]
	orrs r0, r6
	b _08040782
	.align 2, 0
_08040764: .4byte gCurTask
_08040768: .4byte 0x03000020
_0804076C: .4byte 0x03000021
_08040770: .4byte sub_80407BC
_08040774: .4byte gCamera
_08040778: .4byte gUnknown_03005004
_0804077C:
	ldr r0, [r4, #0x10]
	ldr r1, _08040798 @ =0xFFFFFBFF
	ands r0, r1
_08040782:
	str r0, [r4, #0x10]
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804079C
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _080407A2
	.align 2, 0
_08040798: .4byte 0xFFFFFBFF
_0804079C:
	ldr r0, [r4, #0x10]
	ldr r1, _080407B8 @ =0xFFFFF7FF
	ands r0, r1
_080407A2:
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080407B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080407B8: .4byte 0xFFFFF7FF

	thumb_func_start sub_80407BC
sub_80407BC: @ 0x080407BC
	push {r4, r5, r6, r7, lr}
	ldr r5, _080407E0 @ =gUnknown_03005A20
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _080407D4
	ldr r6, [r5, #0x10]
	movs r0, #0x90
	lsls r0, r0, #3
	ands r6, r0
	subs r0, #0x80
	cmp r6, r0
	beq _080407E8
_080407D4:
	ldr r0, _080407E4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080408A0
	.align 2, 0
_080407E0: .4byte gUnknown_03005A20
_080407E4: .4byte gCurTask
_080407E8:
	ldr r3, _08040854 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	movs r0, #0x16
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bgt _0804081A
	movs r1, #0
	adds r0, #0xea
	strh r0, [r4, #0xa]
	ldr r7, _08040858 @ =0x03000020
	adds r0, r2, r7
	strb r1, [r0]
	ldr r0, _0804085C @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, [r3]
	ldr r0, _08040860 @ =sub_80406CC
	str r0, [r1, #8]
_0804081A:
	ldr r7, _08040864 @ =gCamera
	movs r3, #0xf
	ldrsb r3, [r5, r3]
	ldr r2, _08040868 @ =gUnknown_03005004
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804082E
	rsbs r3, r3, #0
_0804082E:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldrh r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	ldrh r1, [r7, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804086C
	ldr r0, [r4, #0x10]
	orrs r0, r6
	b _08040872
	.align 2, 0
_08040854: .4byte gCurTask
_08040858: .4byte 0x03000020
_0804085C: .4byte 0x03000021
_08040860: .4byte sub_80406CC
_08040864: .4byte gCamera
_08040868: .4byte gUnknown_03005004
_0804086C:
	ldr r0, [r4, #0x10]
	ldr r1, _08040888 @ =0xFFFFFBFF
	ands r0, r1
_08040872:
	str r0, [r4, #0x10]
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804088C
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08040892
	.align 2, 0
_08040888: .4byte 0xFFFFFBFF
_0804088C:
	ldr r0, [r4, #0x10]
	ldr r1, _080408A8 @ =0xFFFFF7FF
	ands r0, r1
_08040892:
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080408A0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080408A8: .4byte 0xFFFFF7FF

	thumb_func_start sub_80408AC
sub_80408AC: @ 0x080408AC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80408C0
sub_80408C0: @ 0x080408C0
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08040924 @ =sub_8040944
	ldr r2, _08040928 @ =0x00002001
	ldr r1, _0804092C @ =sub_80409E4
	str r1, [sp]
	movs r1, #0x30
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r5, [r6, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #4]
	movs r3, #0
	movs r2, #0
	strh r2, [r4, #8]
	ldr r0, _08040930 @ =0x000002ED
	strh r0, [r4, #0xa]
	ldr r1, _08040934 @ =0x03000020
	adds r0, r5, r1
	strb r3, [r0]
	ldr r0, _08040938 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r2, [r4, #0x1c]
	ldr r0, _0804093C @ =0x03000022
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08040940 @ =0x03000025
	adds r5, r5, r1
	strb r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08040924: .4byte sub_8040944
_08040928: .4byte 0x00002001
_0804092C: .4byte sub_80409E4
_08040930: .4byte 0x000002ED
_08040934: .4byte 0x03000020
_08040938: .4byte 0x03000021
_0804093C: .4byte 0x03000022
_08040940: .4byte 0x03000025

	thumb_func_start sub_8040944
sub_8040944: @ 0x08040944
	push {r4, r5, lr}
	ldr r3, _08040964 @ =gUnknown_03005A20
	ldr r0, [r3, #0x60]
	cmp r0, #0
	beq _0804095A
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0804096C
_0804095A:
	ldr r0, _08040968 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080409D8
	.align 2, 0
_08040964: .4byte gUnknown_03005A20
_08040968: .4byte gCurTask
_0804096C:
	adds r0, r3, #0
	adds r0, #0x42
	ldrh r0, [r0]
	cmp r0, #0x2c
	bne _080409D8
	adds r0, r3, #0
	adds r0, #0x44
	ldrh r5, [r0]
	cmp r5, #1
	bne _080409D8
	ldr r0, _080409BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _080409C0 @ =gCamera
	ldr r0, [r3]
	asrs r0, r0, #8
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r1, [r3, #4]
	asrs r1, r1, #8
	movs r0, #0xf
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, [r3, #0x10]
	ands r0, r5
	cmp r0, #0
	bne _080409C4
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080409CA
	.align 2, 0
_080409BC: .4byte gCurTask
_080409C0: .4byte gCamera
_080409C4:
	ldr r0, [r4, #0x10]
	ldr r1, _080409E0 @ =0xFFFFFBFF
	ands r0, r1
_080409CA:
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080409D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080409E0: .4byte 0xFFFFFBFF

	thumb_func_start sub_80409E4
sub_80409E4: @ 0x080409E4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80409F8
sub_80409F8: @ 0x080409F8
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _08040A0C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08040A18
	ldr r4, _08040A10 @ =gUnknown_03005A18
	ldr r0, _08040A14 @ =sub_8042000
	b _08040A1C
	.align 2, 0
_08040A0C: .4byte gGameMode
_08040A10: .4byte gUnknown_03005A18
_08040A14: .4byte sub_8042000
_08040A18:
	ldr r4, _08040A98 @ =gUnknown_03005A18
	ldr r0, _08040A9C @ =sub_8041FE0
_08040A1C:
	movs r1, #0xce
	lsls r1, r1, #2
	ldr r2, _08040AA0 @ =0x00002001
	ldr r3, _08040AA4 @ =sub_8042020
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	str r0, [r4]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	movs r3, #0
	movs r2, #0
	strh r2, [r5, #0x16]
	strh r2, [r5, #0x18]
	ldr r0, _08040AA8 @ =0x06011D00
	str r0, [r5, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r2, [r5, #8]
	ldr r0, _08040AAC @ =0x000002C3
	strh r0, [r5, #0xa]
	ldr r1, _08040AB0 @ =0x03000020
	adds r0, r4, r1
	strb r3, [r0]
	strh r2, [r5, #0x14]
	strh r2, [r5, #0x1c]
	ldr r0, _08040AB4 @ =0x03000021
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08040AB8 @ =0x03000022
	adds r1, r4, r0
	movs r0, #0x20
	strb r0, [r1]
	ldr r1, _08040ABC @ =0x03000025
	adds r0, r4, r1
	strb r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	ldr r1, _08040AC0 @ =0x03000336
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _08040AC4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _08040AD0
	ldr r0, _08040AC8 @ =0x03000334
	adds r1, r4, r0
	movs r0, #0xe0
	strh r0, [r1]
	ldr r0, _08040ACC @ =0x03000330
	adds r1, r4, r0
	movs r0, #0x12
	b _08040ADE
	.align 2, 0
_08040A98: .4byte gUnknown_03005A18
_08040A9C: .4byte sub_8041FE0
_08040AA0: .4byte 0x00002001
_08040AA4: .4byte sub_8042020
_08040AA8: .4byte 0x06011D00
_08040AAC: .4byte 0x000002C3
_08040AB0: .4byte 0x03000020
_08040AB4: .4byte 0x03000021
_08040AB8: .4byte 0x03000022
_08040ABC: .4byte 0x03000025
_08040AC0: .4byte 0x03000336
_08040AC4: .4byte gCurrentLevel
_08040AC8: .4byte 0x03000334
_08040ACC: .4byte 0x03000330
_08040AD0:
	ldr r0, _08040B00 @ =0x03000334
	adds r1, r4, r0
	movs r0, #0xe0
	strh r0, [r1]
	ldr r0, _08040B04 @ =0x03000330
	adds r1, r4, r0
	movs r0, #7
_08040ADE:
	str r0, [r1]
	adds r2, r5, #0
	adds r2, #0x30
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08040B08 @ =0x040000D4
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08040B0C @ =0x81000180
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08040B00: .4byte 0x03000334
_08040B04: .4byte 0x03000330
_08040B08: .4byte 0x040000D4
_08040B0C: .4byte 0x81000180

	thumb_func_start sub_8040B10
sub_8040B10: @ 0x08040B10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	adds r7, r2, #0
	ldr r0, _08040B94 @ =gUnknown_03005A18
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08040B98 @ =0x03000030
	adds r4, r0, r1
	ldr r6, _08040B9C @ =gUnknown_03005A20
	str r6, [sp, #8]
	movs r5, #0
	movs r6, #0
	cmp r7, #0
	beq _08040C06
	cmp r7, #0x30
	ble _08040B3E
	movs r7, #0x30
_08040B3E:
	ldr r0, _08040BA0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08040B4C
	cmp r7, #0x20
	ble _08040B4C
	movs r7, #0x20
_08040B4C:
	movs r0, #0x76
	bl m4aSongNumStart
	movs r3, #0x91
	lsls r3, r3, #3
	movs r0, #0
	mov r8, r0
	mov ip, r0
	ldr r1, _08040BA4 @ =gSineTable
	mov sb, r1
	movs r0, #0x80
	mov sl, r0
_08040B64:
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne _08040BFA
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r4, #0xc]
	ldr r0, [sp, #8]
	adds r0, #0x27
	ldrb r0, [r0]
	strh r0, [r4, #0xe]
	ldr r1, [sp]
	lsls r0, r1, #8
	str r0, [r4]
	ldr r1, [sp, #4]
	lsls r0, r1, #8
	str r0, [r4, #4]
	cmp r3, #0
	blt _08040BDA
	asrs r2, r3, #8
	cmp r2, #5
	ble _08040BA8
	rsbs r0, r2, #0
	adds r0, #9
	b _08040BAA
	.align 2, 0
_08040B94: .4byte gUnknown_03005A18
_08040B98: .4byte 0x03000030
_08040B9C: .4byte gUnknown_03005A20
_08040BA0: .4byte gGameMode
_08040BA4: .4byte gSineTable
_08040BA8:
	adds r0, r2, #0
_08040BAA:
	adds r2, r0, #0
	movs r0, #0xff
	ands r0, r3
	lsls r1, r0, #2
	lsls r0, r0, #3
	add r0, sb
	movs r6, #0
	ldrsh r5, [r0, r6]
	asrs r5, r2
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	add r1, sb
	movs r0, #0
	ldrsh r6, [r1, r0]
	asrs r6, r2
	asrs r0, r5, #2
	subs r5, r5, r0
	asrs r0, r6, #2
	subs r6, r6, r0
	adds r3, #0x10
	mov r1, sl
	orrs r3, r1
_08040BDA:
	strh r5, [r4, #8]
	strh r6, [r4, #0xa]
	ldr r0, _08040C18 @ =gUnknown_03005004
	ldrh r1, [r0]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08040BEE
	rsbs r0, r6, #0
	strh r0, [r4, #0xa]
_08040BEE:
	rsbs r3, r3, #0
	rsbs r5, r5, #0
	movs r1, #1
	add ip, r1
	cmp ip, r7
	bge _08040C06
_08040BFA:
	adds r4, #0x10
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0x2f
	ble _08040B64
_08040C06:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040C18: .4byte gUnknown_03005004

	thumb_func_start sub_8040C1C
sub_8040C1C: @ 0x08040C1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	mov ip, r2
	ldr r0, _08040D38 @ =gUnknown_03005A18
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08040D3C @ =0x03000030
	adds r5, r0, r1
	ldr r2, _08040D40 @ =gUnknown_03005A20
	str r2, [sp, #8]
	mov r3, ip
	cmp r3, #0
	beq _08040D26
	cmp r3, #0x30
	ble _08040C4A
	movs r0, #0x30
	mov ip, r0
_08040C4A:
	ldr r0, _08040D44 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08040C5C
	mov r1, ip
	cmp r1, #0x20
	ble _08040C5C
	movs r2, #0x20
	mov ip, r2
_08040C5C:
	ldr r2, _08040D48 @ =gUnknown_03004C58
	ldr r1, [r2]
	ldr r0, _08040D4C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _08040D50 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	movs r1, #0xff
	lsls r1, r1, #0xc
	ands r0, r1
	lsrs r7, r0, #0xc
	movs r0, #0x10
	orrs r7, r0
	movs r0, #0
	str r0, [sp, #0xc]
	mov sl, r0
_08040C7C:
	ldrh r0, [r5, #0xc]
	cmp r0, #0
	bne _08040D1A
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r5, #0xc]
	ldr r0, [sp, #8]
	adds r0, #0x27
	ldrb r0, [r0]
	strh r0, [r5, #0xe]
	ldr r2, [sp]
	lsls r0, r2, #8
	str r0, [r5]
	ldr r3, [sp, #4]
	lsls r0, r3, #8
	str r0, [r5, #4]
	ldr r1, _08040D48 @ =gUnknown_03004C58
	ldr r0, [r1]
	ldr r2, _08040D4C @ =0x00196225
	mov sb, r2
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r2, _08040D50 @ =0x3C6EF35F
	mov r8, r2
	adds r6, r0, r2
	str r6, [r1]
	movs r2, #0x80
	lsls r2, r2, #5
	ands r2, r6
	lsrs r2, r2, #0xc
	adds r2, #5
	movs r0, #0xff
	ands r0, r7
	lsls r1, r0, #2
	lsls r0, r0, #3
	ldr r3, _08040D54 @ =gSineTable
	adds r0, r0, r3
	movs r3, #0
	ldrsh r4, [r0, r3]
	asrs r4, r2
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r3, _08040D54 @ =gSineTable
	adds r1, r1, r3
	movs r0, #0
	ldrsh r3, [r1, r0]
	asrs r3, r2
	asrs r0, r4, #2
	subs r4, r4, r0
	asrs r0, r3, #2
	subs r3, r3, r0
	ldr r2, _08040D58 @ =gUnknown_03005004
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08040CF6
	rsbs r3, r3, #0
_08040CF6:
	strh r4, [r5, #8]
	strh r3, [r5, #0xa]
	mov r0, sb
	muls r0, r6, r0
	add r0, r8
	ldr r3, _08040D48 @ =gUnknown_03004C58
	str r0, [r3]
	adds r2, r7, #0
	adds r2, #0x10
	movs r1, #0xfc
	lsls r1, r1, #0xa
	ands r0, r1
	lsrs r0, r0, #0xc
	adds r7, r2, r0
	movs r0, #1
	add sl, r0
	cmp sl, ip
	bge _08040D26
_08040D1A:
	adds r5, #0x10
	ldr r1, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #0xc]
	cmp r1, #0x2f
	ble _08040C7C
_08040D26:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040D38: .4byte gUnknown_03005A18
_08040D3C: .4byte 0x03000030
_08040D40: .4byte gUnknown_03005A20
_08040D44: .4byte gGameMode
_08040D48: .4byte gUnknown_03004C58
_08040D4C: .4byte 0x00196225
_08040D50: .4byte 0x3C6EF35F
_08040D54: .4byte gSineTable
_08040D58: .4byte gUnknown_03005004

	thumb_func_start sub_8040D5C
sub_8040D5C: @ 0x08040D5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08040EC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r0, _08040EC4 @ =0x03000030
	adds r5, r1, r0
	ldr r2, [sp, #4]
	mov sb, r2
	ldr r3, _08040EC8 @ =0x03000330
	adds r0, r1, r3
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r4, _08040ECC @ =0x03000334
	adds r1, r1, r4
	ldrh r1, [r1]
	str r1, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	mov r0, sb
	bl UpdateSpriteAnimation
	movs r1, #0x2f
	str r1, [sp, #0x14]
_08040D9C:
	ldrh r0, [r5, #0xc]
	cmp r0, #0
	bne _08040DA4
	b _08041154
_08040DA4:
	movs r2, #8
	ldrsh r0, [r5, r2]
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
	movs r3, #0xa
	ldrsh r2, [r5, r3]
	ldr r0, [r5, #4]
	adds r0, r0, r2
	str r0, [r5, #4]
	asrs r7, r1, #8
	asrs r0, r0, #8
	mov r8, r0
	ldr r4, _08040ED0 @ =gCamera
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r0, r7, r0
	str r0, [sp, #0x18]
	movs r2, #2
	ldrsh r0, [r4, r2]
	mov r3, r8
	subs r3, r3, r0
	mov sl, r3
	ldr r6, _08040ED4 @ =gUnknown_03005A20
	ldr r2, [r6, #0x64]
	ldrh r4, [r5, #0xc]
	mov ip, r4
	ldr r0, [sp, #0xc]
	cmp ip, r0
	ble _08040DE2
	b _08040EEC
_08040DE2:
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0xf
	bne _08040DF8
	movs r3, #0x1c
	ldrsh r0, [r6, r3]
	cmp r0, #0
	beq _08040DF8
	b _08040EEC
_08040DF8:
	cmp r1, #0x28
	beq _08040EEC
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08040EEC
	adds r4, r2, #0
	adds r4, #0x38
	adds r2, r7, #0
	subs r2, #8
	ldr r0, [r6]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08040E28
	adds r0, r7, #0
	adds r0, #8
	cmp r0, r1
	bge _08040E34
	cmp r2, r1
	blt _08040EEC
_08040E28:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08040EEC
_08040E34:
	mov r2, r8
	subs r2, #0x10
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08040E4E
	cmp r8, r1
	bge _08040E5A
	cmp r2, r1
	blt _08040EEC
_08040E4E:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08040EEC
_08040E5A:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r4, r8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl sub_801E46C
	ldr r1, _08040ED8 @ =gUnknown_03004FEC
	ldrh r6, [r1]
	adds r0, r6, #1
	strh r0, [r1]
	ldr r0, _08040EDC @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _08040EA8
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _08040EA8
	ldr r0, _08040EE0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08040EA8
	ldr r1, _08040EE4 @ =gUnknown_03005024
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08040EE8 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
_08040EA8:
	ldr r0, _08040EE0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08040EBC
	ldr r1, _08040ED8 @ =gUnknown_03004FEC
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _08040EBC
	movs r0, #0xff
	strh r0, [r1]
_08040EBC:
	movs r0, #0
	b _08041152
	.align 2, 0
_08040EC0: .4byte gCurTask
_08040EC4: .4byte 0x03000030
_08040EC8: .4byte 0x03000330
_08040ECC: .4byte 0x03000334
_08040ED0: .4byte gCamera
_08040ED4: .4byte gUnknown_03005A20
_08040ED8: .4byte gUnknown_03004FEC
_08040EDC: .4byte gCurrentLevel
_08040EE0: .4byte gGameMode
_08040EE4: .4byte gUnknown_03005024
_08040EE8: .4byte gUnknown_03005040
_08040EEC:
	ldr r0, _08040FE4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08040EFA
	b _08041000
_08040EFA:
	ldr r6, _08040FE8 @ =gUnknown_03005AB0
	ldr r2, [r6, #0x64]
	ldr r0, [sp, #0xc]
	cmp ip, r0
	ble _08040F06
	b _08041000
_08040F06:
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0xf
	bne _08040F1A
	movs r3, #0x1c
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bne _08041000
_08040F1A:
	cmp r1, #0x28
	beq _08041000
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08041000
	adds r4, r2, #0
	adds r4, #0x38
	adds r2, r7, #0
	subs r2, #8
	ldr r0, [r6]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08040F4A
	adds r0, r7, #0
	adds r0, #8
	cmp r0, r1
	bge _08040F56
	cmp r2, r1
	blt _08041000
_08040F4A:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08041000
_08040F56:
	mov r2, r8
	subs r2, #0x10
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08040F70
	cmp r8, r1
	bge _08040F7C
	cmp r2, r1
	blt _08041000
_08040F70:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08041000
_08040F7C:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r4, r8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl sub_801E46C
	ldr r1, _08040FEC @ =gUnknown_03004FEC
	ldrh r6, [r1]
	adds r0, r6, #1
	strh r0, [r1]
	ldr r0, _08040FF0 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _08040FCA
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _08040FCA
	ldr r0, _08040FF4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08040FCA
	ldr r1, _08040FF8 @ =gUnknown_03005024
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08040FFC @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
_08040FCA:
	ldr r0, _08040FF4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08040FDE
	ldr r1, _08040FEC @ =gUnknown_03004FEC
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _08040FDE
	movs r0, #0xff
	strh r0, [r1]
_08040FDE:
	movs r0, #0
	b _08041152
	.align 2, 0
_08040FE4: .4byte gUnknown_03005088
_08040FE8: .4byte gUnknown_03005AB0
_08040FEC: .4byte gUnknown_03004FEC
_08040FF0: .4byte gCurrentLevel
_08040FF4: .4byte gGameMode
_08040FF8: .4byte gUnknown_03005024
_08040FFC: .4byte gUnknown_03005040
_08041000:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08041034
	mov r0, r8
	subs r0, #0x10
	movs r3, #0xe
	ldrsh r2, [r5, r3]
	ldr r1, _080410D4 @ =sub_803FD5C
	str r1, [sp]
	adds r1, r7, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_804021C
	cmp r0, #0
	bgt _08041034
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	subs r0, r0, r1
	str r0, [r5, #4]
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5, #0xa]
_08041034:
	ldr r4, [sp, #4]
	ldr r1, _080410D8 @ =0x00000336
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041074
	movs r2, #0xa
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _08041074
	movs r3, #0xe
	ldrsh r2, [r5, r3]
	ldr r0, _080410D4 @ =sub_803FD5C
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bgt _08041074
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5, #0xa]
_08041074:
	ldrh r0, [r5, #0xa]
	ldr r4, [sp, #8]
	subs r0, r0, r4
	strh r0, [r5, #0xa]
	ldr r0, [sp, #0x18]
	adds r0, #7
	cmp r0, #0xfe
	bhi _0804114E
	movs r0, #8
	rsbs r0, r0, #0
	cmp sl, r0
	ble _0804114E
	mov r0, sl
	cmp r0, #0xa7
	bgt _0804114E
	ldrh r0, [r5, #0xc]
	cmp r0, #0x1f
	bhi _080410A4
	ldr r0, _080410DC @ =gUnknown_03005120
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804114E
_080410A4:
	mov r2, sb
	adds r2, #0x23
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _080410B6
	adds r1, r2, #0
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _080410E0
_080410B6:
	movs r0, #0xff
	strb r0, [r2]
	mov r2, sp
	ldrh r3, [r2, #0x18]
	mov r2, sb
	strh r3, [r2, #0x16]
	mov r4, sl
	strh r4, [r2, #0x18]
	mov r0, sb
	bl DisplaySprite
	movs r0, #1
	str r0, [sp, #0x10]
	b _0804114E
	.align 2, 0
_080410D4: .4byte sub_803FD5C
_080410D8: .4byte 0x00000336
_080410DC: .4byte gUnknown_03005120
_080410E0:
	ldrb r0, [r1]
	lsls r0, r0, #3
	ldr r1, _08041174 @ =gUnknown_03001B80
	adds r4, r0, r1
	mov r1, sb
	ldrh r0, [r1, #0x1a]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r3, r0, #0
	ldr r0, _08041178 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r3
	beq _0804114E
	ldr r1, _0804117C @ =0x040000D4
	str r4, [r1]
	str r3, [r1, #4]
	ldr r0, _08041180 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r3]
	movs r4, #0xff
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r2, r0
	strh r2, [r3]
	mov r1, sb
	ldr r0, [r1, #0xc]
	ldrh r0, [r0, #0xa]
	mov r4, sl
	subs r0, r4, r0
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r3]
	ldrh r2, [r3, #2]
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r3, #2]
	mov r4, sb
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #8]
	ldr r1, [sp, #0x18]
	subs r0, r1, r0
	ldr r4, _08041184 @ =0x000001FF
	adds r1, r4, #0
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r3, #2]
_0804114E:
	ldrh r0, [r5, #0xc]
	subs r0, #1
_08041152:
	strh r0, [r5, #0xc]
_08041154:
	adds r5, #0x10
	ldr r0, [sp, #0x14]
	subs r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0
	blt _08041162
	b _08040D9C
_08041162:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041174: .4byte gUnknown_03001B80
_08041178: .4byte iwram_end
_0804117C: .4byte 0x040000D4
_08041180: .4byte 0x80000003
_08041184: .4byte 0x000001FF

	thumb_func_start sub_8041188
sub_8041188: @ 0x08041188
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08041324 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r0, _08041328 @ =0x03000030
	adds r5, r1, r0
	ldr r2, [sp, #4]
	mov sl, r2
	ldr r3, _0804132C @ =0x03000330
	adds r0, r1, r3
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r4, _08041330 @ =0x03000334
	adds r1, r1, r4
	ldrh r1, [r1]
	str r1, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	mov r0, sl
	bl UpdateSpriteAnimation
	movs r1, #0x2f
	str r1, [sp, #0x14]
_080411C8:
	ldrh r0, [r5, #0xc]
	cmp r0, #0
	bne _080411D0
	b _080415C0
_080411D0:
	movs r2, #8
	ldrsh r0, [r5, r2]
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
	movs r3, #0xa
	ldrsh r2, [r5, r3]
	ldr r0, [r5, #4]
	adds r0, r0, r2
	str r0, [r5, #4]
	asrs r1, r1, #8
	mov sb, r1
	mov r7, sb
	asrs r0, r0, #8
	mov r8, r0
	ldr r0, _08041334 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	bne _08041220
	ldr r0, _08041338 @ =gUnknown_03005120
	ldr r0, [r0]
	lsls r0, r0, #3
	mov r4, sb
	adds r1, r4, r0
	adds r2, r1, #0
	subs r2, #0x48
	ldr r0, _0804133C @ =0x00000A7F
	cmp r2, r0
	ble _0804121E
	adds r1, r2, #0
	adds r0, r1, #0
	movs r1, #0xa8
	lsls r1, r1, #4
	bl Mod
	adds r1, r0, #0
	adds r1, #0x48
_0804121E:
	mov sb, r1
_08041220:
	ldr r1, _08041340 @ =gCamera
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, r7, r0
	str r0, [sp, #0x18]
	movs r3, #2
	ldrsh r0, [r1, r3]
	mov r4, r8
	subs r4, r4, r0
	str r4, [sp, #0x1c]
	ldr r6, _08041344 @ =gUnknown_03005A20
	ldr r2, [r6, #0x64]
	ldrh r0, [r5, #0xc]
	mov ip, r0
	ldr r1, [sp, #0xc]
	cmp ip, r1
	ble _08041244
	b _08041358
_08041244:
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0xf
	bne _0804125A
	movs r3, #0x1c
	ldrsh r0, [r6, r3]
	cmp r0, #0
	beq _0804125A
	b _08041358
_0804125A:
	cmp r1, #0x28
	bne _08041260
	b _08041358
_08041260:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08041358
	adds r4, r2, #0
	adds r4, #0x38
	adds r2, r7, #0
	subs r2, #8
	ldr r0, [r6]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _0804128C
	adds r0, r7, #0
	adds r0, #8
	cmp r0, r1
	bge _08041298
	cmp r2, r1
	blt _08041358
_0804128C:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08041358
_08041298:
	mov r2, r8
	subs r2, #0x10
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _080412B2
	cmp r8, r1
	bge _080412BE
	cmp r2, r1
	blt _08041358
_080412B2:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08041358
_080412BE:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r4, r8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl sub_801E46C
	ldr r1, _08041348 @ =gUnknown_03004FEC
	ldrh r6, [r1]
	adds r0, r6, #1
	strh r0, [r1]
	ldr r0, _08041334 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _0804130C
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _0804130C
	ldr r0, _0804134C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804130C
	ldr r1, _08041350 @ =gUnknown_03005024
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08041354 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
_0804130C:
	ldr r0, _0804134C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08041320
	ldr r1, _08041348 @ =gUnknown_03004FEC
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _08041320
	movs r0, #0xff
	strh r0, [r1]
_08041320:
	movs r0, #0
	b _080415BE
	.align 2, 0
_08041324: .4byte gCurTask
_08041328: .4byte 0x03000030
_0804132C: .4byte 0x03000330
_08041330: .4byte 0x03000334
_08041334: .4byte gCurrentLevel
_08041338: .4byte gUnknown_03005120
_0804133C: .4byte 0x00000A7F
_08041340: .4byte gCamera
_08041344: .4byte gUnknown_03005A20
_08041348: .4byte gUnknown_03004FEC
_0804134C: .4byte gGameMode
_08041350: .4byte gUnknown_03005024
_08041354: .4byte gUnknown_03005040
_08041358:
	ldr r0, _08041450 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08041366
	b _0804146C
_08041366:
	ldr r6, _08041454 @ =gUnknown_03005AB0
	ldr r2, [r6, #0x64]
	ldr r0, [sp, #0xc]
	cmp ip, r0
	ble _08041372
	b _0804146C
_08041372:
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0xf
	bne _08041386
	movs r3, #0x1c
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bne _0804146C
_08041386:
	cmp r1, #0x28
	beq _0804146C
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804146C
	adds r4, r2, #0
	adds r4, #0x38
	adds r2, r7, #0
	subs r2, #8
	ldr r0, [r6]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _080413B6
	adds r0, r7, #0
	adds r0, #8
	cmp r0, r1
	bge _080413C2
	cmp r2, r1
	blt _0804146C
_080413B6:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0804146C
_080413C2:
	mov r2, r8
	subs r2, #0x10
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _080413DC
	cmp r8, r1
	bge _080413E8
	cmp r2, r1
	blt _0804146C
_080413DC:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0804146C
_080413E8:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r4, r8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl sub_801E46C
	ldr r1, _08041458 @ =gUnknown_03004FEC
	ldrh r6, [r1]
	adds r0, r6, #1
	strh r0, [r1]
	ldr r0, _0804145C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _08041436
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _08041436
	ldr r0, _08041460 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041436
	ldr r1, _08041464 @ =gUnknown_03005024
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08041468 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
_08041436:
	ldr r0, _08041460 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0804144A
	ldr r1, _08041458 @ =gUnknown_03004FEC
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _0804144A
	movs r0, #0xff
	strh r0, [r1]
_0804144A:
	movs r0, #0
	b _080415BE
	.align 2, 0
_08041450: .4byte gUnknown_03005088
_08041454: .4byte gUnknown_03005AB0
_08041458: .4byte gUnknown_03004FEC
_0804145C: .4byte gCurrentLevel
_08041460: .4byte gGameMode
_08041464: .4byte gUnknown_03005024
_08041468: .4byte gUnknown_03005040
_0804146C:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _0804149C
	movs r3, #0xe
	ldrsh r2, [r5, r3]
	ldr r0, _08041540 @ =sub_803FD5C
	str r0, [sp]
	mov r0, r8
	mov r1, sb
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bgt _0804149C
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5, #0xa]
_0804149C:
	ldr r4, [sp, #4]
	ldr r1, _08041544 @ =0x00000336
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080414E0
	movs r2, #0xa
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _080414E0
	mov r0, r8
	subs r0, #0x10
	movs r3, #0xe
	ldrsh r2, [r5, r3]
	ldr r1, _08041540 @ =sub_803FD5C
	str r1, [sp]
	mov r1, sb
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_804021C
	cmp r0, #0
	bgt _080414E0
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	subs r0, r0, r1
	str r0, [r5, #4]
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5, #0xa]
_080414E0:
	ldrh r0, [r5, #0xa]
	ldr r4, [sp, #8]
	adds r0, r0, r4
	strh r0, [r5, #0xa]
	ldr r0, [sp, #0x18]
	adds r0, #7
	cmp r0, #0xfe
	bhi _080415BA
	movs r0, #8
	rsbs r0, r0, #0
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	ble _080415BA
	cmp r1, #0xa7
	bgt _080415BA
	ldrh r0, [r5, #0xc]
	cmp r0, #0x1f
	bhi _08041510
	ldr r0, _08041548 @ =gUnknown_03005120
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080415BA
_08041510:
	mov r2, sl
	adds r2, #0x23
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _08041522
	adds r1, r2, #0
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0804154C
_08041522:
	movs r0, #0xff
	strb r0, [r2]
	mov r4, sp
	ldrh r0, [r4, #0x18]
	mov r4, sl
	strh r0, [r4, #0x16]
	mov r1, sp
	ldrh r1, [r1, #0x1c]
	strh r1, [r4, #0x18]
	mov r0, sl
	bl DisplaySprite
	movs r2, #1
	str r2, [sp, #0x10]
	b _080415BA
	.align 2, 0
_08041540: .4byte sub_803FD5C
_08041544: .4byte 0x00000336
_08041548: .4byte gUnknown_03005120
_0804154C:
	ldrb r0, [r1]
	lsls r0, r0, #3
	ldr r1, _080415E0 @ =gUnknown_03001B80
	adds r4, r0, r1
	mov r3, sl
	ldrh r0, [r3, #0x1a]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r3, r0, #0
	ldr r0, _080415E4 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r3
	beq _080415BA
	ldr r1, _080415E8 @ =0x040000D4
	str r4, [r1]
	str r3, [r1, #4]
	ldr r0, _080415EC @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r3]
	movs r4, #0xff
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r2, r0
	strh r2, [r3]
	mov r1, sl
	ldr r0, [r1, #0xc]
	ldrh r0, [r0, #0xa]
	ldr r4, [sp, #0x1c]
	subs r0, r4, r0
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r3]
	ldrh r2, [r3, #2]
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r3, #2]
	mov r4, sl
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #8]
	ldr r1, [sp, #0x18]
	subs r0, r1, r0
	ldr r4, _080415F0 @ =0x000001FF
	adds r1, r4, #0
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r3, #2]
_080415BA:
	ldrh r0, [r5, #0xc]
	subs r0, #1
_080415BE:
	strh r0, [r5, #0xc]
_080415C0:
	adds r5, #0x10
	ldr r0, [sp, #0x14]
	subs r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0
	blt _080415CE
	b _080411C8
_080415CE:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080415E0: .4byte gUnknown_03001B80
_080415E4: .4byte iwram_end
_080415E8: .4byte 0x040000D4
_080415EC: .4byte 0x80000003
_080415F0: .4byte 0x000001FF

	thumb_func_start sub_80415F4
sub_80415F4: @ 0x080415F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r0, _08041644 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r0, _08041648 @ =0x03000030
	adds r5, r1, r0
	ldr r2, [sp, #4]
	mov sl, r2
	ldr r3, _0804164C @ =0x03000330
	adds r0, r1, r3
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r4, _08041650 @ =0x03000334
	adds r1, r1, r4
	ldrh r1, [r1]
	str r1, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	mov r0, sl
	bl UpdateSpriteAnimation
	movs r1, #0
	str r1, [sp, #0x14]
_08041634:
	ldrh r0, [r5, #0xc]
	cmp r0, #0
	bne _08041654
	adds r5, #0x10
	ldr r2, [sp, #0x14]
	adds r2, #1
	mov sb, r2
	b _08041AAE
	.align 2, 0
_08041644: .4byte gCurTask
_08041648: .4byte 0x03000030
_0804164C: .4byte 0x03000330
_08041650: .4byte 0x03000334
_08041654:
	movs r3, #8
	ldrsh r0, [r5, r3]
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
	movs r4, #0xa
	ldrsh r2, [r5, r4]
	ldr r0, [r5, #4]
	adds r0, r0, r2
	str r0, [r5, #4]
	asrs r7, r1, #8
	asrs r0, r0, #8
	mov r8, r0
	ldr r1, _08041814 @ =gCamera
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, r7, r0
	str r0, [sp, #0x18]
	movs r3, #2
	ldrsh r0, [r1, r3]
	mov r4, r8
	subs r4, r4, r0
	str r4, [sp, #0x1c]
	ldr r6, _08041818 @ =gUnknown_03005A20
	ldr r2, [r6, #0x64]
	ldrh r0, [r5, #0xc]
	mov ip, r0
	ldr r1, [sp, #0xc]
	cmp ip, r1
	bgt _08041706
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0xf
	bne _080416A4
	movs r3, #0x1c
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bne _08041706
_080416A4:
	cmp r1, #0x28
	beq _08041706
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08041706
	adds r4, r2, #0
	adds r4, #0x38
	adds r2, r7, #0
	subs r2, #8
	ldr r0, [r6]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _080416D4
	adds r0, r7, #0
	adds r0, #8
	cmp r0, r1
	bge _080416E0
	cmp r2, r1
	blt _08041706
_080416D4:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08041706
_080416E0:
	mov r2, r8
	subs r2, #0x10
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _080416FA
	cmp r8, r1
	bge _080417A4
	cmp r2, r1
	blt _08041706
_080416FA:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	bge _080417A4
_08041706:
	ldr r0, _0804181C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08041714
	b _08041838
_08041714:
	ldr r6, _08041820 @ =gUnknown_03005AB0
	ldr r2, [r6, #0x64]
	adds r1, r5, #0
	adds r1, #0x10
	str r1, [sp, #0x20]
	ldr r3, [sp, #0x14]
	adds r3, #1
	mov sb, r3
	ldr r4, [sp, #0xc]
	cmp ip, r4
	ble _0804172C
	b _08041958
_0804172C:
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0xf
	bne _08041742
	movs r3, #0x1c
	ldrsh r0, [r6, r3]
	cmp r0, #0
	beq _08041742
	b _08041838
_08041742:
	cmp r1, #0x28
	beq _08041838
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08041838
	adds r4, r2, #0
	adds r4, #0x38
	adds r2, r7, #0
	subs r2, #8
	ldr r0, [r6]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08041772
	adds r0, r7, #0
	adds r0, #8
	cmp r0, r1
	bge _0804177E
	cmp r2, r1
	blt _08041838
_08041772:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08041838
_0804177E:
	mov r2, r8
	subs r2, #0x10
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08041798
	cmp r8, r1
	bge _080417A4
	cmp r2, r1
	blt _08041838
_08041798:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08041838
_080417A4:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r4, r8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl sub_801E46C
	ldr r1, _08041824 @ =gUnknown_03004FEC
	ldrh r6, [r1]
	adds r0, r6, #1
	strh r0, [r1]
	ldr r0, _08041828 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _080417F2
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _080417F2
	ldr r0, _0804182C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _080417F2
	ldr r1, _08041830 @ =gUnknown_03005024
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08041834 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
_080417F2:
	ldr r0, _0804182C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08041806
	ldr r1, _08041824 @ =gUnknown_03004FEC
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _08041806
	movs r0, #0xff
	strh r0, [r1]
_08041806:
	movs r0, #0
	strh r0, [r5, #0xc]
	adds r5, #0x10
	ldr r0, [sp, #0x14]
	adds r0, #1
	mov sb, r0
	b _08041AAE
	.align 2, 0
_08041814: .4byte gCamera
_08041818: .4byte gUnknown_03005A20
_0804181C: .4byte gUnknown_03005088
_08041820: .4byte gUnknown_03005AB0
_08041824: .4byte gUnknown_03004FEC
_08041828: .4byte gCurrentLevel
_0804182C: .4byte gGameMode
_08041830: .4byte gUnknown_03005024
_08041834: .4byte gUnknown_03005040
_08041838:
	adds r1, r5, #0
	adds r1, #0x10
	str r1, [sp, #0x20]
	ldr r2, [sp, #0x14]
	adds r2, #1
	mov sb, r2
	ldr r3, [sp, #0xc]
	cmp ip, r3
	ble _0804184C
	b _08041958
_0804184C:
	movs r6, #0
_0804184E:
	ldr r0, _08041880 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r6, r0
	beq _0804194C
	ldr r1, _08041884 @ =gUnknown_03005130
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0804194C
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov ip, r0
	ldr r0, _08041888 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0804188C
	mov r1, ip
	ldrb r0, [r1, #0xa]
	b _080418AE
	.align 2, 0
_08041880: .4byte 0x04000128
_08041884: .4byte gUnknown_03005130
_08041888: .4byte gGameMode
_0804188C:
	mov r2, ip
	ldrb r1, [r2, #0xa]
	ldr r2, _08041940 @ =gUnknown_03005090
	ldr r3, _08041944 @ =0x03000056
	adds r0, r4, r3
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	ldr r4, _08041948 @ =gUnknown_084AE008
	adds r0, r0, r4
	ldrb r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
_080418AE:
	cmp r0, #0x13
	beq _080418B6
	cmp r0, #0x15
	bne _080418C4
_080418B6:
	mov r0, ip
	adds r0, #0x54
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0804194C
_080418C4:
	adds r3, r7, #0
	subs r3, #8
	mov r0, ip
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	subs r0, #0x24
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, r1, r2
	cmp r3, r1
	bgt _080418E8
	adds r0, r7, #0
	adds r0, #8
	cmp r0, r1
	bge _080418FA
	cmp r3, r1
	blt _0804194C
_080418E8:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r3
	blt _0804194C
_080418FA:
	mov r3, r8
	subs r3, #0x10
	mov r0, ip
	adds r0, #0x52
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r1, ip
	adds r1, #0x2d
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r1, r0, r2
	cmp r3, r1
	bgt _0804191C
	cmp r8, r1
	bge _0804192E
	cmp r3, r1
	blt _0804194C
_0804191C:
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r3
	blt _0804194C
_0804192E:
	lsls r0, r7, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl sub_801E46C
	movs r0, #0
	b _08041AAA
	.align 2, 0
_08041940: .4byte gUnknown_03005090
_08041944: .4byte 0x03000056
_08041948: .4byte gUnknown_084AE008
_0804194C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bhi _08041958
	b _0804184E
_08041958:
	movs r3, #0xa
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bge _0804198C
	mov r0, r8
	subs r0, #0x10
	movs r4, #0xe
	ldrsh r2, [r5, r4]
	ldr r1, _08041A2C @ =sub_803FD5C
	str r1, [sp]
	adds r1, r7, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_804021C
	cmp r0, #0
	bgt _0804198C
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	subs r0, r0, r1
	str r0, [r5, #4]
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5, #0xa]
_0804198C:
	ldr r1, [sp, #4]
	ldr r2, _08041A30 @ =0x00000336
	adds r0, r1, r2
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080419CC
	movs r3, #0xa
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _080419CC
	movs r4, #0xe
	ldrsh r2, [r5, r4]
	ldr r0, _08041A2C @ =sub_803FD5C
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bgt _080419CC
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5, #0xa]
_080419CC:
	ldrh r0, [r5, #0xa]
	ldr r1, [sp, #8]
	subs r0, r0, r1
	strh r0, [r5, #0xa]
	ldr r0, [sp, #0x18]
	adds r0, #7
	cmp r0, #0xfe
	bhi _08041AA6
	movs r0, #8
	rsbs r0, r0, #0
	ldr r2, [sp, #0x1c]
	cmp r2, r0
	ble _08041AA6
	cmp r2, #0xa7
	bgt _08041AA6
	ldrh r0, [r5, #0xc]
	cmp r0, #0x1f
	bhi _080419FC
	ldr r0, _08041A34 @ =gUnknown_03005120
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08041AA6
_080419FC:
	mov r2, sl
	adds r2, #0x23
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _08041A0E
	adds r1, r2, #0
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08041A38
_08041A0E:
	movs r0, #0xff
	strb r0, [r2]
	mov r4, sp
	ldrh r0, [r4, #0x18]
	mov r4, sl
	strh r0, [r4, #0x16]
	mov r1, sp
	ldrh r1, [r1, #0x1c]
	strh r1, [r4, #0x18]
	mov r0, sl
	bl DisplaySprite
	movs r2, #1
	str r2, [sp, #0x10]
	b _08041AA6
	.align 2, 0
_08041A2C: .4byte sub_803FD5C
_08041A30: .4byte 0x00000336
_08041A34: .4byte gUnknown_03005120
_08041A38:
	ldrb r0, [r1]
	lsls r0, r0, #3
	ldr r1, _08041AC8 @ =gUnknown_03001B80
	adds r4, r0, r1
	mov r3, sl
	ldrh r0, [r3, #0x1a]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r3, r0, #0
	ldr r0, _08041ACC @ =iwram_end
	ldr r0, [r0]
	cmp r0, r3
	beq _08041AA6
	ldr r1, _08041AD0 @ =0x040000D4
	str r4, [r1]
	str r3, [r1, #4]
	ldr r0, _08041AD4 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r3]
	movs r4, #0xff
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r2, r0
	strh r2, [r3]
	mov r1, sl
	ldr r0, [r1, #0xc]
	ldrh r0, [r0, #0xa]
	ldr r4, [sp, #0x1c]
	subs r0, r4, r0
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r3]
	ldrh r2, [r3, #2]
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r3, #2]
	mov r4, sl
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #8]
	ldr r1, [sp, #0x18]
	subs r0, r1, r0
	ldr r4, _08041AD8 @ =0x000001FF
	adds r1, r4, #0
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r3, #2]
_08041AA6:
	ldrh r0, [r5, #0xc]
	subs r0, #1
_08041AAA:
	strh r0, [r5, #0xc]
	ldr r5, [sp, #0x20]
_08041AAE:
	mov r0, sb
	str r0, [sp, #0x14]
	cmp r0, #0x2f
	bgt _08041AB8
	b _08041634
_08041AB8:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041AC8: .4byte gUnknown_03001B80
_08041ACC: .4byte iwram_end
_08041AD0: .4byte 0x040000D4
_08041AD4: .4byte 0x80000003
_08041AD8: .4byte 0x000001FF

	thumb_func_start sub_8041ADC
sub_8041ADC: @ 0x08041ADC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r0, _08041B2C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r0, _08041B30 @ =0x03000030
	adds r5, r1, r0
	ldr r2, [sp, #4]
	str r2, [sp, #8]
	ldr r3, _08041B34 @ =0x03000330
	adds r0, r1, r3
	ldr r0, [r0]
	str r0, [sp, #0xc]
	ldr r4, _08041B38 @ =0x03000334
	adds r1, r1, r4
	ldrh r1, [r1]
	str r1, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r1, #0
	str r1, [sp, #0x18]
_08041B1C:
	ldrh r0, [r5, #0xc]
	cmp r0, #0
	bne _08041B3C
	adds r5, #0x10
	ldr r2, [sp, #0x18]
	adds r2, #1
	mov sl, r2
	b _08041F9A
	.align 2, 0
_08041B2C: .4byte gCurTask
_08041B30: .4byte 0x03000030
_08041B34: .4byte 0x03000330
_08041B38: .4byte 0x03000334
_08041B3C:
	movs r3, #8
	ldrsh r0, [r5, r3]
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
	movs r4, #0xa
	ldrsh r2, [r5, r4]
	ldr r0, [r5, #4]
	adds r0, r0, r2
	str r0, [r5, #4]
	asrs r1, r1, #8
	mov sb, r1
	mov r8, sb
	asrs r7, r0, #8
	ldr r1, _08041D00 @ =gCamera
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, sb
	subs r3, r3, r0
	str r3, [sp, #0x1c]
	movs r4, #2
	ldrsh r0, [r1, r4]
	subs r0, r7, r0
	str r0, [sp, #0x20]
	ldr r6, _08041D04 @ =gUnknown_03005A20
	ldr r2, [r6, #0x64]
	ldrh r0, [r5, #0xc]
	mov ip, r0
	ldr r1, [sp, #0x10]
	cmp ip, r1
	bgt _08041BF0
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0xf
	bne _08041B8E
	movs r3, #0x1c
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bne _08041BF0
_08041B8E:
	cmp r1, #0x28
	beq _08041BF0
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08041BF0
	adds r4, r2, #0
	adds r4, #0x38
	mov r2, sb
	subs r2, #8
	ldr r0, [r6]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08041BBE
	mov r0, sb
	adds r0, #8
	cmp r0, r1
	bge _08041BCA
	cmp r2, r1
	blt _08041BF0
_08041BBE:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08041BF0
_08041BCA:
	adds r2, r7, #0
	subs r2, #0x10
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08041BE4
	cmp r7, r1
	bge _08041C8E
	cmp r2, r1
	blt _08041BF0
_08041BE4:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	bge _08041C8E
_08041BF0:
	ldr r0, _08041D08 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _08041BFE
	b _08041D24
_08041BFE:
	ldr r6, _08041D0C @ =gUnknown_03005AB0
	ldr r2, [r6, #0x64]
	adds r1, r5, #0
	adds r1, #0x10
	str r1, [sp, #0x24]
	ldr r3, [sp, #0x18]
	adds r3, #1
	mov sl, r3
	ldr r4, [sp, #0x10]
	cmp ip, r4
	ble _08041C16
	b _08041E44
_08041C16:
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0xf
	bne _08041C2C
	movs r3, #0x1c
	ldrsh r0, [r6, r3]
	cmp r0, #0
	beq _08041C2C
	b _08041D24
_08041C2C:
	cmp r1, #0x28
	beq _08041D24
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08041D24
	adds r4, r2, #0
	adds r4, #0x38
	mov r2, r8
	subs r2, #8
	ldr r0, [r6]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08041C5C
	mov r0, r8
	adds r0, #8
	cmp r0, r1
	bge _08041C68
	cmp r2, r1
	blt _08041D24
_08041C5C:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08041D24
_08041C68:
	adds r2, r7, #0
	subs r2, #0x10
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08041C82
	cmp r7, r1
	bge _08041C8E
	cmp r2, r1
	blt _08041D24
_08041C82:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _08041D24
_08041C8E:
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_801E46C
	ldr r1, _08041D10 @ =gUnknown_03004FEC
	ldrh r6, [r1]
	adds r0, r6, #1
	strh r0, [r1]
	ldr r0, _08041D14 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _08041CDC
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _08041CDC
	ldr r0, _08041D18 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041CDC
	ldr r1, _08041D1C @ =gUnknown_03005024
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08041D20 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
_08041CDC:
	ldr r0, _08041D18 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08041CF0
	ldr r1, _08041D10 @ =gUnknown_03004FEC
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _08041CF0
	movs r0, #0xff
	strh r0, [r1]
_08041CF0:
	movs r0, #0
	strh r0, [r5, #0xc]
	adds r5, #0x10
	ldr r0, [sp, #0x18]
	adds r0, #1
	mov sl, r0
	b _08041F9A
	.align 2, 0
_08041D00: .4byte gCamera
_08041D04: .4byte gUnknown_03005A20
_08041D08: .4byte gUnknown_03005088
_08041D0C: .4byte gUnknown_03005AB0
_08041D10: .4byte gUnknown_03004FEC
_08041D14: .4byte gCurrentLevel
_08041D18: .4byte gGameMode
_08041D1C: .4byte gUnknown_03005024
_08041D20: .4byte gUnknown_03005040
_08041D24:
	adds r1, r5, #0
	adds r1, #0x10
	str r1, [sp, #0x24]
	ldr r2, [sp, #0x18]
	adds r2, #1
	mov sl, r2
	ldr r3, [sp, #0x10]
	cmp ip, r3
	ble _08041D38
	b _08041E44
_08041D38:
	movs r6, #0
_08041D3A:
	ldr r0, _08041D6C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r6, r0
	beq _08041E38
	ldr r1, _08041D70 @ =gUnknown_03005130
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08041E38
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov ip, r0
	ldr r0, _08041D74 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08041D78
	mov r1, ip
	ldrb r0, [r1, #0xa]
	b _08041D9A
	.align 2, 0
_08041D6C: .4byte 0x04000128
_08041D70: .4byte gUnknown_03005130
_08041D74: .4byte gGameMode
_08041D78:
	mov r2, ip
	ldrb r1, [r2, #0xa]
	ldr r2, _08041E2C @ =gUnknown_03005090
	ldr r3, _08041E30 @ =0x03000056
	adds r0, r4, r3
	ldrb r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	ldr r4, _08041E34 @ =gUnknown_084AE008
	adds r0, r0, r4
	ldrb r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
_08041D9A:
	cmp r0, #0x13
	beq _08041DA2
	cmp r0, #0x15
	bne _08041DB0
_08041DA2:
	mov r0, ip
	adds r0, #0x54
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08041E38
_08041DB0:
	mov r3, r8
	subs r3, #8
	mov r0, ip
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	subs r0, #0x24
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, r1, r2
	cmp r3, r1
	bgt _08041DD4
	mov r0, r8
	adds r0, #8
	cmp r0, r1
	bge _08041DE6
	cmp r3, r1
	blt _08041E38
_08041DD4:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r3
	blt _08041E38
_08041DE6:
	adds r3, r7, #0
	subs r3, #0x10
	mov r0, ip
	adds r0, #0x52
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r1, ip
	adds r1, #0x2d
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r1, r0, r2
	cmp r3, r1
	bgt _08041E08
	cmp r7, r1
	bge _08041E1A
	cmp r3, r1
	blt _08041E38
_08041E08:
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r3
	blt _08041E38
_08041E1A:
	mov r1, r8
	lsls r0, r1, #0x10
	lsls r1, r7, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl sub_801E46C
	movs r0, #0
	b _08041F96
	.align 2, 0
_08041E2C: .4byte gUnknown_03005090
_08041E30: .4byte 0x03000056
_08041E34: .4byte gUnknown_084AE008
_08041E38:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bhi _08041E44
	b _08041D3A
_08041E44:
	movs r2, #0xa
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _08041E74
	movs r3, #0xe
	ldrsh r2, [r5, r3]
	ldr r0, _08041F18 @ =sub_803FD5C
	str r0, [sp]
	adds r0, r7, #0
	mov r1, sb
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bgt _08041E74
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5, #0xa]
_08041E74:
	ldr r4, [sp, #4]
	ldr r1, _08041F1C @ =0x00000336
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041EB8
	movs r2, #0xa
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _08041EB8
	adds r0, r7, #0
	subs r0, #0x10
	movs r3, #0xe
	ldrsh r2, [r5, r3]
	ldr r1, _08041F18 @ =sub_803FD5C
	str r1, [sp]
	mov r1, sb
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_804021C
	cmp r0, #0
	bgt _08041EB8
	lsls r1, r0, #8
	ldr r0, [r5, #4]
	subs r0, r0, r1
	str r0, [r5, #4]
	ldrh r1, [r5, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r5, #0xa]
_08041EB8:
	ldrh r0, [r5, #0xa]
	ldr r4, [sp, #0xc]
	adds r0, r0, r4
	strh r0, [r5, #0xa]
	ldr r0, [sp, #0x1c]
	adds r0, #7
	cmp r0, #0xfe
	bhi _08041F92
	movs r0, #8
	rsbs r0, r0, #0
	ldr r1, [sp, #0x20]
	cmp r1, r0
	ble _08041F92
	cmp r1, #0xa7
	bgt _08041F92
	ldrh r0, [r5, #0xc]
	cmp r0, #0x1f
	bhi _08041EE8
	ldr r0, _08041F20 @ =gUnknown_03005120
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08041F92
_08041EE8:
	ldr r2, [sp, #8]
	adds r2, #0x23
	ldr r3, [sp, #0x14]
	cmp r3, #0
	beq _08041EFA
	adds r1, r2, #0
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08041F24
_08041EFA:
	movs r0, #0xff
	strb r0, [r2]
	mov r4, sp
	ldrh r0, [r4, #0x1c]
	ldr r4, [sp, #8]
	strh r0, [r4, #0x16]
	mov r1, sp
	ldrh r1, [r1, #0x20]
	strh r1, [r4, #0x18]
	ldr r0, [sp, #8]
	bl DisplaySprite
	movs r2, #1
	str r2, [sp, #0x14]
	b _08041F92
	.align 2, 0
_08041F18: .4byte sub_803FD5C
_08041F1C: .4byte 0x00000336
_08041F20: .4byte gUnknown_03005120
_08041F24:
	ldrb r0, [r1]
	lsls r0, r0, #3
	ldr r1, _08041FB4 @ =gUnknown_03001B80
	adds r4, r0, r1
	ldr r3, [sp, #8]
	ldrh r0, [r3, #0x1a]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r3, r0, #0
	ldr r0, _08041FB8 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r3
	beq _08041F92
	ldr r1, _08041FBC @ =0x040000D4
	str r4, [r1]
	str r3, [r1, #4]
	ldr r0, _08041FC0 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r2, [r3]
	movs r4, #0xff
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r2, r0
	strh r2, [r3]
	ldr r1, [sp, #8]
	ldr r0, [r1, #0xc]
	ldrh r0, [r0, #0xa]
	ldr r4, [sp, #0x20]
	subs r0, r4, r0
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r3]
	ldrh r2, [r3, #2]
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r3, #2]
	ldr r4, [sp, #8]
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #8]
	ldr r1, [sp, #0x1c]
	subs r0, r1, r0
	ldr r4, _08041FC4 @ =0x000001FF
	adds r1, r4, #0
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r3, #2]
_08041F92:
	ldrh r0, [r5, #0xc]
	subs r0, #1
_08041F96:
	strh r0, [r5, #0xc]
	ldr r5, [sp, #0x24]
_08041F9A:
	mov r0, sl
	str r0, [sp, #0x18]
	cmp r0, #0x2f
	bgt _08041FA4
	b _08041B1C
_08041FA4:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041FB4: .4byte gUnknown_03001B80
_08041FB8: .4byte iwram_end
_08041FBC: .4byte 0x040000D4
_08041FC0: .4byte 0x80000003
_08041FC4: .4byte 0x000001FF

	thumb_func_start sub_8041FC8
sub_8041FC8: @ 0x08041FC8
	push {r4, lr}
	ldr r4, _08041FDC @ =gUnknown_03005A18
	ldr r0, [r4]
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08041FDC: .4byte gUnknown_03005A18

	thumb_func_start sub_8041FE0
sub_8041FE0: @ 0x08041FE0
	push {lr}
	ldr r0, _08041FF4 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08041FF8
	bl sub_8040D5C
	b _08041FFC
	.align 2, 0
_08041FF4: .4byte gUnknown_03005004
_08041FF8:
	bl sub_8041188
_08041FFC:
	pop {r0}
	bx r0

	thumb_func_start sub_8042000
sub_8042000: @ 0x08042000
	push {lr}
	ldr r0, _08042014 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042018
	bl sub_80415F4
	b _0804201C
	.align 2, 0
_08042014: .4byte gUnknown_03005004
_08042018:
	bl sub_8041ADC
_0804201C:
	pop {r0}
	bx r0

	thumb_func_start sub_8042020
sub_8042020: @ 0x08042020
	ldr r1, _08042028 @ =gUnknown_03005A18
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_08042028: .4byte gUnknown_03005A18

	thumb_func_start sub_804202C
sub_804202C: @ 0x0804202C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r1, #0
	adds r5, r2, #0
	adds r0, r5, #0
	adds r0, #0x3c
	movs r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	bne _080420B0
	cmp r7, #0xd
	bne _0804205C
	ldr r0, _08042054 @ =sub_8049898
	movs r2, #0xc0
	lsls r2, r2, #6
	ldr r1, _08042058 @ =sub_8047354
	str r1, [sp]
	movs r1, #0x8c
	b _08042068
	.align 2, 0
_08042054: .4byte sub_8049898
_08042058: .4byte sub_8047354
_0804205C:
	ldr r0, _080420A4 @ =sub_804550C
	movs r2, #0xc0
	lsls r2, r2, #6
	ldr r1, _080420A8 @ =sub_8047354
	str r1, [sp]
	movs r1, #8
_08042068:
	movs r3, #0
	bl TaskCreate
	str r0, [r5, #0x60]
	ldr r0, [r5, #0x60]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r0, #0
	strb r4, [r1]
	str r0, [r1, #4]
	adds r0, r5, #0
	bl sub_8042428
	bl sub_80405E4
	bl sub_80409F8
	ldr r6, _080420AC @ =gInputRecorder
	ldrb r4, [r6, #8]
	cmp r4, #1
	beq _0804209A
	cmp r4, #2
	bne _080420D6
_0804209A:
	bl InputRecorderLoadTape
	strb r4, [r6, #8]
	b _080420D6
	.align 2, 0
_080420A4: .4byte sub_804550C
_080420A8: .4byte sub_8047354
_080420AC: .4byte gInputRecorder
_080420B0:
	ldr r0, _080420F8 @ =sub_8045B38
	ldr r2, _080420FC @ =0x00003001
	ldr r1, _08042100 @ =sub_8047354
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	str r0, [r5, #0x60]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r0, #0
	strb r4, [r1]
	str r0, [r1, #4]
	adds r0, r5, #0
	bl sub_8042428
_080420D6:
	ldr r1, [r5, #0x64]
	adds r0, r5, #0
	bl sub_8042104
	ldr r1, [r5, #0x68]
	adds r0, r5, #0
	bl sub_80421AC
	cmp r7, #0xd
	bne _080420F0
	adds r0, r5, #0
	bl sub_804A1B8
_080420F0:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080420F8: .4byte sub_8045B38
_080420FC: .4byte 0x00003001
_08042100: .4byte sub_8047354

	thumb_func_start sub_8042104
sub_8042104: @ 0x08042104
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x3c
	movs r7, #0
	ldrsb r7, [r0, r7]
	adds r4, r6, #0
	adds r4, #0xc
	cmp r7, #0
	bne _08042120
	ldr r0, _0804211C @ =0x06010000
	b _08042126
	.align 2, 0
_0804211C: .4byte 0x06010000
_08042120:
	movs r0, #0x40
	bl VramMalloc
_08042126:
	str r0, [r4, #4]
	movs r2, #0
	movs r3, #0
	strh r3, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	adds r0, r5, #0
	adds r0, #0x44
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r3, [r4, #0x1c]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	ldr r0, _080421A8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08042180
	movs r0, #0xc0
	lsls r0, r0, #0xc
	orrs r0, r1
	str r0, [r4, #0x10]
_08042180:
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	orrs r0, r1
	orrs r0, r7
	str r0, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x30]
	strh r3, [r6]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	strh r3, [r6, #6]
	strh r3, [r6, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080421A8: .4byte gGameMode

	thumb_func_start sub_80421AC
sub_80421AC: @ 0x080421AC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, #0x59
	movs r7, #0
	ldrsb r7, [r0, r7]
	cmp r7, #1
	bne _08042212
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r2, #0
	movs r1, #0
	strh r1, [r5, #8]
	movs r0, #0x6b
	strh r0, [r5, #0xa]
	adds r0, r4, #0
	adds r0, #0x2c
	strb r7, [r0]
	adds r3, r4, #0
	adds r3, #0x2d
	movs r0, #0xff
	strb r0, [r3]
	ldr r0, [r6]
	asrs r0, r0, #8
	strh r0, [r5, #0x16]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	strh r0, [r5, #0x18]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r1, [r5, #0x1c]
	adds r3, #1
	movs r0, #0x10
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x31
	strb r2, [r0]
	ldr r0, _08042218 @ =0x00002024
	str r0, [r5, #0x10]
	strh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	strh r1, [r4, #8]
_08042212:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042218: .4byte 0x00002024

	thumb_func_start sub_804221C
sub_804221C: @ 0x0804221C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r1, #0
	str r2, [sp]
	mov ip, r3
	mov r1, ip
	adds r1, #0x3c
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r1]
	adds r1, #0x1d
	strb r0, [r1]
	ldr r0, _08042260 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08042268
	ldr r1, _08042264 @ =gUnknown_084ADEF0
	lsls r2, r4, #2
	adds r0, r2, r1
	ldrh r3, [r0]
	mov r0, ip
	adds r0, #0x48
	strh r3, [r0]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2]
	mov r3, ip
	adds r3, #0x4a
	strh r0, [r3]
	b _080423D6
	.align 2, 0
_08042260: .4byte gGameMode
_08042264: .4byte gUnknown_084ADEF0
_08042268:
	cmp r0, #4
	bne _080422A0
	ldr r0, _08042298 @ =0x04000128
	ldr r1, [r0]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	ldr r2, _0804229C @ =gUnknown_084ADF38
	lsls r1, r1, #2
	adds r0, r4, #0
	subs r0, #0xe
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, r2
	ldrh r3, [r0]
	mov r0, ip
	adds r0, #0x48
	strh r3, [r0]
	adds r2, #2
	adds r1, r1, r2
	ldrh r0, [r1]
	mov r3, ip
	adds r3, #0x4a
	strh r0, [r3]
	b _080423D6
	.align 2, 0
_08042298: .4byte 0x04000128
_0804229C: .4byte gUnknown_084ADF38
_080422A0:
	cmp r0, #5
	bne _08042360
	ldr r3, _080422DC @ =0x04000128
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r6, r0, #0x1e
	cmp r4, #0x10
	bne _080422E4
	ldr r2, _080422E0 @ =gUnknown_084ADF38
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, #0x20
	adds r0, r0, r2
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x48
	strh r1, [r0]
	ldr r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	adds r0, #0x20
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r1, ip
	adds r1, #0x4a
	b _080423D4
	.align 2, 0
_080422DC: .4byte 0x04000128
_080422E0: .4byte gUnknown_084ADF38
_080422E4:
	ldr r0, _08042358 @ =gUnknown_03005150
	ldrb r1, [r0]
	movs r2, #0x10
	lsls r2, r6
	ands r2, r1
	adds r0, r6, #4
	asrs r2, r0
	movs r5, #0
	movs r3, #0
	movs r0, #0x48
	add r0, ip
	mov sl, r0
	mov r0, ip
	adds r0, #0x4a
	str r0, [sp, #4]
	subs r4, #0xe
	mov sb, r4
	mov r4, ip
	adds r4, #0x6c
	cmp r5, r6
	bhs _0804232A
	adds r7, r1, #0
	movs r1, #0x10
	mov r8, r1
_08042314:
	mov r0, r8
	lsls r0, r3
	ands r0, r7
	adds r1, r3, #4
	asrs r0, r1
	cmp r0, r2
	bne _08042324
	adds r5, #1
_08042324:
	adds r3, #1
	cmp r3, r6
	blo _08042314
_0804232A:
	cmp r2, #0
	bne _08042330
	rsbs r5, r5, #0
_08042330:
	lsls r1, r2, #2
	mov r2, sb
	lsls r0, r2, #4
	adds r1, r1, r0
	ldr r3, _0804235C @ =gUnknown_084ADF38
	adds r2, r1, r3
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	ldrh r2, [r2]
	adds r0, r0, r2
	mov r2, sl
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	ldr r3, [sp, #4]
	strh r0, [r3]
	b _080423DA
	.align 2, 0
_08042358: .4byte gUnknown_03005150
_0804235C: .4byte gUnknown_084ADF38
_08042360:
	ldr r0, _08042378 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0804239C
	cmp r0, #1
	bgt _0804237C
	cmp r0, #0
	beq _08042386
	b _080423D6
	.align 2, 0
_08042378: .4byte 0x04000128
_0804237C:
	cmp r0, #2
	beq _080423B4
	cmp r0, #3
	beq _080423C6
	b _080423D6
_08042386:
	mov r0, ip
	adds r0, #0x48
	movs r1, #0xe8
	strh r1, [r0]
	mov r1, ip
	adds r1, #0x4a
	ldr r0, _08042398 @ =0x0000033D
	b _080423D4
	.align 2, 0
_08042398: .4byte 0x0000033D
_0804239C:
	mov r0, ip
	adds r0, #0x48
	ldr r1, _080423AC @ =0x00000631
	strh r1, [r0]
	mov r1, ip
	adds r1, #0x4a
	ldr r0, _080423B0 @ =0x0000039E
	b _080423D4
	.align 2, 0
_080423AC: .4byte 0x00000631
_080423B0: .4byte 0x0000039E
_080423B4:
	mov r0, ip
	adds r0, #0x48
	movs r1, #0xe8
	strh r1, [r0]
	mov r1, ip
	adds r1, #0x4a
	movs r0, #0xae
	lsls r0, r0, #1
	b _080423D4
_080423C6:
	mov r0, ip
	adds r0, #0x48
	ldr r1, _080423F4 @ =0x00000631
	strh r1, [r0]
	mov r1, ip
	adds r1, #0x4a
	ldr r0, _080423F8 @ =0x00000117
_080423D4:
	strh r0, [r1]
_080423D6:
	mov r4, ip
	adds r4, #0x6c
_080423DA:
	movs r0, #0
	strb r0, [r4]
	mov r1, ip
	str r0, [r1, #0x4c]
	ldr r2, [sp]
	cmp r2, #0
	bne _08042404
	ldr r0, _080423FC @ =gUnknown_03005BE0
	str r0, [r1, #0x64]
	ldr r0, _08042400 @ =gUnknown_03005B90
	str r0, [r1, #0x68]
	b _0804240E
	.align 2, 0
_080423F4: .4byte 0x00000631
_080423F8: .4byte 0x00000117
_080423FC: .4byte gUnknown_03005BE0
_08042400: .4byte gUnknown_03005B90
_08042404:
	ldr r0, _08042420 @ =gUnknown_03005C30
	mov r3, ip
	str r0, [r3, #0x64]
	ldr r0, _08042424 @ =gUnknown_03005B40
	str r0, [r3, #0x68]
_0804240E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042420: .4byte gUnknown_03005C30
_08042424: .4byte gUnknown_03005B40

	thumb_func_start sub_8042428
sub_8042428: @ 0x08042428
	mov ip, r0
	adds r0, #0x48
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	mov r2, ip
	str r0, [r2]
	mov r0, ip
	adds r0, #0x4a
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r2, #4]
	ldr r0, _08042540 @ =gUnknown_030060E0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	movs r3, #0
	movs r2, #0
	mov r0, ip
	strh r1, [r0, #0x38]
	strh r1, [r0, #0x3a]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xe
	mov r1, ip
	str r0, [r1, #0x10]
	strb r3, [r1, #0x14]
	movs r0, #6
	strb r0, [r1, #0xe]
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0x78
	strb r0, [r1, #0x15]
	strh r2, [r1, #0x16]
	strb r3, [r1, #0x19]
	strb r3, [r1, #0x18]
	adds r1, #0x27
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #3
	mov r1, ip
	str r0, [r1, #0x2c]
	movs r0, #8
	str r0, [r1, #0x30]
	movs r0, #0x60
	str r0, [r1, #0x34]
	mov r0, ip
	adds r0, #0x40
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r1, #0x42
	ldr r0, _08042544 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	mov r0, ip
	strh r2, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	str r2, [r0, #0x28]
	adds r0, #0x26
	strb r3, [r0]
	mov r1, ip
	strh r2, [r1, #0x1a]
	adds r1, #0x46
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	adds r0, #6
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r0, #4
	strb r3, [r0]
	subs r0, #0x1b
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	mov r1, ip
	adds r1, #0x5a
	movs r0, #0x1e
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x3c
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xa
	strb r0, [r1]
	mov r2, ip
	adds r2, #0x6d
	movs r1, #3
	movs r3, #0
_08042502:
	stm r2!, {r3}
	adds r0, r1, #0
	subs r1, #1
	cmp r0, #0
	bne _08042502
	mov r1, ip
	adds r1, #0x6d
	movs r0, #0x7f
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x3c
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #0
	bne _08042562
	ldr r0, _08042548 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _08042562
	ldr r3, _0804254C @ =gUnknown_03005034
	ldr r1, [r3]
	ldr r0, _08042550 @ =0x00008C9F
	cmp r1, r0
	bls _08042558
	ldr r0, _08042554 @ =gUnknown_03004FE4
	str r2, [r0]
	str r2, [r3]
	mov r0, ip
	str r2, [r0, #0x4c]
	b _08042562
	.align 2, 0
_08042540: .4byte gUnknown_030060E0
_08042544: .4byte 0x0000FFFF
_08042548: .4byte gGameMode
_0804254C: .4byte gUnknown_03005034
_08042550: .4byte 0x00008C9F
_08042554: .4byte gUnknown_03004FE4
_08042558:
	ldr r1, _08042578 @ =gUnknown_03004FE4
	mov r2, ip
	ldr r0, [r2, #0x4c]
	str r0, [r1]
	str r0, [r3]
_08042562:
	mov r0, ip
	adds r0, #0x59
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #1
	beq _08042596
	cmp r2, #1
	bgt _0804257C
	cmp r2, #0
	beq _08042586
	b _080425C2
	.align 2, 0
_08042578: .4byte gUnknown_03004FE4
_0804257C:
	cmp r2, #2
	beq _080425A8
	cmp r2, #3
	beq _080425BA
	b _080425C2
_08042586:
	mov r0, ip
	adds r0, #0x80
	strb r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	b _080425C2
_08042596:
	mov r0, ip
	adds r0, #0x80
	movs r1, #0
	strb r1, [r0]
	adds r0, #4
	str r1, [r0]
	subs r0, #3
	strb r1, [r0]
	b _080425C2
_080425A8:
	mov r0, ip
	adds r0, #0x80
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	b _080425C2
_080425BA:
	mov r1, ip
	adds r1, #0x80
	movs r0, #0
	strb r0, [r1]
_080425C2:
	bx lr

	thumb_func_start sub_80425C4
sub_80425C4: @ 0x080425C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r6, #0
	bne _080425DC
	add r6, sp, #8
_080425DC:
	cmp r7, #0
	bne _080425E2
	add r7, sp, #0xc
_080425E2:
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r3, r0, r1
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r4, r1]
	subs r1, r0, r1
	movs r0, #0x27
	adds r0, r0, r4
	mov r8, r0
	ldrb r2, [r0]
	movs r5, #0xa
	ldrsh r0, [r4, r5]
	ldr r5, _08042678 @ =0x000002FF
	cmp r0, r5
	bgt _0804260E
	movs r0, #0x80
	orrs r2, r0
_0804260E:
	movs r0, #9
	add r0, sp
	mov sb, r0
	str r0, [sp]
	ldr r5, _0804267C @ =sub_803FE44
	mov sl, r5
	str r5, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	adds r5, r0, #0
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	mov ip, r0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r4, r1]
	adds r1, r0, r1
	mov r0, r8
	ldrb r2, [r0]
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	ldr r3, _08042678 @ =0x000002FF
	cmp r0, r3
	bgt _08042652
	movs r0, #0x80
	orrs r2, r0
_08042652:
	mov r4, sp
	adds r4, #0xa
	str r4, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, ip
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	adds r1, r0, #0
	cmp r5, r1
	bge _08042680
	adds r2, r5, #0
	mov r3, sb
	ldrb r0, [r3]
	strb r0, [r6]
	str r1, [r7]
	b _08042688
	.align 2, 0
_08042678: .4byte 0x000002FF
_0804267C: .4byte sub_803FE44
_08042680:
	adds r2, r1, #0
	ldrb r0, [r4]
	strb r0, [r6]
	str r5, [r7]
_08042688:
	adds r0, r2, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_804269C
sub_804269C: @ 0x0804269C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r6, #0
	bne _080426B4
	add r6, sp, #8
_080426B4:
	cmp r7, #0
	bne _080426BA
	add r7, sp, #0xc
_080426BA:
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r3, r0, r1
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r4, r1]
	subs r1, r0, r1
	movs r0, #0x27
	adds r0, r0, r4
	mov r8, r0
	ldrb r2, [r0]
	movs r5, #0xa
	ldrsh r0, [r4, r5]
	ldr r5, _0804274C @ =0x000002FF
	cmp r0, r5
	bgt _080426E6
	movs r0, #0x80
	orrs r2, r0
_080426E6:
	movs r0, #9
	add r0, sp
	mov sb, r0
	str r0, [sp]
	ldr r5, _08042750 @ =sub_803FE44
	mov sl, r5
	str r5, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_803FA74
	adds r5, r0, #0
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	mov ip, r0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r4, r1]
	adds r1, r0, r1
	mov r0, r8
	ldrb r2, [r0]
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	ldr r3, _0804274C @ =0x000002FF
	cmp r0, r3
	bgt _08042728
	movs r0, #0x80
	orrs r2, r0
_08042728:
	mov r4, sp
	adds r4, #0xa
	str r4, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, ip
	movs r3, #8
	bl sub_803FA74
	adds r1, r0, #0
	cmp r5, r1
	bge _08042754
	adds r2, r5, #0
	mov r3, sb
	ldrb r0, [r3]
	strb r0, [r6]
	str r1, [r7]
	b _0804275C
	.align 2, 0
_0804274C: .4byte 0x000002FF
_08042750: .4byte sub_803FE44
_08042754:
	adds r2, r1, #0
	ldrb r0, [r4]
	strb r0, [r6]
	str r5, [r7]
_0804275C:
	adds r0, r2, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8042770
sub_8042770: @ 0x08042770
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r6, #0
	bne _08042788
	add r6, sp, #8
_08042788:
	cmp r7, #0
	bne _0804278E
	add r7, sp, #0xc
_0804278E:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r4, r1]
	subs r3, r0, r1
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r1, r0, r1
	movs r0, #0x27
	adds r0, r0, r4
	mov r8, r0
	ldrb r2, [r0]
	movs r5, #0xa
	ldrsh r0, [r4, r5]
	ldr r5, _08042824 @ =0x000002FF
	cmp r0, r5
	bgt _080427BA
	movs r0, #0x80
	orrs r2, r0
_080427BA:
	movs r0, #9
	add r0, sp
	mov sb, r0
	str r0, [sp]
	ldr r5, _08042828 @ =sub_803FF84
	mov sl, r5
	str r5, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	adds r5, r0, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r1, #0xf
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	mov ip, r0
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r1, r0, r1
	mov r0, r8
	ldrb r2, [r0]
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	ldr r3, _08042824 @ =0x000002FF
	cmp r0, r3
	bgt _080427FE
	movs r0, #0x80
	orrs r2, r0
_080427FE:
	mov r4, sp
	adds r4, #0xa
	str r4, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, ip
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	adds r1, r0, #0
	cmp r5, r1
	bge _0804282C
	adds r2, r5, #0
	mov r3, sb
	ldrb r0, [r3]
	strb r0, [r6]
	str r1, [r7]
	b _08042834
	.align 2, 0
_08042824: .4byte 0x000002FF
_08042828: .4byte sub_803FF84
_0804282C:
	adds r2, r1, #0
	ldrb r0, [r4]
	strb r0, [r6]
	str r5, [r7]
_08042834:
	adds r0, r2, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8042848
sub_8042848: @ 0x08042848
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804288C
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	bne _0804286A
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #4
	strb r0, [r1]
_0804286A:
	ldr r1, [r4, #0x10]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08042884
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
_08042884:
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
_0804288C:
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xe0
	ands r0, r1
	ldr r1, _080428F4 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x3d
	movs r6, #0
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	ldr r0, [r4, #0x10]
	ldr r1, _080428F8 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r5, r4, #0
	adds r5, #0x59
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bne _080428C8
	movs r0, #0x78
	bl m4aSongNumStop
_080428C8:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #3
	bne _080428D8
	ldr r0, [r4, #0x10]
	ldr r1, _080428FC @ =0xF9FFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
_080428D8:
	adds r0, r4, #0
	adds r0, #0x58
	strb r6, [r0]
	adds r0, r4, #0
	bl sub_804726C
	ldr r0, [r4, #0x10]
	movs r1, #0x13
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080428F4: .4byte 0xFFFFFBFF
_080428F8: .4byte 0xFFFF7FFF
_080428FC: .4byte 0xF9FFFFFF

	thumb_func_start sub_8042900
sub_8042900: @ 0x08042900
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #3
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r7, r0, r1
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	ldr r3, _080429AC @ =0x000002FF
	mov sb, r3
	cmp r0, sb
	bgt _08042932
	movs r2, #0x80
	orrs r2, r5
_08042932:
	movs r3, #8
	rsbs r3, r3, #0
	movs r6, #0
	str r6, [sp]
	ldr r0, _080429B0 @ =sub_803FE44
	mov r8, r0
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_803FA74
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042956
	lsls r1, r2, #8
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
	strh r6, [r4, #8]
_08042956:
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #3
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r3, r0, r1
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r5, #0xa
	ldrsh r0, [r4, r5]
	cmp r0, sb
	bgt _08042974
	movs r0, #0x80
	orrs r2, r0
_08042974:
	str r6, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_803FA74
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042992
	lsls r1, r2, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	strh r6, [r4, #8]
_08042992:
	add r2, sp, #0xc
	ldr r0, _080429B4 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080429B8
	adds r0, r4, #0
	add r1, sp, #8
	bl sub_8046DE8
	b _080429C0
	.align 2, 0
_080429AC: .4byte 0x000002FF
_080429B0: .4byte sub_803FE44
_080429B4: .4byte gUnknown_03005004
_080429B8:
	adds r0, r4, #0
	add r1, sp, #8
	bl sub_8046E34
_080429C0:
	adds r2, r0, #0
	cmp r2, #0
	bge _08042A5A
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x18
	adds r1, #6
	rsbs r1, r1, #0
	cmp r2, r1
	bge _080429DA
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _08042A5A
_080429DA:
	add r0, sp, #8
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
	ldr r0, _08042A20 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080429EE
	rsbs r2, r2, #0
_080429EE:
	lsls r1, r2, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8042848
	add r0, sp, #8
	ldrb r2, [r0]
	adds r0, r2, #0
	adds r0, #0x20
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08042A24
	movs r0, #0
	strh r0, [r4, #8]
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	movs r1, #0xbd
	lsls r1, r1, #4
	cmp r0, r1
	ble _08042A3E
	strh r1, [r4, #0xa]
	b _08042A3E
	.align 2, 0
_08042A20: .4byte gUnknown_03005004
_08042A24:
	adds r1, r2, #0
	adds r1, #0x10
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	bne _08042A36
	strh r1, [r4, #0xa]
	ldrh r0, [r4, #8]
	b _08042A58
_08042A36:
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0xa]
_08042A3E:
	movs r3, #0xa
	ldrsh r1, [r4, r3]
	cmp r1, #0
	bge _08042A48
	rsbs r1, r1, #0
_08042A48:
	strh r1, [r4, #0xc]
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08042A5A
	rsbs r0, r1, #0
_08042A58:
	strh r0, [r4, #0xc]
_08042A5A:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8042A68
sub_8042A68: @ 0x08042A68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #3
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r7, r0, r1
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	ldr r3, _08042B14 @ =0x000002FF
	mov sb, r3
	cmp r0, sb
	bgt _08042A9A
	movs r2, #0x80
	orrs r2, r5
_08042A9A:
	movs r3, #8
	rsbs r3, r3, #0
	movs r6, #0
	str r6, [sp]
	ldr r0, _08042B18 @ =sub_803FE44
	mov r8, r0
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_803FA74
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042ABE
	lsls r1, r2, #8
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
	strh r6, [r4, #8]
_08042ABE:
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #3
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r3, r0, r1
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r5, #0xa
	ldrsh r0, [r4, r5]
	cmp r0, sb
	bgt _08042ADC
	movs r0, #0x80
	orrs r2, r0
_08042ADC:
	str r6, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_803FA74
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042AFA
	lsls r1, r2, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	strh r6, [r4, #8]
_08042AFA:
	add r2, sp, #0xc
	ldr r0, _08042B1C @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042B20
	adds r0, r4, #0
	add r1, sp, #8
	bl sub_8046E34
	b _08042B28
	.align 2, 0
_08042B14: .4byte 0x000002FF
_08042B18: .4byte sub_803FE44
_08042B1C: .4byte gUnknown_03005004
_08042B20:
	adds r0, r4, #0
	add r1, sp, #8
	bl sub_8046DE8
_08042B28:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042B80
	ldr r0, _08042B78 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042B3C
	rsbs r2, r2, #0
_08042B3C:
	lsls r1, r2, #8
	ldr r0, [r4, #4]
	subs r0, r0, r1
	str r0, [r4, #4]
	add r0, sp, #8
	ldrb r2, [r0]
	adds r0, r2, #0
	adds r0, #0x20
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08042B7C
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0x40
	cmp r0, #0
	ble _08042B7C
	strb r2, [r4, #0x14]
	adds r0, r4, #0
	bl sub_8042848
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08042B74
	rsbs r0, r0, #0
_08042B74:
	strh r0, [r4, #0xc]
	b _08042B80
	.align 2, 0
_08042B78: .4byte gUnknown_03005004
_08042B7C:
	movs r0, #0
	strh r0, [r4, #0xa]
_08042B80:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8042B90
sub_8042B90: @ 0x08042B90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r0, #0x27
	ldrb r4, [r0]
	ldr r0, _08042BE0 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _08042BEC
	ldr r0, [r5]
	asrs r0, r0, #8
	subs r0, #3
	movs r1, #0xe
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	mov ip, r0
	ldr r0, [r5, #4]
	asrs r7, r0, #8
	adds r2, r4, #0
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldr r0, _08042BE4 @ =0x000002FF
	cmp r1, r0
	bgt _08042BCE
	adds r2, r3, #0
	orrs r2, r4
_08042BCE:
	movs r3, #8
	rsbs r3, r3, #0
	str r6, [sp]
	ldr r0, _08042BE8 @ =sub_803FE44
	str r0, [sp, #4]
	mov r0, ip
	adds r1, r7, #0
	b _08042C0A
	.align 2, 0
_08042BE0: .4byte gUnknown_03005004
_08042BE4: .4byte 0x000002FF
_08042BE8: .4byte sub_803FE44
_08042BEC:
	ldr r0, [r5]
	asrs r0, r0, #8
	subs r0, #3
	movs r1, #0xe
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	movs r2, #0
	str r2, [sp]
	ldr r2, _08042C40 @ =sub_803FE44
	str r2, [sp, #4]
	adds r2, r4, #0
_08042C0A:
	bl sub_803FA74
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042C24
	lsls r1, r2, #8
	ldr r0, [r5]
	subs r0, r0, r1
	str r0, [r5]
	movs r0, #0
	strh r0, [r5, #8]
	ldrh r0, [r5, #0xa]
	strh r0, [r5, #0xc]
_08042C24:
	ldr r0, _08042C44 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	add r4, sp, #0xc
	cmp r0, #0
	beq _08042C48
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sub_8046E34
	b _08042C52
	.align 2, 0
_08042C40: .4byte sub_803FE44
_08042C44: .4byte gUnknown_03005004
_08042C48:
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sub_8046DE8
_08042C52:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042C80
	ldr r0, _08042C7C @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042C66
	rsbs r2, r2, #0
_08042C66:
	lsls r0, r2, #8
	ldr r1, [r5, #4]
	subs r1, r1, r0
	str r1, [r5, #4]
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08042CDE
	movs r0, #0
	strh r0, [r5, #0xa]
	b _08042CDE
	.align 2, 0
_08042C7C: .4byte gUnknown_03005004
_08042C80:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _08042CDE
	ldr r0, _08042CA0 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042CA4
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sub_8046DE8
	b _08042CAE
	.align 2, 0
_08042CA0: .4byte gUnknown_03005004
_08042CA4:
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sub_8046E34
_08042CAE:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042CDE
	ldr r0, _08042CE8 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042CC2
	rsbs r2, r2, #0
_08042CC2:
	lsls r1, r2, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	add r0, sp, #8
	ldrb r0, [r0]
	movs r4, #0
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_8042848
	strh r4, [r5, #0xa]
	ldrh r0, [r5, #8]
	strh r0, [r5, #0xc]
_08042CDE:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042CE8: .4byte gUnknown_03005004

	thumb_func_start sub_8042CEC
sub_8042CEC: @ 0x08042CEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r0, #0x27
	ldrb r3, [r0]
	ldr r0, _08042D34 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	mov ip, r0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08042D40
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, #3
	movs r1, #0xe
	ldrsb r1, [r5, r1]
	adds r7, r0, r1
	ldr r0, [r5, #4]
	asrs r6, r0, #8
	adds r2, r3, #0
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldr r0, _08042D38 @ =0x000002FF
	cmp r1, r0
	bgt _08042D28
	mov r2, ip
	orrs r2, r3
_08042D28:
	str r4, [sp]
	ldr r0, _08042D3C @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	b _08042D5A
	.align 2, 0
_08042D34: .4byte gUnknown_03005004
_08042D38: .4byte 0x000002FF
_08042D3C: .4byte sub_803FE44
_08042D40:
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, #3
	movs r1, #0xe
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	movs r2, #0
	str r2, [sp]
	ldr r2, _08042D90 @ =sub_803FE44
	str r2, [sp, #4]
	adds r2, r3, #0
_08042D5A:
	movs r3, #8
	bl sub_803FA74
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042D76
	lsls r1, r2, #8
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	movs r0, #0
	strh r0, [r5, #8]
	ldrh r0, [r5, #0xa]
	strh r0, [r5, #0xc]
_08042D76:
	ldr r0, _08042D94 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	add r4, sp, #0xc
	cmp r0, #0
	beq _08042D98
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sub_8046E34
	b _08042DA2
	.align 2, 0
_08042D90: .4byte sub_803FE44
_08042D94: .4byte gUnknown_03005004
_08042D98:
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sub_8046DE8
_08042DA2:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042DD0
	ldr r0, _08042DCC @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042DB6
	rsbs r2, r2, #0
_08042DB6:
	lsls r0, r2, #8
	ldr r1, [r5, #4]
	subs r1, r1, r0
	str r1, [r5, #4]
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08042E2E
	movs r0, #0
	strh r0, [r5, #0xa]
	b _08042E2E
	.align 2, 0
_08042DCC: .4byte gUnknown_03005004
_08042DD0:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _08042E2E
	ldr r0, _08042DF0 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042DF4
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sub_8046DE8
	b _08042DFE
	.align 2, 0
_08042DF0: .4byte gUnknown_03005004
_08042DF4:
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sub_8046E34
_08042DFE:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042E2E
	ldr r0, _08042E38 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042E12
	rsbs r2, r2, #0
_08042E12:
	lsls r1, r2, #8
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	add r0, sp, #8
	ldrb r0, [r0]
	movs r4, #0
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_8042848
	strh r4, [r5, #0xa]
	ldrh r0, [r5, #8]
	strh r0, [r5, #0xc]
_08042E2E:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042E38: .4byte gUnknown_03005004

	thumb_func_start sub_8042E3C
sub_8042E3C: @ 0x08042E3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r3, [r4, #0xa]
	adds r5, r3, #0
	ldr r0, _08042E90 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	asrs r0, r0, #0x1f
	ands r0, r2
	movs r1, #8
	ldrsh r2, [r4, r1]
	cmp r2, #0
	bne _08042E64
	cmp r3, #0
	beq _08042E72
_08042E64:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
_08042E72:
	subs r0, #0x20
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _08042EAE
	cmp r0, #1
	bgt _08042E94
	cmp r0, #0
	beq _08042E9E
	b _08042EBC
	.align 2, 0
_08042E90: .4byte gUnknown_03005004
_08042E94:
	cmp r0, #2
	beq _08042EA6
	cmp r0, #3
	beq _08042EB6
	b _08042EBC
_08042E9E:
	adds r0, r4, #0
	bl sub_8042900
	b _08042EBC
_08042EA6:
	adds r0, r4, #0
	bl sub_8042A68
	b _08042EBC
_08042EAE:
	adds r0, r4, #0
	bl sub_8042B90
	b _08042EBC
_08042EB6:
	adds r0, r4, #0
	bl sub_8042CEC
_08042EBC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8042EC4
sub_8042EC4: @ 0x08042EC4
	push {r4, lr}
	adds r3, r0, #0
	ldr r1, [r3, #0x10]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08042EE0
	movs r0, #6
	strb r0, [r3, #0xe]
	movs r0, #0xe
	strb r0, [r3, #0xf]
	adds r2, r3, #0
	adds r2, #0x40
	b _08042F22
_08042EE0:
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r3, #0x10]
	adds r2, r3, #0
	adds r2, #0x40
	movs r0, #0
	strb r0, [r2]
	movs r0, #0xf
	ldrsb r0, [r3, r0]
	adds r4, r0, #0
	subs r4, #0xe
	ldr r0, _08042F64 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08042F06
	rsbs r4, r4, #0
_08042F06:
	ldrb r0, [r3, #0x14]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08042F12
	rsbs r4, r4, #0
_08042F12:
	movs r0, #6
	strb r0, [r3, #0xe]
	movs r0, #0xe
	strb r0, [r3, #0xf]
	lsls r1, r4, #8
	ldr r0, [r3, #4]
	adds r0, r0, r1
	str r0, [r3, #4]
_08042F22:
	ldr r0, [r3, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x1e
	ands r0, r1
	adds r1, #0x10
	ands r0, r1
	subs r1, #0xf0
	ands r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0x58
	movs r4, #0
	strb r4, [r0]
	ldr r0, [r3, #0x10]
	ldr r1, _08042F68 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r3, #0x10]
	movs r0, #0x78
	strb r0, [r3, #0x15]
	adds r0, r3, #0
	adds r0, #0x3d
	strb r4, [r0]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0x3d
	ble _08042F5C
	strb r4, [r2]
_08042F5C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08042F64: .4byte gUnknown_03005004
_08042F68: .4byte 0xFFFF7FFF

	thumb_func_start sub_8042F6C
sub_8042F6C: @ 0x08042F6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #3
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r6, r0, r1
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	ldr r3, _08043030 @ =0x000002FF
	mov sb, r3
	cmp r0, sb
	bgt _08042F9E
	movs r2, #0x80
	orrs r2, r5
_08042F9E:
	movs r3, #8
	rsbs r3, r3, #0
	movs r7, #0
	str r7, [sp]
	ldr r0, _08043034 @ =sub_803FE44
	mov r8, r0
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_803FA74
	adds r2, r0, #0
	cmp r2, #0
	bgt _08042FCE
	lsls r1, r2, #8
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
	strh r7, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_08042FCE:
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #3
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r3, r0, r1
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r5, #0xa
	ldrsh r0, [r4, r5]
	cmp r0, sb
	bgt _08042FEC
	movs r0, #0x80
	orrs r2, r0
_08042FEC:
	str r7, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_803FA74
	adds r2, r0, #0
	cmp r2, #0
	bgt _08043016
	lsls r1, r2, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	strh r7, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_08043016:
	add r2, sp, #0xc
	ldr r0, _08043038 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804303C
	adds r0, r4, #0
	add r1, sp, #8
	bl sub_8046DE8
	b _08043044
	.align 2, 0
_08043030: .4byte 0x000002FF
_08043034: .4byte sub_803FE44
_08043038: .4byte gUnknown_03005004
_0804303C:
	adds r0, r4, #0
	add r1, sp, #8
	bl sub_8046E34
_08043044:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08043076
	ldr r0, _08043084 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043058
	rsbs r2, r2, #0
_08043058:
	lsls r1, r2, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	add r0, sp, #8
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r4, #0x14]
	strh r1, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_08043076:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043084: .4byte gUnknown_03005004

	thumb_func_start sub_8043088
sub_8043088: @ 0x08043088
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #3
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r6, r0, r1
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	ldr r3, _0804314C @ =0x000002FF
	mov sb, r3
	cmp r0, sb
	bgt _080430BA
	movs r2, #0x80
	orrs r2, r5
_080430BA:
	movs r3, #8
	rsbs r3, r3, #0
	movs r7, #0
	str r7, [sp]
	ldr r0, _08043150 @ =sub_803FE44
	mov r8, r0
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_803FA74
	adds r2, r0, #0
	cmp r2, #0
	bgt _080430EA
	lsls r1, r2, #8
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
	strh r7, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_080430EA:
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #3
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r3, r0, r1
	ldr r0, [r4, #4]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r5, #0xa
	ldrsh r0, [r4, r5]
	cmp r0, sb
	bgt _08043108
	movs r0, #0x80
	orrs r2, r0
_08043108:
	str r7, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_803FA74
	adds r2, r0, #0
	cmp r2, #0
	bgt _08043132
	lsls r1, r2, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	strh r7, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_08043132:
	add r2, sp, #0xc
	ldr r0, _08043154 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043158
	adds r0, r4, #0
	add r1, sp, #8
	bl sub_8046E34
	b _08043160
	.align 2, 0
_0804314C: .4byte 0x000002FF
_08043150: .4byte sub_803FE44
_08043154: .4byte gUnknown_03005004
_08043158:
	adds r0, r4, #0
	add r1, sp, #8
	bl sub_8046DE8
_08043160:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08043180
	ldr r0, _08043190 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043174
	rsbs r2, r2, #0
_08043174:
	lsls r0, r2, #8
	ldr r1, [r4, #4]
	subs r1, r1, r0
	str r1, [r4, #4]
	movs r0, #0
	strh r0, [r4, #0xa]
_08043180:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043190: .4byte gUnknown_03005004

	thumb_func_start sub_8043194
sub_8043194: @ 0x08043194
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x27
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	subs r6, r0, r1
	ldr r0, [r4, #4]
	asrs r5, r0, #8
	ldrb r2, [r2]
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	ldr r0, _08043208 @ =0x000002FF
	cmp r1, r0
	bgt _080431BE
	movs r0, #0x80
	orrs r2, r0
_080431BE:
	movs r3, #8
	rsbs r3, r3, #0
	movs r7, #0
	str r7, [sp]
	ldr r0, _0804320C @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_803FA74
	adds r2, r0, #0
	cmp r2, #0
	bgt _080431EE
	lsls r1, r2, #8
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
	strh r7, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_080431EE:
	ldr r0, _08043210 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	add r5, sp, #0xc
	cmp r0, #0
	beq _08043214
	adds r0, r4, #0
	add r1, sp, #8
	adds r2, r5, #0
	bl sub_8046E34
	b _0804321E
	.align 2, 0
_08043208: .4byte 0x000002FF
_0804320C: .4byte sub_803FE44
_08043210: .4byte gUnknown_03005004
_08043214:
	adds r0, r4, #0
	add r1, sp, #8
	adds r2, r5, #0
	bl sub_8046DE8
_0804321E:
	adds r2, r0, #0
	cmp r2, #0
	bgt _0804324C
	ldr r0, _08043248 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043232
	rsbs r2, r2, #0
_08043232:
	lsls r0, r2, #8
	ldr r1, [r4, #4]
	subs r1, r1, r0
	str r1, [r4, #4]
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080432AC
	movs r0, #0
	strh r0, [r4, #0xa]
	b _080432AC
	.align 2, 0
_08043248: .4byte gUnknown_03005004
_0804324C:
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _080432AC
	ldr r0, _0804326C @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043270
	adds r0, r4, #0
	add r1, sp, #8
	adds r2, r5, #0
	bl sub_8046DE8
	b _0804327A
	.align 2, 0
_0804326C: .4byte gUnknown_03005004
_08043270:
	adds r0, r4, #0
	add r1, sp, #8
	adds r2, r5, #0
	bl sub_8046E34
_0804327A:
	adds r2, r0, #0
	cmp r2, #0
	bgt _080432AC
	ldr r0, _080432B4 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804328E
	rsbs r2, r2, #0
_0804328E:
	lsls r1, r2, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	add r0, sp, #8
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r4, #0x14]
	strh r1, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_080432AC:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080432B4: .4byte gUnknown_03005004

	thumb_func_start sub_80432B8
sub_80432B8: @ 0x080432B8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x27
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, #2
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	adds r5, r0, r1
	ldr r0, [r4, #4]
	asrs r3, r0, #8
	ldrb r2, [r2]
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	ldr r0, _0804332C @ =0x000002FF
	cmp r1, r0
	bgt _080432E2
	movs r0, #0x80
	orrs r2, r0
_080432E2:
	movs r6, #0
	str r6, [sp]
	ldr r0, _08043330 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r3, #0
	movs r3, #8
	bl sub_803FA74
	adds r2, r0, #0
	cmp r2, #0
	bgt _08043310
	lsls r1, r2, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	strh r6, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2]
_08043310:
	ldr r0, _08043334 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	add r5, sp, #0xc
	cmp r0, #0
	beq _08043338
	adds r0, r4, #0
	add r1, sp, #8
	adds r2, r5, #0
	bl sub_8046E34
	b _08043342
	.align 2, 0
_0804332C: .4byte 0x000002FF
_08043330: .4byte sub_803FE44
_08043334: .4byte gUnknown_03005004
_08043338:
	adds r0, r4, #0
	add r1, sp, #8
	adds r2, r5, #0
	bl sub_8046DE8
_08043342:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08043370
	ldr r0, _0804336C @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043356
	rsbs r2, r2, #0
_08043356:
	lsls r0, r2, #8
	ldr r1, [r4, #4]
	subs r1, r1, r0
	str r1, [r4, #4]
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080433D0
	movs r0, #0
	strh r0, [r4, #0xa]
	b _080433D0
	.align 2, 0
_0804336C: .4byte gUnknown_03005004
_08043370:
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _080433D0
	ldr r0, _08043390 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08043394
	adds r0, r4, #0
	add r1, sp, #8
	adds r2, r5, #0
	bl sub_8046DE8
	b _0804339E
	.align 2, 0
_08043390: .4byte gUnknown_03005004
_08043394:
	adds r0, r4, #0
	add r1, sp, #8
	adds r2, r5, #0
	bl sub_8046E34
_0804339E:
	adds r2, r0, #0
	cmp r2, #0
	bgt _080433D0
	ldr r0, _080433D8 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080433B2
	rsbs r2, r2, #0
_080433B2:
	lsls r1, r2, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	add r0, sp, #8
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r4, #0x14]
	strh r1, [r4, #0xa]
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_080433D0:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080433D8: .4byte gUnknown_03005004

	thumb_func_start sub_80433DC
sub_80433DC: @ 0x080433DC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #8]
	ldrh r5, [r4, #0xa]
	movs r3, #0
	ldr r0, [r4, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08043402
	adds r2, r4, #0
	adds r2, #0x80
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
	strb r3, [r4, #0x19]
	strb r3, [r4, #0x18]
	b _08043458
_08043402:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x18
	adds r0, r3, #0
	subs r0, #0x20
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0804344A
	cmp r0, #1
	bgt _08043430
	cmp r0, #0
	beq _0804343A
	b _08043458
_08043430:
	cmp r0, #2
	beq _08043442
	cmp r0, #3
	beq _08043452
	b _08043458
_0804343A:
	adds r0, r4, #0
	bl sub_8042F6C
	b _08043458
_08043442:
	adds r0, r4, #0
	bl sub_8043088
	b _08043458
_0804344A:
	adds r0, r4, #0
	bl sub_8043194
	b _08043458
_08043452:
	adds r0, r4, #0
	bl sub_80432B8
_08043458:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8043460

