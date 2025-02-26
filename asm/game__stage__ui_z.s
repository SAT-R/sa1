.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_8055998
Task_8055998: @ 0x08055998
	push {lr}
	ldr r0, _080559D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	cmp r0, #0xd7
	ble _080559DC
	ldrh r3, [r2, #0xa]
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080559D0
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r2, #0xa]
	ldrh r1, [r2, #0xe]
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _080559D0
	subs r0, r1, #1
	strh r0, [r2, #0xe]
_080559D0:
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	b _08055A60
	.align 2, 0
_080559D8: .4byte gCurTask
_080559DC:
	cmp r0, #0x19
	bgt _08055A5E
	cmp r0, #0xf
	ble _08055A62
	ldr r3, _08055A0C @ =gCurrentLevel
	ldrb r1, [r3]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0xd
	bne _08055A10
	movs r0, #0x7e
	strh r0, [r2, #0xc]
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08055A62
	strh r1, [r2, #0xa]
	b _08055A62
	.align 2, 0
_08055A0C: .4byte gCurrentLevel
_08055A10:
	cmp r0, #0xc
	bgt _08055A48
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08055A48
	ldr r0, _08055A40 @ =sa2__gUnknown_030054B0
	ldrb r1, [r0]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r1, r0
	beq _08055A48
	ldr r0, _08055A44 @ =0x0000FFF0
	strh r0, [r2, #0xa]
	ldrh r0, [r2, #0xc]
	adds r0, #9
	strh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x7e
	ble _08055A62
	movs r0, #0x7e
	strh r0, [r2, #0xc]
	b _08055A62
	.align 2, 0
_08055A40: .4byte sa2__gUnknown_030054B0
_08055A44: .4byte 0x0000FFF0
_08055A48:
	movs r0, #0x7e
	strh r0, [r2, #0xc]
	ldrh r0, [r2, #0xa]
	subs r0, #0x1a
	strh r0, [r2, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08055A62
_08055A5E:
	ldr r0, _08055A88 @ =0x0000FFF0
_08055A60:
	strh r0, [r2, #0xa]
_08055A62:
	ldrh r0, [r2, #0x18]
	cmp r0, #0x69
	bls _08055A7C
	adds r0, r2, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055A7C
	adds r0, r2, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055A90
_08055A7C:
	ldr r0, _08055A8C @ =gUnknown_086883B8
	adds r1, r2, #0
	bl sub_8052F78
	b _08055A98
	.align 2, 0
_08055A88: .4byte 0x0000FFF0
_08055A8C: .4byte gUnknown_086883B8
_08055A90:
	ldr r0, _08055A9C @ =gUnknown_086883B8
	adds r1, r2, #0
	bl sub_80530CC
_08055A98:
	pop {r0}
	bx r0
	.align 2, 0
_08055A9C: .4byte gUnknown_086883B8

	thumb_func_start sub_8055AA0
sub_8055AA0: @ 0x08055AA0
	push {lr}
	ldr r0, _08055AC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xd7
	ble _08055AC4
	ldrh r0, [r1, #0xa]
	subs r0, #0x1a
	b _08055ADE
	.align 2, 0
_08055AC0: .4byte gCurTask
_08055AC4:
	cmp r2, #0x19
	bgt _08055ADC
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08055AE0
	ldrh r0, [r1, #0xa]
	subs r0, #0x1a
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x6f
	bgt _08055AE0
_08055ADC:
	movs r0, #0x70
_08055ADE:
	strh r0, [r1, #0xa]
_08055AE0:
	ldrh r0, [r1, #0x18]
	cmp r0, #0x69
	bls _08055AFA
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055AFA
	adds r0, r1, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055B08
_08055AFA:
	ldr r0, _08055B04 @ =gUnknown_086883C4
	bl sub_8052F78
	b _08055B0E
	.align 2, 0
_08055B04: .4byte gUnknown_086883C4
_08055B08:
	ldr r0, _08055B14 @ =gUnknown_086883C4
	bl sub_80530CC
_08055B0E:
	pop {r0}
	bx r0
	.align 2, 0
_08055B14: .4byte gUnknown_086883C4

	thumb_func_start sub_8055B18
sub_8055B18: @ 0x08055B18
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r1, _08055B64 @ =gUnknown_086883CC
	mov r0, sp
	movs r2, #0x16
	bl memcpy
	mov r0, sp
	adds r0, #0x16
	movs r1, #0
	movs r2, #5
	bl memset
	ldr r0, _08055B68 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0xd7
	ble _08055B6C
	ldrh r2, [r4, #0xa]
	adds r0, r2, #0
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	rsbs r1, r1, #0
	cmp r0, r1
	bge _08055B96
	ldrh r0, [r4, #0xe]
	subs r0, #1
	strh r0, [r4, #0xe]
	adds r0, r2, #4
	b _08055B88
	.align 2, 0
_08055B64: .4byte gUnknown_086883CC
_08055B68: .4byte gCurTask
_08055B6C:
	cmp r0, #0x19
	ble _08055BC0
	ldrh r2, [r4, #0xa]
	subs r0, r2, #2
	strh r0, [r4, #0xa]
	movs r1, #9
	strh r1, [r4, #0xe]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, #0x28
	cmp r0, r1
	bge _08055B96
	adds r0, r2, #0
	adds r0, #0x1e
_08055B88:
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	movs r1, #7
	bl Mod
	strh r0, [r4, #0x1a]
_08055B96:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x69
	bls _08055C12
	ldr r1, _08055BBC @ =0x03000020
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055C12
	adds r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055C12
	ldrh r0, [r4, #0x1a]
	add r0, sp
	adds r1, r4, #0
	bl sub_80530CC
	b _08055C2E
	.align 2, 0
_08055BBC: .4byte 0x03000020
_08055BC0:
	cmp r0, #0xf
	ble _08055C2E
	movs r0, #0x80
	strh r0, [r4, #0xc]
	ldrh r3, [r4, #0xa]
	adds r0, r3, #0
	subs r0, #0x1c
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xef
	bgt _08055C2E
	asrs r0, r0, #0x15
	movs r1, #9
	subs r1, r1, r0
	strh r1, [r4, #0xe]
	movs r0, #0x1f
	rsbs r0, r0, #0
	cmp r2, r0
	bge _08055BF8
	adds r0, r3, #4
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	movs r1, #7
	bl Mod
	strh r0, [r4, #0x1a]
_08055BF8:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x69
	bls _08055C12
	ldr r1, _08055C20 @ =0x03000020
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055C12
	adds r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055C24
_08055C12:
	ldrh r0, [r4, #0x1a]
	add r0, sp
	adds r1, r4, #0
	bl sub_8052F78
	b _08055C2E
	.align 2, 0
_08055C20: .4byte 0x03000020
_08055C24:
	ldrh r0, [r4, #0x1a]
	add r0, sp
	adds r1, r4, #0
	bl sub_80530CC
_08055C2E:
	add sp, #0x1c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_8055C38
TaskDestructor_8055C38: @ 0x08055C38
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0

    thumb_func_start TaskDestructor_8055C4C
TaskDestructor_8055C4C: @ 0x08055C4C
    bx lr
    .align 2, 0

@ --- End of game/stage/ui.c ---
