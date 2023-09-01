.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start EwramInitHeap
EwramInitHeap: @ 0x08006A74
	ldr r0, _08006A80 @ =gUnknown_02002650
	movs r1, #0
	str r1, [r0]
	ldr r1, _08006A84 @ =0x00020080
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_08006A80: .4byte gUnknown_02002650
_08006A84: .4byte 0x00020080

	thumb_func_start EwramMalloc
EwramMalloc: @ 0x08006A88
	adds r2, r0, #0
	adds r0, r2, #3
	lsrs r2, r0, #2
	cmp r2, #0
	beq _08006ADE
	lsls r0, r2, #2
	adds r2, r0, #0
	adds r2, #8
	ldr r3, _08006AB0 @ =gUnknown_02002650
_08006A9A:
	ldr r1, [r3, #4]
	cmp r2, r1
	bhi _08006AD4
	cmp r2, r1
	bne _08006AB4
	rsbs r0, r2, #0
	str r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #8
	b _08006AE2
	.align 2, 0
_08006AB0: .4byte gUnknown_02002650
_08006AB4:
	adds r0, r2, #0
	adds r0, #8
	cmp r0, r1
	bgt _08006AD4
	adds r1, r3, r2
	ldr r0, [r3]
	str r0, [r1]
	ldr r0, [r3, #4]
	subs r0, r0, r2
	str r0, [r1, #4]
	str r1, [r3]
	rsbs r0, r2, #0
	str r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #8
	b _08006AE2
_08006AD4:
	ldr r0, [r3]
	cmp r0, #0
	beq _08006ADE
	adds r3, r0, #0
	b _08006A9A
_08006ADE:
	ldr r0, _08006AE4 @ =gUnknown_020226D0
	ldr r0, [r0]
_08006AE2:
	bx lr
	.align 2, 0
_08006AE4: .4byte gUnknown_020226D0

	thumb_func_start EwramFree
EwramFree: @ 0x08006AE8
	push {r4, lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _08006B44
	ldr r0, _08006B4C @ =gUnknown_020226D0
	ldr r0, [r0]
	cmp r0, r1
	beq _08006B44
	subs r1, #8
	ldr r3, _08006B50 @ =gUnknown_02002650
	adds r4, r3, #0
	cmp r1, r3
	beq _08006B0A
_08006B02:
	adds r3, r4, #0
	ldr r4, [r3]
	cmp r1, r4
	bne _08006B02
_08006B0A:
	ldr r0, [r1, #4]
	cmp r0, #0
	bge _08006B14
	rsbs r0, r0, #0
	str r0, [r1, #4]
_08006B14:
	ldr r2, [r3, #4]
	adds r0, r3, r2
	cmp r0, r1
	bne _08006B2C
	cmp r2, #0
	ble _08006B2C
	ldr r0, [r4]
	str r0, [r3]
	ldr r0, [r1, #4]
	adds r0, r2, r0
	str r0, [r3, #4]
	adds r1, r3, #0
_08006B2C:
	ldr r3, [r1, #4]
	adds r2, r1, r3
	ldr r0, [r1]
	cmp r2, r0
	bne _08006B44
	ldr r0, [r2, #4]
	cmp r0, #0
	ble _08006B44
	adds r0, r3, r0
	str r0, [r1, #4]
	ldr r0, [r2]
	str r0, [r1]
_08006B44:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006B4C: .4byte gUnknown_020226D0
_08006B50: .4byte gUnknown_02002650
