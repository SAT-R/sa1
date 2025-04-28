.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
	thumb_func_start Task_HanabiiInit
Task_HanabiiInit: @ 0x0806D5E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, _0806D6BC @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0xc
	adds r7, r3, r0
	ldr r1, [r5]
	mov r8, r1
	ldrb r2, [r5, #8]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r2, _0806D6C0 @ =0x03000044
	adds r3, r3, r2
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r5, #0x3c]
	adds r0, r0, r1
	str r0, [r5, #0x3c]
	asrs r0, r0, #8
	adds r0, r6, r0
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x40]
	add r1, ip
	lsls r1, r1, #0x10
	ldr r3, _0806D6C4 @ =gCamera
	ldrh r2, [r3]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r0, r2
	strh r0, [r7, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r7, #0x18]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r6, r0
	bgt _0806D68A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r6, r0
	blt _0806D68A
	movs r6, #2
	ldrsh r2, [r3, r6]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _0806D68A
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _0806D6C8
_0806D68A:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806D6AE
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806D6AE
	movs r6, #0x18
	ldrsh r1, [r7, r6]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806D6C8
_0806D6AE:
	ldrb r0, [r5, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r4]
	bl TaskDestroy
	b _0806D7E8
	.align 2, 0
_0806D6BC: .4byte gCurTask
_0806D6C0: .4byte 0x03000044
_0806D6C4: .4byte gCamera
_0806D6C8:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	mov r6, sb
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sa2__sub_800C4FC
	cmp r0, #0
	beq _0806D6F0
	ldr r0, _0806D6EC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806D7E8
	.align 2, 0
_0806D6EC: .4byte gCurTask
_0806D6F0:
	str r0, [sp]
	ldr r0, _0806D760 @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	ldr r1, _0806D764 @ =gPlayer
	ldr r0, [r1]
	asrs r0, r0, #8
	subs r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	subs r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r6, r0, #0
	muls r6, r0, r6
	adds r0, r6, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r5, #0x3c]
	asrs r4, r0, #8
	mov r0, r8
	movs r3, #3
	ldrsb r3, [r0, r3]
	adds r0, r3, #1
	lsls r0, r0, #3
	cmp r4, r0
	bgt _0806D768
	ldr r1, [r7, #0x10]
	mvns r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	cmp r0, #0
	beq _0806D7DC
	orrs r1, r2
	str r1, [r7, #0x10]
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #0xa0
	strh r0, [r1]
	b _0806D7DC
	.align 2, 0
_0806D760: .4byte sa2__sub_801EE64
_0806D764: .4byte gPlayer
_0806D768:
	mov r6, r8
	ldrb r0, [r6, #5]
	adds r0, r3, r0
	lsls r0, r0, #3
	cmp r4, r0
	blt _0806D798
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0806D7DC
	ldr r0, _0806D790 @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r7, #0x10]
	adds r1, r5, #0
	adds r1, #0x44
	ldr r0, _0806D794 @ =0x0000FF60
	strh r0, [r1]
	b _0806D7DC
	.align 2, 0
_0806D790: .4byte 0xFFFFFBFF
_0806D794: .4byte 0x0000FF60
_0806D798:
	adds r3, r5, #0
	adds r3, #0x48
	ldrh r0, [r3]
	movs r6, #0
	ldrsh r4, [r3, r6]
	cmp r4, #0
	beq _0806D7AC
	subs r0, #1
	strh r0, [r3]
	b _0806D7DC
_0806D7AC:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	ldr r1, _0806D7F8 @ =0x0000270F
	cmp r0, r1
	bgt _0806D7DC
	adds r0, r5, #0
	adds r0, #0x46
	strh r4, [r0]
	movs r0, #0x64
	strh r0, [r3]
	adds r1, r7, #0
	adds r1, #0x20
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0806D7FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806D800 @ =sub_806D804
	str r0, [r1, #8]
_0806D7DC:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0806D7E8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D7F8: .4byte 0x0000270F
_0806D7FC: .4byte gCurTask
_0806D800: .4byte sub_806D804
.endif

	thumb_func_start sub_806D804
sub_806D804: @ 0x0806D804
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r3, _0806D8CC @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r7, r1, r0
	ldr r1, [r4]
	mov r8, r1
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov ip, r1
	ldr r0, [r4, #0x3c]
	asrs r0, r0, #8
	adds r0, r5, r0
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x40]
	add r1, ip
	lsls r1, r1, #0x10
	ldr r6, _0806D8D0 @ =gCamera
	ldrh r2, [r6]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r0, r0, r2
	strh r0, [r7, #0x16]
	ldrh r0, [r6, #2]
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r7, #0x18]
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r5, r0
	bgt _0806D89A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _0806D89A
	movs r0, #2
	ldrsh r2, [r6, r0]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	cmp ip, r0
	bgt _0806D89A
	adds r0, r2, #0
	subs r0, #0x80
	cmp ip, r0
	bge _0806D8D4
_0806D89A:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806D8BE
	movs r2, #0x18
	ldrsh r0, [r7, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _0806D8BE
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806D8D4
_0806D8BE:
	ldrb r0, [r4, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, [r3]
	bl TaskDestroy
	b _0806D992
	.align 2, 0
_0806D8CC: .4byte gCurTask
_0806D8D0: .4byte gCamera
_0806D8D4:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sa2__sub_800C4FC
	cmp r0, #0
	beq _0806D8FC
	ldr r0, _0806D8F8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806D992
	.align 2, 0
_0806D8F8: .4byte gCurTask
_0806D8FC:
	add r2, sp, #8
	str r2, [sp]
	ldr r0, _0806D94C @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, #0
	cmp r0, #7
	bne _0806D962
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806D950
	adds r0, r5, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	subs r1, #0x14
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_806D9AC
	b _0806D962
	.align 2, 0
_0806D94C: .4byte sa2__sub_801EE64
_0806D950:
	subs r0, r5, #6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	subs r1, #0x14
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_806D9AC
_0806D962:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x13
	bne _0806D986
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	adds r2, r7, #0
	adds r2, #0x21
	movs r0, #0xff
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x20
	strb r1, [r0]
	ldr r0, _0806D9A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806D9A8 @ =Task_HanabiiInit
	str r0, [r1, #8]
_0806D986:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0806D992:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D9A4: .4byte gCurTask
_0806D9A8: .4byte Task_HanabiiInit

	thumb_func_start sub_806D9AC
sub_806D9AC: @ 0x0806D9AC
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _0806DA60 @ =sub_806DA80
	movs r2, #0xc0
	lsls r2, r2, #6
	ldr r1, _0806DA64 @ =sub_806DC5C
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	lsls r0, r6, #0x10
	asrs r0, r0, #0xe
	str r0, [r4, #0x30]
	movs r1, #0
	mov sl, r1
	movs r0, #0
	mov sb, r0
	ldr r0, _0806DA68 @ =0x0000FC50
	strh r0, [r4, #0x34]
	ldr r1, _0806DA6C @ =0x03000036
	adds r0, r5, r1
	mov r1, sl
	strb r1, [r0]
	strh r6, [r4, #0x16]
	mov r0, r8
	strh r0, [r4, #0x18]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x1a]
	mov r1, sb
	strh r1, [r4, #8]
	subs r0, #0x9d
	strh r0, [r4, #0xa]
	ldr r1, _0806DA70 @ =0x03000020
	adds r0, r5, r1
	mov r1, sl
	strb r1, [r0]
	mov r0, sb
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x1c]
	ldr r0, _0806DA74 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0806DA78 @ =0x03000022
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0806DA7C @ =0x03000025
	adds r5, r5, r1
	mov r0, sl
	strb r0, [r5]
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
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806DA60: .4byte sub_806DA80
_0806DA64: .4byte sub_806DC5C
_0806DA68: .4byte 0x0000FC50
_0806DA6C: .4byte 0x03000036
_0806DA70: .4byte 0x03000020
_0806DA74: .4byte 0x03000021
_0806DA78: .4byte 0x03000022
_0806DA7C: .4byte 0x03000025

	thumb_func_start sub_806DA80
sub_806DA80: @ 0x0806DA80
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0806DB04 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r6, r4, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bge _0806DAA0
	adds r0, #3
_0806DAA0:
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x34]
	adds r0, #0x2c
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	ldrh r7, [r4, #0x16]
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldrh r0, [r4, #0x18]
	mov r8, r0
	movs r0, #0x18
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	bl sub_800B798
	ldr r3, _0806DB08 @ =gCamera
	ldrh r0, [r4, #0x16]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r2, [r4, #0x18]
	ldrh r1, [r3, #2]
	subs r2, r2, r1
	strh r2, [r4, #0x18]
	adds r0, #0x3c
	lsls r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806DAFA
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x3c
	cmp r0, #0
	blt _0806DAFA
	lsls r1, r2, #0x10
	movs r0, #0x96
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _0806DB0C
_0806DAFA:
	ldr r0, _0806DB04 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806DB48
	.align 2, 0
_0806DB04: .4byte gCurTask
_0806DB08: .4byte gCamera
_0806DB0C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0806DB42
	movs r0, #0xd0
	lsls r0, r0, #1
	strh r0, [r4, #0xa]
	ldr r0, _0806DB54 @ =0x03000020
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0806DB58 @ =0x03000021
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0806DB5C @ =sub_806DB60
	str r0, [r1, #8]
_0806DB42:
	strh r7, [r6, #0x16]
	mov r1, r8
	strh r1, [r6, #0x18]
_0806DB48:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DB54: .4byte 0x03000020
_0806DB58: .4byte 0x03000021
_0806DB5C: .4byte sub_806DB60

	thumb_func_start sub_806DB60
sub_806DB60: @ 0x0806DB60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0806DBF4 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r5, r4, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bge _0806DB7C
	adds r0, #3
_0806DB7C:
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	ldrh r7, [r4, #0x16]
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldrh r0, [r4, #0x18]
	mov r8, r0
	movs r0, #0x18
	ldrsh r2, [r4, r0]
	adds r0, r4, #0
	bl sub_800B798
	ldr r2, _0806DBF8 @ =gCamera
	ldrh r0, [r4, #0x16]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	ldr r0, _0806DBFC @ =0x03000036
	adds r1, r6, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	ldrh r0, [r4, #0x16]
	adds r0, #0x3c
	lsls r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806DBE8
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x3c
	cmp r0, #0
	blt _0806DBE8
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	bgt _0806DBE8
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bls _0806DC00
_0806DBE8:
	ldr r0, _0806DBF4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806DC48
	.align 2, 0
_0806DBF4: .4byte gCurTask
_0806DBF8: .4byte gCamera
_0806DBFC: .4byte 0x03000036
_0806DC00:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	ldr r1, _0806DC54 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	ldr r1, _0806DC58 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
	strh r7, [r5, #0x16]
	mov r1, r8
	strh r1, [r5, #0x18]
_0806DC48:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DC54: .4byte 0xFFFFF7FF
_0806DC58: .4byte 0xFFFFFBFF

	thumb_func_start sub_806DC5C
sub_806DC5C: @ 0x0806DC5C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
