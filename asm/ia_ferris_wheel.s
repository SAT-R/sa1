.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_FerrisWheel
CreateEntity_FerrisWheel: @ 0x0808F7A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0808F850 @ =Task_FerrisWheel
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808F854 @ =TaskDestructor_FerrisWheel
	str r1, [sp]
	movs r1, #0xb8
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	movs r5, #0
	movs r2, #0
	mov r0, r8
	strh r0, [r7, #4]
	mov r1, sb
	strh r1, [r7, #6]
	str r6, [r7]
	ldrb r0, [r6]
	strb r0, [r7, #8]
	strb r4, [r7, #9]
	ldr r4, _0808F858 @ =0x030000A4
	adds r0, r3, r4
	str r2, [r0]
	ldr r1, _0808F85C @ =0x030000A8
	adds r0, r3, r1
	str r2, [r0]
	adds r4, #8
	adds r0, r3, r4
	strh r2, [r0]
	adds r1, #6
	adds r0, r3, r1
	strh r2, [r0]
	ldrb r1, [r6, #3]
	movs r0, #0xf
	ands r0, r1
	lsls r0, r0, #7
	subs r4, #0x10
	adds r1, r3, r4
	strh r0, [r1]
	ldrb r1, [r6, #4]
	adds r4, #0x18
	adds r0, r3, r4
	strb r1, [r0]
	ldr r1, _0808F860 @ =0x030000B5
	adds r0, r3, r1
	strb r5, [r0]
	subs r4, #4
	adds r0, r3, r4
	strh r2, [r0]
	subs r1, #0x15
	adds r0, r3, r1
	str r2, [r0]
	ldr r2, _0808F864 @ =0x030000B6
	adds r0, r3, r2
	strb r5, [r0]
	ldrb r2, [r6, #5]
	ldrb r1, [r6, #6]
	cmp r2, r1
	bls _0808F86C
	adds r4, #3
	adds r0, r3, r4
	strb r2, [r0]
	ldr r0, _0808F868 @ =0x030000B2
	adds r1, r3, r0
	movs r0, #1
	strb r0, [r1]
	b _0808F878
	.align 2, 0
_0808F850: .4byte Task_FerrisWheel
_0808F854: .4byte TaskDestructor_FerrisWheel
_0808F858: .4byte 0x030000A4
_0808F85C: .4byte 0x030000A8
_0808F860: .4byte 0x030000B5
_0808F864: .4byte 0x030000B6
_0808F868: .4byte 0x030000B2
_0808F86C:
	ldr r2, _0808F98C @ =0x030000B3
	adds r0, r3, r2
	strb r1, [r0]
	ldr r4, _0808F990 @ =0x030000B2
	adds r0, r3, r4
	strb r5, [r0]
_0808F878:
	adds r4, r7, #0
	adds r4, #0xc
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r1, #0
	mov sl, r1
	movs r5, #0
	strh r0, [r4, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4, #4]
	ldr r1, _0808F994 @ =gUnknown_086CEE2C
	ldr r0, _0808F998 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xa]
	adds r0, r7, #0
	adds r0, #0x2c
	mov r2, sl
	strb r2, [r0]
	movs r6, #0x90
	lsls r6, r6, #3
	strh r6, [r4, #0x1a]
	strh r5, [r4, #8]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x1c]
	adds r1, r7, #0
	adds r1, #0x2d
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x2e
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	strb r2, [r0]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	str r2, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	mov r8, r0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x6c
	ldr r1, _0808F99C @ =0x06013020
	str r1, [r0, #4]
	strh r6, [r0, #0x1a]
	strh r5, [r0, #8]
	ldr r1, _0808F9A0 @ =0x00000212
	strh r1, [r0, #0xa]
	adds r1, r7, #0
	adds r1, #0x8c
	mov r2, sl
	strb r2, [r1]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x1c]
	adds r2, r7, #0
	adds r2, #0x8d
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r2]
	adds r1, r7, #0
	adds r1, #0x8e
	movs r4, #0x10
	strb r4, [r1]
	adds r1, #3
	mov r2, sl
	strb r2, [r1]
	mov r4, sb
	str r4, [r0, #0x28]
	mov r1, r8
	str r1, [r0, #0x10]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x3c
	ldr r1, _0808F9A4 @ =0x060130A0
	str r1, [r0, #4]
	strh r6, [r0, #0x1a]
	strh r5, [r0, #8]
	ldr r1, _0808F9A8 @ =0x00000213
	strh r1, [r0, #0xa]
	adds r1, r7, #0
	adds r1, #0x5c
	mov r2, sl
	strb r2, [r1]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x1c]
	adds r2, r7, #0
	adds r2, #0x5d
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r2]
	adds r1, r7, #0
	adds r1, #0x5e
	movs r4, #0x10
	strb r4, [r1]
	adds r1, #3
	mov r2, sl
	strb r2, [r1]
	mov r4, sb
	str r4, [r0, #0x28]
	mov r1, r8
	str r1, [r0, #0x10]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F98C: .4byte 0x030000B3
_0808F990: .4byte 0x030000B2
_0808F994: .4byte gUnknown_086CEE2C
_0808F998: .4byte gCurrentLevel
_0808F99C: .4byte 0x06013020
_0808F9A0: .4byte 0x00000212
_0808F9A4: .4byte 0x060130A0
_0808F9A8: .4byte 0x00000213

	thumb_func_start Task_FerrisWheel
Task_FerrisWheel: @ 0x0808F9AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r0, _0808FA28 @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov sb, r0
	ldr r0, _0808FA2C @ =0x0300000C
	adds r0, r7, r0
	str r0, [sp]
	ldr r1, _0808FA30 @ =0x0300006C
	adds r1, r7, r1
	str r1, [sp, #4]
	ldr r2, _0808FA34 @ =0x0300003C
	adds r2, r7, r2
	str r2, [sp, #8]
	mov r3, sb
	ldr r3, [r3]
	str r3, [sp, #0x10]
	ldr r4, _0808FA38 @ =0x030000B2
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808FA58
	ldr r5, _0808FA3C @ =0x030000A4
	adds r6, r7, r5
	ldr r0, _0808FA40 @ =gSineTable
	mov r8, r0
	movs r1, #4
	ldrsb r1, [r3, r1]
	ldr r0, _0808FA44 @ =gStageTime
	ldr r4, [r0]
	ldr r2, _0808FA48 @ =0x0300009C
	adds r5, r7, r2
	adds r0, r1, #0
	muls r0, r4, r0
	ldrh r3, [r5]
	adds r0, r0, r3
	ldr r2, _0808FA4C @ =0x000007FF
	ands r0, r2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _0808FA50 @ =0x030000B3
	adds r3, r7, r0
	ldrb r0, [r3]
	muls r0, r1, r0
	str r0, [r6]
	ldr r1, _0808FA54 @ =0x030000A8
	adds r6, r7, r1
	ldr r1, [sp, #0x10]
	movs r0, #4
	ldrsb r0, [r1, r0]
	b _0808FA9C
	.align 2, 0
_0808FA28: .4byte gCurTask
_0808FA2C: .4byte 0x0300000C
_0808FA30: .4byte 0x0300006C
_0808FA34: .4byte 0x0300003C
_0808FA38: .4byte 0x030000B2
_0808FA3C: .4byte 0x030000A4
_0808FA40: .4byte gSineTable
_0808FA44: .4byte gStageTime
_0808FA48: .4byte 0x0300009C
_0808FA4C: .4byte 0x000007FF
_0808FA50: .4byte 0x030000B3
_0808FA54: .4byte 0x030000A8
_0808FA58:
	ldr r5, _0808FB7C @ =0x030000A4
	adds r6, r7, r5
	ldr r0, _0808FB80 @ =gSineTable
	mov r8, r0
	ldr r2, [sp, #0x10]
	movs r1, #4
	ldrsb r1, [r2, r1]
	rsbs r1, r1, #0
	ldr r0, _0808FB84 @ =gStageTime
	ldr r4, [r0]
	ldr r3, _0808FB88 @ =0x0300009C
	adds r5, r7, r3
	adds r0, r1, #0
	muls r0, r4, r0
	ldrh r1, [r5]
	adds r0, r0, r1
	ldr r2, _0808FB8C @ =0x000007FF
	ands r0, r2
	lsrs r0, r0, #1
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _0808FB90 @ =0x030000B3
	adds r3, r7, r0
	ldrb r0, [r3]
	muls r0, r1, r0
	str r0, [r6]
	ldr r1, _0808FB94 @ =0x030000A8
	adds r6, r7, r1
	ldr r1, [sp, #0x10]
	movs r0, #4
	ldrsb r0, [r1, r0]
	rsbs r0, r0, #0
_0808FA9C:
	muls r0, r4, r0
	ldrh r5, [r5]
	adds r0, r0, r5
	ands r0, r2
	lsrs r0, r0, #1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, r8
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldrb r0, [r3]
	muls r0, r1, r0
	str r0, [r6]
	mov r5, sb
	ldrb r1, [r5, #8]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, [sp, #0x10]
	ldrb r2, [r0, #1]
	lsls r2, r2, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	mov r4, sb
	adds r4, #0xa4
	ldr r0, [r4]
	asrs r0, r0, #0xb
	str r0, [sp, #0x14]
	mov r3, sb
	adds r3, #0xa8
	ldr r0, [r3]
	asrs r0, r0, #0xb
	str r0, [sp, #0x18]
	ldr r6, _0808FB98 @ =gCamera
	ldrh r0, [r6]
	lsrs r7, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r1, r0
	ldr r5, [sp, #0x14]
	adds r0, r0, r5
	ldr r5, [sp]
	strh r0, [r5, #0x16]
	ldrh r0, [r6, #2]
	lsrs r5, r2, #0x10
	str r5, [sp, #0xc]
	asrs r2, r2, #0x10
	subs r0, r2, r0
	ldr r5, [sp, #0x18]
	adds r0, r0, r5
	ldr r5, [sp]
	strh r0, [r5, #0x18]
	ldr r0, _0808FB9C @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r5, r0, #0x18
	asrs r0, r0, #0x19
	str r4, [sp, #0x1c]
	str r3, [sp, #0x20]
	cmp r0, #2
	beq _0808FB32
	cmp r5, #0x10
	beq _0808FB32
	ldrh r0, [r6]
	subs r0, r1, r0
	ldr r1, [sp, #4]
	strh r0, [r1, #0x16]
	ldrh r0, [r6, #2]
	subs r0, r2, r0
	strh r0, [r1, #0x18]
_0808FB32:
	movs r6, #0
	lsls r2, r7, #0x10
	str r2, [sp, #0x28]
	mov r3, sb
	adds r3, #0xb6
	str r3, [sp, #0x24]
	ldr r4, _0808FBA0 @ =gUnknown_03005AB0
	mov r8, r4
	ldr r4, _0808FBA4 @ =gPlayer
	mov sl, r3
_0808FB46:
	ldr r5, [sp, #0x24]
	ldrb r0, [r5]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808FBCA
	ldr r0, _0808FB84 @ =gStageTime
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0808FBA8
	mov r0, sb
	adds r0, #0xa0
	ldr r2, [sp, #0x1c]
	ldr r1, [r2]
	ldr r0, [r0]
	subs r1, r1, r0
	asrs r1, r1, #3
	adds r1, #1
	cmp r6, #0
	beq _0808FBC4
	mov r3, r8
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	b _0808FBCA
	.align 2, 0
_0808FB7C: .4byte 0x030000A4
_0808FB80: .4byte gSineTable
_0808FB84: .4byte gStageTime
_0808FB88: .4byte 0x0300009C
_0808FB8C: .4byte 0x000007FF
_0808FB90: .4byte 0x030000B3
_0808FB94: .4byte 0x030000A8
_0808FB98: .4byte gCamera
_0808FB9C: .4byte gCurrentLevel
_0808FBA0: .4byte gUnknown_03005AB0
_0808FBA4: .4byte gPlayer
_0808FBA8:
	mov r0, sb
	adds r0, #0xa0
	ldr r5, [sp, #0x1c]
	ldr r1, [r5]
	ldr r0, [r0]
	subs r1, r1, r0
	asrs r1, r1, #3
	cmp r6, #0
	beq _0808FBC4
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	b _0808FBCA
_0808FBC4:
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_0808FBCA:
	cmp r6, #0
	beq _0808FBE4
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808FBDC
	b _0808FCF4
_0808FBDC:
	ldr r3, _0808FBE0 @ =gPlayer
	b _0808FBF2
	.align 2, 0
_0808FBE0: .4byte gPlayer
_0808FBE4:
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	ands r1, r0
	ldr r3, _0808FC30 @ =gPlayer
	cmp r1, #0
	beq _0808FBF2
	b _0808FCF4
_0808FBF2:
	ldr r5, [sp, #0x28]
	asrs r0, r5, #0x10
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	ldr r2, [sp, #0x18]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r7, r1, #0
	cmp r6, #0
	beq _0808FC14
	ldr r3, _0808FC34 @ =gUnknown_03005AB0
_0808FC14:
	ldr r0, [sp]
	adds r1, r5, #0
	bl sub_800B2BC
	cmp r6, #0
	beq _0808FC38
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0808FC42
	b _0808FCD0
	.align 2, 0
_0808FC30: .4byte gPlayer
_0808FC34: .4byte gUnknown_03005AB0
_0808FC38:
	ldr r0, [r4, #0x10]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0808FCD0
_0808FC42:
	cmp r6, #0
	beq _0808FC52
	mov r5, r8
	ldr r0, [r5, #0x28]
	ldr r1, [sp]
	cmp r0, r1
	beq _0808FC5A
	b _0808FCD0
_0808FC52:
	ldr r0, [r4, #0x28]
	ldr r2, [sp]
	cmp r0, r2
	bne _0808FCD0
_0808FC5A:
	movs r0, #1
	lsls r0, r6
	mov r3, sl
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
	mov r1, sb
	adds r1, #0xb0
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bls _0808FC7E
	strh r2, [r1]
_0808FC7E:
	cmp r6, #0
	beq _0808FC94
	mov r5, r8
	ldr r0, [r5, #0x10]
	ldr r1, _0808FC90 @ =0x00000404
	ands r0, r1
	cmp r0, #0
	bne _0808FC9E
	b _0808FCB8
	.align 2, 0
_0808FC90: .4byte 0x00000404
_0808FC94:
	ldr r0, [r4, #0x10]
	ldr r1, _0808FCB4 @ =0x00000404
	ands r0, r1
	cmp r0, #0
	beq _0808FCB8
_0808FC9E:
	asrs r0, r7, #0x10
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	subs r0, #0xf
	lsls r0, r0, #8
	cmp r6, #0
	beq _0808FCCC
	mov r2, r8
	str r0, [r2, #4]
	b _0808FD0C
	.align 2, 0
_0808FCB4: .4byte 0x00000404
_0808FCB8:
	asrs r0, r7, #0x10
	ldr r3, [sp, #0x18]
	adds r0, r0, r3
	subs r0, #0x14
	lsls r0, r0, #8
	cmp r6, #0
	beq _0808FCCC
	mov r5, r8
	str r0, [r5, #4]
	b _0808FD0C
_0808FCCC:
	str r0, [r4, #4]
	b _0808FD0C
_0808FCD0:
	movs r0, #1
	lsls r0, r6
	mov r2, sl
	ldrb r1, [r2]
	bics r1, r0
	movs r2, #0
	mov r3, sl
	strb r1, [r3]
	mov r1, sb
	adds r1, #0xb0
	ldrh r0, [r1]
	cmp r0, #0x10
	bls _0808FCF0
	subs r0, #0x10
	strh r0, [r1]
	b _0808FD0C
_0808FCF0:
	strh r2, [r1]
	b _0808FD0C
_0808FCF4:
	ldr r5, [sp, #0x24]
	ldrb r1, [r5]
	adds r0, r1, #0
	asrs r0, r6
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0808FD0C
	adds r0, r2, #0
	lsls r0, r6
	bics r1, r0
	strb r1, [r5]
_0808FD0C:
	adds r6, #1
	ldr r0, _0808FD8C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r6, r0
	bge _0808FD1C
	b _0808FB46
_0808FD1C:
	ldr r0, [sp, #0x28]
	asrs r2, r0, #0x10
	ldr r3, _0808FD90 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r5, #0xb8
	lsls r5, r5, #1
	adds r0, r1, r5
	cmp r2, r0
	bgt _0808FD52
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0808FD52
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	subs r5, #0x50
	adds r0, r1, r5
	cmp r2, r0
	bgt _0808FD52
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808FD98
_0808FD52:
	ldr r1, [sp]
	ldrh r0, [r1, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808FD7A
	ldr r2, [sp]
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _0808FD7A
	movs r4, #0x18
	ldrsh r1, [r2, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808FD98
_0808FD7A:
	mov r5, sb
	ldrb r0, [r5, #8]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	ldr r0, _0808FD94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808FE3C
	.align 2, 0
_0808FD8C: .4byte gUnknown_03005088
_0808FD90: .4byte gCamera
_0808FD94: .4byte gCurTask
_0808FD98:
	movs r2, #0
	mov r8, r2
	movs r4, #0
	ldr r1, _0808FE4C @ =gSineTable
	mov r0, sb
	adds r0, #0xb0
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, _0808FE50 @ =0x000009C4
	bl Div
	ldr r5, [sp]
	ldrh r1, [r5, #0x18]
	adds r1, r1, r0
	strh r1, [r5, #0x18]
	ldr r0, [sp]
	bl DisplaySprite
	ldr r0, _0808FE54 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	asrs r0, r0, #0x19
	movs r2, #0xa0
	add sb, r2
	cmp r0, #2
	beq _0808FE34
	cmp r1, #0x10
	beq _0808FE34
	ldr r0, [sp, #4]
	bl DisplaySprite
	ldr r3, [sp, #0x1c]
	ldr r0, [r3]
	movs r1, #3
	bl Div
	str r0, [sp, #0x14]
	ldr r5, [sp, #0x20]
	ldr r0, [r5]
	movs r1, #3
	bl Div
	str r0, [sp, #0x18]
	movs r5, #0
	ldr r0, [sp, #0xc]
	lsls r7, r0, #0x10
	ldr r6, _0808FE58 @ =gCamera
_0808FDFE:
	ldr r1, [sp, #0x14]
	add r8, r1
	ldr r2, [sp, #0x18]
	adds r4, r4, r2
	ldrh r1, [r6]
	ldr r3, [sp, #0x28]
	asrs r0, r3, #0x10
	subs r0, r0, r1
	mov r2, r8
	asrs r1, r2, #0xb
	adds r0, r0, r1
	ldr r3, [sp, #8]
	strh r0, [r3, #0x16]
	ldrh r1, [r6, #2]
	asrs r0, r7, #0x10
	subs r0, r0, r1
	asrs r1, r4, #0xb
	adds r0, r0, r1
	strh r0, [r3, #0x18]
	ldr r0, [sp, #8]
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0808FDFE
_0808FE34:
	ldr r4, [sp, #0x1c]
	ldr r0, [r4]
	mov r5, sb
	str r0, [r5]
_0808FE3C:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808FE4C: .4byte gSineTable
_0808FE50: .4byte 0x000009C4
_0808FE54: .4byte gCurrentLevel
_0808FE58: .4byte gCamera

	thumb_func_start TaskDestructor_FerrisWheel
TaskDestructor_FerrisWheel: @ 0x0808FE5C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
