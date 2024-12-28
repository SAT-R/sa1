.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable099
CreateEntity_Interactable099: @ 0x08092F30
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
	ldr r0, _08092FD4 @ =Task_Interactable099
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08092FD8 @ =TaskDestructor_Interactable099
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov sb, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, sb
	ldr r7, _08092FDC @ =0x0300000C
	add r7, sb
	movs r1, #0
	mov sl, r1
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r3, r8
	str r3, [r0]
	ldrb r1, [r3]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	str r2, [r0, #0x3c]
	ldr r0, _08092FE0 @ =0x03000040
	add r0, sb
	mov r1, sl
	strb r1, [r0]
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
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r1, r8
	strb r0, [r1]
	ldr r0, _08092FE4 @ =gCurrentLevel
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08093024
	mov r3, r8
	movs r0, #3
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _08092FE8
	movs r0, #0x24
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x97
	lsls r0, r0, #2
	b _0809306C
	.align 2, 0
_08092FD4: .4byte Task_Interactable099
_08092FD8: .4byte TaskDestructor_Interactable099
_08092FDC: .4byte 0x0300000C
_08092FE0: .4byte 0x03000040
_08092FE4: .4byte gCurrentLevel
_08092FE8:
	cmp r0, #1
	bne _08092FFA
	movs r0, #0x24
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0x97
	lsls r0, r0, #2
	b _0809308E
_08092FFA:
	cmp r0, #2
	bne _08093010
	movs r0, #0x1b
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _0809300C @ =0x0000025B
	b _0809303A
	.align 2, 0
_0809300C: .4byte 0x0000025B
_08093010:
	cmp r0, #3
	bne _08093096
	movs r0, #0x1b
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _08093020 @ =0x0000025B
	b _0809308E
	.align 2, 0
_08093020: .4byte 0x0000025B
_08093024:
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0809304C
	movs r0, #0x24
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xfe
	lsls r0, r0, #1
_0809303A:
	strh r0, [r7, #0xa]
	ldr r0, _08093048 @ =0x0300002C
	add r0, sb
	mov r3, sl
	strb r3, [r0]
	b _08093096
	.align 2, 0
_08093048: .4byte 0x0300002C
_0809304C:
	cmp r0, #1
	bne _0809305E
	movs r0, #0x24
	bl VramMalloc
	str r0, [r7, #4]
	movs r0, #0xfe
	lsls r0, r0, #1
	b _0809308E
_0809305E:
	cmp r0, #2
	bne _08093080
	movs r0, #0x1b
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _08093078 @ =0x000001FD
_0809306C:
	strh r0, [r7, #0xa]
	ldr r0, _0809307C @ =0x0300002C
	add r0, sb
	mov r1, sl
	strb r1, [r0]
	b _08093096
	.align 2, 0
_08093078: .4byte 0x000001FD
_0809307C: .4byte 0x0300002C
_08093080:
	cmp r0, #3
	bne _08093096
	movs r0, #0x1b
	bl VramMalloc
	str r0, [r7, #4]
	ldr r0, _080930D8 @ =0x000001FD
_0809308E:
	strh r0, [r7, #0xa]
	ldr r0, _080930DC @ =0x0300002C
	add r0, sb
	strb r4, [r0]
_08093096:
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
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080930D8: .4byte 0x000001FD
_080930DC: .4byte 0x0300002C

	thumb_func_start Task_Interactable099
Task_Interactable099: @ 0x080930E0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08093180 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	ldr r1, [r7]
	mov r8, r1
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, r8
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _08093184 @ =gCamera
	ldrh r0, [r3]
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	subs r0, r6, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r3, #2]
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	subs r0, r5, r0
	strh r0, [r4, #0x18]
	ldr r3, _08093188 @ =gPlayer
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_80096B0
	ldr r0, _0809318C @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0809314A
	ldr r3, _08093190 @ =gPartner
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_80096B0
_0809314A:
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0809316E
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0809316E
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08093194
_0809316E:
	ldrb r0, [r7, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _08093180 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080931A0
	.align 2, 0
_08093180: .4byte gCurTask
_08093184: .4byte gCamera
_08093188: .4byte gPlayer
_0809318C: .4byte gNumSingleplayerCharacters
_08093190: .4byte gPartner
_08093194:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080931A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_Interactable099
TaskDestructor_Interactable099: @ 0x080931AC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
