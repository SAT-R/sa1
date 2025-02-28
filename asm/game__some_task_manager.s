.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
.endif

	thumb_func_start sub_804D100
sub_804D100: @ 0x0804D100
	sub sp, #4
	mov r0, sp
	movs r3, #0
	strh r3, [r0]
	ldr r0, _0804D12C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0804D130 @ =gUnknown_030060F0
	str r1, [r0, #4]
	ldr r2, _0804D134 @ =0x81000002
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	ldr r1, _0804D138 @ =gUnknown_03006170
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #4
	bx lr
	.align 2, 0
_0804D12C: .4byte 0x040000D4
_0804D130: .4byte gUnknown_030060F0
_0804D134: .4byte 0x81000002
_0804D138: .4byte gUnknown_03006170

	thumb_func_start sub_804D13C
sub_804D13C: @ 0x0804D13C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r5, _0804D170 @ =gUnknown_03006166
	ldr r3, _0804D174 @ =gUnknown_030061E6
	movs r4, #0x3a
_0804D148:
	subs r1, r5, #2
	ldrh r0, [r1]
	strh r0, [r5]
	adds r5, r1, #0
	subs r2, r3, #2
	ldrh r0, [r2]
	strh r0, [r3]
	adds r3, r2, #0
	subs r4, #1
	cmp r4, #0
	bge _0804D148
	strh r6, [r1]
	ldrh r1, [r1, #2]
	adds r0, r6, #0
	bics r0, r1
	strh r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804D170: .4byte gUnknown_03006166
_0804D174: .4byte gUnknown_030061E6
