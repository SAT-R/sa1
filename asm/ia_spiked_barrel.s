.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_SpikedBarrel
CreateEntity_SpikedBarrel: @ 0x080907DC
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
	ldr r0, _0809086C @ =Task_SpikedBarrel
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _08090870 @ =TaskDestructor_SpikedBarrel
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	ldr r1, _08090874 @ =0x0300000C
	adds r6, r3, r1
	movs r2, #0
	movs r5, #0
	mov r1, r8
	strh r1, [r0, #4]
	mov r1, sb
	strh r1, [r0, #6]
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #8]
	strb r4, [r0, #9]
	str r5, [r0, #0x48]
	str r5, [r0, #0x4c]
	ldr r1, _08090878 @ =0x03000054
	adds r0, r3, r1
	strh r5, [r0]
	adds r1, #2
	adds r0, r3, r1
	strb r2, [r0]
	ldr r2, _0809087C @ =0x03000057
	adds r1, r3, r2
	movs r0, #0x10
	strb r0, [r1]
	ldrb r0, [r7, #5]
	ldrb r1, [r7, #6]
	cmp r0, r1
	bls _080908A4
	movs r0, #3
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _08090884
	subs r2, #7
	adds r1, r3, r2
	movs r0, #4
	strh r0, [r1]
	ldr r1, _08090880 @ =0x03000044
	adds r0, r3, r1
	strh r5, [r0]
	adds r2, #2
	adds r0, r3, r2
	strh r5, [r0]
	b _080908E6
	.align 2, 0
_0809086C: .4byte Task_SpikedBarrel
_08090870: .4byte TaskDestructor_SpikedBarrel
_08090874: .4byte 0x0300000C
_08090878: .4byte 0x03000054
_0809087C: .4byte 0x03000057
_08090880: .4byte 0x03000044
_08090884:
	ldr r0, _08090898 @ =0x03000050
	adds r1, r3, r0
	movs r0, #4
	strh r0, [r1]
	ldr r2, _0809089C @ =0x03000044
	adds r1, r3, r2
	movs r0, #0x80
	strh r0, [r1]
	ldr r1, _080908A0 @ =0x03000052
	b _080908BC
	.align 2, 0
_08090898: .4byte 0x03000050
_0809089C: .4byte 0x03000044
_080908A0: .4byte 0x03000052
_080908A4:
	movs r0, #4
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _080908D0
	ldr r2, _080908C4 @ =0x03000050
	adds r0, r3, r2
	strh r5, [r0]
	ldr r0, _080908C8 @ =0x03000052
	adds r1, r3, r0
	movs r0, #4
	strh r0, [r1]
	ldr r1, _080908CC @ =0x03000044
_080908BC:
	adds r0, r3, r1
	strh r5, [r0]
	b _080908E6
	.align 2, 0
_080908C4: .4byte 0x03000050
_080908C8: .4byte 0x03000052
_080908CC: .4byte 0x03000044
_080908D0:
	ldr r2, _08090960 @ =0x03000050
	adds r0, r3, r2
	strh r5, [r0]
	ldr r0, _08090964 @ =0x03000052
	adds r1, r3, r0
	movs r0, #4
	strh r0, [r1]
	subs r2, #0xc
	adds r1, r3, r2
	movs r0, #0x80
	strh r0, [r1]
_080908E6:
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r5, #0
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
	movs r0, #0x1e
	bl VramMalloc
	str r0, [r6, #4]
	ldr r1, _08090968 @ =gUnknown_086CEE50
	ldrh r0, [r1]
	strh r0, [r6, #0xa]
	ldrh r1, [r1, #2]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x1a]
	strh r4, [r6, #8]
	strh r4, [r6, #0x14]
	strh r4, [r6, #0x1c]
	adds r1, r6, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	strb r5, [r0]
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
_08090960: .4byte 0x03000050
_08090964: .4byte 0x03000052
_08090968: .4byte gUnknown_086CEE50

	thumb_func_start Task_SpikedBarrel
Task_SpikedBarrel: @ 0x0809096C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, _080909D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r2, _080909DC @ =0x0300000C
	adds r2, r2, r1
	mov sb, r2
	ldr r3, [r7]
	str r3, [sp, #8]
	ldr r4, _080909E0 @ =0x03000050
	adds r2, r1, r4
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r0, #0
	beq _080909F4
	ldr r0, [r7, #0x48]
	mov r8, r0
	ldrb r3, [r3, #5]
	lsls r3, r3, #0xb
	ldr r5, _080909E4 @ =gSineTable
	movs r6, #0
	ldrsh r4, [r2, r6]
	ldr r2, _080909E8 @ =gStageTime
	ldr r6, _080909EC @ =0x03000044
	adds r0, r1, r6
	ldrh r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r4, r0
	ldr r1, _080909F0 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	str r0, [r7, #0x48]
	mov r2, r8
	subs r2, r0, r2
	str r2, [sp, #0xc]
	b _080909FC
	.align 2, 0
_080909D8: .4byte gCurTask
_080909DC: .4byte 0x0300000C
_080909E0: .4byte 0x03000050
_080909E4: .4byte gSineTable
_080909E8: .4byte gStageTime
_080909EC: .4byte 0x03000044
_080909F0: .4byte 0x000003FF
_080909F4:
	movs r3, #0
	str r3, [sp, #0xc]
	ldr r4, [sp, #0x10]
	str r4, [r7, #0x48]
_080909FC:
	adds r1, r7, #0
	adds r1, #0x52
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	beq _08090A4C
	ldr r6, [r7, #0x4c]
	ldr r0, [sp, #8]
	ldrb r3, [r0, #6]
	lsls r3, r3, #0xb
	ldr r5, _08090A40 @ =gSineTable
	movs r2, #0
	ldrsh r4, [r1, r2]
	ldr r2, _08090A44 @ =gStageTime
	adds r0, r7, #0
	adds r0, #0x44
	ldrh r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r4, r0
	ldr r1, _08090A48 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	str r0, [r7, #0x4c]
	subs r6, r0, r6
	str r6, [sp, #0x10]
	b _08090A52
	.align 2, 0
_08090A40: .4byte gSineTable
_08090A44: .4byte gStageTime
_08090A48: .4byte 0x000003FF
_08090A4C:
	movs r6, #0
	str r6, [sp, #0x10]
	str r6, [r7, #0x4c]
_08090A52:
	ldrb r0, [r7, #8]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #8]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r7, #0x48]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r5, #0
	bl Div
	ldr r4, _08090D08 @ =gCamera
	ldrh r2, [r4]
	ldr r3, [sp]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	adds r1, r1, r0
	mov r6, sb
	strh r1, [r6, #0x16]
	ldr r0, [r7, #0x4c]
	adds r1, r5, #0
	bl Div
	ldrh r2, [r4, #2]
	ldr r3, [sp, #4]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r2
	adds r1, r1, r0
	strh r1, [r6, #0x18]
	movs r4, #0
	str r4, [sp, #0x14]
	adds r6, r7, #0
	adds r6, #0x56
	str r6, [sp, #0x20]
_08090AB2:
	ldr r6, _08090D0C @ =gPlayer
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08090ABC
	ldr r6, _08090D10 @ =gPartner
_08090ABC:
	ldr r0, [r6, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08090AE2
	ldr r0, [r6, #0x28]
	cmp r0, sb
	bne _08090AE2
	ldr r0, [r6]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	str r0, [r6]
	ldr r0, [r6, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r3, [sp, #0x10]
	adds r0, r0, r3
	str r0, [r6, #4]
_08090AE2:
	ldr r1, [r7, #0x48]
	asrs r1, r1, #8
	ldr r4, [sp]
	lsls r5, r4, #0x10
	asrs r0, r5, #0x10
	mov r8, r0
	add r1, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x4c]
	asrs r0, r0, #8
	ldr r2, [sp, #4]
	lsls r4, r2, #0x10
	asrs r2, r4, #0x10
	adds r2, r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	adds r3, r6, #0
	bl sub_800B2BC
	ldr r3, [sp, #0x20]
	ldrb r0, [r3]
	str r5, [sp, #0x18]
	str r4, [sp, #0x1c]
	cmp r0, #0
	beq _08090B1E
	cmp r0, #2
	beq _08090B1E
	b _08090C88
_08090B1E:
	mov r4, sb
	ldr r1, [r4, #0x30]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08090B2C
	b _08090C88
_08090B2C:
	ldr r0, [r7, #0x48]
	movs r1, #0x80
	lsls r1, r1, #1
	mov sl, r1
	bl Div
	add r0, r8
	mov r5, sb
	adds r5, #0x34
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	ldr r2, [r6]
	asrs r2, r2, #8
	ldr r1, [r6, #0x64]
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r2, r1
	cmp r0, r2
	bgt _08090B80
	ldr r0, [r7, #0x48]
	mov r1, sl
	bl Div
	add r0, r8
	mov r1, sb
	adds r1, #0x36
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r2, r2, r0
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r0, [r6, #0x64]
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	cmp r2, r1
	bge _08090BC6
_08090B80:
	ldr r0, [r7, #0x48]
	mov r1, sl
	bl Div
	add r0, r8
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	ldr r2, [r6]
	asrs r2, r2, #8
	ldr r3, [r6, #0x64]
	adds r1, r3, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r2, r1
	cmp r0, r2
	blt _08090C88
	adds r0, r3, #0
	adds r0, #0x3a
	movs r4, #0
	ldrsb r4, [r0, r4]
	subs r4, r4, r1
	adds r4, r2, r4
	ldr r0, [r7, #0x48]
	mov r1, sl
	bl Div
	add r0, r8
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	cmp r4, r0
	blt _08090C88
_08090BC6:
	ldr r0, [r7, #0x4c]
	movs r2, #0x80
	lsls r2, r2, #1
	mov sl, r2
	mov r1, sl
	bl Div
	ldr r3, [sp, #0x1c]
	asrs r5, r3, #0x10
	adds r0, r5, r0
	movs r4, #0x35
	add r4, sb
	mov r8, r4
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	ldr r2, [r6, #4]
	asrs r2, r2, #8
	ldr r1, [r6, #0x64]
	adds r1, #0x39
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r2, r1
	cmp r0, r2
	bgt _08090C22
	ldr r0, [r7, #0x4c]
	mov r1, sl
	bl Div
	adds r0, r5, r0
	mov r1, sb
	adds r1, #0x37
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r2, r2, r0
	ldr r1, [r6, #4]
	asrs r1, r1, #8
	ldr r0, [r6, #0x64]
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	cmp r2, r1
	bge _08090C6C
_08090C22:
	ldr r0, [r7, #0x4c]
	mov r1, sl
	bl Div
	adds r0, r5, r0
	mov r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r1, [r6, #4]
	asrs r1, r1, #8
	ldr r3, [r6, #0x64]
	adds r2, r3, #0
	adds r2, #0x39
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	cmp r0, r1
	blt _08090C88
	adds r0, r3, #0
	adds r0, #0x3b
	movs r4, #0
	ldrsb r4, [r0, r4]
	subs r4, r4, r2
	adds r4, r1, r4
	ldr r0, [r7, #0x4c]
	mov r1, sl
	bl Div
	adds r0, r5, r0
	mov r3, r8
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r0, r0, r1
	cmp r4, r0
	blt _08090C88
_08090C6C:
	ldr r0, _08090D0C @ =gPlayer
	ldr r0, [r0, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08090C88
	adds r0, r6, #0
	bl sub_800C558
	cmp r0, #0
	beq _08090C88
	movs r0, #0xab
	bl m4aSongNumStart
_08090C88:
	ldr r4, [sp, #0x14]
	adds r4, #1
	str r4, [sp, #0x14]
	ldr r0, _08090D14 @ =gUnknown_03005088
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r3, r0, #0
	cmp r4, r1
	bge _08090C9C
	b _08090AB2
_08090C9C:
	ldr r6, [sp, #0x18]
	asrs r5, r6, #0x10
	ldr r2, _08090D08 @ =gCamera
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r5, r0
	bgt _08090CD2
	adds r0, r1, #0
	subs r0, #0x80
	cmp r5, r0
	blt _08090CD2
	ldr r6, [sp, #0x1c]
	asrs r4, r6, #0x10
	movs r0, #2
	ldrsh r1, [r2, r0]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	cmp r4, r0
	bgt _08090CD2
	adds r0, r1, #0
	subs r0, #0x80
	cmp r4, r0
	bge _08090D1C
_08090CD2:
	mov r4, sb
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08090CF8
	movs r6, #0x18
	ldrsh r0, [r4, r6]
	adds r0, #0x80
	cmp r0, #0
	blt _08090CF8
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08090D1C
_08090CF8:
	ldrb r0, [r7, #8]
	ldr r1, [sp, #8]
	strb r0, [r1]
	ldr r0, _08090D18 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08090DE0
	.align 2, 0
_08090D08: .4byte gCamera
_08090D0C: .4byte gPlayer
_08090D10: .4byte gPartner
_08090D14: .4byte gUnknown_03005088
_08090D18: .4byte gCurTask
_08090D1C:
	ldr r1, _08090D5C @ =gPlayer
	ldr r0, [r1, #0x10]
	movs r2, #8
	ands r0, r2
	cmp r0, #0
	beq _08090D2E
	ldr r0, [r1, #0x28]
	cmp r0, sb
	beq _08090D46
_08090D2E:
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #2
	bne _08090D64
	ldr r1, _08090D60 @ =gPartner
	ldr r0, [r1, #0x10]
	ands r0, r2
	cmp r0, #0
	beq _08090D64
	ldr r0, [r1, #0x28]
	cmp r0, sb
	bne _08090D64
_08090D46:
	adds r0, r7, #0
	adds r0, #0x54
	ldrh r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r0, #0
	cmp r3, r1
	beq _08090D76
	adds r0, r3, #0
	adds r0, #0x10
	b _08090D74
	.align 2, 0
_08090D5C: .4byte gPlayer
_08090D60: .4byte gPartner
_08090D64:
	adds r0, r7, #0
	adds r0, #0x54
	ldrh r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	beq _08090D76
	adds r0, r1, #0
	subs r0, #0x10
_08090D74:
	strh r0, [r2]
_08090D76:
	ldr r1, _08090DB0 @ =gSineTable
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	mov r2, sb
	ldrh r2, [r2, #0x18]
	adds r0, r0, r2
	mov r3, sb
	strh r0, [r3, #0x18]
	adds r1, r7, #0
	adds r1, #0x57
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08090DD4
	ldr r4, [sp, #0x20]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08090DAA
	cmp r0, #2
	bne _08090DB4
_08090DAA:
	movs r0, #0x30
	b _08090DB6
	.align 2, 0
_08090DB0: .4byte gSineTable
_08090DB4:
	movs r0, #0x10
_08090DB6:
	strb r0, [r1]
	ldr r6, [sp, #0x20]
	ldrb r0, [r6]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r6]
	mov r1, sb
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	ldrb r1, [r6]
	mov r0, sb
	adds r0, #0x20
	strb r1, [r0]
_08090DD4:
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
_08090DE0:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_SpikedBarrel
TaskDestructor_SpikedBarrel: @ 0x08090DF0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
