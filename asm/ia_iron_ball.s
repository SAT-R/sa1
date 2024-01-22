.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_IronBall
CreateEntity_IronBall: @ 0x0808BC90
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
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
	ldr r0, _0808BD04 @ =Task_IronBallMain
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0808BD08 @ =TaskDestructor_IronBall
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r5, r2, r0
	movs r7, #0
	mov r1, r8
	strh r1, [r3, #4]
	mov r0, sb
	strh r0, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #8]
	strb r4, [r3, #9]
	str r7, [r3, #0x40]
	str r7, [r3, #0x44]
	ldr r1, _0808BD0C @ =0x0300004C
	adds r0, r2, r1
	strh r7, [r0]
	ldrb r0, [r6, #5]
	ldrb r1, [r6, #6]
	cmp r0, r1
	bls _0808BD30
	movs r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _0808BD14
	ldr r1, _0808BD10 @ =0x03000048
	adds r0, r2, r1
	movs r1, #4
	strh r1, [r0]
	strh r7, [r3, #0x3c]
	b _0808BD20
	.align 2, 0
_0808BD04: .4byte Task_IronBallMain
_0808BD08: .4byte TaskDestructor_IronBall
_0808BD0C: .4byte 0x0300004C
_0808BD10: .4byte 0x03000048
_0808BD14:
	ldr r0, _0808BD28 @ =0x03000048
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x3c]
_0808BD20:
	ldr r1, _0808BD2C @ =0x0300004A
	adds r0, r2, r1
	strh r7, [r0]
	b _0808BD66
	.align 2, 0
_0808BD28: .4byte 0x03000048
_0808BD2C: .4byte 0x0300004A
_0808BD30:
	movs r0, #4
	ldrsb r0, [r6, r0]
	cmp r0, #0
	blt _0808BD54
	ldr r1, _0808BD4C @ =0x03000048
	adds r0, r2, r1
	strh r7, [r0]
	ldr r0, _0808BD50 @ =0x0300004A
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	strh r7, [r3, #0x3c]
	b _0808BD66
	.align 2, 0
_0808BD4C: .4byte 0x03000048
_0808BD50: .4byte 0x0300004A
_0808BD54:
	ldr r1, _0808BDA0 @ =0x03000048
	adds r0, r2, r1
	strh r7, [r0]
	ldr r0, _0808BDA4 @ =0x0300004A
	adds r1, r2, r0
	movs r0, #4
	strh r0, [r1]
	movs r0, #0x80
	strh r0, [r3, #0x3c]
_0808BD66:
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r5, #0x16]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	ldr r0, _0808BDA8 @ =gCurrentLevel
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x19
	cmp r0, #4
	bne _0808BDB0
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5, #4]
	ldr r0, _0808BDAC @ =0x0000021D
	b _0808BDBC
	.align 2, 0
_0808BDA0: .4byte 0x03000048
_0808BDA4: .4byte 0x0300004A
_0808BDA8: .4byte gCurrentLevel
_0808BDAC: .4byte 0x0000021D
_0808BDB0:
	movs r0, #0x24
	bl VramMalloc
	str r0, [r5, #4]
	movs r0, #0xff
	lsls r0, r0, #1
_0808BDBC:
	strh r0, [r5, #0xa]
	adds r0, r5, #0
	adds r0, #0x20
	strb r4, [r0]
	movs r2, #0
	movs r1, #0
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x1a]
	strh r1, [r5, #8]
	strh r1, [r5, #0x14]
	strh r1, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_IronBallMain
Task_IronBallMain: @ 0x0808BE08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0808BEFC @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	adds r0, #0xc
	adds r0, r5, r0
	str r0, [sp]
	ldr r1, [r7]
	str r1, [sp, #8]
	ldr r2, _0808BF00 @ =0x03000048
	adds r1, r5, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0808BE60
	ldr r4, [sp, #8]
	ldrb r2, [r4, #5]
	lsls r2, r2, #0xb
	ldr r4, _0808BF04 @ =gSineTable
	adds r3, r0, #0
	ldr r0, _0808BF08 @ =gStageTime
	ldrh r1, [r7, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _0808BF0C @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r7, #0x40]
_0808BE60:
	ldr r2, _0808BF10 @ =0x0300004A
	adds r1, r5, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0808BE96
	ldr r4, [sp, #8]
	ldrb r2, [r4, #6]
	lsls r2, r2, #0xb
	ldr r4, _0808BF04 @ =gSineTable
	adds r3, r0, #0
	ldr r0, _0808BF08 @ =gStageTime
	ldrh r1, [r7, #0x3c]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	muls r0, r3, r0
	ldr r1, _0808BF0C @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r7, #0x44]
_0808BE96:
	ldrb r1, [r7, #8]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, [sp, #8]
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _0808BF14 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r1, #0x10
	mov sl, r4
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldr r0, [r7, #0x40]
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp]
	strh r1, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsrs r1, r2, #0x10
	str r1, [sp, #4]
	asrs r2, r2, #0x10
	subs r2, r2, r0
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	adds r2, r2, r0
	ldr r3, [sp]
	strh r2, [r3, #0x18]
	movs r4, #0
	mov r8, r4
_0808BEDE:
	mov r0, r8
	cmp r0, #0
	beq _0808BF20
	ldr r0, _0808BF18 @ =gUnknown_03005AB0
	ldr r1, [r0, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r2, sl
	lsls r6, r2, #0x10
	cmp r1, #0
	bne _0808BF7A
	ldr r3, _0808BF1C @ =gPlayer
	mov sb, r3
	b _0808BF32
	.align 2, 0
_0808BEFC: .4byte gCurTask
_0808BF00: .4byte 0x03000048
_0808BF04: .4byte gSineTable
_0808BF08: .4byte gStageTime
_0808BF0C: .4byte 0x000003FF
_0808BF10: .4byte 0x0300004A
_0808BF14: .4byte gCamera
_0808BF18: .4byte gUnknown_03005AB0
_0808BF1C: .4byte gPlayer
_0808BF20:
	ldr r2, _0808BFF8 @ =gPlayer
	ldr r1, [r2, #0x10]
	movs r0, #0x80
	ands r1, r0
	mov r4, sl
	lsls r6, r4, #0x10
	mov sb, r2
	cmp r1, #0
	bne _0808BF7A
_0808BF32:
	ldr r1, [r7, #0x40]
	asrs r1, r1, #8
	mov r0, sl
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	ldr r1, [r7, #0x44]
	asrs r1, r1, #8
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	mov r3, sb
	adds r6, r2, #0
	mov r0, r8
	cmp r0, #0
	beq _0808BF5E
	ldr r3, _0808BFFC @ =gUnknown_03005AB0
_0808BF5E:
	ldr r0, [sp]
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_800CE34
	cmp r0, #0
	beq _0808BF7A
	mov r0, sb
	mov r1, r8
	cmp r1, #0
	beq _0808BF76
	ldr r0, _0808BFFC @ =gUnknown_03005AB0
_0808BF76:
	bl sub_800C558
_0808BF7A:
	movs r2, #1
	add r8, r2
	ldr r0, _0808C000 @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r8, r0
	blt _0808BEDE
	asrs r2, r6, #0x10
	ldr r3, _0808C004 @ =gCamera
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r1, r4
	cmp r2, r0
	bgt _0808BFC0
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	blt _0808BFC0
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	cmp r2, r0
	bgt _0808BFC0
	adds r0, r1, #0
	subs r0, #0x80
	cmp r2, r0
	bge _0808C00C
_0808BFC0:
	ldr r4, [sp]
	ldrh r0, [r4, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0808BFE6
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0808BFE6
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808C00C
_0808BFE6:
	ldrb r0, [r7, #8]
	ldr r3, [sp, #8]
	strb r0, [r3]
	ldr r0, _0808C008 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808C012
	.align 2, 0
_0808BFF8: .4byte gPlayer
_0808BFFC: .4byte gUnknown_03005AB0
_0808C000: .4byte gUnknown_03005088
_0808C004: .4byte gCamera
_0808C008: .4byte gCurTask
_0808C00C:
	ldr r0, [sp]
	bl DisplaySprite
_0808C012:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_IronBall
TaskDestructor_IronBall: @ 0x0808C024
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
