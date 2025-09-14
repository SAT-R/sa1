.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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
	ldr r0, _080333E8 @ =Task_8033480
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _080333EC @ =TaskDestructor_8034224
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
_080333E8: .4byte Task_8033480
_080333EC: .4byte TaskDestructor_8034224
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

@ -> Task74
	thumb_func_start Task_8033480
Task_8033480: @ 0x08033480
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
    
@ -> Task74
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
	ldr r1, _08033708 @ =TaskDestructor_8034224
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
	ldr r1, _08033718 @ =gPlayer
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
	bl sa2__sub_8004418
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
_08033708: .4byte TaskDestructor_8034224
_0803370C: .4byte 0x03000070
_08033710: .4byte 0x03000072
_08033714: .4byte 0x03000090
_08033718: .4byte gPlayer
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
	bl Coll_Player_Projectile
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
	ldr r0, _08033908 @ =Task_8033924
	movs r1, #0x80
	lsls r1, r1, #6
	mov sb, r1
	ldr r1, _0803390C @ =TaskDestructor_8034238
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
_08033908: .4byte Task_8033924
_0803390C: .4byte TaskDestructor_8034238
_08033910: .4byte 0x00000293
_08033914: .4byte 0x03000020
_08033918: .4byte 0x03000021
_0803391C: .4byte 0x03000022
_08033920: .4byte 0x03000025

    @ -> Strc60
	thumb_func_start Task_8033924
Task_8033924: @ 0x08033924
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
	ldr r1, _080339A8 @ =gPlayer
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
_080339A8: .4byte gPlayer
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
	ldr r0, _08033A8C @ =Task_8034098
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
_08033A8C: .4byte Task_8034098
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
	ldr r3, _08033B70 @ =gPlayer
	bl Coll_Player_PlatformCrumbling
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
_08033B70: .4byte gPlayer
_08033B74:
	movs r1, #0xff
	str r1, [sp]
	mov sb, r5
	b _08033B94
_08033B7C:
	ldr r0, _08033BB4 @ =gPlayer
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
_08033BB4: .4byte gPlayer
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
	ldr r5, _08033E2C @ =gPlayer
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
_08033E2C: .4byte gPlayer
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
	ldr r4, _08034088 @ =gPlayer
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
	ldr r6, _08034090 @ =gNumSingleplayerCharacters
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
	ldr r3, _08034094 @ =gPartner
	bl Coll_Player_PlatformCrumbling
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
_08034088: .4byte gPlayer
_0803408C: .4byte gUnknown_03005860
_08034090: .4byte gNumSingleplayerCharacters
_08034094: .4byte gPartner

@ -> Task54
	thumb_func_start Task_8034098
Task_8034098: @ 0x08034098
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
	ldr r1, _080341F4 @ =gOamBuffer2
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
_080341F4: .4byte gOamBuffer2
_080341F8: .4byte iwram_end
_080341FC: .4byte 0x040000D4
_08034200: .4byte 0x80000003
_08034204: .4byte 0x000001FF

	thumb_func_start TaskDestructor_8034208
TaskDestructor_8034208: @ 0x08034208
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

	thumb_func_start TaskDestructor_8034224
TaskDestructor_8034224: @ 0x08034224
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_8034238
TaskDestructor_8034238: @ 0x08034238
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
