.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start MultiBootMain
MultiBootMain: @ 0x08007110
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	bl MultiBootCheckComplete
	cmp r0, #0
	beq _08007128
	b _08007618
_08007128:
	adds r0, r7, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	str r0, [sp]
	cmp r1, #0xf
	bls _0800713C
	subs r0, r1, #1
	ldr r1, [sp]
	strb r0, [r1]
	b _08007618
_0800713C:
	adds r0, r7, #0
	adds r0, #0x48
	ldrb r1, [r0]
	mov sl, r0
	cmp r1, #0
	beq _08007190
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08007180 @ =0x04000128
	ldrh r0, [r2]
	movs r5, #0xfc
	ands r5, r0
	cmp r5, #8
	beq _08007190
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r3, [sp]
	strb r0, [r3]
	mov r0, sl
	strb r1, [r0]
	strh r1, [r7, #0x16]
	ldr r0, _08007184 @ =0x04000134
	strh r1, [r0]
	ldr r3, _08007188 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _0800718C @ =0x0400012A
	strh r1, [r0]
	movs r0, #8
	eors r0, r5
	b _0800761A
	.align 2, 0
_08007180: .4byte 0x04000128
_08007184: .4byte 0x04000134
_08007188: .4byte 0x00002003
_0800718C: .4byte 0x0400012A
_08007190:
	ldrb r0, [r7, #0x18]
	cmp r0, #0xdf
	bls _08007212
	adds r0, r7, #0
	bl MultiBootHandShake
	adds r5, r0, #0
	cmp r5, #0
	beq _080071A4
	b _0800761A
_080071A4:
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _080071C0
	ldrb r0, [r7, #0x18]
	cmp r0, #0xe1
	bls _080071C0
	adds r0, r7, #0
	bl MultiBootCheckComplete
	cmp r0, #0
	bne _080071C0
	b _080075A4
_080071C0:
	adds r0, r7, #0
	bl MultiBootCheckComplete
	cmp r0, #0
	beq _080071CC
	b _08007618
_080071CC:
	ldrh r0, [r7, #0x16]
	adds r2, r0, #0
	cmp r2, #0
	bne _0800720C
	strb r2, [r7, #0x1e]
	strb r2, [r7, #0x18]
	strb r2, [r7, #0x1d]
	movs r0, #0xf
	ldr r1, [sp]
	strb r0, [r1]
	mov r3, sl
	strb r2, [r3]
	strh r2, [r7, #0x16]
	ldr r0, _080071FC @ =0x04000134
	strh r2, [r0]
	ldr r1, _08007200 @ =0x04000128
	ldr r3, _08007204 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08007208 @ =0x0400012A
	strh r2, [r0]
	movs r0, #0x71
	b _0800761A
	.align 2, 0
_080071FC: .4byte 0x04000134
_08007200: .4byte 0x04000128
_08007204: .4byte 0x00002003
_08007208: .4byte 0x0400012A
_0800720C:
	subs r0, #1
	strh r0, [r7, #0x16]
	b _08007618
_08007212:
	ldrb r0, [r7, #0x18]
	cmp r0, #2
	bne _0800721A
	b _08007354
_0800721A:
	cmp r0, #2
	bgt _08007228
	cmp r0, #0
	beq _08007236
	cmp r0, #1
	beq _080072F4
	b _080074C4
_08007228:
	cmp r0, #0xd0
	bne _0800722E
	b _080073A0
_0800722E:
	cmp r0, #0xd1
	bne _08007234
	b _08007440
_08007234:
	b _080074C4
_08007236:
	movs r3, #0xe
	movs r5, #3
	ldr r0, _0800727C @ =0x04000120
	ldrh r0, [r0, #6]
	adds r1, r0, #0
	ldr r0, _08007280 @ =0x0000FFFF
	ldrb r2, [r7, #0x1e]
	adds r6, r2, #0
	cmp r1, r0
	bne _0800725E
	adds r4, r1, #0
	ldr r1, _08007284 @ =0x04000126
_0800724E:
	asrs r3, r3, #1
	subs r1, #2
	subs r5, #1
	cmp r5, #0
	beq _0800725E
	ldrh r0, [r1]
	cmp r0, r4
	beq _0800724E
_0800725E:
	movs r0, #0xe
	ands r3, r0
	strb r3, [r7, #0x1d]
	movs r5, #3
	ldr r0, _0800727C @ =0x04000120
	ldrh r0, [r0, #6]
	adds r4, r0, #0
	asrs r0, r2, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800728C
	ldr r0, _08007288 @ =0x00007208
	b _080072B2
	.align 2, 0
_0800727C: .4byte 0x04000120
_08007280: .4byte 0x0000FFFF
_08007284: .4byte 0x04000126
_08007288: .4byte 0x00007208
_0800728C:
	subs r5, #1
	cmp r5, #0
	beq _080072B8
	lsls r0, r5, #1
	ldr r1, _080072E0 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	adds r0, r2, #0
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800728C
	adds r0, r1, #0
	lsls r0, r5
	movs r1, #0xe4
	lsls r1, r1, #7
	orrs r0, r1
_080072B2:
	cmp r4, r0
	beq _0800728C
	movs r3, #0
_080072B8:
	adds r0, r3, #0
	ands r0, r6
	strb r0, [r7, #0x1e]
	cmp r3, #0
	bne _080072C8
	movs r0, #0xf
	ldr r2, [sp]
	strb r0, [r2]
_080072C8:
	ldr r3, [sp]
	ldrb r0, [r3]
	cmp r0, #0
	bne _080072E4
	ldrb r0, [r7, #0x1d]
	ldrb r1, [r7, #0x1e]
	cmp r0, r1
	beq _080072EA
	adds r0, r7, #0
	bl MultiBootStartProbe
	b _080072F4
	.align 2, 0
_080072E0: .4byte 0x04000120
_080072E4:
	subs r0, #1
	ldr r2, [sp]
	strb r0, [r2]
_080072EA:
	ldrb r1, [r7, #0x1e]
	movs r3, #0xc4
	lsls r3, r3, #7
	adds r0, r3, #0
	b _080073FE
_080072F4:
	adds r1, r7, #0
	adds r1, #0x49
	movs r0, #0
	strb r0, [r1]
	movs r5, #3
	mov ip, r1
	ldr r3, _0800734C @ =0x03000400
_08007302:
	lsls r0, r5, #1
	ldr r2, _08007350 @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r0, r4, #8
	subs r2, r5, #1
	cmp r0, #0x72
	bne _0800732C
	lsls r0, r2, #1
	adds r0, r0, r3
	strh r4, [r0]
	movs r0, #0xff
	ands r4, r0
	movs r0, #1
	lsls r0, r5
	cmp r4, r0
	bne _0800732C
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
_0800732C:
	adds r5, r2, #0
	cmp r5, #0
	bne _08007302
	ldrb r0, [r7, #0x1d]
	mov r3, ip
	ldrb r3, [r3]
	cmp r0, r3
	bne _080072EA
	movs r0, #2
	strb r0, [r7, #0x18]
	mov r0, ip
	ldrb r1, [r0]
	movs r2, #0xc2
	lsls r2, r2, #7
	b _080073FC
	.align 2, 0
_0800734C: .4byte 0x03000400
_08007350: .4byte 0x04000120
_08007354:
	movs r5, #3
	movs r3, #0x49
	adds r3, r3, r7
	mov ip, r3
	mov r4, ip
	movs r6, #1
	ldr r0, _08007398 @ =0x03000400
	mov sb, r0
	ldr r1, _0800739C @ =0x04000120
	mov r8, r1
_08007368:
	ldrb r3, [r4]
	adds r0, r3, #0
	asrs r0, r5
	ands r0, r6
	subs r2, r5, #1
	cmp r0, #0
	beq _0800738E
	lsls r0, r5, #1
	add r0, r8
	ldrh r1, [r0]
	lsls r0, r2, #1
	add r0, sb
	ldrh r0, [r0]
	cmp r1, r0
	beq _0800738E
	adds r0, r6, #0
	lsls r0, r5
	eors r3, r0
	strb r3, [r4]
_0800738E:
	adds r5, r2, #0
	cmp r5, #0
	bne _08007368
	b _0800752C
	.align 2, 0
_08007398: .4byte 0x03000400
_0800739C: .4byte 0x04000120
_080073A0:
	movs r3, #1
	movs r5, #3
	movs r2, #0x49
	adds r2, r2, r7
	mov ip, r2
	movs r0, #0x19
	adds r0, r0, r7
	mov r8, r0
	movs r6, #0
	ldr r1, _08007408 @ =0x03000400
	mov sb, r1
_080073B6:
	lsls r0, r5, #1
	ldr r2, _0800740C @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	subs r2, r5, #1
	mov r1, r8
	adds r0, r1, r2
	strb r4, [r0]
	mov r0, ip
	ldrb r1, [r0]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080073EC
	asrs r0, r4, #8
	subs r0, #0x72
	cmp r0, #1
	bls _080073E0
	b _080075AA
_080073E0:
	lsls r0, r2, #1
	add r0, sb
	ldrh r0, [r0]
	cmp r4, r0
	bne _080073EC
	movs r3, #0
_080073EC:
	adds r5, r2, #0
	cmp r5, #0
	bne _080073B6
	cmp r3, #0
	bne _08007410
	ldrb r1, [r7, #0x1c]
	movs r2, #0xc6
	lsls r2, r2, #7
_080073FC:
	adds r0, r2, #0
_080073FE:
	orrs r1, r0
	adds r0, r7, #0
	bl MultiBootSend
	b _0800761A
	.align 2, 0
_08007408: .4byte 0x03000400
_0800740C: .4byte 0x04000120
_08007410:
	movs r0, #0xd1
	strb r0, [r7, #0x18]
	movs r3, #0x11
	movs r5, #3
	mov r1, r8
	adds r1, #2
_0800741C:
	ldrb r0, [r1]
	adds r3, r3, r0
	subs r1, #1
	subs r5, #1
	cmp r5, #0
	bne _0800741C
	strb r3, [r7, #0x14]
	movs r0, #0xff
	ands r3, r0
	movs r1, #0xc8
	lsls r1, r1, #7
	adds r0, r1, #0
	orrs r3, r0
	adds r0, r7, #0
	adds r1, r3, #0
	bl MultiBootSend
	b _0800761A
_08007440:
	movs r5, #3
	movs r2, #0x49
	ldrb r1, [r2, r7]
	ldr r2, _08007480 @ =0x04000126
	movs r3, #1
_0800744A:
	ldrh r0, [r2]
	adds r4, r0, #0
	adds r0, r1, #0
	asrs r0, r5
	ands r0, r3
	cmp r0, #0
	beq _08007460
	asrs r0, r4, #8
	cmp r0, #0x73
	beq _08007460
	b _080075E0
_08007460:
	subs r2, #2
	subs r5, #1
	cmp r5, #0
	bne _0800744A
	adds r0, r7, #0
	bl MultiBoot
	adds r5, r0, #0
	cmp r5, #0
	bne _08007484
	movs r0, #0xe0
	strb r0, [r7, #0x18]
	adds r0, #0xb0
	strh r0, [r7, #0x16]
	b _08007618
	.align 2, 0
_08007480: .4byte 0x04000126
_08007484:
	movs r1, #0
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r3, [sp]
	strb r0, [r3]
	mov r0, sl
	strb r1, [r0]
	strh r1, [r7, #0x16]
	ldr r0, _080074B4 @ =0x04000134
	strh r1, [r0]
	ldr r2, _080074B8 @ =0x04000128
	ldr r3, _080074BC @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080074C0 @ =0x0400012A
	strh r1, [r0]
	movs r0, #0x1e
	ldr r1, [sp]
	strb r0, [r1]
	movs r0, #0x70
	b _0800761A
	.align 2, 0
_080074B4: .4byte 0x04000134
_080074B8: .4byte 0x04000128
_080074BC: .4byte 0x00002003
_080074C0: .4byte 0x0400012A
_080074C4:
	movs r5, #3
	movs r2, #0x49
	adds r2, r2, r7
	mov ip, r2
	mov r8, ip
	movs r3, #1
	mov sb, r3
_080074D2:
	mov r0, r8
	ldrb r6, [r0]
	adds r0, r6, #0
	asrs r0, r5
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _0800750C
	lsls r0, r5, #1
	ldr r2, _08007528 @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r2, r4, #8
	ldrb r0, [r7, #0x18]
	lsrs r0, r0, #1
	movs r1, #0x62
	subs r1, r1, r0
	mov r3, sb
	lsls r3, r5
	cmp r2, r1
	bne _08007506
	movs r0, #0xff
	ands r4, r0
	cmp r4, r3
	beq _0800750C
_08007506:
	eors r6, r3
	mov r3, r8
	strb r6, [r3]
_0800750C:
	subs r5, #1
	cmp r5, #0
	bne _080074D2
	ldrb r0, [r7, #0x18]
	cmp r0, #0xc4
	bne _0800752C
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r7, #0x1e]
	strb r5, [r7, #0x18]
	b _080072EA
	.align 2, 0
_08007528: .4byte 0x04000120
_0800752C:
	mov r1, ip
	ldrb r2, [r1]
	cmp r2, #0
	bne _0800756C
	strb r2, [r7, #0x1e]
	strb r2, [r7, #0x18]
	strb r2, [r7, #0x1d]
	movs r0, #0xf
	ldr r3, [sp]
	strb r0, [r3]
	mov r0, sl
	strb r2, [r0]
	strh r2, [r7, #0x16]
	ldr r0, _0800755C @ =0x04000134
	strh r2, [r0]
	ldr r1, _08007560 @ =0x04000128
	ldr r3, _08007564 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08007568 @ =0x0400012A
	strh r2, [r0]
	movs r0, #0x50
	b _0800761A
	.align 2, 0
_0800755C: .4byte 0x04000134
_08007560: .4byte 0x04000128
_08007564: .4byte 0x00002003
_08007568: .4byte 0x0400012A
_0800756C:
	ldrb r0, [r7, #0x18]
	adds r0, #2
	strb r0, [r7, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc4
	bne _0800757C
	b _080072EA
_0800757C:
	ldrb r0, [r7, #0x18]
	ldr r1, [r7, #0x28]
	adds r0, r0, r1
	subs r1, r0, #3
	ldrb r2, [r1]
	lsls r2, r2, #8
	subs r0, #4
	ldrb r1, [r0]
	orrs r1, r2
	adds r0, r7, #0
	bl MultiBootSend
	adds r5, r0, #0
	cmp r5, #0
	bne _0800761A
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _08007618
_080075A4:
	bl MultiBootWaitSendDone
	b _0800713C
_080075AA:
	strb r6, [r7, #0x1e]
	strb r6, [r7, #0x18]
	strb r6, [r7, #0x1d]
	movs r0, #0xf
	ldr r1, [sp]
	strb r0, [r1]
	mov r2, sl
	strb r6, [r2]
	strh r6, [r7, #0x16]
	ldr r0, _080075D0 @ =0x04000134
	strh r6, [r0]
	ldr r1, _080075D4 @ =0x04000128
	ldr r3, _080075D8 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080075DC @ =0x0400012A
	strh r6, [r0]
	movs r0, #0x60
	b _0800761A
	.align 2, 0
_080075D0: .4byte 0x04000134
_080075D4: .4byte 0x04000128
_080075D8: .4byte 0x00002003
_080075DC: .4byte 0x0400012A
_080075E0:
	movs r1, #0
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r2, [sp]
	strb r0, [r2]
	mov r3, sl
	strb r1, [r3]
	strh r1, [r7, #0x16]
	ldr r0, _08007608 @ =0x04000134
	strh r1, [r0]
	ldr r2, _0800760C @ =0x04000128
	ldr r3, _08007610 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _08007614 @ =0x0400012A
	strh r1, [r0]
	movs r0, #0x60
	b _0800761A
	.align 2, 0
_08007608: .4byte 0x04000134
_0800760C: .4byte 0x04000128
_08007610: .4byte 0x00002003
_08007614: .4byte 0x0400012A
_08007618:
	movs r0, #0
_0800761A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start MultiBootSend
MultiBootSend: @ 0x0800762C
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r5, _08007658 @ =0x04000128
	ldrh r0, [r5]
	movs r4, #0x8c
	ands r4, r0
	cmp r4, #8
	bne _08007664
	ldr r0, _0800765C @ =0x0400012A
	strh r1, [r0]
	ldr r1, _08007660 @ =0x00002083
	adds r0, r1, #0
	strh r0, [r5]
	adds r1, r2, #0
	adds r1, #0x48
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	b _08007690
	.align 2, 0
_08007658: .4byte 0x04000128
_0800765C: .4byte 0x0400012A
_08007660: .4byte 0x00002083
_08007664:
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _08007698 @ =0x04000134
	strh r1, [r0]
	ldr r2, _0800769C @ =0x00002003
	adds r0, r2, #0
	strh r0, [r5]
	ldr r0, _080076A0 @ =0x0400012A
	strh r1, [r0]
	movs r0, #8
	eors r4, r0
	adds r0, r4, #0
_08007690:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08007698: .4byte 0x04000134
_0800769C: .4byte 0x00002003
_080076A0: .4byte 0x0400012A

	thumb_func_start MultiBootStartProbe
MultiBootStartProbe: @ 0x080076A4
	adds r2, r0, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	beq _080076E8
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _080076D8 @ =0x04000134
	strh r1, [r0]
	ldr r2, _080076DC @ =0x04000128
	ldr r3, _080076E0 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080076E4 @ =0x0400012A
	strh r1, [r0]
	b _080076F4
	.align 2, 0
_080076D8: .4byte 0x04000134
_080076DC: .4byte 0x04000128
_080076E0: .4byte 0x00002003
_080076E4: .4byte 0x0400012A
_080076E8:
	adds r1, r2, #0
	adds r1, #0x4a
	strb r0, [r1]
	strb r0, [r2, #0x1e]
	movs r0, #1
	strb r0, [r2, #0x18]
_080076F4:
	bx lr
	.align 2, 0

	thumb_func_start MultiBootStartMaster
MultiBootStartMaster: @ 0x080076F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r7, r1, #0
	adds r5, r2, #0
	ldr r0, [sp, #0x18]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r1, ip
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08007728
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _08007728
	mov r6, ip
	adds r6, #0x4a
	ldrb r2, [r6]
	cmp r2, #0
	beq _08007764
_08007728:
	movs r1, #0
	mov r2, ip
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r2, #0x4a
	movs r0, #0xf
	strb r0, [r2]
	mov r0, ip
	adds r0, #0x48
	strb r1, [r0]
	mov r3, ip
	strh r1, [r3, #0x16]
	ldr r0, _08007754 @ =0x04000134
	strh r1, [r0]
	ldr r2, _08007758 @ =0x04000128
	ldr r3, _0800775C @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _08007760 @ =0x0400012A
	strh r1, [r0]
	b _0800782E
	.align 2, 0
_08007754: .4byte 0x04000134
_08007758: .4byte 0x04000128
_0800775C: .4byte 0x00002003
_08007760: .4byte 0x0400012A
_08007764:
	mov r0, ip
	str r7, [r0, #0x20]
	adds r5, #0xf
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r5, r0
	subs r0, #0xf0
	adds r1, r5, r0
	ldr r0, _080077A0 @ =0x0003FF00
	cmp r1, r0
	bls _080077B4
	mov r1, ip
	strb r2, [r1, #0x1e]
	strb r2, [r1, #0x18]
	strb r2, [r1, #0x1d]
	movs r0, #0xf
	strb r0, [r6]
	mov r0, ip
	adds r0, #0x48
	strb r2, [r0]
	strh r2, [r1, #0x16]
	ldr r0, _080077A4 @ =0x04000134
	strh r2, [r0]
	ldr r1, _080077A8 @ =0x04000128
	ldr r3, _080077AC @ =0x00002003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080077B0 @ =0x0400012A
	strh r2, [r0]
	b _0800782E
	.align 2, 0
_080077A0: .4byte 0x0003FF00
_080077A4: .4byte 0x04000134
_080077A8: .4byte 0x04000128
_080077AC: .4byte 0x00002003
_080077B0: .4byte 0x0400012A
_080077B4:
	adds r0, r7, r5
	mov r1, ip
	str r0, [r1, #0x24]
	mov r2, r8
	lsls r1, r2, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x13
	adds r0, r1, r2
	asrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #8
	bhi _08007818
	lsls r0, r0, #2
	ldr r1, _080077D8 @ =_080077DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080077D8: .4byte _080077DC
_080077DC: @ jump table
	.4byte _08007800 @ case 0
	.4byte _08007800 @ case 1
	.4byte _08007800 @ case 2
	.4byte _08007800 @ case 3
	.4byte _0800780A @ case 4
	.4byte _08007810 @ case 5
	.4byte _08007810 @ case 6
	.4byte _08007810 @ case 7
	.4byte _08007810 @ case 8
_08007800:
	lsls r4, r3, #3
	asrs r1, r2, #0x18
	movs r0, #3
	subs r0, r0, r1
	b _08007816
_0800780A:
	movs r0, #0x38
	adds r4, r3, #0
	b _08007816
_08007810:
	lsls r4, r3, #3
	asrs r0, r2, #0x18
	subs r0, #1
_08007816:
	orrs r4, r0
_08007818:
	movs r0, #0x3f
	ands r4, r0
	lsls r0, r4, #1
	movs r3, #0x7f
	rsbs r3, r3, #0
	adds r1, r3, #0
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x1c]
	movs r0, #0xd0
	strb r0, [r1, #0x18]
_0800782E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start MultiBootHandShake
MultiBootHandShake: @ 0x08007838
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #0xe0
	beq _08007854
	cmp r0, #0xe0
	blt _08007864
	cmp r0, #0xe8
	bgt _08007864
	cmp r0, #0xe7
	blt _08007864
	movs r4, #3
	ldrb r5, [r2, #0x1e]
	b _080078C4
_08007854:
	movs r1, #0
	movs r0, #0xe1
	strb r0, [r2, #0x18]
	str r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0xd
	str r0, [r2]
	b _080078B6
_08007864:
	movs r4, #3
	ldrb r5, [r2, #0x1e]
	movs r6, #1
	ldr r1, _080078C0 @ =0x04000126
_0800786C:
	ldrh r0, [r1]
	adds r3, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq _08007880
	ldr r0, [r2, #4]
	cmp r3, r0
	bne _08007854
_08007880:
	subs r1, #2
	subs r4, #1
	cmp r4, #0
	bne _0800786C
	ldrb r0, [r2, #0x18]
	adds r0, #1
	strb r0, [r2, #0x18]
	ldr r1, [r2]
	ldrh r0, [r2]
	str r0, [r2, #4]
	cmp r1, #0
	bne _080078AE
	ldr r0, [r2, #0x28]
	adds r1, r0, #0
	adds r1, #0xac
	ldrb r1, [r1]
	adds r0, #0xad
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r2, #4]
	lsls r1, r1, #5
	str r1, [r2]
_080078AE:
	ldr r0, [r2]
	lsrs r0, r0, #5
	str r0, [r2]
_080078B4:
	ldrh r1, [r2]
_080078B6:
	adds r0, r2, #0
	bl MultiBootSend
	b _0800794E
	.align 2, 0
_080078C0: .4byte 0x04000126
_080078C4:
	lsls r0, r4, #1
	ldr r1, _0800790C @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080078E0
	ldr r0, [r2, #4]
	cmp r3, r0
	bne _08007910
_080078E0:
	subs r4, #1
	cmp r4, #0
	bne _080078C4
	ldrb r0, [r2, #0x18]
	adds r0, #1
	strb r0, [r2, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe9
	beq _0800794C
	ldr r0, [r2, #0x28]
	adds r1, r0, #0
	adds r1, #0xae
	ldrb r1, [r1]
	adds r0, #0xaf
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r2]
	str r1, [r2, #4]
	b _080078B4
	.align 2, 0
_0800790C: .4byte 0x04000120
_08007910:
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _0800793C @ =0x04000134
	strh r1, [r0]
	ldr r2, _08007940 @ =0x04000128
	ldr r3, _08007944 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _08007948 @ =0x0400012A
	strh r1, [r0]
	movs r0, #0x71
	b _0800794E
	.align 2, 0
_0800793C: .4byte 0x04000134
_08007940: .4byte 0x04000128
_08007944: .4byte 0x00002003
_08007948: .4byte 0x0400012A
_0800794C:
	movs r0, #0
_0800794E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start MultiBootInit
MultiBootInit: @ 0x08007954
	adds r2, r0, #0
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _08007980 @ =0x04000134
	strh r1, [r0]
	ldr r2, _08007984 @ =0x04000128
	ldr r3, _08007988 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _0800798C @ =0x0400012A
	strh r1, [r0]
	bx lr
	.align 2, 0
_08007980: .4byte 0x04000134
_08007984: .4byte 0x04000128
_08007988: .4byte 0x00002003
_0800798C: .4byte 0x0400012A

	thumb_func_start MultiBootCheckComplete
MultiBootCheckComplete: @ 0x08007990
	ldrb r0, [r0, #0x18]
	cmp r0, #0xe9
	beq _0800799A
	movs r0, #0
	b _0800799C
_0800799A:
	movs r0, #1
_0800799C:
	bx lr
	.align 2, 0

	thumb_func_start MultiBootWaitSendDone
MultiBootWaitSendDone: @ 0x080079A0
	push {r4, r5, lr}
	movs r2, #0
	ldr r3, _080079E0 @ =0x04000128
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080079C4
	ldr r5, _080079E4 @ =0x0000795C
	movs r4, #0x80
_080079B4:
	adds r2, #1
	cmp r2, r5
	bgt _080079C4
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _080079B4
_080079C4:
	mov r2, pc
	lsrs r2, r2, #0x18
	movs r1, #0xc
	cmp r2, #2
	beq _080079D6
	movs r1, #0xd
	cmp r2, #8
	beq _080079D6
	movs r1, #4
_080079D6:
	subs r0, r0, r1
	bgt _080079D6
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080079E0: .4byte 0x04000128
_080079E4: .4byte 0x0000795C
