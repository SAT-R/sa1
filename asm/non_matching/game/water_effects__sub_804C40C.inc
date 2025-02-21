.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804C580 @ =gWater
	mov ip, r0
	ldr r5, _0804C584 @ =sPaletteBuffer
	ldr r6, _0804C588 @ =gObjPalette
	ldr r2, [r0, #0xc]
	movs r7, #0xf
	movs r0, #0x80
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r8, r0
	ldr r0, _0804C58C @ =gBgPalette
	mov sb, r0
	ldr r4, _0804C590 @ =0x7BDE7BDE
	ldr r3, _0804C594 @ =0x739C739C
	ands r2, r3
_0804C432:
	ldm r6!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r6!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r6!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r6!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r6!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r6!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r6!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r6!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	adds r0, r7, #0
	subs r7, #1
	cmp r0, #0
	bne _0804C432
	mov r6, r8
	mov r5, sb
	mov r0, ip
	ldr r2, [r0, #0xc]
	movs r7, #0xf
	ldr r4, _0804C590 @ =0x7BDE7BDE
	ldr r3, _0804C594 @ =0x739C739C
	ands r2, r3
_0804C4DA:
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r6!, {r1}
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r6!, {r1}
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r6!, {r1}
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r6!, {r1}
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r6!, {r1}
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r6!, {r1}
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r6!, {r1}
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r4
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r6!, {r1}
	adds r0, r7, #0
	subs r7, #1
	cmp r0, #0
	bne _0804C4DA
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C580: .4byte gWater
_0804C584: .4byte sPaletteBuffer
_0804C588: .4byte gObjPalette
_0804C58C: .4byte gBgPalette
_0804C590: .4byte 0x7BDE7BDE
_0804C594: .4byte 0x739C739C

.syntax divided
