.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_HangBar
Task_HangBar: @ 0x0808C038
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0808C0B0 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov sb, r0
	ldr r0, [r0]
	str r0, [sp, #8]
	mov r1, sb
	ldrb r0, [r1, #8]
	lsls r0, r0, #3
	ldrh r1, [r1, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [sp, #8]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	mov r6, sb
	ldrh r1, [r6, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r7, #0
	ldr r0, _0808C0B4 @ =0x0300003C
	adds r0, r0, r2
	mov sl, r0
	ldr r4, _0808C0B8 @ =gPartner
	ldr r5, _0808C0BC @ =gPlayer
	movs r1, #0
	str r1, [sp, #0xc]
_0808C08C:
	mov r0, sb
	adds r0, #0x3c
	ldrb r0, [r0]
	asrs r0, r7
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _0808C09E
	b _0808C42C
_0808C09E:
	cmp r7, #0
	beq _0808C0C0
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808C0CA
	b _0808C0D8
	.align 2, 0
_0808C0B0: .4byte gCurTask
_0808C0B4: .4byte 0x0300003C
_0808C0B8: .4byte gPartner
_0808C0BC: .4byte gPlayer
_0808C0C0:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808C0D8
_0808C0CA:
	movs r1, #1
	lsls r1, r7
	mov r3, sl
	ldrb r0, [r3]
	bics r0, r1
	strb r0, [r3]
	b _0808C6B0
_0808C0D8:
	cmp r7, #0
	beq _0808C0E8
	ldrh r0, [r4, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0808C0F2
	b _0808C142
_0808C0E8:
	ldrh r0, [r5, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808C142
_0808C0F2:
	cmp r7, #0
	beq _0808C104
	movs r0, #0x24
	ldr r6, _0808C100 @ =gUnknown_03005AF0
	strb r0, [r6]
	b _0808C10A
	.align 2, 0
_0808C100: .4byte gUnknown_03005AF0
_0808C104:
	movs r2, #0x24
	ldr r1, _0808C11C @ =gUnknown_03005A60
	strb r2, [r1]
_0808C10A:
	cmp r7, #0
	beq _0808C120
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808C12A
	.align 2, 0
_0808C11C: .4byte gUnknown_03005A60
_0808C120:
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0808C12A:
	mov r0, sb
	adds r0, #0x40
	ldr r3, [sp, #0xc]
	adds r1, r0, r3
	ldr r1, [r1]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r1, r1, r6
	adds r2, r0, #0
	cmp r7, #0
	bne _0808C1A0
	b _0808C1A8
_0808C142:
	cmp r7, #0
	beq _0808C152
	ldrh r0, [r4, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0808C15C
	b _0808C1AC
_0808C152:
	ldrh r0, [r5, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808C1AC
_0808C15C:
	cmp r7, #0
	beq _0808C16C
	movs r1, #0x24
	ldr r0, _0808C168 @ =gUnknown_03005AF0
	strb r1, [r0]
	b _0808C172
	.align 2, 0
_0808C168: .4byte gUnknown_03005AF0
_0808C16C:
	movs r3, #0x24
	ldr r2, _0808C180 @ =gUnknown_03005A60
	strb r3, [r2]
_0808C172:
	cmp r7, #0
	beq _0808C184
	ldr r0, [r4, #0x10]
	movs r6, #1
	orrs r0, r6
	str r0, [r4, #0x10]
	b _0808C18C
	.align 2, 0
_0808C180: .4byte gUnknown_03005A60
_0808C184:
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0x10]
_0808C18C:
	mov r0, sb
	adds r0, #0x40
	ldr r2, [sp, #0xc]
	adds r1, r0, r2
	ldr r1, [r1]
	ldr r3, _0808C1A4 @ =0xFFFFFE00
	adds r1, r1, r3
	adds r2, r0, #0
	cmp r7, #0
	beq _0808C1A8
_0808C1A0:
	str r1, [r4]
	b _0808C1C6
	.align 2, 0
_0808C1A4: .4byte 0xFFFFFE00
_0808C1A8:
	str r1, [r5]
	b _0808C1C6
_0808C1AC:
	cmp r7, #0
	beq _0808C1BC
	movs r0, #0x23
	ldr r6, _0808C1B8 @ =gUnknown_03005AF0
	strb r0, [r6]
	b _0808C1C2
	.align 2, 0
_0808C1B8: .4byte gUnknown_03005AF0
_0808C1BC:
	movs r0, #0x23
	ldr r1, _0808C1D8 @ =gUnknown_03005A60
	strb r0, [r1]
_0808C1C2:
	mov r2, sb
	adds r2, #0x40
_0808C1C6:
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	ldr r3, _0808C1DC @ =gUnknown_086CEDBC
	mov r8, r0
	cmp r7, #0
	beq _0808C1E4
	ldr r6, _0808C1E0 @ =gUnknown_03005B09
	b _0808C1E6
	.align 2, 0
_0808C1D8: .4byte gUnknown_03005A60
_0808C1DC: .4byte gUnknown_086CEDBC
_0808C1E0: .4byte gUnknown_03005B09
_0808C1E4:
	ldr r6, _0808C200 @ =gUnknown_03005A79
_0808C1E6:
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r3, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	lsls r0, r0, #8
	cmp r7, #0
	beq _0808C204
	str r0, [r4, #4]
	b _0808C206
	.align 2, 0
_0808C200: .4byte gUnknown_03005A79
_0808C204:
	str r0, [r5, #4]
_0808C206:
	ldr r0, [sp, #0xc]
	adds r1, r2, r0
	cmp r7, #0
	beq _0808C212
	ldr r0, [r4]
	b _0808C214
_0808C212:
	ldr r0, [r5]
_0808C214:
	str r0, [r1]
	ldr r0, _0808C224 @ =gUnknown_030060E0
	ldrh r1, [r0]
	cmp r7, #0
	beq _0808C228
	ldrh r0, [r4, #0x3a]
	b _0808C22A
	.align 2, 0
_0808C224: .4byte gUnknown_030060E0
_0808C228:
	ldrh r0, [r5, #0x3a]
_0808C22A:
	ands r0, r1
	cmp r0, #0
	bne _0808C27A
	ldr r1, [sp]
	lsls r3, r1, #0x10
	asrs r2, r3, #0x10
	ldr r6, [sp, #8]
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r0, r1, #3
	adds r2, r2, r0
	adds r6, r3, #0
	adds r3, r1, #0
	cmp r7, #0
	beq _0808C24C
	ldr r0, [r4]
	b _0808C24E
_0808C24C:
	ldr r0, [r5]
_0808C24E:
	asrs r0, r0, #8
	cmp r2, r0
	bgt _0808C27A
	asrs r1, r6, #0x10
	lsls r0, r3, #3
	adds r1, r1, r0
	ldr r2, [sp, #8]
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r7, #0
	beq _0808C270
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0808C27A
	b _0808C6B0
_0808C270:
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0808C27A
	b _0808C6B0
_0808C27A:
	ldr r0, _0808C294 @ =gPlayer
	cmp r7, #0
	beq _0808C282
	ldr r0, _0808C298 @ =gPartner
_0808C282:
	bl sub_8046CEC
	cmp r7, #0
	beq _0808C2A0
	ldr r0, [r4, #0x10]
	ldr r1, _0808C29C @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808C2A8
	.align 2, 0
_0808C294: .4byte gPlayer
_0808C298: .4byte gPartner
_0808C29C: .4byte 0xFFBFFFFF
_0808C2A0:
	ldr r0, [r5, #0x10]
	ldr r1, _0808C2B8 @ =0xFFBFFFFF
	ands r0, r1
	str r0, [r5, #0x10]
_0808C2A8:
	cmp r7, #0
	beq _0808C2BC
	ldr r0, [r4, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0808C2C4
	.align 2, 0
_0808C2B8: .4byte 0xFFBFFFFF
_0808C2BC:
	ldr r0, [r5, #0x10]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #0x10]
_0808C2C4:
	cmp r7, #0
	beq _0808C2D4
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808C2DE
_0808C2D4:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0808C2DE:
	cmp r7, #0
	beq _0808C2E8
	movs r0, #0
	strh r0, [r4, #0xa]
	b _0808C2EA
_0808C2E8:
	strh r7, [r5, #0xa]
_0808C2EA:
	cmp r7, #0
	beq _0808C2FC
	movs r0, #5
	ldr r3, _0808C2F8 @ =gUnknown_03005AF0
	strb r0, [r3]
	b _0808C302
	.align 2, 0
_0808C2F8: .4byte gUnknown_03005AF0
_0808C2FC:
	movs r0, #5
	ldr r6, _0808C314 @ =gUnknown_03005A60
	strb r0, [r6]
_0808C302:
	mov r1, r8
	asrs r0, r1, #8
	movs r2, #0xb0
	lsls r2, r2, #5
	adds r0, r0, r2
	cmp r7, #0
	beq _0808C318
	str r0, [r4, #4]
	b _0808C31A
	.align 2, 0
_0808C314: .4byte gUnknown_03005A60
_0808C318:
	str r0, [r5, #4]
_0808C31A:
	cmp r7, #0
	beq _0808C328
	ldr r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0808C330
_0808C328:
	ldr r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0x10]
_0808C330:
	cmp r7, #0
	beq _0808C340
	movs r0, #0x12
	ldr r3, _0808C33C @ =gUnknown_03005AF0
	strb r0, [r3]
	b _0808C346
	.align 2, 0
_0808C33C: .4byte gUnknown_03005AF0
_0808C340:
	movs r0, #0x12
	ldr r6, _0808C358 @ =gUnknown_03005A60
	strb r0, [r6]
_0808C346:
	cmp r7, #0
	beq _0808C360
	ldr r0, _0808C35C @ =gUnknown_03005AD6
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	ldr r1, _0808C35C @ =gUnknown_03005AD6
	strb r0, [r1]
	b _0808C36A
	.align 2, 0
_0808C358: .4byte gUnknown_03005A60
_0808C35C: .4byte gUnknown_03005AD6
_0808C360:
	ldr r2, _0808C37C @ =gUnknown_03005A46
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
_0808C36A:
	cmp r7, #0
	beq _0808C380
	ldrh r0, [r4, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0808C38A
	b _0808C3B0
	.align 2, 0
_0808C37C: .4byte gUnknown_03005A46
_0808C380:
	ldrh r0, [r5, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808C3B0
_0808C38A:
	cmp r7, #0
	beq _0808C396
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	b _0808C39C
_0808C396:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0xc]
_0808C39C:
	cmp r7, #0
	beq _0808C3A8
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #8]
	b _0808C41E
_0808C3A8:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #8]
	b _0808C41E
_0808C3B0:
	cmp r7, #0
	beq _0808C3C0
	ldrh r0, [r4, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0808C3CA
	b _0808C406
_0808C3C0:
	ldrh r0, [r5, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808C406
_0808C3CA:
	cmp r7, #0
	beq _0808C3D8
	ldr r0, [r4, #0x10]
	movs r3, #1
	orrs r0, r3
	str r0, [r4, #0x10]
	b _0808C3E0
_0808C3D8:
	ldr r0, [r5, #0x10]
	movs r6, #1
	orrs r0, r6
	str r0, [r5, #0x10]
_0808C3E0:
	cmp r7, #0
	beq _0808C3EC
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0xc]
	b _0808C3F2
_0808C3EC:
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r5, #0xc]
_0808C3F2:
	cmp r7, #0
	beq _0808C3FE
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #8]
	b _0808C41E
_0808C3FE:
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r5, #8]
	b _0808C41E
_0808C406:
	cmp r7, #0
	beq _0808C410
	movs r0, #0
	strh r0, [r4, #0xc]
	b _0808C412
_0808C410:
	strh r7, [r5, #0xc]
_0808C412:
	cmp r7, #0
	beq _0808C41C
	movs r0, #0
	strh r0, [r4, #8]
	b _0808C41E
_0808C41C:
	strh r7, [r5, #8]
_0808C41E:
	movs r1, #1
	lsls r1, r7
	mov r2, sl
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	b _0808C6B0
_0808C42C:
	cmp r7, #0
	beq _0808C434
	ldr r0, [r4, #0x10]
	b _0808C436
_0808C434:
	ldr r0, [r5, #0x10]
_0808C436:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808C440
	b _0808C6B0
_0808C440:
	cmp r7, #0
	beq _0808C44E
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bgt _0808C458
	b _0808C6B0
_0808C44E:
	movs r6, #0xa
	ldrsh r0, [r5, r6]
	cmp r0, #0
	bgt _0808C458
	b _0808C6B0
_0808C458:
	ldr r0, [sp]
	lsls r3, r0, #0x10
	asrs r2, r3, #0x10
	ldr r6, [sp, #8]
	movs r1, #3
	ldrsb r1, [r6, r1]
	lsls r0, r1, #3
	adds r2, r2, r0
	adds r6, r3, #0
	adds r3, r1, #0
	cmp r7, #0
	beq _0808C47A
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808C484
	b _0808C6B0
_0808C47A:
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808C484
	b _0808C6B0
_0808C484:
	asrs r1, r6, #0x10
	lsls r0, r3, #3
	adds r1, r1, r0
	ldr r2, [sp, #8]
	ldrb r0, [r2, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r7, #0
	beq _0808C4A0
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808C4AA
	b _0808C6B0
_0808C4A0:
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808C4AA
	b _0808C6B0
_0808C4AA:
	ldr r6, [sp, #4]
	lsls r3, r6, #0x10
	asrs r2, r3, #0x10
	ldr r0, [sp, #8]
	movs r1, #4
	ldrsb r1, [r0, r1]
	lsls r0, r1, #3
	adds r2, r2, r0
	mov r8, r3
	adds r3, r1, #0
	cmp r7, #0
	beq _0808C4CC
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808C4D6
	b _0808C6B0
_0808C4CC:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r2, r0
	ble _0808C4D6
	b _0808C6B0
_0808C4D6:
	mov r2, r8
	asrs r1, r2, #0x10
	lsls r0, r3, #3
	adds r1, r1, r0
	ldr r3, [sp, #8]
	ldrb r0, [r3, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	cmp r7, #0
	beq _0808C4F4
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808C4FE
	b _0808C6B0
_0808C4F4:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bge _0808C4FE
	b _0808C6B0
_0808C4FE:
	cmp r7, #0
	beq _0808C508
	movs r0, #0
	strb r0, [r4, #0x14]
	b _0808C50A
_0808C508:
	strb r7, [r5, #0x14]
_0808C50A:
	ldr r0, _0808C528 @ =gPlayer
	cmp r7, #0
	beq _0808C512
	ldr r0, _0808C52C @ =gPartner
_0808C512:
	bl sub_8046CEC
	cmp r7, #0
	beq _0808C530
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r4, #0x10]
	b _0808C53A
	.align 2, 0
_0808C528: .4byte gPlayer
_0808C52C: .4byte gPartner
_0808C530:
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	str r0, [r5, #0x10]
_0808C53A:
	ldr r2, _0808C54C @ =gPlayer
	cmp r7, #0
	beq _0808C550
	ldr r0, [r4, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808C55A
	.align 2, 0
_0808C54C: .4byte gPlayer
_0808C550:
	ldr r0, [r5, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0808C55A:
	cmp r7, #0
	beq _0808C56A
	ldr r0, [r4, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808C574
_0808C56A:
	ldr r0, [r5, #0x10]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0808C574:
	cmp r7, #0
	beq _0808C588
	ldr r6, _0808C584 @ =gUnknown_03005AD6
	ldrb r1, [r6]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r6]
	b _0808C594
	.align 2, 0
_0808C584: .4byte gUnknown_03005AD6
_0808C588:
	ldr r0, _0808C5A4 @ =gUnknown_03005A46
	ldrb r1, [r0]
	movs r0, #0x80
	orrs r0, r1
	ldr r1, _0808C5A4 @ =gUnknown_03005A46
	strb r0, [r1]
_0808C594:
	cmp r7, #0
	beq _0808C5A8
	ldrh r0, [r4, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0808C5B2
	b _0808C5EC
	.align 2, 0
_0808C5A4: .4byte gUnknown_03005A46
_0808C5A8:
	ldrh r0, [r2, #0x38]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808C5EC
_0808C5B2:
	cmp r7, #0
	beq _0808C5C4
	movs r6, #0x24
	ldr r3, _0808C5C0 @ =gUnknown_03005AF0
	strb r6, [r3]
	b _0808C5CA
	.align 2, 0
_0808C5C0: .4byte gUnknown_03005AF0
_0808C5C4:
	movs r1, #0x24
	ldr r0, _0808C5DC @ =gUnknown_03005A60
	strb r1, [r0]
_0808C5CA:
	cmp r7, #0
	beq _0808C5E0
	ldr r0, [r4, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x10]
	b _0808C652
	.align 2, 0
_0808C5DC: .4byte gUnknown_03005A60
_0808C5E0:
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
	b _0808C652
_0808C5EC:
	cmp r7, #0
	beq _0808C5FC
	ldrh r0, [r4, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0808C606
	b _0808C63A
_0808C5FC:
	ldrh r0, [r2, #0x38]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808C63A
_0808C606:
	cmp r7, #0
	beq _0808C618
	movs r6, #0x24
	ldr r3, _0808C614 @ =gUnknown_03005AF0
	strb r6, [r3]
	b _0808C61E
	.align 2, 0
_0808C614: .4byte gUnknown_03005AF0
_0808C618:
	movs r1, #0x24
	ldr r0, _0808C62C @ =gUnknown_03005A60
	strb r1, [r0]
_0808C61E:
	cmp r7, #0
	beq _0808C630
	ldr r0, [r4, #0x10]
	movs r3, #1
	orrs r0, r3
	str r0, [r4, #0x10]
	b _0808C652
	.align 2, 0
_0808C62C: .4byte gUnknown_03005A60
_0808C630:
	ldr r0, [r5, #0x10]
	movs r6, #1
	orrs r0, r6
	str r0, [r5, #0x10]
	b _0808C652
_0808C63A:
	cmp r7, #0
	beq _0808C64C
	movs r0, #0x23
	ldr r1, _0808C648 @ =gUnknown_03005AF0
	strb r0, [r1]
	b _0808C652
	.align 2, 0
_0808C648: .4byte gUnknown_03005AF0
_0808C64C:
	movs r0, #0x23
	ldr r3, _0808C664 @ =gUnknown_03005A60
	strb r0, [r3]
_0808C652:
	mov r6, r8
	asrs r0, r6, #8
	movs r1, #0x90
	lsls r1, r1, #5
	adds r0, r0, r1
	cmp r7, #0
	beq _0808C668
	str r0, [r4, #4]
	b _0808C66A
	.align 2, 0
_0808C664: .4byte gUnknown_03005A60
_0808C668:
	str r0, [r2, #4]
_0808C66A:
	movs r0, #1
	lsls r0, r7
	mov r3, sl
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
	mov r0, sb
	adds r0, #0x40
	ldr r6, [sp, #0xc]
	adds r1, r0, r6
	cmp r7, #0
	beq _0808C686
	ldr r0, [r4]
	b _0808C688
_0808C686:
	ldr r0, [r2]
_0808C688:
	str r0, [r1]
	ldr r0, _0808C734 @ =gPlayer
	cmp r7, #0
	beq _0808C692
	ldr r0, _0808C738 @ =gPartner
_0808C692:
	movs r1, #0xe
	bl sub_804516C
	ldr r1, _0808C734 @ =gPlayer
	cmp r7, #0
	beq _0808C6A0
	ldr r1, _0808C738 @ =gPartner
_0808C6A0:
	movs r0, #6
	strb r0, [r1, #0xe]
	ldr r1, _0808C734 @ =gPlayer
	cmp r7, #0
	beq _0808C6AC
	ldr r1, _0808C738 @ =gPartner
_0808C6AC:
	movs r0, #0xe
	strb r0, [r1, #0xf]
_0808C6B0:
	ldr r0, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0xc]
	adds r7, #1
	ldr r0, _0808C73C @ =gUnknown_03005088
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	bge _0808C6C6
	b _0808C08C
_0808C6C6:
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0808C724
	ldr r2, _0808C740 @ =gCamera
	ldrh r0, [r2]
	ldr r3, [sp]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	ldr r6, [sp, #4]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x10
	adds r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _0808C714
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	adds r0, r3, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0808C714
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r3, r0
	ble _0808C724
_0808C714:
	mov r2, sb
	ldrb r0, [r2, #8]
	ldr r3, [sp, #8]
	strb r0, [r3]
	ldr r0, _0808C744 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0808C724:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808C734: .4byte gPlayer
_0808C738: .4byte gPartner
_0808C73C: .4byte gUnknown_03005088
_0808C740: .4byte gCamera
_0808C744: .4byte gCurTask

	thumb_func_start CreateEntity_HangBar
CreateEntity_HangBar: @ 0x0808C748
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0808C7AC @ =Task_HangBar
	movs r2, #0x80
	lsls r2, r2, #8
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	movs r3, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #8]
	strb r6, [r0, #9]
	ldr r4, _0808C7B0 @ =0x0300003C
	adds r2, r2, r4
	strb r3, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r4, r8
	strb r0, [r4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808C7AC: .4byte Task_HangBar
_0808C7B0: .4byte 0x0300003C
