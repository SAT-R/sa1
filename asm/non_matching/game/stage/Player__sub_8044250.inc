.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x14]
	movs r5, #0
	ldr r0, _0804429C @ =gPlayerControls
	ldrh r1, [r4, #0x3a]
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08044296
	ldr r0, _080442A0 @ =gStageFlags
	ldrh r1, [r0]
	movs r6, #0x80
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08044284
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r2, r0, #0x18
	adds r0, r2, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08044284:
	adds r0, r2, #0
	adds r0, #0x80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	bl sa2__sub_8022F58
	cmp r0, #3
	bgt _080442A4
_08044296:
	movs r0, #0
	b _0804442C_return
	.align 2, 0
_0804429C: .4byte gPlayerControls
_080442A0: .4byte gStageFlags
_080442A4:
	ldr r0, [r4, #0x10]
	movs r2, #2
	orrs r0, r2
	ldr r1, _080442D4 @ =0xFEFFFFDF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, _080442D8 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x59
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r7, r0, #0
	ldr r3, _080442DC @ =gSineTable
	cmp r1, #0
	blt _080443BA
	cmp r1, #2
	ble _080442E0_case_0_1_2
	cmp r1, #3
	beq _080442E8_case_3
	b _080443BA
	.align 2, 0
_080442D4: .4byte 0xFEFFFFDF
_080442D8: .4byte 0xFFFFF7FF
_080442DC: .4byte gSineTable
_080442E0_case_0_1_2:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #5
	b _080442F8
_080442E8_case_3:
	ldrh r1, [r4, #0x38]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0804430E
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x55
_080442F8:
	strb r0, [r1]
	ldr r1, [r4, #0x10]
	movs r0, #0x40
	ands r1, r0
	movs r5, #0x9c
	lsls r5, r5, #3
	cmp r1, #0
	beq _080443BA
	movs r5, #0xa8
	lsls r5, r5, #2
	b _080443BA
_0804430E:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x5b
	strb r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r1, _08044340 @ =0xFDFFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	ldr r1, _08044344 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	ldr r0, [r4, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08044348
	movs r2, #0xa0
	lsls r2, r2, #2
	movs r5, #0xc0
	b _08044350
	.align 2, 0
_08044340: .4byte 0xFDFFFFFF
_08044344: .4byte 0xFFFFFEFF
_08044348:
	movs r2, #0x80
	lsls r2, r2, #3
	movs r5, #0xa0
	lsls r5, r5, #1
_08044350:
	ldr r0, [r4, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804438C
	ldr r1, _08044388 @ =gSineTable
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	rsbs r0, r0, #0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	rsbs r0, r0, #0
	b _080443B4
	.align 2, 0
_08044388: .4byte gSineTable
_0804438C:
	ldr r1, _08044420 @ =gSineTable
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r2, r0
_080443B4:
	asrs r0, r0, #8
	strh r0, [r4, #0xa]
	adds r3, r1, #0     @ r3 = gSineTable
_080443BA:
	ldrb r0, [r4, #0x14]
	subs r0, #0x40
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r2, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r5, r0
	asrs r0, r0, #8
	ldrh r1, [r4, #8]
	adds r0, r0, r1
	strh r0, [r4, #8]
	lsls r0, r2, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r5, r0
	asrs r0, r0, #8
	ldrh r3, [r4, #0xa]
	adds r0, r0, r3
	strh r0, [r4, #0xa]
	movs r0, #0x74      @ SE_JUMP
	bl m4aSongNumStart
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #3
	beq _0804442A
	ldr r1, [r4, #0x10]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08044424
	orrs r1, r2
	str r1, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #9
	bl sa2__sub_8023B5C
	movs r0, #6
	strb r0, [r4, #0xe]
	movs r0, #9
	strb r0, [r4, #0xf]
	b _0804442A
	.align 2, 0
_08044420: .4byte gSineTable
_08044424:
	movs r0, #0x10
	orrs r1, r0
	str r1, [r4, #0x10]
_0804442A:
	movs r0, #1
_0804442C_return:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
