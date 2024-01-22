.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_RunWheel
CreateEntity_RunWheel: @ 0x0808E77C
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
	ldr r0, _0808E87C @ =Task_RunWheel
	ldr r1, _0808E880 @ =TaskDestructor_RunWheel
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
_0808E87C: .4byte Task_RunWheel
_0808E880: .4byte TaskDestructor_RunWheel
_0808E884: .4byte 0x0300000C
_0808E888: .4byte 0x0300004E
_0808E88C: .4byte 0x0300004C
_0808E890: .4byte 0x0000021E
_0808E894: .4byte 0x0300002C
_0808E898: .4byte 0x0300002D
_0808E89C: .4byte 0x03000031

	thumb_func_start Task_RunWheel
Task_RunWheel: @ 0x0808E8A0
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
	ldr r5, _0808E9FC @ =gPlayer
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
_0808E9FC: .4byte gPlayer
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

	thumb_func_start TaskDestructor_RunWheel
TaskDestructor_RunWheel: @ 0x0808F0B4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
