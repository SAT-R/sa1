.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
@ Input:
@ R0: Strc_80528AC
	thumb_func_start sub_80528AC
sub_80528AC: @ 0x080528AC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0     @ r4 = param0
	ldr r0, _08052968 @ =gTask_03006240
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0     @ r5 = ui
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r5, r5, r0
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldrb r0, [r4, #8]
	strb r0, [r5, #8]
	ldrb r0, [r4, #9]
	strb r0, [r5, #9]
	ldrb r0, [r4, #0xa]
	strb r0, [r5, #0xa]
	ldrb r0, [r4, #0xb]
	strb r0, [r5, #0xb]
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08052984
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08052920
	bl sub_80536B0
	adds r3, r0, #0
	cmp r3, #0
	beq _08052920
	ldr r0, [r4, #0x14]
	str r0, [r3]
	ldr r0, [r4, #0xc]
	str r0, [r3, #4]
	ldr r0, [r4, #0x18]
	strh r0, [r3, #8]
	ldr r1, _0805296C @ =gVramGraphicsCopyQueue
	ldr r2, _08052970 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	str r3, [r0]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
_08052920:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0805295A
	ldr r2, _08052974 @ =0x040000D4
	ldr r0, [r4, #0x20]
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldr r1, _08052978 @ =gObjPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, [r4, #0x24]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _0805297C @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_0805295A:
	ldr r0, [r4, #0xc]
	ldr r1, _08052980 @ =0xF9FF0000
	adds r0, r0, r1
	lsrs r0, r0, #5
	str r0, [r5]
	b _08052A82
	.align 2, 0
_08052968: .4byte gTask_03006240
_0805296C: .4byte gVramGraphicsCopyQueue
_08052970: .4byte gVramGraphicsCopyQueueIndex
_08052974: .4byte 0x040000D4
_08052978: .4byte gObjPalette
_0805297C: .4byte gFlags
_08052980: .4byte 0xF9FF0000
_08052984:
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080529B0
	ldr r2, _080529AC @ =gBgCntRegs
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	b _080529C6
	.align 2, 0
_080529AC: .4byte gBgCntRegs
_080529B0:
	ldr r2, _08052A88 @ =gBgCntRegs
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r1, _08052A8C @ =0x06000020
_080529C6:
	adds r5, r0, r1
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r1
	lsls r0, r0, #3
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r7, r0, r1
	adds r2, r4, #0
	adds r2, #0x2a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08052A18
	bl sub_80536B0
	adds r3, r0, #0
	cmp r3, #0
	beq _08052A18
	ldr r0, [r4, #0x14]
	str r0, [r3]
	str r5, [r3, #4]
	ldr r0, [r4, #0x18]
	strh r0, [r3, #8]
	ldr r1, _08052A90 @ =gVramGraphicsCopyQueue
	ldr r2, _08052A94 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	str r3, [r0]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
_08052A18:
	ldrb r1, [r6]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08052A4C
	bl sub_80536B0
	adds r3, r0, #0
	cmp r3, #0
	beq _08052A4C
	ldr r0, [r4, #0x10]
	str r0, [r3]
	str r7, [r3, #4]
	ldr r0, [r4, #0x1c]
	strh r0, [r3, #8]
	ldr r1, _08052A90 @ =gVramGraphicsCopyQueue
	ldr r2, _08052A94 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	str r3, [r0]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
_08052A4C:
	ldrb r1, [r6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08052A82
	ldr r2, _08052A98 @ =0x040000D4
	ldr r0, [r4, #0x20]
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldr r1, _08052A9C @ =gBgPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, [r4, #0x24]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08052AA0 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
_08052A82:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052A88: .4byte gBgCntRegs
_08052A8C: .4byte 0x06000020
_08052A90: .4byte gVramGraphicsCopyQueue
_08052A94: .4byte gVramGraphicsCopyQueueIndex
_08052A98: .4byte 0x040000D4
_08052A9C: .4byte gBgPalette
_08052AA0: .4byte gFlags
.endif

@ TODO: Big parts of this function look like sub_8053520.
@       Maybe it was inlined here?
	thumb_func_start sub_8052AA4
sub_8052AA4: @ 0x08052AA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08052B74 @ =gUnknown_030063C0
	mov ip, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08052B50
	ldr r1, _08052B78 @ =gTask_03006240
	mov sl, r1
_08052ABC:
	mov r2, ip
	ldr r2, [r2]
	mov ip, r2
	mov r1, sl
	ldr r0, [r1]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r1, [r2, #0x1c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r5, r5, r0
	ldr r1, [r2, #0x14]
	lsls r1, r1, #6
	mov r6, ip
	adds r6, #0x20
	ldrb r3, [r6]
	ldr r0, [r2, #0x10]
	adds r0, r0, r3
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r2, #0x18]
	lsls r0, r0, #1
	ldr r2, _08052B7C @ =gBgCntRegs
	adds r0, r0, r2
	ldrh r2, [r0]
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r0, r0, r1
	mov sb, r0
	movs r4, #0
	movs r1, #0
	cmp r1, r3
	bhs _08052B48
	mov r8, r6
_08052B10:
	movs r2, #0
	adds r7, r1, #1
	adds r6, r4, #1
	ldrb r0, [r5, #0xb]
	cmp r2, r0
	bhs _08052B3C
	ldr r3, [r5, #4]
	muls r1, r3, r1
	mov r0, ip
	adds r0, #4
	adds r4, r0, r4
	add r1, sb
_08052B28:
	ldrb r0, [r4]
	subs r0, #0x20
	muls r0, r3, r0
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, #0x40
	adds r2, #1
	ldrb r0, [r5, #0xb]
	cmp r2, r0
	blo _08052B28
_08052B3C:
	adds r1, r7, #0
	adds r4, r6, #0
	mov r2, r8
	ldrb r2, [r2]
	cmp r1, r2
	blo _08052B10
_08052B48:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, #0
	bne _08052ABC
_08052B50:
	ldr r2, _08052B80 @ =gUnknown_030063F0
	ldr r0, [r2]
	mov r1, ip
	str r0, [r1]
	ldr r2, _08052B74 @ =gUnknown_030063C0
	ldr r0, [r2]
	ldr r1, _08052B80 @ =gUnknown_030063F0
	str r0, [r1]
	movs r0, #0
	str r0, [r2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052B74: .4byte gUnknown_030063C0
_08052B78: .4byte gTask_03006240
_08052B7C: .4byte gBgCntRegs
_08052B80: .4byte gUnknown_030063F0

.if 01
.endif
