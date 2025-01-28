.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

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
