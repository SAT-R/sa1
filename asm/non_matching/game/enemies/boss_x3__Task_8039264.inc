.include "constants/constants.inc"

.syntax unified
.text
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
	ldr r3, _08039600 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	adds r7, r0, #0
	ldr r0, _08039604 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0803960C
	ldr r3, _08039608 @ =gPartner
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800BF10
	b _0803960E
	.align 2, 0
_080395F8: .4byte gCamera
_080395FC: .4byte gCurTask
_08039600: .4byte gPlayer
_08039604: .4byte gNumSingleplayerCharacters
_08039608: .4byte gPartner
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
	.align 2, 0

.syntax divided
