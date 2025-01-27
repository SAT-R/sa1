.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start StageBgUpdate_Zone1Acts12
StageBgUpdate_Zone1Acts12: @ 0x0803E78C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _0803E854 @ =gCamera
	movs r1, #0x10
	ldrsh r0, [r2, r1]
	subs r4, r4, r0
	ldr r0, _0803E858 @ =gStageBackgroundsRam + 0xC0
	ldr r3, _0803E85C @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r2, #0x28]
	strh r1, [r3, #0xc]
	strh r1, [r2, #0x2a]
	strh r1, [r3, #0xe]
	strh r1, [r0, #0x30]
	strh r1, [r0, #0x32]
	bl DrawBackground
	ldr r1, _0803E860 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r1, _0803E864 @ =sa2__gUnknown_03002878
	ldr r0, _0803E868 @ =0x0400001C
	str r0, [r1]
	ldr r0, _0803E86C @ =sa2__gUnknown_03002A80
	strb r2, [r0]
	ldr r0, _0803E870 @ =gBgOffsetsHBlank
	ldr r1, [r0]
	ldr r6, _0803E874 @ =gStageTime
	movs r5, #0xff
	movs r3, #0
	movs r2, #7
_0803E7CE:
	ldr r0, [r6]
	lsrs r0, r0, #4
	ands r0, r5
	strh r0, [r1]
	adds r1, #2
	strh r3, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _0803E7CE
	ldr r6, _0803E874 @ =gStageTime
	movs r5, #0xff
	movs r3, #0
	movs r2, #0xf
_0803E7EA:
	ldr r0, [r6]
	lsrs r0, r0, #5
	ands r0, r5
	strh r0, [r1]
	adds r1, #2
	strh r3, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _0803E7EA
	movs r2, #0x18
	ldr r6, _0803E874 @ =gStageTime
	movs r5, #0xff
	movs r3, #0
_0803E806:
	ldr r0, [r6]
	lsrs r0, r0, #6
	ands r0, r5
	strh r0, [r1]
	adds r1, #2
	strh r3, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x27
	ble _0803E806
	cmp r2, #0x57
	bgt _0803E82E
	movs r0, #0
_0803E820:
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x57
	ble _0803E820
_0803E82E:
	cmp r2, #0x9f
	bgt _0803E84E
	movs r5, #0
	adds r0, r2, #0
	subs r0, #0x56
	adds r3, r0, #0
	muls r3, r4, r3
_0803E83C:
	asrs r0, r3, #8
	strh r0, [r1]
	adds r1, #2
	strh r5, [r1]
	adds r1, #2
	adds r3, r3, r4
	adds r2, #1
	cmp r2, #0x9f
	ble _0803E83C
_0803E84E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803E854: .4byte gCamera
_0803E858: .4byte gStageBackgroundsRam + 0xC0
_0803E85C: .4byte gBgScrollRegs
_0803E860: .4byte gFlags
_0803E864: .4byte sa2__gUnknown_03002878
_0803E868: .4byte 0x0400001C
_0803E86C: .4byte sa2__gUnknown_03002A80
_0803E870: .4byte gBgOffsetsHBlank
_0803E874: .4byte gStageTime

	thumb_func_start StageBgUpdate_Zone2_Interior
StageBgUpdate_Zone2_Interior: @ 0x0803E878
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov ip, r0          @ ip = x
	mov r8, r1          @ r8 = y
	ldr r1, _0803EA08 @ =gCamera
	ldr r2, _0803EA0C @ =gBgScrollRegs
	asrs r7, r0, #2
	movs r0, #0xff
	ands r7, r0
	strh r7, [r1, #0x28]
	strh r7, [r2, #0xc]
	mov r4, r8
	asrs r3, r4, #2
	ands r3, r0
	strh r3, [r1, #0x2a]
	strh r3, [r2, #0xe]
	ldr r1, _0803EA10 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r1, _0803EA14 @ =sa2__gUnknown_03002878
	ldr r0, _0803EA18 @ =0x0400001C
	str r0, [r1]
	ldr r0, _0803EA1C @ =sa2__gUnknown_03002A80
	strb r2, [r0]
	ldr r0, _0803EA20 @ =gBgOffsetsHBlank
	ldr r5, [r0]
	movs r6, #0x3f
	ands r6, r3
	movs r4, #0
	lsls r3, r6, #0x10
	orrs r3, r7
	rsbs r2, r6, #0
	adds r1, r2, #0
	adds r1, #0x40
	cmp r2, r1
	bge _0803E8DA
	adds r0, r1, #0
_0803E8CE:
	cmp r2, #0
	blt _0803E8D4
	stm r5!, {r3}
_0803E8D4:
	adds r2, #1
	cmp r2, r0
	blt _0803E8CE
_0803E8DA:
	adds r4, #0x40
	subs r0, r6, r4
	lsls r3, r0, #0x10
	orrs r3, r7
	rsbs r1, r6, #0
	adds r0, r4, #0
	adds r0, #0x40
	adds r0, r1, r0
	mov sb, r1
	mov r1, ip
	asrs r1, r1, #1
	mov sl, r1
	mov r1, r8
	asrs r1, r1, #1
	str r1, [sp, #8]
	mov r1, ip
	lsls r1, r1, #1
	str r1, [sp]
	mov r1, r8
	lsls r1, r1, #1
	str r1, [sp, #4]
	cmp r2, r0
	bge _0803E916
	adds r1, r0, #0
	subs r2, r1, r2
_0803E90C:
	stm r5!, {r3}
	subs r2, #1
	cmp r2, #0
	bne _0803E90C
	adds r2, r1, #0
_0803E916:
	adds r4, #0x40
	subs r0, r6, r4
	lsls r3, r0, #0x10
	orrs r3, r7
	adds r0, r4, #0
	adds r0, #0x40
	add r0, sb
	cmp r2, r0
	bge _0803E934
_0803E928:
	cmp r2, #0x9f
	bgt _0803E92E
	stm r5!, {r3}
_0803E92E:
	adds r2, #1
	cmp r2, r0
	blt _0803E928
_0803E934:
	adds r4, #0x40
	subs r0, r6, r4
	lsls r3, r0, #0x10
	orrs r3, r7
	adds r0, r4, #0
	adds r0, #0x40
	add r0, sb
	cmp r2, r0
	bge _0803E952
_0803E946:
	cmp r2, #0x9f
	bgt _0803E94C
	stm r5!, {r3}
_0803E94C:
	adds r2, #1
	cmp r2, r0
	blt _0803E946
_0803E952:
	movs r3, #0
	mov sb, sl
	movs r4, #0xff
	mov ip, r4
	ldr r0, [sp, #8]
	mov r8, r0
	ldr r0, _0803EA20 @ =gBgOffsetsHBlank
	ldr r5, [r0]
_0803E962:
	lsls r0, r3, #5
	mov r1, sb
	adds r7, r1, r0
	mov r4, ip
	ands r7, r4
	lsls r0, r3, #6
	add r0, r8
	ands r0, r4
	rsbs r1, r0, #0
	ands r1, r4
	adds r2, r1, #0
	subs r2, #0x10
	adds r6, r3, #1
	cmp r2, r1
	bge _0803E9A0
	movs r0, #0x50
	subs r0, r0, r1
	lsls r4, r0, #0x10
	lsls r0, r2, #2
	adds r0, r0, r5
_0803E98A:
	cmp r2, #0
	blt _0803E998
	cmp r2, #0x9f
	bgt _0803E998
	adds r3, r4, #0
	orrs r3, r7
	str r3, [r0]
_0803E998:
	adds r0, #4
	adds r2, #1
	cmp r2, r1
	blt _0803E98A
_0803E9A0:
	adds r3, r6, #0
	cmp r6, #2
	ble _0803E962
	ldr r0, [sp]
	movs r1, #3
	bl __divsi3
	lsls r5, r6, #5
	adds r7, r0, r5
	movs r4, #0xff
	ands r7, r4
	ldr r0, [sp, #4]
	movs r1, #3
	bl __divsi3
	lsls r1, r6, #6
	adds r0, r0, r1
	adds r0, r0, r5
	ands r0, r4
	rsbs r1, r0, #0
	ands r1, r4
	ldr r0, _0803EA20 @ =gBgOffsetsHBlank
	ldr r5, [r0]
	adds r2, r1, #0
	subs r2, #0x18
	cmp r2, r1
	bge _0803E9F6
	movs r0, #0x68
	subs r0, r0, r1
	lsls r4, r0, #0x10
	lsls r0, r2, #2
	adds r0, r0, r5
_0803E9E0:
	cmp r2, #0
	blt _0803E9EE
	cmp r2, #0x9f
	bgt _0803E9EE
	adds r3, r4, #0
	orrs r3, r7
	str r3, [r0]
_0803E9EE:
	adds r0, #4
	adds r2, #1
	cmp r2, r1
	blt _0803E9E0
_0803E9F6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EA08: .4byte gCamera
_0803EA0C: .4byte gBgScrollRegs
_0803EA10: .4byte gFlags
_0803EA14: .4byte sa2__gUnknown_03002878
_0803EA18: .4byte 0x0400001C
_0803EA1C: .4byte sa2__gUnknown_03002A80
_0803EA20: .4byte gBgOffsetsHBlank

	thumb_func_start sub_803EA24
sub_803EA24: @ 0x0803EA24
	push {r4, r5, r6, lr}
	ldr r0, _0803EA4C @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x18
	adds r5, r1, r0
	ldr r6, _0803EA50 @ =gCamera
	ldr r2, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _0803EA54
	adds r0, r3, #0
	bl TaskDestroy
	b _0803EAB2
	.align 2, 0
_0803EA4C: .4byte gCurTask
_0803EA50: .4byte gCamera
_0803EA54:
	ldr r0, [r4]
	ldrh r1, [r6, #0x28]
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldr r0, [r4, #4]
	ldrh r1, [r6, #0x2a]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	ldr r0, _0803EAB8 @ =0xFFF3FFFF
	ands r2, r0
	str r2, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, [r5, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	ldr r1, _0803EABC @ =0xFFFFF3FF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r0, r4
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	eors r0, r4
	movs r1, #0x80
	lsls r1, r1, #4
	eors r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	eors r0, r4
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
_0803EAB2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803EAB8: .4byte 0xFFF3FFFF
_0803EABC: .4byte 0xFFFFF3FF

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

	thumb_func_start StageBgUpdate_Zone4Acts12
StageBgUpdate_Zone4Acts12: @ 0x0803ED84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0803EE24 @ =gCamera
	mov sb, r0
	ldr r1, _0803EE28 @ =gBldRegs
	ldr r0, _0803EE2C @ =0x00003F41
	strh r0, [r1]
	ldr r0, _0803EE30 @ =0x00001010
	strh r0, [r1, #2]
	mov r1, sb
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	subs r4, r4, r0
	movs r2, #0x12
	ldrsh r0, [r1, r2]
	subs r5, r5, r0
	ldr r0, _0803EE34 @ =gStageBackgroundsRam 
	mov r8, r0
	ldr r6, _0803EE38 @ =gBgScrollRegs
	asrs r0, r4, #2
	adds r0, r4, r0
	ldr r1, _0803EE3C @ =gStageTime
	ldr r2, [r1]
	lsrs r1, r2, #2
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	strh r0, [r6]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r7, r0, #0
	adds r0, r5, r7
	subs r0, r0, r2
	ands r0, r1
	strh r0, [r6, #2]
	mov r0, r8
	bl DrawBackground
	mov r0, r8
	bl UpdateBgAnimationTiles
	ldr r0, _0803EE40 @ =gRefCollision
	ldr r0, [r0]
	mov r8, r0
	lsls r4, r4, #4
	ldrh r1, [r0, #0x1c]
	subs r1, #0xf0
	adds r0, r4, #0
	bl Div
	mov r1, sb
	strh r0, [r1, #0x28]
	strh r0, [r6, #0xc]
	lsls r0, r5, #8
	lsls r1, r5, #6
	adds r0, r0, r1
	lsls r5, r5, #5
	adds r0, r0, r5
	mov r2, r8
	ldrh r1, [r2, #0x1e]
	subs r1, #0xa0
	bl Div
	mov r1, sb
	strh r0, [r1, #0x2a]
	strh r0, [r6, #0xe]
	ldr r0, _0803EE44 @ =gWater
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EE50
	ldr r2, _0803EE48 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0803EE4C @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	b _0803EE58
	.align 2, 0
_0803EE24: .4byte gCamera
_0803EE28: .4byte gBldRegs
_0803EE2C: .4byte 0x00003F41
_0803EE30: .4byte 0x00001010
_0803EE34: .4byte gStageBackgroundsRam 
_0803EE38: .4byte gBgScrollRegs
_0803EE3C: .4byte gStageTime
_0803EE40: .4byte gRefCollision
_0803EE44: .4byte gWater
_0803EE48: .4byte gDispCnt
_0803EE4C: .4byte 0x0000FEFF
_0803EE50:
	ldr r1, _0803EE78 @ =gDispCnt
	ldrh r0, [r1]
	orrs r0, r7
	strh r0, [r1]
_0803EE58:
	ldr r0, _0803EE7C @ =gWater
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EE6C
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0803EE80 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
_0803EE6C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EE78: .4byte gDispCnt
_0803EE7C: .4byte gWater
_0803EE80: .4byte 0x0000FEFF

	thumb_func_start StageBgUpdate_Zone6Act1
StageBgUpdate_Zone6Act1: @ 0x0803EE84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r3, r0, #0
	ldr r0, _0803EEF4 @ =gCamera
	mov r8, r0
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	subs r3, r3, r0
	mov r2, r8
	ldrh r4, [r2, #0x26]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _0803EEB0
	b _0803F3F0
_0803EEB0:
	ldr r0, _0803EEF8 @ =gUnknown_03005148
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803EF0C
	ldr r2, _0803EEFC @ =gBgCntRegs
	ldrh r1, [r2, #6]
	ldr r0, _0803EF00 @ =0x00003FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	orrs r0, r1
	ldr r1, _0803EF04 @ =0x0000E0FF
	ands r0, r1
	movs r5, #0xe0
	lsls r5, r5, #5
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r0, r3, #4
	movs r1, #0xcc
	lsls r1, r1, #2
	bl Div
	ldr r1, _0803EF08 @ =gBgScrollRegs
	mov r6, r8
	strh r0, [r6, #0x28]
	strh r0, [r1, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x2a]
	strh r0, [r1, #0xe]
	b _0803F3F0
	.align 2, 0
_0803EEF4: .4byte gCamera
_0803EEF8: .4byte gUnknown_03005148
_0803EEFC: .4byte gBgCntRegs
_0803EF00: .4byte 0x00003FFF
_0803EF04: .4byte 0x0000E0FF
_0803EF08: .4byte gBgScrollRegs
_0803EF0C:
	cmp r0, #2
	bhi _0803EFFC
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r5, #0
	ands r0, r4
	cmp r0, #0
	bne _0803EF80
	ldr r2, _0803EF68 @ =gBgCntRegs
	ldrh r1, [r2, #6]
	ldr r0, _0803EF6C @ =0x00003FFF
	ands r0, r1
	orrs r0, r5
	ldr r1, _0803EF70 @ =0x0000E0FF
	ands r0, r1
	movs r4, #0xe0
	lsls r4, r4, #5
	adds r1, r4, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r0, r3, #4
	movs r1, #0xcc
	lsls r1, r1, #2
	bl Div
	ldr r2, _0803EF74 @ =gBgScrollRegs
	mov r6, r8
	strh r0, [r6, #0x28]
	strh r0, [r2, #0xc]
	ldr r0, _0803EF78 @ =gStageTime
	ldr r0, [r0]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	ldr r1, _0803EF7C @ =0x000001FF
	ands r0, r1
	movs r3, #0xe
	ldrsh r1, [r2, r3]
	cmp r0, r1
	beq _0803EF5E
	b _0803F3F0
_0803EF5E:
	ldrh r1, [r6, #0x26]
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r6, #0x26]
	b _0803F3F0
	.align 2, 0
_0803EF68: .4byte gBgCntRegs
_0803EF6C: .4byte 0x00003FFF
_0803EF70: .4byte 0x0000E0FF
_0803EF74: .4byte gBgScrollRegs
_0803EF78: .4byte gStageTime
_0803EF7C: .4byte 0x000001FF
_0803EF80:
	ldr r3, _0803EFD4 @ =gStageTime
	ldr r0, [r3]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	ldr r4, _0803EFD8 @ =0x000001FF
	ands r0, r4
	ldr r5, _0803EFDC @ =gBgCntRegs
	mov ip, r5
	cmp r0, #0
	bne _0803EF9C
	ldrh r1, [r5, #6]
	ldr r0, _0803EFE0 @ =0x00003FFF
	ands r0, r1
	strh r0, [r5, #6]
_0803EF9C:
	mov r6, ip
	ldrh r1, [r6, #6]
	ldr r0, _0803EFE4 @ =0x0000E0FF
	ands r0, r1
	movs r2, #0xe0
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
	ldr r2, _0803EFE8 @ =gBgScrollRegs
	mov r5, r8
	strh r7, [r5, #0x28]
	strh r7, [r2, #0xc]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0803EFEC
	ldr r0, [r3]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	movs r1, #0xff
	ands r0, r1
	strh r0, [r5, #0x2a]
	strh r0, [r2, #0xe]
	b _0803F3F0
	.align 2, 0
_0803EFD4: .4byte gStageTime
_0803EFD8: .4byte 0x000001FF
_0803EFDC: .4byte gBgCntRegs
_0803EFE0: .4byte 0x00003FFF
_0803EFE4: .4byte 0x0000E0FF
_0803EFE8: .4byte gBgScrollRegs
_0803EFEC:
	ldr r0, [r3]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	ands r0, r4
	mov r6, r8
	strh r0, [r6, #0x2a]
	strh r0, [r2, #0xe]
	b _0803F3F0
_0803EFFC:
	cmp r0, #3
	beq _0803F002
	b _0803F3F0
_0803F002:
	ldr r0, _0803F078 @ =gBgCntRegs
	mov sb, r0
	ldrh r5, [r0, #6]
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r5
	movs r0, #0xe0
	lsls r0, r0, #5
	mov ip, sb
	cmp r1, r0
	bne _0803F090
	ldr r3, _0803F07C @ =gBgScrollRegs
	mov r1, r8
	strh r7, [r1, #0x28]
	strh r7, [r3, #0xc]
	ldr r0, _0803F080 @ =gStageTime
	ldr r1, [r0]
	lsls r1, r1, #1
	rsbs r1, r1, #0
	movs r2, #0xff
	adds r0, r1, #0
	ands r0, r2
	mov r2, r8
	strh r0, [r2, #0x2a]
	strh r0, [r3, #0xe]
	ldr r2, _0803F084 @ =0x000001FF
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	beq _0803F042
	b _0803F3F0
_0803F042:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	bne _0803F04E
	b _0803F3F0
_0803F04E:
	mov r4, r8
	strh r2, [r4, #0x2a]
	strh r2, [r3, #0xe]
	ldr r0, _0803F088 @ =0x00003FFF
	ands r0, r5
	movs r5, #0x80
	lsls r5, r5, #8
	adds r1, r5, #0
	orrs r0, r1
	movs r1, #0
	orrs r0, r1
	ldr r1, _0803F08C @ =0x0000E0FF
	ands r0, r1
	movs r6, #0xd8
	lsls r6, r6, #5
	adds r1, r6, #0
	orrs r0, r1
	mov r1, sb
	strh r0, [r1, #6]
	b _0803F3F0
	.align 2, 0
_0803F078: .4byte gBgCntRegs
_0803F07C: .4byte gBgScrollRegs
_0803F080: .4byte gStageTime
_0803F084: .4byte 0x000001FF
_0803F088: .4byte 0x00003FFF
_0803F08C: .4byte 0x0000E0FF
_0803F090:
	movs r0, #0xd8
	lsls r0, r0, #5
	cmp r1, r0
	bne _0803F104
	ldr r4, _0803F0F0 @ =gBgScrollRegs
	mov r2, r8
	strh r7, [r2, #0x28]
	strh r7, [r4, #0xc]
	ldr r0, _0803F0F4 @ =gStageTime
	ldr r0, [r0]
	lsls r3, r0, #1
	rsbs r1, r3, #0
	ldr r6, _0803F0F8 @ =0x000001FF
	adds r2, r6, #0
	adds r0, r1, #0
	ands r0, r2
	mov r2, r8
	strh r0, [r2, #0x2a]
	strh r0, [r4, #0xe]
	adds r2, r6, #0
	ands r1, r2
	cmp r1, #0
	beq _0803F0C0
	b _0803F3F0
_0803F0C0:
	subs r6, #0xff
	adds r0, r3, r6
	rsbs r0, r0, #0
	ands r0, r2
	mov r1, r8
	strh r0, [r1, #0x2a]
	strh r0, [r4, #0xe]
	ldr r0, _0803F0FC @ =0x00003FFF
	ands r0, r5
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	orrs r0, r1
	movs r1, #0
	orrs r0, r1
	ldr r1, _0803F100 @ =0x0000E0FF
	ands r0, r1
	movs r3, #0xd0
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	mov r4, sb
	strh r0, [r4, #6]
	b _0803F3F0
	.align 2, 0
_0803F0F0: .4byte gBgScrollRegs
_0803F0F4: .4byte gStageTime
_0803F0F8: .4byte 0x000001FF
_0803F0FC: .4byte 0x00003FFF
_0803F100: .4byte 0x0000E0FF
_0803F104:
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r5
	movs r6, #0x80
	lsls r6, r6, #8
	cmp r0, r6
	beq _0803F114
	b _0803F2A2
_0803F114:
	ldr r2, _0803F1A4 @ =gBgScrollRegs
	mov r0, r8
	strh r7, [r0, #0x28]
	strh r7, [r2, #0xc]
	ldr r3, _0803F1A8 @ =gStageTime
	ldr r4, [r3]
	lsls r0, r4, #1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	rsbs r0, r0, #0
	ldr r6, _0803F1AC @ =0x000001FF
	adds r1, r6, #0
	ands r0, r1
	mov r1, r8
	strh r0, [r1, #0x2a]
	strh r0, [r2, #0xe]
	mov sl, r2
	cmp r0, #0x9f
	bgt _0803F1EA
	ldr r1, _0803F1B0 @ =gDispCnt
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r2, _0803F1B4 @ =0x00003FFF
	adds r0, r2, #0
	ands r0, r5
	ldr r1, _0803F1B8 @ =0x0000E0FF
	ands r0, r1
	movs r3, #0xd0
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	mov r5, sb
	strh r0, [r5]
	mov r6, r8
	strh r7, [r6, #0x28]
	mov r0, sl
	strh r7, [r0]
	lsrs r0, r4, #3
	movs r1, #0xff
	ands r0, r1
	strh r0, [r6, #0x2a]
	mov r1, sl
	strh r0, [r1, #2]
	ldr r1, _0803F1BC @ =gBldRegs
	movs r0, #0x81
	strh r0, [r1]
	strh r7, [r1, #4]
	ldr r0, _0803F1C0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803F1D4
	ldr r3, _0803F1C4 @ =gHBlankCallbacks
	ldr r2, _0803F1C8 @ =gNumHBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0803F1CC @ =sub_803FA1C
	str r1, [r0]
	ldr r2, _0803F1D0 @ =gFlags
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	b _0803F1EA
	.align 2, 0
_0803F1A4: .4byte gBgScrollRegs
_0803F1A8: .4byte gStageTime
_0803F1AC: .4byte 0x000001FF
_0803F1B0: .4byte gDispCnt
_0803F1B4: .4byte 0x00003FFF
_0803F1B8: .4byte 0x0000E0FF
_0803F1BC: .4byte gBldRegs
_0803F1C0: .4byte gGameMode
_0803F1C4: .4byte gHBlankCallbacks
_0803F1C8: .4byte gNumHBlankCallbacks
_0803F1CC: .4byte sub_803FA1C
_0803F1D0: .4byte gFlags
_0803F1D4:
	mov r3, sb
	ldrh r0, [r3]
	adds r1, r2, #0
	ands r1, r0
	movs r4, #0x80
	lsls r4, r4, #8
	orrs r1, r4
	strh r1, [r3]
	movs r0, #0xa0
	mov r5, sl
	strh r0, [r5, #2]
_0803F1EA:
	mov r6, sl
	movs r0, #0xe
	ldrsh r4, [r6, r0]
	cmp r4, #0
	beq _0803F1F6
	b _0803F3F0
_0803F1F6:
	ldr r1, _0803F264 @ =gStageTime
	ldr r2, [r1]
	lsls r0, r2, #1
	rsbs r0, r0, #0
	movs r3, #0xff
	ands r0, r3
	mov r5, r8
	strh r0, [r5, #0x2a]
	strh r0, [r6, #0xe]
	mov r6, ip
	ldrh r1, [r6, #6]
	ldr r6, _0803F268 @ =0x00003FFF
	adds r0, r6, #0
	ands r0, r1
	ldr r1, _0803F26C @ =0x0000E0FF
	ands r0, r1
	movs r5, #0xd0
	lsls r5, r5, #5
	adds r1, r5, #0
	movs r5, #0
	orrs r0, r1
	mov r1, ip
	strh r0, [r1, #6]
	mov r0, r8
	strh r4, [r0, #0x28]
	mov r1, sl
	strh r4, [r1]
	lsrs r2, r2, #1
	ands r2, r3
	strh r2, [r0, #0x2a]
	strh r2, [r1, #2]
	ldr r1, _0803F270 @ =gBldRegs
	movs r0, #0x81
	strh r0, [r1]
	strh r4, [r1, #4]
	ldr r0, _0803F274 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bhi _0803F288
	ldr r3, _0803F278 @ =gHBlankCallbacks
	ldr r2, _0803F27C @ =gNumHBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0803F280 @ =sub_803FA1C
	str r1, [r0]
	ldr r2, _0803F284 @ =gFlags
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	b _0803F3F0
	.align 2, 0
_0803F264: .4byte gStageTime
_0803F268: .4byte 0x00003FFF
_0803F26C: .4byte 0x0000E0FF
_0803F270: .4byte gBldRegs
_0803F274: .4byte gGameMode
_0803F278: .4byte gHBlankCallbacks
_0803F27C: .4byte gNumHBlankCallbacks
_0803F280: .4byte sub_803FA1C
_0803F284: .4byte gFlags
_0803F288:
	mov r2, ip
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xa0
	mov r4, sl
	strh r0, [r4, #2]
	b _0803F3F0
_0803F2A2:
	ldr r6, _0803F31C @ =0x00003FFF
	mov ip, r6
	mov r0, ip
	ands r0, r5
	ldr r5, _0803F320 @ =0x0000E0FF
	ands r0, r5
	movs r1, #0xd0
	lsls r1, r1, #5
	adds r4, r1, #0
	orrs r0, r4
	mov r2, sb
	strh r0, [r2, #6]
	ldr r2, _0803F324 @ =gBgScrollRegs
	strh r7, [r2, #0xc]
	ldr r0, _0803F328 @ =gStageTime
	ldr r1, [r0]
	lsrs r0, r1, #6
	movs r3, #0xff
	ands r0, r3
	strh r0, [r2, #0xe]
	mov r6, sb
	ldrh r0, [r6]
	mov r6, ip
	ands r6, r0
	ands r6, r5
	orrs r6, r4
	mov r0, sb
	strh r6, [r0]
	movs r0, #0x74
	mov r4, r8
	strh r0, [r4, #0x28]
	strh r0, [r2]
	lsrs r1, r1, #3
	ands r1, r3
	strh r1, [r4, #0x2a]
	strh r1, [r2, #2]
	ldr r1, _0803F32C @ =gBldRegs
	movs r0, #0x81
	strh r0, [r1]
	strh r7, [r1, #4]
	ldr r0, _0803F330 @ =gGameMode
	ldrb r0, [r0]
	mov sl, r2
	cmp r0, #1
	bhi _0803F344
	ldr r3, _0803F334 @ =gHBlankCallbacks
	ldr r2, _0803F338 @ =gNumHBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0803F33C @ =sub_803FA1C
	str r1, [r0]
	ldr r2, _0803F340 @ =gFlags
	ldr r0, [r2]
	movs r1, #8
	orrs r0, r1
	str r0, [r2]
	b _0803F358
	.align 2, 0
_0803F31C: .4byte 0x00003FFF
_0803F320: .4byte 0x0000E0FF
_0803F324: .4byte gBgScrollRegs
_0803F328: .4byte gStageTime
_0803F32C: .4byte gBldRegs
_0803F330: .4byte gGameMode
_0803F334: .4byte gHBlankCallbacks
_0803F338: .4byte gNumHBlankCallbacks
_0803F33C: .4byte sub_803FA1C
_0803F340: .4byte gFlags
_0803F344:
	mov r5, ip
	ands r6, r5
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r6, r0
	mov r1, sb
	strh r6, [r1]
	movs r0, #0xa0
	mov r2, sl
	strh r0, [r2, #2]
_0803F358:
	mov r3, r8
	ldrh r1, [r3, #0x26]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0803F3F0
	mov r4, sl
	ldrh r3, [r4]
	ldrh r0, [r4, #2]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x64
	bl sa2__sub_80078D4
	movs r0, #0xa0
	str r0, [sp]
	movs r0, #0
	movs r1, #0x64
	movs r2, #0x68
	movs r3, #0
	bl sa2__sub_80078D4
	ldr r6, _0803F3B4 @ =gStageTime
	ldr r0, [r6]
	lsrs r2, r0, #5
	movs r1, #0x7f
	ands r1, r2
	movs r0, #0x80
	subs r0, r0, r1
	cmp r0, #0x38
	bls _0803F3B8
	movs r0, #0x7f
	ands r2, r0
	adds r0, r2, #0
	adds r0, #0xa0
	str r0, [sp]
	movs r0, #0
	movs r1, #0x68
	movs r2, #0xa0
	movs r3, #0
	bl sa2__sub_80078D4
	b _0803F3F0
	.align 2, 0
_0803F3B4: .4byte gStageTime
_0803F3B8:
	movs r5, #0x7f
	adds r0, r2, #0
	ands r0, r5
	movs r4, #0xe8
	subs r2, r4, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, #0xa0
	str r0, [sp]
	movs r0, #0
	movs r1, #0x68
	movs r3, #0
	bl sa2__sub_80078D4
	ldr r0, [r6]
	lsrs r0, r0, #5
	ands r0, r5
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, #0x20
	str r0, [sp]
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0xa0
	movs r3, #0
	bl sa2__sub_80078D4
_0803F3F0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start StageBgUpdate_Zone6Act2
StageBgUpdate_Zone6Act2: @ 0x0803F400
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r5, _0803F4FC @ =gCamera
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	subs r4, r4, r0
	ldr r0, _0803F500 @ =gRefCollision
	ldr r0, [r0]
	mov r8, r0
	lsls r0, r2, #8
	lsls r2, r2, #4
	adds r0, r0, r2
	mov r2, r8
	ldrh r1, [r2, #0x1c]
	subs r1, #0xf0
	bl Div
	ldr r6, _0803F504 @ =gBgScrollRegs
	mov sb, r0
	mov r0, sb
	strh r0, [r5, #0x28]
	strh r0, [r6, #0xc]
	lsls r0, r4, #6
	lsls r4, r4, #3
	adds r0, r0, r4
	mov r2, r8
	ldrh r1, [r2, #0x1e]
	subs r1, #0xa0
	bl Div
	adds r7, r0, #0
	strh r7, [r5, #0x2a]
	strh r7, [r6, #0xe]
	lsls r3, r7, #0x10
	adds r4, r3, #0
	mov r0, sb
	orrs r4, r0
	ldr r1, _0803F508 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	ldr r1, _0803F50C @ =sa2__gUnknown_03002878
	ldr r0, _0803F510 @ =0x0400001C
	str r0, [r1]
	ldr r0, _0803F514 @ =sa2__gUnknown_03002A80
	strb r2, [r0]
	ldr r0, _0803F518 @ =gBgOffsetsHBlank
	ldr r5, [r0]
	str r4, [sp]
	ldr r0, _0803F51C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _0803F520 @ =0x850000A0
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _0803F524 @ =gStageTime
	ldr r0, [r0]
	lsrs r0, r0, #1
	mov r2, sb
	subs r4, r2, r0
	ldr r0, _0803F528 @ =0x000001FF
	ands r4, r0
	orrs r4, r3
	movs r0, #0x78
	subs r2, r0, r7
	lsls r0, r2, #2
	adds r5, r5, r0
	movs r1, #0
	cmp r2, #0
	blt _0803F4A6
	cmp r2, #0x9f
	bgt _0803F4B6
_0803F4A4:
	stm r5!, {r4}
_0803F4A6:
	adds r1, #1
	cmp r1, #0xf
	bgt _0803F4B6
	adds r0, r2, r1
	cmp r0, #0
	blt _0803F4A6
	cmp r0, #0x9f
	ble _0803F4A4
_0803F4B6:
	ldr r0, _0803F518 @ =gBgOffsetsHBlank
	ldr r5, [r0]
	lsls r4, r7, #0x10
	ldr r0, _0803F524 @ =gStageTime
	ldr r0, [r0]
	lsrs r0, r0, #1
	add r0, sb
	ldr r1, _0803F528 @ =0x000001FF
	ands r0, r1
	orrs r4, r0
	movs r0, #0xb0
	subs r2, r0, r7
	lsls r0, r2, #2
	adds r5, r5, r0
	movs r1, #0
	cmp r2, #0
	blt _0803F4DE
	cmp r2, #0x9f
	bgt _0803F4EE
_0803F4DC:
	stm r5!, {r4}
_0803F4DE:
	adds r1, #1
	cmp r1, #0xf
	bgt _0803F4EE
	adds r0, r2, r1
	cmp r0, #0
	blt _0803F4DE
	cmp r0, #0x9f
	ble _0803F4DC
_0803F4EE:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F4FC: .4byte gCamera
_0803F500: .4byte gRefCollision
_0803F504: .4byte gBgScrollRegs
_0803F508: .4byte gFlags
_0803F50C: .4byte sa2__gUnknown_03002878
_0803F510: .4byte 0x0400001C
_0803F514: .4byte sa2__gUnknown_03002A80
_0803F518: .4byte gBgOffsetsHBlank
_0803F51C: .4byte 0x040000D4
_0803F520: .4byte 0x850000A0
_0803F524: .4byte gStageTime
_0803F528: .4byte 0x000001FF

	thumb_func_start StageBgUpdate_Zone7Act2
StageBgUpdate_Zone7Act2: @ 0x0803F52C
	push {r4, r5, lr}
	sub sp, #4
	ldr r3, _0803F600 @ =gCamera
	ldr r0, _0803F604 @ =gStageBackgroundsRam + 0xC0
	ldr r2, _0803F608 @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r3, #0x28]
	strh r1, [r2, #4]
	strh r1, [r3, #0x2a]
	strh r1, [r2, #6]
	strh r1, [r0, #0x30]
	strh r1, [r0, #0x32]
	bl DrawBackground
	ldr r0, _0803F60C @ =gBgOffsetsHBlank
	ldr r5, [r0]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r5, r5, r0
	ldr r4, _0803F610 @ =gStageTime
	ldr r2, [r4]
	lsrs r0, r2, #6
	movs r3, #0xff
	ands r0, r3
	str r0, [sp]
	ldr r1, _0803F614 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _0803F618 @ =0x8500000A
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #0x28
	lsrs r0, r2, #5
	ands r0, r3
	str r0, [sp]
	mov r0, sp
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _0803F61C @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #0x14
	lsrs r0, r2, #4
	ands r0, r3
	str r0, [sp]
	mov r0, sp
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _0803F620 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #0x20
	lsrs r2, r2, #3
	ands r2, r3
	str r2, [sp]
	mov r0, sp
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _0803F624 @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #0x40
	movs r2, #1
_0803F5AC:
	ldr r0, [r4]
	lsrs r1, r0, #3
	muls r0, r2, r0
	lsrs r0, r0, #5
	adds r1, r1, r0
	ands r1, r3
	stm r5!, {r1}
	adds r2, #1
	cmp r2, #0x1f
	ble _0803F5AC
	ldr r3, _0803F628 @ =gHBlankCallbacks
	ldr r2, _0803F62C @ =gNumHBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0803F630 @ =sub_803F92C
	str r1, [r0]
	ldr r5, _0803F634 @ =gFlags
	ldr r3, [r5]
	movs r0, #8
	orrs r3, r0
	ldr r4, _0803F638 @ =sa2__gUnknown_03001870
	ldr r2, _0803F63C @ =sa2__gUnknown_03004D50
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, _0803F640 @ =sub_803F920
	str r1, [r0]
	movs r0, #0x10
	orrs r3, r0
	str r3, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803F600: .4byte gCamera
_0803F604: .4byte gStageBackgroundsRam + 0xC0
_0803F608: .4byte gBgScrollRegs
_0803F60C: .4byte gBgOffsetsHBlank
_0803F610: .4byte gStageTime
_0803F614: .4byte 0x040000D4
_0803F618: .4byte 0x8500000A
_0803F61C: .4byte 0x85000005
_0803F620: .4byte 0x85000008
_0803F624: .4byte 0x85000010
_0803F628: .4byte gHBlankCallbacks
_0803F62C: .4byte gNumHBlankCallbacks
_0803F630: .4byte sub_803F92C
_0803F634: .4byte gFlags
_0803F638: .4byte sa2__gUnknown_03001870
_0803F63C: .4byte sa2__gUnknown_03004D50
_0803F640: .4byte sub_803F920

	thumb_func_start sub_803F644
sub_803F644: @ 0x0803F644
	push {r4, lr}
	ldr r4, _0803F658 @ =gCamera
	ldr r0, [r4, #0x30]
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #0x30]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F658: .4byte gCamera

	thumb_func_start TaskDestructor_Camera
TaskDestructor_Camera: @ 0x0803F65C
	push {r4, lr}
	ldr r1, _0803F6AC @ =gCamera
	movs r0, #0
	str r0, [r1, #0x30]
	ldr r4, _0803F6B0 @ =gCurrentLevel
	ldr r3, _0803F6B4 @ =gFlags
	movs r2, #0
	ldr r0, _0803F6B8 @ =gBgScrollRegs
	movs r1, #3
_0803F66E:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	subs r1, #1
	cmp r1, #0
	bge _0803F66E
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0xd
	bne _0803F69C
	ldr r2, [r3]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0803F69C
	ldr r1, _0803F6BC @ =gIntrTable
	ldr r0, _0803F6C0 @ =gIntrTableTemplate
	ldr r0, [r0, #0xc]
	str r0, [r1, #0xc]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3]
_0803F69C:
	ldr r0, [r3]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F6AC: .4byte gCamera
_0803F6B0: .4byte gCurrentLevel
_0803F6B4: .4byte gFlags
_0803F6B8: .4byte gBgScrollRegs
_0803F6BC: .4byte gIntrTable
_0803F6C0: .4byte gIntrTableTemplate

	thumb_func_start Task_CallUpdateCamera
Task_CallUpdateCamera: @ 0x0803F6C4
	ldr r2, _0803F6EC @ =gDispCnt
	ldrh r1, [r2]
	movs r3, #0xf0
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r1, r0
	strh r1, [r2]
	ldr r0, _0803F6F0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _0803F6E0
	ldr r0, _0803F6F4 @ =0x0000DFFF
	ands r1, r0
	strh r1, [r2]
_0803F6E0:
	ldr r0, _0803F6F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803F6FC @ =Task_CallUpdateCameraInternal
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_0803F6EC: .4byte gDispCnt
_0803F6F0: .4byte gGameMode
_0803F6F4: .4byte 0x0000DFFF
_0803F6F8: .4byte gCurTask
_0803F6FC: .4byte Task_CallUpdateCameraInternal

	thumb_func_start Task_CallUpdateCameraInternal
Task_CallUpdateCameraInternal: @ 0x0803F700
	push {lr}
	bl UpdateCamera
	ldr r1, _0803F710 @ =sa2__gUnknown_030054B8
	movs r0, #4
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803F710: .4byte sa2__gUnknown_030054B8

@ --- End of camera.c (if BGs will not be integrated in the future) ---

@ --- Start of Stage Backgrounds ---
	thumb_func_start CreateStageBg_Zone4
CreateStageBg_Zone4: @ 0x0803F714
	push {r4, lr}
	ldr r4, _0803F750 @ =gStageBackgroundsRam 
	ldr r1, _0803F754 @ =gBldRegs
	ldr r0, _0803F758 @ =0x00001010
	strh r0, [r1, #2]
	ldr r1, _0803F75C @ =gBgCntRegs
	ldr r0, _0803F760 @ =0x00001B0C
	strh r0, [r1]
	ldr r1, _0803F764 @ =gStageCameraBgTemplates 
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #0x40
	bl memcpy
	movs r0, #0x47
	strh r0, [r4, #0x1c]
	ldr r0, _0803F768 @ =0x0600C000
	str r0, [r4, #4]
	ldr r0, _0803F76C @ =0x0600D800
	str r0, [r4, #0xc]
	movs r0, #0x20
	strh r0, [r4, #0x26]
	strh r0, [r4, #0x28]
	adds r0, r4, #0
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F750: .4byte gStageBackgroundsRam 
_0803F754: .4byte gBldRegs
_0803F758: .4byte 0x00001010
_0803F75C: .4byte gBgCntRegs
_0803F760: .4byte 0x00001B0C
_0803F764: .4byte gStageCameraBgTemplates 
_0803F768: .4byte 0x0600C000
_0803F76C: .4byte 0x0600D800

	thumb_func_start CreateStageBg_Zone5
CreateStageBg_Zone5: @ 0x0803F770
	push {r4, lr}
	ldr r4, _0803F798 @ =gStageBackgroundsRam 
	ldr r1, _0803F79C @ =gBgCntRegs
	ldr r0, _0803F7A0 @ =0x00001C0F
	strh r0, [r1]
	ldr r1, _0803F7A4 @ =gStageCameraBgTemplates 
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #0x40
	bl memcpy
	movs r0, #0x48
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F798: .4byte gStageBackgroundsRam 
_0803F79C: .4byte gBgCntRegs
_0803F7A0: .4byte 0x00001C0F
_0803F7A4: .4byte gStageCameraBgTemplates 

	thumb_func_start StageBgUpdate_Zone7Act1
StageBgUpdate_Zone7Act1: @ 0x0803F7A8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r5, _0803F7FC @ =gCamera
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	subs r4, r4, r0
	ldr r0, _0803F800 @ =gRefCollision
	ldr r0, [r0]
	mov r8, r0
	lsls r0, r2, #6
	lsls r2, r2, #3
	subs r0, r0, r2
	mov r2, r8
	ldrh r1, [r2, #0x1c]
	subs r1, #0xf0
	bl Div
	ldr r6, _0803F804 @ =gBgScrollRegs
	strh r0, [r5, #0x28]
	strh r0, [r6, #0xc]
	lsls r0, r4, #4
	lsls r4, r4, #3
	adds r0, r0, r4
	mov r2, r8
	ldrh r1, [r2, #0x1e]
	subs r1, #0xa0
	bl Div
	strh r0, [r5, #0x2a]
	strh r0, [r6, #0xe]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803F7FC: .4byte gCamera
_0803F800: .4byte gRefCollision
_0803F804: .4byte gBgScrollRegs

	thumb_func_start CreateStageBg_Zone7_Act2
CreateStageBg_Zone7_Act2: @ 0x0803F808
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _0803F838 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0803F83C @ =0x06004000
	str r1, [r0, #4]
	ldr r1, _0803F840 @ =0x85001000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _0803F844 @ =0x0600E000
	str r1, [r0, #4]
	ldr r1, _0803F848 @ =0x85000200
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _0803F84C @ =gBgCntRegs
	ldr r0, _0803F850 @ =0x00005C85
	strh r0, [r1, #4]
	add sp, #4
	bx lr
	.align 2, 0
_0803F838: .4byte 0x040000D4
_0803F83C: .4byte 0x06004000
_0803F840: .4byte 0x85001000
_0803F844: .4byte 0x0600E000
_0803F848: .4byte 0x85000200
_0803F84C: .4byte gBgCntRegs
_0803F850: .4byte 0x00005C85

	thumb_func_start StageBgUpdate_Zone2Act1
StageBgUpdate_Zone2Act1: @ 0x0803F854
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, _0803F888 @ =gCamera
	movs r3, #0x10
	ldrsh r0, [r4, r3]
	subs r2, r2, r0
	movs r3, #0x12
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	ldr r0, _0803F88C @ =0x000005CF
	cmp r2, r0
	bgt _0803F894
	lsls r0, r2, #4
	movs r1, #0x9c
	lsls r1, r1, #3
	bl Div
	ldr r1, _0803F890 @ =gBgScrollRegs
	strh r0, [r4, #0x28]
	strh r0, [r1, #0xc]
	movs r0, #0xb0
	lsls r0, r0, #1
	strh r0, [r4, #0x2a]
	strh r0, [r1, #0xe]
	b _0803F89A
	.align 2, 0
_0803F888: .4byte gCamera
_0803F88C: .4byte 0x000005CF
_0803F890: .4byte gBgScrollRegs
_0803F894:
	adds r0, r2, #0
	bl StageBgUpdate_Zone2_Interior
_0803F89A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start StageBgUpdate_Zone2Act2
StageBgUpdate_Zone2Act2: @ 0x0803F8A0
	push {r4, lr}
	ldr r3, _0803F8BC @ =gCamera
	movs r4, #0x10
	ldrsh r2, [r3, r4]
	subs r0, r0, r2
	movs r4, #0x12
	ldrsh r2, [r3, r4]
	subs r1, r1, r2
	bl StageBgUpdate_Zone2_Interior
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F8BC: .4byte gCamera

	thumb_func_start StageBgUpdate_Zone5Acts12
StageBgUpdate_Zone5Acts12: @ 0x0803F8C0
	push {r4, lr}
	ldr r2, _0803F904 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0803F908 @ =gBldRegs
	movs r3, #0
	ldr r0, _0803F90C @ =0x00003F41
	strh r0, [r2]
	ldr r0, _0803F910 @ =0x0000100C
	strh r0, [r2, #2]
	ldr r4, _0803F914 @ =gStageBackgroundsRam 
	ldr r2, _0803F918 @ =gBgScrollRegs
	ldr r0, _0803F91C @ =gStageTime
	ldr r0, [r0]
	lsrs r0, r0, #2
	subs r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	strh r1, [r2]
	strh r3, [r2, #2]
	adds r0, r4, #0
	bl DrawBackground
	adds r0, r4, #0
	bl UpdateBgAnimationTiles
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F904: .4byte gDispCnt
_0803F908: .4byte gBldRegs
_0803F90C: .4byte 0x00003F41
_0803F910: .4byte 0x0000100C
_0803F914: .4byte gStageBackgroundsRam 
_0803F918: .4byte gBgScrollRegs
_0803F91C: .4byte gStageTime

	thumb_func_start sub_803F920
sub_803F920: @ 0x0803F920
	ldr r1, _0803F928 @ =0x04000014
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0803F928: .4byte 0x04000014

	thumb_func_start sub_803F92C
sub_803F92C: @ 0x0803F92C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r0, #0
	subs r3, #0x5a
	cmp r3, #0
	blt _0803F95C
	cmp r0, #0x9f @ DISPLAY_HEIGHT-1 ?
	beq _0803F95C
	ldr r0, _0803F954 @ =sa2__gUnknown_030022AC
	ldr r1, [r0]
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r2, _0803F958 @ =0x04000014
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	b _0803F962
	.align 2, 0
_0803F954: .4byte sa2__gUnknown_030022AC
_0803F958: .4byte 0x04000014
_0803F95C:
	ldr r1, _0803F964 @ =0x04000014
	movs r0, #0
	str r0, [r1]
_0803F962:
	bx lr
	.align 2, 0
_0803F964: .4byte 0x04000014

	thumb_func_start sub_803F968
sub_803F968: @ 0x0803F968
	ldr r3, _0803F994 @ =gCamera
	ldr r0, _0803F998 @ =gStageTime
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803F990
	ldr r2, _0803F99C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0803F9A0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0803F9A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xe0
	lsls r1, r1, #0xb
	ands r0, r1
	lsrs r0, r0, #0x10
	subs r0, #8
	strh r0, [r3, #0xe]
_0803F990:
	bx lr
	.align 2, 0
_0803F994: .4byte gCamera
_0803F998: .4byte gStageTime
_0803F99C: .4byte gPseudoRandom
_0803F9A0: .4byte 0x00196225
_0803F9A4: .4byte 0x3C6EF35F

	thumb_func_start sub_803F9A8
sub_803F9A8: @ 0x0803F9A8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	movs r4, #1
	ands r4, r2
	lsls r4, r4, #2
	ldr r2, _0803FA08 @ =gUnknown_084ADD38
	adds r4, r4, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, _0803FA0C @ =sub_803EA24
	str r2, [sp]
	ldr r2, _0803FA10 @ =TaskDestructor_MultiplayerSpriteTask
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl CreateMultiplayerSpriteTask
	mov r8, r0
	ldrh r5, [r0, #6]
	ldr r0, _0803FA14 @ =0x03000018
	adds r6, r5, r0
	ldrb r0, [r4, #3]
	bl VramMalloc
	str r0, [r6, #4]
	ldrh r0, [r4]
	strh r0, [r6, #0xa]
	ldrb r0, [r4, #2]
	ldr r1, _0803FA18 @ =0x03000038
	adds r5, r5, r1
	strb r0, [r5]
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	mov r0, r8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0803FA08: .4byte gUnknown_084ADD38
_0803FA0C: .4byte sub_803EA24
_0803FA10: .4byte TaskDestructor_MultiplayerSpriteTask
_0803FA14: .4byte 0x03000018
_0803FA18: .4byte 0x03000038

	thumb_func_start sub_803FA1C
sub_803FA1C: @ 0x0803FA1C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r1, #0x64
	bne _0803FA54
	ldr r2, _0803FA48 @ =0x04000008
	ldrh r1, [r2]
	ldr r0, _0803FA4C @ =0x00003FFF
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803FA50 @ =0x04000010
	movs r0, #0xa0
	lsls r0, r0, #0x10
	str r0, [r1]
	b _0803FA6C
	.align 2, 0
_0803FA48: .4byte 0x04000008
_0803FA4C: .4byte 0x00003FFF
_0803FA50: .4byte 0x04000010
_0803FA54:
	adds r0, r1, #0
	subs r0, #0x66
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1f
	bhi _0803FA6C
	ldr r2, _0803FA70 @ =0x04000054
	subs r1, #0x65
	asrs r1, r1, #1
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r2]
_0803FA6C:
	bx lr
	.align 2, 0
_0803FA70: .4byte 0x04000054
