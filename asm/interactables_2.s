.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable023
CreateEntity_Interactable023: @ 0x08074CFC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08074D90 @ =sub_8074E10
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08074D94 @ =sub_80750AC
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r2, _08074D98 @ =0x0300000C
	adds r7, r1, r2
	movs r3, #0
	mov sb, r3
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	mov r3, r8
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
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r3]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r2, [r7, #8]
	ldr r0, _08074D9C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #1
	beq _08074D84
	cmp r1, #0xf
	bne _08074DA4
_08074D84:
	movs r0, #0x1e
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _08074DA0 @ =0x000001F9
	b _08074DC6
	.align 2, 0
_08074D90: .4byte sub_8074E10
_08074D94: .4byte sub_80750AC
_08074D98: .4byte 0x0300000C
_08074D9C: .4byte gCurrentLevel
_08074DA0: .4byte 0x000001F9
_08074DA4:
	cmp r0, #5
	beq _08074DAC
	cmp r1, #0x11
	bne _08074DBC
_08074DAC:
	movs r0, #0x1e
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _08074DB8 @ =0x000001F9
	b _08074DC6
	.align 2, 0
_08074DB8: .4byte 0x000001F9
_08074DBC:
	movs r0, #0x18
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _08074E0C @ =0x000001CD
_08074DC6:
	strh r0, [r7, #0xa]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	adds r2, r7, #0
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	adds r2, #1
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x25
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074E0C: .4byte 0x000001CD

	thumb_func_start sub_8074E10
sub_8074E10: @ 0x08074E10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08074EA8 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r1, _08074EAC @ =0x0300000C
	adds r4, r5, r1
	ldr r7, [r6]
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08074EB0 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_8074FB0
	cmp r0, #0
	beq _08074E74
	movs r0, #0xb0
	bl m4aSongNumStart
	ldr r0, _08074EB4 @ =0x0300002C
	adds r1, r5, r0
	movs r0, #1
	strb r0, [r1]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08074EB8 @ =sub_8074ECC
	str r0, [r1, #8]
_08074E74:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08074E98
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08074E98
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08074EBC
_08074E98:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _08074EA8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08074EC2
	.align 2, 0
_08074EA8: .4byte gCurTask
_08074EAC: .4byte 0x0300000C
_08074EB0: .4byte gCamera
_08074EB4: .4byte 0x0300002C
_08074EB8: .4byte sub_8074ECC
_08074EBC:
	adds r0, r4, #0
	bl DisplaySprite
_08074EC2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8074ECC
sub_8074ECC: @ 0x08074ECC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08074F64 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r1, _08074F68 @ =0x0300000C
	adds r4, r6, r1
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
	ldr r3, _08074F6C @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_8074FB0
	cmp r0, #0
	beq _08074F30
	movs r0, #0xb0
	bl m4aSongNumStart
	ldr r0, _08074F70 @ =0x0300002C
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08074F74 @ =0x0300002D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
_08074F30:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08074F54
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08074F54
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08074F78
_08074F54:
	ldrb r0, [r5, #8]
	strb r0, [r7]
	ldr r0, _08074F64 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08074F9E
	.align 2, 0
_08074F64: .4byte gCurTask
_08074F68: .4byte 0x0300000C
_08074F6C: .4byte gCamera
_08074F70: .4byte 0x0300002C
_08074F74: .4byte 0x0300002D
_08074F78:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _08074F98
	ldr r0, _08074FA8 @ =0x0300002C
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08074FAC @ =sub_8074E10
	str r0, [r1, #8]
_08074F98:
	adds r0, r4, #0
	bl DisplaySprite
_08074F9E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074FA8: .4byte 0x0300002C
_08074FAC: .4byte sub_8074E10

	thumb_func_start sub_8074FB0
sub_8074FB0: @ 0x08074FB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	movs r7, #0
	movs r6, #0
	ldr r0, _0807508C @ =0xF5020000
	mov r8, r0
_08074FD2:
	ldr r4, _08075090 @ =gUnknown_03005A20
	cmp r6, #0
	beq _08074FDA
	ldr r4, _08075094 @ =gUnknown_03005AB0
_08074FDA:
	movs r1, #0xa
	ldrsh r5, [r4, r1]
	mov r2, sl
	lsls r1, r2, #0x10
	mov r0, sb
	lsls r2, r0, #0x10
	ldr r0, [sp]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl sub_80096B0
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _0807506C
	adds r0, r4, #0
	bl sub_8046CEC
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r1, _08075098 @ =0xFFFFFEFF
	ands r0, r1
	adds r1, #0xfc
	ands r0, r1
	subs r1, #0xc
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	cmp r5, #0
	bne _0807502E
	ldr r0, [r4, #4]
	ldr r1, _0807509C @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #4]
_0807502E:
	asrs r1, r5, #5
	asrs r0, r5, #2
	adds r0, r5, r0
	subs r1, r1, r0
	strh r1, [r4, #0xa]
	lsls r1, r1, #0x10
	mov r2, r8
	asrs r0, r2, #0x10
	cmp r1, r8
	bge _08075044
	strh r0, [r4, #0xa]
_08075044:
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	ldr r2, _080750A0 @ =0xFC400000
	asrs r1, r2, #0x10
	cmp r0, r1
	ble _08075052
	strh r1, [r4, #0xa]
_08075052:
	adds r0, r4, #0
	adds r0, #0x40
	movs r1, #0x15
	strb r1, [r0]
	ldr r0, _080750A4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08075066
	cmp r0, #5
	bne _0807506A
_08075066:
	movs r0, #0x1e
	strh r0, [r4, #0x1c]
_0807506A:
	movs r7, #1
_0807506C:
	adds r6, #1
	ldr r0, _080750A8 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	blt _08074FD2
	adds r0, r7, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807508C: .4byte 0xF5020000
_08075090: .4byte gUnknown_03005A20
_08075094: .4byte gUnknown_03005AB0
_08075098: .4byte 0xFFFFFEFF
_0807509C: .4byte 0xFFFFF800
_080750A0: .4byte 0xFC400000
_080750A4: .4byte gGameMode
_080750A8: .4byte gUnknown_03005088

	thumb_func_start sub_80750AC
sub_80750AC: @ 0x080750AC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable025
CreateEntity_Interactable025: @ 0x080750C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
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
	ldr r0, _080751B0 @ =sub_80751D8
	ldr r1, _080751B4 @ =sub_8075608
	str r1, [sp]
	movs r1, #0x44
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _080751B8 @ =0x0300000C
	adds r5, r2, r1
	movs r7, #0
	mov sl, r7
	movs r3, #0
	strh r4, [r0, #4]
	strh r6, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r7, r8
	strb r7, [r0, #9]
	str r3, [r0, #0x3c]
	ldr r1, _080751BC @ =0x03000040
	adds r0, r2, r1
	mov r7, sl
	strb r7, [r0]
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
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	strb r0, [r1]
	movs r0, #0xc
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r3, [sp, #8]
	strh r3, [r5, #8]
	ldr r1, _080751C0 @ =gUnknown_086CED04
	ldr r0, _080751C4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r2, [sp, #4]
	ldr r1, _080751C8 @ =0x0300002C
	adds r0, r2, r1
	mov r7, sl
	strb r7, [r0]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r0, _080751CC @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r7, _080751D0 @ =0x0300002E
	adds r1, r2, r7
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080751D4 @ =0x03000031
	adds r2, r2, r0
	mov r1, sl
	strb r1, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r7, #0x80
	lsls r7, r7, #6
	str r7, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080751B0: .4byte sub_80751D8
_080751B4: .4byte sub_8075608
_080751B8: .4byte 0x0300000C
_080751BC: .4byte 0x03000040
_080751C0: .4byte gUnknown_086CED04
_080751C4: .4byte gCurrentLevel
_080751C8: .4byte 0x0300002C
_080751CC: .4byte 0x0300002D
_080751D0: .4byte 0x0300002E
_080751D4: .4byte 0x03000031

	thumb_func_start sub_80751D8
sub_80751D8: @ 0x080751D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0807527C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r1, _08075280 @ =0x0300000C
	adds r4, r5, r1
	ldr r7, [r6]
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08075284 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_80753D0
	cmp r0, #0
	beq _08075248
	ldr r0, _08075288 @ =0x03000040
	adds r1, r5, r0
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #0
	str r0, [r6, #0x3c]
	ldr r0, _0807528C @ =0x0300002C
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08075290 @ =sub_80752A4
	str r0, [r1, #8]
	movs r0, #0xaa
	bl m4aSongNumStart
_08075248:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807526C
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0807526C
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08075294
_0807526C:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, _0807527C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807529A
	.align 2, 0
_0807527C: .4byte gCurTask
_08075280: .4byte 0x0300000C
_08075284: .4byte gCamera
_08075288: .4byte 0x03000040
_0807528C: .4byte 0x0300002C
_08075290: .4byte sub_80752A4
_08075294:
	adds r0, r4, #0
	bl DisplaySprite
_0807529A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80752A4
sub_80752A4: @ 0x080752A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08075370 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r2, r8
	adds r7, r2, r0
	ldr r6, _08075374 @ =0x0300000C
	add r6, r8
	ldr r0, [r7]
	mov sl, r0
	ldrb r5, [r7, #8]
	lsls r5, r5, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	mov r1, sl
	ldrb r4, [r1, #1]
	lsls r4, r4, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _08075378 @ =gCamera
	mov sb, r2
	ldrh r0, [r2]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x16]
	ldr r2, _0807537C @ =gSineTable
	ldr r0, [r7, #0x3c]
	ldr r1, _08075380 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x80
	lsls r1, r1, #3
	bl Div
	mov r2, sb
	ldrh r1, [r2, #2]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r1, r4, r1
	adds r1, r1, r0
	strh r1, [r6, #0x18]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80753D0
	cmp r0, #0
	beq _0807533A
	ldr r1, _08075384 @ =0x03000040
	add r1, r8
	movs r0, #0x1e
	strb r0, [r1]
	movs r0, #0
	str r0, [r7, #0x3c]
	ldr r1, _08075388 @ =0x0300002C
	add r1, r8
	strb r0, [r1]
	movs r0, #0xaa
	bl m4aSongNumStart
_0807533A:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807535E
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0807535E
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807538C
_0807535E:
	ldrb r0, [r7, #8]
	mov r1, sl
	strb r0, [r1]
	ldr r0, _08075370 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080753B6
	.align 2, 0
_08075370: .4byte gCurTask
_08075374: .4byte 0x0300000C
_08075378: .4byte gCamera
_0807537C: .4byte gSineTable
_08075380: .4byte 0x000003FF
_08075384: .4byte 0x03000040
_08075388: .4byte 0x0300002C
_0807538C:
	ldr r0, [r7, #0x3c]
	adds r0, #0x5a
	str r0, [r7, #0x3c]
	ldr r1, _080753C4 @ =0x03000040
	add r1, r8
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080753AA
	ldr r2, _080753C8 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _080753CC @ =sub_80751D8
	str r0, [r1, #8]
_080753AA:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_080753B6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080753C4: .4byte 0x03000040
_080753C8: .4byte gCurTask
_080753CC: .4byte sub_80751D8

	thumb_func_start sub_80753D0
sub_80753D0: @ 0x080753D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov sl, r1
	mov r8, r2
	movs r7, #0
	movs r4, #0
	ldr r5, _080753FC @ =gUnknown_03005AB0
	ldr r6, _08075400 @ =gUnknown_03005A20
_080753E8:
	cmp r4, #0
	beq _08075404
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080753F8
	b _080755DC
_080753F8:
	ldr r3, _08075400 @ =gUnknown_03005A20
	b _08075412
	.align 2, 0
_080753FC: .4byte gUnknown_03005AB0
_08075400: .4byte gUnknown_03005A20
_08075404:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	ands r1, r0
	ldr r3, _0807544C @ =gUnknown_03005A20
	cmp r1, #0
	beq _08075412
	b _080755DC
_08075412:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _08075424
	ldr r3, _08075450 @ =gUnknown_03005AB0
_08075424:
	mov r0, sb
	bl sub_80096B0
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08075434
	b _080755DC
_08075434:
	ldr r0, _08075454 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _08075440
	cmp r0, #5
	bne _0807545C
_08075440:
	cmp r4, #0
	beq _08075458
	movs r0, #0x1e
	strh r0, [r5, #0x1c]
	b _0807545C
	.align 2, 0
_0807544C: .4byte gUnknown_03005A20
_08075450: .4byte gUnknown_03005AB0
_08075454: .4byte gGameMode
_08075458:
	movs r0, #0x1e
	strh r0, [r6, #0x1c]
_0807545C:
	ldr r0, _08075478 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08075464
	ldr r0, _0807547C @ =gUnknown_03005AB0
_08075464:
	bl sub_8046CEC
	cmp r4, #0
	beq _08075480
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807548A
	.align 2, 0
_08075478: .4byte gUnknown_03005A20
_0807547C: .4byte gUnknown_03005AB0
_08075480:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807548A:
	ldr r3, _0807549C @ =gUnknown_03005A20
	cmp r4, #0
	beq _080754A0
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	b _080754A8
	.align 2, 0
_0807549C: .4byte gUnknown_03005A20
_080754A0:
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
_080754A8:
	cmp r4, #0
	beq _080754BC
	ldr r0, [r5, #0x10]
	ldr r1, _080754B8 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _080754C4
	.align 2, 0
_080754B8: .4byte 0xFFFFFEFF
_080754BC:
	ldr r0, [r6, #0x10]
	ldr r1, _080754D4 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
_080754C4:
	cmp r4, #0
	beq _080754D8
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _080754E2
	.align 2, 0
_080754D4: .4byte 0xFFFFFEFF
_080754D8:
	ldr r0, [r6, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_080754E2:
	cmp r4, #0
	beq _080754F2
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _080754FC
_080754F2:
	ldr r0, [r6, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_080754FC:
	ldr r0, _08075518 @ =gUnknown_03005084
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _08075526
	cmp r4, #0
	beq _0807551C
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08075526
	.align 2, 0
_08075518: .4byte gUnknown_03005084
_0807551C:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r6, #0x10]
_08075526:
	cmp r4, #0
	beq _08075536
	ldrh r0, [r5, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08075540
	b _08075556
_08075536:
	ldrh r0, [r3, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08075556
_08075540:
	cmp r4, #0
	beq _0807554E
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0x10]
	b _0807558A
_0807554E:
	ldr r0, [r6, #0x10]
	movs r1, #1
	orrs r0, r1
	b _08075588
_08075556:
	cmp r4, #0
	beq _08075566
	ldrh r0, [r5, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08075570
	b _0807558A
_08075566:
	ldrh r0, [r3, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807558A
_08075570:
	cmp r4, #0
	beq _08075580
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807558A
_08075580:
	ldr r0, [r6, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08075588:
	str r0, [r6, #0x10]
_0807558A:
	cmp r4, #0
	beq _08075596
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	b _0807559C
_08075596:
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r3, #0xa]
_0807559C:
	cmp r4, #0
	beq _080755AC
	movs r0, #0x17
	ldr r1, _080755A8 @ =gUnknown_03005AF0
	b _080755B2
	.align 2, 0
_080755A8: .4byte gUnknown_03005AF0
_080755AC:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x17
_080755B2:
	strb r0, [r1]
	ldr r0, _080755FC @ =gUnknown_03005A20
	cmp r4, #0
	beq _080755BC
	ldr r0, _08075600 @ =gUnknown_03005AB0
_080755BC:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _080755FC @ =gUnknown_03005A20
	cmp r4, #0
	beq _080755CA
	ldr r1, _08075600 @ =gUnknown_03005AB0
_080755CA:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _080755FC @ =gUnknown_03005A20
	cmp r4, #0
	beq _080755D6
	ldr r1, _08075600 @ =gUnknown_03005AB0
_080755D6:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r7, #1
_080755DC:
	adds r4, #1
	ldr r0, _08075604 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _080755EC
	b _080753E8
_080755EC:
	adds r0, r7, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080755FC: .4byte gUnknown_03005A20
_08075600: .4byte gUnknown_03005AB0
_08075604: .4byte gUnknown_03005088

	thumb_func_start sub_8075608
sub_8075608: @ 0x08075608
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_807561C
sub_807561C: @ 0x0807561C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08075690 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp]
	ldr r2, _08075694 @ =0x03000008
	adds r0, r1, r2
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r3, _08075698 @ =0x03000004
	adds r0, r1, r3
	ldrh r2, [r0]
	adds r3, #2
	adds r0, r1, r3
	ldrh r3, [r0]
	ldr r0, _0807569C @ =0x03000009
	adds r1, r1, r0
	ldrb r1, [r1]
	str r1, [sp, #8]
	ldr r1, [sp, #4]
	lsls r0, r1, #3
	lsls r2, r2, #8
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r2, [sp]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r3, r3, #8
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r4, #0
	ldr r5, _080756A0 @ =gUnknown_03005AB0
	ldr r6, _080756A4 @ =gUnknown_03005A20
_08075678:
	cmp r4, #0
	beq _080756A8
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r3, sl
	lsls r3, r3, #0x10
	mov sb, r3
	mov r0, r8
	lsls r7, r0, #0x10
	b _080756B8
	.align 2, 0
_08075690: .4byte gCurTask
_08075694: .4byte 0x03000008
_08075698: .4byte 0x03000004
_0807569C: .4byte 0x03000009
_080756A0: .4byte gUnknown_03005AB0
_080756A4: .4byte gUnknown_03005A20
_080756A8:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r2, sl
	lsls r2, r2, #0x10
	mov sb, r2
	mov r3, r8
	lsls r7, r3, #0x10
_080756B8:
	cmp r1, #0
	beq _080756BE
	b _08075A08
_080756BE:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov sb, r0
	cmp r4, #0
	beq _080756D8
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	ble _080756E6
	mov r2, r8
	lsls r7, r2, #0x10
	b _08075A08
_080756D8:
	ldr r0, [r6]
	asrs r0, r0, #8
	mov r3, r8
	lsls r7, r3, #0x10
	cmp r1, r0
	ble _080756E6
	b _08075A08
_080756E6:
	mov r0, sb
	asrs r1, r0, #0x10
	ldr r2, [sp]
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r4, #0
	beq _08075704
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08075712
	mov r3, r8
	lsls r7, r3, #0x10
	b _08075A08
_08075704:
	ldr r0, [r6]
	asrs r0, r0, #8
	mov r2, r8
	lsls r7, r2, #0x10
	cmp r1, r0
	bge _08075712
	b _08075A08
_08075712:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	adds r7, r0, #0
	cmp r4, #0
	beq _08075728
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08075732
	b _08075A08
_08075728:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08075732
	b _08075A08
_08075732:
	asrs r1, r7, #0x10
	ldr r2, [sp]
	ldrb r0, [r2, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r4, #0
	beq _0807574A
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08075754
	b _08075A08
_0807574A:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08075754
	b _08075A08
_08075754:
	ldr r3, [sp, #8]
	cmp r3, #0
	bne _0807575C
	b _080758AC
_0807575C:
	cmp r4, #0
	beq _0807576E
	movs r0, #8
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bgt _0807577C
	b _08075A08
_0807576E:
	movs r2, #8
	ldrsh r1, [r6, r2]
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bgt _0807577C
	b _08075A08
_0807577C:
	cmp r4, #0
	beq _0807578C
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _08075796
_0807578C:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_08075796:
	cmp r4, #0
	beq _080757A4
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	b _080757AC
_080757A4:
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
_080757AC:
	cmp r4, #0
	beq _080757C0
	ldr r0, [r5, #0x10]
	ldr r1, _080757BC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _080757C8
	.align 2, 0
_080757BC: .4byte 0xFFFFFEFF
_080757C0:
	ldr r0, [r6, #0x10]
	ldr r1, _080757D8 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
_080757C8:
	cmp r4, #0
	beq _080757DC
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _080757E6
	.align 2, 0
_080757D8: .4byte 0xFFFFFEFF
_080757DC:
	ldr r0, [r6, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_080757E6:
	ldr r0, _0807581C @ =gUnknown_03005A20
	cmp r4, #0
	beq _080757EE
	ldr r0, _08075820 @ =gUnknown_03005AB0
_080757EE:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _0807581C @ =gUnknown_03005A20
	cmp r4, #0
	beq _080757FC
	ldr r1, _08075820 @ =gUnknown_03005AB0
_080757FC:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r2, _0807581C @ =gUnknown_03005A20
	adds r1, r2, #0
	cmp r4, #0
	beq _0807580A
	ldr r1, _08075820 @ =gUnknown_03005AB0
_0807580A:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	cmp r4, #0
	beq _08075824
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	b _0807582A
	.align 2, 0
_0807581C: .4byte gUnknown_03005A20
_08075820: .4byte gUnknown_03005AB0
_08075824:
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r2, #0xa]
_0807582A:
	cmp r4, #0
	beq _0807583C
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	ldrh r1, [r5, #8]
	adds r0, r0, r1
	strh r0, [r5, #8]
	b _08075848
_0807583C:
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	ldrh r1, [r6, #8]
	adds r0, r0, r1
	strh r0, [r6, #8]
_08075848:
	cmp r4, #0
	beq _0807585A
	movs r3, #8
	ldrsh r1, [r5, r3]
	movs r0, #0x88
	lsls r0, r0, #5
	cmp r1, r0
	bgt _08075866
	b _08075878
_0807585A:
	movs r0, #8
	ldrsh r1, [r2, r0]
	movs r0, #0x88
	lsls r0, r0, #5
	cmp r1, r0
	ble _08075878
_08075866:
	cmp r4, #0
	beq _08075872
	movs r0, #0x88
	lsls r0, r0, #5
	strh r0, [r5, #8]
	b _08075878
_08075872:
	movs r0, #0x88
	lsls r0, r0, #5
	strh r0, [r2, #8]
_08075878:
	adds r0, r2, #0
	cmp r4, #0
	beq _08075880
	ldr r0, _08075890 @ =gUnknown_03005AB0
_08075880:
	bl sub_8046CEC
	cmp r4, #0
	beq _08075898
	movs r0, #0x11
	ldr r1, _08075894 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _0807589E
	.align 2, 0
_08075890: .4byte gUnknown_03005AB0
_08075894: .4byte gUnknown_03005AF0
_08075898:
	movs r0, #0x11
	ldr r2, _080758A8 @ =gUnknown_03005A60
	strb r0, [r2]
_0807589E:
	movs r0, #0xaa
	bl m4aSongNumStart
	b _08075A08
	.align 2, 0
_080758A8: .4byte gUnknown_03005A60
_080758AC:
	cmp r4, #0
	beq _080758C0
	movs r3, #8
	ldrsh r1, [r5, r3]
	ldr r0, _080758BC @ =0xFFFFFC00
	cmp r1, r0
	blt _080758CC
	b _08075A08
	.align 2, 0
_080758BC: .4byte 0xFFFFFC00
_080758C0:
	movs r0, #8
	ldrsh r1, [r6, r0]
	ldr r0, _080758DC @ =0xFFFFFC00
	cmp r1, r0
	blt _080758CC
	b _08075A08
_080758CC:
	cmp r4, #0
	beq _080758E0
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _080758EA
	.align 2, 0
_080758DC: .4byte 0xFFFFFC00
_080758E0:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_080758EA:
	cmp r4, #0
	beq _080758F8
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08075900
_080758F8:
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
_08075900:
	cmp r4, #0
	beq _08075914
	ldr r0, [r5, #0x10]
	ldr r1, _08075910 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807591C
	.align 2, 0
_08075910: .4byte 0xFFFFFEFF
_08075914:
	ldr r0, [r6, #0x10]
	ldr r1, _0807592C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
_0807591C:
	cmp r4, #0
	beq _08075930
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807593A
	.align 2, 0
_0807592C: .4byte 0xFFFFFEFF
_08075930:
	ldr r0, [r6, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807593A:
	ldr r0, _08075970 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08075942
	ldr r0, _08075974 @ =gUnknown_03005AB0
_08075942:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _08075970 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08075950
	ldr r1, _08075974 @ =gUnknown_03005AB0
_08075950:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r2, _08075970 @ =gUnknown_03005A20
	adds r1, r2, #0
	cmp r4, #0
	beq _0807595E
	ldr r1, _08075974 @ =gUnknown_03005AB0
_0807595E:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	cmp r4, #0
	beq _08075978
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	b _0807597E
	.align 2, 0
_08075970: .4byte gUnknown_03005A20
_08075974: .4byte gUnknown_03005AB0
_08075978:
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r2, #0xa]
_0807597E:
	cmp r4, #0
	beq _08075994
	ldr r1, _08075990 @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r3, [r5, #8]
	adds r0, r0, r3
	strh r0, [r5, #8]
	b _0807599E
	.align 2, 0
_08075990: .4byte 0xFFFFFC00
_08075994:
	ldr r1, _080759B0 @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r3, [r6, #8]
	adds r0, r0, r3
	strh r0, [r6, #8]
_0807599E:
	cmp r4, #0
	beq _080759B8
	movs r0, #8
	ldrsh r1, [r5, r0]
	ldr r0, _080759B4 @ =0xFFFFEF00
	cmp r1, r0
	blt _080759C2
	b _080759DA
	.align 2, 0
_080759B0: .4byte 0xFFFFFC00
_080759B4: .4byte 0xFFFFEF00
_080759B8:
	movs r3, #8
	ldrsh r1, [r2, r3]
	ldr r0, _080759D0 @ =0xFFFFEF00
	cmp r1, r0
	bge _080759DA
_080759C2:
	cmp r4, #0
	beq _080759D4
	movs r0, #0xef
	lsls r0, r0, #8
	strh r0, [r5, #8]
	b _080759DA
	.align 2, 0
_080759D0: .4byte 0xFFFFEF00
_080759D4:
	movs r0, #0xef
	lsls r0, r0, #8
	strh r0, [r2, #8]
_080759DA:
	adds r0, r2, #0
	cmp r4, #0
	beq _080759E2
	ldr r0, _080759F4 @ =gUnknown_03005AB0
_080759E2:
	bl sub_8046CEC
	cmp r4, #0
	beq _080759FC
	movs r0, #0x11
	ldr r1, _080759F8 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _08075A02
	.align 2, 0
_080759F4: .4byte gUnknown_03005AB0
_080759F8: .4byte gUnknown_03005AF0
_080759FC:
	movs r0, #0x11
	ldr r2, _08075A74 @ =gUnknown_03005A60
	strb r0, [r2]
_08075A02:
	movs r0, #0xaa
	bl m4aSongNumStart
_08075A08:
	adds r4, #1
	ldr r0, _08075A78 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _08075A18
	b _08075678
_08075A18:
	ldr r2, _08075A7C @ =gCamera
	ldrh r0, [r2]
	mov r3, sb
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	asrs r0, r7, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08075A54
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08075A54
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08075A64
_08075A54:
	mov r2, sp
	ldrb r3, [r2, #4]
	ldr r2, [sp]
	strb r3, [r2]
	ldr r0, _08075A80 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08075A64:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08075A74: .4byte gUnknown_03005A60
_08075A78: .4byte gUnknown_03005088
_08075A7C: .4byte gCamera
_08075A80: .4byte gCurTask

	thumb_func_start CreateEntity_Interactable026
CreateEntity_Interactable026: @ 0x08075A84
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08075AE4 @ =sub_807561C
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0xa
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	ldr r2, _08075AE8 @ =0x03000004
	adds r1, r1, r2
	strh r4, [r1]
	ldrh r1, [r0, #6]
	adds r2, #2
	adds r1, r1, r2
	strh r5, [r1]
	ldrh r1, [r0, #6]
	subs r2, #6
	adds r1, r1, r2
	str r6, [r1]
	ldrh r1, [r0, #6]
	adds r2, #9
	adds r1, r1, r2
	ldrb r2, [r6, #3]
	strb r2, [r1]
	ldrh r0, [r0, #6]
	ldr r1, _08075AEC @ =0x03000008
	adds r0, r0, r1
	ldrb r1, [r6]
	strb r1, [r0]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r6]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08075AE4: .4byte sub_807561C
_08075AE8: .4byte 0x03000004
_08075AEC: .4byte 0x03000008

	thumb_func_start CreateEntity_Interactable027
CreateEntity_Interactable027: @ 0x08075AF0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _08075B10 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #4
	bne _08075B18
	ldr r0, _08075B14 @ =sub_8075EFC
	b _08075B1A
	.align 2, 0
_08075B10: .4byte gCurrentLevel
_08075B14: .4byte sub_8075EFC
_08075B18:
	ldr r0, _08075BE0 @ =sub_8075C08
_08075B1A:
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08075BE4 @ =sub_807650C
	str r1, [sp]
	movs r1, #0x3f
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r0, [r2, #6]
	ldr r1, _08075BE8 @ =0x03000034
	adds r0, r0, r1
	strh r4, [r0]
	ldrh r0, [r2, #6]
	adds r1, #2
	adds r0, r0, r1
	strh r5, [r0]
	ldrh r0, [r2, #6]
	adds r1, #2
	adds r0, r0, r1
	movs r6, #0
	strh r6, [r0]
	ldrh r0, [r2, #6]
	adds r1, #2
	adds r0, r0, r1
	strh r6, [r0]
	ldrh r0, [r2, #6]
	adds r0, r0, r1
	strh r6, [r0]
	ldrh r0, [r2, #6]
	adds r0, r0, r1
	strh r6, [r0]
	ldrh r0, [r2, #6]
	subs r1, #0x3a
	adds r0, r0, r1
	str r7, [r0]
	ldrh r4, [r2, #6]
	ldr r0, _08075BEC @ =0x03000004
	adds r5, r4, r0
	adds r1, #0x3d
	adds r0, r4, r1
	strb r6, [r0]
	ldrh r0, [r2, #6]
	adds r1, #1
	adds r0, r0, r1
	strb r6, [r0]
	ldrh r0, [r2, #6]
	ldr r2, _08075BF0 @ =0x0300003C
	adds r0, r0, r2
	ldrb r1, [r7]
	strb r1, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x12
	bl VramMalloc
	str r0, [r5, #4]
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r5, #0x1a]
	strh r1, [r5, #8]
	ldr r2, _08075BF4 @ =gUnknown_086CED28
	ldr r0, _08075BF8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r5, #0xa]
	ldr r2, _08075BFC @ =0x03000024
	adds r0, r4, r2
	strb r6, [r0]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	ldr r0, _08075C00 @ =0x03000025
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r2, #2
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08075C04 @ =0x03000029
	adds r4, r4, r0
	strb r6, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08075BE0: .4byte sub_8075C08
_08075BE4: .4byte sub_807650C
_08075BE8: .4byte 0x03000034
_08075BEC: .4byte 0x03000004
_08075BF0: .4byte 0x0300003C
_08075BF4: .4byte gUnknown_086CED28
_08075BF8: .4byte gCurrentLevel
_08075BFC: .4byte 0x03000024
_08075C00: .4byte 0x03000025
_08075C04: .4byte 0x03000029

	thumb_func_start sub_8075C08
sub_8075C08: @ 0x08075C08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08075CC4 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r0, [r0]
	mov sb, r0
	ldr r2, _08075CC8 @ =0x0300003C
	adds r0, r1, r2
	ldrb r0, [r0]
	mov sl, r0
	ldr r3, _08075CCC @ =0x03000034
	adds r0, r1, r3
	ldrh r2, [r0]
	ldr r4, _08075CD0 @ =0x03000036
	adds r0, r1, r4
	ldrh r3, [r0]
	ldr r0, _08075CD4 @ =0x03000004
	adds r0, r0, r1
	mov r8, r0
	adds r4, #7
	adds r0, r1, r4
	ldrb r0, [r0]
	str r0, [sp, #8]
	ldr r0, _08075CD8 @ =0x0300003E
	adds r1, r1, r0
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	mov r4, sl
	lsls r1, r4, #3
	lsls r2, r2, #8
	adds r1, r1, r2
	mov r2, sb
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r3, r3, #8
	adds r0, r0, r3
	ldr r2, _08075CDC @ =gCamera
	ldrh r5, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r5
	ldrh r2, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x10
	adds r1, r1, r3
	movs r0, #0xf8
	lsls r0, r0, #0x11
	mov r7, ip
	cmp r1, r0
	bhi _08075CA4
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	adds r0, r3, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08075CA4
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r3, r0
	ble _08075D28
_08075CA4:
	movs r4, #0
	ldr r6, _08075CE0 @ =gUnknown_03005AB0
	ldr r5, _08075CE4 @ =gUnknown_03005A20
_08075CAA:
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	adds r0, r4, r0
	ldr r2, _08075CE8 @ =0x0300003A
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _08075D02
	cmp r4, #0
	beq _08075CEC
	movs r3, #0xa
	ldrsh r0, [r6, r3]
	b _08075CF0
	.align 2, 0
_08075CC4: .4byte gCurTask
_08075CC8: .4byte 0x0300003C
_08075CCC: .4byte 0x03000034
_08075CD0: .4byte 0x03000036
_08075CD4: .4byte 0x03000004
_08075CD8: .4byte 0x0300003E
_08075CDC: .4byte gCamera
_08075CE0: .4byte gUnknown_03005AB0
_08075CE4: .4byte gUnknown_03005A20
_08075CE8: .4byte 0x0300003A
_08075CEC:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
_08075CF0:
	movs r1, #2
	bl Div
	cmp r4, #0
	beq _08075CFE
	strh r0, [r6, #0xa]
	b _08075D00
_08075CFE:
	strh r0, [r5, #0xa]
_08075D00:
	ldr r7, _08075D20 @ =gCurTask
_08075D02:
	adds r4, #1
	ldr r0, _08075D24 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08075CAA
	mov r3, sl
	mov r2, sb
	strb r3, [r2]
	ldr r0, [r7]
	bl TaskDestroy
	b _08075ED4
	.align 2, 0
_08075D20: .4byte gCurTask
_08075D24: .4byte gUnknown_03005088
_08075D28:
	adds r0, r4, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r5, #0
	ldr r7, _08075D50 @ =gUnknown_03005AB0
	ldr r6, _08075D54 @ =gUnknown_03005A20
	movs r4, #0x80
	mov sl, r4
_08075D42:
	cmp r5, #0
	beq _08075D58
	ldr r0, [r7, #0x10]
	mov r1, sl
	ands r0, r1
	b _08075D5E
	.align 2, 0
_08075D50: .4byte gUnknown_03005AB0
_08075D54: .4byte gUnknown_03005A20
_08075D58:
	ldr r0, [r6, #0x10]
	mov r2, sl
	ands r0, r2
_08075D5E:
	cmp r0, #0
	beq _08075D64
	b _08075EA6
_08075D64:
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r5, #0
	beq _08075D7A
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08075D84
	b _08075E84
_08075D7A:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08075D84
	b _08075E84
_08075D84:
	asrs r1, r1, #0x10
	mov r4, sb
	ldrb r0, [r4, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r5, #0
	beq _08075D9C
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08075DA4
	b _08075E84
_08075D9C:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	blt _08075E84
_08075DA4:
	ldr r0, [sp, #4]
	lsls r3, r0, #0x10
	asrs r2, r3, #0x10
	mov r4, sb
	movs r1, #4
	ldrsb r1, [r4, r1]
	lsls r0, r1, #3
	adds r2, r2, r0
	adds r4, r3, #0
	adds r3, r1, #0
	cmp r5, #0
	beq _08075DC6
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08075DCE
	b _08075E84
_08075DC6:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r2, r0
	bgt _08075E84
_08075DCE:
	asrs r1, r4, #0x10
	lsls r0, r3, #3
	adds r1, r1, r0
	mov r2, sb
	ldrb r0, [r2, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r5, #0
	beq _08075DEA
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08075DF2
	b _08075E84
_08075DEA:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _08075E84
_08075DF2:
	bl sub_80549FC
	cmp r0, #0
	bne _08075E22
	cmp r5, #0
	beq _08075E06
	ldr r0, [r7, #0x10]
	mov r3, sl
	ands r0, r3
	b _08075E0C
_08075E06:
	ldr r0, [r6, #0x10]
	mov r4, sl
	ands r0, r4
_08075E0C:
	cmp r0, #0
	bne _08075E22
	cmp r5, #0
	beq _08075E1C
	ldrh r0, [r7, #0xa]
	adds r0, #0x10
	strh r0, [r7, #0xa]
	b _08075E22
_08075E1C:
	ldrh r0, [r6, #0xa]
	adds r0, #0x10
	strh r0, [r6, #0xa]
_08075E22:
	ldr r0, _08075E34 @ =gCamera
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r5, #0
	beq _08075E38
	ldr r0, [r7]
	b _08075E3A
	.align 2, 0
_08075E34: .4byte gCamera
_08075E38:
	ldr r0, [r6]
_08075E3A:
	asrs r0, r0, #8
	subs r0, r0, r1
	mov r3, r8
	strh r0, [r3, #0x16]
	movs r4, #2
	ldrsh r1, [r2, r4]
	cmp r5, #0
	beq _08075E4E
	ldr r0, [r7, #4]
	b _08075E50
_08075E4E:
	ldr r0, [r6, #4]
_08075E50:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0xa
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	ldr r2, _08075E78 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	adds r0, r5, r0
	ldr r3, _08075E7C @ =0x0300003A
	adds r1, r0, r3
	ldr r4, _08075E80 @ =0x03000038
	adds r0, r0, r4
	b _08075EA2
	.align 2, 0
_08075E78: .4byte gCurTask
_08075E7C: .4byte 0x0300003A
_08075E80: .4byte 0x03000038
_08075E84:
	ldr r1, _08075EE4 @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	adds r1, r5, r1
	ldr r2, _08075EE8 @ =0x03000038
	adds r1, r1, r2
	movs r0, #0
	strb r0, [r1]
	ldr r3, _08075EE4 @ =gCurTask
	ldr r0, [r3]
	ldrh r0, [r0, #6]
	adds r0, r5, r0
	ldr r4, _08075EEC @ =0x0300003A
	adds r1, r0, r4
	adds r0, r0, r2
_08075EA2:
	ldrb r0, [r0]
	strb r0, [r1]
_08075EA6:
	adds r5, #1
	ldr r0, _08075EF0 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _08075EB6
	b _08075D42
_08075EB6:
	ldr r1, _08075EE4 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r2, _08075EF4 @ =0x0300003D
	adds r0, r0, r2
	mov r3, sp
	ldrb r3, [r3, #8]
	strb r3, [r0]
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r4, _08075EF8 @ =0x0300003E
	adds r0, r0, r4
	mov r1, sp
	ldrb r1, [r1, #0xc]
	strb r1, [r0]
_08075ED4:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08075EE4: .4byte gCurTask
_08075EE8: .4byte 0x03000038
_08075EEC: .4byte 0x0300003A
_08075EF0: .4byte gUnknown_03005088
_08075EF4: .4byte 0x0300003D
_08075EF8: .4byte 0x0300003E

	thumb_func_start sub_8075EFC
sub_8075EFC: @ 0x08075EFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08075FB0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r0, [r0]
	mov sl, r0
	ldr r2, _08075FB4 @ =0x0300003C
	adds r0, r1, r2
	ldrb r7, [r0]
	ldr r3, _08075FB8 @ =0x03000034
	adds r0, r1, r3
	ldrh r2, [r0]
	ldr r4, _08075FBC @ =0x03000036
	adds r0, r1, r4
	ldrh r3, [r0]
	ldr r0, _08075FC0 @ =0x03000004
	adds r0, r1, r0
	str r0, [sp, #8]
	adds r4, #7
	adds r0, r1, r4
	ldrb r0, [r0]
	mov r8, r0
	ldr r0, _08075FC4 @ =0x0300003E
	adds r1, r1, r0
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	lsls r1, r7, #3
	lsls r2, r2, #8
	adds r1, r1, r2
	mov r2, sl
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r3, r3, #8
	adds r0, r0, r3
	ldr r2, _08075FC8 @ =gCamera
	ldrh r5, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r5
	ldrh r2, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x10
	adds r1, r1, r3
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08075F90
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	adds r0, r3, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08075F90
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r3, r0
	ble _08076024
_08075F90:
	movs r4, #0
	ldr r6, _08075FCC @ =gUnknown_03005AB0
	ldr r5, _08075FD0 @ =gUnknown_03005A20
_08075F96:
	ldr r0, _08075FB0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r2, _08075FD4 @ =0x0300003A
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #1
	bne _08075FEC
	cmp r4, #0
	beq _08075FD8
	movs r3, #0xa
	ldrsh r0, [r6, r3]
	b _08075FDC
	.align 2, 0
_08075FB0: .4byte gCurTask
_08075FB4: .4byte 0x0300003C
_08075FB8: .4byte 0x03000034
_08075FBC: .4byte 0x03000036
_08075FC0: .4byte 0x03000004
_08075FC4: .4byte 0x0300003E
_08075FC8: .4byte gCamera
_08075FCC: .4byte gUnknown_03005AB0
_08075FD0: .4byte gUnknown_03005A20
_08075FD4: .4byte 0x0300003A
_08075FD8:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
_08075FDC:
	movs r1, #2
	bl Div
	cmp r4, #0
	beq _08075FEA
	strh r0, [r6, #0xa]
	b _08075FEC
_08075FEA:
	strh r0, [r5, #0xa]
_08075FEC:
	adds r4, #1
	ldr r0, _08076018 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08075F96
	mov r2, r8
	cmp r2, #0
	beq _08076008
	ldr r0, _0807601C @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
_08076008:
	mov r3, sl
	strb r7, [r3]
	ldr r0, _08076020 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080764E4
	.align 2, 0
_08076018: .4byte gUnknown_03005088
_0807601C: .4byte gMPlayInfo_SE2
_08076020: .4byte gCurTask
_08076024:
	adds r0, r4, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	bl UpdateSpriteAnimation
	movs r5, #0
	ldr r4, _0807604C @ =gUnknown_03005AB0
	ldr r7, _08076050 @ =gUnknown_03005A20
	mov sb, r5
_08076042:
	cmp r5, #0
	beq _08076054
	ldr r0, [r4, #0x10]
	b _08076056
	.align 2, 0
_0807604C: .4byte gUnknown_03005AB0
_08076050: .4byte gUnknown_03005A20
_08076054:
	ldr r0, [r7, #0x10]
_08076056:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08076060
	b _080764B8
_08076060:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r5, #0
	beq _08076076
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08076080
	b _08076470
_08076076:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08076080
	b _08076470
_08076080:
	asrs r1, r1, #0x10
	mov r2, sl
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r5, #0
	beq _08076098
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080760A2
	b _08076470
_08076098:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080760A2
	b _08076470
_080760A2:
	ldr r0, [sp, #4]
	lsls r3, r0, #0x10
	asrs r2, r3, #0x10
	mov r0, sl
	movs r1, #4
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	adds r2, r2, r0
	adds r6, r1, #0
	cmp r5, #0
	beq _080760C2
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _080760CC
	b _08076470
_080760C2:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _080760CC
	b _08076470
_080760CC:
	asrs r1, r3, #0x10
	lsls r0, r6, #3
	adds r1, r1, r0
	mov r2, sl
	ldrb r0, [r2, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r5, #0
	beq _080760E8
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080760F2
	b _08076470
_080760E8:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080760F2
	b _08076470
_080760F2:
	cmp r5, #0
	beq _08076100
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0807610A
	b _08076414
_08076100:
	movs r1, #0xa
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bge _0807610A
	b _08076414
_0807610A:
	cmp r5, #0
	beq _08076112
	ldr r0, [r4, #0x10]
	b _08076114
_08076112:
	ldr r0, [r7, #0x10]
_08076114:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807611E
	b _08076414
_0807611E:
	mov r2, r8
	cmp r2, #0
	bne _0807612E
	movs r3, #1
	mov r8, r3
	movs r0, #0xc9
	bl m4aSongNumStart
_0807612E:
	ldr r0, _08076144 @ =gUnknown_030060E0
	ldrh r1, [r0]
	adds r3, r0, #0
	cmp r5, #0
	beq _0807614C
	ldrh r0, [r4, #0x3a]
	ands r0, r1
	ldr r2, _08076148 @ =gUnknown_03005A20
	cmp r0, #0
	bne _08076156
	b _080761DC
	.align 2, 0
_08076144: .4byte gUnknown_030060E0
_08076148: .4byte gUnknown_03005A20
_0807614C:
	ldrh r0, [r7, #0x3a]
	ands r0, r1
	ldr r2, _08076174 @ =gUnknown_03005A20
	cmp r0, #0
	beq _080761DC
_08076156:
	adds r0, r2, #0
	cmp r5, #0
	beq _0807615E
	ldr r0, _08076178 @ =gUnknown_03005AB0
_0807615E:
	bl sub_8046CEC
	cmp r5, #0
	beq _08076180
	ldr r1, _0807617C @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _0807618A
	b _080761A8
	.align 2, 0
_08076174: .4byte gUnknown_03005A20
_08076178: .4byte gUnknown_03005AB0
_0807617C: .4byte gUnknown_03005B09
_08076180:
	ldr r2, _08076194 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	beq _080761A8
_0807618A:
	cmp r5, #0
	beq _0807619C
	movs r0, #5
	ldr r3, _08076198 @ =gUnknown_03005AF0
	b _080761BC
	.align 2, 0
_08076194: .4byte gUnknown_03005A79
_08076198: .4byte gUnknown_03005AF0
_0807619C:
	movs r0, #5
	ldr r1, _080761A4 @ =gUnknown_03005A60
	strb r0, [r1]
	b _080761BE
	.align 2, 0
_080761A4: .4byte gUnknown_03005A60
_080761A8:
	cmp r5, #0
	beq _080761B8
	movs r0, #0x55
	ldr r2, _080761B4 @ =gUnknown_03005AF0
	strb r0, [r2]
	b _080761BE
	.align 2, 0
_080761B4: .4byte gUnknown_03005AF0
_080761B8:
	movs r0, #0x55
	ldr r3, _080761D4 @ =gUnknown_03005A60
_080761BC:
	strb r0, [r3]
_080761BE:
	movs r0, #0x9c
	lsls r0, r0, #3
	movs r1, #2
	bl Div
	rsbs r0, r0, #0
	cmp r5, #0
	beq _080761D8
	strh r0, [r4, #0xa]
	b _08076414
	.align 2, 0
_080761D4: .4byte gUnknown_03005A60
_080761D8:
	strh r0, [r7, #0xa]
	b _08076414
_080761DC:
	cmp r5, #0
	beq _080761F0
	ldr r1, _080761EC @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _080761FC
	b _08076300
	.align 2, 0
_080761EC: .4byte gUnknown_03005B09
_080761F0:
	ldr r1, _0807620C @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _080761FC
	b _08076300
_080761FC:
	cmp r5, #0
	beq _08076214
	ldr r1, _08076210 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x3e
	beq _0807621E
	b _08076288
	.align 2, 0
_0807620C: .4byte gUnknown_03005A79
_08076210: .4byte gUnknown_03005AF0
_08076214:
	ldr r1, _08076228 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x3e
	bne _08076288
_0807621E:
	cmp r5, #0
	beq _08076230
	movs r0, #4
	ldr r1, _0807622C @ =gUnknown_03005AF0
	b _08076234
	.align 2, 0
_08076228: .4byte gUnknown_03005A60
_0807622C: .4byte gUnknown_03005AF0
_08076230:
	movs r0, #4
	ldr r1, _08076240 @ =gUnknown_03005A60
_08076234:
	strb r0, [r1]
	cmp r5, #0
	beq _08076244
	mov r0, sb
	strh r0, [r4, #0xc]
	b _08076246
	.align 2, 0
_08076240: .4byte gUnknown_03005A60
_08076244:
	strh r5, [r2, #0xc]
_08076246:
	cmp r5, #0
	beq _08076250
	mov r1, sb
	strh r1, [r4, #8]
	b _08076252
_08076250:
	strh r5, [r2, #8]
_08076252:
	cmp r5, #0
	beq _08076262
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807626C
	b _0807627C
_08076262:
	ldr r0, [r2, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807627C
_0807626C:
	cmp r5, #0
	beq _08076276
	movs r0, #1
	str r0, [r4, #0x10]
	b _08076288
_08076276:
	movs r0, #1
	str r0, [r2, #0x10]
	b _08076288
_0807627C:
	cmp r5, #0
	beq _08076286
	mov r0, sb
	str r0, [r4, #0x10]
	b _08076288
_08076286:
	str r5, [r2, #0x10]
_08076288:
	cmp r5, #0
	beq _08076298
	ldr r0, [r4, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080762A2
	b _080762D0
_08076298:
	ldr r0, [r2, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080762D0
_080762A2:
	ldrh r1, [r3, #2]
	cmp r5, #0
	beq _080762B2
	ldrh r0, [r4, #0x3a]
	ands r0, r1
	cmp r0, #0
	bne _080762BA
	b _08076300
_080762B2:
	ldrh r0, [r2, #0x3a]
	ands r0, r1
	cmp r0, #0
	beq _08076300
_080762BA:
	cmp r5, #0
	beq _080762C4
	mov r1, sb
	strh r1, [r4, #0xc]
	b _080762C6
_080762C4:
	strh r5, [r2, #0xc]
_080762C6:
	cmp r5, #0
	beq _080762FE
	mov r3, sb
	strh r3, [r4, #8]
	b _08076300
_080762D0:
	ldrh r1, [r3]
	cmp r5, #0
	beq _080762E0
	ldrh r0, [r4, #0x3a]
	ands r0, r1
	cmp r0, #0
	bne _080762E8
	b _08076300
_080762E0:
	ldrh r0, [r2, #0x3a]
	ands r0, r1
	cmp r0, #0
	beq _08076300
_080762E8:
	cmp r5, #0
	beq _080762F2
	mov r0, sb
	strh r0, [r4, #0xc]
	b _080762F4
_080762F2:
	strh r5, [r2, #0xc]
_080762F4:
	cmp r5, #0
	beq _080762FE
	mov r1, sb
	strh r1, [r4, #8]
	b _08076300
_080762FE:
	strh r5, [r2, #8]
_08076300:
	adds r0, r2, #0
	cmp r5, #0
	beq _08076308
	ldr r0, _0807631C @ =gUnknown_03005AB0
_08076308:
	bl sub_8046CEC
	cmp r5, #0
	beq _08076320
	ldr r0, [r4, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807632A
	.align 2, 0
_0807631C: .4byte gUnknown_03005AB0
_08076320:
	ldr r0, [r7, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_0807632A:
	cmp r5, #0
	beq _0807633A
	ldr r0, [r4, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _08076344
_0807633A:
	ldr r0, [r7, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_08076344:
	cmp r5, #0
	beq _08076354
	movs r0, #4
	ldr r2, _08076350 @ =gUnknown_03005AF0
	strb r0, [r2]
	b _0807635A
	.align 2, 0
_08076350: .4byte gUnknown_03005AF0
_08076354:
	movs r0, #4
	ldr r3, _08076368 @ =gUnknown_03005A60
	strb r0, [r3]
_0807635A:
	cmp r5, #0
	beq _0807636C
	ldr r0, [r4, #4]
	adds r0, #0xb0
	str r0, [r4, #4]
	b _08076372
	.align 2, 0
_08076368: .4byte gUnknown_03005A60
_0807636C:
	ldr r0, [r7, #4]
	adds r0, #0xb0
	str r0, [r7, #4]
_08076372:
	cmp r5, #0
	beq _08076380
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _08076388
	b _08076394
_08076380:
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	cmp r0, #0
	ble _08076394
_08076388:
	cmp r5, #0
	beq _08076392
	mov r3, sb
	strh r3, [r4, #0xa]
	b _08076394
_08076392:
	strh r5, [r7, #0xa]
_08076394:
	cmp r5, #0
	beq _080763A4
	ldrh r0, [r4, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080763AE
	b _080763C0
_080763A4:
	ldrh r0, [r7, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080763C0
_080763AE:
	cmp r5, #0
	beq _080763BA
	ldrh r0, [r4, #0xc]
	adds r0, #4
	strh r0, [r4, #0xc]
	b _08076414
_080763BA:
	ldrh r0, [r7, #0xc]
	adds r0, #4
	b _08076412
_080763C0:
	cmp r5, #0
	beq _080763D0
	ldrh r0, [r4, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080763DA
	b _080763EC
_080763D0:
	ldrh r0, [r7, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080763EC
_080763DA:
	cmp r5, #0
	beq _080763E6
	ldrh r0, [r4, #0xc]
	subs r0, #4
	strh r0, [r4, #0xc]
	b _08076414
_080763E6:
	ldrh r0, [r7, #0xc]
	subs r0, #4
	b _08076412
_080763EC:
	cmp r5, #0
	beq _080763F6
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	b _080763FA
_080763F6:
	movs r2, #0xc
	ldrsh r0, [r7, r2]
_080763FA:
	movs r1, #0x14
	bl Div
	adds r1, r0, #0
	cmp r5, #0
	beq _0807640E
	ldrh r0, [r4, #0xc]
	subs r0, r0, r1
	strh r0, [r4, #0xc]
	b _08076414
_0807640E:
	ldrh r0, [r7, #0xc]
	subs r0, r0, r1
_08076412:
	strh r0, [r7, #0xc]
_08076414:
	ldr r0, _08076424 @ =gCamera
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r2, r0, #0
	cmp r5, #0
	beq _08076428
	ldr r0, [r4]
	b _0807642A
	.align 2, 0
_08076424: .4byte gCamera
_08076428:
	ldr r0, [r7]
_0807642A:
	asrs r0, r0, #8
	subs r0, r0, r1
	ldr r1, [sp, #8]
	strh r0, [r1, #0x16]
	movs r3, #2
	ldrsh r1, [r2, r3]
	cmp r5, #0
	beq _0807643E
	ldr r0, [r4, #4]
	b _08076440
_0807643E:
	ldr r0, [r7, #4]
_08076440:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0xa
	ldr r1, [sp, #8]
	strh r0, [r1, #0x18]
	ldr r0, [sp, #8]
	bl DisplaySprite
	ldr r0, _08076464 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r5, r0
	ldr r2, _08076468 @ =0x0300003A
	adds r1, r0, r2
	ldr r3, _0807646C @ =0x03000038
	adds r0, r0, r3
	b _080764B4
	.align 2, 0
_08076464: .4byte gCurTask
_08076468: .4byte 0x0300003A
_0807646C: .4byte 0x03000038
_08076470:
	mov r0, r8
	cmp r0, #1
	bne _08076488
	ldr r0, _08076484 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	movs r1, #0
	mov r8, r1
	b _08076498
	.align 2, 0
_08076484: .4byte gMPlayInfo_SE2
_08076488:
	mov r2, r8
	cmp r2, #0
	beq _08076498
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08076498:
	ldr r1, _080764F4 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	adds r0, r5, r0
	ldr r2, _080764F8 @ =0x03000038
	adds r0, r0, r2
	mov r3, sb
	strb r3, [r0]
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	adds r0, r5, r0
	ldr r3, _080764FC @ =0x0300003A
	adds r1, r0, r3
	adds r0, r0, r2
_080764B4:
	ldrb r0, [r0]
	strb r0, [r1]
_080764B8:
	adds r5, #1
	ldr r0, _08076500 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _080764C8
	b _08076042
_080764C8:
	ldr r1, _080764F4 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r4, _08076504 @ =0x0300003D
	adds r0, r0, r4
	mov r2, r8
	strb r2, [r0]
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r3, _08076508 @ =0x0300003E
	adds r0, r0, r3
	mov r4, sp
	ldrb r4, [r4, #0xc]
	strb r4, [r0]
_080764E4:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080764F4: .4byte gCurTask
_080764F8: .4byte 0x03000038
_080764FC: .4byte 0x0300003A
_08076500: .4byte gUnknown_03005088
_08076504: .4byte 0x0300003D
_08076508: .4byte 0x0300003E

	thumb_func_start sub_807650C
sub_807650C: @ 0x0807650C
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _08076520 @ =0x03000004
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_08076520: .4byte 0x03000004

	thumb_func_start sub_8076524
sub_8076524: @ 0x08076524
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0807658C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov sb, r0
	ldr r0, _08076590 @ =0x0300000C
	adds r3, r2, r0
	mov r1, sb
	ldr r1, [r1]
	str r1, [sp]
	mov r4, sb
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r6, r1, r0
	ldr r7, [sp]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r5, r1, r0
	ldr r1, _08076594 @ =gCamera
	ldrh r0, [r1]
	subs r0, r6, r0
	strh r0, [r3, #0x16]
	ldrh r0, [r1, #2]
	subs r0, r5, r0
	strh r0, [r3, #0x18]
	movs r4, #0
	ldr r0, _08076598 @ =gUnknown_03005AB0
	mov r8, r0
	ldr r3, _0807659C @ =gUnknown_03005A20
	ldr r1, _080765A0 @ =0x0300003C
	adds r1, r1, r2
	mov sl, r1
_0807657C:
	cmp r4, #0
	beq _080765A4
	mov r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	cmp r6, r0
	ble _080765AE
	b _080766BE
	.align 2, 0
_0807658C: .4byte gCurTask
_08076590: .4byte 0x0300000C
_08076594: .4byte gCamera
_08076598: .4byte gUnknown_03005AB0
_0807659C: .4byte gUnknown_03005A20
_080765A0: .4byte 0x0300003C
_080765A4:
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r6, r0
	ble _080765AE
	b _080766BE
_080765AE:
	ldr r7, [sp]
	ldrb r0, [r7, #5]
	lsls r0, r0, #3
	adds r1, r6, r0
	cmp r4, #0
	beq _080765C6
	mov r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080765CE
	b _080766BE
_080765C6:
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r1, r0
	blt _080766BE
_080765CE:
	cmp r4, #0
	beq _080765DE
	mov r7, r8
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r5, r0
	ble _080765E6
	b _080766BE
_080765DE:
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r5, r0
	bgt _080766BE
_080765E6:
	ldr r1, [sp]
	ldrb r0, [r1, #6]
	lsls r0, r0, #3
	adds r1, r5, r0
	cmp r4, #0
	beq _080765FE
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08076606
	b _080766BE
_080765FE:
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _080766BE
_08076606:
	cmp r4, #0
	beq _08076610
	mov r7, r8
	ldr r0, [r7, #0x10]
	b _08076612
_08076610:
	ldr r0, [r3, #0x10]
_08076612:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080766CA
	mov r0, sl
	ldrb r1, [r0]
	asrs r1, r4
	movs r0, #1
	ands r1, r0
	mov r2, sb
	adds r2, #0x3c
	str r2, [sp, #8]
	cmp r1, #0
	bne _080766B0
	ldr r7, _08076650 @ =gUnknown_03004C58
	ldr r1, [r7]
	ldr r0, _08076654 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08076658 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r7]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r0, r1
	lsrs r1, r0, #8
	cmp r4, #0
	beq _0807665C
	mov r2, r8
	ldr r0, [r2]
	b _0807665E
	.align 2, 0
_08076650: .4byte gUnknown_03004C58
_08076654: .4byte 0x00196225
_08076658: .4byte 0x3C6EF35F
_0807665C:
	ldr r0, [r3]
_0807665E:
	asrs r0, r0, #8
	adds r0, r0, r1
	subs r0, #0x10
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r7, _08076688 @ =gUnknown_03004C58
	ldr r1, [r7]
	ldr r0, _0807668C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08076690 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r7]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r1, r0, #8
	cmp r4, #0
	beq _08076694
	mov r7, r8
	ldr r0, [r7, #4]
	b _08076696
	.align 2, 0
_08076688: .4byte gUnknown_03004C58
_0807668C: .4byte 0x00196225
_08076690: .4byte 0x3C6EF35F
_08076694:
	ldr r0, [r3, #4]
_08076696:
	asrs r0, r0, #8
	adds r0, r0, r1
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	str r3, [sp, #4]
	bl sub_8076730
	movs r0, #0xb2
	bl m4aSongNumStart
	ldr r3, [sp, #4]
_080766B0:
	movs r0, #1
	lsls r0, r4
	ldr r2, [sp, #8]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	b _080766CA
_080766BE:
	movs r1, #1
	lsls r1, r4
	mov r7, sl
	ldrb r0, [r7]
	bics r0, r1
	strb r0, [r7]
_080766CA:
	adds r4, #1
	ldr r0, _08076724 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _080766DA
	b _0807657C
_080766DA:
	ldr r1, _08076728 @ =gCamera
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r6, r6, r0
	movs r4, #2
	ldrsh r0, [r1, r4]
	subs r5, r5, r0
	adds r1, r6, #0
	adds r1, #0x80
	movs r0, #0xf8
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08076704
	adds r0, r5, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08076704
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r5, r0
	ble _08076714
_08076704:
	mov r7, sb
	ldrb r0, [r7, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _0807672C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08076714:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076724: .4byte gUnknown_03005088
_08076728: .4byte gCamera
_0807672C: .4byte gCurTask

	thumb_func_start sub_8076730
sub_8076730: @ 0x08076730
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	ldr r0, _080767E8 @ =sub_8076810
	movs r2, #0xc0
	lsls r2, r2, #6
	ldr r1, _080767EC @ =sub_807692C
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r4, r3
	ldr r0, _080767F0 @ =0x0300000C
	adds r5, r4, r0
	mov r1, r8
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	lsls r0, r2, #2
	str r0, [r3, #0x40]
	ldr r1, _080767F4 @ =0x03000048
	adds r0, r4, r1
	movs r1, #0
	mov sl, r1
	movs r6, #0
	strh r6, [r0]
	movs r0, #1
	str r0, [r3, #0x44]
	ldr r0, _080767F8 @ =0x0300003C
	adds r1, r4, r0
	movs r0, #0x34
	strb r0, [r1]
	str r2, [r3, #0x4c]
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [r3, #0x50]
	mov r0, r8
	strh r0, [r5, #0x16]
	strh r1, [r5, #0x18]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	strh r6, [r5, #0x1a]
	strh r6, [r5, #8]
	ldr r0, _080767FC @ =0x000001D3
	strh r0, [r5, #0xa]
	ldr r1, _08076800 @ =0x0300002C
	adds r0, r4, r1
	mov r1, sl
	strb r1, [r0]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _08076804 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08076808 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0807680C @ =0x03000031
	adds r4, r4, r1
	mov r0, sl
	strb r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	str r6, [r5, #0x10]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080767E8: .4byte sub_8076810
_080767EC: .4byte sub_807692C
_080767F0: .4byte 0x0300000C
_080767F4: .4byte 0x03000048
_080767F8: .4byte 0x0300003C
_080767FC: .4byte 0x000001D3
_08076800: .4byte 0x0300002C
_08076804: .4byte 0x0300002D
_08076808: .4byte 0x0300002E
_0807680C: .4byte 0x03000031

	thumb_func_start sub_8076810
sub_8076810: @ 0x08076810
	push {r4, r5, r6, lr}
	ldr r6, _08076860 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r5, r2
	ldr r0, _08076864 @ =0x0300000C
	adds r4, r5, r0
	ldr r0, [r2, #0x4c]
	ldr r3, _08076868 @ =gCamera
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r2, [r2, #0x50]
	ldrh r1, [r3, #2]
	subs r2, r2, r1
	strh r2, [r4, #0x18]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	adds r3, r6, #0
	cmp r0, r1
	bhi _08076856
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08076856
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0807686C
_08076856:
	ldr r0, [r3]
	bl TaskDestroy
	b _08076894
	.align 2, 0
_08076860: .4byte gCurTask
_08076864: .4byte 0x0300000C
_08076868: .4byte gCamera
_0807686C:
	ldr r0, _08076884 @ =0x0300003C
	adds r1, r5, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08076888
	ldr r0, [r6]
	bl TaskDestroy
	b _08076894
	.align 2, 0
_08076884: .4byte 0x0300003C
_08076888:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08076894:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable030
CreateEntity_Interactable030: @ 0x0807689C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08076920 @ =sub_8076524
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _08076924 @ =0x0300000C
	adds r1, r1, r2
	mov sb, r1
	movs r3, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r7, r8
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	ldr r0, _08076928 @ =0x0300003C
	adds r2, r2, r0
	strb r3, [r2]
	ldrb r0, [r7]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	mov r1, sb
	strh r0, [r1, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r1, #0x18]
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076920: .4byte sub_8076524
_08076924: .4byte 0x0300000C
_08076928: .4byte 0x0300003C

	thumb_func_start sub_807692C
sub_807692C: @ 0x0807692C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable031
CreateEntity_Interactable031: @ 0x08076940
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
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
	ldr r0, _08076A28 @ =sub_8076F88
	ldr r1, _08076A2C @ =sub_807753C
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _08076A30 @ =0x0300000C
	adds r7, r6, r1
	movs r2, #0
	mov sl, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	mov r1, sb
	ldrb r0, [r1, #4]
	ldr r2, _08076A34 @ =0x0300003C
	adds r2, r2, r6
	mov r8, r2
	strb r0, [r2]
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
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, sb
	strb r0, [r2]
	movs r0, #8
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _08076A38 @ =0x000001D7
	strh r0, [r7, #0xa]
	ldr r1, _08076A3C @ =0x0300002C
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sl
	strh r0, [r7, #8]
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r2, _08076A40 @ =0x0300002D
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08076A44 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08076A48 @ =0x03000031
	adds r6, r6, r1
	movs r2, #0
	strb r2, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08076A18
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r7, #0x10]
_08076A18:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076A28: .4byte sub_8076F88
_08076A2C: .4byte sub_807753C
_08076A30: .4byte 0x0300000C
_08076A34: .4byte 0x0300003C
_08076A38: .4byte 0x000001D7
_08076A3C: .4byte 0x0300002C
_08076A40: .4byte 0x0300002D
_08076A44: .4byte 0x0300002E
_08076A48: .4byte 0x03000031

	thumb_func_start CreateEntity_Interactable032
CreateEntity_Interactable032: @ 0x08076A4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
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
	ldr r0, _08076B34 @ =sub_8076F88
	ldr r1, _08076B38 @ =sub_807753C
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _08076B3C @ =0x0300000C
	adds r7, r6, r1
	movs r2, #0
	mov sl, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	mov r1, sb
	ldrb r0, [r1, #4]
	ldr r2, _08076B40 @ =0x0300003C
	adds r2, r2, r6
	mov r8, r2
	strb r0, [r2]
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
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, sb
	strb r0, [r2]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _08076B44 @ =0x000001D7
	strh r0, [r7, #0xa]
	ldr r0, _08076B48 @ =0x0300002C
	adds r1, r6, r0
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r1, sl
	strh r1, [r7, #8]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x1c]
	ldr r2, _08076B4C @ =0x0300002D
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08076B50 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08076B54 @ =0x03000031
	adds r6, r6, r1
	movs r2, #0
	strb r2, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08076B24
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r7, #0x10]
_08076B24:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076B34: .4byte sub_8076F88
_08076B38: .4byte sub_807753C
_08076B3C: .4byte 0x0300000C
_08076B40: .4byte 0x0300003C
_08076B44: .4byte 0x000001D7
_08076B48: .4byte 0x0300002C
_08076B4C: .4byte 0x0300002D
_08076B50: .4byte 0x0300002E
_08076B54: .4byte 0x03000031

	thumb_func_start CreateEntity_Interactable033
CreateEntity_Interactable033: @ 0x08076B58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
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
	ldr r0, _08076C40 @ =sub_8076F88
	ldr r1, _08076C44 @ =sub_807753C
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _08076C48 @ =0x0300000C
	adds r7, r6, r1
	movs r2, #0
	mov sl, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	mov r1, sb
	ldrb r0, [r1, #4]
	ldr r2, _08076C4C @ =0x0300003C
	adds r2, r2, r6
	mov r8, r2
	strb r0, [r2]
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
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, sb
	strb r0, [r2]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _08076C50 @ =0x000001D7
	strh r0, [r7, #0xa]
	ldr r0, _08076C54 @ =0x0300002C
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r1, sl
	strh r1, [r7, #8]
	strh r1, [r7, #0x14]
	strh r1, [r7, #0x1c]
	ldr r2, _08076C58 @ =0x0300002D
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08076C5C @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08076C60 @ =0x03000031
	adds r6, r6, r1
	movs r2, #0
	strb r2, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08076C30
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r7, #0x10]
_08076C30:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076C40: .4byte sub_8076F88
_08076C44: .4byte sub_807753C
_08076C48: .4byte 0x0300000C
_08076C4C: .4byte 0x0300003C
_08076C50: .4byte 0x000001D7
_08076C54: .4byte 0x0300002C
_08076C58: .4byte 0x0300002D
_08076C5C: .4byte 0x0300002E
_08076C60: .4byte 0x03000031

	thumb_func_start CreateEntity_Interactable047
CreateEntity_Interactable047: @ 0x08076C64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
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
	ldr r0, _08076D50 @ =sub_8076F88
	ldr r1, _08076D54 @ =sub_807753C
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _08076D58 @ =0x0300000C
	adds r7, r6, r1
	movs r2, #0
	mov sl, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	mov r1, sb
	ldrb r0, [r1, #4]
	ldr r2, _08076D5C @ =0x0300003C
	adds r2, r2, r6
	mov r8, r2
	strb r0, [r2]
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
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, sb
	strb r0, [r2]
	movs r0, #8
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xec
	lsls r0, r0, #1
	strh r0, [r7, #0xa]
	ldr r1, _08076D60 @ =0x0300002C
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sl
	strh r0, [r7, #8]
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r2, _08076D64 @ =0x0300002D
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08076D68 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08076D6C @ =0x03000031
	adds r6, r6, r1
	movs r2, #0
	strb r2, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08076D3E
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r7, #0x10]
_08076D3E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076D50: .4byte sub_8076F88
_08076D54: .4byte sub_807753C
_08076D58: .4byte 0x0300000C
_08076D5C: .4byte 0x0300003C
_08076D60: .4byte 0x0300002C
_08076D64: .4byte 0x0300002D
_08076D68: .4byte 0x0300002E
_08076D6C: .4byte 0x03000031

	thumb_func_start CreateEntity_Interactable100
CreateEntity_Interactable100: @ 0x08076D70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
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
	ldr r0, _08076E58 @ =sub_8076F88
	ldr r1, _08076E5C @ =sub_807753C
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _08076E60 @ =0x0300000C
	adds r7, r6, r1
	movs r2, #0
	mov sl, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	mov r1, sb
	ldrb r0, [r1, #4]
	ldr r2, _08076E64 @ =0x0300003C
	adds r2, r2, r6
	mov r8, r2
	strb r0, [r2]
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
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, sb
	strb r0, [r2]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _08076E68 @ =0x0000023B
	strh r0, [r7, #0xa]
	ldr r1, _08076E6C @ =0x0300002C
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sl
	strh r0, [r7, #8]
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r2, _08076E70 @ =0x0300002D
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08076E74 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08076E78 @ =0x03000031
	adds r6, r6, r1
	movs r2, #0
	strb r2, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08076E48
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r7, #0x10]
_08076E48:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076E58: .4byte sub_8076F88
_08076E5C: .4byte sub_807753C
_08076E60: .4byte 0x0300000C
_08076E64: .4byte 0x0300003C
_08076E68: .4byte 0x0000023B
_08076E6C: .4byte 0x0300002C
_08076E70: .4byte 0x0300002D
_08076E74: .4byte 0x0300002E
_08076E78: .4byte 0x03000031

	thumb_func_start CreateEntity_Interactable101
CreateEntity_Interactable101: @ 0x08076E7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
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
	ldr r0, _08076F64 @ =sub_8076F88
	ldr r1, _08076F68 @ =sub_807753C
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _08076F6C @ =0x0300000C
	adds r7, r6, r1
	movs r2, #0
	mov sl, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r2, r8
	strb r2, [r0, #9]
	mov r1, sb
	ldrb r0, [r1, #4]
	ldr r2, _08076F70 @ =0x0300003C
	adds r2, r2, r6
	mov r8, r2
	strb r0, [r2]
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
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, sb
	strb r0, [r2]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _08076F74 @ =0x0000023A
	strh r0, [r7, #0xa]
	ldr r1, _08076F78 @ =0x0300002C
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sl
	strh r0, [r7, #8]
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r2, _08076F7C @ =0x0300002D
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08076F80 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08076F84 @ =0x03000031
	adds r6, r6, r1
	movs r2, #0
	strb r2, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08076F54
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r7, #0x10]
_08076F54:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08076F64: .4byte sub_8076F88
_08076F68: .4byte sub_807753C
_08076F6C: .4byte 0x0300000C
_08076F70: .4byte 0x0300003C
_08076F74: .4byte 0x0000023A
_08076F78: .4byte 0x0300002C
_08076F7C: .4byte 0x0300002D
_08076F80: .4byte 0x0300002E
_08076F84: .4byte 0x03000031

	thumb_func_start sub_8076F88
sub_8076F88: @ 0x08076F88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08076FF8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, _08076FFC @ =0x0300000C
	adds r0, r0, r1
	mov sl, r0
	ldr r1, [sp, #0x14]
	ldr r1, [r1]
	str r1, [sp, #0x10]
	ldr r3, [sp, #0x14]
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08077000 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	str r4, [sp, #8]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	mov r0, sl
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	str r2, [sp, #0xc]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r3, sl
	strh r1, [r3, #0x18]
	movs r7, #0
	ldr r6, _08077004 @ =gUnknown_03005AB0
	ldr r5, _08077008 @ =gUnknown_03005A20
	mov sb, sp
_08076FEE:
	cmp r7, #0
	beq _0807700C
	ldr r0, [r6, #0x10]
	b _0807700E
	.align 2, 0
_08076FF8: .4byte gCurTask
_08076FFC: .4byte 0x0300000C
_08077000: .4byte gCamera
_08077004: .4byte gUnknown_03005AB0
_08077008: .4byte gUnknown_03005A20
_0807700C:
	ldr r0, [r5, #0x10]
_0807700E:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08077018
	b _080774C8
_08077018:
	mov r2, sp
	cmp r7, #0
	beq _08077022
	ldrb r0, [r6, #0xe]
	b _08077024
_08077022:
	ldrb r0, [r5, #0xe]
_08077024:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #4
	strb r1, [r0]
	adds r3, r0, #0
	cmp r7, #0
	beq _08077036
	ldrb r1, [r6, #0xf]
	b _08077038
_08077036:
	ldrb r1, [r5, #0xf]
_08077038:
	movs r0, #1
	subs r1, r0, r1
	mov r0, sp
	adds r0, #5
	strb r1, [r0]
	cmp r7, #0
	beq _0807704A
	ldrb r0, [r6, #0xe]
	b _0807704C
_0807704A:
	ldrb r0, [r5, #0xe]
_0807704C:
	adds r1, r0, #5
	mov r0, sp
	adds r0, #6
	strb r1, [r0]
	cmp r7, #0
	beq _0807705C
	ldrb r0, [r6, #0xf]
	b _0807705E
_0807705C:
	ldrb r0, [r5, #0xf]
_0807705E:
	subs r1, r0, #1
	mov r0, sp
	adds r0, #7
	strb r1, [r0]
	adds r0, r2, #0
	adds r1, r3, #0
	movs r2, #4
	bl memcpy
	mov r0, sb
	movs r4, #0
	ldrsb r4, [r0, r4]
	ldr r1, [sp, #8]
	lsls r3, r1, #0x10
	asrs r2, r3, #0x10
	mov r1, sl
	adds r1, #0x2c
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r2, r2, r0
	mov ip, r3
	mov r8, r1
	cmp r7, #0
	beq _0807709A
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, r0, r4
	cmp r2, r0
	ble _080770A4
	b _080770CC
_0807709A:
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, r0, r4
	cmp r2, r0
	bgt _080770CC
_080770A4:
	mov r3, sb
	movs r2, #0
	ldrsb r2, [r3, r2]
	mov r4, ip
	asrs r1, r4, #0x10
	mov r0, sl
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r0, r1
	cmp r7, #0
	beq _080770C2
	ldr r0, [r6]
	b _080770C4
_080770C2:
	ldr r0, [r5]
_080770C4:
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r1, r0
	bge _08077134
_080770CC:
	mov r0, sb
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov r3, ip
	asrs r1, r3, #0x10
	mov r4, r8
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r1, r1, r0
	cmp r7, #0
	beq _080770EE
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r1, r0
	bge _080770FA
	b _080774C8
_080770EE:
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r1, r0
	bge _080770FA
	b _080774C8
_080770FA:
	mov r0, sb
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r3, r0, r2
	mov r4, ip
	asrs r1, r4, #0x10
	mov r4, r8
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r1, r1, r0
	cmp r7, #0
	beq _08077126
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, r0, r2
	adds r0, r0, r3
	cmp r0, r1
	bge _08077134
	b _080774C8
_08077126:
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, r0, r2
	adds r0, r0, r3
	cmp r0, r1
	bge _08077134
	b _080774C8
_08077134:
	mov r0, sb
	movs r4, #1
	ldrsb r4, [r0, r4]
	ldr r1, [sp, #0xc]
	lsls r3, r1, #0x10
	asrs r2, r3, #0x10
	mov r1, sl
	adds r1, #0x2d
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r2, r2, r0
	mov ip, r3
	mov r8, r1
	cmp r7, #0
	beq _0807715E
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	adds r0, r0, r4
	cmp r2, r0
	ble _08077168
	b _08077190
_0807715E:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r0, r0, r4
	cmp r2, r0
	bgt _08077190
_08077168:
	mov r3, sb
	movs r2, #1
	ldrsb r2, [r3, r2]
	mov r4, ip
	asrs r1, r4, #0x10
	mov r0, sl
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r0, r1
	cmp r7, #0
	beq _08077186
	ldr r0, [r6, #4]
	b _08077188
_08077186:
	ldr r0, [r5, #4]
_08077188:
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r1, r0
	bge _080771F8
_08077190:
	mov r0, sb
	movs r2, #1
	ldrsb r2, [r0, r2]
	mov r3, ip
	asrs r1, r3, #0x10
	mov r4, r8
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r1, r1, r0
	cmp r7, #0
	beq _080771B2
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r1, r0
	bge _080771BE
	b _080774C8
_080771B2:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r1, r0
	bge _080771BE
	b _080774C8
_080771BE:
	mov r0, sb
	movs r2, #1
	ldrsb r2, [r0, r2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r3, r0, r2
	mov r4, ip
	asrs r1, r4, #0x10
	mov r4, r8
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r1, r1, r0
	cmp r7, #0
	beq _080771EA
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	adds r0, r0, r2
	adds r0, r0, r3
	cmp r0, r1
	bge _080771F8
	b _080774C8
_080771EA:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r0, r0, r2
	adds r0, r0, r3
	cmp r0, r1
	bge _080771F8
	b _080774C8
_080771F8:
	cmp r7, #0
	beq _08077210
	ldr r0, [r6, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08077208
	b _080774C8
_08077208:
	ldr r0, _0807720C @ =gUnknown_03005A20
	b _0807721E
	.align 2, 0
_0807720C: .4byte gUnknown_03005A20
_08077210:
	ldr r1, [r5, #0x10]
	movs r0, #2
	ands r1, r0
	ldr r0, _08077250 @ =gUnknown_03005A20
	cmp r1, #0
	beq _0807721E
	b _080774C8
_0807721E:
	cmp r7, #0
	beq _08077224
	ldr r0, _08077254 @ =gUnknown_03005AB0
_08077224:
	bl sub_8046CEC
	movs r0, #0xac
	bl m4aSongNumStart
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0807723E
	b _08077388
_0807723E:
	cmp r7, #0
	beq _0807725C
	ldr r2, _08077258 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #9
	beq _08077266
	b _08077282
	.align 2, 0
_08077250: .4byte gUnknown_03005A20
_08077254: .4byte gUnknown_03005AB0
_08077258: .4byte gUnknown_03005AF0
_0807725C:
	ldr r3, _08077274 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #9
	bne _08077282
_08077266:
	cmp r7, #0
	beq _0807727C
	movs r0, #4
	ldr r4, _08077278 @ =gUnknown_03005AF0
	strb r0, [r4]
	b _08077282
	.align 2, 0
_08077274: .4byte gUnknown_03005A60
_08077278: .4byte gUnknown_03005AF0
_0807727C:
	movs r2, #4
	ldr r1, _08077294 @ =gUnknown_03005A60
	strb r2, [r1]
_08077282:
	cmp r7, #0
	beq _0807729C
	ldr r3, _08077298 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #5
	bne _080772A6
	b _0807730A
	.align 2, 0
_08077294: .4byte gUnknown_03005A60
_08077298: .4byte gUnknown_03005AF0
_0807729C:
	ldr r4, _080772B8 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #5
	beq _0807730A
_080772A6:
	cmp r7, #0
	beq _080772C0
	ldr r1, _080772BC @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #6
	bne _080772CA
	b _0807730A
	.align 2, 0
_080772B8: .4byte gUnknown_03005A60
_080772BC: .4byte gUnknown_03005AF0
_080772C0:
	ldr r2, _080772DC @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #6
	beq _0807730A
_080772CA:
	cmp r7, #0
	beq _080772E4
	ldr r3, _080772E0 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #7
	bne _080772EE
	b _0807730A
	.align 2, 0
_080772DC: .4byte gUnknown_03005A60
_080772E0: .4byte gUnknown_03005AF0
_080772E4:
	ldr r4, _080772FC @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #7
	beq _0807730A
_080772EE:
	cmp r7, #0
	beq _08077304
	movs r1, #4
	ldr r0, _08077300 @ =gUnknown_03005AF0
	strb r1, [r0]
	b _0807730A
	.align 2, 0
_080772FC: .4byte gUnknown_03005A60
_08077300: .4byte gUnknown_03005AF0
_08077304:
	movs r3, #4
	ldr r2, _08077318 @ =gUnknown_03005A60
	strb r3, [r2]
_0807730A:
	cmp r7, #0
	beq _0807731C
	ldr r0, [r6, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08077324
	.align 2, 0
_08077318: .4byte gUnknown_03005A60
_0807731C:
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0x10]
_08077324:
	cmp r7, #0
	beq _08077338
	movs r4, #0xc
	ldrsh r1, [r6, r4]
	ldr r0, _08077334 @ =0xFFFFF700
	cmp r1, r0
	bgt _08077342
	b _0807736C
	.align 2, 0
_08077334: .4byte 0xFFFFF700
_08077338:
	movs r0, #0xc
	ldrsh r1, [r5, r0]
	ldr r0, _08077350 @ =0xFFFFF700
	cmp r1, r0
	ble _0807736C
_08077342:
	cmp r7, #0
	beq _08077354
	movs r0, #0xf4
	lsls r0, r0, #8
	strh r0, [r6, #0xc]
	b _0807735A
	.align 2, 0
_08077350: .4byte 0xFFFFF700
_08077354:
	movs r0, #0xf4
	lsls r0, r0, #8
	strh r0, [r5, #0xc]
_0807735A:
	cmp r7, #0
	beq _08077366
	movs r0, #0xf4
	lsls r0, r0, #8
	strh r0, [r6, #8]
	b _0807736C
_08077366:
	movs r0, #0xf4
	lsls r0, r0, #8
	strh r0, [r5, #8]
_0807736C:
	cmp r7, #0
	beq _0807737C
	movs r0, #0
	ldr r1, _08077378 @ =gUnknown_03005AEE
	strb r0, [r1]
	b _080774C8
	.align 2, 0
_08077378: .4byte gUnknown_03005AEE
_0807737C:
	ldr r2, _08077384 @ =gUnknown_03005A5E
	strb r7, [r2]
	b _080774C8
	.align 2, 0
_08077384: .4byte gUnknown_03005A5E
_08077388:
	cmp r7, #0
	beq _0807739C
	ldr r3, _08077398 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #9
	beq _080773A6
	b _080773C2
	.align 2, 0
_08077398: .4byte gUnknown_03005AF0
_0807739C:
	ldr r4, _080773B4 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _080773C2
_080773A6:
	cmp r7, #0
	beq _080773BC
	movs r1, #4
	ldr r0, _080773B8 @ =gUnknown_03005AF0
	strb r1, [r0]
	b _080773C2
	.align 2, 0
_080773B4: .4byte gUnknown_03005A60
_080773B8: .4byte gUnknown_03005AF0
_080773BC:
	movs r3, #4
	ldr r2, _080773D4 @ =gUnknown_03005A60
	strb r3, [r2]
_080773C2:
	cmp r7, #0
	beq _080773DC
	ldr r4, _080773D8 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #5
	bne _080773E6
	b _0807744A
	.align 2, 0
_080773D4: .4byte gUnknown_03005A60
_080773D8: .4byte gUnknown_03005AF0
_080773DC:
	ldr r1, _080773F8 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	beq _0807744A
_080773E6:
	cmp r7, #0
	beq _08077400
	ldr r2, _080773FC @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #6
	bne _0807740A
	b _0807744A
	.align 2, 0
_080773F8: .4byte gUnknown_03005A60
_080773FC: .4byte gUnknown_03005AF0
_08077400:
	ldr r3, _0807741C @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #6
	beq _0807744A
_0807740A:
	cmp r7, #0
	beq _08077424
	ldr r4, _08077420 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #7
	bne _0807742E
	b _0807744A
	.align 2, 0
_0807741C: .4byte gUnknown_03005A60
_08077420: .4byte gUnknown_03005AF0
_08077424:
	ldr r1, _0807743C @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #7
	beq _0807744A
_0807742E:
	cmp r7, #0
	beq _08077444
	movs r3, #4
	ldr r2, _08077440 @ =gUnknown_03005AF0
	strb r3, [r2]
	b _0807744A
	.align 2, 0
_0807743C: .4byte gUnknown_03005A60
_08077440: .4byte gUnknown_03005AF0
_08077444:
	movs r0, #4
	ldr r4, _0807745C @ =gUnknown_03005A60
	strb r0, [r4]
_0807744A:
	cmp r7, #0
	beq _08077460
	ldr r0, [r6, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	b _0807746A
	.align 2, 0
_0807745C: .4byte gUnknown_03005A60
_08077460:
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807746A:
	cmp r7, #0
	beq _08077480
	movs r2, #0xc
	ldrsh r1, [r6, r2]
	ldr r0, _0807747C @ =0x000008FF
	cmp r1, r0
	ble _0807748A
	b _080774B4
	.align 2, 0
_0807747C: .4byte 0x000008FF
_08077480:
	movs r3, #0xc
	ldrsh r1, [r5, r3]
	ldr r0, _08077498 @ =0x000008FF
	cmp r1, r0
	bgt _080774B4
_0807748A:
	cmp r7, #0
	beq _0807749C
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r6, #0xc]
	b _080774A2
	.align 2, 0
_08077498: .4byte 0x000008FF
_0807749C:
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r5, #0xc]
_080774A2:
	cmp r7, #0
	beq _080774AE
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r6, #8]
	b _080774B4
_080774AE:
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r5, #8]
_080774B4:
	cmp r7, #0
	beq _080774C4
	movs r0, #0
	ldr r4, _080774C0 @ =gUnknown_03005AEE
	strb r0, [r4]
	b _080774C8
	.align 2, 0
_080774C0: .4byte gUnknown_03005AEE
_080774C4:
	ldr r0, _08077514 @ =gUnknown_03005A5E
	strb r7, [r0]
_080774C8:
	adds r7, #1
	ldr r0, _08077518 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	bge _080774D8
	b _08076FEE
_080774D8:
	mov r1, sl
	ldrh r0, [r1, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08077500
	mov r2, sl
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _08077500
	movs r4, #0x18
	ldrsh r1, [r2, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08077520
_08077500:
	ldr r1, [sp, #0x14]
	ldrb r0, [r1, #8]
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	ldr r0, _0807751C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807752C
	.align 2, 0
_08077514: .4byte gUnknown_03005A5E
_08077518: .4byte gUnknown_03005088
_0807751C: .4byte gCurTask
_08077520:
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
_0807752C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807753C
sub_807753C: @ 0x0807753C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable042
CreateEntity_Interactable042: @ 0x08077550
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
	ldr r0, _08077650 @ =sub_8077674
	ldr r1, _08077654 @ =sub_8078338
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _08077658 @ =0x0300000C
	adds r7, r4, r1
	movs r2, #0
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
	mov r0, sb
	ldrb r1, [r0, #4]
	ldr r3, _0807765C @ =0x0300003C
	adds r0, r4, r3
	strb r1, [r0]
	ldr r1, _08077660 @ =0x0300003D
	adds r0, r4, r1
	strb r2, [r0]
	adds r3, #2
	adds r0, r4, r3
	strb r2, [r0]
	adds r1, #2
	adds r0, r4, r1
	strb r2, [r0]
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
	movs r0, #0xc
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _08077664 @ =0x000001D5
	strh r0, [r7, #0xa]
	ldr r3, _08077668 @ =0x0300002C
	adds r0, r4, r3
	ldr r2, [sp, #4]
	strb r2, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sl
	strh r0, [r7, #8]
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	adds r3, #1
	adds r1, r4, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0807766C @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08077670 @ =0x03000031
	adds r4, r4, r1
	strb r2, [r4]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r7, #0x10]
	mov r1, sb
	movs r0, #4
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08077638
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r3
	str r0, [r7, #0x10]
_08077638:
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
	.align 2, 0
_08077650: .4byte sub_8077674
_08077654: .4byte sub_8078338
_08077658: .4byte 0x0300000C
_0807765C: .4byte 0x0300003C
_08077660: .4byte 0x0300003D
_08077664: .4byte 0x000001D5
_08077668: .4byte 0x0300002C
_0807766C: .4byte 0x0300002E
_08077670: .4byte 0x03000031

	thumb_func_start sub_8077674
sub_8077674: @ 0x08077674
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080776E0 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	ldr r1, _080776E4 @ =0x0300000C
	adds r4, r7, r1
	ldr r0, [r6]
	mov sb, r0
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, sb
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080776E8 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	subs r0, r3, r0
	strh r0, [r4, #0x18]
	ldr r0, _080776EC @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807770A
	ldr r1, _080776F0 @ =0x0300003C
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080776F4
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_8077FA4
	b _080776FE
	.align 2, 0
_080776E0: .4byte gCurTask
_080776E4: .4byte 0x0300000C
_080776E8: .4byte gCamera
_080776EC: .4byte gUnknown_03005A20
_080776F0: .4byte 0x0300003C
_080776F4:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_80780B4
_080776FE:
	cmp r0, #0
	beq _0807770A
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08077740 @ =sub_8077760
	str r0, [r1, #8]
_0807770A:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807772E
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0807772E
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08077748
_0807772E:
	ldrb r0, [r6, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08077744 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08077754
	.align 2, 0
_08077740: .4byte sub_8077760
_08077744: .4byte gCurTask
_08077748:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08077754:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8077760
sub_8077760: @ 0x08077760
	push {r4, r5, r6, r7, lr}
	ldr r0, _080777D0 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r1, _080777D4 @ =0x0300000C
	adds r7, r6, r1
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
	ldr r3, _080777D8 @ =gCamera
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
	bhi _080777C0
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080777C0
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080777DC
_080777C0:
	ldrb r0, [r5, #8]
	strb r0, [r4]
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _0807790C
	.align 2, 0
_080777D0: .4byte gCurTask
_080777D4: .4byte 0x0300000C
_080777D8: .4byte gCamera
_080777DC:
	ldr r1, _08077818 @ =0x0300003F
	adds r0, r6, r1
	ldrb r0, [r0]
	ldr r4, _0807781C @ =gUnknown_03005A20
	adds r2, r4, #0
	cmp r0, #0
	beq _080777EC
	ldr r2, _08077820 @ =gUnknown_03005AB0
_080777EC:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080777F8
	b _080778EC
_080777F8:
	ldr r1, _08077824 @ =0x0300003D
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #6
	bls _08077856
	cmp r0, #7
	bne _08077834
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807782C
	ldr r0, [r2]
	ldr r1, _08077828 @ =0xFFFFF600
	b _08077852
	.align 2, 0
_08077818: .4byte 0x0300003F
_0807781C: .4byte gUnknown_03005A20
_08077820: .4byte gUnknown_03005AB0
_08077824: .4byte 0x0300003D
_08077828: .4byte 0xFFFFF600
_0807782C:
	ldr r0, [r2]
	movs r1, #0xa0
	lsls r1, r1, #4
	b _08077852
_08077834:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807784C
	ldr r0, [r2]
	ldr r1, _08077848 @ =0xFFFFF880
	b _08077852
	.align 2, 0
_08077848: .4byte 0xFFFFF880
_0807784C:
	ldr r0, [r2]
	movs r1, #0xf0
	lsls r1, r1, #3
_08077852:
	adds r0, r0, r1
	str r0, [r2]
_08077856:
	adds r1, r5, #0
	adds r1, #0x3d
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xd
	bls _08077900
	adds r0, r5, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	adds r3, r2, #0
	adds r3, #0x40
	strb r0, [r3]
	ldr r0, [r2, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080778A8
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #9
	bne _08077892
	movs r0, #4
	strb r0, [r3]
_08077892:
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	ldr r0, _080778A4 @ =0x00000A7F
	cmp r1, r0
	bgt _080778C2
	adds r0, #1
	strh r0, [r2, #0xc]
	strh r0, [r2, #8]
	b _080778C2
	.align 2, 0
_080778A4: .4byte 0x00000A7F
_080778A8:
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #9
	bne _080778B4
	movs r0, #4
	strb r0, [r3]
_080778B4:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	ldr r1, _080778E0 @ =0xFFFFF580
	cmp r0, r1
	ble _080778C2
	strh r1, [r2, #0xc]
	strh r1, [r2, #8]
_080778C2:
	ldr r0, [r2, #0x10]
	ldr r1, _080778E4 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _080778E8 @ =sub_8077918
	str r0, [r1, #8]
	b _08077900
	.align 2, 0
_080778E0: .4byte 0xFFFFF580
_080778E4: .4byte 0xFFBFFFFF
_080778E8: .4byte sub_8077918
_080778EC:
	ldr r0, [r2, #0x10]
	ldr r1, _08077914 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r2, #0x10]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_08077900:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0807790C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08077914: .4byte 0xFFBFFFFF

	thumb_func_start sub_8077918
sub_8077918: @ 0x08077918
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08077990 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r1, _08077994 @ =0x0300000C
	adds r5, r6, r1
	ldr r7, [r4]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08077998 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	movs r0, #0
	mov sb, r0
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
	mov r3, r8
	cmp r1, r0
	bhi _08077984
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08077984
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0807799C
_08077984:
	ldrb r0, [r4, #8]
	strb r0, [r7]
	ldr r0, [r3]
	bl TaskDestroy
	b _080779D0
	.align 2, 0
_08077990: .4byte gCurTask
_08077994: .4byte 0x0300000C
_08077998: .4byte gCamera
_0807799C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080779CA
	ldr r1, _080779DC @ =0x0300003D
	adds r0, r6, r1
	mov r1, sb
	strb r1, [r0]
	ldr r0, _080779E0 @ =0x0300002D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r0, #0xd6
	strh r0, [r5, #0xa]
	ldr r1, _080779E4 @ =0x0300002C
	adds r0, r6, r1
	mov r1, sb
	strb r1, [r0]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _080779E8 @ =sub_8077674
	str r0, [r1, #8]
_080779CA:
	adds r0, r5, #0
	bl DisplaySprite
_080779D0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080779DC: .4byte 0x0300003D
_080779E0: .4byte 0x0300002D
_080779E4: .4byte 0x0300002C
_080779E8: .4byte sub_8077674

	thumb_func_start CreateEntity_Interactable044
CreateEntity_Interactable044: @ 0x080779EC
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
	ldr r1, _08077AB0 @ =sub_8078338
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
_08077AB0: .4byte sub_8078338
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

	thumb_func_start CreateEntity_Interactable045
CreateEntity_Interactable045: @ 0x08077B24
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
	ldr r1, _08077BE8 @ =sub_8078338
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
_08077BE8: .4byte sub_8078338
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
	ldr r0, _08077CFC @ =gUnknown_03005A20
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
_08077CFC: .4byte gUnknown_03005A20
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
	ldr r2, _08077DD8 @ =gUnknown_03005A20
	adds r4, r2, #0
	cmp r0, #0
	beq _08077DB0
	ldr r4, _08077DDC @ =gUnknown_03005AB0
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
_08077DD8: .4byte gUnknown_03005A20
_08077DDC: .4byte gUnknown_03005AB0
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
	bl sub_804516C
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
	ldr r1, _08077E64 @ =gUnknown_03005A20
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
_08077E64: .4byte gUnknown_03005A20
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
	ldr r1, _08078014 @ =gUnknown_03005A46
	mov r8, r1
	adds r0, r5, #0
	adds r0, #0x21
	str r0, [sp, #0xc]
_08077FD0:
	ldr r4, _08078018 @ =gUnknown_03005A20
	mov r1, sb
	cmp r1, #0
	beq _08077FDA
	ldr r4, _0807801C @ =gUnknown_03005AB0
_08077FDA:
	ldr r0, [sp]
	lsls r1, r0, #0x10
	ldr r0, [sp, #4]
	lsls r2, r0, #0x10
	adds r0, r5, #0
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl sub_800CE34
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
_08078014: .4byte gUnknown_03005A46
_08078018: .4byte gUnknown_03005A20
_0807801C: .4byte gUnknown_03005AB0
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
	bl sub_8046CEC
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
	ldr r0, _080780B0 @ =gUnknown_03005088
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
_080780B0: .4byte gUnknown_03005088

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
	ldr r1, _080780E4 @ =gUnknown_03005A46
	mov sl, r1
	adds r2, r5, #0
	adds r2, #0x21
	str r2, [sp, #0x10]
	b _08078122
	.align 2, 0
_080780E4: .4byte gUnknown_03005A46
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
	bl sub_8046CEC
	movs r0, #0xaf
	bl m4aSongNumStart
	ldr r0, [sp, #0xc]
	str r0, [r4]
	b _08078180
_0807810E:
	adds r6, #1
	ldr r0, _080781D8 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _080781C4
	ldr r4, _080781DC @ =gUnknown_03005AB0
	cmp r6, #0
	bne _08078130
_08078122:
	ldr r4, _080781E0 @ =gUnknown_03005A20
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
	bl sub_800CE34
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
	bl sub_8046CEC
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
_080781D8: .4byte gUnknown_03005088
_080781DC: .4byte gUnknown_03005AB0
_080781E0: .4byte gUnknown_03005A20

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
	ldr r1, _08078218 @ =gUnknown_03005A46
	mov sb, r1
	b _0807822C
	.align 2, 0
_08078214: .4byte gCurrentLevel
_08078218: .4byte gUnknown_03005A46
_0807821C:
	adds r6, #1
	ldr r0, _080782B8 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	blt _0807822C
	b _08078326
_0807822C:
	ldr r4, _080782BC @ =gUnknown_03005A20
	cmp r6, #0
	beq _08078234
	ldr r4, _080782C0 @ =gUnknown_03005AB0
_08078234:
	lsls r1, r7, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	adds r0, r5, #0
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	adds r3, r4, #0
	bl sub_800CE34
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
	bl sub_8046CEC
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
_080782B8: .4byte gUnknown_03005088
_080782BC: .4byte gUnknown_03005A20
_080782C0: .4byte gUnknown_03005AB0
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

	thumb_func_start sub_8078338
sub_8078338: @ 0x08078338
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable046
CreateEntity_Interactable046: @ 0x0807834C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _0807844C @ =sub_807847C
	mov r1, r8
	movs r2, #4
	ldrsb r2, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _08078450 @ =sub_80789B0
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r5, r1
	ldr r0, _08078454 @ =0x0300000C
	adds r7, r5, r0
	movs r2, #0
	movs r3, #0
	mov sb, r3
	strh r4, [r1, #4]
	strh r6, [r1, #6]
	mov r0, r8
	str r0, [r1]
	ldrb r0, [r0]
	strb r0, [r1, #8]
	mov r1, r8
	ldrb r0, [r1, #3]
	ldr r3, _08078458 @ =0x0300003C
	adds r3, r3, r5
	mov sl, r3
	strb r0, [r3]
	ldr r1, _0807845C @ =0x0300003D
	adds r0, r5, r1
	strb r2, [r0]
	ldr r3, _08078460 @ =0x0300003E
	adds r0, r5, r3
	strb r2, [r0]
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r7, #0x18]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r1]
	movs r0, #0x12
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	ldr r1, _08078464 @ =gUnknown_086CED6C
	ldr r0, _08078468 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r1, _0807846C @ =0x0300002C
	adds r0, r5, r1
	ldr r2, [sp, #4]
	strb r2, [r0]
	movs r0, #0xc0
	strh r0, [r7, #0x1a]
	mov r3, sb
	strh r3, [r7, #8]
	strh r3, [r7, #0x14]
	strh r3, [r7, #0x1c]
	ldr r0, _08078470 @ =0x0300002D
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _08078474 @ =0x0300002E
	adds r1, r5, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08078478 @ =0x03000031
	adds r5, r5, r0
	strb r2, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	mov r2, sl
	ldrb r0, [r2]
	cmp r0, #0
	beq _0807843A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r7, #0x10]
_0807843A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807844C: .4byte sub_807847C
_08078450: .4byte sub_80789B0
_08078454: .4byte 0x0300000C
_08078458: .4byte 0x0300003C
_0807845C: .4byte 0x0300003D
_08078460: .4byte 0x0300003E
_08078464: .4byte gUnknown_086CED6C
_08078468: .4byte gCurrentLevel
_0807846C: .4byte 0x0300002C
_08078470: .4byte 0x0300002D
_08078474: .4byte 0x0300002E
_08078478: .4byte 0x03000031

	thumb_func_start sub_807847C
sub_807847C: @ 0x0807847C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	movs r0, #3
	str r0, [sp, #0x14]
	ldr r0, _080784D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sb, r0
	ldr r2, _080784D8 @ =0x0300000C
	adds r2, r2, r1
	mov sl, r2
	ldr r4, [r0]
	str r4, [sp, #0x10]
	ldrb r0, [r0, #8]
	lsls r0, r0, #3
	mov r2, sb
	ldrh r1, [r2, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	movs r6, #0
	ldr r5, _080784DC @ =gUnknown_03005AB0
	ldr r7, _080784E0 @ =gUnknown_03005A20
_080784CC:
	cmp r6, #0
	beq _080784E4
	ldr r0, [r5, #0x10]
	b _080784E6
	.align 2, 0
_080784D4: .4byte gCurTask
_080784D8: .4byte 0x0300000C
_080784DC: .4byte gUnknown_03005AB0
_080784E0: .4byte gUnknown_03005A20
_080784E4:
	ldr r0, [r7, #0x10]
_080784E6:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080784F0
	b _080788B0
_080784F0:
	ldr r4, [sp, #8]
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r6, #0
	beq _08078506
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08078510
	b _0807884A
_08078506:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08078510
	b _0807884A
_08078510:
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x10]
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r6, #0
	beq _08078528
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08078532
	b _0807884A
_08078528:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08078532
	b _0807884A
_08078532:
	ldr r4, [sp, #0xc]
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r6, #0
	beq _08078548
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08078552
	b _0807884A
_08078548:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08078552
	b _0807884A
_08078552:
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x10]
	ldrb r0, [r2, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r6, #0
	beq _0807856A
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08078574
	b _0807884A
_0807856A:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08078574
	b _0807884A
_08078574:
	mov r0, sb
	adds r0, #0x3d
	adds r1, r0, r6
	ldrb r1, [r1]
	mov r8, r0
	cmp r1, #0
	bne _080785C2
	cmp r6, #0
	beq _0807858A
	ldr r0, [r5, #4]
	b _0807858C
_0807858A:
	ldr r0, [r7, #4]
_0807858C:
	asrs r3, r0, #8
	cmp r6, #0
	beq _08078596
	ldr r0, [r5]
	b _08078598
_08078596:
	ldr r0, [r7]
_08078598:
	asrs r1, r0, #8
	cmp r6, #0
	beq _080785A8
	ldr r4, _080785A4 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _080785AC
	.align 2, 0
_080785A4: .4byte gUnknown_03005AD7
_080785A8:
	ldr r0, _080785CC @ =gUnknown_03005A47
	ldrb r2, [r0]
_080785AC:
	movs r0, #0
	str r0, [sp]
	ldr r0, _080785D0 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_8040198
	cmp r0, #3
	ble _080785C2
	b _0807883E
_080785C2:
	cmp r6, #0
	beq _080785D4
	ldr r0, [r5, #0x10]
	b _080785D6
	.align 2, 0
_080785CC: .4byte gUnknown_03005A47
_080785D0: .4byte sub_803FF84
_080785D4:
	ldr r0, [r7, #0x10]
_080785D6:
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080785E0
	b _0807883E
_080785E0:
	cmp r6, #0
	beq _080785E8
	ldr r0, [r5, #0x10]
	b _080785EA
_080785E8:
	ldr r0, [r7, #0x10]
_080785EA:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080785F4
	b _080787EE
_080785F4:
	mov r1, r8
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _08078610
	ldr r0, _08078634 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #4
	bne _08078610
	movs r0, #0xc9
	bl m4aSongNumStart
_08078610:
	mov r2, r8
	adds r1, r2, r6
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08078638 @ =gUnknown_03005A20
	cmp r6, #0
	beq _08078620
	ldr r0, _0807863C @ =gUnknown_03005AB0
_08078620:
	bl sub_8046CEC
	cmp r6, #0
	beq _08078640
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807864A
	.align 2, 0
_08078634: .4byte gCurrentLevel
_08078638: .4byte gUnknown_03005A20
_0807863C: .4byte gUnknown_03005AB0
_08078640:
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_0807864A:
	ldr r3, _0807865C @ =gUnknown_03005A20
	cmp r6, #0
	beq _08078664
	ldr r0, [r5, #0x10]
	ldr r1, _08078660 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807866C
	.align 2, 0
_0807865C: .4byte gUnknown_03005A20
_08078660: .4byte 0xFFFFFEFF
_08078664:
	ldr r0, [r7, #0x10]
	ldr r1, _0807867C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r7, #0x10]
_0807866C:
	cmp r6, #0
	beq _08078680
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807868A
	.align 2, 0
_0807867C: .4byte 0xFFFFFEFF
_08078680:
	ldr r0, [r7, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_0807868A:
	cmp r6, #0
	beq _0807869A
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _080786A4
_0807869A:
	ldr r0, [r7, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_080786A4:
	cmp r6, #0
	beq _080786B4
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r5, #0x10]
	b _080786BE
_080786B4:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r7, #0x10]
_080786BE:
	cmp r6, #0
	beq _080786C8
	movs r0, #0
	strh r0, [r5, #0x38]
	b _080786CA
_080786C8:
	strh r6, [r3, #0x38]
_080786CA:
	cmp r6, #0
	beq _080786D4
	movs r0, #0
	strh r0, [r5, #0x3a]
	b _080786D6
_080786D4:
	strh r6, [r3, #0x3a]
_080786D6:
	mov r0, sb
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807871A
	cmp r6, #0
	beq _080786EE
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0x10]
	b _080786F6
_080786EE:
	ldr r0, [r7, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r7, #0x10]
_080786F6:
	cmp r6, #0
	beq _08078702
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r5, #0xc]
	b _08078708
_08078702:
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r3, #0xc]
_08078708:
	cmp r6, #0
	beq _08078714
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r5, #8]
	b _08078758
_08078714:
	movs r0, #0xfc
	lsls r0, r0, #8
	b _08078756
_0807871A:
	cmp r6, #0
	beq _0807872A
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _08078734
_0807872A:
	ldr r0, [r7, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_08078734:
	cmp r6, #0
	beq _08078740
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0xc]
	b _08078746
_08078740:
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r3, #0xc]
_08078746:
	cmp r6, #0
	beq _08078752
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #8]
	b _08078758
_08078752:
	movs r0, #0x80
	lsls r0, r0, #3
_08078756:
	strh r0, [r3, #8]
_08078758:
	cmp r6, #0
	beq _08078762
	movs r0, #0
	strh r0, [r5, #0xa]
	b _08078764
_08078762:
	strh r6, [r3, #0xa]
_08078764:
	cmp r6, #0
	beq _08078774
	movs r0, #0xf
	ldr r4, _08078770 @ =gUnknown_03005AF0
	strb r0, [r4]
	b _0807877C
	.align 2, 0
_08078770: .4byte gUnknown_03005AF0
_08078774:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0xf
	strb r0, [r1]
_0807877C:
	ldr r0, _080787B4 @ =gUnknown_03005A20
	cmp r6, #0
	beq _08078784
	ldr r0, _080787B8 @ =gUnknown_03005AB0
_08078784:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _080787B4 @ =gUnknown_03005A20
	cmp r6, #0
	beq _08078792
	ldr r1, _080787B8 @ =gUnknown_03005AB0
_08078792:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r3, _080787B4 @ =gUnknown_03005A20
	adds r1, r3, #0
	cmp r6, #0
	beq _080787A0
	ldr r1, _080787B8 @ =gUnknown_03005AB0
_080787A0:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	ldr r0, _080787BC @ =gCamera
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r6, #0
	beq _080787C0
	ldr r0, [r5]
	b _080787C2
	.align 2, 0
_080787B4: .4byte gUnknown_03005A20
_080787B8: .4byte gUnknown_03005AB0
_080787BC: .4byte gCamera
_080787C0:
	ldr r0, [r3]
_080787C2:
	asrs r0, r0, #8
	subs r0, r0, r1
	mov r4, sl
	strh r0, [r4, #0x16]
	movs r0, #2
	ldrsh r1, [r2, r0]
	cmp r6, #0
	beq _080787D6
	ldr r0, [r5, #4]
	b _080787D8
_080787D6:
	ldr r0, [r3, #4]
_080787D8:
	asrs r0, r0, #8
	subs r0, r0, r1
	mov r1, sl
	strh r0, [r1, #0x18]
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
	b _0807883E
_080787EE:
	mov r2, r8
	adds r1, r2, r6
	ldrb r0, [r1]
	cmp r0, #0
	beq _0807883E
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807883E
	cmp r6, #0
	beq _08078814
	ldr r0, [r5, #0x10]
	ldr r1, _08078810 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807881C
	.align 2, 0
_08078810: .4byte 0xFFDFFFFF
_08078814:
	ldr r0, [r7, #0x10]
	ldr r1, _08078830 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
_0807881C:
	ldr r0, _08078834 @ =gUnknown_030060E0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r6, #0
	beq _08078838
	ldrh r0, [r5, #0x38]
	orrs r1, r0
	strh r1, [r5, #0x38]
	b _0807883E
	.align 2, 0
_08078830: .4byte 0xFFDFFFFF
_08078834: .4byte gUnknown_030060E0
_08078838:
	ldrh r0, [r7, #0x38]
	orrs r1, r0
	strh r1, [r7, #0x38]
_0807883E:
	movs r0, #1
	lsls r0, r6
	ldr r4, [sp, #0x14]
	bics r4, r0
	str r4, [sp, #0x14]
	b _080788B0
_0807884A:
	mov r0, sb
	adds r0, #0x3d
	adds r4, r0, r6
	ldrb r0, [r4]
	adds r1, r0, #0
	cmp r1, #1
	bne _080788A8
	ldr r0, _08078874 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	movs r0, #0
	strb r0, [r4]
	cmp r6, #0
	beq _0807887C
	ldr r0, [r5, #0x10]
	ldr r1, _08078878 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08078884
	.align 2, 0
_08078874: .4byte gMPlayInfo_SE2
_08078878: .4byte 0xFFDFFFFF
_0807887C:
	ldr r0, [r7, #0x10]
	ldr r1, _08078898 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
_08078884:
	ldr r0, _0807889C @ =gUnknown_030060E0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r6, #0
	beq _080788A0
	ldrh r0, [r5, #0x38]
	orrs r1, r0
	strh r1, [r5, #0x38]
	b _080788B0
	.align 2, 0
_08078898: .4byte 0xFFDFFFFF
_0807889C: .4byte gUnknown_030060E0
_080788A0:
	ldrh r0, [r7, #0x38]
	orrs r1, r0
	strh r1, [r7, #0x38]
	b _080788B0
_080788A8:
	cmp r1, #0
	beq _080788B0
	subs r0, #1
	strb r0, [r4]
_080788B0:
	adds r6, #1
	ldr r0, _08078940 @ =gUnknown_03005088
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r3, r0, #0
	cmp r6, r1
	bge _080788C0
	b _080784CC
_080788C0:
	movs r0, #3
	ldr r1, [sp, #0x14]
	ands r1, r0
	cmp r1, #0
	bne _08078996
	ldr r2, _08078944 @ =gCamera
	ldrh r0, [r2]
	ldr r4, [sp, #8]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	ldr r4, [sp, #0xc]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _0807890C
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0807890C
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08078996
_0807890C:
	movs r5, #0
	movs r2, #0x3d
	add r2, sb
	mov r8, r2
	ldr r7, _08078948 @ =gUnknown_03005AB0
	ldr r6, _0807894C @ =gUnknown_03005A20
	ldr r2, _08078950 @ =0xFFDFFFFF
_0807891A:
	mov r0, r8
	adds r4, r0, r5
	ldrb r0, [r4]
	cmp r0, #0
	beq _0807897C
	movs r0, #0xc9
	str r2, [sp, #0x18]
	bl m4aSongNumStop
	movs r0, #0
	strb r0, [r4]
	ldr r2, [sp, #0x18]
	cmp r5, #0
	beq _08078954
	ldr r0, [r7, #0x10]
	ands r0, r2
	str r0, [r7, #0x10]
	b _0807895A
	.align 2, 0
_08078940: .4byte gUnknown_03005088
_08078944: .4byte gCamera
_08078948: .4byte gUnknown_03005AB0
_0807894C: .4byte gUnknown_03005A20
_08078950: .4byte 0xFFDFFFFF
_08078954:
	ldr r0, [r6, #0x10]
	ands r0, r2
	str r0, [r6, #0x10]
_0807895A:
	ldr r0, _08078970 @ =gUnknown_030060E0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r5, #0
	beq _08078974
	ldrh r0, [r7, #0x38]
	orrs r1, r0
	strh r1, [r7, #0x38]
	b _0807897A
	.align 2, 0
_08078970: .4byte gUnknown_030060E0
_08078974:
	ldrh r0, [r6, #0x38]
	orrs r1, r0
	strh r1, [r6, #0x38]
_0807897A:
	ldr r3, _080789A8 @ =gUnknown_03005088
_0807897C:
	adds r5, #1
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r5, r0
	blt _0807891A
	mov r1, sb
	ldrb r0, [r1, #8]
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	ldr r0, _080789AC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08078996:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080789A8: .4byte gUnknown_03005088
_080789AC: .4byte gCurTask

	thumb_func_start sub_80789B0
sub_80789B0: @ 0x080789B0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable048
CreateEntity_Interactable048: @ 0x080789C4
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
	ldr r0, _08078A3C @ =sub_8078AF4
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08078A40 @ =sub_8079110
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r3, r0
	adds r0, #0xc
	adds r6, r3, r0
	movs r1, #0
	movs r5, #0
	mov r0, r8
	strh r0, [r2, #4]
	mov r0, sb
	strh r0, [r2, #6]
	str r7, [r2]
	ldrb r0, [r7]
	strb r0, [r2, #8]
	strb r4, [r2, #9]
	str r5, [r2, #0x40]
	str r5, [r2, #0x44]
	ldr r4, _08078A44 @ =0x0300004C
	adds r0, r3, r4
	strh r5, [r0]
	adds r4, #2
	adds r0, r3, r4
	strb r1, [r0]
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _08078A4C
	ldr r1, _08078A48 @ =0x03000048
	adds r0, r3, r1
	movs r1, #4
	strh r1, [r0]
	strh r5, [r2, #0x3c]
	subs r4, #4
	adds r0, r3, r4
	b _08078A5C
	.align 2, 0
_08078A3C: .4byte sub_8078AF4
_08078A40: .4byte sub_8079110
_08078A44: .4byte 0x0300004C
_08078A48: .4byte 0x03000048
_08078A4C:
	ldr r0, _08078AE8 @ =0x03000048
	adds r1, r3, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r2, #0x3c]
	ldr r1, _08078AEC @ =0x0300004A
	adds r0, r3, r1
_08078A5C:
	strh r5, [r0]
	ldr r1, [r7, #4]
	ldr r0, _08078AF0 @ =0x00FFFF00
	ands r1, r0
	cmp r1, #0
	bne _08078A6E
	adds r0, r2, #0
	adds r0, #0x48
	strh r1, [r0]
_08078A6E:
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r5, #0
	movs r4, #0
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
	movs r0, #0x1e
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0xf2
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	strb r5, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r4, [r6, #8]
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
	movs r0, #0x80
	lsls r0, r0, #6
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
_08078AE8: .4byte 0x03000048
_08078AEC: .4byte 0x0300004A
_08078AF0: .4byte 0x00FFFF00

	thumb_func_start sub_8078AF4
sub_8078AF4: @ 0x08078AF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08078C04 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _08078C08 @ =0x0300000C
	adds r7, r1, r2
	ldr r0, [r6]
	mov sb, r0
	adds r2, #0x3c
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _08078B4C
	mov r0, sb
	ldrb r2, [r0, #5]
	lsls r2, r2, #0xb
	ldr r4, _08078C0C @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _08078C10 @ =gUnknown_03005120
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _08078C14 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x40]
_08078B4C:
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldrb r3, [r2, #1]
	lsls r3, r3, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r0, _08078C18 @ =gCamera
	mov r8, r0
	ldrh r2, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	subs r2, r4, r2
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r7, #0x16]
	mov r2, r8
	ldrh r1, [r2, #2]
	lsls r3, r3, #0x10
	asrs r5, r3, #0x10
	subs r1, r5, r1
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8078DA4
	cmp r0, #0
	beq _08078BA0
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _08078C1C @ =sub_8078C34
	str r0, [r1, #8]
_08078BA0:
	mov r2, r8
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _08078BD0
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _08078BD0
	mov r0, r8
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r5, r0
	bgt _08078BD0
	adds r0, r2, #0
	subs r0, #0x80
	cmp r5, r0
	bge _08078C20
_08078BD0:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08078BF4
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08078BF4
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08078C20
_08078BF4:
	ldrb r0, [r6, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08078C04 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08078C26
	.align 2, 0
_08078C04: .4byte gCurTask
_08078C08: .4byte 0x0300000C
_08078C0C: .4byte gSineTable
_08078C10: .4byte gUnknown_03005120
_08078C14: .4byte 0x000003FF
_08078C18: .4byte gCamera
_08078C1C: .4byte sub_8078C34
_08078C20:
	adds r0, r7, #0
	bl DisplaySprite
_08078C26:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8078C34
sub_8078C34: @ 0x08078C34
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _08078D74 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0xc
	adds r7, r2, r0
	ldr r3, [r5]
	mov sb, r3
	adds r0, #0x42
	adds r0, r0, r2
	mov r8, r0
	ldrb r0, [r0]
	adds r0, #1
	mov r3, r8
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _08078C6C
	ldr r1, [r1]
	ldr r0, _08078D78 @ =sub_8078AF4
	str r0, [r1, #8]
_08078C6C:
	ldr r0, _08078D7C @ =0x03000048
	adds r1, r2, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _08078CA2
	mov r3, sb
	ldrb r2, [r3, #5]
	lsls r2, r2, #0xb
	ldr r4, _08078D80 @ =gSineTable
	adds r3, r0, #0
	ldr r0, _08078D84 @ =gUnknown_03005120
	ldrh r1, [r5, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _08078D88 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r5, #0x40]
_08078CA2:
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r3, sb
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_8078DA4
	ldr r3, _08078D8C @ =gCamera
	ldrh r1, [r3]
	subs r1, r4, r1
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r1, r1, r0
	mov ip, r1
	ldr r2, _08078D80 @ =gSineTable
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	mov r1, ip
	subs r0, r1, r0
	strh r0, [r7, #0x16]
	ldrh r1, [r3, #2]
	subs r1, r6, r1
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	mov ip, r1
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	mov r2, ip
	adds r1, r2, r0
	strh r1, [r7, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _08078D40
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _08078D40
	movs r0, #2
	ldrsh r1, [r3, r0]
	subs r2, #0x50
	adds r0, r1, r2
	cmp r6, r0
	bgt _08078D40
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	bge _08078D90
_08078D40:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08078D64
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _08078D64
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08078D90
_08078D64:
	ldrb r0, [r5, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08078D74 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08078D96
	.align 2, 0
_08078D74: .4byte gCurTask
_08078D78: .4byte sub_8078AF4
_08078D7C: .4byte 0x03000048
_08078D80: .4byte gSineTable
_08078D84: .4byte gUnknown_03005120
_08078D88: .4byte 0x000003FF
_08078D8C: .4byte gCamera
_08078D90:
	adds r0, r7, #0
	bl DisplaySprite
_08078D96:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8078DA4
sub_8078DA4: @ 0x08078DA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	mov sl, r3
	movs r0, #0
	mov sb, r0
	movs r5, #0
	ldr r4, _08078DCC @ =gUnknown_03005AB0
	ldr r6, _08078DD0 @ =gUnknown_03005A20
_08078DC2:
	cmp r5, #0
	beq _08078DD4
	ldr r1, [r4]
	mov r8, r1
	b _08078DD8
	.align 2, 0
_08078DCC: .4byte gUnknown_03005AB0
_08078DD0: .4byte gUnknown_03005A20
_08078DD4:
	ldr r2, [r6]
	mov r8, r2
_08078DD8:
	ldr r0, [r7, #0x40]
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	add r0, sl
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08078E18 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08078DF6
	ldr r3, _08078E1C @ =gUnknown_03005AB0
_08078DF6:
	ldr r0, [sp]
	bl sub_800CE34
	cmp r0, #0
	bne _08078E02
	b _080790D6
_08078E02:
	cmp r5, #0
	beq _08078E20
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08078E14
	b _080790D6
_08078E14:
	b _08078E2E
	.align 2, 0
_08078E18: .4byte gUnknown_03005A20
_08078E1C: .4byte gUnknown_03005AB0
_08078E20:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq _08078E2E
	b _080790D6
_08078E2E:
	cmp r5, #0
	beq _08078E40
	ldr r1, _08078E3C @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	b _08078E4A
	.align 2, 0
_08078E3C: .4byte gUnknown_03005B09
_08078E40:
	ldr r0, _08078E60 @ =gUnknown_03005A20
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_08078E4A:
	cmp r0, #1
	beq _08078E76
	cmp r5, #0
	beq _08078E68
	ldr r2, _08078E64 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	beq _08078E76
	b _08078ECA
	.align 2, 0
_08078E60: .4byte gUnknown_03005A20
_08078E64: .4byte gUnknown_03005B09
_08078E68:
	ldr r0, _08078E88 @ =gUnknown_03005A20
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08078ECA
_08078E76:
	cmp r5, #0
	beq _08078E90
	ldr r3, _08078E8C @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _08078E9E
	b _08078ECA
	.align 2, 0
_08078E88: .4byte gUnknown_03005A20
_08078E8C: .4byte gUnknown_03005AED
_08078E90:
	ldr r0, _08078EB8 @ =gUnknown_03005A20
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08078ECA
_08078E9E:
	ldr r0, _08078EB8 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08078EA6
	ldr r0, _08078EBC @ =gUnknown_03005AB0
_08078EA6:
	bl sub_8046CEC
	cmp r5, #0
	beq _08078EC4
	movs r0, #5
	ldr r1, _08078EC0 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _08078ECA
	.align 2, 0
_08078EB8: .4byte gUnknown_03005A20
_08078EBC: .4byte gUnknown_03005AB0
_08078EC0: .4byte gUnknown_03005AF0
_08078EC4:
	movs r0, #5
	ldr r2, _08078EDC @ =gUnknown_03005A60
	strb r0, [r2]
_08078ECA:
	cmp r5, #0
	beq _08078EE0
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _08078EEA
	.align 2, 0
_08078EDC: .4byte gUnknown_03005A60
_08078EE0:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_08078EEA:
	cmp r5, #0
	beq _08078EF8
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08078F00
_08078EF8:
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
_08078F00:
	cmp r5, #0
	beq _08078F14
	ldr r0, [r4, #0x10]
	ldr r1, _08078F10 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _08078F1C
	.align 2, 0
_08078F10: .4byte 0xFFFFFEFF
_08078F14:
	ldr r0, [r6, #0x10]
	ldr r1, _08078F2C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
_08078F1C:
	cmp r5, #0
	beq _08078F30
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08078F38
	.align 2, 0
_08078F2C: .4byte 0xFFFFFEFF
_08078F30:
	ldr r0, [r6, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
_08078F38:
	cmp r5, #0
	beq _08078F48
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _08078F52
_08078F48:
	ldr r0, [r6, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_08078F52:
	ldr r1, _08078F78 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08078F5A
	ldr r1, _08078F7C @ =gUnknown_03005AB0
_08078F5A:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08078F78 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08078F66
	ldr r1, _08078F7C @ =gUnknown_03005AB0
_08078F66:
	movs r0, #9
	strb r0, [r1, #0xf]
	ldr r0, [r7, #0x44]
	asrs r1, r0, #8
	cmp r5, #0
	beq _08078F80
	ldr r0, [r4, #4]
	b _08078F84
	.align 2, 0
_08078F78: .4byte gUnknown_03005A20
_08078F7C: .4byte gUnknown_03005AB0
_08078F80:
	ldr r2, _08078F9C @ =gUnknown_03005A20
	ldr r0, [r2, #4]
_08078F84:
	asrs r0, r0, #8
	mov r3, sl
	subs r0, r0, r3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, [r7, #0x40]
	asrs r1, r0, #8
	cmp r5, #0
	beq _08078FA0
	ldr r0, [r4]
	b _08078FA4
	.align 2, 0
_08078F9C: .4byte gUnknown_03005A20
_08078FA0:
	ldr r3, _08078FD0 @ =gUnknown_03005A20
	ldr r0, [r3]
_08078FA4:
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	subs r0, r0, r3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sub_800338C
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r1, r2, #0
	subs r1, #0x40
	movs r0, #0xe0
	lsls r0, r0, #2
	cmp r1, r0
	bls _08078FE4
	cmp r5, #0
	beq _08078FD8
	ldr r0, _08078FD4 @ =0x00000666
	strh r0, [r4, #8]
	b _080790C4
	.align 2, 0
_08078FD0: .4byte gUnknown_03005A20
_08078FD4: .4byte 0x00000666
_08078FD8:
	ldr r0, _08078FE0 @ =0x00000666
	strh r0, [r6, #8]
	b _080790C4
	.align 2, 0
_08078FE0: .4byte 0x00000666
_08078FE4:
	ldr r1, _08078FF8 @ =0xFFFFFE3F
	adds r0, r2, r1
	cmp r0, #0x88
	bhi _0807900C
	cmp r5, #0
	beq _08079000
	ldr r0, _08078FFC @ =0x0000F99A
	strh r0, [r4, #8]
	b _080790C4
	.align 2, 0
_08078FF8: .4byte 0xFFFFFE3F
_08078FFC: .4byte 0x0000F99A
_08079000:
	ldr r0, _08079008 @ =0x0000F99A
	strh r0, [r6, #8]
	b _080790C4
	.align 2, 0
_08079008: .4byte 0x0000F99A
_0807900C:
	ldr r0, _08079024 @ =0x00000249
	cmp r2, r0
	bls _08079070
	adds r0, #0xb7
	cmp r2, r0
	bls _08079040
	cmp r5, #0
	beq _0807902C
	ldr r2, _08079028 @ =0x00000297
	strh r2, [r4, #8]
	b _08079030
	.align 2, 0
_08079024: .4byte 0x00000249
_08079028: .4byte 0x00000297
_0807902C:
	ldr r3, _08079038 @ =0x00000297
	strh r3, [r6, #8]
_08079030:
	cmp r5, #0
	bne _08079058
	ldr r0, _0807903C @ =0x0000FA27
	b _080790C2
	.align 2, 0
_08079038: .4byte 0x00000297
_0807903C: .4byte 0x0000FA27
_08079040:
	cmp r5, #0
	beq _08079050
	ldr r0, _0807904C @ =0x0000FD69
	strh r0, [r4, #8]
	b _08079054
	.align 2, 0
_0807904C: .4byte 0x0000FD69
_08079050:
	ldr r0, _08079060 @ =0x0000FD69
	strh r0, [r6, #8]
_08079054:
	cmp r5, #0
	beq _08079068
_08079058:
	ldr r0, _08079064 @ =0x0000FA27
	strh r0, [r4, #0xa]
	b _080790C4
	.align 2, 0
_08079060: .4byte 0x0000FD69
_08079064: .4byte 0x0000FA27
_08079068:
	ldr r0, _0807906C @ =0x0000FA27
	b _080790C2
	.align 2, 0
_0807906C: .4byte 0x0000FA27
_08079070:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bls _08079098
	cmp r5, #0
	beq _08079088
	ldr r0, _08079084 @ =0x0000FD69
	strh r0, [r4, #8]
	b _0807908C
	.align 2, 0
_08079084: .4byte 0x0000FD69
_08079088:
	ldr r0, _08079094 @ =0x0000FD69
	strh r0, [r6, #8]
_0807908C:
	cmp r5, #0
	bne _080790B0
	b _080790C0
	.align 2, 0
_08079094: .4byte 0x0000FD69
_08079098:
	cmp r5, #0
	beq _080790A8
	ldr r0, _080790A4 @ =0x00000297
	strh r0, [r4, #8]
	b _080790AC
	.align 2, 0
_080790A4: .4byte 0x00000297
_080790A8:
	ldr r1, _080790B8 @ =0x00000297
	strh r1, [r6, #8]
_080790AC:
	cmp r5, #0
	beq _080790C0
_080790B0:
	ldr r0, _080790BC @ =0x000005D9
	strh r0, [r4, #0xa]
	b _080790C4
	.align 2, 0
_080790B8: .4byte 0x00000297
_080790BC: .4byte 0x000005D9
_080790C0:
	ldr r0, _080790E0 @ =0x000005D9
_080790C2:
	strh r0, [r6, #0xa]
_080790C4:
	movs r0, #0xb7
	bl m4aSongNumStart
	adds r1, r7, #0
	adds r1, #0x4e
	movs r0, #0
	strb r0, [r1]
	movs r2, #1
	mov sb, r2
_080790D6:
	cmp r5, #0
	beq _080790E4
	mov r3, r8
	str r3, [r4]
	b _080790E8
	.align 2, 0
_080790E0: .4byte 0x000005D9
_080790E4:
	mov r0, r8
	str r0, [r6]
_080790E8:
	adds r5, #1
	ldr r0, _0807910C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _080790F8
	b _08078DC2
_080790F8:
	mov r0, sb
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807910C: .4byte gUnknown_03005088

	thumb_func_start sub_8079110
sub_8079110: @ 0x08079110
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable049
CreateEntity_Interactable049: @ 0x08079124
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080791A0 @ =sub_8079298
	movs r2, #0x80
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r0, r0, r2
	mov ip, r0
	movs r1, #0
	strh r7, [r3, #4]
	mov r0, r8
	strh r0, [r3, #6]
	str r5, [r3]
	ldrb r0, [r5]
	strb r0, [r3, #8]
	strb r4, [r3, #9]
	str r6, [r3, #0x40]
	str r6, [r3, #0x44]
	ldr r4, _080791A4 @ =0x0300004E
	adds r0, r2, r4
	strb r1, [r0]
	ldr r1, _080791A8 @ =0x0300004C
	adds r0, r2, r1
	strh r6, [r0]
	ldrb r0, [r5, #5]
	ldrb r4, [r5, #6]
	cmp r0, r4
	bls _080791CC
	movs r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _080791B0
	subs r1, #4
	adds r0, r2, r1
	movs r1, #4
	strh r1, [r0]
	strh r6, [r3, #0x3c]
	ldr r4, _080791AC @ =0x0300004A
	adds r0, r2, r4
	strh r6, [r0]
	b _08079202
	.align 2, 0
_080791A0: .4byte sub_8079298
_080791A4: .4byte 0x0300004E
_080791A8: .4byte 0x0300004C
_080791AC: .4byte 0x0300004A
_080791B0:
	ldr r0, _080791C4 @ =0x03000048
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x3c]
	ldr r1, _080791C8 @ =0x0300004A
	adds r0, r2, r1
	strh r6, [r0]
	b _08079202
	.align 2, 0
_080791C4: .4byte 0x03000048
_080791C8: .4byte 0x0300004A
_080791CC:
	movs r0, #4
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _080791F0
	ldr r4, _080791E8 @ =0x03000048
	adds r0, r2, r4
	strh r6, [r0]
	ldr r0, _080791EC @ =0x0300004A
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	strh r6, [r3, #0x3c]
	b _08079202
	.align 2, 0
_080791E8: .4byte 0x03000048
_080791EC: .4byte 0x0300004A
_080791F0:
	ldr r1, _08079284 @ =0x03000048
	adds r0, r2, r1
	strh r6, [r0]
	ldr r4, _08079288 @ =0x0300004A
	adds r1, r2, r4
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x3c]
_08079202:
	ldr r1, [r5, #4]
	ldr r0, _0807928C @ =0x00FFFF00
	ands r1, r0
	cmp r1, #0
	bne _08079212
	adds r0, r3, #0
	adds r0, #0x48
	strh r1, [r0]
_08079212:
	ldrb r0, [r5]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	movs r3, #0
	movs r2, #0
	mov r1, ip
	strh r0, [r1, #0x16]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r4, r8
	lsls r1, r4, #8
	adds r0, r0, r1
	mov r1, ip
	strh r0, [r1, #0x18]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	strb r0, [r5]
	ldr r0, _08079290 @ =0x06012E20
	str r0, [r1, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r2, [r1, #8]
	ldr r0, _08079294 @ =0x000001E5
	strh r0, [r1, #0xa]
	mov r0, ip
	adds r0, #0x20
	strb r3, [r0]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x1c]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r1, ip
	str r0, [r1, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #0x10]
	mov r0, ip
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079284: .4byte 0x03000048
_08079288: .4byte 0x0300004A
_0807928C: .4byte 0x00FFFF00
_08079290: .4byte 0x06012E20
_08079294: .4byte 0x000001E5

	thumb_func_start sub_8079298
sub_8079298: @ 0x08079298
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080793E0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r1, _080793E4 @ =0x0300000C
	adds r7, r5, r1
	ldr r2, [r6]
	mov sb, r2
	adds r0, #0x48
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _080792F0
	mov r0, sb
	ldrb r2, [r0, #5]
	lsls r2, r2, #0xb
	ldr r4, _080793E8 @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _080793EC @ =gUnknown_03005120
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _080793F0 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x40]
_080792F0:
	ldr r2, _080793F4 @ =0x0300004A
	adds r1, r5, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _08079328
	mov r0, sb
	ldrb r2, [r0, #6]
	lsls r2, r2, #0xb
	ldr r4, _080793E8 @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _080793EC @ =gUnknown_03005120
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _080793F0 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x44]
_08079328:
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldrb r3, [r2, #1]
	lsls r3, r3, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r0, _080793F8 @ =gCamera
	mov r8, r0
	ldrh r2, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	subs r2, r4, r2
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r7, #0x16]
	mov r2, r8
	ldrh r1, [r2, #2]
	lsls r3, r3, #0x10
	asrs r5, r3, #0x10
	subs r1, r5, r1
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_80795C4
	cmp r0, #0
	beq _0807937C
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _080793FC @ =sub_8079414
	str r0, [r1, #8]
_0807937C:
	mov r2, r8
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _080793AC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _080793AC
	mov r0, r8
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r5, r0
	bgt _080793AC
	adds r0, r2, #0
	subs r0, #0x80
	cmp r5, r0
	bge _08079400
_080793AC:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080793D0
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _080793D0
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08079400
_080793D0:
	ldrb r0, [r6, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _080793E0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08079406
	.align 2, 0
_080793E0: .4byte gCurTask
_080793E4: .4byte 0x0300000C
_080793E8: .4byte gSineTable
_080793EC: .4byte gUnknown_03005120
_080793F0: .4byte 0x000003FF
_080793F4: .4byte 0x0300004A
_080793F8: .4byte gCamera
_080793FC: .4byte sub_8079414
_08079400:
	adds r0, r7, #0
	bl DisplaySprite
_08079406:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8079414
sub_8079414: @ 0x08079414
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _08079590 @ =gCurTask
	ldr r0, [r1]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	adds r0, #0xc
	adds r7, r5, r0
	ldr r2, [r6]
	mov sb, r2
	adds r0, #0x42
	adds r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	adds r0, #1
	mov r2, r8
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _0807944C
	ldr r1, [r1]
	ldr r0, _08079594 @ =sub_8079298
	str r0, [r1, #8]
_0807944C:
	ldr r0, _08079598 @ =0x03000048
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _08079484
	mov r0, sb
	ldrb r2, [r0, #5]
	lsls r2, r2, #0xb
	ldr r4, _0807959C @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _080795A0 @ =gUnknown_03005120
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _080795A4 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x40]
_08079484:
	ldr r2, _080795A8 @ =0x0300004A
	adds r1, r5, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _080794BC
	mov r0, sb
	ldrb r2, [r0, #6]
	lsls r2, r2, #0xb
	ldr r4, _0807959C @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _080795A0 @ =gUnknown_03005120
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _080795A4 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x44]
_080794BC:
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_80795C4
	ldr r3, _080795AC @ =gCamera
	ldrh r1, [r3]
	subs r1, r4, r1
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	adds r1, r1, r0
	mov ip, r1
	ldr r2, _0807959C @ =gSineTable
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	mov r1, ip
	subs r0, r1, r0
	strh r0, [r7, #0x16]
	ldrh r1, [r3, #2]
	subs r1, r5, r1
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	mov ip, r1
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	mov r2, ip
	adds r1, r2, r0
	strh r1, [r7, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0807955A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0807955A
	movs r0, #2
	ldrsh r1, [r3, r0]
	subs r2, #0x50
	adds r0, r1, r2
	cmp r5, r0
	bgt _0807955A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	bge _080795B0
_0807955A:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807957E
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0807957E
	movs r2, #0x18
	ldrsh r1, [r7, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080795B0
_0807957E:
	ldrb r0, [r6, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08079590 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080795B6
	.align 2, 0
_08079590: .4byte gCurTask
_08079594: .4byte sub_8079298
_08079598: .4byte 0x03000048
_0807959C: .4byte gSineTable
_080795A0: .4byte gUnknown_03005120
_080795A4: .4byte 0x000003FF
_080795A8: .4byte 0x0300004A
_080795AC: .4byte gCamera
_080795B0:
	adds r0, r7, #0
	bl DisplaySprite
_080795B6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80795C4
sub_80795C4: @ 0x080795C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	movs r4, #0
	mov r8, r4
	ldr r7, _080795F0 @ =gUnknown_03005AB0
	ldr r0, _080795F4 @ =gUnknown_03005A20
	mov sb, r0
_080795E2:
	mov r1, r8
	cmp r1, #0
	beq _080795F8
	ldr r2, [r7]
	str r2, [sp, #0xc]
	b _080795FE
	.align 2, 0
_080795F0: .4byte gUnknown_03005AB0
_080795F4: .4byte gUnknown_03005A20
_080795F8:
	mov r3, sb
	ldr r3, [r3]
	str r3, [sp, #0xc]
_080795FE:
	ldr r5, _08079648 @ =gUnknown_03005A20
	mov r1, sl
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	ldr r2, [sp, #4]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	ldr r2, [sp, #8]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r3, r5, #0
	mov r0, r8
	cmp r0, #0
	beq _08079626
	ldr r3, _0807964C @ =gUnknown_03005AB0
_08079626:
	ldr r0, [sp]
	bl sub_800CE34
	cmp r0, #0
	bne _08079632
	b _080798F6
_08079632:
	mov r1, r8
	cmp r1, #0
	beq _08079650
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08079646
	b _080798F6
_08079646:
	b _08079660
	.align 2, 0
_08079648: .4byte gUnknown_03005A20
_0807964C: .4byte gUnknown_03005AB0
_08079650:
	mov r2, sb
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq _08079660
	b _080798F6
_08079660:
	mov r3, r8
	cmp r3, #0
	beq _08079674
	ldr r1, _08079670 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	b _0807967E
	.align 2, 0
_08079670: .4byte gUnknown_03005B09
_08079674:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_0807967E:
	cmp r0, #1
	beq _080796A6
	mov r2, r8
	cmp r2, #0
	beq _08079698
	ldr r3, _08079694 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #2
	beq _080796A6
	b _080796FC
	.align 2, 0
_08079694: .4byte gUnknown_03005B09
_08079698:
	adds r0, r5, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _080796FC
_080796A6:
	mov r0, r8
	cmp r0, #0
	beq _080796BC
	ldr r1, _080796B8 @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080796CA
	b _080796FC
	.align 2, 0
_080796B8: .4byte gUnknown_03005AED
_080796BC:
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080796FC
_080796CA:
	ldr r0, _080796E8 @ =gUnknown_03005A20
	mov r2, r8
	cmp r2, #0
	beq _080796D4
	ldr r0, _080796EC @ =gUnknown_03005AB0
_080796D4:
	bl sub_8046CEC
	mov r3, r8
	cmp r3, #0
	beq _080796F4
	movs r0, #5
	ldr r1, _080796F0 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _080796FA
	.align 2, 0
_080796E8: .4byte gUnknown_03005A20
_080796EC: .4byte gUnknown_03005AB0
_080796F0: .4byte gUnknown_03005AF0
_080796F4:
	movs r0, #5
	ldr r2, _08079710 @ =gUnknown_03005A60
	strb r0, [r2]
_080796FA:
	ldr r5, _08079714 @ =gUnknown_03005A20
_080796FC:
	mov r3, r8
	cmp r3, #0
	beq _08079718
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _08079726
	.align 2, 0
_08079710: .4byte gUnknown_03005A60
_08079714: .4byte gUnknown_03005A20
_08079718:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_08079726:
	mov r3, r8
	cmp r3, #0
	beq _08079736
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08079742
_08079736:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #2
	orrs r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_08079742:
	mov r3, r8
	cmp r3, #0
	beq _08079758
	ldr r0, [r7, #0x10]
	ldr r1, _08079754 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r7, #0x10]
	b _08079764
	.align 2, 0
_08079754: .4byte 0xFFFFFEFF
_08079758:
	mov r1, sb
	ldr r0, [r1, #0x10]
	ldr r1, _08079774 @ =0xFFFFFEFF
	ands r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_08079764:
	mov r3, r8
	cmp r3, #0
	beq _08079778
	ldr r0, [r7, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08079784
	.align 2, 0
_08079774: .4byte 0xFFFFFEFF
_08079778:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #4
	orrs r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_08079784:
	mov r3, r8
	cmp r3, #0
	beq _08079796
	ldr r0, [r7, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _080797A4
_08079796:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_080797A4:
	adds r1, r5, #0
	mov r3, r8
	cmp r3, #0
	beq _080797AE
	ldr r1, _080797D8 @ =gUnknown_03005AB0
_080797AE:
	movs r0, #6
	strb r0, [r1, #0xe]
	adds r1, r5, #0
	mov r0, r8
	cmp r0, #0
	beq _080797BC
	ldr r1, _080797D8 @ =gUnknown_03005AB0
_080797BC:
	movs r0, #9
	strb r0, [r1, #0xf]
	mov r1, sl
	ldr r0, [r1, #0x44]
	asrs r1, r0, #8
	mov r2, r8
	cmp r2, #0
	beq _080797DC
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	ldr r3, [sp, #8]
	subs r0, r0, r3
	b _080797E4
	.align 2, 0
_080797D8: .4byte gUnknown_03005AB0
_080797DC:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r2, [sp, #8]
	subs r0, r0, r2
_080797E4:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	mov r3, sl
	ldr r0, [r3, #0x40]
	asrs r1, r0, #8
	mov r0, r8
	cmp r0, #0
	beq _080797FA
	ldr r0, [r7]
	b _080797FC
_080797FA:
	ldr r0, [r5]
_080797FC:
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	subs r0, r0, r3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sub_800338C
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	ldr r2, _08079834 @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0xf
	bl Div
	mov r1, r8
	cmp r1, #0
	beq _08079838
	strh r0, [r7, #8]
	b _0807983C
	.align 2, 0
_08079834: .4byte gSineTable
_08079838:
	mov r2, sb
	strh r0, [r2, #8]
_0807983C:
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #1
	ldr r1, _0807985C @ =gSineTable
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xf
	bl Div
	mov r3, r8
	cmp r3, #0
	beq _08079860
	strh r0, [r7, #0xc]
	b _08079864
	.align 2, 0
_0807985C: .4byte gSineTable
_08079860:
	mov r1, sb
	strh r0, [r1, #0xc]
_08079864:
	lsls r0, r4, #1
	ldr r2, _08079880 @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0xf
	bl Div
	mov r1, r8
	cmp r1, #0
	beq _08079884
	strh r0, [r7, #0xa]
	b _08079888
	.align 2, 0
_08079880: .4byte gSineTable
_08079884:
	mov r2, sb
	strh r0, [r2, #0xa]
_08079888:
	mov r3, r8
	cmp r3, #0
	beq _08079894
	movs r1, #8
	ldrsh r0, [r7, r1]
	b _0807989A
_08079894:
	mov r2, sb
	movs r3, #8
	ldrsh r0, [r2, r3]
_0807989A:
	cmp r0, #0
	bne _080798B0
	mov r0, r8
	cmp r0, #0
	beq _080798AA
	movs r0, #8
	strh r0, [r7, #8]
	b _080798B0
_080798AA:
	movs r0, #8
	mov r1, sb
	strh r0, [r1, #8]
_080798B0:
	ldr r1, _08079904 @ =gUnknown_03005030
	ldr r6, [r1]
	adds r0, r6, #0
	adds r0, #0xa
	str r0, [r1]
	ldr r4, _08079908 @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _080798E6
	ldr r0, _0807990C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _080798E6
	ldr r1, _08079910 @ =gUnknown_03005024
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08079914 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
_080798E6:
	movs r0, #0xb7
	bl m4aSongNumStart
	mov r1, sl
	adds r1, #0x4e
	movs r0, #0
	strb r0, [r1]
	movs r4, #1
_080798F6:
	mov r2, r8
	cmp r2, #0
	beq _08079918
	ldr r3, [sp, #0xc]
	str r3, [r7]
	b _0807991E
	.align 2, 0
_08079904: .4byte gUnknown_03005030
_08079908: .4byte 0x0000C350
_0807990C: .4byte gGameMode
_08079910: .4byte gUnknown_03005024
_08079914: .4byte gUnknown_03005040
_08079918:
	ldr r0, [sp, #0xc]
	mov r1, sb
	str r0, [r1]
_0807991E:
	movs r2, #1
	add r8, r2
	ldr r0, _08079944 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	bge _08079930
	b _080795E2
_08079930:
	adds r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08079944: .4byte gUnknown_03005088

	thumb_func_start CreateEntity_Interactable050
CreateEntity_Interactable050: @ 0x08079948
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080799E0 @ =sub_8079A98
	movs r2, #0x80
	lsls r2, r2, #6
	movs r5, #0
	str r5, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r0, r0, r2
	mov ip, r0
	movs r1, #0
	mov r8, r1
	strh r7, [r3, #4]
	mov r0, sb
	strh r0, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #8]
	strb r4, [r3, #9]
	str r5, [r3, #0x40]
	str r5, [r3, #0x44]
	ldr r1, _080799E4 @ =0x03000048
	adds r0, r2, r1
	strh r5, [r0]
	ldr r4, _080799E8 @ =0x0300004A
	adds r0, r2, r4
	strh r5, [r0]
	ldrb r1, [r6, #3]
	movs r0, #7
	ands r0, r1
	lsls r0, r0, #8
	strh r0, [r3, #0x3c]
	ldrb r1, [r6, #4]
	adds r4, #6
	adds r0, r2, r4
	strb r1, [r0]
	ldr r1, _080799EC @ =0x03000051
	adds r0, r2, r1
	mov r4, r8
	strb r4, [r0]
	subs r1, #5
	adds r0, r2, r1
	strh r5, [r0]
	ldrb r4, [r6, #5]
	ldrb r1, [r6, #6]
	cmp r4, r1
	bls _080799F8
	ldr r1, _080799F0 @ =0x0300004F
	adds r0, r2, r1
	strb r4, [r0]
	ldr r4, _080799F4 @ =0x0300004E
	adds r1, r2, r4
	movs r0, #1
	strb r0, [r1]
	b _08079A06
	.align 2, 0
_080799E0: .4byte sub_8079A98
_080799E4: .4byte 0x03000048
_080799E8: .4byte 0x0300004A
_080799EC: .4byte 0x03000051
_080799F0: .4byte 0x0300004F
_080799F4: .4byte 0x0300004E
_080799F8:
	ldr r4, _08079A88 @ =0x0300004F
	adds r0, r2, r4
	strb r1, [r0]
	ldr r1, _08079A8C @ =0x0300004E
	adds r0, r2, r1
	mov r4, r8
	strb r4, [r0]
_08079A06:
	movs r1, #3
	ldrsb r1, [r6, r1]
	cmp r1, #0
	bne _08079A14
	adds r0, r3, #0
	adds r0, #0x48
	strh r1, [r0]
_08079A14:
	ldrb r0, [r6]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	movs r3, #0
	movs r2, #0
	mov r1, ip
	strh r0, [r1, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r4, sb
	lsls r1, r4, #8
	adds r0, r0, r1
	mov r1, ip
	strh r0, [r1, #0x18]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	strb r0, [r6]
	ldr r0, _08079A90 @ =0x06012E20
	str r0, [r1, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r1, #0x1a]
	strh r2, [r1, #8]
	ldr r0, _08079A94 @ =0x000001E5
	strh r0, [r1, #0xa]
	mov r0, ip
	adds r0, #0x20
	strb r3, [r0]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x1c]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	strb r3, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r1, ip
	str r0, [r1, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #0x10]
	mov r0, ip
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079A88: .4byte 0x0300004F
_08079A8C: .4byte 0x0300004E
_08079A90: .4byte 0x06012E20
_08079A94: .4byte 0x000001E5

	thumb_func_start sub_8079A98
sub_8079A98: @ 0x08079A98
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08079AF4 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0xc
	adds r7, r3, r0
	ldr r1, [r6]
	mov sb, r1
	ldr r2, _08079AF8 @ =0x0300004E
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08079B0C
	ldr r5, _08079AFC @ =gSineTable
	mov r8, r5
	ldrb r1, [r1, #4]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r0, _08079B00 @ =gUnknown_03005120
	ldr r4, [r0]
	adds r0, r1, #0
	muls r0, r4, r0
	ldrh r1, [r6, #0x3c]
	adds r0, r0, r1
	ldr r2, _08079B04 @ =0x000007FF
	ands r0, r2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	add r0, r8
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r0, _08079B08 @ =0x0300004F
	adds r3, r3, r0
	ldrb r0, [r3]
	muls r0, r1, r0
	str r0, [r6, #0x40]
	mov r1, sb
	movs r0, #4
	ldrsb r0, [r1, r0]
	b _08079B42
	.align 2, 0
_08079AF4: .4byte gCurTask
_08079AF8: .4byte 0x0300004E
_08079AFC: .4byte gSineTable
_08079B00: .4byte gUnknown_03005120
_08079B04: .4byte 0x000007FF
_08079B08: .4byte 0x0300004F
_08079B0C:
	ldr r5, _08079C18 @ =gSineTable
	mov r8, r5
	mov r1, sb
	movs r0, #4
	ldrsb r0, [r1, r0]
	rsbs r0, r0, #0
	ldr r1, _08079C1C @ =gUnknown_03005120
	ldr r4, [r1]
	muls r0, r4, r0
	ldrh r2, [r6, #0x3c]
	adds r0, r0, r2
	ldr r2, _08079C20 @ =0x000007FF
	ands r0, r2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	add r0, r8
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r0, _08079C24 @ =0x0300004F
	adds r3, r3, r0
	ldrb r0, [r3]
	muls r0, r1, r0
	str r0, [r6, #0x40]
	mov r1, sb
	movs r0, #4
	ldrsb r0, [r1, r0]
	rsbs r0, r0, #0
_08079B42:
	muls r0, r4, r0
	ldrh r5, [r6, #0x3c]
	adds r0, r0, r5
	ands r0, r2
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrb r0, [r3]
	muls r0, r1, r0
	str r0, [r6, #0x44]
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r5, sb
	ldrb r3, [r5, #1]
	lsls r3, r3, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r0, _08079C28 @ =gCamera
	mov r8, r0
	ldrh r2, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	subs r2, r4, r2
	ldr r0, [r6, #0x40]
	asrs r0, r0, #0xb
	adds r2, r2, r0
	strh r2, [r7, #0x16]
	mov r2, r8
	ldrh r1, [r2, #2]
	lsls r3, r3, #0x10
	asrs r5, r3, #0x10
	subs r1, r5, r1
	ldr r0, [r6, #0x44]
	asrs r0, r0, #0xb
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8079E78
	cmp r0, #0
	beq _08079BB4
	ldr r0, _08079C2C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08079C30 @ =sub_8079C64
	str r0, [r1, #8]
_08079BB4:
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _08079BE4
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _08079BE4
	mov r0, r8
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r5, r0
	bgt _08079BE4
	adds r0, r2, #0
	subs r0, #0x80
	cmp r5, r0
	bge _08079C34
_08079BE4:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08079C08
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08079C08
	movs r5, #0x18
	ldrsh r1, [r7, r5]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08079C34
_08079C08:
	ldrb r0, [r6, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08079C2C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08079C52
	.align 2, 0
_08079C18: .4byte gSineTable
_08079C1C: .4byte gUnknown_03005120
_08079C20: .4byte 0x000007FF
_08079C24: .4byte 0x0300004F
_08079C28: .4byte gCamera
_08079C2C: .4byte gCurTask
_08079C30: .4byte sub_8079C64
_08079C34:
	ldr r1, _08079C60 @ =gSineTable
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r2, [r7, #0x18]
	adds r0, r0, r2
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_08079C52:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079C60: .4byte gSineTable

	thumb_func_start sub_8079C64
sub_8079C64: @ 0x08079C64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08079CDC @ =gCurTask
	ldr r0, [r2]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	adds r0, #0xc
	adds r7, r4, r0
	ldr r1, [r6]
	mov sb, r1
	ldr r3, _08079CE0 @ =0x03000051
	adds r1, r4, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _08079C9A
	ldr r1, [r2]
	ldr r0, _08079CE4 @ =sub_8079A98
	str r0, [r1, #8]
_08079C9A:
	ldr r5, _08079CE8 @ =0x0300004E
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _08079CFC
	ldr r2, _08079CEC @ =gSineTable
	mov r0, sb
	movs r1, #4
	ldrsb r1, [r0, r1]
	ldr r0, _08079CF0 @ =gUnknown_03005120
	ldr r0, [r0]
	mov r8, r0
	mov r0, r8
	muls r0, r1, r0
	ldrh r1, [r6, #0x3c]
	adds r0, r0, r1
	ldr r3, _08079CF4 @ =0x000007FF
	ands r0, r3
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r0, _08079CF8 @ =0x0300004F
	adds r4, r4, r0
	ldrb r0, [r4]
	muls r0, r1, r0
	str r0, [r6, #0x40]
	mov r1, sb
	movs r0, #4
	ldrsb r0, [r1, r0]
	b _08079D36
	.align 2, 0
_08079CDC: .4byte gCurTask
_08079CE0: .4byte 0x03000051
_08079CE4: .4byte sub_8079A98
_08079CE8: .4byte 0x0300004E
_08079CEC: .4byte gSineTable
_08079CF0: .4byte gUnknown_03005120
_08079CF4: .4byte 0x000007FF
_08079CF8: .4byte 0x0300004F
_08079CFC:
	ldr r2, _08079E30 @ =gSineTable
	mov r1, sb
	movs r0, #4
	ldrsb r0, [r1, r0]
	rsbs r0, r0, #0
	ldr r1, _08079E34 @ =gUnknown_03005120
	ldr r1, [r1]
	mov r8, r1
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	ldrh r5, [r6, #0x3c]
	adds r0, r0, r5
	ldr r3, _08079E38 @ =0x000007FF
	ands r0, r3
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r0, _08079E3C @ =0x0300004F
	adds r4, r4, r0
	ldrb r0, [r4]
	muls r0, r1, r0
	str r0, [r6, #0x40]
	mov r1, sb
	movs r0, #4
	ldrsb r0, [r1, r0]
	rsbs r0, r0, #0
_08079D36:
	mov r5, r8
	muls r5, r0, r5
	adds r0, r5, #0
	ldrh r1, [r6, #0x3c]
	adds r0, r0, r1
	ands r0, r3
	lsrs r0, r0, #1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldrb r0, [r4]
	muls r0, r1, r0
	str r0, [r6, #0x44]
	mov sl, r2
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, sb
	ldrb r3, [r0, #1]
	lsls r3, r3, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r2, _08079E40 @ =gCamera
	mov r8, r2
	ldrh r2, [r2]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r2, r5, r2
	ldr r0, [r6, #0x40]
	asrs r0, r0, #0xb
	adds r2, r2, r0
	movs r0, #0x51
	adds r0, r0, r6
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	subs r2, r2, r0
	strh r2, [r7, #0x16]
	mov r2, r8
	ldrh r1, [r2, #2]
	lsls r3, r3, #0x10
	asrs r4, r3, #0x10
	subs r1, r4, r1
	ldr r0, [r6, #0x44]
	asrs r0, r0, #0xb
	adds r1, r1, r0
	mov r3, ip
	ldrb r0, [r3]
	lsls r0, r0, #8
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_8079E78
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r5, r0
	bgt _08079DFC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _08079DFC
	mov r5, r8
	movs r0, #2
	ldrsh r2, [r5, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r4, r0
	bgt _08079DFC
	adds r0, r2, #0
	subs r0, #0x80
	cmp r4, r0
	bge _08079E48
_08079DFC:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08079E20
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08079E20
	movs r3, #0x18
	ldrsh r1, [r7, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08079E48
_08079E20:
	ldrb r0, [r6, #8]
	mov r5, sb
	strb r0, [r5]
	ldr r0, _08079E44 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08079E66
	.align 2, 0
_08079E30: .4byte gSineTable
_08079E34: .4byte gUnknown_03005120
_08079E38: .4byte 0x000007FF
_08079E3C: .4byte 0x0300004F
_08079E40: .4byte gCamera
_08079E44: .4byte gCurTask
_08079E48:
	ldr r1, _08079E74 @ =gSineTable
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	ldrh r1, [r7, #0x18]
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_08079E66:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079E74: .4byte gSineTable

	thumb_func_start sub_8079E78
sub_8079E78: @ 0x08079E78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	movs r4, #0
	mov sb, r4
	ldr r7, _08079EAC @ =gUnknown_03005AB0
	ldr r0, _08079EB0 @ =gUnknown_03005A20
	mov r8, r0
_08079E96:
	mov r1, sb
	cmp r1, #0
	beq _08079EB4
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08079EA8
	b _0807A192
_08079EA8:
	ldr r5, _08079EB0 @ =gUnknown_03005A20
	b _08079EC4
	.align 2, 0
_08079EAC: .4byte gUnknown_03005AB0
_08079EB0: .4byte gUnknown_03005A20
_08079EB4:
	mov r2, r8
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	ldr r5, _08079F04 @ =gUnknown_03005A20
	cmp r1, #0
	beq _08079EC4
	b _0807A192
_08079EC4:
	mov r3, sl
	ldr r0, [r3, #0x40]
	asrs r0, r0, #0xb
	ldr r1, [sp, #4]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r3, #0x44]
	asrs r0, r0, #0xb
	ldr r2, [sp, #8]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r3, r5, #0
	mov r0, sb
	cmp r0, #0
	beq _08079EE8
	ldr r3, _08079F08 @ =gUnknown_03005AB0
_08079EE8:
	ldr r0, [sp]
	bl sub_800CE34
	cmp r0, #0
	bne _08079EF4
	b _0807A192
_08079EF4:
	mov r1, sb
	cmp r1, #0
	beq _08079F10
	ldr r2, _08079F0C @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	b _08079F16
	.align 2, 0
_08079F04: .4byte gUnknown_03005A20
_08079F08: .4byte gUnknown_03005AB0
_08079F0C: .4byte gUnknown_03005B09
_08079F10:
	ldr r3, _08079F2C @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r3, r0]
_08079F16:
	cmp r0, #1
	beq _08079F3E
	mov r0, sb
	cmp r0, #0
	beq _08079F34
	ldr r1, _08079F30 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _08079F3E
	b _08079F98
	.align 2, 0
_08079F2C: .4byte gUnknown_03005A79
_08079F30: .4byte gUnknown_03005B09
_08079F34:
	ldr r2, _08079F50 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _08079F98
_08079F3E:
	mov r3, sb
	cmp r3, #0
	beq _08079F58
	ldr r1, _08079F54 @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08079F66
	b _08079F98
	.align 2, 0
_08079F50: .4byte gUnknown_03005A79
_08079F54: .4byte gUnknown_03005AED
_08079F58:
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08079F98
_08079F66:
	ldr r0, _08079F84 @ =gUnknown_03005A20
	mov r2, sb
	cmp r2, #0
	beq _08079F70
	ldr r0, _08079F88 @ =gUnknown_03005AB0
_08079F70:
	bl sub_8046CEC
	mov r3, sb
	cmp r3, #0
	beq _08079F90
	movs r0, #5
	ldr r1, _08079F8C @ =gUnknown_03005AF0
	strb r0, [r1]
	b _08079F96
	.align 2, 0
_08079F84: .4byte gUnknown_03005A20
_08079F88: .4byte gUnknown_03005AB0
_08079F8C: .4byte gUnknown_03005AF0
_08079F90:
	movs r0, #5
	ldr r2, _08079FAC @ =gUnknown_03005A60
	strb r0, [r2]
_08079F96:
	ldr r5, _08079FB0 @ =gUnknown_03005A20
_08079F98:
	mov r3, sb
	cmp r3, #0
	beq _08079FB4
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _08079FC2
	.align 2, 0
_08079FAC: .4byte gUnknown_03005A60
_08079FB0: .4byte gUnknown_03005A20
_08079FB4:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_08079FC2:
	mov r3, sb
	cmp r3, #0
	beq _08079FD2
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08079FDE
_08079FD2:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #2
	orrs r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_08079FDE:
	mov r3, sb
	cmp r3, #0
	beq _08079FF4
	ldr r0, [r7, #0x10]
	ldr r1, _08079FF0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807A000
	.align 2, 0
_08079FF0: .4byte 0xFFFFFEFF
_08079FF4:
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _0807A010 @ =0xFFFFFEFF
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0807A000:
	mov r3, sb
	cmp r3, #0
	beq _0807A014
	ldr r0, [r7, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0807A020
	.align 2, 0
_0807A010: .4byte 0xFFFFFEFF
_0807A014:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #4
	orrs r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0807A020:
	mov r3, sb
	cmp r3, #0
	beq _0807A032
	ldr r0, [r7, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807A040
_0807A032:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0807A040:
	adds r1, r5, #0
	mov r3, sb
	cmp r3, #0
	beq _0807A04A
	ldr r1, _0807A074 @ =gUnknown_03005AB0
_0807A04A:
	movs r0, #6
	strb r0, [r1, #0xe]
	adds r1, r5, #0
	mov r0, sb
	cmp r0, #0
	beq _0807A058
	ldr r1, _0807A074 @ =gUnknown_03005AB0
_0807A058:
	movs r0, #9
	strb r0, [r1, #0xf]
	mov r1, sl
	ldr r0, [r1, #0x44]
	asrs r1, r0, #8
	mov r2, sb
	cmp r2, #0
	beq _0807A078
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	ldr r3, [sp, #8]
	subs r0, r0, r3
	b _0807A080
	.align 2, 0
_0807A074: .4byte gUnknown_03005AB0
_0807A078:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r2, [sp, #8]
	subs r0, r0, r2
_0807A080:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	mov r3, sl
	ldr r0, [r3, #0x40]
	asrs r1, r0, #8
	mov r0, sb
	cmp r0, #0
	beq _0807A096
	ldr r0, [r7]
	b _0807A098
_0807A096:
	ldr r0, [r5]
_0807A098:
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	subs r0, r0, r3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sub_800338C
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	ldr r2, _0807A0D0 @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0xf
	bl Div
	mov r1, sb
	cmp r1, #0
	beq _0807A0D4
	strh r0, [r7, #8]
	b _0807A0D8
	.align 2, 0
_0807A0D0: .4byte gSineTable
_0807A0D4:
	mov r2, r8
	strh r0, [r2, #8]
_0807A0D8:
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #1
	ldr r1, _0807A0F8 @ =gSineTable
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xf
	bl Div
	mov r3, sb
	cmp r3, #0
	beq _0807A0FC
	strh r0, [r7, #0xc]
	b _0807A100
	.align 2, 0
_0807A0F8: .4byte gSineTable
_0807A0FC:
	mov r1, r8
	strh r0, [r1, #0xc]
_0807A100:
	lsls r0, r4, #1
	ldr r2, _0807A11C @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0xf
	bl Div
	mov r1, sb
	cmp r1, #0
	beq _0807A120
	strh r0, [r7, #0xa]
	b _0807A124
	.align 2, 0
_0807A11C: .4byte gSineTable
_0807A120:
	mov r2, r8
	strh r0, [r2, #0xa]
_0807A124:
	mov r3, sb
	cmp r3, #0
	beq _0807A130
	movs r1, #8
	ldrsh r0, [r7, r1]
	b _0807A136
_0807A130:
	mov r2, r8
	movs r3, #8
	ldrsh r0, [r2, r3]
_0807A136:
	cmp r0, #0
	bne _0807A14C
	mov r0, sb
	cmp r0, #0
	beq _0807A146
	movs r0, #8
	strh r0, [r7, #8]
	b _0807A14C
_0807A146:
	movs r0, #8
	mov r1, r8
	strh r0, [r1, #8]
_0807A14C:
	ldr r1, _0807A1B8 @ =gUnknown_03005030
	ldr r6, [r1]
	adds r0, r6, #0
	adds r0, #0xa
	str r0, [r1]
	ldr r4, _0807A1BC @ =0x0000C350
	adds r1, r4, #0
	bl Div
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl Div
	cmp r5, r0
	beq _0807A182
	ldr r0, _0807A1C0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807A182
	ldr r1, _0807A1C4 @ =gUnknown_03005024
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _0807A1C8 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
_0807A182:
	movs r0, #0xb7
	bl m4aSongNumStart
	mov r1, sl
	adds r1, #0x51
	movs r0, #0
	strb r0, [r1]
	movs r4, #1
_0807A192:
	movs r2, #1
	add sb, r2
	ldr r0, _0807A1CC @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp sb, r0
	bge _0807A1A4
	b _08079E96
_0807A1A4:
	adds r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807A1B8: .4byte gUnknown_03005030
_0807A1BC: .4byte 0x0000C350
_0807A1C0: .4byte gGameMode
_0807A1C4: .4byte gUnknown_03005024
_0807A1C8: .4byte gUnknown_03005040
_0807A1CC: .4byte gUnknown_03005088

	thumb_func_start CreateEntity_Interactable051
CreateEntity_Interactable051: @ 0x0807A1D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #4]
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r7, #0
	ldr r0, _0807A2D4 @ =sub_807A564
	movs r1, #0x80
	lsls r1, r1, #6
	mov sl, r1
	movs r6, #0
	str r7, [sp]
	movs r1, #0x50
	mov r2, sl
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r5, _0807A2D8 @ =0x0300000C
	adds r7, r2, r5
	movs r3, #0
	strh r4, [r0, #4]
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r0, #6]
	mov r5, sb
	str r5, [r0]
	ldrb r1, [r5]
	strb r1, [r0, #8]
	mov r1, r8
	strb r1, [r0, #9]
	str r6, [r0, #0x40]
	str r6, [r0, #0x44]
	ldr r5, _0807A2DC @ =0x0300004A
	adds r0, r2, r5
	strh r6, [r0]
	ldr r1, _0807A2E0 @ =0x03000048
	adds r0, r2, r1
	strh r6, [r0]
	adds r5, #2
	adds r0, r2, r5
	strb r3, [r0]
	ldr r0, _0807A2E4 @ =0x0300004D
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldr r1, [sp, #4]
	lsls r5, r1, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r5, #2
	rsbs r5, r5, #0
	adds r0, r5, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0807A2E8 @ =0x06012B20
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r6, [r7, #8]
	movs r0, #0xee
	lsls r0, r0, #1
	strh r0, [r7, #0xa]
	ldr r5, _0807A2EC @ =0x0300002C
	adds r0, r2, r5
	strb r3, [r0]
	strh r6, [r7, #0x14]
	strh r6, [r7, #0x1c]
	ldr r0, _0807A2F0 @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r5, #2
	adds r1, r2, r5
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0807A2F4 @ =0x03000031
	adds r2, r2, r0
	strb r3, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	mov r1, sl
	str r1, [r7, #0x10]
	mov r5, sb
	movs r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0807A2BE
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r1
	str r0, [r7, #0x10]
_0807A2BE:
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
	.align 2, 0
_0807A2D4: .4byte sub_807A564
_0807A2D8: .4byte 0x0300000C
_0807A2DC: .4byte 0x0300004A
_0807A2E0: .4byte 0x03000048
_0807A2E4: .4byte 0x0300004D
_0807A2E8: .4byte 0x06012B20
_0807A2EC: .4byte 0x0300002C
_0807A2F0: .4byte 0x0300002D
_0807A2F4: .4byte 0x03000031

	thumb_func_start CreateEntity_Interactable052
CreateEntity_Interactable052: @ 0x0807A2F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #4]
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r7, #0
	ldr r0, _0807A3FC @ =sub_807A7C8
	movs r1, #0x80
	lsls r1, r1, #6
	mov sl, r1
	movs r6, #0
	str r7, [sp]
	movs r1, #0x50
	mov r2, sl
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r5, _0807A400 @ =0x0300000C
	adds r7, r2, r5
	movs r3, #0
	strh r4, [r0, #4]
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r0, #6]
	mov r5, sb
	str r5, [r0]
	ldrb r1, [r5]
	strb r1, [r0, #8]
	mov r1, r8
	strb r1, [r0, #9]
	str r6, [r0, #0x40]
	str r6, [r0, #0x44]
	ldr r5, _0807A404 @ =0x0300004A
	adds r0, r2, r5
	strh r6, [r0]
	ldr r1, _0807A408 @ =0x03000048
	adds r0, r2, r1
	strh r6, [r0]
	adds r5, #2
	adds r0, r2, r5
	strb r3, [r0]
	ldr r0, _0807A40C @ =0x0300004D
	adds r1, r2, r0
	movs r0, #2
	strb r0, [r1]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldr r1, [sp, #4]
	lsls r5, r1, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r5, #2
	rsbs r5, r5, #0
	adds r0, r5, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0807A410 @ =0x06012CA0
	str r0, [r7, #4]
	ldr r0, _0807A414 @ =0x000001DD
	strh r0, [r7, #0xa]
	ldr r5, _0807A418 @ =0x0300002C
	adds r0, r2, r5
	strb r3, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r6, [r7, #8]
	strh r6, [r7, #0x14]
	strh r6, [r7, #0x1c]
	ldr r0, _0807A41C @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r5, #2
	adds r1, r2, r5
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0807A420 @ =0x03000031
	adds r2, r2, r0
	strb r3, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	mov r1, sl
	str r1, [r7, #0x10]
	mov r5, sb
	movs r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0807A3E4
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r7, #0x10]
_0807A3E4:
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
	.align 2, 0
_0807A3FC: .4byte sub_807A7C8
_0807A400: .4byte 0x0300000C
_0807A404: .4byte 0x0300004A
_0807A408: .4byte 0x03000048
_0807A40C: .4byte 0x0300004D
_0807A410: .4byte 0x06012CA0
_0807A414: .4byte 0x000001DD
_0807A418: .4byte 0x0300002C
_0807A41C: .4byte 0x0300002D
_0807A420: .4byte 0x03000031

	thumb_func_start CreateEntity_Interactable053
CreateEntity_Interactable053: @ 0x0807A424
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
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
	movs r7, #0
	ldr r0, _0807A534 @ =sub_807AA28
	movs r1, #0x80
	lsls r1, r1, #6
	mov sl, r1
	movs r1, #0
	mov sb, r1
	str r7, [sp]
	movs r1, #0x50
	mov r2, sl
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _0807A538 @ =0x0300000C
	adds r7, r2, r1
	movs r3, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #8]
	mov r1, r8
	strb r1, [r0, #9]
	mov r1, sb
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	ldr r1, _0807A53C @ =0x0300004A
	adds r0, r2, r1
	mov r1, sb
	strh r1, [r0]
	ldr r1, _0807A540 @ =0x03000048
	adds r0, r2, r1
	mov r1, sb
	strh r1, [r0]
	ldr r1, _0807A544 @ =0x0300004C
	adds r0, r2, r1
	strb r3, [r0]
	ldr r0, _0807A548 @ =0x0300004D
	adds r1, r2, r0
	movs r0, #4
	strb r0, [r1]
	ldrb r0, [r6]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	ldr r0, _0807A54C @ =0x060126A0
	str r0, [r7, #4]
	ldr r0, _0807A550 @ =0x000001DB
	strh r0, [r7, #0xa]
	ldr r1, _0807A554 @ =0x0300002C
	adds r0, r2, r1
	strb r3, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sb
	strh r0, [r7, #8]
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r0, _0807A558 @ =0x0300002D
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0807A55C @ =0x0300002E
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0807A560 @ =0x03000031
	adds r2, r2, r1
	strb r3, [r2]
	subs r0, #0x11
	str r0, [r7, #0x28]
	mov r0, sl
	str r0, [r7, #0x10]
	movs r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0807A50A
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, sl
	orrs r0, r1
	str r0, [r7, #0x10]
_0807A50A:
	movs r0, #4
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0807A51C
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r7, #0x10]
_0807A51C:
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
_0807A534: .4byte sub_807AA28
_0807A538: .4byte 0x0300000C
_0807A53C: .4byte 0x0300004A
_0807A540: .4byte 0x03000048
_0807A544: .4byte 0x0300004C
_0807A548: .4byte 0x0300004D
_0807A54C: .4byte 0x060126A0
_0807A550: .4byte 0x000001DB
_0807A554: .4byte 0x0300002C
_0807A558: .4byte 0x0300002D
_0807A55C: .4byte 0x0300002E
_0807A560: .4byte 0x03000031

	thumb_func_start sub_807A564
sub_807A564: @ 0x0807A564
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0807A63C @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _0807A640 @ =0x0300000C
	adds r7, r1, r2
	ldr r0, [r4]
	mov sb, r0
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldrb r3, [r2, #1]
	lsls r3, r3, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r0, _0807A644 @ =gCamera
	mov r8, r0
	ldrh r2, [r0]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r2, r5, r2
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r7, #0x16]
	mov r2, r8
	ldrh r1, [r2, #2]
	lsls r3, r3, #0x10
	asrs r6, r3, #0x10
	subs r1, r6, r1
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_807AC7C
	cmp r0, #0
	beq _0807A5D8
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _0807A648 @ =sub_807A660
	str r0, [r1, #8]
_0807A5D8:
	mov r2, r8
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _0807A608
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _0807A608
	mov r0, r8
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r6, r0
	bgt _0807A608
	adds r0, r2, #0
	subs r0, #0x80
	cmp r6, r0
	bge _0807A64C
_0807A608:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807A62C
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0807A62C
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807A64C
_0807A62C:
	ldrb r0, [r4, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0807A63C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807A652
	.align 2, 0
_0807A63C: .4byte gCurTask
_0807A640: .4byte 0x0300000C
_0807A644: .4byte gCamera
_0807A648: .4byte sub_807A660
_0807A64C:
	adds r0, r7, #0
	bl DisplaySprite
_0807A652:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807A660
sub_807A660: @ 0x0807A660
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0807A6E4 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r4, [r7]
	mov sb, r4
	adds r0, #0x40
	adds r5, r1, r0
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _0807A694
	ldr r1, [r2]
	ldr r0, _0807A6E8 @ =sub_807A564
	str r0, [r1, #8]
_0807A694:
	ldrb r0, [r7, #8]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r1, sb
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807A6F4
	ldr r4, _0807A6EC @ =gCamera
	ldrh r0, [r4]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldr r2, _0807A6F0 @ =gSineTable
	ldrb r0, [r5]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	b _0807A714
	.align 2, 0
_0807A6E4: .4byte gCurTask
_0807A6E8: .4byte sub_807A564
_0807A6EC: .4byte gCamera
_0807A6F0: .4byte gSineTable
_0807A6F4:
	ldr r4, _0807A7A8 @ =gCamera
	ldrh r0, [r4]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldr r2, _0807A7AC @ =gSineTable
	ldrb r0, [r5]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	subs r1, r1, r0
_0807A714:
	strh r1, [r6, #0x16]
	mov r8, r4
	mov r0, r8
	ldrh r1, [r0, #2]
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	subs r1, r5, r1
	adds r0, r7, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	strh r1, [r6, #0x18]
	asrs r4, r3, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_807AC7C
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0807A774
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0807A774
	mov r0, r8
	movs r1, #2
	ldrsh r4, [r0, r1]
	subs r2, #0x50
	adds r0, r4, r2
	cmp r5, r0
	bgt _0807A774
	adds r0, r4, #0
	subs r0, #0x80
	cmp r5, r0
	bge _0807A7B4
_0807A774:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807A798
	movs r4, #0x18
	ldrsh r0, [r6, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0807A798
	movs r5, #0x18
	ldrsh r1, [r6, r5]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807A7B4
_0807A798:
	ldrb r0, [r7, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0807A7B0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807A7BA
	.align 2, 0
_0807A7A8: .4byte gCamera
_0807A7AC: .4byte gSineTable
_0807A7B0: .4byte gCurTask
_0807A7B4:
	adds r0, r6, #0
	bl DisplaySprite
_0807A7BA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807A7C8
sub_807A7C8: @ 0x0807A7C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0807A8A0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _0807A8A4 @ =0x0300000C
	adds r7, r1, r2
	ldr r0, [r4]
	mov sb, r0
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldrb r3, [r2, #1]
	lsls r3, r3, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r0, _0807A8A8 @ =gCamera
	mov r8, r0
	ldrh r2, [r0]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r2, r5, r2
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r7, #0x16]
	mov r2, r8
	ldrh r1, [r2, #2]
	lsls r3, r3, #0x10
	asrs r6, r3, #0x10
	subs r1, r6, r1
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_807B0A0
	cmp r0, #0
	beq _0807A83C
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _0807A8AC @ =sub_807A8C4
	str r0, [r1, #8]
_0807A83C:
	mov r2, r8
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _0807A86C
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _0807A86C
	mov r0, r8
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r6, r0
	bgt _0807A86C
	adds r0, r2, #0
	subs r0, #0x80
	cmp r6, r0
	bge _0807A8B0
_0807A86C:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807A890
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0807A890
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807A8B0
_0807A890:
	ldrb r0, [r4, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0807A8A0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807A8B6
	.align 2, 0
_0807A8A0: .4byte gCurTask
_0807A8A4: .4byte 0x0300000C
_0807A8A8: .4byte gCamera
_0807A8AC: .4byte sub_807A8C4
_0807A8B0:
	adds r0, r7, #0
	bl DisplaySprite
_0807A8B6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807A8C4
sub_807A8C4: @ 0x0807A8C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0807A954 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r4, [r7]
	mov sl, r4
	adds r0, #0x40
	adds r6, r1, r0
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _0807A8FA
	ldr r1, [r2]
	ldr r0, _0807A958 @ =sub_807A7C8
	str r0, [r1, #8]
_0807A8FA:
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	mov r4, sl
	ldrb r3, [r4, #1]
	lsls r3, r3, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r0, r1, #0x10
	mov sb, r0
	asrs r4, r1, #0x10
	lsrs r1, r3, #0x10
	mov r8, r1
	asrs r3, r3, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_807B0A0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807A964
	ldr r3, _0807A95C @ =gCamera
	ldrh r1, [r3]
	subs r1, r4, r1
	ldr r2, _0807A960 @ =gSineTable
	ldrb r0, [r6]
	lsls r0, r0, #8
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	b _0807A980
	.align 2, 0
_0807A954: .4byte gCurTask
_0807A958: .4byte sub_807A7C8
_0807A95C: .4byte gCamera
_0807A960: .4byte gSineTable
_0807A964:
	ldr r3, _0807AA08 @ =gCamera
	ldrh r1, [r3]
	subs r1, r4, r1
	ldr r2, _0807AA0C @ =gSineTable
	ldrb r0, [r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	subs r1, r1, r0
_0807A980:
	strh r1, [r5, #0x16]
	ldrh r1, [r3, #2]
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	subs r1, r4, r1
	adds r0, r7, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	strh r1, [r5, #0x18]
	mov r6, sb
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r6, #0xb8
	lsls r6, r6, #1
	adds r0, r2, r6
	cmp r1, r0
	bgt _0807A9D2
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0807A9D2
	movs r0, #2
	ldrsh r3, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r3, r1
	cmp r4, r0
	bgt _0807A9D2
	adds r0, r3, #0
	subs r0, #0x80
	cmp r4, r0
	bge _0807AA14
_0807A9D2:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807A9F6
	movs r4, #0x18
	ldrsh r0, [r5, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0807A9F6
	movs r6, #0x18
	ldrsh r1, [r5, r6]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807AA14
_0807A9F6:
	ldrb r0, [r7, #8]
	mov r1, sl
	strb r0, [r1]
	ldr r0, _0807AA10 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807AA1A
	.align 2, 0
_0807AA08: .4byte gCamera
_0807AA0C: .4byte gSineTable
_0807AA10: .4byte gCurTask
_0807AA14:
	adds r0, r5, #0
	bl DisplaySprite
_0807AA1A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807AA28
sub_807AA28: @ 0x0807AA28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0807AAF0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, _0807AAF4 @ =0x0300000C
	adds r6, r1, r2
	ldr r3, [r7]
	mov sb, r3
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, _0807AAF8 @ =gCamera
	mov r8, r0
	ldrh r0, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x16]
	mov r1, r8
	ldrh r0, [r1, #2]
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x18]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_807B434
	cmp r0, #0
	beq _0807AA8E
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _0807AAFC @ =sub_807AB14
	str r0, [r1, #8]
_0807AA8E:
	mov r3, r8
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0807AABA
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0807AABA
	movs r0, #2
	ldrsh r1, [r3, r0]
	subs r2, #0x50
	adds r0, r1, r2
	cmp r5, r0
	bgt _0807AABA
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	bge _0807AB00
_0807AABA:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807AADE
	movs r3, #0x18
	ldrsh r0, [r6, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0807AADE
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807AB00
_0807AADE:
	ldrb r0, [r7, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0807AAF0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807AB06
	.align 2, 0
_0807AAF0: .4byte gCurTask
_0807AAF4: .4byte 0x0300000C
_0807AAF8: .4byte gCamera
_0807AAFC: .4byte sub_807AB14
_0807AB00:
	adds r0, r6, #0
	bl DisplaySprite
_0807AB06:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807AB14
sub_807AB14: @ 0x0807AB14
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0807AB98 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	ldr r4, [r7]
	mov sb, r4
	adds r0, #0x40
	adds r5, r1, r0
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _0807AB48
	ldr r1, [r2]
	ldr r0, _0807AB9C @ =sub_807AA28
	str r0, [r1, #8]
_0807AB48:
	ldrb r0, [r7, #8]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r1, sb
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807ABA8
	ldr r4, _0807ABA0 @ =gCamera
	ldrh r0, [r4]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldr r2, _0807ABA4 @ =gSineTable
	ldrb r0, [r5]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	b _0807ABC8
	.align 2, 0
_0807AB98: .4byte gCurTask
_0807AB9C: .4byte sub_807AA28
_0807ABA0: .4byte gCamera
_0807ABA4: .4byte gSineTable
_0807ABA8:
	ldr r4, _0807AC5C @ =gCamera
	ldrh r0, [r4]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldr r2, _0807AC60 @ =gSineTable
	ldrb r0, [r5]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	subs r1, r1, r0
_0807ABC8:
	strh r1, [r6, #0x16]
	mov r8, r4
	mov r0, r8
	ldrh r1, [r0, #2]
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	subs r1, r5, r1
	adds r0, r7, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r1, r1, r0
	strh r1, [r6, #0x18]
	asrs r4, r3, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_807B434
	mov r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0807AC28
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0807AC28
	mov r0, r8
	movs r1, #2
	ldrsh r4, [r0, r1]
	subs r2, #0x50
	adds r0, r4, r2
	cmp r5, r0
	bgt _0807AC28
	adds r0, r4, #0
	subs r0, #0x80
	cmp r5, r0
	bge _0807AC68
_0807AC28:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807AC4C
	movs r4, #0x18
	ldrsh r0, [r6, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0807AC4C
	movs r5, #0x18
	ldrsh r1, [r6, r5]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807AC68
_0807AC4C:
	ldrb r0, [r7, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0807AC64 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807AC6E
	.align 2, 0
_0807AC5C: .4byte gCamera
_0807AC60: .4byte gSineTable
_0807AC64: .4byte gCurTask
_0807AC68:
	adds r0, r6, #0
	bl DisplaySprite
_0807AC6E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807AC7C
sub_807AC7C: @ 0x0807AC7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	movs r6, #0
	ldr r4, _0807ACAC @ =gUnknown_03005AB0
	ldr r5, _0807ACB0 @ =gUnknown_03005A20
	ldr r2, _0807ACB4 @ =0x0000FA27
	mov sl, r2
_0807ACA2:
	cmp r6, #0
	beq _0807ACB8
	ldr r3, [r4]
	mov sb, r3
	b _0807ACBC
	.align 2, 0
_0807ACAC: .4byte gUnknown_03005AB0
_0807ACB0: .4byte gUnknown_03005A20
_0807ACB4: .4byte 0x0000FA27
_0807ACB8:
	ldr r0, [r5]
	mov sb, r0
_0807ACBC:
	cmp r6, #0
	beq _0807ACCA
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	ands r1, r0
	adds r7, r6, #1
	b _0807ACD2
_0807ACCA:
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	ands r1, r0
	movs r7, #1
_0807ACD2:
	cmp r1, #0
	beq _0807ACD8
	b _0807B066
_0807ACD8:
	ldr r0, _0807AD44 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0807ACE6
	adds r7, r6, #1
	cmp r0, #5
	bne _0807AD30
_0807ACE6:
	movs r2, #0
	ldr r1, _0807AD48 @ =gUnknown_03005130
	ldr r0, [r1]
	adds r7, r6, #1
	cmp r0, #0
	beq _0807AD30
	adds r3, r1, #0
_0807ACF4:
	ldr r0, _0807AD4C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r2, r0
	beq _0807AD1C
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0807AD1C
	movs r0, #1
	str r0, [sp, #0x10]
_0807AD1C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0807AD30
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _0807ACF4
_0807AD30:
	cmp r6, #0
	beq _0807AD50
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0807AD5C
	b _0807AD64
	.align 2, 0
_0807AD44: .4byte gGameMode
_0807AD48: .4byte gUnknown_03005130
_0807AD4C: .4byte 0x04000128
_0807AD50:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0807AD64
_0807AD5C:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _0807AD64
	b _0807B066
_0807AD64:
	mov r2, r8
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	ldr r2, [sp, #8]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0807ADA0 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807AD86
	ldr r3, _0807ADA4 @ =gUnknown_03005AB0
_0807AD86:
	ldr r0, [sp]
	bl sub_800CE34
	cmp r0, #0
	bne _0807AD92
	b _0807B066
_0807AD92:
	cmp r6, #0
	beq _0807ADAC
	ldr r3, _0807ADA8 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r3, r0]
	b _0807ADB2
	.align 2, 0
_0807ADA0: .4byte gUnknown_03005A20
_0807ADA4: .4byte gUnknown_03005AB0
_0807ADA8: .4byte gUnknown_03005B09
_0807ADAC:
	ldr r1, _0807ADC8 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r1, r0]
_0807ADB2:
	ldr r3, _0807ADCC @ =gUnknown_03005A20
	cmp r0, #1
	beq _0807ADDE
	cmp r6, #0
	beq _0807ADD4
	ldr r2, _0807ADD0 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	beq _0807ADDE
	b _0807AE34
	.align 2, 0
_0807ADC8: .4byte gUnknown_03005A79
_0807ADCC: .4byte gUnknown_03005A20
_0807ADD0: .4byte gUnknown_03005B09
_0807ADD4:
	ldr r1, _0807ADF0 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	bne _0807AE34
_0807ADDE:
	cmp r6, #0
	beq _0807ADF8
	ldr r2, _0807ADF4 @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _0807AE06
	b _0807AE34
	.align 2, 0
_0807ADF0: .4byte gUnknown_03005A79
_0807ADF4: .4byte gUnknown_03005AED
_0807ADF8:
	adds r0, r3, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0807AE34
_0807AE06:
	ldr r0, _0807AE20 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807AE0E
	ldr r0, _0807AE24 @ =gUnknown_03005AB0
_0807AE0E:
	bl sub_8046CEC
	cmp r6, #0
	beq _0807AE2C
	movs r0, #5
	ldr r3, _0807AE28 @ =gUnknown_03005AF0
	strb r0, [r3]
	b _0807AE32
	.align 2, 0
_0807AE20: .4byte gUnknown_03005A20
_0807AE24: .4byte gUnknown_03005AB0
_0807AE28: .4byte gUnknown_03005AF0
_0807AE2C:
	movs r0, #5
	ldr r1, _0807AE4C @ =gUnknown_03005A60
	strb r0, [r1]
_0807AE32:
	ldr r3, _0807AE50 @ =gUnknown_03005A20
_0807AE34:
	ldr r0, _0807AE54 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #3
	beq _0807AE40
	cmp r0, #5
	bne _0807AE5C
_0807AE40:
	cmp r6, #0
	beq _0807AE58
	movs r0, #0x1e
	strh r0, [r4, #0x1c]
	b _0807AE5C
	.align 2, 0
_0807AE4C: .4byte gUnknown_03005A60
_0807AE50: .4byte gUnknown_03005A20
_0807AE54: .4byte gGameMode
_0807AE58:
	movs r0, #0x1e
	strh r0, [r3, #0x1c]
_0807AE5C:
	cmp r6, #0
	beq _0807AE6C
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807AE76
_0807AE6C:
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807AE76:
	cmp r6, #0
	beq _0807AE84
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807AE8C
_0807AE84:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807AE8C:
	cmp r6, #0
	beq _0807AEA0
	ldr r0, [r4, #0x10]
	ldr r1, _0807AE9C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807AEA8
	.align 2, 0
_0807AE9C: .4byte 0xFFFFFEFF
_0807AEA0:
	ldr r0, [r5, #0x10]
	ldr r1, _0807AEB8 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807AEA8:
	cmp r6, #0
	beq _0807AEBC
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807AEC4
	.align 2, 0
_0807AEB8: .4byte 0xFFFFFEFF
_0807AEBC:
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
_0807AEC4:
	cmp r6, #0
	beq _0807AED4
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807AEDE
_0807AED4:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807AEDE:
	adds r1, r3, #0
	cmp r6, #0
	beq _0807AEE6
	ldr r1, _0807AF04 @ =gUnknown_03005AB0
_0807AEE6:
	movs r0, #6
	strb r0, [r1, #0xe]
	adds r1, r3, #0
	cmp r6, #0
	beq _0807AEF2
	ldr r1, _0807AF04 @ =gUnknown_03005AB0
_0807AEF2:
	movs r0, #9
	strb r0, [r1, #0xf]
	mov r2, r8
	ldr r0, [r2, #0x44]
	asrs r1, r0, #8
	cmp r6, #0
	beq _0807AF08
	ldr r0, [r4, #4]
	b _0807AF0A
	.align 2, 0
_0807AF04: .4byte gUnknown_03005AB0
_0807AF08:
	ldr r0, [r3, #4]
_0807AF0A:
	asrs r0, r0, #8
	ldr r2, [sp, #8]
	subs r0, r0, r2
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	mov r1, r8
	ldr r0, [r1, #0x40]
	asrs r1, r0, #8
	cmp r6, #0
	beq _0807AF24
	ldr r0, [r4]
	b _0807AF26
_0807AF24:
	ldr r0, [r3]
_0807AF26:
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	subs r0, r0, r3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sub_800338C
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r1, [sp]
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0807AFC4
	ldr r0, _0807AF5C @ =0x000001FF
	cmp r2, r0
	bls _0807AF6C
	cmp r6, #0
	beq _0807AF64
	ldr r0, _0807AF60 @ =0x0000F99A
	strh r0, [r4, #0xa]
	b _0807B054
	.align 2, 0
_0807AF5C: .4byte 0x000001FF
_0807AF60: .4byte 0x0000F99A
_0807AF64:
	ldr r0, _0807AF68 @ =0x0000F99A
	b _0807B052
	.align 2, 0
_0807AF68: .4byte 0x0000F99A
_0807AF6C:
	cmp r2, #0xff
	bhi _0807AF94
	cmp r6, #0
	beq _0807AF80
	ldr r2, _0807AF7C @ =0x00000297
	strh r2, [r4, #8]
	b _0807AF84
	.align 2, 0
_0807AF7C: .4byte 0x00000297
_0807AF80:
	ldr r3, _0807AF8C @ =0x00000297
	strh r3, [r5, #8]
_0807AF84:
	cmp r6, #0
	bne _0807AFAC
	ldr r0, _0807AF90 @ =0x000005D9
	b _0807B052
	.align 2, 0
_0807AF8C: .4byte 0x00000297
_0807AF90: .4byte 0x000005D9
_0807AF94:
	cmp r6, #0
	beq _0807AFA4
	ldr r0, _0807AFA0 @ =0x0000FD69
	strh r0, [r4, #8]
	b _0807AFA8
	.align 2, 0
_0807AFA0: .4byte 0x0000FD69
_0807AFA4:
	ldr r0, _0807AFB4 @ =0x0000FD69
	strh r0, [r5, #8]
_0807AFA8:
	cmp r6, #0
	beq _0807AFBC
_0807AFAC:
	ldr r0, _0807AFB8 @ =0x000005D9
	strh r0, [r4, #0xa]
	b _0807B054
	.align 2, 0
_0807AFB4: .4byte 0x0000FD69
_0807AFB8: .4byte 0x000005D9
_0807AFBC:
	ldr r0, _0807AFC0 @ =0x000005D9
	b _0807B052
	.align 2, 0
_0807AFC0: .4byte 0x000005D9
_0807AFC4:
	movs r0, #0xf7
	lsls r0, r0, #1
	cmp r2, r0
	bls _0807B014
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r2, r0
	bls _0807AFF6
	cmp r6, #0
	beq _0807AFDE
	subs r0, #0x69
	strh r0, [r4, #8]
	b _0807AFE2
_0807AFDE:
	ldr r1, _0807AFEC @ =0x00000297
	strh r1, [r5, #8]
_0807AFE2:
	cmp r6, #0
	beq _0807AFF0
	mov r2, sl
	strh r2, [r4, #0xa]
	b _0807B054
	.align 2, 0
_0807AFEC: .4byte 0x00000297
_0807AFF0:
	mov r3, sl
	strh r3, [r5, #0xa]
	b _0807B054
_0807AFF6:
	cmp r6, #0
	beq _0807B004
	ldr r0, _0807B000 @ =0x0000FD69
	strh r0, [r4, #8]
	b _0807B008
	.align 2, 0
_0807B000: .4byte 0x0000FD69
_0807B004:
	ldr r0, _0807B010 @ =0x0000FD69
	strh r0, [r5, #8]
_0807B008:
	cmp r6, #0
	bne _0807B030
	b _0807B03C
	.align 2, 0
_0807B010: .4byte 0x0000FD69
_0807B014:
	cmp r2, #0x14
	bhi _0807B042
	cmp r6, #0
	beq _0807B028
	ldr r2, _0807B024 @ =0x00000297
	strh r2, [r4, #8]
	b _0807B02C
	.align 2, 0
_0807B024: .4byte 0x00000297
_0807B028:
	ldr r3, _0807B038 @ =0x00000297
	strh r3, [r5, #8]
_0807B02C:
	cmp r6, #0
	beq _0807B03C
_0807B030:
	mov r0, sl
	strh r0, [r4, #0xa]
	b _0807B054
	.align 2, 0
_0807B038: .4byte 0x00000297
_0807B03C:
	mov r1, sl
	strh r1, [r5, #0xa]
	b _0807B054
_0807B042:
	cmp r6, #0
	beq _0807B050
	ldr r0, _0807B04C @ =0x00000666
	strh r0, [r4, #0xa]
	b _0807B054
	.align 2, 0
_0807B04C: .4byte 0x00000666
_0807B050:
	ldr r0, _0807B070 @ =0x00000666
_0807B052:
	strh r0, [r5, #0xa]
_0807B054:
	movs r0, #0xb8
	bl m4aSongNumStart
	mov r1, r8
	adds r1, #0x4c
	movs r0, #0
	strb r0, [r1]
	movs r2, #1
	str r2, [sp, #0xc]
_0807B066:
	cmp r6, #0
	beq _0807B074
	mov r3, sb
	str r3, [r4]
	b _0807B078
	.align 2, 0
_0807B070: .4byte 0x00000666
_0807B074:
	mov r0, sb
	str r0, [r5]
_0807B078:
	adds r6, r7, #0
	ldr r0, _0807B09C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _0807B088
	b _0807ACA2
_0807B088:
	ldr r0, [sp, #0xc]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807B09C: .4byte gUnknown_03005088

	thumb_func_start sub_807B0A0
sub_807B0A0: @ 0x0807B0A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	mov sl, r3
	movs r0, #0
	mov sb, r0
	movs r5, #0
	ldr r4, _0807B0C8 @ =gUnknown_03005AB0
	ldr r6, _0807B0CC @ =gUnknown_03005A20
_0807B0BE:
	cmp r5, #0
	beq _0807B0D0
	ldr r1, [r4]
	mov r8, r1
	b _0807B0D4
	.align 2, 0
_0807B0C8: .4byte gUnknown_03005AB0
_0807B0CC: .4byte gUnknown_03005A20
_0807B0D0:
	ldr r2, [r6]
	mov r8, r2
_0807B0D4:
	cmp r5, #0
	beq _0807B0E6
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807B0E4
	b _0807B3FA
_0807B0E4:
	b _0807B0F2
_0807B0E6:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _0807B0F2
	b _0807B3FA
_0807B0F2:
	ldr r0, [r7, #0x40]
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	add r0, sl
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0807B130 @ =gUnknown_03005A20
	cmp r5, #0
	beq _0807B110
	ldr r3, _0807B134 @ =gUnknown_03005AB0
_0807B110:
	ldr r0, [sp]
	bl sub_800CE34
	cmp r0, #0
	bne _0807B11C
	b _0807B3FA
_0807B11C:
	cmp r5, #0
	beq _0807B138
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0807B12E
	b _0807B3FA
_0807B12E:
	b _0807B146
	.align 2, 0
_0807B130: .4byte gUnknown_03005A20
_0807B134: .4byte gUnknown_03005AB0
_0807B138:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq _0807B146
	b _0807B3FA
_0807B146:
	cmp r5, #0
	beq _0807B158
	ldr r1, _0807B154 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	b _0807B162
	.align 2, 0
_0807B154: .4byte gUnknown_03005B09
_0807B158:
	ldr r0, _0807B178 @ =gUnknown_03005A20
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_0807B162:
	cmp r0, #1
	beq _0807B18E
	cmp r5, #0
	beq _0807B180
	ldr r2, _0807B17C @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	beq _0807B18E
	b _0807B1E2
	.align 2, 0
_0807B178: .4byte gUnknown_03005A20
_0807B17C: .4byte gUnknown_03005B09
_0807B180:
	ldr r0, _0807B1A0 @ =gUnknown_03005A20
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0807B1E2
_0807B18E:
	cmp r5, #0
	beq _0807B1A8
	ldr r3, _0807B1A4 @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _0807B1B6
	b _0807B1E2
	.align 2, 0
_0807B1A0: .4byte gUnknown_03005A20
_0807B1A4: .4byte gUnknown_03005AED
_0807B1A8:
	ldr r0, _0807B1D0 @ =gUnknown_03005A20
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0807B1E2
_0807B1B6:
	ldr r0, _0807B1D0 @ =gUnknown_03005A20
	cmp r5, #0
	beq _0807B1BE
	ldr r0, _0807B1D4 @ =gUnknown_03005AB0
_0807B1BE:
	bl sub_8046CEC
	cmp r5, #0
	beq _0807B1DC
	movs r0, #5
	ldr r1, _0807B1D8 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _0807B1E2
	.align 2, 0
_0807B1D0: .4byte gUnknown_03005A20
_0807B1D4: .4byte gUnknown_03005AB0
_0807B1D8: .4byte gUnknown_03005AF0
_0807B1DC:
	movs r0, #5
	ldr r2, _0807B1F4 @ =gUnknown_03005A60
	strb r0, [r2]
_0807B1E2:
	cmp r5, #0
	beq _0807B1F8
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B202
	.align 2, 0
_0807B1F4: .4byte gUnknown_03005A60
_0807B1F8:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807B202:
	cmp r5, #0
	beq _0807B210
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807B218
_0807B210:
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
_0807B218:
	cmp r5, #0
	beq _0807B22C
	ldr r0, [r4, #0x10]
	ldr r1, _0807B228 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B234
	.align 2, 0
_0807B228: .4byte 0xFFFFFEFF
_0807B22C:
	ldr r0, [r6, #0x10]
	ldr r1, _0807B244 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
_0807B234:
	cmp r5, #0
	beq _0807B248
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807B250
	.align 2, 0
_0807B244: .4byte 0xFFFFFEFF
_0807B248:
	ldr r0, [r6, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
_0807B250:
	cmp r5, #0
	beq _0807B260
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B26A
_0807B260:
	ldr r0, [r6, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807B26A:
	ldr r1, _0807B290 @ =gUnknown_03005A20
	cmp r5, #0
	beq _0807B272
	ldr r1, _0807B294 @ =gUnknown_03005AB0
_0807B272:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0807B290 @ =gUnknown_03005A20
	cmp r5, #0
	beq _0807B27E
	ldr r1, _0807B294 @ =gUnknown_03005AB0
_0807B27E:
	movs r0, #9
	strb r0, [r1, #0xf]
	ldr r0, [r7, #0x44]
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807B298
	ldr r0, [r4, #4]
	b _0807B29C
	.align 2, 0
_0807B290: .4byte gUnknown_03005A20
_0807B294: .4byte gUnknown_03005AB0
_0807B298:
	ldr r2, _0807B2B4 @ =gUnknown_03005A20
	ldr r0, [r2, #4]
_0807B29C:
	asrs r0, r0, #8
	mov r3, sl
	subs r0, r0, r3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, [r7, #0x40]
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807B2B8
	ldr r0, [r4]
	b _0807B2BC
	.align 2, 0
_0807B2B4: .4byte gUnknown_03005A20
_0807B2B8:
	ldr r3, _0807B2F4 @ =gUnknown_03005A20
	ldr r0, [r3]
_0807B2BC:
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	subs r0, r0, r3
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	bl sub_800338C
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r1, [sp]
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807B358
	adds r1, r2, #0
	subs r1, #0xfd
	ldr r0, _0807B2F8 @ =0x00000206
	cmp r1, r0
	bls _0807B30C
	cmp r5, #0
	beq _0807B300
	ldr r0, _0807B2FC @ =0x00000666
	strh r0, [r4, #8]
	b _0807B3E8
	.align 2, 0
_0807B2F4: .4byte gUnknown_03005A20
_0807B2F8: .4byte 0x00000206
_0807B2FC: .4byte 0x00000666
_0807B300:
	ldr r0, _0807B308 @ =0x00000666
	strh r0, [r6, #8]
	b _0807B3E8
	.align 2, 0
_0807B308: .4byte 0x00000666
_0807B30C:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	bls _0807B338
	cmp r5, #0
	beq _0807B324
	ldr r2, _0807B320 @ =0xFFFFFA27
	strh r2, [r4, #8]
	b _0807B328
	.align 2, 0
_0807B320: .4byte 0xFFFFFA27
_0807B324:
	ldr r3, _0807B330 @ =0xFFFFFA27
	strh r3, [r6, #8]
_0807B328:
	cmp r5, #0
	bne _0807B3A4
	ldr r0, _0807B334 @ =0x0000FD69
	b _0807B3E6
	.align 2, 0
_0807B330: .4byte 0xFFFFFA27
_0807B334: .4byte 0x0000FD69
_0807B338:
	cmp r5, #0
	beq _0807B348
	ldr r0, _0807B344 @ =0xFFFFFA27
	strh r0, [r4, #8]
	b _0807B34C
	.align 2, 0
_0807B344: .4byte 0xFFFFFA27
_0807B348:
	ldr r1, _0807B354 @ =0xFFFFFA27
	strh r1, [r6, #8]
_0807B34C:
	cmp r5, #0
	bne _0807B3D4
	b _0807B3E4
	.align 2, 0
_0807B354: .4byte 0xFFFFFA27
_0807B358:
	ldr r3, _0807B370 @ =0xFFFFFEFC
	adds r1, r2, r3
	movs r0, #0xfc
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0807B384
	cmp r5, #0
	beq _0807B378
	ldr r0, _0807B374 @ =0x0000F99A
	strh r0, [r4, #8]
	b _0807B3E8
	.align 2, 0
_0807B370: .4byte 0xFFFFFEFC
_0807B374: .4byte 0x0000F99A
_0807B378:
	ldr r0, _0807B380 @ =0x0000F99A
	strh r0, [r6, #8]
	b _0807B3E8
	.align 2, 0
_0807B380: .4byte 0x0000F99A
_0807B384:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	bls _0807B3BC
	cmp r5, #0
	beq _0807B39C
	ldr r0, _0807B398 @ =0x000005D9
	strh r0, [r4, #8]
	b _0807B3A0
	.align 2, 0
_0807B398: .4byte 0x000005D9
_0807B39C:
	ldr r0, _0807B3AC @ =0x000005D9
	strh r0, [r6, #8]
_0807B3A0:
	cmp r5, #0
	beq _0807B3B4
_0807B3A4:
	ldr r0, _0807B3B0 @ =0x0000FD69
	strh r0, [r4, #0xa]
	b _0807B3E8
	.align 2, 0
_0807B3AC: .4byte 0x000005D9
_0807B3B0: .4byte 0x0000FD69
_0807B3B4:
	ldr r0, _0807B3B8 @ =0x0000FD69
	b _0807B3E6
	.align 2, 0
_0807B3B8: .4byte 0x0000FD69
_0807B3BC:
	cmp r5, #0
	beq _0807B3CC
	ldr r0, _0807B3C8 @ =0x000005D9
	strh r0, [r4, #8]
	b _0807B3D0
	.align 2, 0
_0807B3C8: .4byte 0x000005D9
_0807B3CC:
	ldr r0, _0807B3DC @ =0x000005D9
	strh r0, [r6, #8]
_0807B3D0:
	cmp r5, #0
	beq _0807B3E4
_0807B3D4:
	ldr r0, _0807B3E0 @ =0x00000297
	strh r0, [r4, #0xa]
	b _0807B3E8
	.align 2, 0
_0807B3DC: .4byte 0x000005D9
_0807B3E0: .4byte 0x00000297
_0807B3E4:
	ldr r0, _0807B404 @ =0x00000297
_0807B3E6:
	strh r0, [r6, #0xa]
_0807B3E8:
	movs r0, #0xb8
	bl m4aSongNumStart
	adds r1, r7, #0
	adds r1, #0x4c
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	mov sb, r0
_0807B3FA:
	cmp r5, #0
	beq _0807B408
	mov r1, r8
	str r1, [r4]
	b _0807B40C
	.align 2, 0
_0807B404: .4byte 0x00000297
_0807B408:
	mov r2, r8
	str r2, [r6]
_0807B40C:
	adds r5, #1
	ldr r0, _0807B430 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _0807B41C
	b _0807B0BE
_0807B41C:
	mov r0, sb
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807B430: .4byte gUnknown_03005088

	thumb_func_start sub_807B434
sub_807B434: @ 0x0807B434
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	adds r7, r3, #0
	movs r0, #0
	mov sb, r0
	movs r1, #0
	str r1, [sp, #0xc]
	movs r6, #0
	ldr r4, _0807B468 @ =gUnknown_03005AB0
	ldr r5, _0807B46C @ =gUnknown_03005A20
	movs r2, #4
	mov sl, r2

	non_word_aligned_thumb_func_start sub_807B45A
sub_807B45A: @ 0x0807B45A
	cmp r6, #0
	beq _0807B470
	ldr r0, [r4]
	mov r8, r0
	ldr r1, _0807B46C @ =gUnknown_03005A20
	mov ip, r1
	b _0807B478
	.align 2, 0
_0807B468: .4byte gUnknown_03005AB0
_0807B46C: .4byte gUnknown_03005A20
_0807B470:
	ldr r2, [r5]
	mov r8, r2
	ldr r0, _0807B50C @ =gUnknown_03005A20
	mov ip, r0
_0807B478:
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	mov r3, ip
	cmp r6, #0
	beq _0807B48A
	ldr r3, _0807B510 @ =gUnknown_03005AB0
_0807B48A:
	ldr r0, [sp, #4]
	bl sub_800CE34
	adds r2, r6, #1
	str r2, [sp, #0x10]
	cmp r0, #0
	bne _0807B49C
	bl _0807BC64
_0807B49C:
	ldr r0, _0807B514 @ =gGameMode
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #3
	beq _0807B4AA
	cmp r1, #5
	bne _0807B4FA
_0807B4AA:
	movs r1, #0
	ldr r2, _0807B518 @ =gUnknown_03005130
	ldr r0, [r2]
	mov ip, r0
	adds r0, r6, #1
	str r0, [sp, #0x10]
	mov r0, ip
	cmp r0, #0
	beq _0807B4FA
	mov ip, r2
_0807B4BE:
	ldr r0, _0807B51C @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r1, r0
	beq _0807B4E6
	lsls r0, r1, #2
	add r0, ip
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r0, r0, r2
	ldr r0, [r0, #0x5c]
	mov r2, sl
	ands r0, r2
	cmp r0, #0
	beq _0807B4E6
	movs r0, #1
	str r0, [sp, #0xc]
_0807B4E6:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _0807B4FA
	lsls r0, r1, #2
	add r0, ip
	ldr r0, [r0]
	cmp r0, #0
	bne _0807B4BE
_0807B4FA:
	cmp r6, #0
	beq _0807B520
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0807B52C
	b _0807B534
	.align 2, 0
_0807B50C: .4byte gUnknown_03005A20
_0807B510: .4byte gUnknown_03005AB0
_0807B514: .4byte gGameMode
_0807B518: .4byte gUnknown_03005130
_0807B51C: .4byte 0x04000128
_0807B520:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0807B534
_0807B52C:
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bne _0807B534
	b _0807BC64
_0807B534:
	ldr r2, [sp, #4]
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0807B544
	b _0807B8C2
_0807B544:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0807B550
	b _0807B70A
_0807B550:
	mov r1, r8
	asrs r0, r1, #8
	ldr r2, [sp, #8]
	subs r0, r2, r0
	movs r1, #0x41
	subs r1, r1, r0
	cmp r6, #0
	beq _0807B56C
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	subs r0, r0, r7
	cmp r0, r1
	blt _0807B578
	b _0807BC64
_0807B56C:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	subs r0, r0, r7
	cmp r0, r1
	blt _0807B578
	b _0807BC64
_0807B578:
	cmp r6, #0
	beq _0807B584
	ldr r1, _0807B580 @ =gUnknown_03005B09
	b _0807B586
	.align 2, 0
_0807B580: .4byte gUnknown_03005B09
_0807B584:
	ldr r1, _0807B5A4 @ =gUnknown_03005A79
_0807B586:
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, _0807B5A8 @ =gUnknown_03005A20
	mov ip, r2
	cmp r0, #1
	beq _0807B5BA
	cmp r6, #0
	beq _0807B5B0
	ldr r1, _0807B5AC @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _0807B5BA
	b _0807B618
	.align 2, 0
_0807B5A4: .4byte gUnknown_03005A79
_0807B5A8: .4byte gUnknown_03005A20
_0807B5AC: .4byte gUnknown_03005B09
_0807B5B0:
	ldr r2, _0807B5CC @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _0807B618
_0807B5BA:
	cmp r6, #0
	beq _0807B5D4
	ldr r1, _0807B5D0 @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0807B5E2
	b _0807B618
	.align 2, 0
_0807B5CC: .4byte gUnknown_03005A79
_0807B5D0: .4byte gUnknown_03005AED
_0807B5D4:
	mov r0, ip
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0807B618
_0807B5E2:
	ldr r0, _0807B600 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807B5EA
	ldr r0, _0807B604 @ =gUnknown_03005AB0
_0807B5EA:
	bl sub_8046CEC
	cmp r6, #0
	beq _0807B60C
	movs r0, #5
	ldr r2, _0807B608 @ =gUnknown_03005AF0
	strb r0, [r2]
	ldr r0, _0807B600 @ =gUnknown_03005A20
	mov ip, r0
	b _0807B616
	.align 2, 0
_0807B600: .4byte gUnknown_03005A20
_0807B604: .4byte gUnknown_03005AB0
_0807B608: .4byte gUnknown_03005AF0
_0807B60C:
	movs r0, #5
	ldr r1, _0807B62C @ =gUnknown_03005A60
	strb r0, [r1]
	ldr r2, _0807B630 @ =gUnknown_03005A20
	mov ip, r2
_0807B616:
	ldr r3, _0807B634 @ =gGameMode
_0807B618:
	ldrb r0, [r3]
	cmp r0, #3
	beq _0807B622
	cmp r0, #5
	bne _0807B63E
_0807B622:
	cmp r6, #0
	beq _0807B638
	movs r0, #0x1e
	strh r0, [r4, #0x1c]
	b _0807B63E
	.align 2, 0
_0807B62C: .4byte gUnknown_03005A60
_0807B630: .4byte gUnknown_03005A20
_0807B634: .4byte gGameMode
_0807B638:
	movs r0, #0x1e
	mov r1, ip
	strh r0, [r1, #0x1c]
_0807B63E:
	cmp r6, #0
	beq _0807B64E
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B658
_0807B64E:
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807B658:
	cmp r6, #0
	beq _0807B666
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807B66E
_0807B666:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807B66E:
	cmp r6, #0
	beq _0807B680
	ldr r0, [r4, #0x10]
	ldr r1, _0807B67C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B688
	.align 2, 0
_0807B67C: .4byte 0xFFFFFEFF
_0807B680:
	ldr r0, [r5, #0x10]
	ldr r1, _0807B698 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807B688:
	cmp r6, #0
	beq _0807B69C
	ldr r0, [r4, #0x10]
	mov r2, sl
	orrs r0, r2
	str r0, [r4, #0x10]
	b _0807B6A4
	.align 2, 0
_0807B698: .4byte 0xFFFFFEFF
_0807B69C:
	ldr r0, [r5, #0x10]
	mov r1, sl
	orrs r0, r1
	str r0, [r5, #0x10]
_0807B6A4:
	cmp r6, #0
	beq _0807B6B4
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B6BE
_0807B6B4:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807B6BE:
	mov r1, ip
	cmp r6, #0
	beq _0807B6C6
	ldr r1, _0807B6E0 @ =gUnknown_03005AB0
_0807B6C6:
	movs r0, #6
	strb r0, [r1, #0xe]
	mov r1, ip
	cmp r6, #0
	beq _0807B6D2
	ldr r1, _0807B6E0 @ =gUnknown_03005AB0
_0807B6D2:
	movs r0, #9
	strb r0, [r1, #0xf]
	cmp r6, #0
	beq _0807B6E8
	ldr r2, _0807B6E4 @ =0xFFFFFB50
	strh r2, [r4, #8]
	b _0807B6EE
	.align 2, 0
_0807B6E0: .4byte gUnknown_03005AB0
_0807B6E4: .4byte 0xFFFFFB50
_0807B6E8:
	ldr r1, _0807B6FC @ =0xFFFFFB50
	mov r0, ip
	strh r1, [r0, #8]
_0807B6EE:
	cmp r6, #0
	beq _0807B700
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r4, #0xa]
	b _0807BC52
	.align 2, 0
_0807B6FC: .4byte 0xFFFFFB50
_0807B700:
	movs r0, #0x96
	lsls r0, r0, #3
	mov r2, ip
	strh r0, [r2, #0xa]
	b _0807BC52
_0807B70A:
	mov r1, r8
	asrs r0, r1, #8
	ldr r2, [sp, #8]
	subs r0, r0, r2
	movs r1, #0x41
	subs r1, r1, r0
	cmp r6, #0
	beq _0807B726
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	subs r0, r0, r7
	cmp r0, r1
	blt _0807B732
	b _0807BC64
_0807B726:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	subs r0, r0, r7
	cmp r0, r1
	blt _0807B732
	b _0807BC64
_0807B732:
	cmp r6, #0
	beq _0807B740
	ldr r1, _0807B73C @ =gUnknown_03005B09
	b _0807B742
	.align 2, 0
_0807B73C: .4byte gUnknown_03005B09
_0807B740:
	ldr r1, _0807B760 @ =gUnknown_03005A79
_0807B742:
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, _0807B764 @ =gUnknown_03005A20
	mov ip, r2
	cmp r0, #1
	beq _0807B776
	cmp r6, #0
	beq _0807B76C
	ldr r1, _0807B768 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _0807B776
	b _0807B7D4
	.align 2, 0
_0807B760: .4byte gUnknown_03005A79
_0807B764: .4byte gUnknown_03005A20
_0807B768: .4byte gUnknown_03005B09
_0807B76C:
	ldr r2, _0807B788 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _0807B7D4
_0807B776:
	cmp r6, #0
	beq _0807B790
	ldr r1, _0807B78C @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0807B79E
	b _0807B7D4
	.align 2, 0
_0807B788: .4byte gUnknown_03005A79
_0807B78C: .4byte gUnknown_03005AED
_0807B790:
	mov r0, ip
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0807B7D4
_0807B79E:
	ldr r0, _0807B7BC @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807B7A6
	ldr r0, _0807B7C0 @ =gUnknown_03005AB0
_0807B7A6:
	bl sub_8046CEC
	cmp r6, #0
	beq _0807B7C8
	movs r0, #5
	ldr r2, _0807B7C4 @ =gUnknown_03005AF0
	strb r0, [r2]
	ldr r0, _0807B7BC @ =gUnknown_03005A20
	mov ip, r0
	b _0807B7D2
	.align 2, 0
_0807B7BC: .4byte gUnknown_03005A20
_0807B7C0: .4byte gUnknown_03005AB0
_0807B7C4: .4byte gUnknown_03005AF0
_0807B7C8:
	movs r0, #5
	ldr r1, _0807B7E8 @ =gUnknown_03005A60
	strb r0, [r1]
	ldr r2, _0807B7EC @ =gUnknown_03005A20
	mov ip, r2
_0807B7D2:
	ldr r3, _0807B7F0 @ =gGameMode
_0807B7D4:
	ldrb r0, [r3]
	cmp r0, #3
	beq _0807B7DE
	cmp r0, #5
	bne _0807B7FA
_0807B7DE:
	cmp r6, #0
	beq _0807B7F4
	movs r0, #0x1e
	strh r0, [r4, #0x1c]
	b _0807B7FA
	.align 2, 0
_0807B7E8: .4byte gUnknown_03005A60
_0807B7EC: .4byte gUnknown_03005A20
_0807B7F0: .4byte gGameMode
_0807B7F4:
	movs r0, #0x1e
	mov r1, ip
	strh r0, [r1, #0x1c]
_0807B7FA:
	cmp r6, #0
	beq _0807B80A
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B814
_0807B80A:
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807B814:
	cmp r6, #0
	beq _0807B822
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807B82A
_0807B822:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807B82A:
	cmp r6, #0
	beq _0807B83C
	ldr r0, [r4, #0x10]
	ldr r1, _0807B838 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B844
	.align 2, 0
_0807B838: .4byte 0xFFFFFEFF
_0807B83C:
	ldr r0, [r5, #0x10]
	ldr r1, _0807B854 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807B844:
	cmp r6, #0
	beq _0807B858
	ldr r0, [r4, #0x10]
	mov r2, sl
	orrs r0, r2
	str r0, [r4, #0x10]
	b _0807B860
	.align 2, 0
_0807B854: .4byte 0xFFFFFEFF
_0807B858:
	ldr r0, [r5, #0x10]
	mov r1, sl
	orrs r0, r1
	str r0, [r5, #0x10]
_0807B860:
	cmp r6, #0
	beq _0807B870
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B87A
_0807B870:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807B87A:
	mov r1, ip
	cmp r6, #0
	beq _0807B882
	ldr r1, _0807B8A0 @ =gUnknown_03005AB0
_0807B882:
	movs r0, #6
	strb r0, [r1, #0xe]
	mov r1, ip
	cmp r6, #0
	beq _0807B88E
	ldr r1, _0807B8A0 @ =gUnknown_03005AB0
_0807B88E:
	movs r0, #9
	strb r0, [r1, #0xf]
	cmp r6, #0
	beq _0807B8A4
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r4, #8]
	b _0807B8AC
	.align 2, 0
_0807B8A0: .4byte gUnknown_03005AB0
_0807B8A4:
	movs r0, #0x96
	lsls r0, r0, #3
	mov r2, ip
	strh r0, [r2, #8]
_0807B8AC:
	cmp r6, #0
	beq _0807B8B8
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r4, #0xa]
	b _0807BA82
_0807B8B8:
	movs r0, #0x96
	lsls r0, r0, #3
	mov r1, ip
	strh r0, [r1, #0xa]
	b _0807BA82
_0807B8C2:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0807B8CE
	b _0807BA9C
_0807B8CE:
	mov r1, r8
	asrs r0, r1, #8
	ldr r2, [sp, #8]
	subs r0, r2, r0
	adds r1, r0, #0
	subs r1, #0x3c
	cmp r6, #0
	beq _0807B8EA
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	subs r0, r0, r7
	cmp r0, r1
	bgt _0807B8F6
	b _0807BC64
_0807B8EA:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	subs r0, r0, r7
	cmp r0, r1
	bgt _0807B8F6
	b _0807BC64
_0807B8F6:
	cmp r6, #0
	beq _0807B904
	ldr r1, _0807B900 @ =gUnknown_03005B09
	b _0807B906
	.align 2, 0
_0807B900: .4byte gUnknown_03005B09
_0807B904:
	ldr r1, _0807B924 @ =gUnknown_03005A79
_0807B906:
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, _0807B928 @ =gUnknown_03005A20
	mov ip, r2
	cmp r0, #1
	beq _0807B93A
	cmp r6, #0
	beq _0807B930
	ldr r1, _0807B92C @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _0807B93A
	b _0807B998
	.align 2, 0
_0807B924: .4byte gUnknown_03005A79
_0807B928: .4byte gUnknown_03005A20
_0807B92C: .4byte gUnknown_03005B09
_0807B930:
	ldr r2, _0807B94C @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _0807B998
_0807B93A:
	cmp r6, #0
	beq _0807B954
	ldr r1, _0807B950 @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0807B962
	b _0807B998
	.align 2, 0
_0807B94C: .4byte gUnknown_03005A79
_0807B950: .4byte gUnknown_03005AED
_0807B954:
	mov r0, ip
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0807B998
_0807B962:
	ldr r0, _0807B980 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807B96A
	ldr r0, _0807B984 @ =gUnknown_03005AB0
_0807B96A:
	bl sub_8046CEC
	cmp r6, #0
	beq _0807B98C
	movs r0, #5
	ldr r2, _0807B988 @ =gUnknown_03005AF0
	strb r0, [r2]
	ldr r0, _0807B980 @ =gUnknown_03005A20
	mov ip, r0
	b _0807B996
	.align 2, 0
_0807B980: .4byte gUnknown_03005A20
_0807B984: .4byte gUnknown_03005AB0
_0807B988: .4byte gUnknown_03005AF0
_0807B98C:
	movs r0, #5
	ldr r1, _0807B9AC @ =gUnknown_03005A60
	strb r0, [r1]
	ldr r2, _0807B9B0 @ =gUnknown_03005A20
	mov ip, r2
_0807B996:
	ldr r3, _0807B9B4 @ =gGameMode
_0807B998:
	ldrb r0, [r3]
	cmp r0, #3
	beq _0807B9A2
	cmp r0, #5
	bne _0807B9BE
_0807B9A2:
	cmp r6, #0
	beq _0807B9B8
	movs r0, #0x1e
	strh r0, [r4, #0x1c]
	b _0807B9BE
	.align 2, 0
_0807B9AC: .4byte gUnknown_03005A60
_0807B9B0: .4byte gUnknown_03005A20
_0807B9B4: .4byte gGameMode
_0807B9B8:
	movs r0, #0x1e
	mov r1, ip
	strh r0, [r1, #0x1c]
_0807B9BE:
	cmp r6, #0
	beq _0807B9CE
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807B9D8
_0807B9CE:
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807B9D8:
	cmp r6, #0
	beq _0807B9E6
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807B9EE
_0807B9E6:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807B9EE:
	cmp r6, #0
	beq _0807BA00
	ldr r0, [r4, #0x10]
	ldr r1, _0807B9FC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807BA08
	.align 2, 0
_0807B9FC: .4byte 0xFFFFFEFF
_0807BA00:
	ldr r0, [r5, #0x10]
	ldr r1, _0807BA18 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807BA08:
	cmp r6, #0
	beq _0807BA1C
	ldr r0, [r4, #0x10]
	mov r2, sl
	orrs r0, r2
	str r0, [r4, #0x10]
	b _0807BA24
	.align 2, 0
_0807BA18: .4byte 0xFFFFFEFF
_0807BA1C:
	ldr r0, [r5, #0x10]
	mov r1, sl
	orrs r0, r1
	str r0, [r5, #0x10]
_0807BA24:
	cmp r6, #0
	beq _0807BA34
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807BA3E
_0807BA34:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807BA3E:
	mov r1, ip
	cmp r6, #0
	beq _0807BA46
	ldr r1, _0807BA60 @ =gUnknown_03005AB0
_0807BA46:
	movs r0, #6
	strb r0, [r1, #0xe]
	mov r1, ip
	cmp r6, #0
	beq _0807BA52
	ldr r1, _0807BA60 @ =gUnknown_03005AB0
_0807BA52:
	movs r0, #9
	strb r0, [r1, #0xf]
	cmp r6, #0
	beq _0807BA68
	ldr r2, _0807BA64 @ =0xFFFFFB50
	strh r2, [r4, #8]
	b _0807BA6E
	.align 2, 0
_0807BA60: .4byte gUnknown_03005AB0
_0807BA64: .4byte 0xFFFFFB50
_0807BA68:
	ldr r1, _0807BA78 @ =0xFFFFFB50
	mov r0, ip
	strh r1, [r0, #8]
_0807BA6E:
	cmp r6, #0
	beq _0807BA7C
	ldr r2, _0807BA78 @ =0xFFFFFB50
	strh r2, [r4, #0xa]
	b _0807BA82
	.align 2, 0
_0807BA78: .4byte 0xFFFFFB50
_0807BA7C:
	ldr r1, _0807BA98 @ =0xFFFFFB50
	mov r0, ip
	strh r1, [r0, #0xa]
_0807BA82:
	movs r0, #0xb8
	bl m4aSongNumStart
	ldr r1, [sp]
	adds r1, #0x4c
	movs r0, #0
	strb r0, [r1]
	movs r2, #1
	mov sb, r2
	b _0807BC64
	.align 2, 0
_0807BA98: .4byte 0xFFFFFB50
_0807BA9C:
	mov r1, r8
	asrs r0, r1, #8
	ldr r2, [sp, #8]
	subs r0, r0, r2
	adds r1, r0, #0
	subs r1, #0x3c
	cmp r6, #0
	beq _0807BAB8
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	subs r0, r0, r7
	cmp r0, r1
	bgt _0807BAC4
	b _0807BC64
_0807BAB8:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	subs r0, r0, r7
	cmp r0, r1
	bgt _0807BAC4
	b _0807BC64
_0807BAC4:
	cmp r6, #0
	beq _0807BAD0
	ldr r1, _0807BACC @ =gUnknown_03005B09
	b _0807BAD2
	.align 2, 0
_0807BACC: .4byte gUnknown_03005B09
_0807BAD0:
	ldr r1, _0807BAF0 @ =gUnknown_03005A79
_0807BAD2:
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r2, _0807BAF4 @ =gUnknown_03005A20
	mov ip, r2
	cmp r0, #1
	beq _0807BB06
	cmp r6, #0
	beq _0807BAFC
	ldr r1, _0807BAF8 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _0807BB06
	b _0807BB64
	.align 2, 0
_0807BAF0: .4byte gUnknown_03005A79
_0807BAF4: .4byte gUnknown_03005A20
_0807BAF8: .4byte gUnknown_03005B09
_0807BAFC:
	ldr r2, _0807BB18 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _0807BB64
_0807BB06:
	cmp r6, #0
	beq _0807BB20
	ldr r1, _0807BB1C @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0807BB2E
	b _0807BB64
	.align 2, 0
_0807BB18: .4byte gUnknown_03005A79
_0807BB1C: .4byte gUnknown_03005AED
_0807BB20:
	mov r0, ip
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0807BB64
_0807BB2E:
	ldr r0, _0807BB4C @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807BB36
	ldr r0, _0807BB50 @ =gUnknown_03005AB0
_0807BB36:
	bl sub_8046CEC
	cmp r6, #0
	beq _0807BB58
	movs r0, #5
	ldr r2, _0807BB54 @ =gUnknown_03005AF0
	strb r0, [r2]
	ldr r0, _0807BB4C @ =gUnknown_03005A20
	mov ip, r0
	b _0807BB62
	.align 2, 0
_0807BB4C: .4byte gUnknown_03005A20
_0807BB50: .4byte gUnknown_03005AB0
_0807BB54: .4byte gUnknown_03005AF0
_0807BB58:
	movs r0, #5
	ldr r1, _0807BB78 @ =gUnknown_03005A60
	strb r0, [r1]
	ldr r2, _0807BB7C @ =gUnknown_03005A20
	mov ip, r2
_0807BB62:
	ldr r3, _0807BB80 @ =gGameMode
_0807BB64:
	ldrb r0, [r3]
	cmp r0, #3
	beq _0807BB6E
	cmp r0, #5
	bne _0807BB8A
_0807BB6E:
	cmp r6, #0
	beq _0807BB84
	movs r0, #0x1e
	strh r0, [r4, #0x1c]
	b _0807BB8A
	.align 2, 0
_0807BB78: .4byte gUnknown_03005A60
_0807BB7C: .4byte gUnknown_03005A20
_0807BB80: .4byte gGameMode
_0807BB84:
	movs r0, #0x1e
	mov r1, ip
	strh r0, [r1, #0x1c]
_0807BB8A:
	cmp r6, #0
	beq _0807BB9A
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807BBA4
_0807BB9A:
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807BBA4:
	cmp r6, #0
	beq _0807BBB2
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807BBBA
_0807BBB2:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807BBBA:
	cmp r6, #0
	beq _0807BBCC
	ldr r0, [r4, #0x10]
	ldr r1, _0807BBC8 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807BBD4
	.align 2, 0
_0807BBC8: .4byte 0xFFFFFEFF
_0807BBCC:
	ldr r0, [r5, #0x10]
	ldr r1, _0807BBE4 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807BBD4:
	cmp r6, #0
	beq _0807BBE8
	ldr r0, [r4, #0x10]
	mov r2, sl
	orrs r0, r2
	str r0, [r4, #0x10]
	b _0807BBF0
	.align 2, 0
_0807BBE4: .4byte 0xFFFFFEFF
_0807BBE8:
	ldr r0, [r5, #0x10]
	mov r1, sl
	orrs r0, r1
	str r0, [r5, #0x10]
_0807BBF0:
	cmp r6, #0
	beq _0807BC00
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807BC0A
_0807BC00:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807BC0A:
	mov r1, ip
	cmp r6, #0
	beq _0807BC12
	ldr r1, _0807BC30 @ =gUnknown_03005AB0
_0807BC12:
	movs r0, #6
	strb r0, [r1, #0xe]
	mov r1, ip
	cmp r6, #0
	beq _0807BC1E
	ldr r1, _0807BC30 @ =gUnknown_03005AB0
_0807BC1E:
	movs r0, #9
	strb r0, [r1, #0xf]
	cmp r6, #0
	beq _0807BC34
	movs r0, #0x96
	lsls r0, r0, #3
	strh r0, [r4, #8]
	b _0807BC3C
	.align 2, 0
_0807BC30: .4byte gUnknown_03005AB0
_0807BC34:
	movs r0, #0x96
	lsls r0, r0, #3
	mov r2, ip
	strh r0, [r2, #8]
_0807BC3C:
	cmp r6, #0
	beq _0807BC4C
	ldr r0, _0807BC48 @ =0xFFFFFB50
	strh r0, [r4, #0xa]
	b _0807BC52
	.align 2, 0
_0807BC48: .4byte 0xFFFFFB50
_0807BC4C:
	ldr r2, _0807BC70 @ =0xFFFFFB50
	mov r1, ip
	strh r2, [r1, #0xa]
_0807BC52:
	movs r0, #0xb8
	bl m4aSongNumStart
	ldr r1, [sp]
	adds r1, #0x4c
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	mov sb, r0
_0807BC64:
	cmp r6, #0
	beq _0807BC74
	mov r1, r8
	str r1, [r4]
	b _0807BC78
	.align 2, 0
_0807BC70: .4byte 0xFFFFFB50
_0807BC74:
	mov r2, r8
	str r2, [r5]
_0807BC78:
	ldr r6, [sp, #0x10]
	ldr r0, _0807BC9C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _0807BC8A
	bl sub_807B45A
_0807BC8A:
	mov r0, sb
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807BC9C: .4byte gUnknown_03005088

	thumb_func_start CreateEntity_Interactable054
CreateEntity_Interactable054: @ 0x0807BCA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0xc]
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0807BD88 @ =sub_807BDC4
	movs r1, #0x80
	lsls r1, r1, #6
	mov sl, r1
	ldr r1, _0807BD8C @ =sub_807D17C
	str r1, [sp]
	movs r1, #0x44
	mov r2, sl
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	ldr r6, _0807BD90 @ =0x0300000C
	adds r7, r5, r6
	movs r3, #0
	movs r2, #0
	strh r4, [r0, #4]
	mov r1, sp
	ldrh r1, [r1, #0xc]
	strh r1, [r0, #6]
	mov r6, sb
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #8]
	mov r1, r8
	strb r1, [r0, #9]
	str r2, [r0, #0x3c]
	ldr r6, _0807BD94 @ =0x03000040
	adds r0, r5, r6
	strb r3, [r0]
	ldr r1, _0807BD98 @ =0x03000041
	adds r0, r5, r1
	strb r3, [r0]
	mov r6, sb
	ldrb r0, [r6]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldr r1, [sp, #0xc]
	lsls r6, r1, #8
	adds r0, r0, r6
	strh r0, [r7, #0x18]
	movs r6, #2
	rsbs r6, r6, #0
	adds r0, r6, #0
	mov r1, sb
	strb r0, [r1]
	movs r0, #0x18
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	ldr r2, [sp, #4]
	strh r2, [r7, #8]
	movs r0, #0xef
	lsls r0, r0, #1
	strh r0, [r7, #0xa]
	ldr r6, _0807BD9C @ =0x0300002C
	adds r0, r5, r6
	ldr r3, [sp, #8]
	strb r3, [r0]
	strh r2, [r7, #0x14]
	strh r2, [r7, #0x1c]
	ldr r0, _0807BDA0 @ =0x0300002D
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r6, #2
	adds r1, r5, r6
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0807BDA4 @ =0x03000031
	adds r5, r5, r0
	strb r3, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	mov r1, sb
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0807BDA8
	movs r0, #0x90
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	b _0807BDAC
	.align 2, 0
_0807BD88: .4byte sub_807BDC4
_0807BD8C: .4byte sub_807D17C
_0807BD90: .4byte 0x0300000C
_0807BD94: .4byte 0x03000040
_0807BD98: .4byte 0x03000041
_0807BD9C: .4byte 0x0300002C
_0807BDA0: .4byte 0x0300002D
_0807BDA4: .4byte 0x03000031
_0807BDA8:
	mov r6, sl
	str r6, [r7, #0x10]
_0807BDAC:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807BDC4
sub_807BDC4: @ 0x0807BDC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _0807BE4C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, _0807BE50 @ =0x0300000C
	adds r0, r0, r1
	mov sl, r0
	ldr r1, [sp, #0x10]
	ldr r1, [r1]
	str r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _0807BE54 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	str r4, [sp]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	mov r0, sl
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	str r2, [sp, #4]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r3, sl
	strh r1, [r3, #0x18]
	movs r6, #0
	ldr r4, _0807BE58 @ =gUnknown_03005AB0
	ldr r5, _0807BE5C @ =gUnknown_03005A20

	thumb_func_start sub_807BE28
sub_807BE28: @ 0x0807BE28
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807BE68
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	mov sb, r0
	cmp r6, #0
	beq _0807BE60
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, r1, r0
	b _0807BE7A
	.align 2, 0
_0807BE4C: .4byte gCurTask
_0807BE50: .4byte 0x0300000C
_0807BE54: .4byte gCamera
_0807BE58: .4byte gUnknown_03005AB0
_0807BE5C: .4byte gUnknown_03005A20
_0807BE60:
	ldr r0, [r5]
	asrs r0, r0, #8
	subs r0, r1, r0
	b _0807BE8E
_0807BE68:
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	mov sb, r0
	cmp r6, #0
	beq _0807BE88
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r0, r0, r1
_0807BE7A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _0807BE84 @ =gUnknown_03005A20
	mov ip, r3
	b _0807BE96
	.align 2, 0
_0807BE84: .4byte gUnknown_03005A20
_0807BE88:
	ldr r0, [r5]
	asrs r0, r0, #8
	subs r0, r0, r1
_0807BE8E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0807BED8 @ =gUnknown_03005A20
	mov ip, r1
_0807BE96:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x11
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	mov r2, sb
	asrs r3, r2, #0x10
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	mov r7, ip
	mov r8, r1
	str r0, [sp, #0x14]
	cmp r6, #0
	beq _0807BEB6
	ldr r7, _0807BEDC @ =gUnknown_03005AB0
_0807BEB6:
	mov r0, sl
	adds r1, r3, #0
	adds r3, r7, #0
	bl sub_800CE34
	cmp r0, #0
	bne _0807BEC8
	bl sub_807C9CE
_0807BEC8:
	cmp r6, #0
	beq _0807BEE4
	ldr r3, _0807BEE0 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #2
	beq _0807BEF0
	b _0807C0F4
	.align 2, 0
_0807BED8: .4byte gUnknown_03005A20
_0807BEDC: .4byte gUnknown_03005AB0
_0807BEE0: .4byte gUnknown_03005B09
_0807BEE4:
	ldr r1, _0807BEFC @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #2
	beq _0807BEF0
	b _0807C0F4
_0807BEF0:
	cmp r6, #0
	beq _0807BF04
	ldr r2, _0807BF00 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r2, r0]
	b _0807BF0A
	.align 2, 0
_0807BEFC: .4byte gUnknown_03005A79
_0807BF00: .4byte gUnknown_03005AF0
_0807BF04:
	ldr r3, _0807BF1C @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r3, r0]
_0807BF0A:
	cmp r0, #0x46
	beq _0807BFB4
	cmp r6, #0
	beq _0807BF24
	ldr r1, _0807BF20 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r1, r0]
	b _0807BF2A
	.align 2, 0
_0807BF1C: .4byte gUnknown_03005A60
_0807BF20: .4byte gUnknown_03005AF0
_0807BF24:
	ldr r2, _0807BF3C @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r2, r0]
_0807BF2A:
	cmp r0, #0x47
	beq _0807BFB4
	cmp r6, #0
	beq _0807BF44
	ldr r3, _0807BF40 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r3, r0]
	b _0807BF4A
	.align 2, 0
_0807BF3C: .4byte gUnknown_03005A60
_0807BF40: .4byte gUnknown_03005AF0
_0807BF44:
	ldr r1, _0807BF5C @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r1, r0]
_0807BF4A:
	cmp r0, #0x48
	beq _0807BFB4
	cmp r6, #0
	beq _0807BF64
	ldr r2, _0807BF60 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r2, r0]
	b _0807BF6A
	.align 2, 0
_0807BF5C: .4byte gUnknown_03005A60
_0807BF60: .4byte gUnknown_03005AF0
_0807BF64:
	ldr r3, _0807BF7C @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r3, r0]
_0807BF6A:
	cmp r0, #0x49
	beq _0807BFB4
	cmp r6, #0
	beq _0807BF84
	ldr r1, _0807BF80 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r1, r0]
	b _0807BF8A
	.align 2, 0
_0807BF7C: .4byte gUnknown_03005A60
_0807BF80: .4byte gUnknown_03005AF0
_0807BF84:
	ldr r2, _0807BFA0 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r2, r0]
_0807BF8A:
	cmp r0, #0x4a
	beq _0807BFB4
	cmp r6, #0
	beq _0807BFA8
	ldr r3, _0807BFA4 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0x4b
	beq _0807BFB4
	b _0807C0F4
	.align 2, 0
_0807BFA0: .4byte gUnknown_03005A60
_0807BFA4: .4byte gUnknown_03005AF0
_0807BFA8:
	ldr r1, _0807BFC8 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x4b
	beq _0807BFB4
	b _0807C0F4
_0807BFB4:
	cmp r6, #0
	beq _0807BFD0
	ldr r2, _0807BFCC @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0x49
	bne _0807BFDE
	bl _0807CA5A
	.align 2, 0
_0807BFC8: .4byte gUnknown_03005A60
_0807BFCC: .4byte gUnknown_03005AF0
_0807BFD0:
	ldr r3, _0807C008 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0x49
	bne _0807BFDE
	bl _0807CA5A
_0807BFDE:
	mov r0, sb
	asrs r1, r0, #0x10
	mov r3, r8
	asrs r2, r3, #0x10
	ldr r3, _0807C00C @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807BFEE
	ldr r3, _0807C010 @ =gUnknown_03005AB0
_0807BFEE:
	mov r0, sl
	bl sub_80096B0
	cmp r6, #0
	beq _0807C014
	ldr r0, [r4, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0807C022
	bl _0807CA5A
	.align 2, 0
_0807C008: .4byte gUnknown_03005A60
_0807C00C: .4byte gUnknown_03005A20
_0807C010: .4byte gUnknown_03005AB0
_0807C014:
	ldr r0, [r5, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0807C022
	bl _0807CA5A
_0807C022:
	cmp r6, #0
	beq _0807C030
	ldr r0, [r4, #0x28]
	cmp r0, sl
	beq _0807C03A
	bl _0807CA5A
_0807C030:
	ldr r0, [r5, #0x28]
	cmp r0, sl
	beq _0807C03A
	bl _0807CA5A
_0807C03A:
	ldr r0, _0807C054 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C042
	ldr r0, _0807C058 @ =gUnknown_03005AB0
_0807C042:
	bl sub_8046CEC
	cmp r6, #0
	beq _0807C060
	movs r1, #5
	ldr r0, _0807C05C @ =gUnknown_03005AF0
	strb r1, [r0]
	b _0807C066
	.align 2, 0
_0807C054: .4byte gUnknown_03005A20
_0807C058: .4byte gUnknown_03005AB0
_0807C05C: .4byte gUnknown_03005AF0
_0807C060:
	movs r3, #5
	ldr r2, _0807C078 @ =gUnknown_03005A60
	strb r3, [r2]
_0807C066:
	cmp r6, #0
	beq _0807C07C
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C086
	.align 2, 0
_0807C078: .4byte gUnknown_03005A60
_0807C07C:
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807C086:
	cmp r6, #0
	beq _0807C094
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C09C
_0807C094:
	ldr r0, [r5, #0x10]
	movs r2, #4
	orrs r0, r2
	str r0, [r5, #0x10]
_0807C09C:
	cmp r6, #0
	beq _0807C0AA
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C0B2
_0807C0AA:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807C0B2:
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807C0D4
	cmp r6, #0
	beq _0807C0CC
	ldr r0, [r4, #0x10]
	movs r1, #1
	bl _0807C966
_0807C0CC:
	ldr r0, [r5, #0x10]
	movs r1, #1
	bl _0807C970
_0807C0D4:
	cmp r6, #0
	beq _0807C0E6
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	bl _0807CA5A
_0807C0E6:
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	bl _0807CA5A
_0807C0F4:
	cmp r6, #0
	beq _0807C0FE
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	b _0807C102
_0807C0FE:
	movs r2, #0xa
	ldrsh r0, [r5, r2]
_0807C102:
	cmp r0, #0
	bge _0807C13E
	cmp r6, #0
	beq _0807C118
	ldr r0, [r4, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0807C126
	bl sub_807C948
_0807C118:
	ldr r0, [r5, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0807C126
	bl sub_807C948
_0807C126:
	cmp r6, #0
	beq _0807C134
	ldr r0, [r4, #0x28]
	cmp r0, sl
	beq _0807C13E
	bl sub_807C948
_0807C134:
	ldr r0, [r5, #0x28]
	cmp r0, sl
	beq _0807C13E
	bl sub_807C948
_0807C13E:
	mov r3, r8
	asrs r0, r3, #8
	movs r2, #0x98
	lsls r2, r2, #5
	adds r1, r0, r2
	cmp r6, #0
	beq _0807C156
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _0807C160
	bl sub_807C948
_0807C156:
	ldr r0, [r5, #4]
	cmp r0, r1
	blt _0807C160
	bl sub_807C948
_0807C160:
	cmp r6, #0
	beq _0807C172
	ldr r0, [r4, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807C180
	bl sub_807C948
_0807C172:
	ldr r0, [r5, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807C180
	bl sub_807C948
_0807C180:
	ldr r0, _0807C1C4 @ =gPressedKeys
	ldr r2, _0807C1C8 @ =gUnknown_030060E0
	ldrh r1, [r0]
	ldrh r0, [r2]
	ands r0, r1
	adds r3, r2, #0
	ldr r7, [sp, #0x10]
	adds r7, #0x41
	cmp r0, #0
	bne _0807C196
	b _0807C3D0
_0807C196:
	ldrb r1, [r7]
	adds r0, r1, #0
	asrs r0, r6
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _0807C1A6
	b _0807C3D0
_0807C1A6:
	adds r0, r2, #0
	lsls r0, r6
	bics r1, r0
	strb r1, [r7]
	cmp r6, #0
	beq _0807C1D0
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	ldr r3, _0807C1CC @ =gUnknown_03005A20
	mov ip, r3
	b _0807C1DE
	.align 2, 0
_0807C1C4: .4byte gPressedKeys
_0807C1C8: .4byte gUnknown_030060E0
_0807C1CC: .4byte gUnknown_03005A20
_0807C1D0:
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	ldr r0, _0807C1EC @ =gUnknown_03005A20
	mov ip, r0
_0807C1DE:
	cmp r6, #0
	beq _0807C1F0
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C1F8
	.align 2, 0
_0807C1EC: .4byte gUnknown_03005A20
_0807C1F0:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807C1F8:
	cmp r6, #0
	beq _0807C20C
	ldr r0, [r4, #0x10]
	ldr r1, _0807C208 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C214
	.align 2, 0
_0807C208: .4byte 0xFFFFFEFF
_0807C20C:
	ldr r0, [r5, #0x10]
	ldr r1, _0807C224 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807C214:
	cmp r6, #0
	beq _0807C228
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C230
	.align 2, 0
_0807C224: .4byte 0xFFFFFEFF
_0807C228:
	ldr r0, [r5, #0x10]
	movs r2, #4
	orrs r0, r2
	str r0, [r5, #0x10]
_0807C230:
	cmp r6, #0
	beq _0807C240
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C24A
_0807C240:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807C24A:
	ldr r0, _0807C264 @ =gInput
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807C270
	cmp r6, #0
	beq _0807C268
	ldr r0, [r4, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C292
	.align 2, 0
_0807C264: .4byte gInput
_0807C268:
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	b _0807C290
_0807C270:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807C292
	cmp r6, #0
	beq _0807C288
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C292
_0807C288:
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0807C290:
	str r0, [r5, #0x10]
_0807C292:
	ldr r3, [sp, #0x14]
	asrs r1, r3, #0xc
	ldr r0, _0807C2A4 @ =0xFFFFF840
	subs r0, r0, r1
	cmp r6, #0
	beq _0807C2A8
	strh r0, [r4, #0xa]
	b _0807C2AC
	.align 2, 0
_0807C2A4: .4byte 0xFFFFF840
_0807C2A8:
	mov r1, ip
	strh r0, [r1, #0xa]
_0807C2AC:
	mov r2, sl
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807C2DC
	ldr r3, [sp, #0x14]
	asrs r0, r3, #0xb
	rsbs r0, r0, #0
	cmp r6, #0
	beq _0807C2C8
	strh r0, [r4, #8]
	b _0807C2CC
_0807C2C8:
	mov r1, ip
	strh r0, [r1, #8]
_0807C2CC:
	ldr r2, [sp, #0x14]
	asrs r0, r2, #0xb
	rsbs r0, r0, #0
	cmp r6, #0
	bne _0807C2F4
	mov r3, ip
	strh r0, [r3, #0xc]
	b _0807C2FC
_0807C2DC:
	ldr r1, [sp, #0x14]
	asrs r0, r1, #0xb
	cmp r6, #0
	beq _0807C2E8
	strh r0, [r4, #8]
	b _0807C2EC
_0807C2E8:
	mov r2, ip
	strh r0, [r2, #8]
_0807C2EC:
	ldr r3, [sp, #0x14]
	asrs r0, r3, #0xb
	cmp r6, #0
	beq _0807C2F8
_0807C2F4:
	strh r0, [r4, #0xc]
	b _0807C2FC
_0807C2F8:
	mov r1, ip
	strh r0, [r1, #0xc]
_0807C2FC:
	ldr r0, _0807C314 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C304
	ldr r0, _0807C318 @ =gUnknown_03005AB0
_0807C304:
	bl sub_8046CEC
	cmp r6, #0
	beq _0807C320
	movs r3, #5
	ldr r2, _0807C31C @ =gUnknown_03005AF0
	strb r3, [r2]
	b _0807C326
	.align 2, 0
_0807C314: .4byte gUnknown_03005A20
_0807C318: .4byte gUnknown_03005AB0
_0807C31C: .4byte gUnknown_03005AF0
_0807C320:
	movs r1, #5
	ldr r0, _0807C368 @ =gUnknown_03005A60
	strb r1, [r0]
_0807C326:
	ldr r1, [sp, #0x10]
	adds r1, #0x40
	movs r0, #8
	strb r0, [r1]
	movs r2, #0
	ldr r3, [sp, #0x10]
	str r2, [r3, #0x3c]
	ldr r0, _0807C36C @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C33C
	ldr r0, _0807C370 @ =gUnknown_03005AB0
_0807C33C:
	movs r1, #9
	bl sub_804516C
	ldr r1, _0807C36C @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C34A
	ldr r1, _0807C370 @ =gUnknown_03005AB0
_0807C34A:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0807C36C @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C356
	ldr r1, _0807C370 @ =gUnknown_03005AB0
_0807C356:
	movs r0, #9
	strb r0, [r1, #0xf]
	cmp r6, #0
	beq _0807C378
	ldr r0, [r4, #0x10]
	ldr r1, _0807C374 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C380
	.align 2, 0
_0807C368: .4byte gUnknown_03005A60
_0807C36C: .4byte gUnknown_03005A20
_0807C370: .4byte gUnknown_03005AB0
_0807C374: .4byte 0xFFDFFFFF
_0807C378:
	ldr r0, [r5, #0x10]
	ldr r1, _0807C394 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807C380:
	ldr r0, _0807C398 @ =gUnknown_030060E0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r6, #0
	beq _0807C39C
	ldrh r0, [r4, #0x38]
	orrs r1, r0
	strh r1, [r4, #0x38]
	b _0807C3A2
	.align 2, 0
_0807C394: .4byte 0xFFDFFFFF
_0807C398: .4byte gUnknown_030060E0
_0807C39C:
	ldrh r0, [r5, #0x38]
	orrs r1, r0
	strh r1, [r5, #0x38]
_0807C3A2:
	movs r0, #0xef
	lsls r0, r0, #1
	mov r1, sl
	strh r0, [r1, #0xa]
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb7
	bl m4aSongNumStart
	ldr r0, _0807C3C8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807C3CC @ =sub_807CB28
	str r0, [r1, #8]
	b _0807CA5A
	.align 2, 0
_0807C3C8: .4byte gCurTask
_0807C3CC: .4byte sub_807CB28
_0807C3D0:
	mov r2, sl
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0807C3E0
	b _0807C698
_0807C3E0:
	mov r1, r8
	asrs r0, r1, #0x10
	ldr r1, [sp, #8]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	adds r0, r0, r1
	subs r0, #0x11
	lsls r1, r0, #8
	mov sb, r2
	cmp r6, #0
	beq _0807C3FE
	ldr r0, [r4, #4]
	cmp r0, r1
	bgt _0807C406
	b _0807C520
_0807C3FE:
	ldr r0, [r5, #4]
	cmp r0, r1
	bgt _0807C406
	b _0807C520
_0807C406:
	mov r2, r8
	asrs r0, r2, #0x10
	mov r3, sb
	asrs r1, r3, #0x10
	adds r0, r0, r1
	subs r0, #0x11
	lsls r0, r0, #8
	adds r0, #1
	cmp r6, #0
	beq _0807C428
	str r0, [r4, #4]
	ldr r0, _0807C424 @ =gUnknown_03005A20
	mov ip, r0
	b _0807C42E
	.align 2, 0
_0807C424: .4byte gUnknown_03005A20
_0807C428:
	str r0, [r5, #4]
	ldr r1, _0807C438 @ =gUnknown_03005A20
	mov ip, r1
_0807C42E:
	cmp r6, #0
	beq _0807C43C
	movs r2, #0
	strh r2, [r4, #0xa]
	b _0807C440
	.align 2, 0
_0807C438: .4byte gUnknown_03005A20
_0807C43C:
	mov r3, ip
	strh r6, [r3, #0xa]
_0807C440:
	cmp r6, #0
	beq _0807C450
	ldr r0, _0807C44C @ =0x0000FFB0
	strh r0, [r4, #8]
	b _0807C456
	.align 2, 0
_0807C44C: .4byte 0x0000FFB0
_0807C450:
	ldr r0, _0807C46C @ =0x0000FFB0
	mov r1, ip
	strh r0, [r1, #8]
_0807C456:
	movs r1, #1
	lsls r1, r6
	ldrb r0, [r7]
	orrs r1, r0
	movs r0, #0
	strb r1, [r7]
	cmp r6, #0
	beq _0807C470
	strh r0, [r4, #0x38]
	b _0807C474
	.align 2, 0
_0807C46C: .4byte 0x0000FFB0
_0807C470:
	mov r2, ip
	strh r6, [r2, #0x38]
_0807C474:
	cmp r6, #0
	beq _0807C47E
	movs r3, #0
	strh r3, [r4, #0x3a]
	b _0807C482
_0807C47E:
	mov r0, ip
	strh r6, [r0, #0x3a]
_0807C482:
	cmp r6, #0
	beq _0807C48C
	movs r1, #0
	strb r1, [r4, #0x14]
	b _0807C490
_0807C48C:
	mov r2, ip
	strb r6, [r2, #0x14]
_0807C490:
	ldr r0, _0807C4AC @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C498
	ldr r0, _0807C4B0 @ =gUnknown_03005AB0
_0807C498:
	bl sub_8046CEC
	cmp r6, #0
	beq _0807C4B4
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C4BE
	.align 2, 0
_0807C4AC: .4byte gUnknown_03005A20
_0807C4B0: .4byte gUnknown_03005AB0
_0807C4B4:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r5, #0x10]
_0807C4BE:
	cmp r6, #0
	beq _0807C4CC
	ldr r0, [r4, #0x10]
	movs r3, #4
	orrs r0, r3
	str r0, [r4, #0x10]
	b _0807C4D4
_0807C4CC:
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
_0807C4D4:
	ldr r0, _0807C508 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C4DC
	ldr r0, _0807C50C @ =gUnknown_03005AB0
_0807C4DC:
	movs r1, #9
	bl sub_804516C
	ldr r1, _0807C508 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C4EA
	ldr r1, _0807C50C @ =gUnknown_03005AB0
_0807C4EA:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0807C508 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C4F6
	ldr r1, _0807C50C @ =gUnknown_03005AB0
_0807C4F6:
	movs r0, #9
	strb r0, [r1, #0xf]
	cmp r6, #0
	beq _0807C514
	movs r3, #5
	ldr r2, _0807C510 @ =gUnknown_03005AF0
	strb r3, [r2]
	b _0807CA5A
	.align 2, 0
_0807C508: .4byte gUnknown_03005A20
_0807C50C: .4byte gUnknown_03005AB0
_0807C510: .4byte gUnknown_03005AF0
_0807C514:
	movs r1, #5
	ldr r0, _0807C51C @ =gUnknown_03005A60
	strb r1, [r0]
	b _0807CA5A
	.align 2, 0
_0807C51C: .4byte gUnknown_03005A60
_0807C520:
	ldrb r0, [r7]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C52E
	b _0807C66A
_0807C52E:
	ldr r0, _0807C548 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C536
	ldr r0, _0807C54C @ =gUnknown_03005AB0
_0807C536:
	bl sub_8046CEC
	cmp r6, #0
	beq _0807C550
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C558
	.align 2, 0
_0807C548: .4byte gUnknown_03005A20
_0807C54C: .4byte gUnknown_03005AB0
_0807C550:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807C558:
	cmp r6, #0
	beq _0807C56C
	ldr r0, [r4, #0x10]
	ldr r1, _0807C568 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C574
	.align 2, 0
_0807C568: .4byte 0xFFFFFEFF
_0807C56C:
	ldr r0, [r5, #0x10]
	ldr r1, _0807C584 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807C574:
	cmp r6, #0
	beq _0807C588
	ldr r0, [r4, #0x10]
	movs r2, #4
	orrs r0, r2
	str r0, [r4, #0x10]
	b _0807C590
	.align 2, 0
_0807C584: .4byte 0xFFFFFEFF
_0807C588:
	ldr r0, [r5, #0x10]
	movs r3, #4
	orrs r0, r3
	str r0, [r5, #0x10]
_0807C590:
	cmp r6, #0
	beq _0807C5A0
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C5AA
_0807C5A0:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807C5AA:
	cmp r6, #0
	beq _0807C5BC
	movs r1, #5
	ldr r0, _0807C5B8 @ =gUnknown_03005AF0
	strb r1, [r0]
	b _0807C5C2
	.align 2, 0
_0807C5B8: .4byte gUnknown_03005AF0
_0807C5BC:
	movs r3, #5
	ldr r2, _0807C604 @ =gUnknown_03005A60
	strb r3, [r2]
_0807C5C2:
	ldr r0, _0807C608 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C5CA
	ldr r0, _0807C60C @ =gUnknown_03005AB0
_0807C5CA:
	movs r1, #9
	bl sub_804516C
	ldr r1, _0807C608 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C5D8
	ldr r1, _0807C60C @ =gUnknown_03005AB0
_0807C5D8:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r0, _0807C608 @ =gUnknown_03005A20
	mov ip, r0
	mov r1, ip
	cmp r6, #0
	beq _0807C5E8
	ldr r1, _0807C60C @ =gUnknown_03005AB0
_0807C5E8:
	movs r0, #9
	strb r0, [r1, #0xf]
	mov r1, r8
	asrs r0, r1, #0x10
	mov r2, sb
	asrs r1, r2, #0x10
	adds r0, r0, r1
	subs r0, #0x11
	lsls r0, r0, #8
	adds r0, #1
	cmp r6, #0
	beq _0807C610
	str r0, [r4, #4]
	b _0807C614
	.align 2, 0
_0807C604: .4byte gUnknown_03005A60
_0807C608: .4byte gUnknown_03005A20
_0807C60C: .4byte gUnknown_03005AB0
_0807C610:
	mov r3, ip
	str r0, [r3, #4]
_0807C614:
	cmp r6, #0
	beq _0807C61E
	movs r0, #0
	strh r0, [r4, #0xa]
	b _0807C622
_0807C61E:
	mov r1, ip
	strh r6, [r1, #0xa]
_0807C622:
	cmp r6, #0
	beq _0807C630
	ldr r0, _0807C62C @ =0x0000FFB0
	strh r0, [r4, #8]
	b _0807C636
	.align 2, 0
_0807C62C: .4byte 0x0000FFB0
_0807C630:
	ldr r0, _0807C640 @ =0x0000FFB0
	mov r2, ip
	strh r0, [r2, #8]
_0807C636:
	cmp r6, #0
	beq _0807C644
	movs r3, #0
	strh r3, [r4, #0x38]
	b _0807C648
	.align 2, 0
_0807C640: .4byte 0x0000FFB0
_0807C644:
	mov r0, ip
	strh r6, [r0, #0x38]
_0807C648:
	cmp r6, #0
	beq _0807C652
	movs r1, #0
	strh r1, [r4, #0x3a]
	b _0807C656
_0807C652:
	mov r2, ip
	strh r6, [r2, #0x3a]
_0807C656:
	cmp r6, #0
	beq _0807C662
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	b _0807C966
_0807C662:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	b _0807C970
_0807C66A:
	cmp r6, #0
	beq _0807C67C
	ldr r0, [r4, #0x10]
	ldr r1, _0807C678 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C684
	.align 2, 0
_0807C678: .4byte 0xFFDFFFFF
_0807C67C:
	ldr r0, [r5, #0x10]
	ldr r1, _0807C694 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807C684:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	orrs r1, r0
	cmp r6, #0
	beq _0807C690
	b _0807C932
_0807C690:
	b _0807C940
	.align 2, 0
_0807C694: .4byte 0xFFDFFFFF
_0807C698:
	mov r1, r8
	asrs r0, r1, #0x10
	ldr r1, [sp, #8]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	adds r0, r0, r1
	subs r0, #0x11
	lsls r1, r0, #8
	mov sb, r2
	cmp r6, #0
	beq _0807C6B6
	ldr r0, [r4, #4]
	cmp r0, r1
	bgt _0807C6BE
	b _0807C7CC
_0807C6B6:
	ldr r0, [r5, #4]
	cmp r0, r1
	bgt _0807C6BE
	b _0807C7CC
_0807C6BE:
	mov r2, r8
	asrs r0, r2, #0x10
	mov r3, sb
	asrs r1, r3, #0x10
	adds r0, r0, r1
	subs r0, #0x11
	lsls r0, r0, #8
	adds r0, #1
	cmp r6, #0
	beq _0807C6E0
	str r0, [r4, #4]
	ldr r0, _0807C6DC @ =gUnknown_03005A20
	mov ip, r0
	b _0807C6E6
	.align 2, 0
_0807C6DC: .4byte gUnknown_03005A20
_0807C6E0:
	str r0, [r5, #4]
	ldr r1, _0807C6F0 @ =gUnknown_03005A20
	mov ip, r1
_0807C6E6:
	cmp r6, #0
	beq _0807C6F4
	movs r2, #0
	strh r2, [r4, #0xa]
	b _0807C6F8
	.align 2, 0
_0807C6F0: .4byte gUnknown_03005A20
_0807C6F4:
	mov r3, ip
	strh r6, [r3, #0xa]
_0807C6F8:
	cmp r6, #0
	beq _0807C702
	movs r0, #0x50
	strh r0, [r4, #8]
	b _0807C708
_0807C702:
	movs r0, #0x50
	mov r1, ip
	strh r0, [r1, #8]
_0807C708:
	movs r1, #1
	lsls r1, r6
	ldrb r0, [r7]
	orrs r1, r0
	movs r0, #0
	strb r1, [r7]
	cmp r6, #0
	beq _0807C71C
	strh r0, [r4, #0x38]
	b _0807C720
_0807C71C:
	mov r2, ip
	strh r6, [r2, #0x38]
_0807C720:
	cmp r6, #0
	beq _0807C72A
	movs r3, #0
	strh r3, [r4, #0x3a]
	b _0807C72E
_0807C72A:
	mov r0, ip
	strh r6, [r0, #0x3a]
_0807C72E:
	cmp r6, #0
	beq _0807C738
	movs r1, #0
	strb r1, [r4, #0x14]
	b _0807C73C
_0807C738:
	mov r2, ip
	strb r6, [r2, #0x14]
_0807C73C:
	ldr r0, _0807C758 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C744
	ldr r0, _0807C75C @ =gUnknown_03005AB0
_0807C744:
	bl sub_8046CEC
	cmp r6, #0
	beq _0807C760
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C76A
	.align 2, 0
_0807C758: .4byte gUnknown_03005A20
_0807C75C: .4byte gUnknown_03005AB0
_0807C760:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r5, #0x10]
_0807C76A:
	cmp r6, #0
	beq _0807C778
	ldr r0, [r4, #0x10]
	movs r3, #4
	orrs r0, r3
	str r0, [r4, #0x10]
	b _0807C780
_0807C778:
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
_0807C780:
	cmp r6, #0
	beq _0807C790
	movs r3, #5
	ldr r2, _0807C78C @ =gUnknown_03005AF0
	strb r3, [r2]
	b _0807C796
	.align 2, 0
_0807C78C: .4byte gUnknown_03005AF0
_0807C790:
	movs r1, #5
	ldr r0, _0807C7C0 @ =gUnknown_03005A60
	strb r1, [r0]
_0807C796:
	ldr r0, _0807C7C4 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C79E
	ldr r0, _0807C7C8 @ =gUnknown_03005AB0
_0807C79E:
	movs r1, #9
	bl sub_804516C
	ldr r1, _0807C7C4 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C7AC
	ldr r1, _0807C7C8 @ =gUnknown_03005AB0
_0807C7AC:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0807C7C4 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C7B8
	ldr r1, _0807C7C8 @ =gUnknown_03005AB0
_0807C7B8:
	movs r0, #9
	strb r0, [r1, #0xf]
	b _0807CA5A
	.align 2, 0
_0807C7C0: .4byte gUnknown_03005A60
_0807C7C4: .4byte gUnknown_03005A20
_0807C7C8: .4byte gUnknown_03005AB0
_0807C7CC:
	ldrb r0, [r7]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807C7DA
	b _0807C90E
_0807C7DA:
	cmp r6, #0
	beq _0807C7E8
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807C7F0
_0807C7E8:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0807C7F0:
	cmp r6, #0
	beq _0807C804
	ldr r0, [r4, #0x10]
	ldr r1, _0807C800 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C80C
	.align 2, 0
_0807C800: .4byte 0xFFFFFEFF
_0807C804:
	ldr r0, [r5, #0x10]
	ldr r1, _0807C81C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807C80C:
	cmp r6, #0
	beq _0807C820
	ldr r0, [r4, #0x10]
	movs r2, #4
	orrs r0, r2
	str r0, [r4, #0x10]
	b _0807C828
	.align 2, 0
_0807C81C: .4byte 0xFFFFFEFF
_0807C820:
	ldr r0, [r5, #0x10]
	movs r3, #4
	orrs r0, r3
	str r0, [r5, #0x10]
_0807C828:
	cmp r6, #0
	beq _0807C838
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C842
_0807C838:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807C842:
	ldr r0, _0807C85C @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C84A
	ldr r0, _0807C860 @ =gUnknown_03005AB0
_0807C84A:
	bl sub_8046CEC
	cmp r6, #0
	beq _0807C868
	movs r1, #5
	ldr r0, _0807C864 @ =gUnknown_03005AF0
	strb r1, [r0]
	b _0807C86E
	.align 2, 0
_0807C85C: .4byte gUnknown_03005A20
_0807C860: .4byte gUnknown_03005AB0
_0807C864: .4byte gUnknown_03005AF0
_0807C868:
	movs r3, #5
	ldr r2, _0807C8B0 @ =gUnknown_03005A60
	strb r3, [r2]
_0807C86E:
	ldr r0, _0807C8B4 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C876
	ldr r0, _0807C8B8 @ =gUnknown_03005AB0
_0807C876:
	movs r1, #9
	bl sub_804516C
	ldr r1, _0807C8B4 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807C884
	ldr r1, _0807C8B8 @ =gUnknown_03005AB0
_0807C884:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r0, _0807C8B4 @ =gUnknown_03005A20
	mov ip, r0
	mov r1, ip
	cmp r6, #0
	beq _0807C894
	ldr r1, _0807C8B8 @ =gUnknown_03005AB0
_0807C894:
	movs r0, #9
	strb r0, [r1, #0xf]
	mov r1, r8
	asrs r0, r1, #0x10
	mov r2, sb
	asrs r1, r2, #0x10
	adds r0, r0, r1
	subs r0, #0x11
	lsls r0, r0, #8
	adds r0, #1
	cmp r6, #0
	beq _0807C8BC
	str r0, [r4, #4]
	b _0807C8C0
	.align 2, 0
_0807C8B0: .4byte gUnknown_03005A60
_0807C8B4: .4byte gUnknown_03005A20
_0807C8B8: .4byte gUnknown_03005AB0
_0807C8BC:
	mov r3, ip
	str r0, [r3, #4]
_0807C8C0:
	cmp r6, #0
	beq _0807C8CA
	movs r0, #0
	strh r0, [r4, #0xa]
	b _0807C8CE
_0807C8CA:
	mov r1, ip
	strh r6, [r1, #0xa]
_0807C8CE:
	cmp r6, #0
	beq _0807C8D8
	movs r0, #0x50
	strh r0, [r4, #8]
	b _0807C8DE
_0807C8D8:
	movs r0, #0x50
	mov r2, ip
	strh r0, [r2, #8]
_0807C8DE:
	cmp r6, #0
	beq _0807C8E8
	movs r3, #0
	strh r3, [r4, #0x38]
	b _0807C8EC
_0807C8E8:
	mov r0, ip
	strh r6, [r0, #0x38]
_0807C8EC:
	cmp r6, #0
	beq _0807C8F6
	movs r1, #0
	strh r1, [r4, #0x3a]
	b _0807C8FA
_0807C8F6:
	mov r2, ip
	strh r6, [r2, #0x3a]
_0807C8FA:
	cmp r6, #0
	beq _0807C906
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	b _0807C966
_0807C906:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	b _0807C970
_0807C90E:
	cmp r6, #0
	beq _0807C920
	ldr r0, [r4, #0x10]
	ldr r1, _0807C91C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C928
	.align 2, 0
_0807C91C: .4byte 0xFFDFFFFF
_0807C920:
	ldr r0, [r5, #0x10]
	ldr r1, _0807C93C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807C928:
	ldrh r1, [r3]
	ldrh r0, [r3, #2]
	orrs r1, r0
	cmp r6, #0
	beq _0807C940
_0807C932:
	ldrh r0, [r4, #0x38]
	orrs r1, r0
	strh r1, [r4, #0x38]
	b _0807CA5A
	.align 2, 0
_0807C93C: .4byte 0xFFDFFFFF
_0807C940:
	ldrh r0, [r5, #0x38]
	orrs r1, r0
	strh r1, [r5, #0x38]
	b _0807CA5A

	thumb_func_start sub_807C948
sub_807C948: @ 0x0807C948
	mov r3, r8
	asrs r1, r3, #8
	cmp r6, #0
	beq _0807C958
	ldr r0, [r4, #4]
	cmp r0, r1
	ble _0807C95E
	b _0807C976
_0807C958:
	ldr r0, [r5, #4]
	cmp r0, r1
	bgt _0807C976
_0807C95E:
	cmp r6, #0
	beq _0807C96C
	ldr r0, [r4, #0x10]
	movs r1, #2
_0807C966:
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0807CA5A
_0807C96C:
	ldr r0, [r5, #0x10]
	movs r1, #2
_0807C970:
	orrs r0, r1
	str r0, [r5, #0x10]
	b _0807CA5A
_0807C976:
	mov r1, r8
	asrs r0, r1, #8
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r1, r0, r2
	cmp r6, #0
	beq _0807C98C
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _0807C992
	b _0807CA5A
_0807C98C:
	ldr r0, [r5, #4]
	cmp r0, r1
	bge _0807CA5A
_0807C992:
	mov r3, r8
	asrs r0, r3, #8
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	cmp r6, #0
	beq _0807C9A4
	str r0, [r4, #4]
	b _0807C9A6
_0807C9A4:
	str r0, [r5, #4]
_0807C9A6:
	cmp r6, #0
	beq _0807C9B0
	movs r0, #0xa
	strh r0, [r4, #0xa]
	b _0807C9B4
_0807C9B0:
	movs r0, #0xa
	strh r0, [r5, #0xa]
_0807C9B4:
	cmp r6, #0
	beq _0807C9BE
	movs r2, #0
	strh r2, [r4, #8]
	b _0807C9C0
_0807C9BE:
	strh r6, [r5, #8]
_0807C9C0:
	cmp r6, #0
	beq _0807C9CA
	movs r3, #0
	strh r3, [r4, #0xc]
	b _0807CA5A
_0807C9CA:
	strh r6, [r5, #0xc]
	b _0807CA5A

	non_word_aligned_thumb_func_start sub_807C9CE
sub_807C9CE: @ 0x0807C9CE
	ldr r2, [sp, #0x10]
	adds r2, #0x41
	ldrb r1, [r2]
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	adds r7, r2, #0
	cmp r1, #0
	beq _0807CA50
	cmp r6, #0
	beq _0807C9F4
	ldr r0, [r4, #0x10]
	ldr r1, _0807C9F0 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807C9FC
	.align 2, 0
_0807C9F0: .4byte 0xFFDFFFFF
_0807C9F4:
	ldr r0, [r5, #0x10]
	ldr r1, _0807CA10 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_0807C9FC:
	ldr r0, _0807CA14 @ =gUnknown_030060E0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r6, #0
	beq _0807CA18
	ldrh r0, [r4, #0x38]
	orrs r1, r0
	strh r1, [r4, #0x38]
	b _0807CA1E
	.align 2, 0
_0807CA10: .4byte 0xFFDFFFFF
_0807CA14: .4byte gUnknown_030060E0
_0807CA18:
	ldrh r0, [r5, #0x38]
	orrs r1, r0
	strh r1, [r5, #0x38]
_0807CA1E:
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0807CA3E
	cmp r6, #0
	beq _0807CA38
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #8]
	b _0807CA50
_0807CA38:
	movs r0, #0xff
	lsls r0, r0, #8
	b _0807CA4E
_0807CA3E:
	cmp r6, #0
	beq _0807CA4A
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #8]
	b _0807CA50
_0807CA4A:
	movs r0, #0x80
	lsls r0, r0, #1
_0807CA4E:
	strh r0, [r5, #8]
_0807CA50:
	movs r1, #1
	lsls r1, r6
	ldrb r0, [r7]
	bics r0, r1
	strb r0, [r7]
_0807CA5A:
	adds r6, #1
	ldr r0, _0807CABC @ =gUnknown_03005088
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r8, r0
	cmp r6, r1
	bge _0807CA6C
	bl sub_807BE28
_0807CA6C:
	mov r2, sl
	ldrh r0, [r2, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807CA92
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0807CA92
	movs r4, #0x18
	ldrsh r1, [r2, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807CB10
_0807CA92:
	movs r2, #0
	ldr r0, _0807CAC0 @ =gCurTask
	mov sb, r0
	ldr r7, [sp, #0x10]
	adds r7, #0x41
	ldr r4, _0807CAC4 @ =gUnknown_03005AB0
	ldr r6, _0807CAC8 @ =0xFFDFFFFF
	ldr r3, _0807CACC @ =gUnknown_03005A20
	ldr r5, _0807CAD0 @ =gUnknown_030060E0
_0807CAA4:
	ldrb r0, [r7]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0807CAF2
	cmp r2, #0
	beq _0807CAD4
	ldr r0, [r4, #0x10]
	ands r0, r6
	str r0, [r4, #0x10]
	b _0807CADA
	.align 2, 0
_0807CABC: .4byte gUnknown_03005088
_0807CAC0: .4byte gCurTask
_0807CAC4: .4byte gUnknown_03005AB0
_0807CAC8: .4byte 0xFFDFFFFF
_0807CACC: .4byte gUnknown_03005A20
_0807CAD0: .4byte gUnknown_030060E0
_0807CAD4:
	ldr r0, [r3, #0x10]
	ands r0, r6
	str r0, [r3, #0x10]
_0807CADA:
	ldrh r1, [r5]
	ldrh r0, [r5, #2]
	orrs r1, r0
	cmp r2, #0
	beq _0807CAEC
	ldrh r0, [r4, #0x38]
	orrs r1, r0
	strh r1, [r4, #0x38]
	b _0807CAF2
_0807CAEC:
	ldrh r0, [r3, #0x38]
	orrs r1, r0
	strh r1, [r3, #0x38]
_0807CAF2:
	adds r2, #1
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blt _0807CAA4
	ldr r2, [sp, #0x10]
	ldrb r0, [r2, #8]
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	mov r4, sb
	ldr r0, [r4]
	bl TaskDestroy
	b _0807CB16
_0807CB10:
	mov r0, sl
	bl DisplaySprite
_0807CB16:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807CB28
sub_807CB28: @ 0x0807CB28
	push {r4, r5, r6, r7, lr}
	ldr r0, _0807CB98 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r1, _0807CB9C @ =0x0300000C
	adds r5, r6, r1
	ldr r7, [r4]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0807CBA0 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
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
	bhi _0807CB8A
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0807CB8A
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0807CBA4
_0807CB8A:
	ldrb r0, [r4, #8]
	strb r0, [r7]
	ldr r0, [r3]
	bl TaskDestroy
	b _0807CBDE
	.align 2, 0
_0807CB98: .4byte gCurTask
_0807CB9C: .4byte 0x0300000C
_0807CBA0: .4byte gCamera
_0807CBA4:
	ldr r0, _0807CBE4 @ =0x03000040
	adds r1, r6, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807CBD2
	movs r0, #0xef
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	ldr r0, _0807CBE8 @ =0x0300002C
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0807CBEC @ =0x0300002D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _0807CBF0 @ =sub_807BDC4
	str r0, [r1, #8]
_0807CBD2:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0807CBDE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807CBE4: .4byte 0x03000040
_0807CBE8: .4byte 0x0300002C
_0807CBEC: .4byte 0x0300002D
_0807CBF0: .4byte sub_807BDC4

	thumb_func_start CreateEntity_Interactable056
CreateEntity_Interactable056: @ 0x0807CBF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	adds r4, r1, #0
	mov r8, r2
	mov sb, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, _0807CCDC @ =sub_807CCFC
	ldr r1, _0807CCE0 @ =sub_807D17C
	str r1, [sp]
	movs r1, #0x44
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	ldr r3, _0807CCE4 @ =0x0300000C
	adds r6, r5, r3
	movs r7, #0
	movs r2, #0
	strh r4, [r0, #4]
	mov r1, r8
	strh r1, [r0, #6]
	mov r3, sl
	str r3, [r0]
	ldrb r1, [r3]
	strb r1, [r0, #8]
	mov r1, sb
	strb r1, [r0, #9]
	str r2, [r0, #0x3c]
	ldr r3, _0807CCE8 @ =0x03000040
	adds r0, r5, r3
	strb r7, [r0]
	ldr r1, _0807CCEC @ =0x03000041
	adds r0, r5, r1
	strb r7, [r0]
	mov r3, sl
	ldrb r0, [r3]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r6, #0x16]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov r8, r1
	add r0, r8
	strh r0, [r6, #0x18]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r1, sl
	strb r0, [r1]
	movs r0, #0x1e
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	ldr r2, [sp, #4]
	strh r2, [r6, #8]
	movs r0, #0xef
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	ldr r3, _0807CCF0 @ =0x0300002C
	adds r1, r5, r3
	movs r0, #2
	strb r0, [r1]
	strh r2, [r6, #0x14]
	strh r2, [r6, #0x1c]
	ldr r0, _0807CCF4 @ =0x0300002D
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r3, #2
	adds r1, r5, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0807CCF8 @ =0x03000031
	adds r5, r5, r0
	strb r7, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r6, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807CCDC: .4byte sub_807CCFC
_0807CCE0: .4byte sub_807D17C
_0807CCE4: .4byte 0x0300000C
_0807CCE8: .4byte 0x03000040
_0807CCEC: .4byte 0x03000041
_0807CCF0: .4byte 0x0300002C
_0807CCF4: .4byte 0x0300002D
_0807CCF8: .4byte 0x03000031

	thumb_func_start sub_807CCFC
sub_807CCFC: @ 0x0807CCFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0807CD64 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, _0807CD68 @ =0x0300000C
	adds r5, r1, r0
	ldr r1, [sp, #0xc]
	ldr r1, [r1]
	str r1, [sp, #8]
	ldr r3, [sp, #0xc]
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _0807CD6C @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	str r4, [sp]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	str r2, [sp, #4]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r6, #0
	ldr r3, _0807CD70 @ =gUnknown_03005A20
	mov sl, r3
_0807CD5A:
	cmp r6, #0
	beq _0807CD78
	ldr r4, _0807CD74 @ =gUnknown_03005AB0
	ldr r0, [r4, #0x10]
	b _0807CD7C
	.align 2, 0
_0807CD64: .4byte gCurTask
_0807CD68: .4byte 0x0300000C
_0807CD6C: .4byte gCamera
_0807CD70: .4byte gUnknown_03005A20
_0807CD74: .4byte gUnknown_03005AB0
_0807CD78:
	mov r1, sl
	ldr r0, [r1, #0x10]
_0807CD7C:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807CD86
	b _0807D008
_0807CD86:
	cmp r6, #0
	beq _0807CD94
	ldr r2, _0807CD90 @ =gUnknown_03005AB0
	ldr r1, [r2, #0x10]
	b _0807CD98
	.align 2, 0
_0807CD90: .4byte gUnknown_03005AB0
_0807CD94:
	mov r3, sl
	ldr r1, [r3, #0x10]
_0807CD98:
	movs r0, #2
	ands r1, r0
	ldr r4, [sp, #0xc]
	adds r4, #0x41
	cmp r1, #0
	bne _0807CDB6
	ldr r2, [sp, #0xc]
	adds r2, #0x41
	ldrb r1, [r2]
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	adds r4, r2, #0
	cmp r1, #0
	beq _0807CE80
_0807CDB6:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r7, r0, #0x10
	ldr r3, _0807CE14 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807CDCC
	ldr r3, _0807CE18 @ =gUnknown_03005AB0
_0807CDCC:
	adds r0, r5, #0
	mov r1, sb
	adds r2, r7, #0
	bl sub_80096B0
	movs r3, #8
	mov r8, r3
	ands r0, r3
	cmp r0, #0
	beq _0807CE58
	movs r0, #1
	lsls r0, r6
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	ldr r3, _0807CE14 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807CDF2
	ldr r3, _0807CE18 @ =gUnknown_03005AB0
_0807CDF2:
	adds r0, r5, #0
	mov r1, sb
	adds r2, r7, #0
	bl sub_800CE34
	cmp r0, #0
	beq _0807CE02
	b _0807D044
_0807CE02:
	cmp r6, #0
	beq _0807CE1C
	ldr r4, _0807CE18 @ =gUnknown_03005AB0
	ldr r0, [r4, #0x10]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _0807CE2A
	b _0807D044
	.align 2, 0
_0807CE14: .4byte gUnknown_03005A20
_0807CE18: .4byte gUnknown_03005AB0
_0807CE1C:
	mov r2, sl
	ldr r0, [r2, #0x10]
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	bne _0807CE2A
	b _0807D044
_0807CE2A:
	cmp r6, #0
	beq _0807CE3C
	ldr r4, _0807CE38 @ =gUnknown_03005AB0
	ldr r0, [r4, #0x28]
	cmp r0, r5
	beq _0807CE46
	b _0807D044
	.align 2, 0
_0807CE38: .4byte gUnknown_03005AB0
_0807CE3C:
	mov r1, sl
	ldr r0, [r1, #0x28]
	cmp r0, r5
	beq _0807CE46
	b _0807D044
_0807CE46:
	cmp r6, #0
	beq _0807CE54
	ldr r2, _0807CE50 @ =gUnknown_03005AB0
	b _0807D03A
	.align 2, 0
_0807CE50: .4byte gUnknown_03005AB0
_0807CE54:
	mov r4, sl
	b _0807D028
_0807CE58:
	ldrb r1, [r4]
	adds r0, r1, #0
	asrs r0, r6
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _0807CE68
	b _0807D044
_0807CE68:
	adds r0, r2, #0
	lsls r0, r6
	bics r1, r0
	strb r1, [r4]
	cmp r6, #0
	beq _0807CE7C
	ldr r2, _0807CE78 @ =gUnknown_03005AB0
	b _0807D03A
	.align 2, 0
_0807CE78: .4byte gUnknown_03005AB0
_0807CE7C:
	mov r4, sl
	b _0807D028
_0807CE80:
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r1, r0, #8
	adds r2, r0, #0
	cmp r6, #0
	beq _0807CE9C
	ldr r3, _0807CE98 @ =gUnknown_03005AB0
	ldr r0, [r3, #4]
	cmp r1, r0
	blt _0807CEA6
	b _0807D044
	.align 2, 0
_0807CE98: .4byte gUnknown_03005AB0
_0807CE9C:
	mov r4, sl
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _0807CEA6
	b _0807D044
_0807CEA6:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #8
	adds r4, r0, #0
	cmp r6, #0
	beq _0807CEC8
	ldr r3, _0807CEC0 @ =gUnknown_03005AB0
	ldr r0, [r3]
	ldr r3, _0807CEC4 @ =gUnknown_03005A20
	cmp r1, r0
	bgt _0807CED2
	b _0807CF52
	.align 2, 0
_0807CEC0: .4byte gUnknown_03005AB0
_0807CEC4: .4byte gUnknown_03005A20
_0807CEC8:
	mov r3, sl
	ldr r0, [r3]
	ldr r3, _0807CEFC @ =gUnknown_03005A20
	cmp r1, r0
	ble _0807CF52
_0807CED2:
	ldr r1, _0807CF00 @ =0xFFFA0000
	adds r0, r4, r1
	asrs r1, r0, #0x10
	asrs r2, r2, #0x10
	cmp r6, #0
	beq _0807CEE0
	ldr r3, _0807CF04 @ =gUnknown_03005AB0
_0807CEE0:
	adds r0, r5, #0
	bl sub_800CE34
	cmp r0, #0
	bne _0807CEEC
	b _0807D044
_0807CEEC:
	cmp r6, #0
	beq _0807CF08
	ldr r2, _0807CF04 @ =gUnknown_03005AB0
	ldr r0, [r2, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x10]
	b _0807CF12
	.align 2, 0
_0807CEFC: .4byte gUnknown_03005A20
_0807CF00: .4byte 0xFFFA0000
_0807CF04: .4byte gUnknown_03005AB0
_0807CF08:
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0x10]
_0807CF12:
	cmp r6, #0
	beq _0807CF24
	movs r0, #0xf6
	lsls r0, r0, #8
	ldr r4, _0807CF20 @ =gUnknown_03005AB0
	strh r0, [r4, #8]
	b _0807CF2C
	.align 2, 0
_0807CF20: .4byte gUnknown_03005AB0
_0807CF24:
	movs r0, #0xf6
	lsls r0, r0, #8
	mov r1, sl
	strh r0, [r1, #8]
_0807CF2C:
	cmp r6, #0
	beq _0807CF40
	movs r0, #0xf6
	lsls r0, r0, #8
	ldr r2, _0807CF3C @ =gUnknown_03005AB0
	strh r0, [r2, #0xc]
	b _0807CF48
	.align 2, 0
_0807CF3C: .4byte gUnknown_03005AB0
_0807CF40:
	movs r0, #0xf6
	lsls r0, r0, #8
	mov r3, sl
	strh r0, [r3, #0xc]
_0807CF48:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0807CFCE
_0807CF52:
	movs r1, #0xe0
	lsls r1, r1, #0xb
	adds r0, r4, r1
	asrs r1, r0, #0x10
	asrs r2, r2, #0x10
	cmp r6, #0
	beq _0807CF62
	ldr r3, _0807CF80 @ =gUnknown_03005AB0
_0807CF62:
	adds r0, r5, #0
	bl sub_800CE34
	cmp r0, #0
	beq _0807D044
	cmp r6, #0
	beq _0807CF84
	ldr r2, _0807CF80 @ =gUnknown_03005AB0
	ldr r0, [r2, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	b _0807CF90
	.align 2, 0
_0807CF80: .4byte gUnknown_03005AB0
_0807CF84:
	mov r3, sl
	ldr r0, [r3, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
_0807CF90:
	cmp r6, #0
	beq _0807CFA4
	movs r0, #0xa0
	lsls r0, r0, #4
	ldr r4, _0807CFA0 @ =gUnknown_03005AB0
	strh r0, [r4, #8]
	b _0807CFAC
	.align 2, 0
_0807CFA0: .4byte gUnknown_03005AB0
_0807CFA4:
	movs r0, #0xa0
	lsls r0, r0, #4
	mov r1, sl
	strh r0, [r1, #8]
_0807CFAC:
	cmp r6, #0
	beq _0807CFC0
	movs r0, #0xa0
	lsls r0, r0, #4
	ldr r2, _0807CFBC @ =gUnknown_03005AB0
	strh r0, [r2, #0xc]
	b _0807CFC8
	.align 2, 0
_0807CFBC: .4byte gUnknown_03005AB0
_0807CFC0:
	movs r0, #0xa0
	lsls r0, r0, #4
	mov r3, sl
	strh r0, [r3, #0xc]
_0807CFC8:
	ldr r0, [r5, #0x10]
	ldr r1, _0807CFFC @ =0xFFFFFBFF
	ands r0, r1
_0807CFCE:
	str r0, [r5, #0x10]
	ldr r1, [sp, #0xc]
	adds r1, #0x40
	movs r0, #8
	strb r0, [r1]
	movs r0, #0xef
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb7
	bl m4aSongNumStart
	ldr r0, _0807D000 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807D004 @ =sub_807D0B0
	str r0, [r1, #8]
	b _0807D044
	.align 2, 0
_0807CFFC: .4byte 0xFFFFFBFF
_0807D000: .4byte gCurTask
_0807D004: .4byte sub_807D0B0
_0807D008:
	ldr r3, [sp, #0xc]
	adds r3, #0x41
	ldrb r1, [r3]
	adds r0, r1, #0
	asrs r0, r6
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0807D044
	adds r0, r2, #0
	lsls r0, r6
	bics r1, r0
	strb r1, [r3]
	cmp r6, #0
	beq _0807D038
	ldr r4, _0807D034 @ =gUnknown_03005AB0
_0807D028:
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0807D044
	.align 2, 0
_0807D034: .4byte gUnknown_03005AB0
_0807D038:
	mov r2, sl
_0807D03A:
	ldr r0, [r2, #0x10]
	movs r3, #9
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r2, #0x10]
_0807D044:
	adds r6, #1
	ldr r0, _0807D08C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _0807D054
	b _0807CD5A
_0807D054:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807D078
	movs r4, #0x18
	ldrsh r0, [r5, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0807D078
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807D094
_0807D078:
	ldr r1, [sp, #0xc]
	ldrb r0, [r1, #8]
	ldr r2, [sp, #8]
	strb r0, [r2]
	ldr r0, _0807D090 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807D0A0
	.align 2, 0
_0807D08C: .4byte gUnknown_03005088
_0807D090: .4byte gCurTask
_0807D094:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0807D0A0:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807D0B0
sub_807D0B0: @ 0x0807D0B0
	push {r4, r5, r6, r7, lr}
	ldr r0, _0807D120 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r1, _0807D124 @ =0x0300000C
	adds r5, r6, r1
	ldr r7, [r4]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0807D128 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
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
	bhi _0807D112
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0807D112
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0807D12C
_0807D112:
	ldrb r0, [r4, #8]
	strb r0, [r7]
	ldr r0, [r3]
	bl TaskDestroy
	b _0807D166
	.align 2, 0
_0807D120: .4byte gCurTask
_0807D124: .4byte 0x0300000C
_0807D128: .4byte gCamera
_0807D12C:
	ldr r0, _0807D16C @ =0x03000040
	adds r1, r6, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807D15A
	movs r0, #0xef
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	ldr r0, _0807D170 @ =0x0300002C
	adds r1, r6, r0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0807D174 @ =0x0300002D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _0807D178 @ =sub_807CCFC
	str r0, [r1, #8]
_0807D15A:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0807D166:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807D16C: .4byte 0x03000040
_0807D170: .4byte 0x0300002C
_0807D174: .4byte 0x0300002D
_0807D178: .4byte sub_807CCFC

	thumb_func_start sub_807D17C
sub_807D17C: @ 0x0807D17C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable055
CreateEntity_Interactable055: @ 0x0807D190
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0807D224 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0807D228 @ =sub_807D3E8
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0807D22C @ =sub_807EA70
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r5, r2, r0
	movs r1, #0
	movs r7, #0
	mov r0, sb
	strh r0, [r3, #4]
	mov r0, sl
	strh r0, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #8]
	strb r4, [r3, #9]
	str r7, [r3, #0x40]
	str r7, [r3, #0x44]
	ldr r4, _0807D230 @ =0x0300004F
	adds r0, r2, r4
	strb r1, [r0]
	subs r4, #1
	adds r0, r2, r4
	strb r1, [r0]
	ldrb r0, [r6, #5]
	ldrb r1, [r6, #6]
	cmp r0, r1
	bls _0807D260
	movs r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _0807D238
	subs r4, #4
	adds r1, r2, r4
	movs r0, #4
	strh r0, [r1]
	ldr r1, _0807D234 @ =0x03000048
	adds r0, r2, r1
	strh r7, [r0]
	adds r4, #2
	adds r0, r2, r4
	b _0807D24C
	.align 2, 0
_0807D224: .4byte gCurrentLevel
_0807D228: .4byte sub_807D3E8
_0807D22C: .4byte sub_807EA70
_0807D230: .4byte 0x0300004F
_0807D234: .4byte 0x03000048
_0807D238:
	ldr r0, _0807D254 @ =0x0300004A
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	ldr r4, _0807D258 @ =0x03000048
	adds r1, r2, r4
	movs r0, #0x80
	strh r0, [r1]
	ldr r1, _0807D25C @ =0x0300004C
	adds r0, r2, r1
_0807D24C:
	strh r7, [r0]
	ldrb r1, [r6, #4]
	b _0807D2A4
	.align 2, 0
_0807D254: .4byte 0x0300004A
_0807D258: .4byte 0x03000048
_0807D25C: .4byte 0x0300004C
_0807D260:
	movs r0, #4
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _0807D28C
	ldr r4, _0807D280 @ =0x0300004A
	adds r0, r2, r4
	strh r7, [r0]
	ldr r0, _0807D284 @ =0x0300004C
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	ldr r1, _0807D288 @ =0x03000048
	adds r0, r2, r1
	strh r7, [r0]
	b _0807D2A2
	.align 2, 0
_0807D280: .4byte 0x0300004A
_0807D284: .4byte 0x0300004C
_0807D288: .4byte 0x03000048
_0807D28C:
	ldr r4, _0807D30C @ =0x0300004A
	adds r0, r2, r4
	strh r7, [r0]
	ldr r0, _0807D310 @ =0x0300004C
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	subs r4, #2
	adds r1, r2, r4
	movs r0, #0x80
	strh r0, [r1]
_0807D2A2:
	ldrb r1, [r6, #3]
_0807D2A4:
	adds r0, r3, #0
	adds r0, #0x50
	strb r1, [r0]
	adds r2, r0, #0
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r3, sb
	lsls r1, r3, #8
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r5, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r3, sl
	lsls r1, r3, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	mov r3, r8
	cmp r3, #2
	beq _0807D38E
	ldr r0, _0807D314 @ =gCurrentLevel
	ldrb r3, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0x10
	beq _0807D38E
	mov r0, r8
	cmp r0, #5
	beq _0807D2EA
	cmp r1, #0x11
	bne _0807D350
_0807D2EA:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _0807D2F6
	cmp r1, #0x11
	bne _0807D328
_0807D2F6:
	ldrb r0, [r2]
	cmp r0, #0
	beq _0807D318
	movs r0, #0x28
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x96
	lsls r0, r0, #2
	b _0807D39A
	.align 2, 0
_0807D30C: .4byte 0x0300004A
_0807D310: .4byte 0x0300004C
_0807D314: .4byte gCurrentLevel
_0807D318:
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _0807D324 @ =0x00000257
	b _0807D39A
	.align 2, 0
_0807D324: .4byte 0x00000257
_0807D328:
	ldrb r0, [r2]
	cmp r0, #0
	beq _0807D340
	movs r0, #0x28
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _0807D33C @ =0x00000207
	b _0807D39A
	.align 2, 0
_0807D33C: .4byte 0x00000207
_0807D340:
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _0807D34C @ =0x00000206
	b _0807D39A
	.align 2, 0
_0807D34C: .4byte 0x00000206
_0807D350:
	mov r1, r8
	cmp r1, #4
	bne _0807D37A
	ldrb r0, [r2]
	cmp r0, #0
	beq _0807D36C
	movs r0, #0x28
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _0807D368 @ =0x00000219
	b _0807D39A
	.align 2, 0
_0807D368: .4byte 0x00000219
_0807D36C:
	movs r0, #0x28
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x86
	lsls r0, r0, #2
	b _0807D39A
_0807D37A:
	mov r3, r8
	cmp r3, #3
	bne _0807D38E
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x83
	lsls r0, r0, #2
	b _0807D39A
_0807D38E:
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xf7
	lsls r0, r0, #1
_0807D39A:
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r4, [r0]
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r1, [r5, #8]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_807D3E8
sub_807D3E8: @ 0x0807D3E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	movs r0, #0
	str r0, [sp, #0x20]
	movs r1, #0
	str r1, [sp, #0x24]
	movs r2, #0
	str r2, [sp, #0x28]
	ldr r0, _0807D500 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov sl, r0
	ldr r3, _0807D504 @ =0x0300000C
	adds r3, r7, r3
	str r3, [sp, #0x10]
	ldr r4, [r0]
	str r4, [sp, #0x1c]
	ldr r0, _0807D508 @ =0x0300004A
	adds r1, r7, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0807D45A
	mov r3, sl
	ldr r6, [r3, #0x40]
	ldrb r3, [r4, #5]
	lsls r3, r3, #0xb
	ldr r5, _0807D50C @ =gSineTable
	adds r4, r0, #0
	ldr r2, _0807D510 @ =gUnknown_03005120
	ldr r1, _0807D514 @ =0x03000048
	adds r0, r7, r1
	ldrh r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r4, r0
	ldr r1, _0807D518 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	mov r3, sl
	str r0, [r3, #0x40]
	subs r6, r0, r6
	str r6, [sp, #0x20]
_0807D45A:
	ldr r4, _0807D51C @ =0x0300004C
	adds r1, r7, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0807D49E
	mov r3, sl
	ldr r6, [r3, #0x44]
	ldr r4, [sp, #0x1c]
	ldrb r3, [r4, #6]
	lsls r3, r3, #0xb
	ldr r5, _0807D50C @ =gSineTable
	adds r4, r0, #0
	ldr r2, _0807D510 @ =gUnknown_03005120
	ldr r1, _0807D514 @ =0x03000048
	adds r0, r7, r1
	ldrh r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r4, r0
	ldr r1, _0807D518 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	mov r3, sl
	str r0, [r3, #0x44]
	subs r6, r0, r6
	str r6, [sp, #0x24]
_0807D49E:
	mov r4, sl
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, [sp, #0x1c]
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _0807D520 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r1, #0x10
	str r4, [sp, #0x14]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r4, sl
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp, #0x10]
	strh r1, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsrs r1, r2, #0x10
	str r1, [sp, #0x18]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldr r3, [sp, #0x10]
	strh r2, [r3, #0x18]
	movs r5, #0
	ldr r7, _0807D524 @ =gUnknown_03005AB0
	ldr r6, _0807D528 @ =gUnknown_03005A20

	thumb_func_start sub_807D4EC
sub_807D4EC: @ 0x0807D4EC
	cmp r5, #0
	beq _0807D52C
	ldr r0, [r7, #0x10]
	movs r4, #0x80
	ands r0, r4
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	str r1, [sp, #0x30]
	b _0807D538
	.align 2, 0
_0807D500: .4byte gCurTask
_0807D504: .4byte 0x0300000C
_0807D508: .4byte 0x0300004A
_0807D50C: .4byte gSineTable
_0807D510: .4byte gUnknown_03005120
_0807D514: .4byte 0x03000048
_0807D518: .4byte 0x000003FF
_0807D51C: .4byte 0x0300004C
_0807D520: .4byte gCamera
_0807D524: .4byte gUnknown_03005AB0
_0807D528: .4byte gUnknown_03005A20
_0807D52C:
	ldr r0, [r6, #0x10]
	movs r2, #0x80
	ands r0, r2
	ldr r3, [sp, #0x14]
	lsls r3, r3, #0x10
	str r3, [sp, #0x30]
_0807D538:
	cmp r0, #0
	beq _0807D540
	bl _0807E2DE
_0807D540:
	cmp r5, #0
	beq _0807D554
	ldr r0, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0xf
	ands r0, r4
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	str r1, [sp, #0x30]
	b _0807D562
_0807D554:
	ldr r0, [r6, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0xf
	ands r0, r2
	ldr r3, [sp, #0x14]
	lsls r3, r3, #0x10
	str r3, [sp, #0x30]
_0807D562:
	cmp r0, #0
	beq _0807D56A
	bl _0807E2DE
_0807D56A:
	cmp r5, #0
	beq _0807D574
	ldr r4, [r7]
	mov sb, r4
	b _0807D578
_0807D574:
	ldr r0, [r6]
	mov sb, r0
_0807D578:
	mov r2, sl
	adds r2, #0x4e
	ldrb r1, [r2]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	str r2, [sp, #0x38]
	cmp r1, #0
	bne _0807D58C
	b _0807D92C
_0807D58C:
	cmp r5, #0
	beq _0807D59A
	ldr r0, [r7]
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	str r0, [r7]
	b _0807D5A2
_0807D59A:
	ldr r0, [r6]
	ldr r2, [sp, #0x20]
	adds r0, r0, r2
	str r0, [r6]
_0807D5A2:
	ldr r3, [sp, #0x24]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r3, r4
	cmp r5, #0
	beq _0807D5B6
	ldr r0, [r7, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
	b _0807D5BC
_0807D5B6:
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
_0807D5BC:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	ble _0807D6A2
	cmp r5, #0
	beq _0807D5CA
	ldr r0, [r7]
	b _0807D5CC
_0807D5CA:
	ldr r0, [r6]
_0807D5CC:
	asrs r0, r0, #8
	cmp r5, #0
	beq _0807D5DA
	adds r1, r0, #2
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807D5E0
_0807D5DA:
	adds r1, r0, #2
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807D5E0:
	adds r3, r1, r0
	cmp r5, #0
	beq _0807D5EA
	ldr r0, [r7, #4]
	b _0807D5EC
_0807D5EA:
	ldr r0, [r6, #4]
_0807D5EC:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D5FC
	ldr r4, _0807D5F8 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _0807D600
	.align 2, 0
_0807D5F8: .4byte gUnknown_03005AD7
_0807D5FC:
	ldr r0, _0807D61C @ =gUnknown_03005A47
	ldrb r2, [r0]
_0807D600:
	movs r4, #0
	str r4, [sp]
	ldr r0, _0807D620 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_803FA74
	adds r4, r0, #0
	cmp r5, #0
	beq _0807D624
	ldr r0, [r7]
	b _0807D626
	.align 2, 0
_0807D61C: .4byte gUnknown_03005A47
_0807D620: .4byte sub_803FE44
_0807D624:
	ldr r0, [r6]
_0807D626:
	asrs r0, r0, #8
	cmp r5, #0
	beq _0807D634
	adds r1, r0, #2
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807D63A
_0807D634:
	adds r1, r0, #2
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807D63A:
	adds r3, r1, r0
	cmp r5, #0
	beq _0807D644
	ldr r0, [r7, #4]
	b _0807D646
_0807D644:
	ldr r0, [r6, #4]
_0807D646:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D652
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807D656
_0807D652:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807D656:
	subs r1, r1, r0
	cmp r5, #0
	beq _0807D664
	ldr r0, _0807D660 @ =gUnknown_03005AD7
	b _0807D666
	.align 2, 0
_0807D660: .4byte gUnknown_03005AD7
_0807D664:
	ldr r0, _0807D694 @ =gUnknown_03005A47
_0807D666:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0807D698 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_803FA74
	cmp r0, r4
	ble _0807D67E
	adds r0, r4, #0
_0807D67E:
	cmp r0, #0
	blt _0807D684
	b _0807D782
_0807D684:
	lsls r1, r0, #8
	cmp r5, #0
	beq _0807D69C
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	b _0807D782
	.align 2, 0
_0807D694: .4byte gUnknown_03005A47
_0807D698: .4byte sub_803FE44
_0807D69C:
	ldr r0, [r6]
	adds r0, r0, r1
	b _0807D780
_0807D6A2:
	cmp r5, #0
	beq _0807D6AA
	ldr r0, [r7]
	b _0807D6AC
_0807D6AA:
	ldr r0, [r6]
_0807D6AC:
	asrs r0, r0, #8
	cmp r5, #0
	beq _0807D6BA
	subs r1, r0, #2
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807D6C0
_0807D6BA:
	subs r1, r0, #2
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807D6C0:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807D6CA
	ldr r0, [r7, #4]
	b _0807D6CC
_0807D6CA:
	ldr r0, [r6, #4]
_0807D6CC:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D6DC
	ldr r4, _0807D6D8 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _0807D6E0
	.align 2, 0
_0807D6D8: .4byte gUnknown_03005AD7
_0807D6DC:
	ldr r0, _0807D6FC @ =gUnknown_03005A47
	ldrb r2, [r0]
_0807D6E0:
	movs r4, #0
	str r4, [sp]
	ldr r0, _0807D700 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	adds r4, r0, #0
	cmp r5, #0
	beq _0807D704
	ldr r0, [r7]
	b _0807D706
	.align 2, 0
_0807D6FC: .4byte gUnknown_03005A47
_0807D700: .4byte sub_803FE44
_0807D704:
	ldr r0, [r6]
_0807D706:
	asrs r0, r0, #8
	cmp r5, #0
	beq _0807D714
	subs r1, r0, #2
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807D71A
_0807D714:
	subs r1, r0, #2
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807D71A:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807D724
	ldr r0, [r7, #4]
	b _0807D726
_0807D724:
	ldr r0, [r6, #4]
_0807D726:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D732
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807D736
_0807D732:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807D736:
	subs r1, r1, r0
	cmp r5, #0
	beq _0807D744
	ldr r0, _0807D740 @ =gUnknown_03005AD7
	b _0807D746
	.align 2, 0
_0807D740: .4byte gUnknown_03005AD7
_0807D744:
	ldr r0, _0807D774 @ =gUnknown_03005A47
_0807D746:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0807D778 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	cmp r0, r4
	ble _0807D760
	adds r0, r4, #0
_0807D760:
	cmp r0, #0
	bge _0807D782
	lsls r1, r0, #8
	cmp r5, #0
	beq _0807D77C
	ldr r0, [r7]
	subs r0, r0, r1
	str r0, [r7]
	b _0807D782
	.align 2, 0
_0807D774: .4byte gUnknown_03005A47
_0807D778: .4byte sub_803FE44
_0807D77C:
	ldr r0, [r6]
	subs r0, r0, r1
_0807D780:
	str r0, [r6]
_0807D782:
	cmp r5, #0
	beq _0807D78A
	ldr r0, [r7, #4]
	b _0807D78C
_0807D78A:
	ldr r0, [r6, #4]
_0807D78C:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D798
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807D79C
_0807D798:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807D79C:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807D7A6
	ldr r0, [r7]
	b _0807D7A8
_0807D7A6:
	ldr r0, [r6]
_0807D7A8:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D7B4
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807D7B8
_0807D7B4:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807D7B8:
	subs r1, r1, r0
	cmp r5, #0
	beq _0807D7C8
	ldr r4, _0807D7C4 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _0807D7CC
	.align 2, 0
_0807D7C4: .4byte gUnknown_03005AD7
_0807D7C8:
	ldr r0, _0807D7E8 @ =gUnknown_03005A47
	ldrb r2, [r0]
_0807D7CC:
	movs r4, #0
	str r4, [sp]
	ldr r0, _0807D7EC @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	adds r4, r0, #0
	cmp r5, #0
	beq _0807D7F0
	ldr r0, [r7, #4]
	b _0807D7F2
	.align 2, 0
_0807D7E8: .4byte gUnknown_03005A47
_0807D7EC: .4byte sub_803FF84
_0807D7F0:
	ldr r0, [r6, #4]
_0807D7F2:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D7FE
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807D802
_0807D7FE:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807D802:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807D80C
	ldr r0, [r7]
	b _0807D80E
_0807D80C:
	ldr r0, [r6]
_0807D80E:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D81A
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807D81E
_0807D81A:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807D81E:
	adds r1, r1, r0
	cmp r5, #0
	beq _0807D82C
	ldr r0, _0807D828 @ =gUnknown_03005AD7
	b _0807D82E
	.align 2, 0
_0807D828: .4byte gUnknown_03005AD7
_0807D82C:
	ldr r0, _0807D86C @ =gUnknown_03005A47
_0807D82E:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0807D870 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	cmp r0, r4
	ble _0807D848
	adds r0, r4, #0
_0807D848:
	cmp r0, #0
	bge _0807D8D4
	mov r0, sl
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [sp, #0x14]
	lsls r2, r2, #0x10
	str r2, [sp, #0x30]
	cmp r0, #0
	bne _0807D862
	bl _0807E16A
_0807D862:
	cmp r5, #0
	beq _0807D874
	mov r3, sb
	str r3, [r7]
	b _0807D878
	.align 2, 0
_0807D86C: .4byte gUnknown_03005A47
_0807D870: .4byte sub_803FF84
_0807D874:
	mov r4, sb
	str r4, [r6]
_0807D878:
	cmp r5, #0
	beq _0807D888
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807D892
_0807D888:
	ldr r0, [r6, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807D892:
	cmp r5, #0
	beq _0807D8A0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0807D8A8
_0807D8A0:
	ldr r0, [r6, #0x10]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r6, #0x10]
_0807D8A8:
	cmp r5, #0
	beq _0807D8C0
	ldr r0, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0xf
	orrs r0, r3
	str r0, [r7, #0x10]
	ldr r4, [sp, #0x14]
	lsls r4, r4, #0x10
	str r4, [sp, #0x30]
	bl _0807E16A
_0807D8C0:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
	ldr r2, [sp, #0x14]
	lsls r2, r2, #0x10
	str r2, [sp, #0x30]
	bl _0807E16A
_0807D8D4:
	mov r3, sl
	ldr r1, [r3, #0x40]
	asrs r1, r1, #8
	ldr r4, [sp, #0x14]
	lsls r2, r4, #0x10
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	ldr r1, [r3, #0x44]
	asrs r1, r1, #8
	ldr r3, [sp, #0x18]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r3, _0807D924 @ =gUnknown_03005A20
	str r2, [sp, #0x30]
	cmp r5, #0
	beq _0807D902
	ldr r3, _0807D928 @ =gUnknown_03005AB0
_0807D902:
	ldr r0, [sp, #0x10]
	mov r1, ip
	adds r2, r4, #0
	bl sub_800CE34
	cmp r0, #0
	beq _0807D914
	bl _0807E16A
_0807D914:
	movs r1, #1
	lsls r1, r5
	ldr r4, [sp, #0x38]
	ldrb r0, [r4]
	bics r0, r1
	bl sub_807E168
	.align 2, 0
_0807D924: .4byte gUnknown_03005A20
_0807D928: .4byte gUnknown_03005AB0
_0807D92C:
	add r2, sp, #8
	cmp r5, #0
	beq _0807D936
	ldrb r0, [r7, #0xe]
	b _0807D938
_0807D936:
	ldrb r0, [r6, #0xe]
_0807D938:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	adds r3, r0, #0
	cmp r5, #0
	beq _0807D94A
	ldrb r1, [r7, #0xf]
	b _0807D94C
_0807D94A:
	ldrb r1, [r6, #0xf]
_0807D94C:
	movs r0, #1
	subs r1, r0, r1
	mov r0, sp
	adds r0, #0xd
	strb r1, [r0]
	cmp r5, #0
	beq _0807D95E
	ldrb r0, [r7, #0xe]
	b _0807D960
_0807D95E:
	ldrb r0, [r6, #0xe]
_0807D960:
	adds r1, r0, #5
	mov r0, sp
	adds r0, #0xe
	strb r1, [r0]
	cmp r5, #0
	beq _0807D970
	ldrb r0, [r7, #0xf]
	b _0807D972
_0807D970:
	ldrb r0, [r6, #0xf]
_0807D972:
	subs r1, r0, #1
	mov r0, sp
	adds r0, #0xf
	strb r1, [r0]
	adds r0, r2, #0
	adds r1, r3, #0
	movs r2, #4
	bl memcpy
	cmp r5, #0
	beq _0807D98E
	ldr r0, [r7]
	mov sb, r0
	b _0807D992
_0807D98E:
	ldr r1, [r6]
	mov sb, r1
_0807D992:
	cmp r5, #0
	beq _0807D99C
	ldr r2, [r7, #4]
	str r2, [sp, #0x2c]
	b _0807D9A0
_0807D99C:
	ldr r3, [r6, #4]
	str r3, [sp, #0x2c]
_0807D9A0:
	cmp r5, #0
	beq _0807D9A8
	ldr r0, [r7, #4]
	b _0807D9AA
_0807D9A8:
	ldr r0, [r6, #4]
_0807D9AA:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D9B6
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807D9BA
_0807D9B6:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807D9BA:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807D9C4
	ldr r0, [r7]
	b _0807D9C6
_0807D9C4:
	ldr r0, [r6]
_0807D9C6:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807D9D2
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807D9D6
_0807D9D2:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807D9D6:
	subs r1, r1, r0
	cmp r5, #0
	beq _0807D9E8
	ldr r4, _0807D9E4 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _0807D9EC
	.align 2, 0
_0807D9E4: .4byte gUnknown_03005AD7
_0807D9E8:
	ldr r0, _0807DA08 @ =gUnknown_03005A47
	ldrb r2, [r0]
_0807D9EC:
	movs r4, #0
	str r4, [sp]
	ldr r0, _0807DA0C @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	adds r4, r0, #0
	cmp r5, #0
	beq _0807DA10
	ldr r0, [r7, #4]
	b _0807DA12
	.align 2, 0
_0807DA08: .4byte gUnknown_03005A47
_0807DA0C: .4byte sub_803FF84
_0807DA10:
	ldr r0, [r6, #4]
_0807DA12:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DA1E
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807DA22
_0807DA1E:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807DA22:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807DA2C
	ldr r0, [r7]
	b _0807DA2E
_0807DA2C:
	ldr r0, [r6]
_0807DA2E:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DA3A
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807DA3E
_0807DA3A:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807DA3E:
	adds r1, r1, r0
	cmp r5, #0
	beq _0807DA4C
	ldr r0, _0807DA48 @ =gUnknown_03005AD7
	b _0807DA4E
	.align 2, 0
_0807DA48: .4byte gUnknown_03005AD7
_0807DA4C:
	ldr r0, _0807DA9C @ =gUnknown_03005A47
_0807DA4E:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0807DAA0 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	cmp r0, r4
	ble _0807DA68
	adds r0, r4, #0
_0807DA68:
	cmp r0, #0
	bge _0807DAB4
	ldr r1, [sp, #0x14]
	lsls r3, r1, #0x10
	asrs r1, r3, #0x10
	mov r2, sl
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	adds r1, r1, r0
	mov r8, r1
	ldr r4, [sp, #0x18]
	lsls r2, r4, #0x10
	asrs r1, r2, #0x10
	mov r4, sl
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r4, r1, r0
	add r0, sp, #8
	mov ip, r0
	str r3, [sp, #0x30]
	str r2, [sp, #0x34]
	cmp r5, #0
	beq _0807DAA4
	str r7, [sp]
	b _0807DAA6
	.align 2, 0
_0807DA9C: .4byte gUnknown_03005A47
_0807DAA0: .4byte sub_803FF84
_0807DAA4:
	str r6, [sp]
_0807DAA6:
	ldr r0, [sp, #0x10]
	mov r1, r8
	adds r2, r4, #0
	mov r3, ip
	bl sub_807E914
	b _0807DAF6
_0807DAB4:
	mov r2, sl
	ldr r1, [r2, #0x40]
	asrs r1, r1, #8
	ldr r4, [sp, #0x14]
	lsls r3, r4, #0x10
	asrs r0, r3, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r1, [r2, #0x44]
	asrs r1, r1, #8
	ldr r0, [sp, #0x18]
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r1, _0807DB34 @ =gUnknown_03005A20
	mov ip, r1
	str r3, [sp, #0x30]
	str r2, [sp, #0x34]
	cmp r5, #0
	beq _0807DAE8
	ldr r2, _0807DB38 @ =gUnknown_03005AB0
	mov ip, r2
_0807DAE8:
	ldr r0, [sp, #0x10]
	mov r1, r8
	adds r2, r4, #0
	mov r3, ip
	bl sub_80096B0
	str r0, [sp, #0x28]
_0807DAF6:
	movs r0, #0xb8
	lsls r0, r0, #0xd
	ldr r3, [sp, #0x28]
	ands r0, r3
	cmp r0, #0
	bne _0807DB04
	b _0807E042
_0807DB04:
	mov r2, sl
	adds r2, #0x4f
	movs r0, #1
	lsls r0, r5
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	bne _0807DB1E
	b _0807DC20
_0807DB1E:
	mov r0, sl
	adds r0, #0x4a
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bne _0807DB2C
	b _0807E16A
_0807DB2C:
	cmp r5, #0
	beq _0807DB3C
	ldr r0, [r7]
	b _0807DB3E
	.align 2, 0
_0807DB34: .4byte gUnknown_03005A20
_0807DB38: .4byte gUnknown_03005AB0
_0807DB3C:
	ldr r0, [r6]
_0807DB3E:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DB4A
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807DB4E
_0807DB4A:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807DB4E:
	adds r3, r1, r0
	cmp r5, #0
	beq _0807DB58
	ldr r0, [r7, #4]
	b _0807DB5A
_0807DB58:
	ldr r0, [r6, #4]
_0807DB5A:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DB6C
	ldr r0, _0807DB68 @ =gUnknown_03005AD7
	ldrb r2, [r0]
	b _0807DB70
	.align 2, 0
_0807DB68: .4byte gUnknown_03005AD7
_0807DB6C:
	ldr r4, _0807DB94 @ =gUnknown_03005A47
	ldrb r2, [r4]
_0807DB70:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0807DB98 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_803FA74
	cmp r0, #0
	bgt _0807DBC4
	cmp r5, #0
	beq _0807DB9C
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807DBA6
	.align 2, 0
_0807DB94: .4byte gUnknown_03005A47
_0807DB98: .4byte sub_803FE44
_0807DB9C:
	ldr r0, [r6, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807DBA6:
	cmp r5, #0
	beq _0807DBB4
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0807DBBC
_0807DBB4:
	ldr r0, [r6, #0x10]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r6, #0x10]
_0807DBBC:
	cmp r5, #0
	beq _0807DBC2
	b _0807DCCC
_0807DBC2:
	b _0807DCD8
_0807DBC4:
	cmp r5, #0
	beq _0807DBD4
	ldrh r0, [r7, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0807DBE0
	b _0807E16A
_0807DBD4:
	ldrh r0, [r6, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0807DBE0
	b _0807E16A
_0807DBE0:
	cmp r5, #0
	beq _0807DBE8
	ldr r0, [r7, #0x10]
	b _0807DBEA
_0807DBE8:
	ldr r0, [r6, #0x10]
_0807DBEA:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0807DBF4
	b _0807E16A
_0807DBF4:
	cmp r5, #0
	beq _0807DC08
	ldr r0, [r7]
	ldr r1, _0807DC04 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r7]
	b _0807DC10
	.align 2, 0
_0807DC04: .4byte 0xFFFFFF00
_0807DC08:
	ldr r0, [r6]
	ldr r2, _0807DC1C @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r6]
_0807DC10:
	cmp r5, #0
	beq _0807DC16
	b _0807DD32
_0807DC16:
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	b _0807E03C
	.align 2, 0
_0807DC1C: .4byte 0xFFFFFF00
_0807DC20:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ldr r3, [sp, #0x28]
	ands r0, r3
	cmp r0, #0
	bne _0807DC2E
	b _0807DD42
_0807DC2E:
	mov r0, sl
	adds r0, #0x4a
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bne _0807DC3C
	b _0807E16A
_0807DC3C:
	cmp r5, #0
	beq _0807DC44
	ldr r0, [r7]
	b _0807DC46
_0807DC44:
	ldr r0, [r6]
_0807DC46:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DC52
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807DC56
_0807DC52:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807DC56:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807DC60
	ldr r0, [r7, #4]
	b _0807DC62
_0807DC60:
	ldr r0, [r6, #4]
_0807DC62:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DC74
	ldr r0, _0807DC70 @ =gUnknown_03005AD7
	ldrb r2, [r0]
	b _0807DC78
	.align 2, 0
_0807DC70: .4byte gUnknown_03005AD7
_0807DC74:
	ldr r4, _0807DCA0 @ =gUnknown_03005A47
	ldrb r2, [r4]
_0807DC78:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0807DCA4 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	cmp r0, #0
	bge _0807DCE4
	cmp r5, #0
	beq _0807DCA8
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807DCB2
	.align 2, 0
_0807DCA0: .4byte gUnknown_03005A47
_0807DCA4: .4byte sub_803FE44
_0807DCA8:
	ldr r0, [r6, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807DCB2:
	cmp r5, #0
	beq _0807DCC0
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0807DCC8
_0807DCC0:
	ldr r0, [r6, #0x10]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r6, #0x10]
_0807DCC8:
	cmp r5, #0
	beq _0807DCD8
_0807DCCC:
	ldr r0, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0xf
	orrs r0, r3
	str r0, [r7, #0x10]
	b _0807E16A
_0807DCD8:
	ldr r0, [r6, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0xf
	orrs r0, r4
	str r0, [r6, #0x10]
	b _0807E16A
_0807DCE4:
	cmp r5, #0
	beq _0807DCF4
	ldrh r0, [r7, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0807DD00
	b _0807E16A
_0807DCF4:
	ldrh r0, [r6, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0807DD00
	b _0807E16A
_0807DD00:
	cmp r5, #0
	beq _0807DD08
	ldr r0, [r7, #0x10]
	b _0807DD0A
_0807DD08:
	ldr r0, [r6, #0x10]
_0807DD0A:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0807DD14
	b _0807E16A
_0807DD14:
	cmp r5, #0
	beq _0807DD24
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r7]
	b _0807DD2E
_0807DD24:
	ldr r0, [r6]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r6]
_0807DD2E:
	cmp r5, #0
	beq _0807DD3C
_0807DD32:
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0807E16A
_0807DD3C:
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	b _0807E03C
_0807DD42:
	movs r0, #0x80
	lsls r0, r0, #9
	ldr r3, [sp, #0x28]
	ands r0, r3
	cmp r0, #0
	bne _0807DD50
	b _0807DEC6
_0807DD50:
	cmp r5, #0
	beq _0807DD5A
	mov r4, sb
	str r4, [r7]
	b _0807DD5E
_0807DD5A:
	mov r0, sb
	str r0, [r6]
_0807DD5E:
	mov r0, sl
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0807DD6C
	b _0807E16A
_0807DD6C:
	cmp r5, #0
	beq _0807DD74
	ldr r0, [r7, #4]
	b _0807DD76
_0807DD74:
	ldr r0, [r6, #4]
_0807DD76:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DD82
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807DD86
_0807DD82:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807DD86:
	adds r3, r1, r0
	cmp r5, #0
	beq _0807DD90
	ldr r0, [r7]
	b _0807DD92
_0807DD90:
	ldr r0, [r6]
_0807DD92:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DD9E
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807DDA2
_0807DD9E:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807DDA2:
	subs r1, r1, r0
	cmp r5, #0
	beq _0807DDB4
	ldr r4, _0807DDB0 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _0807DDB8
	.align 2, 0
_0807DDB0: .4byte gUnknown_03005AD7
_0807DDB4:
	ldr r0, _0807DDD4 @ =gUnknown_03005A47
	ldrb r2, [r0]
_0807DDB8:
	movs r4, #0
	str r4, [sp]
	ldr r0, _0807DDD8 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_803FA74
	adds r4, r0, #0
	cmp r5, #0
	beq _0807DDDC
	ldr r0, [r7, #4]
	b _0807DDDE
	.align 2, 0
_0807DDD4: .4byte gUnknown_03005A47
_0807DDD8: .4byte sub_803FF84
_0807DDDC:
	ldr r0, [r6, #4]
_0807DDDE:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DDEA
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807DDEE
_0807DDEA:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807DDEE:
	adds r3, r1, r0
	cmp r5, #0
	beq _0807DDF8
	ldr r0, [r7]
	b _0807DDFA
_0807DDF8:
	ldr r0, [r6]
_0807DDFA:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DE06
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807DE0A
_0807DE06:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807DE0A:
	adds r1, r1, r0
	cmp r5, #0
	beq _0807DE18
	ldr r0, _0807DE14 @ =gUnknown_03005AD7
	b _0807DE1A
	.align 2, 0
_0807DE14: .4byte gUnknown_03005AD7
_0807DE18:
	ldr r0, _0807DE60 @ =gUnknown_03005A47
_0807DE1A:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0807DE64 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_803FA74
	cmp r0, r4
	ble _0807DE32
	adds r0, r4, #0
_0807DE32:
	cmp r0, #0
	ble _0807DE38
	b _0807E16A
_0807DE38:
	ldr r1, [sp, #0x34]
	asrs r0, r1, #0x10
	mov r2, sl
	ldr r1, [r2, #0x44]
	asrs r1, r1, #8
	adds r0, r0, r1
	ldr r1, [sp, #0x10]
	adds r1, #0x2f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, r0, r1
	cmp r5, #0
	beq _0807DE68
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0807DE72
	b _0807E16A
	.align 2, 0
_0807DE60: .4byte gUnknown_03005A47
_0807DE64: .4byte sub_803FF84
_0807DE68:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0807DE72
	b _0807E16A
_0807DE72:
	cmp r5, #0
	beq _0807DE7C
	mov r3, sb
	str r3, [r7]
	b _0807DE80
_0807DE7C:
	mov r4, sb
	str r4, [r6]
_0807DE80:
	cmp r5, #0
	beq _0807DE8A
	ldr r0, [sp, #0x2c]
	str r0, [r7, #4]
	b _0807DE8E
_0807DE8A:
	ldr r1, [sp, #0x2c]
	str r1, [r6, #4]
_0807DE8E:
	cmp r5, #0
	beq _0807DE9E
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807DEA8
_0807DE9E:
	ldr r0, [r6, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807DEA8:
	cmp r5, #0
	beq _0807DEB6
	ldr r0, [r7, #0x10]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r7, #0x10]
	b _0807DEBE
_0807DEB6:
	ldr r0, [r6, #0x10]
	movs r3, #0x80
	orrs r0, r3
	str r0, [r6, #0x10]
_0807DEBE:
	cmp r5, #0
	beq _0807DEC4
	b _0807E02A
_0807DEC4:
	b _0807E036
_0807DEC6:
	mov r0, sl
	adds r0, #0x4c
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0807DED4
	b _0807E16A
_0807DED4:
	cmp r5, #0
	beq _0807DEDC
	ldr r0, [r7, #4]
	b _0807DEDE
_0807DEDC:
	ldr r0, [r6, #4]
_0807DEDE:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DEEA
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807DEEE
_0807DEEA:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807DEEE:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807DEF8
	ldr r0, [r7]
	b _0807DEFA
_0807DEF8:
	ldr r0, [r6]
_0807DEFA:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DF06
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807DF0A
_0807DF06:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807DF0A:
	subs r1, r1, r0
	cmp r5, #0
	beq _0807DF1C
	ldr r4, _0807DF18 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _0807DF20
	.align 2, 0
_0807DF18: .4byte gUnknown_03005AD7
_0807DF1C:
	ldr r0, _0807DF3C @ =gUnknown_03005A47
	ldrb r2, [r0]
_0807DF20:
	movs r4, #0
	str r4, [sp]
	ldr r0, _0807DF40 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	adds r4, r0, #0
	cmp r5, #0
	beq _0807DF44
	ldr r0, [r7, #4]
	b _0807DF46
	.align 2, 0
_0807DF3C: .4byte gUnknown_03005A47
_0807DF40: .4byte sub_803FF84
_0807DF44:
	ldr r0, [r6, #4]
_0807DF46:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DF52
	movs r0, #0xf
	ldrsb r0, [r7, r0]
	b _0807DF56
_0807DF52:
	movs r0, #0xf
	ldrsb r0, [r6, r0]
_0807DF56:
	subs r3, r1, r0
	cmp r5, #0
	beq _0807DF60
	ldr r0, [r7]
	b _0807DF62
_0807DF60:
	ldr r0, [r6]
_0807DF62:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0807DF6E
	movs r0, #0xe
	ldrsb r0, [r7, r0]
	b _0807DF72
_0807DF6E:
	movs r0, #0xe
	ldrsb r0, [r6, r0]
_0807DF72:
	adds r1, r1, r0
	cmp r5, #0
	beq _0807DF80
	ldr r0, _0807DF7C @ =gUnknown_03005AD7
	b _0807DF82
	.align 2, 0
_0807DF7C: .4byte gUnknown_03005AD7
_0807DF80:
	ldr r0, _0807DFC8 @ =gUnknown_03005A47
_0807DF82:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0807DFCC @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	cmp r0, r4
	ble _0807DF9C
	adds r0, r4, #0
_0807DF9C:
	cmp r0, #0
	blt _0807DFA2
	b _0807E16A
_0807DFA2:
	ldr r1, [sp, #0x34]
	asrs r0, r1, #0x10
	mov r2, sl
	ldr r1, [r2, #0x44]
	asrs r1, r1, #8
	adds r0, r0, r1
	ldr r1, [sp, #0x10]
	adds r1, #0x2f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, r0, r1
	cmp r5, #0
	beq _0807DFD0
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0807DFDA
	b _0807E16A
	.align 2, 0
_0807DFC8: .4byte gUnknown_03005A47
_0807DFCC: .4byte sub_803FF84
_0807DFD0:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0807DFDA
	b _0807E16A
_0807DFDA:
	cmp r5, #0
	beq _0807DFE4
	mov r3, sb
	str r3, [r7]
	b _0807DFE8
_0807DFE4:
	mov r4, sb
	str r4, [r6]
_0807DFE8:
	cmp r5, #0
	beq _0807DFF2
	ldr r0, [sp, #0x2c]
	str r0, [r7, #4]
	b _0807DFF6
_0807DFF2:
	ldr r1, [sp, #0x2c]
	str r1, [r6, #4]
_0807DFF6:
	cmp r5, #0
	beq _0807E006
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807E010
_0807E006:
	ldr r0, [r6, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807E010:
	cmp r5, #0
	beq _0807E01E
	ldr r0, [r7, #0x10]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r7, #0x10]
	b _0807E026
_0807E01E:
	ldr r0, [r6, #0x10]
	movs r3, #0x80
	orrs r0, r3
	str r0, [r6, #0x10]
_0807E026:
	cmp r5, #0
	beq _0807E036
_0807E02A:
	ldr r0, [r7, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0xf
	orrs r0, r4
	str r0, [r7, #0x10]
	b _0807E16A
_0807E036:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
_0807E03C:
	orrs r0, r1
	str r0, [r6, #0x10]
	b _0807E16A
_0807E042:
	mov r2, sl
	adds r2, #0x4f
	ldrb r1, [r2]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _0807E054
	b _0807E16A
_0807E054:
	cmp r5, #0
	beq _0807E068
	ldr r3, _0807E064 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0xe
	beq _0807E074
	b _0807E16A
	.align 2, 0
_0807E064: .4byte gUnknown_03005AF0
_0807E068:
	ldr r4, _0807E088 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0xe
	beq _0807E074
	b _0807E16A
_0807E074:
	movs r0, #1
	lsls r0, r5
	ldrb r1, [r2]
	bics r1, r0
	movs r0, #0
	strb r1, [r2]
	cmp r5, #0
	beq _0807E08C
	strh r0, [r7, #0xc]
	b _0807E08E
	.align 2, 0
_0807E088: .4byte gUnknown_03005A60
_0807E08C:
	strh r5, [r6, #0xc]
_0807E08E:
	ldr r3, _0807E0AC @ =gUnknown_03005A20
	adds r0, r3, #0
	cmp r5, #0
	beq _0807E098
	ldr r0, _0807E0B0 @ =gUnknown_03005AB0
_0807E098:
	bl sub_8046CEC
	cmp r5, #0
	beq _0807E0B4
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807E0BE
	.align 2, 0
_0807E0AC: .4byte gUnknown_03005A20
_0807E0B0: .4byte gUnknown_03005AB0
_0807E0B4:
	ldr r0, [r6, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0807E0BE:
	cmp r5, #0
	beq _0807E0D4
	ldr r1, _0807E0D0 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0xe
	beq _0807E0DE
	b _0807E16A
	.align 2, 0
_0807E0D0: .4byte gUnknown_03005AF0
_0807E0D4:
	ldr r2, _0807E0F0 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0xe
	bne _0807E16A
_0807E0DE:
	cmp r5, #0
	beq _0807E0F8
	ldr r3, _0807E0F4 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	bne _0807E102
	b _0807E126
	.align 2, 0
_0807E0F0: .4byte gUnknown_03005A60
_0807E0F4: .4byte gUnknown_03005B09
_0807E0F8:
	ldr r4, _0807E10C @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #3
	beq _0807E126
_0807E102:
	cmp r5, #0
	beq _0807E110
	ldr r0, [r7, #0x10]
	b _0807E112
	.align 2, 0
_0807E10C: .4byte gUnknown_03005A79
_0807E110:
	ldr r0, [r6, #0x10]
_0807E112:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807E120
	cmp r5, #0
	bne _0807E13C
	b _0807E148
_0807E120:
	cmp r5, #0
	bne _0807E158
	b _0807E164
_0807E126:
	cmp r5, #0
	beq _0807E12E
	ldr r0, [r7, #0x10]
	b _0807E130
_0807E12E:
	ldr r0, [r6, #0x10]
_0807E130:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0807E154
	cmp r5, #0
	beq _0807E148
_0807E13C:
	movs r0, #4
	ldr r1, _0807E144 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _0807E16A
	.align 2, 0
_0807E144: .4byte gUnknown_03005AF0
_0807E148:
	movs r0, #4
	ldr r2, _0807E150 @ =gUnknown_03005A60
	strb r0, [r2]
	b _0807E16A
	.align 2, 0
_0807E150: .4byte gUnknown_03005A60
_0807E154:
	cmp r5, #0
	beq _0807E164
_0807E158:
	movs r0, #5
	ldr r3, _0807E160 @ =gUnknown_03005AF0
	strb r0, [r3]
	b _0807E16A
	.align 2, 0
_0807E160: .4byte gUnknown_03005AF0
_0807E164:
	movs r0, #5
	ldr r4, _0807E178 @ =gUnknown_03005A60
sub_807E168:
	strb r0, [r4]
_0807E16A:
	cmp r5, #0
	beq _0807E17C
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	b _0807E182
	.align 2, 0
_0807E178: .4byte gUnknown_03005A60
_0807E17C:
	ldr r0, [r6, #0x10]
	movs r2, #0x80
	ands r0, r2
_0807E182:
	cmp r0, #0
	beq _0807E188
	b _0807E2DE
_0807E188:
	cmp r5, #0
	beq _0807E196
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bge _0807E1A0
	b _0807E2DE
_0807E196:
	movs r4, #0xa
	ldrsh r0, [r6, r4]
	cmp r0, #0
	bge _0807E1A0
	b _0807E2DE
_0807E1A0:
	ldr r0, [sp, #0x18]
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	mov r3, sl
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	str r2, [sp, #0x34]
	cmp r5, #0
	beq _0807E1BE
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _0807E1C8
	b _0807E2DE
_0807E1BE:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _0807E1C8
	b _0807E2DE
_0807E1C8:
	add r2, sp, #8
	cmp r5, #0
	beq _0807E1D2
	ldrb r0, [r7, #0xe]
	b _0807E1D4
_0807E1D2:
	ldrb r0, [r6, #0xe]
_0807E1D4:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	adds r3, r0, #0
	cmp r5, #0
	beq _0807E1E6
	ldrb r1, [r7, #0xf]
	b _0807E1E8
_0807E1E6:
	ldrb r1, [r6, #0xf]
_0807E1E8:
	movs r0, #1
	subs r1, r0, r1
	mov r0, sp
	adds r0, #0xd
	strb r1, [r0]
	cmp r5, #0
	beq _0807E1FA
	ldrb r0, [r7, #0xe]
	b _0807E1FC
_0807E1FA:
	ldrb r0, [r6, #0xe]
_0807E1FC:
	adds r1, r0, #5
	mov r0, sp
	adds r0, #0xe
	strb r1, [r0]
	cmp r5, #0
	beq _0807E20C
	ldrb r0, [r7, #0xf]
	b _0807E20E
_0807E20C:
	ldrb r0, [r6, #0xf]
_0807E20E:
	subs r1, r0, #1
	mov r0, sp
	adds r0, #0xf
	strb r1, [r0]
	adds r0, r2, #0
	adds r1, r3, #0
	movs r2, #4
	bl memcpy
	ldr r4, [sp, #0x30]
	asrs r1, r4, #0x10
	mov r2, sl
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	adds r4, r1, r0
	ldr r3, [sp, #0x34]
	asrs r1, r3, #0x10
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	adds r2, r1, r0
	add r3, sp, #8
	cmp r5, #0
	beq _0807E240
	str r7, [sp]
	b _0807E242
_0807E240:
	str r6, [sp]
_0807E242:
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	bl sub_807E914
	cmp r5, #0
	beq _0807E254
	ldr r4, [r7]
	mov sb, r4
	b _0807E258
_0807E254:
	ldr r0, [r6]
	mov sb, r0
_0807E258:
	ldr r3, _0807E2B0 @ =gUnknown_03005A20
	mov r2, sl
	ldr r1, [r2, #0x40]
	asrs r1, r1, #8
	ldr r4, [sp, #0x30]
	asrs r0, r4, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r1, [r2, #0x44]
	asrs r1, r1, #8
	ldr r2, [sp, #0x34]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r5, #0
	beq _0807E27E
	ldr r3, _0807E2B4 @ =gUnknown_03005AB0
_0807E27E:
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	bl sub_80096B0
	str r0, [sp, #0x28]
	movs r0, #8
	ldr r3, [sp, #0x28]
	ands r0, r3
	cmp r0, #0
	beq _0807E2C4
	movs r0, #1
	lsls r0, r5
	ldr r4, [sp, #0x38]
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	cmp r5, #0
	beq _0807E2B8
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r7, #4]
	b _0807E2DE
	.align 2, 0
_0807E2B0: .4byte gUnknown_03005A20
_0807E2B4: .4byte gUnknown_03005AB0
_0807E2B8:
	ldr r0, [r6, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r6, #4]
	b _0807E2DE
_0807E2C4:
	movs r0, #0x80
	lsls r0, r0, #9
	ldr r3, [sp, #0x28]
	ands r0, r3
	cmp r0, #0
	beq _0807E2DE
	cmp r5, #0
	beq _0807E2DA
	mov r4, sb
	str r4, [r7]
	b _0807E2DE
_0807E2DA:
	mov r0, sb
	str r0, [r6]
_0807E2DE:
	adds r5, #1
	ldr r0, _0807E360 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _0807E2F0
	bl sub_807D4EC
_0807E2F0:
	ldr r2, [sp, #0x30]
	asrs r1, r2, #0x10
	ldr r3, _0807E364 @ =gCamera
	movs r0, #0
	ldrsh r4, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r4, r2
	cmp r1, r0
	bgt _0807E328
	adds r0, r4, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0807E328
	ldr r4, [sp, #0x18]
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0807E328
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0807E36C
_0807E328:
	ldr r4, [sp, #0x10]
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807E34E
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0807E34E
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807E36C
_0807E34E:
	mov r3, sl
	ldrb r0, [r3, #8]
	ldr r4, [sp, #0x1c]
	strb r0, [r4]
	ldr r0, _0807E368 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807E378
	.align 2, 0
_0807E360: .4byte gUnknown_03005088
_0807E364: .4byte gCamera
_0807E368: .4byte gCurTask
_0807E36C:
	ldr r0, [sp, #0x10]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #0x10]
	bl DisplaySprite
_0807E378:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable057
CreateEntity_Interactable057: @ 0x0807E388
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
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
	ldr r0, _0807E468 @ =sub_807E488
	ldr r1, _0807E46C @ =sub_807EA70
	str r1, [sp]
	movs r1, #0x54
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _0807E470 @ =0x0300000C
	adds r4, r2, r1
	movs r7, #0
	mov sl, r7
	movs r3, #0
	strh r5, [r0, #4]
	strh r6, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r7, r8
	strb r7, [r0, #9]
	str r3, [r0, #0x40]
	str r3, [r0, #0x44]
	ldr r7, _0807E474 @ =0x0300004E
	adds r1, r2, r7
	mov r7, sl
	strb r7, [r1]
	str r3, [r0, #0x3c]
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
	movs r0, #0xfe
	strb r0, [r1]
	movs r0, #0x14
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl VramMalloc
	str r0, [r4, #4]
	ldr r0, _0807E478 @ =0x000001ED
	strh r0, [r4, #0xa]
	ldr r2, [sp, #4]
	ldr r7, _0807E47C @ =0x0300002C
	adds r0, r2, r7
	mov r1, sl
	strb r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	ldr r3, [sp, #8]
	strh r3, [r4, #8]
	strh r3, [r4, #0x14]
	strh r3, [r4, #0x1c]
	adds r7, #1
	adds r1, r2, r7
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0807E480 @ =0x0300002E
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0807E484 @ =0x03000031
	adds r2, r2, r1
	mov r7, sl
	strb r7, [r2]
	subs r0, #0x11
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E468: .4byte sub_807E488
_0807E46C: .4byte sub_807EA70
_0807E470: .4byte 0x0300000C
_0807E474: .4byte 0x0300004E
_0807E478: .4byte 0x000001ED
_0807E47C: .4byte 0x0300002C
_0807E480: .4byte 0x0300002E
_0807E484: .4byte 0x03000031

	thumb_func_start sub_807E488
sub_807E488: @ 0x0807E488
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _0807E4E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _0807E4E4 @ =0x0300000C
	adds r0, r0, r1
	mov sl, r0
	mov r1, r8
	ldr r1, [r1]
	str r1, [sp, #8]
	mov r2, r8
	ldrb r0, [r2, #8]
	lsls r0, r0, #3
	ldrh r1, [r2, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r4, [sp, #8]
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r2, #0x44]
	cmp r0, #0
	beq _0807E4F0
	cmp r0, #0
	bge _0807E4E8
	ldr r0, [r2, #0x3c]
	adds r0, #0x30
	str r0, [r2, #0x3c]
	b _0807E4F0
	.align 2, 0
_0807E4E0: .4byte gCurTask
_0807E4E4: .4byte 0x0300000C
_0807E4E8:
	mov r1, r8
	ldr r0, [r1, #0x3c]
	subs r0, #0x30
	str r0, [r1, #0x3c]
_0807E4F0:
	ldr r2, _0807E534 @ =gCamera
	ldrh r1, [r2]
	lsls r3, r3, #0x10
	asrs r0, r3, #0x10
	subs r0, r0, r1
	mov r1, sl
	strh r0, [r1, #0x16]
	ldrh r0, [r2, #2]
	lsls r2, r4, #0x10
	asrs r1, r2, #0x10
	subs r1, r1, r0
	mov r4, r8
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	mov r0, sl
	strh r1, [r0, #0x18]
	movs r4, #0
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r6, _0807E538 @ =gUnknown_03005AB0
	ldr r7, _0807E53C @ =gUnknown_03005A20
	movs r1, #0
	str r1, [sp, #0x14]
	movs r2, #9
	rsbs r2, r2, #0
	mov sb, r2
_0807E526:
	ldr r1, [sp, #0x14]
	add r1, sp
	cmp r4, #0
	beq _0807E540
	movs r3, #0xa
	ldrsh r0, [r6, r3]
	b _0807E544
	.align 2, 0
_0807E534: .4byte gCamera
_0807E538: .4byte gUnknown_03005AB0
_0807E53C: .4byte gUnknown_03005A20
_0807E540:
	movs r2, #0xa
	ldrsh r0, [r7, r2]
_0807E544:
	str r0, [r1]
	cmp r4, #0
	beq _0807E55C
	ldr r0, [r6, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0807E56A
	ldr r3, _0807E558 @ =gUnknown_03005A20
	b _0807E7D4
	.align 2, 0
_0807E558: .4byte gUnknown_03005A20
_0807E55C:
	ldr r1, [r7, #0x10]
	movs r0, #8
	ands r1, r0
	ldr r3, _0807E578 @ =gUnknown_03005A20
	cmp r1, #0
	bne _0807E56A
	b _0807E7D4
_0807E56A:
	cmp r4, #0
	beq _0807E57C
	ldr r0, [r6, #0x28]
	cmp r0, sl
	beq _0807E586
	ldr r3, _0807E578 @ =gUnknown_03005A20
	b _0807E7D4
	.align 2, 0
_0807E578: .4byte gUnknown_03005A20
_0807E57C:
	ldr r0, [r7, #0x28]
	ldr r3, _0807E590 @ =gUnknown_03005A20
	cmp r0, sl
	beq _0807E586
	b _0807E7D4
_0807E586:
	cmp r4, #0
	beq _0807E594
	movs r0, #0
	strh r0, [r6, #0xa]
	b _0807E596
	.align 2, 0
_0807E590: .4byte gUnknown_03005A20
_0807E594:
	strh r4, [r7, #0xa]
_0807E596:
	mov r3, r8
	ldr r1, [r3, #0x3c]
	cmp r4, #0
	beq _0807E5A6
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
	b _0807E5AC
_0807E5A6:
	ldr r0, [r7, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
_0807E5AC:
	ldr r0, _0807E5C0 @ =gUnknown_030060E0
	ldrh r1, [r0, #2]
	adds r2, r0, #0
	cmp r4, #0
	beq _0807E5C4
	ldrh r0, [r6, #0x3a]
	ands r0, r1
	cmp r0, #0
	bne _0807E5CC
	b _0807E638
	.align 2, 0
_0807E5C0: .4byte gUnknown_030060E0
_0807E5C4:
	ldrh r0, [r7, #0x3a]
	ands r0, r1
	cmp r0, #0
	beq _0807E638
_0807E5CC:
	cmp r4, #0
	beq _0807E5DC
	ldrh r0, [r6, #0x38]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807E5E6
	b _0807E638
_0807E5DC:
	ldrh r0, [r7, #0x38]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807E638
_0807E5E6:
	cmp r4, #0
	beq _0807E5FC
	ldr r1, _0807E5F8 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	beq _0807E608
	b _0807E824
	.align 2, 0
_0807E5F8: .4byte gUnknown_03005B09
_0807E5FC:
	ldr r2, _0807E618 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	beq _0807E608
	b _0807E824
_0807E608:
	cmp r4, #0
	beq _0807E61C
	ldr r0, [r6, #0x10]
	mov r3, sb
	ands r0, r3
	str r0, [r6, #0x10]
	b _0807E624
	.align 2, 0
_0807E618: .4byte gUnknown_03005A79
_0807E61C:
	ldr r0, [r7, #0x10]
	mov r1, sb
	ands r0, r1
	str r0, [r7, #0x10]
_0807E624:
	cmp r4, #0
	beq _0807E630
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r6, #0xa]
	b _0807E824
_0807E630:
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r7, #0xa]
	b _0807E824
_0807E638:
	ldrh r1, [r2]
	cmp r4, #0
	beq _0807E648
	ldrh r0, [r6, #0x3a]
	ands r0, r1
	cmp r0, #0
	bne _0807E650
	b _0807E6D8
_0807E648:
	ldrh r0, [r7, #0x3a]
	ands r0, r1
	cmp r0, #0
	beq _0807E6D8
_0807E650:
	cmp r4, #0
	beq _0807E660
	ldrh r0, [r6, #0x38]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807E66A
	b _0807E6D8
_0807E660:
	ldrh r0, [r7, #0x38]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807E6D8
_0807E66A:
	cmp r4, #0
	beq _0807E680
	ldr r2, _0807E67C @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _0807E68A
	b _0807E6C0
	.align 2, 0
_0807E67C: .4byte gUnknown_03005B09
_0807E680:
	ldr r3, _0807E6B4 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	beq _0807E6C0
_0807E68A:
	ldr r0, _0807E6B8 @ =gUnknown_03005A20
	cmp r4, #0
	beq _0807E692
	ldr r0, _0807E6BC @ =gUnknown_03005AB0
_0807E692:
	movs r1, #9
	bl sub_804516C
	ldr r1, _0807E6B8 @ =gUnknown_03005A20
	cmp r4, #0
	beq _0807E6A0
	ldr r1, _0807E6BC @ =gUnknown_03005AB0
_0807E6A0:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0807E6B8 @ =gUnknown_03005A20
	cmp r4, #0
	beq _0807E6AC
	ldr r1, _0807E6BC @ =gUnknown_03005AB0
_0807E6AC:
	movs r0, #9
	strb r0, [r1, #0xf]
	b _0807E824
	.align 2, 0
_0807E6B4: .4byte gUnknown_03005A79
_0807E6B8: .4byte gUnknown_03005A20
_0807E6BC: .4byte gUnknown_03005AB0
_0807E6C0:
	cmp r4, #0
	beq _0807E6CE
	ldr r0, [r6, #0x10]
	mov r1, sb
	ands r0, r1
	str r0, [r6, #0x10]
	b _0807E824
_0807E6CE:
	ldr r0, [r7, #0x10]
	mov r2, sb
	ands r0, r2
	str r0, [r7, #0x10]
	b _0807E824
_0807E6D8:
	ldrh r1, [r2]
	cmp r4, #0
	beq _0807E6F0
	ldrh r0, [r6, #0x3a]
	ands r0, r1
	cmp r0, #0
	bne _0807E6FA
	ldr r3, _0807E6EC @ =gUnknown_03005A20
	b _0807E72E
	.align 2, 0
_0807E6EC: .4byte gUnknown_03005A20
_0807E6F0:
	ldrh r0, [r7, #0x3a]
	ands r0, r1
	ldr r3, _0807E70C @ =gUnknown_03005A20
	cmp r0, #0
	beq _0807E72E
_0807E6FA:
	mov r3, r8
	ldr r0, [r3, #0x3c]
	asrs r0, r0, #1
	ldr r1, _0807E710 @ =0xFFFFFC00
	adds r0, r0, r1
	cmp r4, #0
	beq _0807E714
	strh r0, [r6, #0xa]
	b _0807E716
	.align 2, 0
_0807E70C: .4byte gUnknown_03005A20
_0807E710: .4byte 0xFFFFFC00
_0807E714:
	strh r0, [r7, #0xa]
_0807E716:
	cmp r4, #0
	beq _0807E724
	ldr r0, [r6, #0x10]
	mov r2, sb
	ands r0, r2
	str r0, [r6, #0x10]
	b _0807E824
_0807E724:
	ldr r0, [r7, #0x10]
	mov r3, sb
	ands r0, r3
	str r0, [r7, #0x10]
	b _0807E824
_0807E72E:
	cmp r4, #0
	beq _0807E73E
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r6, #4]
	b _0807E748
_0807E73E:
	ldr r0, [r7, #4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r7, #4]
_0807E748:
	cmp r4, #0
	beq _0807E752
	movs r0, #1
	strh r0, [r6, #0xa]
	b _0807E756
_0807E752:
	movs r0, #1
	strh r0, [r3, #0xa]
_0807E756:
	mov r0, r8
	ldr r1, [r0, #0x40]
	asrs r1, r1, #8
	ldr r2, [sp, #0xc]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	mov r0, r8
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	ldr r2, [sp, #0x10]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _0807E77C
	ldr r3, _0807E798 @ =gUnknown_03005AB0
_0807E77C:
	mov r0, sl
	adds r1, r5, #0
	bl sub_800B2BC
	cmp r0, #0
	bne _0807E7C0
	cmp r4, #0
	beq _0807E79C
	ldr r0, [r6, #0x10]
	mov r3, sb
	ands r0, r3
	str r0, [r6, #0x10]
	b _0807E7A4
	.align 2, 0
_0807E798: .4byte gUnknown_03005AB0
_0807E79C:
	ldr r0, [r7, #0x10]
	mov r1, sb
	ands r0, r1
	str r0, [r7, #0x10]
_0807E7A4:
	cmp r4, #0
	beq _0807E7B8
	ldr r0, [r6, #4]
	ldr r2, _0807E7B4 @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r6, #4]
	b _0807E7C0
	.align 2, 0
_0807E7B4: .4byte 0xFFFFF800
_0807E7B8:
	ldr r0, [r7, #4]
	ldr r3, _0807E7CC @ =0xFFFFF800
	adds r0, r0, r3
	str r0, [r7, #4]
_0807E7C0:
	cmp r4, #0
	beq _0807E7D0
	movs r0, #0
	strh r0, [r6, #0xa]
	b _0807E824
	.align 2, 0
_0807E7CC: .4byte 0xFFFFF800
_0807E7D0:
	strh r4, [r7, #0xa]
	b _0807E824
_0807E7D4:
	mov r0, r8
	ldr r1, [r0, #0x40]
	asrs r1, r1, #8
	ldr r2, [sp, #0xc]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	mov r0, r8
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	ldr r2, [sp, #0x10]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _0807E7FA
	ldr r3, _0807E8DC @ =gUnknown_03005AB0
_0807E7FA:
	mov r0, sl
	adds r1, r5, #0
	bl sub_800B2BC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _0807E824
	ldr r0, [sp, #0x14]
	add r0, sp
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0xa
	bl Div
	mov r3, r8
	ldr r1, [r3, #0x3c]
	adds r1, r1, r0
	str r1, [r3, #0x3c]
_0807E824:
	ldr r0, [sp, #0x14]
	adds r0, #4
	str r0, [sp, #0x14]
	adds r4, #1
	ldr r0, _0807E8E0 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _0807E83A
	b _0807E526
_0807E83A:
	mov r2, r8
	ldr r1, [r2, #0x3c]
	ldr r0, _0807E8E4 @ =0x000026AC
	muls r0, r1, r0
	ldr r1, _0807E8E8 @ =0x00002710
	bl Div
	mov r3, r8
	str r0, [r3, #0x3c]
	adds r0, #0x2f
	cmp r0, #0x5e
	bhi _0807E864
	ldr r1, [r3, #0x44]
	ldr r0, _0807E8EC @ =0xFFFFFD00
	cmp r1, r0
	ble _0807E864
	ldr r0, _0807E8F0 @ =0x000002FF
	cmp r1, r0
	bgt _0807E864
	movs r0, #0
	str r0, [r3, #0x3c]
_0807E864:
	mov r4, r8
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r0, [sp, #0xc]
	asrs r3, r0, #0x10
	ldr r4, _0807E8F4 @ =gCamera
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r3, r0
	bgt _0807E8A4
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	blt _0807E8A4
	ldr r3, [sp, #0x10]
	asrs r2, r3, #0x10
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0807E8A4
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0807E8FC
_0807E8A4:
	mov r4, sl
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807E8CA
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0807E8CA
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807E8FC
_0807E8CA:
	mov r3, r8
	ldrb r0, [r3, #8]
	ldr r4, [sp, #8]
	strb r0, [r4]
	ldr r0, _0807E8F8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807E902
	.align 2, 0
_0807E8DC: .4byte gUnknown_03005AB0
_0807E8E0: .4byte gUnknown_03005088
_0807E8E4: .4byte 0x000026AC
_0807E8E8: .4byte 0x00002710
_0807E8EC: .4byte 0xFFFFFD00
_0807E8F0: .4byte 0x000002FF
_0807E8F4: .4byte gCamera
_0807E8F8: .4byte gCurTask
_0807E8FC:
	mov r0, sl
	bl DisplaySprite
_0807E902:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807E914
sub_807E914: @ 0x0807E914
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov ip, r0
	mov sb, r1
	mov sl, r2
	adds r6, r3, #0
	ldr r4, [sp, #0x2c]
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r1, r3
	ldr r0, [r4]
	asrs r0, r0, #8
	movs r5, #0
	ldrsb r5, [r6, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _0807E958
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0807E966
	cmp r2, r1
	bge _0807E958
	b _0807EA5C
_0807E958:
	movs r0, #2
	ldrsb r0, [r6, r0]
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	bge _0807E966
	b _0807EA5C
_0807E966:
	mov r2, ip
	adds r2, #0x2d
	movs r0, #0
	ldrsb r0, [r2, r0]
	str r0, [sp, #8]
	adds r5, r0, #0
	add r5, sl
	ldr r1, [r4, #4]
	asrs r0, r1, #8
	movs r3, #1
	ldrsb r3, [r6, r3]
	mov r8, r3
	adds r3, r0, r3
	cmp r5, r3
	bgt _0807E99C
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r7, [sp, #8]
	subs r0, r0, r7
	adds r0, r5, r0
	cmp r0, r3
	bge _0807E9AA
	cmp r5, r3
	blt _0807EA5C
_0807E99C:
	movs r0, #3
	ldrsb r0, [r6, r0]
	mov r7, r8
	subs r0, r0, r7
	adds r0, r3, r0
	cmp r0, r5
	blt _0807EA5C
_0807E9AA:
	asrs r5, r1, #8
	movs r0, #0
	ldrsb r0, [r2, r0]
	add r0, sl
	movs r1, #3
	ldrsb r1, [r6, r1]
	subs r0, r0, r1
	adds r0, #2
	cmp r5, r0
	ble _0807EA5C
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	movs r1, #2
	ldrsb r1, [r6, r1]
	subs r2, r0, r1
	adds r1, r2, #0
	adds r1, #8
	ldr r0, [r4]
	asrs r3, r0, #8
	cmp r3, r1
	bgt _0807E9E0
	lsls r1, r2, #8
	b _0807E9FC
_0807E9E0:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	movs r1, #0
	ldrsb r1, [r6, r1]
	subs r0, r0, r1
	subs r1, r0, #7
	cmp r3, r1
	blt _0807EA5C
	adds r1, r0, #1
	lsls r1, r1, #8
_0807E9FC:
	str r1, [r4]
	adds r0, r5, #0
	adds r0, #9
	asrs r1, r1, #8
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r2, [r5]
	movs r7, #0
	str r7, [sp]
	ldr r6, _0807EA58 @ =sub_803FF84
	str r6, [sp, #4]
	movs r3, #8
	bl sub_803FA74
	cmp r0, #0
	bge _0807EA24
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_0807EA24:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrb r2, [r5]
	movs r3, #8
	rsbs r3, r3, #0
	str r7, [sp]
	str r6, [sp, #4]
	bl sub_803FA74
	cmp r0, #0
	bge _0807EA46
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_0807EA46:
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #0x18
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #1
	b _0807EA5E
	.align 2, 0
_0807EA58: .4byte sub_803FF84
_0807EA5C:
	movs r0, #0
_0807EA5E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_807EA70
sub_807EA70: @ 0x0807EA70
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable058
CreateEntity_Interactable058: @ 0x0807EA84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	adds r6, r1, #0
	mov sb, r2
	mov sl, r3
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r1, _0807EBAC @ =gUnknown_086CED90
	add r0, sp, #4
	movs r2, #6
	bl memcpy
	ldr r0, _0807EBB0 @ =sub_807EBD8
	ldr r1, _0807EBB4 @ =sub_807EE20
	str r1, [sp]
	movs r1, #0x44
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r2, _0807EBB8 @ =0x0300000C
	adds r5, r4, r2
	movs r7, #0
	strh r6, [r0, #4]
	mov r3, sb
	strh r3, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r2, sl
	strb r2, [r0, #9]
	mov r3, r8
	ldrb r0, [r3, #3]
	ldr r1, _0807EBBC @ =0x0300003C
	adds r1, r1, r4
	mov sl, r1
	strb r0, [r1]
	ldr r2, _0807EBC0 @ =0x0300003D
	adds r0, r4, r2
	movs r3, #0
	strb r3, [r0]
	mov r0, r8
	ldrb r2, [r0, #4]
	movs r0, #3
	adds r1, r0, #0
	ands r1, r2
	ldr r3, _0807EBC4 @ =0x0300003E
	adds r2, r4, r3
	strb r1, [r2]
	mov r2, r8
	ldrb r1, [r2, #4]
	ands r0, r1
	lsls r0, r0, #1
	add r0, sp
	adds r0, #4
	ldrh r0, [r0]
	subs r0, #0xa1
	asrs r0, r0, #1
	adds r3, #1
	adds r1, r4, r3
	strb r0, [r1]
	ldrb r1, [r2, #5]
	ldr r2, _0807EBC8 @ =0x03000040
	adds r0, r4, r2
	strb r1, [r0]
	mov r3, r8
	ldrb r0, [r3]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x16]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	mov r1, sb
	lsls r1, r1, #8
	mov sb, r1
	add r0, sb
	strh r0, [r5, #0x18]
	movs r0, #0xfe
	strb r0, [r3]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r7, [r5, #8]
	movs r0, #0xf6
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	mov r2, sl
	ldrb r0, [r2]
	lsls r0, r0, #2
	ldr r3, _0807EBCC @ =0x0300002C
	adds r1, r4, r3
	strb r0, [r1]
	strh r7, [r5, #0x14]
	strh r7, [r5, #0x1c]
	ldr r0, _0807EBD0 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _0807EBD4 @ =0x0300002E
	adds r1, r4, r2
	movs r0, #0x10
	strb r0, [r1]
	adds r3, #5
	adds r4, r4, r3
	movs r0, #0
	strb r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807EBAC: .4byte gUnknown_086CED90
_0807EBB0: .4byte sub_807EBD8
_0807EBB4: .4byte sub_807EE20
_0807EBB8: .4byte 0x0300000C
_0807EBBC: .4byte 0x0300003C
_0807EBC0: .4byte 0x0300003D
_0807EBC4: .4byte 0x0300003E
_0807EBC8: .4byte 0x03000040
_0807EBCC: .4byte 0x0300002C
_0807EBD0: .4byte 0x0300002D
_0807EBD4: .4byte 0x0300002E

	thumb_func_start sub_807EBD8
sub_807EBD8: @ 0x0807EBD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0807EC68 @ =gUnknown_086CED90
	mov r0, sp
	movs r2, #6
	bl memcpy
	ldr r0, _0807EC6C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, #0xc
	adds r7, r4, r0
	ldr r1, [r5]
	mov sl, r1
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
	ldr r3, _0807EC70 @ =gCamera
	ldrh r0, [r3]
	lsrs r6, r2, #0x10
	str r6, [sp, #8]
	asrs r2, r2, #0x10
	mov sb, r2
	subs r0, r2, r0
	strh r0, [r7, #0x16]
	ldrh r2, [r3, #2]
	lsrs r3, r1, #0x10
	str r3, [sp, #0xc]
	asrs r1, r1, #0x10
	mov r8, r1
	subs r2, r1, r2
	strh r2, [r7, #0x18]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807EC58
	movs r6, #0x18
	ldrsh r0, [r7, r6]
	adds r0, #0x80
	cmp r0, #0
	blt _0807EC58
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0807EC74
_0807EC58:
	ldrb r0, [r5, #8]
	mov r1, sl
	strb r0, [r1]
	ldr r0, _0807EC6C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807EE02
	.align 2, 0
_0807EC68: .4byte gUnknown_086CED90
_0807EC6C: .4byte gCurTask
_0807EC70: .4byte gCamera
_0807EC74:
	movs r2, #0
	mov sl, r2
	ldr r2, _0807ECC0 @ =gUnknown_03005120
	ldr r3, _0807ECC4 @ =0x03000040
	adds r0, r4, r3
	ldrb r1, [r0]
	ldr r0, [r2]
	subs r0, r0, r1
	ldr r6, _0807ECC8 @ =0x0300003E
	adds r5, r4, r6
	ldrb r1, [r5]
	lsls r1, r1, #1
	add r1, sp
	ldrh r1, [r1]
	bl Mod
	adds r1, r0, #0
	cmp r1, #0x39
	bhi _0807ECD4
	movs r0, #1
	mov sl, r0
	cmp r1, #0
	beq _0807ECA4
	b _0807EDC6
_0807ECA4:
	movs r1, #0
	mov sl, r1
	ldr r2, _0807ECCC @ =0x0300002D
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _0807ECD0 @ =0x0300003C
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, #1
	subs r6, #0x12
	b _0807ED40
	.align 2, 0
_0807ECC0: .4byte gUnknown_03005120
_0807ECC4: .4byte 0x03000040
_0807ECC8: .4byte 0x0300003E
_0807ECCC: .4byte 0x0300002D
_0807ECD0: .4byte 0x0300003C
_0807ECD4:
	ldr r2, _0807ED04 @ =0x0300003F
	adds r0, r4, r2
	ldrb r2, [r0]
	adds r3, r2, #0
	adds r3, #0x3a
	cmp r1, r3
	bhs _0807ED14
	movs r3, #1
	mov sl, r3
	cmp r1, #0x3a
	bne _0807EDC6
	ldr r6, _0807ED08 @ =0x0300002D
	adds r1, r4, r6
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0807ED0C @ =0x0300003C
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, #3
	ldr r2, _0807ED10 @ =0x0300002C
	adds r1, r4, r2
	strb r0, [r1]
	b _0807EDC6
	.align 2, 0
_0807ED04: .4byte 0x0300003F
_0807ED08: .4byte 0x0300002D
_0807ED0C: .4byte 0x0300003C
_0807ED10: .4byte 0x0300002C
_0807ED14:
	ldrb r0, [r5]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	subs r0, r0, r2
	cmp r1, r0
	bhs _0807ED54
	movs r6, #1
	mov sl, r6
	cmp r1, r3
	bne _0807EDC6
	movs r0, #0
	mov sl, r0
	ldr r2, _0807ED48 @ =0x0300002D
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _0807ED4C @ =0x0300003C
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r6, _0807ED50 @ =0x0300002C
_0807ED40:
	adds r1, r4, r6
	strb r0, [r1]
	b _0807EDC6
	.align 2, 0
_0807ED48: .4byte 0x0300002D
_0807ED4C: .4byte 0x0300003C
_0807ED50: .4byte 0x0300002C
_0807ED54:
	cmp r1, r0
	bne _0807ED70
	ldr r0, _0807ED9C @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0807EDA0 @ =0x0300003C
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, #2
	ldr r2, _0807EDA4 @ =0x0300002C
	adds r1, r4, r2
	strb r0, [r1]
_0807ED70:
	movs r4, #0
	ldr r6, _0807EDA8 @ =gUnknown_03005AB0
	movs r5, #9
	rsbs r5, r5, #0
_0807ED78:
	ldr r3, _0807EDAC @ =gUnknown_03005A20
	cmp r4, #0
	beq _0807ED80
	ldr r3, _0807EDA8 @ =gUnknown_03005AB0
_0807ED80:
	adds r0, r7, #0
	mov r1, sb
	mov r2, r8
	bl sub_800CE34
	cmp r0, #0
	beq _0807EDB8
	cmp r4, #0
	beq _0807EDB0
	ldr r0, [r6, #0x10]
	ands r0, r5
	str r0, [r6, #0x10]
	b _0807EDB8
	.align 2, 0
_0807ED9C: .4byte 0x0300002D
_0807EDA0: .4byte 0x0300003C
_0807EDA4: .4byte 0x0300002C
_0807EDA8: .4byte gUnknown_03005AB0
_0807EDAC: .4byte gUnknown_03005A20
_0807EDB0:
	ldr r1, _0807EE14 @ =gUnknown_03005A20
	ldr r0, [r1, #0x10]
	ands r0, r5
	str r0, [r1, #0x10]
_0807EDB8:
	adds r4, #1
	ldr r0, _0807EE18 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0807ED78
_0807EDC6:
	movs r4, #0
_0807EDC8:
	mov r3, sl
	cmp r3, #1
	bne _0807EDE8
	ldr r6, [sp, #8]
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0807EE14 @ =gUnknown_03005A20
	cmp r4, #0
	beq _0807EDE2
	ldr r3, _0807EE1C @ =gUnknown_03005AB0
_0807EDE2:
	adds r0, r7, #0
	bl sub_80096B0
_0807EDE8:
	adds r4, #1
	ldr r0, _0807EE18 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0807EDC8
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0807EE02:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807EE14: .4byte gUnknown_03005A20
_0807EE18: .4byte gUnknown_03005088
_0807EE1C: .4byte gUnknown_03005AB0

	thumb_func_start sub_807EE20
sub_807EE20: @ 0x0807EE20
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable059
CreateEntity_Interactable059: @ 0x0807EE34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0807EED4 @ =sub_807EF48
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0807EED8 @ =sub_807F2D8
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _0807EEDC @ =0x0300000C
	adds r7, r2, r1
	movs r3, #0
	mov sl, r3
	movs r1, #0
	mov sb, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r3, r8
	str r3, [r0]
	ldrb r1, [r3]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	mov r1, sb
	str r1, [r0, #0x3c]
	ldr r3, _0807EEE0 @ =0x03000040
	adds r2, r2, r3
	mov r0, sl
	strb r0, [r2]
	mov r1, r8
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
	movs r0, #0xfe
	strb r0, [r1]
	movs r0, #0x12
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r3, sb
	strh r3, [r7, #8]
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #1
	beq _0807EEF4
	cmp r0, #1
	bgt _0807EEE4
	cmp r0, #0
	beq _0807EEEA
	b _0807EEFE
	.align 2, 0
_0807EED4: .4byte sub_807EF48
_0807EED8: .4byte sub_807F2D8
_0807EEDC: .4byte 0x0300000C
_0807EEE0: .4byte 0x03000040
_0807EEE4:
	cmp r0, #2
	beq _0807EEFA
	b _0807EEFE
_0807EEEA:
	ldr r0, _0807EEF0 @ =0x000001DF
	b _0807EEFC
	.align 2, 0
_0807EEF0: .4byte 0x000001DF
_0807EEF4:
	movs r0, #0xf0
	lsls r0, r0, #1
	b _0807EEFC
_0807EEFA:
	ldr r0, _0807EF44 @ =0x000001E1
_0807EEFC:
	strh r0, [r7, #0xa]
_0807EEFE:
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	adds r2, r7, #0
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	adds r2, #1
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x25
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
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
_0807EF44: .4byte 0x000001E1

	thumb_func_start sub_807EF48
sub_807EF48: @ 0x0807EF48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r5, _0807EFC4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r7, r1, r0
	ldr r1, [r6]
	mov sl, r1
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, sl
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r4, _0807EFC8 @ =gCamera
	ldrh r3, [r4]
	lsls r1, r1, #0x10
	mov r8, r1
	asrs r0, r1, #0x10
	subs r0, r0, r3
	strh r0, [r7, #0x16]
	ldrh r3, [r4, #2]
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	subs r3, r1, r3
	strh r3, [r7, #0x18]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807EFB6
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0807EFB6
	lsls r1, r3, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0807EFCC
_0807EFB6:
	ldrb r0, [r6, #8]
	mov r1, sl
	strb r0, [r1]
	ldr r0, [r5]
	bl TaskDestroy
	b _0807F1F8
	.align 2, 0
_0807EFC4: .4byte gCurTask
_0807EFC8: .4byte gCamera
_0807EFCC:
	movs r4, #0
	mov r0, r8
	str r0, [sp]
	str r2, [sp, #4]
	ldr r5, _0807F004 @ =gUnknown_03005AB0
	ldr r1, _0807F008 @ =gUnknown_03005A20
	mov r8, r1
	movs r0, #1
	mov sb, r0
_0807EFDE:
	ldr r0, [sp]
	asrs r1, r0, #0x10
	ldr r0, [sp, #4]
	asrs r2, r0, #0x10
	ldr r3, _0807F008 @ =gUnknown_03005A20
	cmp r4, #0
	beq _0807EFEE
	ldr r3, _0807F004 @ =gUnknown_03005AB0
_0807EFEE:
	adds r0, r7, #0
	bl sub_800CE34
	cmp r0, #0
	bne _0807EFFA
	b _0807F1A0
_0807EFFA:
	cmp r4, #0
	beq _0807F00C
	ldr r0, [r5, #0x10]
	b _0807F010
	.align 2, 0
_0807F004: .4byte gUnknown_03005AB0
_0807F008: .4byte gUnknown_03005A20
_0807F00C:
	mov r1, r8
	ldr r0, [r1, #0x10]
_0807F010:
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0807F01C
	b _0807F1A0
_0807F01C:
	ldr r0, _0807F038 @ =gUnknown_03005A20
	cmp r4, #0
	beq _0807F024
	ldr r0, _0807F03C @ =gUnknown_03005AB0
_0807F024:
	bl sub_8046CEC
	cmp r4, #0
	beq _0807F040
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807F04E
	.align 2, 0
_0807F038: .4byte gUnknown_03005A20
_0807F03C: .4byte gUnknown_03005AB0
_0807F040:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	mov r1, r8
	str r0, [r1, #0x10]
_0807F04E:
	cmp r4, #0
	beq _0807F05C
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	b _0807F068
_0807F05C:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #2
	orrs r0, r1
	mov r1, r8
	str r0, [r1, #0x10]
_0807F068:
	cmp r4, #0
	beq _0807F07C
	ldr r0, [r5, #0x10]
	ldr r1, _0807F078 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807F088
	.align 2, 0
_0807F078: .4byte 0xFFFFFEFF
_0807F07C:
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _0807F098 @ =0xFFFFFEFF
	ands r0, r1
	mov r1, r8
	str r0, [r1, #0x10]
_0807F088:
	cmp r4, #0
	beq _0807F09C
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807F0AA
	.align 2, 0
_0807F098: .4byte 0xFFFFFEFF
_0807F09C:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	mov r1, r8
	str r0, [r1, #0x10]
_0807F0AA:
	cmp r4, #0
	beq _0807F0BA
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0807F0C8
_0807F0BA:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	mov r1, r8
	str r0, [r1, #0x10]
_0807F0C8:
	ldr r0, _0807F0FC @ =gUnknown_03005A20
	cmp r4, #0
	beq _0807F0D0
	ldr r0, _0807F100 @ =gUnknown_03005AB0
_0807F0D0:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _0807F0FC @ =gUnknown_03005A20
	cmp r4, #0
	beq _0807F0DE
	ldr r1, _0807F100 @ =gUnknown_03005AB0
_0807F0DE:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0807F0FC @ =gUnknown_03005A20
	adds r2, r1, #0
	cmp r4, #0
	beq _0807F0EC
	ldr r2, _0807F100 @ =gUnknown_03005AB0
_0807F0EC:
	movs r0, #0xe
	strb r0, [r2, #0xf]
	cmp r4, #0
	beq _0807F104
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	b _0807F10A
	.align 2, 0
_0807F0FC: .4byte gUnknown_03005A20
_0807F100: .4byte gUnknown_03005AB0
_0807F104:
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r1, #0xa]
_0807F10A:
	cmp r4, #0
	beq _0807F118
	movs r0, #0x15
	ldr r1, _0807F114 @ =gUnknown_03005AF0
	b _0807F11C
	.align 2, 0
_0807F114: .4byte gUnknown_03005AF0
_0807F118:
	adds r1, #0x40
	movs r0, #0x15
_0807F11C:
	strb r0, [r1]
	cmp r4, #0
	beq _0807F12C
	ldr r0, _0807F128 @ =gUnknown_03005C30
	b _0807F12E
	.align 2, 0
_0807F128: .4byte gUnknown_03005C30
_0807F12C:
	ldr r0, _0807F208 @ =gUnknown_03005BE0
_0807F12E:
	adds r0, #0x2d
	movs r1, #0xff
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x21
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x20
	mov r1, sb
	strb r1, [r0]
	ldr r0, _0807F20C @ =gUnknown_03005A20
	cmp r4, #0
	beq _0807F154
	ldr r0, _0807F210 @ =gUnknown_03005AB0
_0807F154:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _0807F20C @ =gUnknown_03005A20
	cmp r4, #0
	beq _0807F162
	ldr r1, _0807F210 @ =gUnknown_03005AB0
_0807F162:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0807F20C @ =gUnknown_03005A20
	cmp r4, #0
	beq _0807F16E
	ldr r1, _0807F210 @ =gUnknown_03005AB0
_0807F16E:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xbd
	bl m4aSongNumStart
	ldr r0, _0807F214 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807F218 @ =sub_807F224
	str r0, [r1, #8]
	ldr r0, _0807F21C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0807F1DC
	bl sub_80182FC
	mov r1, sb
	strb r1, [r0]
	ldrh r1, [r6, #4]
	strb r1, [r0, #1]
	ldrh r1, [r6, #6]
	strb r1, [r0, #2]
	ldrb r1, [r6, #9]
	strb r1, [r0, #3]
	mov r1, sb
	strb r1, [r0, #4]
_0807F1A0:
	ldr r0, _0807F21C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0807F1DC
	mov r0, sl
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0807F1DC
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x21
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x20
	mov r1, sb
	strb r1, [r0]
	movs r0, #0xbd
	bl m4aSongNumStart
	ldr r0, _0807F214 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807F218 @ =sub_807F224
	str r0, [r1, #8]
_0807F1DC:
	adds r4, #1
	ldr r0, _0807F220 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _0807F1EC
	b _0807EFDE
_0807F1EC:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0807F1F8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807F208: .4byte gUnknown_03005BE0
_0807F20C: .4byte gUnknown_03005A20
_0807F210: .4byte gUnknown_03005AB0
_0807F214: .4byte gCurTask
_0807F218: .4byte sub_807F224
_0807F21C: .4byte gGameMode
_0807F220: .4byte gUnknown_03005088

	thumb_func_start sub_807F224
sub_807F224: @ 0x0807F224
	push {r4, r5, r6, r7, lr}
	ldr r0, _0807F294 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r1, _0807F298 @ =0x0300000C
	adds r5, r6, r1
	ldr r7, [r4]
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _0807F29C @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
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
	bhi _0807F286
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0807F286
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0807F2A0
_0807F286:
	ldrb r0, [r4, #8]
	strb r0, [r7]
	ldr r0, [r3]
	bl TaskDestroy
	b _0807F2D0
	.align 2, 0
_0807F294: .4byte gCurTask
_0807F298: .4byte 0x0300000C
_0807F29C: .4byte gCamera
_0807F2A0:
	ldr r0, _0807F2C0 @ =0x03000040
	adds r1, r6, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807F2C4
	ldrb r0, [r4, #8]
	strb r0, [r7]
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _0807F2D0
	.align 2, 0
_0807F2C0: .4byte 0x03000040
_0807F2C4:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0807F2D0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_807F2D8
sub_807F2D8: @ 0x0807F2D8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable060
CreateEntity_Interactable060: @ 0x0807F2EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r5, r0, #0
	mov sb, r3
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r2, #0x10
	lsrs r2, r1, #0x10
	str r2, [sp, #0x10]
	mov r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _0807F4A0 @ =sub_807F4F0
	movs r2, #0xe0
	lsls r2, r2, #7
	ldr r1, _0807F4A4 @ =sub_807F968
	str r1, [sp]
	movs r1, #0xa8
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _0807F4A8 @ =0x0300000C
	adds r1, r1, r4
	mov sl, r1
	ldr r2, _0807F4AC @ =0x0300003C
	adds r6, r4, r2
	ldr r1, _0807F4B0 @ =0x0300006C
	adds r7, r4, r1
	mov r2, r8
	strh r2, [r0, #4]
	mov r1, sp
	ldrh r1, [r1, #0x10]
	strh r1, [r0, #6]
	str r5, [r0]
	ldrb r1, [r5]
	strb r1, [r0, #8]
	mov r2, sb
	strb r2, [r0, #9]
	ldr r1, _0807F4B4 @ =0x030000A4
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	adds r1, #3
	adds r0, r4, r1
	strb r2, [r0]
	ldr r2, _0807F4B8 @ =0x0300009C
	adds r0, r4, r2
	movs r1, #0
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	str r1, [r0]
	ldr r1, _0807F4BC @ =0x030000A6
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	subs r1, #1
	adds r0, r4, r1
	strb r2, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #3
	mov r2, r8
	lsls r2, r2, #8
	adds r0, r0, r2
	mov r1, sl
	strh r0, [r1, #0x16]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	lsls r2, r2, #8
	str r2, [sp, #0x1c]
	adds r0, r0, r2
	strh r0, [r1, #0x18]
	movs r0, #0xfe
	strb r0, [r5]
	movs r0, #0x1e
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x1a]
	movs r2, #0
	strh r2, [r1, #8]
	adds r0, #0xeb
	strh r0, [r1, #0xa]
	ldr r1, _0807F4C0 @ =0x0300002C
	adds r0, r4, r1
	strb r2, [r0]
	movs r1, #0
	mov r0, sl
	strh r1, [r0, #0x14]
	strh r1, [r0, #0x1c]
	ldr r2, _0807F4C4 @ =0x0300002D
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0807F4C8 @ =0x0300002E
	adds r0, r4, r1
	movs r2, #0x10
	mov sb, r2
	mov r1, sb
	strb r1, [r0]
	ldr r2, _0807F4CC @ =0x03000031
	adds r0, r4, r2
	movs r1, #0
	strb r1, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	mov r0, sl
	str r2, [r0, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x10]
	movs r0, #9
	bl VramMalloc
	str r0, [r7, #4]
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r7, #0x1a]
	movs r0, #0
	strh r0, [r7, #8]
	movs r0, #0xf5
	lsls r0, r0, #1
	strh r0, [r7, #0xa]
	ldr r1, _0807F4D0 @ =0x0300008C
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #0
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r2, _0807F4D4 @ =0x0300008D
	adds r1, r4, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0807F4D8 @ =0x0300008E
	adds r0, r4, r1
	mov r2, sb
	strb r2, [r0]
	adds r1, #3
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	movs r0, #1
	bl VramMalloc
	str r0, [r6, #4]
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r6, #0x1a]
	movs r0, #0
	strh r0, [r6, #8]
	ldr r0, _0807F4DC @ =0x000001E9
	strh r0, [r6, #0xa]
	ldr r1, _0807F4E0 @ =0x0300005C
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	movs r0, #0
	strh r0, [r6, #0x14]
	strh r0, [r6, #0x1c]
	ldr r2, _0807F4E4 @ =0x0300005D
	adds r1, r4, r2
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0807F4E8 @ =0x0300005E
	adds r0, r4, r1
	mov r2, sb
	strb r2, [r0]
	ldr r0, _0807F4EC @ =0x03000061
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	mov r0, sl
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807F4A0: .4byte sub_807F4F0
_0807F4A4: .4byte sub_807F968
_0807F4A8: .4byte 0x0300000C
_0807F4AC: .4byte 0x0300003C
_0807F4B0: .4byte 0x0300006C
_0807F4B4: .4byte 0x030000A4
_0807F4B8: .4byte 0x0300009C
_0807F4BC: .4byte 0x030000A6
_0807F4C0: .4byte 0x0300002C
_0807F4C4: .4byte 0x0300002D
_0807F4C8: .4byte 0x0300002E
_0807F4CC: .4byte 0x03000031
_0807F4D0: .4byte 0x0300008C
_0807F4D4: .4byte 0x0300008D
_0807F4D8: .4byte 0x0300008E
_0807F4DC: .4byte 0x000001E9
_0807F4E0: .4byte 0x0300005C
_0807F4E4: .4byte 0x0300005D
_0807F4E8: .4byte 0x0300005E
_0807F4EC: .4byte 0x03000061

	thumb_func_start sub_807F4F0
sub_807F4F0: @ 0x0807F4F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	ldr r0, _0807F578 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	str r1, [sp, #0x18]
	ldr r1, _0807F57C @ =0x0300000C
	adds r1, r0, r1
	str r1, [sp]
	ldr r2, _0807F580 @ =0x0300003C
	adds r6, r0, r2
	ldr r3, _0807F584 @ =0x0300006C
	adds r3, r0, r3
	str r3, [sp, #4]
	ldr r7, [sp, #0x18]
	ldr r7, [r7]
	str r7, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x18]
	ldrb r0, [r2, #8]
	lsls r0, r0, #3
	ldrh r1, [r2, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x38]
	mov sl, r4
	str r0, [sp, #8]
	ldr r0, _0807F588 @ =gUnknown_03005120
	ldr r0, [r0]
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #2
	bl Mod
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bls _0807F594
	ldr r3, _0807F58C @ =0xFFFFFF00
	adds r2, r2, r3
	subs r2, r0, r2
	ldr r0, _0807F590 @ =gSineTable
	lsls r1, r2, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsrs r3, r1, #8
	adds r5, r0, #0
	b _0807F5A8
	.align 2, 0
_0807F578: .4byte gCurTask
_0807F57C: .4byte 0x0300000C
_0807F580: .4byte 0x0300003C
_0807F584: .4byte 0x0300006C
_0807F588: .4byte gUnknown_03005120
_0807F58C: .4byte 0xFFFFFF00
_0807F590: .4byte gSineTable
_0807F594:
	ldr r1, _0807F680 @ =gSineTable
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r5, r1, #0
_0807F5A8:
	adds r0, r2, #0
	subs r0, #0x7e
	ldr r1, _0807F684 @ =0x000001FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	ands r0, r1
	lsls r0, r0, #1
	lsls r1, r0, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r7, [r1, r2]
	mov sb, r7
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	mov r8, r1
	ldr r5, _0807F688 @ =gCamera
	ldrh r0, [r5]
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	subs r0, r2, r0
	ldr r3, [sp]
	strh r0, [r3, #0x16]
	ldrh r0, [r5, #2]
	ldr r7, [sp, #0x38]
	lsls r3, r7, #0x10
	asrs r1, r3, #0x10
	subs r0, r1, r0
	ldr r7, [sp]
	strh r0, [r7, #0x18]
	ldrh r0, [r5]
	subs r2, r2, r0
	ldr r0, [sp, #4]
	strh r2, [r0, #0x16]
	ldrh r0, [r5, #2]
	subs r1, r1, r0
	ldr r2, [sp, #4]
	strh r1, [r2, #0x18]
	mov r7, sl
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	str r4, [sp, #0x24]
	str r3, [sp, #0x28]
	cmp r2, r0
	bgt _0807F644
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0807F644
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r3, #2
	ldrsh r1, [r5, r3]
	subs r7, #0x50
	adds r0, r1, r7
	cmp r2, r0
	bgt _0807F644
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0807F690
_0807F644:
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0807F66C
	ldr r2, [sp]
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0807F66C
	movs r7, #0x18
	ldrsh r1, [r2, r7]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807F690
_0807F66C:
	ldr r1, [sp, #0x18]
	ldrb r0, [r1, #8]
	ldr r2, [sp, #0x14]
	strb r0, [r2]
	ldr r0, _0807F68C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807F950
	.align 2, 0
_0807F680: .4byte gSineTable
_0807F684: .4byte 0x000001FF
_0807F688: .4byte gCamera
_0807F68C: .4byte gCurTask
_0807F690:
	ldr r0, [sp, #4]
	bl DisplaySprite
	movs r5, #0
	movs r4, #0x6e
	ldr r7, _0807F6E4 @ =gCamera
_0807F69C:
	mov r0, sb
	muls r0, r4, r0
	movs r1, #0x64
	bl Div
	ldr r3, [sp, #0xc]
	adds r3, r3, r0
	str r3, [sp, #0xc]
	mov r0, r8
	muls r0, r4, r0
	movs r1, #0x64
	bl Div
	ldr r1, [sp, #0x10]
	adds r1, r1, r0
	str r1, [sp, #0x10]
	ldrh r1, [r7]
	ldr r2, [sp, #0x24]
	asrs r0, r2, #0x10
	subs r0, r0, r1
	ldr r3, [sp, #0xc]
	asrs r1, r3, #0xa
	adds r0, r0, r1
	strh r0, [r6, #0x16]
	ldrh r1, [r7, #2]
	ldr r2, [sp, #0x28]
	asrs r0, r2, #0x10
	subs r0, r0, r1
	ldr r3, [sp, #0x10]
	asrs r1, r3, #0xa
	adds r0, r0, r1
	strh r0, [r6, #0x18]
	cmp r5, #4
	bne _0807F6E8
	movs r0, #0xc0
	b _0807F6EC
	.align 2, 0
_0807F6E4: .4byte gCamera
_0807F6E8:
	movs r0, #0x90
	lsls r0, r0, #3
_0807F6EC:
	strh r0, [r6, #0x1a]
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0807F69C
	ldrh r0, [r6, #0x16]
	ldr r7, [sp]
	strh r0, [r7, #0x16]
	ldrh r0, [r6, #0x18]
	strh r0, [r7, #0x18]
	movs r6, #0
	ldr r0, _0807F72C @ =gUnknown_03005AB0
	mov sl, r0
	ldr r1, _0807F730 @ =gUnknown_03005A20
	mov sb, r1
	ldr r2, [sp, #0x28]
	asrs r2, r2, #0x10
	str r2, [sp, #0x1c]
	subs r2, #4
	str r2, [sp, #0x20]
	movs r3, #0
	str r3, [sp, #0x34]
_0807F720:
	cmp r6, #0
	beq _0807F734
	mov r7, sl
	ldr r0, [r7, #0x10]
	b _0807F738
	.align 2, 0
_0807F72C: .4byte gUnknown_03005AB0
_0807F730: .4byte gUnknown_03005A20
_0807F734:
	mov r1, sb
	ldr r0, [r1, #0x10]
_0807F738:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807F742
	b _0807F91A
_0807F742:
	ldr r2, [sp, #0x20]
	lsls r1, r2, #8
	cmp r6, #0
	beq _0807F754
	mov r3, sl
	ldr r0, [r3, #4]
	cmp r1, r0
	bgt _0807F75C
	b _0807F7F8
_0807F754:
	mov r7, sb
	ldr r0, [r7, #4]
	cmp r1, r0
	ble _0807F7F8
_0807F75C:
	ldr r0, [sp, #0x24]
	asrs r1, r0, #0x10
	ldr r3, [sp, #0x28]
	asrs r2, r3, #0x10
	ldr r3, _0807F798 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807F76C
	ldr r3, _0807F79C @ =gUnknown_03005AB0
_0807F76C:
	ldr r0, [sp, #4]
	bl sub_800B2BC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _0807F7A0
	ldr r2, [sp, #0x18]
	adds r2, #0xa7
	ldrb r1, [r2]
	adds r0, r1, #0
	asrs r0, r6
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	bne _0807F7F8
	adds r0, r3, #0
	lsls r0, r6
	orrs r1, r0
	strb r1, [r2]
	b _0807F7F8
	.align 2, 0
_0807F798: .4byte gUnknown_03005A20
_0807F79C: .4byte gUnknown_03005AB0
_0807F7A0:
	ldr r3, [sp, #0x18]
	adds r3, #0xa7
	ldrb r1, [r3]
	adds r0, r1, #0
	asrs r0, r6
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0807F7F8
	adds r0, r2, #0
	lsls r0, r6
	bics r1, r0
	strb r1, [r3]
	cmp r6, #0
	beq _0807F7CC
	mov r7, sl
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807F7D8
_0807F7CC:
	mov r2, sb
	ldr r0, [r2, #0x10]
	movs r3, #9
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r2, #0x10]
_0807F7D8:
	cmp r6, #0
	beq _0807F7EA
	mov r7, sl
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807F7F8
_0807F7EA:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_0807F7F8:
	ldr r0, [sp, #0x18]
	adds r0, #0xa5
	adds r7, r0, r6
	ldrb r0, [r7]
	cmp r0, #0
	beq _0807F80A
	subs r0, #1
	strb r0, [r7]
	b _0807F91A
_0807F80A:
	ldr r3, [sp, #0xc]
	asrs r2, r3, #0xa
	ldr r1, [sp, #0x24]
	asrs r0, r1, #0x10
	adds r0, r0, r2
	mov r8, r0
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r3, [sp, #0x10]
	asrs r1, r3, #0xa
	ldr r3, [sp, #0x1c]
	adds r0, r3, r1
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	ldr r5, _0807F868 @ =gUnknown_03005A20
	str r2, [sp, #0x2c]
	str r1, [sp, #0x30]
	cmp r6, #0
	beq _0807F832
	ldr r5, _0807F86C @ =gUnknown_03005AB0
_0807F832:
	ldr r0, [sp]
	adds r1, r4, #0
	adds r2, r3, #0
	adds r3, r5, #0
	bl sub_800B2BC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _0807F8BE
	ldr r2, [sp, #0x18]
	adds r2, #0xa4
	ldrb r1, [r2]
	adds r0, r1, #0
	asrs r0, r6
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	bne _0807F870
	adds r0, r3, #0
	lsls r0, r6
	orrs r1, r0
	strb r1, [r2]
	ldr r1, [sp, #0x18]
	adds r1, #0x9c
	b _0807F8AE
	.align 2, 0
_0807F868: .4byte gUnknown_03005A20
_0807F86C: .4byte gUnknown_03005AB0
_0807F870:
	ldr r1, [sp, #0x18]
	adds r1, #0x9c
	ldr r7, [sp, #0x34]
	adds r0, r1, r7
	ldr r0, [r0]
	mov r2, r8
	subs r0, r2, r0
	lsls r2, r0, #8
	cmp r6, #0
	beq _0807F88E
	mov r3, sl
	ldr r0, [r3]
	adds r0, r0, r2
	str r0, [r3]
	b _0807F896
_0807F88E:
	mov r7, sb
	ldr r0, [r7]
	adds r0, r0, r2
	str r0, [r7]
_0807F896:
	ldr r0, [sp, #0x30]
	subs r0, #5
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
	lsls r0, r0, #8
	cmp r6, #0
	beq _0807F8AA
	mov r3, sl
	str r0, [r3, #4]
	b _0807F8AE
_0807F8AA:
	mov r7, sb
	str r0, [r7, #4]
_0807F8AE:
	ldr r0, [sp, #0x34]
	adds r1, r1, r0
	ldr r2, [sp, #0x24]
	asrs r0, r2, #0x10
	ldr r3, [sp, #0x2c]
	adds r0, r0, r3
	str r0, [r1]
	b _0807F91A
_0807F8BE:
	ldr r3, [sp, #0x18]
	adds r3, #0xa4
	ldrb r1, [r3]
	adds r0, r1, #0
	asrs r0, r6
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0807F91A
	adds r0, r2, #0
	lsls r0, r6
	bics r1, r0
	strb r1, [r3]
	movs r0, #5
	strb r0, [r7]
	cmp r6, #0
	beq _0807F8EE
	mov r7, sl
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807F8FA
_0807F8EE:
	mov r2, sb
	ldr r0, [r2, #0x10]
	movs r3, #9
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r2, #0x10]
_0807F8FA:
	cmp r6, #0
	beq _0807F90C
	mov r7, sl
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0807F91A
_0807F90C:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_0807F91A:
	ldr r3, [sp, #0x34]
	adds r3, #4
	str r3, [sp, #0x34]
	adds r6, #1
	ldr r0, _0807F960 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _0807F930
	b _0807F720
_0807F930:
	ldr r0, [sp]
	bl DisplaySprite
	ldr r7, [sp]
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r0, [sp]
	bl DisplaySprite
	ldr r0, [r7, #0x10]
	ldr r1, _0807F964 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #0x10]
_0807F950:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807F960: .4byte gUnknown_03005088
_0807F964: .4byte 0xFFFFFBFF

	thumb_func_start sub_807F968
sub_807F968: @ 0x0807F968
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	ldr r0, [r4, #0x70]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable061
CreateEntity_Interactable061: @ 0x0807F98C
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
	ldr r0, _0807FA0C @ =sub_807FB2C
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0807FA10 @ =sub_808071C
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0xc
	adds r6, r2, r0
	movs r1, #0
	movs r3, #0
	mov r0, r8
	strh r0, [r5, #4]
	mov r0, sb
	strh r0, [r5, #6]
	str r7, [r5]
	ldrb r0, [r7]
	strb r0, [r5, #8]
	strb r4, [r5, #9]
	str r3, [r5, #0x3c]
	str r3, [r5, #0x40]
	ldr r4, _0807FA14 @ =0x0300004F
	adds r0, r2, r4
	strb r1, [r0]
	subs r4, #1
	adds r0, r2, r4
	strb r1, [r0]
	ldrb r0, [r7, #5]
	ldrb r1, [r7, #6]
	cmp r0, r1
	bls _0807FA2C
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _0807FA18
	movs r0, #4
	str r0, [r5, #0x44]
	subs r4, #2
	adds r0, r2, r4
	strh r3, [r0]
	str r3, [r5, #0x48]
	b _0807FA56
	.align 2, 0
_0807FA0C: .4byte sub_807FB2C
_0807FA10: .4byte sub_808071C
_0807FA14: .4byte 0x0300004F
_0807FA18:
	movs r0, #4
	str r0, [r5, #0x44]
	ldr r0, _0807FA28 @ =0x0300004C
	adds r1, r2, r0
	movs r0, #0x80
	strh r0, [r1]
	str r3, [r5, #0x48]
	b _0807FA56
	.align 2, 0
_0807FA28: .4byte 0x0300004C
_0807FA2C:
	movs r0, #4
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _0807FA48
	str r3, [r5, #0x44]
	movs r0, #4
	str r0, [r5, #0x48]
	ldr r1, _0807FA44 @ =0x0300004C
	adds r0, r2, r1
	strh r3, [r0]
	b _0807FA56
	.align 2, 0
_0807FA44: .4byte 0x0300004C
_0807FA48:
	str r3, [r5, #0x44]
	movs r0, #4
	str r0, [r5, #0x48]
	ldr r4, _0807FA98 @ =0x0300004C
	adds r1, r2, r4
	movs r0, #0x80
	strh r0, [r1]
_0807FA56:
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r4, #0
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
	ldr r0, _0807FA9C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #2
	beq _0807FA8A
	cmp r1, #0x10
	bne _0807FAA4
_0807FA8A:
	movs r0, #0x14
	bl VramMalloc
	str r0, [r6, #4]
	ldr r0, _0807FAA0 @ =0x00000209
	b _0807FAB6
	.align 2, 0
_0807FA98: .4byte 0x0300004C
_0807FA9C: .4byte gCurrentLevel
_0807FAA0: .4byte 0x00000209
_0807FAA4:
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _0807FACC
	movs r0, #0x24
	bl VramMalloc
	str r0, [r6, #4]
	ldr r0, _0807FAC8 @ =0x0000021A
_0807FAB6:
	strh r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #1
	strb r0, [r1]
	b _0807FAE4
	.align 2, 0
_0807FAC8: .4byte 0x0000021A
_0807FACC:
	movs r0, #0x24
	bl VramMalloc
	str r0, [r6, #4]
	ldr r0, _0807FB28 @ =0x0000021B
	strh r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	strb r4, [r0]
	adds r0, r5, #0
	adds r0, #0x50
	strb r4, [r0]
_0807FAE4:
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r1, [r6, #8]
	strh r1, [r6, #0x14]
	strh r1, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
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
_0807FB28: .4byte 0x0000021B

	thumb_func_start sub_807FB2C
sub_807FB2C: @ 0x0807FB2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	movs r0, #0
	str r0, [sp, #0x20]
	movs r1, #0
	str r1, [sp, #0x24]
	ldr r0, _0807FC30 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov sl, r0
	ldr r2, _0807FC34 @ =0x0300000C
	adds r2, r6, r2
	str r2, [sp, #0x10]
	ldr r3, [r0]
	str r3, [sp, #0x1c]
	ldr r7, [r0, #0x44]
	cmp r7, #0
	beq _0807FB90
	ldr r5, [r0, #0x3c]
	ldrb r3, [r3, #5]
	lsls r3, r3, #0xb
	ldr r4, _0807FC38 @ =gSineTable
	ldr r2, _0807FC3C @ =gUnknown_03005120
	ldr r1, _0807FC40 @ =0x0300004C
	adds r0, r6, r1
	ldrh r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r7, r0
	ldr r1, _0807FC44 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	mov r3, sl
	str r0, [r3, #0x3c]
	subs r5, r0, r5
	str r5, [sp, #0x20]
_0807FB90:
	mov r4, sl
	ldr r7, [r4, #0x48]
	cmp r7, #0
	beq _0807FBCC
	ldr r5, [r4, #0x40]
	ldr r0, [sp, #0x1c]
	ldrb r3, [r0, #6]
	lsls r3, r3, #0xb
	ldr r4, _0807FC38 @ =gSineTable
	ldr r2, _0807FC3C @ =gUnknown_03005120
	ldr r1, _0807FC40 @ =0x0300004C
	adds r0, r6, r1
	ldrh r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r7, r0
	ldr r1, _0807FC44 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	mov r3, sl
	str r0, [r3, #0x40]
	subs r5, r0, r5
	str r5, [sp, #0x24]
_0807FBCC:
	mov r4, sl
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, [sp, #0x1c]
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _0807FC48 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r1, #0x10
	str r4, [sp, #0x14]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r4, sl
	ldr r0, [r4, #0x3c]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp, #0x10]
	strh r1, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsrs r1, r2, #0x10
	str r1, [sp, #0x18]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldr r3, [sp, #0x10]
	strh r2, [r3, #0x18]
	movs r6, #0
	ldr r7, _0807FC4C @ =gUnknown_03005AB0
	ldr r4, _0807FC50 @ =gUnknown_03005A20
	mov r8, r4

	thumb_func_start sub_807FC1C
sub_807FC1C: @ 0x0807FC1C
	cmp r6, #0
	beq _0807FC54
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	ldr r2, [sp, #0x14]
	lsls r2, r2, #0x10
	str r2, [sp, #0x28]
	b _0807FC62
	.align 2, 0
_0807FC30: .4byte gCurTask
_0807FC34: .4byte 0x0300000C
_0807FC38: .4byte gSineTable
_0807FC3C: .4byte gUnknown_03005120
_0807FC40: .4byte 0x0300004C
_0807FC44: .4byte 0x000003FF
_0807FC48: .4byte gCamera
_0807FC4C: .4byte gUnknown_03005AB0
_0807FC50: .4byte gUnknown_03005A20
_0807FC54:
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r4, #0x80
	ands r0, r4
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	str r1, [sp, #0x28]
_0807FC62:
	cmp r0, #0
	beq _0807FC6A
	bl _08080520
_0807FC6A:
	cmp r6, #0
	beq _0807FC7E
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	ldr r2, [sp, #0x14]
	lsls r2, r2, #0x10
	str r2, [sp, #0x28]
	b _0807FC8E
_0807FC7E:
	mov r3, r8
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	ldr r4, [sp, #0x14]
	lsls r4, r4, #0x10
	str r4, [sp, #0x28]
_0807FC8E:
	cmp r1, #0
	beq _0807FC96
	bl _08080520
_0807FC96:
	cmp r6, #0
	beq _0807FC9E
	ldr r5, [r7]
	b _0807FCA2
_0807FC9E:
	mov r0, r8
	ldr r5, [r0]
_0807FCA2:
	mov r1, sl
	adds r1, #0x4e
	ldrb r0, [r1]
	asrs r0, r6
	movs r2, #1
	ands r0, r2
	str r1, [sp, #0x30]
	cmp r0, #0
	bne _0807FCB6
	b _0807FEAC
_0807FCB6:
	cmp r6, #0
	beq _0807FCC4
	ldr r0, [r7]
	ldr r3, [sp, #0x20]
	adds r0, r0, r3
	str r0, [r7]
	b _0807FCCE
_0807FCC4:
	mov r4, r8
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	str r0, [r4]
_0807FCCE:
	ldr r2, [sp, #0x24]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r2, r3
	cmp r6, #0
	beq _0807FCE2
	ldr r0, [r7, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
	b _0807FCEA
_0807FCE2:
	mov r4, r8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_0807FCEA:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	ble _0807FD50
	cmp r6, #0
	beq _0807FCF8
	ldr r0, [r7]
	b _0807FCFC
_0807FCF8:
	mov r1, r8
	ldr r0, [r1]
_0807FCFC:
	asrs r0, r0, #8
	adds r3, r0, #4
	cmp r6, #0
	beq _0807FD08
	ldr r0, [r7, #4]
	b _0807FD0C
_0807FD08:
	mov r2, r8
	ldr r0, [r2, #4]
_0807FD0C:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0807FD1C
	ldr r4, _0807FD18 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _0807FD20
	.align 2, 0
_0807FD18: .4byte gUnknown_03005AD7
_0807FD1C:
	ldr r0, _0807FD40 @ =gUnknown_03005A47
	ldrb r2, [r0]
_0807FD20:
	ldr r0, _0807FD44 @ =sub_803FC64
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _0807FDB0
	lsls r1, r0, #8
	cmp r6, #0
	beq _0807FD48
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	b _0807FDB0
	.align 2, 0
_0807FD40: .4byte gUnknown_03005A47
_0807FD44: .4byte sub_803FC64
_0807FD48:
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r1
	b _0807FDAE
_0807FD50:
	cmp r6, #0
	beq _0807FD58
	ldr r0, [r7]
	b _0807FD5C
_0807FD58:
	mov r3, r8
	ldr r0, [r3]
_0807FD5C:
	asrs r3, r0, #8
	cmp r6, #0
	beq _0807FD66
	ldr r0, [r7, #4]
	b _0807FD6A
_0807FD66:
	mov r4, r8
	ldr r0, [r4, #4]
_0807FD6A:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0807FD7C
	ldr r0, _0807FD78 @ =gUnknown_03005AD7
	ldrb r2, [r0]
	b _0807FD80
	.align 2, 0
_0807FD78: .4byte gUnknown_03005AD7
_0807FD7C:
	ldr r4, _0807FDA0 @ =gUnknown_03005A47
	ldrb r2, [r4]
_0807FD80:
	ldr r0, _0807FDA4 @ =sub_803FC64
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_804021C
	cmp r0, #0
	bge _0807FDB0
	lsls r1, r0, #8
	cmp r6, #0
	beq _0807FDA8
	ldr r0, [r7]
	subs r0, r0, r1
	str r0, [r7]
	b _0807FDB0
	.align 2, 0
_0807FDA0: .4byte gUnknown_03005A47
_0807FDA4: .4byte sub_803FC64
_0807FDA8:
	mov r2, r8
	ldr r0, [r2]
	subs r0, r0, r1
_0807FDAE:
	str r0, [r2]
_0807FDB0:
	cmp r6, #0
	beq _0807FDB8
	ldr r0, [r7, #4]
	b _0807FDBC
_0807FDB8:
	mov r3, r8
	ldr r0, [r3, #4]
_0807FDBC:
	asrs r0, r0, #8
	subs r3, r0, #5
	cmp r6, #0
	beq _0807FDC8
	ldr r0, [r7]
	b _0807FDCC
_0807FDC8:
	mov r4, r8
	ldr r0, [r4]
_0807FDCC:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0807FDDC
	ldr r0, _0807FDD8 @ =gUnknown_03005AD7
	ldrb r2, [r0]
	b _0807FDE0
	.align 2, 0
_0807FDD8: .4byte gUnknown_03005AD7
_0807FDDC:
	ldr r4, _0807FE0C @ =gUnknown_03005A47
	ldrb r2, [r4]
_0807FDE0:
	ldr r0, _0807FE10 @ =sub_803FD5C
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_804021C
	cmp r0, #0
	bge _0807FE5A
	mov r1, sl
	ldr r0, [r1, #0x48]
	ldr r2, [sp, #0x14]
	lsls r2, r2, #0x10
	str r2, [sp, #0x28]
	cmp r0, #0
	bne _0807FE02
	b _080803AE
_0807FE02:
	cmp r6, #0
	beq _0807FE14
	str r5, [r7]
	b _0807FE18
	.align 2, 0
_0807FE0C: .4byte gUnknown_03005A47
_0807FE10: .4byte sub_803FD5C
_0807FE14:
	mov r3, r8
	str r5, [r3]
_0807FE18:
	cmp r6, #0
	beq _0807FE28
	ldr r0, [r7, #0x10]
	movs r4, #0x21
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [r7, #0x10]
	b _0807FE34
_0807FE28:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #0x10]
_0807FE34:
	cmp r6, #0
	beq _0807FE48
	ldr r0, [r7, #0x10]
	movs r3, #0x80
	orrs r0, r3
	str r0, [r7, #0x10]
	ldr r4, [sp, #0x14]
	lsls r4, r4, #0x10
	str r4, [sp, #0x28]
	b _080803AE
_0807FE48:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r1, #0x10]
	ldr r3, [sp, #0x14]
	lsls r3, r3, #0x10
	str r3, [sp, #0x28]
	b _080803AE
_0807FE5A:
	mov r4, sl
	ldr r1, [r4, #0x3c]
	asrs r1, r1, #8
	ldr r0, [sp, #0x14]
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r3, [sp, #0x18]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r3, _0807FEA4 @ =gUnknown_03005A20
	str r2, [sp, #0x28]
	cmp r6, #0
	beq _0807FE86
	ldr r3, _0807FEA8 @ =gUnknown_03005AB0
_0807FE86:
	ldr r0, [sp, #0x10]
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800CE34
	cmp r0, #0
	beq _0807FE96
	b _080803AE
_0807FE96:
	movs r1, #1
	lsls r1, r6
	ldr r4, [sp, #0x30]
	ldrb r0, [r4]
	bics r0, r1
	strb r0, [r4]
	b _080803AE
	.align 2, 0
_0807FEA4: .4byte gUnknown_03005A20
_0807FEA8: .4byte gUnknown_03005AB0
_0807FEAC:
	add r2, sp, #4
	cmp r6, #0
	beq _0807FEB6
	ldrb r0, [r7, #0xe]
	b _0807FEBA
_0807FEB6:
	mov r1, r8
	ldrb r0, [r1, #0xe]
_0807FEBA:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	adds r5, r0, #0
	cmp r6, #0
	beq _0807FECC
	ldrb r0, [r7, #0xf]
	b _0807FED0
_0807FECC:
	mov r4, r8
	ldrb r0, [r4, #0xf]
_0807FED0:
	movs r3, #1
	subs r1, r3, r0
	mov r0, sp
	adds r0, #9
	strb r1, [r0]
	cmp r6, #0
	beq _0807FEE2
	ldrb r0, [r7, #0xe]
	b _0807FEE6
_0807FEE2:
	mov r4, r8
	ldrb r0, [r4, #0xe]
_0807FEE6:
	adds r1, r0, #5
	mov r0, sp
	adds r0, #0xa
	strb r1, [r0]
	cmp r6, #0
	beq _0807FEF6
	ldrb r0, [r7, #0xf]
	b _0807FEFA
_0807FEF6:
	mov r1, r8
	ldrb r0, [r1, #0xf]
_0807FEFA:
	subs r1, r0, #1
	mov r0, sp
	adds r0, #0xb
	strb r1, [r0]
	adds r0, r2, #0
	adds r1, r5, #0
	movs r2, #4
	bl memcpy
	ldr r2, [sp, #0x14]
	lsls r3, r2, #0x10
	asrs r1, r3, #0x10
	mov r4, sl
	ldr r0, [r4, #0x3c]
	asrs r0, r0, #8
	adds r1, r1, r0
	mov ip, r1
	ldr r0, [sp, #0x18]
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r4, r1, r0
	add r5, sp, #4
	str r3, [sp, #0x28]
	str r2, [sp, #0x2c]
	cmp r6, #0
	beq _0807FF36
	str r7, [sp]
	b _0807FF3A
_0807FF36:
	mov r1, r8
	str r1, [sp]
_0807FF3A:
	ldr r0, [sp, #0x10]
	mov r1, ip
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_80805C8
	cmp r6, #0
	beq _0807FF4E
	ldr r5, [r7]
	b _0807FF52
_0807FF4E:
	mov r2, r8
	ldr r5, [r2]
_0807FF52:
	cmp r6, #0
	beq _0807FF5C
	ldr r3, [r7, #4]
	mov sb, r3
	b _0807FF62
_0807FF5C:
	ldr r4, _0807FFD8 @ =gUnknown_03005A20
	ldr r4, [r4, #4]
	mov sb, r4
_0807FF62:
	mov r0, sl
	ldr r1, [r0, #0x3c]
	asrs r1, r1, #8
	ldr r2, [sp, #0x28]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	mov r3, sl
	ldr r1, [r3, #0x40]
	asrs r1, r1, #8
	ldr r2, [sp, #0x2c]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0807FFD8 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0807FF8A
	ldr r3, _0807FFDC @ =gUnknown_03005AB0
_0807FF8A:
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	bl sub_80096B0
	adds r3, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	bne _0807FFA0
	b _080801F0
_0807FFA0:
	mov r2, sl
	adds r2, #0x4f
	movs r0, #1
	lsls r0, r6
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _08080098
	mov r3, sl
	ldr r0, [r3, #0x44]
	cmp r0, #0
	bne _0807FFC2
	b _080803AE
_0807FFC2:
	ldr r0, _0807FFE0 @ =gInput
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808002A
	cmp r6, #0
	beq _0807FFE4
	ldr r0, [r7, #0x10]
	b _0807FFE8
	.align 2, 0
_0807FFD8: .4byte gUnknown_03005A20
_0807FFDC: .4byte gUnknown_03005AB0
_0807FFE0: .4byte gInput
_0807FFE4:
	mov r4, r8
	ldr r0, [r4, #0x10]
_0807FFE8:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0808002A
	cmp r6, #0
	beq _08080004
	ldr r0, [r7]
	ldr r1, _08080000 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7]
	b _0808000E
	.align 2, 0
_08080000: .4byte 0xFFFFFE00
_08080004:
	mov r2, r8
	ldr r0, [r2]
	ldr r3, _0808001C @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r2]
_0808000E:
	cmp r6, #0
	beq _08080020
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0808002A
	.align 2, 0
_0808001C: .4byte 0xFFFFFE00
_08080020:
	mov r4, r8
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x10]
_0808002A:
	cmp r6, #0
	beq _08080032
	ldr r0, [r7]
	b _08080036
_08080032:
	mov r1, r8
	ldr r0, [r1]
_08080036:
	asrs r3, r0, #8
	cmp r6, #0
	beq _08080040
	ldr r0, [r7, #4]
	b _08080044
_08080040:
	mov r2, r8
	ldr r0, [r2, #4]
_08080044:
	asrs r1, r0, #8
	cmp r6, #0
	beq _08080054
	ldr r4, _08080050 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _08080058
	.align 2, 0
_08080050: .4byte gUnknown_03005AD7
_08080054:
	ldr r0, _0808007C @ =gUnknown_03005A47
	ldrb r2, [r0]
_08080058:
	ldr r0, _08080080 @ =sub_803FC64
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_804021C
	cmp r0, #0
	blt _0808006C
	b _080803AE
_0808006C:
	cmp r6, #0
	beq _08080084
_08080070:
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _08080090
	.align 2, 0
_0808007C: .4byte gUnknown_03005A47
_08080080: .4byte sub_803FC64
_08080084:
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r3, #0x21
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r2, #0x10]
_08080090:
	cmp r6, #0
	beq _08080096
	b _080801B8
_08080096:
	b _080801C2
_08080098:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _08080154
	mov r3, sl
	ldr r0, [r3, #0x44]
	cmp r0, #0
	bne _080800AC
	b _080803AE
_080800AC:
	ldr r0, _080800C0 @ =gInput
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08080104
	cmp r6, #0
	beq _080800C4
	ldr r0, [r7, #0x10]
	b _080800C8
	.align 2, 0
_080800C0: .4byte gInput
_080800C4:
	mov r4, r8
	ldr r0, [r4, #0x10]
_080800C8:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08080104
	cmp r6, #0
	beq _080800E0
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r7]
	b _080800EC
_080800E0:
	mov r2, r8
	ldr r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r2]
_080800EC:
	cmp r6, #0
	beq _080800FA
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08080104
_080800FA:
	mov r4, r8
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x10]
_08080104:
	cmp r6, #0
	beq _0808010C
	ldr r0, [r7]
	b _08080110
_0808010C:
	mov r1, r8
	ldr r0, [r1]
_08080110:
	asrs r3, r0, #8
	cmp r6, #0
	beq _0808011A
	ldr r0, [r7, #4]
	b _0808011E
_0808011A:
	mov r2, r8
	ldr r0, [r2, #4]
_0808011E:
	asrs r1, r0, #8
	cmp r6, #0
	beq _08080130
	ldr r4, _0808012C @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _08080134
	.align 2, 0
_0808012C: .4byte gUnknown_03005AD7
_08080130:
	ldr r0, _0808014C @ =gUnknown_03005A47
	ldrb r2, [r0]
_08080134:
	ldr r0, _08080150 @ =sub_803FC64
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	blt _08080146
	b _080803AE
_08080146:
	cmp r6, #0
	bne _08080070
	b _08080084
	.align 2, 0
_0808014C: .4byte gUnknown_03005A47
_08080150: .4byte sub_803FC64
_08080154:
	mov r3, sl
	ldr r0, [r3, #0x48]
	cmp r0, #0
	beq _080801CE
	cmp r6, #0
	beq _08080164
	str r5, [r7]
	b _08080168
_08080164:
	mov r4, r8
	str r5, [r4]
_08080168:
	cmp r6, #0
	beq _08080170
	ldr r0, [r7, #0x10]
	b _08080174
_08080170:
	mov r1, r8
	ldr r0, [r1, #0x10]
_08080174:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080801CE
	cmp r6, #0
	beq _08080184
	str r5, [r7]
	b _08080188
_08080184:
	mov r2, r8
	str r5, [r2]
_08080188:
	cmp r6, #0
	beq _08080192
	mov r3, sb
	str r3, [r7, #4]
	b _08080198
_08080192:
	mov r4, sb
	mov r0, r8
	str r4, [r0, #4]
_08080198:
	cmp r6, #0
	beq _080801A8
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _080801B4
_080801A8:
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r3, #0x21
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r2, #0x10]
_080801B4:
	cmp r6, #0
	beq _080801C2
_080801B8:
	ldr r0, [r7, #0x10]
	movs r4, #0x80
	orrs r0, r4
	str r0, [r7, #0x10]
	b _080803AE
_080801C2:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r1, #0x10]
	b _080803AE
_080801CE:
	mov r0, sl
	adds r0, #0x50
	ldrb r0, [r0]
	cmp r0, #0
	beq _080801DA
	b _080803AE
_080801DA:
	ldr r0, _080801E8 @ =gUnknown_03005A20
	cmp r6, #0
	beq _080801E2
	ldr r0, _080801EC @ =gUnknown_03005AB0
_080801E2:
	bl sub_800C558
	b _080803AE
	.align 2, 0
_080801E8: .4byte gUnknown_03005A20
_080801EC: .4byte gUnknown_03005AB0
_080801F0:
	mov r1, sl
	adds r1, #0x4f
	ldrb r0, [r1]
	asrs r0, r6
	movs r3, #1
	ands r0, r3
	adds r2, r1, #0
	cmp r0, #0
	bne _08080204
	b _080803AE
_08080204:
	cmp r6, #0
	beq _08080218
	ldr r4, _08080214 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0xe
	beq _08080224
	b _080803AE
	.align 2, 0
_08080214: .4byte gUnknown_03005AF0
_08080218:
	ldr r1, _08080238 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0xe
	beq _08080224
	b _080803AE
_08080224:
	movs r0, #1
	lsls r0, r6
	ldrb r1, [r2]
	bics r1, r0
	movs r0, #0
	strb r1, [r2]
	cmp r6, #0
	beq _0808023C
	strh r0, [r7, #0xc]
	b _08080240
	.align 2, 0
_08080238: .4byte gUnknown_03005A60
_0808023C:
	mov r2, r8
	strh r6, [r2, #0xc]
_08080240:
	ldr r0, _0808025C @ =gUnknown_03005A20
	cmp r6, #0
	beq _08080248
	ldr r0, _08080260 @ =gUnknown_03005AB0
_08080248:
	bl sub_8046CEC
	cmp r6, #0
	beq _08080264
	ldr r0, [r7, #0x10]
	movs r3, #0x21
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r7, #0x10]
	b _08080270
	.align 2, 0
_0808025C: .4byte gUnknown_03005A20
_08080260: .4byte gUnknown_03005AB0
_08080264:
	mov r4, r8
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_08080270:
	cmp r6, #0
	beq _08080284
	ldr r2, _08080280 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0xe
	beq _08080290
	b _080803AE
	.align 2, 0
_08080280: .4byte gUnknown_03005AF0
_08080284:
	ldr r3, _080802A0 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0xe
	beq _08080290
	b _080803AE
_08080290:
	cmp r6, #0
	beq _080802A8
	ldr r4, _080802A4 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bne _080802B2
	b _08080338
	.align 2, 0
_080802A0: .4byte gUnknown_03005A60
_080802A4: .4byte gUnknown_03005B09
_080802A8:
	ldr r1, _080802BC @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	beq _08080338
_080802B2:
	cmp r6, #0
	beq _080802C0
	ldr r0, [r7, #0x10]
	b _080802C4
	.align 2, 0
_080802BC: .4byte gUnknown_03005A79
_080802C0:
	mov r2, r8
	ldr r0, [r2, #0x10]
_080802C4:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080802E0
	cmp r6, #0
	beq _080802DC
	movs r0, #4
	ldr r3, _080802D8 @ =gUnknown_03005AF0
	b _080803AC
	.align 2, 0
_080802D8: .4byte gUnknown_03005AF0
_080802DC:
	movs r0, #4
	b _08080312
_080802E0:
	cmp r6, #0
	beq _080802F4
	ldr r1, _080802F0 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _080802FE
	b _0808031C
	.align 2, 0
_080802F0: .4byte gUnknown_03005B09
_080802F4:
	ldr r2, _08080308 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	beq _0808031C
_080802FE:
	cmp r6, #0
	beq _08080310
	movs r0, #5
	ldr r3, _0808030C @ =gUnknown_03005AF0
	b _080803AC
	.align 2, 0
_08080308: .4byte gUnknown_03005A79
_0808030C: .4byte gUnknown_03005AF0
_08080310:
	movs r0, #5
_08080312:
	ldr r4, _08080318 @ =gUnknown_03005A60
	strb r0, [r4]
	b _080803AE
	.align 2, 0
_08080318: .4byte gUnknown_03005A60
_0808031C:
	cmp r6, #0
	beq _0808032C
	movs r0, #0x55
	ldr r1, _08080328 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _080803AE
	.align 2, 0
_08080328: .4byte gUnknown_03005AF0
_0808032C:
	movs r0, #0x55
	ldr r2, _08080334 @ =gUnknown_03005A60
	strb r0, [r2]
	b _080803AE
	.align 2, 0
_08080334: .4byte gUnknown_03005A60
_08080338:
	cmp r6, #0
	beq _08080340
	ldr r0, [r7, #0x10]
	b _08080344
_08080340:
	mov r3, r8
	ldr r0, [r3, #0x10]
_08080344:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08080358
	cmp r6, #0
	beq _08080354
	movs r0, #4
	b _0808037C
_08080354:
	movs r0, #4
	b _0808038E
_08080358:
	cmp r6, #0
	beq _0808036C
	ldr r2, _08080368 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _08080376
	b _08080398
	.align 2, 0
_08080368: .4byte gUnknown_03005B09
_0808036C:
	ldr r3, _08080384 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	beq _08080398
_08080376:
	cmp r6, #0
	beq _0808038C
	movs r0, #5
_0808037C:
	ldr r4, _08080388 @ =gUnknown_03005AF0
	strb r0, [r4]
	b _080803AE
	.align 2, 0
_08080384: .4byte gUnknown_03005A79
_08080388: .4byte gUnknown_03005AF0
_0808038C:
	movs r0, #5
_0808038E:
	ldr r1, _08080394 @ =gUnknown_03005A60
	strb r0, [r1]
	b _080803AE
	.align 2, 0
_08080394: .4byte gUnknown_03005A60
_08080398:
	cmp r6, #0
	beq _080803A8
	movs r0, #0x55
	ldr r2, _080803A4 @ =gUnknown_03005AF0
	strb r0, [r2]
	b _080803AE
	.align 2, 0
_080803A4: .4byte gUnknown_03005AF0
_080803A8:
	movs r0, #0x55
	ldr r3, _080803BC @ =gUnknown_03005A60
_080803AC:
	strb r0, [r3]
_080803AE:
	cmp r6, #0
	beq _080803C0
	ldr r0, [r7, #0x10]
	movs r4, #0x80
	ands r0, r4
	b _080803C8
	.align 2, 0
_080803BC: .4byte gUnknown_03005A60
_080803C0:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	ands r0, r2
_080803C8:
	cmp r0, #0
	beq _080803CE
	b _08080520
_080803CE:
	cmp r6, #0
	beq _080803DC
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bge _080803E8
	b _08080520
_080803DC:
	mov r4, r8
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080803E8
	b _08080520
_080803E8:
	ldr r3, [sp, #0x18]
	lsls r2, r3, #0x10
	asrs r1, r2, #0x10
	mov r4, sl
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r1, r1, r0
	str r2, [sp, #0x2c]
	cmp r6, #0
	beq _08080406
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _08080412
	b _08080520
_08080406:
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _08080412
	b _08080520
_08080412:
	add r3, sp, #8
	adds r5, r3, #0
	cmp r6, #0
	beq _0808041E
	ldrb r0, [r7, #0xe]
	b _08080422
_0808041E:
	mov r4, r8
	ldrb r0, [r4, #0xe]
_08080422:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	adds r1, r0, #0
	cmp r6, #0
	beq _08080434
	ldrb r0, [r7, #0xf]
	b _08080438
_08080434:
	mov r2, r8
	ldrb r0, [r2, #0xf]
_08080438:
	movs r4, #1
	subs r2, r4, r0
	mov r0, sp
	adds r0, #0xd
	strb r2, [r0]
	cmp r6, #0
	beq _0808044A
	ldrb r0, [r7, #0xe]
	b _0808044E
_0808044A:
	mov r2, r8
	ldrb r0, [r2, #0xe]
_0808044E:
	adds r2, r0, #5
	mov r0, sp
	adds r0, #0xe
	strb r2, [r0]
	cmp r6, #0
	beq _0808045E
	ldrb r0, [r7, #0xf]
	b _08080462
_0808045E:
	mov r4, r8
	ldrb r0, [r4, #0xf]
_08080462:
	subs r2, r0, #1
	mov r0, sp
	adds r0, #0xf
	strb r2, [r0]
	adds r0, r3, #0
	movs r2, #4
	bl memcpy
	ldr r0, [sp, #0x28]
	asrs r1, r0, #0x10
	mov r2, sl
	ldr r0, [r2, #0x3c]
	asrs r0, r0, #8
	adds r4, r1, r0
	ldr r3, [sp, #0x2c]
	asrs r1, r3, #0x10
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	adds r2, r1, r0
	adds r3, r5, #0
	cmp r6, #0
	beq _08080492
	str r7, [sp]
	b _08080496
_08080492:
	mov r0, r8
	str r0, [sp]
_08080496:
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	bl sub_80805C8
	mov r2, sl
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	ldr r3, [sp, #0x28]
	asrs r0, r3, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r1, [r2, #0x40]
	asrs r1, r1, #8
	ldr r2, [sp, #0x2c]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _080804F0 @ =gUnknown_03005A20
	cmp r6, #0
	beq _080804C6
	ldr r3, _080804F4 @ =gUnknown_03005AB0
_080804C6:
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	bl sub_80096B0
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _08080520
	mov r0, sl
	adds r0, #0x50
	ldrb r0, [r0]
	cmp r0, #0
	beq _080804F8
	ldr r0, _080804F0 @ =gUnknown_03005A20
	cmp r6, #0
	beq _080804E8
	ldr r0, _080804F4 @ =gUnknown_03005AB0
_080804E8:
	bl sub_800C558
	b _08080520
	.align 2, 0
_080804F0: .4byte gUnknown_03005A20
_080804F4: .4byte gUnknown_03005AB0
_080804F8:
	movs r0, #1
	lsls r0, r6
	ldr r3, [sp, #0x30]
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
	cmp r6, #0
	beq _08080514
	ldr r0, [r7, #4]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [r7, #4]
	b _08080520
_08080514:
	mov r1, r8
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1, #4]
_08080520:
	adds r6, #1
	ldr r0, _080805A4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _08080532
	bl sub_807FC1C
_08080532:
	ldr r3, [sp, #0x28]
	asrs r1, r3, #0x10
	ldr r3, _080805A8 @ =gCamera
	movs r0, #0
	ldrsh r4, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r4, r2
	cmp r1, r0
	bgt _0808056A
	adds r0, r4, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0808056A
	ldr r4, [sp, #0x18]
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808056A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _080805B0
_0808056A:
	ldr r4, [sp, #0x10]
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08080590
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08080590
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080805B0
_08080590:
	mov r3, sl
	ldrb r0, [r3, #8]
	ldr r4, [sp, #0x1c]
	strb r0, [r4]
	ldr r0, _080805AC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080805B6
	.align 2, 0
_080805A4: .4byte gUnknown_03005088
_080805A8: .4byte gCamera
_080805AC: .4byte gCurTask
_080805B0:
	ldr r0, [sp, #0x10]
	bl DisplaySprite
_080805B6:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80805C8
sub_80805C8: @ 0x080805C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov ip, r0
	adds r7, r1, #0
	mov r8, r2
	adds r5, r3, #0
	ldr r4, [sp, #0x20]
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r7, r3
	ldr r0, [r4]
	asrs r0, r0, #8
	movs r6, #0
	ldrsb r6, [r5, r6]
	adds r1, r0, r6
	cmp r2, r1
	bgt _08080608
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _08080616
	cmp r2, r1
	bge _08080608
	b _0808070C
_08080608:
	movs r0, #2
	ldrsb r0, [r5, r0]
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	bge _08080616
	b _0808070C
_08080616:
	mov r0, ip
	adds r0, #0x2d
	movs r3, #0
	ldrsb r3, [r0, r3]
	mov r0, r8
	adds r2, r0, r3
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r6, #1
	ldrsb r6, [r5, r6]
	adds r1, r0, r6
	cmp r2, r1
	bgt _08080646
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _08080652
	cmp r2, r1
	blt _0808070C
_08080646:
	movs r0, #3
	ldrsb r0, [r5, r0]
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	blt _0808070C
_08080652:
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	movs r1, #2
	ldrsb r1, [r5, r1]
	subs r1, r0, r1
	adds r2, r1, #0
	adds r2, #8
	ldr r0, [r4]
	asrs r3, r0, #8
	cmp r3, r2
	bgt _0808067E
	lsls r0, r1, #8
	str r0, [r4]
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080806AA
	b _080806A4
_0808067E:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	movs r1, #0
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	adds r2, r0, #0
	subs r2, #8
	cmp r3, r2
	blt _0808070C
	lsls r0, r0, #8
	str r0, [r4]
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080806AA
_080806A4:
	movs r0, #0
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
_080806AA:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r0, #9
	ldr r1, [r4]
	asrs r1, r1, #8
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r2, [r5]
	movs r7, #0
	str r7, [sp]
	ldr r6, _08080708 @ =sub_803FF84
	str r6, [sp, #4]
	movs r3, #8
	bl sub_803FA74
	cmp r0, #0
	bge _080806D4
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_080806D4:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrb r2, [r5]
	movs r3, #8
	rsbs r3, r3, #0
	str r7, [sp]
	str r6, [sp, #4]
	bl sub_803FA74
	cmp r0, #0
	bge _080806F6
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_080806F6:
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #0x18
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #1
	b _0808070E
	.align 2, 0
_08080708: .4byte sub_803FF84
_0808070C:
	movs r0, #0
_0808070E:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_808071C
sub_808071C: @ 0x0808071C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable062
CreateEntity_Interactable062: @ 0x08080730
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, _0808083C @ =sub_8080864
	ldr r1, _08080840 @ =sub_80813DC
	str r1, [sp]
	movs r1, #0x54
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldr r7, _08080844 @ =0x0300000C
	adds r2, r4, r7
	movs r3, #0
	movs r5, #0
	strh r6, [r1, #4]
	mov r0, r8
	strh r0, [r1, #6]
	mov r7, sl
	str r7, [r1]
	ldrb r0, [r7]
	strb r0, [r1, #8]
	mov r0, sb
	strb r0, [r1, #9]
	ldr r7, _08080848 @ =0x03000050
	adds r0, r4, r7
	strb r3, [r0]
	subs r7, #0x10
	adds r0, r4, r7
	strh r5, [r0]
	adds r7, #2
	adds r0, r4, r7
	strh r5, [r0]
	str r5, [r1, #0x48]
	str r5, [r1, #0x4c]
	strh r5, [r1, #0x3c]
	strh r5, [r1, #0x3e]
	ldr r1, _0808084C @ =0x03000051
	adds r0, r4, r1
	strb r3, [r0]
	mov r7, sl
	ldrb r0, [r7]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r2, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov r8, r1
	add r0, r8
	strh r0, [r2, #0x18]
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	mov r1, sl
	strb r0, [r1]
	movs r0, #0x3c
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl VramMalloc
	ldr r2, [sp, #4]
	str r0, [r2, #4]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	ldr r1, _08080850 @ =gUnknown_086CED98
	ldr r0, _08080854 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	ldr r7, _08080858 @ =0x0300002C
	adds r0, r4, r7
	ldr r3, [sp, #8]
	strb r3, [r0]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _0808085C @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r7, #2
	adds r1, r4, r7
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08080860 @ =0x03000031
	adds r4, r4, r0
	strb r3, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r2, #0x10]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808083C: .4byte sub_8080864
_08080840: .4byte sub_80813DC
_08080844: .4byte 0x0300000C
_08080848: .4byte 0x03000050
_0808084C: .4byte 0x03000051
_08080850: .4byte gUnknown_086CED98
_08080854: .4byte gCurrentLevel
_08080858: .4byte 0x0300002C
_0808085C: .4byte 0x0300002D
_08080860: .4byte 0x03000031

	thumb_func_start sub_8080864
sub_8080864: @ 0x08080864
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r3, _08080920 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08080924 @ =0x0300000C
	adds r0, r0, r1
	mov sl, r0
	mov r1, r8
	ldr r6, [r1]
	ldrb r2, [r1, #8]
	lsls r2, r2, #3
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	mov r4, r8
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r5, _08080928 @ =gCamera
	ldrh r0, [r5]
	lsrs r7, r2, #0x10
	str r7, [sp]
	asrs r2, r2, #0x10
	subs r0, r2, r0
	mov r4, sl
	strh r0, [r4, #0x16]
	ldrh r0, [r5, #2]
	lsrs r7, r1, #0x10
	str r7, [sp, #4]
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r4, #0x18]
	movs r0, #0
	ldrsh r4, [r5, r0]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r4, r7
	cmp r2, r0
	bgt _080808EA
	adds r0, r4, #0
	subs r0, #0x80
	cmp r2, r0
	blt _080808EA
	movs r0, #2
	ldrsh r2, [r5, r0]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r2, r4
	cmp r1, r0
	bgt _080808EA
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0808092C
_080808EA:
	mov r7, sl
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08080910
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08080910
	movs r2, #0x18
	ldrsh r1, [r7, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808092C
_08080910:
	mov r4, r8
	ldrb r0, [r4, #8]
	strb r0, [r6]
	ldr r0, [r3]
	bl TaskDestroy
	b _08080B5E
	.align 2, 0
_08080920: .4byte gCurTask
_08080924: .4byte 0x0300000C
_08080928: .4byte gCamera
_0808092C:
	movs r4, #0
	ldr r5, _0808094C @ =gUnknown_03005AB0
	ldr r6, _08080950 @ =gUnknown_03005A20
	movs r7, #0
	str r7, [sp, #8]
_08080936:
	cmp r4, #0
	beq _08080954
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08080946
	b _08080B42
_08080946:
	ldr r3, _08080950 @ =gUnknown_03005A20
	b _08080962
	.align 2, 0
_0808094C: .4byte gUnknown_03005AB0
_08080950: .4byte gUnknown_03005A20
_08080954:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	ands r1, r0
	ldr r3, _08080978 @ =gUnknown_03005A20
	cmp r1, #0
	beq _08080962
	b _08080B42
_08080962:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r7, r0, #0
	cmp r4, #0
	beq _0808097C
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r0, r1
	bgt _08080984
	b _08080988
	.align 2, 0
_08080978: .4byte gUnknown_03005A20
_0808097C:
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r0, r1
	ble _08080988
_08080984:
	movs r1, #0xa
	b _0808098A
_08080988:
	ldr r1, _080809D8 @ =0x0000FFF6
_0808098A:
	asrs r0, r7, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	movs r2, #0xa0
	lsls r2, r2, #0xb
	adds r0, r0, r2
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _080809A8
	ldr r3, _080809DC @ =gUnknown_03005AB0
_080809A8:
	mov r0, sl
	bl sub_800CE34
	cmp r0, #0
	bne _080809B4
	b _08080B42
_080809B4:
	mov r2, r8
	adds r2, #0x51
	movs r0, #1
	lsls r0, r4
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	mov r0, r8
	adds r0, #0x40
	ldr r2, [sp, #8]
	adds r1, r0, r2
	cmp r4, #0
	beq _080809E0
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #0
	blt _080809E8
	b _080809F8
	.align 2, 0
_080809D8: .4byte 0x0000FFF6
_080809DC: .4byte gUnknown_03005AB0
_080809E0:
	movs r2, #8
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _080809F8
_080809E8:
	cmp r4, #0
	beq _080809F2
	ldrh r0, [r5, #8]
	rsbs r0, r0, #0
	b _08080A02
_080809F2:
	ldrh r0, [r6, #8]
	rsbs r0, r0, #0
	b _08080A02
_080809F8:
	cmp r4, #0
	beq _08080A00
	ldrh r0, [r5, #8]
	b _08080A02
_08080A00:
	ldrh r0, [r6, #8]
_08080A02:
	lsls r0, r0, #2
	strh r0, [r1]
	mov r0, r8
	adds r0, #0x3c
	ldr r1, [sp, #8]
	adds r0, r0, r1
	mov sb, r0
	asrs r1, r7, #0x10
	cmp r4, #0
	beq _08080A1A
	ldr r0, [r5]
	b _08080A1C
_08080A1A:
	ldr r0, [r6]
_08080A1C:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x30
	lsls r0, r0, #9
	movs r1, #0x60
	bl Div
	cmp r0, #0
	bge _08080A5C
	asrs r1, r7, #0x10
	cmp r4, #0
	beq _08080A38
	ldr r0, [r5]
	b _08080A3A
_08080A38:
	ldr r0, [r6]
_08080A3A:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x30
	lsls r0, r0, #9
	movs r1, #0x60
	bl Div
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r2, #0
	subs r1, r1, r0
	ldr r7, _08080A58 @ =0x000003FF
	adds r0, r7, #0
	b _08080A80
	.align 2, 0
_08080A58: .4byte 0x000003FF
_08080A5C:
	asrs r1, r7, #0x10
	cmp r4, #0
	beq _08080A66
	ldr r0, [r5]
	b _08080A68
_08080A66:
	ldr r0, [r6]
_08080A68:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x30
	lsls r0, r0, #9
	movs r1, #0x60
	bl Div
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, _08080AA8 @ =0x000003FF
	adds r1, r2, #0
_08080A80:
	ands r0, r1
	movs r2, #0
	mov r7, sb
	strh r0, [r7]
	lsls r1, r4, #2
	mov r0, r8
	adds r0, #0x48
	adds r0, r0, r1
	str r2, [r0]
	mov r0, r8
	adds r0, #0x50
	movs r1, #0
	strb r1, [r0]
	subs r0, #0xc
	strh r2, [r0]
	cmp r4, #0
	beq _08080AAC
	strh r2, [r5, #0x38]
	b _08080AAE
	.align 2, 0
_08080AA8: .4byte 0x000003FF
_08080AAC:
	strh r4, [r6, #0x38]
_08080AAE:
	ldr r3, _08080ABC @ =gUnknown_03005A20
	cmp r4, #0
	beq _08080AC0
	movs r0, #0
	strh r0, [r5, #0x3a]
	b _08080AC2
	.align 2, 0
_08080ABC: .4byte gUnknown_03005A20
_08080AC0:
	strh r4, [r3, #0x3a]
_08080AC2:
	adds r0, r3, #0
	cmp r4, #0
	beq _08080ACA
	ldr r0, _08080ADC @ =gUnknown_03005AB0
_08080ACA:
	bl sub_8046CEC
	cmp r4, #0
	beq _08080AE4
	movs r0, #5
	ldr r2, _08080AE0 @ =gUnknown_03005AF0
	strb r0, [r2]
	b _08080AEA
	.align 2, 0
_08080ADC: .4byte gUnknown_03005AB0
_08080AE0: .4byte gUnknown_03005AF0
_08080AE4:
	movs r0, #5
	ldr r7, _08080AFC @ =gUnknown_03005A60
	strb r0, [r7]
_08080AEA:
	cmp r4, #0
	beq _08080B00
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08080B0A
	.align 2, 0
_08080AFC: .4byte gUnknown_03005A60
_08080B00:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
_08080B0A:
	movs r0, #0xce
	bl m4aSongNumStart
	ldr r0, _08080B2C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08080B30 @ =sub_8080B78
	str r0, [r1, #8]
	cmp r4, #0
	beq _08080B38
	ldr r1, _08080B34 @ =gUnknown_03005AD6
	ldrb r0, [r1]
	movs r1, #0x80
	orrs r0, r1
	ldr r2, _08080B34 @ =gUnknown_03005AD6
	strb r0, [r2]
	b _08080B42
	.align 2, 0
_08080B2C: .4byte gCurTask
_08080B30: .4byte sub_8080B78
_08080B34: .4byte gUnknown_03005AD6
_08080B38:
	ldr r7, _08080B70 @ =gUnknown_03005A46
	ldrb r0, [r7]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r7]
_08080B42:
	ldr r0, [sp, #8]
	adds r0, #2
	str r0, [sp, #8]
	adds r4, #1
	ldr r0, _08080B74 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _08080B58
	b _08080936
_08080B58:
	mov r0, sl
	bl DisplaySprite
_08080B5E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08080B70: .4byte gUnknown_03005A46
_08080B74: .4byte gUnknown_03005088

	thumb_func_start sub_8080B78
sub_8080B78: @ 0x08080B78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08080BE4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r0, r1, r0
	str r0, [sp]
	ldr r1, [r7]
	str r1, [sp, #0xc]
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r1, _08080BE8 @ =gCamera
	ldrh r0, [r1]
	lsrs r6, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	ldr r4, [sp]
	strh r2, [r4, #0x16]
	ldr r4, [r7, #0x48]
	ldr r3, [r7, #0x4c]
	cmp r4, r3
	bls _08080BEC
	ldrh r1, [r1, #2]
	ldr r0, [sp, #4]
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	subs r0, r0, r1
	lsrs r1, r4, #0xd
	adds r0, r0, r1
	ldr r1, [sp]
	strh r0, [r1, #0x18]
	ldr r0, [r7, #0x48]
	b _08080C00
	.align 2, 0
_08080BE4: .4byte gCurTask
_08080BE8: .4byte gCamera
_08080BEC:
	ldrh r1, [r1, #2]
	ldr r4, [sp, #4]
	lsls r2, r4, #0x10
	asrs r0, r2, #0x10
	subs r0, r0, r1
	lsrs r1, r3, #0xd
	adds r0, r0, r1
	ldr r1, [sp]
	strh r0, [r1, #0x18]
	ldr r0, [r7, #0x4c]
_08080C00:
	lsrs r0, r0, #0xd
	str r0, [sp, #8]
	str r2, [sp, #0x10]
	movs r5, #0
	lsls r6, r6, #0x10
	mov sl, r6
	adds r2, r7, #0
	adds r2, #0x51
	str r2, [sp, #0x18]
	ldr r6, _08080C20 @ =gUnknown_03005AB0
	ldr r4, _08080C24 @ =gUnknown_03005A20
	mov r8, r4
_08080C18:
	cmp r5, #0
	beq _08080C28
	ldr r0, [r6, #0x10]
	b _08080C2C
	.align 2, 0
_08080C20: .4byte gUnknown_03005AB0
_08080C24: .4byte gUnknown_03005A20
_08080C28:
	mov r1, r8
	ldr r0, [r1, #0x10]
_08080C2C:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08080C36
	b _08080DF2
_08080C36:
	ldr r2, [sp, #0x18]
	ldrb r0, [r2]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080C46
	b _08080DF2
_08080C46:
	mov r4, sl
	asrs r1, r4, #0x10
	cmp r5, #0
	beq _08080C60
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r3, _08080C5C @ =gUnknown_03005A20
	cmp r0, r1
	bgt _08080C6C
	b _08080C74
	.align 2, 0
_08080C5C: .4byte gUnknown_03005A20
_08080C60:
	mov r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r3, _08080C70 @ =gUnknown_03005A20
	cmp r0, r1
	ble _08080C74
_08080C6C:
	movs r1, #0xa
	b _08080C76
	.align 2, 0
_08080C70: .4byte gUnknown_03005A20
_08080C74:
	ldr r1, _08080CBC @ =0x0000FFF6
_08080C76:
	mov r4, sl
	asrs r0, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, [sp, #4]
	adds r0, #0xd
	ldr r2, [sp, #8]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r5, #0
	beq _08080C96
	ldr r3, _08080CC0 @ =gUnknown_03005AB0
_08080C96:
	ldr r0, [sp]
	bl sub_800CE34
	cmp r0, #0
	bne _08080CA2
	b _08080DF2
_08080CA2:
	adds r0, r7, #0
	adds r0, #0x40
	adds r4, r7, #0
	adds r4, #0x42
	ldrh r3, [r0]
	ldrh r1, [r4]
	adds r2, r0, #0
	cmp r3, r1
	bls _08080CC4
	strh r3, [r4]
	ldr r0, [r7, #0x48]
	str r0, [r7, #0x4c]
	b _08080CCA
	.align 2, 0
_08080CBC: .4byte 0x0000FFF6
_08080CC0: .4byte gUnknown_03005AB0
_08080CC4:
	strh r1, [r2]
	ldr r0, [r7, #0x4c]
	str r0, [r7, #0x48]
_08080CCA:
	movs r0, #1
	lsls r0, r5
	ldr r4, [sp, #0x18]
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	lsls r1, r5, #1
	adds r0, r7, #0
	adds r0, #0x3c
	adds r0, r0, r1
	mov sb, r0
	ldr r0, [r7, #0x48]
	lsrs r4, r0, #8
	mov r0, sl
	asrs r1, r0, #0x10
	cmp r5, #0
	beq _08080CF0
	ldr r0, [r6]
	b _08080CF4
_08080CF0:
	mov r2, r8
	ldr r0, [r2]
_08080CF4:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x30
	lsls r0, r0, #9
	movs r1, #0x60
	bl Div
	cmp r0, #0
	bge _08080D34
	mov r0, sl
	asrs r1, r0, #0x10
	cmp r5, #0
	beq _08080D12
	ldr r0, [r6]
	b _08080D16
_08080D12:
	mov r2, r8
	ldr r0, [r2]
_08080D16:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x30
	lsls r0, r0, #9
	movs r1, #0x60
	bl Div
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r4, r2
	subs r1, r1, r0
	ldr r0, _08080D30 @ =0x000003FF
	b _08080D5C
	.align 2, 0
_08080D30: .4byte 0x000003FF
_08080D34:
	mov r0, sl
	asrs r1, r0, #0x10
	cmp r5, #0
	beq _08080D40
	ldr r0, [r6]
	b _08080D44
_08080D40:
	mov r2, r8
	ldr r0, [r2]
_08080D44:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x30
	lsls r0, r0, #9
	movs r1, #0x60
	bl Div
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r4, r2
	adds r0, r0, r1
	ldr r1, _08080D6C @ =0x000003FF
_08080D5C:
	ands r0, r1
	movs r1, #0
	mov r4, sb
	strh r0, [r4]
	cmp r5, #0
	beq _08080D70
	strh r1, [r6, #0x38]
	b _08080D74
	.align 2, 0
_08080D6C: .4byte 0x000003FF
_08080D70:
	mov r0, r8
	strh r5, [r0, #0x38]
_08080D74:
	ldr r3, _08080D80 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08080D84
	movs r0, #0
	strh r0, [r6, #0x3a]
	b _08080D86
	.align 2, 0
_08080D80: .4byte gUnknown_03005A20
_08080D84:
	strh r5, [r3, #0x3a]
_08080D86:
	adds r0, r3, #0
	cmp r5, #0
	beq _08080D8E
	ldr r0, _08080DA0 @ =gUnknown_03005AB0
_08080D8E:
	bl sub_8046CEC
	cmp r5, #0
	beq _08080DA8
	movs r0, #5
	ldr r1, _08080DA4 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _08080DAE
	.align 2, 0
_08080DA0: .4byte gUnknown_03005AB0
_08080DA4: .4byte gUnknown_03005AF0
_08080DA8:
	movs r0, #5
	ldr r2, _08080DC0 @ =gUnknown_03005A60
	strb r0, [r2]
_08080DAE:
	cmp r5, #0
	beq _08080DC4
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08080DD0
	.align 2, 0
_08080DC0: .4byte gUnknown_03005A60
_08080DC4:
	mov r4, r8
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
_08080DD0:
	cmp r5, #0
	beq _08080DE8
	ldr r0, _08080DE4 @ =gUnknown_03005AD6
	ldrb r1, [r0]
	movs r0, #0x80
	orrs r0, r1
	ldr r1, _08080DE4 @ =gUnknown_03005AD6
	strb r0, [r1]
	b _08080DF2
	.align 2, 0
_08080DE4: .4byte gUnknown_03005AD6
_08080DE8:
	ldr r2, _08080E4C @ =gUnknown_03005A46
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
_08080DF2:
	adds r5, #1
	ldr r0, _08080E50 @ =gUnknown_03005088
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r5, r1
	bge _08080E00
	b _08080C18
_08080E00:
	movs r5, #0
	mov r8, r5
	ldr r4, _08080E54 @ =gUnknown_03005A20
	mov sb, r4
_08080E08:
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080ECC
	adds r4, r7, #0
	adds r4, #0x48
	mov r2, r8
	adds r0, r4, r2
	ldr r2, [r0]
	lsls r1, r5, #1
	adds r0, r7, #0
	adds r0, #0x3c
	adds r0, r0, r1
	lsrs r2, r2, #8
	ldrh r0, [r0]
	adds r2, r2, r0
	adds r3, r7, #0
	adds r3, #0x50
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	lsls r0, r0, #6
	adds r2, r2, r0
	ldr r0, _08080E58 @ =0x000003FF
	ands r2, r0
	adds r6, r4, #0
	cmp r5, #0
	beq _08080E60
	ldr r4, _08080E5C @ =gUnknown_03005AB0
	ldr r0, [r4, #0x10]
	b _08080E64
	.align 2, 0
_08080E4C: .4byte gUnknown_03005A46
_08080E50: .4byte gUnknown_03005088
_08080E54: .4byte gUnknown_03005A20
_08080E58: .4byte 0x000003FF
_08080E5C: .4byte gUnknown_03005AB0
_08080E60:
	mov r1, sb
	ldr r0, [r1, #0x10]
_08080E64:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08080ECC
	ldr r1, _08080E98 @ =gSineTable
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r1, #0x32
	bl Div
	mov r4, sl
	asrs r1, r4, #8
	adds r1, r1, r0
	cmp r5, #0
	beq _08080EA0
	ldr r0, _08080E9C @ =gUnknown_03005AB0
	str r1, [r0]
	b _08080EA4
	.align 2, 0
_08080E98: .4byte gSineTable
_08080E9C: .4byte gUnknown_03005AB0
_08080EA0:
	mov r2, sb
	str r1, [r2]
_08080EA4:
	ldr r4, [sp, #0x10]
	asrs r1, r4, #8
	ldr r0, _08080EC0 @ =0xFFFFEF00
	adds r1, r1, r0
	mov r2, r8
	adds r0, r6, r2
	ldr r0, [r0]
	lsrs r0, r0, #5
	adds r0, r1, r0
	cmp r5, #0
	beq _08080EC8
	ldr r4, _08080EC4 @ =gUnknown_03005AB0
	str r0, [r4, #4]
	b _08080ECC
	.align 2, 0
_08080EC0: .4byte 0xFFFFEF00
_08080EC4: .4byte gUnknown_03005AB0
_08080EC8:
	mov r1, sb
	str r0, [r1, #4]
_08080ECC:
	movs r2, #4
	add r8, r2
	adds r5, #1
	ldr r4, _08080F0C @ =gUnknown_03005088
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r5, r0
	blt _08080E08
	movs r5, #0
	mov r8, r5
	mov sb, r5
_08080EE2:
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08080FB0
	adds r1, r7, #0
	adds r1, #0x48
	mov r2, sb
	adds r0, r1, r2
	ldr r2, [r0]
	ldr r0, _08080F10 @ =0x000D8107
	adds r6, r1, #0
	cmp r2, r0
	bls _08080F60
	cmp r5, #0
	beq _08080F18
	ldr r0, _08080F14 @ =gUnknown_03005AB0
	b _08080F1A
	.align 2, 0
_08080F0C: .4byte gUnknown_03005088
_08080F10: .4byte 0x000D8107
_08080F14: .4byte gUnknown_03005AB0
_08080F18:
	ldr r0, _08080F48 @ =gUnknown_03005A20
_08080F1A:
	ldr r1, [r0, #0x10]
	movs r0, #0x80
	ands r1, r0
	adds r2, r7, #0
	adds r2, #0x40
	cmp r1, #0
	bne _08080F6E
	adds r1, r7, #0
	adds r1, #0x40
	mov r4, r8
	adds r0, r1, r4
	ldrh r0, [r0]
	lsrs r0, r0, #2
	ldr r2, _08080F4C @ =0xFFFFF830
	adds r0, r0, r2
	lsls r3, r0, #1
	adds r2, r1, #0
	cmp r5, #0
	beq _08080F54
	ldr r0, _08080F50 @ =gUnknown_03005AB0
	strh r3, [r0, #0xa]
	b _08080F6E
	.align 2, 0
_08080F48: .4byte gUnknown_03005A20
_08080F4C: .4byte 0xFFFFF830
_08080F50: .4byte gUnknown_03005AB0
_08080F54:
	ldr r0, _08080F5C @ =gUnknown_03005A20
	strh r3, [r0, #0xa]
	b _08080F6E
	.align 2, 0
_08080F5C: .4byte gUnknown_03005A20
_08080F60:
	adds r2, r7, #0
	adds r2, #0x40
	mov r4, r8
	adds r1, r2, r4
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
_08080F6E:
	mov r0, r8
	adds r4, r2, r0
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x10
	cmp r0, r1
	bls _08080F80
	strh r1, [r4]
_08080F80:
	ldrh r1, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #8
	bl Div
	ldr r1, [sp]
	adds r1, #0x22
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bls _08080FA4
	movs r0, #0x10
	strb r0, [r1]
_08080FA4:
	mov r0, sb
	adds r2, r6, r0
	ldrh r1, [r4]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_08080FB0:
	movs r1, #2
	add r8, r1
	movs r2, #4
	add sb, r2
	adds r5, #1
	ldr r4, _08081030 @ =gUnknown_03005088
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r5, r0
	blt _08080EE2
	mov r0, sl
	asrs r2, r0, #0x10
	ldr r3, _08081034 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _08080FF8
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08080FF8
	ldr r0, [sp, #0x10]
	asrs r1, r0, #0x10
	movs r2, #2
	ldrsh r3, [r3, r2]
	subs r4, #0x50
	adds r0, r3, r4
	cmp r1, r0
	bgt _08080FF8
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0808103C
_08080FF8:
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08081020
	ldr r2, [sp]
	movs r4, #0x18
	ldrsh r0, [r2, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _08081020
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808103C
_08081020:
	ldrb r0, [r7, #8]
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r0, _08081038 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808126E
	.align 2, 0
_08081030: .4byte gUnknown_03005088
_08081034: .4byte gCamera
_08081038: .4byte gCurTask
_0808103C:
	movs r4, #0
	adds r2, r7, #0
	adds r2, #0x44
	str r2, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r8, r0
	ldr r6, _08081088 @ =gUnknown_03005AB0
	movs r1, #0x80
	mov sb, r1
	ldr r5, _0808108C @ =gUnknown_03005A20
	movs r2, #0x26
	adds r2, r2, r5
	mov ip, r2
_08081056:
	mov r1, r8
	ldrb r0, [r1]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08081066
	b _080811CA
_08081066:
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x48
	adds r2, r0, r1
	ldr r1, [r2]
	ldr r0, _08081090 @ =0x000D8107
	cmp r1, r0
	bhi _08081078
	b _080811CA
_08081078:
	adds r0, #1
	str r0, [r2]
	cmp r4, #0
	beq _08081094
	ldr r0, [r6, #0x10]
	mov r2, sb
	ands r0, r2
	b _0808109A
	.align 2, 0
_08081088: .4byte gUnknown_03005AB0
_0808108C: .4byte gUnknown_03005A20
_08081090: .4byte 0x000D8107
_08081094:
	ldr r0, [r5, #0x10]
	mov r1, sb
	ands r0, r1
_0808109A:
	adds r3, r7, #0
	adds r3, #0x50
	cmp r0, #0
	bne _080810DE
	adds r0, r7, #0
	adds r0, #0x50
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0xf
	bhi _080810C4
	ldrb r1, [r3]
	movs r0, #0xb4
	muls r1, r0, r1
	cmp r4, #0
	beq _080810C0
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
	b _080810DE
_080810C0:
	ldr r0, [r5, #4]
	b _080810DA
_080810C4:
	cmp r4, #0
	beq _080810D4
	ldr r0, [r6, #4]
	movs r2, #0xb4
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r6, #4]
	b _080810DE
_080810D4:
	ldr r0, [r5, #4]
	movs r1, #0xb4
	lsls r1, r1, #4
_080810DA:
	adds r0, r0, r1
	str r0, [r5, #4]
_080810DE:
	cmp r4, #0
	bne _080810E8
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080810E8:
	ldrb r0, [r3]
	cmp r0, #0x40
	bls _080811CA
	cmp r4, #0
	beq _080810FA
	ldr r0, [r6, #0x10]
	mov r2, sb
	ands r0, r2
	b _08081100
_080810FA:
	ldr r0, [r5, #0x10]
	mov r1, sb
	ands r0, r1
_08081100:
	cmp r0, #0
	bne _0808119A
	cmp r4, #0
	beq _08081118
	ldr r0, [r6, #0x10]
	ldr r1, _08081114 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
	b _08081120
	.align 2, 0
_08081114: .4byte 0xFFBFFFFF
_08081118:
	ldr r0, [r5, #0x10]
	ldr r1, _08081130 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_08081120:
	cmp r4, #0
	beq _08081134
	ldr r0, [r6, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
	b _0808113C
	.align 2, 0
_08081130: .4byte 0xFFBFFFFF
_08081134:
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
_0808113C:
	cmp r4, #0
	beq _0808114A
	ldr r0, [r6, #0x10]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08081152
_0808114A:
	ldr r0, [r5, #0x10]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5, #0x10]
_08081152:
	cmp r4, #0
	beq _08081160
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08081168
_08081160:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_08081168:
	cmp r4, #0
	beq _08081172
	movs r0, #0
	strh r0, [r6, #8]
	b _08081174
_08081172:
	strh r4, [r5, #8]
_08081174:
	cmp r4, #0
	beq _0808117E
	movs r0, #0
	strh r0, [r6, #0xc]
	b _08081180
_0808117E:
	strh r4, [r5, #0xc]
_08081180:
	mov r2, sl
	asrs r0, r2, #8
	cmp r4, #0
	beq _0808118C
	str r0, [r6]
	b _0808118E
_0808118C:
	str r0, [r5]
_0808118E:
	movs r1, #1
	lsls r1, r4
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0808119A:
	ldr r0, _080811B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080811B8 @ =sub_8081288
	str r0, [r1, #8]
	cmp r4, #0
	beq _080811C0
	ldr r0, _080811BC @ =gUnknown_03005AD6
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	ldr r1, _080811BC @ =gUnknown_03005AD6
	strb r0, [r1]
	b _080811CA
	.align 2, 0
_080811B4: .4byte gCurTask
_080811B8: .4byte sub_8081288
_080811BC: .4byte gUnknown_03005AD6
_080811C0:
	mov r2, ip
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_080811CA:
	adds r4, #1
	ldr r1, _08081200 @ =gUnknown_03005088
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	bge _080811D8
	b _08081056
_080811D8:
	ldr r1, [sp, #0x14]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bls _080811EC
	movs r0, #0xf0
	strh r0, [r1]
_080811EC:
	ldr r2, [sp, #0x14]
	ldrh r0, [r2]
	cmp r0, #0x38
	bne _08081230
	movs r4, #0
	movs r5, #0x80
_080811F8:
	cmp r4, #0
	beq _08081208
	ldr r0, _08081204 @ =gUnknown_03005AB0
	b _0808120A
	.align 2, 0
_08081200: .4byte gUnknown_03005088
_08081204: .4byte gUnknown_03005AB0
_08081208:
	ldr r0, _08081228 @ =gUnknown_03005A20
_0808120A:
	ldr r0, [r0, #0x10]
	ands r0, r5
	cmp r0, #0
	bne _08081218
	movs r0, #0xcf
	bl m4aSongNumStart
_08081218:
	adds r4, #1
	ldr r0, _0808122C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _080811F8
	b _08081262
	.align 2, 0
_08081228: .4byte gUnknown_03005A20
_0808122C: .4byte gUnknown_03005088
_08081230:
	cmp r0, #0x70
	bne _08081262
	movs r4, #0
	movs r5, #0x80
_08081238:
	cmp r4, #0
	beq _08081244
	ldr r0, _08081240 @ =gUnknown_03005AB0
	b _08081246
	.align 2, 0
_08081240: .4byte gUnknown_03005AB0
_08081244:
	ldr r0, _08081280 @ =gUnknown_03005A20
_08081246:
	ldr r0, [r0, #0x10]
	ands r0, r5
	cmp r0, #0
	bne _08081254
	movs r0, #0xd0
	bl m4aSongNumStart
_08081254:
	adds r4, #1
	ldr r0, _08081284 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08081238
_08081262:
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	bl DisplaySprite
_0808126E:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08081280: .4byte gUnknown_03005A20
_08081284: .4byte gUnknown_03005088

	thumb_func_start sub_8081288
sub_8081288: @ 0x08081288
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08081330 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r4, _08081334 @ =0x0300000C
	adds r7, r1, r4
	ldr r3, [r6]
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r5, _08081338 @ =gCamera
	ldrh r0, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r5, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	adds r0, #0x6c
	strh r0, [r7, #0x18]
	movs r0, #0
	ldrsh r4, [r5, r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r0, r0, r4
	mov r8, r0
	cmp r1, r8
	bgt _080812FC
	adds r0, r4, #0
	subs r0, #0x80
	cmp r1, r0
	blt _080812FC
	movs r4, #2
	ldrsh r1, [r5, r4]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _080812FC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808133C
_080812FC:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08081320
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08081320
	movs r4, #0x18
	ldrsh r1, [r7, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808133C
_08081320:
	ldrb r0, [r6, #8]
	strb r0, [r3]
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _080813C8
	.align 2, 0
_08081330: .4byte gCurTask
_08081334: .4byte 0x0300000C
_08081338: .4byte gCamera
_0808133C:
	adds r1, r6, #0
	adds r1, #0x44
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf0
	bls _08081352
	movs r0, #0xf0
	strh r0, [r1]
_08081352:
	ldrh r0, [r1]
	cmp r0, #0x38
	bne _08081390
	movs r4, #0
	movs r5, #0x80
_0808135C:
	cmp r4, #0
	beq _08081368
	ldr r0, _08081364 @ =gUnknown_03005AB0
	b _0808136A
	.align 2, 0
_08081364: .4byte gUnknown_03005AB0
_08081368:
	ldr r0, _08081388 @ =gUnknown_03005A20
_0808136A:
	ldr r0, [r0, #0x10]
	ands r0, r5
	cmp r0, #0
	bne _08081378
	movs r0, #0xcf
	bl m4aSongNumStart
_08081378:
	adds r4, #1
	ldr r0, _0808138C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0808135C
	b _080813C2
	.align 2, 0
_08081388: .4byte gUnknown_03005A20
_0808138C: .4byte gUnknown_03005088
_08081390:
	cmp r0, #0x70
	bne _080813C2
	movs r4, #0
	movs r5, #0x80
_08081398:
	cmp r4, #0
	beq _080813A4
	ldr r0, _080813A0 @ =gUnknown_03005AB0
	b _080813A6
	.align 2, 0
_080813A0: .4byte gUnknown_03005AB0
_080813A4:
	ldr r0, _080813D4 @ =gUnknown_03005A20
_080813A6:
	ldr r0, [r0, #0x10]
	ands r0, r5
	cmp r0, #0
	bne _080813B4
	movs r0, #0xd0
	bl m4aSongNumStart
_080813B4:
	adds r4, #1
	ldr r0, _080813D8 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08081398
_080813C2:
	adds r0, r7, #0
	bl DisplaySprite
_080813C8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080813D4: .4byte gUnknown_03005A20
_080813D8: .4byte gUnknown_03005088

	thumb_func_start sub_80813DC
sub_80813DC: @ 0x080813DC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable063
CreateEntity_Interactable063: @ 0x080813F0
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
	ldr r0, _080814E0 @ =sub_8081500
	ldr r1, _080814E4 @ =sub_8082198
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _080814E8 @ =0x0300000C
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
	ldr r1, _080814EC @ =0x0300003C
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
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
	movs r0, #8
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sb
	strh r0, [r7, #8]
	movs r0, #0xf8
	lsls r0, r0, #1
	strh r0, [r7, #0xa]
	ldr r1, _080814F0 @ =0x0300002C
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
	mov r0, sb
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r2, _080814F4 @ =0x0300002D
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080814F8 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080814FC @ =0x03000031
	adds r6, r6, r1
	movs r2, #0
	strb r2, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	mov r1, sl
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _080814CA
	movs r0, #0x80
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r7, #0x10]
_080814CA:
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
_080814E0: .4byte sub_8081500
_080814E4: .4byte sub_8082198
_080814E8: .4byte 0x0300000C
_080814EC: .4byte 0x0300003C
_080814F0: .4byte 0x0300002C
_080814F4: .4byte 0x0300002D
_080814F8: .4byte 0x0300002E
_080814FC: .4byte 0x03000031

	thumb_func_start sub_8081500
sub_8081500: @ 0x08081500
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0808155C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r6]
	mov sl, r1
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _08081560 @ =gCamera
	ldrh r3, [r4]
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	subs r0, r0, r3
	strh r0, [r5, #0x16]
	ldrh r3, [r4, #2]
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	subs r0, r0, r3
	strh r0, [r5, #0x18]
	movs r4, #0
	mov sb, r2
	mov r8, r1
_0808154E:
	cmp r4, #0
	beq _08081568
	ldr r0, _08081564 @ =gUnknown_03005AB0
	ldr r0, [r0, #0x10]
	movs r3, #0x80
	ands r0, r3
	b _08081570
	.align 2, 0
_0808155C: .4byte gCurTask
_08081560: .4byte gCamera
_08081564: .4byte gUnknown_03005AB0
_08081568:
	ldr r0, _080815D4 @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r7, #0x80
	ands r0, r7
_08081570:
	cmp r0, #0
	bne _08081590
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sb
	asrs r2, r3, #0x10
	mov r7, r8
	asrs r3, r7, #0x10
	bl sub_8081C04
	cmp r0, #0
	beq _08081590
	ldr r0, _080815D8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080815DC @ =sub_80815F8
	str r0, [r1, #8]
_08081590:
	adds r4, #1
	ldr r0, _080815E0 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0808154E
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080815C2
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080815C2
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080815E4
_080815C2:
	ldrb r0, [r6, #8]
	mov r7, sl
	strb r0, [r7]
	ldr r0, _080815D8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080815EA
	.align 2, 0
_080815D4: .4byte gUnknown_03005A20
_080815D8: .4byte gCurTask
_080815DC: .4byte sub_80815F8
_080815E0: .4byte gUnknown_03005088
_080815E4:
	adds r0, r5, #0
	bl DisplaySprite
_080815EA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80815F8
sub_80815F8: @ 0x080815F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r4, _08081680 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r5, r1, r0
	ldr r6, _08081684 @ =0x0300000C
	add r6, r8
	ldr r2, [r5]
	str r2, [sp, #0x10]
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, [sp, #0x10]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08081688 @ =gCamera
	ldrh r0, [r3]
	lsrs r7, r2, #0x10
	mov sl, r7
	asrs r2, r2, #0x10
	mov ip, r2
	subs r0, r2, r0
	strh r0, [r6, #0x16]
	ldrh r2, [r3, #2]
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r1, r1, #0x10
	subs r2, r1, r2
	strh r2, [r6, #0x18]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08081672
	movs r7, #0x18
	ldrsh r0, [r6, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _08081672
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0808168C
_08081672:
	ldrb r0, [r5, #8]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _080817DA
	.align 2, 0
_08081680: .4byte gCurTask
_08081684: .4byte 0x0300000C
_08081688: .4byte gCamera
_0808168C:
	movs r7, #0
	ldr r2, _080816BC @ =0x0300003C
	add r2, r8
	str r2, [sp, #0xc]
	mov r0, ip
	subs r0, #6
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, ip
	adds r0, #6
	lsls r0, r0, #0x10
	str r0, [sp, #8]
_080816A4:
	cmp r7, #0
	beq _080816C8
	ldr r3, _080816C0 @ =gUnknown_03005AB0
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080817A0
	ldr r5, _080816C4 @ =gUnknown_03005A20
	mov r8, r5
	b _080816D6
	.align 2, 0
_080816BC: .4byte 0x0300003C
_080816C0: .4byte gUnknown_03005AB0
_080816C4: .4byte gUnknown_03005A20
_080816C8:
	ldr r2, _08081714 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r8, r2
	cmp r1, #0
	bne _080817A0
_080816D6:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08081748
	ldr r0, [sp, #4]
	asrs r1, r0, #0x10
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r3, r8
	mov r5, sl
	lsls r4, r5, #0x10
	adds r5, r0, #0
	cmp r7, #0
	beq _080816FA
	ldr r3, _08081718 @ =gUnknown_03005AB0
_080816FA:
	adds r0, r6, #0
	bl sub_800CE34
	cmp r0, #0
	beq _080817A0
	cmp r7, #0
	beq _0808171C
	ldr r1, _08081718 @ =gUnknown_03005AB0
	movs r2, #8
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bgt _08081726
	b _080817A0
	.align 2, 0
_08081714: .4byte gUnknown_03005A20
_08081718: .4byte gUnknown_03005AB0
_0808171C:
	mov r3, r8
	movs r1, #8
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _080817A0
_08081726:
	asrs r1, r4, #0x10
	asrs r2, r5, #0x10
	ldr r3, _08081740 @ =gUnknown_03005A20
	cmp r7, #0
	beq _08081732
	ldr r3, _08081744 @ =gUnknown_03005AB0
_08081732:
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	bl sub_800AFDC
	b _080817A0
	.align 2, 0
_08081740: .4byte gUnknown_03005A20
_08081744: .4byte gUnknown_03005AB0
_08081748:
	ldr r2, [sp, #8]
	asrs r1, r2, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	mov r3, r8
	mov r5, sl
	lsls r4, r5, #0x10
	adds r5, r0, #0
	cmp r7, #0
	beq _08081760
	ldr r3, _0808177C @ =gUnknown_03005AB0
_08081760:
	adds r0, r6, #0
	bl sub_800CE34
	cmp r0, #0
	beq _080817A0
	cmp r7, #0
	beq _08081780
	ldr r1, _0808177C @ =gUnknown_03005AB0
	movs r2, #8
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _0808178A
	b _080817A0
	.align 2, 0
_0808177C: .4byte gUnknown_03005AB0
_08081780:
	mov r3, r8
	movs r1, #8
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080817A0
_0808178A:
	asrs r1, r4, #0x10
	asrs r2, r5, #0x10
	ldr r3, _080817EC @ =gUnknown_03005A20
	cmp r7, #0
	beq _08081796
	ldr r3, _080817F0 @ =gUnknown_03005AB0
_08081796:
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	bl sub_800AFDC
_080817A0:
	adds r7, #1
	ldr r0, _080817F4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	bge _080817B0
	b _080816A4
_080817B0:
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080817CE
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _080817F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080817FC @ =sub_8081500
	str r0, [r1, #8]
_080817CE:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_080817DA:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080817EC: .4byte gUnknown_03005A20
_080817F0: .4byte gUnknown_03005AB0
_080817F4: .4byte gUnknown_03005088
_080817F8: .4byte gCurTask
_080817FC: .4byte sub_8081500

	thumb_func_start CreateEntity_Interactable064
CreateEntity_Interactable064: @ 0x08081800
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
	ldr r0, _080818F0 @ =sub_8081910
	ldr r1, _080818F4 @ =sub_8082198
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r1, _080818F8 @ =0x0300000C
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
	ldr r1, _080818FC @ =0x0300003C
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
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
	movs r0, #8
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	mov r0, sb
	strh r0, [r7, #8]
	ldr r0, _08081900 @ =0x000001F1
	strh r0, [r7, #0xa]
	ldr r2, _08081904 @ =0x0300002C
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
	mov r0, sb
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	adds r2, #1
	adds r1, r6, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08081908 @ =0x0300002E
	adds r1, r6, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0808190C @ =0x03000031
	adds r6, r6, r1
	movs r2, #0
	strb r2, [r6]
	subs r0, #0x11
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	mov r1, sl
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _080818D8
	movs r0, #0x80
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #6
	orrs r0, r2
	str r0, [r7, #0x10]
_080818D8:
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
_080818F0: .4byte sub_8081910
_080818F4: .4byte sub_8082198
_080818F8: .4byte 0x0300000C
_080818FC: .4byte 0x0300003C
_08081900: .4byte 0x000001F1
_08081904: .4byte 0x0300002C
_08081908: .4byte 0x0300002E
_0808190C: .4byte 0x03000031

	thumb_func_start sub_8081910
sub_8081910: @ 0x08081910
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0808196C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r6]
	mov sl, r1
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _08081970 @ =gCamera
	ldrh r3, [r4]
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	subs r0, r0, r3
	strh r0, [r5, #0x16]
	ldrh r3, [r4, #2]
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	subs r0, r0, r3
	strh r0, [r5, #0x18]
	movs r4, #0
	mov sb, r2
	mov r8, r1
_0808195E:
	cmp r4, #0
	beq _08081978
	ldr r0, _08081974 @ =gUnknown_03005AB0
	ldr r0, [r0, #0x10]
	movs r3, #0x80
	ands r0, r3
	b _08081980
	.align 2, 0
_0808196C: .4byte gCurTask
_08081970: .4byte gCamera
_08081974: .4byte gUnknown_03005AB0
_08081978:
	ldr r0, _080819E4 @ =gUnknown_03005A20
	ldr r0, [r0, #0x10]
	movs r7, #0x80
	ands r0, r7
_08081980:
	cmp r0, #0
	bne _080819A0
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sb
	asrs r2, r3, #0x10
	mov r7, r8
	asrs r3, r7, #0x10
	bl sub_8081F50
	cmp r0, #0
	beq _080819A0
	ldr r0, _080819E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080819EC @ =sub_8081A08
	str r0, [r1, #8]
_080819A0:
	adds r4, #1
	ldr r0, _080819F0 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0808195E
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080819D2
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080819D2
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080819F4
_080819D2:
	ldrb r0, [r6, #8]
	mov r7, sl
	strb r0, [r7]
	ldr r0, _080819E8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080819FA
	.align 2, 0
_080819E4: .4byte gUnknown_03005A20
_080819E8: .4byte gCurTask
_080819EC: .4byte sub_8081A08
_080819F0: .4byte gUnknown_03005088
_080819F4:
	adds r0, r5, #0
	bl DisplaySprite
_080819FA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8081A08
sub_8081A08: @ 0x08081A08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r4, _08081A8C @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r5, r1, r0
	ldr r6, _08081A90 @ =0x0300000C
	add r6, r8
	ldr r2, [r5]
	mov sl, r2
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _08081A94 @ =gCamera
	ldrh r0, [r3]
	lsrs r7, r1, #0x10
	str r7, [sp]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r3, r2, #0x10
	mov sb, r3
	asrs r2, r2, #0x10
	subs r3, r2, r0
	strh r3, [r6, #0x18]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08081A7E
	movs r7, #0x18
	ldrsh r0, [r6, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _08081A7E
	lsls r1, r3, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08081A98
_08081A7E:
	ldrb r0, [r5, #8]
	mov r1, sl
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08081BDE
	.align 2, 0
_08081A8C: .4byte gCurTask
_08081A90: .4byte 0x0300000C
_08081A94: .4byte gCamera
_08081A98:
	movs r7, #0
	ldr r3, _08081AC8 @ =0x0300003C
	add r3, r8
	str r3, [sp, #0xc]
	adds r0, r2, #5
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	subs r0, r2, #5
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _08081ACC @ =gUnknown_03005AB0
	mov sl, r0
_08081AB0:
	cmp r7, #0
	beq _08081AD4
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08081BA4
	ldr r2, _08081AD0 @ =gUnknown_03005A20
	mov r8, r2
	b _08081AE2
	.align 2, 0
_08081AC8: .4byte 0x0300003C
_08081ACC: .4byte gUnknown_03005AB0
_08081AD0: .4byte gUnknown_03005A20
_08081AD4:
	ldr r2, _08081B20 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r8, r2
	cmp r1, #0
	bne _08081BA4
_08081AE2:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08081B50
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	ldr r3, [sp, #4]
	asrs r2, r3, #0x10
	mov r3, r8
	adds r4, r0, #0
	mov r0, sb
	lsls r5, r0, #0x10
	cmp r7, #0
	beq _08081B06
	ldr r3, _08081B24 @ =gUnknown_03005AB0
_08081B06:
	adds r0, r6, #0
	bl sub_800CE34
	cmp r0, #0
	beq _08081BA4
	cmp r7, #0
	beq _08081B28
	mov r1, sl
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bgt _08081B32
	b _08081BA4
	.align 2, 0
_08081B20: .4byte gUnknown_03005A20
_08081B24: .4byte gUnknown_03005AB0
_08081B28:
	mov r3, r8
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _08081BA4
_08081B32:
	asrs r1, r4, #0x10
	asrs r2, r5, #0x10
	ldr r3, _08081B48 @ =gUnknown_03005A20
	cmp r7, #0
	beq _08081B3E
	ldr r3, _08081B4C @ =gUnknown_03005AB0
_08081B3E:
	adds r0, r6, #0
	bl sub_80096B0
	b _08081BA4
	.align 2, 0
_08081B48: .4byte gUnknown_03005A20
_08081B4C: .4byte gUnknown_03005AB0
_08081B50:
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	ldr r3, [sp, #8]
	asrs r2, r3, #0x10
	mov r3, r8
	adds r4, r0, #0
	mov r0, sb
	lsls r5, r0, #0x10
	cmp r7, #0
	beq _08081B68
	ldr r3, _08081B84 @ =gUnknown_03005AB0
_08081B68:
	adds r0, r6, #0
	bl sub_800CE34
	cmp r0, #0
	beq _08081BA4
	cmp r7, #0
	beq _08081B88
	mov r1, sl
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt _08081B92
	b _08081BA4
	.align 2, 0
_08081B84: .4byte gUnknown_03005AB0
_08081B88:
	mov r3, r8
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _08081BA4
_08081B92:
	asrs r1, r4, #0x10
	asrs r2, r5, #0x10
	ldr r3, _08081BF0 @ =gUnknown_03005A20
	cmp r7, #0
	beq _08081B9E
	ldr r3, _08081BF4 @ =gUnknown_03005AB0
_08081B9E:
	adds r0, r6, #0
	bl sub_80096B0
_08081BA4:
	adds r7, #1
	ldr r0, _08081BF8 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	bge _08081BB4
	b _08081AB0
_08081BB4:
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08081BD2
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08081BFC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08081C00 @ =sub_8081910
	str r0, [r1, #8]
_08081BD2:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08081BDE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08081BF0: .4byte gUnknown_03005A20
_08081BF4: .4byte gUnknown_03005AB0
_08081BF8: .4byte gUnknown_03005088
_08081BFC: .4byte gCurTask
_08081C00: .4byte sub_8081910

	thumb_func_start sub_8081C04
sub_8081C04: @ 0x08081C04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	mov sl, r1
	mov r8, r2
	mov sb, r3
	movs r0, #0
	str r0, [sp, #8]
	movs r4, #0
	ldr r7, _08081C2C @ =gUnknown_03005AB0
	ldr r6, _08081C30 @ =gUnknown_03005A20
_08081C22:
	cmp r4, #0
	beq _08081C34
	ldr r1, [r7, #4]
	str r1, [sp, #0xc]
	b _08081C38
	.align 2, 0
_08081C2C: .4byte gUnknown_03005AB0
_08081C30: .4byte gUnknown_03005A20
_08081C34:
	ldr r2, [r6, #4]
	str r2, [sp, #0xc]
_08081C38:
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08081C48
	b _08081D9E
_08081C48:
	cmp r4, #0
	beq _08081C56
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r8, r0
	ble _08081C60
	b _08081F1A
_08081C56:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r8, r0
	ble _08081C60
	b _08081F1A
_08081C60:
	mov r2, r8
	adds r2, #0x20
	cmp r4, #0
	beq _08081C72
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081C7C
	b _08081F1A
_08081C72:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081C7C
	b _08081F1A
_08081C7C:
	mov r1, sb
	subs r1, #0x28
	cmp r4, #0
	beq _08081C8E
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08081C98
	b _08081F1A
_08081C8E:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08081C98
	b _08081F1A
_08081C98:
	mov r1, sb
	adds r1, #0x28
	cmp r4, #0
	beq _08081CAA
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081CB4
	b _08081F1A
_08081CAA:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081CB4
	b _08081F1A
_08081CB4:
	cmp r4, #0
	beq _08081CC2
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r8, r0
	ble _08081CCA
	b _08081D4C
_08081CC2:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r8, r0
	bgt _08081D4C
_08081CCA:
	cmp r4, #0
	beq _08081CD8
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081CE0
	b _08081D4C
_08081CD8:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	blt _08081D4C
_08081CE0:
	cmp r4, #0
	beq _08081CF4
	movs r2, #8
	ldrsh r0, [r7, r2]
	ldr r3, _08081CF0 @ =gUnknown_03005A20
	cmp r0, #0
	blt _08081D00
	b _08081EA4
	.align 2, 0
_08081CF0: .4byte gUnknown_03005A20
_08081CF4:
	movs r1, #8
	ldrsh r0, [r6, r1]
	ldr r3, _08081D44 @ =gUnknown_03005A20
	cmp r0, #0
	blt _08081D00
	b _08081EA4
_08081D00:
	ldr r1, [sp, #4]
	adds r1, #0x3c
	movs r0, #0x7d
	strb r0, [r1]
	mov r1, sl
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08081D44 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08081D18
	ldr r0, _08081D48 @ =gUnknown_03005AB0
_08081D18:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _08081D44 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08081D26
	ldr r1, _08081D48 @ =gUnknown_03005AB0
_08081D26:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08081D44 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08081D32
	ldr r1, _08081D48 @ =gUnknown_03005AB0
_08081D32:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xb9
	bl m4aSongNumStart
	movs r2, #1
	str r2, [sp, #8]
	b _08081F1A
	.align 2, 0
_08081D44: .4byte gUnknown_03005A20
_08081D48: .4byte gUnknown_03005AB0
_08081D4C:
	cmp r4, #0
	beq _08081D5A
	movs r1, #8
	ldrsh r0, [r7, r1]
	cmp r0, #0
	blt _08081D64
	b _08081F1A
_08081D5A:
	movs r2, #8
	ldrsh r0, [r6, r2]
	cmp r0, #0
	blt _08081D64
	b _08081F1A
_08081D64:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08081D8C @ =gUnknown_03005A20
	cmp r4, #0
	beq _08081D78
	ldr r3, _08081D90 @ =gUnknown_03005AB0
_08081D78:
	movs r5, #0
	str r5, [sp]
	mov r0, sl
	bl sub_800AFDC
	cmp r4, #0
	beq _08081D94
	strh r5, [r7, #0xc]
	b _08081D96
	.align 2, 0
_08081D8C: .4byte gUnknown_03005A20
_08081D90: .4byte gUnknown_03005AB0
_08081D94:
	strh r4, [r6, #0xc]
_08081D96:
	cmp r4, #0
	beq _08081D9C
	b _08081F12
_08081D9C:
	b _08081F18
_08081D9E:
	mov r2, r8
	subs r2, #0x20
	cmp r4, #0
	beq _08081DB0
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08081DBA
	b _08081F1A
_08081DB0:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08081DBA
	b _08081F1A
_08081DBA:
	mov r1, r8
	adds r1, #0x10
	cmp r4, #0
	beq _08081DCC
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081DD6
	b _08081F1A
_08081DCC:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081DD6
	b _08081F1A
_08081DD6:
	mov r1, sb
	subs r1, #0x28
	cmp r4, #0
	beq _08081DE8
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08081DF2
	b _08081F1A
_08081DE8:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08081DF2
	b _08081F1A
_08081DF2:
	mov r1, sb
	adds r1, #0x28
	cmp r4, #0
	beq _08081E04
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081E0E
	b _08081F1A
_08081E04:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08081E0E
	b _08081F1A
_08081E0E:
	cmp r4, #0
	beq _08081E1C
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08081E24
	b _08081EC8
_08081E1C:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	bgt _08081EC8
_08081E24:
	cmp r4, #0
	beq _08081E32
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r8, r0
	bge _08081E3A
	b _08081EC8
_08081E32:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r8, r0
	blt _08081EC8
_08081E3A:
	cmp r4, #0
	beq _08081E50
	movs r1, #8
	ldrsh r0, [r7, r1]
	ldr r3, _08081E4C @ =gUnknown_03005A20
	cmp r0, #0
	bgt _08081E5A
	b _08081EA4
	.align 2, 0
_08081E4C: .4byte gUnknown_03005A20
_08081E50:
	movs r2, #8
	ldrsh r0, [r6, r2]
	ldr r3, _08081E9C @ =gUnknown_03005A20
	cmp r0, #0
	ble _08081EA4
_08081E5A:
	ldr r1, [sp, #4]
	adds r1, #0x3c
	movs r0, #0x7d
	strb r0, [r1]
	mov r1, sl
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08081E9C @ =gUnknown_03005A20
	cmp r4, #0
	beq _08081E72
	ldr r0, _08081EA0 @ =gUnknown_03005AB0
_08081E72:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _08081E9C @ =gUnknown_03005A20
	cmp r4, #0
	beq _08081E80
	ldr r1, _08081EA0 @ =gUnknown_03005AB0
_08081E80:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08081E9C @ =gUnknown_03005A20
	cmp r4, #0
	beq _08081E8C
	ldr r1, _08081EA0 @ =gUnknown_03005AB0
_08081E8C:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xb9
	bl m4aSongNumStart
	movs r0, #1
	str r0, [sp, #8]
	b _08081F1A
	.align 2, 0
_08081E9C: .4byte gUnknown_03005A20
_08081EA0: .4byte gUnknown_03005AB0
_08081EA4:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _08081EB6
	ldr r3, _08081EC4 @ =gUnknown_03005AB0
_08081EB6:
	movs r0, #0
	str r0, [sp]
	mov r0, sl
	bl sub_800AFDC
	b _08081F1A
	.align 2, 0
_08081EC4: .4byte gUnknown_03005AB0
_08081EC8:
	cmp r4, #0
	beq _08081ED6
	movs r1, #8
	ldrsh r0, [r7, r1]
	cmp r0, #0
	blt _08081EDE
	b _08081F1A
_08081ED6:
	movs r2, #8
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _08081F1A
_08081EDE:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08081F04 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08081EF2
	ldr r3, _08081F08 @ =gUnknown_03005AB0
_08081EF2:
	movs r5, #0
	str r5, [sp]
	mov r0, sl
	bl sub_800AFDC
	cmp r4, #0
	beq _08081F0C
	strh r5, [r7, #0xc]
	b _08081F0E
	.align 2, 0
_08081F04: .4byte gUnknown_03005A20
_08081F08: .4byte gUnknown_03005AB0
_08081F0C:
	strh r4, [r6, #0xc]
_08081F0E:
	cmp r4, #0
	beq _08081F18
_08081F12:
	movs r0, #0
	strh r0, [r7, #8]
	b _08081F1A
_08081F18:
	strh r4, [r6, #8]
_08081F1A:
	cmp r4, #0
	beq _08081F24
	ldr r0, [sp, #0xc]
	str r0, [r7, #4]
	b _08081F28
_08081F24:
	ldr r1, [sp, #0xc]
	str r1, [r6, #4]
_08081F28:
	adds r4, #1
	ldr r0, _08081F4C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _08081F38
	b _08081C22
_08081F38:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08081F4C: .4byte gUnknown_03005088

	thumb_func_start sub_8081F50
sub_8081F50: @ 0x08081F50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	movs r0, #0
	mov sl, r0
	movs r4, #0
	ldr r1, _08081F8C @ =gUnknown_03005AB0
	mov r8, r1
_08081F6C:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08082064
	cmp r4, #0
	beq _08081F94
	mov r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r3, _08081F90 @ =gUnknown_03005A20
	cmp r6, r0
	ble _08081FA2
	b _08082140
	.align 2, 0
_08081F8C: .4byte gUnknown_03005AB0
_08081F90: .4byte gUnknown_03005A20
_08081F94:
	ldr r1, _08081FB8 @ =gUnknown_03005A20
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r3, r1, #0
	cmp r6, r0
	ble _08081FA2
	b _08082140
_08081FA2:
	adds r2, r6, #0
	adds r2, #0x20
	cmp r4, #0
	beq _08081FBC
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081FC6
	b _08082140
	.align 2, 0
_08081FB8: .4byte gUnknown_03005A20
_08081FBC:
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081FC6
	b _08082140
_08081FC6:
	cmp r4, #0
	beq _08081FD6
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r5, r0
	ble _08081FE0
	b _08082140
_08081FD6:
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r5, r0
	ble _08081FE0
	b _08082140
_08081FE0:
	adds r2, r5, #0
	adds r2, #0x1c
	cmp r4, #0
	beq _08081FF4
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081FFE
	b _08082140
_08081FF4:
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r2, r0
	bge _08081FFE
	b _08082140
_08081FFE:
	cmp r4, #0
	beq _0808200E
	mov r2, r8
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _08082018
	b _08082140
_0808200E:
	movs r2, #0xa
	ldrsh r0, [r3, r2]
	cmp r0, #0
	blt _08082018
	b _08082140
_08082018:
	mov r1, sb
	adds r1, #0x3c
	movs r2, #0
	movs r0, #0x7d
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _0808205C @ =gUnknown_03005A20
	cmp r4, #0
	beq _08082030
	ldr r0, _08082060 @ =gUnknown_03005AB0
_08082030:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _0808205C @ =gUnknown_03005A20
	cmp r4, #0
	beq _0808203E
	ldr r1, _08082060 @ =gUnknown_03005AB0
_0808203E:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0808205C @ =gUnknown_03005A20
	cmp r4, #0
	beq _0808204A
	ldr r1, _08082060 @ =gUnknown_03005AB0
_0808204A:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xb9
	bl m4aSongNumStart
	movs r0, #1
	mov sl, r0
	b _08082170
	.align 2, 0
_0808205C: .4byte gUnknown_03005A20
_08082060: .4byte gUnknown_03005AB0
_08082064:
	cmp r4, #0
	beq _0808207C
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r3, _08082078 @ =gUnknown_03005A20
	cmp r6, r0
	ble _08082088
	b _0808215C
	.align 2, 0
_08082078: .4byte gUnknown_03005A20
_0808207C:
	ldr r1, _0808209C @ =gUnknown_03005A20
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r3, r1, #0
	cmp r6, r0
	bgt _0808215C
_08082088:
	adds r2, r6, #0
	adds r2, #0x20
	cmp r4, #0
	beq _080820A0
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	cmp r2, r0
	bge _080820A8
	b _0808215C
	.align 2, 0
_0808209C: .4byte gUnknown_03005A20
_080820A0:
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r2, r0
	blt _0808215C
_080820A8:
	adds r2, r5, #0
	subs r2, #0x1c
	cmp r4, #0
	beq _080820BC
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _080820C4
	b _0808215C
_080820BC:
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r2, r0
	bgt _0808215C
_080820C4:
	cmp r4, #0
	beq _080820D4
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r5, r0
	bge _080820DC
	b _0808215C
_080820D4:
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r5, r0
	blt _0808215C
_080820DC:
	cmp r4, #0
	beq _080820EC
	mov r1, r8
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bgt _080820F4
	b _08082140
_080820EC:
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _08082140
_080820F4:
	mov r1, sb
	adds r1, #0x3c
	movs r2, #0
	movs r0, #0x7d
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _08082138 @ =gUnknown_03005A20
	cmp r4, #0
	beq _0808210C
	ldr r0, _0808213C @ =gUnknown_03005AB0
_0808210C:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _08082138 @ =gUnknown_03005A20
	cmp r4, #0
	beq _0808211A
	ldr r1, _0808213C @ =gUnknown_03005AB0
_0808211A:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08082138 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08082126
	ldr r1, _0808213C @ =gUnknown_03005AB0
_08082126:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xb9
	bl m4aSongNumStart
	movs r2, #1
	mov sl, r2
	b _08082170
	.align 2, 0
_08082138: .4byte gUnknown_03005A20
_0808213C: .4byte gUnknown_03005AB0
_08082140:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _0808214E
	ldr r3, _08082158 @ =gUnknown_03005AB0
_0808214E:
	adds r0, r7, #0
	bl sub_80096B0
	b _08082170
	.align 2, 0
_08082158: .4byte gUnknown_03005AB0
_0808215C:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _0808216A
	ldr r3, _08082190 @ =gUnknown_03005AB0
_0808216A:
	adds r0, r7, #0
	bl sub_80096B0
_08082170:
	adds r4, #1
	ldr r0, _08082194 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _08082180
	b _08081F6C
_08082180:
	mov r0, sl
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08082190: .4byte gUnknown_03005AB0
_08082194: .4byte gUnknown_03005088

	thumb_func_start sub_8082198
sub_8082198: @ 0x08082198
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable065
CreateEntity_Interactable065: @ 0x080821AC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0808224C @ =sub_8082258
	ldrb r2, [r7, #6]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r2, r1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	strh r4, [r3, #4]
	strh r5, [r3, #6]
	str r7, [r3]
	ldrb r0, [r7]
	strb r0, [r3, #8]
	strb r6, [r3, #9]
	ldrb r1, [r7, #5]
	ldr r4, _08082250 @ =0x0300003D
	adds r0, r2, r4
	strb r1, [r0]
	movs r4, #0
	ldr r0, _08082254 @ =0x0300003E
	adds r6, r2, r0
	movs r1, #0
	adds r0, #2
	adds r5, r2, r0
	adds r0, #8
	adds r2, r2, r0
_08082208:
	adds r0, r6, r4
	strb r1, [r0]
	stm r5!, {r1}
	str r1, [r2]
	str r1, [r2, #0x10]
	str r1, [r2, #0x18]
	adds r2, #4
	adds r4, #1
	cmp r4, #1
	ble _08082208
	movs r0, #3
	ldrsb r0, [r7, r0]
	lsls r0, r0, #3
	str r0, [r3, #0x50]
	movs r0, #4
	ldrsb r0, [r7, r0]
	lsls r0, r0, #3
	str r0, [r3, #0x54]
	adds r1, r3, #0
	adds r1, #0x68
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r7, #6]
	adds r0, r3, #0
	adds r0, #0x3c
	strb r1, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808224C: .4byte sub_8082258
_08082250: .4byte 0x0300003D
_08082254: .4byte 0x0300003E

	thumb_func_start sub_8082258
sub_8082258: @ 0x08082258
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r0, _080822D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sl, r1
	ldr r0, [r1]
	str r0, [sp, #0x10]
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	mov r2, sl
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, [sp, #0x10]
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	mov r4, sl
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _080822D8 @ =gCamera
	ldrh r0, [r3]
	lsrs r5, r1, #0x10
	str r5, [sp]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	ldrh r0, [r3, #2]
	lsrs r1, r2, #0x10
	str r1, [sp, #4]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	movs r7, #0
	ldr r3, _080822DC @ =gUnknown_03005AB0
	ldr r2, _080822E0 @ =gUnknown_03005A20
	mov sb, r2
	movs r4, #0
	str r4, [sp, #0x1c]
_080822C2:
	cmp r7, #0
	beq _080822E4
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r5, sl
	adds r5, #0x68
	str r5, [sp, #0x14]
	b _080822F2
	.align 2, 0
_080822D4: .4byte gCurTask
_080822D8: .4byte gCamera
_080822DC: .4byte gUnknown_03005AB0
_080822E0: .4byte gUnknown_03005A20
_080822E4:
	mov r0, sb
	ldr r1, [r0, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r2, sl
	adds r2, #0x68
	str r2, [sp, #0x14]
_080822F2:
	cmp r1, #0
	beq _080822F8
	b _0808280A
_080822F8:
	mov r1, sl
	adds r1, #0x68
	ldrb r2, [r1]
	adds r0, r2, #0
	asrs r0, r7
	movs r4, #1
	ands r0, r4
	str r1, [sp, #0x14]
	cmp r0, #0
	bne _0808230E
	b _080825E0
_0808230E:
	ldr r0, _08082370 @ =gUnknown_03005A8D
	cmp r7, #0
	beq _08082316
	ldr r0, _08082374 @ =gUnknown_03005B1D
_08082316:
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r0, sl
	adds r0, #0x3c
	str r0, [sp, #0x18]
	ldrb r5, [r0]
	cmp r1, r5
	beq _08082328
	b _080825D4
_08082328:
	movs r0, #0x3e
	add r0, sl
	mov r8, r0
	adds r4, r0, r7
	ldrb r1, [r4]
	mov r2, sl
	ldr r0, [r2, #0x50]
	muls r0, r1, r0
	mov r5, sl
	adds r5, #0x3d
	ldrb r1, [r5]
	str r3, [sp, #0x20]
	bl Div
	adds r6, r0, #0
	ldrb r1, [r4]
	mov r4, sl
	ldr r0, [r4, #0x54]
	muls r0, r1, r0
	ldrb r1, [r5]
	bl Div
	adds r1, r0, #0
	mov r0, sl
	adds r0, #0x40
	ldr r2, [sp, #0x1c]
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r6
	lsls r0, r0, #8
	mov r4, r8
	ldr r3, [sp, #0x20]
	cmp r7, #0
	beq _08082378
	str r0, [r3]
	b _0808237C
	.align 2, 0
_08082370: .4byte gUnknown_03005A8D
_08082374: .4byte gUnknown_03005B1D
_08082378:
	mov r2, sb
	str r0, [r2]
_0808237C:
	mov r0, sl
	adds r0, #0x48
	ldr r2, [sp, #0x1c]
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r1
	lsls r0, r0, #8
	cmp r7, #0
	beq _08082392
	str r0, [r3, #4]
	b _08082396
_08082392:
	mov r1, sb
	str r0, [r1, #4]
_08082396:
	mov r1, sl
	adds r1, #0x58
	ldr r2, [sp, #0x1c]
	adds r0, r1, r2
	ldr r2, [r0]
	mov r8, r1
	cmp r7, #0
	beq _080823AA
	ldr r0, [r3]
	b _080823AE
_080823AA:
	mov r1, sb
	ldr r0, [r1]
_080823AE:
	subs r0, r0, r2
	cmp r7, #0
	beq _080823B8
	strh r0, [r3, #8]
	b _080823BC
_080823B8:
	mov r2, sb
	strh r0, [r2, #8]
_080823BC:
	mov r1, sl
	adds r1, #0x60
	ldr r2, [sp, #0x1c]
	adds r0, r1, r2
	ldr r2, [r0]
	adds r6, r1, #0
	cmp r7, #0
	beq _080823D0
	ldr r0, [r3, #4]
	b _080823D4
_080823D0:
	mov r1, sb
	ldr r0, [r1, #4]
_080823D4:
	subs r0, r0, r2
	cmp r7, #0
	beq _080823DE
	strh r0, [r3, #0xa]
	b _080823E2
_080823DE:
	mov r2, sb
	strh r0, [r2, #0xa]
_080823E2:
	adds r1, r4, r7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08082430 @ =gUnknown_03005A8D
	ldrb r5, [r5]
	cmp r0, r5
	bhs _0808240C
	adds r0, r2, #0
	cmp r7, #0
	beq _080823FE
	ldr r0, _08082434 @ =gUnknown_03005B1D
_080823FE:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r4, [sp, #0x18]
	ldrb r4, [r4]
	cmp r0, r4
	ble _080824EA
_0808240C:
	adds r0, r2, #0
	cmp r7, #0
	beq _08082414
	ldr r0, _08082434 @ =gUnknown_03005B1D
_08082414:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r5, [sp, #0x18]
	ldrb r5, [r5]
	cmp r0, r5
	bne _080824DC
	cmp r7, #0
	beq _0808243C
	ldr r0, [r3, #0x10]
	ldr r1, _08082438 @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r3, #0x10]
	b _08082448
	.align 2, 0
_08082430: .4byte gUnknown_03005A8D
_08082434: .4byte gUnknown_03005B1D
_08082438: .4byte 0xFFDFFFFF
_0808243C:
	mov r1, sb
	ldr r0, [r1, #0x10]
	ldr r1, _0808245C @ =0xFFDFFFFF
	ands r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_08082448:
	ldr r0, _08082460 @ =gUnknown_030060E0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r7, #0
	beq _08082464
	ldrh r0, [r3, #0x38]
	orrs r1, r0
	strh r1, [r3, #0x38]
	b _0808246C
	.align 2, 0
_0808245C: .4byte 0xFFDFFFFF
_08082460: .4byte gUnknown_030060E0
_08082464:
	mov r4, sb
	ldrh r0, [r4, #0x38]
	orrs r1, r0
	strh r1, [r4, #0x38]
_0808246C:
	cmp r7, #0
	beq _08082480
	ldr r0, [r3, #0x10]
	ldr r1, _0808247C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r3, #0x10]
	b _0808248A
	.align 2, 0
_0808247C: .4byte 0xFFBFFFFF
_08082480:
	mov r5, sb
	ldr r0, [r5, #0x10]
	ldr r1, _0808249C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_0808248A:
	cmp r7, #0
	beq _080824A4
	ldr r0, _080824A0 @ =gUnknown_03005AD6
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	ldr r1, _080824A0 @ =gUnknown_03005AD6
	strb r0, [r1]
	b _080824AE
	.align 2, 0
_0808249C: .4byte 0xFFBFFFFF
_080824A0: .4byte gUnknown_03005AD6
_080824A4:
	ldr r2, _080824B8 @ =gUnknown_03005A46
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_080824AE:
	cmp r7, #0
	beq _080824BC
	movs r4, #0
	strh r4, [r3, #0xa]
	b _080824C0
	.align 2, 0
_080824B8: .4byte gUnknown_03005A46
_080824BC:
	mov r5, sb
	strh r7, [r5, #0xa]
_080824C0:
	cmp r7, #0
	beq _080824CA
	movs r0, #0
	strh r0, [r3, #8]
	b _080824CE
_080824CA:
	mov r1, sb
	strh r7, [r1, #8]
_080824CE:
	cmp r7, #0
	beq _080824D8
	movs r2, #0
	strh r2, [r3, #0xc]
	b _080824DC
_080824D8:
	mov r4, sb
	strh r7, [r4, #0xc]
_080824DC:
	movs r1, #1
	lsls r1, r7
	ldr r5, [sp, #0x14]
	ldrb r0, [r5]
	bics r0, r1
	strb r0, [r5]
	b _080825A4
_080824EA:
	cmp r7, #0
	beq _080824FA
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r3, #0x10]
	b _08082508
_080824FA:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	mov r4, sb
	str r0, [r4, #0x10]
_08082508:
	subs r2, #0x6d
	ldr r0, _08082520 @ =gUnknown_030060E0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r7, #0
	beq _08082524
	ldrh r0, [r3, #0x38]
	orrs r1, r0
	strh r1, [r3, #0x38]
	b _0808252C
	.align 2, 0
_08082520: .4byte gUnknown_030060E0
_08082524:
	mov r5, sb
	ldrh r0, [r5, #0x38]
	orrs r1, r0
	strh r1, [r5, #0x38]
_0808252C:
	cmp r7, #0
	beq _0808253C
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r3, #0x10]
	b _0808254A
_0808253C:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	mov r4, sb
	str r0, [r4, #0x10]
_0808254A:
	cmp r7, #0
	beq _08082554
	movs r5, #0
	strh r5, [r3, #0xc]
	b _08082556
_08082554:
	strh r7, [r2, #0xc]
_08082556:
	cmp r7, #0
	beq _08082560
	movs r0, #0
	strh r0, [r3, #0x38]
	b _08082562
_08082560:
	strh r7, [r2, #0x38]
_08082562:
	cmp r7, #0
	beq _0808256C
	movs r1, #0
	strh r1, [r3, #0x3a]
	b _0808256E
_0808256C:
	strh r7, [r2, #0x3a]
_0808256E:
	ldr r0, _080825B0 @ =gUnknown_03005A20
	cmp r7, #0
	beq _08082576
	ldr r0, _080825B4 @ =gUnknown_03005AB0
_08082576:
	movs r1, #0xe
	str r3, [sp, #0x20]
	bl sub_804516C
	ldr r1, _080825B0 @ =gUnknown_03005A20
	ldr r3, [sp, #0x20]
	cmp r7, #0
	beq _08082588
	ldr r1, _080825B4 @ =gUnknown_03005AB0
_08082588:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _080825B0 @ =gUnknown_03005A20
	cmp r7, #0
	beq _08082594
	ldr r1, _080825B4 @ =gUnknown_03005AB0
_08082594:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #1
	lsls r0, r7
	ldr r2, [sp, #0x14]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
_080825A4:
	ldr r1, [sp, #0x1c]
	add r1, r8
	cmp r7, #0
	beq _080825B8
	ldr r0, [r3]
	b _080825BC
	.align 2, 0
_080825B0: .4byte gUnknown_03005A20
_080825B4: .4byte gUnknown_03005AB0
_080825B8:
	mov r4, sb
	ldr r0, [r4]
_080825BC:
	str r0, [r1]
	ldr r5, [sp, #0x1c]
	adds r1, r6, r5
	cmp r7, #0
	beq _080825CC
	ldr r0, [r3, #4]
	str r0, [r1]
	b _0808280A
_080825CC:
	mov r2, sb
	ldr r0, [r2, #4]
	str r0, [r1]
	b _0808280A
_080825D4:
	adds r0, r4, #0
	lsls r0, r7
	bics r2, r0
	ldr r4, [sp, #0x14]
	strb r2, [r4]
	b _0808280A
_080825E0:
	cmp r7, #0
	beq _080825F8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0808260C
	mov r5, sl
	adds r5, #0x3c
	str r5, [sp, #0x18]
	b _08082624
_080825F8:
	mov r0, sb
	ldr r1, [r0, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	mov r2, sl
	adds r2, #0x3c
	str r2, [sp, #0x18]
	cmp r1, #0
	beq _08082624
_0808260C:
	ldr r0, _08082648 @ =gUnknown_03005A8D
	cmp r7, #0
	beq _08082614
	ldr r0, _0808264C @ =gUnknown_03005B1D
_08082614:
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r0, sl
	adds r0, #0x3c
	str r0, [sp, #0x18]
	ldrb r4, [r0]
	cmp r1, r4
	blt _0808262E
_08082624:
	ldr r5, [sp, #0x18]
	ldrb r0, [r5]
	cmp r0, #0
	beq _0808262E
	b _0808280A
_0808262E:
	ldr r0, [sp]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #8
	cmp r7, #0
	beq _08082650
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808265C
	b _0808280A
	.align 2, 0
_08082648: .4byte gUnknown_03005A8D
_0808264C: .4byte gUnknown_03005B1D
_08082650:
	mov r4, sb
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808265C
	b _0808280A
_0808265C:
	asrs r0, r1, #0x10
	adds r1, r0, #0
	adds r1, #8
	cmp r7, #0
	beq _08082670
	ldr r0, [r3]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808267C
	b _0808280A
_08082670:
	mov r5, sb
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808267C
	b _0808280A
_0808267C:
	ldr r0, [sp, #4]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #0xa
	cmp r7, #0
	beq _08082694
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _080826A0
	b _0808280A
_08082694:
	mov r4, sb
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _080826A0
	b _0808280A
_080826A0:
	asrs r0, r1, #0x10
	adds r1, r0, #0
	adds r1, #0xa
	cmp r7, #0
	beq _080826B4
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080826C0
	b _0808280A
_080826B4:
	mov r5, sb
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080826C0
	b _0808280A
_080826C0:
	mov r0, sl
	adds r0, #0x3e
	adds r0, r0, r7
	movs r1, #0
	strb r1, [r0]
	cmp r7, #0
	beq _080826D8
	ldr r0, [r3, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #0x10]
	b _080826E2
_080826D8:
	mov r2, sb
	ldr r0, [r2, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #0x10]
_080826E2:
	ldr r2, _080826F4 @ =gUnknown_03005A20
	cmp r7, #0
	beq _080826F8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r3, #0x10]
	b _08082704
	.align 2, 0
_080826F4: .4byte gUnknown_03005A20
_080826F8:
	mov r4, sb
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0x10]
_08082704:
	cmp r7, #0
	beq _08082714
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r3, #0x10]
	b _08082720
_08082714:
	mov r5, sb
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
_08082720:
	mov r0, sl
	adds r0, #0x40
	ldr r4, [sp, #0x1c]
	adds r1, r0, r4
	cmp r7, #0
	beq _08082730
	ldr r0, [r3]
	b _08082732
_08082730:
	ldr r0, [r2]
_08082732:
	asrs r0, r0, #8
	str r0, [r1]
	mov r0, sl
	adds r0, #0x48
	ldr r5, [sp, #0x1c]
	adds r1, r0, r5
	cmp r7, #0
	beq _08082746
	ldr r0, [r3, #4]
	b _08082748
_08082746:
	ldr r0, [r2, #4]
_08082748:
	asrs r0, r0, #8
	str r0, [r1]
	cmp r7, #0
	beq _08082756
	movs r0, #0
	strh r0, [r3, #0xa]
	b _08082758
_08082756:
	strh r7, [r2, #0xa]
_08082758:
	cmp r7, #0
	beq _08082762
	movs r1, #0
	strh r1, [r3, #8]
	b _08082764
_08082762:
	strh r7, [r2, #8]
_08082764:
	cmp r7, #0
	beq _0808276E
	movs r4, #0
	strh r4, [r3, #0xc]
	b _08082770
_0808276E:
	strh r7, [r2, #0xc]
_08082770:
	cmp r7, #0
	beq _0808277A
	movs r5, #0
	strh r5, [r3, #0x38]
	b _0808277C
_0808277A:
	strh r7, [r2, #0x38]
_0808277C:
	cmp r7, #0
	beq _08082786
	movs r0, #0
	strh r0, [r3, #0x3a]
	b _08082788
_08082786:
	strh r7, [r2, #0x3a]
_08082788:
	ldr r0, _080827EC @ =gUnknown_03005A20
	cmp r7, #0
	beq _08082790
	ldr r0, _080827F0 @ =gUnknown_03005AB0
_08082790:
	movs r1, #0xe
	str r3, [sp, #0x20]
	bl sub_804516C
	ldr r1, _080827EC @ =gUnknown_03005A20
	ldr r3, [sp, #0x20]
	cmp r7, #0
	beq _080827A2
	ldr r1, _080827F0 @ =gUnknown_03005AB0
_080827A2:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _080827EC @ =gUnknown_03005A20
	cmp r7, #0
	beq _080827AE
	ldr r1, _080827F0 @ =gUnknown_03005AB0
_080827AE:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xaa
	str r3, [sp, #0x20]
	bl m4aSongNumStart
	movs r1, #1
	lsls r1, r7
	ldr r2, [sp, #0x14]
	ldrb r0, [r2]
	orrs r1, r0
	movs r2, #0
	ldr r4, [sp, #0x14]
	strb r1, [r4]
	ldr r1, _080827F4 @ =gUnknown_03005A8D
	ldr r3, [sp, #0x20]
	cmp r7, #0
	beq _080827D4
	ldr r1, _080827F8 @ =gUnknown_03005B1D
_080827D4:
	ldr r5, [sp, #0x18]
	ldrb r0, [r5]
	strb r0, [r1]
	cmp r7, #0
	beq _08082800
	ldr r1, _080827FC @ =gUnknown_03005AD6
	ldrb r0, [r1]
	movs r1, #0x80
	orrs r0, r1
	ldr r2, _080827FC @ =gUnknown_03005AD6
	strb r0, [r2]
	b _0808280A
	.align 2, 0
_080827EC: .4byte gUnknown_03005A20
_080827F0: .4byte gUnknown_03005AB0
_080827F4: .4byte gUnknown_03005A8D
_080827F8: .4byte gUnknown_03005B1D
_080827FC: .4byte gUnknown_03005AD6
_08082800:
	ldr r4, _08082874 @ =gUnknown_03005A46
	ldrb r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4]
_0808280A:
	ldr r5, [sp, #0x1c]
	adds r5, #4
	str r5, [sp, #0x1c]
	adds r7, #1
	ldr r0, _08082878 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	bge _08082820
	b _080822C2
_08082820:
	ldr r0, [sp, #0x14]
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08082864
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r0, r2
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08082854
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08082854
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r2, r0
	ble _08082864
_08082854:
	mov r4, sl
	ldrb r0, [r4, #8]
	ldr r5, [sp, #0x10]
	strb r0, [r5]
	ldr r0, _0808287C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08082864:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08082874: .4byte gUnknown_03005A46
_08082878: .4byte gUnknown_03005088
_0808287C: .4byte gCurTask

	thumb_func_start CreateEntity_Interactable066
CreateEntity_Interactable066: @ 0x08082880
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r6, r0, #0
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
	ldr r0, _08082934 @ =sub_8082948
	movs r2, #4
	ldrsb r2, [r6, r2]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0
	mov sb, r1
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	movs r0, #0
	mov sl, r0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	str r6, [r2]
	ldrb r0, [r6]
	strb r0, [r2, #8]
	mov r1, r8
	strb r1, [r2, #9]
	ldrb r1, [r6, #5]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r4, _08082938 @ =0x03000048
	adds r1, r3, r4
	strh r0, [r1]
	ldr r1, _0808293C @ =0x0300004C
	adds r0, r3, r1
	mov r4, sl
	strb r4, [r0]
	subs r1, #8
	adds r0, r3, r1
	mov r4, sb
	strh r4, [r0]
	mov r0, sb
	str r0, [r2, #0x3c]
	adds r1, #2
	adds r0, r3, r1
	strh r4, [r0]
	mov r0, sb
	str r0, [r2, #0x40]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	ldr r2, _08082940 @ =0x0300004A
	adds r1, r3, r2
	strh r0, [r1]
	ldrb r0, [r6, #4]
	ldr r4, _08082944 @ =0x0300004D
	adds r3, r3, r4
	strb r0, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08082934: .4byte sub_8082948
_08082938: .4byte 0x03000048
_0808293C: .4byte 0x0300004C
_08082940: .4byte 0x0300004A
_08082944: .4byte 0x0300004D

	thumb_func_start sub_8082948
sub_8082948: @ 0x08082948
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _080829BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r1]
	str r0, [sp, #0x10]
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	mov r2, r8
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, [sp, #0x10]
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	mov r4, r8
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _080829C0 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r1, #0x10
	str r4, [sp]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	ldrh r0, [r3, #2]
	lsrs r1, r2, #0x10
	str r1, [sp, #4]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	movs r4, #0
	ldr r5, _080829C4 @ =gUnknown_03005AB0
	ldr r7, _080829C8 @ =gUnknown_03005A20
	movs r2, #0
	str r2, [sp, #0x14]
	mov sl, r2
_080829B2:
	cmp r4, #0
	beq _080829CC
	ldr r0, [r5, #0x10]
	b _080829CE
	.align 2, 0
_080829BC: .4byte gCurTask
_080829C0: .4byte gCamera
_080829C4: .4byte gUnknown_03005AB0
_080829C8: .4byte gUnknown_03005A20
_080829CC:
	ldr r0, [r7, #0x10]
_080829CE:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080829D8
	b _08082DC8
_080829D8:
	mov r2, r8
	adds r2, #0x4c
	ldrb r1, [r2]
	asrs r1, r4
	movs r0, #1
	ands r1, r0
	mov sb, r2
	cmp r1, #0
	bne _080829EC
	b _08082C08
_080829EC:
	cmp r4, #0
	beq _080829F8
	ldrh r0, [r5, #0xa]
	adds r0, #0x2a
	strh r0, [r5, #0xa]
	b _080829FE
_080829F8:
	ldrh r0, [r7, #0xa]
	adds r0, #0x2a
	strh r0, [r7, #0xa]
_080829FE:
	cmp r4, #0
	beq _08082A08
	movs r3, #0xa
	ldrsh r1, [r5, r3]
	b _08082A0C
_08082A08:
	movs r0, #0xa
	ldrsh r1, [r7, r0]
_08082A0C:
	cmp r4, #0
	beq _08082A18
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	b _08082A1E
_08082A18:
	ldr r0, [r7, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
_08082A1E:
	mov r0, r8
	adds r0, #0x3c
	ldr r2, [sp, #0x14]
	adds r1, r0, r2
	ldr r2, [r1]
	mov ip, r0
	cmp r4, #0
	beq _08082A34
	movs r3, #0xa
	ldrsh r0, [r5, r3]
	b _08082A38
_08082A34:
	movs r3, #0xa
	ldrsh r0, [r7, r3]
_08082A38:
	adds r0, r2, r0
	str r0, [r1]
	ldr r0, _08082A64 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #1
	beq _08082A4E
	cmp r1, #0xf
	bne _08082ACE
_08082A4E:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r2, r0, #8
	adds r1, r0, #0
	cmp r4, #0
	beq _08082A68
	ldr r0, [r5]
	cmp r0, r2
	blt _08082A6E
	b _08082A9C
	.align 2, 0
_08082A64: .4byte gCurrentLevel
_08082A68:
	ldr r0, [r7]
	cmp r0, r2
	bge _08082A9C
_08082A6E:
	cmp r4, #0
	beq _08082A7A
	ldr r0, [r5]
	adds r0, #0x80
	str r0, [r5]
	b _08082A80
_08082A7A:
	ldr r0, [r7]
	adds r0, #0x80
	str r0, [r7]
_08082A80:
	asrs r2, r1, #8
	cmp r4, #0
	beq _08082A8E
	ldr r0, [r5]
	cmp r0, r2
	bgt _08082A94
	b _08082ACE
_08082A8E:
	ldr r0, [r7]
	cmp r0, r2
	ble _08082ACE
_08082A94:
	asrs r0, r1, #8
	cmp r4, #0
	bne _08082AC8
	b _08082ACC
_08082A9C:
	cmp r4, #0
	beq _08082AA8
	ldr r0, [r5]
	subs r0, #0x80
	str r0, [r5]
	b _08082AAE
_08082AA8:
	ldr r0, [r7]
	subs r0, #0x80
	str r0, [r7]
_08082AAE:
	asrs r2, r1, #8
	cmp r4, #0
	beq _08082ABC
	ldr r0, [r5]
	cmp r0, r2
	blt _08082AC2
	b _08082ACE
_08082ABC:
	ldr r0, [r7]
	cmp r0, r2
	bge _08082ACE
_08082AC2:
	asrs r0, r1, #8
	cmp r4, #0
	beq _08082ACC
_08082AC8:
	str r0, [r5]
	b _08082ACE
_08082ACC:
	str r0, [r7]
_08082ACE:
	ldr r3, _08082B48 @ =gUnknown_03005A8D
	adds r0, r3, #0
	cmp r4, #0
	beq _08082AD8
	ldr r0, _08082B4C @ =gUnknown_03005B1D
_08082AD8:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, r8
	adds r1, #0x4d
	adds r6, r1, #0
	ldrb r2, [r6]
	cmp r0, r2
	bgt _08082B18
	lsls r0, r4, #1
	subs r1, #9
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x48
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bhs _08082B18
	ldr r0, [sp, #0x14]
	add r0, ip
	ldr r1, [r0]
	asrs r1, r1, #8
	mov r0, r8
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _08082B94
_08082B18:
	adds r0, r3, #0
	cmp r4, #0
	beq _08082B20
	ldr r0, _08082B4C @ =gUnknown_03005B1D
_08082B20:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r6, [r6]
	cmp r0, r6
	bne _08082B80
	adds r1, r3, #0
	cmp r4, #0
	beq _08082B34
	ldr r1, _08082B4C @ =gUnknown_03005B1D
_08082B34:
	movs r0, #0x7f
	strb r0, [r1]
	cmp r4, #0
	beq _08082B54
	ldr r0, [r5, #0x10]
	ldr r1, _08082B50 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08082B5C
	.align 2, 0
_08082B48: .4byte gUnknown_03005A8D
_08082B4C: .4byte gUnknown_03005B1D
_08082B50: .4byte 0xFFBFFFFF
_08082B54:
	ldr r0, [r7, #0x10]
	ldr r1, _08082B6C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
_08082B5C:
	cmp r4, #0
	beq _08082B74
	ldr r3, _08082B70 @ =gUnknown_03005AD6
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3]
	b _08082B80
	.align 2, 0
_08082B6C: .4byte 0xFFBFFFFF
_08082B70: .4byte gUnknown_03005AD6
_08082B74:
	ldr r0, _08082B90 @ =gUnknown_03005A46
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	ldr r1, _08082B90 @ =gUnknown_03005A46
	strb r0, [r1]
_08082B80:
	movs r1, #1
	lsls r1, r4
	mov r2, sb
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	b _08082E00
	.align 2, 0
_08082B90: .4byte gUnknown_03005A46
_08082B94:
	cmp r4, #0
	beq _08082BA4
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08082BAE
_08082BA4:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r7, #0x10]
_08082BAE:
	adds r2, r3, #0
	subs r2, #0x6d
	cmp r4, #0
	beq _08082BBC
	mov r3, sl
	strh r3, [r5, #8]
	b _08082BBE
_08082BBC:
	strh r4, [r2, #8]
_08082BBE:
	cmp r4, #0
	beq _08082BC8
	mov r0, sl
	strh r0, [r5, #0xc]
	b _08082BCA
_08082BC8:
	strh r4, [r2, #0xc]
_08082BCA:
	ldr r0, _08082C00 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08082BD2
	ldr r0, _08082C04 @ =gUnknown_03005AB0
_08082BD2:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _08082C00 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08082BE0
	ldr r1, _08082C04 @ =gUnknown_03005AB0
_08082BE0:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08082C00 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08082BEC
	ldr r1, _08082C04 @ =gUnknown_03005AB0
_08082BEC:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #1
	lsls r0, r4
	mov r2, sb
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	b _08082E00
	.align 2, 0
_08082C00: .4byte gUnknown_03005A20
_08082C04: .4byte gUnknown_03005AB0
_08082C08:
	cmp r4, #0
	beq _08082C1E
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08082C2E
	mov r6, r8
	adds r6, #0x4d
	b _08082C48
_08082C1E:
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	mov r6, r8
	adds r6, #0x4d
	cmp r1, #0
	beq _08082C48
_08082C2E:
	ldr r0, _08082C68 @ =gUnknown_03005A8D
	cmp r4, #0
	beq _08082C36
	ldr r0, _08082C6C @ =gUnknown_03005B1D
_08082C36:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, r8
	adds r1, #0x4d
	adds r6, r1, #0
	ldrb r3, [r6]
	cmp r0, r3
	blt _08082C50
_08082C48:
	ldrb r0, [r6]
	cmp r0, #0
	beq _08082C50
	b _08082E00
_08082C50:
	ldr r0, [sp]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #0xc
	cmp r4, #0
	beq _08082C70
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08082C7A
	b _08082E00
	.align 2, 0
_08082C68: .4byte gUnknown_03005A8D
_08082C6C: .4byte gUnknown_03005B1D
_08082C70:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08082C7A
	b _08082E00
_08082C7A:
	asrs r0, r1, #0x10
	adds r1, r0, #0
	adds r1, #0xc
	cmp r4, #0
	beq _08082C8E
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08082C98
	b _08082E00
_08082C8E:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08082C98
	b _08082E00
_08082C98:
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #0xc
	cmp r4, #0
	beq _08082CB0
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08082CBA
	b _08082E00
_08082CB0:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08082CBA
	b _08082E00
_08082CBA:
	asrs r0, r1, #0x10
	adds r1, r0, #0
	adds r1, #0xc
	cmp r4, #0
	beq _08082CCE
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08082CD8
	b _08082E00
_08082CCE:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08082CD8
	b _08082E00
_08082CD8:
	lsls r0, r4, #1
	mov r1, r8
	adds r1, #0x44
	adds r1, r1, r0
	mov r3, sl
	strh r3, [r1]
	mov r0, r8
	adds r0, #0x3c
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	mov r2, sl
	str r2, [r0]
	cmp r4, #0
	beq _08082CFE
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08082D06
_08082CFE:
	ldr r0, [r7, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x10]
_08082D06:
	ldr r2, _08082D18 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08082D1C
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08082D26
	.align 2, 0
_08082D18: .4byte gUnknown_03005A20
_08082D1C:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r7, #0x10]
_08082D26:
	cmp r4, #0
	beq _08082D30
	mov r3, sl
	strh r3, [r5, #0xa]
	b _08082D32
_08082D30:
	strh r4, [r2, #0xa]
_08082D32:
	cmp r4, #0
	beq _08082D3C
	mov r0, sl
	strh r0, [r5, #8]
	b _08082D3E
_08082D3C:
	strh r4, [r2, #8]
_08082D3E:
	cmp r4, #0
	beq _08082D48
	mov r1, sl
	strh r1, [r5, #0xc]
	b _08082D4A
_08082D48:
	strh r4, [r2, #0xc]
_08082D4A:
	ldr r0, _08082DA4 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08082D52
	ldr r0, _08082DA8 @ =gUnknown_03005AB0
_08082D52:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _08082DA4 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08082D60
	ldr r1, _08082DA8 @ =gUnknown_03005AB0
_08082D60:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08082DA4 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08082D6C
	ldr r1, _08082DA8 @ =gUnknown_03005AB0
_08082D6C:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r1, #1
	lsls r1, r4
	mov r2, sb
	ldrb r0, [r2]
	orrs r1, r0
	movs r2, #0
	mov r3, sb
	strb r1, [r3]
	ldr r1, _08082DAC @ =gUnknown_03005A8D
	cmp r4, #0
	beq _08082D8E
	ldr r1, _08082DB0 @ =gUnknown_03005B1D
_08082D8E:
	ldrb r0, [r6]
	strb r0, [r1]
	cmp r4, #0
	beq _08082DB8
	ldr r1, _08082DB4 @ =gUnknown_03005AD6
	ldrb r0, [r1]
	movs r1, #0x80
	orrs r0, r1
	ldr r2, _08082DB4 @ =gUnknown_03005AD6
	strb r0, [r2]
	b _08082E00
	.align 2, 0
_08082DA4: .4byte gUnknown_03005A20
_08082DA8: .4byte gUnknown_03005AB0
_08082DAC: .4byte gUnknown_03005A8D
_08082DB0: .4byte gUnknown_03005B1D
_08082DB4: .4byte gUnknown_03005AD6
_08082DB8:
	ldr r3, _08082DC4 @ =gUnknown_03005A46
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
	b _08082E00
	.align 2, 0
_08082DC4: .4byte gUnknown_03005A46
_08082DC8:
	mov r1, r8
	adds r1, #0x4c
	ldrb r3, [r1]
	adds r0, r3, #0
	asrs r0, r4
	movs r2, #1
	ands r0, r2
	mov sb, r1
	cmp r0, #0
	beq _08082E00
	adds r0, r2, #0
	lsls r0, r4
	bics r3, r0
	strb r3, [r1]
	cmp r4, #0
	beq _08082DF8
	ldr r0, [r5, #0x10]
	ldr r1, _08082DF4 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08082E00
	.align 2, 0
_08082DF4: .4byte 0xFFBFFFFF
_08082DF8:
	ldr r0, [r7, #0x10]
	ldr r1, _08082E8C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r7, #0x10]
_08082E00:
	ldr r0, [sp, #0x14]
	adds r0, #4
	str r0, [sp, #0x14]
	adds r4, #1
	ldr r0, _08082E90 @ =gUnknown_03005088
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov ip, r0
	cmp r4, r1
	bge _08082E16
	b _080829B2
_08082E16:
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08082EC6
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x10
	adds r0, r0, r4
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08082E4A
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08082E4A
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r2, r0
	ble _08082EC6
_08082E4A:
	movs r2, #0
	ldr r3, _08082E94 @ =gCurTask
	mov sl, r3
	ldr r3, _08082E98 @ =gUnknown_03005A8D
	mov r6, r8
	adds r6, #0x4d
	ldr r7, _08082E9C @ =gUnknown_03005AB0
	ldr r5, _08082E8C @ =0xFFBFFFFF
	adds r4, r3, #0
	subs r4, #0x6d
_08082E5E:
	adds r0, r3, #0
	cmp r2, #0
	beq _08082E66
	ldr r0, _08082EA0 @ =gUnknown_03005B1D
_08082E66:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r6]
	cmp r0, r1
	bne _08082EAA
	mov r1, sb
	ldrb r0, [r1]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08082EAA
	cmp r2, #0
	beq _08082EA4
	ldr r0, [r7, #0x10]
	ands r0, r5
	str r0, [r7, #0x10]
	b _08082EAA
	.align 2, 0
_08082E8C: .4byte 0xFFBFFFFF
_08082E90: .4byte gUnknown_03005088
_08082E94: .4byte gCurTask
_08082E98: .4byte gUnknown_03005A8D
_08082E9C: .4byte gUnknown_03005AB0
_08082EA0: .4byte gUnknown_03005B1D
_08082EA4:
	ldr r0, [r4, #0x10]
	ands r0, r5
	str r0, [r4, #0x10]
_08082EAA:
	adds r2, #1
	mov r1, ip
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blt _08082E5E
	mov r2, r8
	ldrb r0, [r2, #8]
	ldr r3, [sp, #0x10]
	strb r0, [r3]
	mov r4, sl
	ldr r0, [r4]
	bl TaskDestroy
_08082EC6:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable067
CreateEntity_Interactable067: @ 0x08082ED8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	mov sb, r2
	mov sl, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r0, _08082FF4 @ =sub_8083020
	mov r3, r8
	ldrb r2, [r3, #6]
	movs r3, #0xc8
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r2, r1
	ldr r1, _08082FF8 @ =sub_80836B4
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldr r0, _08082FFC @ =0x0300000C
	adds r6, r4, r0
	movs r7, #0
	movs r3, #0
	strh r5, [r1, #4]
	mov r2, sb
	strh r2, [r1, #6]
	mov r0, r8
	str r0, [r1]
	ldrb r0, [r0]
	strb r0, [r1, #8]
	mov r2, sl
	strb r2, [r1, #9]
	mov r0, r8
	ldrb r0, [r0, #3]
	mov sl, r0
	ldr r2, _08083000 @ =0x0300003F
	adds r0, r4, r2
	mov r2, sl
	strb r2, [r0]
	ldr r2, _08083004 @ =0x0300003C
	adds r0, r4, r2
	strb r7, [r0]
	str r3, [r1, #0x40]
	adds r2, #1
	adds r0, r4, r2
	strb r7, [r0]
	str r3, [r1, #0x44]
	mov r0, r8
	ldrb r1, [r0, #5]
	adds r2, #0xb
	adds r0, r4, r2
	strh r1, [r0]
	ldr r1, _08083008 @ =0x0300003E
	adds r0, r4, r1
	strb r7, [r0]
	mov r2, r8
	movs r1, #4
	ldrsb r1, [r2, r1]
	ldr r2, _0808300C @ =0x0300004A
	adds r0, r4, r2
	strh r1, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, r8
	strb r0, [r2]
	lsls r5, r5, #8
	movs r0, #0xfe
	lsls r0, r0, #3
	adds r5, r5, r0
	strh r5, [r6, #0x16]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	mov r1, sb
	lsls r1, r1, #8
	mov sb, r1
	add r0, sb
	strh r0, [r6, #0x18]
	movs r0, #0x10
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r6, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	ldr r3, [sp, #4]
	strh r3, [r6, #8]
	movs r0, #0xf4
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	ldr r2, _08083010 @ =0x0300002C
	adds r0, r4, r2
	strb r7, [r0]
	strh r3, [r6, #0x14]
	strh r3, [r6, #0x1c]
	ldr r3, _08083014 @ =0x0300002D
	adds r1, r4, r3
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08083018 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0808301C @ =0x03000031
	adds r4, r4, r1
	strb r7, [r4]
	subs r0, #0x11
	str r0, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	adds r0, r6, #0
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
_08082FF4: .4byte sub_8083020
_08082FF8: .4byte sub_80836B4
_08082FFC: .4byte 0x0300000C
_08083000: .4byte 0x0300003F
_08083004: .4byte 0x0300003C
_08083008: .4byte 0x0300003E
_0808300C: .4byte 0x0300004A
_08083010: .4byte 0x0300002C
_08083014: .4byte 0x0300002D
_08083018: .4byte 0x0300002E
_0808301C: .4byte 0x03000031

	thumb_func_start sub_8083020
sub_8083020: @ 0x08083020
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r0, _080830AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r0, _080830B0 @ =0x0300000C
	adds r0, r1, r0
	str r0, [sp, #0x10]
	mov r1, sl
	ldr r1, [r1]
	str r1, [sp, #0x14]
	mov r3, sl
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _080830B4 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	str r4, [sp]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrh r0, [r3, #2]
	lsrs r4, r1, #0x10
	str r4, [sp, #4]
	asrs r1, r1, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	ldr r2, [sp, #0x10]
	strh r1, [r2, #0x18]
	movs r6, #0
	ldr r7, _080830B8 @ =gUnknown_03005AB0
	ldr r3, _080830BC @ =gUnknown_03005A20
	mov r8, r3
	movs r4, #0
	str r4, [sp, #0x20]
_0808309A:
	cmp r6, #0
	beq _080830C0
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r0, sl
	adds r0, #0x3e
	str r0, [sp, #0x18]
	b _080830CE
	.align 2, 0
_080830AC: .4byte gCurTask
_080830B0: .4byte 0x0300000C
_080830B4: .4byte gCamera
_080830B8: .4byte gUnknown_03005AB0
_080830BC: .4byte gUnknown_03005A20
_080830C0:
	mov r2, r8
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r3, sl
	adds r3, #0x3e
	str r3, [sp, #0x18]
_080830CE:
	cmp r1, #0
	beq _080830D4
	b _080835A6
_080830D4:
	mov r2, sl
	adds r2, #0x3e
	ldrb r1, [r2]
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	str r2, [sp, #0x18]
	cmp r1, #0
	bne _080830E8
	b _08083338
_080830E8:
	cmp r6, #0
	beq _080830F4
	ldrh r0, [r7, #0xa]
	adds r0, #0x2a
	strh r0, [r7, #0xa]
	b _080830FC
_080830F4:
	mov r4, r8
	ldrh r0, [r4, #0xa]
	adds r0, #0x2a
	strh r0, [r4, #0xa]
_080830FC:
	mov r0, sl
	adds r0, #0x4a
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r5, sl
	adds r5, #0x3c
	adds r0, r5, r6
	ldrb r0, [r0]
	muls r0, r1, r0
	mov r4, sl
	adds r4, #0x3f
	ldrb r1, [r4]
	bl Div
	ldr r3, [sp]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #8
	mov sb, r1
	str r4, [sp, #0x1c]
	cmp r6, #0
	beq _08083130
	movs r4, #0xa
	ldrsh r1, [r7, r4]
	b _08083136
_08083130:
	mov r0, r8
	movs r2, #0xa
	ldrsh r1, [r0, r2]
_08083136:
	cmp r6, #0
	beq _08083142
	ldr r0, [r7, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
	b _0808314A
_08083142:
	mov r3, r8
	ldr r0, [r3, #4]
	adds r0, r0, r1
	str r0, [r3, #4]
_0808314A:
	mov r0, sl
	adds r0, #0x40
	ldr r4, [sp, #0x20]
	adds r1, r0, r4
	ldr r2, [r1]
	str r0, [sp, #0x24]
	cmp r6, #0
	beq _08083160
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	b _08083166
_08083160:
	mov r4, r8
	movs r3, #0xa
	ldrsh r0, [r4, r3]
_08083166:
	adds r0, r2, r0
	str r0, [r1]
	cmp r6, #0
	beq _08083174
	mov r4, sb
	str r4, [r7]
	b _0808317A
_08083174:
	mov r0, sb
	mov r1, r8
	str r0, [r1]
_0808317A:
	cmp r6, #0
	beq _0808318C
	ldr r2, _08083188 @ =gUnknown_03005B04
	ldrh r0, [r2]
	adds r0, #4
	strh r0, [r2]
	b _08083194
	.align 2, 0
_08083188: .4byte gUnknown_03005B04
_0808318C:
	ldr r3, _080831A8 @ =gUnknown_03005A74
	ldrh r0, [r3]
	adds r0, #4
	strh r0, [r3]
_08083194:
	cmp r6, #0
	beq _080831B0
	ldr r4, _080831AC @ =gUnknown_03005B04
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bgt _080831BE
	b _080831DC
	.align 2, 0
_080831A8: .4byte gUnknown_03005A74
_080831AC: .4byte gUnknown_03005B04
_080831B0:
	ldr r2, _080831CC @ =gUnknown_03005A74
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _080831DC
_080831BE:
	cmp r6, #0
	beq _080831D4
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r4, _080831D0 @ =gUnknown_03005B04
	strh r0, [r4]
	b _080831DC
	.align 2, 0
_080831CC: .4byte gUnknown_03005A74
_080831D0: .4byte gUnknown_03005B04
_080831D4:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, _080831E8 @ =gUnknown_03005A74
	strh r0, [r1]
_080831DC:
	cmp r6, #0
	beq _080831F0
	ldr r2, _080831EC @ =gUnknown_03005B04
	movs r3, #0
	ldrsh r0, [r2, r3]
	b _080831F6
	.align 2, 0
_080831E8: .4byte gUnknown_03005A74
_080831EC: .4byte gUnknown_03005B04
_080831F0:
	ldr r4, _08083200 @ =gUnknown_03005A74
	movs r1, #0
	ldrsh r0, [r4, r1]
_080831F6:
	cmp r6, #0
	beq _08083208
	ldr r2, _08083204 @ =gUnknown_03005B06
	strh r0, [r2]
	b _0808320C
	.align 2, 0
_08083200: .4byte gUnknown_03005A74
_08083204: .4byte gUnknown_03005B06
_08083208:
	ldr r3, _08083284 @ =gUnknown_03005A76
	strh r0, [r3]
_0808320C:
	adds r0, r5, r6
	ldrb r0, [r0]
	cmp r0, #0x19
	bne _08083220
	ldr r0, _08083288 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0808321C
	ldr r0, _0808328C @ =gUnknown_03005AB0
_0808321C:
	bl sub_8047E18
_08083220:
	adds r1, r5, r6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, [sp, #0x1c]
	ldrb r4, [r4]
	cmp r0, r4
	bhs _08083274
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	mov r0, sl
	adds r0, #0x48
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bgt _08083274
	ldr r1, _08083290 @ =gUnknown_03005A8D
	adds r0, r1, #0
	cmp r6, #0
	beq _08083254
	ldr r0, _08083294 @ =gUnknown_03005B1D
_08083254:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x7f
	beq _08083298
	adds r0, r1, #0
	cmp r6, #0
	beq _08083266
	ldr r0, _08083294 @ =gUnknown_03005B1D
_08083266:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r4, [sp, #0x14]
	ldrb r4, [r4, #6]
	cmp r0, r4
	ble _08083298
_08083274:
	movs r1, #1
	lsls r1, r6
	ldr r2, [sp, #0x18]
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	b _080835A6
	.align 2, 0
_08083284: .4byte gUnknown_03005A76
_08083288: .4byte gUnknown_03005A20
_0808328C: .4byte gUnknown_03005AB0
_08083290: .4byte gUnknown_03005A8D
_08083294: .4byte gUnknown_03005B1D
_08083298:
	ldr r0, _080832B4 @ =gUnknown_03005A20
	cmp r6, #0
	beq _080832A0
	ldr r0, _080832B8 @ =gUnknown_03005AB0
_080832A0:
	bl sub_8046CEC
	cmp r6, #0
	beq _080832BC
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r7, #0x10]
	b _080832C8
	.align 2, 0
_080832B4: .4byte gUnknown_03005A20
_080832B8: .4byte gUnknown_03005AB0
_080832BC:
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r3, #0x10]
_080832C8:
	ldr r2, _080832D4 @ =gUnknown_03005A20
	cmp r6, #0
	beq _080832D8
	movs r4, #0
	strh r4, [r7, #8]
	b _080832DA
	.align 2, 0
_080832D4: .4byte gUnknown_03005A20
_080832D8:
	strh r6, [r2, #8]
_080832DA:
	cmp r6, #0
	beq _080832E4
	movs r0, #0
	strh r0, [r7, #0xc]
	b _080832E6
_080832E4:
	strh r6, [r2, #0xc]
_080832E6:
	cmp r6, #0
	beq _080832F4
	movs r0, #0x20
	ldr r1, _080832F0 @ =gUnknown_03005AF0
	b _080832FA
	.align 2, 0
_080832F0: .4byte gUnknown_03005AF0
_080832F4:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x20
_080832FA:
	strb r0, [r1]
	ldr r0, _08083330 @ =gUnknown_03005A20
	cmp r6, #0
	beq _08083304
	ldr r0, _08083334 @ =gUnknown_03005AB0
_08083304:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _08083330 @ =gUnknown_03005A20
	cmp r6, #0
	beq _08083312
	ldr r1, _08083334 @ =gUnknown_03005AB0
_08083312:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08083330 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0808331E
	ldr r1, _08083334 @ =gUnknown_03005AB0
_0808331E:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #1
	lsls r0, r6
	ldr r2, [sp, #0x18]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	b _080835A6
	.align 2, 0
_08083330: .4byte gUnknown_03005A20
_08083334: .4byte gUnknown_03005AB0
_08083338:
	cmp r6, #0
	beq _08083342
	ldr r3, [r7]
	mov sb, r3
	b _08083348
_08083342:
	mov r4, r8
	ldr r4, [r4]
	mov sb, r4
_08083348:
	bl sub_80549FC
	cmp r0, #0
	beq _080833D6
	cmp r6, #0
	beq _08083364
	ldr r1, _08083360 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x49
	bne _08083372
	b _080833D6
	.align 2, 0
_08083360: .4byte gUnknown_03005AF0
_08083364:
	mov r0, r8
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x49
	beq _080833D6
_08083372:
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r0, r1, #8
	movs r4, #0xc0
	lsls r4, r4, #4
	adds r3, r0, r4
	adds r2, r1, #0
	cmp r6, #0
	beq _0808338C
	ldr r0, [r7, #4]
	cmp r0, r3
	bgt _08083396
	b _080835A6
_0808338C:
	mov r1, r8
	ldr r0, [r1, #4]
	cmp r0, r3
	bgt _08083396
	b _080835A6
_08083396:
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	asrs r4, r2, #0x10
	ldr r3, _080833C8 @ =gUnknown_03005A20
	cmp r6, #0
	beq _080833A6
	ldr r3, _080833CC @ =gUnknown_03005AB0
_080833A6:
	ldr r0, [sp, #0x10]
	adds r2, r4, #0
	bl sub_80096B0
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	bne _080833BA
	b _080835A6
_080833BA:
	adds r0, r4, #0
	adds r0, #0x17
	lsls r0, r0, #8
	cmp r6, #0
	beq _080833D0
	str r0, [r7, #4]
	b _080835A6
	.align 2, 0
_080833C8: .4byte gUnknown_03005A20
_080833CC: .4byte gUnknown_03005AB0
_080833D0:
	mov r4, r8
	str r0, [r4, #4]
	b _080835A6
_080833D6:
	ldr r0, _08083440 @ =gUnknown_03005A8D
	cmp r6, #0
	beq _080833DE
	ldr r0, _08083444 @ =gUnknown_03005B1D
_080833DE:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x7f
	beq _080833EA
	b _080835A6
_080833EA:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08083448 @ =gUnknown_03005A20
	cmp r6, #0
	beq _080833FE
	ldr r3, _0808344C @ =gUnknown_03005AB0
_080833FE:
	ldr r0, [sp, #0x10]
	bl sub_80096B0
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0808340E
	b _080835A6
_0808340E:
	mov r0, sl
	adds r0, #0x3c
	adds r0, r0, r6
	movs r3, #0
	strb r3, [r0]
	mov r0, sl
	adds r0, #0x40
	ldr r4, [sp, #0x20]
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
	ldr r0, _08083448 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0808342C
	ldr r0, _0808344C @ =gUnknown_03005AB0
_0808342C:
	bl sub_8046CEC
	cmp r6, #0
	beq _08083450
	ldr r0, [r7, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0808345A
	.align 2, 0
_08083440: .4byte gUnknown_03005A8D
_08083444: .4byte gUnknown_03005B1D
_08083448: .4byte gUnknown_03005A20
_0808344C: .4byte gUnknown_03005AB0
_08083450:
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #0x10]
_0808345A:
	ldr r2, _0808346C @ =gUnknown_03005A20
	cmp r6, #0
	beq _08083470
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808347C
	.align 2, 0
_0808346C: .4byte gUnknown_03005A20
_08083470:
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
_0808347C:
	cmp r6, #0
	beq _0808348C
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08083498
_0808348C:
	mov r4, r8
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
_08083498:
	ldr r1, _080834B0 @ =gUnknown_03005A8D
	cmp r6, #0
	beq _080834A0
	ldr r1, _080834B4 @ =gUnknown_03005B1D
_080834A0:
	ldr r3, [sp, #0x14]
	ldrb r0, [r3, #6]
	strb r0, [r1]
	cmp r6, #0
	beq _080834B8
	movs r4, #0
	strh r4, [r7, #0xa]
	b _080834BA
	.align 2, 0
_080834B0: .4byte gUnknown_03005A8D
_080834B4: .4byte gUnknown_03005B1D
_080834B8:
	strh r6, [r2, #0xa]
_080834BA:
	cmp r6, #0
	beq _080834C4
	movs r0, #0
	strh r0, [r7, #8]
	b _080834C6
_080834C4:
	strh r6, [r2, #8]
_080834C6:
	cmp r6, #0
	beq _080834D0
	movs r1, #0
	strh r1, [r7, #0xc]
	b _080834D2
_080834D0:
	strh r6, [r2, #0xc]
_080834D2:
	cmp r6, #0
	beq _080834DC
	movs r3, #0
	strh r3, [r7, #0x3a]
	b _080834DE
_080834DC:
	strh r6, [r2, #0x3a]
_080834DE:
	cmp r6, #0
	beq _080834E8
	movs r4, #0
	strh r4, [r7, #0x38]
	b _080834EA
_080834E8:
	strh r6, [r2, #0x38]
_080834EA:
	cmp r6, #0
	beq _080834F8
	movs r0, #0x20
	ldr r1, _080834F4 @ =gUnknown_03005AF0
	b _080834FE
	.align 2, 0
_080834F4: .4byte gUnknown_03005AF0
_080834F8:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x20
_080834FE:
	strb r0, [r1]
	cmp r6, #0
	beq _08083510
	movs r0, #0xb0
	ldr r2, _0808350C @ =gUnknown_03005B04
	strh r0, [r2]
	b _08083516
	.align 2, 0
_0808350C: .4byte gUnknown_03005B04
_08083510:
	movs r0, #0xb0
	ldr r3, _08083524 @ =gUnknown_03005A74
	strh r0, [r3]
_08083516:
	cmp r6, #0
	beq _0808352C
	movs r0, #0xb0
	ldr r4, _08083528 @ =gUnknown_03005B06
	strh r0, [r4]
	b _08083532
	.align 2, 0
_08083524: .4byte gUnknown_03005A74
_08083528: .4byte gUnknown_03005B06
_0808352C:
	movs r0, #0xb0
	ldr r1, _08083574 @ =gUnknown_03005A76
	strh r0, [r1]
_08083532:
	ldr r0, _08083578 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0808353A
	ldr r0, _0808357C @ =gUnknown_03005AB0
_0808353A:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _08083578 @ =gUnknown_03005A20
	cmp r6, #0
	beq _08083548
	ldr r1, _0808357C @ =gUnknown_03005AB0
_08083548:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08083578 @ =gUnknown_03005A20
	cmp r6, #0
	beq _08083554
	ldr r1, _0808357C @ =gUnknown_03005AB0
_08083554:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r0, #1
	lsls r0, r6
	ldr r2, [sp, #0x18]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	cmp r6, #0
	beq _08083580
	mov r3, sb
	str r3, [r7]
	b _08083586
	.align 2, 0
_08083574: .4byte gUnknown_03005A76
_08083578: .4byte gUnknown_03005A20
_0808357C: .4byte gUnknown_03005AB0
_08083580:
	mov r4, sb
	mov r0, r8
	str r4, [r0]
_08083586:
	cmp r6, #0
	beq _0808359C
	ldr r1, _08083598 @ =gUnknown_03005AD6
	ldrb r0, [r1]
	movs r1, #0x80
	orrs r0, r1
	ldr r2, _08083598 @ =gUnknown_03005AD6
	strb r0, [r2]
	b _080835A6
	.align 2, 0
_08083598: .4byte gUnknown_03005AD6
_0808359C:
	ldr r3, _0808363C @ =gUnknown_03005A46
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
_080835A6:
	ldr r4, [sp, #0x20]
	adds r4, #4
	str r4, [sp, #0x20]
	adds r6, #1
	ldr r0, _08083640 @ =gUnknown_03005088
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r0
	cmp r6, r1
	bge _080835BC
	b _0808309A
_080835BC:
	ldr r0, [sp, #0x18]
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08083698
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r0, r2
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080835F0
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _080835F0
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08083698
_080835F0:
	movs r2, #0
	ldr r4, _08083644 @ =gCurTask
	mov ip, r4
	ldr r4, _08083648 @ =gUnknown_03005AB0
	ldr r0, _0808364C @ =0xFFBFFFFF
	mov r8, r0
	ldr r3, _08083650 @ =gUnknown_03005A20
	adds r6, r4, #0
	adds r6, #0x26
	movs r7, #0x7f
	adds r5, r3, #0
	adds r5, #0x26
_08083608:
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808367A
	ldr r0, [sp, #0x14]
	ldrb r1, [r0, #6]
	ldr r0, _08083654 @ =gUnknown_03005A8D
	cmp r2, #0
	beq _08083622
	ldr r0, _08083658 @ =gUnknown_03005B1D
_08083622:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _0808367A
	cmp r2, #0
	beq _0808365C
	ldr r0, [r4, #0x10]
	mov r1, r8
	ands r0, r1
	str r0, [r4, #0x10]
	b _08083664
	.align 2, 0
_0808363C: .4byte gUnknown_03005A46
_08083640: .4byte gUnknown_03005088
_08083644: .4byte gCurTask
_08083648: .4byte gUnknown_03005AB0
_0808364C: .4byte 0xFFBFFFFF
_08083650: .4byte gUnknown_03005A20
_08083654: .4byte gUnknown_03005A8D
_08083658: .4byte gUnknown_03005B1D
_0808365C:
	ldr r0, [r3, #0x10]
	mov r1, r8
	ands r0, r1
	str r0, [r3, #0x10]
_08083664:
	cmp r2, #0
	beq _08083672
	ldrb r1, [r6]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r6]
	b _0808367A
_08083672:
	ldrb r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r5]
_0808367A:
	adds r2, #1
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blt _08083608
	mov r2, sl
	ldrb r0, [r2, #8]
	ldr r3, [sp, #0x14]
	strb r0, [r3]
	mov r4, ip
	ldr r0, [r4]
	bl TaskDestroy
	b _080836A4
_08083698:
	ldr r0, [sp, #0x10]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #0x10]
	bl DisplaySprite
_080836A4:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80836B4
sub_80836B4: @ 0x080836B4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable068
CreateEntity_Interactable068: @ 0x080836C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	mov r8, r2
	mov sl, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r0, _080837D0 @ =sub_80837F0
	mov r3, sb
	movs r2, #4
	ldrsb r2, [r3, r2]
	movs r1, #0x84
	lsls r1, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _080837D4 @ =sub_8083E60
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r6, r1
	ldr r3, _080837D8 @ =0x0300000C
	adds r5, r6, r3
	movs r7, #0
	movs r2, #0
	strh r4, [r1, #4]
	mov r0, r8
	strh r0, [r1, #6]
	mov r3, sb
	str r3, [r1]
	ldrb r0, [r3]
	strb r0, [r1, #8]
	mov r0, sl
	strb r0, [r1, #9]
	ldr r3, _080837DC @ =0x03000040
	adds r0, r6, r3
	strb r7, [r0]
	str r2, [r1, #0x44]
	str r2, [r1, #0x4c]
	str r2, [r1, #0x48]
	str r2, [r1, #0x50]
	mov r3, sb
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #3
	str r0, [r1, #0x3c]
	ldrb r1, [r3, #5]
	ldr r3, _080837E0 @ =0x03000041
	adds r0, r6, r3
	strb r1, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r3, sb
	strb r0, [r3]
	lsls r4, r4, #8
	movs r0, #0xfe
	lsls r0, r0, #3
	adds r4, r4, r0
	strh r4, [r5, #0x16]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov r8, r1
	add r0, r8
	strh r0, [r5, #0x18]
	movs r0, #0x10
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r2, [sp, #4]
	strh r2, [r5, #8]
	movs r0, #0xf4
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	ldr r3, _080837E4 @ =0x0300002C
	adds r0, r6, r3
	strb r7, [r0]
	strh r2, [r5, #0x14]
	strh r2, [r5, #0x1c]
	ldr r0, _080837E8 @ =0x0300002D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r3, #2
	adds r1, r6, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _080837EC @ =0x03000031
	adds r6, r6, r0
	strb r7, [r6]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
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
_080837D0: .4byte sub_80837F0
_080837D4: .4byte sub_8083E60
_080837D8: .4byte 0x0300000C
_080837DC: .4byte 0x03000040
_080837E0: .4byte 0x03000041
_080837E4: .4byte 0x0300002C
_080837E8: .4byte 0x0300002D
_080837EC: .4byte 0x03000031

	thumb_func_start sub_80837F0
sub_80837F0: @ 0x080837F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _0808387C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	adds r0, #0xc
	adds r0, r4, r0
	str r0, [sp, #0x10]
	ldr r1, [r7]
	str r1, [sp, #0x14]
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08083880 @ =gCamera
	ldrh r0, [r3]
	lsrs r5, r2, #0x10
	str r5, [sp]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r3, #2]
	lsrs r6, r1, #0x10
	str r6, [sp, #4]
	asrs r1, r1, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	ldr r2, [sp, #0x10]
	strh r1, [r2, #0x18]
	ldr r3, _08083884 @ =0x03000041
	adds r4, r4, r3
	ldrb r0, [r4]
	movs r6, #0
	str r6, [sp, #0xc]
	cmp r0, #0
	beq _08083868
	ldr r0, _08083888 @ =0x0000FFE8
	str r0, [sp, #0xc]
_08083868:
	movs r6, #0
	lsls r5, r5, #0x10
	str r5, [sp, #0x18]
	ldr r4, _0808388C @ =gUnknown_03005AB0
	ldr r5, _08083890 @ =gUnknown_03005A20
	mov sl, r6
_08083874:
	cmp r6, #0
	beq _08083894
	ldr r0, [r4, #0x10]
	b _08083896
	.align 2, 0
_0808387C: .4byte gCurTask
_08083880: .4byte gCamera
_08083884: .4byte 0x03000041
_08083888: .4byte 0x0000FFE8
_0808388C: .4byte gUnknown_03005AB0
_08083890: .4byte gUnknown_03005A20
_08083894:
	ldr r0, [r5, #0x10]
_08083896:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080838A0
	b _08083D6A
_080838A0:
	adds r2, r7, #0
	adds r2, #0x40
	ldrb r1, [r2]
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	mov r8, r2
	cmp r1, #0
	bne _080838B4
	b _08083ADC
_080838B4:
	cmp r6, #0
	beq _080838C0
	ldrh r0, [r4, #0xa]
	adds r0, #0x2a
	strh r0, [r4, #0xa]
	b _080838C6
_080838C0:
	ldrh r0, [r5, #0xa]
	adds r0, #0x2a
	strh r0, [r5, #0xa]
_080838C6:
	adds r0, r7, #0
	adds r0, #0x4c
	mov r2, sl
	adds r1, r0, r2
	ldr r2, [r1]
	mov sb, r0
	cmp r6, #0
	beq _080838DC
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	b _080838E0
_080838DC:
	movs r3, #0xa
	ldrsh r0, [r5, r3]
_080838E0:
	adds r0, r2, r0
	str r0, [r1]
	mov r0, sb
	add r0, sl
	ldr r0, [r0]
	cmp r6, #0
	beq _080838F2
	str r0, [r4, #4]
	b _080838F4
_080838F2:
	str r0, [r5, #4]
_080838F4:
	adds r0, r7, #0
	adds r0, #0x44
	add r0, sl
	ldr r0, [r0]
	cmp r6, #0
	beq _08083904
	str r0, [r4]
	b _08083906
_08083904:
	str r0, [r5]
_08083906:
	cmp r6, #0
	beq _08083918
	ldr r1, _08083914 @ =gUnknown_03005B04
	ldrh r0, [r1]
	subs r0, #4
	strh r0, [r1]
	b _08083920
	.align 2, 0
_08083914: .4byte gUnknown_03005B04
_08083918:
	ldr r2, _08083930 @ =gUnknown_03005A74
	ldrh r0, [r2]
	subs r0, #4
	strh r0, [r2]
_08083920:
	cmp r6, #0
	beq _08083938
	ldr r3, _08083934 @ =gUnknown_03005B04
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0xaf
	ble _08083942
	b _0808395E
	.align 2, 0
_08083930: .4byte gUnknown_03005A74
_08083934: .4byte gUnknown_03005B04
_08083938:
	ldr r2, _08083950 @ =gUnknown_03005A74
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0xaf
	bgt _0808395E
_08083942:
	cmp r6, #0
	beq _08083958
	movs r0, #0xb0
	ldr r1, _08083954 @ =gUnknown_03005B04
	strh r0, [r1]
	b _0808395E
	.align 2, 0
_08083950: .4byte gUnknown_03005A74
_08083954: .4byte gUnknown_03005B04
_08083958:
	movs r0, #0xb0
	ldr r2, _0808396C @ =gUnknown_03005A74
	strh r0, [r2]
_0808395E:
	cmp r6, #0
	beq _08083974
	ldr r3, _08083970 @ =gUnknown_03005B04
	movs r1, #0
	ldrsh r0, [r3, r1]
	b _0808397A
	.align 2, 0
_0808396C: .4byte gUnknown_03005A74
_08083970: .4byte gUnknown_03005B04
_08083974:
	ldr r2, _08083984 @ =gUnknown_03005A74
	movs r3, #0
	ldrsh r0, [r2, r3]
_0808397A:
	cmp r6, #0
	beq _0808398C
	ldr r1, _08083988 @ =gUnknown_03005B06
	strh r0, [r1]
	b _08083990
	.align 2, 0
_08083984: .4byte gUnknown_03005A74
_08083988: .4byte gUnknown_03005B06
_0808398C:
	ldr r2, _080839A0 @ =gUnknown_03005A76
	strh r0, [r2]
_08083990:
	cmp r6, #0
	beq _080839A4
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0x10]
	b _080839AE
	.align 2, 0
_080839A0: .4byte gUnknown_03005A76
_080839A4:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r5, #0x10]
_080839AE:
	cmp r6, #0
	beq _080839BE
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	b _080839C8
_080839BE:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
_080839C8:
	cmp r6, #0
	beq _080839D6
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bgt _080839E0
	b _08083D6A
_080839D6:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _080839E0
	b _08083D6A
_080839E0:
	ldr r0, _080839F8 @ =gUnknown_03005A20
	cmp r6, #0
	beq _080839E8
	ldr r0, _080839FC @ =gUnknown_03005AB0
_080839E8:
	bl sub_8046CEC
	cmp r6, #0
	beq _08083A04
	movs r0, #5
	ldr r2, _08083A00 @ =gUnknown_03005AF0
	strb r0, [r2]
	b _08083A0A
	.align 2, 0
_080839F8: .4byte gUnknown_03005A20
_080839FC: .4byte gUnknown_03005AB0
_08083A00: .4byte gUnknown_03005AF0
_08083A04:
	movs r0, #5
	ldr r3, _08083A18 @ =gUnknown_03005A60
	strb r0, [r3]
_08083A0A:
	cmp r6, #0
	beq _08083A20
	ldr r0, [r4, #0x10]
	ldr r1, _08083A1C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _08083A28
	.align 2, 0
_08083A18: .4byte gUnknown_03005A60
_08083A1C: .4byte 0xFFDFFFFF
_08083A20:
	ldr r0, [r5, #0x10]
	ldr r1, _08083A3C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_08083A28:
	ldr r0, _08083A40 @ =gUnknown_030060E0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r6, #0
	beq _08083A44
	ldrh r0, [r4, #0x38]
	orrs r1, r0
	strh r1, [r4, #0x38]
	b _08083A4A
	.align 2, 0
_08083A3C: .4byte 0xFFDFFFFF
_08083A40: .4byte gUnknown_030060E0
_08083A44:
	ldrh r0, [r5, #0x38]
	orrs r1, r0
	strh r1, [r5, #0x38]
_08083A4A:
	cmp r6, #0
	beq _08083A5C
	ldr r0, [r4, #0x10]
	ldr r1, _08083A58 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _08083A64
	.align 2, 0
_08083A58: .4byte 0xFFBFFFFF
_08083A5C:
	ldr r0, [r5, #0x10]
	ldr r1, _08083A80 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_08083A64:
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	cmp r6, #0
	beq _08083A88
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r3, _08083A84 @ =gUnknown_03005B04
	strh r0, [r3]
	b _08083A90
	.align 2, 0
_08083A80: .4byte 0xFFBFFFFF
_08083A84: .4byte gUnknown_03005B04
_08083A88:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, _08083AA0 @ =gUnknown_03005A74
	strh r0, [r1]
_08083A90:
	cmp r6, #0
	beq _08083AA8
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, _08083AA4 @ =gUnknown_03005B06
	strh r0, [r2]
	b _08083AB0
	.align 2, 0
_08083AA0: .4byte gUnknown_03005A74
_08083AA4: .4byte gUnknown_03005B06
_08083AA8:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r3, _08083AC4 @ =gUnknown_03005A76
	strh r0, [r3]
_08083AB0:
	cmp r6, #0
	beq _08083ACC
	ldr r0, _08083AC8 @ =gUnknown_03005AD6
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	ldr r1, _08083AC8 @ =gUnknown_03005AD6
	strb r0, [r1]
	b _08083D6A
	.align 2, 0
_08083AC4: .4byte gUnknown_03005A76
_08083AC8: .4byte gUnknown_03005AD6
_08083ACC:
	ldr r2, _08083AD8 @ =gUnknown_03005A46
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	b _08083D6A
	.align 2, 0
_08083AD8: .4byte gUnknown_03005A46
_08083ADC:
	ldr r0, _08083B0C @ =gUnknown_03005A8D
	cmp r6, #0
	beq _08083AE4
	ldr r0, _08083B10 @ =gUnknown_03005B1D
_08083AE4:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x7f
	bne _08083AF0
	b _08083D26
_08083AF0:
	ldr r0, [sp]
	lsls r3, r0, #0x10
	asrs r2, r3, #0x10
	ldr r0, [sp, #0xc]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	adds r2, r2, r0
	cmp r6, #0
	beq _08083B14
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08083B1E
	b _08083D26
	.align 2, 0
_08083B0C: .4byte gUnknown_03005A8D
_08083B10: .4byte gUnknown_03005B1D
_08083B14:
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08083B1E
	b _08083D26
_08083B1E:
	asrs r0, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x18
	cmp r6, #0
	beq _08083B36
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08083B40
	b _08083D26
_08083B36:
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08083B40
	b _08083D26
_08083B40:
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #0x18
	cmp r6, #0
	beq _08083B58
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08083B62
	b _08083D26
_08083B58:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08083B62
	b _08083D26
_08083B62:
	asrs r0, r1, #0x10
	adds r1, r0, #0
	adds r1, #0x18
	cmp r6, #0
	beq _08083B76
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08083B80
	b _08083D26
_08083B76:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08083B80
	b _08083D26
_08083B80:
	mov r3, r8
	ldrb r1, [r3]
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	ldr r3, _08083BA0 @ =gUnknown_03005A20
	cmp r1, #0
	bne _08083BBC
	adds r0, r7, #0
	adds r0, #0x44
	mov r2, sl
	adds r1, r0, r2
	cmp r6, #0
	beq _08083BA4
	ldr r0, [r4]
	b _08083BA6
	.align 2, 0
_08083BA0: .4byte gUnknown_03005A20
_08083BA4:
	ldr r0, [r5]
_08083BA6:
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0x4c
	mov r2, sl
	adds r1, r0, r2
	cmp r6, #0
	beq _08083BB8
	ldr r0, [r4, #4]
	b _08083BBA
_08083BB8:
	ldr r0, [r3, #4]
_08083BBA:
	str r0, [r1]
_08083BBC:
	ldr r0, _08083BD8 @ =gUnknown_03005A20
	cmp r6, #0
	beq _08083BC4
	ldr r0, _08083BDC @ =gUnknown_03005AB0
_08083BC4:
	bl sub_8046CEC
	cmp r6, #0
	beq _08083BE4
	ldr r0, [r4, #0x10]
	ldr r1, _08083BE0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _08083BEC
	.align 2, 0
_08083BD8: .4byte gUnknown_03005A20
_08083BDC: .4byte gUnknown_03005AB0
_08083BE0: .4byte 0xFFFFFEFF
_08083BE4:
	ldr r0, [r5, #0x10]
	ldr r1, _08083BFC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_08083BEC:
	ldr r3, _08083C00 @ =gUnknown_03005A20
	cmp r6, #0
	beq _08083C04
	ldr r0, [r4, #0x10]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08083C0C
	.align 2, 0
_08083BFC: .4byte 0xFFFFFEFF
_08083C00: .4byte gUnknown_03005A20
_08083C04:
	ldr r0, [r5, #0x10]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5, #0x10]
_08083C0C:
	cmp r6, #0
	beq _08083C1A
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08083C22
_08083C1A:
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
_08083C22:
	cmp r6, #0
	beq _08083C30
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08083C38
_08083C30:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_08083C38:
	cmp r6, #0
	beq _08083C48
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08083C52
_08083C48:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r5, #0x10]
_08083C52:
	cmp r6, #0
	beq _08083C62
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08083C6C
_08083C62:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
_08083C6C:
	cmp r6, #0
	beq _08083C78
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r4, #0xa]
	b _08083C7E
_08083C78:
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r3, #0xa]
_08083C7E:
	cmp r6, #0
	beq _08083C88
	movs r0, #0
	strh r0, [r4, #8]
	b _08083C8A
_08083C88:
	strh r6, [r3, #8]
_08083C8A:
	cmp r6, #0
	beq _08083C94
	movs r0, #0
	strh r0, [r4, #0xc]
	b _08083C96
_08083C94:
	strh r6, [r3, #0xc]
_08083C96:
	cmp r6, #0
	beq _08083CA0
	movs r0, #0
	strh r0, [r4, #0x38]
	b _08083CA2
_08083CA0:
	strh r6, [r3, #0x38]
_08083CA2:
	cmp r6, #0
	beq _08083CAC
	movs r0, #0
	strh r0, [r4, #0x3a]
	b _08083CAE
_08083CAC:
	strh r6, [r3, #0x3a]
_08083CAE:
	ldr r0, _08083D08 @ =gUnknown_03005A20
	cmp r6, #0
	beq _08083CB6
	ldr r0, _08083D0C @ =gUnknown_03005AB0
_08083CB6:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _08083D08 @ =gUnknown_03005A20
	cmp r6, #0
	beq _08083CC4
	ldr r1, _08083D0C @ =gUnknown_03005AB0
_08083CC4:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08083D08 @ =gUnknown_03005A20
	cmp r6, #0
	beq _08083CD0
	ldr r1, _08083D0C @ =gUnknown_03005AB0
_08083CD0:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xaa
	bl m4aSongNumStart
	ldr r1, _08083D10 @ =gUnknown_03005A8D
	cmp r6, #0
	beq _08083CE2
	ldr r1, _08083D14 @ =gUnknown_03005B1D
_08083CE2:
	movs r0, #0x7f
	strb r0, [r1]
	movs r1, #1
	lsls r1, r6
	mov r3, r8
	ldrb r0, [r3]
	orrs r1, r0
	movs r0, #0
	strb r1, [r3]
	cmp r6, #0
	beq _08083D1C
	ldr r1, _08083D18 @ =gUnknown_03005AD6
	ldrb r0, [r1]
	movs r1, #0x80
	orrs r0, r1
	ldr r2, _08083D18 @ =gUnknown_03005AD6
	strb r0, [r2]
	b _08083D26
	.align 2, 0
_08083D08: .4byte gUnknown_03005A20
_08083D0C: .4byte gUnknown_03005AB0
_08083D10: .4byte gUnknown_03005A8D
_08083D14: .4byte gUnknown_03005B1D
_08083D18: .4byte gUnknown_03005AD6
_08083D1C:
	ldr r3, _08083D3C @ =gUnknown_03005A46
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
_08083D26:
	cmp r6, #0
	beq _08083D44
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	bne _08083D6A
	ldr r3, _08083D40 @ =gUnknown_03005A20
	b _08083D52
	.align 2, 0
_08083D3C: .4byte gUnknown_03005A46
_08083D40: .4byte gUnknown_03005A20
_08083D44:
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r1, r0
	ldr r3, _08083DD8 @ =gUnknown_03005A20
	cmp r1, #0
	bne _08083D6A
_08083D52:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r6, #0
	beq _08083D64
	ldr r3, _08083DDC @ =gUnknown_03005AB0
_08083D64:
	ldr r0, [sp, #0x10]
	bl sub_80096B0
_08083D6A:
	movs r3, #4
	add sl, r3
	adds r6, #1
	ldr r0, _08083DE0 @ =gUnknown_03005088
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r0
	cmp r6, r1
	bge _08083D7E
	b _08083874
_08083D7E:
	ldr r5, [sp, #0x18]
	movs r6, #0x80
	lsls r6, r6, #0x10
	adds r1, r5, r6
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08083DA4
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08083DA4
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08083E42
_08083DA4:
	movs r2, #0
	ldr r3, _08083DE4 @ =gCurTask
	mov sl, r3
	movs r5, #0x40
	adds r5, r5, r7
	mov r8, r5
	ldr r4, _08083DDC @ =gUnknown_03005AB0
	ldr r6, _08083DE8 @ =0xFFDFFFFF
	mov ip, r6
	ldr r3, _08083DD8 @ =gUnknown_03005A20
	ldr r6, _08083DEC @ =0xFFBFFFFF
	ldr r5, _08083DF0 @ =gUnknown_030060E0
_08083DBC:
	mov r1, r8
	ldrb r0, [r1]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08083E26
	cmp r2, #0
	beq _08083DF4
	ldr r0, [r4, #0x10]
	mov r1, ip
	ands r0, r1
	str r0, [r4, #0x10]
	b _08083DFC
	.align 2, 0
_08083DD8: .4byte gUnknown_03005A20
_08083DDC: .4byte gUnknown_03005AB0
_08083DE0: .4byte gUnknown_03005088
_08083DE4: .4byte gCurTask
_08083DE8: .4byte 0xFFDFFFFF
_08083DEC: .4byte 0xFFBFFFFF
_08083DF0: .4byte gUnknown_030060E0
_08083DF4:
	ldr r0, [r3, #0x10]
	mov r1, ip
	ands r0, r1
	str r0, [r3, #0x10]
_08083DFC:
	ldrh r1, [r5]
	ldrh r0, [r5, #2]
	orrs r1, r0
	cmp r2, #0
	beq _08083E0E
	ldrh r0, [r4, #0x38]
	orrs r1, r0
	strh r1, [r4, #0x38]
	b _08083E14
_08083E0E:
	ldrh r0, [r3, #0x38]
	orrs r1, r0
	strh r1, [r3, #0x38]
_08083E14:
	cmp r2, #0
	beq _08083E20
	ldr r0, [r4, #0x10]
	ands r0, r6
	str r0, [r4, #0x10]
	b _08083E26
_08083E20:
	ldr r0, [r3, #0x10]
	ands r0, r6
	str r0, [r3, #0x10]
_08083E26:
	adds r2, #1
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blt _08083DBC
	ldrb r0, [r7, #8]
	ldr r2, [sp, #0x14]
	strb r0, [r2]
	mov r3, sl
	ldr r0, [r3]
	bl TaskDestroy
	b _08083E4E
_08083E42:
	ldr r0, [sp, #0x10]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #0x10]
	bl DisplaySprite
_08083E4E:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8083E60
sub_8083E60: @ 0x08083E60
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8083E74
sub_8083E74: @ 0x08083E74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08083ED4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sl, r1
	ldr r0, [r1]
	str r0, [sp, #8]
	ldrb r0, [r1, #8]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	mov r2, sl
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r4, #0
	ldr r6, _08083ED8 @ =gUnknown_03005AB0
	ldr r5, _08083EDC @ =gUnknown_03005A20
_08083EBC:
	cmp r4, #0
	beq _08083EE0
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	ands r1, r0
	ldr r3, [sp, #4]
	lsls r3, r3, #0x10
	mov sb, r3
	mov r0, r8
	lsls r7, r0, #0x10
	b _08083EF0
	.align 2, 0
_08083ED4: .4byte gCurTask
_08083ED8: .4byte gUnknown_03005AB0
_08083EDC: .4byte gUnknown_03005A20
_08083EE0:
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	ands r1, r0
	ldr r2, [sp, #4]
	lsls r2, r2, #0x10
	mov sb, r2
	mov r3, r8
	lsls r7, r3, #0x10
_08083EF0:
	cmp r1, #0
	beq _08083EF6
	b _0808410A
_08083EF6:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov sb, r0
	cmp r4, #0
	beq _08083F10
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08083F1E
	mov r2, r8
	lsls r7, r2, #0x10
	b _0808410A
_08083F10:
	ldr r0, [r5]
	asrs r0, r0, #8
	mov r3, r8
	lsls r7, r3, #0x10
	cmp r1, r0
	ble _08083F1E
	b _0808410A
_08083F1E:
	mov r0, sb
	asrs r1, r0, #0x10
	ldr r2, [sp, #8]
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r4, #0
	beq _08083F3C
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08083F4A
	mov r3, r8
	lsls r7, r3, #0x10
	b _0808410A
_08083F3C:
	ldr r0, [r5]
	asrs r0, r0, #8
	mov r2, r8
	lsls r7, r2, #0x10
	cmp r1, r0
	bge _08083F4A
	b _0808410A
_08083F4A:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	adds r7, r0, #0
	cmp r4, #0
	beq _08083F60
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08083F6A
	b _0808410A
_08083F60:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08083F6A
	b _0808410A
_08083F6A:
	asrs r1, r7, #0x10
	ldr r2, [sp, #8]
	ldrb r0, [r2, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r4, #0
	beq _08083F82
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08083F8C
	b _0808410A
_08083F82:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08083F8C
	b _0808410A
_08083F8C:
	cmp r4, #0
	beq _08083F94
	ldr r0, [r6, #0x10]
	b _08083F96
_08083F94:
	ldr r0, [r5, #0x10]
_08083F96:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08083FA0
	b _0808410A
_08083FA0:
	mov r0, sl
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0808405A
	cmp r4, #0
	beq _08083FBA
	ldr r0, [r6]
	adds r0, #0xa0
	str r0, [r6]
	b _08083FC0
_08083FBA:
	ldr r0, [r5]
	adds r0, #0xa0
	str r0, [r5]
_08083FC0:
	cmp r4, #0
	beq _08083FC8
	ldr r0, [r6]
	b _08083FCA
_08083FC8:
	ldr r0, [r5]
_08083FCA:
	asrs r0, r0, #8
	adds r3, r0, #0
	adds r3, #8
	cmp r4, #0
	beq _08083FD8
	ldr r0, [r6, #4]
	b _08083FDA
_08083FD8:
	ldr r0, [r5, #4]
_08083FDA:
	asrs r1, r0, #8
	cmp r4, #0
	beq _08083FE8
	ldr r0, _08083FE4 @ =gUnknown_03005AD7
	b _08083FEA
	.align 2, 0
_08083FE4: .4byte gUnknown_03005AD7
_08083FE8:
	ldr r0, _08084004 @ =gUnknown_03005A47
_08083FEA:
	ldrb r2, [r0]
	ldr r0, _08084008 @ =sub_803FC64
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _0808406C
	cmp r4, #0
	beq _0808400C
	ldr r0, [r6]
	b _0808400E
	.align 2, 0
_08084004: .4byte gUnknown_03005A47
_08084008: .4byte sub_803FC64
_0808400C:
	ldr r0, [r5]
_0808400E:
	asrs r0, r0, #8
	adds r3, r0, #0
	adds r3, #8
	cmp r4, #0
	beq _0808401C
	ldr r0, [r6, #4]
	b _0808401E
_0808401C:
	ldr r0, [r5, #4]
_0808401E:
	asrs r1, r0, #8
	cmp r4, #0
	beq _0808402C
	ldr r0, _08084028 @ =gUnknown_03005AD7
	b _0808402E
	.align 2, 0
_08084028: .4byte gUnknown_03005AD7
_0808402C:
	ldr r0, _0808404C @ =gUnknown_03005A47
_0808402E:
	ldrb r2, [r0]
	ldr r0, _08084050 @ =sub_803FC64
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	bl sub_804021C
	lsls r1, r0, #8
	cmp r4, #0
	beq _08084054
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	b _0808406C
	.align 2, 0
_0808404C: .4byte gUnknown_03005A47
_08084050: .4byte sub_803FC64
_08084054:
	ldr r0, [r5]
	adds r0, r0, r1
	b _0808406A
_0808405A:
	cmp r4, #0
	beq _08084066
	ldr r0, [r6]
	subs r0, #0xa0
	str r0, [r6]
	b _0808406C
_08084066:
	ldr r0, [r5]
	subs r0, #0xa0
_0808406A:
	str r0, [r5]
_0808406C:
	cmp r4, #0
	beq _08084074
	ldr r0, [r6]
	b _08084076
_08084074:
	ldr r0, [r5]
_08084076:
	asrs r0, r0, #8
	adds r3, r0, #0
	subs r3, #8
	cmp r4, #0
	beq _08084084
	ldr r0, [r6, #4]
	b _08084086
_08084084:
	ldr r0, [r5, #4]
_08084086:
	asrs r1, r0, #8
	cmp r4, #0
	beq _08084094
	ldr r0, _08084090 @ =gUnknown_03005AD7
	b _08084096
	.align 2, 0
_08084090: .4byte gUnknown_03005AD7
_08084094:
	ldr r0, _080840B4 @ =gUnknown_03005A47
_08084096:
	ldrb r2, [r0]
	ldr r0, _080840B8 @ =sub_803FC64
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_804021C
	cmp r0, #0
	bge _0808410A
	cmp r4, #0
	beq _080840BC
	ldr r0, [r6]
	b _080840BE
	.align 2, 0
_080840B4: .4byte gUnknown_03005A47
_080840B8: .4byte sub_803FC64
_080840BC:
	ldr r0, [r5]
_080840BE:
	asrs r0, r0, #8
	adds r3, r0, #0
	subs r3, #8
	cmp r4, #0
	beq _080840CC
	ldr r0, [r6, #4]
	b _080840CE
_080840CC:
	ldr r0, [r5, #4]
_080840CE:
	asrs r1, r0, #8
	cmp r4, #0
	beq _080840DC
	ldr r0, _080840D8 @ =gUnknown_03005AD7
	b _080840DE
	.align 2, 0
_080840D8: .4byte gUnknown_03005AD7
_080840DC:
	ldr r0, _080840FC @ =gUnknown_03005A47
_080840DE:
	ldrb r2, [r0]
	ldr r0, _08084100 @ =sub_803FC64
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_804021C
	lsls r1, r0, #8
	cmp r4, #0
	beq _08084104
	ldr r0, [r6]
	subs r0, r0, r1
	str r0, [r6]
	b _0808410A
	.align 2, 0
_080840FC: .4byte gUnknown_03005A47
_08084100: .4byte sub_803FC64
_08084104:
	ldr r0, [r5]
	subs r0, r0, r1
	str r0, [r5]
_0808410A:
	adds r4, #1
	ldr r0, _08084178 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _0808411A
	b _08083EBC
_0808411A:
	ldr r2, _0808417C @ =gCamera
	ldrh r0, [r2]
	mov r3, sb
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	asrs r0, r7, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08084156
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08084156
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08084166
_08084156:
	mov r2, sl
	ldrb r0, [r2, #8]
	ldr r3, [sp, #8]
	strb r0, [r3]
	ldr r0, _08084180 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08084166:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08084178: .4byte gUnknown_03005088
_0808417C: .4byte gCamera
_08084180: .4byte gCurTask

	thumb_func_start sub_8084184
sub_8084184: @ 0x08084184
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080841DC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sl, r1
	ldr r0, [r1]
	mov sb, r0
	ldrb r0, [r1, #8]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	mov r2, sl
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r6, #0
	ldr r2, _080841E0 @ =gUnknown_03005AB0
	ldr r7, _080841E4 @ =gUnknown_03005A20
_080841CA:
	cmp r6, #0
	beq _080841E8
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r4, r8
	lsls r3, r4, #0x10
	b _080841F2
	.align 2, 0
_080841DC: .4byte gCurTask
_080841E0: .4byte gUnknown_03005AB0
_080841E4: .4byte gUnknown_03005A20
_080841E8:
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r0, r8
	lsls r3, r0, #0x10
_080841F2:
	lsls r4, r5, #0x10
	cmp r1, #0
	bne _080842BE
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r3, r0, #0
	cmp r6, #0
	beq _08084210
	ldr r0, [r2]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0808421A
	lsls r4, r5, #0x10
	b _080842BE
_08084210:
	ldr r0, [r7]
	asrs r0, r0, #8
	lsls r4, r5, #0x10
	cmp r1, r0
	bgt _080842BE
_0808421A:
	asrs r1, r3, #0x10
	mov r4, sb
	ldrb r0, [r4, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r6, #0
	beq _08084234
	ldr r0, [r2]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808423E
	lsls r4, r5, #0x10
	b _080842BE
_08084234:
	ldr r0, [r7]
	asrs r0, r0, #8
	lsls r4, r5, #0x10
	cmp r1, r0
	blt _080842BE
_0808423E:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r6, #0
	beq _08084252
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0808425A
	b _080842BE
_08084252:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _080842BE
_0808425A:
	asrs r0, r4, #0x10
	mov ip, r0
	mov r1, sb
	ldrb r0, [r1, #6]
	lsls r0, r0, #3
	adds r1, r0, #0
	add r1, ip
	cmp r6, #0
	beq _08084276
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808427E
	b _080842BE
_08084276:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _080842BE
_0808427E:
	cmp r6, #0
	beq _08084286
	ldr r0, [r2, #0x10]
	b _08084288
_08084286:
	ldr r0, [r7, #0x10]
_08084288:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080842BE
	cmp r6, #0
	beq _0808429A
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	b _0808429E
_0808429A:
	movs r0, #0xc
	ldrsh r1, [r7, r0]
_0808429E:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	subs r0, r0, r1
	movs r1, #0x64
	str r2, [sp]
	str r3, [sp, #4]
	bl Div
	ldr r2, [sp]
	ldr r3, [sp, #4]
	cmp r6, #0
	beq _080842BC
	strh r0, [r2, #0xc]
	b _080842BE
_080842BC:
	strh r0, [r7, #0xc]
_080842BE:
	adds r6, #1
	ldr r0, _08084324 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _080842CE
	b _080841CA
_080842CE:
	ldr r2, _08084328 @ =gCamera
	ldrh r0, [r2]
	asrs r1, r3, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	asrs r0, r4, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r1, r1, r2
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08084304
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08084304
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08084314
_08084304:
	mov r4, sl
	ldrb r0, [r4, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0808432C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08084314:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08084324: .4byte gUnknown_03005088
_08084328: .4byte gCamera
_0808432C: .4byte gCurTask

	thumb_func_start CreateEntity_Interactable069
CreateEntity_Interactable069: @ 0x08084330
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	ldr r0, _08084368 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _08084370
	ldr r0, _0808436C @ =sub_8084184
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	b _08084382
	.align 2, 0
_08084368: .4byte gCurrentLevel
_0808436C: .4byte sub_8084184
_08084370:
	ldr r0, _080843B0 @ =sub_8083E74
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
_08084382:
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	strh r6, [r0, #4]
	strh r5, [r0, #6]
	str r4, [r0]
	ldrb r1, [r4]
	strb r1, [r0, #8]
	strb r7, [r0, #9]
	ldrb r0, [r4, #3]
	ldr r1, _080843B4 @ =0x0300003C
	adds r2, r2, r1
	strb r0, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r4]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080843B0: .4byte sub_8083E74
_080843B4: .4byte 0x0300003C

	thumb_func_start sub_80843B8
sub_80843B8: @ 0x080843B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _08084424 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	ldr r7, [r1]
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	mov r2, ip
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	mov r3, ip
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _08084428 @ =gCamera
	ldrh r0, [r3]
	lsrs r5, r1, #0x10
	mov sb, r5
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	ldrh r0, [r3, #2]
	lsrs r1, r2, #0x10
	mov r8, r1
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r5, #0
	ldr r4, _0808442C @ =gUnknown_03005AB0
	ldr r2, _08084430 @ =gUnknown_03005A20
	ldr r6, _08084434 @ =0xFFEFFFFF
_0808441A:
	cmp r5, #0
	beq _08084438
	ldr r0, [r4, #0x10]
	b _0808443A
	.align 2, 0
_08084424: .4byte gCurTask
_08084428: .4byte gCamera
_0808442C: .4byte gUnknown_03005AB0
_08084430: .4byte gUnknown_03005A20
_08084434: .4byte 0xFFEFFFFF
_08084438:
	ldr r0, [r2, #0x10]
_0808443A:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080844E8
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	adds r1, r0, #0
	cmp r5, #0
	beq _08084458
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r3, r0
	ble _08084460
	b _080844FA
_08084458:
	ldr r0, [r2]
	asrs r0, r0, #8
	cmp r3, r0
	bgt _080844FA
_08084460:
	asrs r1, r1, #0x10
	ldrb r0, [r7, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r5, #0
	beq _08084476
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808447E
	b _080844FA
_08084476:
	ldr r0, [r2]
	asrs r0, r0, #8
	cmp r1, r0
	blt _080844FA
_0808447E:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	adds r1, r0, #0
	cmp r5, #0
	beq _08084494
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r3, r0
	ble _0808449C
	b _080844FA
_08084494:
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r3, r0
	bgt _080844FA
_0808449C:
	asrs r1, r1, #0x10
	ldrb r0, [r7, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r5, #0
	beq _080844B2
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080844BA
	b _080844FA
_080844B2:
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _080844FA
_080844BA:
	mov r0, ip
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080844E2
	cmp r5, #0
	beq _080844D8
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [r4, #0x10]
	b _080844FA
_080844D8:
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	b _080844F8
_080844E2:
	cmp r5, #0
	bne _080844EC
	b _080844F4
_080844E8:
	cmp r5, #0
	beq _080844F4
_080844EC:
	ldr r0, [r4, #0x10]
	ands r0, r6
	str r0, [r4, #0x10]
	b _080844FA
_080844F4:
	ldr r0, [r2, #0x10]
	ands r0, r6
_080844F8:
	str r0, [r2, #0x10]
_080844FA:
	adds r5, #1
	ldr r3, _0808454C @ =gUnknown_03005088
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r5, r0
	blt _0808441A
	mov r5, sl
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808452E
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0808452E
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r2, r0
	ble _0808453C
_0808452E:
	mov r3, ip
	ldrb r0, [r3, #8]
	strb r0, [r7]
	ldr r5, _08084550 @ =gCurTask
	ldr r0, [r5]
	bl TaskDestroy
_0808453C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808454C: .4byte gUnknown_03005088
_08084550: .4byte gCurTask

	thumb_func_start CreateEntity_Interactable070
CreateEntity_Interactable070: @ 0x08084554
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _080845C0 @ =sub_80843B8
	mov r1, r8
	ldrb r2, [r1, #6]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r2, r1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	mov r3, r8
	ldrb r0, [r3, #3]
	ldr r1, _080845C4 @ =0x0300003C
	adds r2, r2, r1
	strb r0, [r2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080845C0: .4byte sub_80843B8
_080845C4: .4byte 0x0300003C

	thumb_func_start sub_80845C8
sub_80845C8: @ 0x080845C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08084620 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r1]
	mov sl, r0
	ldrb r0, [r1, #8]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	mov r2, r8
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r6, #0
	ldr r5, _08084624 @ =gUnknown_03005AB0
	ldr r4, _08084628 @ =gUnknown_03005A20
_08084610:
	cmp r6, #0
	beq _0808462C
	ldr r1, [r5, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r3, sb
	lsls r7, r3, #0x10
	b _08084636
	.align 2, 0
_08084620: .4byte gCurTask
_08084624: .4byte gUnknown_03005AB0
_08084628: .4byte gUnknown_03005A20
_0808462C:
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r0, sb
	lsls r7, r0, #0x10
_08084636:
	cmp r1, #0
	beq _0808463C
	b _08084840
_0808463C:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r7, r0, #0
	cmp r6, #0
	beq _08084652
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0808465C
	b _08084840
_08084652:
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0808465C
	b _08084840
_0808465C:
	asrs r1, r7, #0x10
	mov r2, sl
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r6, #0
	beq _08084674
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808467E
	b _08084840
_08084674:
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808467E
	b _08084840
_0808467E:
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r6, #0
	beq _08084694
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808469E
	b _08084840
_08084694:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808469E
	b _08084840
_0808469E:
	asrs r1, r1, #0x10
	mov r2, sl
	ldrb r0, [r2, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r6, #0
	beq _080846B6
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080846C0
	b _08084840
_080846B6:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080846C0
	b _08084840
_080846C0:
	movs r0, #0xb8
	bl m4aSongNumStart
	cmp r6, #0
	beq _080846D8
	ldr r0, [r5, #0x10]
	ldr r1, _080846D4 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _080846E0
	.align 2, 0
_080846D4: .4byte 0xFFFFFEFF
_080846D8:
	ldr r0, [r4, #0x10]
	ldr r1, _080846F0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
_080846E0:
	cmp r6, #0
	beq _080846F4
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	b _080846FC
	.align 2, 0
_080846F0: .4byte 0xFFFFFEFF
_080846F4:
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_080846FC:
	cmp r6, #0
	beq _0808470C
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _08084716
_0808470C:
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_08084716:
	mov r2, r8
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08084736
	cmp r6, #0
	beq _08084730
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r5, #8]
	b _08084748
_08084730:
	movs r0, #0xa0
	lsls r0, r0, #3
	b _08084746
_08084736:
	cmp r6, #0
	beq _08084742
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r5, #8]
	b _08084748
_08084742:
	movs r0, #0xfb
	lsls r0, r0, #8
_08084746:
	strh r0, [r4, #8]
_08084748:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bgt _08084762
	cmp r6, #0
	beq _0808475C
	movs r0, #0xf9
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	b _08084774
_0808475C:
	movs r0, #0xf9
	lsls r0, r0, #8
	b _08084772
_08084762:
	cmp r6, #0
	beq _0808476E
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0xa]
	b _08084774
_0808476E:
	movs r0, #0xc0
	lsls r0, r0, #3
_08084772:
	strh r0, [r4, #0xa]
_08084774:
	cmp r6, #0
	beq _08084784
	ldr r3, _08084780 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r3, r0]
	b _0808478A
	.align 2, 0
_08084780: .4byte gUnknown_03005B09
_08084784:
	ldr r1, _080847A0 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r1, r0]
_0808478A:
	cmp r0, #1
	beq _080847B2
	cmp r6, #0
	beq _080847A8
	ldr r2, _080847A4 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	beq _080847B2
	b _08084840
	.align 2, 0
_080847A0: .4byte gUnknown_03005A79
_080847A4: .4byte gUnknown_03005B09
_080847A8:
	ldr r3, _080847C4 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #2
	bne _08084840
_080847B2:
	cmp r6, #0
	beq _080847CC
	ldr r1, _080847C8 @ =gUnknown_03005AED
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080847D6
	b _08084840
	.align 2, 0
_080847C4: .4byte gUnknown_03005A79
_080847C8: .4byte gUnknown_03005AED
_080847CC:
	ldr r2, _080847F0 @ =gUnknown_03005A5D
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08084840
_080847D6:
	ldr r0, _080847F4 @ =gUnknown_03005A20
	cmp r6, #0
	beq _080847DE
	ldr r0, _080847F8 @ =gUnknown_03005AB0
_080847DE:
	bl sub_8046CEC
	cmp r6, #0
	beq _08084800
	movs r0, #5
	ldr r3, _080847FC @ =gUnknown_03005AF0
	strb r0, [r3]
	b _08084806
	.align 2, 0
_080847F0: .4byte gUnknown_03005A5D
_080847F4: .4byte gUnknown_03005A20
_080847F8: .4byte gUnknown_03005AB0
_080847FC: .4byte gUnknown_03005AF0
_08084800:
	movs r0, #5
	ldr r1, _08084818 @ =gUnknown_03005A60
	strb r0, [r1]
_08084806:
	ldr r2, _0808481C @ =gUnknown_03005A20
	cmp r6, #0
	beq _08084820
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08084828
	.align 2, 0
_08084818: .4byte gUnknown_03005A60
_0808481C: .4byte gUnknown_03005A20
_08084820:
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
_08084828:
	adds r1, r2, #0
	cmp r6, #0
	beq _08084830
	ldr r1, _080848A8 @ =gUnknown_03005AB0
_08084830:
	movs r0, #6
	strb r0, [r1, #0xe]
	adds r1, r2, #0
	cmp r6, #0
	beq _0808483C
	ldr r1, _080848A8 @ =gUnknown_03005AB0
_0808483C:
	movs r0, #9
	strb r0, [r1, #0xf]
_08084840:
	adds r6, #1
	ldr r0, _080848AC @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _08084850
	b _08084610
_08084850:
	asrs r1, r7, #0x10
	ldr r3, _080848B0 @ =gCamera
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r2, r4
	cmp r1, r0
	bgt _08084886
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _08084886
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _08084886
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _08084896
_08084886:
	mov r4, r8
	ldrb r0, [r4, #8]
	mov r1, sl
	strb r0, [r1]
	ldr r0, _080848B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08084896:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080848A8: .4byte gUnknown_03005AB0
_080848AC: .4byte gUnknown_03005088
_080848B0: .4byte gCamera
_080848B4: .4byte gCurTask

	thumb_func_start CreateEntity_Interactable071
CreateEntity_Interactable071: @ 0x080848B8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0808491C @ =sub_80845C8
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	mov r3, r8
	ldrb r0, [r3, #3]
	ldr r1, _08084920 @ =0x0300003C
	adds r2, r2, r1
	strb r0, [r2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808491C: .4byte sub_80845C8
_08084920: .4byte 0x0300003C

	thumb_func_start CreateEntity_Interactable072
CreateEntity_Interactable072: @ 0x08084924
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
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
	ldr r0, _080849C0 @ =sub_80849D0
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov sb, r1
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	str r6, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #8]
	mov r3, r8
	strb r3, [r1, #9]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #8
	strh r0, [r1, #0x3c]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #8
	strh r0, [r1, #0x3e]
	ldrb r0, [r6, #5]
	lsls r0, r0, #8
	ldr r3, _080849C4 @ =0x03000046
	adds r1, r2, r3
	strh r0, [r1]
	ldrb r0, [r6, #6]
	lsls r0, r0, #8
	adds r3, #2
	adds r1, r2, r3
	strh r0, [r1]
	ldr r1, _080849C8 @ =0x03000040
	adds r0, r2, r1
	mov r3, sb
	strh r3, [r0]
	adds r1, #2
	adds r0, r2, r1
	strh r3, [r0]
	ldr r3, _080849CC @ =0x03000044
	adds r2, r2, r3
	mov r0, sb
	strh r0, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080849C0: .4byte sub_80849D0
_080849C4: .4byte 0x03000046
_080849C8: .4byte 0x03000040
_080849CC: .4byte 0x03000044

	thumb_func_start sub_80849D0
sub_80849D0: @ 0x080849D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08084A78 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r0, [r7]
	str r0, [sp, #0x10]
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r5, [sp, #0x10]
	ldrb r2, [r5, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _08084A7C @ =gCamera
	ldrh r0, [r3]
	lsrs r5, r1, #0x10
	str r5, [sp]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	ldrh r0, [r3, #2]
	lsrs r1, r2, #0x10
	str r1, [sp, #4]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	movs r5, #0
	mov ip, r3
	ldr r2, _08084A80 @ =0x03000044
	adds r2, r2, r4
	mov r8, r2
	ldr r4, _08084A84 @ =gUnknown_03005AB0
	ldr r6, _08084A88 @ =gUnknown_03005A20
	movs r0, #0x26
	adds r0, r0, r4
	mov sl, r0
	movs r1, #0x26
	adds r1, r1, r6
	mov sb, r1
	movs r3, #0
_08084A44:
	adds r0, r7, #0
	adds r0, #0x44
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08084A58
	b _08084CCC
_08084A58:
	mov r0, ip
	ldr r1, [r0]
	ldr r0, [r7, #0x40]
	cmp r1, r0
	beq _08084A64
	b _08084B72
_08084A64:
	mov r2, ip
	movs r0, #0
	ldrsh r1, [r2, r0]
	cmp r5, #0
	beq _08084A8C
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08084A94
	b _08084B72
	.align 2, 0
_08084A78: .4byte gCurTask
_08084A7C: .4byte gCamera
_08084A80: .4byte 0x03000044
_08084A84: .4byte gUnknown_03005AB0
_08084A88: .4byte gUnknown_03005A20
_08084A8C:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _08084B72
_08084A94:
	mov r1, ip
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r1, r0, #0
	adds r1, #0xf0
	cmp r5, #0
	beq _08084AAC
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08084AB4
	b _08084B72
_08084AAC:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	blt _08084B72
_08084AB4:
	mov r0, ip
	movs r2, #2
	ldrsh r1, [r0, r2]
	cmp r5, #0
	beq _08084AC8
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08084AD0
	b _08084B72
_08084AC8:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _08084B72
_08084AD0:
	mov r1, ip
	movs r2, #2
	ldrsh r0, [r1, r2]
	adds r1, r0, #0
	adds r1, #0xa0
	cmp r5, #0
	beq _08084AE8
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08084AF0
	b _08084B72
_08084AE8:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _08084B72
_08084AF0:
	cmp r5, #0
	beq _08084B04
	ldr r0, [r4, #0x10]
	ldr r1, _08084B00 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _08084B0C
	.align 2, 0
_08084B00: .4byte 0xFFBFFFFF
_08084B04:
	ldr r0, [r6, #0x10]
	ldr r1, _08084B1C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_08084B0C:
	cmp r5, #0
	beq _08084B20
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08084B28
	.align 2, 0
_08084B1C: .4byte 0xFFBFFFFF
_08084B20:
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
_08084B28:
	movs r0, #1
	lsls r0, r5
	mov r2, r8
	ldrh r1, [r2]
	bics r1, r0
	movs r0, #0
	strh r1, [r2]
	cmp r5, #0
	beq _08084B3E
	strh r0, [r4, #0xa]
	b _08084B40
_08084B3E:
	strh r5, [r6, #0xa]
_08084B40:
	cmp r5, #0
	beq _08084B48
	strh r3, [r4, #8]
	b _08084B4A
_08084B48:
	strh r5, [r6, #8]
_08084B4A:
	cmp r5, #0
	beq _08084B52
	strh r3, [r4, #0xc]
	b _08084B54
_08084B52:
	strh r5, [r6, #0xc]
_08084B54:
	cmp r5, #0
	beq _08084B66
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	mov r1, sl
	strb r0, [r1]
	b _08084C1A
_08084B66:
	mov r2, sb
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	b _08084C1A
_08084B72:
	ldr r0, _08084B94 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08084B7A
	ldr r0, _08084B98 @ =gUnknown_03005AB0
_08084B7A:
	str r3, [sp, #0x14]
	bl sub_8046CEC
	ldr r3, [sp, #0x14]
	cmp r5, #0
	beq _08084B9C
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08084BA6
	.align 2, 0
_08084B94: .4byte gUnknown_03005A20
_08084B98: .4byte gUnknown_03005AB0
_08084B9C:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
_08084BA6:
	ldr r2, _08084BB0 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08084BB4
	strh r3, [r4, #0xa]
	b _08084BB6
	.align 2, 0
_08084BB0: .4byte gUnknown_03005A20
_08084BB4:
	strh r5, [r2, #0xa]
_08084BB6:
	cmp r5, #0
	beq _08084BBE
	strh r3, [r4, #8]
	b _08084BC0
_08084BBE:
	strh r5, [r2, #8]
_08084BC0:
	cmp r5, #0
	beq _08084BC8
	strh r3, [r4, #0xc]
	b _08084BCA
_08084BC8:
	strh r5, [r2, #0xc]
_08084BCA:
	cmp r5, #0
	beq _08084BD8
	movs r0, #5
	ldr r1, _08084BD4 @ =gUnknown_03005AF0
	b _08084BDE
	.align 2, 0
_08084BD4: .4byte gUnknown_03005AF0
_08084BD8:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #5
_08084BDE:
	strb r0, [r1]
	ldr r0, _08084C2C @ =gUnknown_03005A20
	cmp r5, #0
	beq _08084BE8
	ldr r0, _08084C30 @ =gUnknown_03005AB0
_08084BE8:
	movs r1, #0xe
	str r3, [sp, #0x14]
	bl sub_804516C
	ldr r1, _08084C2C @ =gUnknown_03005A20
	ldr r3, [sp, #0x14]
	cmp r5, #0
	beq _08084BFA
	ldr r1, _08084C30 @ =gUnknown_03005AB0
_08084BFA:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08084C2C @ =gUnknown_03005A20
	cmp r5, #0
	beq _08084C06
	ldr r1, _08084C30 @ =gUnknown_03005AB0
_08084C06:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #1
	lsls r0, r5
	mov r2, r8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08084C34 @ =gCamera
	mov ip, r0
_08084C1A:
	cmp r5, #0
	beq _08084C38
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08084C42
	b _08084CB8
	.align 2, 0
_08084C2C: .4byte gUnknown_03005A20
_08084C30: .4byte gUnknown_03005AB0
_08084C34: .4byte gCamera
_08084C38:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08084CB8
_08084C42:
	movs r1, #1
	lsls r1, r5
	mov r2, r8
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	cmp r5, #0
	beq _08084C60
	ldr r0, [r4, #0x10]
	ldr r1, _08084C5C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _08084C68
	.align 2, 0
_08084C5C: .4byte 0xFFBFFFFF
_08084C60:
	ldr r0, [r6, #0x10]
	ldr r1, _08084C74 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_08084C68:
	cmp r5, #0
	beq _08084C7C
	ldr r1, _08084C78 @ =gUnknown_03005AEC
	movs r0, #0
	ldrsb r0, [r1, r0]
	b _08084C82
	.align 2, 0
_08084C74: .4byte 0xFFBFFFFF
_08084C78: .4byte gUnknown_03005AEC
_08084C7C:
	ldr r2, _08084C98 @ =gUnknown_03005A5C
	movs r0, #0
	ldrsb r0, [r2, r0]
_08084C82:
	cmp r0, #0
	bne _08084CB8
	mov r1, ip
	movs r2, #2
	ldrsh r0, [r1, r2]
	adds r0, #0x50
	lsls r0, r0, #8
	cmp r5, #0
	beq _08084C9C
	str r0, [r4, #4]
	b _08084C9E
	.align 2, 0
_08084C98: .4byte gUnknown_03005A5C
_08084C9C:
	str r0, [r6, #4]
_08084C9E:
	mov r1, ip
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0x78
	lsls r0, r0, #8
	cmp r5, #0
	beq _08084CB0
	str r0, [r4]
	b _08084CB2
_08084CB0:
	str r0, [r6]
_08084CB2:
	mov r0, ip
	strh r3, [r0, #6]
	strh r3, [r0, #4]
_08084CB8:
	mov r1, ip
	ldrh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x40
	strh r0, [r1]
	mov r2, ip
	ldrh r0, [r2, #2]
	adds r1, #2
	strh r0, [r1]
	b _08084E8C
_08084CCC:
	cmp r5, #0
	beq _08084CD4
	ldr r0, [r4, #0x10]
	b _08084CD6
_08084CD4:
	ldr r0, [r6, #0x10]
_08084CD6:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08084CE0
	b _08084E8C
_08084CE0:
	ldr r0, [sp]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #0xc
	cmp r5, #0
	beq _08084CF8
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08084D02
	b _08084E8C
_08084CF8:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08084D02
	b _08084E8C
_08084D02:
	asrs r0, r1, #0x10
	adds r1, r0, #0
	adds r1, #0xc
	cmp r5, #0
	beq _08084D16
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08084D20
	b _08084E8C
_08084D16:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08084D20
	b _08084E8C
_08084D20:
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	adds r2, r0, #0
	subs r2, #0xc
	cmp r5, #0
	beq _08084D38
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08084D42
	b _08084E8C
_08084D38:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08084D42
	b _08084E8C
_08084D42:
	asrs r0, r1, #0x10
	adds r1, r0, #0
	adds r1, #0xc
	cmp r5, #0
	beq _08084D56
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08084D60
	b _08084E8C
_08084D56:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08084D60
	b _08084E8C
_08084D60:
	ldr r0, _08084D80 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08084D68
	ldr r0, _08084D84 @ =gUnknown_03005AB0
_08084D68:
	str r3, [sp, #0x14]
	bl sub_8046CEC
	ldr r3, [sp, #0x14]
	cmp r5, #0
	beq _08084D88
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08084D90
	.align 2, 0
_08084D80: .4byte gUnknown_03005A20
_08084D84: .4byte gUnknown_03005AB0
_08084D88:
	ldr r0, [r6, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
_08084D90:
	ldr r2, _08084DA4 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08084DA8
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08084DB2
	.align 2, 0
_08084DA4: .4byte gUnknown_03005A20
_08084DA8:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
_08084DB2:
	ldrh r0, [r7, #0x3c]
	adds r1, r7, #0
	adds r1, #0x46
	lsls r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	cmp r5, #0
	beq _08084DC6
	str r0, [r4]
	b _08084DC8
_08084DC6:
	str r0, [r2]
_08084DC8:
	ldrh r0, [r7, #0x3e]
	adds r1, r7, #0
	adds r1, #0x48
	lsls r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	cmp r5, #0
	beq _08084DDC
	str r0, [r4, #4]
	b _08084DDE
_08084DDC:
	str r0, [r2, #4]
_08084DDE:
	cmp r5, #0
	beq _08084DE6
	strh r3, [r4, #0xa]
	b _08084DE8
_08084DE6:
	strh r5, [r2, #0xa]
_08084DE8:
	cmp r5, #0
	beq _08084DF0
	strh r3, [r4, #8]
	b _08084DF2
_08084DF0:
	strh r5, [r2, #8]
_08084DF2:
	cmp r5, #0
	beq _08084DFA
	strh r3, [r4, #0xc]
	b _08084DFC
_08084DFA:
	strh r5, [r2, #0xc]
_08084DFC:
	cmp r5, #0
	beq _08084E0C
	movs r0, #5
	ldr r1, _08084E08 @ =gUnknown_03005AF0
	b _08084E12
	.align 2, 0
_08084E08: .4byte gUnknown_03005AF0
_08084E0C:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #5
_08084E12:
	strb r0, [r1]
	ldr r0, _08084E64 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08084E1C
	ldr r0, _08084E68 @ =gUnknown_03005AB0
_08084E1C:
	movs r1, #0xe
	str r3, [sp, #0x14]
	bl sub_804516C
	ldr r1, _08084E64 @ =gUnknown_03005A20
	ldr r3, [sp, #0x14]
	cmp r5, #0
	beq _08084E2E
	ldr r1, _08084E68 @ =gUnknown_03005AB0
_08084E2E:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08084E64 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08084E3A
	ldr r1, _08084E68 @ =gUnknown_03005AB0
_08084E3A:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	movs r0, #0xaa
	str r3, [sp, #0x14]
	bl m4aSongNumStart
	movs r0, #1
	lsls r0, r5
	mov r2, r8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r3, [sp, #0x14]
	cmp r5, #0
	beq _08084E6C
	mov r1, sl
	ldrb r0, [r1]
	movs r1, #0x80
	orrs r0, r1
	mov r2, sl
	b _08084E76
	.align 2, 0
_08084E64: .4byte gUnknown_03005A20
_08084E68: .4byte gUnknown_03005AB0
_08084E6C:
	mov r1, sb
	ldrb r0, [r1]
	movs r1, #0x80
	orrs r0, r1
	mov r2, sb
_08084E76:
	strb r0, [r2]
	ldr r2, _08084EF0 @ =gCamera
	ldrh r1, [r2]
	adds r0, r7, #0
	adds r0, #0x40
	strh r1, [r0]
	ldrh r0, [r2, #2]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	mov ip, r2
_08084E8C:
	adds r5, #1
	ldr r0, _08084EF4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _08084E9C
	b _08084A44
_08084E9C:
	mov r5, r8
	ldrh r1, [r5]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08084EDE
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r0, r2
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08084ED0
	ldr r5, [sp, #0xc]
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08084ED0
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r2, r0
	ble _08084EDE
_08084ED0:
	ldrb r0, [r7, #8]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	ldr r0, _08084EF8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08084EDE:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08084EF0: .4byte gCamera
_08084EF4: .4byte gUnknown_03005088
_08084EF8: .4byte gCurTask

	thumb_func_start CreateEntity_Interactable073
CreateEntity_Interactable073: @ 0x08084EFC
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
	ldr r0, _08085000 @ =sub_8085038
	movs r2, #4
	ldrsb r2, [r7, r2]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _08085004 @ =sub_8085554
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
	ldr r0, _08085014 @ =gUnknown_03005088
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
_08085000: .4byte sub_8085038
_08085004: .4byte sub_8085554
_08085008: .4byte 0x0300003D
_0808500C: .4byte 0x0300003C
_08085010: .4byte 0x03000058
_08085014: .4byte gUnknown_03005088
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

	thumb_func_start sub_8085038
sub_8085038: @ 0x08085038
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
	ldr r6, _080850B0 @ =gUnknown_03005AB0
	ldr r3, _080850B4 @ =gUnknown_03005A20
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
_080850B0: .4byte gUnknown_03005AB0
_080850B4: .4byte gUnknown_03005A20
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
	ldr r0, _080851C0 @ =gUnknown_03005A8D
	cmp r4, #0
	beq _080851A0
	ldr r0, _080851C4 @ =gUnknown_03005B1D
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
_080851C0: .4byte gUnknown_03005A8D
_080851C4: .4byte gUnknown_03005B1D
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
	ldr r0, _08085224 @ =gUnknown_03005A20
	cmp r4, #0
	beq _0808520E
	ldr r0, _08085228 @ =gUnknown_03005AB0
_0808520E:
	bl sub_8046CEC
	cmp r4, #0
	beq _0808522C
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08085238
	.align 2, 0
_08085224: .4byte gUnknown_03005A20
_08085228: .4byte gUnknown_03005AB0
_0808522C:
	mov r3, sb
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r3, #0x10]
_08085238:
	ldr r2, _08085244 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08085248
	movs r0, #0
	strh r0, [r6, #8]
	b _0808524A
	.align 2, 0
_08085244: .4byte gUnknown_03005A20
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
	ldr r2, _08085264 @ =gUnknown_03005AF0
	strb r0, [r2]
	b _08085270
	.align 2, 0
_08085264: .4byte gUnknown_03005AF0
_08085268:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x20
	strb r0, [r1]
_08085270:
	ldr r0, _080852A4 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08085278
	ldr r0, _080852A8 @ =gUnknown_03005AB0
_08085278:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _080852A4 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08085286
	ldr r1, _080852A8 @ =gUnknown_03005AB0
_08085286:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _080852A4 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08085292
	ldr r1, _080852A8 @ =gUnknown_03005AB0
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
_080852A4: .4byte gUnknown_03005A20
_080852A8: .4byte gUnknown_03005AB0
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
	ldr r0, _08085364 @ =gUnknown_03005A8D
	cmp r4, #0
	beq _0808530E
	ldr r0, _08085368 @ =gUnknown_03005B1D
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
	ldr r3, _0808536C @ =gUnknown_03005A20
	cmp r4, #0
	beq _08085334
	ldr r3, _08085370 @ =gUnknown_03005AB0
_08085334:
	adds r0, r7, #0
	bl sub_800CE34
	cmp r0, #0
	bne _08085340
	b _08085488
_08085340:
	adds r0, r5, #0
	adds r0, #0x58
	adds r0, r0, r4
	movs r3, #0
	strb r3, [r0]
	ldr r0, _0808536C @ =gUnknown_03005A20
	cmp r4, #0
	beq _08085352
	ldr r0, _08085370 @ =gUnknown_03005AB0
_08085352:
	bl sub_8046CEC
	cmp r4, #0
	beq _08085374
	ldr r0, [r6, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08085380
	.align 2, 0
_08085364: .4byte gUnknown_03005A8D
_08085368: .4byte gUnknown_03005B1D
_0808536C: .4byte gUnknown_03005A20
_08085370: .4byte gUnknown_03005AB0
_08085374:
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #4
	orrs r0, r1
	mov r2, sb
	str r0, [r2, #0x10]
_08085380:
	ldr r2, _08085394 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08085398
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
	b _080853A4
	.align 2, 0
_08085394: .4byte gUnknown_03005A20
_08085398:
	mov r3, sb
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r3, #0x10]
_080853A4:
	ldr r1, _080853C4 @ =gUnknown_03005A8D
	cmp r4, #0
	beq _080853AC
	ldr r1, _080853C8 @ =gUnknown_03005B1D
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
_080853C4: .4byte gUnknown_03005A8D
_080853C8: .4byte gUnknown_03005B1D
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
	ldr r2, _08085428 @ =gUnknown_03005AF0
	strb r0, [r2]
	b _08085434
	.align 2, 0
_08085428: .4byte gUnknown_03005AF0
_0808542C:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #0x20
	strb r0, [r1]
_08085434:
	ldr r0, _080854FC @ =gUnknown_03005A20
	cmp r4, #0
	beq _0808543C
	ldr r0, _08085500 @ =gUnknown_03005AB0
_0808543C:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _080854FC @ =gUnknown_03005A20
	cmp r4, #0
	beq _0808544A
	ldr r1, _08085500 @ =gUnknown_03005AB0
_0808544A:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _080854FC @ =gUnknown_03005A20
	cmp r4, #0
	beq _08085456
	ldr r1, _08085500 @ =gUnknown_03005AB0
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
	ldr r0, _08085508 @ =gUnknown_03005088
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
	ldr r6, _08085500 @ =gUnknown_03005AB0
	ldr r4, _08085510 @ =0xFFBFFFFF
	ldr r3, _080854FC @ =gUnknown_03005A20
	movs r7, #1
	mov r8, r7
	ldr r0, _08085508 @ =gUnknown_03005088
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
_080854FC: .4byte gUnknown_03005A20
_08085500: .4byte gUnknown_03005AB0
_08085504: .4byte 0x0000020A
_08085508: .4byte gUnknown_03005088
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

	thumb_func_start sub_8085554
sub_8085554: @ 0x08085554
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable074
CreateEntity_Interactable074: @ 0x08085568
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, _080856C4 @ =sub_8085700
	ldr r1, _080856C8 @ =sub_80865A8
	str r1, [sp]
	movs r1, #0x7c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _080856CC @ =0x0300000C
	adds r2, r4, r1
	adds r1, #0x30
	adds r1, r1, r4
	mov sl, r1
	movs r6, #0
	strh r5, [r0, #4]
	mov r1, r8
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	mov r1, sb
	strb r1, [r0, #9]
	str r6, [r0, #0x70]
	ldr r1, _080856D0 @ =0x03000076
	adds r0, r4, r1
	strh r6, [r0]
	subs r1, #2
	adds r0, r4, r1
	strh r6, [r0]
	subs r1, #6
	adds r0, r4, r1
	strh r6, [r0]
	subs r1, #2
	adds r0, r4, r1
	strh r6, [r0]
	adds r1, #0xc
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r1, _080856D4 @ =0x03000079
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldrb r0, [r7]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r2, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov r8, r1
	add r0, r8
	strh r0, [r2, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x3c
	str r2, [sp, #4]
	bl VramMalloc
	ldr r2, [sp, #4]
	str r0, [r2, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	mov sb, r0
	mov r1, sb
	strh r1, [r2, #0x1a]
	strh r6, [r2, #8]
	ldr r0, _080856D8 @ =0x000001E7
	strh r0, [r2, #0xa]
	ldr r1, _080856DC @ =0x0300002C
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	strh r6, [r2, #0x14]
	strh r6, [r2, #0x1c]
	ldr r0, _080856E0 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _080856E4 @ =0x0300002E
	adds r0, r4, r1
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strb r1, [r0]
	ldr r1, _080856E8 @ =0x03000031
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r2, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2, #0x10]
	movs r0, #0xa
	str r2, [sp, #4]
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #4]
	ldr r0, _080856EC @ =0x00000247
	strh r0, [r1, #0xa]
	ldr r1, _080856F0 @ =0x0300005C
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	mov r1, sb
	mov r0, sl
	strh r1, [r0, #0x1a]
	strh r6, [r0, #8]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0x1c]
	ldr r0, _080856F4 @ =0x0300005D
	adds r1, r4, r0
	adds r0, r5, #0
	strb r0, [r1]
	ldr r1, _080856F8 @ =0x0300005E
	adds r0, r4, r1
	mov r1, r8
	strb r1, [r0]
	ldr r0, _080856FC @ =0x03000061
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	mov r0, sl
	str r5, [r0, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x10]
	ldr r2, [sp, #4]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	mov r0, sl
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
_080856C4: .4byte sub_8085700
_080856C8: .4byte sub_80865A8
_080856CC: .4byte 0x0300000C
_080856D0: .4byte 0x03000076
_080856D4: .4byte 0x03000079
_080856D8: .4byte 0x000001E7
_080856DC: .4byte 0x0300002C
_080856E0: .4byte 0x0300002D
_080856E4: .4byte 0x0300002E
_080856E8: .4byte 0x03000031
_080856EC: .4byte 0x00000247
_080856F0: .4byte 0x0300005C
_080856F4: .4byte 0x0300005D
_080856F8: .4byte 0x0300005E
_080856FC: .4byte 0x03000061

	thumb_func_start sub_8085700
sub_8085700: @ 0x08085700
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r4, _080857CC @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r0
	mov sb, r1
	ldr r1, _080857D0 @ =0x0300000C
	adds r1, r0, r1
	str r1, [sp]
	ldr r2, _080857D4 @ =0x0300003C
	adds r2, r0, r2
	str r2, [sp, #4]
	mov r3, sb
	ldr r6, [r3]
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r5, _080857D8 @ =gCamera
	ldrh r3, [r5]
	lsrs r7, r2, #0x10
	mov r8, r7
	asrs r2, r2, #0x10
	subs r3, r2, r3
	ldr r0, [sp]
	strh r3, [r0, #0x16]
	ldrh r0, [r5, #2]
	lsrs r7, r1, #0x10
	str r7, [sp, #8]
	asrs r1, r1, #0x10
	subs r0, r1, r0
	ldr r7, [sp]
	strh r0, [r7, #0x18]
	ldr r0, [sp, #4]
	strh r3, [r0, #0x16]
	ldrh r0, [r7, #0x18]
	ldr r3, [sp, #4]
	strh r0, [r3, #0x18]
	movs r7, #0
	ldrsh r3, [r5, r7]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r3, r7
	cmp r2, r0
	bgt _08085796
	adds r0, r3, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08085796
	movs r0, #2
	ldrsh r3, [r5, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r3, r2
	cmp r1, r0
	bgt _08085796
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _080857DC
_08085796:
	ldr r3, [sp]
	ldrh r0, [r3, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080857BC
	movs r7, #0x18
	ldrsh r0, [r3, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _080857BC
	movs r0, #0x18
	ldrsh r1, [r3, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080857DC
_080857BC:
	mov r1, sb
	ldrb r0, [r1, #8]
	strb r0, [r6]
	ldr r0, [r4]
	bl TaskDestroy
	b _08085B94
	.align 2, 0
_080857CC: .4byte gCurTask
_080857D0: .4byte 0x0300000C
_080857D4: .4byte 0x0300003C
_080857D8: .4byte gCamera
_080857DC:
	movs r5, #0
	mov r2, r8
	lsls r2, r2, #0x10
	mov sl, r2
	ldr r6, _080857F4 @ =gUnknown_03005AB0
	ldr r7, _080857F8 @ =gUnknown_03005A20
_080857E8:
	cmp r5, #0
	bne _080857F0
	cmp r5, #0
	beq _080857FC
_080857F0:
	ldr r0, [r6, #0x10]
	b _080857FE
	.align 2, 0
_080857F4: .4byte gUnknown_03005AB0
_080857F8: .4byte gUnknown_03005A20
_080857FC:
	ldr r0, [r7, #0x10]
_080857FE:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08085808
	b _08085B78
_08085808:
	cmp r5, #0
	beq _08085824
	ldr r3, _0808581C @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #2
	beq _08085832
	ldr r3, _08085820 @ =gUnknown_03005A20
	b _08085906
	.align 2, 0
_0808581C: .4byte gUnknown_03005B09
_08085820: .4byte gUnknown_03005A20
_08085824:
	ldr r1, _08085840 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r3, _08085844 @ =gUnknown_03005A20
	cmp r0, #2
	beq _08085832
	b _08085906
_08085832:
	cmp r5, #0
	beq _0808584C
	ldr r2, _08085848 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r2, r0]
	b _08085852
	.align 2, 0
_08085840: .4byte gUnknown_03005A79
_08085844: .4byte gUnknown_03005A20
_08085848: .4byte gUnknown_03005AF0
_0808584C:
	ldr r3, _08085864 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r3, r0]
_08085852:
	cmp r0, #0x46
	bne _08085858
	b _08085B78
_08085858:
	cmp r5, #0
	beq _0808586C
	ldr r1, _08085868 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r1, r0]
	b _08085872
	.align 2, 0
_08085864: .4byte gUnknown_03005A60
_08085868: .4byte gUnknown_03005AF0
_0808586C:
	ldr r2, _08085884 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r2, r0]
_08085872:
	cmp r0, #0x47
	bne _08085878
	b _08085B78
_08085878:
	cmp r5, #0
	beq _0808588C
	ldr r3, _08085888 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r3, r0]
	b _08085892
	.align 2, 0
_08085884: .4byte gUnknown_03005A60
_08085888: .4byte gUnknown_03005AF0
_0808588C:
	ldr r1, _080858A4 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r1, r0]
_08085892:
	cmp r0, #0x48
	bne _08085898
	b _08085B78
_08085898:
	cmp r5, #0
	beq _080858AC
	ldr r2, _080858A8 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r2, r0]
	b _080858B2
	.align 2, 0
_080858A4: .4byte gUnknown_03005A60
_080858A8: .4byte gUnknown_03005AF0
_080858AC:
	ldr r3, _080858C4 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r3, r0]
_080858B2:
	cmp r0, #0x49
	bne _080858B8
	b _08085B78
_080858B8:
	cmp r5, #0
	beq _080858CC
	ldr r1, _080858C8 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r1, r0]
	b _080858D2
	.align 2, 0
_080858C4: .4byte gUnknown_03005A60
_080858C8: .4byte gUnknown_03005AF0
_080858CC:
	ldr r2, _080858EC @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r2, r0]
_080858D2:
	cmp r0, #0x4a
	bne _080858D8
	b _08085B78
_080858D8:
	cmp r5, #0
	beq _080858F8
	ldr r3, _080858F0 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0x4b
	bne _080858E8
	b _08085B78
_080858E8:
	ldr r3, _080858F4 @ =gUnknown_03005A20
	b _08085906
	.align 2, 0
_080858EC: .4byte gUnknown_03005A60
_080858F0: .4byte gUnknown_03005AF0
_080858F4: .4byte gUnknown_03005A20
_080858F8:
	ldr r1, _08085934 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r3, _08085938 @ =gUnknown_03005A20
	cmp r0, #0x4b
	bne _08085906
	b _08085B78
_08085906:
	mov r2, sl
	asrs r4, r2, #0x10
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	mov r8, r0
	cmp r5, #0
	beq _08085918
	ldr r3, _0808593C @ =gUnknown_03005AB0
_08085918:
	ldr r0, [sp]
	adds r1, r4, #0
	bl sub_800B2BC
	adds r1, r4, #0
	subs r1, #8
	cmp r5, #0
	beq _08085940
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0808594A
	b _08085B78
	.align 2, 0
_08085934: .4byte gUnknown_03005A60
_08085938: .4byte gUnknown_03005A20
_0808593C: .4byte gUnknown_03005AB0
_08085940:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0808594A
	b _08085B78
_0808594A:
	mov r2, sl
	asrs r0, r2, #0x10
	adds r1, r0, #0
	adds r1, #8
	cmp r5, #0
	beq _08085960
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808596A
	b _08085B78
_08085960:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808596A
	b _08085B78
_0808596A:
	mov r3, r8
	asrs r0, r3, #0x10
	adds r1, r0, #0
	subs r1, #0x30
	cmp r5, #0
	beq _08085980
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0808598A
	b _08085B78
_08085980:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0808598A
	b _08085B78
_0808598A:
	mov r1, r8
	asrs r0, r1, #0x10
	adds r1, r0, #0
	adds r1, #0xc
	cmp r5, #0
	beq _080859A0
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080859AA
	b _08085B78
_080859A0:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _080859AA
	b _08085B78
_080859AA:
	mov r2, sb
	adds r2, #0x79
	movs r0, #1
	lsls r0, r5
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	cmp r5, #0
	beq _080859C6
	movs r2, #8
	ldrsh r0, [r6, r2]
	cmp r0, #0
	blt _080859CE
	b _080859DE
_080859C6:
	movs r3, #8
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bge _080859DE
_080859CE:
	cmp r5, #0
	beq _080859D8
	ldrh r0, [r6, #8]
	rsbs r0, r0, #0
	b _080859E8
_080859D8:
	ldrh r0, [r7, #8]
	rsbs r0, r0, #0
	b _080859E8
_080859DE:
	cmp r5, #0
	beq _080859E6
	ldrh r0, [r6, #8]
	b _080859E8
_080859E6:
	ldrh r0, [r7, #8]
_080859E8:
	lsls r0, r0, #2
	mov r1, sb
	adds r1, #0x6e
	strh r0, [r1]
	mov r0, sl
	asrs r1, r0, #0x10
	cmp r5, #0
	beq _080859FC
	ldr r0, [r6]
	b _080859FE
_080859FC:
	ldr r0, [r7]
_080859FE:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x30
	lsls r0, r0, #9
	movs r1, #0x60
	bl Div
	cmp r0, #0
	bge _08085A40
	mov r2, sl
	asrs r1, r2, #0x10
	cmp r5, #0
	beq _08085A1C
	ldr r0, [r6]
	b _08085A1E
_08085A1C:
	ldr r0, [r7]
_08085A1E:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x30
	lsls r0, r0, #9
	movs r1, #0x60
	bl Div
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r3, #0
	subs r1, r1, r0
	ldr r2, _08085A3C @ =0x000003FF
	adds r0, r2, #0
	b _08085A66
	.align 2, 0
_08085A3C: .4byte 0x000003FF
_08085A40:
	mov r3, sl
	asrs r1, r3, #0x10
	cmp r5, #0
	beq _08085A4C
	ldr r0, [r6]
	b _08085A4E
_08085A4C:
	ldr r0, [r7]
_08085A4E:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x30
	lsls r0, r0, #9
	movs r1, #0x60
	bl Div
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, _08085A84 @ =0x000003FF
	adds r1, r2, #0
_08085A66:
	ands r1, r0
	mov r0, sb
	adds r0, #0x6c
	movs r2, #0
	strh r1, [r0]
	mov r3, sb
	str r2, [r3, #0x70]
	adds r0, #0xa
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	cmp r5, #0
	beq _08085A88
	strh r2, [r6, #8]
	b _08085A8A
	.align 2, 0
_08085A84: .4byte 0x000003FF
_08085A88:
	strh r5, [r7, #8]
_08085A8A:
	ldr r3, _08085A9C @ =gUnknown_03005A20
	cmp r5, #0
	beq _08085AA0
	movs r1, #0xc
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bgt _08085AA8
	b _08085AC2
	.align 2, 0
_08085A9C: .4byte gUnknown_03005A20
_08085AA0:
	movs r2, #0xc
	ldrsh r0, [r3, r2]
	cmp r0, #0
	ble _08085AC2
_08085AA8:
	mov r1, sb
	adds r1, #0x78
	movs r0, #1
	strb r0, [r1]
	cmp r5, #0
	beq _08085ABC
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r6, #0xc]
	b _08085ADC
_08085ABC:
	movs r0, #0xf0
	lsls r0, r0, #3
	b _08085ADA
_08085AC2:
	mov r0, sb
	adds r0, #0x78
	movs r1, #0
	strb r1, [r0]
	cmp r5, #0
	beq _08085AD8
	ldr r0, _08085AD4 @ =0x0000F880
	strh r0, [r6, #0xc]
	b _08085ADC
	.align 2, 0
_08085AD4: .4byte 0x0000F880
_08085AD8:
	ldr r0, _08085AE8 @ =0x0000F880
_08085ADA:
	strh r0, [r3, #0xc]
_08085ADC:
	cmp r5, #0
	beq _08085AEC
	movs r2, #0
	strh r2, [r6, #0x38]
	b _08085AEE
	.align 2, 0
_08085AE8: .4byte 0x0000F880
_08085AEC:
	strh r5, [r3, #0x38]
_08085AEE:
	cmp r5, #0
	beq _08085AF8
	movs r0, #0
	strh r0, [r6, #0x3a]
	b _08085AFA
_08085AF8:
	strh r5, [r3, #0x3a]
_08085AFA:
	adds r0, r3, #0
	cmp r5, #0
	beq _08085B02
	ldr r0, _08085B14 @ =gUnknown_03005AB0
_08085B02:
	bl sub_8046CEC
	cmp r5, #0
	beq _08085B1C
	movs r0, #0x21
	ldr r1, _08085B18 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _08085B22
	.align 2, 0
_08085B14: .4byte gUnknown_03005AB0
_08085B18: .4byte gUnknown_03005AF0
_08085B1C:
	movs r0, #0x21
	ldr r2, _08085B34 @ =gUnknown_03005A60
	strb r0, [r2]
_08085B22:
	cmp r5, #0
	beq _08085B38
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08085B42
	.align 2, 0
_08085B34: .4byte gUnknown_03005A60
_08085B38:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r7, #0x10]
_08085B42:
	movs r0, #0xd1
	bl m4aSongNumStart
	ldr r0, _08085B60 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08085B64 @ =sub_8085BAC
	str r0, [r1, #8]
	cmp r5, #0
	beq _08085B6C
	ldr r3, _08085B68 @ =gUnknown_03005AD6
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
	b _08085B78
	.align 2, 0
_08085B60: .4byte gCurTask
_08085B64: .4byte sub_8085BAC
_08085B68: .4byte gUnknown_03005AD6
_08085B6C:
	ldr r1, _08085BA4 @ =gUnknown_03005A46
	ldrb r0, [r1]
	movs r1, #0x80
	orrs r0, r1
	ldr r2, _08085BA4 @ =gUnknown_03005A46
	strb r0, [r2]
_08085B78:
	adds r5, #1
	ldr r0, _08085BA8 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _08085B88
	b _080857E8
_08085B88:
	ldr r0, [sp]
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_08085B94:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08085BA4: .4byte gUnknown_03005A46
_08085BA8: .4byte gUnknown_03005088

	thumb_func_start sub_8085BAC
sub_8085BAC: @ 0x08085BAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08085C44 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r0
	mov sb, r1
	ldr r1, _08085C48 @ =0x0300000C
	adds r1, r0, r1
	str r1, [sp]
	ldr r2, _08085C4C @ =0x0300003C
	adds r2, r0, r2
	str r2, [sp, #4]
	mov r3, sb
	ldr r3, [r3]
	str r3, [sp, #0x10]
	mov r4, sb
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r3, [r3, #1]
	lsls r3, r3, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #0x10
	ldr r1, _08085C50 @ =gCamera
	ldrh r0, [r1]
	lsrs r4, r2, #0x10
	str r4, [sp, #8]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	ldr r0, [sp]
	strh r2, [r0, #0x16]
	ldrh r1, [r1, #2]
	lsrs r4, r3, #0x10
	str r4, [sp, #0xc]
	asrs r3, r3, #0x10
	subs r1, r3, r1
	mov r4, sb
	ldr r0, [r4, #0x70]
	lsrs r0, r0, #0xd
	adds r1, r1, r0
	adds r1, #2
	ldr r0, [sp]
	strh r1, [r0, #0x18]
	ldr r1, [sp, #4]
	strh r2, [r1, #0x16]
	ldrh r0, [r0, #0x18]
	adds r0, #2
	strh r0, [r1, #0x18]
	movs r5, #0
	ldr r4, _08085C54 @ =gUnknown_03005AB0
	ldr r7, _08085C58 @ =gUnknown_03005A20
	str r3, [sp, #0x14]
_08085C2C:
	cmp r5, #0
	beq _08085C5C
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	ands r1, r0
	ldr r2, [sp, #8]
	lsls r2, r2, #0x10
	str r2, [sp, #0x18]
	mov r3, sb
	adds r3, #0x79
	str r3, [sp, #0x1c]
	b _08085C6E
	.align 2, 0
_08085C44: .4byte gCurTask
_08085C48: .4byte 0x0300000C
_08085C4C: .4byte 0x0300003C
_08085C50: .4byte gCamera
_08085C54: .4byte gUnknown_03005AB0
_08085C58: .4byte gUnknown_03005A20
_08085C5C:
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	ands r1, r0
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r2, sb
	adds r2, #0x79
	str r2, [sp, #0x1c]
_08085C6E:
	cmp r1, #0
	bne _08085CAC
	mov r1, sb
	adds r1, #0x79
	ldrb r0, [r1]
	asrs r0, r5
	movs r3, #1
	ands r0, r3
	ldr r2, [sp, #8]
	lsls r2, r2, #0x10
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	cmp r0, #0
	beq _08085CBC
	asrs r0, r2, #8
	cmp r5, #0
	beq _08085C94
	str r0, [r4]
	b _08085C96
_08085C94:
	str r0, [r7]
_08085C96:
	mov r3, sb
	ldr r0, [r3, #0x70]
	lsrs r0, r0, #0xd
	ldr r1, [sp, #0x14]
	adds r0, r1, r0
	lsls r0, r0, #8
	cmp r5, #0
	beq _08085CAA
	str r0, [r4, #4]
	b _08085CAC
_08085CAA:
	str r0, [r7, #4]
_08085CAC:
	ldr r2, [sp, #0x1c]
	ldrb r0, [r2]
	asrs r0, r5
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08085CBC
	b _08085EE8
_08085CBC:
	mov r1, sb
	ldr r0, [r1, #0x70]
	lsls r0, r0, #3
	ldr r2, [sp, #0x18]
	asrs r1, r2, #0x10
	lsrs r3, r0, #0x10
	mov sl, r3
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x14]
	adds r6, r2, r0
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08085D08 @ =gUnknown_03005A20
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0x10
	mov r8, r0
	cmp r5, #0
	beq _08085CE2
	ldr r3, _08085D0C @ =gUnknown_03005AB0
_08085CE2:
	ldr r0, [sp]
	bl sub_800B2BC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _08085D14
	ldr r1, [sp, #0x1c]
	ldrb r0, [r1]
	asrs r0, r5
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _08085D14
	lsls r0, r6, #8
	cmp r5, #0
	beq _08085D10
	str r0, [r4, #4]
	b _08085D6A
	.align 2, 0
_08085D08: .4byte gUnknown_03005A20
_08085D0C: .4byte gUnknown_03005AB0
_08085D10:
	str r0, [r7, #4]
	b _08085D6A
_08085D14:
	ldr r3, [sp, #0x18]
	asrs r6, r3, #0x10
	mov r0, r8
	asrs r1, r0, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	ldr r3, _08085D58 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08085D30
	ldr r3, _08085D5C @ =gUnknown_03005AB0
_08085D30:
	ldr r0, [sp]
	adds r1, r6, #0
	bl sub_800CE34
	cmp r0, #0
	bne _08085D6A
	ldr r3, [sp, #0x1c]
	ldrb r0, [r3]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08085D6A
	cmp r5, #0
	beq _08085D60
	ldr r0, [r4, #0x10]
	subs r1, #0xa
	ands r0, r1
	str r0, [r4, #0x10]
	b _08085D6A
	.align 2, 0
_08085D58: .4byte gUnknown_03005A20
_08085D5C: .4byte gUnknown_03005AB0
_08085D60:
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_08085D6A:
	ldr r2, [sp, #0x18]
	asrs r0, r2, #0x10
	adds r1, r0, #0
	subs r1, #8
	cmp r5, #0
	beq _08085D80
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08085D8A
	b _08085EE8
_08085D80:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	ble _08085D8A
	b _08085EE8
_08085D8A:
	ldr r3, [sp, #0x18]
	asrs r0, r3, #0x10
	adds r1, r0, #0
	adds r1, #8
	cmp r5, #0
	beq _08085DA0
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08085DAA
	b _08085EE8
_08085DA0:
	ldr r0, [r7]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08085DAA
	b _08085EE8
_08085DAA:
	mov r1, r8
	asrs r0, r1, #0x10
	mov r3, sl
	lsls r2, r3, #0x10
	asrs r1, r2, #0x10
	adds r0, r0, r1
	adds r3, r0, #0
	subs r3, #0x30
	cmp r5, #0
	beq _08085DC8
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r3, r0
	ble _08085DD2
	b _08085EE8
_08085DC8:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r3, r0
	ble _08085DD2
	b _08085EE8
_08085DD2:
	mov r1, r8
	asrs r0, r1, #0x10
	asrs r1, r2, #0x10
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0xc
	cmp r5, #0
	beq _08085DEC
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08085DF6
	b _08085EE8
_08085DEC:
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08085DF6
	b _08085EE8
_08085DF6:
	mov r2, sb
	ldr r1, [r2, #0x70]
	ldr r0, _08085E18 @ =0x003C2A57
	cmp r1, r0
	bhi _08085EE8
	movs r1, #1
	lsls r1, r5
	ldr r3, [sp, #0x1c]
	ldrb r0, [r3]
	orrs r1, r0
	movs r0, #0
	strb r1, [r3]
	cmp r5, #0
	beq _08085E1C
	strh r0, [r4, #8]
	b _08085E1E
	.align 2, 0
_08085E18: .4byte 0x003C2A57
_08085E1C:
	strh r5, [r7, #8]
_08085E1E:
	ldr r2, _08085E30 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08085E34
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _08085E3C
	b _08085E4E
	.align 2, 0
_08085E30: .4byte gUnknown_03005A20
_08085E34:
	movs r3, #0xc
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _08085E4E
_08085E3C:
	cmp r5, #0
	beq _08085E48
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	b _08085E60
_08085E48:
	movs r0, #0xf0
	lsls r0, r0, #3
	b _08085E5E
_08085E4E:
	cmp r5, #0
	beq _08085E5C
	ldr r0, _08085E58 @ =0x0000F880
	strh r0, [r4, #0xc]
	b _08085E60
	.align 2, 0
_08085E58: .4byte 0x0000F880
_08085E5C:
	ldr r0, _08085E6C @ =0x0000F880
_08085E5E:
	strh r0, [r2, #0xc]
_08085E60:
	cmp r5, #0
	beq _08085E70
	movs r0, #0
	strh r0, [r4, #0x38]
	b _08085E72
	.align 2, 0
_08085E6C: .4byte 0x0000F880
_08085E70:
	strh r5, [r2, #0x38]
_08085E72:
	cmp r5, #0
	beq _08085E7C
	movs r0, #0
	strh r0, [r4, #0x3a]
	b _08085E7E
_08085E7C:
	strh r5, [r2, #0x3a]
_08085E7E:
	adds r0, r2, #0
	cmp r5, #0
	beq _08085E86
	ldr r0, _08085E98 @ =gUnknown_03005AB0
_08085E86:
	bl sub_8046CEC
	cmp r5, #0
	beq _08085EA0
	movs r0, #0x21
	ldr r1, _08085E9C @ =gUnknown_03005AF0
	strb r0, [r1]
	b _08085EA6
	.align 2, 0
_08085E98: .4byte gUnknown_03005AB0
_08085E9C: .4byte gUnknown_03005AF0
_08085EA0:
	movs r0, #0x21
	ldr r2, _08085EB8 @ =gUnknown_03005A60
	strb r0, [r2]
_08085EA6:
	cmp r5, #0
	beq _08085EBC
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08085EC6
	.align 2, 0
_08085EB8: .4byte gUnknown_03005A60
_08085EBC:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r7, #0x10]
_08085EC6:
	cmp r5, #0
	beq _08085EDC
	ldr r3, _08085ED8 @ =gUnknown_03005AD6
	ldrb r1, [r3]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r3]
	b _08085EE8
	.align 2, 0
_08085ED8: .4byte gUnknown_03005AD6
_08085EDC:
	ldr r0, _08085F1C @ =gUnknown_03005A46
	ldrb r1, [r0]
	movs r0, #0x80
	orrs r0, r1
	ldr r1, _08085F1C @ =gUnknown_03005A46
	strb r0, [r1]
_08085EE8:
	adds r5, #1
	ldr r0, _08085F20 @ =gUnknown_03005088
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r2, r0, #0
	cmp r5, r1
	bge _08085EF8
	b _08085C2C
_08085EF8:
	mov r3, sb
	ldr r1, [r3, #0x70]
	ldr r0, _08085F24 @ =0x003C2A57
	cmp r1, r0
	bls _08085F9C
	movs r4, #0
	movs r0, #0x6e
	add r0, sb
	mov r8, r0
	ldr r7, [sp]
	adds r7, #0x22
	ldr r6, _08085F28 @ =gUnknown_03005AB0
	ldr r5, _08085F2C @ =gUnknown_03005A20
_08085F12:
	cmp r4, #0
	beq _08085F30
	ldr r0, [r6, #0x10]
	b _08085F32
	.align 2, 0
_08085F1C: .4byte gUnknown_03005A46
_08085F20: .4byte gUnknown_03005088
_08085F24: .4byte 0x003C2A57
_08085F28: .4byte gUnknown_03005AB0
_08085F2C: .4byte gUnknown_03005A20
_08085F30:
	ldr r0, [r5, #0x10]
_08085F32:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08085F8C
	ldr r1, [sp, #0x1c]
	ldrb r0, [r1]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08085F8C
	mov r2, r8
	ldrh r0, [r2]
	lsrs r0, r0, #2
	ldr r3, _08085F64 @ =0xFFFFF830
	adds r0, r0, r3
	lsls r0, r0, #1
	movs r1, #3
	bl Div
	cmp r4, #0
	beq _08085F68
	strh r0, [r6, #8]
	b _08085F6A
	.align 2, 0
_08085F64: .4byte 0xFFFFF830
_08085F68:
	strh r0, [r5, #8]
_08085F6A:
	mov r1, r8
	ldrh r0, [r1]
	lsrs r0, r0, #2
	ldr r2, _08085F84 @ =0xFFFFF830
	adds r0, r0, r2
	lsls r0, r0, #1
	movs r1, #3
	bl Div
	cmp r4, #0
	beq _08085F88
	strh r0, [r6, #0xc]
	b _08085F8A
	.align 2, 0
_08085F84: .4byte 0xFFFFF830
_08085F88:
	strh r0, [r5, #0xc]
_08085F8A:
	ldr r2, _08085F98 @ =gUnknown_03005088
_08085F8C:
	adds r4, #1
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r4, r0
	blt _08085F12
	b _08085FAC
	.align 2, 0
_08085F98: .4byte gUnknown_03005088
_08085F9C:
	mov r1, sb
	adds r1, #0x6e
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	mov r8, r1
	ldr r7, [sp]
	adds r7, #0x22
_08085FAC:
	mov r3, r8
	ldrh r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	bls _08085FBA
	strh r1, [r3]
_08085FBA:
	mov r4, r8
	ldrh r1, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #8
	bl Div
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bls _08085FDC
	movs r0, #0x10
	strb r0, [r7]
_08085FDC:
	mov r1, r8
	ldrh r0, [r1]
	mov r2, sb
	ldr r1, [r2, #0x70]
	adds r1, r1, r0
	str r1, [r2, #0x70]
	ldr r3, [sp, #0x18]
	asrs r2, r3, #0x10
	ldr r4, _0808605C @ =gCamera
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _08086020
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08086020
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	movs r2, #2
	ldrsh r1, [r4, r2]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r3, r0
	bgt _08086020
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	bge _08086064
_08086020:
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08086048
	ldr r2, [sp]
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _08086048
	movs r4, #0x18
	ldrsh r1, [r2, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08086064
_08086048:
	mov r1, sb
	ldrb r0, [r1, #8]
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	ldr r0, _08086060 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808640E
	.align 2, 0
_0808605C: .4byte gCamera
_08086060: .4byte gCurTask
_08086064:
	movs r5, #0
	movs r3, #0x74
	add r3, sb
	mov sl, r3
	ldr r4, _0808607C @ =gUnknown_03005AB0
	ldr r6, _08086080 @ =gUnknown_03005A20
	adds r7, r4, #0
	adds r7, #0x26
_08086074:
	cmp r5, #0
	beq _08086084
	ldr r0, [r4, #0x10]
	b _08086086
	.align 2, 0
_0808607C: .4byte gUnknown_03005AB0
_08086080: .4byte gUnknown_03005A20
_08086084:
	ldr r0, [r6, #0x10]
_08086086:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08086090
	b _08086314
_08086090:
	ldr r1, [sp, #0x1c]
	ldrb r0, [r1]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080860A0
	b _08086314
_080860A0:
	mov r2, sb
	ldr r1, [r2, #0x70]
	ldr r0, _080860D4 @ =0x003C2A57
	cmp r1, r0
	bhi _080860AC
	b _0808637A
_080860AC:
	adds r0, #1
	str r0, [r2, #0x70]
	adds r2, #0x76
	cmp r5, #0
	bne _080860BC
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_080860BC:
	ldrh r1, [r2]
	ldr r0, _080860D8 @ =0x0000012B
	cmp r1, r0
	bhi _080860E8
	cmp r5, #0
	beq _080860DC
	ldrh r0, [r4, #0x38]
	movs r1, #0x30
	ands r0, r1
	cmp r0, #0
	bne _080860E8
	b _0808637A
	.align 2, 0
_080860D4: .4byte 0x003C2A57
_080860D8: .4byte 0x0000012B
_080860DC:
	ldrh r0, [r6, #0x38]
	movs r1, #0x30
	ands r0, r1
	cmp r0, #0
	bne _080860E8
	b _0808637A
_080860E8:
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r2]
	cmp r5, #0
	beq _08086104
	ldrh r1, [r4, #0x38]
	movs r0, #0x20
	ands r1, r0
	ldr r2, _08086100 @ =gUnknown_03005A20
	cmp r1, #0
	bne _08086110
	b _0808615C
	.align 2, 0
_08086100: .4byte gUnknown_03005A20
_08086104:
	ldrh r1, [r6, #0x38]
	movs r0, #0x20
	ands r1, r0
	ldr r2, _08086120 @ =gUnknown_03005A20
	cmp r1, #0
	beq _0808615C
_08086110:
	cmp r5, #0
	beq _08086124
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bgt _0808612C
	b _08086156
	.align 2, 0
_08086120: .4byte gUnknown_03005A20
_08086124:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _08086156
_0808612C:
	cmp r5, #0
	beq _0808613A
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	rsbs r0, r0, #0
	strh r0, [r4, #0xc]
	b _08086142
_0808613A:
	movs r1, #0xc
	ldrsh r0, [r6, r1]
	rsbs r0, r0, #0
	strh r0, [r6, #0xc]
_08086142:
	cmp r5, #0
	beq _0808614C
_08086146:
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	b _08086150
_0808614C:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
_08086150:
	cmp r5, #0
	bne _080861C2
	b _080861C6
_08086156:
	cmp r5, #0
	bne _08086146
	b _0808614C
_0808615C:
	cmp r5, #0
	beq _0808616C
	ldrh r0, [r4, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08086176
	b _08086198
_0808616C:
	ldrh r0, [r2, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08086198
_08086176:
	cmp r5, #0
	beq _08086184
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	cmp r0, #0
	blt _080861A2
	b _08086156
_08086184:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _08086156
	b _080861A2
_0808618E:
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	rsbs r0, r0, #0
	strh r0, [r4, #0xc]
	b _08086156
_08086198:
	mov r0, sb
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0
	bne _080861B0
_080861A2:
	cmp r5, #0
	bne _0808618E
	movs r1, #0xc
	ldrsh r0, [r6, r1]
	rsbs r0, r0, #0
	strh r0, [r6, #0xc]
	b _08086156
_080861B0:
	cmp r5, #0
	beq _080861BA
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	b _080861BE
_080861BA:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
_080861BE:
	cmp r5, #0
	beq _080861C6
_080861C2:
	strh r0, [r4, #8]
	b _080861C8
_080861C6:
	strh r0, [r2, #8]
_080861C8:
	movs r1, #1
	lsls r1, r5
	ldr r2, [sp, #0x1c]
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	ldr r0, _080861F0 @ =gUnknown_03005A20
	cmp r5, #0
	beq _080861DC
	ldr r0, _080861F4 @ =gUnknown_03005AB0
_080861DC:
	bl sub_8046CEC
	cmp r5, #0
	beq _080861FC
	ldr r0, [r4, #0x10]
	ldr r1, _080861F8 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _08086204
	.align 2, 0
_080861F0: .4byte gUnknown_03005A20
_080861F4: .4byte gUnknown_03005AB0
_080861F8: .4byte 0xFFBFFFFF
_080861FC:
	ldr r0, [r6, #0x10]
	ldr r1, _08086218 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_08086204:
	ldr r2, _0808621C @ =gUnknown_03005A20
	cmp r5, #0
	beq _08086220
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808622A
	.align 2, 0
_08086218: .4byte 0xFFBFFFFF
_0808621C: .4byte gUnknown_03005A20
_08086220:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0808622A:
	cmp r5, #0
	beq _08086238
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08086240
_08086238:
	ldr r0, [r6, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
_08086240:
	cmp r5, #0
	beq _0808624E
	ldr r0, [r4, #0x10]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08086256
_0808624E:
	ldr r0, [r6, #0x10]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r6, #0x10]
_08086256:
	cmp r5, #0
	beq _08086264
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0808626C
_08086264:
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
_0808626C:
	cmp r5, #0
	beq _0808627C
	movs r0, #4
	ldr r3, _08086278 @ =gUnknown_03005AF0
	strb r0, [r3]
	b _08086284
	.align 2, 0
_08086278: .4byte gUnknown_03005AF0
_0808627C:
	adds r1, r2, #0
	adds r1, #0x40
	movs r0, #4
	strb r0, [r1]
_08086284:
	ldr r0, _080862B8 @ =gUnknown_03005A20
	cmp r5, #0
	beq _0808628C
	ldr r0, _080862BC @ =gUnknown_03005AB0
_0808628C:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _080862B8 @ =gUnknown_03005A20
	cmp r5, #0
	beq _0808629A
	ldr r1, _080862BC @ =gUnknown_03005AB0
_0808629A:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r2, _080862B8 @ =gUnknown_03005A20
	adds r1, r2, #0
	cmp r5, #0
	beq _080862A8
	ldr r1, _080862BC @ =gUnknown_03005AB0
_080862A8:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	cmp r5, #0
	beq _080862C0
	movs r0, #0
	strh r0, [r4, #0xa]
	b _080862C2
	.align 2, 0
_080862B8: .4byte gUnknown_03005A20
_080862BC: .4byte gUnknown_03005AB0
_080862C0:
	strh r5, [r2, #0xa]
_080862C2:
	ldr r1, [sp, #0x18]
	asrs r0, r1, #8
	cmp r5, #0
	beq _080862CE
	str r0, [r4]
	b _080862D0
_080862CE:
	str r0, [r2]
_080862D0:
	ldr r0, _080862E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080862EC @ =sub_8086420
	str r0, [r1, #8]
	cmp r5, #0
	beq _080862F0
	ldrb r1, [r7]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r7]
	b _080862FA
	.align 2, 0
_080862E8: .4byte gCurTask
_080862EC: .4byte sub_8086420
_080862F0:
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_080862FA:
	ldr r1, _0808630C @ =gUnknown_03005A84
	cmp r5, #0
	beq _08086302
	ldr r1, _08086310 @ =gUnknown_03005B14
_08086302:
	ldr r1, [r1]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #0x26]
	b _0808637A
	.align 2, 0
_0808630C: .4byte gUnknown_03005A84
_08086310: .4byte gUnknown_03005B14
_08086314:
	cmp r5, #0
	beq _08086324
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808632E
	b _0808637A
_08086324:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808637A
_0808632E:
	mov r2, sb
	ldr r0, [r2, #0x70]
	ldr r1, _08086348 @ =0x003C2A58
	cmp r0, r1
	bls _0808633A
	str r1, [r2, #0x70]
_0808633A:
	cmp r5, #0
	beq _08086350
	ldr r0, [r4, #0x10]
	ldr r1, _0808634C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _08086358
	.align 2, 0
_08086348: .4byte 0x003C2A58
_0808634C: .4byte 0xFFBFFFFF
_08086350:
	ldr r0, [r6, #0x10]
	ldr r1, _080863B4 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_08086358:
	mov r2, sb
	adds r2, #0x76
	cmp r5, #0
	bne _08086366
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_08086366:
	ldrh r1, [r2]
	movs r3, #0x96
	lsls r3, r3, #0x11
	lsrs r0, r3, #0x10
	cmp r1, r0
	bls _0808637A
	ldr r0, _080863B8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080863BC @ =sub_8086420
	str r0, [r1, #8]
_0808637A:
	adds r5, #1
	ldr r0, _080863C0 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _0808638A
	b _08086074
_0808638A:
	mov r2, sl
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	mov r4, r8
	ldrh r1, [r4]
	ldr r0, _080863C4 @ =0x000031FF
	cmp r1, r0
	bhi _080863C8
	cmp r1, #0
	beq _080863FC
	ldrh r0, [r2]
	movs r1, #0x19
	bl Mod
	cmp r0, #0
	bne _080863FC
	movs r0, #0xd1
	bl m4aSongNumStart
	b _080863FC
	.align 2, 0
_080863B4: .4byte 0xFFBFFFFF
_080863B8: .4byte gCurTask
_080863BC: .4byte sub_8086420
_080863C0: .4byte gUnknown_03005088
_080863C4: .4byte 0x000031FF
_080863C8:
	ldr r0, _080863E4 @ =0x00004AFF
	cmp r1, r0
	bhi _080863E8
	ldrh r0, [r2]
	movs r1, #0x10
	bl Mod
	cmp r0, #0
	bne _080863FC
	movs r0, #0xd2
	bl m4aSongNumStart
	b _080863FC
	.align 2, 0
_080863E4: .4byte 0x00004AFF
_080863E8:
	mov r1, sl
	ldrh r0, [r1]
	movs r1, #8
	bl Mod
	cmp r0, #0
	bne _080863FC
	movs r0, #0xd3
	bl m4aSongNumStart
_080863FC:
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	bl DisplaySprite
	ldr r0, [sp, #4]
	bl DisplaySprite
_0808640E:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8086420
sub_8086420: @ 0x08086420
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080864B0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _080864B4 @ =0x0300000C
	adds r7, r0, r1
	ldr r2, _080864B8 @ =0x0300003C
	adds r2, r0, r2
	str r2, [sp]
	mov r3, r8
	ldr r3, [r3]
	str r3, [sp, #8]
	mov r4, r8
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _080864BC @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	mov sb, r4
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsrs r3, r1, #0x10
	str r3, [sp, #4]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r4, r8
	ldr r0, [r4, #0x70]
	lsrs r0, r0, #0xd
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	ldr r0, [sp]
	strh r2, [r0, #0x16]
	ldrh r0, [r7, #0x18]
	ldr r1, [sp]
	strh r0, [r1, #0x18]
	movs r6, #0
	movs r2, #0x80
	mov sl, r2
_08086496:
	cmp r6, #0
	beq _080864C8
	ldr r0, _080864C0 @ =gUnknown_03005AB0
	ldr r0, [r0, #0x10]
	mov r3, sl
	ands r0, r3
	mov r4, sb
	lsls r5, r4, #0x10
	cmp r0, #0
	bne _080864FE
	ldr r3, _080864C4 @ =gUnknown_03005A20
	b _080864DA
	.align 2, 0
_080864B0: .4byte gCurTask
_080864B4: .4byte 0x0300000C
_080864B8: .4byte 0x0300003C
_080864BC: .4byte gCamera
_080864C0: .4byte gUnknown_03005AB0
_080864C4: .4byte gUnknown_03005A20
_080864C8:
	ldr r1, _08086578 @ =gUnknown_03005A20
	ldr r0, [r1, #0x10]
	mov r2, sl
	ands r0, r2
	mov r3, sb
	lsls r5, r3, #0x10
	adds r3, r1, #0
	cmp r0, #0
	bne _080864FE
_080864DA:
	mov r4, sb
	lsls r1, r4, #0x10
	asrs r4, r1, #0x10
	mov r2, r8
	ldr r0, [r2, #0x70]
	lsrs r0, r0, #0xd
	ldr r2, [sp, #4]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r5, r1, #0
	cmp r6, #0
	beq _080864F6
	ldr r3, _0808657C @ =gUnknown_03005AB0
_080864F6:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_800B2BC
_080864FE:
	adds r6, #1
	ldr r0, _08086580 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	blt _08086496
	asrs r1, r5, #0x10
	ldr r3, _08086584 @ =gCamera
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r2, r4
	cmp r1, r0
	bgt _08086542
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _08086542
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r4, #2
	ldrsh r2, [r3, r4]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	cmp r1, r0
	bgt _08086542
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0808658C
_08086542:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08086566
	movs r4, #0x18
	ldrsh r0, [r7, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _08086566
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808658C
_08086566:
	mov r1, r8
	ldrb r0, [r1, #8]
	ldr r2, [sp, #8]
	strb r0, [r2]
	ldr r0, _08086588 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08086598
	.align 2, 0
_08086578: .4byte gUnknown_03005A20
_0808657C: .4byte gUnknown_03005AB0
_08086580: .4byte gUnknown_03005088
_08086584: .4byte gCamera
_08086588: .4byte gCurTask
_0808658C:
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [sp]
	bl DisplaySprite
_08086598:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80865A8
sub_80865A8: @ 0x080865A8
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable075
CreateEntity_Interactable075: @ 0x080865C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	movs r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #1
	bne _080865F4
	ldr r0, _080865F0 @ =sub_8086710
	b _080865FA
	.align 2, 0
_080865F0: .4byte sub_8086710
_080865F4:
	cmp r0, #2
	bne _08086614
	ldr r0, _0808660C @ =sub_80871A4
_080865FA:
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08086610 @ =sub_8087678
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	b _08086626
	.align 2, 0
_0808660C: .4byte sub_80871A4
_08086610: .4byte sub_8087678
_08086614:
	ldr r0, _08086694 @ =sub_8086B4C
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08086698 @ =sub_8087678
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
_08086626:
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	ldr r1, _0808669C @ =0x0300000C
	adds r4, r5, r1
	movs r7, #0
	movs r2, #0
	mov r1, r8
	strh r1, [r0, #4]
	mov r1, sb
	strh r1, [r0, #6]
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #8]
	mov r1, sl
	strb r1, [r0, #9]
	str r2, [r0, #0x3c]
	str r2, [r0, #0x40]
	str r2, [r0, #0x44]
	str r2, [r0, #0x4c]
	ldr r2, _080866A0 @ =0x03000050
	adds r0, r5, r2
	strb r7, [r0]
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	ldr r0, _080866A4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #3
	bne _080866B0
	movs r0, #6
	bl VramMalloc
	str r0, [r4, #4]
	ldr r0, _080866A8 @ =0x00000239
	strh r0, [r4, #0xa]
	ldr r2, _080866AC @ =0x0300002C
	adds r0, r5, r2
	b _080866C2
	.align 2, 0
_08086694: .4byte sub_8086B4C
_08086698: .4byte sub_8087678
_0808669C: .4byte 0x0300000C
_080866A0: .4byte 0x03000050
_080866A4: .4byte gCurrentLevel
_080866A8: .4byte 0x00000239
_080866AC: .4byte 0x0300002C
_080866B0:
	movs r0, #6
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0xfc
	lsls r0, r0, #1
	strh r0, [r4, #0xa]
	ldr r1, _0808670C @ =0x0300002C
	adds r0, r5, r1
_080866C2:
	strb r7, [r0]
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	strh r1, [r4, #8]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	adds r0, r4, #0
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
_0808670C: .4byte 0x0300002C

	thumb_func_start sub_8086710
sub_8086710: @ 0x08086710
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _0808685C @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r7]
	str r1, [sp]
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp]
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08086860 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	subs r0, r1, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	subs r0, r6, r0
	strh r0, [r5, #0x18]
	ldr r4, _08086864 @ =gUnknown_03005A20
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	mov sb, r1
	ands r1, r0
	mov sb, r1
	cmp r1, #0
	bne _0808680C
	movs r1, #8
	mov sl, r1
	ands r0, r1
	cmp r0, #0
	beq _0808677E
	ldr r0, [r4, #0x28]
	cmp r0, r5
	bne _0808680C
_0808677E:
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_800CE34
	cmp r0, #0
	beq _0808680C
	adds r0, r4, #0
	bl sub_8046CEC
	movs r0, #0x80
	lsls r0, r0, #0xf
	str r0, [r4, #0x10]
	mov r0, sb
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x26
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x24
	lsls r0, r0, #8
	str r0, [r4, #4]
	mov r0, r8
	subs r0, #6
	lsls r0, r0, #8
	str r0, [r4]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080867C0
	rsbs r0, r0, #0
_080867C0:
	str r0, [r7, #0x40]
	cmp r0, #0xff
	bgt _080867CC
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r7, #0x40]
_080867CC:
	mov r0, sb
	str r0, [r7, #0x44]
	ldr r0, [r4]
	str r0, [r7, #0x48]
	movs r0, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	movs r0, #0xb4
	bl m4aSongNumStart
	ldr r0, _0808685C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08086868 @ =sub_8086884
	str r0, [r1, #8]
	ldr r0, [r4, #0x10]
	mov r1, sl
	orrs r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x28]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
_0808680C:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08086830
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08086830
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808686C
_08086830:
	ldr r2, _08086864 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808684C
	ldr r0, [r2, #0x28]
	cmp r0, r5
	bne _0808684C
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_0808684C:
	ldrb r0, [r7, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _0808685C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08086872
	.align 2, 0
_0808685C: .4byte gCurTask
_08086860: .4byte gCamera
_08086864: .4byte gUnknown_03005A20
_08086868: .4byte sub_8086884
_0808686C:
	adds r0, r5, #0
	bl DisplaySprite
_08086872:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8086884
sub_8086884: @ 0x08086884
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _0808696C @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _08086970 @ =0x0300000C
	adds r6, r1, r2
	ldr r3, [r5]
	str r3, [sp]
	ldrb r0, [r5, #8]
	lsls r0, r0, #3
	ldrh r1, [r5, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r5, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r4, _08086974 @ =gUnknown_03005A20
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	mov r8, r0
	mov r2, r8
	ands r2, r1
	mov r8, r2
	cmp r2, #0
	beq _080868D8
	b _08086A50
_080868D8:
	adds r7, r4, #0
	adds r7, #0x40
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0x26
	beq _080868EE
	adds r0, r4, #0
	bl sub_8046CEC
	movs r0, #0x26
	strb r0, [r7]
_080868EE:
	mov r3, r8
	strh r3, [r4, #0xa]
	ldr r0, [r4]
	ldr r1, [r5, #0x48]
	subs r0, r0, r1
	asrs r0, r0, #8
	movs r1, #0xf0
	lsls r1, r1, #1
	cmp r0, r1
	ble _08086984
	movs r0, #0xb4
	bl m4aSongNumStop
	adds r0, r4, #0
	bl sub_8046CEC
	ldr r0, [r4, #0x10]
	ldr r1, _08086978 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #4
	strb r0, [r7]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	ldr r0, _0808696C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808697C @ =sub_8087054
	str r0, [r1, #8]
	ldr r0, [r5, #0x40]
	movs r1, #0
	strh r0, [r4, #0xc]
	ldr r0, [r4, #4]
	ldr r2, _08086980 @ =0xFFFFF600
	adds r0, r0, r2
	str r0, [r4, #4]
	strb r1, [r4, #0x14]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080869BC
	ldr r0, [r4, #0x28]
	cmp r0, r6
	bne _080869BC
	mov r3, r8
	str r3, [r4, #0x28]
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x10]
	b _080869BC
	.align 2, 0
_0808696C: .4byte gCurTask
_08086970: .4byte 0x0300000C
_08086974: .4byte gUnknown_03005A20
_08086978: .4byte 0xFFBFFFFF
_0808697C: .4byte sub_8087054
_08086980: .4byte 0xFFFFF600
_08086984:
	ldr r0, [r5, #0x40]
	adds r0, #0x10
	str r0, [r5, #0x40]
	ldr r1, [r5, #0x4c]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #8
	ldr r3, _080869F4 @ =0xFFFFFA00
	adds r0, r0, r3
	adds r0, r0, r1
	str r0, [r4]
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #8
	movs r2, #0x90
	lsls r2, r2, #6
	adds r0, r0, r2
	ldr r1, [r5, #0x4c]
	asrs r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8046CEC
	movs r0, #0x26
	strb r0, [r7]
_080869BC:
	ldr r0, _080869F8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08086A0C
	ldr r0, _080869FC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08086A00 @ =gUnknown_03001150
	adds r1, r1, r0
	ldr r3, _08086A04 @ =gCamera
	ldrh r0, [r1, #2]
	ldrh r2, [r3]
	subs r0, r0, r2
	adds r0, #5
	strh r0, [r6, #0x16]
	ldrh r0, [r1, #4]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	subs r0, #0x24
	strh r0, [r6, #0x18]
	ldr r4, _08086A08 @ =gUnknown_03005A20
	adds r2, r3, #0
	b _08086A2A
	.align 2, 0
_080869F4: .4byte 0xFFFFFA00
_080869F8: .4byte gGameMode
_080869FC: .4byte 0x04000128
_08086A00: .4byte gUnknown_03001150
_08086A04: .4byte gCamera
_08086A08: .4byte gUnknown_03005A20
_08086A0C:
	ldr r3, _08086A48 @ =gUnknown_03005A20
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r2, _08086A4C @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	adds r0, #5
	strh r0, [r6, #0x16]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	subs r0, #0x24
	strh r0, [r6, #0x18]
	adds r4, r3, #0
_08086A2A:
	ldr r0, [r4]
	asrs r0, r0, #8
	ldrh r1, [r2]
	subs r0, r0, r1
	adds r0, #5
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	subs r0, #0x24
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08086AD2
	.align 2, 0
_08086A48: .4byte gUnknown_03005A20
_08086A4C: .4byte gCamera
_08086A50:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08086A68
	ldr r0, [r4, #0x28]
	cmp r0, r6
	bne _08086A68
	movs r0, #0
	str r0, [r4, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r4, #0x10]
_08086A68:
	ldr r0, [r5, #0x40]
	adds r0, #0x10
	str r0, [r5, #0x40]
	ldr r1, [r5, #0x4c]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	asrs r1, r1, #8
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	ldr r2, _08086B24 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r6, #0x16]
	ldr r1, [r5, #0x4c]
	asrs r1, r1, #9
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r6, #0x18]
	ldrh r7, [r6, #0x16]
	ldrh r4, [r6, #0x18]
	ldr r0, [r5, #0x4c]
	asrs r0, r0, #8
	movs r1, #0xf0
	lsls r1, r1, #1
	cmp r0, r1
	ble _08086AD2
	movs r0, #0xb4
	bl m4aSongNumStop
	ldr r0, _08086B28 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08086B2C @ =sub_8087054
	str r0, [r1, #8]
	ldr r2, _08086B30 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08086AD2
	ldr r0, [r2, #0x28]
	cmp r0, r6
	bne _08086AD2
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_08086AD2:
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08086AF6
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08086AF6
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08086B34
_08086AF6:
	ldr r2, _08086B30 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08086B12
	ldr r0, [r2, #0x28]
	cmp r0, r6
	bne _08086B12
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_08086B12:
	ldrb r0, [r5, #8]
	ldr r2, [sp]
	strb r0, [r2]
	ldr r0, _08086B28 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08086B3A
	.align 2, 0
_08086B24: .4byte gCamera
_08086B28: .4byte gCurTask
_08086B2C: .4byte sub_8087054
_08086B30: .4byte gUnknown_03005A20
_08086B34:
	adds r0, r6, #0
	bl DisplaySprite
_08086B3A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8086B4C
sub_8086B4C: @ 0x08086B4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _08086C98 @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r7]
	str r1, [sp]
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp]
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08086C9C @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	subs r0, r1, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	subs r0, r6, r0
	strh r0, [r5, #0x18]
	ldrh r1, [r5, #0x16]
	str r1, [sp, #4]
	ldrh r0, [r5, #0x18]
	str r0, [sp, #8]
	ldr r4, _08086CA0 @ =gUnknown_03005A20
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	mov sb, r1
	ands r1, r0
	mov sb, r1
	cmp r1, #0
	bne _08086C44
	movs r1, #8
	mov sl, r1
	ands r0, r1
	cmp r0, #0
	beq _08086BC2
	ldr r0, [r4, #0x28]
	cmp r0, r5
	bne _08086C44
_08086BC2:
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_800CE34
	cmp r0, #0
	beq _08086C44
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08086BDC
	rsbs r0, r0, #0
_08086BDC:
	rsbs r0, r0, #0
	str r0, [r7, #0x40]
	mov r0, sb
	str r0, [r7, #0x44]
	adds r0, r6, #0
	adds r0, #0x24
	lsls r0, r0, #8
	str r0, [r4, #4]
	mov r1, r8
	lsls r0, r1, #8
	str r0, [r4]
	str r0, [r7, #0x48]
	adds r0, r4, #0
	bl sub_8046CEC
	movs r0, #0x80
	lsls r0, r0, #0xf
	str r0, [r4, #0x10]
	movs r0, #0
	strb r0, [r4, #0x14]
	mov r0, sb
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x26
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	movs r0, #0xb4
	bl m4aSongNumStart
	ldr r0, _08086C98 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08086CA4 @ =sub_8086CC0
	str r0, [r1, #8]
	ldr r0, [r4, #0x10]
	mov r1, sl
	orrs r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x28]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
_08086C44:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08086C6C
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08086C6C
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08086CA8
_08086C6C:
	ldr r2, _08086CA0 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08086C88
	ldr r0, [r2, #0x28]
	cmp r0, r5
	bne _08086C88
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_08086C88:
	ldrb r0, [r7, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _08086C98 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08086CAE
	.align 2, 0
_08086C98: .4byte gCurTask
_08086C9C: .4byte gCamera
_08086CA0: .4byte gUnknown_03005A20
_08086CA4: .4byte sub_8086CC0
_08086CA8:
	adds r0, r5, #0
	bl DisplaySprite
_08086CAE:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8086CC0
sub_8086CC0: @ 0x08086CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _08086E04 @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r2, _08086E08 @ =0x0300000C
	adds r7, r6, r2
	ldr r3, [r4]
	str r3, [sp]
	ldrb r0, [r4, #8]
	lsls r0, r0, #3
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, [sp]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sb, r2
	ldr r5, _08086E0C @ =gUnknown_03005A20
	ldr r0, [r5, #0x10]
	mov r8, r0
	movs r0, #0x80
	mov r1, r8
	ands r1, r0
	mov r8, r1
	cmp r1, #0
	beq _08086D14
	b _08086F10
_08086D14:
	movs r0, #0x40
	adds r0, r0, r5
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x26
	beq _08086D38
	adds r0, r5, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_8046CEC
	movs r0, #0x26
	mov r1, sb
	strb r0, [r1]
	ldr r3, [sp, #8]
	ldr r2, [sp, #4]
_08086D38:
	mov r0, r8
	strh r0, [r5, #0xa]
	ldr r1, _08086E10 @ =0x03000050
	adds r6, r6, r1
	ldrb r0, [r6]
	cmp r0, #0
	beq _08086E28
	ldr r0, [r4, #0x40]
	adds r0, #0x14
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x4c]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	lsls r0, r3, #0x10
	asrs r0, r0, #8
	ldr r3, _08086E14 @ =0xFFFFFA00
	adds r0, r0, r3
	adds r0, r0, r1
	str r0, [r5]
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r6, r0
	lsls r1, r1, #8
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #1
	adds r1, r1, r0
	str r1, [r5, #4]
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #9
	adds r0, r6, r0
	ldr r1, _08086E18 @ =gCamera
	mov sl, r1
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	adds r0, #0xf0
	strh r0, [r7, #0x18]
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #8
	cmp r0, #2
	ble _08086E7E
	movs r0, #0xb4
	bl m4aSongNumStop
	adds r0, r5, #0
	bl sub_8046CEC
	ldr r0, [r5, #0x10]
	ldr r1, _08086E1C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	movs r0, #4
	mov r2, sb
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r5, #0xe]
	movs r0, #0xe
	strb r0, [r5, #0xf]
	ldr r3, _08086E04 @ =gCurTask
	ldr r1, [r3]
	ldr r0, _08086E20 @ =sub_8087104
	str r0, [r1, #8]
	ldr r0, [r4, #0x40]
	strh r0, [r5, #0xc]
	ldr r0, [r5, #4]
	ldr r1, _08086E24 @ =0xFFFFF600
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #9
	adds r0, r6, r0
	mov r2, sl
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	adds r0, #0x78
	strh r0, [r7, #0x18]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08086E7E
	ldr r0, [r5, #0x28]
	cmp r0, r7
	bne _08086E7E
	mov r3, r8
	str r3, [r5, #0x28]
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0x10]
	b _08086E7E
	.align 2, 0
_08086E04: .4byte gCurTask
_08086E08: .4byte 0x0300000C
_08086E0C: .4byte gUnknown_03005A20
_08086E10: .4byte 0x03000050
_08086E14: .4byte 0xFFFFFA00
_08086E18: .4byte gCamera
_08086E1C: .4byte 0xFFBFFFFF
_08086E20: .4byte sub_8087104
_08086E24: .4byte 0xFFFFF600
_08086E28:
	ldr r0, [r4, #0x40]
	subs r0, #9
	str r0, [r4, #0x40]
	ldr r1, _08086EB4 @ =0xFFFFFA00
	cmp r0, r1
	bge _08086E36
	str r1, [r4, #0x40]
_08086E36:
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	lsls r0, r3, #0x10
	asrs r0, r0, #8
	ldr r3, _08086EB4 @ =0xFFFFFA00
	adds r0, r0, r3
	adds r0, r0, r1
	str r0, [r5]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	adds r1, #0x26
	lsls r1, r1, #8
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #1
	subs r1, r1, r0
	str r1, [r5, #4]
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #9
	subs r2, r2, r0
	ldr r0, _08086EB8 @ =gCamera
	ldrh r0, [r0, #2]
	subs r2, r2, r0
	strh r2, [r7, #0x18]
	ldr r0, [r5]
	ldr r1, [r4, #0x48]
	subs r0, r0, r1
	asrs r0, r0, #8
	movs r1, #0xf4
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08086E7E
	movs r0, #1
	strb r0, [r6]
_08086E7E:
	ldr r0, _08086EBC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08086ECC
	ldr r0, _08086EC0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08086EC4 @ =gUnknown_03001150
	adds r1, r1, r0
	ldr r3, _08086EB8 @ =gCamera
	ldrh r0, [r1, #2]
	ldrh r2, [r3]
	subs r0, r0, r2
	adds r0, #5
	strh r0, [r7, #0x16]
	ldrh r0, [r1, #4]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	subs r0, #0x24
	strh r0, [r7, #0x18]
	ldr r6, _08086EC8 @ =gUnknown_03005A20
	adds r2, r3, #0
	b _08086EEA
	.align 2, 0
_08086EB4: .4byte 0xFFFFFA00
_08086EB8: .4byte gCamera
_08086EBC: .4byte gGameMode
_08086EC0: .4byte 0x04000128
_08086EC4: .4byte gUnknown_03001150
_08086EC8: .4byte gUnknown_03005A20
_08086ECC:
	ldr r3, _08086F08 @ =gUnknown_03005A20
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r2, _08086F0C @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	adds r0, #5
	strh r0, [r7, #0x16]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	subs r0, #0x24
	strh r0, [r7, #0x18]
	adds r6, r3, #0
_08086EEA:
	ldr r0, [r6]
	asrs r0, r0, #8
	ldrh r1, [r2]
	subs r0, r0, r1
	adds r0, #5
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	subs r0, #0x24
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08086FDA
	.align 2, 0
_08086F08: .4byte gUnknown_03005A20
_08086F0C: .4byte gCamera
_08086F10:
	ldr r0, _08086F70 @ =0x03000050
	adds r6, r6, r0
	ldrb r0, [r6]
	cmp r0, #0
	beq _08086F80
	ldr r0, [r4, #0x40]
	adds r0, #0x14
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x4c]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	asrs r1, r1, #9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	ldr r1, _08086F74 @ =gCamera
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	adds r0, #0xf0
	strh r0, [r7, #0x18]
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #8
	lsls r3, r3, #0x10
	mov r8, r3
	cmp r0, #2
	ble _08086FC4
	movs r0, #0xb4
	bl m4aSongNumStop
	ldr r2, _08086F78 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _08086F7C @ =sub_8087104
	str r0, [r1, #8]
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08086FC4
	ldr r0, [r5, #0x28]
	cmp r0, r7
	bne _08086FC4
	movs r0, #0
	str r0, [r5, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r5, #0x10]
	b _08086FC4
	.align 2, 0
_08086F70: .4byte 0x03000050
_08086F74: .4byte gCamera
_08086F78: .4byte gCurTask
_08086F7C: .4byte sub_8087104
_08086F80:
	ldr r0, [r4, #0x40]
	subs r0, #9
	str r0, [r4, #0x40]
	ldr r1, _0808702C @ =0xFFFFFA00
	cmp r0, r1
	bge _08086F8E
	str r1, [r4, #0x40]
_08086F8E:
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x4c]
	lsls r2, r3, #0x10
	asrs r0, r2, #8
	adds r0, r0, r1
	ldr r1, [r4, #0x48]
	subs r0, r0, r1
	asrs r0, r0, #8
	movs r1, #0xf4
	rsbs r1, r1, #0
	mov r8, r2
	cmp r0, r1
	bge _08086FB0
	movs r0, #1
	strb r0, [r6]
_08086FB0:
	ldr r1, [r4, #0x4c]
	asrs r1, r1, #9
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	ldr r1, _08087030 @ =gCamera
	ldrh r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r7, #0x18]
_08086FC4:
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #8
	mov r2, r8
	asrs r1, r2, #0x10
	adds r1, r1, r0
	ldr r0, _08087030 @ =gCamera
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r7, #0x16]
	ldrh r5, [r7, #0x16]
	ldrh r2, [r7, #0x18]
_08086FDA:
	lsls r0, r5, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x10
	adds r0, r0, r3
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08086FFE
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08086FFE
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808703C
_08086FFE:
	ldr r2, _08087034 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808701A
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _0808701A
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_0808701A:
	ldrb r0, [r4, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _08087038 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08087042
	.align 2, 0
_0808702C: .4byte 0xFFFFFA00
_08087030: .4byte gCamera
_08087034: .4byte gUnknown_03005A20
_08087038: .4byte gCurTask
_0808703C:
	adds r0, r7, #0
	bl DisplaySprite
_08087042:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8087054
sub_8087054: @ 0x08087054
	push {r4, r5, r6, r7, lr}
	ldr r4, _080870EC @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r6]
	mov ip, r1
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _080870F0 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	movs r7, #0xf0
	lsls r7, r7, #1
	adds r0, r2, r7
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	adds r3, r1, #0
	adds r3, #0xf0
	strh r3, [r5, #0x18]
	movs r1, #0x98
	lsls r1, r1, #2
	adds r0, r2, r1
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080870C2
	movs r7, #0x18
	ldrsh r0, [r5, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _080870C2
	lsls r1, r3, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080870F8
_080870C2:
	ldr r2, _080870F4 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080870DE
	ldr r0, [r2, #0x28]
	cmp r0, r5
	bne _080870DE
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_080870DE:
	ldrb r0, [r6, #8]
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _080870FE
	.align 2, 0
_080870EC: .4byte gCurTask
_080870F0: .4byte gCamera
_080870F4: .4byte gUnknown_03005A20
_080870F8:
	adds r0, r5, #0
	bl DisplaySprite
_080870FE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8087104
sub_8087104: @ 0x08087104
	push {r4, r5, r6, r7, lr}
	ldr r4, _0808718C @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r7, [r6]
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r7, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08087190 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	adds r2, #0xf0
	strh r2, [r5, #0x18]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08087164
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08087164
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _08087198
_08087164:
	ldr r2, _08087194 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08087180
	ldr r0, [r2, #0x28]
	cmp r0, r5
	bne _08087180
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_08087180:
	ldrb r0, [r6, #8]
	strb r0, [r7]
	ldr r0, [r4]
	bl TaskDestroy
	b _0808719E
	.align 2, 0
_0808718C: .4byte gCurTask
_08087190: .4byte gCamera
_08087194: .4byte gUnknown_03005A20
_08087198:
	adds r0, r5, #0
	bl DisplaySprite
_0808719E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80871A4
sub_80871A4: @ 0x080871A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _080872E0 @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r7]
	str r1, [sp]
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp]
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080872E4 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	subs r0, r1, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	subs r0, r6, r0
	strh r0, [r5, #0x18]
	ldr r4, _080872E8 @ =gUnknown_03005A20
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	mov sb, r1
	ands r1, r0
	mov sb, r1
	cmp r1, #0
	bne _08087290
	movs r1, #8
	mov sl, r1
	ands r0, r1
	cmp r0, #0
	beq _08087212
	ldr r0, [r4, #0x28]
	cmp r0, r5
	bne _08087290
_08087212:
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_800CE34
	cmp r0, #0
	beq _08087290
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0808722C
	rsbs r0, r0, #0
_0808722C:
	str r0, [r7, #0x40]
	mov r0, sb
	str r0, [r7, #0x44]
	adds r0, r6, #0
	adds r0, #0x26
	lsls r0, r0, #8
	str r0, [r4, #4]
	mov r1, r8
	lsls r0, r1, #8
	str r0, [r4]
	str r0, [r7, #0x48]
	movs r0, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_8046CEC
	ldr r0, _080872EC @ =0x00400001
	str r0, [r4, #0x10]
	mov r0, sb
	strh r0, [r4, #0xa]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x26
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	movs r0, #0xb4
	bl m4aSongNumStart
	ldr r0, _080872E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080872F0 @ =sub_808730C
	str r0, [r1, #8]
	ldr r0, [r4, #0x10]
	mov r1, sl
	orrs r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x28]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
_08087290:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080872B4
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080872B4
	movs r0, #0x18
	ldrsh r1, [r5, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080872F4
_080872B4:
	ldr r2, _080872E8 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080872D0
	ldr r0, [r2, #0x28]
	cmp r0, r5
	bne _080872D0
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_080872D0:
	ldrb r0, [r7, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _080872E0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080872FA
	.align 2, 0
_080872E0: .4byte gCurTask
_080872E4: .4byte gCamera
_080872E8: .4byte gUnknown_03005A20
_080872EC: .4byte 0x00400001
_080872F0: .4byte sub_808730C
_080872F4:
	adds r0, r5, #0
	bl DisplaySprite
_080872FA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808730C
sub_808730C: @ 0x0808730C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _080873F4 @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _080873F8 @ =0x0300000C
	adds r7, r1, r2
	ldr r6, [r5]
	str r6, [sp]
	ldrb r0, [r5, #8]
	lsls r0, r0, #3
	ldrh r1, [r5, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldrh r1, [r5, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r4, _080873FC @ =gUnknown_03005A20
	ldr r6, [r4, #0x10]
	movs r0, #0x80
	ands r6, r0
	cmp r6, #0
	beq _0808735A
	b _080874D8
_0808735A:
	movs r0, #0x40
	adds r0, r0, r4
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x26
	beq _08087376
	adds r0, r4, #0
	bl sub_8046CEC
	movs r0, #0x26
	mov r1, r8
	strb r0, [r1]
_08087376:
	strh r6, [r4, #0xa]
	ldr r0, [r5, #0x48]
	ldr r1, [r4]
	subs r0, r0, r1
	asrs r0, r0, #8
	movs r1, #0xf0
	lsls r1, r1, #1
	cmp r0, r1
	ble _0808740C
	movs r0, #0xb4
	bl m4aSongNumStop
	adds r0, r4, #0
	bl sub_8046CEC
	ldr r0, [r4, #0x10]
	ldr r1, _08087400 @ =0xFFBFFFFF
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x10]
	movs r0, #4
	mov r2, r8
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_804516C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #0xe
	strb r0, [r4, #0xf]
	ldr r0, _080873F4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08087404 @ =sub_80875C4
	str r0, [r1, #8]
	ldr r0, [r5, #0x40]
	rsbs r0, r0, #0
	strh r0, [r4, #0xc]
	ldr r0, [r4, #4]
	ldr r1, _08087408 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08087446
	ldr r0, [r4, #0x28]
	cmp r0, r7
	bne _08087446
	str r6, [r4, #0x28]
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x10]
	b _08087446
	.align 2, 0
_080873F4: .4byte gCurTask
_080873F8: .4byte 0x0300000C
_080873FC: .4byte gUnknown_03005A20
_08087400: .4byte 0xFFBFFFFF
_08087404: .4byte sub_80875C4
_08087408: .4byte 0xFFFFFE00
_0808740C:
	ldr r0, [r5, #0x40]
	adds r0, #0x10
	str r0, [r5, #0x40]
	ldr r1, [r5, #0x4c]
	adds r1, r1, r0
	str r1, [r5, #0x4c]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, #6
	lsls r0, r0, #8
	subs r0, r0, r1
	str r0, [r4]
	mov r6, sl
	lsls r0, r6, #0x10
	asrs r0, r0, #8
	movs r1, #0x98
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r1, [r5, #0x4c]
	asrs r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8046CEC
	movs r0, #0x26
	mov r2, r8
	strb r0, [r2]
_08087446:
	ldr r0, _0808747C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08087490
	ldr r0, _08087480 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08087484 @ =gUnknown_03001150
	adds r1, r1, r0
	ldr r3, _08087488 @ =gCamera
	ldrh r0, [r1, #2]
	ldrh r2, [r3]
	subs r0, r0, r2
	subs r0, #4
	strh r0, [r7, #0x16]
	ldrh r0, [r1, #4]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	subs r0, #0x24
	strh r0, [r7, #0x18]
	ldr r4, _0808748C @ =gUnknown_03005A20
	adds r2, r3, #0
	b _080874AE
	.align 2, 0
_0808747C: .4byte gGameMode
_08087480: .4byte 0x04000128
_08087484: .4byte gUnknown_03001150
_08087488: .4byte gCamera
_0808748C: .4byte gUnknown_03005A20
_08087490:
	ldr r3, _080874D0 @ =gUnknown_03005A20
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r2, _080874D4 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	subs r0, #4
	strh r0, [r7, #0x16]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	subs r0, #0x24
	strh r0, [r7, #0x18]
	adds r4, r3, #0
_080874AE:
	ldr r0, [r4]
	asrs r0, r0, #8
	ldrh r1, [r2]
	subs r0, r0, r1
	subs r0, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	subs r0, #0x24
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _0808754A
	.align 2, 0
_080874D0: .4byte gUnknown_03005A20
_080874D4: .4byte gCamera
_080874D8:
	ldr r1, [r5, #0x40]
	adds r1, #0x10
	str r1, [r5, #0x40]
	ldr r0, [r5, #0x4c]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	asrs r0, r0, #8
	mov r6, sb
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	ldr r3, _0808759C @ =gCamera
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	ldr r1, [r5, #0x4c]
	asrs r1, r1, #9
	mov r6, sl
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r7, #0x18]
	ldrh r6, [r7, #0x16]
	ldrh r0, [r7, #0x18]
	mov r8, r0
	lsls r2, r2, #8
	ldr r0, [r5, #0x4c]
	subs r2, r2, r0
	ldr r0, [r5, #0x48]
	subs r0, r0, r2
	asrs r0, r0, #8
	movs r1, #0xf0
	lsls r1, r1, #1
	cmp r0, r1
	ble _0808754A
	movs r0, #0xb4
	bl m4aSongNumStop
	ldr r2, _080875A0 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _080875A4 @ =sub_80875C4
	str r0, [r1, #8]
	ldr r1, [r4, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808754A
	ldr r0, [r4, #0x28]
	cmp r0, r7
	bne _0808754A
	movs r0, #0
	str r0, [r4, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r4, #0x10]
_0808754A:
	lsls r0, r6, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x10
	adds r0, r0, r6
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08087570
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08087570
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080875AC
_08087570:
	ldr r2, _080875A8 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808758C
	ldr r0, [r2, #0x28]
	cmp r0, r7
	bne _0808758C
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_0808758C:
	ldrb r0, [r5, #8]
	ldr r2, [sp]
	strb r0, [r2]
	ldr r0, _080875A0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080875B2
	.align 2, 0
_0808759C: .4byte gCamera
_080875A0: .4byte gCurTask
_080875A4: .4byte sub_80875C4
_080875A8: .4byte gUnknown_03005A20
_080875AC:
	adds r0, r7, #0
	bl DisplaySprite
_080875B2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80875C4
sub_80875C4: @ 0x080875C4
	push {r4, r5, r6, r7, lr}
	ldr r4, _08087658 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r6]
	mov ip, r1
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0808765C @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	ldr r7, _08087660 @ =0xFFFFFE20
	adds r0, r2, r7
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	adds r3, r1, #0
	adds r3, #0xf0
	strh r3, [r5, #0x18]
	ldr r1, _08087664 @ =0xFFFFFEA0
	adds r0, r2, r1
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808762E
	movs r7, #0x18
	ldrsh r0, [r5, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _0808762E
	lsls r1, r3, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0808766C
_0808762E:
	ldr r2, _08087668 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808764A
	ldr r0, [r2, #0x28]
	cmp r0, r5
	bne _0808764A
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r2, #0x10]
_0808764A:
	ldrb r0, [r6, #8]
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _08087672
	.align 2, 0
_08087658: .4byte gCurTask
_0808765C: .4byte gCamera
_08087660: .4byte 0xFFFFFE20
_08087664: .4byte 0xFFFFFEA0
_08087668: .4byte gUnknown_03005A20
_0808766C:
	adds r0, r5, #0
	bl DisplaySprite
_08087672:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8087678
sub_8087678: @ 0x08087678
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable076
CreateEntity_Interactable076: @ 0x0808768C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08087728 @ =sub_8087938
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808772C @ =sub_8088368
	str r1, [sp]
	movs r1, #0xb8
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldr r1, _08087730 @ =0x0300000C
	adds r1, r1, r3
	mov sb, r1
	ldr r2, _08087734 @ =0x0300003C
	adds r2, r2, r3
	mov sl, r2
	ldr r4, _08087738 @ =0x0300006C
	adds r7, r3, r4
	adds r0, #0x9c
	adds r0, r3, r0
	str r0, [sp, #0x14]
	movs r1, #0
	movs r2, #0
	mov r4, sp
	ldrh r4, [r4, #4]
	strh r4, [r5, #4]
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r5, #6]
	str r6, [r5]
	ldrb r0, [r6]
	strb r0, [r5, #8]
	mov r4, r8
	strb r4, [r5, #9]
	ldr r4, _0808773C @ =0x030000B4
	adds r0, r3, r4
	strb r1, [r0]
	subs r4, #0xc
	adds r0, r3, r4
	str r2, [r0]
	adds r4, #4
	adds r0, r3, r4
	str r2, [r0]
	ldr r2, _08087740 @ =0x030000B0
	adds r0, r3, r2
	strb r1, [r0]
	adds r4, #5
	adds r0, r3, r4
	strb r1, [r0]
	movs r1, #3
	ldrsb r1, [r6, r1]
	cmp r1, #0
	beq _08087748
	ldr r0, _08087744 @ =0x030000B2
	adds r1, r3, r0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	b _0808774E
	.align 2, 0
_08087728: .4byte sub_8087938
_0808772C: .4byte sub_8088368
_08087730: .4byte 0x0300000C
_08087734: .4byte 0x0300003C
_08087738: .4byte 0x0300006C
_0808773C: .4byte 0x030000B4
_08087740: .4byte 0x030000B0
_08087744: .4byte 0x030000B2
_08087748:
	ldr r2, _080877E4 @ =0x030000B2
	adds r0, r3, r2
	strh r1, [r0]
_0808774E:
	ldrb r0, [r6]
	lsls r0, r0, #3
	ldr r3, [sp, #4]
	lsls r3, r3, #8
	str r3, [sp, #0x18]
	adds r0, r0, r3
	ldr r2, _080877E8 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	movs r4, #0
	mov r8, r4
	mov r1, sb
	strh r0, [r1, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldr r3, [sp, #8]
	lsls r4, r3, #8
	adds r0, r0, r4
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	mov r1, sb
	strh r0, [r1, #0x18]
	movs r0, #0xfe
	strb r0, [r6]
	movs r0, #0x10
	bl VramMalloc
	mov r2, sb
	str r0, [r2, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	movs r3, #0
	strh r3, [r2, #8]
	movs r0, #0xfc
	lsls r0, r0, #1
	strh r0, [r2, #0xa]
	mov r1, sb
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	strh r3, [r2, #0x14]
	strh r3, [r2, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, sb
	adds r0, #0x25
	mov r1, r8
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x28]
	movs r0, #3
	ldrsb r0, [r6, r0]
	ldr r2, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r4, [sp, #0x20]
	cmp r0, #0
	beq _080877F0
	ldr r2, _080877EC @ =gUnknown_0300504C
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xc
	movs r1, #0x7e
	orrs r0, r1
	mov r3, sb
	str r0, [r3, #0x10]
	b _08087804
	.align 2, 0
_080877E4: .4byte 0x030000B2
_080877E8: .4byte gCamera
_080877EC: .4byte gUnknown_0300504C
_080877F0:
	ldr r2, _0808792C @ =gUnknown_0300504C
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xc
	movs r1, #0x7f
	orrs r0, r1
	mov r4, sb
	str r0, [r4, #0x10]
_08087804:
	ldrb r0, [r6]
	lsls r0, r0, #3
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	ldr r2, _08087930 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r7, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldr r3, [sp, #0x20]
	adds r0, r0, r3
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	subs r0, #8
	strh r0, [r7, #0x18]
	movs r0, #1
	bl VramMalloc
	str r0, [r7, #4]
	movs r4, #0x90
	lsls r4, r4, #3
	strh r4, [r7, #0x1a]
	movs r0, #0
	strh r0, [r7, #8]
	ldr r1, _08087934 @ =0x000001F7
	strh r1, [r7, #0xa]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #2
	strb r0, [r1]
	movs r2, #0
	strh r2, [r7, #0x14]
	strh r2, [r7, #0x1c]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x22
	movs r3, #0x10
	mov sb, r3
	mov r4, sb
	strb r4, [r0]
	adds r0, #3
	movs r1, #0
	strb r1, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	str r2, [r7, #0x28]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r7, #0x10]
	ldrb r0, [r6]
	lsls r0, r0, #3
	ldr r4, [sp, #0x1c]
	adds r0, r0, r4
	ldr r2, _08087930 @ =gCamera
	ldrh r1, [r2]
	subs r0, r0, r1
	mov r3, sl
	strh r0, [r3, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldr r4, [sp, #0x20]
	adds r0, r0, r4
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r3, #0x18]
	movs r0, #1
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #4]
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r1, #0x1a]
	movs r3, #0
	strh r3, [r1, #8]
	ldr r4, _08087934 @ =0x000001F7
	strh r4, [r1, #0xa]
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	mov r0, sl
	strh r3, [r0, #0x14]
	strh r3, [r0, #0x1c]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x22
	mov r1, sb
	strb r1, [r0]
	adds r0, #3
	movs r2, #0
	strb r2, [r0]
	mov r3, r8
	mov r4, sl
	str r3, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x10]
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r6, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	movs r4, #0
	ldr r3, [sp, #0x14]
	strh r4, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	ldr r3, _08087930 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldr r4, [sp, #0x14]
	strh r1, [r4, #6]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r4, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, sl
	bl UpdateSpriteAnimation
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808792C: .4byte gUnknown_0300504C
_08087930: .4byte gCamera
_08087934: .4byte 0x000001F7

	thumb_func_start sub_8087938
sub_8087938: @ 0x08087938
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	ldr r0, _080879D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	str r0, [sp, #0x24]
	ldr r0, _080879DC @ =0x0300000C
	adds r0, r0, r4
	mov sb, r0
	ldr r1, _080879E0 @ =0x0300009C
	adds r1, r4, r1
	str r1, [sp]
	ldr r2, _080879E4 @ =0x0300003C
	adds r7, r4, r2
	ldr r3, _080879E8 @ =0x0300006C
	adds r3, r3, r4
	mov r8, r3
	ldr r5, [sp, #0x24]
	ldr r5, [r5]
	str r5, [sp, #0x20]
	movs r0, #0
	str r0, [sp, #0x18]
	movs r1, #0
	str r1, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	ldrb r0, [r2, #8]
	lsls r0, r0, #3
	ldrh r1, [r2, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r3, [sp, #4]
	str r3, [sp, #8]
	str r0, [sp, #0x10]
	ldr r0, _080879EC @ =gUnknown_03005120
	ldr r0, [r0]
	lsls r0, r0, #3
	movs r1, #3
	bl Div
	ldr r5, _080879F0 @ =0x030000B2
	adds r4, r4, r5
	ldrh r1, [r4]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	bl Mod
	adds r5, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r5, r0
	bls _080879FC
	ldr r1, _080879F4 @ =0xFFFFFF00
	adds r5, r5, r1
	subs r5, r0, r5
	ldr r0, _080879F8 @ =gSineTable
	lsls r1, r5, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsrs r2, r1, #8
	adds r3, r0, #0
	b _08087A10
	.align 2, 0
_080879D8: .4byte gCurTask
_080879DC: .4byte 0x0300000C
_080879E0: .4byte 0x0300009C
_080879E4: .4byte 0x0300003C
_080879E8: .4byte 0x0300006C
_080879EC: .4byte gUnknown_03005120
_080879F0: .4byte 0x030000B2
_080879F4: .4byte 0xFFFFFF00
_080879F8: .4byte gSineTable
_080879FC:
	ldr r1, _08087A2C @ =gSineTable
	lsls r0, r5, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, r1, #0
_08087A10:
	adds r0, r5, #0
	subs r0, #0x7e
	ldr r1, _08087A30 @ =0x000001FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x17
	ands r5, r1
	cmp r5, #0xff
	bhi _08087A34
	lsrs r5, r5, #1
	b _08087A3E
	.align 2, 0
_08087A2C: .4byte gSineTable
_08087A30: .4byte 0x000001FF
_08087A34:
	movs r1, #0x80
	lsls r1, r1, #2
	subs r0, r1, r5
	lsrs r0, r0, #1
	subs r5, r1, r0
_08087A3E:
	lsls r5, r5, #1
	mov ip, r5
	ldr r0, _08087B24 @ =0x000003FF
	ands r0, r5
	lsls r1, r0, #1
	adds r1, r1, r3
	movs r5, #0
	ldrsh r4, [r1, r5]
	str r4, [sp, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	mov sl, r1
	ldr r6, _08087B28 @ =gCamera
	ldrh r0, [r6]
	ldr r5, [sp, #4]
	lsls r4, r5, #0x10
	asrs r2, r4, #0x10
	subs r0, r2, r0
	mov r1, sb
	strh r0, [r1, #0x16]
	ldrh r0, [r6, #2]
	ldr r5, [sp, #0xc]
	lsls r3, r5, #0x10
	asrs r1, r3, #0x10
	subs r0, r1, r0
	mov r5, sb
	strh r0, [r5, #0x18]
	ldrh r0, [r6]
	subs r2, r2, r0
	mov r0, r8
	strh r2, [r0, #0x16]
	ldrh r0, [r6, #2]
	subs r1, r1, r0
	subs r1, #8
	mov r2, r8
	strh r1, [r2, #0x18]
	ldr r5, [sp, #8]
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	str r4, [sp, #0x2c]
	str r3, [sp, #0x30]
	mov r3, ip
	str r3, [sp, #0x28]
	cmp r2, r0
	bgt _08087AD8
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08087AD8
	ldr r4, [sp, #0x10]
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	movs r5, #2
	ldrsh r1, [r6, r5]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _08087AD8
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08087AD8
	b _08087CE4
_08087AD8:
	mov r4, sb
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08087B00
	movs r5, #0x18
	ldrsh r0, [r4, r5]
	adds r0, #0x80
	cmp r0, #0
	blt _08087B00
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	bgt _08087B00
	b _08087CE4
_08087B00:
	movs r4, #0
	ldr r5, _08087B2C @ =gUnknown_03005AB0
	ldr r6, _08087B30 @ =gUnknown_03005A20
	movs r1, #0x59
	adds r1, r1, r5
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r5
	mov r8, r2
	movs r7, #0
_08087B14:
	cmp r4, #0
	beq _08087B34
	ldr r0, [r5, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08087B40
	b _08087CB0
	.align 2, 0
_08087B24: .4byte 0x000003FF
_08087B28: .4byte gCamera
_08087B2C: .4byte gUnknown_03005AB0
_08087B30: .4byte gUnknown_03005A20
_08087B34:
	ldr r0, [r6, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08087B40
	b _08087CB0
_08087B40:
	cmp r4, #0
	beq _08087B4C
	ldr r0, [r5, #0x28]
	cmp r0, sb
	beq _08087B54
	b _08087CB0
_08087B4C:
	ldr r0, [r6, #0x28]
	cmp r0, sb
	beq _08087B54
	b _08087CB0
_08087B54:
	ldr r0, _08087B70 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08087B5C
	ldr r0, _08087B74 @ =gUnknown_03005AB0
_08087B5C:
	bl sub_8046CEC
	cmp r4, #0
	beq _08087B7C
	ldr r0, [r5, #0x10]
	ldr r1, _08087B78 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08087B84
	.align 2, 0
_08087B70: .4byte gUnknown_03005A20
_08087B74: .4byte gUnknown_03005AB0
_08087B78: .4byte 0xFFBFFFFF
_08087B7C:
	ldr r0, [r6, #0x10]
	ldr r1, _08087B94 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_08087B84:
	ldr r3, _08087B98 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08087B9C
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08087BA4
	.align 2, 0
_08087B94: .4byte 0xFFBFFFFF
_08087B98: .4byte gUnknown_03005A20
_08087B9C:
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
_08087BA4:
	cmp r4, #0
	beq _08087BB4
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _08087BBE
_08087BB4:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_08087BBE:
	cmp r4, #0
	beq _08087BC6
	str r7, [r5, #0x28]
	b _08087BC8
_08087BC6:
	str r4, [r3, #0x28]
_08087BC8:
	cmp r4, #0
	beq _08087BD0
	strh r7, [r5, #8]
	b _08087BD2
_08087BD0:
	strh r4, [r3, #8]
_08087BD2:
	cmp r4, #0
	beq _08087BDA
	strh r7, [r5, #0xc]
	b _08087BDC
_08087BDA:
	strh r4, [r3, #0xc]
_08087BDC:
	cmp r4, #0
	beq _08087BE4
	strh r7, [r5, #0xa]
	b _08087BE6
_08087BE4:
	strh r4, [r3, #0xa]
_08087BE6:
	cmp r4, #0
	beq _08087BF6
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _08087C04
	b _08087C5C
_08087BF6:
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	beq _08087C5C
_08087C04:
	cmp r4, #0
	beq _08087C12
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08087C1A
_08087C12:
	ldr r0, [r6, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
_08087C1A:
	cmp r4, #0
	beq _08087C26
	movs r0, #5
	mov r2, r8
	strb r0, [r2]
	b _08087C2E
_08087C26:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
_08087C2E:
	ldr r0, _08087C54 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08087C36
	ldr r0, _08087C58 @ =gUnknown_03005AB0
_08087C36:
	movs r1, #9
	bl sub_804516C
	ldr r1, _08087C54 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08087C44
	ldr r1, _08087C58 @ =gUnknown_03005AB0
_08087C44:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08087C54 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08087C50
	ldr r1, _08087C58 @ =gUnknown_03005AB0
_08087C50:
	movs r0, #9
	b _08087CAE
	.align 2, 0
_08087C54: .4byte gUnknown_03005A20
_08087C58: .4byte gUnknown_03005AB0
_08087C5C:
	cmp r4, #0
	beq _08087C6C
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _08087C76
_08087C6C:
	ldr r0, [r6, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_08087C76:
	cmp r4, #0
	beq _08087C82
	movs r0, #0x55
	mov r3, r8
	strb r0, [r3]
	b _08087C8A
_08087C82:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x55
	strb r0, [r1]
_08087C8A:
	ldr r0, _08087CD4 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08087C92
	ldr r0, _08087CD8 @ =gUnknown_03005AB0
_08087C92:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _08087CD4 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08087CA0
	ldr r1, _08087CD8 @ =gUnknown_03005AB0
_08087CA0:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08087CD4 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08087CAC
	ldr r1, _08087CD8 @ =gUnknown_03005AB0
_08087CAC:
	movs r0, #0xe
_08087CAE:
	strb r0, [r1, #0xf]
_08087CB0:
	adds r4, #1
	ldr r0, _08087CDC @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _08087CC0
	b _08087B14
_08087CC0:
	ldr r4, [sp, #0x24]
	ldrb r0, [r4, #8]
	ldr r5, [sp, #0x20]
	strb r0, [r5]
	ldr r0, _08087CE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08088350
	.align 2, 0
_08087CD4: .4byte gUnknown_03005A20
_08087CD8: .4byte gUnknown_03005AB0
_08087CDC: .4byte gUnknown_03005088
_08087CE0: .4byte gCurTask
_08087CE4:
	mov r0, r8
	bl DisplaySprite
	movs r4, #0
	ldr r0, [sp, #0x24]
	adds r0, #0xb4
	mov r8, r0
	movs r5, #0x5a
	ldr r6, _08087D40 @ =gCamera
_08087CF6:
	ldr r1, [sp, #0x14]
	adds r0, r1, #0
	muls r0, r5, r0
	movs r1, #0x64
	bl Div
	ldr r2, [sp, #0x18]
	adds r2, r2, r0
	str r2, [sp, #0x18]
	mov r0, sl
	muls r0, r5, r0
	movs r1, #0x64
	bl Div
	ldr r3, [sp, #0x1c]
	adds r3, r3, r0
	str r3, [sp, #0x1c]
	ldrh r1, [r6]
	ldr r2, [sp, #0x2c]
	asrs r0, r2, #0x10
	subs r0, r0, r1
	ldr r3, [sp, #0x18]
	asrs r1, r3, #0xa
	adds r0, r0, r1
	strh r0, [r7, #0x16]
	ldrh r1, [r6, #2]
	ldr r2, [sp, #0x30]
	asrs r0, r2, #0x10
	subs r0, r0, r1
	ldr r3, [sp, #0x1c]
	asrs r1, r3, #0xa
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	cmp r4, #4
	bne _08087D44
	movs r0, #0xc0
	b _08087D48
	.align 2, 0
_08087D40: .4byte gCamera
_08087D44:
	movs r0, #0x90
	lsls r0, r0, #3
_08087D48:
	strh r0, [r7, #0x1a]
	adds r0, r7, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08087CF6
	movs r4, #0x6e
	ldr r5, [sp, #0x14]
	adds r0, r5, #0
	muls r0, r4, r0
	movs r1, #0x64
	bl Div
	ldr r1, [sp, #0x18]
	adds r1, r1, r0
	str r1, [sp, #0x18]
	mov r0, sl
	muls r0, r4, r0
	movs r1, #0x64
	bl Div
	ldr r2, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x1c]
	movs r5, #0
	ldr r4, _08087D90 @ =gUnknown_03005AB0
	ldr r6, _08087D94 @ =gUnknown_03005A20
	mov sl, r5
	movs r7, #1
_08087D88:
	cmp r5, #0
	beq _08087D98
	ldr r0, [r4, #0x10]
	b _08087D9A
	.align 2, 0
_08087D90: .4byte gUnknown_03005AB0
_08087D94: .4byte gUnknown_03005A20
_08087D98:
	ldr r0, [r6, #0x10]
_08087D9A:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08087DA4
	b _08088230
_08087DA4:
	mov r3, r8
	ldrb r0, [r3]
	asrs r0, r5
	ands r0, r7
	cmp r0, #0
	bne _08087DB2
	b _080880B2
_08087DB2:
	ldr r0, [sp, #0x18]
	movs r1, #0xc3
	lsls r1, r1, #2
	bl Div
	ldr r2, [sp, #0x2c]
	asrs r1, r2, #0x10
	adds r1, r1, r0
	subs r1, #4
	lsls r1, r1, #8
	cmp r5, #0
	beq _08087DCE
	str r1, [r4]
	b _08087DD0
_08087DCE:
	str r1, [r6]
_08087DD0:
	cmp r5, #0
	beq _08087DDE
	ldr r0, [r4, #0x10]
	ands r0, r7
	cmp r0, #0
	bne _08087DE6
	b _08087E00
_08087DDE:
	ldr r0, [r6, #0x10]
	ands r0, r7
	cmp r0, #0
	beq _08087E00
_08087DE6:
	cmp r5, #0
	beq _08087DF6
	ldr r0, [r4]
	movs r3, #0xa0
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r4]
	b _08087E00
_08087DF6:
	ldr r0, [r6]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r6]
_08087E00:
	ldr r0, [sp, #0x1c]
	movs r1, #0xaa
	lsls r1, r1, #2
	bl Div
	ldr r2, [sp, #0x30]
	asrs r1, r2, #0x10
	adds r1, r1, r0
	adds r1, #2
	lsls r1, r1, #8
	cmp r5, #0
	beq _08087E1C
	str r1, [r4, #4]
	b _08087E1E
_08087E1C:
	str r1, [r6, #4]
_08087E1E:
	cmp r5, #0
	beq _08087E28
	mov r3, sl
	strb r3, [r4, #0x14]
	b _08087E2A
_08087E28:
	strb r5, [r6, #0x14]
_08087E2A:
	ldr r0, _08087E3C @ =gUnknown_030060E0
	ldrh r1, [r0]
	cmp r5, #0
	beq _08087E40
	ldrh r0, [r4, #0x3a]
	ands r0, r1
	cmp r0, #0
	bne _08087E4A
	b _080880A4
	.align 2, 0
_08087E3C: .4byte gUnknown_030060E0
_08087E40:
	ldrh r0, [r6, #0x3a]
	ands r0, r1
	cmp r0, #0
	bne _08087E4A
	b _080880A4
_08087E4A:
	ldr r0, _08087E64 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08087E52
	ldr r0, _08087E68 @ =gUnknown_03005AB0
_08087E52:
	bl sub_8046CEC
	cmp r5, #0
	beq _08087E70
	ldr r0, [r4, #0x10]
	ldr r1, _08087E6C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _08087E78
	.align 2, 0
_08087E64: .4byte gUnknown_03005A20
_08087E68: .4byte gUnknown_03005AB0
_08087E6C: .4byte 0xFFBFFFFF
_08087E70:
	ldr r0, [r6, #0x10]
	ldr r1, _08087E88 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_08087E78:
	ldr r3, _08087E8C @ =gUnknown_03005A20
	cmp r5, #0
	beq _08087E90
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08087E98
	.align 2, 0
_08087E88: .4byte 0xFFBFFFFF
_08087E8C: .4byte gUnknown_03005A20
_08087E90:
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
_08087E98:
	cmp r5, #0
	beq _08087EA8
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08087EB2
_08087EA8:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r6, #0x10]
_08087EB2:
	cmp r5, #0
	beq _08087EBE
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r4, #0xa]
	b _08087EC4
_08087EBE:
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r3, #0xa]
_08087EC4:
	cmp r5, #0
	beq _08087ECE
	mov r0, sl
	str r0, [r4, #0x28]
	b _08087ED0
_08087ECE:
	str r5, [r3, #0x28]
_08087ED0:
	cmp r5, #0
	beq _08087EE0
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _08087EEA
_08087EE0:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_08087EEA:
	cmp r5, #0
	beq _08087EF8
	ldr r2, _08087EF4 @ =gUnknown_03005AD6
	b _08087EFC
	.align 2, 0
_08087EF4: .4byte gUnknown_03005AD6
_08087EF8:
	adds r2, r3, #0
	adds r2, #0x26
_08087EFC:
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	cmp r5, #0
	beq _08087F14
	ldrh r0, [r4, #0x38]
	movs r1, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08087F1E
	b _08087FB0
_08087F14:
	ldrh r0, [r3, #0x38]
	movs r1, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08087FB0
_08087F1E:
	cmp r5, #0
	beq _08087F2E
	ldrh r0, [r4, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08087F38
	b _08087F70
_08087F2E:
	ldrh r0, [r3, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08087F70
_08087F38:
	cmp r5, #0
	beq _08087F44
	ldr r0, [r4, #0x10]
	orrs r0, r7
	str r0, [r4, #0x10]
	b _08087F4A
_08087F44:
	ldr r0, [r6, #0x10]
	orrs r0, r7
	str r0, [r6, #0x10]
_08087F4A:
	cmp r5, #0
	beq _08087F56
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #8]
	b _08087F5C
_08087F56:
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r3, #8]
_08087F5C:
	cmp r5, #0
	beq _08087F68
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0xc]
	b _08087FC8
_08087F68:
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r3, #0xc]
	b _08087FC8
_08087F70:
	cmp r5, #0
	beq _08087F80
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _08087F8A
_08087F80:
	ldr r0, [r6, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_08087F8A:
	cmp r5, #0
	beq _08087F96
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #8]
	b _08087F9C
_08087F96:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3, #8]
_08087F9C:
	cmp r5, #0
	beq _08087FA8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	b _08087FC8
_08087FA8:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3, #0xc]
	b _08087FC8
_08087FB0:
	cmp r5, #0
	beq _08087FBA
	mov r0, sl
	strh r0, [r4, #8]
	b _08087FBC
_08087FBA:
	strh r5, [r3, #8]
_08087FBC:
	cmp r5, #0
	beq _08087FC6
	mov r1, sl
	strh r1, [r4, #0xc]
	b _08087FC8
_08087FC6:
	strh r5, [r3, #0xc]
_08087FC8:
	cmp r5, #0
	beq _08087FDC
	ldr r2, _08087FD8 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _08087FEA
	b _08088048
	.align 2, 0
_08087FD8: .4byte gUnknown_03005B09
_08087FDC:
	adds r0, r3, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	beq _08088048
_08087FEA:
	cmp r5, #0
	beq _08087FF8
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	b _08088000
_08087FF8:
	ldr r0, [r6, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
_08088000:
	cmp r5, #0
	beq _08088010
	movs r0, #5
	ldr r3, _0808800C @ =gUnknown_03005AF0
	strb r0, [r3]
	b _08088018
	.align 2, 0
_0808800C: .4byte gUnknown_03005AF0
_08088010:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #5
	strb r0, [r1]
_08088018:
	ldr r0, _08088040 @ =gUnknown_03005A20
	cmp r5, #0
	beq _08088020
	ldr r0, _08088044 @ =gUnknown_03005AB0
_08088020:
	movs r1, #9
	bl sub_804516C
	ldr r1, _08088040 @ =gUnknown_03005A20
	cmp r5, #0
	beq _0808802E
	ldr r1, _08088044 @ =gUnknown_03005AB0
_0808802E:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08088040 @ =gUnknown_03005A20
	cmp r5, #0
	beq _0808803A
	ldr r1, _08088044 @ =gUnknown_03005AB0
_0808803A:
	movs r0, #9
	b _08088084
	.align 2, 0
_08088040: .4byte gUnknown_03005A20
_08088044: .4byte gUnknown_03005AB0
_08088048:
	cmp r5, #0
	beq _08088058
	movs r0, #0x55
	ldr r1, _08088054 @ =gUnknown_03005AF0
	b _0808805E
	.align 2, 0
_08088054: .4byte gUnknown_03005AF0
_08088058:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x55
_0808805E:
	strb r0, [r1]
	ldr r0, _0808809C @ =gUnknown_03005A20
	cmp r5, #0
	beq _08088068
	ldr r0, _080880A0 @ =gUnknown_03005AB0
_08088068:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _0808809C @ =gUnknown_03005A20
	cmp r5, #0
	beq _08088076
	ldr r1, _080880A0 @ =gUnknown_03005AB0
_08088076:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0808809C @ =gUnknown_03005A20
	cmp r5, #0
	beq _08088082
	ldr r1, _080880A0 @ =gUnknown_03005AB0
_08088082:
	movs r0, #0xe
_08088084:
	strb r0, [r1, #0xf]
	ldr r0, [sp, #0x24]
	adds r0, #0xb0
	adds r0, r0, r5
	movs r1, #0x14
	strb r1, [r0]
	adds r1, r7, #0
	lsls r1, r5
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	b _08088292
	.align 2, 0
_0808809C: .4byte gUnknown_03005A20
_080880A0: .4byte gUnknown_03005AB0
_080880A4:
	cmp r5, #0
	beq _080880AE
	mov r3, sl
	strh r3, [r4, #0xa]
	b _08088294
_080880AE:
	strh r5, [r6, #0xa]
	b _08088294
_080880B2:
	ldr r0, [sp, #0x24]
	adds r0, #0xb0
	adds r1, r0, r5
	ldrb r0, [r1]
	cmp r0, #0
	beq _080880C4
	subs r0, #1
	strb r0, [r1]
	b _08088294
_080880C4:
	ldr r0, [sp, #0x18]
	ldr r1, _080880E4 @ =0x000003B6
	bl Div
	ldr r2, [sp, #0x2c]
	asrs r1, r2, #0x10
	adds r1, r1, r0
	subs r1, #0x10
	cmp r5, #0
	beq _080880E8
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _080880F2
	b _08088294
	.align 2, 0
_080880E4: .4byte 0x000003B6
_080880E8:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	ble _080880F2
	b _08088294
_080880F2:
	ldr r0, [sp, #0x18]
	ldr r1, _08088110 @ =0x000003B6
	bl Div
	ldr r3, [sp, #0x2c]
	asrs r1, r3, #0x10
	adds r1, r1, r0
	adds r1, #0x10
	cmp r5, #0
	beq _08088114
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808811E
	b _08088294
	.align 2, 0
_08088110: .4byte 0x000003B6
_08088114:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808811E
	b _08088294
_0808811E:
	ldr r0, [sp, #0x1c]
	ldr r1, _0808813C @ =0x000003B6
	bl Div
	ldr r2, [sp, #0x30]
	asrs r1, r2, #0x10
	adds r1, r1, r0
	subs r1, #0x10
	cmp r5, #0
	beq _08088140
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0808814A
	b _08088294
	.align 2, 0
_0808813C: .4byte 0x000003B6
_08088140:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0808814A
	b _08088294
_0808814A:
	ldr r0, [sp, #0x1c]
	ldr r1, _08088168 @ =0x000003B6
	bl Div
	ldr r3, [sp, #0x30]
	asrs r1, r3, #0x10
	adds r1, r1, r0
	adds r1, #0x10
	cmp r5, #0
	beq _0808816C
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08088176
	b _08088294
	.align 2, 0
_08088168: .4byte 0x000003B6
_0808816C:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08088176
	b _08088294
_08088176:
	adds r0, r7, #0
	lsls r0, r5
	mov r2, r8
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08088198 @ =gUnknown_03005A20
	cmp r5, #0
	beq _0808818A
	ldr r0, _0808819C @ =gUnknown_03005AB0
_0808818A:
	bl sub_8046CEC
	cmp r5, #0
	beq _080881A0
	mov r3, sb
	str r3, [r4, #0x28]
	b _080881A4
	.align 2, 0
_08088198: .4byte gUnknown_03005A20
_0808819C: .4byte gUnknown_03005AB0
_080881A0:
	mov r0, sb
	str r0, [r6, #0x28]
_080881A4:
	cmp r5, #0
	beq _080881B2
	ldr r0, [r4, #0x10]
	movs r1, #8
	orrs r0, r1
	str r0, [r4, #0x10]
	b _080881BA
_080881B2:
	ldr r0, [r6, #0x10]
	movs r1, #8
	orrs r0, r1
	str r0, [r6, #0x10]
_080881BA:
	cmp r5, #0
	beq _080881CA
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	b _080881D4
_080881CA:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
_080881D4:
	cmp r5, #0
	beq _080881DE
	mov r1, sl
	strh r1, [r4, #8]
	b _080881E0
_080881DE:
	strh r5, [r6, #8]
_080881E0:
	cmp r5, #0
	beq _080881EA
	mov r2, sl
	strh r2, [r4, #0xc]
	b _080881EC
_080881EA:
	strh r5, [r6, #0xc]
_080881EC:
	cmp r5, #0
	beq _080881F6
	mov r3, sl
	strh r3, [r4, #0xa]
	b _080881F8
_080881F6:
	strh r5, [r6, #0xa]
_080881F8:
	cmp r5, #0
	beq _08088208
	movs r0, #0x26
	ldr r1, _08088204 @ =gUnknown_03005AF0
	b _0808820E
	.align 2, 0
_08088204: .4byte gUnknown_03005AF0
_08088208:
	adds r1, r6, #0
	adds r1, #0x40
	movs r0, #0x26
_0808820E:
	strb r0, [r1]
	cmp r5, #0
	beq _08088224
	ldr r2, _08088220 @ =gUnknown_03005AD6
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	b _08088292
	.align 2, 0
_08088220: .4byte gUnknown_03005AD6
_08088224:
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	b _08088292
_08088230:
	mov r3, r8
	ldrb r0, [r3]
	asrs r0, r5
	ands r0, r7
	cmp r0, #0
	beq _08088294
	cmp r5, #0
	beq _08088250
	ldr r0, [r4, #0x10]
	ldr r1, _0808824C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _08088258
	.align 2, 0
_0808824C: .4byte 0xFFBFFFFF
_08088250:
	ldr r0, [r6, #0x10]
	ldr r1, _08088280 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_08088258:
	ldr r0, [sp, #0x24]
	adds r0, #0xb0
	adds r0, r0, r5
	movs r1, #0x14
	strb r1, [r0]
	adds r1, r7, #0
	lsls r1, r5
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	cmp r5, #0
	beq _08088288
	ldr r3, _08088284 @ =gUnknown_03005AD6
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3]
	b _08088294
	.align 2, 0
_08088280: .4byte 0xFFBFFFFF
_08088284: .4byte gUnknown_03005AD6
_08088288:
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
_08088292:
	strb r0, [r2]
_08088294:
	adds r5, #1
	ldr r0, _080882FC @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _080882A4
	b _08087D88
_080882A4:
	ldr r4, _08088300 @ =0x000003FF
	adds r0, r4, #0
	ldr r5, [sp, #0x28]
	bics r0, r5
	ldr r1, [sp]
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldr r2, _08088304 @ =gCamera
	ldrh r1, [r2]
	ldr r3, [sp, #0x2c]
	asrs r0, r3, #0x10
	subs r0, r0, r1
	ldr r4, [sp, #0x18]
	asrs r1, r4, #0xa
	adds r0, r0, r1
	ldr r5, [sp]
	strh r0, [r5, #6]
	ldrh r1, [r2, #2]
	ldr r2, [sp, #0x30]
	asrs r0, r2, #0x10
	subs r0, r0, r1
	ldr r3, [sp, #0x1c]
	asrs r1, r3, #0xa
	adds r0, r0, r1
	strh r0, [r5, #8]
	ldr r4, [sp, #0x20]
	movs r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0808830C
	ldr r2, _08088308 @ =gUnknown_0300504C
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xc
	movs r1, #0x7e
	orrs r0, r1
	mov r5, sb
	str r0, [r5, #0x10]
	b _08088320
	.align 2, 0
_080882FC: .4byte gUnknown_03005088
_08088300: .4byte 0x000003FF
_08088304: .4byte gCamera
_08088308: .4byte gUnknown_0300504C
_0808830C:
	ldr r2, _08088360 @ =gUnknown_0300504C
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xc
	movs r1, #0x7f
	orrs r0, r1
	mov r1, sb
	str r0, [r1, #0x10]
_08088320:
	mov r0, sb
	ldr r1, [sp]
	bl sub_80037D0
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	mov r2, sb
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #0x10]
	mov r0, sb
	bl DisplaySprite
	mov r3, sb
	ldr r0, [r3, #0x10]
	ldr r1, _08088364 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r3, #0x10]
_08088350:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08088360: .4byte gUnknown_0300504C
_08088364: .4byte 0xFFFFFBFF

	thumb_func_start sub_8088368
sub_8088368: @ 0x08088368
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	ldr r0, [r4, #0x70]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable077
CreateEntity_Interactable077: @ 0x0808838C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _080883F4 @ =sub_8088468
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080883F8 @ =sub_8088810
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	adds r0, #0xc
	adds r7, r1, r0
	movs r3, #0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r4, r8
	str r4, [r2]
	ldrb r0, [r4]
	strb r0, [r2, #8]
	strb r6, [r2, #9]
	ldr r4, _080883FC @ =0x0300003C
	adds r0, r1, r4
	strb r3, [r0]
	ldr r0, _08088400 @ =0x0300003D
	adds r1, r1, r0
	strb r3, [r1]
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08088404
	ldrb r0, [r1, #5]
	lsls r0, r0, #3
	subs r0, #0xa
	b _08088406
	.align 2, 0
_080883F4: .4byte sub_8088468
_080883F8: .4byte sub_8088810
_080883FC: .4byte 0x0300003C
_08088400: .4byte 0x0300003D
_08088404:
	ldr r0, _08088460 @ =0x0000FFF6
_08088406:
	strh r0, [r2, #0x3e]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	mov r1, r8
	strb r0, [r1]
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7, #4]
	movs r2, #0
	movs r1, #0
	ldr r0, _08088464 @ =0x00000216
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	strb r2, [r0]
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
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08088460: .4byte 0x0000FFF6
_08088464: .4byte 0x00000216

	thumb_func_start sub_8088468
sub_8088468: @ 0x08088468
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08088584 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov ip, r0
	ldr r1, [r0]
	mov r8, r1
	ldr r2, _08088588 @ =0x0300000C
	adds r6, r4, r2
	ldrb r2, [r0, #8]
	lsls r2, r2, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	mov r3, ip
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _0808858C @ =gCamera
	ldrh r0, [r3]
	lsrs r5, r2, #0x10
	mov sl, r5
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r7, r1, #0x10
	str r7, [sp]
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x18]
	ldr r0, _08088590 @ =gUnknown_03005A20
	ldr r1, [r0, #0x10]
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _08088516
	mov r1, ip
	movs r7, #0x3e
	ldrsh r0, [r1, r7]
	subs r2, r2, r0
	ldr r1, _08088590 @ =gUnknown_03005A20
	ldr r0, [r1]
	asrs r1, r0, #8
	cmp r2, r1
	bgt _08088516
	mov r7, r8
	ldrb r0, [r7, #5]
	lsls r0, r0, #3
	adds r0, r2, r0
	cmp r0, r1
	blt _08088516
	ldr r1, _08088590 @ =gUnknown_03005A20
	ldr r0, [r1, #4]
	asrs r1, r0, #8
	cmp r5, r1
	bgt _08088516
	ldrb r0, [r7, #6]
	lsls r0, r0, #3
	adds r0, r5, r0
	cmp r0, r1
	blt _08088516
	ldr r2, _08088594 @ =0x0300003C
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	ldr r5, _08088598 @ =0x0300003D
	adds r1, r4, r5
	movs r0, #8
	strb r0, [r1]
	mov r7, sb
	ldr r1, [r7]
	ldr r0, _0808859C @ =sub_80885BC
	str r0, [r1, #8]
_08088516:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	cmp r2, r0
	bgt _0808854E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0808854E
	ldr r7, [sp]
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	movs r0, #2
	ldrsh r3, [r3, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r3, r2
	cmp r1, r0
	bgt _0808854E
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _080885A0
_0808854E:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08088572
	movs r3, #0x18
	ldrsh r0, [r6, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _08088572
	movs r4, #0x18
	ldrsh r1, [r6, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080885A0
_08088572:
	mov r5, ip
	ldrb r0, [r5, #8]
	mov r7, r8
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _080885AC
	.align 2, 0
_08088584: .4byte gCurTask
_08088588: .4byte 0x0300000C
_0808858C: .4byte gCamera
_08088590: .4byte gUnknown_03005A20
_08088594: .4byte 0x0300003C
_08088598: .4byte 0x0300003D
_0808859C: .4byte sub_80885BC
_080885A0:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_080885AC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80885BC
sub_80885BC: @ 0x080885BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08088670 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r1, [r6]
	mov ip, r1
	ldr r4, _08088674 @ =0x0300000C
	adds r7, r3, r4
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, ip
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r4, _08088678 @ =gCamera
	ldrh r0, [r4]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r7, #0x16]
	ldrh r1, [r4, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r1, r2, r1
	ldr r0, _0808867C @ =0x0300003C
	adds r3, r3, r0
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	mov r3, r8
	cmp r5, r0
	bgt _0808863C
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _0808863C
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _0808863C
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _08088680
_0808863C:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08088660
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08088660
	movs r4, #0x18
	ldrsh r1, [r7, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08088680
_08088660:
	ldrb r0, [r6, #8]
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r3]
	bl TaskDestroy
	b _080886BA
	.align 2, 0
_08088670: .4byte gCurTask
_08088674: .4byte 0x0300000C
_08088678: .4byte gCamera
_0808867C: .4byte 0x0300003C
_08088680:
	adds r1, r6, #0
	adds r1, #0x3d
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080886A4
	subs r1, #1
	movs r0, #0x30
	strb r0, [r1]
	ldr r1, [r3]
	ldr r0, _080886A0 @ =sub_80886C4
	str r0, [r1, #8]
	b _080886AE
	.align 2, 0
_080886A0: .4byte sub_80886C4
_080886A4:
	adds r1, r6, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	adds r0, #6
	strb r0, [r1]
_080886AE:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_080886BA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80886C4
sub_80886C4: @ 0x080886C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _080887D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r0, [r7]
	str r0, [sp, #8]
	ldr r1, _080887DC @ =0x0300000C
	adds r6, r4, r1
	ldrb r0, [r7, #8]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r3, [sp, #8]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _080887E0 @ =gCamera
	ldrh r2, [r3]
	mov r0, r8
	lsls r5, r0, #0x10
	asrs r0, r5, #0x10
	subs r0, r0, r2
	strh r0, [r6, #0x16]
	ldrh r2, [r3, #2]
	lsrs r3, r1, #0x10
	str r3, [sp, #4]
	asrs r1, r1, #0x10
	subs r2, r1, r2
	ldr r0, _080887E4 @ =0x0300003C
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, r0, r2
	strh r0, [r6, #0x18]
	movs r4, #0
	mov sl, r1
	mov sb, r5
_0808872C:
	ldr r3, _080887E8 @ =gUnknown_03005A20
	cmp r4, #0
	beq _08088734
	ldr r3, _080887EC @ =gUnknown_03005AB0
_08088734:
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r5, r8
	lsls r5, r5, #0x10
	str r5, [sp, #0xc]
	cmp r1, #0
	bne _0808875E
	adds r0, r7, #0
	adds r0, #0x3c
	movs r2, #0
	ldrsb r2, [r0, r2]
	add r2, sl
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r1, [sp]
	adds r0, r6, #0
	mov r5, sb
	asrs r1, r5, #0x10
	bl sub_800AFDC
_0808875E:
	adds r4, #1
	ldr r0, _080887F0 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0808872C
	ldr r0, [sp, #0xc]
	asrs r2, r0, #0x10
	ldr r3, _080887E0 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	cmp r2, r0
	bgt _080887A2
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _080887A2
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r4, #2
	ldrsh r2, [r3, r4]
	subs r5, #0x50
	adds r0, r2, r5
	cmp r1, r0
	bgt _080887A2
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _080887F4
_080887A2:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080887C6
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _080887C6
	movs r3, #0x18
	ldrsh r1, [r6, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080887F4
_080887C6:
	ldrb r0, [r7, #8]
	ldr r4, [sp, #8]
	strb r0, [r4]
	ldr r0, _080887D8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08088800
	.align 2, 0
_080887D8: .4byte gCurTask
_080887DC: .4byte 0x0300000C
_080887E0: .4byte gCamera
_080887E4: .4byte 0x0300003C
_080887E8: .4byte gUnknown_03005A20
_080887EC: .4byte gUnknown_03005AB0
_080887F0: .4byte gUnknown_03005088
_080887F4:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08088800:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8088810
sub_8088810: @ 0x08088810
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8088824
sub_8088824: @ 0x08088824
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08088878 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sb, r1
	ldr r0, [r1]
	str r0, [sp, #0xc]
	ldrb r0, [r1, #8]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r1, [sp, #0xc]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	mov r2, sb
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r7, #0
	ldr r5, _0808887C @ =gUnknown_03005AB0
	ldr r6, _08088880 @ =gUnknown_03005A20
	movs r3, #0
	mov sl, r3
_08088870:
	cmp r7, #0
	beq _08088884
	ldr r0, [r5, #0x10]
	b _08088886
	.align 2, 0
_08088878: .4byte gCurTask
_0808887C: .4byte gUnknown_03005AB0
_08088880: .4byte gUnknown_03005A20
_08088884:
	ldr r0, [r6, #0x10]
_08088886:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08088890
	b _08088F1C
_08088890:
	mov r2, sb
	adds r2, #0x3c
	ldrb r1, [r2]
	asrs r1, r7
	movs r0, #1
	ands r1, r0
	str r2, [sp, #0x14]
	cmp r1, #0
	bne _080888A4
	b _08088CF8
_080888A4:
	mov r0, sb
	adds r0, #0x40
	mov r2, sl
	adds r1, r0, r2
	ldr r2, [r1]
	adds r4, r0, #0
	cmp r2, #0xe7
	bgt _080888BA
	adds r0, r2, #0
	adds r0, #0x10
	str r0, [r1]
_080888BA:
	ldr r0, [r1]
	movs r2, #0x90
	lsls r2, r2, #4
	cmp r0, r2
	ble _080888C6
	str r2, [r1]
_080888C6:
	mov r2, sb
	adds r2, #0x48
	add r2, sl
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldr r3, [sp, #8]
	lsls r1, r3, #0x10
	asrs r0, r1, #8
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r1, [sp, #0x10]
	cmp r7, #0
	beq _080888EA
	str r0, [r5, #4]
	b _080888EC
_080888EA:
	str r0, [r6, #4]
_080888EC:
	ldr r0, [sp, #4]
	lsls r3, r0, #0x10
	asrs r2, r3, #0x10
	ldr r0, [sp, #0xc]
	movs r1, #3
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	adds r2, r2, r0
	mov r8, r3
	adds r3, r1, #0
	cmp r7, #0
	beq _0808890E
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08088916
	b _080889FE
_0808890E:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	bgt _080889FE
_08088916:
	mov r2, r8
	asrs r1, r2, #0x10
	lsls r0, r3, #3
	adds r1, r1, r0
	ldr r3, [sp, #0xc]
	ldrb r0, [r3, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r7, #0
	beq _08088934
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808893C
	b _080889FE
_08088934:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	blt _080889FE
_0808893C:
	mov r1, sl
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r7, #0
	beq _0808894E
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	b _08088954
_0808894E:
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
_08088954:
	cmp r7, #0
	beq _08088964
	ldrh r0, [r5, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0808896E
	b _08088978
_08088964:
	ldrh r0, [r6, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088978
_0808896E:
	mov r2, sl
	adds r1, r4, r2
	ldr r0, [r1]
	adds r0, #0x10
	b _0808899E
_08088978:
	cmp r7, #0
	beq _08088988
	ldrh r0, [r5, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08088992
	b _080889A0
_08088988:
	ldrh r0, [r6, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080889A0
_08088992:
	mov r3, sl
	adds r1, r4, r3
	ldr r0, [r1]
	cmp r0, #0xe8
	ble _080889A0
	subs r0, #0x10
_0808899E:
	str r0, [r1]
_080889A0:
	cmp r7, #0
	beq _080889A8
	ldr r0, [r5]
	b _080889AA
_080889A8:
	ldr r0, [r6]
_080889AA:
	asrs r0, r0, #8
	adds r3, r0, #0
	subs r3, #8
	cmp r7, #0
	beq _080889B8
	ldr r0, [r5, #4]
	b _080889BA
_080889B8:
	ldr r0, [r6, #4]
_080889BA:
	asrs r1, r0, #8
	cmp r7, #0
	beq _080889C8
	ldr r0, _080889C4 @ =gUnknown_03005AD7
	b _080889CA
	.align 2, 0
_080889C4: .4byte gUnknown_03005AD7
_080889C8:
	ldr r0, _080889F0 @ =gUnknown_03005A47
_080889CA:
	ldrb r2, [r0]
	ldr r0, _080889F4 @ =sub_803FC64
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_804021C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _080889FE
	lsls r1, r0, #8
	cmp r7, #0
	beq _080889F8
	ldr r0, [r5]
	subs r0, r0, r1
	str r0, [r5]
	b _080889FE
	.align 2, 0
_080889F0: .4byte gUnknown_03005A47
_080889F4: .4byte sub_803FC64
_080889F8:
	ldr r0, [r6]
	subs r0, r0, r1
	str r0, [r6]
_080889FE:
	cmp r7, #0
	beq _08088A08
	movs r1, #0
	strh r1, [r5, #0xa]
	b _08088A0A
_08088A08:
	strh r7, [r6, #0xa]
_08088A0A:
	ldr r0, _08088A1C @ =gUnknown_030060E0
	ldrh r1, [r0]
	cmp r7, #0
	beq _08088A20
	ldrh r0, [r5, #0x3a]
	ands r0, r1
	cmp r0, #0
	bne _08088A2A
	b _08088CD6
	.align 2, 0
_08088A1C: .4byte gUnknown_030060E0
_08088A20:
	ldrh r0, [r6, #0x3a]
	ands r0, r1
	cmp r0, #0
	bne _08088A2A
	b _08088CD6
_08088A2A:
	mov r2, sl
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r0, #0
	bge _08088A5A
	mov r3, r8
	asrs r1, r3, #0x10
	ldr r2, [sp, #0xc]
	movs r0, #3
	ldrsb r0, [r2, r0]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, #2
	lsls r1, r1, #8
	cmp r7, #0
	beq _08088A4E
	str r1, [r5]
	b _08088A50
_08088A4E:
	str r1, [r6]
_08088A50:
	mov r3, sl
	adds r0, r4, r3
	movs r1, #0
	str r1, [r0]
	b _08088FC6
_08088A5A:
	ldr r0, _08088A74 @ =gUnknown_03005A20
	cmp r7, #0
	beq _08088A62
	ldr r0, _08088A78 @ =gUnknown_03005AB0
_08088A62:
	bl sub_8046CEC
	cmp r7, #0
	beq _08088A80
	ldr r0, [r5, #0x10]
	ldr r1, _08088A7C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08088A88
	.align 2, 0
_08088A74: .4byte gUnknown_03005A20
_08088A78: .4byte gUnknown_03005AB0
_08088A7C: .4byte 0xFFDFFFFF
_08088A80:
	ldr r0, [r6, #0x10]
	ldr r1, _08088A9C @ =0xFFDFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_08088A88:
	ldr r0, _08088AA0 @ =gUnknown_030060E0
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	orrs r1, r0
	cmp r7, #0
	beq _08088AA4
	ldrh r0, [r5, #0x38]
	orrs r1, r0
	strh r1, [r5, #0x38]
	b _08088AAA
	.align 2, 0
_08088A9C: .4byte 0xFFDFFFFF
_08088AA0: .4byte gUnknown_030060E0
_08088AA4:
	ldrh r0, [r6, #0x38]
	orrs r1, r0
	strh r1, [r6, #0x38]
_08088AAA:
	cmp r7, #0
	beq _08088ABC
	ldr r0, [r5, #0x10]
	ldr r1, _08088AB8 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08088AC4
	.align 2, 0
_08088AB8: .4byte 0xFFBFFFFF
_08088ABC:
	ldr r0, [r6, #0x10]
	ldr r1, _08088AD4 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_08088AC4:
	cmp r7, #0
	beq _08088AD8
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08088AE0
	.align 2, 0
_08088AD4: .4byte 0xFFBFFFFF
_08088AD8:
	ldr r0, [r6, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0x10]
_08088AE0:
	cmp r7, #0
	beq _08088AEE
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08088AF6
_08088AEE:
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
_08088AF6:
	cmp r7, #0
	beq _08088B06
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _08088B10
_08088B06:
	ldr r0, [r6, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_08088B10:
	cmp r7, #0
	beq _08088B24
	ldr r0, [r5, #0x10]
	ldr r1, _08088B20 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08088B2C
	.align 2, 0
_08088B20: .4byte 0xFFFFFEFF
_08088B24:
	ldr r0, [r6, #0x10]
	ldr r1, _08088B3C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
_08088B2C:
	cmp r7, #0
	beq _08088B44
	ldr r2, _08088B40 @ =gUnknown_03005AD6
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	b _08088B4E
	.align 2, 0
_08088B3C: .4byte 0xFFFFFEFF
_08088B40: .4byte gUnknown_03005AD6
_08088B44:
	ldr r3, _08088B60 @ =gUnknown_03005A46
	ldrb r1, [r3]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3]
_08088B4E:
	cmp r7, #0
	beq _08088B64
	ldrh r0, [r5, #0x38]
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	bne _08088B6E
	b _08088BC4
	.align 2, 0
_08088B60: .4byte gUnknown_03005A46
_08088B64:
	ldrh r0, [r6, #0x38]
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08088BC4
_08088B6E:
	cmp r7, #0
	beq _08088B84
	ldrh r1, [r5, #0x38]
	movs r0, #0x40
	ands r1, r0
	ldr r3, _08088B80 @ =gUnknown_03005A20
	cmp r1, #0
	bne _08088B90
	b _08088BB0
	.align 2, 0
_08088B80: .4byte gUnknown_03005A20
_08088B84:
	ldrh r1, [r6, #0x38]
	movs r0, #0x40
	ands r1, r0
	ldr r3, _08088B9C @ =gUnknown_03005A20
	cmp r1, #0
	beq _08088BB0
_08088B90:
	cmp r7, #0
	beq _08088BA4
	ldr r0, _08088BA0 @ =0x0000F940
	strh r0, [r5, #0xa]
	b _08088BFE
	.align 2, 0
_08088B9C: .4byte gUnknown_03005A20
_08088BA0: .4byte 0x0000F940
_08088BA4:
	ldr r0, _08088BAC @ =0x0000F940
	strh r0, [r3, #0xa]
	b _08088BFE
	.align 2, 0
_08088BAC: .4byte 0x0000F940
_08088BB0:
	cmp r7, #0
	beq _08088BBC
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r5, #0xa]
	b _08088BFE
_08088BBC:
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r3, #0xa]
	b _08088BFE
_08088BC4:
	mov r0, sb
	adds r0, #0x50
	add r0, sl
	ldr r0, [r0]
	movs r1, #0xf
	bl Div
	cmp r0, #0
	beq _08088BE8
	cmp r7, #0
	beq _08088BE2
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r5, #0xa]
	b _08088BFC
_08088BE2:
	movs r0, #0xd8
	lsls r0, r0, #3
	b _08088BFA
_08088BE8:
	cmp r7, #0
	beq _08088BF8
	ldr r0, _08088BF4 @ =0x0000F940
	strh r0, [r5, #0xa]
	b _08088BFC
	.align 2, 0
_08088BF4: .4byte 0x0000F940
_08088BF8:
	ldr r0, _08088C08 @ =0x0000F940
_08088BFA:
	strh r0, [r6, #0xa]
_08088BFC:
	ldr r3, _08088C0C @ =gUnknown_03005A20
_08088BFE:
	cmp r7, #0
	beq _08088C14
	movs r0, #5
	ldr r1, _08088C10 @ =gUnknown_03005AF0
	b _08088C1A
	.align 2, 0
_08088C08: .4byte 0x0000F940
_08088C0C: .4byte gUnknown_03005A20
_08088C10: .4byte gUnknown_03005AF0
_08088C14:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #5
_08088C1A:
	strb r0, [r1]
	ldr r0, _08088C58 @ =gUnknown_03005A20
	cmp r7, #0
	beq _08088C24
	ldr r0, _08088C5C @ =gUnknown_03005AB0
_08088C24:
	movs r1, #9
	bl sub_804516C
	ldr r1, _08088C58 @ =gUnknown_03005A20
	cmp r7, #0
	beq _08088C32
	ldr r1, _08088C5C @ =gUnknown_03005AB0
_08088C32:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r3, _08088C58 @ =gUnknown_03005A20
	adds r1, r3, #0
	cmp r7, #0
	beq _08088C40
	ldr r1, _08088C5C @ =gUnknown_03005AB0
_08088C40:
	movs r0, #9
	strb r0, [r1, #0xf]
	ldr r2, [sp, #0x10]
	asrs r0, r2, #8
	movs r1, #0x90
	lsls r1, r1, #4
	adds r0, r0, r1
	cmp r7, #0
	beq _08088C60
	str r0, [r5, #4]
	b _08088C62
	.align 2, 0
_08088C58: .4byte gUnknown_03005A20
_08088C5C: .4byte gUnknown_03005AB0
_08088C60:
	str r0, [r3, #4]
_08088C62:
	cmp r7, #0
	beq _08088C6C
	movs r2, #0
	strh r2, [r5, #0xc]
	b _08088C6E
_08088C6C:
	strh r7, [r3, #0xc]
_08088C6E:
	cmp r7, #0
	beq _08088C78
	movs r3, #0
	strh r3, [r5, #8]
	b _08088C7A
_08088C78:
	strh r7, [r3, #8]
_08088C7A:
	movs r1, #1
	lsls r1, r7
	ldr r2, [sp, #0x14]
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	mov r0, sb
	adds r0, #0x50
	add r0, sl
	movs r3, #0
	str r3, [r0]
	mov r0, sb
	adds r0, #0x3d
	adds r0, r0, r7
	movs r1, #0x14
	strb r1, [r0]
	ldr r3, _08088CEC @ =gUnknown_03005A84
	adds r0, r3, #0
	cmp r7, #0
	beq _08088CA4
	ldr r0, _08088CF0 @ =gUnknown_03005B14
_08088CA4:
	ldr r2, [r0]
	adds r0, r3, #0
	cmp r7, #0
	beq _08088CAE
	ldr r0, _08088CF0 @ =gUnknown_03005B14
_08088CAE:
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	ldr r1, _08088CF4 @ =0xFFFFCFFF
	ands r0, r1
	str r0, [r2, #0x1c]
	adds r0, r3, #0
	cmp r7, #0
	beq _08088CC0
	ldr r0, _08088CF0 @ =gUnknown_03005B14
_08088CC0:
	ldr r2, [r0]
	adds r0, r3, #0
	cmp r7, #0
	beq _08088CCA
	ldr r0, _08088CF0 @ =gUnknown_03005B14
_08088CCA:
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r2, #0x1c]
_08088CD6:
	mov r4, sb
	adds r4, #0x50
	add r4, sl
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	movs r1, #0x1e
	bl Mod
	str r0, [r4]
	b _08088F54
	.align 2, 0
_08088CEC: .4byte gUnknown_03005A84
_08088CF0: .4byte gUnknown_03005B14
_08088CF4: .4byte 0xFFFFCFFF
_08088CF8:
	mov r0, sb
	adds r0, #0x3d
	adds r1, r0, r7
	ldrb r0, [r1]
	cmp r0, #0
	beq _08088D0A
	subs r0, #1
	strb r0, [r1]
	b _08088F54
_08088D0A:
	ldr r0, [sp, #4]
	lsls r3, r0, #0x10
	asrs r2, r3, #0x10
	ldr r0, [sp, #0xc]
	movs r1, #3
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	adds r2, r2, r0
	mov r8, r3
	adds r3, r1, #0
	cmp r7, #0
	beq _08088D2C
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08088D36
	b _08088F54
_08088D2C:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08088D36
	b _08088F54
_08088D36:
	mov r2, r8
	asrs r1, r2, #0x10
	lsls r0, r3, #3
	adds r1, r1, r0
	ldr r3, [sp, #0xc]
	ldrb r0, [r3, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r7, #0
	beq _08088D54
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08088D5E
	b _08088F54
_08088D54:
	ldr r0, [r6]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08088D5E
	b _08088F54
_08088D5E:
	ldr r0, [sp, #8]
	lsls r3, r0, #0x10
	asrs r2, r3, #0x10
	ldr r0, [sp, #0xc]
	movs r1, #4
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	adds r2, r2, r0
	str r3, [sp, #0x10]
	adds r3, r1, #0
	cmp r7, #0
	beq _08088D80
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08088D8A
	b _08088F54
_08088D80:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _08088D8A
	b _08088F54
_08088D8A:
	ldr r2, [sp, #0x10]
	asrs r1, r2, #0x10
	lsls r0, r3, #3
	adds r1, r1, r0
	ldr r3, [sp, #0xc]
	ldrb r0, [r3, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r7, #0
	beq _08088DA8
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08088DB2
	b _08088F54
_08088DA8:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _08088DB2
	b _08088F54
_08088DB2:
	mov r0, sb
	adds r0, #0x40
	mov r2, sl
	adds r1, r0, r2
	adds r4, r0, #0
	cmp r7, #0
	beq _08088DC6
	movs r3, #0xc
	ldrsh r0, [r5, r3]
	b _08088DCA
_08088DC6:
	movs r2, #0xc
	ldrsh r0, [r6, r2]
_08088DCA:
	asrs r0, r0, #1
	str r0, [r1]
	ldr r3, _08088DF0 @ =gUnknown_03005A20
	mov r0, sl
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #0
	bge _08088DDE
	movs r2, #0
	str r2, [r1]
_08088DDE:
	mov r0, r8
	asrs r1, r0, #8
	cmp r7, #0
	beq _08088DF4
	ldr r0, [r5]
	cmp r0, r1
	bgt _08088DFA
	b _08088E16
	.align 2, 0
_08088DF0: .4byte gUnknown_03005A20
_08088DF4:
	ldr r0, [r3]
	cmp r0, r1
	ble _08088E16
_08088DFA:
	mov r0, sb
	adds r0, #0x48
	mov r1, sl
	adds r2, r0, r1
	mov r0, r8
	asrs r1, r0, #8
	cmp r7, #0
	beq _08088E10
	ldr r0, [r5]
	subs r0, r0, r1
	b _08088E2E
_08088E10:
	ldr r0, [r3]
	subs r0, r0, r1
	b _08088E2E
_08088E16:
	mov r0, sb
	adds r0, #0x48
	mov r1, sl
	adds r2, r0, r1
	mov r0, r8
	asrs r1, r0, #8
	cmp r7, #0
	beq _08088E2A
	ldr r0, [r5]
	b _08088E2C
_08088E2A:
	ldr r0, [r3]
_08088E2C:
	subs r0, r1, r0
_08088E2E:
	str r0, [r2]
	ldr r0, _08088E4C @ =gUnknown_03005A20
	cmp r7, #0
	beq _08088E38
	ldr r0, _08088E50 @ =gUnknown_03005AB0
_08088E38:
	bl sub_8046CEC
	cmp r7, #0
	beq _08088E54
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
	b _08088E5E
	.align 2, 0
_08088E4C: .4byte gUnknown_03005A20
_08088E50: .4byte gUnknown_03005AB0
_08088E54:
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r6, #0x10]
_08088E5E:
	ldr r3, _08088E70 @ =gUnknown_03005A20
	cmp r7, #0
	beq _08088E74
	ldr r0, [r5, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _08088E7E
	.align 2, 0
_08088E70: .4byte gUnknown_03005A20
_08088E74:
	ldr r0, [r6, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_08088E7E:
	cmp r7, #0
	beq _08088E90
	ldr r0, [r5, #0x10]
	ldr r1, _08088E8C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08088E98
	.align 2, 0
_08088E8C: .4byte 0xFFFFFEFF
_08088E90:
	ldr r0, [r6, #0x10]
	ldr r1, _08088EB0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #0x10]
_08088E98:
	movs r0, #1
	lsls r0, r7
	ldr r2, [sp, #0x14]
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	cmp r7, #0
	beq _08088EB8
	movs r0, #0x22
	ldr r3, _08088EB4 @ =gUnknown_03005AF0
	strb r0, [r3]
	b _08088EC0
	.align 2, 0
_08088EB0: .4byte 0xFFFFFEFF
_08088EB4: .4byte gUnknown_03005AF0
_08088EB8:
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x22
	strb r0, [r1]
_08088EC0:
	ldr r0, _08088F00 @ =gUnknown_03005A20
	cmp r7, #0
	beq _08088EC8
	ldr r0, _08088F04 @ =gUnknown_03005AB0
_08088EC8:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _08088F00 @ =gUnknown_03005A20
	cmp r7, #0
	beq _08088ED6
	ldr r1, _08088F04 @ =gUnknown_03005AB0
_08088ED6:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _08088F00 @ =gUnknown_03005A20
	cmp r7, #0
	beq _08088EE2
	ldr r1, _08088F04 @ =gUnknown_03005AB0
_08088EE2:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	mov r0, sb
	adds r0, #0x50
	add r0, sl
	movs r1, #0
	str r1, [r0]
	cmp r7, #0
	beq _08088F0C
	ldr r2, _08088F08 @ =gUnknown_03005AD6
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	b _08088F52
	.align 2, 0
_08088F00: .4byte gUnknown_03005A20
_08088F04: .4byte gUnknown_03005AB0
_08088F08: .4byte gUnknown_03005AD6
_08088F0C:
	ldr r3, _08088F18 @ =gUnknown_03005A46
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
	b _08088F54
	.align 2, 0
_08088F18: .4byte gUnknown_03005A46
_08088F1C:
	mov r2, sb
	adds r2, #0x3c
	ldrb r1, [r2]
	asrs r1, r7
	movs r0, #1
	ands r1, r0
	str r2, [sp, #0x14]
	cmp r1, #0
	beq _08088F54
	cmp r7, #0
	beq _08088F40
	ldr r0, [r5, #0x10]
	ldr r1, _08088F3C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _08088F48
	.align 2, 0
_08088F3C: .4byte 0xFFBFFFFF
_08088F40:
	ldr r0, [r6, #0x10]
	ldr r1, _08088FD8 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r6, #0x10]
_08088F48:
	movs r1, #1
	lsls r1, r7
	ldr r2, [sp, #0x14]
	ldrb r0, [r2]
	bics r0, r1
_08088F52:
	strb r0, [r2]
_08088F54:
	movs r3, #4
	add sl, r3
	adds r7, #1
	ldr r0, _08088FDC @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	bge _08088F68
	b _08088870
_08088F68:
	ldr r0, [sp, #0x14]
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08088FC6
	ldr r2, _08088FE0 @ =gCamera
	ldrh r0, [r2]
	ldr r3, [sp, #4]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _08088FB6
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08088FB6
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08088FC6
_08088FB6:
	mov r2, sb
	ldrb r0, [r2, #8]
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	ldr r0, _08088FE4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08088FC6:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08088FD8: .4byte 0xFFBFFFFF
_08088FDC: .4byte gUnknown_03005088
_08088FE0: .4byte gCamera
_08088FE4: .4byte gCurTask

	thumb_func_start CreateEntity_Interactable078
CreateEntity_Interactable078: @ 0x08088FE8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0808905C @ =sub_8088824
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	movs r3, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	ldr r1, _08089060 @ =0x0300003C
	adds r0, r2, r1
	strb r3, [r0]
	movs r1, #0
	movs r3, #0
	ldr r0, _08089064 @ =0x0300003D
	adds r4, r2, r0
	adds r0, #3
	adds r2, r2, r0
_0808903A:
	str r3, [r2]
	str r3, [r2, #8]
	adds r0, r4, r1
	strb r3, [r0]
	adds r2, #4
	adds r1, #1
	cmp r1, #1
	ble _0808903A
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808905C: .4byte sub_8088824
_08089060: .4byte 0x0300003C
_08089064: .4byte 0x0300003D

	thumb_func_start CreateEntity_Interactable079
CreateEntity_Interactable079: @ 0x08089068
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	mov r0, sl
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, _08089190 @ =sub_80891C8
	ldr r1, _08089194 @ =sub_8089A14
	str r1, [sp]
	movs r1, #0x88
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _08089198 @ =0x0300000C
	adds r5, r4, r1
	adds r1, #0x38
	adds r2, r4, r1
	movs r6, #0
	mov r1, r8
	strh r1, [r0, #4]
	mov r1, sb
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	mov r1, sl
	strb r1, [r0, #9]
	str r6, [r0, #0x78]
	str r6, [r0, #0x7c]
	ldr r1, _0808919C @ =0x03000074
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r1, _080891A0 @ =0x03000080
	adds r0, r4, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r6, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #0x18
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _080891A4 @ =0x000001F5
	mov sb, r0
	mov r1, sb
	strh r1, [r5, #0xa]
	ldr r1, _080891A8 @ =0x0300002C
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r6, [r5, #8]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0x1c]
	ldr r0, _080891AC @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _080891B0 @ =0x0300002E
	adds r0, r4, r1
	movs r1, #0x10
	mov sl, r1
	mov r1, sl
	strb r1, [r0]
	ldr r1, _080891B4 @ =0x03000031
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r5, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r5, #0x10]
	movs r0, #8
	bl VramMalloc
	ldr r2, [sp, #4]
	str r0, [r2, #4]
	mov r0, sb
	strh r0, [r2, #0xa]
	ldr r0, _080891B8 @ =0x03000064
	adds r1, r4, r0
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r2, #0x1a]
	strh r6, [r2, #8]
	strh r6, [r2, #0x14]
	strh r6, [r2, #0x1c]
	ldr r0, _080891BC @ =0x03000065
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080891C0 @ =0x03000066
	adds r0, r4, r1
	mov r1, sl
	strb r1, [r0]
	ldr r0, _080891C4 @ =0x03000069
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	mov r0, r8
	str r0, [r2, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r2, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089190: .4byte sub_80891C8
_08089194: .4byte sub_8089A14
_08089198: .4byte 0x0300000C
_0808919C: .4byte 0x03000074
_080891A0: .4byte 0x03000080
_080891A4: .4byte 0x000001F5
_080891A8: .4byte 0x0300002C
_080891AC: .4byte 0x0300002D
_080891B0: .4byte 0x0300002E
_080891B4: .4byte 0x03000031
_080891B8: .4byte 0x03000064
_080891BC: .4byte 0x03000065
_080891C0: .4byte 0x03000066
_080891C4: .4byte 0x03000069

	thumb_func_start sub_80891C8
sub_80891C8: @ 0x080891C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08089264 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r3, _08089268 @ =0x0300000C
	adds r7, r1, r3
	ldr r4, _0808926C @ =0x03000044
	adds r4, r4, r1
	mov sb, r4
	mov r6, r8
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [sp, #8]
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08089270 @ =gCamera
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	subs r0, r4, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	subs r0, r5, r0
	strh r0, [r7, #0x18]
	ldrh r0, [r3]
	subs r0, r4, r0
	mov r6, sb
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r5, r0
	strh r0, [r6, #0x18]
	movs r6, #0
	str r4, [sp, #0xc]
	mov sl, r2
	str r1, [sp, #0x14]
	ldr r4, _08089274 @ =gUnknown_03005AB0
	str r5, [sp, #0x10]
	ldr r5, _08089278 @ =gUnknown_03005A47
	subs r5, #0x27
_0808923C:
	ldr r3, _0808927C @ =gUnknown_03005A20
	cmp r6, #0
	beq _08089244
	ldr r3, _08089274 @ =gUnknown_03005AB0
_08089244:
	mov r0, sb
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl sub_80096B0
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _0808928A
	cmp r6, #0
	beq _08089280
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	b _080893DE
	.align 2, 0
_08089264: .4byte gCurTask
_08089268: .4byte 0x0300000C
_0808926C: .4byte 0x03000044
_08089270: .4byte gCamera
_08089274: .4byte gUnknown_03005AB0
_08089278: .4byte gUnknown_03005A47
_0808927C: .4byte gUnknown_03005A20
_08089280:
	ldr r0, [r5, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	b _080893F0
_0808928A:
	cmp r6, #0
	beq _08089292
	ldr r0, [r4, #0x28]
	b _08089294
_08089292:
	ldr r0, [r5, #0x28]
_08089294:
	cmp r0, r7
	beq _080892B4
	cmp r6, #0
	beq _080892AC
	ldr r0, [r4, #0x28]
	cmp r0, r7
	beq _080892B4
	ldr r3, _080892A8 @ =gUnknown_03005A20
	b _08089378
	.align 2, 0
_080892A8: .4byte gUnknown_03005A20
_080892AC:
	ldr r0, [r5, #0x28]
	ldr r3, _080892C8 @ =gUnknown_03005A20
	cmp r0, r7
	bne _08089378
_080892B4:
	cmp r6, #0
	beq _080892CC
	ldr r0, [r4, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080892D8
	ldr r3, _080892C8 @ =gUnknown_03005A20
	b _08089378
	.align 2, 0
_080892C8: .4byte gUnknown_03005A20
_080892CC:
	ldr r1, [r5, #0x10]
	movs r0, #8
	ands r1, r0
	ldr r3, _080892EC @ =gUnknown_03005A20
	cmp r1, #0
	beq _08089378
_080892D8:
	ldr r0, _080892F0 @ =gUnknown_030060E0
	ldrh r1, [r0]
	cmp r6, #0
	beq _080892F4
	ldrh r0, [r4, #0x3a]
	ands r0, r1
	cmp r0, #0
	bne _080892FC
	b _08089322
	.align 2, 0
_080892EC: .4byte gUnknown_03005A20
_080892F0: .4byte gUnknown_030060E0
_080892F4:
	ldrh r0, [r5, #0x3a]
	ands r0, r1
	cmp r0, #0
	beq _08089322
_080892FC:
	cmp r6, #0
	beq _0808930C
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _08089316
_0808930C:
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_08089316:
	cmp r6, #0
	beq _08089320
	movs r0, #0
	str r0, [r4, #0x28]
	b _08089322
_08089320:
	str r6, [r5, #0x28]
_08089322:
	cmp r6, #0
	beq _0808932A
	ldr r0, [r4, #4]
	b _0808932C
_0808932A:
	ldr r0, [r5, #4]
_0808932C:
	asrs r0, r0, #8
	adds r3, r0, #0
	subs r3, #0x13
	cmp r6, #0
	beq _0808933A
	ldr r0, [r4]
	b _0808933C
_0808933A:
	ldr r0, [r5]
_0808933C:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0808934C
	ldr r0, _08089348 @ =gUnknown_03005AD7
	b _0808934E
	.align 2, 0
_08089348: .4byte gUnknown_03005AD7
_0808934C:
	ldr r0, _08089370 @ =gUnknown_03005A47
_0808934E:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _08089374 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	cmp r0, #0
	bge _080893F2
	lsls r1, r0, #8
	cmp r6, #0
	bne _080893DC
	b _080893EC
	.align 2, 0
_08089370: .4byte gUnknown_03005A47
_08089374: .4byte sub_803FF84
_08089378:
	mov r0, sl
	asrs r1, r0, #0x10
	ldr r0, [sp, #0x14]
	asrs r2, r0, #0x10
	cmp r6, #0
	beq _08089386
	ldr r3, _08089398 @ =gUnknown_03005AB0
_08089386:
	adds r0, r7, #0
	bl sub_80096B0
	cmp r0, #0
	beq _080893F2
	cmp r6, #0
	beq _0808939C
	ldr r0, [r4, #4]
	b _0808939E
	.align 2, 0
_08089398: .4byte gUnknown_03005AB0
_0808939C:
	ldr r0, [r5, #4]
_0808939E:
	asrs r0, r0, #8
	adds r3, r0, #0
	subs r3, #0x13
	cmp r6, #0
	beq _080893AC
	ldr r0, [r4]
	b _080893AE
_080893AC:
	ldr r0, [r5]
_080893AE:
	asrs r1, r0, #8
	cmp r6, #0
	beq _080893BC
	ldr r0, _080893B8 @ =gUnknown_03005AD7
	b _080893BE
	.align 2, 0
_080893B8: .4byte gUnknown_03005AD7
_080893BC:
	ldr r0, _080893E4 @ =gUnknown_03005A47
_080893BE:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _080893E8 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	cmp r0, #0
	bge _080893F2
	lsls r1, r0, #8
	cmp r6, #0
	beq _080893EC
_080893DC:
	ldr r0, [r4, #4]
_080893DE:
	adds r0, r0, r1
	str r0, [r4, #4]
	b _080893F2
	.align 2, 0
_080893E4: .4byte gUnknown_03005A47
_080893E8: .4byte sub_803FF84
_080893EC:
	ldr r0, [r5, #4]
	adds r0, r0, r1
_080893F0:
	str r0, [r5, #4]
_080893F2:
	adds r6, #1
	ldr r0, _0808946C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _08089402
	b _0808923C
_08089402:
	mov r1, sl
	asrs r2, r1, #0x10
	ldr r3, _08089470 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r6, #0xb8
	lsls r6, r6, #1
	adds r0, r1, r6
	cmp r2, r0
	bgt _08089436
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08089436
	ldr r0, [sp, #0x14]
	asrs r1, r0, #0x10
	movs r4, #2
	ldrsh r2, [r3, r4]
	subs r6, #0x50
	adds r0, r2, r6
	cmp r1, r0
	bgt _08089436
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _08089478
_08089436:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808945A
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808945A
	movs r3, #0x18
	ldrsh r1, [r7, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08089478
_0808945A:
	mov r4, r8
	ldrb r0, [r4, #8]
	ldr r6, [sp, #8]
	strb r0, [r6]
	ldr r0, _08089474 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080894DE
	.align 2, 0
_0808946C: .4byte gUnknown_03005088
_08089470: .4byte gCamera
_08089474: .4byte gCurTask
_08089478:
	ldr r0, _080894F0 @ =gUnknown_03005120
	ldr r0, [r0]
	movs r1, #0xa0
	bl Mod
	adds r2, r0, #0
	cmp r2, #0
	bne _080894C6
	mov r1, r8
	adds r1, #0x84
	movs r0, #0x66
	str r0, [r1]
	mov r0, r8
	adds r0, #0x74
	strb r2, [r0]
	ldr r0, _080894F4 @ =0xFFFFFB00
	mov r1, r8
	str r0, [r1, #0x78]
	str r2, [r1, #0x7c]
	adds r1, #0x80
	movs r0, #3
	str r0, [r1]
	movs r1, #0
	ldr r0, _080894F8 @ =0x00000237
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xb6
	bl m4aSongNumStart
	ldr r0, _080894FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08089500 @ =sub_8089504
	str r0, [r1, #8]
_080894C6:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
_080894DE:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080894F0: .4byte gUnknown_03005120
_080894F4: .4byte 0xFFFFFB00
_080894F8: .4byte 0x00000237
_080894FC: .4byte gCurTask
_08089500: .4byte sub_8089504

	thumb_func_start sub_8089504
sub_8089504: @ 0x08089504
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _080895C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r1, [r7]
	adds r0, #0xc
	adds r0, r4, r0
	str r0, [sp, #8]
	ldr r2, _080895C4 @ =0x03000044
	adds r2, r4, r2
	str r2, [sp, #0xc]
	ldrb r3, [r7, #8]
	lsls r3, r3, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #0x10
	ldrb r2, [r1, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r1, [r7, #0x78]
	adds r1, #0x25
	str r1, [r7, #0x78]
	ldr r0, [r7, #0x7c]
	adds r0, r0, r1
	str r0, [r7, #0x7c]
	ldr r1, _080895C8 @ =gCamera
	ldrh r0, [r1]
	lsrs r5, r3, #0x10
	str r5, [sp]
	asrs r3, r3, #0x10
	subs r0, r3, r0
	ldr r5, [sp, #8]
	strh r0, [r5, #0x16]
	ldrh r0, [r1, #2]
	lsrs r5, r2, #0x10
	str r5, [sp, #4]
	asrs r2, r2, #0x10
	subs r0, r2, r0
	ldr r5, [sp, #8]
	strh r0, [r5, #0x18]
	ldrh r0, [r1]
	subs r3, r3, r0
	ldr r0, [sp, #0xc]
	strh r3, [r0, #0x16]
	ldrh r0, [r1, #2]
	subs r2, r2, r0
	ldr r0, [r7, #0x7c]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldr r1, [sp, #0xc]
	strh r2, [r1, #0x18]
	movs r2, #0
	mov r8, r2
	ldr r5, _080895CC @ =0x03000074
	adds r5, r5, r4
	mov sb, r5
_0808958C:
	adds r0, r7, #0
	adds r0, #0x74
	ldrb r0, [r0]
	mov r1, r8
	asrs r0, r1
	movs r2, #1
	ands r0, r2
	ldr r5, [sp]
	lsls r5, r5, #0x10
	mov sl, r5
	ldr r1, [sp, #4]
	lsls r1, r1, #0x10
	str r1, [sp, #0x10]
	cmp r0, #0
	beq _0808965A
	ldr r1, [r7, #0x78]
	mov r2, r8
	cmp r2, #0
	beq _080895D8
	ldr r5, _080895D0 @ =gUnknown_03005AB0
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _080895D4 @ =gUnknown_03005A20
	b _080895E2
	.align 2, 0
_080895C0: .4byte gCurTask
_080895C4: .4byte 0x03000044
_080895C8: .4byte gCamera
_080895CC: .4byte 0x03000074
_080895D0: .4byte gUnknown_03005AB0
_080895D4: .4byte gUnknown_03005A20
_080895D8:
	ldr r2, _080895F8 @ =gUnknown_03005A20
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	adds r0, r2, #0
_080895E2:
	mov r5, r8
	cmp r5, #0
	beq _08089600
	ldr r1, _080895FC @ =gUnknown_03005AB0
	ldr r0, [r1, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0808960A
	b _08089618
	.align 2, 0
_080895F8: .4byte gUnknown_03005A20
_080895FC: .4byte gUnknown_03005AB0
_08089600:
	ldr r0, [r0, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08089618
_0808960A:
	movs r1, #1
	mov r2, r8
	lsls r1, r2
	mov r5, sb
	ldrb r0, [r5]
	bics r0, r1
	strb r0, [r5]
_08089618:
	ldr r0, [sp]
	lsls r3, r0, #0x10
	asrs r6, r3, #0x10
	ldr r1, [r7, #0x7c]
	asrs r1, r1, #8
	ldr r5, [sp, #4]
	lsls r2, r5, #0x10
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r5, _080896A4 @ =gUnknown_03005A20
	mov sl, r3
	str r2, [sp, #0x10]
	mov r0, r8
	cmp r0, #0
	beq _0808963C
	ldr r5, _080896A8 @ =gUnknown_03005AB0
_0808963C:
	ldr r0, [sp, #0xc]
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_800CE34
	cmp r0, #0
	bne _0808965A
	movs r1, #1
	mov r2, r8
	lsls r1, r2
	mov r5, sb
	ldrb r0, [r5]
	bics r0, r1
	strb r0, [r5]
_0808965A:
	mov r0, sl
	asrs r4, r0, #0x10
	ldr r1, [r7, #0x7c]
	asrs r1, r1, #8
	ldr r2, [sp, #0x10]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _080896A4 @ =gUnknown_03005A20
	mov r5, r8
	cmp r5, #0
	beq _08089676
	ldr r3, _080896A8 @ =gUnknown_03005AB0
_08089676:
	ldr r0, [sp, #0xc]
	adds r1, r4, #0
	bl sub_800B2BC
	cmp r0, #0
	beq _080896B8
	movs r0, #1
	mov r1, r8
	lsls r0, r1
	mov r2, sb
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	mov r5, r8
	cmp r5, #0
	beq _080896AC
	ldr r1, _080896A8 @ =gUnknown_03005AB0
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1, #4]
	b _080896B8
	.align 2, 0
_080896A4: .4byte gUnknown_03005A20
_080896A8: .4byte gUnknown_03005AB0
_080896AC:
	ldr r5, _08089710 @ =gUnknown_03005A20
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5, #4]
_080896B8:
	mov r2, sl
	asrs r1, r2, #0x10
	ldr r5, [sp, #0x10]
	asrs r2, r5, #0x10
	ldr r3, _08089710 @ =gUnknown_03005A20
	mov r0, r8
	cmp r0, #0
	beq _080896CA
	ldr r3, _08089714 @ =gUnknown_03005AB0
_080896CA:
	ldr r0, [sp, #8]
	bl sub_80096B0
	movs r1, #1
	add r8, r1
	ldr r0, _08089718 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	bge _080896E2
	b _0808958C
_080896E2:
	ldr r0, [r7, #0x7c]
	cmp r0, #0
	blt _0808973A
	adds r1, r7, #0
	adds r1, #0x80
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	beq _0808971C
	ldr r0, [r7, #0x78]
	lsls r0, r0, #1
	movs r1, #5
	bl Div
	rsbs r0, r0, #0
	str r0, [r7, #0x78]
	movs r0, #0
	mov r2, sb
	strb r0, [r2]
	str r0, [r7, #0x7c]
	b _0808973A
	.align 2, 0
_08089710: .4byte gUnknown_03005A20
_08089714: .4byte gUnknown_03005AB0
_08089718: .4byte gUnknown_03005088
_0808971C:
	ldr r1, [sp, #8]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0
	adds r0, #0xf6
	ldr r5, [sp, #8]
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _08089760 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08089764 @ =sub_80891C8
	str r0, [r1, #8]
_0808973A:
	adds r0, r7, #0
	adds r0, #0x84
	ldr r1, [r0]
	subs r2, r1, #1
	str r2, [r0]
	cmp r2, #0x30
	bne _0808976C
	ldr r1, [sp, #8]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08089768 @ =0x00000237
	ldr r1, [sp, #8]
	strh r0, [r1, #0xa]
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	b _080899B2
	.align 2, 0
_08089760: .4byte gCurTask
_08089764: .4byte sub_80891C8
_08089768: .4byte 0x00000237
_0808976C:
	adds r0, r1, #0
	subs r0, #0x32
	cmp r0, #0x2e
	bls _08089776
	b _080899C8
_08089776:
	movs r4, #0
	ldr r5, _080897C4 @ =gUnknown_03005C14
	mov r2, sl
	asrs r2, r2, #0x10
	mov sb, r2
	ldr r7, _080897C8 @ =gUnknown_03005AB0
	ldr r6, _080897CC @ =gUnknown_03005A20
	ldr r0, [sp, #0x10]
	asrs r0, r0, #0x10
	mov r8, r0
_0808978A:
	ldr r1, _080897C4 @ =gUnknown_03005C14
	cmp r4, #0
	beq _08089792
	ldr r1, _080897D0 @ =gUnknown_03005C64
_08089792:
	ldr r1, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0808979E
	b _080899A2
_0808979E:
	adds r0, r5, #0
	cmp r4, #0
	beq _080897A6
	ldr r0, _080897D0 @ =gUnknown_03005C64
_080897A6:
	movs r3, #4
	ldrsb r3, [r0, r3]
	ldr r1, [sp, #8]
	adds r1, #0x34
	movs r2, #0
	ldrsb r2, [r1, r2]
	add r2, sb
	cmp r4, #0
	beq _080897D4
	ldr r0, [r7]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	ble _080897DE
	b _0808980A
	.align 2, 0
_080897C4: .4byte gUnknown_03005C14
_080897C8: .4byte gUnknown_03005AB0
_080897CC: .4byte gUnknown_03005A20
_080897D0: .4byte gUnknown_03005C64
_080897D4:
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	bgt _0808980A
_080897DE:
	adds r0, r5, #0
	cmp r4, #0
	beq _080897E6
	ldr r0, _080897FC @ =gUnknown_03005C64
_080897E6:
	movs r3, #4
	ldrsb r3, [r0, r3]
	ldr r0, [sp, #8]
	adds r0, #0x36
	movs r2, #0
	ldrsb r2, [r0, r2]
	add r2, sb
	cmp r4, #0
	beq _08089800
	ldr r0, [r7]
	b _08089802
	.align 2, 0
_080897FC: .4byte gUnknown_03005C64
_08089800:
	ldr r0, [r6]
_08089802:
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	bge _08089892
_0808980A:
	adds r0, r5, #0
	cmp r4, #0
	beq _08089812
	ldr r0, _0808982C @ =gUnknown_03005C64
_08089812:
	movs r2, #4
	ldrsb r2, [r0, r2]
	movs r3, #0
	ldrsb r3, [r1, r3]
	add r3, sb
	cmp r4, #0
	beq _08089830
	ldr r0, [r7]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r3, r0
	bge _0808983C
	b _080899A2
	.align 2, 0
_0808982C: .4byte gUnknown_03005C64
_08089830:
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r3, r0
	bge _0808983C
	b _080899A2
_0808983C:
	adds r0, r5, #0
	cmp r4, #0
	beq _08089844
	ldr r0, _08089880 @ =gUnknown_03005C64
_08089844:
	movs r3, #4
	ldrsb r3, [r0, r3]
	adds r0, r5, #0
	cmp r4, #0
	beq _08089850
	ldr r0, _08089880 @ =gUnknown_03005C64
_08089850:
	movs r2, #6
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	cmp r4, #0
	beq _0808985C
	ldr r0, _08089880 @ =gUnknown_03005C64
_0808985C:
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r2, r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sb
	cmp r4, #0
	beq _08089884
	ldr r0, [r7]
	asrs r0, r0, #8
	adds r0, r0, r3
	adds r0, r0, r2
	cmp r0, r1
	bge _08089892
	b _080899A2
	.align 2, 0
_08089880: .4byte gUnknown_03005C64
_08089884:
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, r0, r3
	adds r0, r0, r2
	cmp r0, r1
	bge _08089892
	b _080899A2
_08089892:
	adds r0, r5, #0
	cmp r4, #0
	beq _0808989A
	ldr r0, _080898B8 @ =gUnknown_03005C64
_0808989A:
	movs r3, #5
	ldrsb r3, [r0, r3]
	ldr r1, [sp, #8]
	adds r1, #0x35
	movs r2, #0
	ldrsb r2, [r1, r2]
	add r2, r8
	cmp r4, #0
	beq _080898BC
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	ble _080898C6
	b _080898F2
	.align 2, 0
_080898B8: .4byte gUnknown_03005C64
_080898BC:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	bgt _080898F2
_080898C6:
	adds r0, r5, #0
	cmp r4, #0
	beq _080898CE
	ldr r0, _080898E4 @ =gUnknown_03005C64
_080898CE:
	movs r3, #5
	ldrsb r3, [r0, r3]
	ldr r0, [sp, #8]
	adds r0, #0x37
	movs r2, #0
	ldrsb r2, [r0, r2]
	add r2, r8
	cmp r4, #0
	beq _080898E8
	ldr r0, [r7, #4]
	b _080898EA
	.align 2, 0
_080898E4: .4byte gUnknown_03005C64
_080898E8:
	ldr r0, [r6, #4]
_080898EA:
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r2, r0
	bge _08089974
_080898F2:
	adds r0, r5, #0
	cmp r4, #0
	beq _080898FA
	ldr r0, _08089914 @ =gUnknown_03005C64
_080898FA:
	movs r2, #5
	ldrsb r2, [r0, r2]
	movs r3, #0
	ldrsb r3, [r1, r3]
	add r3, r8
	cmp r4, #0
	beq _08089918
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r3, r0
	bge _08089922
	b _080899A2
	.align 2, 0
_08089914: .4byte gUnknown_03005C64
_08089918:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r3, r0
	blt _080899A2
_08089922:
	adds r0, r5, #0
	cmp r4, #0
	beq _0808992A
	ldr r0, _08089964 @ =gUnknown_03005C64
_0808992A:
	movs r3, #5
	ldrsb r3, [r0, r3]
	adds r0, r5, #0
	cmp r4, #0
	beq _08089936
	ldr r0, _08089964 @ =gUnknown_03005C64
_08089936:
	movs r2, #7
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	cmp r4, #0
	beq _08089942
	ldr r0, _08089964 @ =gUnknown_03005C64
_08089942:
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r2, r2, r0
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, r8
	cmp r4, #0
	beq _08089968
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	adds r0, r0, r2
	cmp r0, r1
	bge _08089974
	b _080899A2
	.align 2, 0
_08089964: .4byte gUnknown_03005C64
_08089968:
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	adds r0, r0, r3
	adds r0, r0, r2
	cmp r0, r1
	blt _080899A2
_08089974:
	cmp r4, #0
	beq _0808998C
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080899A2
	ldr r0, _08089988 @ =gUnknown_03005A20
	b _08089998
	.align 2, 0
_08089988: .4byte gUnknown_03005A20
_0808998C:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	ands r1, r0
	ldr r0, _080899BC @ =gUnknown_03005A20
	cmp r1, #0
	bne _080899A2
_08089998:
	cmp r4, #0
	beq _0808999E
	ldr r0, _080899C0 @ =gUnknown_03005AB0
_0808999E:
	bl sub_800C558
_080899A2:
	adds r4, #1
	ldr r0, _080899C4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _080899B2
	b _0808978A
_080899B2:
	ldr r0, [sp, #8]
	bl UpdateSpriteAnimation
	b _080899F2
	.align 2, 0
_080899BC: .4byte gUnknown_03005A20
_080899C0: .4byte gUnknown_03005AB0
_080899C4: .4byte gUnknown_03005088
_080899C8:
	cmp r2, #0x2f
	bgt _080899F2
	ldr r0, [sp, #8]
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080899EC
	ldr r1, [sp, #8]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0
	adds r0, #0xf6
	ldr r2, [sp, #8]
	strh r0, [r2, #0xa]
	adds r0, r2, #0
	adds r0, #0x20
	strb r1, [r0]
_080899EC:
	ldr r0, [sp, #8]
	bl UpdateSpriteAnimation
_080899F2:
	ldr r0, [sp, #8]
	bl DisplaySprite
	ldr r0, [sp, #0xc]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #0xc]
	bl DisplaySprite
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8089A14
sub_8089A14: @ 0x08089A14
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

	thumb_func_start CreateEntity_Interactable080
CreateEntity_Interactable080: @ 0x08089A30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	mov sl, r3
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	mov r0, sl
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r0, _08089BA4 @ =sub_8089BF0
	ldr r1, _08089BA8 @ =sub_808B230
	str r1, [sp]
	movs r1, #0xa4
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _08089BAC @ =0x0300000C
	adds r5, r4, r1
	adds r1, #0x30
	adds r2, r4, r1
	adds r1, #0x30
	adds r7, r4, r1
	mov r1, r8
	strh r1, [r0, #4]
	mov r1, sb
	strh r1, [r0, #6]
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #8]
	mov r1, sl
	strb r1, [r0, #9]
	ldr r1, _08089BB0 @ =0x0300009C
	adds r0, r4, r1
	movs r1, #0
	strh r1, [r0]
	ldr r1, _08089BB4 @ =0x0300009E
	adds r0, r4, r1
	movs r1, #0
	strh r1, [r0]
	ldr r1, _08089BB8 @ =0x030000A0
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #0x1e
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xf9
	lsls r0, r0, #1
	mov sl, r0
	mov r1, sl
	strh r1, [r5, #0xa]
	ldr r1, _08089BBC @ =0x0300002C
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x1a]
	movs r0, #0
	strh r0, [r5, #8]
	strh r0, [r5, #0x14]
	strh r0, [r5, #0x1c]
	ldr r0, _08089BC0 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08089BC4 @ =0x0300002E
	adds r0, r4, r1
	movs r1, #0x10
	mov sb, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08089BC8 @ =0x03000031
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r5, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r5, #0x10]
	movs r0, #3
	bl VramMalloc
	ldr r2, [sp, #4]
	str r0, [r2, #4]
	mov r0, sl
	strh r0, [r2, #0xa]
	ldr r0, _08089BCC @ =0x0300005C
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	movs r5, #0x88
	lsls r5, r5, #3
	strh r5, [r2, #0x1a]
	movs r1, #0
	strh r1, [r2, #8]
	strh r1, [r2, #0x14]
	strh r1, [r2, #0x1c]
	ldr r0, _08089BD0 @ =0x0300005D
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08089BD4 @ =0x0300005E
	adds r0, r4, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08089BD8 @ =0x03000061
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	mov r0, r8
	str r0, [r2, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r2, #0x10]
	movs r0, #1
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _08089BDC @ =0x000001F7
	strh r0, [r7, #0xa]
	ldr r1, _08089BE0 @ =0x0300008C
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	strh r5, [r7, #0x1a]
	movs r0, #0
	strh r0, [r7, #8]
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x1c]
	ldr r0, _08089BE4 @ =0x0300008D
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08089BE8 @ =0x0300008E
	adds r0, r4, r1
	mov r1, sb
	strb r1, [r0]
	ldr r0, _08089BEC @ =0x03000091
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	mov r0, r8
	str r0, [r7, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r7, #0x10]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089BA4: .4byte sub_8089BF0
_08089BA8: .4byte sub_808B230
_08089BAC: .4byte 0x0300000C
_08089BB0: .4byte 0x0300009C
_08089BB4: .4byte 0x0300009E
_08089BB8: .4byte 0x030000A0
_08089BBC: .4byte 0x0300002C
_08089BC0: .4byte 0x0300002D
_08089BC4: .4byte 0x0300002E
_08089BC8: .4byte 0x03000031
_08089BCC: .4byte 0x0300005C
_08089BD0: .4byte 0x0300005D
_08089BD4: .4byte 0x0300005E
_08089BD8: .4byte 0x03000061
_08089BDC: .4byte 0x000001F7
_08089BE0: .4byte 0x0300008C
_08089BE4: .4byte 0x0300008D
_08089BE8: .4byte 0x0300008E
_08089BEC: .4byte 0x03000091

	thumb_func_start sub_8089BF0
sub_8089BF0: @ 0x08089BF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	mov r8, r0
	ldr r0, _08089C7C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, [r7]
	str r2, [sp, #4]
	ldr r3, _08089C80 @ =0x0300000C
	adds r6, r1, r3
	ldr r5, _08089C84 @ =0x0300003C
	adds r5, r5, r1
	mov sb, r5
	adds r0, #0x6c
	adds r0, r1, r0
	str r0, [sp, #8]
	ldrb r0, [r7, #8]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08089C88 @ =gCamera
	ldrh r0, [r3]
	mov r2, sl
	lsls r4, r2, #0x10
	asrs r2, r4, #0x10
	subs r0, r2, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r5, r1, #0x10
	str r5, [sp]
	asrs r1, r1, #0x10
	subs r0, r1, r0
	adds r0, #0x30
	strh r0, [r6, #0x18]
	ldrh r0, [r3]
	subs r0, r2, r0
	mov r5, sb
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r1, r0
	strh r0, [r5, #0x18]
	ldrh r0, [r3]
	subs r2, r2, r0
	ldr r0, [sp, #8]
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	ldr r2, [sp, #8]
	strh r1, [r2, #0x18]
	str r4, [sp, #0xc]
	b _08089C9C
	.align 2, 0
_08089C7C: .4byte gCurTask
_08089C80: .4byte 0x0300000C
_08089C84: .4byte 0x0300003C
_08089C88: .4byte gCamera
_08089C8C:
	movs r3, #1
	add r8, r3
	ldr r0, _08089D70 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	bge _08089D06
_08089C9C:
	ldr r5, _08089D74 @ =gUnknown_03005A20
	mov r0, r8
	cmp r0, #0
	beq _08089CA6
	ldr r5, _08089D78 @ =gUnknown_03005AB0
_08089CA6:
	ldr r1, [sp]
	lsls r4, r1, #0x10
	movs r3, #0xc0
	lsls r3, r3, #0xe
	adds r2, r4, r3
	adds r0, r6, #0
	ldr r3, [sp, #0xc]
	asrs r1, r3, #0x10
	asrs r2, r2, #0x10
	adds r3, r5, #0
	bl sub_800CE34
	mov r1, sl
	lsls r1, r1, #0x10
	str r1, [sp, #0x10]
	cmp r0, #0
	beq _08089C8C
	adds r0, r7, #0
	adds r0, #0x9c
	movs r2, #0
	strh r2, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0xa0
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r3, _08089D7C @ =gUnknown_03005A46
	ldrb r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08089D80 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08089D84 @ =sub_8089DE0
	str r0, [r1, #8]
	movs r0, #0xb5
	bl m4aSongNumStart
_08089D06:
	ldr r5, [sp, #0x10]
	asrs r2, r5, #0x10
	ldr r3, _08089D88 @ =gCamera
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	cmp r2, r0
	bgt _08089D3A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08089D3A
	asrs r2, r4, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _08089D3A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _08089D8C
_08089D3A:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08089D5E
	movs r5, #0x18
	ldrsh r0, [r6, r5]
	adds r0, #0x80
	cmp r0, #0
	blt _08089D5E
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08089D8C
_08089D5E:
	ldrb r0, [r7, #8]
	ldr r1, [sp, #4]
	strb r0, [r1]
	ldr r0, _08089D80 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08089DCA
	.align 2, 0
_08089D70: .4byte gUnknown_03005088
_08089D74: .4byte gUnknown_03005A20
_08089D78: .4byte gUnknown_03005AB0
_08089D7C: .4byte gUnknown_03005A46
_08089D80: .4byte gCurTask
_08089D84: .4byte sub_8089DE0
_08089D88: .4byte gCamera
_08089D8C:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	ldr r0, _08089DDC @ =gCamera
	ldrh r1, [r0, #2]
	asrs r0, r4, #0x10
	subs r0, r0, r1
	adds r0, #0x18
	mov r2, sb
	strh r0, [r2, #0x18]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	ldr r0, [sp, #8]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #8]
	bl DisplaySprite
_08089DCA:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089DDC: .4byte gCamera

	thumb_func_start sub_8089DE0
sub_8089DE0: @ 0x08089DE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _08089F38 @ =gCurTask
	ldr r0, [r1]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	ldr r2, [r0]
	str r2, [sp, #8]
	ldr r3, _08089F3C @ =0x0300000C
	adds r6, r5, r3
	ldr r4, _08089F40 @ =0x0300003C
	adds r7, r5, r4
	ldr r0, _08089F44 @ =0x0300006C
	adds r0, r0, r5
	mov sb, r0
	mov r1, r8
	ldrb r2, [r1, #8]
	lsls r2, r2, #3
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, [sp, #8]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	mov r4, r8
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08089F48 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	str r4, [sp]
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r4, r1, #0x10
	str r4, [sp, #4]
	asrs r1, r1, #0x10
	subs r0, r1, r0
	adds r0, #0x30
	strh r0, [r6, #0x18]
	ldrh r0, [r3]
	subs r0, r2, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r1, r0
	strh r0, [r7, #0x18]
	ldrh r0, [r3]
	subs r0, r2, r0
	mov r4, sb
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r1, r0
	strh r0, [r4, #0x18]
	ldr r4, _08089F4C @ =0x030000A0
	adds r0, r5, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r4, _08089F50 @ =gUnknown_03005A20
	mov sl, r3
	cmp r0, #0
	beq _08089E74
	ldr r4, _08089F54 @ =gUnknown_03005AB0
_08089E74:
	ldr r0, [r4, #0x10]
	movs r3, #0x80
	ands r0, r3
	cmp r0, #0
	bne _08089E8A
	lsls r0, r2, #8
	str r0, [r4]
	adds r0, r1, #0
	adds r0, #0x68
	lsls r0, r0, #8
	str r0, [r4, #4]
_08089E8A:
	ldr r0, _08089F58 @ =0x0300009C
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08089EC4
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #0x10]
	ands r0, r3
	cmp r0, #0
	bne _08089EBC
	strh r0, [r4, #8]
	strh r0, [r4, #0xc]
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	bl sub_8046CEC
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x26
	strb r0, [r1]
_08089EBC:
	ldr r2, _08089F38 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _08089F5C @ =sub_8089FB4
	str r0, [r1, #8]
_08089EC4:
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	mov r4, sl
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _08089F00
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08089F00
	ldr r4, [sp, #4]
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	mov r0, sl
	movs r2, #2
	ldrsh r3, [r0, r2]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r3, r4
	cmp r1, r0
	bgt _08089F00
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bge _08089F60
_08089F00:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08089F24
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08089F24
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08089F60
_08089F24:
	mov r3, r8
	ldrb r0, [r3, #8]
	ldr r4, [sp, #8]
	strb r0, [r4]
	ldr r0, _08089F38 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08089FA0
	.align 2, 0
_08089F38: .4byte gCurTask
_08089F3C: .4byte 0x0300000C
_08089F40: .4byte 0x0300003C
_08089F44: .4byte 0x0300006C
_08089F48: .4byte gCamera
_08089F4C: .4byte 0x030000A0
_08089F50: .4byte gUnknown_03005A20
_08089F54: .4byte gUnknown_03005AB0
_08089F58: .4byte 0x0300009C
_08089F5C: .4byte sub_8089FB4
_08089F60:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _08089FB0 @ =gCamera
	ldrh r1, [r0, #2]
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	adds r0, #0x18
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
_08089FA0:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089FB0: .4byte gCamera

	thumb_func_start sub_8089FB4
sub_8089FB4: @ 0x08089FB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _0808A134 @ =gCurTask
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov sb, r0
	ldr r2, [r0]
	str r2, [sp, #0xc]
	ldr r3, _0808A138 @ =0x0300000C
	adds r6, r4, r3
	ldr r5, _0808A13C @ =0x0300003C
	adds r7, r4, r5
	ldr r0, _0808A140 @ =0x0300006C
	adds r0, r0, r4
	mov sl, r0
	mov r1, sb
	ldrb r0, [r1, #8]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	mov r2, sb
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r3, #0x90
	adds r3, r3, r4
	mov r8, r3
	ldrh r0, [r3]
	movs r1, #0x1e
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0x1e
	bl Div
	lsls r0, r0, #0x10
	ldr r3, _0808A144 @ =gCamera
	ldrh r1, [r3]
	ldr r5, [sp]
	lsls r2, r5, #0x10
	asrs r5, r2, #0x10
	subs r1, r5, r1
	strh r1, [r6, #0x16]
	ldrh r1, [r3, #2]
	mov ip, r1
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r2, ip
	subs r2, r1, r2
	str r2, [sp, #0x10]
	lsrs r2, r0, #0x10
	str r2, [sp, #8]
	asrs r0, r0, #0x10
	mov ip, r0
	ldr r2, [sp, #0x10]
	add r2, ip
	strh r2, [r6, #0x18]
	ldrh r0, [r3]
	subs r0, r5, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r1, r0
	strh r0, [r7, #0x18]
	ldrh r0, [r3]
	subs r0, r5, r0
	mov r2, sl
	strh r0, [r2, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r1, r0
	strh r0, [r2, #0x18]
	ldr r3, _0808A148 @ =0x030000A0
	adds r4, r4, r3
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldr r4, _0808A14C @ =gUnknown_03005A20
	cmp r0, #0
	beq _0808A074
	ldr r4, _0808A150 @ =gUnknown_03005AB0
_0808A074:
	ldr r0, [r4, #0x10]
	movs r2, #0x80
	ands r0, r2
	cmp r0, #0
	bne _0808A08C
	lsls r0, r5, #8
	str r0, [r4]
	mov r5, ip
	adds r0, r1, r5
	adds r0, #0x38
	lsls r0, r0, #8
	str r0, [r4, #4]
_0808A08C:
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0808A0C4
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #0x10]
	ands r0, r2
	cmp r0, #0
	bne _0808A0BC
	strh r0, [r4, #8]
	strh r0, [r4, #0xc]
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	bl sub_8046CEC
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x26
	strb r0, [r1]
_0808A0BC:
	ldr r2, _0808A134 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _0808A154 @ =sub_808A1B4
	str r0, [r1, #8]
_0808A0C4:
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808A144 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	cmp r2, r0
	bgt _0808A0FC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0808A0FC
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	subs r5, #0x50
	adds r0, r1, r5
	cmp r2, r0
	bgt _0808A0FC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808A158
_0808A0FC:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808A120
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808A120
	movs r2, #0x18
	ldrsh r1, [r6, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808A158
_0808A120:
	mov r3, sb
	ldrb r0, [r3, #8]
	ldr r4, [sp, #0xc]
	strb r0, [r4]
	ldr r0, _0808A134 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808A19E
	.align 2, 0
_0808A134: .4byte gCurTask
_0808A138: .4byte 0x0300000C
_0808A13C: .4byte 0x0300003C
_0808A140: .4byte 0x0300006C
_0808A144: .4byte gCamera
_0808A148: .4byte 0x030000A0
_0808A14C: .4byte gUnknown_03005A20
_0808A150: .4byte gUnknown_03005AB0
_0808A154: .4byte sub_808A1B4
_0808A158:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _0808A1B0 @ =gCamera
	ldrh r1, [r0, #2]
	ldr r5, [sp, #4]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	ldr r2, [sp, #8]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x11
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
_0808A19E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808A1B0: .4byte gCamera

	thumb_func_start sub_808A1B4
sub_808A1B4: @ 0x0808A1B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0808A2B8 @ =gCurTask
	ldr r0, [r1]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov sl, r0
	ldr r2, [r0]
	str r2, [sp, #8]
	ldr r3, _0808A2BC @ =0x0300000C
	adds r3, r3, r6
	mov r8, r3
	ldr r4, _0808A2C0 @ =0x0300006C
	adds r4, r6, r4
	str r4, [sp, #0xc]
	ldrb r1, [r0, #8]
	lsls r1, r1, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r2, [r2, #1]
	lsls r2, r2, #3
	mov r5, sl
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r0, _0808A2C4 @ =0x0300009C
	adds r0, r0, r6
	mov ip, r0
	ldrh r3, [r0]
	ldr r4, _0808A2C8 @ =gCamera
	ldrh r0, [r4]
	lsrs r5, r1, #0x10
	str r5, [sp]
	asrs r7, r1, #0x10
	subs r0, r7, r0
	lsls r3, r3, #0x11
	asrs r3, r3, #0x10
	adds r0, r3, r0
	movs r1, #0
	mov sb, r1
	mov r5, r8
	strh r0, [r5, #0x16]
	ldrh r0, [r4, #2]
	lsrs r1, r2, #0x10
	str r1, [sp, #4]
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x18]
	ldrh r0, [r4]
	subs r0, r7, r0
	adds r0, r3, r0
	ldr r5, [sp, #0xc]
	strh r0, [r5, #0x16]
	ldrh r0, [r4, #2]
	subs r0, r2, r0
	strh r0, [r5, #0x18]
	ldr r1, _0808A2CC @ =0x030000A0
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r5, _0808A2D0 @ =gUnknown_03005A20
	cmp r0, #0
	beq _0808A248
	ldr r5, _0808A2D4 @ =gUnknown_03005AB0
_0808A248:
	ldr r4, [r5, #0x10]
	movs r1, #0x80
	ands r1, r4
	cmp r1, #0
	bne _0808A260
	adds r0, r7, r3
	lsls r0, r0, #8
	str r0, [r5]
	adds r0, r2, #0
	adds r0, #0x38
	lsls r0, r0, #8
	str r0, [r5, #4]
_0808A260:
	ldr r2, [sp, #8]
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	cmp r3, r0
	ble _0808A2E8
	cmp r1, #0
	bne _0808A28A
	ldr r0, _0808A2D8 @ =0xFFBFFFFF
	ands r4, r0
	str r4, [r5, #0x10]
	mov r3, sb
	strh r3, [r5, #8]
	strh r3, [r5, #0xc]
	strh r3, [r5, #0xa]
	adds r0, r5, #0
	bl sub_8046CEC
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x12
	strb r0, [r1]
_0808A28A:
	ldr r4, _0808A2DC @ =0x0300009E
	adds r0, r6, r4
	mov r1, sb
	strh r1, [r0]
	ldr r2, _0808A2E0 @ =0x0300002C
	adds r1, r6, r2
	movs r0, #2
	strb r0, [r1]
	movs r0, #0xb5
	bl m4aSongNumStop
	ldr r3, _0808A2B8 @ =gCurTask
	ldr r1, [r3]
	ldr r0, _0808A2E4 @ =sub_808A394
	str r0, [r1, #8]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	b _0808A2F0
	.align 2, 0
_0808A2B8: .4byte gCurTask
_0808A2BC: .4byte 0x0300000C
_0808A2C0: .4byte 0x0300006C
_0808A2C4: .4byte 0x0300009C
_0808A2C8: .4byte gCamera
_0808A2CC: .4byte 0x030000A0
_0808A2D0: .4byte gUnknown_03005A20
_0808A2D4: .4byte gUnknown_03005AB0
_0808A2D8: .4byte 0xFFBFFFFF
_0808A2DC: .4byte 0x0300009E
_0808A2E0: .4byte 0x0300002C
_0808A2E4: .4byte sub_808A394
_0808A2E8:
	mov r4, ip
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_0808A2F0:
	ldr r5, [sp]
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	ldr r3, _0808A364 @ =gCamera
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r2, r4
	cmp r1, r0
	bgt _0808A32A
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0808A32A
	ldr r5, [sp, #4]
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808A32A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808A36C
_0808A32A:
	mov r4, r8
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808A350
	movs r5, #0x18
	ldrsh r0, [r4, r5]
	adds r0, #0x80
	cmp r0, #0
	blt _0808A350
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808A36C
_0808A350:
	mov r1, sl
	ldrb r0, [r1, #8]
	ldr r2, [sp, #8]
	strb r0, [r2]
	ldr r0, _0808A368 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808A384
	.align 2, 0
_0808A364: .4byte gCamera
_0808A368: .4byte gCurTask
_0808A36C:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	ldr r0, [sp, #0xc]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #0xc]
	bl DisplaySprite
_0808A384:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808A394
sub_808A394: @ 0x0808A394
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0808A460 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r1, [r7]
	mov ip, r1
	adds r0, #0xc
	adds r5, r2, r0
	ldr r1, _0808A464 @ =0x0300006C
	adds r4, r2, r1
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, ip
	ldrb r3, [r0, #1]
	lsls r3, r3, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r0, _0808A468 @ =0x0300009C
	adds r2, r2, r0
	ldrh r2, [r2]
	ldr r6, _0808A46C @ =gCamera
	ldrh r0, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	lsls r2, r2, #0x11
	asrs r2, r2, #0x10
	adds r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r6, #2]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	subs r0, r3, r0
	strh r0, [r5, #0x18]
	ldrh r0, [r6]
	subs r0, r1, r0
	adds r2, r2, r0
	strh r2, [r4, #0x16]
	ldrh r0, [r6, #2]
	subs r0, r3, r0
	strh r0, [r4, #0x18]
	movs r0, #0
	ldrsh r2, [r6, r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r0, r0, r2
	mov sb, r0
	cmp r1, sb
	bgt _0808A42A
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0808A42A
	movs r2, #2
	ldrsh r1, [r6, r2]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r3, r0
	bgt _0808A42A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	bge _0808A470
_0808A42A:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808A44E
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808A44E
	movs r2, #0x18
	ldrsh r1, [r5, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808A470
_0808A44E:
	ldrb r0, [r7, #8]
	mov r1, ip
	strb r0, [r1]
	mov r2, r8
	ldr r0, [r2]
	bl TaskDestroy
	b _0808A4A2
	.align 2, 0
_0808A460: .4byte gCurTask
_0808A464: .4byte 0x0300006C
_0808A468: .4byte 0x0300009C
_0808A46C: .4byte gCamera
_0808A470:
	adds r1, r7, #0
	adds r1, #0x9e
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0808A48A
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _0808A4B0 @ =sub_808A4B4
	str r0, [r1, #8]
_0808A48A:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0808A4A2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808A4B0: .4byte sub_808A4B4

	thumb_func_start sub_808A4B4
sub_808A4B4: @ 0x0808A4B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0808A540 @ =gCurTask
	ldr r0, [r0]
	mov ip, r0
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldr r1, [r5]
	str r1, [sp]
	ldr r3, _0808A544 @ =0x0300000C
	adds r6, r2, r3
	ldr r7, _0808A548 @ =0x0300006C
	adds r7, r7, r2
	mov r8, r7
	ldrb r3, [r5, #8]
	lsls r3, r3, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _0808A54C @ =0x0300009C
	adds r0, r2, r0
	str r0, [sp, #4]
	ldrh r2, [r0]
	ldr r4, _0808A550 @ =gCamera
	ldrh r0, [r4]
	lsrs r7, r3, #0x10
	mov sb, r7
	asrs r3, r3, #0x10
	subs r0, r3, r0
	lsls r2, r2, #0x11
	asrs r2, r2, #0x10
	adds r0, r2, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r4, #2]
	lsrs r7, r1, #0x10
	mov sl, r7
	asrs r1, r1, #0x10
	subs r0, r1, r0
	strh r0, [r6, #0x18]
	ldrh r0, [r4]
	subs r3, r3, r0
	adds r2, r2, r3
	mov r0, r8
	strh r2, [r0, #0x16]
	ldrh r0, [r4, #2]
	subs r1, r1, r0
	mov r2, r8
	strh r1, [r2, #0x18]
	ldr r3, [sp, #4]
	ldrh r0, [r3]
	ldr r2, _0808A540 @ =gCurTask
	cmp r0, #0
	bne _0808A558
	ldr r0, _0808A554 @ =sub_808A5F0
	mov r7, ip
	str r0, [r7, #8]
	b _0808A55E
	.align 2, 0
_0808A540: .4byte gCurTask
_0808A544: .4byte 0x0300000C
_0808A548: .4byte 0x0300006C
_0808A54C: .4byte 0x0300009C
_0808A550: .4byte gCamera
_0808A554: .4byte sub_808A5F0
_0808A558:
	subs r0, #1
	ldr r1, [sp, #4]
	strh r0, [r1]
_0808A55E:
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	movs r7, #0
	ldrsh r1, [r4, r7]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r3, r0
	bgt _0808A594
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	blt _0808A594
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r3, #2
	ldrsh r4, [r4, r3]
	subs r7, #0x50
	adds r0, r4, r7
	cmp r1, r0
	bgt _0808A594
	adds r0, r4, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0808A5C6
_0808A594:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808A5B8
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808A5B8
	movs r3, #0x18
	ldrsh r1, [r6, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808A5C6
_0808A5B8:
	ldrb r0, [r5, #8]
	ldr r7, [sp]
	strb r0, [r7]
	ldr r0, [r2]
	bl TaskDestroy
	b _0808A5DE
_0808A5C6:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
_0808A5DE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808A5F0
sub_808A5F0: @ 0x0808A5F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _0808A714 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov sb, r0
	ldr r3, [r0]
	str r3, [sp, #8]
	ldr r5, _0808A718 @ =0x0300000C
	adds r6, r2, r5
	ldr r0, _0808A71C @ =0x0300003C
	adds r0, r0, r2
	mov r8, r0
	ldr r1, _0808A720 @ =0x0300006C
	adds r1, r1, r2
	mov sl, r1
	mov r3, sb
	ldrb r4, [r3, #8]
	lsls r4, r4, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, [sp, #8]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	ldrh r1, [r3, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, _0808A724 @ =0x0300009C
	adds r7, r2, r0
	ldrh r0, [r7]
	movs r1, #0x1e
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0x1e
	bl Div
	movs r1, #0x30
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _0808A728 @ =gCamera
	ldrh r0, [r3]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x16]
	ldrh r2, [r3, #2]
	ldr r5, [sp]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	subs r2, r5, r2
	lsrs r0, r1, #0x10
	str r0, [sp, #4]
	asrs r1, r1, #0x10
	adds r1, r1, r2
	strh r1, [r6, #0x18]
	ldrh r0, [r3]
	subs r0, r4, r0
	mov r1, r8
	strh r0, [r1, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r5, r0
	strh r0, [r1, #0x18]
	ldrh r0, [r3]
	subs r0, r4, r0
	mov r2, sl
	strh r0, [r2, #0x16]
	ldrh r0, [r3, #2]
	subs r0, r5, r0
	strh r0, [r2, #0x18]
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0808A6B2
	movs r0, #0
	strh r0, [r7]
	ldr r0, _0808A714 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808A72C @ =sub_808A78C
	str r0, [r1, #8]
_0808A6B2:
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0808A6DC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0808A6DC
	movs r0, #2
	ldrsh r1, [r3, r0]
	subs r2, #0x50
	adds r0, r1, r2
	cmp r5, r0
	bgt _0808A6DC
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	bge _0808A730
_0808A6DC:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808A700
	movs r3, #0x18
	ldrsh r0, [r6, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0808A700
	movs r5, #0x18
	ldrsh r1, [r6, r5]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808A730
_0808A700:
	mov r1, sb
	ldrb r0, [r1, #8]
	ldr r2, [sp, #8]
	strb r0, [r2]
	ldr r0, _0808A714 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808A778
	.align 2, 0
_0808A714: .4byte gCurTask
_0808A718: .4byte 0x0300000C
_0808A71C: .4byte 0x0300003C
_0808A720: .4byte 0x0300006C
_0808A724: .4byte 0x0300009C
_0808A728: .4byte gCamera
_0808A72C: .4byte sub_808A78C
_0808A730:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	ldr r0, _0808A788 @ =gCamera
	ldrh r1, [r0, #2]
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	ldr r5, [sp, #4]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x11
	adds r0, r0, r1
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
_0808A778:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808A788: .4byte gCamera

	thumb_func_start sub_808A78C
sub_808A78C: @ 0x0808A78C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0808A88C @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r7, r0
	ldr r1, [r3]
	mov sl, r1
	ldr r2, _0808A890 @ =0x0300000C
	adds r6, r7, r2
	ldr r5, _0808A894 @ =0x0300003C
	adds r5, r5, r7
	mov r8, r5
	adds r0, #0x6c
	adds r0, r0, r7
	mov sb, r0
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r4, _0808A898 @ =gCamera
	ldrh r0, [r4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r4, #2]
	lsrs r5, r1, #0x10
	str r5, [sp]
	asrs r5, r1, #0x10
	subs r0, r5, r0
	adds r0, #0x30
	strh r0, [r6, #0x18]
	ldrh r0, [r4]
	subs r0, r2, r0
	mov r1, r8
	strh r0, [r1, #0x16]
	ldrh r0, [r4, #2]
	subs r0, r5, r0
	strh r0, [r1, #0x18]
	ldrh r0, [r4]
	subs r0, r2, r0
	mov r1, sb
	strh r0, [r1, #0x16]
	ldrh r0, [r4, #2]
	subs r0, r5, r0
	strh r0, [r1, #0x18]
	ldr r0, _0808A89C @ =0x0300009C
	adds r1, r7, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _0808A82C
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0808A8A0 @ =0x030000A0
	adds r1, r7, r0
	movs r0, #0
	strb r0, [r1]
	mov r7, ip
	ldr r1, [r7]
	ldr r0, _0808A8A4 @ =sub_8089BF0
	str r0, [r1, #8]
_0808A82C:
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r2, r0
	bgt _0808A858
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0808A858
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _0808A858
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	bge _0808A8A8
_0808A858:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808A87C
	movs r5, #0x18
	ldrsh r0, [r6, r5]
	adds r0, #0x80
	cmp r0, #0
	blt _0808A87C
	movs r7, #0x18
	ldrsh r1, [r6, r7]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808A8A8
_0808A87C:
	ldrb r0, [r3, #8]
	mov r1, sl
	strb r0, [r1]
	mov r2, ip
	ldr r0, [r2]
	bl TaskDestroy
	b _0808A8EA
	.align 2, 0
_0808A88C: .4byte gCurTask
_0808A890: .4byte 0x0300000C
_0808A894: .4byte 0x0300003C
_0808A898: .4byte gCamera
_0808A89C: .4byte 0x0300009C
_0808A8A0: .4byte 0x030000A0
_0808A8A4: .4byte sub_8089BF0
_0808A8A8:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	ldr r0, _0808A8FC @ =gCamera
	ldrh r1, [r0, #2]
	ldr r5, [sp]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	adds r0, #0x18
	mov r7, r8
	strh r0, [r7, #0x18]
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
_0808A8EA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808A8FC: .4byte gCamera

	thumb_func_start CreateEntity_Interactable088
CreateEntity_Interactable088: @ 0x0808A900
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov sb, r1
	mov sl, r2
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	ldr r0, _0808AA24 @ =sub_808AA60
	ldr r1, _0808AA28 @ =sub_808B254
	str r1, [sp]
	movs r1, #0xa4
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r2, _0808AA2C @ =0x0300000C
	adds r6, r4, r2
	ldr r1, _0808AA30 @ =0x0300003C
	adds r1, r1, r4
	mov r8, r1
	movs r5, #0
	mov r2, sb
	strh r2, [r0, #4]
	mov r1, sl
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0, #9]
	ldr r1, _0808AA34 @ =0x0300009C
	adds r0, r4, r1
	strh r5, [r0]
	ldr r2, _0808AA38 @ =0x0300009E
	adds r0, r4, r2
	strh r5, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	movs r0, #9
	bl VramMalloc
	str r0, [r6, #4]
	ldr r7, _0808AA3C @ =0x00000221
	strh r7, [r6, #0xa]
	ldr r2, _0808AA40 @ =0x0300002C
	adds r1, r4, r2
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r6, #0x1a]
	strh r5, [r6, #8]
	strh r5, [r6, #0x14]
	strh r5, [r6, #0x1c]
	ldr r0, _0808AA44 @ =0x0300002D
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _0808AA48 @ =0x0300002E
	adds r0, r4, r1
	movs r2, #0x10
	mov sl, r2
	mov r1, sl
	strb r1, [r0]
	ldr r2, _0808AA4C @ =0x03000031
	adds r0, r4, r2
	movs r1, #0
	strb r1, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	str r2, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	movs r0, #4
	bl VramMalloc
	mov r1, r8
	str r0, [r1, #4]
	strh r7, [r1, #0xa]
	ldr r2, _0808AA50 @ =0x0300005C
	adds r0, r4, r2
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x88
	lsls r0, r0, #3
	mov r2, r8
	strh r0, [r2, #0x1a]
	strh r5, [r2, #8]
	strh r5, [r2, #0x14]
	strh r5, [r2, #0x1c]
	ldr r0, _0808AA54 @ =0x0300005D
	adds r1, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _0808AA58 @ =0x0300005E
	adds r0, r4, r1
	mov r2, sl
	strb r2, [r0]
	ldr r0, _0808AA5C @ =0x03000061
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	mov r2, sb
	mov r0, r8
	str r2, [r0, #0x28]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	mov r0, r8
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
_0808AA24: .4byte sub_808AA60
_0808AA28: .4byte sub_808B254
_0808AA2C: .4byte 0x0300000C
_0808AA30: .4byte 0x0300003C
_0808AA34: .4byte 0x0300009C
_0808AA38: .4byte 0x0300009E
_0808AA3C: .4byte 0x00000221
_0808AA40: .4byte 0x0300002C
_0808AA44: .4byte 0x0300002D
_0808AA48: .4byte 0x0300002E
_0808AA4C: .4byte 0x03000031
_0808AA50: .4byte 0x0300005C
_0808AA54: .4byte 0x0300005D
_0808AA58: .4byte 0x0300005E
_0808AA5C: .4byte 0x03000061

	thumb_func_start sub_808AA60
sub_808AA60: @ 0x0808AA60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	mov sb, r0
	ldr r0, _0808AAE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, [r7]
	str r2, [sp, #8]
	ldr r3, _0808AAE4 @ =0x0300000C
	adds r3, r3, r1
	mov r8, r3
	ldr r5, _0808AAE8 @ =0x0300003C
	adds r5, r5, r1
	mov sl, r5
	ldrb r0, [r7, #8]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _0808AAEC @ =gCamera
	ldrh r0, [r3]
	ldr r2, [sp]
	lsls r4, r2, #0x10
	asrs r2, r4, #0x10
	subs r0, r2, r0
	mov r5, r8
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsrs r5, r1, #0x10
	str r5, [sp, #4]
	asrs r1, r1, #0x10
	subs r0, r1, r0
	mov r5, r8
	strh r0, [r5, #0x18]
	ldrh r0, [r3]
	subs r2, r2, r0
	mov r0, sl
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	subs r1, #0x10
	mov r2, sl
	strh r1, [r2, #0x18]
	movs r6, #0
	str r4, [sp, #0xc]
	b _0808AB00
	.align 2, 0
_0808AAE0: .4byte gCurTask
_0808AAE4: .4byte 0x0300000C
_0808AAE8: .4byte 0x0300003C
_0808AAEC: .4byte gCamera
_0808AAF0:
	movs r3, #1
	add sb, r3
	ldr r0, _0808ABDC @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp sb, r0
	bge _0808AB70
_0808AB00:
	ldr r5, _0808ABE0 @ =gUnknown_03005A20
	mov r0, sb
	cmp r0, #0
	beq _0808AB0A
	ldr r5, _0808ABE4 @ =gUnknown_03005AB0
_0808AB0A:
	ldr r1, [sp, #4]
	lsls r4, r1, #0x10
	mov r0, r8
	ldr r2, [sp, #0xc]
	asrs r1, r2, #0x10
	asrs r2, r4, #0x10
	adds r3, r5, #0
	bl sub_800CE34
	ldr r3, [sp]
	lsls r3, r3, #0x10
	str r3, [sp, #0x10]
	cmp r0, #0
	beq _0808AAF0
	adds r0, r7, #0
	adds r0, #0x9c
	strh r6, [r0]
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0xa0
	strb r1, [r0]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
	strh r6, [r5, #8]
	strh r6, [r5, #0xc]
	strh r6, [r5, #0xa]
	adds r0, r5, #0
	bl sub_8046CEC
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x26
	strb r0, [r1]
	movs r0, #0xb5
	bl m4aSongNumStart
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0808ABE8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808ABEC @ =sub_808AC48
	str r0, [r1, #8]
_0808AB70:
	ldr r5, [sp, #0x10]
	asrs r2, r5, #0x10
	ldr r3, _0808ABF0 @ =gCamera
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	cmp r2, r0
	bgt _0808ABA4
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0808ABA4
	asrs r2, r4, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808ABA4
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808ABF4
_0808ABA4:
	mov r5, r8
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808ABCA
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808ABCA
	movs r2, #0x18
	ldrsh r1, [r5, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808ABF4
_0808ABCA:
	ldrb r0, [r7, #8]
	ldr r3, [sp, #8]
	strb r0, [r3]
	ldr r0, _0808ABE8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808AC34
	.align 2, 0
_0808ABDC: .4byte gUnknown_03005088
_0808ABE0: .4byte gUnknown_03005A20
_0808ABE4: .4byte gUnknown_03005AB0
_0808ABE8: .4byte gCurTask
_0808ABEC: .4byte sub_808AC48
_0808ABF0: .4byte gCamera
_0808ABF4:
	mov r0, r8
	bl DisplaySprite
	mov r0, sl
	bl DisplaySprite
	ldr r5, _0808AC44 @ =gCamera
	ldrh r0, [r5, #2]
	asrs r4, r4, #0x10
	subs r0, r4, r0
	subs r0, #0x30
	mov r1, sl
	strh r0, [r1, #0x18]
	mov r0, sl
	bl DisplaySprite
	ldrh r0, [r5, #2]
	subs r0, r4, r0
	subs r0, #0x50
	mov r2, sl
	strh r0, [r2, #0x18]
	mov r0, sl
	bl DisplaySprite
	ldrh r0, [r5, #2]
	subs r4, r4, r0
	subs r4, #0x70
	mov r3, sl
	strh r4, [r3, #0x18]
	mov r0, sl
	bl DisplaySprite
_0808AC34:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808AC44: .4byte gCamera

	thumb_func_start sub_808AC48
sub_808AC48: @ 0x0808AC48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0808AD08 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r1, _0808AD0C @ =0x0300000C
	adds r5, r4, r1
	ldr r2, _0808AD10 @ =0x0300003C
	adds r7, r4, r2
	mov r3, r8
	ldrb r0, [r3, #8]
	lsls r0, r0, #3
	ldrh r1, [r3, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r6, [sp, #4]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	ldrh r1, [r3, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r1, _0808AD14 @ =0x0300009C
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #0x40
	subs r0, r0, r1
	lsls r0, r0, #7
	movs r1, #0x40
	bl Div
	movs r2, #0x80
	subs r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _0808AD18 @ =gCamera
	ldrh r0, [r3]
	mov r6, sl
	lsls r1, r6, #0x10
	asrs r6, r1, #0x10
	subs r0, r6, r0
	strh r0, [r5, #0x16]
	mov r0, sb
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldrh r0, [r3, #2]
	subs r0, r1, r0
	mov ip, r0
	lsrs r0, r2, #0x10
	str r0, [sp]
	asrs r2, r2, #0x10
	mov r0, ip
	subs r0, r0, r2
	strh r0, [r5, #0x18]
	ldrh r0, [r3]
	subs r0, r6, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	subs r1, r1, r2
	subs r1, #0x10
	strh r1, [r7, #0x18]
	ldr r1, _0808AD1C @ =0x030000A0
	adds r4, r4, r1
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldr r2, _0808AD20 @ =gUnknown_03005A20
	cmp r0, #0
	beq _0808ACF0
	ldr r2, _0808AD24 @ =gUnknown_03005AB0
_0808ACF0:
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808AD46
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _0808AD28
	subs r0, r6, #3
	b _0808AD2C
	.align 2, 0
_0808AD08: .4byte gCurTask
_0808AD0C: .4byte 0x0300000C
_0808AD10: .4byte 0x0300003C
_0808AD14: .4byte 0x0300009C
_0808AD18: .4byte gCamera
_0808AD1C: .4byte 0x030000A0
_0808AD20: .4byte gUnknown_03005A20
_0808AD24: .4byte gUnknown_03005AB0
_0808AD28:
	adds r0, r6, #0
	adds r0, #8
_0808AD2C:
	lsls r0, r0, #8
	str r0, [r2]
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	adds r0, #0x1a
	lsls r0, r0, #8
	str r0, [r2, #4]
	b _0808AD58
_0808AD46:
	ldr r0, _0808ADEC @ =0xFFBFFFFF
	ands r1, r0
	str r1, [r2, #0x10]
	ldr r1, _0808ADF0 @ =gUnknown_03005A20
	adds r1, #0x26
	ldrb r2, [r1]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1]
_0808AD58:
	mov r1, r8
	adds r1, #0x9c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x40
	bls _0808AD7C
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xb5
	bl m4aSongNumStop
	ldr r0, _0808ADF4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808ADF8 @ =sub_808AE60
	str r0, [r1, #8]
_0808AD7C:
	mov r6, sl
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	ldr r3, _0808ADFC @ =gCamera
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r2, r4
	cmp r1, r0
	bgt _0808ADB6
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0808ADB6
	mov r6, sb
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808ADB6
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808AE00
_0808ADB6:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808ADDA
	movs r4, #0x18
	ldrsh r0, [r5, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0808ADDA
	movs r6, #0x18
	ldrsh r1, [r5, r6]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808AE00
_0808ADDA:
	mov r1, r8
	ldrb r0, [r1, #8]
	ldr r2, [sp, #4]
	strb r0, [r2]
	ldr r0, _0808ADF4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808AE4A
	.align 2, 0
_0808ADEC: .4byte 0xFFBFFFFF
_0808ADF0: .4byte gUnknown_03005A20
_0808ADF4: .4byte gCurTask
_0808ADF8: .4byte sub_808AE60
_0808ADFC: .4byte gCamera
_0808AE00:
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
	ldr r6, _0808AE5C @ =gCamera
	ldrh r0, [r6, #2]
	mov r3, sb
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	subs r0, r4, r0
	ldr r1, [sp]
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	subs r0, r0, r5
	subs r0, #0x30
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	ldrh r0, [r6, #2]
	subs r0, r4, r0
	subs r0, r0, r5
	subs r0, #0x50
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	ldrh r0, [r6, #2]
	subs r4, r4, r0
	subs r4, r4, r5
	subs r4, #0x70
	strh r4, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_0808AE4A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808AE5C: .4byte gCamera

	thumb_func_start sub_808AE60
sub_808AE60: @ 0x0808AE60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0808AF28 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r4, [r7]
	ldr r5, _0808AF2C @ =0x0300000C
	adds r3, r1, r5
	adds r0, #0x3c
	adds r0, r0, r1
	mov r8, r0
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r6, _0808AF30 @ =gCamera
	ldrh r0, [r6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r3, #0x16]
	ldrh r0, [r6, #2]
	lsrs r5, r1, #0x10
	mov sb, r5
	asrs r1, r1, #0x10
	subs r0, r1, r0
	subs r0, #0x80
	strh r0, [r3, #0x18]
	ldrh r0, [r6]
	subs r0, r2, r0
	mov r5, r8
	strh r0, [r5, #0x16]
	ldrh r0, [r6, #2]
	subs r0, r1, r0
	subs r0, #0x90
	strh r0, [r5, #0x18]
	movs r5, #0
	ldrsh r0, [r6, r5]
	mov sl, r0
	movs r0, #0xb8
	lsls r0, r0, #1
	add r0, sl
	cmp r2, r0
	bgt _0808AEF4
	mov r0, sl
	subs r0, #0x80
	cmp r2, r0
	blt _0808AEF4
	movs r0, #2
	ldrsh r2, [r6, r0]
	movs r5, #0x90
	lsls r5, r5, #1
	adds r0, r2, r5
	cmp r1, r0
	bgt _0808AEF4
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _0808AF34
_0808AEF4:
	ldrh r0, [r3, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808AF18
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808AF18
	movs r5, #0x18
	ldrsh r1, [r3, r5]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808AF34
_0808AF18:
	ldrb r0, [r7, #8]
	strb r0, [r4]
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
	b _0808B046
	.align 2, 0
_0808AF28: .4byte gCurTask
_0808AF2C: .4byte 0x0300000C
_0808AF30: .4byte gCamera
_0808AF34:
	adds r0, r7, #0
	adds r0, #0xa0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, _0808AFAC @ =gUnknown_03005A20
	adds r4, r2, #0
	cmp r0, #0
	beq _0808AF48
	ldr r4, _0808AFB0 @ =gUnknown_03005AB0
_0808AF48:
	ldr r5, [r4, #0x10]
	movs r6, #0x80
	ands r6, r5
	cmp r6, #0
	bne _0808AFDA
	ldr r0, _0808AFB4 @ =gUnknown_030060E0
	ldrh r1, [r4, #0x3a]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0808B002
	ldr r0, _0808AFB8 @ =0xFFBFFFFF
	ands r5, r0
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r5, r0
	str r5, [r4, #0x10]
	strh r6, [r4, #8]
	strh r6, [r4, #0xc]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	str r3, [sp]
	bl sub_8046CEC
	adds r0, r7, #0
	adds r0, #0x9c
	strh r6, [r0]
	adds r1, r7, #0
	adds r1, #0x9e
	movs r0, #0x3c
	strh r0, [r1]
	ldr r0, _0808AFBC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808AFC0 @ =sub_808B064
	str r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r3, [sp]
	cmp r0, #3
	beq _0808AFC4
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #5
	b _0808AFCA
	.align 2, 0
_0808AFAC: .4byte gUnknown_03005A20
_0808AFB0: .4byte gUnknown_03005AB0
_0808AFB4: .4byte gUnknown_030060E0
_0808AFB8: .4byte 0xFFBFFFFF
_0808AFBC: .4byte gCurTask
_0808AFC0: .4byte sub_808B064
_0808AFC4:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x55
_0808AFCA:
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	b _0808B002
_0808AFDA:
	ldr r0, _0808B058 @ =0xFFBFFFFF
	ands r5, r0
	str r5, [r4, #0x10]
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	movs r1, #0
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x9c
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #0x9e
	movs r0, #0x3c
	strh r0, [r1]
	mov r5, ip
	ldr r1, [r5]
	ldr r0, _0808B05C @ =sub_808B064
	str r0, [r1, #8]
_0808B002:
	adds r0, r3, #0
	bl DisplaySprite
	mov r0, r8
	bl DisplaySprite
	ldr r5, _0808B060 @ =gCamera
	ldrh r0, [r5, #2]
	mov r1, sb
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	subs r0, r4, r0
	subs r0, #0xa0
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r0, r8
	bl DisplaySprite
	ldrh r0, [r5, #2]
	subs r0, r4, r0
	subs r0, #0xb0
	mov r1, r8
	strh r0, [r1, #0x18]
	mov r0, r8
	bl DisplaySprite
	ldrh r0, [r5, #2]
	subs r4, r4, r0
	subs r4, #0xc0
	mov r5, r8
	strh r4, [r5, #0x18]
	mov r0, r8
	bl DisplaySprite
_0808B046:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808B058: .4byte 0xFFBFFFFF
_0808B05C: .4byte sub_808B064
_0808B060: .4byte gCamera

	thumb_func_start sub_808B064
sub_808B064: @ 0x0808B064
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0808B114 @ =gCurTask
	ldr r0, [r1]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov sb, r0
	ldr r2, [r0]
	str r2, [sp, #8]
	ldr r3, _0808B118 @ =0x0300000C
	adds r3, r3, r5
	mov r8, r3
	ldr r0, _0808B11C @ =0x0300003C
	adds r7, r5, r0
	mov r1, sb
	ldrb r0, [r1, #8]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	mov r2, sb
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r3, _0808B120 @ =0x0300009C
	adds r6, r5, r3
	ldrh r1, [r6]
	movs r0, #0x1e
	subs r0, r0, r1
	lsls r0, r0, #7
	movs r1, #0x1e
	bl Div
	lsls r0, r0, #0x10
	ldr r4, _0808B124 @ =gCamera
	ldrh r1, [r4]
	ldr r2, [sp]
	lsls r3, r2, #0x10
	asrs r3, r3, #0x10
	str r3, [sp, #0xc]
	subs r1, r3, r1
	mov r3, r8
	strh r1, [r3, #0x16]
	ldrh r1, [r4, #2]
	mov ip, r1
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r3, ip
	subs r3, r1, r3
	lsrs r2, r0, #0x10
	str r2, [sp, #4]
	asrs r0, r0, #0x10
	subs r3, r3, r0
	mov r2, r8
	strh r3, [r2, #0x18]
	ldrh r2, [r4]
	ldr r3, [sp, #0xc]
	subs r2, r3, r2
	strh r2, [r7, #0x16]
	ldrh r2, [r4, #2]
	subs r1, r1, r2
	subs r1, r1, r0
	subs r1, #0x10
	strh r1, [r7, #0x18]
	ldr r0, _0808B128 @ =0x0300009E
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	beq _0808B12C
	subs r0, #1
	strh r0, [r1]
	b _0808B14C
	.align 2, 0
_0808B114: .4byte gCurTask
_0808B118: .4byte 0x0300000C
_0808B11C: .4byte 0x0300003C
_0808B120: .4byte 0x0300009C
_0808B124: .4byte gCamera
_0808B128: .4byte 0x0300009E
_0808B12C:
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _0808B14C
	strh r2, [r6]
	ldr r2, _0808B1C0 @ =0x030000A0
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	ldr r3, _0808B1C4 @ =gCurTask
	ldr r1, [r3]
	ldr r0, _0808B1C8 @ =sub_808AA60
	str r0, [r1, #8]
_0808B14C:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	ldr r4, _0808B1CC @ =gCamera
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r3, r0
	bgt _0808B186
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	blt _0808B186
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808B186
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808B1D0
_0808B186:
	mov r1, r8
	ldrh r0, [r1, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808B1AE
	mov r2, r8
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0808B1AE
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808B1D0
_0808B1AE:
	mov r1, sb
	ldrb r0, [r1, #8]
	ldr r2, [sp, #8]
	strb r0, [r2]
	ldr r0, _0808B1C4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808B21A
	.align 2, 0
_0808B1C0: .4byte 0x030000A0
_0808B1C4: .4byte gCurTask
_0808B1C8: .4byte sub_808AA60
_0808B1CC: .4byte gCamera
_0808B1D0:
	mov r0, r8
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
	ldr r6, _0808B22C @ =gCamera
	ldrh r0, [r6, #2]
	mov r3, sl
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	subs r0, r4, r0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	subs r0, r0, r5
	subs r0, #0x30
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	ldrh r0, [r6, #2]
	subs r0, r4, r0
	subs r0, r0, r5
	subs r0, #0x50
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
	ldrh r0, [r6, #2]
	subs r4, r4, r0
	subs r4, r4, r5
	subs r4, #0x70
	strh r4, [r7, #0x18]
	adds r0, r7, #0
	bl DisplaySprite
_0808B21A:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808B22C: .4byte gCamera

	thumb_func_start sub_808B230
sub_808B230: @ 0x0808B230
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	ldr r0, [r4, #0x70]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808B254
sub_808B254: @ 0x0808B254
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x40]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable081
CreateEntity_Interactable081: @ 0x0808B270
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0808B2F4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _0808B2F8 @ =sub_808B428
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808B2FC @ =sub_808BC7C
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r5, r2, r0
	movs r6, #0
	mov r1, r8
	strh r1, [r3, #4]
	mov r0, sl
	strh r0, [r3, #6]
	str r7, [r3]
	ldrb r0, [r7]
	strb r0, [r3, #8]
	strb r4, [r3, #9]
	str r6, [r3, #0x40]
	str r6, [r3, #0x44]
	ldr r1, _0808B300 @ =0x0300004C
	adds r0, r2, r1
	strh r6, [r0]
	ldrb r0, [r7, #5]
	ldrb r1, [r7, #6]
	cmp r0, r1
	bls _0808B324
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _0808B308
	ldr r1, _0808B304 @ =0x03000048
	adds r0, r2, r1
	movs r1, #4
	strh r1, [r0]
	strh r6, [r3, #0x3c]
	b _0808B314
	.align 2, 0
_0808B2F4: .4byte gCurrentLevel
_0808B2F8: .4byte sub_808B428
_0808B2FC: .4byte sub_808BC7C
_0808B300: .4byte 0x0300004C
_0808B304: .4byte 0x03000048
_0808B308:
	ldr r0, _0808B31C @ =0x03000048
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x3c]
_0808B314:
	ldr r1, _0808B320 @ =0x0300004A
	adds r0, r2, r1
	strh r6, [r0]
	b _0808B35A
	.align 2, 0
_0808B31C: .4byte 0x03000048
_0808B320: .4byte 0x0300004A
_0808B324:
	movs r0, #4
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _0808B348
	ldr r1, _0808B340 @ =0x03000048
	adds r0, r2, r1
	strh r6, [r0]
	ldr r0, _0808B344 @ =0x0300004A
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	strh r6, [r3, #0x3c]
	b _0808B35A
	.align 2, 0
_0808B340: .4byte 0x03000048
_0808B344: .4byte 0x0300004A
_0808B348:
	ldr r1, _0808B390 @ =0x03000048
	adds r0, r2, r1
	strh r6, [r0]
	ldr r0, _0808B394 @ =0x0300004A
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x3c]
_0808B35A:
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r5, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, sl
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	mov r2, sb
	cmp r2, #3
	bne _0808B39C
	movs r0, #0x1c
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _0808B398 @ =0x0000020E
	b _0808B3B8
	.align 2, 0
_0808B390: .4byte 0x03000048
_0808B394: .4byte 0x0300004A
_0808B398: .4byte 0x0000020E
_0808B39C:
	mov r0, sb
	cmp r0, #5
	beq _0808B3AE
	ldr r0, _0808B3C4 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x11
	bne _0808B3CC
_0808B3AE:
	movs r0, #0x1c
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _0808B3C8 @ =0x00000246
_0808B3B8:
	strh r0, [r5, #0xa]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	b _0808B3E0
	.align 2, 0
_0808B3C4: .4byte gCurrentLevel
_0808B3C8: .4byte 0x00000246
_0808B3CC:
	movs r0, #0x1c
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x87
	lsls r0, r0, #2
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r4, [r0]
_0808B3E0:
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r1, [r5, #8]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
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

	thumb_func_start sub_808B428
sub_808B428: @ 0x0808B428
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0808B570 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r1, _0808B574 @ =0x0300000C
	adds r7, r5, r1
	ldr r2, [r6]
	mov sb, r2
	adds r0, #0x48
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0808B480
	mov r0, sb
	ldrb r2, [r0, #5]
	lsls r2, r2, #0xb
	ldr r4, _0808B578 @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _0808B57C @ =gUnknown_03005120
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _0808B580 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x40]
_0808B480:
	ldr r2, _0808B584 @ =0x0300004A
	adds r1, r5, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0808B4B8
	mov r0, sb
	ldrb r2, [r0, #6]
	lsls r2, r2, #0xb
	ldr r4, _0808B578 @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _0808B57C @ =gUnknown_03005120
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _0808B580 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x44]
_0808B4B8:
	ldrb r1, [r6, #8]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldrb r3, [r2, #1]
	lsls r3, r3, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r0, _0808B588 @ =gCamera
	mov r8, r0
	ldrh r2, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	subs r2, r4, r2
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r7, #0x16]
	mov r2, r8
	ldrh r1, [r2, #2]
	lsls r3, r3, #0x10
	asrs r5, r3, #0x10
	subs r1, r5, r1
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_808B7A0
	cmp r0, #0
	beq _0808B50C
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _0808B58C @ =sub_808B5AC
	str r0, [r1, #8]
_0808B50C:
	mov r2, r8
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0808B53C
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0808B53C
	mov r0, r8
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r5, r0
	bgt _0808B53C
	adds r0, r2, #0
	subs r0, #0x80
	cmp r5, r0
	bge _0808B590
_0808B53C:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808B560
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0808B560
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808B590
_0808B560:
	ldrb r0, [r6, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0808B570 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808B59C
	.align 2, 0
_0808B570: .4byte gCurTask
_0808B574: .4byte 0x0300000C
_0808B578: .4byte gSineTable
_0808B57C: .4byte gUnknown_03005120
_0808B580: .4byte 0x000003FF
_0808B584: .4byte 0x0300004A
_0808B588: .4byte gCamera
_0808B58C: .4byte sub_808B5AC
_0808B590:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0808B59C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808B5AC
sub_808B5AC: @ 0x0808B5AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0808B6B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	adds r0, #0xc
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r6]
	mov sb, r1
	ldr r2, _0808B6BC @ =0x03000048
	adds r1, r7, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0808B606
	mov r0, sb
	ldrb r2, [r0, #5]
	lsls r2, r2, #0xb
	ldr r4, _0808B6C0 @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _0808B6C4 @ =gUnknown_03005120
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _0808B6C8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x40]
_0808B606:
	ldr r2, _0808B6CC @ =0x0300004A
	adds r1, r7, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0808B63E
	mov r0, sb
	ldrb r2, [r0, #6]
	lsls r2, r2, #0xb
	ldr r4, _0808B6C0 @ =gSineTable
	movs r0, #0
	ldrsh r3, [r1, r0]
	ldr r0, _0808B6C4 @ =gUnknown_03005120
	ldrh r1, [r6, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _0808B6C8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r6, #0x44]
_0808B63E:
	ldrb r4, [r6, #8]
	lsls r4, r4, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	mov r2, sb
	ldrb r5, [r2, #1]
	lsls r5, r5, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r3, r4, #0x10
	mov sl, r3
	asrs r4, r4, #0x10
	lsrs r0, r5, #0x10
	str r0, [sp]
	asrs r5, r5, #0x10
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_808B7A0
	ldr r1, _0808B6D0 @ =gCamera
	ldrh r0, [r1]
	subs r4, r4, r0
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	adds r4, r4, r0
	mov r2, r8
	strh r4, [r2, #0x16]
	ldrh r0, [r1, #2]
	subs r5, r5, r0
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	adds r5, r5, r0
	strh r5, [r2, #0x18]
	ldr r3, _0808B6D4 @ =0x0300004C
	adds r1, r7, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xc
	bls _0808B704
	ldr r0, _0808B6D8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	asrs r0, r0, #0x19
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _0808B6E0
	ldr r0, _0808B6DC @ =0x0300002C
	adds r1, r7, r0
	movs r0, #1
	b _0808B6FA
	.align 2, 0
_0808B6B8: .4byte gCurTask
_0808B6BC: .4byte 0x03000048
_0808B6C0: .4byte gSineTable
_0808B6C4: .4byte gUnknown_03005120
_0808B6C8: .4byte 0x000003FF
_0808B6CC: .4byte 0x0300004A
_0808B6D0: .4byte gCamera
_0808B6D4: .4byte 0x0300004C
_0808B6D8: .4byte gCurrentLevel
_0808B6DC: .4byte 0x0300002C
_0808B6E0:
	cmp r0, #5
	beq _0808B6E8
	cmp r1, #0x11
	bne _0808B6F4
_0808B6E8:
	ldr r2, _0808B6F0 @ =0x0300002C
	adds r1, r7, r2
	movs r0, #1
	b _0808B6FA
	.align 2, 0
_0808B6F0: .4byte 0x0300002C
_0808B6F4:
	ldr r3, _0808B774 @ =0x0300002C
	adds r1, r7, r3
	movs r0, #0
_0808B6FA:
	strb r0, [r1]
	ldr r0, _0808B778 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808B77C @ =sub_808B428
	str r0, [r1, #8]
_0808B704:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	ldr r2, _0808B780 @ =gCamera
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r4, r0
	bgt _0808B73E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0808B73E
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	movs r3, #2
	ldrsh r1, [r2, r3]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _0808B73E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	bge _0808B784
_0808B73E:
	mov r3, r8
	ldrh r0, [r3, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808B764
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808B764
	movs r2, #0x18
	ldrsh r1, [r3, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808B784
_0808B764:
	ldrb r0, [r6, #8]
	mov r3, sb
	strb r0, [r3]
	ldr r0, _0808B778 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808B790
	.align 2, 0
_0808B774: .4byte 0x0300002C
_0808B778: .4byte gCurTask
_0808B77C: .4byte sub_808B428
_0808B780: .4byte gCamera
_0808B784:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
_0808B790:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808B7A0
sub_808B7A0: @ 0x0808B7A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	mov sb, r1
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	movs r4, #0
	ldr r1, _0808B7CC @ =gUnknown_03005AB0
	mov r8, r1
	ldr r7, _0808B7D0 @ =gUnknown_03005A20
_0808B7C0:
	cmp r4, #0
	beq _0808B7D4
	mov r2, r8
	ldr r0, [r2, #0x10]
	b _0808B7D6
	.align 2, 0
_0808B7CC: .4byte gUnknown_03005AB0
_0808B7D0: .4byte gUnknown_03005A20
_0808B7D4:
	ldr r0, [r7, #0x10]
_0808B7D6:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808B7E0
	b _0808BB1A
_0808B7E0:
	add r2, sp, #4
	cmp r4, #0
	beq _0808B7EC
	mov r3, r8
	ldrb r0, [r3, #0xe]
	b _0808B7EE
_0808B7EC:
	ldrb r0, [r7, #0xe]
_0808B7EE:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	adds r3, r0, #0
	cmp r4, #0
	beq _0808B802
	mov r0, r8
	ldrb r1, [r0, #0xf]
	b _0808B804
_0808B802:
	ldrb r1, [r7, #0xf]
_0808B804:
	movs r0, #1
	subs r1, r0, r1
	mov r0, sp
	adds r0, #9
	strb r1, [r0]
	cmp r4, #0
	beq _0808B818
	mov r1, r8
	ldrb r0, [r1, #0xe]
	b _0808B81A
_0808B818:
	ldrb r0, [r7, #0xe]
_0808B81A:
	adds r1, r0, #5
	mov r0, sp
	adds r0, #0xa
	strb r1, [r0]
	cmp r4, #0
	beq _0808B82C
	mov r1, r8
	ldrb r0, [r1, #0xf]
	b _0808B82E
_0808B82C:
	ldrb r0, [r7, #0xf]
_0808B82E:
	subs r1, r0, #1
	mov r0, sp
	adds r0, #0xb
	strb r1, [r0]
	adds r0, r2, #0
	adds r1, r3, #0
	movs r2, #4
	bl memcpy
	mov r2, sl
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	ldr r3, [sp, #0xc]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	ldr r2, [sp, #0x10]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808B87C @ =gUnknown_03005A20
	cmp r4, #0
	beq _0808B862
	ldr r3, _0808B880 @ =gUnknown_03005AB0
_0808B862:
	mov r0, sb
	bl sub_800A768
	adds r5, r0, #0
	cmp r4, #0
	beq _0808B884
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0808B88E
	b _0808B89E
	.align 2, 0
_0808B87C: .4byte gUnknown_03005A20
_0808B880: .4byte gUnknown_03005AB0
_0808B884:
	ldr r0, [r7, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0808B89E
_0808B88E:
	cmp r4, #0
	beq _0808B898
	mov r1, r8
	ldr r0, [r1, #0x28]
	b _0808B89A
_0808B898:
	ldr r0, [r7, #0x28]
_0808B89A:
	cmp r0, sb
	beq _0808B8A4
_0808B89E:
	cmp r5, #0
	bne _0808B8A4
	b _0808B9AA
_0808B8A4:
	ldr r0, _0808B8CC @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _0808B8D0 @ =gUnknown_03005A20
	cmp r4, #0
	beq _0808B8B8
	ldr r0, _0808B8D4 @ =gUnknown_03005AB0
_0808B8B8:
	bl sub_8046CEC
	cmp r4, #0
	beq _0808B8D8
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	b _0808B8E0
	.align 2, 0
_0808B8CC: .4byte gCurrentLevel
_0808B8D0: .4byte gUnknown_03005A20
_0808B8D4: .4byte gUnknown_03005AB0
_0808B8D8:
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
_0808B8E0:
	cmp r4, #0
	beq _0808B8F0
	movs r0, #0x11
	ldr r3, _0808B8EC @ =gUnknown_03005AF0
	strb r0, [r3]
	b _0808B8F6
	.align 2, 0
_0808B8EC: .4byte gUnknown_03005AF0
_0808B8F0:
	movs r0, #0x11
	ldr r1, _0808B900 @ =gUnknown_03005A60
	strb r0, [r1]
_0808B8F6:
	cmp r4, #0
	beq _0808B908
	ldr r0, _0808B904 @ =gUnknown_03005C30
	b _0808B90A
	.align 2, 0
_0808B900: .4byte gUnknown_03005A60
_0808B904: .4byte gUnknown_03005C30
_0808B908:
	ldr r0, _0808B91C @ =gUnknown_03005BE0
_0808B90A:
	adds r0, #0x2d
	movs r1, #0xff
	strb r1, [r0]
	cmp r4, #0
	beq _0808B924
	ldr r0, _0808B920 @ =0x0000F880
	mov r2, r8
	strh r0, [r2, #0xa]
	b _0808B928
	.align 2, 0
_0808B91C: .4byte gUnknown_03005BE0
_0808B920: .4byte 0x0000F880
_0808B924:
	ldr r0, _0808B938 @ =0x0000F880
	strh r0, [r7, #0xa]
_0808B928:
	cmp r5, #0
	beq _0808B96C
	cmp r4, #0
	beq _0808B93C
	mov r3, r8
	ldr r0, [r3, #0x10]
	b _0808B93E
	.align 2, 0
_0808B938: .4byte 0x0000F880
_0808B93C:
	ldr r0, [r7, #0x10]
_0808B93E:
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0808B96C
	cmp r4, #0
	beq _0808B952
	mov r1, r8
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	b _0808B956
_0808B952:
	movs r3, #0xa
	ldrsh r0, [r7, r3]
_0808B956:
	asrs r1, r0, #1
	cmp r4, #0
	beq _0808B966
	mov r2, r8
	ldrh r0, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r2, #0xa]
	b _0808B96C
_0808B966:
	ldrh r0, [r7, #0xa]
	adds r0, r0, r1
	strh r0, [r7, #0xa]
_0808B96C:
	mov r1, sl
	adds r1, #0x4c
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	cmp r6, #3
	beq _0808B98A
	cmp r6, #5
	beq _0808B98A
	ldr r0, _0808B994 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x11
	bne _0808B998
_0808B98A:
	mov r0, sb
	adds r0, #0x20
	strb r2, [r0]
	b _0808B9A0
	.align 2, 0
_0808B994: .4byte gCurrentLevel
_0808B998:
	mov r1, sb
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
_0808B9A0:
	movs r0, #0xaa
	bl m4aSongNumStart
	movs r3, #1
	str r3, [sp, #0x14]
_0808B9AA:
	cmp r4, #0
	beq _0808B9B4
	mov r0, r8
	ldr r6, [r0]
	b _0808B9B6
_0808B9B4:
	ldr r6, [r7]
_0808B9B6:
	mov r1, sl
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	ldr r2, [sp, #0xc]
	adds r1, r2, r0
	mov r3, sl
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	ldr r3, [sp, #0x10]
	adds r2, r3, r0
	add r3, sp, #4
	cmp r4, #0
	beq _0808B9D6
	mov r0, r8
	str r0, [sp]
	b _0808B9D8
_0808B9D6:
	str r7, [sp]
_0808B9D8:
	mov r0, sb
	bl sub_808BB44
	mov r1, sl
	ldr r0, [r1, #0x40]
	asrs r0, r0, #8
	ldr r2, [sp, #0xc]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	mov r3, sl
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	ldr r2, [sp, #0x10]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808BA1C @ =gUnknown_03005A20
	cmp r4, #0
	beq _0808BA02
	ldr r3, _0808BA20 @ =gUnknown_03005AB0
_0808BA02:
	mov r0, sb
	bl sub_80096B0
	adds r5, r0, #0
	cmp r4, #0
	beq _0808BA28
	ldr r3, _0808BA24 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0x11
	beq _0808BA32
	b _0808BA42
	.align 2, 0
_0808BA1C: .4byte gUnknown_03005A20
_0808BA20: .4byte gUnknown_03005AB0
_0808BA24: .4byte gUnknown_03005AF0
_0808BA28:
	ldr r1, _0808BA3C @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x11
	bne _0808BA42
_0808BA32:
	cmp r4, #0
	beq _0808BA40
	mov r2, r8
	str r6, [r2]
	b _0808BA42
	.align 2, 0
_0808BA3C: .4byte gUnknown_03005A60
_0808BA40:
	str r6, [r7]
_0808BA42:
	movs r0, #0xb8
	lsls r0, r0, #0xd
	ands r0, r5
	cmp r0, #0
	beq _0808BAB4
	bl sub_80549FC
	cmp r0, #0
	beq _0808BAB4
	ldr r0, _0808BA6C @ =gUnknown_03005A20
	cmp r4, #0
	beq _0808BA5C
	ldr r0, _0808BA70 @ =gUnknown_03005AB0
_0808BA5C:
	bl sub_8046CEC
	cmp r4, #0
	beq _0808BA78
	movs r0, #5
	ldr r3, _0808BA74 @ =gUnknown_03005AF0
	strb r0, [r3]
	b _0808BA7E
	.align 2, 0
_0808BA6C: .4byte gUnknown_03005A20
_0808BA70: .4byte gUnknown_03005AB0
_0808BA74: .4byte gUnknown_03005AF0
_0808BA78:
	movs r0, #5
	ldr r1, _0808BA90 @ =gUnknown_03005A60
	strb r0, [r1]
_0808BA7E:
	cmp r4, #0
	beq _0808BA94
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #0x10]
	b _0808BA9C
	.align 2, 0
_0808BA90: .4byte gUnknown_03005A60
_0808BA94:
	ldr r0, [r7, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r7, #0x10]
_0808BA9C:
	cmp r4, #0
	beq _0808BAAC
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	b _0808BAB4
_0808BAAC:
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
_0808BAB4:
	movs r1, #0x20
	ands r5, r1
	cmp r5, #0
	bne _0808BB1A
	cmp r4, #0
	beq _0808BACC
	mov r2, r8
	ldr r0, [r2, #0x10]
	ands r0, r1
	cmp r0, #0
	bne _0808BAD4
	b _0808BB1A
_0808BACC:
	ldr r0, [r7, #0x10]
	ands r0, r1
	cmp r0, #0
	beq _0808BB1A
_0808BAD4:
	cmp r4, #0
	beq _0808BAE6
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	b _0808BAF0
_0808BAE6:
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_0808BAF0:
	ldr r0, _0808BB08 @ =gUnknown_03005A20
	cmp r4, #0
	beq _0808BAF8
	ldr r0, _0808BB0C @ =gUnknown_03005AB0
_0808BAF8:
	bl sub_8046CEC
	cmp r4, #0
	beq _0808BB14
	movs r0, #4
	ldr r1, _0808BB10 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _0808BB1A
	.align 2, 0
_0808BB08: .4byte gUnknown_03005A20
_0808BB0C: .4byte gUnknown_03005AB0
_0808BB10: .4byte gUnknown_03005AF0
_0808BB14:
	movs r0, #4
	ldr r2, _0808BB3C @ =gUnknown_03005A60
	strb r0, [r2]
_0808BB1A:
	adds r4, #1
	ldr r0, _0808BB40 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bge _0808BB2A
	b _0808B7C0
_0808BB2A:
	ldr r0, [sp, #0x14]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808BB3C: .4byte gUnknown_03005A60
_0808BB40: .4byte gUnknown_03005088

	thumb_func_start sub_808BB44
sub_808BB44: @ 0x0808BB44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov ip, r0
	adds r7, r1, #0
	mov r8, r2
	adds r5, r3, #0
	ldr r4, [sp, #0x20]
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r7, r3
	ldr r0, [r4]
	asrs r0, r0, #8
	movs r6, #0
	ldrsb r6, [r5, r6]
	adds r1, r0, r6
	cmp r2, r1
	bgt _0808BB82
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0808BB8E
	cmp r2, r1
	blt _0808BC6C
_0808BB82:
	movs r0, #2
	ldrsb r0, [r5, r0]
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	blt _0808BC6C
_0808BB8E:
	mov r0, ip
	adds r0, #0x2d
	movs r3, #0
	ldrsb r3, [r0, r3]
	mov r0, r8
	adds r2, r0, r3
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r6, #1
	ldrsb r6, [r5, r6]
	adds r1, r0, r6
	cmp r2, r1
	bgt _0808BBBE
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0808BBCA
	cmp r2, r1
	blt _0808BC6C
_0808BBBE:
	movs r0, #3
	ldrsb r0, [r5, r0]
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	blt _0808BC6C
_0808BBCA:
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	movs r1, #2
	ldrsb r1, [r5, r1]
	subs r1, r0, r1
	adds r2, r1, #0
	adds r2, #8
	ldr r0, [r4]
	asrs r3, r0, #8
	cmp r3, r2
	bgt _0808BBEC
	lsls r1, r1, #8
	b _0808BC08
_0808BBEC:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	movs r1, #0
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	adds r2, r0, #0
	subs r2, #8
	cmp r3, r2
	blt _0808BC6C
	lsls r1, r0, #8
_0808BC08:
	str r1, [r4]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r0, #9
	asrs r1, r1, #8
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r2, [r5]
	movs r7, #0
	str r7, [sp]
	ldr r6, _0808BC68 @ =sub_803FF84
	str r6, [sp, #4]
	movs r3, #8
	bl sub_803FA74
	cmp r0, #0
	bge _0808BC32
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_0808BC32:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrb r2, [r5]
	movs r3, #8
	rsbs r3, r3, #0
	str r7, [sp]
	str r6, [sp, #4]
	bl sub_803FA74
	cmp r0, #0
	bge _0808BC54
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_0808BC54:
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #0x18
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #1
	b _0808BC6E
	.align 2, 0
_0808BC68: .4byte sub_803FF84
_0808BC6C:
	movs r0, #0
_0808BC6E:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_808BC7C
sub_808BC7C: @ 0x0808BC7C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable082
CreateEntity_Interactable082: @ 0x0808BC90
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0808BD04 @ =sub_808BE08
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808BD08 @ =sub_808C024
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r5, r2, r0
	movs r7, #0
	mov r1, r8
	strh r1, [r3, #4]
	mov r0, sb
	strh r0, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #8]
	strb r4, [r3, #9]
	str r7, [r3, #0x40]
	str r7, [r3, #0x44]
	ldr r1, _0808BD0C @ =0x0300004C
	adds r0, r2, r1
	strh r7, [r0]
	ldrb r0, [r6, #5]
	ldrb r1, [r6, #6]
	cmp r0, r1
	bls _0808BD30
	movs r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _0808BD14
	ldr r1, _0808BD10 @ =0x03000048
	adds r0, r2, r1
	movs r1, #4
	strh r1, [r0]
	strh r7, [r3, #0x3c]
	b _0808BD20
	.align 2, 0
_0808BD04: .4byte sub_808BE08
_0808BD08: .4byte sub_808C024
_0808BD0C: .4byte 0x0300004C
_0808BD10: .4byte 0x03000048
_0808BD14:
	ldr r0, _0808BD28 @ =0x03000048
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x3c]
_0808BD20:
	ldr r1, _0808BD2C @ =0x0300004A
	adds r0, r2, r1
	strh r7, [r0]
	b _0808BD66
	.align 2, 0
_0808BD28: .4byte 0x03000048
_0808BD2C: .4byte 0x0300004A
_0808BD30:
	movs r0, #4
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _0808BD54
	ldr r1, _0808BD4C @ =0x03000048
	adds r0, r2, r1
	strh r7, [r0]
	ldr r0, _0808BD50 @ =0x0300004A
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	strh r7, [r3, #0x3c]
	b _0808BD66
	.align 2, 0
_0808BD4C: .4byte 0x03000048
_0808BD50: .4byte 0x0300004A
_0808BD54:
	ldr r1, _0808BDA0 @ =0x03000048
	adds r0, r2, r1
	strh r7, [r0]
	ldr r0, _0808BDA4 @ =0x0300004A
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x3c]
_0808BD66:
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r5, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	ldr r0, _0808BDA8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #4
	bne _0808BDB0
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _0808BDAC @ =0x0000021D
	b _0808BDBC
	.align 2, 0
_0808BDA0: .4byte 0x03000048
_0808BDA4: .4byte 0x0300004A
_0808BDA8: .4byte gCurrentLevel
_0808BDAC: .4byte 0x0000021D
_0808BDB0:
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xff
	lsls r0, r0, #1
_0808BDBC:
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r4, [r0]
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r1, [r5, #8]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808BE08
sub_808BE08: @ 0x0808BE08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0808BEFC @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	adds r0, #0xc
	adds r0, r5, r0
	str r0, [sp]
	ldr r1, [r7]
	str r1, [sp, #8]
	ldr r2, _0808BF00 @ =0x03000048
	adds r1, r5, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0808BE60
	ldr r4, [sp, #8]
	ldrb r2, [r4, #5]
	lsls r2, r2, #0xb
	ldr r4, _0808BF04 @ =gSineTable
	adds r3, r0, #0
	ldr r0, _0808BF08 @ =gUnknown_03005120
	ldrh r1, [r7, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _0808BF0C @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r7, #0x40]
_0808BE60:
	ldr r2, _0808BF10 @ =0x0300004A
	adds r1, r5, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0808BE96
	ldr r4, [sp, #8]
	ldrb r2, [r4, #6]
	lsls r2, r2, #0xb
	ldr r4, _0808BF04 @ =gSineTable
	adds r3, r0, #0
	ldr r0, _0808BF08 @ =gUnknown_03005120
	ldrh r1, [r7, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _0808BF0C @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r7, #0x44]
_0808BE96:
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, [sp, #8]
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _0808BF14 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r1, #0x10
	mov sl, r4
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldr r0, [r7, #0x40]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp]
	strh r1, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsrs r1, r2, #0x10
	str r1, [sp, #4]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldr r3, [sp]
	strh r2, [r3, #0x18]
	movs r4, #0
	mov r8, r4
_0808BEDE:
	mov r0, r8
	cmp r0, #0
	beq _0808BF20
	ldr r0, _0808BF18 @ =gUnknown_03005AB0
	ldr r1, [r0, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r2, sl
	lsls r6, r2, #0x10
	cmp r1, #0
	bne _0808BF7A
	ldr r3, _0808BF1C @ =gUnknown_03005A20
	mov sb, r3
	b _0808BF32
	.align 2, 0
_0808BEFC: .4byte gCurTask
_0808BF00: .4byte 0x03000048
_0808BF04: .4byte gSineTable
_0808BF08: .4byte gUnknown_03005120
_0808BF0C: .4byte 0x000003FF
_0808BF10: .4byte 0x0300004A
_0808BF14: .4byte gCamera
_0808BF18: .4byte gUnknown_03005AB0
_0808BF1C: .4byte gUnknown_03005A20
_0808BF20:
	ldr r2, _0808BFF8 @ =gUnknown_03005A20
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r4, sl
	lsls r6, r4, #0x10
	mov sb, r2
	cmp r1, #0
	bne _0808BF7A
_0808BF32:
	ldr r1, [r7, #0x40]
	asrs r1, r1, #8
	mov r0, sl
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	ldr r1, [r7, #0x44]
	asrs r1, r1, #8
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	mov r3, sb
	adds r6, r2, #0
	mov r0, r8
	cmp r0, #0
	beq _0808BF5E
	ldr r3, _0808BFFC @ =gUnknown_03005AB0
_0808BF5E:
	ldr r0, [sp]
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800CE34
	cmp r0, #0
	beq _0808BF7A
	mov r0, sb
	mov r1, r8
	cmp r1, #0
	beq _0808BF76
	ldr r0, _0808BFFC @ =gUnknown_03005AB0
_0808BF76:
	bl sub_800C558
_0808BF7A:
	movs r2, #1
	add r8, r2
	ldr r0, _0808C000 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	blt _0808BEDE
	asrs r2, r6, #0x10
	ldr r3, _0808C004 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _0808BFC0
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0808BFC0
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808BFC0
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808C00C
_0808BFC0:
	ldr r4, [sp]
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808BFE6
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808BFE6
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808C00C
_0808BFE6:
	ldrb r0, [r7, #8]
	ldr r3, [sp, #8]
	strb r0, [r3]
	ldr r0, _0808C008 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808C012
	.align 2, 0
_0808BFF8: .4byte gUnknown_03005A20
_0808BFFC: .4byte gUnknown_03005AB0
_0808C000: .4byte gUnknown_03005088
_0808C004: .4byte gCamera
_0808C008: .4byte gCurTask
_0808C00C:
	ldr r0, [sp]
	bl DisplaySprite
_0808C012:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808C024
sub_808C024: @ 0x0808C024
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_808C038
sub_808C038: @ 0x0808C038
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0808C0B0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov sb, r0
	ldr r0, [r0]
	str r0, [sp, #8]
	mov r1, sb
	ldrb r0, [r1, #8]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [sp, #8]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	mov r6, sb
	ldrh r1, [r6, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r7, #0
	ldr r0, _0808C0B4 @ =0x0300003C
	adds r0, r0, r2
	mov sl, r0
	ldr r4, _0808C0B8 @ =gUnknown_03005AB0
	ldr r5, _0808C0BC @ =gUnknown_03005A20
	movs r1, #0
	str r1, [sp, #0xc]
_0808C08C:
	mov r0, sb
	adds r0, #0x3c
	ldrb r0, [r0]
	asrs r0, r7
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _0808C09E
	b _0808C42C
_0808C09E:
	cmp r7, #0
	beq _0808C0C0
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808C0CA
	b _0808C0D8
	.align 2, 0
_0808C0B0: .4byte gCurTask
_0808C0B4: .4byte 0x0300003C
_0808C0B8: .4byte gUnknown_03005AB0
_0808C0BC: .4byte gUnknown_03005A20
_0808C0C0:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808C0D8
_0808C0CA:
	movs r1, #1
	lsls r1, r7
	mov r3, sl
	ldrb r0, [r3]
	bics r0, r1
	strb r0, [r3]
	b _0808C6B0
_0808C0D8:
	cmp r7, #0
	beq _0808C0E8
	ldrh r0, [r4, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0808C0F2
	b _0808C142
_0808C0E8:
	ldrh r0, [r5, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808C142
_0808C0F2:
	cmp r7, #0
	beq _0808C104
	movs r0, #0x24
	ldr r6, _0808C100 @ =gUnknown_03005AF0
	strb r0, [r6]
	b _0808C10A
	.align 2, 0
_0808C100: .4byte gUnknown_03005AF0
_0808C104:
	movs r2, #0x24
	ldr r1, _0808C11C @ =gUnknown_03005A60
	strb r2, [r1]
_0808C10A:
	cmp r7, #0
	beq _0808C120
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808C12A
	.align 2, 0
_0808C11C: .4byte gUnknown_03005A60
_0808C120:
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0808C12A:
	mov r0, sb
	adds r0, #0x40
	ldr r3, [sp, #0xc]
	adds r1, r0, r3
	ldr r1, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r1, r1, r6
	adds r2, r0, #0
	cmp r7, #0
	bne _0808C1A0
	b _0808C1A8
_0808C142:
	cmp r7, #0
	beq _0808C152
	ldrh r0, [r4, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0808C15C
	b _0808C1AC
_0808C152:
	ldrh r0, [r5, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808C1AC
_0808C15C:
	cmp r7, #0
	beq _0808C16C
	movs r1, #0x24
	ldr r0, _0808C168 @ =gUnknown_03005AF0
	strb r1, [r0]
	b _0808C172
	.align 2, 0
_0808C168: .4byte gUnknown_03005AF0
_0808C16C:
	movs r3, #0x24
	ldr r2, _0808C180 @ =gUnknown_03005A60
	strb r3, [r2]
_0808C172:
	cmp r7, #0
	beq _0808C184
	ldr r0, [r4, #0x10]
	movs r6, #1
	orrs r0, r6
	str r0, [r4, #0x10]
	b _0808C18C
	.align 2, 0
_0808C180: .4byte gUnknown_03005A60
_0808C184:
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0x10]
_0808C18C:
	mov r0, sb
	adds r0, #0x40
	ldr r2, [sp, #0xc]
	adds r1, r0, r2
	ldr r1, [r1]
	ldr r3, _0808C1A4 @ =0xFFFFFE00
	adds r1, r1, r3
	adds r2, r0, #0
	cmp r7, #0
	beq _0808C1A8
_0808C1A0:
	str r1, [r4]
	b _0808C1C6
	.align 2, 0
_0808C1A4: .4byte 0xFFFFFE00
_0808C1A8:
	str r1, [r5]
	b _0808C1C6
_0808C1AC:
	cmp r7, #0
	beq _0808C1BC
	movs r0, #0x23
	ldr r6, _0808C1B8 @ =gUnknown_03005AF0
	strb r0, [r6]
	b _0808C1C2
	.align 2, 0
_0808C1B8: .4byte gUnknown_03005AF0
_0808C1BC:
	movs r0, #0x23
	ldr r1, _0808C1D8 @ =gUnknown_03005A60
	strb r0, [r1]
_0808C1C2:
	mov r2, sb
	adds r2, #0x40
_0808C1C6:
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	ldr r3, _0808C1DC @ =gUnknown_086CEDBC
	mov r8, r0
	cmp r7, #0
	beq _0808C1E4
	ldr r6, _0808C1E0 @ =gUnknown_03005B09
	b _0808C1E6
	.align 2, 0
_0808C1D8: .4byte gUnknown_03005A60
_0808C1DC: .4byte gUnknown_086CEDBC
_0808C1E0: .4byte gUnknown_03005B09
_0808C1E4:
	ldr r6, _0808C200 @ =gUnknown_03005A79
_0808C1E6:
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r3, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	lsls r0, r0, #8
	cmp r7, #0
	beq _0808C204
	str r0, [r4, #4]
	b _0808C206
	.align 2, 0
_0808C200: .4byte gUnknown_03005A79
_0808C204:
	str r0, [r5, #4]
_0808C206:
	ldr r0, [sp, #0xc]
	adds r1, r2, r0
	cmp r7, #0
	beq _0808C212
	ldr r0, [r4]
	b _0808C214
_0808C212:
	ldr r0, [r5]
_0808C214:
	str r0, [r1]
	ldr r0, _0808C224 @ =gUnknown_030060E0
	ldrh r1, [r0]
	cmp r7, #0
	beq _0808C228
	ldrh r0, [r4, #0x3a]
	b _0808C22A
	.align 2, 0
_0808C224: .4byte gUnknown_030060E0
_0808C228:
	ldrh r0, [r5, #0x3a]
_0808C22A:
	ands r0, r1
	cmp r0, #0
	bne _0808C27A
	ldr r1, [sp]
	lsls r3, r1, #0x10
	asrs r2, r3, #0x10
	ldr r6, [sp, #8]
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r0, r1, #3
	adds r2, r2, r0
	adds r6, r3, #0
	adds r3, r1, #0
	cmp r7, #0
	beq _0808C24C
	ldr r0, [r4]
	b _0808C24E
_0808C24C:
	ldr r0, [r5]
_0808C24E:
	asrs r0, r0, #8
	cmp r2, r0
	bgt _0808C27A
	asrs r1, r6, #0x10
	lsls r0, r3, #3
	adds r1, r1, r0
	ldr r2, [sp, #8]
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r7, #0
	beq _0808C270
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0808C27A
	b _0808C6B0
_0808C270:
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0808C27A
	b _0808C6B0
_0808C27A:
	ldr r0, _0808C294 @ =gUnknown_03005A20
	cmp r7, #0
	beq _0808C282
	ldr r0, _0808C298 @ =gUnknown_03005AB0
_0808C282:
	bl sub_8046CEC
	cmp r7, #0
	beq _0808C2A0
	ldr r0, [r4, #0x10]
	ldr r1, _0808C29C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808C2A8
	.align 2, 0
_0808C294: .4byte gUnknown_03005A20
_0808C298: .4byte gUnknown_03005AB0
_0808C29C: .4byte 0xFFBFFFFF
_0808C2A0:
	ldr r0, [r5, #0x10]
	ldr r1, _0808C2B8 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_0808C2A8:
	cmp r7, #0
	beq _0808C2BC
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0808C2C4
	.align 2, 0
_0808C2B8: .4byte 0xFFBFFFFF
_0808C2BC:
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
_0808C2C4:
	cmp r7, #0
	beq _0808C2D4
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808C2DE
_0808C2D4:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0808C2DE:
	cmp r7, #0
	beq _0808C2E8
	movs r0, #0
	strh r0, [r4, #0xa]
	b _0808C2EA
_0808C2E8:
	strh r7, [r5, #0xa]
_0808C2EA:
	cmp r7, #0
	beq _0808C2FC
	movs r0, #5
	ldr r3, _0808C2F8 @ =gUnknown_03005AF0
	strb r0, [r3]
	b _0808C302
	.align 2, 0
_0808C2F8: .4byte gUnknown_03005AF0
_0808C2FC:
	movs r0, #5
	ldr r6, _0808C314 @ =gUnknown_03005A60
	strb r0, [r6]
_0808C302:
	mov r1, r8
	asrs r0, r1, #8
	movs r2, #0xb0
	lsls r2, r2, #5
	adds r0, r0, r2
	cmp r7, #0
	beq _0808C318
	str r0, [r4, #4]
	b _0808C31A
	.align 2, 0
_0808C314: .4byte gUnknown_03005A60
_0808C318:
	str r0, [r5, #4]
_0808C31A:
	cmp r7, #0
	beq _0808C328
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0808C330
_0808C328:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0808C330:
	cmp r7, #0
	beq _0808C340
	movs r0, #0x12
	ldr r3, _0808C33C @ =gUnknown_03005AF0
	strb r0, [r3]
	b _0808C346
	.align 2, 0
_0808C33C: .4byte gUnknown_03005AF0
_0808C340:
	movs r0, #0x12
	ldr r6, _0808C358 @ =gUnknown_03005A60
	strb r0, [r6]
_0808C346:
	cmp r7, #0
	beq _0808C360
	ldr r0, _0808C35C @ =gUnknown_03005AD6
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	ldr r1, _0808C35C @ =gUnknown_03005AD6
	strb r0, [r1]
	b _0808C36A
	.align 2, 0
_0808C358: .4byte gUnknown_03005A60
_0808C35C: .4byte gUnknown_03005AD6
_0808C360:
	ldr r2, _0808C37C @ =gUnknown_03005A46
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_0808C36A:
	cmp r7, #0
	beq _0808C380
	ldrh r0, [r4, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0808C38A
	b _0808C3B0
	.align 2, 0
_0808C37C: .4byte gUnknown_03005A46
_0808C380:
	ldrh r0, [r5, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808C3B0
_0808C38A:
	cmp r7, #0
	beq _0808C396
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	b _0808C39C
_0808C396:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0xc]
_0808C39C:
	cmp r7, #0
	beq _0808C3A8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #8]
	b _0808C41E
_0808C3A8:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #8]
	b _0808C41E
_0808C3B0:
	cmp r7, #0
	beq _0808C3C0
	ldrh r0, [r4, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0808C3CA
	b _0808C406
_0808C3C0:
	ldrh r0, [r5, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808C406
_0808C3CA:
	cmp r7, #0
	beq _0808C3D8
	ldr r0, [r4, #0x10]
	movs r3, #1
	orrs r0, r3
	str r0, [r4, #0x10]
	b _0808C3E0
_0808C3D8:
	ldr r0, [r5, #0x10]
	movs r6, #1
	orrs r0, r6
	str r0, [r5, #0x10]
_0808C3E0:
	cmp r7, #0
	beq _0808C3EC
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0xc]
	b _0808C3F2
_0808C3EC:
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r5, #0xc]
_0808C3F2:
	cmp r7, #0
	beq _0808C3FE
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #8]
	b _0808C41E
_0808C3FE:
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r5, #8]
	b _0808C41E
_0808C406:
	cmp r7, #0
	beq _0808C410
	movs r0, #0
	strh r0, [r4, #0xc]
	b _0808C412
_0808C410:
	strh r7, [r5, #0xc]
_0808C412:
	cmp r7, #0
	beq _0808C41C
	movs r0, #0
	strh r0, [r4, #8]
	b _0808C41E
_0808C41C:
	strh r7, [r5, #8]
_0808C41E:
	movs r1, #1
	lsls r1, r7
	mov r2, sl
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	b _0808C6B0
_0808C42C:
	cmp r7, #0
	beq _0808C434
	ldr r0, [r4, #0x10]
	b _0808C436
_0808C434:
	ldr r0, [r5, #0x10]
_0808C436:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808C440
	b _0808C6B0
_0808C440:
	cmp r7, #0
	beq _0808C44E
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bgt _0808C458
	b _0808C6B0
_0808C44E:
	movs r6, #0xa
	ldrsh r0, [r5, r6]
	cmp r0, #0
	bgt _0808C458
	b _0808C6B0
_0808C458:
	ldr r0, [sp]
	lsls r3, r0, #0x10
	asrs r2, r3, #0x10
	ldr r6, [sp, #8]
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r0, r1, #3
	adds r2, r2, r0
	adds r6, r3, #0
	adds r3, r1, #0
	cmp r7, #0
	beq _0808C47A
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808C484
	b _0808C6B0
_0808C47A:
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808C484
	b _0808C6B0
_0808C484:
	asrs r1, r6, #0x10
	lsls r0, r3, #3
	adds r1, r1, r0
	ldr r2, [sp, #8]
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r7, #0
	beq _0808C4A0
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808C4AA
	b _0808C6B0
_0808C4A0:
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808C4AA
	b _0808C6B0
_0808C4AA:
	ldr r6, [sp, #4]
	lsls r3, r6, #0x10
	asrs r2, r3, #0x10
	ldr r0, [sp, #8]
	movs r1, #4
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	adds r2, r2, r0
	mov r8, r3
	adds r3, r1, #0
	cmp r7, #0
	beq _0808C4CC
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808C4D6
	b _0808C6B0
_0808C4CC:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808C4D6
	b _0808C6B0
_0808C4D6:
	mov r2, r8
	asrs r1, r2, #0x10
	lsls r0, r3, #3
	adds r1, r1, r0
	ldr r3, [sp, #8]
	ldrb r0, [r3, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r7, #0
	beq _0808C4F4
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808C4FE
	b _0808C6B0
_0808C4F4:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808C4FE
	b _0808C6B0
_0808C4FE:
	cmp r7, #0
	beq _0808C508
	movs r0, #0
	strb r0, [r4, #0x14]
	b _0808C50A
_0808C508:
	strb r7, [r5, #0x14]
_0808C50A:
	ldr r0, _0808C528 @ =gUnknown_03005A20
	cmp r7, #0
	beq _0808C512
	ldr r0, _0808C52C @ =gUnknown_03005AB0
_0808C512:
	bl sub_8046CEC
	cmp r7, #0
	beq _0808C530
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0808C53A
	.align 2, 0
_0808C528: .4byte gUnknown_03005A20
_0808C52C: .4byte gUnknown_03005AB0
_0808C530:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
_0808C53A:
	ldr r2, _0808C54C @ =gUnknown_03005A20
	cmp r7, #0
	beq _0808C550
	ldr r0, [r4, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808C55A
	.align 2, 0
_0808C54C: .4byte gUnknown_03005A20
_0808C550:
	ldr r0, [r5, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0808C55A:
	cmp r7, #0
	beq _0808C56A
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808C574
_0808C56A:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0808C574:
	cmp r7, #0
	beq _0808C588
	ldr r6, _0808C584 @ =gUnknown_03005AD6
	ldrb r1, [r6]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r6]
	b _0808C594
	.align 2, 0
_0808C584: .4byte gUnknown_03005AD6
_0808C588:
	ldr r0, _0808C5A4 @ =gUnknown_03005A46
	ldrb r1, [r0]
	movs r0, #0x80
	orrs r0, r1
	ldr r1, _0808C5A4 @ =gUnknown_03005A46
	strb r0, [r1]
_0808C594:
	cmp r7, #0
	beq _0808C5A8
	ldrh r0, [r4, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0808C5B2
	b _0808C5EC
	.align 2, 0
_0808C5A4: .4byte gUnknown_03005A46
_0808C5A8:
	ldrh r0, [r2, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808C5EC
_0808C5B2:
	cmp r7, #0
	beq _0808C5C4
	movs r6, #0x24
	ldr r3, _0808C5C0 @ =gUnknown_03005AF0
	strb r6, [r3]
	b _0808C5CA
	.align 2, 0
_0808C5C0: .4byte gUnknown_03005AF0
_0808C5C4:
	movs r1, #0x24
	ldr r0, _0808C5DC @ =gUnknown_03005A60
	strb r1, [r0]
_0808C5CA:
	cmp r7, #0
	beq _0808C5E0
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808C652
	.align 2, 0
_0808C5DC: .4byte gUnknown_03005A60
_0808C5E0:
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808C652
_0808C5EC:
	cmp r7, #0
	beq _0808C5FC
	ldrh r0, [r4, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0808C606
	b _0808C63A
_0808C5FC:
	ldrh r0, [r2, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808C63A
_0808C606:
	cmp r7, #0
	beq _0808C618
	movs r6, #0x24
	ldr r3, _0808C614 @ =gUnknown_03005AF0
	strb r6, [r3]
	b _0808C61E
	.align 2, 0
_0808C614: .4byte gUnknown_03005AF0
_0808C618:
	movs r1, #0x24
	ldr r0, _0808C62C @ =gUnknown_03005A60
	strb r1, [r0]
_0808C61E:
	cmp r7, #0
	beq _0808C630
	ldr r0, [r4, #0x10]
	movs r3, #1
	orrs r0, r3
	str r0, [r4, #0x10]
	b _0808C652
	.align 2, 0
_0808C62C: .4byte gUnknown_03005A60
_0808C630:
	ldr r0, [r5, #0x10]
	movs r6, #1
	orrs r0, r6
	str r0, [r5, #0x10]
	b _0808C652
_0808C63A:
	cmp r7, #0
	beq _0808C64C
	movs r0, #0x23
	ldr r1, _0808C648 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _0808C652
	.align 2, 0
_0808C648: .4byte gUnknown_03005AF0
_0808C64C:
	movs r0, #0x23
	ldr r3, _0808C664 @ =gUnknown_03005A60
	strb r0, [r3]
_0808C652:
	mov r6, r8
	asrs r0, r6, #8
	movs r1, #0x90
	lsls r1, r1, #5
	adds r0, r0, r1
	cmp r7, #0
	beq _0808C668
	str r0, [r4, #4]
	b _0808C66A
	.align 2, 0
_0808C664: .4byte gUnknown_03005A60
_0808C668:
	str r0, [r2, #4]
_0808C66A:
	movs r0, #1
	lsls r0, r7
	mov r3, sl
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
	mov r0, sb
	adds r0, #0x40
	ldr r6, [sp, #0xc]
	adds r1, r0, r6
	cmp r7, #0
	beq _0808C686
	ldr r0, [r4]
	b _0808C688
_0808C686:
	ldr r0, [r2]
_0808C688:
	str r0, [r1]
	ldr r0, _0808C734 @ =gUnknown_03005A20
	cmp r7, #0
	beq _0808C692
	ldr r0, _0808C738 @ =gUnknown_03005AB0
_0808C692:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _0808C734 @ =gUnknown_03005A20
	cmp r7, #0
	beq _0808C6A0
	ldr r1, _0808C738 @ =gUnknown_03005AB0
_0808C6A0:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0808C734 @ =gUnknown_03005A20
	cmp r7, #0
	beq _0808C6AC
	ldr r1, _0808C738 @ =gUnknown_03005AB0
_0808C6AC:
	movs r0, #0xe
	strb r0, [r1, #0xf]
_0808C6B0:
	ldr r0, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0xc]
	adds r7, #1
	ldr r0, _0808C73C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	bge _0808C6C6
	b _0808C08C
_0808C6C6:
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0808C724
	ldr r2, _0808C740 @ =gCamera
	ldrh r0, [r2]
	ldr r3, [sp]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	ldr r6, [sp, #4]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _0808C714
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	adds r0, r3, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0808C714
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r3, r0
	ble _0808C724
_0808C714:
	mov r2, sb
	ldrb r0, [r2, #8]
	ldr r3, [sp, #8]
	strb r0, [r3]
	ldr r0, _0808C744 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0808C724:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808C734: .4byte gUnknown_03005A20
_0808C738: .4byte gUnknown_03005AB0
_0808C73C: .4byte gUnknown_03005088
_0808C740: .4byte gCamera
_0808C744: .4byte gCurTask

	thumb_func_start CreateEntity_Interactable083
CreateEntity_Interactable083: @ 0x0808C748
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0808C7AC @ =sub_808C038
	movs r2, #0x80
	lsls r2, r2, #8
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	movs r3, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	ldr r4, _0808C7B0 @ =0x0300003C
	adds r2, r2, r4
	strb r3, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r4, r8
	strb r0, [r4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808C7AC: .4byte sub_808C038
_0808C7B0: .4byte 0x0300003C

	thumb_func_start CreateEntity_Interactable084
CreateEntity_Interactable084: @ 0x0808C7B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov sl, r6
	ldr r0, _0808C890 @ =sub_808C920
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808C894 @ =sub_808DE18
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	ldr r1, _0808C898 @ =0x0300000C
	adds r7, r3, r1
	movs r2, #0
	mov sb, r2
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r6, r8
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #8]
	mov r1, sl
	strb r1, [r0, #9]
	ldr r6, _0808C89C @ =0x0300009C
	adds r0, r3, r6
	str r2, [r0]
	ldr r1, _0808C8A0 @ =0x030000A0
	adds r0, r3, r1
	str r2, [r0]
	adds r6, #8
	adds r0, r3, r6
	str r2, [r0]
	adds r1, #8
	adds r0, r3, r1
	str r2, [r0]
	adds r6, #8
	adds r0, r3, r6
	str r2, [r0]
	adds r1, #8
	adds r0, r3, r1
	mov r2, sb
	strb r2, [r0]
	mov r6, r8
	ldrb r1, [r6, #3]
	ldr r2, _0808C8A4 @ =0x030000B1
	adds r0, r3, r2
	strb r1, [r0]
	ldr r6, _0808C8A8 @ =0x030000B2
	adds r0, r3, r6
	mov r1, sb
	strb r1, [r0]
	mov r2, r8
	ldrb r1, [r2, #4]
	adds r6, #1
	adds r0, r3, r6
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r2]
	ldr r0, _0808C8AC @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #3
	bne _0808C8B8
	movs r0, #0x18
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _0808C8B0 @ =0x00000211
	strh r0, [r7, #0xa]
	ldr r3, [sp, #4]
	ldr r2, _0808C8B4 @ =0x0300002C
	adds r0, r3, r2
	mov r6, sb
	strb r6, [r0]
	b _0808C8D0
	.align 2, 0
_0808C890: .4byte sub_808C920
_0808C894: .4byte sub_808DE18
_0808C898: .4byte 0x0300000C
_0808C89C: .4byte 0x0300009C
_0808C8A0: .4byte 0x030000A0
_0808C8A4: .4byte 0x030000B1
_0808C8A8: .4byte 0x030000B2
_0808C8AC: .4byte gCurrentLevel
_0808C8B0: .4byte 0x00000211
_0808C8B4: .4byte 0x0300002C
_0808C8B8:
	movs r0, #0x18
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _0808C918 @ =0x00000223
	strh r0, [r7, #0xa]
	ldr r3, [sp, #4]
	ldr r1, _0808C91C @ =0x0300002C
	adds r0, r3, r1
	mov r2, sb
	strb r2, [r0]
_0808C8D0:
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
	.align 2, 0
_0808C918: .4byte 0x00000223
_0808C91C: .4byte 0x0300002C

	thumb_func_start sub_808C920
sub_808C920: @ 0x0808C920
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov sl, r0
	ldr r0, _0808C98C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _0808C990 @ =0x0300000C
	adds r2, r2, r1
	mov sb, r2
	ldr r4, [r6]
	str r4, [sp, #8]
	ldrb r2, [r6, #8]
	lsls r2, r2, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _0808C994 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	str r4, [sp]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	mov r0, sb
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	str r2, [sp, #4]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r4, sb
	strh r1, [r4, #0x18]
	movs r5, #0
	ldr r7, _0808C998 @ =gUnknown_03005AB0
	ldr r0, _0808C99C @ =gUnknown_03005A20
	mov r8, r0
_0808C984:
	cmp r5, #0
	beq _0808C9A0
	ldr r0, [r7, #0x10]
	b _0808C9A4
	.align 2, 0
_0808C98C: .4byte gCurTask
_0808C990: .4byte 0x0300000C
_0808C994: .4byte gCamera
_0808C998: .4byte gUnknown_03005AB0
_0808C99C: .4byte gUnknown_03005A20
_0808C9A0:
	mov r1, r8
	ldr r0, [r1, #0x10]
_0808C9A4:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808C9AE
	b _0808CBD0
_0808C9AE:
	bl sub_80549FC
	cmp r0, #0
	beq _0808CA7C
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r1, r0, #8
	adds r4, r0, #0
	cmp r5, #0
	beq _0808C9CA
	ldr r0, [r7, #4]
	cmp r0, r1
	bgt _0808C9D2
	b _0808CA36
_0808C9CA:
	mov r2, r8
	ldr r0, [r2, #4]
	cmp r0, r1
	ble _0808CA36
_0808C9D2:
	cmp r5, #0
	beq _0808C9E8
	ldr r1, _0808C9E4 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x49
	bne _0808C9F4
	b _0808CBD0
	.align 2, 0
_0808C9E4: .4byte gUnknown_03005AF0
_0808C9E8:
	ldr r2, _0808CA24 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0x49
	bne _0808C9F4
	b _0808CBD0
_0808C9F4:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	asrs r4, r4, #0x10
	ldr r3, _0808CA28 @ =gUnknown_03005A20
	cmp r5, #0
	beq _0808CA04
	ldr r3, _0808CA2C @ =gUnknown_03005AB0
_0808CA04:
	mov r0, sb
	adds r2, r4, #0
	bl sub_800B1D4
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r0
	cmp r1, #0
	bne _0808CA18
	b _0808CBD0
_0808CA18:
	adds r0, r4, #6
	lsls r0, r0, #8
	cmp r5, #0
	beq _0808CA30
	str r0, [r7, #4]
	b _0808CBD0
	.align 2, 0
_0808CA24: .4byte gUnknown_03005A60
_0808CA28: .4byte gUnknown_03005A20
_0808CA2C: .4byte gUnknown_03005AB0
_0808CA30:
	mov r2, r8
	str r0, [r2, #4]
	b _0808CBD0
_0808CA36:
	cmp r5, #0
	beq _0808CA4C
	ldr r1, _0808CA48 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x48
	bne _0808CA58
	b _0808CBD0
	.align 2, 0
_0808CA48: .4byte gUnknown_03005AF0
_0808CA4C:
	ldr r2, _0808CA70 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0x48
	bne _0808CA58
	b _0808CBD0
_0808CA58:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	asrs r2, r4, #0x10
	ldr r3, _0808CA74 @ =gUnknown_03005A20
	cmp r5, #0
	beq _0808CA68
	ldr r3, _0808CA78 @ =gUnknown_03005AB0
_0808CA68:
	mov r0, sb
	bl sub_800B1D4
	b _0808CBD0
	.align 2, 0
_0808CA70: .4byte gUnknown_03005A60
_0808CA74: .4byte gUnknown_03005A20
_0808CA78: .4byte gUnknown_03005AB0
_0808CA7C:
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	ldr r4, [sp, #4]
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808CAB4 @ =gUnknown_03005A20
	adds r4, r0, #0
	cmp r5, #0
	beq _0808CA92
	ldr r3, _0808CAB8 @ =gUnknown_03005AB0
_0808CA92:
	mov r0, sb
	bl sub_800B1D4
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0808CAA2
	b _0808CBD0
_0808CAA2:
	cmp r5, #0
	beq _0808CABC
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808CACA
	.align 2, 0
_0808CAB4: .4byte gUnknown_03005A20
_0808CAB8: .4byte gUnknown_03005AB0
_0808CABC:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0808CACA:
	cmp r5, #0
	beq _0808CAD8
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0808CAE4
_0808CAD8:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #2
	orrs r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0808CAE4:
	cmp r5, #0
	beq _0808CAF8
	ldr r0, [r7, #0x10]
	ldr r1, _0808CAF4 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808CB04
	.align 2, 0
_0808CAF4: .4byte 0xFFFFFEFF
_0808CAF8:
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, _0808CB14 @ =0xFFFFFEFF
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0808CB04:
	cmp r5, #0
	beq _0808CB18
	ldr r0, [r7, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808CB26
	.align 2, 0
_0808CB14: .4byte 0xFFFFFEFF
_0808CB18:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0808CB26:
	cmp r5, #0
	beq _0808CB36
	ldr r0, [r7, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808CB44
_0808CB36:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0808CB44:
	ldr r0, _0808CB7C @ =gUnknown_03005A20
	cmp r5, #0
	beq _0808CB4C
	ldr r0, _0808CB80 @ =gUnknown_03005AB0
_0808CB4C:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _0808CB7C @ =gUnknown_03005A20
	cmp r5, #0
	beq _0808CB5A
	ldr r1, _0808CB80 @ =gUnknown_03005AB0
_0808CB5A:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r2, _0808CB7C @ =gUnknown_03005A20
	adds r1, r2, #0
	cmp r5, #0
	beq _0808CB68
	ldr r1, _0808CB80 @ =gUnknown_03005AB0
_0808CB68:
	movs r0, #0xe
	strb r0, [r1, #0xf]
	asrs r0, r4, #8
	ldr r4, _0808CB84 @ =0xFFFFD400
	adds r0, r0, r4
	cmp r5, #0
	beq _0808CB88
	str r0, [r7, #4]
	b _0808CB8A
	.align 2, 0
_0808CB7C: .4byte gUnknown_03005A20
_0808CB80: .4byte gUnknown_03005AB0
_0808CB84: .4byte 0xFFFFD400
_0808CB88:
	str r0, [r2, #4]
_0808CB8A:
	adds r3, r6, #0
	adds r3, #0xb2
	movs r1, #1
	lsls r1, r5
	ldrb r0, [r3]
	orrs r1, r0
	movs r2, #0
	strb r1, [r3]
	adds r0, r6, #0
	adds r0, #0xa0
	str r2, [r0]
	adds r0, #4
	str r2, [r0]
	adds r0, #4
	str r2, [r0]
	adds r0, #4
	str r2, [r0]
	movs r0, #1
	mov sl, r0
	ldr r0, _0808CC40 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0808CBEA
	bl sub_80182FC
	mov r1, sl
	strb r1, [r0]
	ldrh r1, [r6, #4]
	strb r1, [r0, #1]
	ldrh r1, [r6, #6]
	strb r1, [r0, #2]
	ldrb r1, [r6, #9]
	strb r1, [r0, #3]
	mov r2, sl
	strb r2, [r0, #4]
_0808CBD0:
	ldr r0, _0808CC40 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _0808CBEA
	ldr r4, [sp, #8]
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0808CBEA
	movs r0, #1
	mov sl, r0
_0808CBEA:
	adds r5, #1
	ldr r0, _0808CC44 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _0808CBFA
	b _0808C984
_0808CBFA:
	mov r1, sl
	cmp r1, #0
	beq _0808CC08
	ldr r0, _0808CC48 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808CC4C @ =sub_808CC68
	str r0, [r1, #8]
_0808CC08:
	mov r2, sb
	ldrh r0, [r2, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808CC2E
	movs r4, #0x18
	ldrsh r0, [r2, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0808CC2E
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808CC50
_0808CC2E:
	ldrb r0, [r6, #8]
	ldr r1, [sp, #8]
	strb r0, [r1]
	ldr r0, _0808CC48 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808CC56
	.align 2, 0
_0808CC40: .4byte gGameMode
_0808CC44: .4byte gUnknown_03005088
_0808CC48: .4byte gCurTask
_0808CC4C: .4byte sub_808CC68
_0808CC50:
	mov r0, sb
	bl DisplaySprite
_0808CC56:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808CC68
sub_808CC68: @ 0x0808CC68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r0, _0808CD34 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r2, _0808CD38 @ =0x0300000C
	adds r2, r1, r2
	str r2, [sp, #0xc]
	ldr r3, [r0]
	str r3, [sp, #0x10]
	ldrb r3, [r0, #8]
	lsls r3, r3, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #0x10
	ldr r4, [sp, #0x10]
	ldrb r2, [r4, #1]
	lsls r2, r2, #3
	mov r7, sl
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r0, _0808CD3C @ =0x030000AC
	adds r4, r1, r0
	ldr r7, _0808CD40 @ =0x030000A4
	adds r1, r1, r7
	ldr r0, [r4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r4]
	asrs r0, r0, #8
	lsrs r5, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r2, r0
	ldr r4, _0808CD44 @ =gCamera
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	strh r0, [r1, #0x18]
	lsrs r6, r3, #0x10
	asrs r3, r3, #0x10
	movs r7, #0
	ldrsh r1, [r4, r7]
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r0, r1, r7
	cmp r3, r0
	bgt _0808CCFE
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	blt _0808CCFE
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808CCFE
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808CD48
_0808CCFE:
	ldr r4, [sp, #0xc]
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808CD24
	movs r7, #0x18
	ldrsh r0, [r4, r7]
	adds r0, #0x80
	cmp r0, #0
	blt _0808CD24
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808CD48
_0808CD24:
	movs r0, #0xc6
	bl m4aSongNumStop
	mov r1, sl
	ldrb r0, [r1, #8]
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	b _0808D2F8
	.align 2, 0
_0808CD34: .4byte gCurTask
_0808CD38: .4byte 0x0300000C
_0808CD3C: .4byte 0x030000AC
_0808CD40: .4byte 0x030000A4
_0808CD44: .4byte gCamera
_0808CD48:
	movs r2, #0
	lsls r5, r5, #0x10
	str r5, [sp, #0x20]
	lsls r6, r6, #0x10
	str r6, [sp, #0x1c]
	mov r3, sl
	adds r3, #0xac
	str r3, [sp, #0x28]
	ldr r4, _0808CD84 @ =gUnknown_03005088
	mov ip, r4
	mov r7, sl
	adds r7, #0xb0
	str r7, [sp, #0x2c]
	mov r0, sl
	adds r0, #0xa8
	str r0, [sp, #0x24]
	ldr r4, _0808CD88 @ =gUnknown_03005AB0
	movs r1, #0x80
	mov r8, r1
	ldr r3, _0808CD8C @ =gUnknown_03005A20
	movs r7, #0x27
	adds r7, r7, r3
	mov sb, r7
	asrs r6, r5, #8
	ldr r7, _0808CD90 @ =0x00000404
	ldr r5, [sp, #0x28]
_0808CD7C:
	cmp r2, #0
	beq _0808CD94
	ldr r0, [r4, #0x10]
	b _0808CD96
	.align 2, 0
_0808CD84: .4byte gUnknown_03005088
_0808CD88: .4byte gUnknown_03005AB0
_0808CD8C: .4byte gUnknown_03005A20
_0808CD90: .4byte 0x00000404
_0808CD94:
	ldr r0, [r3, #0x10]
_0808CD96:
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _0808CDF2
	cmp r2, #0
	bne _0808CDA8
	mov r0, sb
	ldrb r0, [r0]
	str r0, [sp, #0x14]
_0808CDA8:
	mov r0, sl
	adds r0, #0xb2
	ldrb r0, [r0]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808CDF2
	cmp r2, #0
	beq _0808CDC0
	ldr r0, [r4, #0x10]
	b _0808CDC2
_0808CDC0:
	ldr r0, [r3, #0x10]
_0808CDC2:
	ands r0, r7
	cmp r0, #0
	bne _0808CDDC
	ldr r0, [r5]
	adds r0, r6, r0
	ldr r1, _0808CDD8 @ =0xFFFFD200
	adds r0, r0, r1
	cmp r2, #0
	bne _0808CDE8
	b _0808CDF0
	.align 2, 0
_0808CDD8: .4byte 0xFFFFD200
_0808CDDC:
	ldr r0, [r5]
	adds r0, r6, r0
	ldr r1, _0808CDEC @ =0xFFFFD600
	adds r0, r0, r1
	cmp r2, #0
	beq _0808CDF0
_0808CDE8:
	str r0, [r4, #4]
	b _0808CDF2
	.align 2, 0
_0808CDEC: .4byte 0xFFFFD600
_0808CDF0:
	str r0, [r3, #4]
_0808CDF2:
	adds r2, #1
	mov r1, ip
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	blt _0808CD7C
	ldr r2, [sp, #0x2c]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0808CE08
	b _0808CF88
_0808CE08:
	ldr r3, [sp, #0x20]
	asrs r0, r3, #0x10
	ldr r4, [sp, #0x28]
	ldr r1, [r4]
	asrs r1, r1, #8
	adds r0, r0, r1
	ldr r7, [sp, #0x1c]
	asrs r1, r7, #0x10
	ldr r3, [sp, #0x24]
	ldr r2, [r3]
	asrs r2, r2, #8
	adds r1, r1, r2
	movs r4, #0
	str r4, [sp]
	ldr r7, _0808CE40 @ =sub_803FF84
	str r7, [sp, #4]
	ldr r2, [sp, #0x14]
	movs r3, #8
	bl sub_8040198
	cmp r0, #0
	blt _0808CE44
	mov r1, sl
	adds r1, #0xa4
	ldr r0, [r1]
	adds r0, #0x20
	str r0, [r1]
	b _0808D15E
	.align 2, 0
_0808CE40: .4byte sub_803FF84
_0808CE44:
	mov r0, sl
	adds r0, #0xa4
	str r4, [r0]
	ldr r0, [sp, #0x2c]
	strb r4, [r0]
	mov r4, sl
	adds r4, #0xb1
	ldrb r0, [r4]
	cmp r0, #0
	beq _0808CE66
	movs r0, #0xc6
	bl m4aSongNumStart
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	b _0808D15E
_0808CE66:
	movs r5, #0
	ldr r6, _0808CE7C @ =gUnknown_03005AB0
	ldr r7, _0808CE80 @ =gUnknown_03005A20
	adds r3, r6, #0
	adds r3, #0x40
	adds r4, r7, #0
	adds r4, #0x40
_0808CE74:
	cmp r5, #0
	beq _0808CE84
	ldr r0, [r6, #0x10]
	b _0808CE86
	.align 2, 0
_0808CE7C: .4byte gUnknown_03005AB0
_0808CE80: .4byte gUnknown_03005A20
_0808CE84:
	ldr r0, [r7, #0x10]
_0808CE86:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808CF72
	mov r2, sl
	adds r2, #0xb2
	ldrb r1, [r2]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	mov r8, r2
	cmp r1, #0
	beq _0808CF72
	cmp r5, #0
	beq _0808CEAC
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r6, #0xa]
	b _0808CEB2
_0808CEAC:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r7, #0xa]
_0808CEB2:
	ldr r2, _0808CEC4 @ =gUnknown_03005A20
	mov r0, sl
	adds r0, #0xa0
	ldr r1, [r0]
	mov sb, r0
	cmp r5, #0
	beq _0808CEC8
	strh r1, [r6, #8]
	b _0808CECA
	.align 2, 0
_0808CEC4: .4byte gUnknown_03005A20
_0808CEC8:
	strh r1, [r2, #8]
_0808CECA:
	mov r1, sb
	ldr r0, [r1]
	cmp r5, #0
	beq _0808CED6
	strh r0, [r6, #0xc]
	b _0808CED8
_0808CED6:
	strh r0, [r2, #0xc]
_0808CED8:
	adds r0, r2, #0
	cmp r5, #0
	beq _0808CEE0
	ldr r0, _0808CEF8 @ =gUnknown_03005AB0
_0808CEE0:
	str r3, [sp, #0x30]
	bl sub_8046CEC
	ldr r3, [sp, #0x30]
	cmp r5, #0
	beq _0808CEFC
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	b _0808CF06
	.align 2, 0
_0808CEF8: .4byte gUnknown_03005AB0
_0808CEFC:
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_0808CF06:
	cmp r5, #0
	beq _0808CF14
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
	b _0808CF1C
_0808CF14:
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
_0808CF1C:
	cmp r5, #0
	beq _0808CF26
	movs r0, #0
	str r0, [r6, #0x28]
	b _0808CF28
_0808CF26:
	str r5, [r7, #0x28]
_0808CF28:
	cmp r5, #0
	beq _0808CF3C
	ldr r2, _0808CF38 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _0808CF46
	b _0808CF58
	.align 2, 0
_0808CF38: .4byte gUnknown_03005B09
_0808CF3C:
	ldr r1, _0808CF50 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	beq _0808CF58
_0808CF46:
	cmp r5, #0
	beq _0808CF54
	movs r0, #5
	strb r0, [r3]
	b _0808CF66
	.align 2, 0
_0808CF50: .4byte gUnknown_03005A79
_0808CF54:
	movs r0, #5
	b _0808CF64
_0808CF58:
	cmp r5, #0
	beq _0808CF62
	movs r0, #0x55
	strb r0, [r3]
	b _0808CF66
_0808CF62:
	movs r0, #0x55
_0808CF64:
	strb r0, [r4]
_0808CF66:
	movs r1, #1
	lsls r1, r5
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0808CF72:
	adds r5, #1
	ldr r0, _0808CF84 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _0808CF82
	b _0808CE74
_0808CF82:
	b _0808D2B2
	.align 2, 0
_0808CF84: .4byte gUnknown_03005088
_0808CF88:
	ldr r2, [sp, #0x20]
	asrs r0, r2, #0x10
	ldr r3, [sp, #0x28]
	ldr r1, [r3]
	asrs r1, r1, #8
	adds r0, r0, r1
	ldr r4, [sp, #0x1c]
	asrs r1, r4, #0x10
	ldr r7, [sp, #0x24]
	ldr r2, [r7]
	asrs r2, r2, #8
	adds r1, r1, r2
	add r2, sp, #8
	str r2, [sp]
	ldr r3, _0808CFEC @ =sub_803FF84
	str r3, [sp, #4]
	ldr r2, [sp, #0x14]
	movs r3, #8
	bl sub_803FA74
	cmp r0, #5
	ble _0808D03E
	movs r0, #0xc6
	bl m4aSongNumStop
	ldr r0, _0808CFF0 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #3
	beq _0808D006
	mov r6, sl
	adds r6, #0xa4
	ldr r5, [r6]
	mov r4, sl
	adds r4, #0xa0
	ldr r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r1, #5
	bl Div
	mov sb, r4
	cmp r0, #0
	bge _0808CFF4
	ldr r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	b _0808D02C
	.align 2, 0
_0808CFEC: .4byte sub_803FF84
_0808CFF0: .4byte gCurrentLevel
_0808CFF4:
	mov r4, sb
	ldr r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
_0808CFFC:
	movs r1, #5
	bl Div
	subs r0, r5, r0
	b _0808D034
_0808D006:
	mov r6, sl
	adds r6, #0xa4
	ldr r5, [r6]
	mov r4, sl
	adds r4, #0xa0
	ldr r0, [r4]
	lsls r0, r0, #1
	movs r1, #5
	bl Div
	mov sb, r4
	cmp r0, #0
	bge _0808D026
	ldr r0, [r4]
	lsls r0, r0, #1
	b _0808CFFC
_0808D026:
	mov r7, sb
	ldr r0, [r7]
	lsls r0, r0, #1
_0808D02C:
	movs r1, #5
	bl Div
	adds r0, r5, r0
_0808D034:
	str r0, [r6]
	movs r0, #1
	ldr r1, [sp, #0x2c]
	strb r0, [r1]
	b _0808D15E
_0808D03E:
	movs r5, #0
	movs r2, #0xa0
	add r2, sl
	mov sb, r2
	mov r4, sl
	adds r4, #0xb3
	ldr r2, _0808D060 @ =gSineTable
	adds r0, #3
	str r0, [sp, #0x18]
	ldr r7, _0808D064 @ =gUnknown_03005AB0
	ldr r6, _0808D068 @ =gUnknown_03005A20
	mov r8, r2
_0808D056:
	cmp r5, #0
	beq _0808D06C
	ldr r0, [r7, #0x10]
	b _0808D06E
	.align 2, 0
_0808D060: .4byte gSineTable
_0808D064: .4byte gUnknown_03005AB0
_0808D068: .4byte gUnknown_03005A20
_0808D06C:
	ldr r0, [r6, #0x10]
_0808D06E:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808D0F0
	mov r0, sl
	adds r0, #0xb2
	ldrb r0, [r0]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808D0F0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0808D0BE
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0808D0B4 @ =0x000017B6
	bl Div
	adds r1, r0, #0
	cmp r5, #0
	beq _0808D0B8
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	b _0808D0EE
	.align 2, 0
_0808D0B4: .4byte 0x000017B6
_0808D0B8:
	ldr r0, [r6]
	adds r0, r0, r1
	b _0808D0EC
_0808D0BE:
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #3
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _0808D0E4 @ =0x000017B6
	bl Div
	adds r1, r0, #0
	cmp r5, #0
	beq _0808D0E8
	ldr r0, [r7]
	subs r0, r0, r1
	str r0, [r7]
	b _0808D0EE
	.align 2, 0
_0808D0E4: .4byte 0x000017B6
_0808D0E8:
	ldr r0, [r6]
	subs r0, r0, r1
_0808D0EC:
	str r0, [r6]
_0808D0EE:
	ldr r2, _0808D128 @ =gSineTable
_0808D0F0:
	adds r5, #1
	ldr r0, _0808D12C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt _0808D056
	ldrb r0, [r4]
	cmp r0, #0
	beq _0808D130
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #3
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	adds r0, r0, r2
	movs r7, #0
	ldrsh r0, [r0, r7]
	movs r1, #0xb4
	lsls r1, r1, #3
	bl Div
	mov r2, sb
	ldr r1, [r2]
	subs r1, r1, r0
	str r1, [r2]
	b _0808D152
	.align 2, 0
_0808D128: .4byte gSineTable
_0808D12C: .4byte gUnknown_03005088
_0808D130:
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	movs r1, #0xb4
	lsls r1, r1, #3
	bl Div
	mov r7, sb
	ldr r1, [r7]
	adds r1, r1, r0
	str r1, [r7]
_0808D152:
	ldr r0, [sp, #0x18]
	lsls r1, r0, #8
	ldr r2, [sp, #0x28]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_0808D15E:
	ldr r3, [sp, #0x1c]
	asrs r0, r3, #0x10
	ldr r4, [sp, #0x24]
	ldr r1, [r4]
	asrs r1, r1, #8
	adds r0, r0, r1
	adds r0, #0x12
	ldr r7, [sp, #0x20]
	asrs r1, r7, #0x10
	ldr r3, [sp, #0x28]
	ldr r2, [r3]
	asrs r2, r2, #8
	adds r1, r1, r2
	subs r1, #0x1e
	add r4, sp, #8
	str r4, [sp]
	ldr r2, _0808D1A8 @ =sub_803FE44
	str r2, [sp, #4]
	ldr r2, [sp, #0x14]
	movs r3, #8
	bl sub_8040198
	cmp r0, #0
	blt _0808D190
	b _0808D314
_0808D190:
	movs r5, #0
	ldr r6, _0808D1AC @ =gUnknown_03005AB0
	ldr r7, _0808D1B0 @ =gUnknown_03005A20
	adds r3, r6, #0
	adds r3, #0x40
	adds r4, r7, #0
	adds r4, #0x40
_0808D19E:
	cmp r5, #0
	beq _0808D1B4
	ldr r0, [r6, #0x10]
	b _0808D1B6
	.align 2, 0
_0808D1A8: .4byte sub_803FE44
_0808D1AC: .4byte gUnknown_03005AB0
_0808D1B0: .4byte gUnknown_03005A20
_0808D1B4:
	ldr r0, [r7, #0x10]
_0808D1B6:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808D2A2
	mov r2, sl
	adds r2, #0xb2
	ldrb r1, [r2]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	mov r8, r2
	cmp r1, #0
	beq _0808D2A2
	cmp r5, #0
	beq _0808D1DC
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r6, #0xa]
	b _0808D1E2
_0808D1DC:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r7, #0xa]
_0808D1E2:
	ldr r2, _0808D1F4 @ =gUnknown_03005A20
	mov r0, sl
	adds r0, #0xa0
	ldr r1, [r0]
	mov sb, r0
	cmp r5, #0
	beq _0808D1F8
	strh r1, [r6, #8]
	b _0808D1FA
	.align 2, 0
_0808D1F4: .4byte gUnknown_03005A20
_0808D1F8:
	strh r1, [r2, #8]
_0808D1FA:
	mov r1, sb
	ldr r0, [r1]
	cmp r5, #0
	beq _0808D206
	strh r0, [r6, #0xc]
	b _0808D208
_0808D206:
	strh r0, [r2, #0xc]
_0808D208:
	adds r0, r2, #0
	cmp r5, #0
	beq _0808D210
	ldr r0, _0808D228 @ =gUnknown_03005AB0
_0808D210:
	str r3, [sp, #0x30]
	bl sub_8046CEC
	ldr r3, [sp, #0x30]
	cmp r5, #0
	beq _0808D22C
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	b _0808D236
	.align 2, 0
_0808D228: .4byte gUnknown_03005AB0
_0808D22C:
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
_0808D236:
	cmp r5, #0
	beq _0808D244
	ldr r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #0x10]
	b _0808D24C
_0808D244:
	ldr r0, [r7, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #0x10]
_0808D24C:
	cmp r5, #0
	beq _0808D256
	movs r0, #0
	str r0, [r6, #0x28]
	b _0808D258
_0808D256:
	str r5, [r7, #0x28]
_0808D258:
	cmp r5, #0
	beq _0808D26C
	ldr r2, _0808D268 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _0808D276
	b _0808D288
	.align 2, 0
_0808D268: .4byte gUnknown_03005B09
_0808D26C:
	ldr r1, _0808D280 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	beq _0808D288
_0808D276:
	cmp r5, #0
	beq _0808D284
	movs r0, #5
	strb r0, [r3]
	b _0808D296
	.align 2, 0
_0808D280: .4byte gUnknown_03005A79
_0808D284:
	movs r0, #5
	b _0808D294
_0808D288:
	cmp r5, #0
	beq _0808D292
	movs r0, #0x55
	strb r0, [r3]
	b _0808D296
_0808D292:
	movs r0, #0x55
_0808D294:
	strb r0, [r4]
_0808D296:
	movs r1, #1
	lsls r1, r5
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0808D2A2:
	adds r5, #1
	ldr r0, _0808D304 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _0808D2B2
	b _0808D19E
_0808D2B2:
	movs r0, #0xc6
	bl m4aSongNumStop
	ldr r0, _0808D308 @ =gUnknown_0300120C
	ldr r3, [sp, #0xc]
	ldrh r2, [r3, #0x16]
	strh r2, [r0]
	ldr r0, _0808D30C @ =gUnknown_030020C0
	ldrh r3, [r3, #0x18]
	strh r3, [r0]
	ldr r4, [sp, #0x24]
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r7, [sp, #0x1c]
	asrs r0, r7, #0x10
	adds r0, r0, r1
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x28]
	ldr r2, [r1]
	asrs r2, r2, #8
	ldr r4, [sp, #0x20]
	asrs r1, r4, #0x10
	adds r1, r1, r2
	adds r3, #0x14
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_808D9E4
	mov r7, sl
	ldrb r0, [r7, #8]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
_0808D2F8:
	ldr r0, _0808D310 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808D9C0
	.align 2, 0
_0808D304: .4byte gUnknown_03005088
_0808D308: .4byte gUnknown_0300120C
_0808D30C: .4byte gUnknown_030020C0
_0808D310: .4byte gCurTask
_0808D314:
	movs r6, #0
	movs r2, #0xa0
	add r2, sl
	mov sb, r2
	ldr r5, _0808D328 @ =gUnknown_03005AB0
	ldr r4, _0808D32C @ =gUnknown_03005A20
_0808D320:
	cmp r6, #0
	beq _0808D330
	ldr r0, [r5, #0x10]
	b _0808D332
	.align 2, 0
_0808D328: .4byte gUnknown_03005AB0
_0808D32C: .4byte gUnknown_03005A20
_0808D330:
	ldr r0, [r4, #0x10]
_0808D332:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808D33C
	b _0808D984
_0808D33C:
	mov r1, sl
	adds r1, #0xb2
	ldrb r0, [r1]
	asrs r0, r6
	movs r3, #1
	ands r0, r3
	mov r8, r1
	cmp r0, #0
	bne _0808D350
	b _0808D84A
_0808D350:
	cmp r6, #0
	beq _0808D360
	ldr r0, [r5, #0x10]
	movs r7, #2
	ands r0, r7
	cmp r0, #0
	bne _0808D36A
	b _0808D378
_0808D360:
	ldr r0, [r4, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0808D378
_0808D36A:
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	b _0808D984
_0808D378:
	cmp r6, #0
	beq _0808D388
	ldr r0, [r5, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D392
_0808D388:
	ldr r0, [r4, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D392:
	cmp r6, #0
	beq _0808D3A4
	ldr r0, [r5, #0x10]
	ldr r1, _0808D3A0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D3AC
	.align 2, 0
_0808D3A0: .4byte 0xFFFFFEFF
_0808D3A4:
	ldr r0, [r4, #0x10]
	ldr r1, _0808D3BC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
_0808D3AC:
	cmp r6, #0
	beq _0808D3C0
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D3CA
	.align 2, 0
_0808D3BC: .4byte 0xFFFFFEFF
_0808D3C0:
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D3CA:
	cmp r6, #0
	beq _0808D3D2
	ldr r0, [r5]
	b _0808D3D4
_0808D3D2:
	ldr r0, [r4]
_0808D3D4:
	asrs r3, r0, #8
	cmp r6, #0
	beq _0808D3DE
	ldr r0, [r5, #4]
	b _0808D3E0
_0808D3DE:
	ldr r0, [r4, #4]
_0808D3E0:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0808D3F0
	ldr r7, _0808D3EC @ =gUnknown_03005AD7
	ldrb r2, [r7]
	b _0808D3F4
	.align 2, 0
_0808D3EC: .4byte gUnknown_03005AD7
_0808D3F0:
	ldr r0, _0808D41C @ =gUnknown_03005A47
	ldrb r2, [r0]
_0808D3F4:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0808D420 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_8040198
	adds r7, r0, #0
	cmp r7, #0
	bge _0808D464
	cmp r6, #0
	beq _0808D424
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D42E
	.align 2, 0
_0808D41C: .4byte gUnknown_03005A47
_0808D420: .4byte sub_803FE44
_0808D424:
	ldr r0, [r4, #0x10]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r4, #0x10]
_0808D42E:
	cmp r6, #0
	beq _0808D43C
	ldr r0, [r5, #0x10]
	movs r3, #2
	orrs r0, r3
	str r0, [r5, #0x10]
	b _0808D444
_0808D43C:
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_0808D444:
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	lsls r1, r7, #8
	cmp r6, #0
	beq _0808D45E
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	b _0808D464
_0808D45E:
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_0808D464:
	cmp r6, #0
	beq _0808D46C
	ldr r0, [r5]
	b _0808D46E
_0808D46C:
	ldr r0, [r4]
_0808D46E:
	asrs r3, r0, #8
	cmp r6, #0
	beq _0808D478
	ldr r0, [r5, #4]
	b _0808D47A
_0808D478:
	ldr r0, [r4, #4]
_0808D47A:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0808D48C
	ldr r7, _0808D488 @ =gUnknown_03005AD7
	ldrb r2, [r7]
	b _0808D490
	.align 2, 0
_0808D488: .4byte gUnknown_03005AD7
_0808D48C:
	ldr r0, _0808D4B8 @ =gUnknown_03005A47
	ldrb r2, [r0]
_0808D490:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0808D4BC @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_8040198
	adds r7, r0, #0
	cmp r7, #0
	bge _0808D500
	cmp r6, #0
	beq _0808D4C0
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D4CA
	.align 2, 0
_0808D4B8: .4byte gUnknown_03005A47
_0808D4BC: .4byte sub_803FE44
_0808D4C0:
	ldr r0, [r4, #0x10]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r4, #0x10]
_0808D4CA:
	cmp r6, #0
	beq _0808D4D8
	ldr r0, [r5, #0x10]
	movs r3, #2
	orrs r0, r3
	str r0, [r5, #0x10]
	b _0808D4E0
_0808D4D8:
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_0808D4E0:
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	lsls r1, r7, #8
	cmp r6, #0
	beq _0808D4FA
	ldr r0, [r5]
	subs r0, r0, r1
	str r0, [r5]
	b _0808D500
_0808D4FA:
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
_0808D500:
	ldr r3, [sp, #0x24]
	ldr r1, [r3]
	asrs r1, r1, #8
	ldr r7, [sp, #0x1c]
	asrs r0, r7, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldr r0, [sp, #0x28]
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r2, [sp, #0x20]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	subs r0, #0xc
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808D54C @ =gUnknown_03005A20
	cmp r6, #0
	beq _0808D52A
	ldr r3, _0808D550 @ =gUnknown_03005AB0
_0808D52A:
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	bl sub_800CE34
	cmp r0, #0
	bne _0808D538
	b _0808D7F6
_0808D538:
	mov r3, sb
	ldr r0, [r3]
	lsls r1, r0, #1
	cmp r6, #0
	beq _0808D554
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	b _0808D55A
	.align 2, 0
_0808D54C: .4byte gUnknown_03005A20
_0808D550: .4byte gUnknown_03005AB0
_0808D554:
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_0808D55A:
	mov r7, sb
	ldr r0, [r7]
	lsls r1, r0, #1
	cmp r6, #0
	beq _0808D568
	ldr r0, [r5]
	b _0808D56A
_0808D568:
	ldr r0, [r4]
_0808D56A:
	adds r0, r0, r1
	asrs r3, r0, #8
	cmp r6, #0
	beq _0808D576
	ldr r0, [r5, #4]
	b _0808D578
_0808D576:
	ldr r0, [r4, #4]
_0808D578:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0808D588
	ldr r0, _0808D584 @ =gUnknown_03005AD7
	ldrb r2, [r0]
	b _0808D58C
	.align 2, 0
_0808D584: .4byte gUnknown_03005AD7
_0808D588:
	ldr r7, _0808D5C0 @ =gUnknown_03005A47
	ldrb r2, [r7]
_0808D58C:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0808D5C4 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_803FA74
	adds r7, r0, #0
	cmp r7, #0
	bge _0808D67A
	ldr r0, _0808D5C8 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0808D5AA
	ldr r0, _0808D5CC @ =gUnknown_03005AB0
_0808D5AA:
	bl sub_8046CEC
	cmp r6, #0
	beq _0808D5D0
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D5DA
	.align 2, 0
_0808D5C0: .4byte gUnknown_03005A47
_0808D5C4: .4byte sub_803FE44
_0808D5C8: .4byte gUnknown_03005A20
_0808D5CC: .4byte gUnknown_03005AB0
_0808D5D0:
	ldr r0, [r4, #0x10]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r4, #0x10]
_0808D5DA:
	cmp r6, #0
	beq _0808D5E8
	ldr r0, [r5, #0x10]
	movs r3, #2
	orrs r0, r3
	str r0, [r5, #0x10]
	b _0808D5F0
_0808D5E8:
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_0808D5F0:
	cmp r6, #0
	beq _0808D604
	ldr r2, _0808D600 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _0808D60E
	b _0808D62C
	.align 2, 0
_0808D600: .4byte gUnknown_03005B09
_0808D604:
	ldr r3, _0808D618 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	beq _0808D62C
_0808D60E:
	cmp r6, #0
	beq _0808D620
	movs r0, #5
	ldr r1, _0808D61C @ =gUnknown_03005AF0
	b _0808D640
	.align 2, 0
_0808D618: .4byte gUnknown_03005A79
_0808D61C: .4byte gUnknown_03005AF0
_0808D620:
	movs r0, #5
	ldr r2, _0808D628 @ =gUnknown_03005A60
	strb r0, [r2]
	b _0808D642
	.align 2, 0
_0808D628: .4byte gUnknown_03005A60
_0808D62C:
	cmp r6, #0
	beq _0808D63C
	movs r0, #0x55
	ldr r3, _0808D638 @ =gUnknown_03005AF0
	strb r0, [r3]
	b _0808D642
	.align 2, 0
_0808D638: .4byte gUnknown_03005AF0
_0808D63C:
	movs r0, #0x55
	ldr r1, _0808D64C @ =gUnknown_03005A60
_0808D640:
	strb r0, [r1]
_0808D642:
	cmp r6, #0
	beq _0808D650
	movs r0, #0
	str r0, [r5, #0x28]
	b _0808D652
	.align 2, 0
_0808D64C: .4byte gUnknown_03005A60
_0808D650:
	str r6, [r4, #0x28]
_0808D652:
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	lsls r1, r7, #8
	cmp r6, #0
	beq _0808D66C
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	b _0808D672
_0808D66C:
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_0808D672:
	cmp r6, #0
	beq _0808D678
	b _0808D796
_0808D678:
	b _0808D79C
_0808D67A:
	mov r3, sb
	ldr r0, [r3]
	lsls r1, r0, #1
	cmp r6, #0
	beq _0808D688
	ldr r0, [r5]
	b _0808D68A
_0808D688:
	ldr r0, [r4]
_0808D68A:
	adds r0, r0, r1
	asrs r3, r0, #8
	cmp r6, #0
	beq _0808D696
	ldr r0, [r5, #4]
	b _0808D698
_0808D696:
	ldr r0, [r4, #4]
_0808D698:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0808D6A8
	ldr r7, _0808D6A4 @ =gUnknown_03005AD7
	ldrb r2, [r7]
	b _0808D6AC
	.align 2, 0
_0808D6A4: .4byte gUnknown_03005AD7
_0808D6A8:
	ldr r0, _0808D6E0 @ =gUnknown_03005A47
	ldrb r2, [r0]
_0808D6AC:
	movs r0, #0
	str r0, [sp]
	ldr r0, _0808D6E4 @ =sub_803FE44
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_803FA74
	adds r7, r0, #0
	cmp r7, #0
	bge _0808D79E
	ldr r0, _0808D6E8 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0808D6CC
	ldr r0, _0808D6EC @ =gUnknown_03005AB0
_0808D6CC:
	bl sub_8046CEC
	cmp r6, #0
	beq _0808D6F0
	ldr r0, [r5, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D6FA
	.align 2, 0
_0808D6E0: .4byte gUnknown_03005A47
_0808D6E4: .4byte sub_803FE44
_0808D6E8: .4byte gUnknown_03005A20
_0808D6EC: .4byte gUnknown_03005AB0
_0808D6F0:
	ldr r0, [r4, #0x10]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r4, #0x10]
_0808D6FA:
	cmp r6, #0
	beq _0808D708
	ldr r0, [r5, #0x10]
	movs r3, #2
	orrs r0, r3
	str r0, [r5, #0x10]
	b _0808D710
_0808D708:
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
_0808D710:
	cmp r6, #0
	beq _0808D724
	ldr r2, _0808D720 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _0808D72E
	b _0808D74C
	.align 2, 0
_0808D720: .4byte gUnknown_03005B09
_0808D724:
	ldr r3, _0808D738 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	beq _0808D74C
_0808D72E:
	cmp r6, #0
	beq _0808D740
	movs r0, #5
	ldr r1, _0808D73C @ =gUnknown_03005AF0
	b _0808D760
	.align 2, 0
_0808D738: .4byte gUnknown_03005A79
_0808D73C: .4byte gUnknown_03005AF0
_0808D740:
	movs r0, #5
	ldr r2, _0808D748 @ =gUnknown_03005A60
	strb r0, [r2]
	b _0808D762
	.align 2, 0
_0808D748: .4byte gUnknown_03005A60
_0808D74C:
	cmp r6, #0
	beq _0808D75C
	movs r0, #0x55
	ldr r3, _0808D758 @ =gUnknown_03005AF0
	strb r0, [r3]
	b _0808D762
	.align 2, 0
_0808D758: .4byte gUnknown_03005AF0
_0808D75C:
	movs r0, #0x55
	ldr r1, _0808D76C @ =gUnknown_03005A60
_0808D760:
	strb r0, [r1]
_0808D762:
	cmp r6, #0
	beq _0808D770
	movs r0, #0
	str r0, [r5, #0x28]
	b _0808D772
	.align 2, 0
_0808D76C: .4byte gUnknown_03005A60
_0808D770:
	str r6, [r4, #0x28]
_0808D772:
	movs r1, #1
	lsls r1, r6
	mov r2, r8
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	lsls r1, r7, #8
	cmp r6, #0
	beq _0808D78C
	ldr r0, [r5]
	subs r0, r0, r1
	str r0, [r5]
	b _0808D792
_0808D78C:
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
_0808D792:
	cmp r6, #0
	beq _0808D79C
_0808D796:
	movs r0, #0
	strh r0, [r5, #8]
	b _0808D79E
_0808D79C:
	strh r6, [r4, #8]
_0808D79E:
	cmp r6, #0
	beq _0808D7A6
	ldr r0, [r5, #0x10]
	b _0808D7A8
_0808D7A6:
	ldr r0, [r4, #0x10]
_0808D7A8:
	ldr r1, _0808D7C0 @ =0x00000404
	ands r0, r1
	cmp r0, #0
	bne _0808D7D6
	ldr r0, _0808D7C4 @ =gCamera
	movs r3, #2
	ldrsh r1, [r0, r3]
	cmp r6, #0
	beq _0808D7C8
	ldr r0, [r5, #4]
	b _0808D7CA
	.align 2, 0
_0808D7C0: .4byte 0x00000404
_0808D7C4: .4byte gCamera
_0808D7C8:
	ldr r0, [r4, #4]
_0808D7CA:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x2e
	ldr r7, [sp, #0xc]
	strh r0, [r7, #0x18]
	b _0808D984
_0808D7D6:
	ldr r0, _0808D7E4 @ =gCamera
	movs r2, #2
	ldrsh r1, [r0, r2]
	cmp r6, #0
	beq _0808D7E8
	ldr r0, [r5, #4]
	b _0808D7EA
	.align 2, 0
_0808D7E4: .4byte gCamera
_0808D7E8:
	ldr r0, [r4, #4]
_0808D7EA:
	asrs r0, r0, #8
	subs r0, r0, r1
	adds r0, #0x2a
	ldr r3, [sp, #0xc]
	strh r0, [r3, #0x18]
	b _0808D984
_0808D7F6:
	ldr r0, _0808D814 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0808D7FE
	ldr r0, _0808D818 @ =gUnknown_03005AB0
_0808D7FE:
	bl sub_8046CEC
	cmp r6, #0
	beq _0808D81C
	ldr r0, [r5, #0x10]
	movs r7, #9
	rsbs r7, r7, #0
	ands r0, r7
	str r0, [r5, #0x10]
	b _0808D826
	.align 2, 0
_0808D814: .4byte gUnknown_03005A20
_0808D818: .4byte gUnknown_03005AB0
_0808D81C:
	ldr r0, [r4, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D826:
	cmp r6, #0
	beq _0808D834
	ldr r0, [r5, #0x10]
	movs r2, #2
	orrs r0, r2
	str r0, [r5, #0x10]
	b _0808D83C
_0808D834:
	ldr r0, [r4, #0x10]
	movs r3, #2
	orrs r0, r3
	str r0, [r4, #0x10]
_0808D83C:
	movs r1, #1
	lsls r1, r6
	mov r7, r8
	ldrb r0, [r7]
	bics r0, r1
	strb r0, [r7]
	b _0808D984
_0808D84A:
	ldr r0, [sp, #0x24]
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r2, [sp, #0x1c]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldr r3, [sp, #0x28]
	ldr r1, [r3]
	asrs r1, r1, #8
	ldr r2, [sp, #0x20]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808D894 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0808D872
	ldr r3, _0808D898 @ =gUnknown_03005AB0
_0808D872:
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	bl sub_800B2BC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0808D884
	b _0808D984
_0808D884:
	cmp r6, #0
	beq _0808D89C
	ldr r0, [r5, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r5, #4]
	b _0808D8A6
	.align 2, 0
_0808D894: .4byte gUnknown_03005A20
_0808D898: .4byte gUnknown_03005AB0
_0808D89C:
	ldr r0, [r4, #4]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	str r0, [r4, #4]
_0808D8A6:
	movs r0, #1
	lsls r0, r6
	mov r2, r8
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0808D8CC @ =gUnknown_03005A20
	cmp r6, #0
	beq _0808D8BA
	ldr r0, _0808D8D0 @ =gUnknown_03005AB0
_0808D8BA:
	bl sub_8046CEC
	cmp r6, #0
	beq _0808D8D4
	ldr r0, [r5, #0x10]
	movs r1, #8
	orrs r0, r1
	str r0, [r5, #0x10]
	b _0808D8DC
	.align 2, 0
_0808D8CC: .4byte gUnknown_03005A20
_0808D8D0: .4byte gUnknown_03005AB0
_0808D8D4:
	ldr r0, [r4, #0x10]
	movs r1, #8
	orrs r0, r1
	str r0, [r4, #0x10]
_0808D8DC:
	cmp r6, #0
	beq _0808D8EC
	ldr r0, [r5, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D8F6
_0808D8EC:
	ldr r0, [r4, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D8F6:
	cmp r6, #0
	beq _0808D908
	ldr r0, [r5, #0x10]
	ldr r1, _0808D904 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D910
	.align 2, 0
_0808D904: .4byte 0xFFFFFEFF
_0808D908:
	ldr r0, [r4, #0x10]
	ldr r1, _0808D920 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
_0808D910:
	cmp r6, #0
	beq _0808D924
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D92E
	.align 2, 0
_0808D920: .4byte 0xFFFFFEFF
_0808D924:
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D92E:
	cmp r6, #0
	beq _0808D93E
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808D948
_0808D93E:
	ldr r0, [r4, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_0808D948:
	cmp r6, #0
	beq _0808D958
	movs r0, #4
	ldr r3, _0808D954 @ =gUnknown_03005AF0
	strb r0, [r3]
	b _0808D95E
	.align 2, 0
_0808D954: .4byte gUnknown_03005AF0
_0808D958:
	movs r0, #4
	ldr r7, _0808D9D0 @ =gUnknown_03005A60
	strb r0, [r7]
_0808D95E:
	ldr r0, _0808D9D4 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0808D966
	ldr r0, _0808D9D8 @ =gUnknown_03005AB0
_0808D966:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _0808D9D4 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0808D974
	ldr r1, _0808D9D8 @ =gUnknown_03005AB0
_0808D974:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0808D9D4 @ =gUnknown_03005A20
	cmp r6, #0
	beq _0808D980
	ldr r1, _0808D9D8 @ =gUnknown_03005AB0
_0808D980:
	movs r0, #0xe
	strb r0, [r1, #0xf]
_0808D984:
	adds r6, #1
	ldr r0, _0808D9DC @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _0808D994
	b _0808D320
_0808D994:
	mov r0, sb
	ldr r1, [r0]
	lsls r1, r1, #1
	ldr r2, [sp, #0x24]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	asrs r0, r0, #8
	ldr r3, [sp, #0x1c]
	asrs r1, r3, #0x10
	adds r1, r1, r0
	ldr r0, _0808D9E0 @ =gCamera
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r4, [sp, #0xc]
	strh r1, [r4, #0x16]
	ldr r0, [sp, #0xc]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #0xc]
	bl DisplaySprite
_0808D9C0:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D9D0: .4byte gUnknown_03005A60
_0808D9D4: .4byte gUnknown_03005A20
_0808D9D8: .4byte gUnknown_03005AB0
_0808D9DC: .4byte gUnknown_03005088
_0808D9E0: .4byte gCamera

	thumb_func_start sub_808D9E4
sub_808D9E4: @ 0x0808D9E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0808DA44 @ =sub_808DB9C
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808DA48 @ =sub_808DE34
	str r1, [sp]
	movs r1, #0xf4
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r0, #0xc0
	adds r5, r6, r0
	adds r0, #0x30
	adds r1, r6, r0
	movs r0, #0
	mov r8, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0808DA4C @ =0x030000F2
	adds r1, r6, r0
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r0, _0808DA50 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #3
	bne _0808DA58
	movs r0, #1
	bl VramMalloc
	str r0, [r4, #4]
	ldr r0, _0808DA54 @ =0x0000022A
	b _0808DA62
	.align 2, 0
_0808DA44: .4byte sub_808DB9C
_0808DA48: .4byte sub_808DE34
_0808DA4C: .4byte 0x030000F2
_0808DA50: .4byte gCurrentLevel
_0808DA54: .4byte 0x0000022A
_0808DA58:
	movs r0, #1
	bl VramMalloc
	str r0, [r4, #4]
	ldr r0, _0808DAF4 @ =0x00000225
_0808DA62:
	strh r0, [r4, #0xa]
	ldr r1, _0808DAF8 @ =0x03000020
	adds r0, r6, r1
	mov r1, r8
	strb r1, [r0]
	movs r6, #0
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r1, [r4, #8]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x1c]
	adds r2, r4, #0
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	adds r2, #1
	movs r0, #0x10
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x25
	strb r6, [r0]
	movs r0, #0x6c
	str r0, [r4, #0x10]
	strh r1, [r5]
	movs r0, #0xc0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	mov r0, sb
	strh r0, [r5, #6]
	strh r7, [r5, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r1, _0808DAFC @ =0x040000D4
	str r4, [r1]
	adds r4, #0x30
	str r4, [r1, #4]
	ldr r0, _0808DB00 @ =0x80000018
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r5, [r1]
	adds r5, #0xc
	str r5, [r1, #4]
	ldr r2, _0808DB04 @ =0x80000006
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x6d
	str r0, [r4, #0x10]
	lsls r3, r7, #0x10
	asrs r0, r3, #0x10
	subs r0, #0x10
	strh r0, [r5, #8]
	adds r4, #0x30
	str r5, [r1]
	adds r5, #0xc
	str r5, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0808DB08 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	mov r8, r3
	cmp r0, #3
	bne _0808DB10
	movs r0, #0x40
	bl VramMalloc
	str r0, [r4, #4]
	ldr r0, _0808DB0C @ =0x00000229
	b _0808DB1C
	.align 2, 0
_0808DAF4: .4byte 0x00000225
_0808DAF8: .4byte 0x03000020
_0808DAFC: .4byte 0x040000D4
_0808DB00: .4byte 0x80000018
_0808DB04: .4byte 0x80000006
_0808DB08: .4byte gCurrentLevel
_0808DB0C: .4byte 0x00000229
_0808DB10:
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x89
	lsls r0, r0, #2
_0808DB1C:
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x20
	strb r6, [r0]
	movs r2, #0
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	strh r1, [r4, #8]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #0x6e
	str r0, [r4, #0x10]
	strh r7, [r5, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _0808DB90 @ =0x040000D4
	str r4, [r0]
	adds r4, #0x30
	str r4, [r0, #4]
	ldr r1, _0808DB94 @ =0x80000018
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r5, [r0]
	adds r5, #0xc
	str r5, [r0, #4]
	ldr r1, _0808DB98 @ =0x80000006
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0x6f
	str r0, [r4, #0x10]
	mov r1, r8
	asrs r0, r1, #0x10
	subs r0, #0x10
	strh r0, [r5, #8]
	movs r0, #0x8f
	bl m4aSongNumStart
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DB90: .4byte 0x040000D4
_0808DB94: .4byte 0x80000018
_0808DB98: .4byte 0x80000006

	thumb_func_start sub_808DB9C
sub_808DB9C: @ 0x0808DB9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0808DBD4 @ =gCurTask
	ldr r2, [r0]
	ldrh r4, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	adds r0, #0xf0
	adds r0, r4, r0
	str r0, [sp]
	ldrh r0, [r0]
	adds r1, r0, #1
	ldr r5, [sp]
	strh r1, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0808DBD8
	adds r0, r2, #0
	bl TaskDestroy
	b _0808DDDC
	.align 2, 0
_0808DBD4: .4byte gCurTask
_0808DBD8:
	ldr r0, _0808DDEC @ =0x030000F2
	adds r0, r4, r0
	str r0, [sp, #4]
	ldrh r0, [r0]
	adds r0, #0x28
	ldr r1, [sp, #4]
	strh r0, [r1]
	ldr r2, _0808DDF0 @ =0x030000C0
	adds r7, r4, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r5, [r7, #8]
	adds r0, r0, r5
	strh r0, [r7, #8]
	ldrh r6, [r7, #6]
	ldrh r1, [r7, #8]
	mov r8, r1
	ldr r2, _0808DDF4 @ =gCamera
	mov sl, r2
	ldrh r2, [r2]
	subs r2, r6, r2
	strh r2, [r7, #6]
	mov r5, sl
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r7, #8]
	ldr r1, [sp]
	ldrh r0, [r1]
	lsls r0, r0, #1
	subs r2, r2, r0
	strh r2, [r7, #6]
	ldrh r0, [r7, #2]
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _0808DC2A
	adds r5, r1, #0
_0808DC2A:
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	ldrh r0, [r7]
	subs r0, #0x2a
	ldr r2, _0808DDF8 @ =0x000003FF
	ands r0, r2
	strh r0, [r7]
	ldr r0, [r3, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r2, _0808DDFC @ =gUnknown_0300504C
	mov sb, r2
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r3, #0x10]
	orrs r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r1, r7, #0
	str r3, [sp, #8]
	bl sub_8003D84
	ldr r3, [sp, #8]
	adds r0, r3, #0
	bl DisplaySprite
	strh r6, [r7, #6]
	mov r0, r8
	strh r0, [r7, #8]
	ldr r1, _0808DE00 @ =0x03000030
	adds r3, r4, r1
	ldr r2, _0808DE04 @ =0x030000CC
	adds r7, r4, r2
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r7, #8]
	adds r0, r0, r2
	strh r0, [r7, #8]
	ldrh r6, [r7, #6]
	ldrh r1, [r7, #8]
	mov r8, r1
	mov r1, sl
	ldrh r2, [r1]
	subs r2, r6, r2
	str r2, [sp, #0xc]
	strh r2, [r7, #6]
	ldrh r1, [r1, #2]
	mov ip, r1
	mov r2, ip
	subs r0, r0, r2
	strh r0, [r7, #8]
	ldr r1, [sp]
	ldrh r0, [r1]
	ldr r1, [sp, #0xc]
	adds r2, r1, r0
	strh r2, [r7, #6]
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	ldrh r0, [r7]
	adds r0, #0x2a
	ldr r2, _0808DDF8 @ =0x000003FF
	ands r0, r2
	strh r0, [r7]
	ldr r0, [r3, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r3, #0x10]
	orrs r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r1, r7, #0
	str r3, [sp, #8]
	bl sub_8003D84
	ldr r3, [sp, #8]
	adds r0, r3, #0
	bl DisplaySprite
	strh r6, [r7, #6]
	mov r0, r8
	strh r0, [r7, #8]
	ldr r1, _0808DE08 @ =0x03000060
	adds r3, r4, r1
	ldr r2, _0808DE0C @ =0x030000D8
	adds r7, r4, r2
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r7, #8]
	adds r0, r0, r2
	strh r0, [r7, #8]
	ldrh r6, [r7, #6]
	ldrh r1, [r7, #8]
	mov r8, r1
	mov r1, sl
	ldrh r2, [r1]
	subs r2, r6, r2
	str r2, [sp, #0xc]
	strh r2, [r7, #6]
	ldrh r1, [r1, #2]
	mov ip, r1
	mov r2, ip
	subs r0, r0, r2
	strh r0, [r7, #8]
	ldr r1, [sp]
	ldrh r0, [r1]
	lsls r0, r0, #1
	ldr r1, [sp, #0xc]
	adds r2, r1, r0
	strh r2, [r7, #6]
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	ldrh r0, [r7]
	adds r0, #0xe
	ldr r2, _0808DDF8 @ =0x000003FF
	ands r0, r2
	strh r0, [r7]
	ldr r0, [r3, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r3, #0x10]
	orrs r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r1, r7, #0
	str r3, [sp, #8]
	bl sub_8003D84
	ldr r3, [sp, #8]
	adds r0, r3, #0
	bl DisplaySprite
	strh r6, [r7, #6]
	mov r0, r8
	strh r0, [r7, #8]
	ldr r1, _0808DE10 @ =0x03000090
	adds r3, r4, r1
	ldr r2, _0808DE14 @ =0x030000E4
	adds r7, r4, r2
	ldr r4, [sp, #4]
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r7, #8]
	adds r0, r0, r1
	strh r0, [r7, #8]
	ldrh r6, [r7, #6]
	ldrh r2, [r7, #8]
	mov r8, r2
	mov r4, sl
	ldrh r2, [r4]
	subs r2, r6, r2
	strh r2, [r7, #6]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r7, #8]
	ldr r1, [sp]
	ldrh r0, [r1]
	subs r2, r2, r0
	strh r2, [r7, #6]
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	ldrh r0, [r7]
	subs r0, #0xe
	ldr r2, _0808DDF8 @ =0x000003FF
	ands r0, r2
	strh r0, [r7]
	ldr r0, [r3, #0x10]
	movs r4, #0x20
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [r3, #0x10]
	mov r5, sb
	ldrb r1, [r5]
	adds r0, r1, #1
	strb r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r3, #0x10]
	orrs r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r1, r7, #0
	str r3, [sp, #8]
	bl sub_8003D84
	ldr r3, [sp, #8]
	adds r0, r3, #0
	bl DisplaySprite
	strh r6, [r7, #6]
	mov r0, r8
	strh r0, [r7, #8]
_0808DDDC:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DDEC: .4byte 0x030000F2
_0808DDF0: .4byte 0x030000C0
_0808DDF4: .4byte gCamera
_0808DDF8: .4byte 0x000003FF
_0808DDFC: .4byte gUnknown_0300504C
_0808DE00: .4byte 0x03000030
_0808DE04: .4byte 0x030000CC
_0808DE08: .4byte 0x03000060
_0808DE0C: .4byte 0x030000D8
_0808DE10: .4byte 0x03000090
_0808DE14: .4byte 0x030000E4

	thumb_func_start sub_808DE18
sub_808DE18: @ 0x0808DE18
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	movs r0, #0xc6
	bl m4aSongNumStop
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808DE34
sub_808DE34: @ 0x0808DE34
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x64]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable085
CreateEntity_Interactable085: @ 0x0808DE50
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0808DEC8 @ =sub_808DFE0
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808DECC @ =sub_808E768
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r3, r0
	adds r0, #0xc
	adds r7, r3, r0
	movs r1, #0
	movs r6, #0
	mov r0, r8
	strh r0, [r2, #4]
	mov r0, sb
	strh r0, [r2, #6]
	str r5, [r2]
	ldrb r0, [r5]
	strb r0, [r2, #8]
	strb r4, [r2, #9]
	str r6, [r2, #0x40]
	str r6, [r2, #0x44]
	ldr r4, _0808DED0 @ =0x03000050
	adds r0, r3, r4
	strb r1, [r0]
	str r6, [r2, #0x4c]
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #6]
	cmp r0, r1
	bls _0808DEF0
	movs r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _0808DED4
	subs r4, #8
	adds r0, r3, r4
	movs r1, #4
	strh r1, [r0]
	strh r6, [r2, #0x3c]
	b _0808DEE0
	.align 2, 0
_0808DEC8: .4byte sub_808DFE0
_0808DECC: .4byte sub_808E768
_0808DED0: .4byte 0x03000050
_0808DED4:
	ldr r4, _0808DEE8 @ =0x03000048
	adds r1, r3, r4
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r2, #0x3c]
_0808DEE0:
	ldr r1, _0808DEEC @ =0x0300004A
	adds r0, r3, r1
	strh r6, [r0]
	b _0808DF26
	.align 2, 0
_0808DEE8: .4byte 0x03000048
_0808DEEC: .4byte 0x0300004A
_0808DEF0:
	movs r0, #4
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _0808DF14
	ldr r4, _0808DF0C @ =0x03000048
	adds r0, r3, r4
	strh r6, [r0]
	ldr r0, _0808DF10 @ =0x0300004A
	adds r1, r3, r0
	movs r0, #4
	strh r0, [r1]
	strh r6, [r2, #0x3c]
	b _0808DF26
	.align 2, 0
_0808DF0C: .4byte 0x03000048
_0808DF10: .4byte 0x0300004A
_0808DF14:
	ldr r1, _0808DFD0 @ =0x03000048
	adds r0, r3, r1
	strh r6, [r0]
	ldr r4, _0808DFD4 @ =0x0300004A
	adds r1, r3, r4
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r2, #0x3c]
_0808DF26:
	ldrb r0, [r5]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r4, #0
	mov r8, r4
	movs r6, #0
	strh r0, [r7, #0x16]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r7, #0x18]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	strb r0, [r5]
	ldr r4, _0808DFD8 @ =gUnknown_086CEDC0
	ldr r5, _0808DFDC @ =gCurrentLevel
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r4, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	bl VramMalloc
	str r0, [r7, #4]
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, #2
	adds r0, r0, r4
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	strh r6, [r7, #8]
	strh r6, [r7, #0x14]
	strh r6, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x25
	mov r1, r8
	strb r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DFD0: .4byte 0x03000048
_0808DFD4: .4byte 0x0300004A
_0808DFD8: .4byte gUnknown_086CEDC0
_0808DFDC: .4byte gCurrentLevel

	thumb_func_start sub_808DFE0
sub_808DFE0: @ 0x0808DFE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r0, _0808E04C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov r8, r0
	ldr r1, _0808E050 @ =0x0300000C
	adds r1, r2, r1
	str r1, [sp, #8]
	ldr r3, [r0]
	str r3, [sp, #0x14]
	ldrb r0, [r0, #8]
	lsls r0, r0, #3
	mov r5, r8
	ldrh r1, [r5, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	movs r5, #0
	ldr r7, _0808E054 @ =gUnknown_03005AB0
	ldr r6, _0808E058 @ =gUnknown_03005A20
	lsrs r0, r1, #0x10
	str r0, [sp, #0x10]
	asrs r1, r1, #0x10
	str r1, [sp, #0x1c]
	ldr r1, _0808E05C @ =0x03000050
	adds r1, r1, r2
	mov sb, r1
_0808E03A:
	cmp r5, #0
	beq _0808E060
	ldr r0, [r7, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0808E06E
	ldr r3, _0808E058 @ =gUnknown_03005A20
	b _0808E1FA
	.align 2, 0
_0808E04C: .4byte gCurTask
_0808E050: .4byte 0x0300000C
_0808E054: .4byte gUnknown_03005AB0
_0808E058: .4byte gUnknown_03005A20
_0808E05C: .4byte 0x03000050
_0808E060:
	ldr r1, [r6, #0x10]
	movs r0, #8
	ands r1, r0
	ldr r3, _0808E080 @ =gUnknown_03005A20
	cmp r1, #0
	bne _0808E06E
	b _0808E1FA
_0808E06E:
	cmp r5, #0
	beq _0808E084
	ldr r0, [r7, #0x28]
	ldr r2, [sp, #8]
	cmp r0, r2
	beq _0808E090
	ldr r3, _0808E080 @ =gUnknown_03005A20
	b _0808E1FA
	.align 2, 0
_0808E080: .4byte gUnknown_03005A20
_0808E084:
	ldr r0, [r6, #0x28]
	ldr r3, _0808E0B4 @ =gUnknown_03005A20
	ldr r1, [sp, #8]
	cmp r0, r1
	beq _0808E090
	b _0808E1FA
_0808E090:
	mov r2, r8
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	adds r3, r0, #0
	adds r3, #0x16
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldr r2, [sp, #0x10]
	lsls r2, r2, #0x10
	str r2, [sp, #0x24]
	str r0, [sp, #0x20]
	cmp r5, #0
	beq _0808E0BC
	ldr r0, _0808E0B8 @ =gUnknown_03005AD7
	b _0808E0BE
	.align 2, 0
_0808E0B4: .4byte gUnknown_03005A20
_0808E0B8: .4byte gUnknown_03005AD7
_0808E0BC:
	ldr r0, _0808E11C @ =gUnknown_03005A47
_0808E0BE:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0808E120 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_8040198
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	mov r2, r8
	ldr r1, [r2, #0x40]
	asrs r1, r1, #8
	ldr r3, [sp, #0x20]
	asrs r0, r3, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r1, [r2, #0x44]
	asrs r1, r1, #8
	ldr r2, [sp, #0x24]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	subs r0, #4
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0808E124 @ =gUnknown_03005A20
	cmp r5, #0
	beq _0808E0FE
	ldr r3, _0808E128 @ =gUnknown_03005AB0
_0808E0FE:
	ldr r0, [sp, #8]
	adds r1, r4, #0
	bl sub_800CE34
	cmp r0, #0
	bne _0808E150
	cmp r5, #0
	beq _0808E12C
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808E136
	.align 2, 0
_0808E11C: .4byte gUnknown_03005A47
_0808E120: .4byte sub_803FF84
_0808E124: .4byte gUnknown_03005A20
_0808E128: .4byte gUnknown_03005AB0
_0808E12C:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
_0808E136:
	cmp r5, #0
	beq _0808E140
	movs r0, #0
	str r0, [r7, #0x28]
	b _0808E142
_0808E140:
	str r5, [r6, #0x28]
_0808E142:
	movs r1, #1
	lsls r1, r5
	mov r3, sb
	ldrb r0, [r3]
	bics r0, r1
	strb r0, [r3]
	b _0808E280
_0808E150:
	movs r0, #1
	lsls r0, r5
	mov r2, sb
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	mov r3, sl
	lsls r0, r3, #0x18
	mov r4, r8
	adds r4, #0x50
	cmp r0, #0
	blt _0808E17A
	cmp r5, #0
	beq _0808E174
	ldr r0, [r7, #4]
	adds r0, #0xc0
	str r0, [r7, #4]
	b _0808E17A
_0808E174:
	ldr r0, [r6, #4]
	adds r0, #0xc0
	str r0, [r6, #4]
_0808E17A:
	cmp r5, #0
	beq _0808E182
	ldr r0, [r7, #4]
	b _0808E184
_0808E182:
	ldr r0, [r6, #4]
_0808E184:
	asrs r0, r0, #8
	adds r3, r0, #0
	adds r3, #0x10
	cmp r5, #0
	beq _0808E192
	ldr r0, [r7]
	b _0808E194
_0808E192:
	ldr r0, [r6]
_0808E194:
	asrs r1, r0, #8
	cmp r5, #0
	beq _0808E1A4
	ldr r0, _0808E1A0 @ =gUnknown_03005AD7
	b _0808E1A6
	.align 2, 0
_0808E1A0: .4byte gUnknown_03005AD7
_0808E1A4:
	ldr r0, _0808E1D0 @ =gUnknown_03005A47
_0808E1A6:
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _0808E1D4 @ =sub_803FF84
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_8040198
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0808E284
	lsls r1, r0, #8
	cmp r5, #0
	beq _0808E1D8
	ldr r0, [r7, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
	b _0808E1DE
	.align 2, 0
_0808E1D0: .4byte gUnknown_03005A47
_0808E1D4: .4byte sub_803FF84
_0808E1D8:
	ldr r0, [r6, #4]
	adds r0, r0, r1
	str r0, [r6, #4]
_0808E1DE:
	cmp r5, #0
	beq _0808E1EE
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808E284
_0808E1EE:
	ldr r0, [r6, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	b _0808E284
_0808E1FA:
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0x10
	asrs r4, r1, #0x10
	mov r2, r8
	ldr r0, [r2, #0x44]
	asrs r0, r0, #8
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	str r0, [sp, #0x24]
	str r1, [sp, #0x20]
	cmp r5, #0
	beq _0808E21C
	ldr r3, _0808E234 @ =gUnknown_03005AB0
_0808E21C:
	ldr r0, [sp, #8]
	adds r1, r4, #0
	bl sub_800B2BC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _0808E274
	cmp r5, #0
	beq _0808E238
	ldr r0, [r7, #0x10]
	b _0808E23A
	.align 2, 0
_0808E234: .4byte gUnknown_03005AB0
_0808E238:
	ldr r0, [r6, #0x10]
_0808E23A:
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0808E260
	cmp r5, #0
	beq _0808E258
	ldr r0, [r7, #4]
	ldr r1, _0808E254 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7, #4]
	b _0808E260
	.align 2, 0
_0808E254: .4byte 0xFFFFFE00
_0808E258:
	ldr r0, [r6, #4]
	ldr r2, _0808E270 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r6, #4]
_0808E260:
	movs r0, #1
	lsls r0, r5
	mov r3, sb
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
	b _0808E280
	.align 2, 0
_0808E270: .4byte 0xFFFFFE00
_0808E274:
	movs r1, #1
	lsls r1, r5
	mov r2, sb
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0808E280:
	mov r4, r8
	adds r4, #0x50
_0808E284:
	cmp r5, #0
	bne _0808E28E
	ldr r3, _0808E2D8 @ =gUnknown_03005A47
	ldrb r3, [r3]
	str r3, [sp, #0x18]
_0808E28E:
	adds r5, #1
	ldr r0, _0808E2DC @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bge _0808E29E
	b _0808E03A
_0808E29E:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0808E2E4
	ldr r5, [sp, #0x24]
	asrs r0, r5, #0x10
	mov r2, r8
	ldr r1, [r2, #0x44]
	asrs r1, r1, #8
	adds r0, r0, r1
	adds r0, #0x16
	ldr r3, [sp, #0x20]
	asrs r1, r3, #0x10
	movs r2, #0
	str r2, [sp]
	ldr r2, _0808E2E0 @ =sub_803FF84
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	movs r3, #8
	bl sub_8040198
	lsls r0, r0, #0x18
	cmp r0, #0
	blt _0808E2F0
	mov r5, r8
	ldr r0, [r5, #0x44]
	adds r0, #0xc0
	str r0, [r5, #0x44]
	b _0808E2F0
	.align 2, 0
_0808E2D8: .4byte gUnknown_03005A47
_0808E2DC: .4byte gUnknown_03005088
_0808E2E0: .4byte sub_803FF84
_0808E2E4:
	mov r1, r8
	ldr r0, [r1, #0x44]
	cmp r0, #0
	beq _0808E2F0
	subs r0, #0xc0
	str r0, [r1, #0x44]
_0808E2F0:
	ldr r4, _0808E378 @ =gCamera
	ldrh r0, [r4]
	ldr r3, [sp, #0x20]
	asrs r2, r3, #0x10
	subs r0, r2, r0
	ldr r5, [sp, #8]
	strh r0, [r5, #0x16]
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x24]
	asrs r3, r0, #0x10
	subs r1, r3, r1
	mov r5, r8
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp, #8]
	strh r1, [r0, #0x18]
	movs r5, #0
	ldrsh r1, [r4, r5]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	cmp r2, r0
	bgt _0808E33E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0808E33E
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r3, r0
	bgt _0808E33E
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	bge _0808E380
_0808E33E:
	ldr r3, [sp, #8]
	ldrh r0, [r3, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808E364
	movs r5, #0x18
	ldrsh r0, [r3, r5]
	adds r0, #0x80
	cmp r0, #0
	blt _0808E364
	movs r0, #0x18
	ldrsh r1, [r3, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808E380
_0808E364:
	mov r1, r8
	ldrb r0, [r1, #8]
	ldr r2, [sp, #0x14]
	strb r0, [r2]
	ldr r0, _0808E37C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808E386
	.align 2, 0
_0808E378: .4byte gCamera
_0808E37C: .4byte gCurTask
_0808E380:
	ldr r0, [sp, #8]
	bl DisplaySprite
_0808E386:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable089
CreateEntity_Interactable089: @ 0x0808E398
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
	ldr r0, _0808E410 @ =sub_808E4F4
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808E414 @ =sub_808E768
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r3, r0
	adds r0, #0xc
	adds r6, r3, r0
	movs r5, #0
	mov r1, r8
	strh r1, [r2, #4]
	mov r0, sb
	strh r0, [r2, #6]
	str r7, [r2]
	ldrb r0, [r7]
	strb r0, [r2, #8]
	strb r4, [r2, #9]
	str r5, [r2, #0x40]
	str r5, [r2, #0x44]
	str r5, [r2, #0x4c]
	ldrb r0, [r7, #5]
	ldrb r1, [r7, #6]
	cmp r0, r1
	bls _0808E43C
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _0808E420
	ldr r1, _0808E418 @ =0x03000048
	adds r0, r3, r1
	movs r1, #4
	strh r1, [r0]
	strh r5, [r2, #0x3c]
	ldr r2, _0808E41C @ =0x0300004A
	adds r0, r3, r2
	strh r5, [r0]
	b _0808E472
	.align 2, 0
_0808E410: .4byte sub_808E4F4
_0808E414: .4byte sub_808E768
_0808E418: .4byte 0x03000048
_0808E41C: .4byte 0x0300004A
_0808E420:
	ldr r0, _0808E434 @ =0x03000048
	adds r1, r3, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r2, #0x3c]
	ldr r1, _0808E438 @ =0x0300004A
	adds r0, r3, r1
	strh r5, [r0]
	b _0808E472
	.align 2, 0
_0808E434: .4byte 0x03000048
_0808E438: .4byte 0x0300004A
_0808E43C:
	movs r0, #4
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _0808E460
	ldr r1, _0808E458 @ =0x03000048
	adds r0, r3, r1
	strh r5, [r0]
	ldr r0, _0808E45C @ =0x0300004A
	adds r1, r3, r0
	movs r0, #4
	strh r0, [r1]
	strh r5, [r2, #0x3c]
	b _0808E472
	.align 2, 0
_0808E458: .4byte 0x03000048
_0808E45C: .4byte 0x0300004A
_0808E460:
	ldr r1, _0808E4E8 @ =0x03000048
	adds r0, r3, r1
	strh r5, [r0]
	ldr r0, _0808E4EC @ =0x0300004A
	adds r1, r3, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r2, #0x3c]
_0808E472:
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r5, #0
	movs r4, #0
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
	movs r0, #0x12
	bl VramMalloc
	str r0, [r6, #4]
	ldr r0, _0808E4F0 @ =0x0000020B
	strh r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	strb r5, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r4, [r6, #8]
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
	movs r0, #0x80
	lsls r0, r0, #6
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
_0808E4E8: .4byte 0x03000048
_0808E4EC: .4byte 0x0300004A
_0808E4F0: .4byte 0x0000020B

	thumb_func_start sub_808E4F4
sub_808E4F4: @ 0x0808E4F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r0, _0808E578 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _0808E57C @ =0x0300000C
	adds r2, r2, r1
	mov sb, r2
	ldr r3, [r5]
	str r3, [sp, #8]
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _0808E580 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r1, #0x10
	str r4, [sp]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r0, sb
	strh r1, [r0, #0x16]
	ldrh r1, [r3, #2]
	lsrs r3, r2, #0x10
	str r3, [sp, #4]
	asrs r2, r2, #0x10
	subs r1, r2, r1
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r1, r1, r0
	mov r4, sb
	strh r1, [r4, #0x18]
	movs r6, #0
	ldr r7, _0808E584 @ =gUnknown_03005AB0
	ldr r0, _0808E588 @ =gUnknown_03005A20
	mov r8, r0
	str r2, [sp, #0x14]
_0808E564:
	cmp r6, #0
	beq _0808E58C
	ldr r1, [r7, #0x10]
	movs r0, #8
	ands r1, r0
	ldr r2, _0808E588 @ =gUnknown_03005A20
	mov ip, r2
	cmp r1, #0
	bne _0808E59C
	b _0808E672
	.align 2, 0
_0808E578: .4byte gCurTask
_0808E57C: .4byte 0x0300000C
_0808E580: .4byte gCamera
_0808E584: .4byte gUnknown_03005AB0
_0808E588: .4byte gUnknown_03005A20
_0808E58C:
	mov r3, r8
	ldr r1, [r3, #0x10]
	movs r0, #8
	ands r1, r0
	ldr r4, _0808E5A8 @ =gUnknown_03005A20
	mov ip, r4
	cmp r1, #0
	beq _0808E672
_0808E59C:
	cmp r6, #0
	beq _0808E5AC
	ldr r0, [r7, #0x28]
	cmp r0, sb
	beq _0808E5B4
	b _0808E672
	.align 2, 0
_0808E5A8: .4byte gUnknown_03005A20
_0808E5AC:
	mov r1, ip
	ldr r0, [r1, #0x28]
	cmp r0, sb
	bne _0808E672
_0808E5B4:
	movs r2, #1
	str r2, [sp, #0xc]
	ldr r1, [r5, #0x40]
	asrs r1, r1, #8
	ldr r3, [sp]
	lsls r2, r3, #0x10
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	ldr r4, [sp, #0x14]
	subs r0, r4, r0
	subs r0, #4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	mov r4, ip
	mov sl, r2
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	str r0, [sp, #0x18]
	cmp r6, #0
	beq _0808E5E6
	ldr r4, _0808E604 @ =gUnknown_03005AB0
_0808E5E6:
	mov r0, sb
	adds r2, r3, #0
	adds r3, r4, #0
	bl sub_800CE34
	cmp r0, #0
	bne _0808E618
	cmp r6, #0
	beq _0808E608
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808E6A8
	.align 2, 0
_0808E604: .4byte gUnknown_03005AB0
_0808E608:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
	b _0808E6A8
_0808E618:
	cmp r6, #0
	beq _0808E624
	ldr r0, [r7, #4]
	subs r0, #0xc0
	str r0, [r7, #4]
	b _0808E62C
_0808E624:
	mov r3, r8
	ldr r0, [r3, #4]
	subs r0, #0xc0
	str r0, [r3, #4]
_0808E62C:
	ldr r1, [r5, #0x44]
	asrs r1, r1, #8
	ldr r4, [sp, #8]
	ldrb r0, [r4, #6]
	lsls r0, r0, #3
	cmp r1, r0
	ble _0808E6A8
	cmp r6, #0
	beq _0808E64A
	ldr r0, [r7, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _0808E658
_0808E64A:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x10]
_0808E658:
	cmp r6, #0
	beq _0808E666
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0808E6A8
_0808E666:
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x10]
	b _0808E6A8
_0808E672:
	ldr r4, [sp]
	lsls r1, r4, #0x10
	asrs r4, r1, #0x10
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	ldr r2, [sp, #0x14]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	mov r3, ip
	mov sl, r1
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	str r0, [sp, #0x18]
	cmp r6, #0
	beq _0808E694
	ldr r3, _0808E6C4 @ =gUnknown_03005AB0
_0808E694:
	mov r0, sb
	adds r1, r4, #0
	bl sub_800B2BC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _0808E6A8
	movs r1, #1
	str r1, [sp, #0x10]
_0808E6A8:
	adds r6, #1
	ldr r0, _0808E6C8 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _0808E6B8
	b _0808E564
_0808E6B8:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _0808E6CC
	ldr r0, [r5, #0x44]
	adds r0, #0xc0
	b _0808E6DA
	.align 2, 0
_0808E6C4: .4byte gUnknown_03005AB0
_0808E6C8: .4byte gUnknown_03005088
_0808E6CC:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _0808E6DC
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _0808E6DC
	subs r0, #0xc0
_0808E6DA:
	str r0, [r5, #0x44]
_0808E6DC:
	mov r4, sl
	asrs r1, r4, #0x10
	ldr r4, _0808E748 @ =gCamera
	movs r0, #0
	ldrsh r3, [r4, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r3, r2
	cmp r1, r0
	bgt _0808E712
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0808E712
	ldr r3, [sp, #0x18]
	asrs r2, r3, #0x10
	movs r0, #2
	ldrsh r1, [r4, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808E712
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808E750
_0808E712:
	mov r4, sb
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808E738
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808E738
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808E750
_0808E738:
	ldrb r0, [r5, #8]
	ldr r3, [sp, #8]
	strb r0, [r3]
	ldr r0, _0808E74C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808E756
	.align 2, 0
_0808E748: .4byte gCamera
_0808E74C: .4byte gCurTask
_0808E750:
	mov r0, sb
	bl DisplaySprite
_0808E756:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808E768
sub_808E768: @ 0x0808E768
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable086
CreateEntity_Interactable086: @ 0x0808E77C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sb
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, _0808E87C @ =sub_808E8A0
	ldr r1, _0808E880 @ =sub_808F0B4
	str r1, [sp]
	movs r1, #0x50
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r6, r2
	ldr r7, _0808E884 @ =0x0300000C
	adds r4, r6, r7
	movs r3, #0
	strh r5, [r2, #4]
	mov r0, r8
	strh r0, [r2, #6]
	mov r1, sl
	str r1, [r2]
	ldrb r0, [r1]
	strb r0, [r2, #8]
	mov r7, sb
	strb r7, [r2, #9]
	ldrb r1, [r1, #5]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #5
	str r0, [r2, #0x3c]
	str r3, [r2, #0x40]
	mov r0, sl
	ldrb r1, [r0, #3]
	ldr r7, _0808E888 @ =0x0300004E
	adds r0, r6, r7
	strb r1, [r0]
	str r3, [r2, #0x44]
	ldr r1, _0808E88C @ =0x0300004C
	adds r0, r6, r1
	strh r3, [r0]
	mov r7, sl
	ldrb r0, [r7]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r4, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r1, r8
	lsls r1, r1, #8
	mov r8, r1
	add r0, r8
	strh r0, [r4, #0x18]
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	mov r1, sl
	strb r0, [r1]
	movs r0, #0x10
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x1a]
	ldr r3, [sp, #4]
	strh r3, [r4, #8]
	ldr r0, _0808E890 @ =0x0000021E
	strh r0, [r4, #0xa]
	ldr r7, _0808E894 @ =0x0300002C
	adds r1, r6, r7
	movs r0, #1
	strb r0, [r1]
	strh r3, [r4, #0x14]
	strh r3, [r4, #0x1c]
	ldr r0, _0808E898 @ =0x0300002D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r7, #2
	adds r1, r6, r7
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0808E89C @ =0x03000031
	adds r6, r6, r0
	movs r1, #0
	strb r1, [r6]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x28]
	movs r7, #0x80
	lsls r7, r7, #6
	str r7, [r4, #0x10]
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
_0808E87C: .4byte sub_808E8A0
_0808E880: .4byte sub_808F0B4
_0808E884: .4byte 0x0300000C
_0808E888: .4byte 0x0300004E
_0808E88C: .4byte 0x0300004C
_0808E890: .4byte 0x0000021E
_0808E894: .4byte 0x0300002C
_0808E898: .4byte 0x0300002D
_0808E89C: .4byte 0x03000031

	thumb_func_start sub_808E8A0
sub_808E8A0: @ 0x0808E8A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0808E9C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov sl, r0
	ldr r0, _0808E9C4 @ =0x0300000C
	adds r7, r5, r0
	mov r1, sl
	ldr r1, [r1]
	str r1, [sp, #4]
	mov r2, sl
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #8]
	ldr r3, [sp, #4]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldr r0, _0808E9C8 @ =0x0300004E
	adds r5, r5, r0
	ldrb r0, [r5]
	lsls r0, r0, #7
	ldr r1, _0808E9CC @ =0x000003FF
	mov sb, r1
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r3, _0808E9D0 @ =gSineTable
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, _0808E9D4 @ =0x00001770
	mov r8, r2
	mov r1, r8
	bl Div
	adds r4, r0, #0
	mov r3, sl
	ldr r0, [r3, #0x40]
	movs r6, #0xc8
	lsls r6, r6, #4
	adds r1, r6, #0
	bl Div
	muls r4, r0, r4
	ldr r0, [sp, #8]
	adds r4, r0, r4
	ldrb r0, [r5]
	lsls r0, r0, #7
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #1
	ldr r2, _0808E9D0 @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, r8
	bl Div
	adds r5, r0, #0
	mov r1, sl
	ldr r0, [r1, #0x40]
	adds r1, r6, #0
	bl Div
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r2, [sp, #0xc]
	adds r1, r2, r1
	ldr r2, _0808E9D8 @ =gCamera
	ldrh r0, [r2]
	subs r4, r4, r0
	strh r4, [r7, #0x16]
	ldrh r0, [r2, #2]
	subs r1, r1, r0
	strh r1, [r7, #0x18]
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	ldr r3, [sp, #8]
	cmp r3, r0
	bgt _0808E988
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	blt _0808E988
	movs r0, #2
	ldrsh r1, [r2, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r3, [sp, #0xc]
	cmp r3, r0
	bgt _0808E988
	adds r0, r1, #0
	subs r0, #0x80
	cmp r3, r0
	bge _0808E9DC
_0808E988:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808E9AC
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808E9AC
	movs r2, #0x18
	ldrsh r1, [r7, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808E9DC
_0808E9AC:
	mov r3, sl
	ldrb r0, [r3, #8]
	ldr r1, [sp, #4]
	strb r0, [r1]
	ldr r0, _0808E9C0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808EA6C
	.align 2, 0
_0808E9C0: .4byte gCurTask
_0808E9C4: .4byte 0x0300000C
_0808E9C8: .4byte 0x0300004E
_0808E9CC: .4byte 0x000003FF
_0808E9D0: .4byte gSineTable
_0808E9D4: .4byte 0x00001770
_0808E9D8: .4byte gCamera
_0808E9DC:
	movs r4, #0
	ldr r6, _0808E9F8 @ =gUnknown_03005AB0
	ldr r5, _0808E9FC @ =gUnknown_03005A20
	movs r2, #8
	mov r8, r2
_0808E9E6:
	cmp r4, #0
	beq _0808EA00
	ldr r0, [r6, #0x10]
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	bne _0808EA0A
	b _0808EA34
	.align 2, 0
_0808E9F8: .4byte gUnknown_03005AB0
_0808E9FC: .4byte gUnknown_03005A20
_0808EA00:
	ldr r0, [r5, #0x10]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0808EA34
_0808EA0A:
	cmp r4, #0
	beq _0808EA16
	ldr r0, [r6, #0x28]
	cmp r0, r7
	beq _0808EA1C
	b _0808EA34
_0808EA16:
	ldr r0, [r5, #0x28]
	cmp r0, r7
	bne _0808EA34
_0808EA1C:
	cmp r4, #0
	beq _0808EA24
	str r6, [sp]
	b _0808EA26
_0808EA24:
	str r5, [sp]
_0808EA26:
	mov r0, sl
	adds r1, r7, #0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_808EC84
	b _0808EA4A
_0808EA34:
	cmp r4, #0
	beq _0808EA3C
	str r6, [sp]
	b _0808EA3E
_0808EA3C:
	str r5, [sp]
_0808EA3E:
	mov r0, sl
	adds r1, r7, #0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_808EA80
_0808EA4A:
	adds r4, #1
	ldr r0, _0808EA7C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0808E9E6
	mov r2, sl
	ldr r0, [r2, #0x44]
	cmp r0, #0
	beq _0808EA66
	adds r0, r7, #0
	bl UpdateSpriteAnimation
_0808EA66:
	adds r0, r7, #0
	bl DisplaySprite
_0808EA6C:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808EA7C: .4byte gUnknown_03005088

	thumb_func_start sub_808EA80
sub_808EA80: @ 0x0808EA80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov sb, r1
	str r2, [sp]
	str r3, [sp, #4]
	ldr r0, [sp, #0x28]
	mov sl, r0
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808EB8C
	bl sub_80549FC
	adds r4, r0, #0
	cmp r4, #0
	beq _0808EB34
	movs r1, #0x4e
	adds r1, r1, r7
	mov r8, r1
	ldrb r0, [r1]
	lsls r0, r0, #7
	ldr r2, _0808EB28 @ =0x000003FF
	ands r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r1, _0808EB2C @ =gSineTable
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r5, _0808EB30 @ =0x00001770
	adds r1, r5, #0
	bl Div
	adds r4, r0, #0
	ldr r0, [r7, #0x40]
	movs r6, #0xc8
	lsls r6, r6, #4
	adds r1, r6, #0
	bl Div
	muls r4, r0, r4
	ldr r3, [sp]
	adds r4, r3, r4
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #7
	ldr r2, _0808EB28 @ =0x000003FF
	ands r0, r2
	lsls r0, r0, #1
	ldr r3, _0808EB2C @ =gSineTable
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	bl Div
	adds r5, r0, #0
	ldr r0, [r7, #0x40]
	adds r1, r6, #0
	bl Div
	adds r2, r5, #0
	muls r2, r0, r2
	ldr r3, [sp, #4]
	adds r2, r3, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	adds r1, r4, #0
	mov r3, sl
	bl sub_80096B0
	b _0808EB8C
	.align 2, 0
_0808EB28: .4byte 0x000003FF
_0808EB2C: .4byte gSineTable
_0808EB30: .4byte 0x00001770
_0808EB34:
	ldr r0, _0808EBB4 @ =gCamera
	ldrh r1, [r0]
	mov r2, sb
	ldrh r2, [r2, #0x16]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0, #2]
	mov r3, sb
	ldrh r3, [r3, #0x18]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	mov r3, sl
	bl sub_80096B0
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0808EB8C
	mov r2, sl
	ldr r0, [r2, #0x10]
	orrs r0, r1
	str r0, [r2, #0x10]
	mov r3, sb
	str r3, [r2, #0x28]
	str r4, [r7, #0x48]
	adds r0, r7, #0
	adds r0, #0x4c
	strh r4, [r0]
	ldr r0, [r7, #0x44]
	strh r0, [r2, #0xc]
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	mov r1, sl
	ldr r0, [r1, #0x10]
	ldr r1, _0808EBB8 @ =0xFFBFFFFF
	ands r0, r1
	mov r2, sl
	str r0, [r2, #0x10]
_0808EB8C:
	mov r0, sl
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0808EC72
	ldr r0, [r7, #0x44]
	movs r1, #0x1c
	bl Div
	cmp r0, #0
	bge _0808EBBC
	ldr r0, [r7, #0x44]
	movs r1, #0x1c
	bl Div
	rsbs r0, r0, #0
	b _0808EBC4
	.align 2, 0
_0808EBB4: .4byte gCamera
_0808EBB8: .4byte 0xFFBFFFFF
_0808EBBC:
	ldr r0, [r7, #0x44]
	movs r1, #0x1c
	bl Div
_0808EBC4:
	mov r1, sb
	adds r1, #0x22
	movs r2, #0
	strb r0, [r1]
	ldr r0, [r7, #0x44]
	subs r0, #0xc
	str r0, [r7, #0x44]
	ldr r1, [r7, #0x40]
	adds r1, r1, r0
	str r1, [r7, #0x40]
	ldr r0, [r7, #0x3c]
	cmp r1, r0
	ble _0808EBE0
	str r0, [r7, #0x40]
_0808EBE0:
	ldr r0, [r7, #0x40]
	cmp r0, #0
	bge _0808EBEA
	str r2, [r7, #0x40]
	str r2, [r7, #0x44]
_0808EBEA:
	ldr r0, [r7, #0x44]
	mvns r0, r0
	lsrs r2, r0, #0x1f
	mov r1, sb
	adds r1, #0x20
	ldrb r0, [r1]
	cmp r0, r2
	beq _0808EC02
	strb r2, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
_0808EC02:
	adds r3, r7, #0
	adds r3, #0x4c
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	ldr r2, [r7, #0x44]
	ldr r0, _0808EC30 @ =0x000004FF
	adds r1, r2, r0
	ldr r0, _0808EC34 @ =0x000009FE
	cmp r1, r0
	bhi _0808EC38
	cmp r2, #0
	beq _0808EC72
	ldrh r0, [r3]
	movs r1, #0x19
	bl Mod
	cmp r0, #0
	bne _0808EC72
	movs r0, #0xd4
	bl m4aSongNumStart
	b _0808EC72
	.align 2, 0
_0808EC30: .4byte 0x000004FF
_0808EC34: .4byte 0x000009FE
_0808EC38:
	ldr r0, _0808EC58 @ =0x0000081F
	adds r1, r2, r0
	ldr r0, _0808EC5C @ =0x0000103E
	cmp r1, r0
	bhi _0808EC60
	ldrh r0, [r3]
	movs r1, #0x10
	bl Mod
	cmp r0, #0
	bne _0808EC72
	movs r0, #0xd5
	bl m4aSongNumStart
	b _0808EC72
	.align 2, 0
_0808EC58: .4byte 0x0000081F
_0808EC5C: .4byte 0x0000103E
_0808EC60:
	ldrh r0, [r3]
	movs r1, #8
	bl Mod
	cmp r0, #0
	bne _0808EC72
	movs r0, #0xd6
	bl m4aSongNumStart
_0808EC72:
	movs r0, #1
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_808EC84
sub_808EC84: @ 0x0808EC84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r7, [sp, #0x2c]
	adds r0, r7, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	bne _0808ECAA
	b _0808F084
_0808ECAA:
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808ECB6
	b _0808F084
_0808ECB6:
	bl sub_80549FC
	adds r3, r0, #0
	cmp r3, #0
	beq _0808ED4C
	movs r0, #0x4e
	add r0, sl
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #7
	ldr r1, _0808ED40 @ =0x000003FF
	mov r8, r1
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r3, _0808ED44 @ =gSineTable
	adds r0, r0, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r5, _0808ED48 @ =0x00001770
	adds r1, r5, #0
	bl Div
	adds r4, r0, #0
	mov r6, sl
	ldr r0, [r6, #0x40]
	movs r6, #0xc8
	lsls r6, r6, #4
	adds r1, r6, #0
	bl Div
	muls r4, r0, r4
	ldr r0, [sp, #4]
	adds r4, r0, r4
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #7
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #1
	ldr r3, _0808ED44 @ =gSineTable
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	bl Div
	adds r5, r0, #0
	mov r2, sl
	ldr r0, [r2, #0x40]
	adds r1, r6, #0
	bl Div
	adds r2, r5, #0
	muls r2, r0, r2
	ldr r3, [sp, #8]
	adds r2, r3, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r0, [sp]
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_80096B0
	b _0808F0A0
	.align 2, 0
_0808ED40: .4byte 0x000003FF
_0808ED44: .4byte gSineTable
_0808ED48: .4byte 0x00001770
_0808ED4C:
	ldr r2, [r7, #0x10]
	movs r5, #8
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	bne _0808ED5A
	b _0808F0A0
_0808ED5A:
	ldr r0, [r7, #0x28]
	ldr r4, [sp]
	cmp r0, r4
	beq _0808ED64
	b _0808F0A0
_0808ED64:
	movs r6, #0x18
	ldrsh r0, [r4, r6]
	ldr r4, _0808EDE4 @ =gCamera
	movs r6, #2
	ldrsh r1, [r4, r6]
	adds r0, r0, r1
	ldr r1, [sp]
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r1, #0xf
	ldrsb r1, [r7, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	str r0, [r7, #4]
	movs r1, #2
	ands r1, r2
	cmp r1, #0
	bne _0808ED9C
	adds r0, r7, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0808EE5C
_0808ED9C:
	mov r0, sl
	adds r0, #0x4c
	strh r3, [r0]
	cmp r1, #0
	beq _0808EDFE
	str r3, [r7, #0x28]
	movs r1, #9
	rsbs r1, r1, #0
	ands r1, r2
	str r1, [r7, #0x10]
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _0808EDC8
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	bne _0808EDEC
_0808EDC8:
	ldrh r1, [r7, #8]
	movs r0, #8
	ldrsh r2, [r7, r0]
	ldr r0, _0808EDE8 @ =0xFFFFFEE0
	cmp r2, r0
	blt _0808EDE0
	adds r0, r1, #0
	movs r1, #0x90
	lsls r1, r1, #1
	cmp r2, r1
	ble _0808EDE0
	adds r0, r1, #0
_0808EDE0:
	strh r0, [r7, #8]
	b _0808EDF0
	.align 2, 0
_0808EDE4: .4byte gCamera
_0808EDE8: .4byte 0xFFFFFEE0
_0808EDEC:
	mov r1, sl
	str r3, [r1, #0x44]
_0808EDF0:
	adds r2, r7, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	b _0808EE9C
_0808EDFE:
	ldrh r1, [r4]
	ldr r2, [sp]
	ldrh r2, [r2, #0x16]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	ldr r3, [sp]
	ldrh r3, [r3, #0x18]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r0, [sp]
	adds r3, r7, #0
	bl sub_80096B0
	ands r0, r5
	cmp r0, #0
	beq _0808EE9C
	ldr r0, [r7, #0x10]
	orrs r0, r5
	str r0, [r7, #0x10]
	ldr r4, [sp]
	str r4, [r7, #0x28]
	ldrh r1, [r7, #0xc]
	movs r6, #0xc
	ldrsh r2, [r7, r6]
	ldr r0, _0808EE58 @ =0xFFFFFDC0
	cmp r2, r0
	blt _0808EE46
	adds r0, r1, #0
	movs r1, #0x90
	lsls r1, r1, #2
	cmp r2, r1
	ble _0808EE46
	adds r0, r1, #0
_0808EE46:
	strh r0, [r7, #0xc]
	adds r2, r7, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	b _0808EE9C
	.align 2, 0
_0808EE58: .4byte 0xFFFFFDC0
_0808EE5C:
	ldr r2, _0808EEC8 @ =gSineTable
	mov r0, sl
	adds r0, #0x4e
	ldrb r0, [r0]
	lsls r0, r0, #7
	ldr r1, _0808EECC @ =0x000003FF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, _0808EED0 @ =0x00001770
	bl Div
	adds r4, r0, #0
	mov r3, sl
	ldr r0, [r3, #0x40]
	movs r1, #0xc8
	lsls r1, r1, #4
	bl Div
	muls r0, r4, r0
	ldr r4, [sp, #4]
	adds r0, r4, r0
	lsls r0, r0, #8
	movs r6, #8
	ldrsh r1, [r7, r6]
	subs r0, r0, r1
	str r0, [r7]
_0808EE9C:
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0808EEAC
	b _0808F076
_0808EEAC:
	mov r1, sl
	ldr r0, [r1, #0x44]
	movs r1, #0x1c
	bl Div
	cmp r0, #0
	bge _0808EED4
	mov r2, sl
	ldr r0, [r2, #0x44]
	movs r1, #0x1c
	bl Div
	rsbs r0, r0, #0
	b _0808EEDE
	.align 2, 0
_0808EEC8: .4byte gSineTable
_0808EECC: .4byte 0x000003FF
_0808EED0: .4byte 0x00001770
_0808EED4:
	mov r3, sl
	ldr r0, [r3, #0x44]
	movs r1, #0x1c
	bl Div
_0808EEDE:
	ldr r1, [sp]
	adds r1, #0x22
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x59
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r3, r0, #0
	cmp r1, #3
	bne _0808EEFE
	subs r0, #0x19
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq _0808EF0A
_0808EEFE:
	movs r4, #0xc
	ldrsh r0, [r7, r4]
	subs r0, #0x10
	mov r6, sl
	str r0, [r6, #0x44]
	b _0808EF12
_0808EF0A:
	movs r1, #0xc
	ldrsh r0, [r7, r1]
	mov r2, sl
	str r0, [r2, #0x44]
_0808EF12:
	mov r4, sl
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ble _0808EF1E
	lsls r0, r0, #1
	str r0, [r4, #0x44]
_0808EF1E:
	mov r6, sl
	ldr r0, [r6, #0x44]
	movs r1, #0xb2
	lsls r1, r1, #4
	cmp r0, r1
	ble _0808EF2C
	str r1, [r6, #0x44]
_0808EF2C:
	mov r1, sl
	ldr r0, [r1, #0x40]
	ldr r2, [r1, #0x44]
	adds r0, r0, r2
	str r0, [r1, #0x40]
	ldr r1, [r1, #0x3c]
	cmp r0, r1
	ble _0808EF48
	mov r4, sl
	str r1, [r4, #0x40]
	cmp r2, #0
	bge _0808EF76
	movs r0, #0
	str r0, [r4, #0x44]
_0808EF48:
	mov r6, sl
	ldr r0, [r6, #0x44]
	cmp r0, #0
	bge _0808EF76
	ldrh r1, [r7, #0xc]
	movs r2, #0xc
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bgt _0808EF76
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _0808EF70
	adds r0, r7, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	beq _0808EF76
_0808EF70:
	adds r0, r1, #0
	subs r0, #0x40
	strh r0, [r7, #0xc]
_0808EF76:
	ldrh r1, [r7, #0xc]
	movs r3, #0xc
	ldrsh r2, [r7, r3]
	ldr r0, _0808EFE0 @ =0xFFFFF700
	cmp r2, r0
	blt _0808EF8A
	movs r0, #0x90
	lsls r0, r0, #3
	cmp r2, r0
	ble _0808EF8C
_0808EF8A:
	adds r1, r0, #0
_0808EF8C:
	movs r2, #0
	strh r1, [r7, #0xc]
	mov r4, sl
	ldr r0, [r4, #0x40]
	cmp r0, #0
	bge _0808EFC0
	str r2, [r4, #0x40]
	str r2, [r4, #0x44]
	adds r0, r7, #0
	adds r0, #0x3e
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #0
	bne _0808EFB0
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _0808EFB0
	strh r2, [r7, #0xc]
_0808EFB0:
	ldr r1, [sp]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, [sp]
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
_0808EFC0:
	mov r6, sl
	ldr r0, [r6, #0x44]
	cmp r0, #0
	blt _0808EFE4
	ldr r0, [r6, #0x48]
	cmp r0, #0
	bgt _0808EFFC
	ldr r1, [sp]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, [sp]
	adds r1, #0x20
	movs r0, #1
	b _0808EFFA
	.align 2, 0
_0808EFE0: .4byte 0xFFFFF700
_0808EFE4:
	mov r1, sl
	ldr r0, [r1, #0x48]
	cmp r0, #0
	blt _0808EFFC
	ldr r1, [sp]
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, [sp]
	adds r1, #0x20
	movs r0, #0
_0808EFFA:
	strb r0, [r1]
_0808EFFC:
	mov r3, sl
	adds r3, #0x4c
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	mov r4, sl
	ldr r2, [r4, #0x44]
	ldr r6, _0808F02C @ =0x000004FF
	adds r1, r2, r6
	ldr r0, _0808F030 @ =0x000009FE
	cmp r1, r0
	bhi _0808F034
	cmp r2, #0
	beq _0808F06E
	ldrh r0, [r3]
	movs r1, #0x19
	bl Mod
	cmp r0, #0
	bne _0808F06E
	movs r0, #0xd4
	bl m4aSongNumStart
	b _0808F06E
	.align 2, 0
_0808F02C: .4byte 0x000004FF
_0808F030: .4byte 0x000009FE
_0808F034:
	ldr r0, _0808F054 @ =0x0000081F
	adds r1, r2, r0
	ldr r0, _0808F058 @ =0x0000103E
	cmp r1, r0
	bhi _0808F05C
	ldrh r0, [r3]
	movs r1, #0x10
	bl Mod
	cmp r0, #0
	bne _0808F06E
	movs r0, #0xd5
	bl m4aSongNumStart
	b _0808F06E
	.align 2, 0
_0808F054: .4byte 0x0000081F
_0808F058: .4byte 0x0000103E
_0808F05C:
	ldrh r0, [r3]
	movs r1, #8
	bl Mod
	cmp r0, #0
	bne _0808F06E
	movs r0, #0xd6
	bl m4aSongNumStart
_0808F06E:
	mov r1, sl
	ldr r0, [r1, #0x44]
	str r0, [r1, #0x48]
	b _0808F0A0
_0808F076:
	mov r2, sl
	ldr r0, [r2, #0x44]
	cmp r0, #0
	ble _0808F080
	asrs r0, r0, #1
_0808F080:
	strh r0, [r7, #0xc]
	b _0808F0A0
_0808F084:
	ldr r1, [r7, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808F0A0
	ldr r0, [r7, #0x28]
	ldr r3, [sp]
	cmp r0, r3
	bne _0808F0A0
	movs r0, #0
	str r0, [r7, #0x28]
	subs r0, #9
	ands r1, r0
	str r1, [r7, #0x10]
_0808F0A0:
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_808F0B4
sub_808F0B4: @ 0x0808F0B4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable087
CreateEntity_Interactable087: @ 0x0808F0C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0808F160 @ =sub_808F1EC
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808F164 @ =sub_808F274
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov sb, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, sb
	ldr r7, _0808F168 @ =0x0300000C
	add r7, sb
	movs r1, #0
	mov sl, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r2, r8
	str r2, [r0]
	ldrb r1, [r2]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	ldrb r0, [r2]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x16]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r2]
	ldr r0, _0808F16C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #5
	beq _0808F148
	cmp r1, #0x11
	bne _0808F190
_0808F148:
	mov r2, r8
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0808F174
	movs r0, #4
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _0808F170 @ =0x000001FF
	b _0808F19A
	.align 2, 0
_0808F160: .4byte sub_808F1EC
_0808F164: .4byte sub_808F274
_0808F168: .4byte 0x0300000C
_0808F16C: .4byte gCurrentLevel
_0808F170: .4byte 0x000001FF
_0808F174:
	movs r0, #8
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	ldr r0, _0808F18C @ =0x0300002C
	add r0, sb
	mov r2, sl
	strb r2, [r0]
	b _0808F1A4
	.align 2, 0
_0808F18C: .4byte 0x0300002C
_0808F190:
	movs r0, #0xf
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _0808F1E4 @ =0x0000022E
_0808F19A:
	strh r0, [r7, #0xa]
	ldr r0, _0808F1E8 @ =0x0300002C
	add r0, sb
	mov r1, sl
	strb r1, [r0]
_0808F1A4:
	movs r2, #0
	movs r1, #0
	movs r0, #0xe0
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
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F1E4: .4byte 0x0000022E
_0808F1E8: .4byte 0x0300002C

	thumb_func_start sub_808F1EC
sub_808F1EC: @ 0x0808F1EC
	push {r4, r5, r6, r7, lr}
	ldr r4, _0808F258 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
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
	ldr r3, _0808F25C @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r6, #0x18]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _0808F24A
	movs r1, #0x18
	ldrsh r0, [r6, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808F24A
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0808F260
_0808F24A:
	ldrb r0, [r5, #8]
	strb r0, [r7]
	ldr r0, [r4]
	bl TaskDestroy
	b _0808F26C
	.align 2, 0
_0808F258: .4byte gCurTask
_0808F25C: .4byte gCamera
_0808F260:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0808F26C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808F274
sub_808F274: @ 0x0808F274
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_808F288
sub_808F288: @ 0x0808F288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0808F33C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r0, [r0]
	mov r8, r0
	ldr r2, _0808F340 @ =0x0300003C
	adds r0, r1, r2
	ldrb r0, [r0]
	mov sb, r0
	ldr r3, _0808F344 @ =0x03000034
	adds r0, r1, r3
	ldrh r2, [r0]
	ldr r4, _0808F348 @ =0x03000036
	adds r0, r1, r4
	ldrh r3, [r0]
	adds r4, #7
	adds r0, r1, r4
	ldrb r7, [r0]
	ldr r0, _0808F34C @ =0x0300003E
	adds r1, r1, r0
	ldrb r1, [r1]
	str r1, [sp, #0xc]
	mov r4, sb
	lsls r1, r4, #3
	lsls r2, r2, #8
	adds r1, r1, r2
	mov r2, r8
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r3, r3, #8
	adds r0, r0, r3
	ldr r2, _0808F350 @ =gCamera
	ldrh r4, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r4
	ldrh r2, [r2, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _0808F318
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0808F318
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808F3A4
_0808F318:
	movs r4, #0
	ldr r6, _0808F354 @ =gUnknown_03005AB0
	ldr r5, _0808F358 @ =gUnknown_03005A20
_0808F31E:
	ldr r0, _0808F33C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r4, r0
	ldr r2, _0808F35C @ =0x0300003A
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne _0808F374
	cmp r4, #0
	beq _0808F360
	movs r3, #0xa
	ldrsh r0, [r6, r3]
	b _0808F364
	.align 2, 0
_0808F33C: .4byte gCurTask
_0808F340: .4byte 0x0300003C
_0808F344: .4byte 0x03000034
_0808F348: .4byte 0x03000036
_0808F34C: .4byte 0x0300003E
_0808F350: .4byte gCamera
_0808F354: .4byte gUnknown_03005AB0
_0808F358: .4byte gUnknown_03005A20
_0808F35C: .4byte 0x0300003A
_0808F360:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
_0808F364:
	movs r1, #2
	bl Div
	cmp r4, #0
	beq _0808F372
	strh r0, [r6, #0xa]
	b _0808F374
_0808F372:
	strh r0, [r5, #0xa]
_0808F374:
	adds r4, #1
	ldr r0, _0808F39C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _0808F31E
	cmp r7, #1
	bne _0808F38C
	movs r0, #0xc8
	bl m4aSongNumStop
_0808F38C:
	mov r3, sb
	mov r2, r8
	strb r3, [r2]
	ldr r0, _0808F3A0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808F6E6
	.align 2, 0
_0808F39C: .4byte gUnknown_03005088
_0808F3A0: .4byte gCurTask
_0808F3A4:
	adds r0, r3, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r6, #0
	ldr r4, _0808F3D8 @ =gUnknown_03005AB0
	movs r0, #0x40
	adds r0, r0, r4
	mov sl, r0
	ldr r5, _0808F3DC @ =gUnknown_03005A20
	movs r1, #0x40
	adds r1, r1, r5
	mov sb, r1
_0808F3C6:
	cmp r6, #0
	beq _0808F3E0
	mov r2, sl
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0x25
	bne _0808F3EA
	b _0808F3F8
	.align 2, 0
_0808F3D8: .4byte gUnknown_03005AB0
_0808F3DC: .4byte gUnknown_03005A20
_0808F3E0:
	mov r3, sb
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0x25
	beq _0808F3F8
_0808F3EA:
	cmp r7, #0
	beq _0808F3F8
	ldr r0, _0808F400 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	movs r7, #0
_0808F3F8:
	cmp r6, #0
	beq _0808F404
	ldr r0, [r4, #0x10]
	b _0808F406
	.align 2, 0
_0808F400: .4byte gMPlayInfo_SE2
_0808F404:
	ldr r0, [r5, #0x10]
_0808F406:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808F410
	b _0808F6BC
_0808F410:
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r6, #0
	beq _0808F426
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808F430
	b _0808F69C
_0808F426:
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808F430
	b _0808F69C
_0808F430:
	asrs r1, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r6, #0
	beq _0808F448
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808F452
	b _0808F69C
_0808F448:
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808F452
	b _0808F69C
_0808F452:
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r6, #0
	beq _0808F468
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808F472
	b _0808F69C
_0808F468:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808F472
	b _0808F69C
_0808F472:
	asrs r1, r1, #0x10
	mov r2, r8
	ldrb r0, [r2, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r6, #0
	beq _0808F48A
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808F494
	b _0808F69C
_0808F48A:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808F494
	b _0808F69C
_0808F494:
	cmp r7, #0
	bne _0808F4C4
	cmp r6, #0
	beq _0808F4A8
	mov r3, sl
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0x25
	bne _0808F4B2
	b _0808F4C4
_0808F4A8:
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x25
	beq _0808F4C4
_0808F4B2:
	mov r2, r8
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _0808F4C4
	movs r7, #1
	movs r0, #0xc8
	bl m4aSongNumStart
_0808F4C4:
	cmp r6, #0
	beq _0808F4CC
	ldr r1, [r4, #0x10]
	b _0808F4CE
_0808F4CC:
	ldr r1, [r5, #0x10]
_0808F4CE:
	movs r0, #0x80
	ands r1, r0
	ldr r2, _0808F4E4 @ =gUnknown_03005A20
	cmp r1, #0
	bne _0808F4EE
	cmp r6, #0
	beq _0808F4E8
	ldrh r0, [r4, #0xa]
	subs r0, #0x68
	strh r0, [r4, #0xa]
	b _0808F4EE
	.align 2, 0
_0808F4E4: .4byte gUnknown_03005A20
_0808F4E8:
	ldrh r0, [r5, #0xa]
	subs r0, #0x68
	strh r0, [r5, #0xa]
_0808F4EE:
	cmp r6, #0
	beq _0808F504
	movs r3, #0xa
	ldrsh r1, [r4, r3]
	ldr r0, _0808F500 @ =0xFFFFFDC0
	cmp r1, r0
	blt _0808F50E
	b _0808F524
	.align 2, 0
_0808F500: .4byte 0xFFFFFDC0
_0808F504:
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	ldr r0, _0808F518 @ =0xFFFFFDC0
	cmp r1, r0
	bge _0808F524
_0808F50E:
	cmp r6, #0
	beq _0808F520
	ldr r0, _0808F51C @ =0x0000FDC0
	strh r0, [r4, #0xa]
	b _0808F524
	.align 2, 0
_0808F518: .4byte 0xFFFFFDC0
_0808F51C: .4byte 0x0000FDC0
_0808F520:
	ldr r0, _0808F534 @ =0x0000FDC0
	strh r0, [r2, #0xa]
_0808F524:
	cmp r6, #0
	beq _0808F538
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0808F540
	.align 2, 0
_0808F534: .4byte 0x0000FDC0
_0808F538:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0808F540:
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0808F56C
	adds r0, r2, #0
	cmp r6, #0
	beq _0808F552
	ldr r0, _0808F560 @ =gUnknown_03005AB0
_0808F552:
	bl sub_8046CEC
	cmp r6, #0
	beq _0808F564
	movs r0, #0x25
	mov r2, sl
	b _0808F58C
	.align 2, 0
_0808F560: .4byte gUnknown_03005AB0
_0808F564:
	movs r0, #0x25
	mov r3, sb
	strb r0, [r3]
	b _0808F58E
_0808F56C:
	adds r0, r2, #0
	cmp r6, #0
	beq _0808F574
	ldr r0, _0808F584 @ =gUnknown_03005AB0
_0808F574:
	bl sub_8046CEC
	cmp r6, #0
	beq _0808F588
	movs r0, #0x11
	mov r1, sl
	strb r0, [r1]
	b _0808F58E
	.align 2, 0
_0808F584: .4byte gUnknown_03005AB0
_0808F588:
	movs r0, #0x11
	mov r2, sb
_0808F58C:
	strb r0, [r2]
_0808F58E:
	cmp r6, #0
	beq _0808F5A4
	ldr r3, _0808F5A0 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	beq _0808F5AE
	b _0808F5CE
	.align 2, 0
_0808F5A0: .4byte gUnknown_03005B09
_0808F5A4:
	ldr r1, _0808F5C0 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _0808F5CE
_0808F5AE:
	cmp r6, #0
	beq _0808F5C4
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0808F5CE
	.align 2, 0
_0808F5C0: .4byte gUnknown_03005A79
_0808F5C4:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r5, #0x10]
_0808F5CE:
	cmp r6, #0
	beq _0808F5D6
	ldr r0, [r4, #4]
	b _0808F5D8
_0808F5D6:
	ldr r0, [r5, #4]
_0808F5D8:
	asrs r3, r0, #8
	cmp r6, #0
	beq _0808F5E2
	ldr r0, [r4]
	b _0808F5E4
_0808F5E2:
	ldr r0, [r5]
_0808F5E4:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0808F5F4
	ldr r0, _0808F5F0 @ =gUnknown_03005AD7
	b _0808F5F6
	.align 2, 0
_0808F5F0: .4byte gUnknown_03005AD7
_0808F5F4:
	ldr r0, _0808F618 @ =gUnknown_03005A47
_0808F5F6:
	ldrb r2, [r0]
	ldr r0, _0808F61C @ =sub_803FD5C
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	bl sub_804021C
	cmp r0, #4
	ble _0808F67C
	cmp r6, #0
	beq _0808F620
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0808F628
	.align 2, 0
_0808F618: .4byte gUnknown_03005A47
_0808F61C: .4byte sub_803FD5C
_0808F620:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0808F628:
	cmp r6, #0
	beq _0808F63C
	ldr r0, [r4, #0x10]
	ldr r1, _0808F638 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808F644
	.align 2, 0
_0808F638: .4byte 0xFFFFFEFF
_0808F63C:
	ldr r0, [r5, #0x10]
	ldr r1, _0808F654 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #0x10]
_0808F644:
	cmp r6, #0
	beq _0808F658
	ldr r0, [r4, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808F662
	.align 2, 0
_0808F654: .4byte 0xFFFFFEFF
_0808F658:
	ldr r0, [r5, #0x10]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0808F662:
	cmp r6, #0
	beq _0808F672
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808F67C
_0808F672:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0808F67C:
	ldr r0, _0808F690 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, r6, r0
	ldr r2, _0808F694 @ =0x0300003A
	adds r1, r0, r2
	ldr r3, _0808F698 @ =0x03000038
	adds r0, r0, r3
	b _0808F6B8
	.align 2, 0
_0808F690: .4byte gCurTask
_0808F694: .4byte 0x0300003A
_0808F698: .4byte 0x03000038
_0808F69C:
	ldr r1, _0808F6F8 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	adds r0, r6, r0
	ldr r2, _0808F6FC @ =0x03000038
	adds r0, r0, r2
	movs r3, #0
	strb r3, [r0]
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	adds r0, r6, r0
	ldr r3, _0808F700 @ =0x0300003A
	adds r1, r0, r3
	adds r0, r0, r2
_0808F6B8:
	ldrb r0, [r0]
	strb r0, [r1]
_0808F6BC:
	adds r6, #1
	ldr r0, _0808F704 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _0808F6CC
	b _0808F3C6
_0808F6CC:
	ldr r1, _0808F6F8 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r4, _0808F708 @ =0x0300003D
	adds r0, r0, r4
	strb r7, [r0]
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	ldr r1, _0808F70C @ =0x0300003E
	adds r0, r0, r1
	mov r2, sp
	ldrb r2, [r2, #0xc]
	strb r2, [r0]
_0808F6E6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F6F8: .4byte gCurTask
_0808F6FC: .4byte 0x03000038
_0808F700: .4byte 0x0300003A
_0808F704: .4byte gUnknown_03005088
_0808F708: .4byte 0x0300003D
_0808F70C: .4byte 0x0300003E

	thumb_func_start CreateEntity_Interactable090
CreateEntity_Interactable090: @ 0x0808F710
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0808F794 @ =sub_808F288
	movs r2, #0x80
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x3f
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	ldr r2, _0808F798 @ =0x03000034
	adds r1, r1, r2
	strh r4, [r1]
	ldrh r1, [r0, #6]
	adds r2, #2
	adds r1, r1, r2
	strh r5, [r1]
	ldrh r1, [r0, #6]
	adds r2, #2
	adds r1, r1, r2
	movs r3, #0
	strh r6, [r1]
	ldrh r1, [r0, #6]
	adds r2, #2
	adds r1, r1, r2
	strh r6, [r1]
	ldrh r1, [r0, #6]
	subs r2, #0x3a
	adds r1, r1, r2
	mov r2, r8
	str r2, [r1]
	ldrh r1, [r0, #6]
	ldr r2, _0808F79C @ =0x0300003D
	adds r1, r1, r2
	strb r3, [r1]
	ldrh r1, [r0, #6]
	adds r2, #1
	adds r1, r1, r2
	strb r3, [r1]
	ldrh r0, [r0, #6]
	ldr r1, _0808F7A0 @ =0x0300003C
	adds r0, r0, r1
	mov r2, r8
	ldrb r1, [r2]
	strb r1, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r2]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808F794: .4byte sub_808F288
_0808F798: .4byte 0x03000034
_0808F79C: .4byte 0x0300003D
_0808F7A0: .4byte 0x0300003C

	thumb_func_start CreateEntity_Interactable091
CreateEntity_Interactable091: @ 0x0808F7A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0808F850 @ =sub_808F9AC
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808F854 @ =sub_808FE5C
	str r1, [sp]
	movs r1, #0xb8
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	movs r5, #0
	movs r2, #0
	mov r0, r8
	strh r0, [r7, #4]
	mov r1, sb
	strh r1, [r7, #6]
	str r6, [r7]
	ldrb r0, [r6]
	strb r0, [r7, #8]
	strb r4, [r7, #9]
	ldr r4, _0808F858 @ =0x030000A4
	adds r0, r3, r4
	str r2, [r0]
	ldr r1, _0808F85C @ =0x030000A8
	adds r0, r3, r1
	str r2, [r0]
	adds r4, #8
	adds r0, r3, r4
	strh r2, [r0]
	adds r1, #6
	adds r0, r3, r1
	strh r2, [r0]
	ldrb r1, [r6, #3]
	movs r0, #0xf
	ands r0, r1
	lsls r0, r0, #7
	subs r4, #0x10
	adds r1, r3, r4
	strh r0, [r1]
	ldrb r1, [r6, #4]
	adds r4, #0x18
	adds r0, r3, r4
	strb r1, [r0]
	ldr r1, _0808F860 @ =0x030000B5
	adds r0, r3, r1
	strb r5, [r0]
	subs r4, #4
	adds r0, r3, r4
	strh r2, [r0]
	subs r1, #0x15
	adds r0, r3, r1
	str r2, [r0]
	ldr r2, _0808F864 @ =0x030000B6
	adds r0, r3, r2
	strb r5, [r0]
	ldrb r2, [r6, #5]
	ldrb r1, [r6, #6]
	cmp r2, r1
	bls _0808F86C
	adds r4, #3
	adds r0, r3, r4
	strb r2, [r0]
	ldr r0, _0808F868 @ =0x030000B2
	adds r1, r3, r0
	movs r0, #1
	strb r0, [r1]
	b _0808F878
	.align 2, 0
_0808F850: .4byte sub_808F9AC
_0808F854: .4byte sub_808FE5C
_0808F858: .4byte 0x030000A4
_0808F85C: .4byte 0x030000A8
_0808F860: .4byte 0x030000B5
_0808F864: .4byte 0x030000B6
_0808F868: .4byte 0x030000B2
_0808F86C:
	ldr r2, _0808F98C @ =0x030000B3
	adds r0, r3, r2
	strb r1, [r0]
	ldr r4, _0808F990 @ =0x030000B2
	adds r0, r3, r4
	strb r5, [r0]
_0808F878:
	adds r4, r7, #0
	adds r4, #0xc
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r1, #0
	mov sl, r1
	movs r5, #0
	strh r0, [r4, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4, #4]
	ldr r1, _0808F994 @ =gUnknown_086CEE2C
	ldr r0, _0808F998 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	adds r0, r7, #0
	adds r0, #0x2c
	mov r2, sl
	strb r2, [r0]
	movs r6, #0x90
	lsls r6, r6, #3
	strh r6, [r4, #0x1a]
	strh r5, [r4, #8]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r7, #0
	adds r1, #0x2d
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x2e
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	strb r2, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	str r2, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x6c
	ldr r1, _0808F99C @ =0x06013020
	str r1, [r0, #4]
	strh r6, [r0, #0x1a]
	strh r5, [r0, #8]
	ldr r1, _0808F9A0 @ =0x00000212
	strh r1, [r0, #0xa]
	adds r1, r7, #0
	adds r1, #0x8c
	mov r2, sl
	strb r2, [r1]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x1c]
	adds r2, r7, #0
	adds r2, #0x8d
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r2]
	adds r1, r7, #0
	adds r1, #0x8e
	movs r4, #0x10
	strb r4, [r1]
	adds r1, #3
	mov r2, sl
	strb r2, [r1]
	mov r4, sb
	str r4, [r0, #0x28]
	mov r1, r8
	str r1, [r0, #0x10]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x3c
	ldr r1, _0808F9A4 @ =0x060130A0
	str r1, [r0, #4]
	strh r6, [r0, #0x1a]
	strh r5, [r0, #8]
	ldr r1, _0808F9A8 @ =0x00000213
	strh r1, [r0, #0xa]
	adds r1, r7, #0
	adds r1, #0x5c
	mov r2, sl
	strb r2, [r1]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x1c]
	adds r2, r7, #0
	adds r2, #0x5d
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r2]
	adds r1, r7, #0
	adds r1, #0x5e
	movs r4, #0x10
	strb r4, [r1]
	adds r1, #3
	mov r2, sl
	strb r2, [r1]
	mov r4, sb
	str r4, [r0, #0x28]
	mov r1, r8
	str r1, [r0, #0x10]
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
_0808F98C: .4byte 0x030000B3
_0808F990: .4byte 0x030000B2
_0808F994: .4byte gUnknown_086CEE2C
_0808F998: .4byte gCurrentLevel
_0808F99C: .4byte 0x06013020
_0808F9A0: .4byte 0x00000212
_0808F9A4: .4byte 0x060130A0
_0808F9A8: .4byte 0x00000213

	thumb_func_start sub_808F9AC
sub_808F9AC: @ 0x0808F9AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r0, _0808FA28 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov sb, r0
	ldr r0, _0808FA2C @ =0x0300000C
	adds r0, r7, r0
	str r0, [sp]
	ldr r1, _0808FA30 @ =0x0300006C
	adds r1, r7, r1
	str r1, [sp, #4]
	ldr r2, _0808FA34 @ =0x0300003C
	adds r2, r7, r2
	str r2, [sp, #8]
	mov r3, sb
	ldr r3, [r3]
	str r3, [sp, #0x10]
	ldr r4, _0808FA38 @ =0x030000B2
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808FA58
	ldr r5, _0808FA3C @ =0x030000A4
	adds r6, r7, r5
	ldr r0, _0808FA40 @ =gSineTable
	mov r8, r0
	movs r1, #4
	ldrsb r1, [r3, r1]
	ldr r0, _0808FA44 @ =gUnknown_03005120
	ldr r4, [r0]
	ldr r2, _0808FA48 @ =0x0300009C
	adds r5, r7, r2
	adds r0, r1, #0
	muls r0, r4, r0
	ldrh r3, [r5]
	adds r0, r0, r3
	ldr r2, _0808FA4C @ =0x000007FF
	ands r0, r2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _0808FA50 @ =0x030000B3
	adds r3, r7, r0
	ldrb r0, [r3]
	muls r0, r1, r0
	str r0, [r6]
	ldr r1, _0808FA54 @ =0x030000A8
	adds r6, r7, r1
	ldr r1, [sp, #0x10]
	movs r0, #4
	ldrsb r0, [r1, r0]
	b _0808FA9C
	.align 2, 0
_0808FA28: .4byte gCurTask
_0808FA2C: .4byte 0x0300000C
_0808FA30: .4byte 0x0300006C
_0808FA34: .4byte 0x0300003C
_0808FA38: .4byte 0x030000B2
_0808FA3C: .4byte 0x030000A4
_0808FA40: .4byte gSineTable
_0808FA44: .4byte gUnknown_03005120
_0808FA48: .4byte 0x0300009C
_0808FA4C: .4byte 0x000007FF
_0808FA50: .4byte 0x030000B3
_0808FA54: .4byte 0x030000A8
_0808FA58:
	ldr r5, _0808FB7C @ =0x030000A4
	adds r6, r7, r5
	ldr r0, _0808FB80 @ =gSineTable
	mov r8, r0
	ldr r2, [sp, #0x10]
	movs r1, #4
	ldrsb r1, [r2, r1]
	rsbs r1, r1, #0
	ldr r0, _0808FB84 @ =gUnknown_03005120
	ldr r4, [r0]
	ldr r3, _0808FB88 @ =0x0300009C
	adds r5, r7, r3
	adds r0, r1, #0
	muls r0, r4, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	ldr r2, _0808FB8C @ =0x000007FF
	ands r0, r2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _0808FB90 @ =0x030000B3
	adds r3, r7, r0
	ldrb r0, [r3]
	muls r0, r1, r0
	str r0, [r6]
	ldr r1, _0808FB94 @ =0x030000A8
	adds r6, r7, r1
	ldr r1, [sp, #0x10]
	movs r0, #4
	ldrsb r0, [r1, r0]
	rsbs r0, r0, #0
_0808FA9C:
	muls r0, r4, r0
	ldrh r5, [r5]
	adds r0, r0, r5
	ands r0, r2
	lsrs r0, r0, #1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldrb r0, [r3]
	muls r0, r1, r0
	str r0, [r6]
	mov r5, sb
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, [sp, #0x10]
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	mov r4, sb
	adds r4, #0xa4
	ldr r0, [r4]
	asrs r0, r0, #0xb
	str r0, [sp, #0x14]
	mov r3, sb
	adds r3, #0xa8
	ldr r0, [r3]
	asrs r0, r0, #0xb
	str r0, [sp, #0x18]
	ldr r6, _0808FB98 @ =gCamera
	ldrh r0, [r6]
	lsrs r7, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	ldr r5, [sp, #0x14]
	adds r0, r0, r5
	ldr r5, [sp]
	strh r0, [r5, #0x16]
	ldrh r0, [r6, #2]
	lsrs r5, r2, #0x10
	str r5, [sp, #0xc]
	asrs r2, r2, #0x10
	subs r0, r2, r0
	ldr r5, [sp, #0x18]
	adds r0, r0, r5
	ldr r5, [sp]
	strh r0, [r5, #0x18]
	ldr r0, _0808FB9C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r5, r0, #0x18
	asrs r0, r0, #0x19
	str r4, [sp, #0x1c]
	str r3, [sp, #0x20]
	cmp r0, #2
	beq _0808FB32
	cmp r5, #0x10
	beq _0808FB32
	ldrh r0, [r6]
	subs r0, r1, r0
	ldr r1, [sp, #4]
	strh r0, [r1, #0x16]
	ldrh r0, [r6, #2]
	subs r0, r2, r0
	strh r0, [r1, #0x18]
_0808FB32:
	movs r6, #0
	lsls r2, r7, #0x10
	str r2, [sp, #0x28]
	mov r3, sb
	adds r3, #0xb6
	str r3, [sp, #0x24]
	ldr r4, _0808FBA0 @ =gUnknown_03005AB0
	mov r8, r4
	ldr r4, _0808FBA4 @ =gUnknown_03005A20
	mov sl, r3
_0808FB46:
	ldr r5, [sp, #0x24]
	ldrb r0, [r5]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808FBCA
	ldr r0, _0808FB84 @ =gUnknown_03005120
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0808FBA8
	mov r0, sb
	adds r0, #0xa0
	ldr r2, [sp, #0x1c]
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, #1
