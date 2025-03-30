.include "constants/constants.inc"

.syntax unified
.text
	push {r4, lr}
	adds r4, r0, #0     @ r4 = p
	adds r1, r4, #0
	adds r1, #0x3e      @ r1 = p->SA2_LABEL(unk62)
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08049552
	ldr r0, _08049528 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0804950A
	adds r0, r4, #0
	bl sub_8049370
	cmp r0, #0
	bne _080495EA_return
_0804950A:
	adds r0, r4, #0
	bl sub_8044250
	cmp r0, #0
	bne _080495EA_return
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804952C
	adds r0, r4, #0
	bl sa2__sub_8029CA0
	b _08049532
	.align 2, 0
_08049528: .4byte gGameMode
_0804952C:
	adds r0, r4, #0
	bl sa2__sub_8029D14
_08049532:
	adds r0, r4, #0
	bl Player_8044F7C
	adds r0, r4, #0
	bl sa2__sub_80232D0
	adds r0, r4, #0
	bl Player_UpdatePosition
	adds r0, r4, #0
	bl sa2__sub_8022D6C
	adds r0, r4, #0
	bl sa2__sub_8029ED8
	b _080495EA_return
_08049552:
	ldr r0, _080495B0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #6
	beq _0804959A
	movs r3, #0
	ldrsb r3, [r1, r3]
	cmp r3, #1
	bne _0804959A
	ldr r1, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0804959A
	ldrb r0, [r4, #0x14]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0804959A
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	bne _0804959A
	adds r2, r4, #0
	adds r2, #0x3f
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _0804959A
	ldr r0, _080495B4 @ =gPlayerControls
	ldrh r1, [r4, #0x3a]
	ldrh r0, [r0, #2]
	ands r0, r1
	cmp r0, #0
	beq _0804959A
	strb r3, [r2]
_0804959A:
	adds r0, r4, #0
	bl sa2__sub_8029CA0
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080495B8
	subs r0, #0x60
	cmp r0, #0
	bge _080495C4
	b _080495C2
	.align 2, 0
_080495B0: .4byte gGameMode
_080495B4: .4byte gPlayerControls
_080495B8:
	cmp r0, #0
	bge _080495C6
	adds r0, #0x60
	cmp r0, #0
	ble _080495C4
_080495C2:
	movs r0, #0
_080495C4:
	strh r0, [r4, #0xc]
_080495C6:
	adds r0, r4, #0
	bl Player_80470AC
	adds r0, r4, #0
	bl sa2__sub_80231C0
	adds r0, r4, #0
	bl sa2__sub_80232D0
	adds r0, r4, #0
	bl Player_UpdatePosition
	adds r0, r4, #0
	bl sa2__sub_8022D6C
	adds r0, r4, #0
	bl sa2__sub_8029ED8
_080495EA_return:
	pop {r4}
	pop {r0}
	bx r0

.syntax divided
