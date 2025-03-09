.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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
	ldr r0, _0808BF18 @ =gPartner
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
_0808BF18: .4byte gPartner
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
	ldr r3, _0808BFFC @ =gPartner
_0808BF5E:
	ldr r0, [sp]
	adds r1, r5, #0
	adds r2, r4, #0
	bl sa2__sub_800DF38
	cmp r0, #0
	beq _0808BF7A
	mov r0, sb
	mov r1, r8
	cmp r1, #0
	beq _0808BF76
	ldr r0, _0808BFFC @ =gPartner
_0808BF76:
	bl sa2__sub_800CBA4
_0808BF7A:
	movs r2, #1
	add r8, r2
	ldr r0, _0808C000 @ =gNumSingleplayerCharacters
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
_0808BFFC: .4byte gPartner
_0808C000: .4byte gNumSingleplayerCharacters
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
