.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Flipper_SmallBlue
CreateEntity_Flipper_SmallBlue: @ 0x08084EFC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08085000 @ =Task_Flipper_SmallBlue
	movs r2, #4
	ldrsb r2, [r7, r2]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _08085004 @ =TaskDestructor_Flipper_SmallBlue
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0xc
	adds r6, r2, r0
	movs r3, #0
	mov r1, r8
	strh r1, [r5, #4]
	mov r0, sb
	strh r0, [r5, #6]
	str r7, [r5]
	ldrb r0, [r7]
	strb r0, [r5, #8]
	strb r4, [r5, #9]
	ldrb r1, [r7, #3]
	ldr r4, _08085008 @ =0x0300003D
	adds r0, r2, r4
	strb r1, [r0]
	ldr r1, _0808500C @ =0x0300003C
	adds r0, r2, r1
	strb r3, [r0]
	movs r3, #0
	ldr r0, _08085010 @ =0x03000058
	adds r4, r2, r0
	movs r1, #0
	subs r0, #0x18
	adds r2, r2, r0
_08084F6E:
	adds r0, r4, r3
	strb r1, [r0]
	str r1, [r2]
	str r1, [r2, #0x10]
	str r1, [r2, #8]
	adds r0, r5, #0
	adds r0, #0x5a
	adds r0, r0, r3
	strb r1, [r0]
	adds r2, #4
	adds r3, #1
	ldr r0, _08085014 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r3, r0
	blt _08084F6E
	ldrb r1, [r7, #4]
	adds r0, r5, #0
	adds r0, #0x3e
	movs r4, #0
	strb r1, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r5, #0
	strh r0, [r6, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r6, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r4, [r6, #8]
	ldr r0, _08085018 @ =0x0000020A
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
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	strb r5, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	ldrb r0, [r7, #5]
	cmp r0, #0
	beq _0808501C
	movs r0, #0x90
	lsls r0, r0, #6
	b _08085020
	.align 2, 0
_08085000: .4byte Task_Flipper_SmallBlue
_08085004: .4byte TaskDestructor_Flipper_SmallBlue
_08085008: .4byte 0x0300003D
_0808500C: .4byte 0x0300003C
_08085010: .4byte 0x03000058
_08085014: .4byte gNumSingleplayerCharacters
_08085018: .4byte 0x0000020A
_0808501C:
	movs r0, #0x80
	lsls r0, r0, #6
_08085020:
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_Flipper_SmallBlue
Task_Flipper_SmallBlue: @ 0x08085038
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _080850A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r7, r1, r0
	ldr r1, [r5]
	str r1, [sp, #8]
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _080850AC @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	str r4, [sp]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	str r2, [sp, #4]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r7, #0x18]
	movs r4, #0
	ldr r6, _080850B0 @ =gPartner
	ldr r3, _080850B4 @ =gPlayer
	mov sb, r3
	movs r0, #0
	str r0, [sp, #0x10]
_08085096:
	cmp r4, #0
	beq _080850B8
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	ands r1, r0
	movs r2, #0x3c
	adds r2, r2, r5
	mov sl, r2
	b _080850C6
	.align 2, 0
_080850A8: .4byte gCurTask
_080850AC: .4byte gCamera
_080850B0: .4byte gPartner
_080850B4: .4byte gPlayer
_080850B8:
	mov r3, sb
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	ands r1, r0
	movs r0, #0x3c
	adds r0, r0, r5
	mov sl, r0
_080850C6:
	cmp r1, #0
	beq _080850CC
	b _08085488
_080850CC:
	adds r1, r5, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	asrs r0, r4
	movs r2, #1
	ands r0, r2
	mov sl, r1
	cmp r0, #0
	bne _080850E0
	b _080852AC
_080850E0:
	adds r0, r5, #0
	adds r0, #0x5a
	adds r2, r0, r4
	ldrb r1, [r2]
	str r0, [sp, #0xc]
	cmp r1, #0
	beq _08085112
	subs r0, r1, #1
	strb r0, [r2]
	movs r2, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08085112
	movs r0, #0xef
	lsls r0, r0, #1
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	movs r3, #0
	strb r3, [r0]
	adds r1, r7, #0
	adds r1, #0x21
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
_08085112:
	adds r3, r5, #0
	adds r3, #0x40
	ldr r1, [sp, #0x10]
	adds r0, r3, r1
	ldr r2, [r0]
	adds r2, #0x2a
	str r2, [r0]
	adds r1, r5, #0
	adds r1, #0x48
	ldr r0, [sp, #0x10]
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	cmp r4, #0
	beq _08085136
	str r0, [r6, #4]
	b _0808513A
_08085136:
	mov r1, sb
	str r0, [r1, #4]
_0808513A:
	adds r0, r5, #0
	adds r0, #0x50
	ldr r2, [sp, #0x10]
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r4, #0
	beq _0808514C
	str r0, [r6]
	b _08085150
_0808514C:
	mov r1, sb
	str r0, [r1]
_08085150:
	ldr r2, [sp, #0x10]
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r4, #0
	beq _0808515E
	strh r0, [r6, #0xa]
	b _08085162
_0808515E:
	mov r1, sb
	strh r0, [r1, #0xa]
_08085162:
	cmp r4, #0
	beq _0808516C
	movs r2, #0
	strh r2, [r6, #8]
	b _08085170
_0808516C:
	mov r0, sb
	strh r4, [r0, #8]
_08085170:
	cmp r4, #0
	beq _0808517A
	movs r1, #0
	strh r1, [r6, #0xc]
	b _0808517E
_0808517A:
	mov r2, sb
	strh r4, [r2, #0xc]
_0808517E:
	adds r1, r5, #0
	adds r1, #0x58
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x3d
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	blo _08085206
	ldr r0, _080851C0 @ =gPlayer + 0x6D
	cmp r4, #0
	beq _080851A0
	ldr r0, _080851C4 @ =gPartner + 0x6D
_080851A0:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r5, #0
	adds r1, #0x3e
	ldrb r1, [r1]
	cmp r0, r1
	bne _080851D8
	cmp r4, #0
	beq _080851CC
	ldr r0, [r6, #0x10]
	ldr r1, _080851C8 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	b _080851D8
	.align 2, 0
_080851C0: .4byte gPlayer + 0x6D
_080851C4: .4byte gPartner + 0x6D
_080851C8: .4byte 0xFFBFFFFF
_080851CC:
	mov r1, sb
	ldr r0, [r1, #0x10]
	ldr r1, _080851E8 @ =0xFFBFFFFF
	ands r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_080851D8:
	ldr r1, [sp, #0x10]
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r4, #0
	beq _080851EC
	strh r0, [r6, #0xa]
	b _080851F0
	.align 2, 0
_080851E8: .4byte 0xFFBFFFFF
_080851EC:
	mov r2, sb
	strh r0, [r2, #0xa]
_080851F0:
	movs r0, #1
	lsls r0, r4
	mov r3, sl
	ldrb r1, [r3]
	bics r1, r0
	strb r1, [r3]
	ldr r1, [sp, #0xc]
	adds r0, r1, r4
	movs r2, #0
	strb r2, [r0]
	b _08085488
_08085206:
	ldr r0, _08085224 @ =gPlayer
	cmp r4, #0
	beq _0808520E
	ldr r0, _08085228 @ =gPartner
_0808520E:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r4, #0
	beq _0808522C
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08085238
	.align 2, 0
_08085224: .4byte gPlayer
_08085228: .4byte gPartner
_0808522C:
	mov r3, sb
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r3, #0x10]
_08085238:
	ldr r2, _08085244 @ =gPlayer
	cmp r4, #0
	beq _08085248
	movs r0, #0
	strh r0, [r6, #8]
	b _0808524A
	.align 2, 0
_08085244: .4byte gPlayer
_08085248:
	strh r4, [r2, #8]
_0808524A:
	cmp r4, #0
	beq _08085254
	movs r1, #0
	strh r1, [r6, #0xc]
	b _08085256
_08085254:
	strh r4, [r2, #0xc]
_08085256:
	cmp r4, #0
	beq _08085268
	movs r0, #0x20
	ldr r2, _08085264 @ =gPartner + 0x40
	strb r0, [r2]
	b _08085270
	.align 2, 0
_08085264: .4byte gPartner + 0x40
_08085268:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x20
	strb r0, [r1]
_08085270:
	ldr r0, _080852A4 @ =gPlayer
	cmp r4, #0
	beq _08085278
	ldr r0, _080852A8 @ =gPartner
_08085278:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _080852A4 @ =gPlayer
	cmp r4, #0
	beq _08085286
	ldr r1, _080852A8 @ =gPartner
_08085286:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _080852A4 @ =gPlayer
	cmp r4, #0
	beq _08085292
	ldr r1, _080852A8 @ =gPartner
_08085292:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #1
	lsls r0, r4
	mov r3, sl
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
	b _08085488
	.align 2, 0
_080852A4: .4byte gPlayer
_080852A8: .4byte gPartner
_080852AC:
	adds r0, r5, #0
	adds r0, #0x5a
	adds r2, r0, r4
	ldrb r1, [r2]
	str r0, [sp, #0xc]
	cmp r1, #0
	beq _080852E4
	subs r0, r1, #1
	strb r0, [r2]
	movs r2, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080852C8
	b _08085488
_080852C8:
	ldr r0, _080852E0 @ =0x0000020A
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	movs r1, #0
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x21
	ldrb r0, [r1]
	orrs r0, r2
	b _08085486
	.align 2, 0
_080852E0: .4byte 0x0000020A
_080852E4:
	cmp r4, #0
	beq _080852F6
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08085306
	b _08085488
_080852F6:
	mov r2, sb
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08085306
	b _08085488
_08085306:
	ldr r0, _08085364 @ =gPlayer + 0x6D
	cmp r4, #0
	beq _0808530E
	ldr r0, _08085368 @ =gPartner + 0x6D
_0808530E:
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r5, #0
	adds r0, #0x3e
	mov r8, r0
	ldrb r3, [r0]
	cmp r1, r3
	blt _08085320
	b _08085488
_08085320:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808536C @ =gPlayer
	cmp r4, #0
	beq _08085334
	ldr r3, _08085370 @ =gPartner
_08085334:
	adds r0, r7, #0
	bl Coll_Player_Entity_Intersection
	cmp r0, #0
	bne _08085340
	b _08085488
_08085340:
	adds r0, r5, #0
	adds r0, #0x58
	adds r0, r0, r4
	movs r3, #0
	strb r3, [r0]
	ldr r0, _0808536C @ =gPlayer
	cmp r4, #0
	beq _08085352
	ldr r0, _08085370 @ =gPartner
_08085352:
	bl Player_TransitionCancelFlyingAndBoost
	cmp r4, #0
	beq _08085374
	ldr r0, [r6, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08085380
	.align 2, 0
_08085364: .4byte gPlayer + 0x6D
_08085368: .4byte gPartner + 0x6D
_0808536C: .4byte gPlayer
_08085370: .4byte gPartner
_08085374:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #4
	orrs r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_08085380:
	ldr r2, _08085394 @ =gPlayer
	cmp r4, #0
	beq _08085398
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
	b _080853A4
	.align 2, 0
_08085394: .4byte gPlayer
_08085398:
	mov r3, sb
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r3, #0x10]
_080853A4:
	ldr r1, _080853C4 @ =gPlayer + 0x6D
	cmp r4, #0
	beq _080853AC
	ldr r1, _080853C8 @ =gPartner + 0x6D
_080853AC:
	mov r3, r8
	ldrb r0, [r3]
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x48
	ldr r3, [sp, #0x10]
	adds r1, r0, r3
	cmp r4, #0
	beq _080853CC
	ldr r0, [r6, #4]
	b _080853CE
	.align 2, 0
_080853C4: .4byte gPlayer + 0x6D
_080853C8: .4byte gPartner + 0x6D
_080853CC:
	ldr r0, [r2, #4]
_080853CE:
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x50
	ldr r3, [sp, #0x10]
	adds r1, r0, r3
	cmp r4, #0
	beq _080853E0
	ldr r0, [r6]
	b _080853E2
_080853E0:
	ldr r0, [r2]
_080853E2:
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x40
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	ldr r1, _080853FC @ =0xFFFFF370
	str r1, [r0]
	cmp r4, #0
	beq _08085400
	movs r3, #0
	strh r3, [r6, #0xa]
	b _08085402
	.align 2, 0
_080853FC: .4byte 0xFFFFF370
_08085400:
	strh r4, [r2, #0xa]
_08085402:
	cmp r4, #0
	beq _0808540C
	movs r0, #0
	strh r0, [r6, #8]
	b _0808540E
_0808540C:
	strh r4, [r2, #8]
_0808540E:
	cmp r4, #0
	beq _08085418
	movs r1, #0
	strh r1, [r6, #0xc]
	b _0808541A
_08085418:
	strh r4, [r2, #0xc]
_0808541A:
	cmp r4, #0
	beq _0808542C
	movs r0, #0x20
	ldr r2, _08085428 @ =gPartner + 0x40
	strb r0, [r2]
	b _08085434
	.align 2, 0
_08085428: .4byte gPartner + 0x40
_0808542C:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x20
	strb r0, [r1]
_08085434:
	ldr r0, _080854FC @ =gPlayer
	cmp r4, #0
	beq _0808543C
	ldr r0, _08085500 @ =gPartner
_0808543C:
	movs r1, #0xe
	bl sa2__sub_8023B5C
	ldr r1, _080854FC @ =gPlayer
	cmp r4, #0
	beq _0808544A
	ldr r1, _08085500 @ =gPartner
_0808544A:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _080854FC @ =gPlayer
	cmp r4, #0
	beq _08085456
	ldr r1, _08085500 @ =gPartner
_08085456:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xb7
	bl m4aSongNumStart
	movs r0, #1
	lsls r0, r4
	mov r3, sl
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [sp, #0xc]
	adds r1, r0, r4
	movs r0, #0x18
	strb r0, [r1]
	ldr r0, _08085504 @ =0x0000020A
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
_08085486:
	strb r0, [r1]
_08085488:
	ldr r2, [sp, #0x10]
	adds r2, #4
	str r2, [sp, #0x10]
	adds r4, #1
	ldr r0, _08085508 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _0808549E
	b _08085096
_0808549E:
	mov r3, sl
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08085536
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080854CE
	movs r4, #0x18
	ldrsh r0, [r7, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _080854CE
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08085536
_080854CE:
	movs r2, #0
	ldr r1, _0808550C @ =gCurTask
	mov sb, r1
	mov r1, sl
	ldr r6, _08085500 @ =gPartner
	ldr r4, _08085510 @ =0xFFBFFFFF
	ldr r3, _080854FC @ =gPlayer
	movs r7, #1
	mov r8, r7
	ldr r0, _08085508 @ =gNumSingleplayerCharacters
	mov sl, r0
_080854E4:
	ldrb r0, [r1]
	asrs r0, r2
	mov r7, r8
	ands r0, r7
	cmp r0, #0
	beq _0808551A
	cmp r2, #0
	beq _08085514
	ldr r0, [r6, #0x10]
	ands r0, r4
	str r0, [r6, #0x10]
	b _0808551A
	.align 2, 0
_080854FC: .4byte gPlayer
_08085500: .4byte gPartner
_08085504: .4byte 0x0000020A
_08085508: .4byte gNumSingleplayerCharacters
_0808550C: .4byte gCurTask
_08085510: .4byte 0xFFBFFFFF
_08085514:
	ldr r0, [r3, #0x10]
	ands r0, r4
	str r0, [r3, #0x10]
_0808551A:
	adds r2, #1
	mov r7, sl
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r2, r0
	blt _080854E4
	ldrb r0, [r5, #8]
	ldr r1, [sp, #8]
	strb r0, [r1]
	mov r2, sb
	ldr r0, [r2]
	bl TaskDestroy
	b _08085542
_08085536:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08085542:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_Flipper_SmallBlue
TaskDestructor_Flipper_SmallBlue: @ 0x08085554
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
