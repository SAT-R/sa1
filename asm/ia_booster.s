.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Booster
CreateEntity_Booster: @ 0x08076940
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
	ldr r0, _08076A28 @ =Task_Booster
	ldr r1, _08076A2C @ =TaskDestructor_Booster
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
_08076A28: .4byte Task_Booster
_08076A2C: .4byte TaskDestructor_Booster
_08076A30: .4byte 0x0300000C
_08076A34: .4byte 0x0300003C
_08076A38: .4byte 0x000001D7
_08076A3C: .4byte 0x0300002C
_08076A40: .4byte 0x0300002D
_08076A44: .4byte 0x0300002E
_08076A48: .4byte 0x03000031

	thumb_func_start CreateEntity_Booster_SlightLeft
CreateEntity_Booster_SlightLeft: @ 0x08076A4C
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
	ldr r0, _08076B34 @ =Task_Booster
	ldr r1, _08076B38 @ =TaskDestructor_Booster
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
_08076B34: .4byte Task_Booster
_08076B38: .4byte TaskDestructor_Booster
_08076B3C: .4byte 0x0300000C
_08076B40: .4byte 0x0300003C
_08076B44: .4byte 0x000001D7
_08076B48: .4byte 0x0300002C
_08076B4C: .4byte 0x0300002D
_08076B50: .4byte 0x0300002E
_08076B54: .4byte 0x03000031

	thumb_func_start CreateEntity_Booster_SlightRight
CreateEntity_Booster_SlightRight: @ 0x08076B58
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
	ldr r0, _08076C40 @ =Task_Booster
	ldr r1, _08076C44 @ =TaskDestructor_Booster
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
_08076C40: .4byte Task_Booster
_08076C44: .4byte TaskDestructor_Booster
_08076C48: .4byte 0x0300000C
_08076C4C: .4byte 0x0300003C
_08076C50: .4byte 0x000001D7
_08076C54: .4byte 0x0300002C
_08076C58: .4byte 0x0300002D
_08076C5C: .4byte 0x0300002E
_08076C60: .4byte 0x03000031

	thumb_func_start CreateEntity_Booster_Wall
CreateEntity_Booster_Wall: @ 0x08076C64
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
	ldr r0, _08076D50 @ =Task_Booster
	ldr r1, _08076D54 @ =TaskDestructor_Booster
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
_08076D50: .4byte Task_Booster
_08076D54: .4byte TaskDestructor_Booster
_08076D58: .4byte 0x0300000C
_08076D5C: .4byte 0x0300003C
_08076D60: .4byte 0x0300002C
_08076D64: .4byte 0x0300002D
_08076D68: .4byte 0x0300002E
_08076D6C: .4byte 0x03000031

	thumb_func_start CreateEntity_Booster_Steep
CreateEntity_Booster_Steep: @ 0x08076D70
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
	ldr r0, _08076E58 @ =Task_Booster
	ldr r1, _08076E5C @ =TaskDestructor_Booster
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
_08076E58: .4byte Task_Booster
_08076E5C: .4byte TaskDestructor_Booster
_08076E60: .4byte 0x0300000C
_08076E64: .4byte 0x0300003C
_08076E68: .4byte 0x0000023B
_08076E6C: .4byte 0x0300002C
_08076E70: .4byte 0x0300002D
_08076E74: .4byte 0x0300002E
_08076E78: .4byte 0x03000031

	thumb_func_start CreateEntity_Booster_Steep2
CreateEntity_Booster_Steep2: @ 0x08076E7C
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
	ldr r0, _08076F64 @ =Task_Booster
	ldr r1, _08076F68 @ =TaskDestructor_Booster
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
_08076F64: .4byte Task_Booster
_08076F68: .4byte TaskDestructor_Booster
_08076F6C: .4byte 0x0300000C
_08076F70: .4byte 0x0300003C
_08076F74: .4byte 0x0000023A
_08076F78: .4byte 0x0300002C
_08076F7C: .4byte 0x0300002D
_08076F80: .4byte 0x0300002E
_08076F84: .4byte 0x03000031

	thumb_func_start Task_Booster
Task_Booster: @ 0x08076F88
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
	ldr r6, _08077004 @ =gPartner
	ldr r5, _08077008 @ =gPlayer
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
_08077004: .4byte gPartner
_08077008: .4byte gPlayer
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
	ldr r0, _0807720C @ =gPlayer
	b _0807721E
	.align 2, 0
_0807720C: .4byte gPlayer
_08077210:
	ldr r1, [r5, #0x10]
	movs r0, #2
	ands r1, r0
	ldr r0, _08077250 @ =gPlayer
	cmp r1, #0
	beq _0807721E
	b _080774C8
_0807721E:
	cmp r7, #0
	beq _08077224
	ldr r0, _08077254 @ =gPartner
_08077224:
	bl Player_TransitionCancelFlyingAndBoost
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
_08077250: .4byte gPlayer
_08077254: .4byte gPartner
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
	ldr r0, _08077518 @ =gNumSingleplayerCharacters
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
_08077518: .4byte gNumSingleplayerCharacters
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

	thumb_func_start TaskDestructor_Booster
TaskDestructor_Booster: @ 0x0807753C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
