.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Spring_Hiding
CreateEntity_Spring_Hiding: @ 0x08094FD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080950A4 @ =Task_Spring_Hiding
	ldr r1, _080950A8 @ =TaskDestructor_Spring_Hiding
	str r1, [sp]
	movs r1, #0x3c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _080950AC @ =0x0300000C
	adds r4, r2, r1
	movs r7, #0
	movs r3, #0
	mov sl, r3
	strh r5, [r0, #4]
	strh r6, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r3, r8
	strb r3, [r0, #9]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r4, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r4, #0x18]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r1]
	movs r0, #0x10
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	mov r0, sl
	strh r0, [r4, #8]
	ldr r0, _080950B0 @ =0x000001C7
	strh r0, [r4, #0xa]
	ldr r2, [sp, #4]
	ldr r1, _080950B4 @ =0x0300002C
	adds r0, r2, r1
	strb r7, [r0]
	mov r3, sl
	strh r3, [r4, #0x14]
	strh r3, [r4, #0x1c]
	ldr r0, _080950B8 @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _080950BC @ =0x0300002E
	adds r1, r2, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080950C0 @ =0x03000031
	adds r2, r2, r0
	strb r7, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080950A4: .4byte Task_Spring_Hiding
_080950A8: .4byte TaskDestructor_Spring_Hiding
_080950AC: .4byte 0x0300000C
_080950B0: .4byte 0x000001C7
_080950B4: .4byte 0x0300002C
_080950B8: .4byte 0x0300002D
_080950BC: .4byte 0x0300002E
_080950C0: .4byte 0x03000031

	thumb_func_start Task_Spring_Hiding
Task_Spring_Hiding: @ 0x080950C4
	push {r4, r5, r6, r7, lr}
	ldr r7, _0809514C @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	ldr r6, [r5]
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r3, [r6, #1]
	lsls r3, r3, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r1, _08095150 @ =gCamera
	ldrh r0, [r1]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r1, #2]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	subs r0, r3, r0
	strh r0, [r4, #0x18]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8095224
	cmp r0, #0
	beq _08095114
	ldr r1, [r7]
	ldr r0, _08095154 @ =sub_8095158
	str r0, [r1, #8]
_08095114:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08095138
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08095138
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08095144
_08095138:
	ldrb r0, [r5, #8]
	strb r0, [r6]
	ldr r0, _0809514C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08095144:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809514C: .4byte gCurTask
_08095150: .4byte gCamera
_08095154: .4byte sub_8095158

	thumb_func_start sub_8095158
sub_8095158: @ 0x08095158
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080951D4 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r1, _080951D8 @ =0x0300000C
	adds r4, r6, r1
	ldr r0, [r5]
	mov ip, r0
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, ip
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080951DC @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	subs r0, r7, r0
	strh r0, [r4, #0x16]
	ldrh r1, [r3, #2]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	subs r2, r3, r1
	strh r2, [r4, #0x18]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	mov sb, r8
	cmp r0, r1
	bhi _080951C4
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080951C4
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080951E0
_080951C4:
	ldrb r0, [r5, #8]
	mov r1, ip
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _08095210
	.align 2, 0
_080951D4: .4byte gCurTask
_080951D8: .4byte 0x0300000C
_080951DC: .4byte gCamera
_080951E0:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_8095224
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0809520A
	ldr r0, _0809521C @ =0x0300002C
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08095220 @ =Task_Spring_Hiding
	str r0, [r1, #8]
_0809520A:
	adds r0, r4, #0
	bl DisplaySprite
_08095210:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809521C: .4byte 0x0300002C
_08095220: .4byte Task_Spring_Hiding

	thumb_func_start sub_8095224
sub_8095224: @ 0x08095224
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r1
	str r2, [sp]
	str r3, [sp, #4]
	movs r1, #0
	mov sl, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	movs r5, #0
	ldr r7, _08095254 @ =gPartner
	ldr r0, _08095258 @ =gPlayer
	mov r8, r0
_0809524A:
	cmp r5, #0
	beq _0809525C
	ldr r0, [r7, #0x10]
	b _08095260
	.align 2, 0
_08095254: .4byte gPartner
_08095258: .4byte gPlayer
_0809525C:
	mov r1, r8
	ldr r0, [r1, #0x10]
_08095260:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809526A
	b _08095456
_0809526A:
	cmp r5, #0
	beq _08095272
	ldr r0, [r7, #0x10]
	b _08095276
_08095272:
	mov r2, r8
	ldr r0, [r2, #0x10]
_08095276:
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08095282
	b _08095456
_08095282:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	ldr r3, _080952DC @ =gPlayer
	cmp r5, #0
	beq _08095296
	ldr r3, _080952E0 @ =gPartner
_08095296:
	mov r0, sb
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800CE34
	cmp r0, #0
	bne _080952BE
	ldr r3, _080952DC @ =gPlayer
	cmp r5, #0
	beq _080952AC
	ldr r3, _080952E0 @ =gPartner
_080952AC:
	mov r0, sb
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_800A768
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _080952BE
	b _08095456
_080952BE:
	ldr r0, _080952DC @ =gPlayer
	cmp r5, #0
	beq _080952C6
	ldr r0, _080952E0 @ =gPartner
_080952C6:
	bl sub_8042848
	cmp r5, #0
	beq _080952E4
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _080952F2
	.align 2, 0
_080952DC: .4byte gPlayer
_080952E0: .4byte gPartner
_080952E4:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_080952F2:
	ldr r2, _08095304 @ =gPlayer
	cmp r5, #0
	beq _08095308
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08095314
	.align 2, 0
_08095304: .4byte gPlayer
_08095308:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #2
	orrs r0, r1
	mov r1, r8
	str r0, [r1, #0x10]
_08095314:
	cmp r5, #0
	beq _08095328
	ldr r0, [r7, #0x10]
	ldr r1, _08095324 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r7, #0x10]
	b _08095334
	.align 2, 0
_08095324: .4byte 0xFFFFFEFF
_08095328:
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _08095340 @ =0xFFFFFEFF
	ands r0, r1
	mov r1, r8
	str r0, [r1, #0x10]
_08095334:
	cmp r5, #0
	beq _08095348
	movs r0, #0
	ldr r1, _08095344 @ =gUnknown_03005AED
	strb r0, [r1]
	b _0809534E
	.align 2, 0
_08095340: .4byte 0xFFFFFEFF
_08095344: .4byte gUnknown_03005AED
_08095348:
	adds r0, r2, #0
	adds r0, #0x3d
	strb r5, [r0]
_0809534E:
	ldr r1, [sp, #8]
	ldrb r0, [r1, #4]
	lsls r0, r0, #6
	rsbs r0, r0, #0
	cmp r5, #0
	beq _0809535E
	strh r0, [r7, #0xa]
	b _08095360
_0809535E:
	strh r0, [r2, #0xa]
_08095360:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _08095390
	cmp r5, #0
	beq _08095370
	movs r1, #0xa
	ldrsh r0, [r7, r1]
	b _08095374
_08095370:
	movs r1, #0xa
	ldrsh r0, [r2, r1]
_08095374:
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r5, #0
	beq _08095388
	ldrh r0, [r7, #0xa]
	adds r0, r0, r1
	strh r0, [r7, #0xa]
	b _08095390
_08095388:
	mov r2, r8
	ldrh r0, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r2, #0xa]
_08095390:
	ldr r0, [sp, #8]
	ldrb r1, [r0, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080953D0
	ldr r0, _080953B4 @ =gPlayer
	cmp r5, #0
	beq _080953A4
	ldr r0, _080953B8 @ =gPartner
_080953A4:
	bl sub_8046CEC
	cmp r5, #0
	beq _080953C0
	movs r0, #0x15
	ldr r1, _080953BC @ =gUnknown_03005AF0
	strb r0, [r1]
	b _080953C6
	.align 2, 0
_080953B4: .4byte gPlayer
_080953B8: .4byte gPartner
_080953BC: .4byte gUnknown_03005AF0
_080953C0:
	movs r0, #0x15
	ldr r2, _080953CC @ =gUnknown_03005A60
	strb r0, [r2]
_080953C6:
	cmp r5, #0
	bne _080953FE
	b _08095410
	.align 2, 0
_080953CC: .4byte gUnknown_03005A60
_080953D0:
	ldr r0, _080953E8 @ =gPlayer
	cmp r5, #0
	beq _080953D8
	ldr r0, _080953EC @ =gPartner
_080953D8:
	bl sub_8046CEC
	cmp r5, #0
	beq _080953F4
	movs r0, #0x11
	ldr r1, _080953F0 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _080953FA
	.align 2, 0
_080953E8: .4byte gPlayer
_080953EC: .4byte gPartner
_080953F0: .4byte gUnknown_03005AF0
_080953F4:
	movs r0, #0x11
	ldr r2, _08095408 @ =gUnknown_03005A60
	strb r0, [r2]
_080953FA:
	cmp r5, #0
	beq _08095410
_080953FE:
	movs r0, #0xff
	ldr r1, _0809540C @ =gUnknown_03005C5D
	strb r0, [r1]
	b _08095416
	.align 2, 0
_08095408: .4byte gUnknown_03005A60
_0809540C: .4byte gUnknown_03005C5D
_08095410:
	movs r0, #0xff
	ldr r2, _08095478 @ =gUnknown_03005C0D
	strb r0, [r2]
_08095416:
	mov r0, sb
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	mov r1, sb
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0809547C @ =gPlayer
	cmp r5, #0
	beq _0809542E
	ldr r0, _08095480 @ =gPartner
_0809542E:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _0809547C @ =gPlayer
	cmp r5, #0
	beq _0809543C
	ldr r1, _08095480 @ =gPartner
_0809543C:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0809547C @ =gPlayer
	cmp r5, #0
	beq _08095448
	ldr r1, _08095480 @ =gPartner
_08095448:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r0, #1
	mov sl, r0
_08095456:
	adds r5, #1
	ldr r0, _08095484 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _08095466
	b _0809524A
_08095466:
	mov r0, sl
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08095478: .4byte gUnknown_03005C0D
_0809547C: .4byte gPlayer
_08095480: .4byte gPartner
_08095484: .4byte gUnknown_03005088

	thumb_func_start TaskDestructor_Spring_Hiding
TaskDestructor_Spring_Hiding: @ 0x08095488
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
