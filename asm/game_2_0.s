.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_805C83C
Task_805C83C: @ 0x0805C83C
	push {lr}
	ldr r0, _0805C874 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	movs r1, #0x18
	ldrsh r0, [r3, r1]
	cmp r0, #0xf5
	ble _0805C87C
	movs r0, #0x49
	strh r0, [r3, #0xc]
	ldrh r0, [r3, #0xa]
	subs r0, #0x1c
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _0805C89C
	movs r0, #0
	strh r0, [r3, #0xe]
	ldr r0, _0805C878 @ =0x0000FF80
	strh r0, [r3, #0xa]
	b _0805C8F4
	.align 2, 0
_0805C874: .4byte gCurTask
_0805C878: .4byte 0x0000FF80
_0805C87C:
	cmp r0, #0x2d
	ble _0805C8C8
	ldrh r0, [r3, #2]
	adds r0, #0x10
	strh r0, [r3, #2]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bls _0805C8AC
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
	movs r0, #0x39
	strh r0, [r3, #0xa]
	movs r0, #0x49
	strh r0, [r3, #0xc]
_0805C89C:
	ldr r0, _0805C8A8 @ =gUnknown_08688650
	adds r1, r3, #0
	bl sub_8052F78
	b _0805C8F4
	.align 2, 0
_0805C8A8: .4byte gUnknown_08688650
_0805C8AC:
	movs r0, #0x29
	strh r0, [r3, #0xa]
	lsrs r1, r1, #0x13
	movs r0, #0x54
	subs r0, r0, r1
	strh r0, [r3, #0xc]
	ldr r0, _0805C8C4 @ =gUnknown_08688650
	adds r1, r3, #0
	bl sub_8052C84
	b _0805C8F4
	.align 2, 0
_0805C8C4: .4byte gUnknown_08688650
_0805C8C8:
	cmp r0, #0x21
	ble _0805C8F4
	movs r0, #0x29
	strh r0, [r3, #0xa]
	ldrh r1, [r3, #2]
	lsrs r2, r1, #3
	movs r0, #0x54
	subs r0, r0, r2
	strh r0, [r3, #0xc]
	adds r1, #0x10
	strh r1, [r3, #2]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xff
	bls _0805C8EC
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #2]
_0805C8EC:
	ldr r0, _0805C8F8 @ =gUnknown_08688650
	adds r1, r3, #0
	bl sub_8052C84
_0805C8F4:
	pop {r0}
	bx r0
	.align 2, 0
_0805C8F8: .4byte gUnknown_08688650

    thumb_func_start TaskDestructor_nullsub_805C8FC
TaskDestructor_nullsub_805C8FC: @ 0x0805C8FC
    bx lr
    .align 2, 0
