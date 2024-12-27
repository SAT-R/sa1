.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Trampoline
CreateEntity_Trampoline: @ 0x08074CFC
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
	ldr r0, _08074D90 @ =Task_Trampoline
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08074D94 @ =TaskDestructor_Trampoline
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
_08074D90: .4byte Task_Trampoline
_08074D94: .4byte TaskDestructor_Trampoline
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

	thumb_func_start Task_Trampoline
Task_Trampoline: @ 0x08074E10
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
	ldr r0, _08074EB8 @ =Task_Trampoline1
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
_08074EB8: .4byte Task_Trampoline1
_08074EBC:
	adds r0, r4, #0
	bl DisplaySprite
_08074EC2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_Trampoline1
Task_Trampoline1: @ 0x08074ECC
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
	ldr r0, _08074FAC @ =Task_Trampoline
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
_08074FAC: .4byte Task_Trampoline

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
	ldr r4, _08075090 @ =gPlayer
	cmp r6, #0
	beq _08074FDA
	ldr r4, _08075094 @ =gPartner
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
_08075090: .4byte gPlayer
_08075094: .4byte gPartner
_08075098: .4byte 0xFFFFFEFF
_0807509C: .4byte 0xFFFFF800
_080750A0: .4byte 0xFC400000
_080750A4: .4byte gGameMode
_080750A8: .4byte gUnknown_03005088

	thumb_func_start TaskDestructor_Trampoline
TaskDestructor_Trampoline: @ 0x080750AC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
