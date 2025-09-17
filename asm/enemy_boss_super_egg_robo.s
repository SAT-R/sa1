.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80519E8
sub_80519E8: @ 0x080519E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08051B0C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r0, [r7, #8]
	str r0, [sp]
	ldr r0, _08051B10 @ =gExtraBossTaskData
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r1, _08051B14 @ =0x03000018
	adds r6, r4, r1
	ldr r2, _08051B18 @ =0x0300000C
	adds r2, r2, r4
	mov sl, r2
	ldr r5, _08051B1C @ =gSineTable
	ldr r3, [sp]
	adds r3, #0x70
	mov r8, r3
	ldrh r1, [r3]
	lsrs r1, r1, #6
	movs r0, #0x80
	lsls r0, r0, #1
	mov ip, r0
	adds r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r2, [r7, #0x68]
	adds r3, r2, #0
	muls r3, r0, r3
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, [r7, #0x6c]
	mov sb, r1
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	subs r3, r3, r0
	asrs r3, r3, #8
	str r3, [r7, #0x60]
	mov r0, r8
	ldrh r1, [r0]
	lsrs r1, r1, #6
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r2, r0, r2
	add r1, ip
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r2, r2, r0
	asrs r2, r2, #8
	str r2, [r7, #0x64]
	ldr r5, [sp]
	ldr r0, [r5, #0x50]
	adds r3, r3, r0
	str r3, [r7, #0x50]
	ldr r0, [r5, #0x54]
	adds r2, r2, r0
	str r2, [r7, #0x54]
	ldr r0, _08051B20 @ =0x03000076
	adds r1, r4, r0
	mov r2, r8
	ldrh r0, [r2]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r3, _08051B24 @ =0x03000070
	adds r4, r4, r3
	strh r0, [r4]
	ldr r2, [r7, #0x50]
	asrs r2, r2, #8
	ldr r5, _08051B28 @ =gCamera
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	ldr r0, [r7, #0x54]
	asrs r0, r0, #8
	movs r3, #2
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	mov r5, sl
	strh r2, [r5, #6]
	strh r0, [r5, #8]
	ldrh r0, [r4]
	lsrs r0, r0, #6
	strh r0, [r5]
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r2, _08051B2C @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	mov r1, sl
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [sp, #4]
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bls _08051B02
	b _08051C28
_08051B02:
	lsls r0, r0, #2
	ldr r1, _08051B30 @ =_08051B34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08051B0C: .4byte gCurTask
_08051B10: .4byte gExtraBossTaskData
_08051B14: .4byte 0x03000018
_08051B18: .4byte 0x0300000C
_08051B1C: .4byte gSineTable
_08051B20: .4byte 0x03000076
_08051B24: .4byte 0x03000070
_08051B28: .4byte gCamera
_08051B2C: .4byte sa2__gUnknown_030054B8
_08051B30: .4byte _08051B34
_08051B34: @ jump table
	.4byte _08051BCC @ case 0
	.4byte _08051C28 @ case 1
	.4byte _08051B70 @ case 2
	.4byte _08051B70 @ case 3
	.4byte _08051B80 @ case 4
	.4byte _08051B8C @ case 5
	.4byte _08051C34 @ case 6
	.4byte _08051BA4 @ case 7
	.4byte _08051C28 @ case 8
	.4byte _08051C28 @ case 9
	.4byte _08051C28 @ case 10
	.4byte _08051C28 @ case 11
	.4byte _08051C28 @ case 12
	.4byte _08051BDC @ case 13
	.4byte _08051C16 @ case 14
_08051B70:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #2
	movs r1, #0
	bl sub_804CFE0
	b _08051C34
_08051B80:
	adds r0, r7, #0
	adds r0, #0x76
	ldr r1, [sp]
	adds r1, #0x76
	ldrh r1, [r1]
	b _08051C1E
_08051B8C:
	ldr r1, _08051BA0 @ =gUnknown_084AE560
	movs r2, #0
	ldrsh r0, [r7, r2]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08051C34
	b _08051BB6
	.align 2, 0
_08051BA0: .4byte gUnknown_084AE560
_08051BA4:
	ldr r1, _08051BC8 @ =gUnknown_084AE560
	movs r3, #0
	ldrsh r0, [r7, r3]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08051C34
_08051BB6:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xe8
	lsls r1, r1, #8
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_804CFE0
	b _08051C34
	.align 2, 0
_08051BC8: .4byte gUnknown_084AE560
_08051BCC:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #5
	movs r2, #0x80
	bl sub_804CFE0
	b _08051C34
_08051BDC:
	adds r4, r7, #0
	adds r4, #0x76
	movs r5, #0x80
	lsls r5, r5, #7
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_804CFE0
	ldr r0, [sp, #4]
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08051C34
	ldrh r0, [r4]
	cmp r0, r5
	bne _08051C34
	movs r5, #0
	ldrsh r0, [r7, r5]
	movs r1, #1
	lsls r1, r0
	ldr r2, [sp, #4]
	ldr r0, [r2, #0x5c]
	orrs r0, r1
	str r0, [r2, #0x5c]
	b _08051C34
_08051C16:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xe8
	lsls r1, r1, #8
_08051C1E:
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_804CFE0
	b _08051C34
_08051C28:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0
	movs r2, #0x80
	bl sub_804CFE0
_08051C34:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8051C44
sub_8051C44: @ 0x08051C44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08051D64 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r0, _08051D68 @ =gExtraBossTaskData
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _08051D6C @ =0x03000018
	adds r6, r4, r0
	ldr r1, _08051D70 @ =0x0300000C
	adds r1, r1, r4
	mov sb, r1
	ldr r5, _08051D74 @ =gSineTable
	ldr r2, [r7, #8]
	adds r2, #0x70
	mov r8, r2
	ldrh r1, [r2]
	lsrs r1, r1, #6
	movs r3, #0x80
	lsls r3, r3, #1
	mov ip, r3
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r2, [r7, #0x68]
	adds r3, r2, #0
	muls r3, r0, r3
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, [r7, #0x6c]
	mov sl, r1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	subs r3, r3, r0
	asrs r3, r3, #8
	str r3, [r7, #0x60]
	mov r0, r8
	ldrh r1, [r0]
	lsrs r1, r1, #6
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r2, r0, r2
	add r1, ip
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r2, r2, r0
	asrs r2, r2, #8
	str r2, [r7, #0x64]
	ldr r5, [r7, #8]
	ldr r0, [r5, #0x50]
	adds r3, r3, r0
	str r3, [r7, #0x50]
	ldr r0, [r5, #0x54]
	adds r2, r2, r0
	str r2, [r7, #0x54]
	ldr r0, _08051D78 @ =0x03000076
	adds r1, r4, r0
	mov r2, r8
	ldrh r0, [r2]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r3, _08051D7C @ =0x03000070
	adds r4, r4, r3
	strh r0, [r4]
	ldr r2, [r7, #0x50]
	asrs r2, r2, #8
	ldr r5, _08051D80 @ =gCamera
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	ldr r0, [r7, #0x54]
	asrs r0, r0, #8
	movs r3, #2
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	mov r5, sb
	strh r2, [r5, #6]
	strh r0, [r5, #8]
	ldrh r0, [r4]
	lsrs r0, r0, #6
	strh r0, [r5]
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r2, _08051D84 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	mov r1, sb
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [sp]
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _08051E18
	lsls r0, r0, #2
	ldr r1, _08051D88 @ =_08051D8C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08051D64: .4byte gCurTask
_08051D68: .4byte gExtraBossTaskData
_08051D6C: .4byte 0x03000018
_08051D70: .4byte 0x0300000C
_08051D74: .4byte gSineTable
_08051D78: .4byte 0x03000076
_08051D7C: .4byte 0x03000070
_08051D80: .4byte gCamera
_08051D84: .4byte sa2__gUnknown_030054B8
_08051D88: .4byte _08051D8C
_08051D8C: @ jump table
	.4byte _08051DDC @ case 0
	.4byte _08051DE6 @ case 1
	.4byte _08051DC8 @ case 2
	.4byte _08051E18 @ case 3
	.4byte _08051E18 @ case 4
	.4byte _08051E18 @ case 5
	.4byte _08051E18 @ case 6
	.4byte _08051E18 @ case 7
	.4byte _08051DD2 @ case 8
	.4byte _08051DD2 @ case 9
	.4byte _08051E18 @ case 10
	.4byte _08051E18 @ case 11
	.4byte _08051E18 @ case 12
	.4byte _08051DF6 @ case 13
	.4byte _08051E06 @ case 14
_08051DC8:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #2
	b _08051DFE
_08051DD2:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #2
	b _08051DFE
_08051DDC:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #6
	b _08051DEE
_08051DE6:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xe0
	lsls r1, r1, #8
_08051DEE:
	movs r2, #0x80
	bl sub_804CFE0
	b _08051E28
_08051DF6:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #3
_08051DFE:
	movs r1, #0
	bl sub_804CFE0
	b _08051E28
_08051E06:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xc0
	lsls r1, r1, #5
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_804CFE0
	b _08051E28
_08051E18:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #6
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_804CFE0
_08051E28:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8051E38
sub_8051E38: @ 0x08051E38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08051F58 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r0, _08051F5C @ =gExtraBossTaskData
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _08051F60 @ =0x03000018
	adds r6, r4, r0
	ldr r1, _08051F64 @ =0x0300000C
	adds r1, r1, r4
	mov sb, r1
	ldr r5, _08051F68 @ =gSineTable
	ldr r2, [r7, #8]
	adds r2, #0x70
	mov r8, r2
	ldrh r1, [r2]
	lsrs r1, r1, #6
	movs r3, #0x80
	lsls r3, r3, #1
	mov ip, r3
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r2, [r7, #0x68]
	adds r3, r2, #0
	muls r3, r0, r3
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, [r7, #0x6c]
	mov sl, r1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	subs r3, r3, r0
	asrs r3, r3, #8
	str r3, [r7, #0x60]
	mov r0, r8
	ldrh r1, [r0]
	lsrs r1, r1, #6
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r2, r0, r2
	add r1, ip
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r2, r2, r0
	asrs r2, r2, #8
	str r2, [r7, #0x64]
	ldr r5, [r7, #8]
	ldr r0, [r5, #0x50]
	adds r3, r3, r0
	str r3, [r7, #0x50]
	ldr r0, [r5, #0x54]
	adds r2, r2, r0
	str r2, [r7, #0x54]
	ldr r0, _08051F6C @ =0x03000076
	adds r1, r4, r0
	mov r2, r8
	ldrh r0, [r2]
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r3, _08051F70 @ =0x03000070
	adds r4, r4, r3
	strh r0, [r4]
	ldr r2, [r7, #0x50]
	asrs r2, r2, #8
	ldr r5, _08051F74 @ =gCamera
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	ldr r0, [r7, #0x54]
	asrs r0, r0, #8
	movs r3, #2
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	mov r5, sb
	strh r2, [r5, #6]
	strh r0, [r5, #8]
	ldrh r0, [r4]
	lsrs r0, r0, #6
	strh r0, [r5]
	ldr r0, [r6, #0x10]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	ldr r2, _08051F78 @ =sa2__gUnknown_030054B8
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x20
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r6, #0x10]
	orrs r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	mov r1, sb
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [sp]
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _0805200C
	lsls r0, r0, #2
	ldr r1, _08051F7C @ =_08051F80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08051F58: .4byte gCurTask
_08051F5C: .4byte gExtraBossTaskData
_08051F60: .4byte 0x03000018
_08051F64: .4byte 0x0300000C
_08051F68: .4byte gSineTable
_08051F6C: .4byte 0x03000076
_08051F70: .4byte 0x03000070
_08051F74: .4byte gCamera
_08051F78: .4byte sa2__gUnknown_030054B8
_08051F7C: .4byte _08051F80
_08051F80: @ jump table
	.4byte _08051FD8 @ case 0
	.4byte _0805200C @ case 1
	.4byte _0805201A @ case 2
	.4byte _0805201A @ case 3
	.4byte _08051FBC @ case 4
	.4byte _08051FBC @ case 5
	.4byte _08051FBC @ case 6
	.4byte _08051FBC @ case 7
	.4byte _0805200C @ case 8
	.4byte _0805200C @ case 9
	.4byte _0805200C @ case 10
	.4byte _08051FD8 @ case 11
	.4byte _08051FD8 @ case 12
	.4byte _08051FEA @ case 13
	.4byte _08051FFC @ case 14
_08051FBC:
	adds r0, r7, #0
	adds r0, #0x70
	ldrh r1, [r0]
	ldr r0, _08051FD4 @ =0x00000FFF
	cmp r1, r0
	bhi _08051FFC
	adds r0, r7, #0
	adds r0, #0x76
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	b _08051FE0
	.align 2, 0
_08051FD4: .4byte 0x00000FFF
_08051FD8:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xe0
	lsls r1, r1, #8
_08051FE0:
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_804CFE0
	b _0805201A
_08051FEA:
	adds r0, r7, #0
	adds r0, #0x76
	movs r1, #0xf8
	lsls r1, r1, #8
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_804CFE0
	b _0805201A
_08051FFC:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_804CFE0
	b _0805201A
_0805200C:
	adds r0, r7, #0
	adds r0, #0x76
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_804CFE0
_0805201A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805202C
sub_805202C: @ 0x0805202C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _080520A4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r4, r3
	ldr r2, [r3, #8]
	ldr r0, _080520A8 @ =0x03000018
	adds r5, r4, r0
	ldr r6, _080520AC @ =gCamera
	ldr r0, [r3, #0x60]
	ldr r1, [r2, #0x50]
	adds r0, r0, r1
	str r0, [r3, #0x50]
	ldr r0, [r3, #0x64]
	ldr r1, [r2, #0x54]
	adds r0, r0, r1
	str r0, [r3, #0x54]
	ldr r1, _080520B0 @ =0x03000076
	adds r1, r1, r4
	mov r8, r1
	adds r2, #0x70
	ldrh r0, [r2]
	ldrh r2, [r1]
	adds r0, r0, r2
	ldr r1, _080520B4 @ =0x03000070
	adds r4, r4, r1
	strh r0, [r4]
	ldr r2, [r3, #0x50]
	asrs r2, r2, #8
	movs r1, #0
	ldrsh r0, [r6, r1]
	subs r2, r2, r0
	ldr r0, [r3, #0x54]
	asrs r0, r0, #8
	movs r3, #2
	ldrsh r1, [r6, r3]
	subs r0, r0, r1
	strh r2, [r5, #0x16]
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	movs r2, #0x80
	lsls r2, r2, #1
	mov r0, r8
	movs r1, #0
	bl sub_804CFE0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080520A4: .4byte gCurTask
_080520A8: .4byte 0x03000018
_080520AC: .4byte gCamera
_080520B0: .4byte 0x03000076
_080520B4: .4byte 0x03000070

	thumb_func_start sub_80520B8
sub_80520B8: @ 0x080520B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r2, #0
	ldr r0, _08052138 @ =gStageTime
	ldr r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080520E0
	adds r0, r5, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	bne _08052130
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _08052130
_080520E0:
	ldr r4, _0805213C @ =gPseudoRandom
	ldr r0, [r4]
	ldr r3, _08052140 @ =0x00196225
	muls r0, r3, r0
	ldr r1, _08052144 @ =0x3C6EF35F
	adds r0, r0, r1
	lsls r2, r0, #0xa
	lsrs r2, r2, #0x12
	ldr r6, _08052148 @ =0xFFFFE000
	adds r2, r2, r6
	muls r3, r0, r3
	adds r3, r3, r1
	str r3, [r4]
	lsls r3, r3, #9
	lsrs r3, r3, #0x11
	ldr r0, _0805214C @ =0xFFFFC000
	adds r3, r3, r0
	ldr r1, [r5, #0x60]
	lsls r1, r1, #8
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r2, [r5, #0x64]
	lsls r2, r2, #8
	ldr r1, [r5, #0x48]
	adds r1, r1, r2
	adds r1, r1, r3
	bl sub_8017540
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #0x10]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r1, #0x1a]
	movs r2, #1
_08052130:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052138: .4byte gStageTime
_0805213C: .4byte gPseudoRandom
_08052140: .4byte 0x00196225
_08052144: .4byte 0x3C6EF35F
_08052148: .4byte 0xFFFFE000
_0805214C: .4byte 0xFFFFC000

	thumb_func_start sub_8052150
sub_8052150: @ 0x08052150
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r2, r2, #0x10
	ldr r4, _08052238 @ =gSineTable
	mov r8, r4
	adds r3, #0x70
	ldrh r4, [r3]
	lsrs r4, r4, #6
	movs r5, #0x80
	lsls r5, r5, #1
	mov sb, r5
	adds r3, r4, r5
	lsls r3, r3, #1
	add r3, r8
	ldrh r5, [r3]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x16
	lsls r4, r4, #1
	add r4, r8
	ldrh r6, [r4]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x16
	lsls r4, r5, #4
	subs r4, r4, r5
	lsls r4, r4, #8
	lsls r3, r6, #0xc
	subs r3, r3, r4
	asrs r3, r3, #0x10
	adds r7, r0, r3
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #8
	lsls r5, r5, #0xc
	rsbs r5, r5, #0
	subs r5, r5, r0
	asrs r5, r5, #0x10
	adds r5, r1, r5
	adds r6, r5, #3
	movs r0, #0
	mov sl, r0
	movs r1, #0
	str r1, [sp, #8]
	lsrs r2, r2, #0x16
	lsls r0, r2, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #8
	add r2, sb
	lsls r2, r2, #1
	add r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	bl Div
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r4, #0
	bl Div
	adds r2, r0, #0
	adds r0, r7, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	subs r1, r5, r0
	adds r3, r1, #3
	mov r8, r3
	cmp r7, #0xef
	ble _080521F8
	movs r0, #0xf0
	subs r0, r0, r7
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r5, r5, r0
	adds r6, r6, r0
	movs r7, #0xef
_080521F8:
	cmp r5, #0x9e
	bgt _08052282
	mov sb, r7
	adds r4, r7, #0
	cmp r5, #0
	bge _0805221E
	adds r0, r5, #0
	muls r0, r2, r0
	asrs r0, r0, #8
	subs r4, r7, r0
	movs r5, #0
	cmp r6, #0
	bge _0805221E
	adds r0, r6, #0
	muls r0, r2, r0
	asrs r0, r0, #8
	subs r0, r7, r0
	mov sb, r0
	movs r6, #0
_0805221E:
	adds r0, r5, #0
	cmp r0, #0x9f
	ble _08052226
	movs r0, #0x9f
_08052226:
	adds r5, r0, #0
	cmp r6, #0
	blt _0805223C
	adds r0, r6, #0
	cmp r0, #0x9f
	ble _0805223E
	movs r0, #0x9f
	b _0805223E
	.align 2, 0
_08052238: .4byte gSineTable
_0805223C:
	movs r0, #0
_0805223E:
	adds r6, r0, #0
	mov r0, r8
	cmp r0, #0x9f
	ble _0805226C
	movs r3, #0xa0
	subs r0, r3, r0
	mov r8, r0
	mov r0, r8
	muls r0, r2, r0
	asrs r0, r0, #8
	mov r8, r0
	ldr r0, [sp, #8]
	add r0, r8
	str r0, [sp, #8]
	movs r0, #0x9f
	mov r8, r0
	cmp r1, #0x9f
	ble _0805226C
	subs r0, r3, r1
	muls r0, r2, r0
	asrs r0, r0, #8
	add sl, r0
	movs r1, #0x9f
_0805226C:
	mov r3, sl
	cmp r3, #0xee
	bgt _08052282
	cmp r5, #0x9e
	bgt _08052282
	cmp r7, sl
	beq _08052282
	cmp r5, r1
	beq _08052282
	cmp r6, r8
	bne _08052286
_08052282:
	movs r0, #0
	b _0805231A
_08052286:
	mov r0, sl
	cmp r0, #0
	blt _08052294
	cmp r0, #0xef
	ble _08052296
	movs r0, #0xef
	b _08052296
_08052294:
	movs r0, #0
_08052296:
	mov sl, r0
	ldr r3, [sp, #8]
	cmp r3, #0
	blt _080522A8
	adds r2, r3, #0
	cmp r2, #0xef
	ble _080522AA
	movs r2, #0xef
	b _080522AA
_080522A8:
	movs r2, #0
_080522AA:
	mov r0, sp
	strb r4, [r0]
	strb r5, [r0, #1]
	mov r4, sl
	strb r4, [r0, #2]
	strb r1, [r0, #3]
	mov r1, sb
	strb r1, [r0, #4]
	strb r6, [r0, #5]
	strb r2, [r0, #6]
	mov r3, r8
	strb r3, [r0, #7]
	adds r3, r7, #1
	movs r0, #0
	mov r1, sp
	movs r2, #0
	bl sa2__sub_8006DB4
	cmp r5, #0
	blt _080522DC
	adds r4, r5, #0
	cmp r4, #0x9f
	ble _080522DE
	movs r4, #0x9f
	b _080522DE
_080522DC:
	movs r4, #0
_080522DE:
	mov r5, r8
	cmp r5, #0
	blt _080522EE
	mov r3, r8
	cmp r3, #0x9f
	ble _080522F0
	movs r3, #0x9f
	b _080522F0
_080522EE:
	movs r3, #0
_080522F0:
	ldr r2, _0805232C @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08052330 @ =gWinRegs
	lsls r0, r4, #8
	orrs r0, r3
	strh r0, [r1, #4]
	ldr r0, _08052334 @ =0x00001F1F
	strh r0, [r1, #0xa]
	ldr r0, _08052338 @ =0x00003F3F
	strh r0, [r1, #8]
	ldr r1, _0805233C @ =gBldRegs
	adds r0, #0x80
	strh r0, [r1]
	movs r0, #0xe
	strh r0, [r1, #4]
	movs r0, #1
_0805231A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805232C: .4byte gDispCnt
_08052330: .4byte gWinRegs
_08052334: .4byte 0x00001F1F
_08052338: .4byte 0x00003F3F
_0805233C: .4byte gBldRegs

@ Moon Zone Boss / Extra Boss
	thumb_func_start CreateEntity_SuperEggRobot
CreateEntity_SuperEggRobot: @ 0x08052340
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	ldr r0, _0805236C @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #1
	bls _08052370
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	b _080523AC
	.align 2, 0
_0805236C: .4byte gGameMode
_08052370:
	ldr r0, _080523B8 @ =Task_SuperEggRobotInit
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x70
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	strh r7, [r4, #4]
	strh r6, [r4, #6]
	str r5, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #8]
	mov r0, r8
	strb r0, [r4, #9]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80504DC
	ldr r0, _080523BC @ =gExtraBossTaskData
	str r4, [r0]
_080523AC:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080523B8: .4byte Task_SuperEggRobotInit
_080523BC: .4byte gExtraBossTaskData

	thumb_func_start sub_80523C0
sub_80523C0: @ 0x080523C0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80523D4
sub_80523D4: @ 0x080523D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8050194
	cmp r0, #3
	bgt _080523EA
	lsls r1, r0, #8
	adds r0, r4, #0
	adds r0, #0x4e
	strh r1, [r0]
	b _080523F2
_080523EA:
	ldr r0, [r4, #0x58]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x58]
_080523F2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80523F8
sub_80523F8: @ 0x080523F8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8050194
	cmp r0, #0
	bge _0805241E
	lsls r1, r0, #8
	ldr r0, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x58]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x58]
	adds r1, r4, #0
	adds r1, #0x4e
	movs r0, #0
	strh r0, [r1]
_0805241E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8052424
sub_8052424: @ 0x08052424
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x4c
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r3, #0x44]
	adds r0, r0, r1
	str r0, [r3, #0x44]
	movs r1, #0x4e
	adds r1, r1, r3
	mov ip, r1
	movs r4, #0
	ldrsh r1, [r1, r4]
	ldr r0, [r3, #0x48]
	adds r0, r0, r1
	str r0, [r3, #0x48]
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #0x52
	ldrh r0, [r0]
	mov r2, ip
	ldrh r2, [r2]
	adds r0, r0, r2
	mov r4, ip
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8052468
sub_8052468: @ 0x08052468
	adds r0, #0x4e
	ldrh r1, [r0]
	adds r1, #0x10
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_8052474
sub_8052474: @ 0x08052474
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _080524D4 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _080524D8 @ =0x00000299
	orrs r0, r1
	ldr r1, _080524DC @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	movs r0, #0x40
	bl VramMalloc
	str r0, [sp, #4]
	ldr r1, _080524E0 @ =sub_8050A88
	ldr r2, _080524E4 @ =TaskDestructor_SomeTaskManager_60_Common
	mov r0, sp
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	ldr r1, _080524E8 @ =0x03000072
	adds r2, r2, r1
	ldr r1, _080524EC @ =0x0000FFC0
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080524D4: .4byte 0xFFFF0000
_080524D8: .4byte 0x00000299
_080524DC: .4byte 0xFF00FFFF
_080524E0: .4byte sub_8050A88
_080524E4: .4byte TaskDestructor_SomeTaskManager_60_Common
_080524E8: .4byte 0x03000072
_080524EC: .4byte 0x0000FFC0

	thumb_func_start sub_80524F0
sub_80524F0: @ 0x080524F0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _0805255C @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _08052560 @ =0x000002A2
	orrs r0, r1
	ldr r1, _08052564 @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _08052568 @ =0x06012E00
	str r0, [sp, #4]
	ldr r1, _0805256C @ =sub_8050FB4
	mov r0, sp
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	ldr r1, _08052570 @ =0x03000076
	adds r3, r2, r1
	movs r1, #0
	strh r1, [r3]
	ldr r1, _08052574 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0x80
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x81
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805255C: .4byte 0xFFFF0000
_08052560: .4byte 0x000002A2
_08052564: .4byte 0xFF00FFFF
_08052568: .4byte 0x06012E00
_0805256C: .4byte sub_8050FB4
_08052570: .4byte 0x03000076
_08052574: .4byte 0x03000072

	thumb_func_start sub_8052578
sub_8052578: @ 0x08052578
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _080525CC @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _080525D0 @ =0x000002A2
	orrs r0, r1
	ldr r1, _080525D4 @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _080525D8 @ =0x06012E00
	str r0, [sp, #4]
	ldr r1, _080525DC @ =sub_80518E8
	mov r0, sp
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080525CC: .4byte 0xFFFF0000
_080525D0: .4byte 0x000002A2
_080525D4: .4byte 0xFF00FFFF
_080525D8: .4byte 0x06012E00
_080525DC: .4byte sub_80518E8

	thumb_func_start sub_80525E0
sub_80525E0: @ 0x080525E0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _08052644 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _08052648 @ =0x000002A2
	orrs r0, r1
	ldr r1, _0805264C @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _08052650 @ =0x06012E00
	str r0, [sp, #4]
	ldr r1, _08052654 @ =sub_8051344
	mov r0, sp
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	ldr r1, _08052658 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0x80
	strh r1, [r2]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x81
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	movs r1, #0xa0
	lsls r1, r1, #1
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052644: .4byte 0xFFFF0000
_08052648: .4byte 0x000002A2
_0805264C: .4byte 0xFF00FFFF
_08052650: .4byte 0x06012E00
_08052654: .4byte sub_8051344
_08052658: .4byte 0x03000072

	thumb_func_start sub_805265C
sub_805265C: @ 0x0805265C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _080526B0 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _080526B4 @ =0x000002A1
	orrs r0, r1
	ldr r1, _080526B8 @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _080526BC @ =0x06012600
	str r0, [sp, #4]
	ldr r1, _080526C0 @ =sub_8051604
	mov r0, sp
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080526B0: .4byte 0xFFFF0000
_080526B4: .4byte 0x000002A1
_080526B8: .4byte 0xFF00FFFF
_080526BC: .4byte 0x06012600
_080526C0: .4byte sub_8051604

	thumb_func_start sub_80526C4
sub_80526C4: @ 0x080526C4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r0, r3, #0
	ldr r4, [sp, #0x14]
	ldr r1, _08052714 @ =sub_80519E8
	ldr r2, _08052718 @ =TaskDestructor_SomeTaskManager_60_Common
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	ldr r1, _0805271C @ =0x03000076
	adds r3, r2, r1
	movs r1, #0
	strh r1, [r3]
	ldr r1, _08052720 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052714: .4byte sub_80519E8
_08052718: .4byte TaskDestructor_SomeTaskManager_60_Common
_0805271C: .4byte 0x03000076
_08052720: .4byte 0x03000072

	thumb_func_start sub_8052724
sub_8052724: @ 0x08052724
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r0, r3, #0
	ldr r4, [sp, #0x14]
	ldr r1, _08052770 @ =sub_805202C
	ldr r2, _08052774 @ =TaskDestructor_SomeTaskManager_60_Common
	bl CreateSomeTaskManager_7C_Task
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r2, r8
	str r2, [r0, #0x6c]
	ldr r3, _08052778 @ =0x03000076
	adds r2, r1, r3
	movs r3, #0
	strh r3, [r2]
	ldr r2, _0805277C @ =0x03000072
	adds r1, r1, r2
	strh r3, [r1]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052770: .4byte sub_805202C
_08052774: .4byte TaskDestructor_SomeTaskManager_60_Common
_08052778: .4byte 0x03000076
_0805277C: .4byte 0x03000072

	thumb_func_start sub_8052780
sub_8052780: @ 0x08052780
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r0, r3, #0
	ldr r4, [sp, #0x14]
	ldr r1, _080527CC @ =sub_8051C44
	ldr r2, _080527D0 @ =TaskDestructor_SomeTaskManager_60_Common
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	ldr r1, _080527D4 @ =0x03000076
	adds r3, r2, r1
	movs r1, #0
	strh r1, [r3]
	ldr r1, _080527D8 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0x80
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080527CC: .4byte sub_8051C44
_080527D0: .4byte TaskDestructor_SomeTaskManager_60_Common
_080527D4: .4byte 0x03000076
_080527D8: .4byte 0x03000072

	thumb_func_start sub_80527DC
sub_80527DC: @ 0x080527DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r0, r3, #0
	ldr r4, [sp, #0x14]
	ldr r1, _08052828 @ =sub_8051E38
	ldr r2, _0805282C @ =TaskDestructor_SomeTaskManager_60_Common
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x68]
	mov r1, r8
	str r1, [r0, #0x6c]
	ldr r1, _08052830 @ =0x03000076
	adds r3, r2, r1
	movs r1, #0
	strh r1, [r3]
	ldr r1, _08052834 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0x80
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052828: .4byte sub_8051E38
_0805282C: .4byte TaskDestructor_SomeTaskManager_60_Common
_08052830: .4byte 0x03000076
_08052834: .4byte 0x03000072

	thumb_func_start sub_8052838
sub_8052838: @ 0x08052838
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, _08052894 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	ldr r1, _08052898 @ =0x0000029A
	orrs r0, r1
	ldr r1, _0805289C @ =0xFF00FFFF
	ands r0, r1
	str r0, [sp]
	ldr r0, _080528A0 @ =0x06004040
	str r0, [sp, #4]
	ldr r1, _080528A4 @ =sub_8050888
	mov r0, sp
	movs r2, #0
	bl CreateSomeTaskManager_7C_Task
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r5, [r0, #8]
	str r6, [r0, #0x60]
	mov r1, r8
	str r1, [r0, #0x64]
	ldr r1, _080528A8 @ =0x03000072
	adds r2, r2, r1
	movs r1, #0
	strh r1, [r2]
	lsls r4, r4, #6
	strh r4, [r0, #0x32]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #0x28]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08052894: .4byte 0xFFFF0000
_08052898: .4byte 0x0000029A
_0805289C: .4byte 0xFF00FFFF
_080528A0: .4byte 0x06004040
_080528A4: .4byte sub_8050888
_080528A8: .4byte 0x03000072
