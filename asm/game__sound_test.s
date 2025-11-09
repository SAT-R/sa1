.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of Sound Test

.if 0
.endif

	thumb_func_start sub_805FC88
sub_805FC88: @ 0x0805FC88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _0805FCDC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	ldr r1, _0805FCE0 @ =0x0300010C
	adds r0, r4, r1
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #0
	mov r8, r0
	ldr r0, _0805FCE4 @ =0x030000FC
	adds r1, r4, r0
	movs r0, #0x52
	strh r0, [r1]
	cmp r5, #0x63
	bls _0805FCF0
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	adds r0, #0x20
	mov r1, sp
	strb r0, [r1]
	ldr r0, _0805FCE8 @ =0x030000FA
	adds r1, r4, r0
	movs r0, #0x40
	strh r0, [r1]
	ldr r0, _0805FCEC @ =0x030000F0
	adds r1, r4, r0
	mov r0, sp
	bl sub_805321C
	b _0805FCFC
	.align 2, 0
_0805FCDC: .4byte gCurTask
_0805FCE0: .4byte 0x0300010C
_0805FCE4: .4byte 0x030000FC
_0805FCE8: .4byte 0x030000FA
_0805FCEC: .4byte 0x030000F0
_0805FCF0:
	movs r1, #0xa
	mov r8, r1
	cmp r5, #9
	bls _0805FCFC
	movs r0, #5
	mov r8, r0
_0805FCFC:
	adds r6, r7, #0
	adds r6, #0xfa
	adds r7, #0xf0
	cmp r5, #9
	bls _0805FD2A
	mov r4, sp
	adds r0, r5, #0
	movs r1, #0x64
	bl Mod
	movs r1, #0xa
	bl Div
	adds r0, #0x20
	strb r0, [r4]
	movs r0, #0x4a
	mov r1, r8
	subs r0, r0, r1
	strh r0, [r6]
	mov r0, sp
	adds r1, r7, #0
	bl sub_805321C
_0805FD2A:
	mov r4, sp
	adds r0, r5, #0
	movs r1, #0xa
	bl Mod
	adds r0, #0x20
	strb r0, [r4]
	movs r0, #0x54
	mov r1, r8
	subs r0, r0, r1
	strh r0, [r6]
	mov r0, sp
	adds r1, r7, #0
	bl sub_805321C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_805FD54
sub_805FD54: @ 0x0805FD54
	push {r4, lr}
	ldr r0, _0805FD98 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r1, [r1, #0x10]
	ldrh r2, [r1, #6]
	adds r0, r2, r0
	ldr r1, _0805FD9C @ =0x0300010D
	adds r3, r2, r1
	movs r1, #2
	strb r1, [r3]
	ldr r1, _0805FDA0 @ =0x0300010E
	adds r3, r2, r1
	movs r4, #0
	movs r1, #0x78
	strh r1, [r3]
	ldr r1, _0805FDA4 @ =0x03000021
	adds r3, r2, r1
	movs r1, #0xff
	strb r1, [r3]
	ldr r1, _0805FDA8 @ =0x00000357
	strh r1, [r0, #0xa]
	ldr r1, _0805FDAC @ =0x03000020
	adds r2, r2, r1
	strb r4, [r2]
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805FD98: .4byte gCurTask
_0805FD9C: .4byte 0x0300010D
_0805FDA0: .4byte 0x0300010E
_0805FDA4: .4byte 0x03000021
_0805FDA8: .4byte 0x00000357
_0805FDAC: .4byte 0x03000020

	thumb_func_start sub_805FDB0
sub_805FDB0: @ 0x0805FDB0
	push {lr}
	ldr r2, _0805FDD4 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0805FDD8 @ =0x00001FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0805FDDC @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #4]
	ldr r0, _0805FDE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateOptionsMenu
	pop {r0}
	bx r0
	.align 2, 0
_0805FDD4: .4byte gDispCnt
_0805FDD8: .4byte 0x00001FFF
_0805FDDC: .4byte gBldRegs
_0805FDE0: .4byte gCurTask

	thumb_func_start sub_805FDE4
sub_805FDE4: @ 0x0805FDE4
	push {r4, lr}
	ldr r0, _0805FE18 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r1, _0805FE1C @ =0x03000108
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r3, _0805FE20 @ =0x0300010D
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805FE28
	cmp r1, #0x18
	bls _0805FE28
	ldr r0, _0805FE24 @ =0x03000021
	adds r1, r2, r0
	movs r0, #0xff
	strb r0, [r1]
	subs r3, #0xed
	adds r1, r2, r3
	movs r0, #0
	b _0805FE34
	.align 2, 0
_0805FE18: .4byte gCurTask
_0805FE1C: .4byte 0x03000108
_0805FE20: .4byte 0x0300010D
_0805FE24: .4byte 0x03000021
_0805FE28:
	adds r1, r4, #0
	adds r1, #0x21
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #1
_0805FE34:
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_805FE48
sub_805FE48: @ 0x0805FE48
	push {r4, r5, lr}
	ldr r0, _0805FE98 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	bl DisplaySprite
	ldr r0, _0805FE9C @ =0x0300003C
	adds r5, r4, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0805FEA0 @ =0x03000078
	adds r5, r4, r0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0805FEA4 @ =0x030000B4
	adds r5, r4, r0
	ldr r0, [r5, #0x10]
	ldr r1, _0805FEA8 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805FE98: .4byte gCurTask
_0805FE9C: .4byte 0x0300003C
_0805FEA0: .4byte 0x03000078
_0805FEA4: .4byte 0x030000B4
_0805FEA8: .4byte 0xFFFFFBFF

	thumb_func_start Task_805FEAC
Task_805FEAC: @ 0x0805FEAC
	push {r4, r5, lr}
	ldr r0, _0805FEFC @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _0805FF00 @ =0x03000108
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r4, #0x10]
	ldr r2, _0805FF04 @ =0xFFFFFBFF
	ands r0, r2
	str r0, [r4, #0x10]
	ldr r2, _0805FF08 @ =gUnknown_0868B0CC
	lsrs r1, r1, #3
	movs r0, #7
	ands r1, r0
	adds r1, r1, r2
	ldrb r5, [r1]
	adds r0, r5, #0
	adds r0, #0x66
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x34
	subs r0, r0, r5
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805FEFC: .4byte gCurTask
_0805FF00: .4byte 0x03000108
_0805FF04: .4byte 0xFFFFFBFF
_0805FF08: .4byte gUnknown_0868B0CC

@ inline
	thumb_func_start sub_805FF0C
sub_805FF0C: @ 0x0805FF0C
	ldr r1, _0805FF2C @ =gCurTask
	ldr r1, [r1]
	ldrh r1, [r1, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	ldr r1, [r1, #0x10]
	ldrh r1, [r1, #6]
	ldr r3, _0805FF30 @ =0x0300010D
	adds r2, r1, r3
	strb r0, [r2]
	ldr r0, _0805FF34 @ =0x0300010E
	adds r1, r1, r0
	movs r0, #0x78
	strh r0, [r1]
	bx lr
	.align 2, 0
_0805FF2C: .4byte gCurTask
_0805FF30: .4byte 0x0300010D
_0805FF34: .4byte 0x0300010E
