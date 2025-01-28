.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start StageBgUpdate_Zone3Acts12
StageBgUpdate_Zone3Acts12: @ 0x0803EAC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	adds r4, r1, #0
	ldr r5, _0803ED34 @ =gCamera
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	subs r7, r7, r0
	movs r2, #0x12
	ldrsh r0, [r5, r2]
	subs r4, r4, r0
	ldr r0, _0803ED38 @ =gRefCollision
	ldr r0, [r0]
	mov r8, r0
	lsls r0, r7, #4
	mov r3, r8
	ldrh r1, [r3, #0x1c]
	subs r1, #0xf0
	bl Div
	ldr r6, _0803ED3C @ =gBgScrollRegs
	mov sb, r0
	mov r0, sb
	strh r0, [r5, #0x28]
	strh r0, [r6, #0xc]
	lsls r0, r4, #6
	lsls r4, r4, #5
	adds r0, r0, r4
	mov r2, r8
	ldrh r1, [r2, #0x1e]
	subs r1, #0xa0
	bl Div
	mov r8, r0
	mov r3, r8
	strh r3, [r5, #0x2a]
	strh r3, [r6, #0xe]
	mov r5, r8
	lsls r3, r5, #0x10
	adds r4, r3, #0
	mov r0, sb
	orrs r4, r0
	ldr r1, _0803ED40 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r1, _0803ED44 @ =sa2__gUnknown_03002878
	ldr r0, _0803ED48 @ =0x0400001C
	str r0, [r1]
	ldr r0, _0803ED4C @ =sa2__gUnknown_03002A80
	strb r2, [r0]
	ldr r0, _0803ED50 @ =gBgOffsetsHBlank
	ldr r6, [r0]
	str r4, [sp, #8]
	ldr r0, _0803ED54 @ =0x040000D4
	add r1, sp, #8
	str r1, [r0]
	str r6, [r0, #4]
	ldr r1, _0803ED58 @ =0x850000A0
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	asrs r0, r7, #6
	mov r2, sb
	adds r4, r2, r0
	movs r0, #0xff
	ands r4, r0
	orrs r4, r3
	movs r0, #0x86
	subs r3, r0, r5
	lsls r0, r3, #2
	adds r6, r6, r0
	movs r5, #0
	cmp r3, #0
	blt _0803EB64
	cmp r3, #0x9f
	bgt _0803EB74
_0803EB62:
	stm r6!, {r4}
_0803EB64:
	adds r5, #1
	cmp r5, #5
	bgt _0803EB74
	adds r0, r3, r5
	cmp r0, #0
	blt _0803EB64
	cmp r0, #0x9f
	ble _0803EB62
_0803EB74:
	ldr r2, _0803ED50 @ =gBgOffsetsHBlank
	ldr r6, [r2]
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r0, r7, #5
	mov r5, sb
	adds r4, r5, r0
	movs r0, #0xff
	ands r4, r0
	orrs r4, r1
	movs r0, #0x86
	subs r3, r0, r3
	lsls r0, r3, #2
	adds r6, r6, r0
	movs r5, #0
	mov ip, r2
	asrs r2, r7, #4
	asrs r0, r7, #3
	mov sl, r0
	asrs r0, r7, #2
	str r0, [sp, #0xc]
	asrs r7, r7, #1
	cmp r3, #0
	blt _0803EBAA
	cmp r3, #0x9f
	bgt _0803EBBA
_0803EBA8:
	stm r6!, {r4}
_0803EBAA:
	adds r5, #1
	cmp r5, #5
	bgt _0803EBBA
	adds r0, r3, r5
	cmp r0, #0
	blt _0803EBAA
	cmp r0, #0x9f
	ble _0803EBA8
_0803EBBA:
	mov r3, ip
	ldr r6, [r3]
	mov r5, sb
	adds r4, r5, r2
	movs r0, #0xff
	ands r4, r0
	orrs r4, r1
	movs r0, #0x8c
	mov r2, r8
	subs r3, r0, r2
	lsls r0, r3, #2
	adds r6, r6, r0
	movs r5, #0
	cmp r3, #0
	blt _0803EBDE
	cmp r3, #0x9f
	bgt _0803EBEE
_0803EBDC:
	stm r6!, {r4}
_0803EBDE:
	adds r5, #1
	cmp r5, #0xb
	bgt _0803EBEE
	adds r0, r3, r5
	cmp r0, #0
	blt _0803EBDE
	cmp r0, #0x9f
	ble _0803EBDC
_0803EBEE:
	mov r3, ip
	ldr r6, [r3]
	mov r4, sb
	add r4, sl
	movs r0, #0xff
	ands r4, r0
	orrs r4, r1
	movs r0, #0x98
	mov r5, r8
	subs r3, r0, r5
	lsls r0, r3, #2
	adds r6, r6, r0
	movs r5, #0
	cmp r3, #0
	blt _0803EC12
	cmp r3, #0x9f
	bgt _0803EC22
_0803EC10:
	stm r6!, {r4}
_0803EC12:
	adds r5, #1
	cmp r5, #0xf
	bgt _0803EC22
	adds r0, r3, r5
	cmp r0, #0
	blt _0803EC12
	cmp r0, #0x9f
	ble _0803EC10
_0803EC22:
	mov r0, ip
	ldr r6, [r0]
	ldr r4, [sp, #0xc]
	add r4, sb
	movs r0, #0xff
	ands r4, r0
	orrs r4, r1
	movs r0, #0xa8
	mov r2, r8
	subs r3, r0, r2
	lsls r0, r3, #2
	adds r6, r6, r0
	movs r5, #0
	cmp r3, #0
	blt _0803EC46
	cmp r3, #0x9f
	bgt _0803EC56
_0803EC44:
	stm r6!, {r4}
_0803EC46:
	adds r5, #1
	cmp r5, #0x17
	bgt _0803EC56
	adds r0, r3, r5
	cmp r0, #0
	blt _0803EC46
	cmp r0, #0x9f
	ble _0803EC44
_0803EC56:
	mov r3, ip
	ldr r6, [r3]
	mov r5, sb
	adds r4, r5, r7
	movs r0, #0xff
	ands r4, r0
	orrs r4, r1
	movs r0, #0xc0
	mov r1, r8
	subs r3, r0, r1
	lsls r0, r3, #2
	adds r6, r6, r0
	movs r5, #0
	cmp r3, #0
	blt _0803EC7A
	cmp r3, #0x9f
	bgt _0803EC8A
_0803EC78:
	stm r6!, {r4}
_0803EC7A:
	adds r5, #1
	cmp r5, #0x3f
	bgt _0803EC8A
	adds r0, r3, r5
	cmp r0, #0
	blt _0803EC7A
	cmp r0, #0x9f
	ble _0803EC78
_0803EC8A:
	ldr r2, _0803ED5C @ =gStageTime
	ldr r0, [r2]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0803ED22
	ldr r5, _0803ED60 @ =gPseudoRandom
	ldr r0, [r5]
	ldr r3, _0803ED64 @ =0x00196225
	muls r0, r3, r0
	ldr r2, _0803ED68 @ =0x3C6EF35F
	adds r1, r0, r2
	str r1, [r5]
	movs r0, #0xe0
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0803ED22
	muls r1, r3, r1
	adds r1, r1, r2
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	lsls r0, r0, #8
	adds r2, r1, #0
	muls r2, r3, r2
	ldr r1, _0803ED68 @ =0x3C6EF35F
	adds r2, r2, r1
	movs r1, #0xfe
	lsls r1, r1, #7
	ands r1, r2
	lsrs r1, r1, #8
	subs r1, #0x20
	adds r4, r2, #0
	muls r4, r3, r4
	ldr r2, _0803ED68 @ =0x3C6EF35F
	adds r4, r4, r2
	str r4, [r5]
	movs r2, #0x80
	lsls r2, r2, #1
	ands r4, r2
	lsrs r4, r4, #6
	ldr r2, _0803ED6C @ =gUnknown_084ADD38
	adds r4, r4, r2
	ldr r3, _0803ED70 @ =0xFFF80000
	adds r0, r0, r3
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _0803ED74 @ =sub_803EA24
	str r2, [sp]
	ldr r2, _0803ED78 @ =TaskDestructor_MultiplayerSpriteTask
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl CreateMultiplayerSpriteTask
	ldrh r5, [r0, #6]
	ldr r0, _0803ED7C @ =0x03000018
	adds r6, r5, r0
	ldrb r0, [r4, #3]
	bl VramMalloc
	str r0, [r6, #4]
	ldrh r0, [r4]
	strh r0, [r6, #0xa]
	ldrb r0, [r4, #2]
	ldr r1, _0803ED80 @ =0x03000038
	adds r5, r5, r1
	strb r0, [r5]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r6, #0x10]
_0803ED22:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803ED34: .4byte gCamera
_0803ED38: .4byte gRefCollision
_0803ED3C: .4byte gBgScrollRegs
_0803ED40: .4byte gFlags
_0803ED44: .4byte sa2__gUnknown_03002878
_0803ED48: .4byte 0x0400001C
_0803ED4C: .4byte sa2__gUnknown_03002A80
_0803ED50: .4byte gBgOffsetsHBlank
_0803ED54: .4byte 0x040000D4
_0803ED58: .4byte 0x850000A0
_0803ED5C: .4byte gStageTime
_0803ED60: .4byte gPseudoRandom
_0803ED64: .4byte 0x00196225
_0803ED68: .4byte 0x3C6EF35F
_0803ED6C: .4byte gUnknown_084ADD38
_0803ED70: .4byte 0xFFF80000
_0803ED74: .4byte sub_803EA24
_0803ED78: .4byte TaskDestructor_MultiplayerSpriteTask
_0803ED7C: .4byte 0x03000018
_0803ED80: .4byte 0x03000038
