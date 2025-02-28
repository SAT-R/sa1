.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_804D02C
sub_804D02C: @ 0x0804D02C
	adds r2, r0, #0
	ldr r3, _0804D04C @ =gPlayerControls
	cmp r2, #0
	beq _0804D040
	ldr r0, _0804D050 @ =gStageFlags
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0804D054
_0804D040:
	movs r0, #1
	strh r0, [r3]
	movs r0, #2
	strh r0, [r3, #2]
	b _0804D05E
	.align 2, 0
_0804D04C: .4byte gPlayerControls
_0804D050: .4byte gStageFlags
_0804D054:
	cmp r2, #1
	bne _0804D05E
	movs r0, #2
	strh r0, [r3]
	strh r2, [r3, #2]
_0804D05E:
	bx lr

	thumb_func_start sub_804D060
sub_804D060: @ 0x0804D060
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r1, _0804D0AC @ =gUnknown_03006170
	ldr r4, _0804D0B0 @ =gUnknown_030060F0
	ldrh r0, [r1]
	movs r2, #0x30
	ands r2, r0
	adds r1, #2
	cmp r2, #0x20
	bne _0804D0BE
	movs r3, #0
	cmp r3, r6
	bge _0804D0F6
	movs r0, #0xd0
	mov ip, r0
	movs r7, #0x20
	adds r5, r1, #0
_0804D082:
	ldrh r0, [r4]
	mov r1, ip
	ands r1, r0
	cmp r1, #0
	bne _0804D0F6
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r3, #3
	ble _0804D09E
	cmp r2, #0
	bne _0804D0B4
_0804D09E:
	adds r5, #2
	adds r4, #2
	adds r3, #1
	cmp r3, r6
	blt _0804D082
	b _0804D0F6
	.align 2, 0
_0804D0AC: .4byte gUnknown_03006170
_0804D0B0: .4byte gUnknown_030060F0
_0804D0B4:
	movs r0, #1
	rsbs r0, r0, #0
	b _0804D0F8
_0804D0BA:
	movs r0, #1
	b _0804D0F8
_0804D0BE:
	cmp r2, #0x10
	bne _0804D0F6
	movs r3, #0
	cmp r3, r6
	bge _0804D0F6
	movs r0, #0xe0
	mov ip, r0
	movs r7, #0x10
	adds r5, r1, #0
_0804D0D0:
	ldrh r0, [r4]
	mov r1, ip
	ands r1, r0
	cmp r1, #0
	bne _0804D0F6
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r3, #3
	ble _0804D0EC
	cmp r2, #0
	bne _0804D0BA
_0804D0EC:
	adds r5, #2
	adds r4, #2
	adds r3, #1
	cmp r3, r6
	blt _0804D0D0
_0804D0F6:
	movs r0, #0
_0804D0F8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

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
