.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

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
_0803F95C: @ inline of sub_803F920?
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
