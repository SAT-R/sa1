.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start sub_804F8DC
sub_804F8DC: @ 0x0804F8DC
	adds r2, r0, #0
	ldr r1, _0804F920 @ =gCamera
	movs r0, #0x88
	lsls r0, r0, #9
	str r0, [r2, #0x74]
	ldr r0, _0804F924 @ =0xFFFF9C00
	str r0, [r2, #0x78]
	ldr r0, _0804F928 @ =gRefCollision
	ldr r0, [r0]
	ldrh r0, [r0, #0x1c]
	strh r0, [r1, #0x1a]
	ldr r0, [r2, #0x1c]
	ldr r1, _0804F92C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #0x1c]
	ldr r0, [r2, #0x54]
	ands r0, r1
	str r0, [r2, #0x54]
	adds r1, r2, #0
	adds r1, #0x4e
	ldr r0, _0804F930 @ =0x000002B6
	strh r0, [r1]
	adds r1, #0x16
	movs r0, #3
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r2, #0x88
	ldr r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_0804F920: .4byte gCamera
_0804F924: .4byte 0xFFFF9C00
_0804F928: .4byte gRefCollision
_0804F92C: .4byte 0xFFFFFBFF
_0804F930: .4byte 0x000002B6
.endif

	thumb_func_start sub_804F934
sub_804F934: @ 0x0804F934
	adds r2, r0, #0
	ldr r0, [r2, #0x1c]
	ldr r1, _0804F954 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #0x1c]
	adds r1, r2, #0
	adds r1, #0x4e
	ldr r0, _0804F958 @ =0x000002B6
	strh r0, [r1]
	adds r1, #0x16
	movs r0, #9
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	bx lr
	.align 2, 0
_0804F954: .4byte 0xFFFFFBFF
_0804F958: .4byte 0x000002B6

	thumb_func_start sub_804F95C
sub_804F95C: @ 0x0804F95C
	adds r2, r0, #0
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #0x1c]
	adds r1, r2, #0
	adds r1, #0x4e
	ldr r0, _0804F980 @ =0x000002B6
	strh r0, [r1]
	adds r1, #0x16
	movs r0, #6
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	bx lr
	.align 2, 0
_0804F980: .4byte 0x000002B6

	thumb_func_start sub_804F984
sub_804F984: @ 0x0804F984
	adds r0, #0x9b
	movs r1, #3
	strb r1, [r0]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_804F990
sub_804F990: @ 0x0804F990
	adds r2, r0, #0
	movs r3, #1
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804F9AA
	adds r1, r2, #0
	adds r1, #0x9b
	movs r0, #4
	strb r0, [r1]
	movs r3, #0
_0804F9AA:
	adds r0, r3, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_804F9B0
sub_804F9B0: @ 0x0804F9B0
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r4, #1
	ldr r0, [r3, #0x64]
	ldr r0, [r0, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804F9F4
	adds r1, r2, #0
	adds r1, #0x9b
	movs r0, #5
	strb r0, [r1]
	movs r4, #0
	ldr r2, [r3, #0x10]
	ldr r0, _0804F9FC @ =0xFFDFFFFF
	ands r2, r0
	str r2, [r3, #0x10]
	ldr r1, _0804FA00 @ =gPlayerControls
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	orrs r0, r1
	ldrh r1, [r3, #0x38]
	orrs r0, r1
	movs r1, #0
	strh r0, [r3, #0x38]
	ldr r0, _0804FA04 @ =0xFF7FFFFF
	ands r2, r0
	str r2, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0x40
	strb r1, [r0]
_0804F9F4:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804F9FC: .4byte 0xFFDFFFFF
_0804FA00: .4byte gPlayerControls
_0804FA04: .4byte 0xFF7FFFFF

	thumb_func_start sub_804FA08
sub_804FA08: @ 0x0804FA08
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	movs r5, #1
	adds r0, #0x84
	ldrh r1, [r0]
	subs r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bgt _0804FA2E
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_804ED80
	adds r1, r4, #0
	adds r1, #0x9b
	strb r0, [r1]
	movs r5, #0
_0804FA2E:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_804FA38
sub_804FA38: @ 0x0804FA38
	adds r1, r0, #0
	movs r2, #1
	adds r0, #0x7e
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	blt _0804FA4E
	adds r1, #0x9b
	movs r0, #7
	strb r0, [r1]
	movs r2, #0
_0804FA4E:
	adds r0, r2, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_804FA54
sub_804FA54: @ 0x0804FA54
	adds r1, r0, #0
	movs r2, #1
	adds r0, #0x88
	ldr r0, [r0]
	ands r0, r2
	cmp r0, #0
	beq _0804FA6A
	adds r1, #0x9b
	movs r0, #9
	strb r0, [r1]
	movs r2, #0
_0804FA6A:
	adds r0, r2, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_804FA70
sub_804FA70: @ 0x0804FA70
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	movs r3, #1
	ldr r0, [r4, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804FA94
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_804ED80
	adds r1, r4, #0
	adds r1, #0x9b
	strb r0, [r1]
	movs r3, #0
_0804FA94:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_804FA9C
sub_804FA9C: @ 0x0804FA9C
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	movs r3, #1
	ldr r0, [r4, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804FAC0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_804ED80
	adds r1, r4, #0
	adds r1, #0x9b
	strb r0, [r1]
	movs r3, #0
_0804FAC0:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_804FAC8
sub_804FAC8: @ 0x0804FAC8
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #1
	adds r0, #0x84
	ldrh r1, [r0]
	subs r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bgt _0804FAE6
	adds r1, r3, #0
	adds r1, #0x9b
	movs r0, #0xc
	strb r0, [r1]
	movs r4, #0
_0804FAE6:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_804FAF0
sub_804FAF0: @ 0x0804FAF0
	adds r2, r0, #0
	movs r3, #1
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0804FB0A
	adds r1, r2, #0
	adds r1, #0x9b
	movs r0, #5
	strb r0, [r1]
	movs r3, #0
_0804FB0A:
	adds r0, r3, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_804FB10
sub_804FB10: @ 0x0804FB10
	adds r2, r0, #0
	movs r3, #1
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804FB2A
	adds r1, r2, #0
	adds r1, #0x9b
	movs r0, #0xe
	strb r0, [r1]
	movs r3, #0
_0804FB2A:
	adds r0, r3, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_804FB30
sub_804FB30: @ 0x0804FB30
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	movs r3, #1
	ldr r0, [r4, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804FB54
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_804ED80
	adds r1, r4, #0
	adds r1, #0x9b
	strb r0, [r1]
	movs r3, #0
_0804FB54:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_804FB5C
sub_804FB5C: @ 0x0804FB5C
	adds r2, r0, #0
	movs r3, #1
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804FB76
	adds r1, r2, #0
	adds r1, #0x9b
	movs r0, #0x10
	strb r0, [r1]
	movs r3, #0
_0804FB76:
	adds r0, r3, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_804FB7C
sub_804FB7C: @ 0x0804FB7C
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	movs r3, #1
	ldr r0, [r4, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804FBA0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_804ED80
	adds r1, r4, #0
	adds r1, #0x9b
	strb r0, [r1]
	movs r3, #0
_0804FBA0:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_804FBA8
sub_804FBA8: @ 0x0804FBA8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	adds r0, #0x95
	adds r2, r4, #0
	adds r2, #0x96
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	bne _0804FBC6
	adds r0, r4, #0
	bl sub_804EE20
_0804FBC6:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	ands r0, r5
	cmp r0, #0
	beq _0804FBDC
	adds r1, r4, #0
	adds r1, #0x9b
	movs r0, #0x12
	strb r0, [r1]
	movs r5, #0
_0804FBDC:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_804FBE4
sub_804FBE4: @ 0x0804FBE4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r6, #1
	adds r0, #0x95
	adds r2, r4, #0
	adds r2, #0x96
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	bne _0804FC04
	adds r0, r4, #0
	bl sub_804EE20
_0804FC04:
	ldr r0, [r4, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0804FC20
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_804ED80
	adds r1, r4, #0
	adds r1, #0x9b
	strb r0, [r1]
	movs r6, #0
_0804FC20:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_804FC28
sub_804FC28: @ 0x0804FC28
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	bl sub_804EE20
	adds r2, r4, #0
	adds r2, #0x88
	ldr r0, [r2]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0804FC4A
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_0804FC4A:
	ldr r0, [r2]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0804FC5E
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_0804FC5E:
	ldr r0, [r2]
	ands r0, r5
	cmp r0, #0
	beq _0804FC70
	adds r1, r4, #0
	adds r1, #0x9b
	movs r0, #0x14
	strb r0, [r1]
	movs r5, #0
_0804FC70:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_804FC78
sub_804FC78: @ 0x0804FC78
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	bl sub_804EE20
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r1, [r0]
	subs r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bgt _0804FC9C
	adds r1, r4, #0
	adds r1, #0x9b
	movs r0, #0x15
	strb r0, [r1]
	movs r5, #0
_0804FC9C:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_804FCA4
sub_804FCA4: @ 0x0804FCA4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	bl sub_804EE20
	cmp r0, #0
	beq _0804FCE4
	adds r1, r4, #0
	adds r1, #0x9b
	movs r0, #0x16
	strb r0, [r1]
	movs r5, #0
	adds r0, r4, #0
	movs r1, #0
	bl CreateMechaKnucklesParts
	adds r0, r4, #0
	movs r1, #1
	bl CreateMechaKnucklesParts
	adds r0, r4, #0
	movs r1, #2
	bl CreateMechaKnucklesParts
	adds r0, r4, #0
	movs r1, #3
	bl CreateMechaKnucklesParts
	adds r0, r4, #0
	movs r1, #4
	bl CreateMechaKnucklesParts
_0804FCE4:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_804FCEC
sub_804FCEC: @ 0x0804FCEC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #1
	ldr r2, _0804FD50 @ =gCamera
	movs r0, #0x18
	ldrsh r1, [r2, r0]
	movs r3, #0x1a
	ldrsh r0, [r2, r3]
	subs r0, #0xf0
	cmp r1, r0
	bge _0804FD08
	ldrh r0, [r2, #0x18]
	adds r0, #1
	strh r0, [r2, #0x18]
_0804FD08:
	movs r6, #0x18
	ldrsh r1, [r2, r6]
	ldrh r3, [r2]
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	bge _0804FD18
	strh r3, [r2, #0x18]
_0804FD18:
	adds r1, r4, #0
	adds r1, #0x8c
	ldr r0, [r4, #0x74]
	asrs r0, r0, #8
	ldr r1, [r1]
	adds r1, r1, r0
	adds r1, #0x20
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, #0xf0
	cmp r1, r0
	bgt _0804FD48
	movs r6, #0x18
	ldrsh r1, [r2, r6]
	movs r3, #0x1a
	ldrsh r0, [r2, r3]
	subs r0, #0xf0
	cmp r1, r0
	blt _0804FD48
	adds r1, r4, #0
	adds r1, #0x9b
	movs r0, #0x17
	strb r0, [r1]
	movs r5, #0
_0804FD48:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804FD50: .4byte gCamera

	thumb_func_start sub_804FD54
sub_804FD54: @ 0x0804FD54
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r3, _0804FDB0 @ =gCamera
	movs r0, #0x18
	ldrsh r1, [r3, r0]
	movs r4, #0x1a
	ldrsh r0, [r3, r4]
	subs r0, #0xf0
	cmp r1, r0
	bge _0804FD6E
	ldrh r0, [r3, #0x18]
	adds r0, #1
	strh r0, [r3, #0x18]
_0804FD6E:
	movs r5, #0x18
	ldrsh r1, [r3, r5]
	ldrh r4, [r3]
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r1, r0
	bge _0804FD7E
	strh r4, [r3, #0x18]
_0804FD7E:
	adds r1, r2, #0
	adds r1, #0x8c
	ldr r0, [r2, #0x74]
	asrs r0, r0, #8
	ldr r1, [r1]
	adds r1, r1, r0
	movs r4, #0x1a
	ldrsh r0, [r3, r4]
	adds r0, #0x20
	cmp r1, r0
	blt _0804FDA8
	adds r2, #0x88
	ldr r0, [r2]
	movs r1, #0x61
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r0, _0804FDB4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0804FDA8:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0804FDB0: .4byte gCamera
_0804FDB4: .4byte gCurTask

	thumb_func_start TaskDestructor_MechaKnuckles
TaskDestructor_MechaKnuckles: @ 0x0804FDB8
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl VramFree
	ldr r0, [r4, #0x48]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_804FDD4
sub_804FDD4: @ 0x0804FDD4
	push {r4, lr}
	mov ip, r0
	ldr r2, [r0, #0x74]
	mov r4, ip
	adds r4, #0x88
	ldr r3, [r4]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r3, r0
	asrs r0, r2, #8
	mov r1, ip
	adds r1, #0x98
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	subs r0, #6
	cmp r0, #0
	bge _0804FE02
	lsls r0, r0, #8
	subs r2, r2, r0
	movs r0, #4
	orrs r3, r0
_0804FE02:
	asrs r0, r2, #8
	adds r0, r0, r1
	subs r0, #0xea
	cmp r0, #0
	ble _0804FE14
	lsls r0, r0, #8
	subs r2, r2, r0
	movs r0, #8
	orrs r3, r0
_0804FE14:
	mov r0, ip
	str r2, [r0, #0x74]
	str r3, [r4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_MechaKnuckles_Rocket
TaskDestructor_MechaKnuckles_Rocket: @ 0x0804FE20
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0804FE38 @ =0x03000014
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	movs r0, #0xc8
	bl m4aSongNumStop
	pop {r0}
	bx r0
	.align 2, 0
_0804FE38: .4byte 0x03000014

	thumb_func_start TaskDestructor_MechaKnuckles_Parts
TaskDestructor_MechaKnuckles_Parts: @ 0x0804FE3C
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0804FE50 @ =0x03000018
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0804FE50: .4byte 0x03000018
