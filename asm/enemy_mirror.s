.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Mirror
CreateEntity_Mirror: @ 0x0806FAB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	ldr r0, _0806FBAC @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #5
	bne _0806FAE4
	ldr r0, _0806FBB0 @ =gLoadedSaveGame
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	bne _0806FB9C
_0806FAE4:
	ldr r0, _0806FBB4 @ =sub_806FBDC
	ldr r1, _0806FBB8 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x48
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldr r0, _0806FBBC @ =0x0300000C
	adds r5, r4, r0
	movs r6, #0
	mov r2, sb
	strh r2, [r1, #4]
	mov r0, r8
	strh r0, [r1, #6]
	str r7, [r1]
	ldrb r0, [r7]
	strb r0, [r1, #8]
	mov r2, sl
	strb r2, [r1, #9]
	ldr r0, _0806FBC0 @ =0x03000040
	adds r2, r4, r0
	ldr r0, _0806FBC4 @ =0x0000FF60
	strh r0, [r2]
	str r6, [r1, #0x3c]
	ldr r1, _0806FBC8 @ =0x03000044
	adds r0, r4, r1
	strh r6, [r0]
	ldr r2, _0806FBCC @ =0x03000042
	adds r0, r4, r2
	strh r6, [r0]
	adds r1, #2
	adds r0, r4, r1
	strh r6, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x14
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	movs r0, #0xd8
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	ldr r2, _0806FBD0 @ =0x0300002C
	adds r0, r4, r2
	movs r1, #0
	strb r1, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	adds r2, #1
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0806FBD4 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0806FBD8 @ =0x03000031
	adds r4, r4, r1
	movs r2, #0
	strb r2, [r4]
	subs r0, #0x11
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_0806FB9C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FBAC: .4byte gCurrentLevel
_0806FBB0: .4byte gLoadedSaveGame
_0806FBB4: .4byte sub_806FBDC
_0806FBB8: .4byte TaskDestructor_8009670
_0806FBBC: .4byte 0x0300000C
_0806FBC0: .4byte 0x03000040
_0806FBC4: .4byte 0x0000FF60
_0806FBC8: .4byte 0x03000044
_0806FBCC: .4byte 0x03000042
_0806FBD0: .4byte 0x0300002C
_0806FBD4: .4byte 0x0300002E
_0806FBD8: .4byte 0x03000031

	thumb_func_start sub_806FBDC
sub_806FBDC: @ 0x0806FBDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, _0806FCA8 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	adds r0, #0xc
	adds r5, r3, r0
	ldr r1, [r7]
	mov sb, r1
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsrs r0, r1, #0x10
	str r0, [sp, #4]
	asrs r6, r1, #0x10
	ldr r1, _0806FCAC @ =0x03000040
	adds r3, r3, r1
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r7, #0x3c]
	adds r0, r0, r1
	str r0, [r7, #0x3c]
	asrs r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #0x10
	ldr r3, _0806FCB0 @ =gCamera
	ldrh r1, [r3]
	mov r8, r1
	lsrs r1, r0, #0x10
	str r1, [sp]
	asrs r0, r0, #0x10
	mov r1, r8
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r6, r0
	strh r0, [r5, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r0, r0, r1
	mov r8, r0
	cmp r2, r8
	bgt _0806FC76
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0806FC76
	movs r2, #2
	ldrsh r1, [r3, r2]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r6, r0
	bgt _0806FC76
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	bge _0806FCB4
_0806FC76:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806FC9A
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0806FC9A
	movs r2, #0x18
	ldrsh r1, [r5, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806FCB4
_0806FC9A:
	ldrb r0, [r7, #8]
	mov r3, sb
	strb r0, [r3]
	ldr r0, [r4]
	bl TaskDestroy
	b _0806FE10
	.align 2, 0
_0806FCA8: .4byte gCurTask
_0806FCAC: .4byte 0x03000040
_0806FCB0: .4byte gCamera
_0806FCB4:
	ldr r1, [r5, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806FD6E
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov ip, r1
	adds r4, r0, r1
	ldr r2, _0806FD88 @ =gPlayer
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r3, _0806FD8C @ =sa2__gUnknown_03005AF0
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	add r1, r8
	mov sl, r2
	adds r6, r3, #0
	cmp r4, r1
	bgt _0806FD08
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, ip
	subs r0, r0, r2
	adds r0, r4, r0
	cmp r0, r1
	bge _0806FD1C
	cmp r4, r1
	blt _0806FD6E
_0806FD08:
	adds r0, r6, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r3, r8
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r4
	blt _0806FD6E
_0806FD1C:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r3, r5, #0
	adds r3, #0x2d
	movs r4, #0
	ldrsb r4, [r3, r4]
	adds r1, r0, r4
	mov r2, sl
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r3, r6, #0
	adds r3, #0x39
	movs r2, #0
	ldrsb r2, [r3, r2]
	adds r3, r0, r2
	cmp r1, r3
	bgt _0806FD56
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r3
	bge _0806FD68
	cmp r1, r3
	blt _0806FD6E
_0806FD56:
	adds r0, r6, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r1
	blt _0806FD6E
_0806FD68:
	mov r0, sl
	bl sa2__sub_800CBA4
_0806FD6E:
	ldr r0, [r7, #0x3c]
	asrs r2, r0, #8
	mov r3, sb
	movs r1, #3
	ldrsb r1, [r3, r1]
	lsls r0, r1, #3
	cmp r2, r0
	bgt _0806FD90
	adds r1, r7, #0
	adds r1, #0x40
	movs r0, #0xa0
	strh r0, [r1]
	b _0806FE04
	.align 2, 0
_0806FD88: .4byte gPlayer
_0806FD8C: .4byte sa2__gUnknown_03005AF0
_0806FD90:
	mov r3, sb
	ldrb r0, [r3, #5]
	adds r0, r1, r0
	lsls r0, r0, #3
	cmp r2, r0
	blt _0806FDAC
	adds r1, r7, #0
	adds r1, #0x40
	ldr r0, _0806FDA8 @ =0x0000FF60
	strh r0, [r1]
	b _0806FE04
	.align 2, 0
_0806FDA8: .4byte 0x0000FF60
_0806FDAC:
	adds r0, r7, #0
	adds r0, #0x46
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r3, r0, #0
	cmp r1, #0
	beq _0806FDC2
	subs r0, r2, #1
	strh r0, [r3]
	b _0806FE04
_0806FDC2:
	ldr r0, _0806FDDC @ =gPlayer
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _0806FDE0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0806FDE6
	.align 2, 0
_0806FDDC: .4byte gPlayer
_0806FDE0:
	ldr r0, [r5, #0x10]
	ldr r1, _0806FE20 @ =0xFFFFFBFF
	ands r0, r1
_0806FDE6:
	str r0, [r5, #0x10]
	movs r1, #0
	movs r0, #0x5a
	strh r0, [r3]
	adds r0, r7, #0
	adds r0, #0x42
	strh r1, [r0]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0806FE24 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806FE28 @ =sub_806FE2C
	str r0, [r1, #8]
_0806FE04:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0806FE10:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FE20: .4byte 0xFFFFFBFF
_0806FE24: .4byte gCurTask
_0806FE28: .4byte sub_806FE2C

	thumb_func_start sub_806FE2C
sub_806FE2C: @ 0x0806FE2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0806FEEC @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _0806FEF0 @ =0x0300000C
	adds r7, r1, r2
	ldr r3, [r5]
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsrs r0, r1, #0x10
	mov sb, r0
	asrs r6, r1, #0x10
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #0x10
	ldr r4, _0806FEF4 @ =gCamera
	ldrh r1, [r4]
	mov sl, r1
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	mov r1, sl
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	ldrh r0, [r4, #2]
	subs r0, r6, r0
	strh r0, [r7, #0x18]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r0, r0, r1
	mov sl, r0
	cmp r2, sl
	bgt _0806FEB8
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0806FEB8
	movs r2, #2
	ldrsh r1, [r4, r2]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	bgt _0806FEB8
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	bge _0806FEF8
_0806FEB8:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806FEDC
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0806FEDC
	movs r2, #0x18
	ldrsh r1, [r7, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806FEF8
_0806FEDC:
	ldrb r0, [r5, #8]
	strb r0, [r3]
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _0806FF92
	.align 2, 0
_0806FEEC: .4byte gCurTask
_0806FEF0: .4byte 0x0300000C
_0806FEF4: .4byte gCamera
_0806FEF8:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_800B4F8
	cmp r0, #0
	beq _0806FF20
	ldr r0, _0806FF1C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806FF92
	.align 2, 0
_0806FF1C: .4byte gCurTask
_0806FF20:
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r5, r1, #0
	cmp r0, #0x14
	bne _0806FF6E
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806FF58
	adds r0, r4, #0
	adds r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
	bl sub_806FFA8
	b _0806FF6E
_0806FF58:
	adds r0, r4, #0
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_806FFA8
_0806FF6E:
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0x3c
	bne _0806FF86
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806FFA0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806FFA4 @ =sub_806FBDC
	str r0, [r1, #8]
_0806FF86:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0806FF92:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FFA0: .4byte gCurTask
_0806FFA4: .4byte sub_806FBDC

	thumb_func_start sub_806FFA8
sub_806FFA8: @ 0x0806FFA8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0806FFE4 @ =sub_8070044
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r1, r3, #0
	cmp r4, #0
	beq _0806FFE8
	strh r5, [r3, #0x16]
	movs r0, #0x80
	lsls r0, r0, #2
	b _0806FFEE
	.align 2, 0
_0806FFE4: .4byte sub_8070044
_0806FFE8:
	strh r5, [r3, #0x16]
	movs r0, #0xfe
	lsls r0, r0, #8
_0806FFEE:
	strh r0, [r3, #0x34]
	lsls r0, r5, #0x10
	asrs r0, r0, #8
	str r0, [r1, #0x30]
	movs r2, #0
	movs r1, #0
	strh r6, [r3, #0x18]
	ldr r0, _08070040 @ =0x06012580
	str r0, [r3, #4]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r3, #0x1a]
	strh r1, [r3, #8]
	subs r0, #0x8d
	strh r0, [r3, #0xa]
	adds r0, r3, #0
	adds r0, #0x20
	strb r2, [r0]
	strh r1, [r3, #0x14]
	strh r1, [r3, #0x1c]
	adds r4, r3, #0
	adds r4, #0x21
	movs r0, #0xff
	strb r0, [r4]
	adds r4, #1
	movs r0, #0x10
	strb r0, [r4]
	adds r0, r3, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	str r1, [r3, #0x10]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08070040: .4byte 0x06012580

	thumb_func_start sub_8070044
sub_8070044: @ 0x08070044
	push {r4, r5, r6, r7, lr}
	ldr r0, _080700B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r5, r4, #0
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x16]
	adds r6, r0, #0
	ldrh r0, [r4, #0x18]
	adds r7, r0, #0
	ldr r1, _080700B8 @ =gCamera
	ldrh r0, [r1]
	subs r0, r6, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_800B798
	ldrh r0, [r4, #0x16]
	adds r0, #0x14
	lsls r0, r0, #0x10
	movs r1, #0x8a
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080700A8
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _080700A8
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0xf0
	ble _080700BC
_080700A8:
	ldr r0, _080700B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080700CC
	.align 2, 0
_080700B4: .4byte gCurTask
_080700B8: .4byte gCamera
_080700BC:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	strh r6, [r5, #0x16]
	strh r7, [r5, #0x18]
_080700CC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
