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

@ Unused?
	thumb_func_start sub_8052B84
sub_8052B84: @ 0x08052B84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [sp, #0x30]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r1, sp
	movs r0, #0
	strb r0, [r1, #9]
	movs r4, #8
_08052BB4:
	adds r0, r5, #0
	movs r1, #0xa
	bl Div
	mov r1, sp
	adds r3, r1, r4
	lsls r1, r0, #3
	lsls r2, r0, #1
	adds r1, r1, r2
	subs r1, r5, r1
	adds r1, #0x30
	strb r1, [r3]
	adds r5, r0, #0
	subs r4, #1
	cmp r4, #0
	bge _08052BB4
	movs r1, #0
	movs r4, #0
	mov r0, sp
	ldrb r0, [r0]
	ldr r2, _08052BFC @ =gUnknown_030063F0
	mov ip, r2
	cmp r0, #0x30
	bne _08052C00
	movs r1, #1
_08052BE6:
	adds r4, #1
	cmp r4, #9
	bgt _08052C00
	mov r2, sp
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0x30
	bne _08052C00
	adds r1, #1
	b _08052BE6
	.align 2, 0
_08052BFC: .4byte gUnknown_030063F0
_08052C00:
	mov r0, sp
	adds r6, r0, r1
	mov r1, ip
	ldr r0, [r1]
	cmp r0, #0
	beq _08052C74
	adds r3, r0, #0
	movs r1, #0
	ldrb r0, [r6]
	cmp r0, #0x20
	beq _08052C24
_08052C16:
	adds r1, #1
	cmp r1, #9
	bgt _08052C24
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _08052C16
_08052C24:
	adds r4, r3, #0
	adds r4, #0x20
	strb r1, [r4]
	cmp r1, #0
	ble _08052C74
	movs r2, #0
	ldr r7, _08052C5C @ =gUnknown_030063C0
	cmp r2, r1
	bge _08052C48
	adds r5, r3, #4
_08052C38:
	adds r0, r5, r2
	adds r1, r6, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	ldrb r0, [r4]
	cmp r2, r0
	blt _08052C38
_08052C48:
	ldr r1, [sp, #0xc]
	str r1, [r3, #0x10]
	mov r2, sl
	str r2, [r3, #0x14]
	mov r0, sb
	str r0, [r3, #0x18]
	mov r1, r8
	str r1, [r3, #0x1c]
	adds r1, r7, #0
	b _08052C62
	.align 2, 0
_08052C5C: .4byte gUnknown_030063C0
_08052C60:
	ldr r1, [r1]
_08052C62:
	ldr r0, [r1]
	cmp r0, #0
	bne _08052C60
	str r3, [r1]
	ldr r0, [r3]
	mov r2, ip
	str r0, [r2]
	movs r0, #0
	str r0, [r3]
_08052C74:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8052C84
sub_8052C84: @ 0x08052C84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r4, r1, #0
	ldr r0, _08052CBC @ =gTask_03006240
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrh r1, [r4, #0x10]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r5, r5, r0
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _08052CC4
	ldr r1, [r4]
	ldr r0, _08052CC0 @ =0x01000100
	cmp r1, r0
	bne _08052CC4
	movs r0, #0
	mov sl, r0
	b _08052CDA
	.align 2, 0
_08052CBC: .4byte gTask_03006240
_08052CC0: .4byte 0x01000100
_08052CC4:
	ldrh r0, [r4, #4]
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	ldrh r3, [r4, #6]
	bl sa2__sub_80047A0
	ldrh r7, [r4, #6]
	mov sl, r7
	movs r0, #3
_08052CDA:
	movs r6, #0
	lsls r0, r0, #8
	mov r8, r0
	b _08052D30
_08052CE2:
	ldrb r0, [r5, #9]
	lsls r0, r0, #0xe
	ldrb r1, [r4, #0xc]
	orrs r0, r1
	mov r1, r8
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	ldrb r2, [r5, #8]
	lsls r2, r2, #0xe
	mov r7, sl
	lsls r0, r7, #9
	orrs r2, r0
	ldrb r0, [r5, #0xa]
	muls r0, r6, r0
	lsls r0, r0, #3
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	ldr r7, _08052D5C @ =0x000001FF
	adds r1, r7, #0
	ands r0, r1
	orrs r2, r0
	strh r2, [r3, #2]
	ldrh r2, [r4, #0x12]
	lsls r2, r2, #0xc
	mov r1, sb
	adds r0, r1, r6
	ldrb r0, [r0]
	subs r0, #0x20
	ldr r1, [r5, #4]
	muls r1, r0, r1
	ldr r0, [r5]
	adds r0, r0, r1
	adds r2, r2, r0
	strh r2, [r3, #4]
	adds r6, #1
_08052D30:
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r6, r0
	bge _08052D4E
	ldrh r0, [r4, #8]
	lsrs r0, r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl OamMalloc
	adds r3, r0, #0
	ldr r0, _08052D60 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r3
	bne _08052CE2
_08052D4E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052D5C: .4byte 0x000001FF
_08052D60: .4byte iwram_end

	thumb_func_start sub_8052D64
sub_8052D64: @ 0x08052D64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r4, r1, #0
	ldr r0, _08052DC8 @ =gTask_03006240
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrh r1, [r4, #0x10]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r5, r5, r0
	ldrh r0, [r4, #4]
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	ldrh r3, [r4, #6]
	bl sa2__sub_80047A0
	ldrh r7, [r4, #6]
	mov r8, r7
	mov r2, sp
	movs r1, #0xc0
	lsls r1, r1, #2
	ldrb r0, [r5, #9]
	lsls r0, r0, #0xe
	orrs r0, r1
	ldrb r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r2]
	mov r3, sp
	ldrh r1, [r4, #0x12]
	lsls r1, r1, #0xc
	ldr r0, [r5]
	ldr r2, _08052DCC @ =0x000003FF
	ands r0, r2
	orrs r1, r0
	strh r1, [r3, #4]
	movs r6, #0
	mov sl, sp
	b _08052E0A
	.align 2, 0
_08052DC8: .4byte gTask_03006240
_08052DCC: .4byte 0x000003FF
_08052DD0:
	mov r1, sl
	ldrh r0, [r1]
	strh r0, [r3]
	ldrb r2, [r5, #8]
	lsls r2, r2, #0xe
	mov r7, r8
	lsls r0, r7, #9
	orrs r2, r0
	ldrb r0, [r5, #0xa]
	muls r0, r6, r0
	lsls r0, r0, #3
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	ldr r7, _08052E38 @ =0x000001FF
	adds r1, r7, #0
	ands r0, r1
	orrs r2, r0
	strh r2, [r3, #2]
	mov r1, sb
	adds r0, r1, r6
	ldrb r0, [r0]
	subs r0, #0x20
	ldr r1, [r5, #4]
	muls r0, r1, r0
	mov r2, sl
	ldrh r2, [r2, #4]
	adds r0, r0, r2
	strh r0, [r3, #4]
	adds r6, #1
_08052E0A:
	movs r3, #0xe
	ldrsh r0, [r4, r3]
	cmp r6, r0
	bge _08052E28
	ldrh r0, [r4, #8]
	lsrs r0, r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl OamMalloc
	adds r3, r0, #0
	ldr r0, _08052E3C @ =iwram_end
	ldr r0, [r0]
	cmp r0, r3
	bne _08052DD0
_08052E28:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052E38: .4byte 0x000001FF
_08052E3C: .4byte iwram_end

	thumb_func_start sub_8052E40
sub_8052E40: @ 0x08052E40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	adds r4, r1, #0
	ldr r0, _08052E70 @ =gTask_03006240
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrh r1, [r4, #0x10]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r5, r5, r0
	ldrh r0, [r4, #6]
	mov sl, r0
	movs r1, #3
	mov sb, r1
	movs r6, #0
	b _08052EBC
	.align 2, 0
_08052E70: .4byte gTask_03006240
_08052E74:
	ldrb r0, [r5, #9]
	lsls r0, r0, #0xe
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	ldrh r1, [r4, #0xc]
	ldr r7, _08052EE8 @ =0x000001FF
	adds r2, r7, #0
	ands r1, r2
	adds r0, r0, r1
	strh r0, [r3]
	ldrb r1, [r5, #8]
	lsls r1, r1, #0xe
	mov r2, sl
	lsls r0, r2, #9
	adds r1, r1, r0
	ldrh r0, [r4]
	muls r0, r6, r0
	asrs r0, r0, #5
	adds r1, r1, r0
	ldrh r7, [r4, #0xa]
	adds r1, r1, r7
	strh r1, [r3, #2]
	ldrh r2, [r4, #0x12]
	lsls r2, r2, #0xc
	mov r1, r8
	adds r0, r1, r6
	ldrb r0, [r0]
	subs r0, #0x20
	ldr r1, [r5, #4]
	muls r1, r0, r1
	ldr r0, [r5]
	adds r0, r0, r1
	adds r2, r2, r0
	strh r2, [r3, #4]
	adds r6, #1
_08052EBC:
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r6, r0
	bge _08052EDA
	ldrh r0, [r4, #8]
	lsrs r0, r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl OamMalloc
	adds r3, r0, #0
	ldr r0, _08052EEC @ =iwram_end
	ldr r0, [r0]
	cmp r0, r3
	bne _08052E74
_08052EDA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052EE8: .4byte 0x000001FF
_08052EEC: .4byte iwram_end

@ Unused?
	thumb_func_start sub_8052EF0
sub_8052EF0: @ 0x08052EF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r4, r1, #0
	movs r7, #0
	strh r7, [r4, #0xe]
	movs r5, #9
_08052EFE:
	adds r0, r6, #0
	movs r1, #0xa
	bl Div
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	adds r3, r1, r5
	lsls r1, r0, #3
	lsls r2, r0, #1
	adds r1, r1, r2
	subs r1, r6, r1
	adds r1, #0x30
	strb r1, [r3]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	ldrh r1, [r4, #0xe]
	adds r0, r1, #1
	strh r0, [r4, #0xe]
	subs r5, #1
	cmp r5, #0
	bge _08052EFE
	movs r5, #0
	mov r0, sp
	ldrb r0, [r0]
	ldrh r2, [r4]
	ldrh r3, [r4, #0xa]
	cmp r0, #0x30
	bne _08052F56
	adds r7, #1
	strh r1, [r4, #0xe]
_08052F3C:
	adds r5, #1
	cmp r5, #9
	bgt _08052F56
	mov r1, sp
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0x30
	bne _08052F56
	adds r7, #1
	ldrh r0, [r4, #0xe]
	subs r0, #1
	strh r0, [r4, #0xe]
	b _08052F3C
_08052F56:
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	subs r0, #1
	muls r0, r2, r0
	asrs r0, r0, #5
	subs r0, r3, r0
	strh r0, [r4, #0xa]
	mov r1, sp
	adds r0, r1, r7
	adds r1, r4, #0
	bl sub_8052C84
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8052F78
sub_8052F78: @ 0x08052F78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r5, r1, #0
	ldr r0, _08052FE8 @ =gTask_03006240
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldrh r1, [r5, #0x10]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r7, r7, r0
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	mov sb, r0
	ldrb r0, [r7, #0xb]
	lsls r0, r0, #3
	str r0, [sp, #8]
	mov r2, sp
	ldrb r0, [r7, #9]
	lsls r0, r0, #0xe
	ldrb r1, [r5, #0xc]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	strh r0, [r2]
	mov r3, sp
	ldrb r1, [r7, #8]
	lsls r1, r1, #0xe
	ldrh r2, [r5, #0xa]
	ldr r6, _08052FEC @ =0x000001FF
	adds r0, r6, #0
	ands r0, r2
	adds r1, r1, r0
	strh r1, [r3, #2]
	ldrh r1, [r5, #0x12]
	lsls r1, r1, #0xc
	ldr r0, [r7]
	ldr r2, _08052FF0 @ =0x000003FF
	ands r0, r2
	orrs r1, r0
	strh r1, [r3, #4]
	ldrb r0, [r5, #0x16]
	cmp r0, #0
	beq _0805303C
	movs r6, #0
	mov r4, sp
	b _08053016
	.align 2, 0
_08052FE8: .4byte gTask_03006240
_08052FEC: .4byte 0x000001FF
_08052FF0: .4byte 0x000003FF
_08052FF4:
	ldrh r0, [r4]
	strh r0, [r2]
	ldrh r0, [r4, #2]
	strh r0, [r2, #2]
	ldrh r0, [r4, #2]
	add r0, sb
	strh r0, [r4, #2]
	mov r1, sl
	adds r0, r1, r6
	ldrb r0, [r0]
	subs r0, #0x20
	ldr r1, [r7, #4]
	muls r0, r1, r0
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r2, #4]
	adds r6, #1
_08053016:
	movs r1, #0xe
	ldrsh r0, [r5, r1]
	cmp r6, r0
	bge _080530B8
	ldrh r0, [r5, #8]
	lsrs r0, r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl OamMalloc
	adds r2, r0, #0
	ldr r0, _08053038 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r2
	bne _08052FF4
	b _080530B8
	.align 2, 0
_08053038: .4byte iwram_end
_0805303C:
	movs r3, #0
	ldrh r0, [r5, #0x14]
	cmp r3, r0
	bge _080530B8
	mov r4, sp
	mov r8, r6
_08053048:
	ldrb r1, [r7, #8]
	lsls r1, r1, #0xe
	ldrh r2, [r5, #0xa]
	mov r0, r8
	ands r0, r2
	adds r1, r1, r0
	strh r1, [r4, #2]
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	mov r1, r8
	ands r0, r1
	asrs r6, r0, #7
	adds r3, #1
	b _08053088
_08053066:
	ldrh r0, [r4]
	strh r0, [r2]
	ldrh r0, [r4, #2]
	strh r0, [r2, #2]
	ldrh r0, [r4, #2]
	add r0, sb
	strh r0, [r4, #2]
	mov r1, sl
	adds r0, r1, r6
	ldrb r0, [r0]
	subs r0, #0x20
	ldr r1, [r7, #4]
	muls r0, r1, r0
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r2, #4]
	adds r6, #1
_08053088:
	movs r1, #0xe
	ldrsh r0, [r5, r1]
	cmp r6, r0
	bge _080530AA
	ldrh r0, [r5, #8]
	lsrs r0, r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r3, [sp, #0xc]
	bl OamMalloc
	adds r2, r0, #0
	ldr r0, _080530C8 @ =iwram_end
	ldr r0, [r0]
	ldr r3, [sp, #0xc]
	cmp r0, r2
	bne _08053066
_080530AA:
	ldrh r0, [r4]
	ldr r1, [sp, #8]
	adds r0, r1, r0
	strh r0, [r4]
	ldrh r0, [r5, #0x14]
	cmp r3, r0
	blt _08053048
_080530B8:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080530C8: .4byte iwram_end

@ Input:
@ R0 = gUnknown_086883F8 (u8*)?
@ R1 = GameOverB*
	thumb_func_start sub_80530CC
sub_80530CC: @ 0x080530CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r5, r1, #0
	ldr r0, _08053138 @ =gTask_03006240
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldrh r1, [r5, #0x10]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r7, r7, r0
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	mov sb, r0
	ldrb r0, [r7, #0xb]
	lsls r0, r0, #3
	str r0, [sp, #8]
	mov r2, sp
	ldrb r0, [r7, #9]
	lsls r0, r0, #0xe
	ldrb r1, [r5, #0xc]
	adds r0, r0, r1
	strh r0, [r2]
	mov r3, sp
	ldrb r1, [r7, #8]
	lsls r1, r1, #0xe
	ldrh r2, [r5, #0xa]
	ldr r6, _0805313C @ =0x000001FF
	adds r0, r6, #0
	ands r0, r2
	adds r1, r1, r0
	strh r1, [r3, #2]
	ldrh r1, [r5, #0x12]
	lsls r1, r1, #0xc
	ldr r0, [r7]
	ldr r2, _08053140 @ =0x000003FF
	ands r0, r2
	orrs r1, r0
	strh r1, [r3, #4]
	ldrb r0, [r5, #0x16]
	cmp r0, #0
	beq _0805318C
	movs r6, #0
	mov r4, sp
	b _08053166
	.align 2, 0
_08053138: .4byte gTask_03006240
_0805313C: .4byte 0x000001FF
_08053140: .4byte 0x000003FF
_08053144:
	ldrh r0, [r4]
	strh r0, [r2]
	ldrh r0, [r4, #2]
	strh r0, [r2, #2]
	ldrh r0, [r4, #2]
	add r0, sb
	strh r0, [r4, #2]
	mov r1, sl
	adds r0, r1, r6
	ldrb r0, [r0]
	subs r0, #0x20
	ldr r1, [r7, #4]
	muls r0, r1, r0
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r2, #4]
	adds r6, #1
_08053166:
	movs r1, #0xe
	ldrsh r0, [r5, r1]
	cmp r6, r0
	bge _08053208
	ldrh r0, [r5, #8]
	lsrs r0, r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl OamMalloc
	adds r2, r0, #0
	ldr r0, _08053188 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r2
	bne _08053144
	b _08053208
	.align 2, 0
_08053188: .4byte iwram_end
_0805318C:
	movs r3, #0
	ldrh r0, [r5, #0x14]
	cmp r3, r0
	bge _08053208
	mov r4, sp
	mov r8, r6
_08053198:
	ldrb r1, [r7, #8]
	lsls r1, r1, #0xe
	ldrh r2, [r5, #0xa]
	mov r0, r8
	ands r0, r2
	adds r1, r1, r0
	strh r1, [r4, #2]
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	mov r1, r8
	ands r0, r1
	asrs r6, r0, #7
	adds r3, #1
	b _080531D8
_080531B6:
	ldrh r0, [r4]
	strh r0, [r2]
	ldrh r0, [r4, #2]
	strh r0, [r2, #2]
	ldrh r0, [r4, #2]
	add r0, sb
	strh r0, [r4, #2]
	mov r1, sl
	adds r0, r1, r6
	ldrb r0, [r0]
	subs r0, #0x20
	ldr r1, [r7, #4]
	muls r0, r1, r0
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r2, #4]
	adds r6, #1
_080531D8:
	movs r1, #0xe
	ldrsh r0, [r5, r1]
	cmp r6, r0
	bge _080531FA
	ldrh r0, [r5, #8]
	lsrs r0, r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r3, [sp, #0xc]
	bl OamMalloc
	adds r2, r0, #0
	ldr r0, _08053218 @ =iwram_end
	ldr r0, [r0]
	ldr r3, [sp, #0xc]
	cmp r0, r2
	bne _080531B6
_080531FA:
	ldrh r0, [r4]
	ldr r1, [sp, #8]
	adds r0, r1, r0
	strh r0, [r4]
	ldrh r0, [r5, #0x14]
	cmp r3, r0
	blt _08053198
_08053208:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053218: .4byte iwram_end

	thumb_func_start sub_805321C
sub_805321C: @ 0x0805321C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r6, r1, #0
	ldr r0, _08053288 @ =gTask_03006240
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldrh r1, [r6, #0x10]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r7, r7, r0
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	mov sb, r0
	ldrb r0, [r7, #0xb]
	lsls r0, r0, #3
	str r0, [sp, #8]
	mov r2, sp
	ldrb r0, [r7, #9]
	lsls r0, r0, #0xe
	ldrb r1, [r6, #0xc]
	adds r0, r0, r1
	strh r0, [r2]
	mov r3, sp
	ldrb r1, [r7, #8]
	lsls r1, r1, #0xe
	ldrh r2, [r6, #0xa]
	ldr r5, _0805328C @ =0x000001FF
	adds r0, r5, #0
	ands r0, r2
	adds r1, r1, r0
	strh r1, [r3, #2]
	ldrh r1, [r6, #0x12]
	lsls r1, r1, #0xc
	ldr r0, [r7]
	ldr r2, _08053290 @ =0x000003FF
	ands r0, r2
	orrs r1, r0
	strh r1, [r3, #4]
	ldrb r0, [r6, #0x16]
	cmp r0, #0
	beq _080532DC
	movs r5, #0
	mov r4, sp
	b _080532B6
	.align 2, 0
_08053288: .4byte gTask_03006240
_0805328C: .4byte 0x000001FF
_08053290: .4byte 0x000003FF
_08053294:
	ldrh r0, [r4]
	strh r0, [r2]
	ldrh r0, [r4, #2]
	strh r0, [r2, #2]
	ldrh r0, [r4, #2]
	add r0, sb
	strh r0, [r4, #2]
	mov r1, sl
	adds r0, r1, r5
	ldrb r0, [r0]
	subs r0, #0x20
	ldr r1, [r7, #4]
	muls r0, r1, r0
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r2, #4]
	adds r5, #1
_080532B6:
	movs r1, #0xe
	ldrsh r0, [r6, r1]
	cmp r5, r0
	bge _0805335A
	ldrh r0, [r6, #8]
	adds r0, r0, r5
	asrs r0, r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl OamMalloc
	adds r2, r0, #0
	ldr r0, _080532D8 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r2
	bne _08053294
	b _0805335A
	.align 2, 0
_080532D8: .4byte iwram_end
_080532DC:
	movs r3, #0
	ldrh r0, [r6, #0x14]
	cmp r3, r0
	bge _0805335A
	mov r4, sp
	mov r8, r5
_080532E8:
	ldrb r1, [r7, #8]
	lsls r1, r1, #0xe
	ldrh r2, [r6, #0xa]
	mov r0, r8
	ands r0, r2
	adds r1, r1, r0
	strh r1, [r4, #2]
	movs r1, #0xa
	ldrsh r0, [r6, r1]
	rsbs r0, r0, #0
	mov r1, r8
	ands r0, r1
	asrs r5, r0, #7
	adds r3, #1
	b _08053328
_08053306:
	ldrh r0, [r4]
	strh r0, [r2]
	ldrh r0, [r4, #2]
	strh r0, [r2, #2]
	ldrh r0, [r4, #2]
	add r0, sb
	strh r0, [r4, #2]
	mov r1, sl
	adds r0, r1, r5
	ldrb r0, [r0]
	subs r0, #0x20
	ldr r1, [r7, #4]
	muls r0, r1, r0
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r2, #4]
	adds r5, #1
_08053328:
	movs r1, #0xe
	ldrsh r0, [r6, r1]
	cmp r5, r0
	bge _0805334C
	ldrh r0, [r6, #8]
	adds r0, r0, r5
	asrs r0, r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r3, [sp, #0xc]
	bl OamMalloc
	adds r2, r0, #0
	ldr r0, _0805336C @ =iwram_end
	ldr r0, [r0]
	ldr r3, [sp, #0xc]
	cmp r0, r2
	bne _08053306
_0805334C:
	ldrh r0, [r4]
	ldr r1, [sp, #8]
	adds r0, r1, r0
	strh r0, [r4]
	ldrh r0, [r6, #0x14]
	cmp r3, r0
	blt _080532E8
_0805335A:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805336C: .4byte iwram_end

	thumb_func_start sub_8053370
sub_8053370: @ 0x08053370
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _080533DC @ =gTask_03006240
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrh r1, [r7, #0x10]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r6, r6, r0
	ldrb r0, [r6, #0xa]
	lsls r0, r0, #3
	mov r8, r0
	mov r2, sp
	ldrb r0, [r6, #9]
	lsls r0, r0, #0xe
	ldrb r1, [r7, #0xc]
	adds r0, r0, r1
	strh r0, [r2]
	mov r3, sp
	ldrb r1, [r6, #8]
	lsls r1, r1, #0xe
	ldrh r2, [r7, #0xa]
	ldr r0, _080533E0 @ =0x000001FF
	ands r0, r2
	adds r1, r1, r0
	strh r1, [r3, #2]
	ldrh r1, [r7, #0x12]
	lsls r1, r1, #0xc
	ldr r0, [r6]
	ldr r2, _080533E4 @ =0x000003FF
	ands r0, r2
	orrs r1, r0
	strh r1, [r3, #4]
	movs r3, #0
	movs r1, #0xe
	ldrsh r0, [r7, r1]
	cmp r3, r0
	bge _0805344A
	mov r4, sp
_080533CE:
	ldrb r0, [r5]
	cmp r0, #0x20
	bne _080533E8
	ldrh r0, [r4, #2]
	add r0, r8
	strh r0, [r4, #2]
	b _0805343E
	.align 2, 0
_080533DC: .4byte gTask_03006240
_080533E0: .4byte 0x000001FF
_080533E4: .4byte 0x000003FF
_080533E8:
	ldrh r0, [r7, #8]
	adds r0, r0, r3
	asrs r0, r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r3, [sp, #8]
	bl OamMalloc
	adds r2, r0, #0
	ldr r0, _08053424 @ =iwram_end
	ldr r0, [r0]
	ldr r3, [sp, #8]
	cmp r0, r2
	beq _0805344A
	ldrh r0, [r4]
	strh r0, [r2]
	ldrh r0, [r4, #2]
	strh r0, [r2, #2]
	ldrh r0, [r4, #2]
	add r0, r8
	strh r0, [r4, #2]
	ldrb r0, [r5]
	cmp r0, #0x60
	bls _08053428
	ldrh r0, [r2]
	adds r0, #8
	strh r0, [r2]
	ldrb r0, [r5]
	subs r0, #0x11
	b _0805342C
	.align 2, 0
_08053424: .4byte iwram_end
_08053428:
	ldrb r0, [r5]
	subs r0, #0x20
_0805342C:
	ldr r1, [r6, #4]
	muls r0, r1, r0
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	ldr r1, _08053458 @ =0x0000F3FF
	mov ip, r1
	mov r1, ip
	ands r0, r1
	strh r0, [r2, #4]
_0805343E:
	adds r5, #1
	adds r3, #1
	movs r1, #0xe
	ldrsh r0, [r7, r1]
	cmp r3, r0
	blt _080533CE
_0805344A:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053458: .4byte 0x0000F3FF

.if 0
.endif
