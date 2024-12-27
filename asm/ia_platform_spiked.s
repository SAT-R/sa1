.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Platform_Spiked
CreateEntity_Platform_Spiked: @ 0x0807F98C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0807FA0C @ =Task_Platform_Spiked
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0807FA10 @ =TaskDestructor_Platform_Spiked
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	adds r0, #0xc
	adds r6, r2, r0
	movs r1, #0
	movs r3, #0
	mov r0, r8
	strh r0, [r5, #4]
	mov r0, sb
	strh r0, [r5, #6]
	str r7, [r5]
	ldrb r0, [r7]
	strb r0, [r5, #8]
	strb r4, [r5, #9]
	str r3, [r5, #0x3c]
	str r3, [r5, #0x40]
	ldr r4, _0807FA14 @ =0x0300004F
	adds r0, r2, r4
	strb r1, [r0]
	subs r4, #1
	adds r0, r2, r4
	strb r1, [r0]
	ldrb r0, [r7, #5]
	ldrb r1, [r7, #6]
	cmp r0, r1
	bls _0807FA2C
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _0807FA18
	movs r0, #4
	str r0, [r5, #0x44]
	subs r4, #2
	adds r0, r2, r4
	strh r3, [r0]
	str r3, [r5, #0x48]
	b _0807FA56
	.align 2, 0
_0807FA0C: .4byte Task_Platform_Spiked
_0807FA10: .4byte TaskDestructor_Platform_Spiked
_0807FA14: .4byte 0x0300004F
_0807FA18:
	movs r0, #4
	str r0, [r5, #0x44]
	ldr r0, _0807FA28 @ =0x0300004C
	adds r1, r2, r0
	movs r0, #0x80
	strh r0, [r1]
	str r3, [r5, #0x48]
	b _0807FA56
	.align 2, 0
_0807FA28: .4byte 0x0300004C
_0807FA2C:
	movs r0, #4
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _0807FA48
	str r3, [r5, #0x44]
	movs r0, #4
	str r0, [r5, #0x48]
	ldr r1, _0807FA44 @ =0x0300004C
	adds r0, r2, r1
	strh r3, [r0]
	b _0807FA56
	.align 2, 0
_0807FA44: .4byte 0x0300004C
_0807FA48:
	str r3, [r5, #0x44]
	movs r0, #4
	str r0, [r5, #0x48]
	ldr r4, _0807FA98 @ =0x0300004C
	adds r1, r2, r4
	movs r0, #0x80
	strh r0, [r1]
_0807FA56:
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r6, #0x16]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r6, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	ldr r0, _0807FA9C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #2
	beq _0807FA8A
	cmp r1, #0x10
	bne _0807FAA4
_0807FA8A:
	movs r0, #0x14
	bl VramMalloc
	str r0, [r6, #4]
	ldr r0, _0807FAA0 @ =0x00000209
	b _0807FAB6
	.align 2, 0
_0807FA98: .4byte 0x0300004C
_0807FA9C: .4byte gCurrentLevel
_0807FAA0: .4byte 0x00000209
_0807FAA4:
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #0
	bne _0807FACC
	movs r0, #0x24
	bl VramMalloc
	str r0, [r6, #4]
	ldr r0, _0807FAC8 @ =0x0000021A
_0807FAB6:
	strh r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #1
	strb r0, [r1]
	b _0807FAE4
	.align 2, 0
_0807FAC8: .4byte 0x0000021A
_0807FACC:
	movs r0, #0x24
	bl VramMalloc
	str r0, [r6, #4]
	ldr r0, _0807FB28 @ =0x0000021B
	strh r0, [r6, #0xa]
	adds r0, r6, #0
	adds r0, #0x20
	strb r4, [r0]
	adds r0, r5, #0
	adds r0, #0x50
	strb r4, [r0]
_0807FAE4:
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r1, [r6, #8]
	strh r1, [r6, #0x14]
	strh r1, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807FB28: .4byte 0x0000021B

	thumb_func_start Task_Platform_Spiked
Task_Platform_Spiked: @ 0x0807FB2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	movs r0, #0
	str r0, [sp, #0x20]
	movs r1, #0
	str r1, [sp, #0x24]
	ldr r0, _0807FC30 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov sl, r0
	ldr r2, _0807FC34 @ =0x0300000C
	adds r2, r6, r2
	str r2, [sp, #0x10]
	ldr r3, [r0]
	str r3, [sp, #0x1c]
	ldr r7, [r0, #0x44]
	cmp r7, #0
	beq _0807FB90
	ldr r5, [r0, #0x3c]
	ldrb r3, [r3, #5]
	lsls r3, r3, #0xb
	ldr r4, _0807FC38 @ =gSineTable
	ldr r2, _0807FC3C @ =gStageTime
	ldr r1, _0807FC40 @ =0x0300004C
	adds r0, r6, r1
	ldrh r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r7, r0
	ldr r1, _0807FC44 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	mov r3, sl
	str r0, [r3, #0x3c]
	subs r5, r0, r5
	str r5, [sp, #0x20]
_0807FB90:
	mov r4, sl
	ldr r7, [r4, #0x48]
	cmp r7, #0
	beq _0807FBCC
	ldr r5, [r4, #0x40]
	ldr r0, [sp, #0x1c]
	ldrb r3, [r0, #6]
	lsls r3, r3, #0xb
	ldr r4, _0807FC38 @ =gSineTable
	ldr r2, _0807FC3C @ =gStageTime
	ldr r1, _0807FC40 @ =0x0300004C
	adds r0, r6, r1
	ldrh r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r7, r0
	ldr r1, _0807FC44 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	mov r3, sl
	str r0, [r3, #0x40]
	subs r5, r0, r5
	str r5, [sp, #0x24]
_0807FBCC:
	mov r4, sl
	ldrb r1, [r4, #8]
	lsls r1, r1, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, [sp, #0x1c]
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _0807FC48 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r1, #0x10
	str r4, [sp, #0x14]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r4, sl
	ldr r0, [r4, #0x3c]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp, #0x10]
	strh r1, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsrs r1, r2, #0x10
	str r1, [sp, #0x18]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldr r3, [sp, #0x10]
	strh r2, [r3, #0x18]
	movs r6, #0
	ldr r7, _0807FC4C @ =gPartner
	ldr r4, _0807FC50 @ =gPlayer
	mov r8, r4

_0807FC1C:
	cmp r6, #0
	beq _0807FC54
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	ands r0, r1
	ldr r2, [sp, #0x14]
	lsls r2, r2, #0x10
	str r2, [sp, #0x28]
	b _0807FC62
	.align 2, 0
_0807FC30: .4byte gCurTask
_0807FC34: .4byte 0x0300000C
_0807FC38: .4byte gSineTable
_0807FC3C: .4byte gStageTime
_0807FC40: .4byte 0x0300004C
_0807FC44: .4byte 0x000003FF
_0807FC48: .4byte gCamera
_0807FC4C: .4byte gPartner
_0807FC50: .4byte gPlayer
_0807FC54:
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r4, #0x80
	ands r0, r4
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	str r1, [sp, #0x28]
_0807FC62:
	cmp r0, #0
	beq _0807FC6A
	bl _08080520
_0807FC6A:
	cmp r6, #0
	beq _0807FC7E
	ldr r1, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	ldr r2, [sp, #0x14]
	lsls r2, r2, #0x10
	str r2, [sp, #0x28]
	b _0807FC8E
_0807FC7E:
	mov r3, r8
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	ldr r4, [sp, #0x14]
	lsls r4, r4, #0x10
	str r4, [sp, #0x28]
_0807FC8E:
	cmp r1, #0
	beq _0807FC96
	bl _08080520
_0807FC96:
	cmp r6, #0
	beq _0807FC9E
	ldr r5, [r7]
	b _0807FCA2
_0807FC9E:
	mov r0, r8
	ldr r5, [r0]
_0807FCA2:
	mov r1, sl
	adds r1, #0x4e
	ldrb r0, [r1]
	asrs r0, r6
	movs r2, #1
	ands r0, r2
	str r1, [sp, #0x30]
	cmp r0, #0
	bne _0807FCB6
	b _0807FEAC
_0807FCB6:
	cmp r6, #0
	beq _0807FCC4
	ldr r0, [r7]
	ldr r3, [sp, #0x20]
	adds r0, r0, r3
	str r0, [r7]
	b _0807FCCE
_0807FCC4:
	mov r4, r8
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	str r0, [r4]
_0807FCCE:
	ldr r2, [sp, #0x24]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r2, r3
	cmp r6, #0
	beq _0807FCE2
	ldr r0, [r7, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
	b _0807FCEA
_0807FCE2:
	mov r4, r8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_0807FCEA:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	ble _0807FD50
	cmp r6, #0
	beq _0807FCF8
	ldr r0, [r7]
	b _0807FCFC
_0807FCF8:
	mov r1, r8
	ldr r0, [r1]
_0807FCFC:
	asrs r0, r0, #8
	adds r3, r0, #4
	cmp r6, #0
	beq _0807FD08
	ldr r0, [r7, #4]
	b _0807FD0C
_0807FD08:
	mov r2, r8
	ldr r0, [r2, #4]
_0807FD0C:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0807FD1C
	ldr r4, _0807FD18 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _0807FD20
	.align 2, 0
_0807FD18: .4byte gUnknown_03005AD7
_0807FD1C:
	ldr r0, _0807FD40 @ =gUnknown_03005A47
	ldrb r2, [r0]
_0807FD20:
	ldr r0, _0807FD44 @ =sub_803FC64
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	bge _0807FDB0
	lsls r1, r0, #8
	cmp r6, #0
	beq _0807FD48
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	b _0807FDB0
	.align 2, 0
_0807FD40: .4byte gUnknown_03005A47
_0807FD44: .4byte sub_803FC64
_0807FD48:
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r1
	b _0807FDAE
_0807FD50:
	cmp r6, #0
	beq _0807FD58
	ldr r0, [r7]
	b _0807FD5C
_0807FD58:
	mov r3, r8
	ldr r0, [r3]
_0807FD5C:
	asrs r3, r0, #8
	cmp r6, #0
	beq _0807FD66
	ldr r0, [r7, #4]
	b _0807FD6A
_0807FD66:
	mov r4, r8
	ldr r0, [r4, #4]
_0807FD6A:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0807FD7C
	ldr r0, _0807FD78 @ =gUnknown_03005AD7
	ldrb r2, [r0]
	b _0807FD80
	.align 2, 0
_0807FD78: .4byte gUnknown_03005AD7
_0807FD7C:
	ldr r4, _0807FDA0 @ =gUnknown_03005A47
	ldrb r2, [r4]
_0807FD80:
	ldr r0, _0807FDA4 @ =sub_803FC64
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_804021C
	cmp r0, #0
	bge _0807FDB0
	lsls r1, r0, #8
	cmp r6, #0
	beq _0807FDA8
	ldr r0, [r7]
	subs r0, r0, r1
	str r0, [r7]
	b _0807FDB0
	.align 2, 0
_0807FDA0: .4byte gUnknown_03005A47
_0807FDA4: .4byte sub_803FC64
_0807FDA8:
	mov r2, r8
	ldr r0, [r2]
	subs r0, r0, r1
_0807FDAE:
	str r0, [r2]
_0807FDB0:
	cmp r6, #0
	beq _0807FDB8
	ldr r0, [r7, #4]
	b _0807FDBC
_0807FDB8:
	mov r3, r8
	ldr r0, [r3, #4]
_0807FDBC:
	asrs r0, r0, #8
	subs r3, r0, #5
	cmp r6, #0
	beq _0807FDC8
	ldr r0, [r7]
	b _0807FDCC
_0807FDC8:
	mov r4, r8
	ldr r0, [r4]
_0807FDCC:
	asrs r1, r0, #8
	cmp r6, #0
	beq _0807FDDC
	ldr r0, _0807FDD8 @ =gUnknown_03005AD7
	ldrb r2, [r0]
	b _0807FDE0
	.align 2, 0
_0807FDD8: .4byte gUnknown_03005AD7
_0807FDDC:
	ldr r4, _0807FE0C @ =gUnknown_03005A47
	ldrb r2, [r4]
_0807FDE0:
	ldr r0, _0807FE10 @ =sub_803FD5C
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_804021C
	cmp r0, #0
	bge _0807FE5A
	mov r1, sl
	ldr r0, [r1, #0x48]
	ldr r2, [sp, #0x14]
	lsls r2, r2, #0x10
	str r2, [sp, #0x28]
	cmp r0, #0
	bne _0807FE02
	b _080803AE
_0807FE02:
	cmp r6, #0
	beq _0807FE14
	str r5, [r7]
	b _0807FE18
	.align 2, 0
_0807FE0C: .4byte gUnknown_03005A47
_0807FE10: .4byte sub_803FD5C
_0807FE14:
	mov r3, r8
	str r5, [r3]
_0807FE18:
	cmp r6, #0
	beq _0807FE28
	ldr r0, [r7, #0x10]
	movs r4, #0x21
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [r7, #0x10]
	b _0807FE34
_0807FE28:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #0x10]
_0807FE34:
	cmp r6, #0
	beq _0807FE48
	ldr r0, [r7, #0x10]
	movs r3, #0x80
	orrs r0, r3
	str r0, [r7, #0x10]
	ldr r4, [sp, #0x14]
	lsls r4, r4, #0x10
	str r4, [sp, #0x28]
	b _080803AE
_0807FE48:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r1, #0x10]
	ldr r3, [sp, #0x14]
	lsls r3, r3, #0x10
	str r3, [sp, #0x28]
	b _080803AE
_0807FE5A:
	mov r4, sl
	ldr r1, [r4, #0x3c]
	asrs r1, r1, #8
	ldr r0, [sp, #0x14]
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r3, [sp, #0x18]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r3, _0807FEA4 @ =gPlayer
	str r2, [sp, #0x28]
	cmp r6, #0
	beq _0807FE86
	ldr r3, _0807FEA8 @ =gPartner
_0807FE86:
	ldr r0, [sp, #0x10]
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800CE34
	cmp r0, #0
	beq _0807FE96
	b _080803AE
_0807FE96:
	movs r1, #1
	lsls r1, r6
	ldr r4, [sp, #0x30]
	ldrb r0, [r4]
	bics r0, r1
	strb r0, [r4]
	b _080803AE
	.align 2, 0
_0807FEA4: .4byte gPlayer
_0807FEA8: .4byte gPartner
_0807FEAC:
	add r2, sp, #4
	cmp r6, #0
	beq _0807FEB6
	ldrb r0, [r7, #0xe]
	b _0807FEBA
_0807FEB6:
	mov r1, r8
	ldrb r0, [r1, #0xe]
_0807FEBA:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	adds r5, r0, #0
	cmp r6, #0
	beq _0807FECC
	ldrb r0, [r7, #0xf]
	b _0807FED0
_0807FECC:
	mov r4, r8
	ldrb r0, [r4, #0xf]
_0807FED0:
	movs r3, #1
	subs r1, r3, r0
	mov r0, sp
	adds r0, #9
	strb r1, [r0]
	cmp r6, #0
	beq _0807FEE2
	ldrb r0, [r7, #0xe]
	b _0807FEE6
_0807FEE2:
	mov r4, r8
	ldrb r0, [r4, #0xe]
_0807FEE6:
	adds r1, r0, #5
	mov r0, sp
	adds r0, #0xa
	strb r1, [r0]
	cmp r6, #0
	beq _0807FEF6
	ldrb r0, [r7, #0xf]
	b _0807FEFA
_0807FEF6:
	mov r1, r8
	ldrb r0, [r1, #0xf]
_0807FEFA:
	subs r1, r0, #1
	mov r0, sp
	adds r0, #0xb
	strb r1, [r0]
	adds r0, r2, #0
	adds r1, r5, #0
	movs r2, #4
	bl memcpy
	ldr r2, [sp, #0x14]
	lsls r3, r2, #0x10
	asrs r1, r3, #0x10
	mov r4, sl
	ldr r0, [r4, #0x3c]
	asrs r0, r0, #8
	adds r1, r1, r0
	mov ip, r1
	ldr r0, [sp, #0x18]
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r4, r1, r0
	add r5, sp, #4
	str r3, [sp, #0x28]
	str r2, [sp, #0x2c]
	cmp r6, #0
	beq _0807FF36
	str r7, [sp]
	b _0807FF3A
_0807FF36:
	mov r1, r8
	str r1, [sp]
_0807FF3A:
	ldr r0, [sp, #0x10]
	mov r1, ip
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_80805C8
	cmp r6, #0
	beq _0807FF4E
	ldr r5, [r7]
	b _0807FF52
_0807FF4E:
	mov r2, r8
	ldr r5, [r2]
_0807FF52:
	cmp r6, #0
	beq _0807FF5C
	ldr r3, [r7, #4]
	mov sb, r3
	b _0807FF62
_0807FF5C:
	ldr r4, _0807FFD8 @ =gPlayer
	ldr r4, [r4, #4]
	mov sb, r4
_0807FF62:
	mov r0, sl
	ldr r1, [r0, #0x3c]
	asrs r1, r1, #8
	ldr r2, [sp, #0x28]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	mov r3, sl
	ldr r1, [r3, #0x40]
	asrs r1, r1, #8
	ldr r2, [sp, #0x2c]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _0807FFD8 @ =gPlayer
	cmp r6, #0
	beq _0807FF8A
	ldr r3, _0807FFDC @ =gPartner
_0807FF8A:
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	bl sub_80096B0
	adds r3, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	bne _0807FFA0
	b _080801F0
_0807FFA0:
	mov r2, sl
	adds r2, #0x4f
	movs r0, #1
	lsls r0, r6
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _08080098
	mov r3, sl
	ldr r0, [r3, #0x44]
	cmp r0, #0
	bne _0807FFC2
	b _080803AE
_0807FFC2:
	ldr r0, _0807FFE0 @ =gInput
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808002A
	cmp r6, #0
	beq _0807FFE4
	ldr r0, [r7, #0x10]
	b _0807FFE8
	.align 2, 0
_0807FFD8: .4byte gPlayer
_0807FFDC: .4byte gPartner
_0807FFE0: .4byte gInput
_0807FFE4:
	mov r4, r8
	ldr r0, [r4, #0x10]
_0807FFE8:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0808002A
	cmp r6, #0
	beq _08080004
	ldr r0, [r7]
	ldr r1, _08080000 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7]
	b _0808000E
	.align 2, 0
_08080000: .4byte 0xFFFFFE00
_08080004:
	mov r2, r8
	ldr r0, [r2]
	ldr r3, _0808001C @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r2]
_0808000E:
	cmp r6, #0
	beq _08080020
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r7, #0x10]
	b _0808002A
	.align 2, 0
_0808001C: .4byte 0xFFFFFE00
_08080020:
	mov r4, r8
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x10]
_0808002A:
	cmp r6, #0
	beq _08080032
	ldr r0, [r7]
	b _08080036
_08080032:
	mov r1, r8
	ldr r0, [r1]
_08080036:
	asrs r3, r0, #8
	cmp r6, #0
	beq _08080040
	ldr r0, [r7, #4]
	b _08080044
_08080040:
	mov r2, r8
	ldr r0, [r2, #4]
_08080044:
	asrs r1, r0, #8
	cmp r6, #0
	beq _08080054
	ldr r4, _08080050 @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _08080058
	.align 2, 0
_08080050: .4byte gUnknown_03005AD7
_08080054:
	ldr r0, _0808007C @ =gUnknown_03005A47
	ldrb r2, [r0]
_08080058:
	ldr r0, _08080080 @ =sub_803FC64
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_804021C
	cmp r0, #0
	blt _0808006C
	b _080803AE
_0808006C:
	cmp r6, #0
	beq _08080084
_08080070:
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _08080090
	.align 2, 0
_0808007C: .4byte gUnknown_03005A47
_08080080: .4byte sub_803FC64
_08080084:
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r3, #0x21
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r2, #0x10]
_08080090:
	cmp r6, #0
	beq _08080096
	b _080801B8
_08080096:
	b _080801C2
_08080098:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _08080154
	mov r3, sl
	ldr r0, [r3, #0x44]
	cmp r0, #0
	bne _080800AC
	b _080803AE
_080800AC:
	ldr r0, _080800C0 @ =gInput
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08080104
	cmp r6, #0
	beq _080800C4
	ldr r0, [r7, #0x10]
	b _080800C8
	.align 2, 0
_080800C0: .4byte gInput
_080800C4:
	mov r4, r8
	ldr r0, [r4, #0x10]
_080800C8:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08080104
	cmp r6, #0
	beq _080800E0
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r7]
	b _080800EC
_080800E0:
	mov r2, r8
	ldr r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r2]
_080800EC:
	cmp r6, #0
	beq _080800FA
	ldr r0, [r7, #0x10]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r7, #0x10]
	b _08080104
_080800FA:
	mov r4, r8
	ldr r0, [r4, #0x10]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x10]
_08080104:
	cmp r6, #0
	beq _0808010C
	ldr r0, [r7]
	b _08080110
_0808010C:
	mov r1, r8
	ldr r0, [r1]
_08080110:
	asrs r3, r0, #8
	cmp r6, #0
	beq _0808011A
	ldr r0, [r7, #4]
	b _0808011E
_0808011A:
	mov r2, r8
	ldr r0, [r2, #4]
_0808011E:
	asrs r1, r0, #8
	cmp r6, #0
	beq _08080130
	ldr r4, _0808012C @ =gUnknown_03005AD7
	ldrb r2, [r4]
	b _08080134
	.align 2, 0
_0808012C: .4byte gUnknown_03005AD7
_08080130:
	ldr r0, _0808014C @ =gUnknown_03005A47
	ldrb r2, [r0]
_08080134:
	ldr r0, _08080150 @ =sub_803FC64
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #8
	bl sub_804021C
	cmp r0, #0
	blt _08080146
	b _080803AE
_08080146:
	cmp r6, #0
	bne _08080070
	b _08080084
	.align 2, 0
_0808014C: .4byte gUnknown_03005A47
_08080150: .4byte sub_803FC64
_08080154:
	mov r3, sl
	ldr r0, [r3, #0x48]
	cmp r0, #0
	beq _080801CE
	cmp r6, #0
	beq _08080164
	str r5, [r7]
	b _08080168
_08080164:
	mov r4, r8
	str r5, [r4]
_08080168:
	cmp r6, #0
	beq _08080170
	ldr r0, [r7, #0x10]
	b _08080174
_08080170:
	mov r1, r8
	ldr r0, [r1, #0x10]
_08080174:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080801CE
	cmp r6, #0
	beq _08080184
	str r5, [r7]
	b _08080188
_08080184:
	mov r2, r8
	str r5, [r2]
_08080188:
	cmp r6, #0
	beq _08080192
	mov r3, sb
	str r3, [r7, #4]
	b _08080198
_08080192:
	mov r4, sb
	mov r0, r8
	str r4, [r0, #4]
_08080198:
	cmp r6, #0
	beq _080801A8
	ldr r0, [r7, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #0x10]
	b _080801B4
_080801A8:
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r3, #0x21
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r2, #0x10]
_080801B4:
	cmp r6, #0
	beq _080801C2
_080801B8:
	ldr r0, [r7, #0x10]
	movs r4, #0x80
	orrs r0, r4
	str r0, [r7, #0x10]
	b _080803AE
_080801C2:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	orrs r0, r2
	str r0, [r1, #0x10]
	b _080803AE
_080801CE:
	mov r0, sl
	adds r0, #0x50
	ldrb r0, [r0]
	cmp r0, #0
	beq _080801DA
	b _080803AE
_080801DA:
	ldr r0, _080801E8 @ =gPlayer
	cmp r6, #0
	beq _080801E2
	ldr r0, _080801EC @ =gPartner
_080801E2:
	bl sub_800C558
	b _080803AE
	.align 2, 0
_080801E8: .4byte gPlayer
_080801EC: .4byte gPartner
_080801F0:
	mov r1, sl
	adds r1, #0x4f
	ldrb r0, [r1]
	asrs r0, r6
	movs r3, #1
	ands r0, r3
	adds r2, r1, #0
	cmp r0, #0
	bne _08080204
	b _080803AE
_08080204:
	cmp r6, #0
	beq _08080218
	ldr r4, _08080214 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0xe
	beq _08080224
	b _080803AE
	.align 2, 0
_08080214: .4byte gUnknown_03005AF0
_08080218:
	ldr r1, _08080238 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0xe
	beq _08080224
	b _080803AE
_08080224:
	movs r0, #1
	lsls r0, r6
	ldrb r1, [r2]
	bics r1, r0
	movs r0, #0
	strb r1, [r2]
	cmp r6, #0
	beq _0808023C
	strh r0, [r7, #0xc]
	b _08080240
	.align 2, 0
_08080238: .4byte gUnknown_03005A60
_0808023C:
	mov r2, r8
	strh r6, [r2, #0xc]
_08080240:
	ldr r0, _0808025C @ =gPlayer
	cmp r6, #0
	beq _08080248
	ldr r0, _08080260 @ =gPartner
_08080248:
	bl sub_8046CEC
	cmp r6, #0
	beq _08080264
	ldr r0, [r7, #0x10]
	movs r3, #0x21
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r7, #0x10]
	b _08080270
	.align 2, 0
_0808025C: .4byte gPlayer
_08080260: .4byte gPartner
_08080264:
	mov r4, r8
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
_08080270:
	cmp r6, #0
	beq _08080284
	ldr r2, _08080280 @ =gUnknown_03005AF0
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0xe
	beq _08080290
	b _080803AE
	.align 2, 0
_08080280: .4byte gUnknown_03005AF0
_08080284:
	ldr r3, _080802A0 @ =gUnknown_03005A60
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0xe
	beq _08080290
	b _080803AE
_08080290:
	cmp r6, #0
	beq _080802A8
	ldr r4, _080802A4 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bne _080802B2
	b _08080338
	.align 2, 0
_080802A0: .4byte gUnknown_03005A60
_080802A4: .4byte gUnknown_03005B09
_080802A8:
	ldr r1, _080802BC @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	beq _08080338
_080802B2:
	cmp r6, #0
	beq _080802C0
	ldr r0, [r7, #0x10]
	b _080802C4
	.align 2, 0
_080802BC: .4byte gUnknown_03005A79
_080802C0:
	mov r2, r8
	ldr r0, [r2, #0x10]
_080802C4:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080802E0
	cmp r6, #0
	beq _080802DC
	movs r0, #4
	ldr r3, _080802D8 @ =gUnknown_03005AF0
	b _080803AC
	.align 2, 0
_080802D8: .4byte gUnknown_03005AF0
_080802DC:
	movs r0, #4
	b _08080312
_080802E0:
	cmp r6, #0
	beq _080802F4
	ldr r1, _080802F0 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _080802FE
	b _0808031C
	.align 2, 0
_080802F0: .4byte gUnknown_03005B09
_080802F4:
	ldr r2, _08080308 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	beq _0808031C
_080802FE:
	cmp r6, #0
	beq _08080310
	movs r0, #5
	ldr r3, _0808030C @ =gUnknown_03005AF0
	b _080803AC
	.align 2, 0
_08080308: .4byte gUnknown_03005A79
_0808030C: .4byte gUnknown_03005AF0
_08080310:
	movs r0, #5
_08080312:
	ldr r4, _08080318 @ =gUnknown_03005A60
	strb r0, [r4]
	b _080803AE
	.align 2, 0
_08080318: .4byte gUnknown_03005A60
_0808031C:
	cmp r6, #0
	beq _0808032C
	movs r0, #0x55
	ldr r1, _08080328 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _080803AE
	.align 2, 0
_08080328: .4byte gUnknown_03005AF0
_0808032C:
	movs r0, #0x55
	ldr r2, _08080334 @ =gUnknown_03005A60
	strb r0, [r2]
	b _080803AE
	.align 2, 0
_08080334: .4byte gUnknown_03005A60
_08080338:
	cmp r6, #0
	beq _08080340
	ldr r0, [r7, #0x10]
	b _08080344
_08080340:
	mov r3, r8
	ldr r0, [r3, #0x10]
_08080344:
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08080358
	cmp r6, #0
	beq _08080354
	movs r0, #4
	b _0808037C
_08080354:
	movs r0, #4
	b _0808038E
_08080358:
	cmp r6, #0
	beq _0808036C
	ldr r2, _08080368 @ =gUnknown_03005B09
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #3
	bne _08080376
	b _08080398
	.align 2, 0
_08080368: .4byte gUnknown_03005B09
_0808036C:
	ldr r3, _08080384 @ =gUnknown_03005A79
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #3
	beq _08080398
_08080376:
	cmp r6, #0
	beq _0808038C
	movs r0, #5
_0808037C:
	ldr r4, _08080388 @ =gUnknown_03005AF0
	strb r0, [r4]
	b _080803AE
	.align 2, 0
_08080384: .4byte gUnknown_03005A79
_08080388: .4byte gUnknown_03005AF0
_0808038C:
	movs r0, #5
_0808038E:
	ldr r1, _08080394 @ =gUnknown_03005A60
	strb r0, [r1]
	b _080803AE
	.align 2, 0
_08080394: .4byte gUnknown_03005A60
_08080398:
	cmp r6, #0
	beq _080803A8
	movs r0, #0x55
	ldr r2, _080803A4 @ =gUnknown_03005AF0
	strb r0, [r2]
	b _080803AE
	.align 2, 0
_080803A4: .4byte gUnknown_03005AF0
_080803A8:
	movs r0, #0x55
	ldr r3, _080803BC @ =gUnknown_03005A60
_080803AC:
	strb r0, [r3]
_080803AE:
	cmp r6, #0
	beq _080803C0
	ldr r0, [r7, #0x10]
	movs r4, #0x80
	ands r0, r4
	b _080803C8
	.align 2, 0
_080803BC: .4byte gUnknown_03005A60
_080803C0:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	ands r0, r2
_080803C8:
	cmp r0, #0
	beq _080803CE
	b _08080520
_080803CE:
	cmp r6, #0
	beq _080803DC
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bge _080803E8
	b _08080520
_080803DC:
	mov r4, r8
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080803E8
	b _08080520
_080803E8:
	ldr r3, [sp, #0x18]
	lsls r2, r3, #0x10
	asrs r1, r2, #0x10
	mov r4, sl
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r1, r1, r0
	str r2, [sp, #0x2c]
	cmp r6, #0
	beq _08080406
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _08080412
	b _08080520
_08080406:
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _08080412
	b _08080520
_08080412:
	add r3, sp, #8
	adds r5, r3, #0
	cmp r6, #0
	beq _0808041E
	ldrb r0, [r7, #0xe]
	b _08080422
_0808041E:
	mov r4, r8
	ldrb r0, [r4, #0xe]
_08080422:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	adds r1, r0, #0
	cmp r6, #0
	beq _08080434
	ldrb r0, [r7, #0xf]
	b _08080438
_08080434:
	mov r2, r8
	ldrb r0, [r2, #0xf]
_08080438:
	movs r4, #1
	subs r2, r4, r0
	mov r0, sp
	adds r0, #0xd
	strb r2, [r0]
	cmp r6, #0
	beq _0808044A
	ldrb r0, [r7, #0xe]
	b _0808044E
_0808044A:
	mov r2, r8
	ldrb r0, [r2, #0xe]
_0808044E:
	adds r2, r0, #5
	mov r0, sp
	adds r0, #0xe
	strb r2, [r0]
	cmp r6, #0
	beq _0808045E
	ldrb r0, [r7, #0xf]
	b _08080462
_0808045E:
	mov r4, r8
	ldrb r0, [r4, #0xf]
_08080462:
	subs r2, r0, #1
	mov r0, sp
	adds r0, #0xf
	strb r2, [r0]
	adds r0, r3, #0
	movs r2, #4
	bl memcpy
	ldr r0, [sp, #0x28]
	asrs r1, r0, #0x10
	mov r2, sl
	ldr r0, [r2, #0x3c]
	asrs r0, r0, #8
	adds r4, r1, r0
	ldr r3, [sp, #0x2c]
	asrs r1, r3, #0x10
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	adds r2, r1, r0
	adds r3, r5, #0
	cmp r6, #0
	beq _08080492
	str r7, [sp]
	b _08080496
_08080492:
	mov r0, r8
	str r0, [sp]
_08080496:
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	bl sub_80805C8
	mov r2, sl
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	ldr r3, [sp, #0x28]
	asrs r0, r3, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldr r1, [r2, #0x40]
	asrs r1, r1, #8
	ldr r2, [sp, #0x2c]
	asrs r0, r2, #0x10
	adds r0, r0, r1
	subs r0, #8
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r3, _080804F0 @ =gPlayer
	cmp r6, #0
	beq _080804C6
	ldr r3, _080804F4 @ =gPartner
_080804C6:
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	bl sub_80096B0
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _08080520
	mov r0, sl
	adds r0, #0x50
	ldrb r0, [r0]
	cmp r0, #0
	beq _080804F8
	ldr r0, _080804F0 @ =gPlayer
	cmp r6, #0
	beq _080804E8
	ldr r0, _080804F4 @ =gPartner
_080804E8:
	bl sub_800C558
	b _08080520
	.align 2, 0
_080804F0: .4byte gPlayer
_080804F4: .4byte gPartner
_080804F8:
	movs r0, #1
	lsls r0, r6
	ldr r3, [sp, #0x30]
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
	cmp r6, #0
	beq _08080514
	ldr r0, [r7, #4]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [r7, #4]
	b _08080520
_08080514:
	mov r1, r8
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1, #4]
_08080520:
	adds r6, #1
	ldr r0, _080805A4 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _08080532
	bl _0807FC1C
_08080532:
	ldr r3, [sp, #0x28]
	asrs r1, r3, #0x10
	ldr r3, _080805A8 @ =gCamera
	movs r0, #0
	ldrsh r4, [r3, r0]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r4, r2
	cmp r1, r0
	bgt _0808056A
	adds r0, r4, #0
	subs r0, #0x80
	cmp r1, r0
	blt _0808056A
	ldr r4, [sp, #0x18]
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808056A
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _080805B0
_0808056A:
	ldr r4, [sp, #0x10]
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08080590
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _08080590
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080805B0
_08080590:
	mov r3, sl
	ldrb r0, [r3, #8]
	ldr r4, [sp, #0x1c]
	strb r0, [r4]
	ldr r0, _080805AC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080805B6
	.align 2, 0
_080805A4: .4byte gUnknown_03005088
_080805A8: .4byte gCamera
_080805AC: .4byte gCurTask
_080805B0:
	ldr r0, [sp, #0x10]
	bl DisplaySprite
_080805B6:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80805C8
sub_80805C8: @ 0x080805C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov ip, r0
	adds r7, r1, #0
	mov r8, r2
	adds r5, r3, #0
	ldr r4, [sp, #0x20]
	adds r0, #0x2c
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r2, r7, r3
	ldr r0, [r4]
	asrs r0, r0, #8
	movs r6, #0
	ldrsb r6, [r5, r6]
	adds r1, r0, r6
	cmp r2, r1
	bgt _08080608
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _08080616
	cmp r2, r1
	bge _08080608
	b _0808070C
_08080608:
	movs r0, #2
	ldrsb r0, [r5, r0]
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	bge _08080616
	b _0808070C
_08080616:
	mov r0, ip
	adds r0, #0x2d
	movs r3, #0
	ldrsb r3, [r0, r3]
	mov r0, r8
	adds r2, r0, r3
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	movs r6, #1
	ldrsb r6, [r5, r6]
	adds r1, r0, r6
	cmp r2, r1
	bgt _08080646
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _08080652
	cmp r2, r1
	blt _0808070C
_08080646:
	movs r0, #3
	ldrsb r0, [r5, r0]
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	blt _0808070C
_08080652:
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	movs r1, #2
	ldrsb r1, [r5, r1]
	subs r1, r0, r1
	adds r2, r1, #0
	adds r2, #8
	ldr r0, [r4]
	asrs r3, r0, #8
	cmp r3, r2
	bgt _0808067E
	lsls r0, r1, #8
	str r0, [r4]
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080806AA
	b _080806A4
_0808067E:
	mov r0, ip
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	movs r1, #0
	ldrsb r1, [r5, r1]
	subs r0, r0, r1
	adds r2, r0, #0
	subs r2, #8
	cmp r3, r2
	blt _0808070C
	lsls r0, r0, #8
	str r0, [r4]
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080806AA
_080806A4:
	movs r0, #0
	strh r0, [r4, #0xc]
	strh r0, [r4, #8]
_080806AA:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r0, #9
	ldr r1, [r4]
	asrs r1, r1, #8
	adds r5, r4, #0
	adds r5, #0x27
	ldrb r2, [r5]
	movs r7, #0
	str r7, [sp]
	ldr r6, _08080708 @ =sub_803FF84
	str r6, [sp, #4]
	movs r3, #8
	bl sub_803FA74
	cmp r0, #0
	bge _080806D4
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_080806D4:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrb r2, [r5]
	movs r3, #8
	rsbs r3, r3, #0
	str r7, [sp]
	str r6, [sp, #4]
	bl sub_803FA74
	cmp r0, #0
	bge _080806F6
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
_080806F6:
	ldr r0, [r4, #0x10]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #0x18
	ands r0, r1
	str r0, [r4, #0x10]
	movs r0, #1
	b _0808070E
	.align 2, 0
_08080708: .4byte sub_803FF84
_0808070C:
	movs r0, #0
_0808070E:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_Platform_Spiked
TaskDestructor_Platform_Spiked: @ 0x0808071C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
