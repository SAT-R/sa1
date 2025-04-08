.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start CreateEntity_WallPole_Left
CreateEntity_WallPole_Left: @ 0x080779EC
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
	ldr r1, _08077AA8 @ =gCurrentLevel
	ldrb r4, [r1]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x19
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08077AAC @ =sub_8077C5C
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08077AB0 @ =TaskDestructor_RedFlag
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r3, _08077AB4 @ =0x0300000C
	adds r7, r2, r3
	movs r1, #0
	mov sl, r1
	strh r5, [r0, #4]
	strh r6, [r0, #6]
	mov r3, sb
	str r3, [r0]
	ldrb r1, [r3]
	strb r1, [r0, #8]
	mov r1, r8
	strb r1, [r0, #9]
	ldrb r1, [r3, #4]
	ldr r3, _08077AB8 @ =0x0300003C
	adds r0, r2, r3
	strb r1, [r0]
	ldr r1, _08077ABC @ =0x0300003D
	adds r0, r2, r1
	mov r3, sl
	strb r3, [r0]
	adds r1, #1
	adds r0, r2, r1
	strb r3, [r0]
	ldr r3, _08077AC0 @ =0x0300003F
	adds r0, r2, r3
	mov r1, sl
	strb r1, [r0]
	mov r3, sb
	ldrb r0, [r3]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x16]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r7, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r3]
	cmp r4, #0
	beq _08077A98
	ldr r3, _08077AA8 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0xe
	bne _08077AC4
_08077A98:
	movs r0, #0xc
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xea
	lsls r0, r0, #1
	b _08077AD2
	.align 2, 0
_08077AA8: .4byte gCurrentLevel
_08077AAC: .4byte sub_8077C5C
_08077AB0: .4byte TaskDestructor_RedFlag
_08077AB4: .4byte 0x0300000C
_08077AB8: .4byte 0x0300003C
_08077ABC: .4byte 0x0300003D
_08077AC0: .4byte 0x0300003F
_08077AC4:
	movs r0, #0xc
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xeb
	lsls r0, r0, #1
_08077AD2:
	strh r0, [r7, #0xa]
	ldr r2, [sp, #4]
	ldr r1, _08077B20 @ =0x0300002C
	adds r0, r2, r1
	mov r3, sl
	strb r3, [r0]
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r1, [r7, #8]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08077B20: .4byte 0x0300002C

	thumb_func_start CreateEntity_WallPole_Right
CreateEntity_WallPole_Right: @ 0x08077B24
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
	ldr r1, _08077BE0 @ =gCurrentLevel
	ldrb r4, [r1]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x19
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08077BE4 @ =sub_8077C5C
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08077BE8 @ =TaskDestructor_RedFlag
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r3, _08077BEC @ =0x0300000C
	adds r7, r2, r3
	movs r1, #0
	mov sl, r1
	strh r5, [r0, #4]
	strh r6, [r0, #6]
	mov r3, sb
	str r3, [r0]
	ldrb r1, [r3]
	strb r1, [r0, #8]
	mov r1, r8
	strb r1, [r0, #9]
	ldrb r1, [r3, #4]
	ldr r3, _08077BF0 @ =0x0300003C
	adds r0, r2, r3
	strb r1, [r0]
	ldr r1, _08077BF4 @ =0x0300003D
	adds r0, r2, r1
	mov r3, sl
	strb r3, [r0]
	adds r1, #1
	adds r0, r2, r1
	strb r3, [r0]
	ldr r3, _08077BF8 @ =0x0300003F
	adds r0, r2, r3
	mov r1, sl
	strb r1, [r0]
	mov r3, sb
	ldrb r0, [r3]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x16]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r7, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r3]
	cmp r4, #0
	beq _08077BD0
	ldr r3, _08077BE0 @ =gCurrentLevel
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0xe
	bne _08077BFC
_08077BD0:
	movs r0, #0xc
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xea
	lsls r0, r0, #1
	b _08077C0A
	.align 2, 0
_08077BE0: .4byte gCurrentLevel
_08077BE4: .4byte sub_8077C5C
_08077BE8: .4byte TaskDestructor_RedFlag
_08077BEC: .4byte 0x0300000C
_08077BF0: .4byte 0x0300003C
_08077BF4: .4byte 0x0300003D
_08077BF8: .4byte 0x0300003F
_08077BFC:
	movs r0, #0xc
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xeb
	lsls r0, r0, #1
_08077C0A:
	strh r0, [r7, #0xa]
	ldr r2, [sp, #4]
	ldr r1, _08077C58 @ =0x0300002C
	adds r0, r2, r1
	mov r3, sl
	strb r3, [r0]
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r1, [r7, #8]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x90
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08077C58: .4byte 0x0300002C

	thumb_func_start sub_8077C5C
sub_8077C5C: @ 0x08077C5C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08077CF4 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	ldr r7, [r5]
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08077CF8 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	subs r0, r6, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	subs r0, r3, r0
	strh r0, [r4, #0x18]
	ldr r0, _08077CFC @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08077CC2
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_80781E4
	cmp r0, #0
	beq _08077CC2
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08077D00 @ =sub_8077D1C
	str r0, [r1, #8]
_08077CC2:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08077CE6
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08077CE6
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08077D04
_08077CE6:
	ldrb r0, [r5, #8]
	strb r0, [r7]
	ldr r0, _08077CF4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08077D10
	.align 2, 0
_08077CF4: .4byte gCurTask
_08077CF8: .4byte gCamera
_08077CFC: .4byte gPlayer
_08077D00: .4byte sub_8077D1C
_08077D04:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08077D10:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8077D1C
sub_8077D1C: @ 0x08077D1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r1, _08077D94 @ =gUnknown_086CED4C
	mov r0, sp
	movs r2, #0x1e
	bl memcpy
	ldr r0, _08077D98 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	adds r0, #0xc
	adds r7, r6, r0
	ldr r4, [r5]
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r4, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08077D9C @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r7, #0x18]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08077D86
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08077D86
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08077DA0
_08077D86:
	ldrb r0, [r5, #8]
	strb r0, [r4]
	ldr r0, _08077D98 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08077E8E
	.align 2, 0
_08077D94: .4byte gUnknown_086CED4C
_08077D98: .4byte gCurTask
_08077D9C: .4byte gCamera
_08077DA0:
	ldr r2, _08077DD4 @ =0x0300003F
	adds r0, r6, r2
	ldrb r0, [r0]
	ldr r2, _08077DD8 @ =gPlayer
	adds r4, r2, #0
	cmp r0, #0
	beq _08077DB0
	ldr r4, _08077DDC @ =gPartner
_08077DB0:
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08077E70
	ldr r0, _08077DE0 @ =0x0300003D
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #6
	bls _08077DE4
	lsls r0, r0, #1
	add r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #8
	ldr r0, [r4, #4]
	subs r0, r0, r1
	b _08077DF4
	.align 2, 0
_08077DD4: .4byte 0x0300003F
_08077DD8: .4byte gPlayer
_08077DDC: .4byte gPartner
_08077DE0: .4byte 0x0300003D
_08077DE4:
	ldrb r0, [r1]
	lsls r0, r0, #1
	add r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
_08077DF4:
	str r0, [r4, #4]
	adds r1, r5, #0
	adds r1, #0x3d
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xd
	bls _08077E82
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	ldr r1, _08077E58 @ =0xFFFFFEFF
	ands r0, r1
	adds r1, #0xfc
	ands r0, r1
	subs r1, #0xc
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #0xe
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x15
	strb r0, [r1]
	ldr r0, _08077E5C @ =0x0000F880
	strh r0, [r4, #0xa]
	ldr r0, [r4, #0x10]
	ldr r1, _08077E60 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r1, _08077E64 @ =gPlayer
	adds r1, #0x26
	ldrb r2, [r1]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1]
	ldr r0, _08077E68 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08077E6C @ =sub_8077E9C
	str r0, [r1, #8]
	b _08077E82
	.align 2, 0
_08077E58: .4byte 0xFFFFFEFF
_08077E5C: .4byte 0x0000F880
_08077E60: .4byte 0xFFBFFFFF
_08077E64: .4byte gPlayer
_08077E68: .4byte gCurTask
_08077E6C: .4byte sub_8077E9C
_08077E70:
	ldr r0, [r4, #0x10]
	ldr r1, _08077E98 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_08077E82:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08077E8E:
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08077E98: .4byte 0xFFBFFFFF

	thumb_func_start sub_8077E9C
sub_8077E9C: @ 0x08077E9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08077F28 @ =gCurrentLevel
	mov sl, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r1, _08077F2C @ =gCurTask
	mov ip, r1
	ldr r0, [r1]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	adds r0, #0xc
	adds r5, r7, r0
	ldr r4, [r6]
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r4, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08077F30 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	movs r0, #0
	mov r8, r0
	strh r1, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x18]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	mov r3, ip
	cmp r1, r0
	bhi _08077F1A
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08077F1A
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08077F34
_08077F1A:
	ldrb r0, [r6, #8]
	strb r0, [r4]
	ldr r0, [r3]
	bl TaskDestroy
	b _08077F88
	.align 2, 0
_08077F28: .4byte gCurrentLevel
_08077F2C: .4byte gCurTask
_08077F30: .4byte gCamera
_08077F34:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _08077F82
	ldr r1, _08077F64 @ =0x0300003D
	adds r0, r7, r1
	mov r1, r8
	strb r1, [r0]
	ldr r0, _08077F68 @ =0x0300002D
	adds r1, r7, r0
	movs r0, #0xff
	strb r0, [r1]
	mov r1, sb
	cmp r1, #0
	beq _08077F5E
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0xe
	bne _08077F6C
_08077F5E:
	movs r0, #0xea
	lsls r0, r0, #1
	b _08077F70
	.align 2, 0
_08077F64: .4byte 0x0300003D
_08077F68: .4byte 0x0300002D
_08077F6C:
	movs r0, #0xeb
	lsls r0, r0, #1
_08077F70:
	strh r0, [r5, #0xa]
	ldr r1, _08077F98 @ =0x0300002C
	adds r0, r7, r1
	mov r1, r8
	strb r1, [r0]
	ldr r0, _08077F9C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08077FA0 @ =sub_8077C5C
	str r0, [r1, #8]
_08077F82:
	adds r0, r5, #0
	bl DisplaySprite
_08077F88:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08077F98: .4byte 0x0300002C
_08077F9C: .4byte gCurTask
_08077FA0: .4byte sub_8077C5C

	thumb_func_start sub_8077FA4
sub_8077FA4: @ 0x08077FA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	adds r5, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #0
	mov sl, r0
	mov sb, r0
	adds r0, r2, #0
	adds r0, #0xf
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldr r1, _08078014 @ =gPlayer + 0x26
	mov r8, r1
	adds r0, r5, #0
	adds r0, #0x21
	str r0, [sp, #0xc]
_08077FD0:
	ldr r4, _08078018 @ =gPlayer
	mov r1, sb
	cmp r1, #0
	beq _08077FDA
	ldr r4, _0807801C @ =gPartner
_08077FDA:
	ldr r0, [sp]
	lsls r1, r0, #0x10
	ldr r0, [sp, #4]
	lsls r2, r0, #0x10
	adds r0, r5, #0
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl sa2__sub_800DF38
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r1, r0
	cmp r1, #0
	beq _0807808A
	ldr r2, [r4, #0x10]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0807808A
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _08078024
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _08078020 @ =0xFFFFFD00
	b _0807802A
	.align 2, 0
_08078014: .4byte gPlayer + 0x26
_08078018: .4byte gPlayer
_0807801C: .4byte gPartner
_08078020: .4byte 0xFFFFFD00
_08078024:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	ldr r0, _080780AC @ =0xFFFFFAC0
_0807802A:
	cmp r1, r0
	bge _0807808A
	movs r6, #1
	ands r2, r6
	cmp r2, #0
	beq _0807808A
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	movs r0, #0xaf
	bl m4aSongNumStart
	ldr r1, [sp, #8]
	str r1, [r4]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x80
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	movs r0, #0xff
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	adds r0, #0xd6
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r6, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x3f
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x40
	ldrb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x3e
	strb r0, [r2]
	movs r0, #0x1e
	strb r0, [r1]
	mov sl, r6
_0807808A:
	movs r0, #1
	add sb, r0
	ldr r0, _080780B0 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp sb, r0
	blt _08077FD0
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
_080780AC: .4byte 0xFFFFFAC0
_080780B0: .4byte gNumSingleplayerCharacters

	thumb_func_start sub_80780B4
sub_80780B4: @ 0x080780B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	adds r5, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r6, #0
	adds r0, r2, #0
	subs r0, #0xf
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	ldr r1, _080780E4 @ =gPlayer + 0x26
	mov sl, r1
	adds r2, r5, #0
	adds r2, #0x21
	str r2, [sp, #0x10]
	b _08078122
	.align 2, 0
_080780E4: .4byte gPlayer + 0x26
_080780E8:
	movs r3, #0xc
	ldrsh r1, [r4, r3]
	movs r0, #0xa8
	lsls r0, r0, #3
	cmp r1, r0
	ble _0807810E
	movs r7, #1
	ands r2, r7
	cmp r2, #0
	bne _0807810E
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	movs r0, #0xaf
	bl m4aSongNumStart
	ldr r0, [sp, #0xc]
	str r0, [r4]
	b _08078180
_0807810E:
	adds r6, #1
	ldr r0, _080781D8 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _080781C4
	ldr r4, _080781DC @ =gPartner
	cmp r6, #0
	bne _08078130
_08078122:
	ldr r4, _080781E0 @ =gPlayer
	ldr r1, [sp]
	lsls r1, r1, #0x10
	str r1, [sp, #0x14]
	ldr r2, [sp, #4]
	lsls r2, r2, #0x10
	mov sb, r2
_08078130:
	adds r0, r5, #0
	ldr r3, [sp, #0x14]
	asrs r1, r3, #0x10
	mov r3, sb
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sa2__sub_800DF38
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r1, r0
	cmp r1, #0
	beq _0807810E
	ldr r2, [r4, #0x10]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0807810E
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _080780E8
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	ble _0807810E
	movs r7, #1
	ands r2, r7
	cmp r2, #0
	bne _0807810E
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	movs r0, #0xaf
	bl m4aSongNumStart
	ldr r1, [sp, #0xc]
	str r1, [r4]
_08078180:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0xff
	ldr r3, [sp, #0x10]
	strb r0, [r3]
	adds r0, #0xd6
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r7, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	mov r1, r8
	adds r1, #0x3f
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x40
	ldrb r1, [r2]
	mov r0, r8
	adds r0, #0x3e
	strb r1, [r0]
	movs r0, #0x1e
	strb r0, [r2]
	movs r0, #1
	str r0, [sp, #8]
_080781C4:
	ldr r0, [sp, #8]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080781D8: .4byte gNumSingleplayerCharacters
_080781DC: .4byte gPartner
_080781E0: .4byte gPlayer

	thumb_func_start sub_80781E4
sub_80781E4: @ 0x080781E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	adds r5, r1, #0
	adds r7, r2, #0
	mov r8, r3
	movs r0, #0
	str r0, [sp]
	movs r6, #0
	ldr r0, _08078214 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r1, _08078218 @ =gPlayer + 0x26
	mov sb, r1
	b _0807822C
	.align 2, 0
_08078214: .4byte gCurrentLevel
_08078218: .4byte gPlayer + 0x26
_0807821C:
	adds r6, #1
	ldr r0, _080782B8 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	blt _0807822C
	b _08078326
_0807822C:
	ldr r4, _080782BC @ =gPlayer
	cmp r6, #0
	beq _08078234
	ldr r4, _080782C0 @ =gPartner
_08078234:
	lsls r1, r7, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	adds r0, r5, #0
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl sa2__sub_800DF38
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r1, r0
	cmp r1, #0
	beq _0807821C
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0807826E
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0807821C
_0807826E:
	adds r0, r4, #0
	bl Player_TransitionCancelFlyingAndBoost
	movs r0, #0xaf
	bl m4aSongNumStart
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x80
	orrs r0, r1
	mov r1, sb
	strb r0, [r1]
	mov r0, r8
	adds r0, #0x10
	lsls r0, r0, #8
	str r0, [r4, #4]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080782C4
	adds r0, r7, #0
	subs r0, #8
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080782D2
	.align 2, 0
_080782B8: .4byte gNumSingleplayerCharacters
_080782BC: .4byte gPlayer
_080782C0: .4byte gPartner
_080782C4:
	adds r0, r7, #0
	adds r0, #8
	lsls r0, r0, #8
	str r0, [r4]
	ldr r0, [r4, #0x10]
	movs r1, #1
	orrs r0, r1
_080782D2:
	str r0, [r4, #0x10]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _080782EE
	ldr r0, _080782F4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bne _080782F8
_080782EE:
	movs r0, #0xea
	lsls r0, r0, #1
	b _080782FC
	.align 2, 0
_080782F4: .4byte gCurrentLevel
_080782F8:
	movs r0, #0xeb
	lsls r0, r0, #1
_080782FC:
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #1
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	mov r1, sl
	adds r1, #0x3f
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x40
	ldrb r1, [r2]
	mov r0, sl
	adds r0, #0x3e
	strb r1, [r0]
	movs r0, #0x1f
	strb r0, [r2]
	movs r0, #1
	str r0, [sp]
_08078326:
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

@ Shared with WallPole
	thumb_func_start TaskDestructor_RedFlag
TaskDestructor_RedFlag: @ 0x08078338
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
