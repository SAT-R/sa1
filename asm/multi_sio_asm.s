.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	arm_func_start MultiSioRecvBufChange
MultiSioRecvBufChange: @ 0x080001CC
	push {r4, r5, r6, r7, r8, sb, sl, fp}
	mov ip, #0x4000000
	ldr fp, _08000208 @ =gMultiSioArea
	add sl, fp, #0x40
	mov sb, #1
	mov r8, #0
	strb r8, [ip, #0x208]
	ldm sl, {r0, r1, r2, r3, r4, r5, r6, r7}
	stm sl!, {r4, r5, r6, r7}
	stm sl!, {r0, r1, r2, r3}
	ldr r0, [fp, #4]
	str r8, [fp, #4]
	strb sb, [ip, #0x208]
	pop {r4, r5, r6, r7, r8, sb, sl, fp}
	bx lr
	.align 2, 0
_08000208: .4byte gMultiSioArea

	arm_func_start MultiSioIntr
MultiSioIntr: @ 0x0800020C
	mov ip, #0x4000000
	add ip, ip, #0x120
	ldm ip, {r0, r1}
	push {r7, r8, sb, sl, fp}
	ldr fp, _08000324 @ =gMultiSioArea
	mov sb, #0xfe
	add sb, sb, #0xfe00
	ldrh r3, [ip, #8]
	and r3, r3, #0x40
	strb r3, [fp, #9]
	ldr sl, [fp, #0x14]
	adds r3, sl, #1
	blt _08000268
	bne _0800025C
	strh sb, [ip, #0xa]
	add r8, fp, #0x28
	ldm r8, {r2, r3}
	mov r7, r2
	stm r8, {r3, r7}
	b _08000268
_0800025C:
	ldr r3, [fp, #0x2c]
	ldr r2, [r3, sl, lsl #1]
	strh r2, [ip, #0xa]
_08000268:
	cmp sl, #0xd
	addlt sl, sl, #1
	strlt sl, [fp, #0x14]
	push {r0, r1, r5, r6}
	mov r6, #3
_0800027C:
	add r8, fp, #0x18
	add r8, r8, r6, lsl #2
	ldr sl, [r8]
	lsl r3, r6, #1
	ldrh r5, [sp, r3]
	cmp r5, sb
	bne _080002AC
	cmp sl, #0xb
	ble _080002AC
	mov r0, #1
	sub sl, r0, #2
	b _080002D8
_080002AC:
	ldr r0, [r8, #0x18]
	lsl r3, sl, #1
	strh r5, [r0, r3]
	cmp sl, #0xb
	bne _080002D8
	ldr r1, [r8, #0x28]
	str r0, [r8, #0x28]
	str r1, [r8, #0x18]
	add r3, fp, #4
	mov r0, #1
	strb r0, [r3, r6]
_080002D8:
	cmp sl, #0xd
	addlt sl, sl, #1
	str sl, [r8]
	subs r6, r6, #1
	bge _0800027C
	ldrb r0, [fp]
	cmp r0, #0
	beq _08000318
	ldr r7, _08000328 @ =0x0400010E
	mov r0, #0
	strh r0, [r7]
	ldrh r0, [ip, #8]
	orr r0, r0, #0x80
	strh r0, [ip, #8]
	mov r0, #0xc0
	strh r0, [r7]
_08000318:
	add sp, sp, #8
	pop {r5, r6, r7, r8, sb, sl, fp}
	bx lr
	.align 2, 0
_08000324: .4byte gMultiSioArea
_08000328: .4byte 0x0400010E
