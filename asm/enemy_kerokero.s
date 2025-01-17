.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_KeroKero
CreateEntity_KeroKero: @ 0x0806CD2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
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
	ldr r0, _0806CE3C @ =Task_KeroKero
	ldr r1, _0806CE40 @ =TaskDestructor_8009670
	str r1, [sp]
	movs r1, #0x4c
	movs r2, #0x80
	lsls r2, r2, #6
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldr r2, _0806CE44 @ =0x0300000C
	adds r5, r4, r2
	movs r7, #0
	movs r3, #0
	strh r6, [r1, #4]
	mov r0, r8
	strh r0, [r1, #6]
	mov r2, sl
	str r2, [r1]
	ldrb r0, [r2]
	strb r0, [r1, #8]
	mov r0, sb
	strb r0, [r1, #9]
	ldr r0, _0806CE48 @ =0x03000040
	adds r2, r4, r0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2]
	str r3, [r1, #0x3c]
	ldr r1, _0806CE4C @ =0x03000042
	adds r0, r4, r1
	strh r3, [r0]
	ldr r2, _0806CE50 @ =0x03000044
	adds r0, r4, r2
	strh r3, [r0]
	adds r1, #4
	adds r0, r4, r1
	strb r7, [r0]
	adds r2, #3
	adds r0, r4, r2
	strb r7, [r0]
	adds r1, #2
	adds r0, r4, r1
	strh r3, [r0]
	mov r2, sl
	ldrb r1, [r2, #6]
	ldr r2, _0806CE54 @ =0x0300004A
	adds r0, r4, r2
	strh r1, [r0]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r6, r6, #8
	adds r0, r0, r6
	strh r0, [r5, #0x16]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r2, r2, #8
	mov r8, r2
	add r0, r8
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, sl
	strb r0, [r2]
	movs r0, #0x14
	str r3, [sp, #4]
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	ldr r3, [sp, #4]
	strh r3, [r5, #8]
	movs r0, #0xcb
	lsls r0, r0, #1
	strh r0, [r5, #0xa]
	ldr r1, _0806CE58 @ =0x0300002C
	adds r0, r4, r1
	strb r7, [r0]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x1c]
	ldr r2, _0806CE5C @ =0x0300002D
	adds r1, r4, r2
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0806CE60 @ =0x0300002E
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0806CE64 @ =0x03000031
	adds r4, r4, r1
	strb r7, [r4]
	subs r0, #0x11
	str r0, [r5, #0x28]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r5, #0x10]
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
_0806CE3C: .4byte Task_KeroKero
_0806CE40: .4byte TaskDestructor_8009670
_0806CE44: .4byte 0x0300000C
_0806CE48: .4byte 0x03000040
_0806CE4C: .4byte 0x03000042
_0806CE50: .4byte 0x03000044
_0806CE54: .4byte 0x0300004A
_0806CE58: .4byte 0x0300002C
_0806CE5C: .4byte 0x0300002D
_0806CE60: .4byte 0x0300002E
_0806CE64: .4byte 0x03000031

	thumb_func_start Task_KeroKero
Task_KeroKero: @ 0x0806CE68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _0806CF38 @ =gUnknown_086CECF4
	add r0, sp, #8
	movs r2, #8
	bl memcpy
	ldr r0, _0806CF3C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0xc
	adds r0, r0, r3
	mov sb, r0
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
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	ldr r0, [r6, #0x3c]
	asrs r0, r0, #8
	adds r0, r4, r0
	lsls r0, r0, #0x10
	ldr r2, _0806CF40 @ =0x03000042
	adds r3, r3, r2
	ldrh r1, [r3]
	adds r1, r7, r1
	lsls r1, r1, #0x10
	ldr r3, _0806CF44 @ =gCamera
	ldrh r2, [r3]
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	mov r2, sb
	strh r0, [r2, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov ip, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r0, sb
	strh r1, [r0, #0x18]
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _0806CF0A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	blt _0806CF0A
	movs r4, #2
	ldrsh r2, [r3, r4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r7, r0
	bgt _0806CF0A
	adds r0, r2, #0
	subs r0, #0x80
	cmp r7, r0
	bge _0806CF48
_0806CF0A:
	mov r2, sb
	ldrh r0, [r2, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806CF30
	movs r4, #0x18
	ldrsh r0, [r2, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _0806CF30
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806CF48
_0806CF30:
	ldrb r0, [r6, #8]
	mov r1, sl
	strb r0, [r1]
	b _0806CF6C
	.align 2, 0
_0806CF38: .4byte gUnknown_086CECF4
_0806CF3C: .4byte gCurTask
_0806CF40: .4byte 0x03000042
_0806CF44: .4byte gCamera
_0806CF48:
	adds r4, r6, #0
	adds r4, #0x48
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r5, r5, #0x10
	asrs r2, r5, #0x10
	mov r8, r2
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	bl sa2__sub_800C4FC
	cmp r0, #0
	beq _0806CF7C
_0806CF6C:
	ldr r0, _0806CF78 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806D10A
	.align 2, 0
_0806CF78: .4byte gCurTask
_0806CF7C:
	adds r0, r6, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _0806CF9C
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, _0806CF98 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #1
	b _0806CFAA
	.align 2, 0
_0806CF98: .4byte sa2__sub_801EE64
_0806CF9C:
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, _0806CFD4 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
_0806CFAA:
	movs r3, #8
	bl sa2__sub_801F07C
	adds r2, r6, #0
	adds r2, #0x42
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	ldr r0, _0806CFD8 @ =gPlayer
	ldr r1, [r0]
	asrs r1, r1, #8
	asrs r2, r5, #0x10
	adds r7, r0, #0
	cmp r1, r2
	ble _0806CFDC
	mov r1, sb
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0806CFE4
	.align 2, 0
_0806CFD4: .4byte sa2__sub_801EE64
_0806CFD8: .4byte gPlayer
_0806CFDC:
	mov r1, sb
	ldr r0, [r1, #0x10]
	ldr r1, _0806D014 @ =0xFFFFFBFF
	ands r0, r1
_0806CFE4:
	mov r2, sb
	str r0, [r2, #0x10]
	adds r3, r4, #0
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0xfa
	ble _0806D020
	adds r1, r6, #0
	adds r1, #0x46
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r3]
	subs r0, #0xfa
	strh r0, [r3]
	mov r1, sb
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0806D018 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806D01C @ =sub_806D124
	str r0, [r1, #8]
	b _0806D104
	.align 2, 0
_0806D014: .4byte 0xFFFFFBFF
_0806D018: .4byte gCurTask
_0806D01C: .4byte sub_806D124
_0806D020:
	adds r1, r6, #0
	adds r1, #0x46
	ldrb r0, [r1]
	cmp r0, #0
	beq _0806D030
	subs r0, #1
	strb r0, [r1]
	b _0806D104
_0806D030:
	mov r2, sb
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806D0A4
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	mov r4, sl
	movs r0, #3
	ldrsb r0, [r4, r0]
	ldrb r2, [r4, #5]
	adds r0, r0, r2
	subs r0, #8
	lsls r0, r0, #3
	cmp r1, r0
	bgt _0806D104
	ldr r0, [r7]
	asrs r1, r0, #8
	asrs r0, r5, #0x10
	cmp r1, r0
	blt _0806D104
	adds r0, #0x50
	cmp r0, r1
	blt _0806D104
	adds r1, r6, #0
	adds r1, #0x44
	movs r2, #0
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r1]
	mov r0, sb
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _0806D09C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806D0A0 @ =sub_806D2B8
	str r0, [r1, #8]
	adds r2, r6, #0
	adds r2, #0x47
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	adds r1, r1, r0
	adds r1, #8
	ldrh r0, [r3]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r3]
	b _0806D0FC
	.align 2, 0
_0806D09C: .4byte gCurTask
_0806D0A0: .4byte sub_806D2B8
_0806D0A4:
	ldr r1, [r6, #0x3c]
	asrs r1, r1, #8
	mov r2, sl
	movs r0, #3
	ldrsb r0, [r2, r0]
	adds r0, #8
	lsls r0, r0, #3
	cmp r1, r0
	blt _0806D104
	ldr r0, [r7]
	asrs r1, r0, #8
	asrs r0, r5, #0x10
	cmp r1, r0
	bgt _0806D104
	subs r0, #0x50
	cmp r0, r1
	bgt _0806D104
	adds r1, r6, #0
	adds r1, #0x44
	movs r2, #0
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r1]
	mov r0, sb
	adds r0, #0x20
	strb r2, [r0]
	ldr r0, _0806D11C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806D120 @ =sub_806D2B8
	str r0, [r1, #8]
	adds r2, r6, #0
	adds r2, #0x47
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	adds r1, r1, r0
	adds r1, #8
	ldrh r0, [r4]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r4]
_0806D0FC:
	ldrb r1, [r2]
	movs r0, #7
	ands r0, r1
	strb r0, [r2]
_0806D104:
	mov r0, sb
	bl DisplaySprite
_0806D10A:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D11C: .4byte gCurTask
_0806D120: .4byte sub_806D2B8

	thumb_func_start sub_806D124
sub_806D124: @ 0x0806D124
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r4, _0806D1F8 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0xc
	adds r0, r0, r3
	mov r8, r0
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
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	ldr r0, [r6, #0x3c]
	asrs r0, r0, #8
	adds r0, r5, r0
	lsls r0, r0, #0x10
	ldr r2, _0806D1FC @ =0x03000042
	adds r3, r3, r2
	ldrh r1, [r3]
	adds r1, r7, r1
	lsls r1, r1, #0x10
	ldr r3, _0806D200 @ =gCamera
	ldrh r2, [r3]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r0, r2
	mov r2, r8
	strh r0, [r2, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r0, r8
	strh r1, [r0, #0x18]
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _0806D1C2
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _0806D1C2
	movs r0, #2
	ldrsh r2, [r3, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp r7, r0
	bgt _0806D1C2
	adds r0, r2, #0
	subs r0, #0x80
	cmp r7, r0
	bge _0806D204
_0806D1C2:
	mov r2, r8
	ldrh r0, [r2, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806D1E8
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0806D1E8
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806D204
_0806D1E8:
	ldrb r0, [r6, #8]
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _0806D29A
	.align 2, 0
_0806D1F8: .4byte gCurTask
_0806D1FC: .4byte 0x03000042
_0806D200: .4byte gCamera
_0806D204:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	mov r0, r8
	adds r1, r5, #0
	adds r2, r4, #0
	bl sa2__sub_800C4FC
	cmp r0, #0
	beq _0806D22C
	ldr r0, _0806D228 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806D29A
	.align 2, 0
_0806D228: .4byte gCurTask
_0806D22C:
	adds r0, r6, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _0806D24C
	add r0, sp, #8
	str r0, [sp]
	ldr r0, _0806D248 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	b _0806D25A
	.align 2, 0
_0806D248: .4byte sa2__sub_801EE64
_0806D24C:
	add r1, sp, #8
	str r1, [sp]
	ldr r0, _0806D2AC @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
_0806D25A:
	movs r3, #8
	bl sa2__sub_801F07C
	adds r2, r6, #0
	adds r2, #0x42
	ldrh r1, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	adds r3, r6, #0
	adds r3, #0x46
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls _0806D28E
	strb r1, [r3]
	mov r0, r8
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _0806D2B0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806D2B4 @ =Task_KeroKero
	str r0, [r1, #8]
_0806D28E:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
_0806D29A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D2AC: .4byte sa2__sub_801EE64
_0806D2B0: .4byte gCurTask
_0806D2B4: .4byte Task_KeroKero

	thumb_func_start sub_806D2B8
sub_806D2B8: @ 0x0806D2B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0806D33C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov r8, r0
	ldr r0, _0806D340 @ =0x0300000C
	adds r6, r4, r0
	mov r1, r8
	ldr r1, [r1]
	str r1, [sp, #0xc]
	mov r3, r8
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
	lsrs r7, r2, #0x10
	asrs r2, r2, #0x10
	mov sb, r2
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	mov sl, r1
	ldr r0, _0806D344 @ =0x03000044
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r1, #0x80
	lsls r1, r1, #1
	bl Div
	ldr r3, _0806D348 @ =0x03000042
	adds r4, r4, r3
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806D34C
	mov r1, r8
	ldr r0, [r1, #0x3c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1, #0x3c]
	b _0806D356
	.align 2, 0
_0806D33C: .4byte gCurTask
_0806D340: .4byte 0x0300000C
_0806D344: .4byte 0x03000044
_0806D348: .4byte 0x03000042
_0806D34C:
	mov r3, r8
	ldr r0, [r3, #0x3c]
	ldr r1, _0806D3E4 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r3, #0x3c]
_0806D356:
	mov r2, r8
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	mov r3, r8
	adds r3, #0x42
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r3]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r4, _0806D3E8 @ =gCamera
	ldrh r2, [r4]
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r6, #0x16]
	ldrh r0, [r4, #2]
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x18]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	str r3, [sp, #0x10]
	cmp sb, r0
	bgt _0806D3B6
	adds r0, r1, #0
	subs r0, #0x80
	cmp sb, r0
	blt _0806D3B6
	movs r3, #2
	ldrsh r2, [r4, r3]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp sl, r0
	bgt _0806D3B6
	adds r0, r2, #0
	subs r0, #0x80
	cmp sl, r0
	bge _0806D3EC
_0806D3B6:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806D3DA
	movs r2, #0x18
	ldrsh r0, [r6, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806D3DA
	movs r3, #0x18
	ldrsh r1, [r6, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806D3EC
_0806D3DA:
	mov r1, r8
	ldrb r0, [r1, #8]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	b _0806D404
	.align 2, 0
_0806D3E4: .4byte 0xFFFFFF00
_0806D3E8: .4byte gCamera
_0806D3EC:
	lsls r4, r7, #0x10
	asrs r7, r4, #0x10
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sa2__sub_800C4FC
	mov sb, r4
	cmp r0, #0
	beq _0806D414
_0806D404:
	ldr r0, _0806D410 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806D4B4
	.align 2, 0
_0806D410: .4byte gCurTask
_0806D414:
	mov r0, r8
	adds r0, #0x4a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _0806D434
	add r0, sp, #8
	str r0, [sp]
	ldr r0, _0806D430 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #1
	b _0806D442
	.align 2, 0
_0806D430: .4byte sa2__sub_801EE64
_0806D434:
	add r1, sp, #8
	str r1, [sp]
	ldr r0, _0806D490 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
_0806D442:
	movs r3, #8
	bl sa2__sub_801F07C
	adds r2, r0, #0
	cmp r2, #0
	bgt _0806D4A8
	mov r1, r8
	adds r1, #0x46
	movs r0, #5
	strb r0, [r1]
	ldr r3, [sp, #0x10]
	ldrh r0, [r3]
	adds r0, r0, r2
	movs r5, #0
	strh r0, [r3]
	adds r4, r6, #0
	adds r4, #0x20
	movs r0, #1
	strb r0, [r4]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	strb r5, [r4]
	ldr r0, _0806D494 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806D498 @ =Task_KeroKero
	str r0, [r1, #8]
	ldr r0, _0806D49C @ =gPlayer
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r2, sb
	asrs r1, r2, #0x10
	cmp r0, r1
	ble _0806D4A0
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0806D4A6
	.align 2, 0
_0806D490: .4byte sa2__sub_801EE64
_0806D494: .4byte gCurTask
_0806D498: .4byte Task_KeroKero
_0806D49C: .4byte gPlayer
_0806D4A0:
	ldr r0, [r6, #0x10]
	ldr r1, _0806D4C4 @ =0xFFFFFBFF
	ands r0, r1
_0806D4A6:
	str r0, [r6, #0x10]
_0806D4A8:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0806D4B4:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D4C4: .4byte 0xFFFFFBFF
