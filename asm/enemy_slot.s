.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_806E7E0
sub_806E7E0: @ 0x0806E7E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r6, _0806E814 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r7, r5, #0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldrh r0, [r5, #0x30]
	subs r0, #1
	strh r0, [r5, #0x30]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806E818
	ldr r0, [r6]
	bl TaskDestroy
	b _0806E980
	.align 2, 0
_0806E814: .4byte gCurTask
_0806E818:
	movs r0, #0
	mov sl, r0
	ldr r1, _0806E8D8 @ =0x03000088
	adds r1, r4, r1
	str r1, [sp, #0x10]
_0806E822:
	ldr r0, [sp, #0x10]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806E82E
	b _0806E970
_0806E82E:
	mov r2, sl
	lsls r4, r2, #1
	adds r0, r7, #0
	adds r0, #0x4c
	adds r6, r0, r4
	movs r3, #0
	ldrsh r1, [r6, r3]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x30
	ldrsh r2, [r7, r1]
	ldr r1, _0806E8DC @ =0x00000415
	subs r1, r1, r2
	bl Div
	strh r0, [r6]
	mov r2, sl
	lsls r1, r2, #2
	adds r2, r7, #0
	adds r2, #0x34
	adds r2, r2, r1
	adds r0, r7, #0
	adds r0, #0x70
	adds r0, r0, r1
	mov sb, r0
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	adds r2, r7, #0
	adds r2, #0x58
	adds r2, r2, r4
	asrs r1, r1, #8
	strh r1, [r2]
	ldrh r0, [r6]
	adds r0, #0x28
	strh r0, [r6]
	adds r1, r7, #0
	adds r1, #0x64
	adds r4, r1, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	ldrh r0, [r2]
	strh r0, [r5, #0x16]
	ldrh r2, [r4]
	strh r2, [r5, #0x18]
	ldrh r0, [r5, #0x16]
	mov r8, r0
	ldrh r1, [r5, #0x18]
	str r1, [sp, #0xc]
	ldr r1, _0806E8E0 @ =gCamera
	ldrh r0, [r1]
	mov r3, r8
	subs r0, r3, r0
	strh r0, [r5, #0x16]
	ldrh r1, [r1, #2]
	subs r2, r2, r1
	strh r2, [r5, #0x18]
	adds r0, #0x14
	lsls r0, r0, #0x10
	movs r1, #0x8a
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0806E8CC
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	adds r0, #0x14
	cmp r0, #0
	blt _0806E8CC
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0806E8E4
_0806E8CC:
	ldr r1, [sp, #0x10]
	add r1, sl
	movs r0, #0
	strb r0, [r1]
	b _0806E970
	.align 2, 0
_0806E8D8: .4byte 0x03000088
_0806E8DC: .4byte 0x00000415
_0806E8E0: .4byte gCamera
_0806E8E4:
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _0806E958 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	adds r1, r0, #0
	cmp r1, #0
	bgt _0806E93C
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	movs r3, #0
	ldrsh r1, [r6, r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	rsbs r0, r0, #0
	movs r1, #0x15
	bl Div
	strh r0, [r6]
	ldr r1, _0806E95C @ =gSineTable
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0x1e
	bl Div
	mov r2, sb
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
_0806E93C:
	ldrh r1, [r7, #0x30]
	movs r3, #0x30
	ldrsh r0, [r7, r3]
	cmp r0, #0x1d
	bgt _0806E960
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806E966
	adds r0, r5, #0
	bl DisplaySprite
	b _0806E966
	.align 2, 0
_0806E958: .4byte sa2__sub_801EE64
_0806E95C: .4byte gSineTable
_0806E960:
	adds r0, r5, #0
	bl DisplaySprite
_0806E966:
	mov r0, r8
	strh r0, [r5, #0x16]
	mov r1, sp
	ldrh r1, [r1, #0xc]
	strh r1, [r5, #0x18]
_0806E970:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #5
	bhi _0806E980
	b _0806E822
_0806E980:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
