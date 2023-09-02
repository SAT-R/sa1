.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Sio32MultiLoadMain
Sio32MultiLoadMain: @ 0x080079E8
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r0, _08007A04 @ =gSio32MultiLoadArea
	ldrb r1, [r0, #1]
	adds r5, r0, #0
	cmp r1, #4
	bls _080079F8
	b _08007BBE
_080079F8:
	lsls r0, r1, #2
	ldr r1, _08007A08 @ =_08007A0C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08007A04: .4byte gSio32MultiLoadArea
_08007A08: .4byte _08007A0C
_08007A0C: @ jump table
	.4byte _08007A20 @ case 0
	.4byte _08007A38 @ case 1
	.4byte _08007AD4 @ case 2
	.4byte _08007B46 @ case 3
	.4byte _08007BB4 @ case 4
_08007A20:
	ldr r0, [r5]
	ldr r1, _08007A34 @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _08007A2C
	b _08007BBE
_08007A2C:
	movs r0, #1
	strb r0, [r5, #1]
	b _08007BBE
	.align 2, 0
_08007A34: .4byte 0x00FF00FF
_08007A38:
	ldrb r0, [r5]
	cmp r0, #1
	bne _08007A48
	ldrb r0, [r5, #2]
	cmp r0, #5
	bhi _08007A46
	b _08007BBE
_08007A46:
	b _08007A52
_08007A48:
	ldr r1, _08007A88 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_08007A52:
	ldr r0, _08007A8C @ =0x04000120
	movs r6, #0
	str r6, [r0]
	ldr r1, _08007A90 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldrb r4, [r5]
	cmp r4, #1
	bne _08007AA0
	ldr r2, _08007A88 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08007A94 @ =0x0400010C
	ldr r0, _08007A98 @ =0x00C0F318
	str r0, [r1]
	ldr r3, _08007A9C @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	b _08007AC0
	.align 2, 0
_08007A88: .4byte 0x04000128
_08007A8C: .4byte 0x04000120
_08007A90: .4byte 0x04000202
_08007A94: .4byte 0x0400010C
_08007A98: .4byte 0x00C0F318
_08007A9C: .4byte 0x04000208
_08007AA0:
	ldr r2, _08007ACC @ =0x04000128
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08007AD0 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_08007AC0:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _08007BBE
	.align 2, 0
_08007ACC: .4byte 0x04000128
_08007AD0: .4byte 0x04000208
_08007AD4:
	ldr r6, [r5, #8]
	adds r4, r6, #0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08007AE4
	adds r4, r0, #0
	b _08007AEA
_08007AE4:
	cmp r6, #0
	bge _08007AEA
	movs r4, #0
_08007AEA:
	cmp r2, #0
	beq _08007AF0
	str r4, [r2]
_08007AF0:
	ldrb r0, [r5]
	cmp r0, #1
	beq _08007B32
	ldr r0, [r5, #0x14]
	cmp r0, r4
	bge _08007B16
	adds r3, r5, #0
	ldr r7, [r5, #4]
_08007B00:
	ldr r2, [r3, #0x14]
	lsls r0, r2, #2
	adds r0, r0, r7
	ldr r1, [r3, #0x10]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r3, #0x10]
	adds r2, #1
	str r2, [r3, #0x14]
	cmp r2, r4
	blt _08007B00
_08007B16:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08007B3A
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08007B32
	movs r0, #1
	strb r0, [r5, #3]
_08007B32:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	bgt _08007B40
_08007B3A:
	ldrb r0, [r5, #2]
	cmp r0, #0x8c
	bne _08007BBE
_08007B40:
	movs r0, #3
	strb r0, [r5, #1]
	b _08007BBE
_08007B46:
	ldr r3, _08007B98 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08007B9C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08007BA0 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08007BA4 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	adds r0, #3
	str r0, [r1]
	ldr r2, _08007BA8 @ =0x04000120
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r0, [r5]
	cmp r0, #0
	beq _08007B84
	ldr r1, _08007BAC @ =0x0400010C
	movs r0, #0
	str r0, [r1]
_08007B84:
	ldr r0, _08007BB0 @ =0x04000202
	movs r1, #0xc0
	strh r1, [r0]
	ldrb r0, [r5]
	cmp r0, #0
	beq _08007BBA
	strb r4, [r5, #2]
	movs r0, #4
	strb r0, [r5, #1]
	b _08007BBE
	.align 2, 0
_08007B98: .4byte 0x04000208
_08007B9C: .4byte 0x04000200
_08007BA0: .4byte 0x0000FF3F
_08007BA4: .4byte 0x04000128
_08007BA8: .4byte 0x04000120
_08007BAC: .4byte 0x0400010C
_08007BB0: .4byte 0x04000202
_08007BB4:
	ldrb r0, [r5, #2]
	cmp r0, #2
	bls _08007BBE
_08007BBA:
	movs r0, #1
	b _08007BC6
_08007BBE:
	ldrb r0, [r5, #2]
	adds r0, #1
	strb r0, [r5, #2]
	movs r0, #0
_08007BC6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start Sio32MultiLoadIntr
Sio32MultiLoadIntr: @ 0x08007BCC
	push {r4, r5, lr}
	ldr r2, _08007BF0 @ =0x04000120
	ldr r3, [r2]
	ldr r5, _08007BF4 @ =gSio32MultiLoadArea
	ldrb r0, [r5]
	adds r4, r5, #0
	cmp r0, #1
	beq _08007BFC
	ldr r0, _08007BF8 @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	ldr r2, [r4, #8]
	cmp r2, #0
	bge _08007C48
	b _08007C36
	.align 2, 0
_08007BF0: .4byte 0x04000120
_08007BF4: .4byte gSio32MultiLoadArea
_08007BF8: .4byte 0x04000128
_08007BFC:
	ldr r1, _08007C10 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r4, #8]
	cmp r1, #0
	bge _08007C18
	ldr r0, _08007C14 @ =0xFEFEFEFE
	str r0, [r2]
	b _08007C5E
	.align 2, 0
_08007C10: .4byte 0x0400010E
_08007C14: .4byte 0xFEFEFEFE
_08007C18:
	ldr r0, _08007C2C @ =0x00001FFF
	cmp r1, r0
	bgt _08007C30
	ldr r0, [r4, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _08007C5E
	.align 2, 0
_08007C2C: .4byte 0x00001FFF
_08007C30:
	ldr r0, [r4, #0xc]
	str r0, [r2]
	b _08007C5E
_08007C36:
	ldr r0, _08007C44 @ =0xFEFEFEFE
	cmp r3, r0
	beq _08007C5E
	subs r0, r2, #1
	str r0, [r5, #8]
	b _08007C5E
	.align 2, 0
_08007C44: .4byte 0xFEFEFEFE
_08007C48:
	ldr r0, _08007C58 @ =0x00001FFF
	cmp r2, r0
	bgt _08007C5C
	ldr r1, [r4, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	str r3, [r0]
	b _08007C5E
	.align 2, 0
_08007C58: .4byte 0x00001FFF
_08007C5C:
	str r3, [r4, #0xc]
_08007C5E:
	ldr r1, [r4, #8]
	ldr r0, _08007C88 @ =0x00002002
	cmp r1, r0
	bgt _08007C80
	adds r0, r1, #1
	str r0, [r4, #8]
	ldrb r0, [r4]
	cmp r0, #1
	bne _08007C80
	ldr r2, _08007C8C @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08007C90 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08007C80:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007C88: .4byte 0x00002002
_08007C8C: .4byte 0x04000128
_08007C90: .4byte 0x0400010E

	thumb_func_start Sio32MultiLoadInit
Sio32MultiLoadInit: @ 0x08007C94
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	ldr r3, _08007D10 @ =0x04000208
	strh r6, [r3]
	ldr r2, _08007D14 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08007D18 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	mov r8, r0
	strh r0, [r3]
	str r6, [sp]
	ldr r4, _08007D1C @ =gSio32MultiLoadArea
	ldr r2, _08007D20 @ =0x05000006
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r1, _08007D24 @ =0x04000128
	ldr r0, _08007D28 @ =0x00002003
	str r0, [r1]
	str r7, [r4, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #8]
	cmp r5, #0
	beq _08007D02
	ldr r0, _08007D2C @ =0x0400010C
	str r6, [r0]
	mov r2, r8
	strb r2, [r4]
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #6
_08007CE4:
	ldm r1!, {r0}
	adds r6, r6, r0
	subs r2, #1
	cmp r2, #0
	bne _08007CE4
	mvns r0, r6
	str r0, [r4, #0xc]
	ldr r1, _08007D24 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_08007D02:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007D10: .4byte 0x04000208
_08007D14: .4byte 0x04000200
_08007D18: .4byte 0x0000FF3F
_08007D1C: .4byte gSio32MultiLoadArea
_08007D20: .4byte 0x05000006
_08007D24: .4byte 0x04000128
_08007D28: .4byte 0x00002003
_08007D2C: .4byte 0x0400010C
