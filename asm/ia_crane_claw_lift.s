.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start CreateEntity_Lift
CreateEntity_Lift: @ 0x0808A900
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
	ldr r1, _0808AA28 @ =TaskDestructor_808B254
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
_0808AA28: .4byte TaskDestructor_808B254
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
	ldr r0, _0808ABDC @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp sb, r0
	bge _0808AB70
_0808AB00:
	ldr r5, _0808ABE0 @ =gPlayer
	mov r0, sb
	cmp r0, #0
	beq _0808AB0A
	ldr r5, _0808ABE4 @ =gPartner
_0808AB0A:
	ldr r1, [sp, #4]
	lsls r4, r1, #0x10
	mov r0, r8
	ldr r2, [sp, #0xc]
	asrs r1, r2, #0x10
	asrs r2, r4, #0x10
	adds r3, r5, #0
	bl Coll_Player_Entity_Intersection
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
	bl Player_TransitionCancelFlyingAndBoost
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
_0808ABDC: .4byte gNumSingleplayerCharacters
_0808ABE0: .4byte gPlayer
_0808ABE4: .4byte gPartner
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
	ldr r2, _0808AD20 @ =gPlayer
	cmp r0, #0
	beq _0808ACF0
	ldr r2, _0808AD24 @ =gPartner
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
_0808AD20: .4byte gPlayer
_0808AD24: .4byte gPartner
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
	ldr r1, _0808ADF0 @ =gPlayer
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
_0808ADF0: .4byte gPlayer
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
	ldr r2, _0808AFAC @ =gPlayer
	adds r4, r2, #0
	cmp r0, #0
	beq _0808AF48
	ldr r4, _0808AFB0 @ =gPartner
_0808AF48:
	ldr r5, [r4, #0x10]
	movs r6, #0x80
	ands r6, r5
	cmp r6, #0
	bne _0808AFDA
	ldr r0, _0808AFB4 @ =gPlayerControls
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
	bl Player_TransitionCancelFlyingAndBoost
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
_0808AFAC: .4byte gPlayer
_0808AFB0: .4byte gPartner
_0808AFB4: .4byte gPlayerControls
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

	thumb_func_start TaskDestructor_CraneClaw
TaskDestructor_CraneClaw: @ 0x0808B230
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

	thumb_func_start TaskDestructor_808B254
TaskDestructor_808B254: @ 0x0808B254
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
