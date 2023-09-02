.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start MultiSioInit
MultiSioInit: @ 0x08006C60
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r3, _08006D20 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08006D24 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08006D28 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r0, _08006D2C @ =0x04000134
	strh r4, [r0]
	subs r2, #0xd8
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2]
	ldrh r0, [r2]
	ldr r3, _08006D30 @ =0x00004003
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r4, _08006D34 @ =gMultiSioArea
	ldr r2, _08006D38 @ =0x0500007A
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08006D3C @ =MultiSioRecvBufChange
	ldr r1, _08006D40 @ =gMultiSioRecvFuncBuf
	ldr r2, _08006D44 @ =0x04000010
	bl CpuSet
	ldr r0, _08006D48 @ =MultiSioIntr
	ldr r1, _08006D4C @ =gMultiSioIntrFuncBuf
	ldr r2, _08006D50 @ =0x04000048
	bl CpuSet
	strb r5, [r4, #2]
	movs r0, #0xd
	str r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x60
	str r0, [r4, #0x28]
	adds r0, #0x1c
	str r0, [r4, #0x2c]
	movs r3, #0
	adds r2, r4, #0
	movs r0, #0x30
	adds r0, r0, r2
	mov ip, r0
	adds r6, r2, #0
	adds r6, #0xd0
	adds r7, r2, #0
	adds r7, #0x40
	adds r5, r2, #0
	adds r5, #0x98
	movs r4, #0
_08006CDC:
	lsls r0, r3, #2
	mov r1, ip
	adds r1, #4
	mov ip, r1
	subs r1, #4
	stm r1!, {r5}
	adds r1, r2, #0
	adds r1, #0xb4
	adds r1, r4, r1
	stm r7!, {r1}
	adds r1, r2, #0
	adds r1, #0x50
	adds r0, r0, r1
	str r6, [r0]
	adds r6, #0x54
	adds r5, #0x54
	adds r4, #0x54
	adds r3, #1
	cmp r3, #3
	ble _08006CDC
	ldr r3, _08006D20 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08006D24 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006D20: .4byte 0x04000208
_08006D24: .4byte 0x04000200
_08006D28: .4byte 0x0000FF3F
_08006D2C: .4byte 0x04000134
_08006D30: .4byte 0x00004003
_08006D34: .4byte gMultiSioArea
_08006D38: .4byte 0x0500007A
_08006D3C: .4byte MultiSioRecvBufChange
_08006D40: .4byte gMultiSioRecvFuncBuf
_08006D44: .4byte 0x04000010
_08006D48: .4byte MultiSioIntr
_08006D4C: .4byte gMultiSioIntrFuncBuf
_08006D50: .4byte 0x04000048

	thumb_func_start MultiSioMain
MultiSioMain: @ 0x08006D54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov ip, r1
	mov r8, r2
	ldr r5, _08006D74 @ =0x04000128
	ldr r6, [r5]
	ldr r7, _08006D78 @ =gMultiSioArea
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _08006D7C
	cmp r0, #1
	beq _08006DE4
	b _08006DF2
	.align 2, 0
_08006D74: .4byte 0x04000128
_08006D78: .4byte gMultiSioArea
_08006D7C:
	movs r1, #0x30
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08006DDE
	movs r0, #0x88
	adds r4, r6, #0
	ands r4, r0
	cmp r4, #8
	bne _08006DF2
	movs r1, #4
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08006DDE
	ldr r0, [r7, #0x14]
	cmp r0, #0xd
	bne _08006DDE
	ldr r3, _08006E24 @ =0x04000208
	strh r1, [r3]
	ldr r2, _08006E28 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08006E2C @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldrb r1, [r5, #1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #1]
	ldr r1, _08006E30 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #0xf6
	ldr r0, _08006E34 @ =0x0000BBBC
	str r0, [r1]
	strb r4, [r7]
	ldrb r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
_08006DDE:
	ldr r1, _08006E38 @ =gMultiSioArea
	movs r0, #1
	strb r0, [r1, #1]
_08006DE4:
	mov r0, ip
	bl MultiSioRecvDataCheck
	mov r0, sb
	mov r1, r8
	bl MultiSioSendDataSet
_08006DF2:
	ldr r1, _08006E38 @ =gMultiSioArea
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrb r3, [r1, #3]
	ldrb r2, [r1, #8]
	movs r0, #0x10
	ands r0, r2
	orrs r3, r0
	movs r0, #0x20
	ands r0, r2
	orrs r3, r0
	movs r0, #0x40
	ands r0, r2
	orrs r3, r0
	ldrb r0, [r1, #2]
	lsls r2, r0, #8
	ldrb r0, [r1]
	cmp r0, #8
	bne _08006E3C
	movs r0, #0x80
	orrs r0, r2
	orrs r0, r3
	b _08006E40
	.align 2, 0
_08006E24: .4byte 0x04000208
_08006E28: .4byte 0x04000200
_08006E2C: .4byte 0x0000FF7F
_08006E30: .4byte 0x04000202
_08006E34: .4byte 0x0000BBBC
_08006E38: .4byte gMultiSioArea
_08006E3C:
	adds r0, r3, #0
	orrs r0, r2
_08006E40:
	adds r2, r0, #0
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _08006E4E
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r2, r0
_08006E4E:
	adds r1, r2, #0
	lsls r0, r6, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _08006E5E
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r1, r0
_08006E5E:
	adds r0, r1, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start MultiSioSendDataSet
MultiSioSendDataSet: @ 0x08006E6C
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r5, _08006F2C @ =gMultiSioArea
	ldr r4, [r5, #0x28]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r4, #1]
	ldr r6, [r5, #0x28]
	ldr r1, _08006F30 @ =gSio32MultiLoadArea
	ldrb r1, [r1, #3]
	movs r3, #1
	adds r2, r3, #0
	ands r2, r1
	lsls r2, r2, #5
	ldrb r4, [r6, #1]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r4
	orrs r1, r2
	strb r1, [r6, #1]
	ldr r4, [r5, #0x28]
	ldrb r1, [r5, #8]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	ands r3, r1
	lsls r3, r3, #6
	ldrb r2, [r4, #1]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4, #1]
	ldr r2, [r5, #0x28]
	ldrb r1, [r5, #0xb]
	strb r1, [r2]
	ldr r4, [r5, #0x28]
	ldrb r2, [r5, #2]
	ldrb r1, [r5, #3]
	eors r2, r1
	movs r1, #0xf
	ands r2, r1
	ldrb r3, [r4, #1]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4, #1]
	ldr r1, [r5, #0x28]
	strh r7, [r1, #2]
	ldr r1, [r5, #0x28]
	adds r1, #4
	ldr r2, _08006F34 @ =0x04000005
	bl CpuSet
	movs r2, #0
	ldr r1, [r5, #0x28]
_08006EE8:
	ldrh r0, [r1]
	adds r7, r7, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #0xb
	bls _08006EE8
	adds r2, r5, #0
	ldr r1, [r2, #0x28]
	mvns r0, r7
	strh r0, [r1, #2]
	ldrb r0, [r2]
	cmp r0, #0
	beq _08006F08
	ldr r1, _08006F38 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_08006F08:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x14]
	ldrb r0, [r5]
	cmp r0, #0
	beq _08006F24
	ldrb r1, [r5, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08006F24
	ldr r1, _08006F38 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08006F24:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006F2C: .4byte gMultiSioArea
_08006F30: .4byte gSio32MultiLoadArea
_08006F34: .4byte 0x04000005
_08006F38: .4byte 0x0400010E

	thumb_func_start MultiSioRecvDataCheck
MultiSioRecvDataCheck: @ 0x08006F3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, _08007048 @ =gMultiSioRecvFuncBuf
	movs r4, #0
	str r4, [sp]
	bl _call_via_r0
	str r0, [sp, #4]
	ldr r0, _0800704C @ =gMultiSioArea
	strb r4, [r0, #3]
	add r1, sp, #4
	mov sl, r1
	add r2, sp, #8
	mov sb, r2
	adds r5, r0, #0
	adds r6, r5, #0
	movs r7, #0x50
	adds r7, r7, r6
	mov r8, r7
_08006F6C:
	movs r3, #0
	movs r2, #0
	lsls r5, r4, #2
	adds r0, r4, #1
	str r0, [sp, #0x10]
	mov r1, r8
	adds r0, r5, r1
	ldr r1, [r0]
_08006F7C:
	ldrh r0, [r1]
	adds r3, r3, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #0xb
	bls _08006F7C
	mov r2, sl
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08006FDE
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r7, #1
	rsbs r7, r7, #0
	cmp r0, r7
	bne _08006FDE
	movs r0, #1
	lsls r0, r4
	ldrb r1, [r6, #3]
	orrs r0, r1
	strb r0, [r6, #3]
	ldrb r2, [r6, #8]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	mov r0, r8
	adds r3, r5, r0
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r4
	orrs r0, r1
	movs r1, #0xf
	ands r0, r1
	subs r7, #0xf
	adds r1, r7, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r6, #8]
	ldr r0, [r3]
	adds r0, #4
	adds r1, r5, r4
	lsls r1, r1, #2
	ldr r2, [sp, #0xc]
	adds r1, r2, r1
	ldr r2, _08007050 @ =0x04000005
	bl CpuSet
_08006FDE:
	movs r0, #0
	str r0, [sp, #8]
	mov r7, r8
	adds r0, r5, r7
	ldr r1, [r0]
	adds r1, #4
	mov r0, sb
	ldr r2, _08007054 @ =0x05000005
	bl CpuSet
	ldr r4, [sp, #0x10]
	cmp r4, #3
	ble _08006F6C
	ldr r0, _0800704C @ =gMultiSioArea
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #3]
	adds r3, r1, #0
	orrs r3, r2
	strb r3, [r0, #2]
	movs r1, #1
	ands r1, r2
	adds r5, r0, #0
	cmp r1, #0
	beq _08007094
	ldrb r0, [r5]
	cmp r0, #8
	bne _08007058
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0800702C
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	bne _0800702C
	ldrb r0, [r5, #8]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5, #8]
_0800702C:
	ldrb r4, [r5, #8]
	lsls r2, r4, #0x1c
	lsrs r2, r2, #0x1c
	movs r0, #0xe
	ldrb r3, [r5, #2]
	adds r1, r0, #0
	ands r1, r2
	ands r0, r3
	cmp r1, r0
	bne _08007078
	movs r0, #0x40
	orrs r0, r4
	b _08007076
	.align 2, 0
_08007048: .4byte gMultiSioRecvFuncBuf
_0800704C: .4byte gMultiSioArea
_08007050: .4byte 0x04000005
_08007054: .4byte 0x05000005
_08007058:
	ldrb r2, [r5, #8]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
_08007076:
	strb r0, [r5, #8]
_08007078:
	ldrb r2, [r5, #8]
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1f
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	orrs r0, r1
	lsls r0, r0, #5
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #8]
_08007094:
	ldrb r0, [r5, #3]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start MultiSioStart
MultiSioStart: @ 0x080070A8
	ldr r2, _080070BC @ =gMultiSioArea
	ldrb r0, [r2]
	cmp r0, #0
	beq _080070B8
	ldrb r0, [r2, #8]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #8]
_080070B8:
	bx lr
	.align 2, 0
_080070BC: .4byte gMultiSioArea

	thumb_func_start MultiSioStop
MultiSioStop: @ 0x080070C0
	ldr r3, _080070F4 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _080070F8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080070FC @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08007100 @ =0x04000128
	ldr r2, _08007104 @ =0x00002003
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x1c
	ldr r0, _08007108 @ =0x0000BBBC
	str r0, [r1]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1]
	ldr r2, _0800710C @ =gMultiSioArea
	ldrb r1, [r2, #8]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #8]
	bx lr
	.align 2, 0
_080070F4: .4byte 0x04000208
_080070F8: .4byte 0x04000200
_080070FC: .4byte 0x0000FF3F
_08007100: .4byte 0x04000128
_08007104: .4byte 0x00002003
_08007108: .4byte 0x0000BBBC
_0800710C: .4byte gMultiSioArea
