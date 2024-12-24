.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Spring_Normal_Up
CreateEntity_Spring_Normal_Up: @ 0x080219A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08021A94 @ =sub_8021AE4
	ldr r1, _08021A98 @ =sub_802316C
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
	ldr r1, _08021A9C @ =0x0300000C
	adds r7, r2, r1
	movs r3, #0
	mov sl, r3
	movs r1, #0
	mov r8, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r3, sb
	str r3, [r0]
	ldrb r1, [r3]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	ldrb r0, [r3]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	strb r0, [r3]
	movs r0, #0x10
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, r8
	strh r0, [r7, #8]
	ldr r0, _08021AA0 @ =0x000001C7
	strh r0, [r7, #0xa]
	ldr r2, [sp, #4]
	ldr r1, _08021AA4 @ =0x0300002C
	adds r0, r2, r1
	mov r3, sl
	strb r3, [r0]
	mov r4, r8
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r0, _08021AA8 @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _08021AAC @ =0x0300002E
	adds r1, r2, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r4, _08021AB0 @ =0x03000031
	adds r2, r2, r4
	mov r0, sl
	strb r0, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	mov r3, sb
	ldrb r1, [r3, #3]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08021AC8
	ldr r1, _08021AB4 @ =0x040000D4
	ldr r0, _08021AB8 @ =gRefSpriteTables
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	movs r4, #0x90
	lsls r4, r4, #3
	adds r0, r0, r4
	str r0, [r1]
	ldr r0, _08021ABC @ =gObjPalette+0x100
	str r0, [r1, #4]
	ldr r0, _08021AC0 @ =0x84000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08021AC4 @ =gFlags
	ldr r0, [r1]
	orrs r0, r3
	str r0, [r1]
	movs r0, #0x84
	lsls r0, r0, #0xb
	str r0, [r7, #0x10]
	movs r0, #1
	strb r0, [r2]
	b _08021ACE
	.align 2, 0
_08021A94: .4byte sub_8021AE4
_08021A98: .4byte sub_802316C
_08021A9C: .4byte 0x0300000C
_08021AA0: .4byte 0x000001C7
_08021AA4: .4byte 0x0300002C
_08021AA8: .4byte 0x0300002D
_08021AAC: .4byte 0x0300002E
_08021AB0: .4byte 0x03000031
_08021AB4: .4byte 0x040000D4
_08021AB8: .4byte gRefSpriteTables
_08021ABC: .4byte gObjPalette+0x100
_08021AC0: .4byte 0x84000008
_08021AC4: .4byte gFlags
_08021AC8:
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
_08021ACE:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8021AE4
sub_8021AE4: @ 0x08021AE4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08021B28 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	ldr r7, [r6]
	movs r5, #0
	mov sb, r2
	ldr r1, _08021B2C @ =sub_8021BC0
	mov r8, r1
_08021B06:
	ldr r0, _08021B30 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08021B3C
	ldr r3, _08021B34 @ =gPlayer
	cmp r5, #0
	beq _08021B1A
	ldr r3, _08021B38 @ =gUnknown_03005AB0
_08021B1A:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022640
	b _08021B4E
	.align 2, 0
_08021B28: .4byte gCurTask
_08021B2C: .4byte sub_8021BC0
_08021B30: .4byte gUnknown_03005004
_08021B34: .4byte gPlayer
_08021B38: .4byte gUnknown_03005AB0
_08021B3C:
	ldr r3, _08021B9C @ =gPlayer
	cmp r5, #0
	beq _08021B44
	ldr r3, _08021BA0 @ =gUnknown_03005AB0
_08021B44:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022804
_08021B4E:
	cmp r0, #0
	beq _08021B5A
	mov r1, sb
	ldr r0, [r1]
	mov r1, r8
	str r1, [r0, #8]
_08021B5A:
	adds r5, #1
	ldr r0, _08021BA4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _08021B06
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08021B8C
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08021B8C
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08021BAC
_08021B8C:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _08021BA8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08021BB2
	.align 2, 0
_08021B9C: .4byte gPlayer
_08021BA0: .4byte gUnknown_03005AB0
_08021BA4: .4byte gUnknown_03005088
_08021BA8: .4byte gCurTask
_08021BAC:
	adds r0, r4, #0
	bl DisplaySprite
_08021BB2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8021BC0
sub_8021BC0: @ 0x08021BC0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08021BF8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	ldr r7, [r6]
	movs r5, #0
_08021BD6:
	ldr r0, _08021BFC @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08021C08
	ldr r3, _08021C00 @ =gPlayer
	cmp r5, #0
	beq _08021BEA
	ldr r3, _08021C04 @ =gUnknown_03005AB0
_08021BEA:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022640
	b _08021C1A
	.align 2, 0
_08021BF8: .4byte gCurTask
_08021BFC: .4byte gUnknown_03005004
_08021C00: .4byte gPlayer
_08021C04: .4byte gUnknown_03005AB0
_08021C08:
	ldr r3, _08021C5C @ =gPlayer
	cmp r5, #0
	beq _08021C10
	ldr r3, _08021C60 @ =gUnknown_03005AB0
_08021C10:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022804
_08021C1A:
	adds r5, #1
	ldr r0, _08021C64 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _08021BD6
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08021C4C
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08021C4C
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08021C6C
_08021C4C:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _08021C68 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08021C92
	.align 2, 0
_08021C5C: .4byte gPlayer
_08021C60: .4byte gUnknown_03005AB0
_08021C64: .4byte gUnknown_03005088
_08021C68: .4byte gCurTask
_08021C6C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r1, r0, #0
	cmp r1, #0
	bne _08021C8C
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _08021C98 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08021C9C @ =sub_8021AE4
	str r0, [r1, #8]
_08021C8C:
	adds r0, r4, #0
	bl DisplaySprite
_08021C92:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021C98: .4byte gCurTask
_08021C9C: .4byte sub_8021AE4

	thumb_func_start CreateEntity_Spring_Normal_Down
CreateEntity_Spring_Normal_Down: @ 0x08021CA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08021D74 @ =sub_8021D94
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08021D78 @ =sub_802316C
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _08021D7C @ =0x0300000C
	adds r5, r2, r1
	movs r7, #0
	movs r3, #0
	mov sl, r3
	strh r4, [r0, #4]
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
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r5, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x18]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r1]
	movs r0, #0x10
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	mov r0, sl
	strh r0, [r5, #8]
	ldr r0, _08021D80 @ =0x000001C7
	strh r0, [r5, #0xa]
	ldr r2, [sp, #4]
	ldr r1, _08021D84 @ =0x0300002C
	adds r0, r2, r1
	strb r7, [r0]
	mov r3, sl
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r0, _08021D88 @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _08021D8C @ =0x0300002E
	adds r1, r2, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08021D90 @ =0x03000031
	adds r2, r2, r0
	strb r7, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
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
_08021D74: .4byte sub_8021D94
_08021D78: .4byte sub_802316C
_08021D7C: .4byte 0x0300000C
_08021D80: .4byte 0x000001C7
_08021D84: .4byte 0x0300002C
_08021D88: .4byte 0x0300002D
_08021D8C: .4byte 0x0300002E
_08021D90: .4byte 0x03000031

	thumb_func_start sub_8021D94
sub_8021D94: @ 0x08021D94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08021DD8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	ldr r7, [r6]
	movs r5, #0
	mov sb, r2
	ldr r1, _08021DDC @ =sub_8021E70
	mov r8, r1
_08021DB6:
	ldr r0, _08021DE0 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08021DEC
	ldr r3, _08021DE4 @ =gPlayer
	cmp r5, #0
	beq _08021DCA
	ldr r3, _08021DE8 @ =gUnknown_03005AB0
_08021DCA:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022804
	b _08021DFE
	.align 2, 0
_08021DD8: .4byte gCurTask
_08021DDC: .4byte sub_8021E70
_08021DE0: .4byte gUnknown_03005004
_08021DE4: .4byte gPlayer
_08021DE8: .4byte gUnknown_03005AB0
_08021DEC:
	ldr r3, _08021E4C @ =gPlayer
	cmp r5, #0
	beq _08021DF4
	ldr r3, _08021E50 @ =gUnknown_03005AB0
_08021DF4:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022640
_08021DFE:
	cmp r0, #0
	beq _08021E0A
	mov r1, sb
	ldr r0, [r1]
	mov r1, r8
	str r1, [r0, #8]
_08021E0A:
	adds r5, #1
	ldr r0, _08021E54 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _08021DB6
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08021E3C
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08021E3C
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08021E5C
_08021E3C:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _08021E58 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08021E62
	.align 2, 0
_08021E4C: .4byte gPlayer
_08021E50: .4byte gUnknown_03005AB0
_08021E54: .4byte gUnknown_03005088
_08021E58: .4byte gCurTask
_08021E5C:
	adds r0, r4, #0
	bl DisplaySprite
_08021E62:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8021E70
sub_8021E70: @ 0x08021E70
	push {r4, r5, r6, r7, lr}
	ldr r0, _08021EA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	ldr r7, [r6]
	movs r5, #0
_08021E86:
	ldr r0, _08021EAC @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08021EB8
	ldr r3, _08021EB0 @ =gPlayer
	cmp r5, #0
	beq _08021E9A
	ldr r3, _08021EB4 @ =gUnknown_03005AB0
_08021E9A:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022804
	b _08021ECA
	.align 2, 0
_08021EA8: .4byte gCurTask
_08021EAC: .4byte gUnknown_03005004
_08021EB0: .4byte gPlayer
_08021EB4: .4byte gUnknown_03005AB0
_08021EB8:
	ldr r3, _08021F0C @ =gPlayer
	cmp r5, #0
	beq _08021EC0
	ldr r3, _08021F10 @ =gUnknown_03005AB0
_08021EC0:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022640
_08021ECA:
	adds r5, #1
	ldr r0, _08021F14 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _08021E86
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08021EFC
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08021EFC
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08021F1C
_08021EFC:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _08021F18 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08021F42
	.align 2, 0
_08021F0C: .4byte gPlayer
_08021F10: .4byte gUnknown_03005AB0
_08021F14: .4byte gUnknown_03005088
_08021F18: .4byte gCurTask
_08021F1C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r1, r0, #0
	cmp r1, #0
	bne _08021F3C
	adds r0, r4, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _08021F48 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08021F4C @ =sub_8021D94
	str r0, [r1, #8]
_08021F3C:
	adds r0, r4, #0
	bl DisplaySprite
_08021F42:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021F48: .4byte gCurTask
_08021F4C: .4byte sub_8021D94

@ Note: IA_010 = Left, IA_011 = Right
	thumb_func_start CreateEntity_Spring_Horizontal
CreateEntity_Spring_Horizontal: @ 0x08021F50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0802201C @ =sub_8022068
	ldr r1, _08022020 @ =sub_802316C
	str r1, [sp]
	movs r1, #0x3c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _08022024 @ =0x0300000C
	adds r7, r6, r1
	movs r2, #0
	mov sb, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sl
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sb
	strh r0, [r7, #8]
	ldr r0, _08022028 @ =0x000001C7
	strh r0, [r7, #0xa]
	ldr r2, _0802202C @ =0x0300002C
	adds r1, r6, r2
	movs r0, #2
	strb r0, [r1]
	mov r0, sb
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	adds r2, #1
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08022030 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08022034 @ =0x03000031
	adds r6, r6, r1
	movs r2, #0
	strb r2, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	ldr r0, _08022038 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0802203C
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #8
	bne _08022050
	b _08022044
	.align 2, 0
_0802201C: .4byte sub_8022068
_08022020: .4byte sub_802316C
_08022024: .4byte 0x0300000C
_08022028: .4byte 0x000001C7
_0802202C: .4byte 0x0300002C
_08022030: .4byte 0x0300002E
_08022034: .4byte 0x03000031
_08022038: .4byte gGameMode
_0802203C:
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #0xa
	bne _08022050
_08022044:
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r7, #0x10]
_08022050:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8022068
sub_8022068: @ 0x08022068
	push {r4, r5, r6, r7, lr}
	ldr r0, _080220DC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r7, [r6]
	movs r4, #0
_0802207E:
	ldr r3, _080220E0 @ =gPlayer
	cmp r4, #0
	beq _08022086
	ldr r3, _080220E4 @ =gUnknown_03005AB0
_08022086:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_80228D0
	cmp r0, #0
	beq _0802209C
	ldr r0, _080220DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080220E8 @ =sub_80220FC
	str r0, [r1, #8]
_0802209C:
	adds r4, #1
	ldr r0, _080220EC @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0802207E
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080220CE
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080220CE
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080220F0
_080220CE:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _080220DC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080220F6
	.align 2, 0
_080220DC: .4byte gCurTask
_080220E0: .4byte gPlayer
_080220E4: .4byte gUnknown_03005AB0
_080220E8: .4byte sub_80220FC
_080220EC: .4byte gUnknown_03005088
_080220F0:
	adds r0, r5, #0
	bl DisplaySprite
_080220F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80220FC
sub_80220FC: @ 0x080220FC
	push {r4, r5, r6, r7, lr}
	ldr r0, _08022164 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r7, [r6]
	movs r4, #0
_08022112:
	ldr r3, _08022168 @ =gPlayer
	cmp r4, #0
	beq _0802211A
	ldr r3, _0802216C @ =gUnknown_03005AB0
_0802211A:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_80228D0
	adds r4, #1
	ldr r0, _08022170 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08022112
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08022156
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08022156
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08022174
_08022156:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _08022164 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0802219A
	.align 2, 0
_08022164: .4byte gCurTask
_08022168: .4byte gPlayer
_0802216C: .4byte gUnknown_03005AB0
_08022170: .4byte gUnknown_03005088
_08022174:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _08022194
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, _080221A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080221A4 @ =sub_8022068
	str r0, [r1, #8]
_08022194:
	adds r0, r5, #0
	bl DisplaySprite
_0802219A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080221A0: .4byte gCurTask
_080221A4: .4byte sub_8022068

	thumb_func_start CreateEntity_Spring_Big_Up
CreateEntity_Spring_Big_Up: @ 0x080221A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08022274 @ =sub_80222C0
	ldr r1, _08022278 @ =sub_802316C
	str r1, [sp]
	movs r1, #0x44
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _0802227C @ =0x0300000C
	adds r7, r6, r1
	movs r2, #0
	mov sb, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sl
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sb
	strh r0, [r7, #8]
	ldr r0, _08022280 @ =0x000001C7
	strh r0, [r7, #0xa]
	ldr r2, _08022284 @ =0x0300002C
	adds r1, r6, r2
	movs r0, #4
	strb r0, [r1]
	mov r0, sb
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	adds r2, #1
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08022288 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0802228C @ =0x03000031
	adds r6, r6, r1
	movs r2, #0
	strb r2, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	ldr r0, _08022290 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08022294
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #0xa
	bne _080222A8
	b _0802229C
	.align 2, 0
_08022274: .4byte sub_80222C0
_08022278: .4byte sub_802316C
_0802227C: .4byte 0x0300000C
_08022280: .4byte 0x000001C7
_08022284: .4byte 0x0300002C
_08022288: .4byte 0x0300002E
_0802228C: .4byte 0x03000031
_08022290: .4byte gGameMode
_08022294:
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #0xc
	bne _080222A8
_0802229C:
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r7, #0x10]
_080222A8:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80222C0
sub_80222C0: @ 0x080222C0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08022334 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r7, [r6]
	movs r4, #0
_080222D6:
	ldr r3, _08022338 @ =gPlayer
	cmp r4, #0
	beq _080222DE
	ldr r3, _0802233C @ =gUnknown_03005AB0
_080222DE:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022AB4
	cmp r0, #0
	beq _080222F4
	ldr r0, _08022334 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08022340 @ =sub_8022354
	str r0, [r1, #8]
_080222F4:
	adds r4, #1
	ldr r0, _08022344 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _080222D6
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08022326
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08022326
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08022348
_08022326:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _08022334 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0802234E
	.align 2, 0
_08022334: .4byte gCurTask
_08022338: .4byte gPlayer
_0802233C: .4byte gUnknown_03005AB0
_08022340: .4byte sub_8022354
_08022344: .4byte gUnknown_03005088
_08022348:
	adds r0, r5, #0
	bl DisplaySprite
_0802234E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8022354
sub_8022354: @ 0x08022354
	push {r4, r5, r6, r7, lr}
	ldr r0, _080223BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r7, [r6]
	movs r4, #0
_0802236A:
	ldr r3, _080223C0 @ =gPlayer
	cmp r4, #0
	beq _08022372
	ldr r3, _080223C4 @ =gUnknown_03005AB0
_08022372:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022AB4
	adds r4, #1
	ldr r0, _080223C8 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0802236A
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080223AE
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080223AE
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080223CC
_080223AE:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _080223BC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080223F2
	.align 2, 0
_080223BC: .4byte gCurTask
_080223C0: .4byte gPlayer
_080223C4: .4byte gUnknown_03005AB0
_080223C8: .4byte gUnknown_03005088
_080223CC:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080223EC
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #4
	strb r0, [r1]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, _080223F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080223FC @ =sub_80222C0
	str r0, [r1, #8]
_080223EC:
	adds r0, r5, #0
	bl DisplaySprite
_080223F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080223F8: .4byte gCurTask
_080223FC: .4byte sub_80222C0

	thumb_func_start CreateEntity_Spring_Small_Up
CreateEntity_Spring_Small_Up: @ 0x08022400
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080224E4 @ =sub_8022500
	ldr r1, _080224E8 @ =sub_802316C
	str r1, [sp]
	movs r1, #0x44
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _080224EC @ =0x0300000C
	adds r7, r6, r1
	movs r2, #0
	mov sb, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sl
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sb
	strh r0, [r7, #8]
	ldr r0, _080224F0 @ =0x000001C7
	strh r0, [r7, #0xa]
	ldr r2, _080224F4 @ =0x0300002C
	adds r1, r6, r2
	movs r0, #6
	strb r0, [r1]
	mov r0, sb
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	adds r2, #1
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080224F8 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080224FC @ =0x03000031
	adds r6, r6, r1
	movs r2, #0
	strb r2, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	mov r1, sl
	ldrb r0, [r1, #2]
	cmp r0, #0xe
	bne _080224CE
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r7, #0x10]
_080224CE:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080224E4: .4byte sub_8022500
_080224E8: .4byte sub_802316C
_080224EC: .4byte 0x0300000C
_080224F0: .4byte 0x000001C7
_080224F4: .4byte 0x0300002C
_080224F8: .4byte 0x0300002E
_080224FC: .4byte 0x03000031

	thumb_func_start sub_8022500
sub_8022500: @ 0x08022500
	push {r4, r5, r6, r7, lr}
	ldr r0, _08022574 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r7, [r6]
	movs r4, #0
_08022516:
	ldr r3, _08022578 @ =gPlayer
	cmp r4, #0
	beq _0802251E
	ldr r3, _0802257C @ =gUnknown_03005AB0
_0802251E:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022E14
	cmp r0, #0
	beq _08022534
	ldr r0, _08022574 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08022580 @ =sub_8022594
	str r0, [r1, #8]
_08022534:
	adds r4, #1
	ldr r0, _08022584 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08022516
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08022566
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08022566
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08022588
_08022566:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _08022574 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0802258E
	.align 2, 0
_08022574: .4byte gCurTask
_08022578: .4byte gPlayer
_0802257C: .4byte gUnknown_03005AB0
_08022580: .4byte sub_8022594
_08022584: .4byte gUnknown_03005088
_08022588:
	adds r0, r5, #0
	bl DisplaySprite
_0802258E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8022594
sub_8022594: @ 0x08022594
	push {r4, r5, r6, r7, lr}
	ldr r0, _080225FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r7, [r6]
	movs r4, #0
_080225AA:
	ldr r3, _08022600 @ =gPlayer
	cmp r4, #0
	beq _080225B2
	ldr r3, _08022604 @ =gUnknown_03005AB0
_080225B2:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8022E14
	adds r4, #1
	ldr r0, _08022608 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _080225AA
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080225EE
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080225EE
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0802260C
_080225EE:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _080225FC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08022632
	.align 2, 0
_080225FC: .4byte gCurTask
_08022600: .4byte gPlayer
_08022604: .4byte gUnknown_03005AB0
_08022608: .4byte gUnknown_03005088
_0802260C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0802262C
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #6
	strb r0, [r1]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, _08022638 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802263C @ =sub_8022500
	str r0, [r1, #8]
_0802262C:
	adds r0, r5, #0
	bl DisplaySprite
_08022632:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022638: .4byte gCurTask
_0802263C: .4byte sub_8022500

	thumb_func_start sub_8022640
sub_8022640: @ 0x08022640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	adds r7, r1, #0
	adds r4, r3, #0
	movs r0, #0
	mov sb, r0
	movs r6, #0
	ldrb r3, [r2, #8]
	lsls r3, r3, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #0x10
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r2, _08022764 @ =gCamera
	ldrh r0, [r2]
	lsrs r5, r3, #0x10
	mov sl, r5
	asrs r3, r3, #0x10
	subs r3, r3, r0
	mov r0, r8
	strh r3, [r0, #0x16]
	ldrh r0, [r2, #2]
	lsrs r2, r1, #0x10
	mov ip, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r5, r8
	strh r1, [r5, #0x18]
	ldr r0, _08022768 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0802269A
	ldr r3, [r4, #0x10]
	cmp r0, #5
	bne _080226E2
_0802269A:
	movs r2, #0
	ldr r1, _0802276C @ =gMultiplayerPlayerTasks
	ldr r0, [r1]
	ldr r3, [r4, #0x10]
	cmp r0, #0
	beq _080226E2
	adds r5, r1, #0
_080226A8:
	ldr r0, _08022770 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r2, r0
	beq _080226CE
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080226CE
	movs r6, #1
_080226CE:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _080226E2
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _080226A8
_080226E2:
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r3, r0
	cmp r3, #0
	beq _080226F2
	cmp r6, #0
	bne _080226F2
	b _080227F2
_080226F2:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	mov r2, ip
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_80096B0
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08022724
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_800A768
	mov sb, r0
	cmp r0, #0
	beq _080227F2
_08022724:
	ldr r0, _08022768 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08022730
	cmp r0, #5
	bne _08022734
_08022730:
	movs r0, #2
	strh r0, [r4, #0x1c]
_08022734:
	adds r0, r4, #0
	bl sub_8042848
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08022774 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	ldrb r2, [r7, #3]
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #3
	ble _08022778
	ldrb r0, [r7, #4]
	lsls r0, r0, #4
	b _08022784
	.align 2, 0
_08022764: .4byte gCamera
_08022768: .4byte gGameMode
_0802276C: .4byte gMultiplayerPlayerTasks
_08022770: .4byte 0x04000128
_08022774: .4byte 0xFFFFFEFF
_08022778:
	ldr r0, _080227B0 @ =gUnknown_080BB4F4
	movs r1, #3
	ands r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
_08022784:
	rsbs r0, r0, #0
	strh r0, [r4, #0xa]
	mov r5, sb
	cmp r5, #0
	beq _08022798
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r0, r0, r1
	strh r0, [r4, #0xa]
_08022798:
	ldrb r1, [r7, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080227B4
	adds r0, r4, #0
	bl sub_8046CEC
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x15
	b _080227C0
	.align 2, 0
_080227B0: .4byte gUnknown_080BB4F4
_080227B4:
	adds r0, r4, #0
	bl sub_8046CEC
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x11
_080227C0:
	strb r0, [r1]
	ldr r0, [r4, #0x64]
	adds r0, #0x2d
	movs r1, #0xff
	strb r1, [r0]
	mov r1, r8
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r0, #1
	b _080227F4
_080227F2:
	movs r0, #0
_080227F4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8022804
sub_8022804: @ 0x08022804
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r6, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08022880 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	adds r3, r5, #0
	bl sub_80096B0
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080228B8
	ldr r0, _08022884 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08022858
	cmp r0, #5
	bne _0802285C
_08022858:
	movs r0, #2
	strh r0, [r5, #0x1c]
_0802285C:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	ldr r1, _08022888 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	ldrb r2, [r6, #3]
	movs r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #3
	ble _0802288C
	ldrb r0, [r6, #4]
	lsls r0, r0, #4
	b _08022898
	.align 2, 0
_08022880: .4byte gCamera
_08022884: .4byte gGameMode
_08022888: .4byte 0xFFFFFEFF
_0802288C:
	ldr r0, _080228B4 @ =gUnknown_080BB4F4
	movs r1, #3
	ands r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
_08022898:
	strh r0, [r5, #0xa]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r0, #1
	b _080228C8
	.align 2, 0
_080228B4: .4byte gUnknown_080BB4F4
_080228B8:
	movs r0, #0x28
	ands r0, r1
	cmp r0, #0
	beq _080228C6
	adds r0, r5, #0
	bl sub_8042848
_080228C6:
	movs r0, #0
_080228C8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80228D0
sub_80228D0: @ 0x080228D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r6, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0802295C @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	movs r4, #0
	mov sb, r4
	mov r4, r8
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r4, #0x18]
	mov r0, r8
	adds r3, r5, #0
	bl sub_800A850
	adds r4, r0, #0
	movs r7, #0x80
	lsls r7, r7, #0xa
	ands r7, r4
	cmp r7, #0
	beq _080229D2
	movs r1, #0xa
	ldr r0, _08022960 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08022930
	movs r1, #8
_08022930:
	ldrb r2, [r6, #2]
	cmp r1, r2
	bne _080229B6
	cmp r0, #3
	beq _0802293E
	cmp r0, #5
	bne _08022942
_0802293E:
	movs r0, #2
	strh r0, [r5, #0x1c]
_08022942:
	ldrb r3, [r6, #3]
	movs r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #3
	ble _08022964
	ldrb r0, [r6, #4]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r5, #8]
	ldrb r0, [r6, #4]
	lsls r0, r0, #4
	b _08022980
	.align 2, 0
_0802295C: .4byte gCamera
_08022960: .4byte gGameMode
_08022964:
	ldr r2, _080229A0 @ =gUnknown_080BB4F4
	movs r1, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r5, #8]
	ldrb r0, [r6, #3]
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
_08022980:
	rsbs r0, r0, #0
	strh r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_8046CEC
	ldr r0, [r5, #0x10]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080229A4
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
	b _080229AA
	.align 2, 0
_080229A0: .4byte gUnknown_080BB4F4
_080229A4:
	adds r0, r5, #0
	adds r0, #0x40
	strb r1, [r0]
_080229AA:
	movs r0, #0
	strb r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	b _08022A62
_080229B6:
	adds r0, r5, #0
	bl sub_8042848
	movs r1, #0x20
	ands r4, r1
	cmp r4, #0
	beq _08022AA4
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	mov r3, sb
	strh r3, [r5, #8]
	strh r3, [r5, #0xc]
	b _08022A94
_080229D2:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r4
	cmp r0, #0
	beq _08022AA4
	movs r1, #0xb
	ldr r0, _08022A10 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _080229E8
	movs r1, #9
_080229E8:
	ldrb r2, [r6, #2]
	cmp r1, r2
	bne _08022A7C
	cmp r0, #3
	beq _080229F6
	cmp r0, #5
	bne _080229FA
_080229F6:
	movs r0, #2
	strh r0, [r5, #0x1c]
_080229FA:
	ldrb r3, [r6, #3]
	movs r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #3
	ble _08022A14
	ldrb r0, [r6, #4]
	lsls r0, r0, #4
	strh r0, [r5, #8]
	ldrb r0, [r6, #4]
	lsls r0, r0, #4
	b _08022A2E
	.align 2, 0
_08022A10: .4byte gGameMode
_08022A14:
	ldr r2, _08022A4C @ =gUnknown_080BB4F4
	movs r1, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r5, #8]
	ldrb r0, [r6, #3]
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
_08022A2E:
	strh r0, [r5, #0xc]
	adds r0, r5, #0
	bl sub_8046CEC
	ldr r0, [r5, #0x10]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08022A50
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
	b _08022A56
	.align 2, 0
_08022A4C: .4byte gUnknown_080BB4F4
_08022A50:
	adds r0, r5, #0
	adds r0, #0x40
	strb r1, [r0]
_08022A56:
	movs r0, #0
	strb r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08022A62:
	str r0, [r5, #0x10]
	mov r1, r8
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r0, #1
	b _08022AA6
_08022A7C:
	adds r0, r5, #0
	bl sub_8042848
	movs r1, #0x20
	ands r4, r1
	cmp r4, #0
	beq _08022AA4
	ldr r0, [r5, #0x10]
	orrs r0, r1
	str r0, [r5, #0x10]
	strh r7, [r5, #8]
	strh r7, [r5, #0xc]
_08022A94:
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
_08022AA4:
	movs r0, #0
_08022AA6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8022AB4
sub_8022AB4: @ 0x08022AB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldrb r4, [r6, #0xe]
	adds r4, #6
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r2, [r6, #0xf]
	adds r2, #1
	rsbs r3, r2, #0
	mov r0, sp
	adds r0, #5
	strb r3, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r2, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	mov r1, r8
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r5, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, _08022C5C @ =gCamera
	ldrh r0, [r1]
	lsrs r3, r2, #0x10
	mov sl, r3
	asrs r4, r2, #0x10
	subs r0, r4, r0
	mov r2, sb
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #2]
	ldr r3, [sp, #8]
	lsls r5, r3, #0x10
	asrs r2, r5, #0x10
	subs r0, r2, r0
	mov r1, sb
	strh r0, [r1, #0x18]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022B36
	b _08022E00
_08022B36:
	mov r0, sb
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_800A768
	mov ip, r0
	cmp r0, #0
	bne _08022BDA
	mov r0, sb
	adds r0, #0x34
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r4, r3
	ldr r0, [r6]
	asrs r0, r0, #8
	mov r1, sp
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _08022B7A
	mov r0, sb
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _08022B8E
	adds r4, r5, #0
	cmp r2, r1
	bge _08022B7A
	b _08022DF0
_08022B7A:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	adds r4, r5, #0
	cmp r0, r2
	bge _08022B8E
	b _08022DF0
_08022B8E:
	ldr r3, [sp, #8]
	lsls r2, r3, #0x10
	asrs r0, r2, #0x10
	mov r1, sb
	adds r1, #0x35
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r3, r0, r5
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	mov r1, sp
	movs r7, #1
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	adds r4, r2, #0
	cmp r3, r1
	bgt _08022BC8
	mov r0, sb
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r1
	bge _08022BDA
	cmp r3, r1
	bge _08022BC8
	b _08022DF0
_08022BC8:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r3
	bge _08022BDA
	b _08022DF0
_08022BDA:
	movs r3, #0xc
	ldr r0, [r6, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r0, _08022C60 @ =gGameMode
	ldrb r2, [r0]
	adds r4, r0, #0
	cmp r2, #6
	bne _08022BF6
	movs r3, #0xa
_08022BF6:
	mov r0, r8
	ldrb r0, [r0, #2]
	cmp r3, r0
	bne _08022CD8
	mov r1, ip
	cmp r1, #0
	bne _08022C16
	mov r3, sl
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, #0x14
	subs r1, r1, r0
	cmp r1, #0
	ble _08022CD8
_08022C16:
	cmp r2, #3
	beq _08022C1E
	cmp r2, #5
	bne _08022C22
_08022C1E:
	movs r0, #2
	strh r0, [r6, #0x1c]
_08022C22:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08022C64 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	mov r0, r8
	ldrb r3, [r0, #3]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08022C68
	mov r1, r8
	ldrb r0, [r1, #4]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	ldrb r0, [r1, #4]
	lsls r0, r0, #4
	b _08022C86
	.align 2, 0
_08022C5C: .4byte gCamera
_08022C60: .4byte gGameMode
_08022C64: .4byte 0xFFFFFEFF
_08022C68:
	ldr r2, _08022CD0 @ =gUnknown_080BB4F4
	movs r1, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	mov r3, r8
	ldrb r0, [r3, #3]
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
_08022C86:
	rsbs r0, r0, #0
	strh r0, [r6, #8]
	mov r0, ip
	cmp r0, #0
	beq _08022CA4
	ldrh r1, [r6, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #8]
	ldrh r1, [r6, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #0xa]
_08022CA4:
	ldr r0, _08022CD4 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022CB6
	ldrh r0, [r6, #0xa]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
_08022CB6:
	mov r2, r8
	ldrb r1, [r2, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022DA8
	adds r0, r6, #0
	bl sub_8046CEC
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x15
	b _08022DB4
	.align 2, 0
_08022CD0: .4byte gUnknown_080BB4F4
_08022CD4: .4byte gUnknown_03005004
_08022CD8:
	mov r3, ip
	cmp r3, #0
	bne _08022CF0
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r6]
	asrs r0, r0, #8
	subs r0, r1, r0
	adds r0, #0x14
	cmp r0, #0
	bge _08022DE0
_08022CF0:
	ldrb r0, [r4]
	cmp r0, #3
	beq _08022CFA
	cmp r0, #5
	bne _08022CFE
_08022CFA:
	movs r0, #2
	strh r0, [r6, #0x1c]
_08022CFE:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08022D34 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	mov r2, r8
	ldrb r3, [r2, #3]
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #3
	ble _08022D38
	ldrb r0, [r2, #4]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	ldrb r0, [r2, #4]
	lsls r0, r0, #4
	b _08022D56
	.align 2, 0
_08022D34: .4byte 0xFFFFFEFF
_08022D38:
	ldr r2, _08022DA0 @ =gUnknown_080BB4F4
	movs r1, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	mov r3, r8
	ldrb r0, [r3, #3]
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
_08022D56:
	strh r0, [r6, #8]
	mov r0, ip
	cmp r0, #0
	beq _08022D72
	ldrh r1, [r6, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #8]
	ldrh r1, [r6, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #0xa]
_08022D72:
	ldr r0, _08022DA4 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022D84
	ldrh r0, [r6, #0xa]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
_08022D84:
	mov r2, r8
	ldrb r1, [r2, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022DA8
	adds r0, r6, #0
	bl sub_8046CEC
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x15
	b _08022DB4
	.align 2, 0
_08022DA0: .4byte gUnknown_080BB4F4
_08022DA4: .4byte gUnknown_03005004
_08022DA8:
	adds r0, r6, #0
	bl sub_8046CEC
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x11
_08022DB4:
	strb r0, [r1]
	ldr r0, [r6, #0x64]
	adds r0, #0x2d
	movs r1, #0xff
	strb r1, [r0]
	mov r1, sb
	adds r1, #0x20
	movs r0, #5
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r6, #0xe]
	movs r0, #0xe
	strb r0, [r6, #0xf]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r0, #1
	b _08022E02
_08022DE0:
	ldr r3, [sp, #8]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	adds r3, r6, #0
	bl sub_80096B0
	b _08022E00
_08022DF0:
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	asrs r2, r4, #0x10
	mov r0, sb
	adds r3, r6, #0
	bl sub_80096B0
_08022E00:
	movs r0, #0
_08022E02:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8022E14
sub_8022E14: @ 0x08022E14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldrb r4, [r6, #0xe]
	adds r4, #6
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	ldrb r2, [r6, #0xf]
	adds r2, #1
	rsbs r3, r2, #0
	mov r0, sp
	adds r0, #5
	strb r3, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r2, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	mov r1, r8
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r5, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r1, _08022FB0 @ =gCamera
	ldrh r0, [r1]
	lsrs r3, r2, #0x10
	mov sl, r3
	asrs r4, r2, #0x10
	subs r0, r4, r0
	mov r2, sb
	strh r0, [r2, #0x16]
	ldrh r0, [r1, #2]
	ldr r3, [sp, #8]
	lsls r5, r3, #0x10
	asrs r2, r5, #0x10
	subs r0, r2, r0
	mov r1, sb
	strh r0, [r1, #0x18]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08022E96
	b _08023158
_08022E96:
	mov r0, sb
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_800A768
	mov ip, r0
	cmp r0, #0
	bne _08022F3A
	mov r0, sb
	adds r0, #0x34
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r4, r3
	ldr r0, [r6]
	asrs r0, r0, #8
	mov r1, sp
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r2, r1
	bgt _08022EDA
	mov r0, sb
	adds r0, #0x36
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _08022EEE
	adds r4, r5, #0
	cmp r2, r1
	bge _08022EDA
	b _08023148
_08022EDA:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	adds r4, r5, #0
	cmp r0, r2
	bge _08022EEE
	b _08023148
_08022EEE:
	ldr r3, [sp, #8]
	lsls r2, r3, #0x10
	asrs r0, r2, #0x10
	mov r1, sb
	adds r1, #0x35
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r3, r0, r5
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	mov r1, sp
	movs r7, #1
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	adds r4, r2, #0
	cmp r3, r1
	bgt _08022F28
	mov r0, sb
	adds r0, #0x37
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r1
	bge _08022F3A
	cmp r3, r1
	bge _08022F28
	b _08023148
_08022F28:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r3
	bge _08022F3A
	b _08023148
_08022F3A:
	ldr r0, [r6, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc
	ands r0, r1
	str r0, [r6, #0x10]
	mov r1, r8
	ldrb r0, [r1, #2]
	cmp r0, #0xe
	bne _0802302C
	mov r2, ip
	cmp r2, #0
	bne _08022F68
	mov r3, sl
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, #0x14
	subs r1, r1, r0
	cmp r1, #0
	ble _0802302C
_08022F68:
	ldr r0, _08022FB4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08022F74
	cmp r0, #5
	bne _08022F78
_08022F74:
	movs r0, #2
	strh r0, [r6, #0x1c]
_08022F78:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08022FB8 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	mov r0, r8
	ldrb r3, [r0, #3]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08022FBC
	mov r1, r8
	ldrb r0, [r1, #4]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	ldrb r0, [r1, #4]
	lsls r0, r0, #4
	b _08022FDA
	.align 2, 0
_08022FB0: .4byte gCamera
_08022FB4: .4byte gGameMode
_08022FB8: .4byte 0xFFFFFEFF
_08022FBC:
	ldr r2, _08023024 @ =gUnknown_080BB4F4
	movs r1, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	mov r3, r8
	ldrb r0, [r3, #3]
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
_08022FDA:
	rsbs r0, r0, #0
	strh r0, [r6, #8]
	mov r0, ip
	cmp r0, #0
	beq _08022FF8
	ldrh r1, [r6, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #8]
	ldrh r1, [r6, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #0xa]
_08022FF8:
	ldr r0, _08023028 @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802300A
	ldrh r0, [r6, #0xa]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
_0802300A:
	mov r2, r8
	ldrb r1, [r2, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08023100
	adds r0, r6, #0
	bl sub_8046CEC
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x15
	b _0802310C
	.align 2, 0
_08023024: .4byte gUnknown_080BB4F4
_08023028: .4byte gUnknown_03005004
_0802302C:
	mov r3, ip
	cmp r3, #0
	bne _08023044
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r6]
	asrs r0, r0, #8
	subs r0, r1, r0
	adds r0, #0x14
	cmp r0, #0
	bge _08023138
_08023044:
	ldr r0, _08023088 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08023050
	cmp r0, #5
	bne _08023054
_08023050:
	movs r0, #2
	strh r0, [r6, #0x1c]
_08023054:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _0802308C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0
	strb r0, [r1]
	mov r2, r8
	ldrb r3, [r2, #3]
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #3
	ble _08023090
	ldrb r0, [r2, #4]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	ldrb r0, [r2, #4]
	lsls r0, r0, #4
	b _080230AE
	.align 2, 0
_08023088: .4byte gGameMode
_0802308C: .4byte 0xFFFFFEFF
_08023090:
	ldr r2, _080230F8 @ =gUnknown_080BB4F4
	movs r1, #3
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	mov r3, r8
	ldrb r0, [r3, #3]
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
_080230AE:
	strh r0, [r6, #8]
	mov r0, ip
	cmp r0, #0
	beq _080230CA
	ldrh r1, [r6, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #8]
	ldrh r1, [r6, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r6, #0xa]
_080230CA:
	ldr r0, _080230FC @ =gUnknown_03005004
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080230DC
	ldrh r0, [r6, #0xa]
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
_080230DC:
	mov r2, r8
	ldrb r1, [r2, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08023100
	adds r0, r6, #0
	bl sub_8046CEC
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x15
	b _0802310C
	.align 2, 0
_080230F8: .4byte gUnknown_080BB4F4
_080230FC: .4byte gUnknown_03005004
_08023100:
	adds r0, r6, #0
	bl sub_8046CEC
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x11
_0802310C:
	strb r0, [r1]
	ldr r0, [r6, #0x64]
	adds r0, #0x2d
	movs r1, #0xff
	strb r1, [r0]
	mov r1, sb
	adds r1, #0x20
	movs r0, #7
	strb r0, [r1]
	adds r0, r6, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r6, #0xe]
	movs r0, #0xe
	strb r0, [r6, #0xf]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r0, #1
	b _0802315A
_08023138:
	ldr r3, [sp, #8]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	adds r3, r6, #0
	bl sub_80096B0
	b _08023158
_08023148:
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	asrs r2, r4, #0x10
	mov r0, sb
	adds r3, r6, #0
	bl sub_80096B0
_08023158:
	movs r0, #0
_0802315A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_802316C
sub_802316C: @ 0x0802316C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
