.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_TrackAirCorner
CreateEntity_TrackAirCorner: @ 0x080968B4
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
	mov sb, r6
	ldr r0, _08096954 @ =Task_TrackAirCorner
	movs r7, #0x80
	lsls r7, r7, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x3c
	adds r2, r7, #0
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r1, _08096958 @ =0x0300000C
	adds r1, r1, r2
	mov ip, r1
	movs r3, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r6, r8
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #8]
	mov r1, sb
	strb r1, [r0, #9]
	ldrb r0, [r6]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	mov r6, ip
	strh r0, [r6, #0x16]
	mov r1, r8
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r6, #0x18]
	movs r6, #2
	rsbs r6, r6, #0
	adds r0, r6, #0
	strb r0, [r1]
	ldr r0, _0809695C @ =0x06012680
	mov r1, ip
	str r0, [r1, #4]
	movs r0, #0x94
	lsls r0, r0, #2
	strh r0, [r1, #0xa]
	ldr r6, _08096960 @ =0x0300002C
	adds r2, r2, r6
	strb r3, [r2]
	str r7, [r1, #0x10]
	mov r1, r8
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _08096964
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r7
	mov r3, ip
	str r0, [r3, #0x10]
	b _08096988
	.align 2, 0
_08096954: .4byte Task_TrackAirCorner
_08096958: .4byte 0x0300000C
_0809695C: .4byte 0x06012680
_08096960: .4byte 0x0300002C
_08096964:
	cmp r0, #2
	bne _08096974
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r7
	mov r6, ip
	str r0, [r6, #0x10]
	b _08096988
_08096974:
	cmp r0, #3
	bne _08096988
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r7
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #0x10]
_08096988:
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	mov r3, ip
	strh r0, [r3, #0x1a]
	strh r1, [r3, #8]
	strh r1, [r3, #0x14]
	strh r1, [r3, #0x1c]
	mov r1, ip
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	mov r0, ip
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_TrackAirCorner
Task_TrackAirCorner: @ 0x080969C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08096A30 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08096A34 @ =0x0300000C
	adds r5, r1, r0
	mov r1, r8
	ldr r1, [r1]
	str r1, [sp]
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
	ldr r3, _08096A38 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	mov sl, r4
	asrs r2, r2, #0x10
	subs r2, r2, r0
	strh r2, [r5, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	movs r4, #0
	ldr r7, _08096A3C @ =gUnknown_03005AB0
	ldr r6, _08096A40 @ =gPlayer
_08096A26:
	cmp r4, #0
	beq _08096A44
	ldr r0, [r7, #0x10]
	b _08096A46
	.align 2, 0
_08096A30: .4byte gCurTask
_08096A34: .4byte 0x0300000C
_08096A38: .4byte gCamera
_08096A3C: .4byte gUnknown_03005AB0
_08096A40: .4byte gPlayer
_08096A44:
	ldr r0, [r6, #0x10]
_08096A46:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08096ABA
	cmp r4, #0
	beq _08096A68
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08096ABA
	ldr r3, _08096A64 @ =gPlayer
	b _08096A76
	.align 2, 0
_08096A64: .4byte gPlayer
_08096A68:
	ldr r1, [r6, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	ldr r3, _08096AA8 @ =gPlayer
	cmp r1, #0
	bne _08096ABA
_08096A76:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r4, #0
	beq _08096A88
	ldr r3, _08096AAC @ =gUnknown_03005AB0
_08096A88:
	adds r0, r5, #0
	bl sub_800B2BC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _08096ABA
	cmp r4, #0
	beq _08096AB0
	ldr r0, [r7, #4]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r7, #4]
	b _08096ABA
	.align 2, 0
_08096AA8: .4byte gPlayer
_08096AAC: .4byte gUnknown_03005AB0
_08096AB0:
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r6, #4]
_08096ABA:
	adds r4, #1
	ldr r0, _08096B00 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blt _08096A26
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08096AEC
	movs r2, #0x18
	ldrsh r0, [r5, r2]
	adds r0, #0x80
	cmp r0, #0
	blt _08096AEC
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08096B08
_08096AEC:
	mov r4, r8
	ldrb r0, [r4, #8]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _08096B04 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08096B0E
	.align 2, 0
_08096B00: .4byte gUnknown_03005088
_08096B04: .4byte gCurTask
_08096B08:
	adds r0, r5, #0
	bl DisplaySprite
_08096B0E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
