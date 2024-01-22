.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8024B30
sub_8024B30: @ 0x08024B30
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08024BB0 @ =sub_8024BC8
	movs r2, #0x80
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x34
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	movs r0, #0
	mov r8, r0
	strh r6, [r1, #0x30]
	strh r4, [r1, #0x16]
	strh r5, [r1, #0x18]
	ldr r0, _08024BB4 @ =0x06011D00
	str r0, [r1, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r1, #0x1a]
	strh r6, [r1, #8]
	subs r0, #0xfd
	strh r0, [r1, #0xa]
	ldr r2, _08024BB8 @ =0x03000020
	adds r0, r3, r2
	mov r2, r8
	strb r2, [r0]
	strh r6, [r1, #0x14]
	strh r6, [r1, #0x1c]
	ldr r0, _08024BBC @ =0x03000021
	adds r2, r3, r0
	movs r0, #0xff
	strb r0, [r2]
	ldr r0, _08024BC0 @ =0x03000022
	adds r2, r3, r0
	movs r0, #0x10
	strb r0, [r2]
	ldr r2, _08024BC4 @ =0x03000025
	adds r3, r3, r2
	mov r0, r8
	strb r0, [r3]
	movs r0, #0xc2
	lsls r0, r0, #0xc
	str r0, [r1, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08024BB0: .4byte sub_8024BC8
_08024BB4: .4byte 0x06011D00
_08024BB8: .4byte 0x03000020
_08024BBC: .4byte 0x03000021
_08024BC0: .4byte 0x03000022
_08024BC4: .4byte 0x03000025

	thumb_func_start sub_8024BC8
sub_8024BC8: @ 0x08024BC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08024D30 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r4, _08024D34 @ =gPlayer
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrh r0, [r5, #0x16]
	subs r1, r1, r0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldrh r2, [r5, #0x18]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_800338C
	ldrh r1, [r5, #0x30]
	adds r1, #0x40
	strh r1, [r5, #0x30]
	movs r1, #0x30
	ldrsh r2, [r5, r1]
	ldr r3, _08024D38 @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r0, r6
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r6, #0
	ldrsh r1, [r1, r6]
	muls r1, r2, r1
	asrs r1, r1, #0x16
	ldrh r2, [r5, #0x16]
	adds r1, r1, r2
	strh r1, [r5, #0x16]
	movs r6, #0x30
	ldrsh r1, [r5, r6]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	asrs r0, r0, #0x16
	ldrh r3, [r5, #0x18]
	adds r0, r0, r3
	strh r0, [r5, #0x18]
	ldrh r6, [r5, #0x18]
	mov r8, r6
	ldrh r0, [r5, #0x16]
	mov sl, r0
	movs r1, #0x16
	ldrsh r3, [r5, r1]
	adds r2, r3, #0
	subs r2, #8
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r6, _08024D3C @ =gUnknown_03005BE0
	adds r0, r6, #0
	adds r0, #0x38
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	cmp r2, r1
	bgt _08024C6A
	adds r0, r3, #0
	adds r0, #8
	cmp r0, r1
	bge _08024C7C
	cmp r2, r1
	blt _08024D54
_08024C6A:
	adds r0, r6, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _08024D54
_08024C7C:
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r7, r2, #0x10
	adds r4, r7, #0
	subs r4, #0x10
	ldr r1, _08024D34 @ =gPlayer
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	ldr r6, _08024D3C @ =gUnknown_03005BE0
	mov ip, r6
	mov r3, ip
	adds r3, #0x39
	movs r6, #0
	ldrsb r6, [r3, r6]
	adds r3, r0, r6
	mov sb, r2
	cmp r4, r3
	bgt _08024CA8
	cmp r7, r3
	bge _08024CBA
	cmp r4, r3
	blt _08024D54
_08024CA8:
	mov r0, ip
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r3, r0
	cmp r0, r4
	blt _08024D54
_08024CBA:
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08024D26
	ldr r1, _08024D40 @ =gRingCount
	ldrh r5, [r1]
	adds r0, r5, #1
	strh r0, [r1]
	ldr r0, _08024D44 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	beq _08024D04
	ldrh r0, [r1]
	movs r1, #0x64
	bl Div
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	cmp r4, r0
	beq _08024D04
	ldr r0, _08024D48 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	bne _08024D04
	ldr r1, _08024D4C @ =gNumLives
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _08024D50 @ =gUnknown_03005040
	movs r0, #0x10
	strb r0, [r1, #3]
_08024D04:
	ldr r0, _08024D48 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	bne _08024D18
	ldr r1, _08024D40 @ =gRingCount
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _08024D18
	movs r0, #0xff
	strh r0, [r1]
_08024D18:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	asrs r1, r2, #0x10
	bl CreateCollectRingEffect
_08024D26:
	ldr r0, _08024D30 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08024D7A
	.align 2, 0
_08024D30: .4byte gCurTask
_08024D34: .4byte gPlayer
_08024D38: .4byte gSineTable
_08024D3C: .4byte gUnknown_03005BE0
_08024D40: .4byte gRingCount
_08024D44: .4byte gCurrentLevel
_08024D48: .4byte gGameMode
_08024D4C: .4byte gNumLives
_08024D50: .4byte gUnknown_03005040
_08024D54:
	ldr r2, _08024D88 @ =gCamera
	ldrh r0, [r5, #0x16]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x16]
	ldrh r0, [r5, #0x18]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	mov r3, sl
	strh r3, [r5, #0x16]
	mov r6, r8
	strh r6, [r5, #0x18]
_08024D7A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024D88: .4byte gCamera

	thumb_func_start CreateEntity_PlatformCrumbling
CreateEntity_PlatformCrumbling: @ 0x08024D8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
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
	ldr r0, _08024E7C @ =sub_8024EA0
	ldr r1, _08024E80 @ =sub_80255DC
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
	ldr r1, _08024E84 @ =0x0300000C
	adds r7, r6, r1
	movs r3, #0
	mov sl, r3
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	mov r3, r8
	strb r3, [r0, #9]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	mov r3, sb
	strb r1, [r3]
	strh r2, [r0, #0x3c]
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
	movs r0, #0x20
	str r2, [sp, #4]
	bl VramMalloc
	str r0, [r7, #4]
	ldr r1, _08024E88 @ =gUnknown_080BB520
	ldr r0, _08024E8C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r1, _08024E90 @ =0x0300002C
	adds r0, r6, r1
	mov r3, sl
	strb r3, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x1a]
	ldr r2, [sp, #4]
	strh r2, [r7, #8]
	strh r2, [r7, #0x14]
	strh r2, [r7, #0x1c]
	ldr r0, _08024E94 @ =0x0300002D
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r3, _08024E98 @ =0x0300002E
	adds r1, r6, r3
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08024E9C @ =0x03000031
	adds r6, r6, r0
	mov r1, sl
	strb r1, [r6]
	movs r3, #0x80
	lsls r3, r3, #6
	str r3, [r7, #0x10]
	mov r1, sb
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08024E66
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r3
	str r0, [r7, #0x10]
_08024E66:
	adds r0, r7, #0
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
_08024E7C: .4byte sub_8024EA0
_08024E80: .4byte sub_80255DC
_08024E84: .4byte 0x0300000C
_08024E88: .4byte gUnknown_080BB520
_08024E8C: .4byte gCurrentLevel
_08024E90: .4byte 0x0300002C
_08024E94: .4byte 0x0300002D
_08024E98: .4byte 0x0300002E
_08024E9C: .4byte 0x03000031

	thumb_func_start sub_8024EA0
sub_8024EA0: @ 0x08024EA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _08024FCC @ =gCurTask
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, _08024FD0 @ =0x0300000C
	adds r6, r1, r2
	ldr r3, [r7]
	mov sb, r3
	ldrb r2, [r7, #8]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08024FD4 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	mov sl, r4
	asrs r5, r2, #0x10
	subs r0, r5, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	str r2, [sp]
	asrs r4, r1, #0x10
	subs r0, r4, r0
	strh r0, [r6, #0x18]
	ldr r3, _08024FD8 @ =gPlayer
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	movs r3, #8
	mov r8, r3
	ands r0, r3
	cmp r0, #0
	bne _08024F28
	ldr r0, _08024FDC @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08024F34
	ldr r3, _08024FE0 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	mov r4, r8
	ands r0, r4
	cmp r0, #0
	beq _08024F34
_08024F28:
	ldr r1, _08024FCC @ =gCurTask
	ldr r0, [r1]
	ldr r1, _08024FE4 @ =sub_8025008
	str r1, [r0, #8]
	movs r0, #0
	strh r0, [r7, #0x3c]
_08024F34:
	ldr r0, _08024FE8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08024F5C
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08024F5C
	movs r0, #0
	strh r0, [r7, #0x3c]
	ldr r0, _08024FCC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08024FEC @ =sub_8025190
	str r0, [r1, #8]
	movs r0, #0xad
	bl m4aSongNumStart
_08024F5C:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	ldr r3, _08024FD4 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _08024F96
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _08024F96
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r4, #2
	ldrsh r2, [r3, r4]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	cmp r1, r0
	bgt _08024F96
	adds r0, r2, #0
	subs r0, #0x80
	cmp r1, r0
	bge _08024FF0
_08024F96:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08024FBA
	movs r4, #0x18
	ldrsh r0, [r6, r4]
	adds r0, #0x80
	cmp r0, #0
	blt _08024FBA
	movs r0, #0x18
	ldrsh r1, [r6, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08024FF0
_08024FBA:
	ldrb r0, [r7, #8]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08024FCC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08024FF6
	.align 2, 0
_08024FCC: .4byte gCurTask
_08024FD0: .4byte 0x0300000C
_08024FD4: .4byte gCamera
_08024FD8: .4byte gPlayer
_08024FDC: .4byte gUnknown_03005088
_08024FE0: .4byte gUnknown_03005AB0
_08024FE4: .4byte sub_8025008
_08024FE8: .4byte gGameMode
_08024FEC: .4byte sub_8025190
_08024FF0:
	adds r0, r6, #0
	bl DisplaySprite
_08024FF6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8025008
sub_8025008: @ 0x08025008
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080250A0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _080250A4 @ =0x0300000C
	adds r7, r1, r2
	ldr r3, [r6]
	mov r8, r3
	ldrb r5, [r6, #8]
	lsls r5, r5, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r5, r5, r0
	lsls r5, r5, #0x10
	ldrb r4, [r3, #1]
	lsls r4, r4, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	lsls r4, r4, #0x10
	ldr r1, _080250A8 @ =gCamera
	ldrh r0, [r1]
	lsrs r2, r5, #0x10
	mov sl, r2
	asrs r5, r5, #0x10
	subs r0, r5, r0
	strh r0, [r7, #0x16]
	ldrh r0, [r1, #2]
	lsrs r3, r4, #0x10
	str r3, [sp]
	asrs r4, r4, #0x10
	subs r0, r4, r0
	strh r0, [r7, #0x18]
	ldr r3, _080250AC @ =gPlayer
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	ldr r3, _080250B0 @ =gUnknown_03005AB0
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800B2BC
	ldr r0, _080250B4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080250BC
	mov r0, r8
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080250BC
	movs r0, #0
	strh r0, [r6, #0x3c]
	mov r2, sb
	ldr r1, [r2]
	ldr r0, _080250B8 @ =sub_8025190
	str r0, [r1, #8]
	movs r0, #0xad
	bl m4aSongNumStart
	b _080250FA
	.align 2, 0
_080250A0: .4byte gCurTask
_080250A4: .4byte 0x0300000C
_080250A8: .4byte gCamera
_080250AC: .4byte gPlayer
_080250B0: .4byte gUnknown_03005AB0
_080250B4: .4byte gGameMode
_080250B8: .4byte sub_8025190
_080250BC:
	ldrh r0, [r6, #0x3c]
	adds r1, r0, #1
	strh r1, [r6, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _080250FA
	movs r0, #0
	strh r0, [r6, #0x3c]
	ldr r0, _08025168 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802516C @ =sub_8025190
	str r0, [r1, #8]
	movs r0, #0xad
	bl m4aSongNumStart
	ldr r0, _08025170 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _080250FA
	bl sub_80182FC
	movs r2, #1
	strb r2, [r0]
	ldrh r1, [r6, #4]
	strb r1, [r0, #1]
	ldrh r1, [r6, #6]
	strb r1, [r0, #2]
	ldrb r1, [r6, #9]
	strb r1, [r0, #3]
	strb r2, [r0, #4]
_080250FA:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r5, r0, #0x10
	ldr r2, _08025174 @ =gCamera
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r5, r0
	bgt _08025134
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _08025134
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	movs r3, #2
	ldrsh r1, [r2, r3]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _08025134
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	bge _08025178
_08025134:
	ldrh r0, [r7, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08025158
	movs r3, #0x18
	ldrsh r0, [r7, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _08025158
	movs r0, #0x18
	ldrsh r1, [r7, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08025178
_08025158:
	ldrb r0, [r6, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _08025168 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0802517E
	.align 2, 0
_08025168: .4byte gCurTask
_0802516C: .4byte sub_8025190
_08025170: .4byte gGameMode
_08025174: .4byte gCamera
_08025178:
	adds r0, r7, #0
	bl DisplaySprite
_0802517E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8025190
sub_8025190: @ 0x08025190
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08025244 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r2, _08025248 @ =0x0300000C
	adds r6, r1, r2
	ldr r0, [r0]
	mov sb, r0
	mov r2, r8
	ldrb r1, [r2, #8]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r0, sb
	ldrb r4, [r0, #1]
	lsls r4, r4, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r4, r4, r0
	ldr r5, _0802524C @ =gCamera
	ldrh r0, [r5, #2]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r0, r0, r4
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrh r0, [r5]
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	subs r0, r7, r0
	strh r0, [r6, #0x16]
	ldrh r0, [r5, #2]
	subs r0, r4, r0
	strh r0, [r6, #0x18]
	ldrh r0, [r2, #0x3c]
	adds r0, #1
	strh r0, [r2, #0x3c]
	ldr r3, _08025250 @ =gPlayer
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_800B2BC
	ldr r3, _08025254 @ =gUnknown_03005AB0
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_800B2BC
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r7, r0
	bgt _08025222
	adds r0, r1, #0
	subs r0, #0x80
	cmp r7, r0
	bge _08025258
_08025222:
	ldrh r0, [r6, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08025258
	mov r1, r8
	ldrb r0, [r1, #8]
	mov r2, sb
	strb r0, [r2]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _080253E4
	.align 2, 0
_08025244: .4byte gCurTask
_08025248: .4byte 0x0300000C
_0802524C: .4byte gCamera
_08025250: .4byte gPlayer
_08025254: .4byte gUnknown_03005AB0
_08025258:
	ldr r0, _0802530C @ =gUnknown_03002034
	ldr r1, [r0]
	ldrh r0, [r6, #0xa]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r6, #0xc]
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	mov sl, r2
	movs r5, #0
	mov sb, r5
_08025278:
	movs r7, #0
_0802527A:
	ldr r2, _08025310 @ =0x0000FFE1
	adds r0, r5, r2
	mov r1, r8
	ldrh r1, [r1, #0x3c]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _08025328
	cmp r5, #0
	bne _080252E2
	cmp r0, #1
	bne _080252E2
	ldr r2, _08025314 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080252B4
	ldr r0, [r2, #0x28]
	cmp r0, r6
	bne _080252B4
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #0x10]
_080252B4:
	ldr r0, _08025318 @ =gUnknown_03005088
	movs r2, #0
	ldrsb r2, [r0, r2]
	cmp r2, #2
	bne _080252DA
	ldr r3, _0802531C @ =gUnknown_03005AB0
	ldr r1, [r3, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080252DA
	ldr r0, [r3, #0x28]
	cmp r0, r6
	bne _080252DA
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	orrs r1, r2
	str r1, [r3, #0x10]
_080252DA:
	ldr r0, _08025320 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08025324 @ =sub_8025400
	str r0, [r1, #8]
_080252E2:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x2a
	muls r0, r1, r0
	muls r1, r0, r1
	lsls r1, r1, #8
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _0802532A
	cmp r5, #0
	bne _080253E4
	ldr r0, _08025320 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080253E4
	.align 2, 0
_0802530C: .4byte gUnknown_03002034
_08025310: .4byte 0x0000FFE1
_08025314: .4byte gPlayer
_08025318: .4byte gUnknown_03005088
_0802531C: .4byte gUnknown_03005AB0
_08025320: .4byte gCurTask
_08025324: .4byte sub_8025400
_08025328:
	movs r4, #0
_0802532A:
	ldrh r0, [r6, #0x1a]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r3, r0, #0
	ldr r0, _08025380 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r3
	beq _080253E4
	mov r0, sb
	lsls r1, r0, #3
	ldrh r2, [r6, #0x18]
	adds r1, r1, r2
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	movs r2, #0
	strh r0, [r3]
	ldr r0, [r6, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08025388
	lsls r1, r7, #3
	ldrh r0, [r6, #0x16]
	subs r0, r0, r1
	subs r0, #8
	ldr r2, _08025384 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	b _08025394
	.align 2, 0
_08025380: .4byte iwram_end
_08025384: .4byte 0x000001FF
_08025388:
	lsls r0, r7, #3
	ldrh r1, [r6, #0x16]
	adds r0, r0, r1
	ldr r2, _080253F4 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
_08025394:
	strh r0, [r3, #2]
	adds r0, r6, #0
	adds r0, #0x25
	ldrb r0, [r0]
	mov r1, sl
	ldrh r2, [r1, #4]
	adds r2, r2, r0
	ldr r1, _080253F8 @ =0xFFFFF000
	adds r0, r1, #0
	ands r2, r0
	ldr r0, [r6, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	lsrs r0, r0, #2
	orrs r2, r0
	ldr r0, [r6, #4]
	ldr r1, _080253FC @ =0xF9FF0000
	adds r0, r0, r1
	lsrs r0, r0, #5
	adds r0, r0, r5
	orrs r2, r0
	strh r2, [r3, #4]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bhi _080253D4
	b _0802527A
_080253D4:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bhi _080253E4
	b _08025278
_080253E4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080253F4: .4byte 0x000001FF
_080253F8: .4byte 0xFFFFF000
_080253FC: .4byte 0xF9FF0000

	thumb_func_start sub_8025400
sub_8025400: @ 0x08025400
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r6, _08025498 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _0802549C @ =0x0300000C
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
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _080254A0 @ =gCamera
	ldrh r0, [r3, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r2, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r3, #2]
	subs r1, r1, r0
	strh r1, [r5, #0x18]
	mov r1, r8
	ldrh r0, [r1, #0x3c]
	adds r0, #1
	strh r0, [r1, #0x3c]
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _08025478
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _080254A4
_08025478:
	ldrh r0, [r5, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080254A4
	mov r1, r8
	ldrb r0, [r1, #8]
	ldr r2, [sp]
	strb r0, [r2]
	ldr r0, [r6]
	bl TaskDestroy
	b _080255C0
	.align 2, 0
_08025498: .4byte gCurTask
_0802549C: .4byte 0x0300000C
_080254A0: .4byte gCamera
_080254A4:
	ldr r0, _08025504 @ =gUnknown_03002034
	ldr r1, [r0]
	ldrh r0, [r5, #0xa]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r5, #0xc]
	ldrb r1, [r0, #1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	str r2, [sp, #4]
	movs r7, #0
	movs r3, #0
	mov sb, r3
	lsls r4, r4, #0x10
	mov sl, r4
_080254CA:
	movs r6, #0
_080254CC:
	ldr r1, _08025508 @ =0x0000FFE1
	adds r0, r7, r1
	mov r2, r8
	ldrh r2, [r2, #0x3c]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x2a
	muls r1, r0, r1
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r4, r0, #0x10
	mov r3, sl
	asrs r0, r3, #0x10
	cmp r4, r0
	ble _08025510
	cmp r7, #0
	bne _080255C0
	ldr r0, _0802550C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	mov r1, r8
	ldrb r0, [r1, #8]
	ldr r2, [sp]
	strb r0, [r2]
	b _080255C0
	.align 2, 0
_08025504: .4byte gUnknown_03002034
_08025508: .4byte 0x0000FFE1
_0802550C: .4byte gCurTask
_08025510:
	ldrh r0, [r5, #0x1a]
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r1, r3, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl OamMalloc
	adds r3, r0, #0
	ldr r0, _08025560 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r3
	beq _080255C0
	mov r1, sb
	lsls r0, r1, #3
	ldrh r2, [r5, #0x18]
	adds r0, r0, r2
	adds r0, r4, r0
	movs r1, #0xff
	ands r0, r1
	movs r2, #0
	strh r0, [r3]
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08025568
	lsls r1, r6, #3
	ldrh r0, [r5, #0x16]
	subs r0, r0, r1
	subs r0, #8
	ldr r2, _08025564 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	b _08025574
	.align 2, 0
_08025560: .4byte iwram_end
_08025564: .4byte 0x000001FF
_08025568:
	lsls r0, r6, #3
	ldrh r1, [r5, #0x16]
	adds r0, r0, r1
	ldr r2, _080255D0 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
_08025574:
	strh r0, [r3, #2]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	ldr r1, [sp, #4]
	ldrh r2, [r1, #4]
	adds r2, r2, r0
	ldr r1, _080255D4 @ =0xFFFFF000
	adds r0, r1, #0
	ands r2, r0
	ldr r0, [r5, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	lsrs r0, r0, #2
	orrs r2, r0
	ldr r0, [r5, #4]
	ldr r1, _080255D8 @ =0xF9FF0000
	adds r0, r0, r1
	lsrs r0, r0, #5
	adds r0, r0, r7
	orrs r2, r0
	strh r2, [r3, #4]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _080254CC
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bls _080254CA
_080255C0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080255D0: .4byte 0x000001FF
_080255D4: .4byte 0xFFFFF000
_080255D8: .4byte 0xF9FF0000

	thumb_func_start sub_80255DC
sub_80255DC: @ 0x080255DC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start Task_ToBeContinuedScreen
Task_ToBeContinuedScreen: @ 0x080255F0
	push {r4, r5, r6, r7, lr}
	ldr r3, _08025668 @ =gCurTask
	ldr r6, [r3]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r7, [r4]
	ldrb r2, [r4, #8]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	ldrh r1, [r4, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0802566C @ =gPlayer
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov ip, r3
	cmp r0, r2
	ble _0802568C
	ldr r2, _08025670 @ =gUnknown_03005004
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08025674 @ =gBldRegs
	movs r1, #0
	movs r0, #0xff
	strh r0, [r2]
	strh r1, [r2, #4]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0xa]
	ldr r0, _08025678 @ =sub_80256D4
	str r0, [r6, #8]
	ldr r0, _0802567C @ =gMPlayInfo_BGM
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08025680 @ =gMPlayInfo_SE1
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08025684 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _08025688 @ =gMPlayInfo_SE3
	movs r1, #4
	bl m4aMPlayFadeOut
	b _080256CA
	.align 2, 0
_08025668: .4byte gCurTask
_0802566C: .4byte gPlayer
_08025670: .4byte gUnknown_03005004
_08025674: .4byte gBldRegs
_08025678: .4byte sub_80256D4
_0802567C: .4byte gMPlayInfo_BGM
_08025680: .4byte gMPlayInfo_SE1
_08025684: .4byte gMPlayInfo_SE2
_08025688: .4byte gMPlayInfo_SE3
_0802568C:
	ldr r3, _080256D0 @ =gCamera
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r6, #0xb8
	lsls r6, r6, #1
	adds r0, r1, r6
	cmp r2, r0
	bgt _080256BE
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _080256BE
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _080256BE
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _080256CA
_080256BE:
	ldrb r0, [r4, #8]
	strb r0, [r7]
	mov r6, ip
	ldr r0, [r6]
	bl TaskDestroy
_080256CA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080256D0: .4byte gCamera

	thumb_func_start sub_80256D4
sub_80256D4: @ 0x080256D4
	ldr r0, _08025704 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #0xc]
	adds r0, #0x40
	strh r0, [r1, #0xc]
	ldr r3, _08025708 @ =gBldRegs
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	strh r0, [r3, #4]
	movs r0, #0xc
	ldrsh r1, [r1, r0]
	ldr r0, _0802570C @ =0x00000FFF
	cmp r1, r0
	ble _08025700
	movs r0, #0x10
	strh r0, [r3, #4]
	ldr r0, _08025710 @ =sub_8025714
	str r0, [r2, #8]
_08025700:
	bx lr
	.align 2, 0
_08025704: .4byte gCurTask
_08025708: .4byte gBldRegs
_0802570C: .4byte 0x00000FFF
_08025710: .4byte sub_8025714

	thumb_func_start sub_8025714
sub_8025714: @ 0x08025714
	push {lr}
	ldr r1, _0802573C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08025740 @ =gUnknown_03002384
	ldr r0, _08025744 @ =gUnknown_0300211C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08025748 @ =gUnknown_03004C30
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0802574C @ =gVramGraphicsCopyCursor
	ldr r0, _08025750 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_80122E4
	pop {r0}
	bx r0
	.align 2, 0
_0802573C: .4byte 0x0000FFFF
_08025740: .4byte gUnknown_03002384
_08025744: .4byte gUnknown_0300211C
_08025748: .4byte gUnknown_03004C30
_0802574C: .4byte gVramGraphicsCopyCursor
_08025750: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start CreateEntity_ToBeContinuedScreen
CreateEntity_ToBeContinuedScreen: @ 0x08025754
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0802579C @ =Task_ToBeContinuedScreen
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	str r6, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #8]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802579C: .4byte Task_ToBeContinuedScreen

	thumb_func_start sub_80257A0
sub_80257A0: @ 0x080257A0
	push {r4, r5, r6, r7, lr}
	ldr r7, _0802581C @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r6, [r4]
	ldr r1, [r6, #4]
	cmp r1, #0
	blt _080257BE
	ldr r0, _08025820 @ =0x0000FFFF
	ands r1, r0
	cmp r1, #0
	bne _08025870
_080257BE:
	ldr r3, _08025824 @ =gMPlayTable
	ldr r5, _08025828 @ =gSongTable
	ldrh r2, [r4, #8]
	lsls r2, r2, #3
	adds r2, r2, r5
	ldrh r1, [r2, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bne _08025870
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r2, [r4, #4]
	cmp r2, r0
	bne _08025830
	ldr r0, _0802582C @ =gPlayer
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08025830
	adds r0, r6, #0
	adds r1, r2, #0
	bl MPlayStart
	ldr r0, [r4]
	bl m4aMPlayImmInit
	ldr r0, [r4]
	movs r1, #0xff
	movs r2, #4
	bl m4aMPlayVolumeControl
	ldr r0, [r4]
	bl MPlayStop
	ldr r0, [r7]
	bl TaskDestroy
	b _08025870
	.align 2, 0
_0802581C: .4byte gCurTask
_08025820: .4byte 0x0000FFFF
_08025824: .4byte gMPlayTable
_08025828: .4byte gSongTable
_0802582C: .4byte gPlayer
_08025830:
	ldr r0, [r4]
	adds r1, r2, #0
	bl MPlayStart
	ldr r0, [r4]
	bl m4aMPlayImmInit
	ldr r0, _08025878 @ =gPlayer
	adds r0, #0x26
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08025856
	ldr r0, _0802587C @ =gMPlayInfo_BGM
	movs r1, #0x80
	lsls r1, r1, #2
	bl m4aMPlayTempoControl
_08025856:
	ldr r0, [r4]
	movs r1, #0xff
	movs r2, #4
	bl m4aMPlayVolumeControl
	ldr r0, [r4]
	movs r1, #4
	bl m4aMPlayFadeIn
	ldr r0, _08025880 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08025870:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025878: .4byte gPlayer
_0802587C: .4byte gMPlayInfo_BGM
_08025880: .4byte gCurTask

	thumb_func_start sub_8025884
sub_8025884: @ 0x08025884
	ldr r0, _08025890 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08025894 @ =sub_80257A0
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08025890: .4byte gCurTask
_08025894: .4byte sub_80257A0

	thumb_func_start sub_8025898
sub_8025898: @ 0x08025898
	ldr r0, _080258A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080258A8 @ =sub_80258AC
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_080258A4: .4byte gCurTask
_080258A8: .4byte sub_80258AC

	thumb_func_start sub_80258AC
sub_80258AC: @ 0x080258AC
	push {r4, r5, lr}
	ldr r5, _0802590C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4]
	ldr r1, [r0, #4]
	cmp r1, #0
	blt _080258CA
	ldr r0, _08025910 @ =0x0000FFFF
	ands r1, r0
	cmp r1, #0
	bne _08025904
_080258CA:
	ldrh r0, [r4, #0xa]
	bl m4aSongNumStartOrContinue
	ldr r2, _08025914 @ =gMPlayTable
	ldr r1, _08025918 @ =gSongTable
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r4, [r0]
	adds r0, r4, #0
	movs r1, #0xff
	movs r2, #4
	bl m4aMPlayVolumeControl
	adds r0, r4, #0
	movs r1, #4
	bl m4aMPlayFadeIn
	ldr r0, [r5]
	bl TaskDestroy
	ldr r1, _0802591C @ =gUnknown_03005730
	movs r0, #0
	strb r0, [r1]
_08025904:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802590C: .4byte gCurTask
_08025910: .4byte 0x0000FFFF
_08025914: .4byte gMPlayTable
_08025918: .4byte gSongTable
_0802591C: .4byte gUnknown_03005730

	thumb_func_start sub_8025920
sub_8025920: @ 0x08025920
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, _08025974 @ =gMPlayTable
	ldr r0, _08025978 @ =gSongTable
	lsls r2, r4, #3
	adds r2, r2, r0
	ldrh r1, [r2, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r5, [r0]
	ldr r6, [r5]
	ldr r0, [r2]
	cmp r6, r0
	beq _0802596A
	ldr r0, _0802597C @ =sub_8025884
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0]
	str r6, [r0, #4]
	strh r4, [r0, #8]
	adds r0, r4, #0
	bl m4aSongNumStart
_0802596A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08025974: .4byte gMPlayTable
_08025978: .4byte gSongTable
_0802597C: .4byte sub_8025884

	thumb_func_start sub_8025980
sub_8025980: @ 0x08025980
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _080259D8 @ =gMPlayTable
	ldr r4, [r0, #0x24]
	ldr r5, [r4]
	ldr r1, _080259DC @ =gSongTable
	lsls r0, r6, #3
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r5, r0
	beq _080259CE
	ldr r0, _080259E0 @ =sub_8025898
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r4, [r0]
	str r5, [r0, #4]
	strh r6, [r0, #8]
	strh r7, [r0, #0xa]
	ldr r1, _080259E4 @ =gUnknown_03005730
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _080259E8 @ =gMPlayInfo_SE3
	ldr r1, _080259EC @ =song043
	bl MPlayStart
_080259CE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080259D8: .4byte gMPlayTable
_080259DC: .4byte gSongTable
_080259E0: .4byte sub_8025898
_080259E4: .4byte gUnknown_03005730
_080259E8: .4byte gMPlayInfo_SE3
_080259EC: .4byte song043
