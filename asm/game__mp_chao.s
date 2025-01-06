.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateMultiplayerChao
CreateMultiplayerChao: @ 0x08028034
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
	ldr r0, _080280A8 @ =Task_802816C
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
_080280A8: .4byte Task_802816C
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

	thumb_func_start Task_802816C
Task_802816C: @ 0x0802816C
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
	ldr r0, _080281F0 @ =Task_80286B0
	str r0, [r1, #8]
	b _08028354
	.align 2, 0
_080281F0: .4byte Task_80286B0
_080281F4:
	movs r2, #0
	mov r8, r2
	ldr r1, _080282F4 @ =gMultiplayerPlayerTasks
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
_080282F4: .4byte gMultiplayerPlayerTasks
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
	ldr r0, _0802833C @ =Task_80286B0
_0802832E:
	str r0, [r1, #8]
	movs r0, #0xa3
	bl m4aSongNumStart
	b _08028354
	.align 2, 0
_08028338: .4byte gCurTask
_0802833C: .4byte Task_80286B0
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
	ldr r1, _0802840C @ =gMultiplayerPlayerTasks
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
	ldr r0, _08028410 @ =gStageTime
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
_0802840C: .4byte gMultiplayerPlayerTasks
_08028410: .4byte gStageTime
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
	ldr r3, _080284A0 @ =gPlayerCharacterIdleAnims
	ldr r2, _080284A4 @ =gMultiplayerCharacters
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
_080284A0: .4byte gPlayerCharacterIdleAnims
_080284A4: .4byte gMultiplayerCharacters
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
	ldr r1, _0802858C @ =gMultiplayerPlayerTasks
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
_0802858C: .4byte gMultiplayerPlayerTasks
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
	ldr r3, _08028608 @ =gPlayerCharacterIdleAnims
	ldr r2, _0802860C @ =gMultiplayerCharacters
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
_08028608: .4byte gPlayerCharacterIdleAnims
_0802860C: .4byte gMultiplayerCharacters
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

	thumb_func_start Task_80286B0
Task_80286B0: @ 0x080286B0
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
	ldr r1, _08028738 @ =gMultiplayerPlayerTasks
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	mov r4, r8
	ldr r0, _0802873C @ =gStageTime
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
_08028738: .4byte gMultiplayerPlayerTasks
_0802873C: .4byte gStageTime
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
	ldr r3, _080287C8 @ =gPlayerCharacterIdleAnims
	ldr r2, _080287CC @ =gMultiplayerCharacters
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
_080287C8: .4byte gPlayerCharacterIdleAnims
_080287CC: .4byte gMultiplayerCharacters
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
	ldr r1, _080288C4 @ =gMultiplayerPlayerTasks
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
_080288C4: .4byte gMultiplayerPlayerTasks
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
	ldr r0, _08028908 @ =0x000002BA @ SA1_ANIM_CHAO_SHOCKED
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
	ldr r1, _0802894C @ =gMultiplayerPlayerTasks
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
_0802894C: .4byte gMultiplayerPlayerTasks
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
	ldr r4, _080289A0 @ =sa2__sub_801EC3C
	str r4, [sp]
	bl sa2__sub_801F100
	cmp r0, #0
	bge _080289DC
	lsls r1, r0, #8
	ldr r0, [r6, #0x34]
	subs r0, r0, r1
	b _080289C6
	.align 2, 0
_080289A0: .4byte sa2__sub_801EC3C
_080289A4:
	asrs r0, r3, #8
	asrs r1, r4, #8
	adds r2, #0x54
	ldrh r2, [r2]
	lsrs r2, r2, #7
	movs r3, #1
	ands r2, r3
	ldr r3, _08028A08 @ =sa2__sub_801EC3C
	str r3, [sp]
	movs r3, #8
	bl sa2__sub_801F100
	cmp r0, #0
	bge _080289DC
	lsls r1, r0, #8
	ldr r0, [r6, #0x34]
	adds r0, r0, r1
_080289C6:
	str r0, [r6, #0x34]
	ldr r0, _08028A0C @ =0x000002BA @ SA1_ANIM_CHAO_SHOCKED
	strh r0, [r5, #0xa]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08028A10 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08028A14 @ =Task_8028A1C
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
_08028A08: .4byte sa2__sub_801EC3C
_08028A0C: .4byte 0x000002BA
_08028A10: .4byte gCurTask
_08028A14: .4byte Task_8028A1C
_08028A18: .4byte gCamera

	thumb_func_start Task_8028A1C
Task_8028A1C: @ 0x08028A1C
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
	ldr r0, _08028A8C @ =Task_80286B0
	b _08028A94
	.align 2, 0
_08028A8C: .4byte Task_80286B0
_08028A90:
	ldr r1, [r6]
	ldr r0, _08028AA8 @ =Task_802816C
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
_08028AA8: .4byte Task_802816C

	thumb_func_start sub_8028AAC
sub_8028AAC: @ 0x08028AAC
	push {r4, r5, r6, r7, lr}
	ldr r2, _08028B0C @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r5, r2, r4
	ldr r3, _08028B10 @ =gMultiplayerPlayerTasks
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
_08028B10: .4byte gMultiplayerPlayerTasks
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
	bl sa2__sub_8004418
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
