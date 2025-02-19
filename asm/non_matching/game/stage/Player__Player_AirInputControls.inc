.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0         @ r4 = p
	ldr r0, [r4, #0x30]
	lsls r6, r0, #1         @ r6 = qPlayerAccel
	ldr r7, [r4, #0x2c]     @ r7 = qPlayerMaxSpeed
	adds r0, r4, #0
	adds r0, #0x40
	movs r5, #0
	ldrsb r5, [r0, r5]
	cmp r5, #0xf        @ if (p->charState == CHARSTATE_HIT_AIR)
	beq _0804466A_return
	ldr r1, [r4, #0x10]
	movs r0, #0x10
	mov ip, r0
	adds r0, r1, #0
	mov r2, ip
	ands r0, r2
	cmp r0, #0          @ if (p->moveState & MOVESTATE_FLIP_WITH_MOVE_DIR)
	bne _08044634
	ldrh r2, [r4, #8]       @ r2 = p->qSpeedAirX
	ldrh r3, [r4, #0x38]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _080445FE
	cmp r5, #0x17
	beq _080445DC
	movs r0, #1
	orrs r1, r0
	str r1, [r4, #0x10]
_080445DC:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r1, r7, #0
	cmp r0, r1
	bge _08044632
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	ble _08044632
	lsls r0, r1, #0x10
	b _08044630
_080445FE:
	mov r0, ip
	ands r0, r3
	cmp r0, #0
	beq _08044632
	cmp r5, #0x17
	beq _08044612
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x10]
_08044612:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	ble _08044632
	subs r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	bge _08044632
	lsls r0, r7, #0x10
_08044630:
	lsrs r2, r0, #0x10
_08044632:
	strh r2, [r4, #8]
_08044634:
	ldrh r1, [r4, #0xa]
	ldr r0, _08044654 @ =0x0000BCFF
	cmp r1, r0
	bls _0804466A_return
	ldrh r1, [r4, #8]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	asrs r0, r0, #0x15
	cmp r0, #0
	bge _08044658
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	ble _08044668
	b _08044666
	.align 2, 0
_08044654: .4byte 0x0000BCFF
_08044658:
	cmp r0, #0
	ble _0804466A_return
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bge _08044668
_08044666:
	movs r1, #0
_08044668:
	strh r1, [r4, #8]
_0804466A_return:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
.syntax divided
