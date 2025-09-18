.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	ldr r1, _080051C0 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r7, #1
	bls _080051D8
	ldr r1, _080051C4 @ =gHBlankCopySize
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080051CC
	ldr r0, _080051C8 @ =gBgOffsetsHBlank
	ldr r0, [r0]
	adds r3, r0, #2
	b _08005200
	.align 2, 0
_080051C0: .4byte gFlags
_080051C4: .4byte gHBlankCopySize
_080051C8: .4byte gBgOffsetsHBlank
_080051CC:
	ldr r0, _080051D4 @ =gBgOffsetsHBlank
	ldr r3, [r0]
	b _08005200
	.align 2, 0
_080051D4: .4byte gBgOffsetsHBlank
_080051D8:
	ldr r1, _080051F0 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080051F4 @ =gBgOffsetsHBlank
	ldr r3, [r0]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08005200
	ldr r1, _080051F8 @ =gHBlankCopyTarget
	ldr r0, _080051FC @ =0x04000042
	b _08005204
	.align 2, 0
_080051F0: .4byte gHBlankCopySize
_080051F4: .4byte gBgOffsetsHBlank
_080051F8: .4byte gHBlankCopyTarget
_080051FC: .4byte 0x04000042
_08005200:
	ldr r1, _08005268 @ =gHBlankCopyTarget
	ldr r0, _0800526C @ =0x04000040
_08005204:
	str r0, [r1]
	mov r0, r8
	subs r1, r0, r6
	mov r2, sl
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r5, r1, #0x10
	asrs r2, r5, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0800521E
	rsbs r0, r2, #0
_0800521E:
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r4, r1, #0
	mov sb, r0
	cmp r1, #0
	bge _08005232
	rsbs r4, r1, #0
_08005232:
	lsls r0, r4, #0x11
	lsrs r7, r0, #0x10
	ldr r4, _08005270 @ =gHBlankCopySize
	ldrb r0, [r4]
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r3, r3, r0
	adds r4, r2, #0
	cmp r2, #0
	bge _0800524A
	rsbs r4, r2, #0
_0800524A:
	adds r0, r1, #0
	cmp r1, #0
	bge _08005252
	rsbs r0, r1, #0
_08005252:
	cmp r4, r0
	ble _08005324
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _080052C4
	mov r0, ip
	strb r0, [r3, #1]
	movs r2, #0
	b _080052AC
	.align 2, 0
_08005268: .4byte gHBlankCopyTarget
_0800526C: .4byte 0x04000040
_08005270: .4byte gHBlankCopySize
_08005274:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _080052A6
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strb r6, [r3]
	ldr r1, _080052C0 @ =gHBlankCopySize
	ldrb r0, [r1]
	adds r3, r3, r0
	mov r0, ip
	strb r0, [r3, #1]
_080052A6:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080052AC:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, #0
	bge _080052B8
	rsbs r0, r0, #0
_080052B8:
	cmp r2, r0
	blt _08005274
	strb r6, [r3]
	b _080053DE
	.align 2, 0
_080052C0: .4byte gHBlankCopySize
_080052C4:
	strb r6, [r3]
	adds r3, #1
	movs r2, #0
	b _08005308
_080052CC:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _08005302
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, ip
	strb r0, [r3]
	ldr r1, _08005320 @ =gHBlankCopySize
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	strb r6, [r3]
	adds r3, #1
_08005302:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08005308:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, #0
	bge _08005314
	rsbs r0, r0, #0
_08005314:
	cmp r2, r0
	blt _080052CC
	mov r2, ip
	strb r2, [r3]
	b _080053DE
	.align 2, 0
_08005320: .4byte gHBlankCopySize
_08005324:
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _08005388
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	b _08005370
_0800533E:
	adds r2, r6, #1
	strb r2, [r3]
	adds r3, #1
	mov r0, ip
	strb r0, [r3]
	ldr r1, _08005384 @ =gHBlankCopySize
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0800536A
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	subs r0, r1, r7
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0800536A:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08005370:
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	mov r2, sb
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _0800537E
	rsbs r0, r0, #0
_0800537E:
	cmp r5, r0
	blt _0800533E
	b _080053DE
	.align 2, 0
_08005384: .4byte gHBlankCopySize
_08005388:
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	b _080053CC
_08005398:
	adds r0, r6, #1
	strb r0, [r3]
	adds r3, #1
	mov r0, ip
	strb r0, [r3]
	ldr r1, _080053EC @ =gHBlankCopySize
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080053C6
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	subs r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080053C6:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080053CC:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _080053DA
	rsbs r0, r0, #0
_080053DA:
	cmp r2, r0
	blt _08005398
_080053DE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080053EC: .4byte gHBlankCopySize

.syntax divided
