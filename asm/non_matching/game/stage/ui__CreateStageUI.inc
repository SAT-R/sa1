.include "constants/constants.inc"

.syntax unified
.text
	push {r4, lr}
	sub sp, #4
	movs r1, #0
	movs r4, #0
	ldr r0, _080541E4 @ =Task_StageUIMain
	movs r2, #0x86
	lsls r2, r2, #6
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	adds r1, r0, #0
	ldrh r0, [r1, #6]
	ldr r2, _080541E8 @ =0x03000040
	adds r0, r0, r2
	strh r4, [r0]       @ r4 = ui->unk40 = 0
	ldrh r0, [r1, #6]
	ldr r1, _080541EC @ =0x03000020
	adds r4, r0, r1
	movs r0, #0x2a
	strb r0, [r4, #1]
	strb r0, [r4, #4]
	bl sub_8053674
	bl sub_80538BC
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080541E4: .4byte Task_StageUIMain
_080541E8: .4byte 0x03000040
_080541EC: .4byte 0x03000020

.syntax divided
